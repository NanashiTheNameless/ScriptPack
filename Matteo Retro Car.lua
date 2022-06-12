local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local engineon = false
local wpressed = false
local apressed = false
local apressed2 = false
local spressed = false
local dpressed = false
local dpressed2 = false
local bpressed = false
local gpressed = 0
local lpressed = 0
local forcelevel = 4e+6
local accel = 0
local accellimit = 100
local angletorque = 5850000
local gearspeed = 100
local wheelaccel = 0
local rotateangle = 0
local doorangle = 0
local ppressed = 0
local kpressed = 0
local vpressed = 0
local colors = {BrickColor.new"Storm blue";BrickColor.new'Bright yellow';BrickColor.new'Sea green';BrickColor.new'Really black';BrickColor.new'Medium stone grey';BrickColor.new'Cocoa';};
local bodycolor =  colors[math.random(1,#colors)]

function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end

local mcar = Instance.new("Model", workspace)
mcar.Name = "MCar"

 doorpos = Instance.new("Part", mcar)
doorpos.FormFactor = Enum.FormFactor.Plate
doorpos.CanCollide = false
doorpos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
doorpos.Transparency = 1
doorpos.TopSurface = Enum.SurfaceType.Smooth
doorpos.Material = Enum.Material.SmoothPlastic
doorpos.Size = Vector3.new(1, 3.6, 5)
doorpos.Name = "doorpos"
doorpos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
doorpos.CFrame = CFrame.new(48.845, 3.606, -154.156)* CFrame.Angles(3.141592502594, -1.2660163406508e-007, -3.141592502594)
doorpos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
doorpos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
doorpos.BrickColor = bodycolor
doorpos.Friction = 0.3
doorpos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 door = Instance.new("Model", mcar)
door.Name = "Door"

 part = Instance.new("Part", door)
part.FormFactor = Enum.FormFactor.Plate
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.Smooth
part.Material = Enum.Material.SmoothPlastic
part.Size = Vector3.new(1, 3.6, 5)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(48.845, 3.603, -154.156)* CFrame.Angles(3.141592502594, -2.2057429305278e-007, -3.1415927410126)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = bodycolor
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part.Name = "doormain"

 part_2 = Instance.new("Part", door)
part_2.FormFactor = Enum.FormFactor.Plate
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.Smooth
part_2.Material = Enum.Material.SmoothPlastic
part_2.Size = Vector3.new(1, 2, 1)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(48.847, 6.405, -151.052)* CFrame.Angles(3.141592502594, -1.1626889317995e-007, -3.1415927410126)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = bodycolor
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_3 = Instance.new("Part", door)
part_3.FormFactor = Enum.FormFactor.Plate
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.Smooth
part_3.Material = Enum.Material.SmoothPlastic
part_3.Size = Vector3.new(1, 2, 1)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(48.848, 6.405, -156.052)* CFrame.Angles(3.141592502594, -2.250999386888e-007, 3.1415927410126)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = bodycolor
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 window6 = Instance.new("Part", door)
window6.FormFactor = Enum.FormFactor.Plate
window6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
window6.Transparency = 0.5
window6.TopSurface = Enum.SurfaceType.Smooth
window6.Reflectance = 0.5
window6.Material = Enum.Material.SmoothPlastic
window6.Size = Vector3.new(4, 2, 1)
window6.Name = "window6"
window6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
window6.CFrame = CFrame.new(48.848, 6.405, -153.552)* CFrame.Angles(-0.15858368575573, 1.5663747787476, 0.15816649794579)
window6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
window6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
window6.BrickColor = BrickColor.new("Institutional white")
window6.Friction = 0.3
window6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 door2pos = Instance.new("Part", mcar)
door2pos.FormFactor = Enum.FormFactor.Plate
door2pos.CanCollide = false
door2pos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door2pos.Transparency = 1
door2pos.TopSurface = Enum.SurfaceType.Smooth
door2pos.Material = Enum.Material.SmoothPlastic
door2pos.Size = Vector3.new(1, 3.6, 5)
door2pos.Name = "door2pos"
door2pos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door2pos.CFrame = CFrame.new(58.844, 3.605, -154.153)* CFrame.Angles(3.141592502594, -2.2057338355808e-007, -3.1415927410126)
door2pos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door2pos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door2pos.BrickColor = bodycolor
door2pos.Friction = 0.3
door2pos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 backwheels = Instance.new("Model", mcar)
backwheels.Name = "backwheels"

bcollide1 = Instance.new("Part", mcar)
bcollide1.FormFactor = Enum.FormFactor.Custom
bcollide1.Elasticity = 0
bcollide1.TopSurface = Enum.SurfaceType.Smooth
bcollide1.Size = Vector3.new(3.4, 1.4, 4.4)
bcollide1.CFrame = CFrame.new(58.6, 1.7, -141.21)* CFrame.Angles(-0, 0, 1.5707963705063)
bcollide1.BrickColor = BrickColor.new("Really black")
bcollide1.Friction = 0.3
bcollide1.BottomSurface = Enum.SurfaceType.Smooth
bcollide1.CanCollide = true
bcollide1.Transparency = 1

 bcollide2 = Instance.new("Part", mcar)
bcollide2.FormFactor = Enum.FormFactor.Custom
bcollide2.Elasticity = 0
bcollide2.TopSurface = Enum.SurfaceType.Smooth
bcollide2.Size = Vector3.new(1.8, 11, 0.2)
bcollide2.Name = "bcollide2"
bcollide2.CFrame = CFrame.new(53.8, 1.7, -141.2)* CFrame.Angles(-0, 0, 1.5707963705063)
bcollide2.Friction = 0.3
bcollide2.BottomSurface = Enum.SurfaceType.Smooth
bcollide2.CanCollide = true
bcollide2.Transparency = 1

 bcollide3 = Instance.new("Part", mcar)
bcollide3.FormFactor = Enum.FormFactor.Custom
bcollide3.Elasticity = 0
bcollide3.TopSurface = Enum.SurfaceType.Smooth
bcollide3.Size = Vector3.new(1.8, 1.8, 2)
bcollide3.CFrame = CFrame.new(58.6, 1.7, -141.21)* CFrame.Angles(-0, 0, 1.5707963705063)
bcollide3.Friction = 0.3
bcollide3.BottomSurface = Enum.SurfaceType.Smooth
bcollide3.CanCollide = true
bcollide3.Transparency = 1

 bcollide4 = Instance.new("Part", mcar)
bcollide4.FormFactor = Enum.FormFactor.Custom
bcollide4.Elasticity = 0
bcollide4.TopSurface = Enum.SurfaceType.Smooth
bcollide4.Size = Vector3.new(1.8, 1.8, 2)
bcollide4.CFrame = CFrame.new(49.1, 1.7, -141.2)* CFrame.Angles(-0, 0, 1.5707963705063)
bcollide4.Friction = 0.3
bcollide4.BottomSurface = Enum.SurfaceType.Smooth
bcollide4.CanCollide = true
bcollide4.Transparency = 1

bcollide5 = Instance.new("Part", mcar)
bcollide5.FormFactor = Enum.FormFactor.Custom
bcollide5.Elasticity = 0
bcollide5.TopSurface = Enum.SurfaceType.Smooth
bcollide5.Size = Vector3.new(3.4, 1.4, 4.4)
bcollide5.CFrame = CFrame.new(58.6, 1.7, -141.21)* CFrame.Angles(-0, 0, 1.5707963705063)
bcollide5.BrickColor = BrickColor.new("Really black")
bcollide5.Friction = 0.3
bcollide5.BottomSurface = Enum.SurfaceType.Smooth
bcollide5.CanCollide = true
bcollide5.Transparency = 1

 part_4 = Instance.new("Part", backwheels)
part_4.FormFactor = Enum.FormFactor.Custom
part_4.Elasticity = 0
part_4.TopSurface = Enum.SurfaceType.Smooth
part_4.Size = Vector3.new(3.4, 1.4, 4.4)
part_4.CFrame = CFrame.new(58.6, 1.7, -141.21)* CFrame.Angles(-0, 0, 1.5707963705063)
part_4.BrickColor = BrickColor.new("Really black")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.Smooth
part_4.CanCollide = false

 mesh = Instance.new("CylinderMesh", part_4)

 axle = Instance.new("Part", backwheels)
axle.FormFactor = Enum.FormFactor.Custom
axle.Elasticity = 0
axle.TopSurface = Enum.SurfaceType.Smooth
axle.Size = Vector3.new(1.8, 11, 0.2)
axle.Name = "Axle"
axle.CFrame = CFrame.new(53.8, 1.7, -141.2)* CFrame.Angles(-0, 0, 1.5707963705063)
axle.Friction = 0.3
axle.BottomSurface = Enum.SurfaceType.Smooth
axle.CanCollide = false

 mesh_2 = Instance.new("CylinderMesh", axle)

 part_5 = Instance.new("Part", backwheels)
part_5.FormFactor = Enum.FormFactor.Custom
part_5.Elasticity = 0
part_5.TopSurface = Enum.SurfaceType.Smooth
part_5.Size = Vector3.new(1.8, 1.8, 2)
part_5.CFrame = CFrame.new(58.6, 1.7, -141.21)* CFrame.Angles(-0, 0, 1.5707963705063)
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.Smooth
part_5.CanCollide = false

 mesh_3 = Instance.new("CylinderMesh", part_5)

 part_6 = Instance.new("Part", backwheels)
part_6.FormFactor = Enum.FormFactor.Custom
part_6.Elasticity = 0
part_6.TopSurface = Enum.SurfaceType.Smooth
part_6.Size = Vector3.new(1.8, 1.8, 2)
part_6.CFrame = CFrame.new(49.1, 1.7, -141.2)* CFrame.Angles(-0, 0, 1.5707963705063)
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.Smooth
part_6.CanCollide = false

 mesh_4 = Instance.new("CylinderMesh", part_6)

 part_7 = Instance.new("Part", backwheels)
part_7.FormFactor = Enum.FormFactor.Custom
part_7.Elasticity = 0
part_7.TopSurface = Enum.SurfaceType.Smooth
part_7.Size = Vector3.new(3.4, 1.4, 4.4)
part_7.CFrame = CFrame.new(49.1, 1.7, -141.2)* CFrame.Angles(-0, 0, 1.5707963705063)
part_7.BrickColor = BrickColor.new("Really black")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.Smooth
part_7.CanCollide = false

 mesh_5 = Instance.new("CylinderMesh", part_7)

 part_8 = Instance.new("Part", mcar)
part_8.FormFactor = Enum.FormFactor.Symmetric
part_8.CanCollide = false
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.Smooth
part_8.Reflectance = 0.3
part_8.Material = Enum.Material.SmoothPlastic
part_8.Size = Vector3.new(1, 1, 1)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(50.548, 3.204, -164.351)* CFrame.Angles(-1.9569604603475e-007, 8.7457920017187e-008, 2.5507410100545e-005)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_6 = Instance.new("SpecialMesh", part_8)
mesh_6.Scale = Vector3.new(3, 3, 2)
mesh_6.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh_6.MeshType = Enum.MeshType.FileMesh

 vivrus = Instance.new("VelocityMotor", part_8)
vivrus.Name = "ViVRuS"

 part_9 = Instance.new("Part", mcar)
part_9.FormFactor = Enum.FormFactor.Plate
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.Smooth
part_9.Reflectance = 0.3
part_9.Material = Enum.Material.SmoothPlastic
part_9.Size = Vector3.new(1, 0.8, 2)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(50.149, 3.605, -164.551)* CFrame.Angles(-1.5707964897156, -2.2760454854165e-008, -1.570796251297)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_7 = Instance.new("SpecialMesh", part_9)
mesh_7.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_7.MeshType = Enum.MeshType.Brick

 part_10 = Instance.new("Part", mcar)
part_10.FormFactor = Enum.FormFactor.Plate
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.Smooth
part_10.Reflectance = 0.3
part_10.Material = Enum.Material.SmoothPlastic
part_10.Size = Vector3.new(1, 0.4, 2)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(48.349, 3.405, -163.656)* CFrame.Angles(3.141592502594, 6.5192580223083e-009, 0.00021353382908273)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_8 = Instance.new("SpecialMesh", part_10)
mesh_8.Scale = Vector3.new(0.4, 0.4, 0.4)
mesh_8.MeshId = "http://www.roblox.com/asset/?id=12221344"
mesh_8.MeshType = Enum.MeshType.FileMesh

 part_11 = Instance.new("Part", mcar)
part_11.FormFactor = Enum.FormFactor.Plate
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.Smooth
part_11.Reflectance = 0.3
part_11.Material = Enum.Material.SmoothPlastic
part_11.Size = Vector3.new(1, 0.8, 2)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(49.749, 3.605, -164.551)* CFrame.Angles(-1.5707963705063, -4.5537831283582e-008, -1.5707963705063)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_9 = Instance.new("SpecialMesh", part_11)
mesh_9.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_9.MeshType = Enum.MeshType.Brick

 frontlight2 = Instance.new("Part", mcar)
frontlight2.FormFactor = Enum.FormFactor.Plate
frontlight2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight2.Transparency = 0.2
frontlight2.TopSurface = Enum.SurfaceType.Smooth
frontlight2.Material = Enum.Material.SmoothPlastic
frontlight2.Size = Vector3.new(1, 0.4, 1)
frontlight2.Name = "frontlight2"
frontlight2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight2.CFrame = CFrame.new(48.848, 5.105, -165.251)* CFrame.Angles(-1.5708879232407, 6.3079831306823e-005, 3.141140460968)
frontlight2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight2.BrickColor = BrickColor.new("Mid gray")
frontlight2.Friction = 0.3
frontlight2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_10 = Instance.new("CylinderMesh", frontlight2)

 headlight = Instance.new("SpotLight", frontlight2)
headlight.Enabled = false
headlight.Face = Enum.NormalId.Right
headlight.Range = 15
headlight.Name = "headlight"
headlight.Angle = 180
headlight.Brightness = 20

 part_12 = Instance.new("Part", mcar)
part_12.FormFactor = Enum.FormFactor.Plate
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.Smooth
part_12.Reflectance = 0.3
part_12.Material = Enum.Material.SmoothPlastic
part_12.Size = Vector3.new(1, 0.4, 3)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(48.847, 3.204, -161.156)* CFrame.Angles(5.947543286311e-006, -0.00045032112393528, -0.0001974168990273)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Grey")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_13 = Instance.new("Part", mcar)
part_13.FormFactor = Enum.FormFactor.Plate
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.Smooth
part_13.Reflectance = 0.3
part_13.Material = Enum.Material.SmoothPlastic
part_13.Size = Vector3.new(1, 0.8, 2)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(51.349, 3.605, -164.551)* CFrame.Angles(-1.5707963705063, -4.5537831283582e-008, -1.5707963705063)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_11 = Instance.new("SpecialMesh", part_13)
mesh_11.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_11.MeshType = Enum.MeshType.Brick

 part_14 = Instance.new("Part", mcar)
part_14.FormFactor = Enum.FormFactor.Plate
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.Smooth
part_14.Reflectance = 0.3
part_14.Material = Enum.Material.SmoothPlastic
part_14.Size = Vector3.new(2, 0.4, 1)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(48.848, 4.005, -163.656)* CFrame.Angles(3.1281139850616, -1.5676319599152, 3.1279702186584)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Grey")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_15 = Instance.new("Part", mcar)
part_15.FormFactor = Enum.FormFactor.Plate
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.Smooth
part_15.Reflectance = 0.3
part_15.Material = Enum.Material.SmoothPlastic
part_15.Size = Vector3.new(1, 0.4, 2)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(48.349, 3.005, -163.656)* CFrame.Angles(3.141592502594, 6.4901541918516e-009, 0.00021353385818657)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_12 = Instance.new("SpecialMesh", part_15)
mesh_12.Scale = Vector3.new(0.4, 0.4, 0.4)
mesh_12.MeshId = "http://www.roblox.com/asset/?id=12221344"
mesh_12.MeshType = Enum.MeshType.FileMesh

 part_16 = Instance.new("Part", mcar)
part_16.FormFactor = Enum.FormFactor.Plate
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.Smooth
part_16.Reflectance = 0.3
part_16.Material = Enum.Material.SmoothPlastic
part_16.Size = Vector3.new(2, 1.2, 1)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(48.848, 3.205, -163.656)* CFrame.Angles(3.1281673908234, -1.5676319599152, 3.1280233860016)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Grey")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_17 = Instance.new("Part", mcar)
part_17.FormFactor = Enum.FormFactor.Plate
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.Smooth
part_17.Reflectance = 0.3
part_17.Material = Enum.Material.SmoothPlastic
part_17.Size = Vector3.new(1, 1.6, 1)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(48.847, 2.604, -159.156)* CFrame.Angles(5.872533620277e-006, -0.00045022714766674, -0.00019739411072806)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("Grey")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 frontlight4 = Instance.new("Part", mcar)
frontlight4.FormFactor = Enum.FormFactor.Plate
frontlight4.CanCollide = false
frontlight4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight4.Transparency = 0.2
frontlight4.TopSurface = Enum.SurfaceType.Smooth
frontlight4.Material = Enum.Material.SmoothPlastic
frontlight4.Size = Vector3.new(1, 0.4, 1)
frontlight4.Name = "frontlight4"
frontlight4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight4.CFrame = CFrame.new(48.849, 3.105, -164.856)* CFrame.Angles(-3.0908482074738, -1.5676507949829, -1.5200179815292)
frontlight4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight4.BrickColor = BrickColor.new("Bright orange")
frontlight4.Friction = 0.3
frontlight4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_13 = Instance.new("CylinderMesh", frontlight4)
mesh_13.Offset = Vector3.new(0, -0.3, 0)
mesh_13.Scale = Vector3.new(0.6, 1, 0.6)

 regularlight = Instance.new("SpotLight", frontlight4)
regularlight.Enabled = false
regularlight.Color = Color3.new(1, 0.333333, 0)
regularlight.Face = Enum.NormalId.Right
regularlight.Range = 10
regularlight.Name = "regularlight"
regularlight.Angle = 180
regularlight.Brightness = 20

 part_18 = Instance.new("Part", mcar)
part_18.FormFactor = Enum.FormFactor.Plate
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.Smooth
part_18.Material = Enum.Material.SmoothPlastic
part_18.Size = Vector3.new(6, 0.8, 1)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(48.847, 4.604, -161.651)* CFrame.Angles(0.24924144148827, 1.5676697492599, -0.24892921745777)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = bodycolor
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_19 = Instance.new("Part", mcar)
part_19.FormFactor = Enum.FormFactor.Plate
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.Smooth
part_19.Material = Enum.Material.SmoothPlastic
part_19.Size = Vector3.new(2, 0.4, 1)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(48.844, 5.203, -157.652)* CFrame.Angles(0.26357743144035, 1.5676697492599, -0.26282879710197)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BrickColor = bodycolor
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_20 = Instance.new("Part", mcar)
part_20.FormFactor = Enum.FormFactor.Plate
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.Smooth
part_20.Reflectance = 0.3
part_20.Material = Enum.Material.SmoothPlastic
part_20.Size = Vector3.new(1, 0.8, 2)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(53.749, 3.605, -164.551)* CFrame.Angles(-1.5707964897156, -5.2237146519474e-007, -1.5707963705063)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("SpecialMesh", part_20)
mesh_14.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_14.MeshType = Enum.MeshType.Brick

 part_21 = Instance.new("Part", mcar)
part_21.FormFactor = Enum.FormFactor.Plate
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.Smooth
part_21.Reflectance = 0.3
part_21.Material = Enum.Material.SmoothPlastic
part_21.Size = Vector3.new(1, 0.8, 2)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(52.949, 3.605, -164.551)* CFrame.Angles(-1.5707963705063, -4.5537831283582e-008, -1.5707963705063)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_15 = Instance.new("SpecialMesh", part_21)
mesh_15.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_15.MeshType = Enum.MeshType.Brick

 part_22 = Instance.new("Part", mcar)
part_22.FormFactor = Enum.FormFactor.Plate
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.Smooth
part_22.Reflectance = 0.3
part_22.Material = Enum.Material.SmoothPlastic
part_22.Size = Vector3.new(2, 0.8, 11)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(53.848, 2.205, -163.653)* CFrame.Angles(3.1281673908234, -1.5676131248474, 3.1280233860016)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Grey")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_23 = Instance.new("Part", mcar)
part_23.FormFactor = Enum.FormFactor.Plate
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.Smooth
part_23.Reflectance = 0.3
part_23.Material = Enum.Material.SmoothPlastic
part_23.Size = Vector3.new(1, 0.8, 9)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(53.849, 2.805, -164.551)* CFrame.Angles(3.0269060134888, 1.5676319599152, 0.46275079250336)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("SpecialMesh", part_23)
mesh_16.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_16.MeshType = Enum.MeshType.Brick

 frontbumper = Instance.new("Part", mcar)
frontbumper.FormFactor = Enum.FormFactor.Plate
frontbumper.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
frontbumper.TopSurface = Enum.SurfaceType.Smooth
frontbumper.Reflectance = 0.3
frontbumper.Material = Enum.Material.SmoothPlastic
frontbumper.Size = Vector3.new(1, 0.4, 11)
frontbumper.Name = "frontbumper"
frontbumper.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
frontbumper.CFrame = CFrame.new(53.849, 2.105, -164.853)* CFrame.Angles(3.1280734539032, -1.5676319599152, -1.5844591856003)
frontbumper.RightSurface = Enum.SurfaceType.SmoothNoOutlines
frontbumper.BackSurface = Enum.SurfaceType.SmoothNoOutlines
frontbumper.BrickColor = BrickColor.new("Grey")
frontbumper.Friction = 0.3
frontbumper.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_24 = Instance.new("Part", mcar)
part_24.FormFactor = Enum.FormFactor.Plate
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.Smooth
part_24.Reflectance = 0.3
part_24.Material = Enum.Material.SmoothPlastic
part_24.Size = Vector3.new(1, 0.8, 2)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(51.749, 3.605, -164.551)* CFrame.Angles(-1.5707963705063, -4.5537831283582e-008, -1.5707963705063)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Friction = 0.3
part_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_17 = Instance.new("SpecialMesh", part_24)
mesh_17.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_17.MeshType = Enum.MeshType.Brick

 part_25 = Instance.new("Part", mcar)
part_25.FormFactor = Enum.FormFactor.Plate
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.Smooth
part_25.Material = Enum.Material.SmoothPlastic
part_25.Size = Vector3.new(2, 0.8, 2)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(50.348, 3.703, -164.151)* CFrame.Angles(1.570796251297, 0.0001225274609169, -2.0668458944328e-007)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Black")
part_25.Friction = 0.3
part_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_18 = Instance.new("CylinderMesh", part_25)

 part_26 = Instance.new("Part", mcar)
part_26.FormFactor = Enum.FormFactor.Plate
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.Smooth
part_26.Reflectance = 0.3
part_26.Material = Enum.Material.SmoothPlastic
part_26.Size = Vector3.new(1, 0.8, 2)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(50.549, 3.605, -164.551)* CFrame.Angles(-1.5707963705063, -4.5537831283582e-008, -1.5707963705063)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_19 = Instance.new("SpecialMesh", part_26)
mesh_19.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_19.MeshType = Enum.MeshType.Brick

 part_27 = Instance.new("Part", mcar)
part_27.FormFactor = Enum.FormFactor.Plate
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.Smooth
part_27.Reflectance = 0.3
part_27.Material = Enum.Material.SmoothPlastic
part_27.Size = Vector3.new(1, 0.8, 2)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(50.849, 4.605, -164.551)* CFrame.Angles(-3.1349754333496, 1.5676697492599, 0.11481241136789)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.Friction = 0.3
part_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_20 = Instance.new("SpecialMesh", part_27)
mesh_20.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_20.MeshType = Enum.MeshType.Brick

 part_28 = Instance.new("Part", mcar)
part_28.FormFactor = Enum.FormFactor.Plate
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.Smooth
part_28.Material = Enum.Material.SmoothPlastic
part_28.Size = Vector3.new(1, 6.8, 1)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(48.847, 5.104, -161.651)* CFrame.Angles(1.5710419416428, 0.00015805164002813, 0.00022255443036556)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = bodycolor
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_21 = Instance.new("CylinderMesh", part_28)

 part_29 = Instance.new("Part", mcar)
part_29.FormFactor = Enum.FormFactor.Plate
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.Smooth
part_29.Reflectance = 0.3
part_29.Material = Enum.Material.SmoothPlastic
part_29.Size = Vector3.new(1, 0.4, 2)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(53.049, 3.705, -164.351)* CFrame.Angles(-1.5707956552505, -1.2217919826508, 1.5707969665527)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_30 = Instance.new("Part", mcar)
part_30.FormFactor = Enum.FormFactor.Plate
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.Smooth
part_30.Reflectance = 0.3
part_30.Material = Enum.Material.SmoothPlastic
part_30.Size = Vector3.new(1, 0.4, 1)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(52.348, 4.804, -164.352)* CFrame.Angles(0.19220323860645, 1.5676319599152, -1.7630617618561)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_22 = Instance.new("SpecialMesh", part_30)
mesh_22.Scale = Vector3.new(0.6, 0.6, 1)
mesh_22.MeshId = "http://www.roblox.com/asset/?id=12221344"
mesh_22.MeshType = Enum.MeshType.FileMesh

 part_31 = Instance.new("Part", mcar)
part_31.FormFactor = Enum.FormFactor.Plate
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.Smooth
part_31.Material = Enum.Material.SmoothPlastic
part_31.Size = Vector3.new(17, 0.4, 11)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(53.843, 1.602, -151.154)* CFrame.Angles(-0.01320565212518, 1.5676319599152, 0.013349411077797)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("Black")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_32 = Instance.new("Part", mcar)
part_32.FormFactor = Enum.FormFactor.Plate
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.Smooth
part_32.Reflectance = 0.3
part_32.Material = Enum.Material.SmoothPlastic
part_32.Size = Vector3.new(1, 0.8, 2)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(52.149, 3.605, -164.551)* CFrame.Angles(-1.5707964897156, -2.2760454854165e-008, -1.570796251297)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("SpecialMesh", part_32)
mesh_23.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_23.MeshType = Enum.MeshType.Brick

 part_33 = Instance.new("Part", mcar)
part_33.FormFactor = Enum.FormFactor.Plate
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.Smooth
part_33.Reflectance = 0.3
part_33.Material = Enum.Material.SmoothPlastic
part_33.Size = Vector3.new(1, 0.4, 2)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(48.349, 2.605, -163.656)* CFrame.Angles(3.141592502594, 6.5192580223083e-009, 0.00021353382908273)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_24 = Instance.new("SpecialMesh", part_33)
mesh_24.Scale = Vector3.new(0.4, 0.4, 0.4)
mesh_24.MeshId = "http://www.roblox.com/asset/?id=12221344"
mesh_24.MeshType = Enum.MeshType.FileMesh

 part_34 = Instance.new("Part", mcar)
part_34.FormFactor = Enum.FormFactor.Plate
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.TopSurface = Enum.SurfaceType.Smooth
part_34.Reflectance = 0.3
part_34.Material = Enum.Material.SmoothPlastic
part_34.Size = Vector3.new(1, 0.4, 7.213)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(48.743, 4.501, -160.25)* CFrame.Angles(0.00034509919350967, 2.6231919036945e-006, -9.5047390402669e-008)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Grey")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_35 = Instance.new("Part", mcar)
part_35.FormFactor = Enum.FormFactor.Plate
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.Smooth
part_35.Reflectance = 0.3
part_35.Material = Enum.Material.SmoothPlastic
part_35.Size = Vector3.new(1, 0.4, 1)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(51.749, 4.005, -164.351)* CFrame.Angles(0.10810941457748, -1.5676697492599, 0.098645381629467)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("Grey")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_36 = Instance.new("Part", mcar)
part_36.FormFactor = Enum.FormFactor.Plate
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.Smooth
part_36.Reflectance = 0.3
part_36.Material = Enum.Material.SmoothPlastic
part_36.Size = Vector3.new(1, 0.8, 2)
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(50.949, 3.605, -164.551)* CFrame.Angles(-1.5707963705063, -4.5537831283582e-008, -1.5707963705063)
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Friction = 0.3
part_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_25 = Instance.new("SpecialMesh", part_36)
mesh_25.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_25.MeshType = Enum.MeshType.Brick

 part_37 = Instance.new("Part", mcar)
part_37.FormFactor = Enum.FormFactor.Plate
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.Smooth
part_37.Material = Enum.Material.SmoothPlastic
part_37.Size = Vector3.new(4, 0.8, 1)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(48.848, 3.804, -160.655)* CFrame.Angles(0.24889132380486, 1.5676889419556, -0.24860671162605)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BrickColor = bodycolor
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_38 = Instance.new("Part", mcar)
part_38.FormFactor = Enum.FormFactor.Plate
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.Smooth
part_38.Reflectance = 0.3
part_38.Material = Enum.Material.SmoothPlastic
part_38.Size = Vector3.new(1, 0.8, 2)
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(53.349, 3.605, -164.551)* CFrame.Angles(-1.5707964897156, 2.3386369321088e-006, -1.5707963705063)
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Friction = 0.3
part_38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("SpecialMesh", part_38)
mesh_26.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_26.MeshType = Enum.MeshType.Brick

 part_39 = Instance.new("Part", mcar)
part_39.FormFactor = Enum.FormFactor.Plate
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.TopSurface = Enum.SurfaceType.Smooth
part_39.Material = Enum.Material.SmoothPlastic
part_39.Size = Vector3.new(3, 0.4, 9)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(53.847, 1.604, -161.154)* CFrame.Angles(-0.01320565212518, 1.5676319599152, 0.013349411077797)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BrickColor = BrickColor.new("Black")
part_39.Friction = 0.3
part_39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_40 = Instance.new("Part", mcar)
part_40.FormFactor = Enum.FormFactor.Plate
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.TopSurface = Enum.SurfaceType.Smooth
part_40.Reflectance = 0.3
part_40.Material = Enum.Material.SmoothPlastic
part_40.Size = Vector3.new(1, 0.8, 2)
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(52.549, 3.605, -164.551)* CFrame.Angles(-1.5707963705063, -4.5537831283582e-008, -1.5707963705063)
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Friction = 0.3
part_40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("SpecialMesh", part_40)
mesh_27.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_27.MeshType = Enum.MeshType.Brick

 engine = Instance.new("Part", mcar)
engine.FormFactor = Enum.FormFactor.Plate
engine.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
engine.TopSurface = Enum.SurfaceType.Smooth
engine.Material = Enum.Material.SmoothPlastic
engine.Size = Vector3.new(8, 0.8, 9)
engine.Name = "engine"
engine.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
engine.CFrame = CFrame.new(53.848, 5.005, -160.551)* CFrame.Angles(-1.1832162272185e-007, 1.5707963705063, 0)
engine.RightSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BackSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BrickColor = BrickColor.new("Institutional white")
engine.Friction = 0.3
engine.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 window1 = Instance.new("Part", mcar)
window1.FormFactor = Enum.FormFactor.Plate
window1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
window1.Transparency = 0.5
window1.TopSurface = Enum.SurfaceType.Smooth
window1.Reflectance = 0.5
window1.Material = Enum.Material.SmoothPlastic
window1.Size = Vector3.new(3, 2, 1)
window1.Name = "window1"
window1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
window1.CFrame = CFrame.new(58.847, 6.405, -145.052)* CFrame.Angles(-3.996683517471e-008, 1.5707963705063, 0)
window1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
window1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
window1.BrickColor = BrickColor.new("Really black")
window1.Friction = 0.3
window1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_41 = Instance.new("Part", mcar)
part_41.FormFactor = Enum.FormFactor.Plate
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.Smooth
part_41.Material = Enum.Material.SmoothPlastic
part_41.Size = Vector3.new(2, 0.4, 11)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(53.848, 1.605, -163.654)* CFrame.Angles(-0.01320565212518, 1.5676319599152, 0.013349411077797)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("Black")
part_41.Friction = 0.3
part_41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_42 = Instance.new("Part", mcar)
part_42.FormFactor = Enum.FormFactor.Plate
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.Smooth
part_42.Reflectance = 0.3
part_42.Material = Enum.Material.SmoothPlastic
part_42.Size = Vector3.new(1, 0.8, 9)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(53.849, 3.705, -164.551)* CFrame.Angles(3.0269060134888, 1.5676319599152, 0.46275079250336)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_28 = Instance.new("SpecialMesh", part_42)
mesh_28.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_28.MeshType = Enum.MeshType.Brick

 part_43 = Instance.new("Part", mcar)
part_43.FormFactor = Enum.FormFactor.Plate
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.Transparency = 0.5
part_43.TopSurface = Enum.SurfaceType.Smooth
part_43.Reflectance = 0.5
part_43.Material = Enum.Material.SmoothPlastic
part_43.Size = Vector3.new(11, 2.4, 1)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(53.848, 6.605, -157.052)* CFrame.Angles(-3.7612418964272e-005, -1.0413320524094e-005, -6.5191630937989e-007)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("White")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("SpecialMesh", part_43)
mesh_29.MeshType = Enum.MeshType.Wedge

 part_44 = Instance.new("Part", mcar)
part_44.FormFactor = Enum.FormFactor.Plate
part_44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.TopSurface = Enum.SurfaceType.Smooth
part_44.Material = Enum.Material.SmoothPlastic
part_44.Size = Vector3.new(1, 3.6, 2)
part_44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.CFrame = CFrame.new(58.842, 3.602, -150.653)* CFrame.Angles(3.141592502594, -2.2057429305278e-007, 3.1415927410126)
part_44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BrickColor = bodycolor
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_45 = Instance.new("Part", mcar)
part_45.FormFactor = Enum.FormFactor.Plate
part_45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.TopSurface = Enum.SurfaceType.Smooth
part_45.Reflectance = 0.3
part_45.Material = Enum.Material.SmoothPlastic
part_45.Size = Vector3.new(1, 0.4, 1)
part_45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.CFrame = CFrame.new(56.049, 4.005, -164.351)* CFrame.Angles(1.5648994445801, -1.5676697492599, 1.5668820142746)
part_45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BrickColor = BrickColor.new("Grey")
part_45.Friction = 0.3
part_45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_46 = Instance.new("Part", mcar)
part_46.FormFactor = Enum.FormFactor.Plate
part_46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.TopSurface = Enum.SurfaceType.Smooth
part_46.Reflectance = 0.3
part_46.Material = Enum.Material.SmoothPlastic
part_46.Size = Vector3.new(1, 0.8, 7)
part_46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.CFrame = CFrame.new(53.849, 4.605, -164.551)* CFrame.Angles(3.0268504619598, 1.5676507949829, 0.46282681822777)
part_46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.Friction = 0.3
part_46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("SpecialMesh", part_46)
mesh_30.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_30.MeshType = Enum.MeshType.Brick

 part_47 = Instance.new("Part", mcar)
part_47.FormFactor = Enum.FormFactor.Plate
part_47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.TopSurface = Enum.SurfaceType.Smooth
part_47.Reflectance = 0.3
part_47.Material = Enum.Material.SmoothPlastic
part_47.Size = Vector3.new(1, 0.8, 9)
part_47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.CFrame = CFrame.new(53.849, 4.305, -164.551)* CFrame.Angles(3.0269086360931, 1.5676131248474, 0.46262288093567)
part_47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.Friction = 0.3
part_47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("SpecialMesh", part_47)
mesh_31.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_31.MeshType = Enum.MeshType.Brick

 part_48 = Instance.new("Part", mcar)
part_48.FormFactor = Enum.FormFactor.Plate
part_48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.TopSurface = Enum.SurfaceType.Smooth
part_48.Material = Enum.Material.SmoothPlastic
part_48.Size = Vector3.new(1, 3.6, 2)
part_48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.CFrame = CFrame.new(48.843, 3.602, -150.656)* CFrame.Angles(3.141592502594, -2.2057429305278e-007, 3.1415927410126)
part_48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BrickColor = bodycolor
part_48.Friction = 0.3
part_48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_49 = Instance.new("Part", mcar)
part_49.FormFactor = Enum.FormFactor.Plate
part_49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.TopSurface = Enum.SurfaceType.Smooth
part_49.Reflectance = 0.3
part_49.Material = Enum.Material.SmoothPlastic
part_49.Size = Vector3.new(1, 0.8, 9)
part_49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.CFrame = CFrame.new(53.849, 3.105, -164.551)* CFrame.Angles(3.0269060134888, 1.5676319599152, 0.46275079250336)
part_49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.Friction = 0.3
part_49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_32 = Instance.new("SpecialMesh", part_49)
mesh_32.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_32.MeshType = Enum.MeshType.Brick

 part_50 = Instance.new("Part", mcar)
part_50.FormFactor = Enum.FormFactor.Plate
part_50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.TopSurface = Enum.SurfaceType.Smooth
part_50.Material = Enum.Material.SmoothPlastic
part_50.Size = Vector3.new(9, 1.6, 1)
part_50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.CFrame = CFrame.new(53.848, 3.304, -164.051)* CFrame.Angles(-1.9568877007714e-007, 8.7458829511888e-008, 0.00012352189514786)
part_50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BrickColor = BrickColor.new("Black")
part_50.Friction = 0.3
part_50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_51 = Instance.new("Part", mcar)
part_51.FormFactor = Enum.FormFactor.Plate
part_51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.TopSurface = Enum.SurfaceType.Smooth
part_51.Material = Enum.Material.SmoothPlastic
part_51.Size = Vector3.new(2, 3.2, 11)
part_51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.CFrame = CFrame.new(53.844, 3.403, -157.652)* CFrame.Angles(0.24924144148827, 1.5676697492599, -0.24892921745777)
part_51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BrickColor = bodycolor
part_51.Friction = 0.3
part_51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_52 = Instance.new("Part", mcar)
part_52.FormFactor = Enum.FormFactor.Plate
part_52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.TopSurface = Enum.SurfaceType.Smooth
part_52.Material = Enum.Material.SmoothPlastic
part_52.Size = Vector3.new(7, 1.6, 1)
part_52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.CFrame = CFrame.new(53.848, 3.904, -164.051)* CFrame.Angles(-1.9568877007714e-007, 8.7458829511888e-008, 0.00012352189514786)
part_52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BrickColor = BrickColor.new("Black")
part_52.Friction = 0.3
part_52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_53 = Instance.new("Part", mcar)
part_53.FormFactor = Enum.FormFactor.Plate
part_53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.TopSurface = Enum.SurfaceType.Smooth
part_53.Reflectance = 0.3
part_53.Material = Enum.Material.SmoothPlastic
part_53.Size = Vector3.new(1, 0.8, 2)
part_53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.CFrame = CFrame.new(54.549, 3.605, -164.551)* CFrame.Angles(1.5707961320877, 7.7331606007647e-008, -1.5707963705063)
part_53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.Friction = 0.3
part_53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_33 = Instance.new("SpecialMesh", part_53)
mesh_33.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_33.MeshType = Enum.MeshType.Brick

 part_54 = Instance.new("Part", mcar)
part_54.FormFactor = Enum.FormFactor.Plate
part_54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.TopSurface = Enum.SurfaceType.Smooth
part_54.Reflectance = 0.3
part_54.Material = Enum.Material.SmoothPlastic
part_54.Size = Vector3.new(1, 0.8, 9)
part_54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.CFrame = CFrame.new(53.849, 4.005, -164.551)* CFrame.Angles(3.0269083976746, 1.5676131248474, 0.46262234449387)
part_54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.Friction = 0.3
part_54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("SpecialMesh", part_54)
mesh_34.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_34.MeshType = Enum.MeshType.Brick

 part_55 = Instance.new("Part", mcar)
part_55.FormFactor = Enum.FormFactor.Plate
part_55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.TopSurface = Enum.SurfaceType.Smooth
part_55.Reflectance = 0.3
part_55.Material = Enum.Material.SmoothPlastic
part_55.Size = Vector3.new(1, 0.8, 2)
part_55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.CFrame = CFrame.new(54.149, 3.605, -164.551)* CFrame.Angles(1.5707961320877, 7.7331606007647e-008, -1.5707963705063)
part_55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.Friction = 0.3
part_55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_35 = Instance.new("SpecialMesh", part_55)
mesh_35.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_35.MeshType = Enum.MeshType.Brick

 part_56 = Instance.new("Part", mcar)
part_56.FormFactor = Enum.FormFactor.Plate
part_56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.TopSurface = Enum.SurfaceType.Smooth
part_56.Material = Enum.Material.SmoothPlastic
part_56.Size = Vector3.new(1, 3.6, 1)
part_56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.CFrame = CFrame.new(48.839, 3.601, -144.157)* CFrame.Angles(-0.0056147389113903, -1.5676697492599, -0.623783826828)
part_56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BrickColor = bodycolor
part_56.Friction = 0.3
part_56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_57 = Instance.new("Part", mcar)
part_57.FormFactor = Enum.FormFactor.Plate
part_57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.TopSurface = Enum.SurfaceType.Smooth
part_57.Material = Enum.Material.SmoothPlastic
part_57.Size = Vector3.new(2, 0.4, 1)
part_57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.CFrame = CFrame.new(58.844, 5.203, -157.653)* CFrame.Angles(0.26357743144035, 1.5676697492599, -0.26282879710197)
part_57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BrickColor = bodycolor
part_57.Friction = 0.3
part_57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_58 = Instance.new("Part", mcar)
part_58.FormFactor = Enum.FormFactor.Plate
part_58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.TopSurface = Enum.SurfaceType.Smooth
part_58.Reflectance = 0.3
part_58.Material = Enum.Material.SmoothPlastic
part_58.Size = Vector3.new(1, 0.8, 9)
part_58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.CFrame = CFrame.new(53.849, 3.405, -164.551)* CFrame.Angles(3.0269060134888, 1.5676319599152, 0.46275079250336)
part_58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.Friction = 0.3
part_58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("SpecialMesh", part_58)
mesh_36.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_36.MeshType = Enum.MeshType.Brick

 part_59 = Instance.new("Part", mcar)
part_59.FormFactor = Enum.FormFactor.Plate
part_59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.TopSurface = Enum.SurfaceType.Smooth
part_59.Reflectance = 0.3
part_59.Material = Enum.Material.SmoothPlastic
part_59.Size = Vector3.new(1, 0.8, 2)
part_59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.CFrame = CFrame.new(55.349, 3.605, -164.551)* CFrame.Angles(1.570796251297, -4.1874045564327e-008, -1.570796251297)
part_59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.Friction = 0.3
part_59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("SpecialMesh", part_59)
mesh_37.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_37.MeshType = Enum.MeshType.Brick

thing1 = Instance.new("Part", mcar)
thing1.FormFactor = Enum.FormFactor.Plate
thing1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
thing1.TopSurface = Enum.SurfaceType.Smooth
thing1.Material = Enum.Material.SmoothPlastic
thing1.Size = Vector3.new(3.926, 3.599, 1)
thing1.Name = "thing1"
thing1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
thing1.CFrame = CFrame.new(48.839, 3.604, -145.62)* CFrame.Angles(-0.0056147389113903, -1.5676697492599, 0)
thing1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
thing1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
thing1.BrickColor = bodycolor
thing1.Friction = 0.3
thing1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

thing2 = Instance.new("Part", mcar)
thing2.FormFactor = Enum.FormFactor.Plate
thing2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
thing2.TopSurface = Enum.SurfaceType.Smooth
thing2.Material = Enum.Material.SmoothPlastic
thing2.Size = Vector3.new(3.926, 3.599, 1)
thing2.Name = "thing2"
thing2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
thing2.CFrame = CFrame.new(58.839, 3.604, -145.62)* CFrame.Angles(-0.0056147389113903, -1.5676697492599, 0)
thing2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
thing2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
thing2.BrickColor = bodycolor
thing2.Friction = 0.3
thing2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_60 = Instance.new("Part", mcar)
part_60.FormFactor = Enum.FormFactor.Plate
part_60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.TopSurface = Enum.SurfaceType.Smooth
part_60.Reflectance = 0.3
part_60.Material = Enum.Material.SmoothPlastic
part_60.Size = Vector3.new(1, 0.8, 2)
part_60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.CFrame = CFrame.new(55.749, 3.605, -164.551)* CFrame.Angles(1.570796251297, -4.1874045564327e-008, -1.570796251297)
part_60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.Friction = 0.3
part_60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_38 = Instance.new("SpecialMesh", part_60)
mesh_38.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_38.MeshType = Enum.MeshType.Brick

 window2 = Instance.new("Part", mcar)
window2.FormFactor = Enum.FormFactor.Plate
window2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
window2.Transparency = 0.5
window2.TopSurface = Enum.SurfaceType.Smooth
window2.Reflectance = 0.5
window2.Material = Enum.Material.SmoothPlastic
window2.Size = Vector3.new(3, 2, 1)
window2.Name = "window2"
window2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
window2.CFrame = CFrame.new(48.847, 6.405, -145.052)* CFrame.Angles(-3.996683517471e-008, 1.5707963705063, 0)
window2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
window2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
window2.BrickColor = BrickColor.new("Institutional white")
window2.Friction = 0.3
window2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_61 = Instance.new("Part", mcar)
part_61.FormFactor = Enum.FormFactor.Plate
part_61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.TopSurface = Enum.SurfaceType.Smooth
part_61.Reflectance = 0.3
part_61.Material = Enum.Material.SmoothPlastic
part_61.Size = Vector3.new(1, 0.4, 2)
part_61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.CFrame = CFrame.new(54.749, 3.705, -164.351)* CFrame.Angles(1.571993470192, -1.2216417789459, 1.5719218254089)
part_61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.Friction = 0.3
part_61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_62 = Instance.new("Part", mcar)
part_62.FormFactor = Enum.FormFactor.Plate
part_62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.TopSurface = Enum.SurfaceType.Smooth
part_62.Reflectance = 0.3
part_62.Material = Enum.Material.SmoothPlastic
part_62.Size = Vector3.new(1, 0.8, 2)
part_62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.CFrame = CFrame.new(56.149, 3.605, -164.551)* CFrame.Angles(1.5707961320877, -1.6015852452256e-005, -1.5707964897156)
part_62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.Friction = 0.3
part_62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_39 = Instance.new("SpecialMesh", part_62)
mesh_39.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_39.MeshType = Enum.MeshType.Brick

 window4 = Instance.new("Part", mcar)
window4.FormFactor = Enum.FormFactor.Plate
window4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
window4.Transparency = 0.5
window4.TopSurface = Enum.SurfaceType.Smooth
window4.Reflectance = 0.5
window4.Material = Enum.Material.SmoothPlastic
window4.Size = Vector3.new(3, 2, 1)
window4.Name = "window4"
window4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
window4.CFrame = CFrame.new(48.847, 6.405, -149.052)* CFrame.Angles(-3.996683517471e-008, 1.5707963705063, 0)
window4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
window4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
window4.BrickColor = BrickColor.new("Institutional white")
window4.Friction = 0.3
window4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_63 = Instance.new("Part", mcar)
part_63.FormFactor = Enum.FormFactor.Plate
part_63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.TopSurface = Enum.SurfaceType.Smooth
part_63.Reflectance = 0.3
part_63.Material = Enum.Material.SmoothPlastic
part_63.Size = Vector3.new(1, 0.8, 2)
part_63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.CFrame = CFrame.new(58.149, 3.605, -164.551)* CFrame.Angles(1.5707964897156, 7.7331151260296e-008, -1.5707963705063)
part_63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.Friction = 0.3
part_63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_40 = Instance.new("SpecialMesh", part_63)
mesh_40.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_40.MeshType = Enum.MeshType.Brick

 part_64 = Instance.new("Part", mcar)
part_64.FormFactor = Enum.FormFactor.Plate
part_64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.TopSurface = Enum.SurfaceType.Smooth
part_64.Reflectance = 0.3
part_64.Material = Enum.Material.SmoothPlastic
part_64.Size = Vector3.new(1, 0.4, 1)
part_64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.CFrame = CFrame.new(55.248, 4.804, -164.352)* CFrame.Angles(0.19220323860645, 1.5676319599152, -1.7630617618561)
part_64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.Friction = 0.3
part_64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_41 = Instance.new("SpecialMesh", part_64)
mesh_41.Scale = Vector3.new(0.6, 0.6, 1)
mesh_41.MeshId = "http://www.roblox.com/asset/?id=12221344"
mesh_41.MeshType = Enum.MeshType.FileMesh

 part_65 = Instance.new("Part", mcar)
part_65.FormFactor = Enum.FormFactor.Plate
part_65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.TopSurface = Enum.SurfaceType.Smooth
part_65.Reflectance = 0.3
part_65.Material = Enum.Material.SmoothPlastic
part_65.Size = Vector3.new(1, 0.8, 2)
part_65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.CFrame = CFrame.new(54.949, 3.605, -164.551)* CFrame.Angles(1.5707961320877, 7.7331606007647e-008, -1.5707963705063)
part_65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.Friction = 0.3
part_65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_42 = Instance.new("SpecialMesh", part_65)
mesh_42.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_42.MeshType = Enum.MeshType.Brick

 part_66 = Instance.new("Part", mcar)
part_66.FormFactor = Enum.FormFactor.Plate
part_66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.TopSurface = Enum.SurfaceType.Smooth
part_66.Material = Enum.Material.SmoothPlastic
part_66.Size = Vector3.new(2, 0.8, 2)
part_66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.CFrame = CFrame.new(57.448, 3.704, -164.151)* CFrame.Angles(1.570796251297, 0.0001225274609169, -2.0668458944328e-007)
part_66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BrickColor = BrickColor.new("Black")
part_66.Friction = 0.3
part_66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_43 = Instance.new("CylinderMesh", part_66)

 part_67 = Instance.new("Part", mcar)
part_67.FormFactor = Enum.FormFactor.Plate
part_67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.TopSurface = Enum.SurfaceType.Smooth
part_67.Reflectance = 0.3
part_67.Material = Enum.Material.SmoothPlastic
part_67.Size = Vector3.new(1, 0.8, 2)
part_67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.CFrame = CFrame.new(57.349, 3.605, -164.551)* CFrame.Angles(1.5707961320877, -1.6015852452256e-005, -1.5707964897156)
part_67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.Friction = 0.3
part_67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_44 = Instance.new("SpecialMesh", part_67)
mesh_44.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_44.MeshType = Enum.MeshType.Brick

 part_68 = Instance.new("Part", mcar)
part_68.FormFactor = Enum.FormFactor.Symmetric
part_68.CanCollide = false
part_68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.TopSurface = Enum.SurfaceType.Smooth
part_68.Reflectance = 0.3
part_68.Material = Enum.Material.SmoothPlastic
part_68.Size = Vector3.new(1, 1, 1)
part_68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.CFrame = CFrame.new(57.248, 3.204, -164.351)* CFrame.Angles(-1.9569604603475e-007, 8.7457920017187e-008, 2.5507410100545e-005)
part_68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.Friction = 0.3
part_68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_45 = Instance.new("SpecialMesh", part_68)
mesh_45.Scale = Vector3.new(3, 3, 2)
mesh_45.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh_45.MeshType = Enum.MeshType.FileMesh

 vivrus_2 = Instance.new("VelocityMotor", part_68)
vivrus_2.Name = "ViVRuS"

 part_69 = Instance.new("Part", mcar)
part_69.FormFactor = Enum.FormFactor.Plate
part_69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.TopSurface = Enum.SurfaceType.Smooth
part_69.Material = Enum.Material.SmoothPlastic
part_69.Size = Vector3.new(4, 0.8, 1)
part_69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.CFrame = CFrame.new(58.846, 3.804, -160.651)* CFrame.Angles(0.24888914823532, 1.5676507949829, -0.24861106276512)
part_69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BrickColor = bodycolor
part_69.Friction = 0.3
part_69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_70 = Instance.new("Part", mcar)
part_70.FormFactor = Enum.FormFactor.Plate
part_70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.TopSurface = Enum.SurfaceType.Smooth
part_70.Reflectance = 0.3
part_70.Material = Enum.Material.SmoothPlastic
part_70.Size = Vector3.new(1, 2, 3)
part_70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.CFrame = CFrame.new(48.743, 3.2, -145.756)* CFrame.Angles(-1.5708900690079, 2.4369448510697e-005, 6.0501456573547e-006)
part_70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.Friction = 0.3
part_70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_46 = Instance.new("SpecialMesh", part_70)
mesh_46.MeshType = Enum.MeshType.Wedge

 part_71 = Instance.new("Part", mcar)
part_71.FormFactor = Enum.FormFactor.Plate
part_71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.TopSurface = Enum.SurfaceType.Smooth
part_71.Reflectance = 0.3
part_71.Material = Enum.Material.SmoothPlastic
part_71.Size = Vector3.new(1, 0.4, 7)
part_71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.CFrame = CFrame.new(48.838, 3.199, -140.156)* CFrame.Angles(5.872533620277e-006, -0.00045022714766674, -0.00019739411072806)
part_71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BrickColor = BrickColor.new("Grey")
part_71.Friction = 0.3
part_71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_72 = Instance.new("Part", mcar)
part_72.FormFactor = Enum.FormFactor.Plate
part_72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.TopSurface = Enum.SurfaceType.Smooth
part_72.Reflectance = 0.3
part_72.Material = Enum.Material.SmoothPlastic
part_72.Size = Vector3.new(1, 1.2, 1)
part_72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.CFrame = CFrame.new(48.839, 2.401, -143.156)* CFrame.Angles(5.872533620277e-006, -0.00045022714766674, -0.00019739411072806)
part_72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BrickColor = BrickColor.new("Grey")
part_72.Friction = 0.3
part_72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_73 = Instance.new("Part", mcar)
part_73.FormFactor = Enum.FormFactor.Plate
part_73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.TopSurface = Enum.SurfaceType.Smooth
part_73.Reflectance = 0.3
part_73.Material = Enum.Material.SmoothPlastic
part_73.Size = Vector3.new(1, 0.8, 2)
part_73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.CFrame = CFrame.new(56.549, 3.605, -164.551)* CFrame.Angles(1.5707961320877, -1.6015852452256e-005, -1.5707964897156)
part_73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.Friction = 0.3
part_73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_47 = Instance.new("SpecialMesh", part_73)
mesh_47.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_47.MeshType = Enum.MeshType.Brick

 part_74 = Instance.new("Part", mcar)
part_74.FormFactor = Enum.FormFactor.Plate
part_74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.TopSurface = Enum.SurfaceType.Smooth
part_74.Reflectance = 0.3
part_74.Material = Enum.Material.SmoothPlastic
part_74.Size = Vector3.new(1, 0.8, 2)
part_74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.CFrame = CFrame.new(56.949, 3.605, -164.551)* CFrame.Angles(1.5707961320877, -1.6015852452256e-005, -1.5707964897156)
part_74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.Friction = 0.3
part_74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_48 = Instance.new("SpecialMesh", part_74)
mesh_48.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_48.MeshType = Enum.MeshType.Brick

 part_75 = Instance.new("Part", mcar)
part_75.FormFactor = Enum.FormFactor.Plate
part_75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.TopSurface = Enum.SurfaceType.Smooth
part_75.Reflectance = 0.3
part_75.Material = Enum.Material.SmoothPlastic
part_75.Size = Vector3.new(1, 0.8, 2)
part_75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.CFrame = CFrame.new(56.949, 3.605, -164.551)* CFrame.Angles(1.5707961320877, 4.9787366151577e-005, -1.5707964897156)
part_75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.Friction = 0.3
part_75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_49 = Instance.new("SpecialMesh", part_75)
mesh_49.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_49.MeshType = Enum.MeshType.Brick

 part_76 = Instance.new("Part", mcar)
part_76.FormFactor = Enum.FormFactor.Plate
part_76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.TopSurface = Enum.SurfaceType.Smooth
part_76.Material = Enum.Material.SmoothPlastic
part_76.Size = Vector3.new(7, 2.8, 9)
part_76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.CFrame = CFrame.new(53.838, 3.2, -140.154)* CFrame.Angles(-0.013111274689436, 1.5676319599152, 0.013255027122796)
part_76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BrickColor = BrickColor.new("Institutional white")
part_76.Friction = 0.3
part_76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_77 = Instance.new("Part", mcar)
part_77.FormFactor = Enum.FormFactor.Plate
part_77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.TopSurface = Enum.SurfaceType.Smooth
part_77.Reflectance = 0.3
part_77.Material = Enum.Material.SmoothPlastic
part_77.Size = Vector3.new(1, 2, 3)
part_77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.CFrame = CFrame.new(58.943, 3.2, -145.756)* CFrame.Angles(-1.5708900690079, 2.4369448510697e-005, 6.0501456573547e-006)
part_77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.Friction = 0.3
part_77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_50 = Instance.new("SpecialMesh", part_77)
mesh_50.MeshType = Enum.MeshType.Wedge

 part_78 = Instance.new("Part", mcar)
part_78.FormFactor = Enum.FormFactor.Plate
part_78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.TopSurface = Enum.SurfaceType.Smooth
part_78.Material = Enum.Material.SmoothPlastic
part_78.Size = Vector3.new(1, 3.6, 5)
part_78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.CFrame = CFrame.new(58.842, 3.602, -147.152)* CFrame.Angles(3.141592502594, -2.2057520254748e-007, 3.1415927410126)
part_78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BrickColor = bodycolor
part_78.Friction = 0.3
part_78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_79 = Instance.new("Part", mcar)
part_79.FormFactor = Enum.FormFactor.Plate
part_79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.TopSurface = Enum.SurfaceType.Smooth
part_79.Reflectance = 0.3
part_79.Material = Enum.Material.SmoothPlastic
part_79.Size = Vector3.new(1, 0.4, 7.101)
part_79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.CFrame = CFrame.new(58.943, 4.499, -160.306)* CFrame.Angles(-1.9569604603475e-007, 8.7458829511888e-008, -2.6312985937693e-005)
part_79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BrickColor = BrickColor.new("Grey")
part_79.Friction = 0.3
part_79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_80 = Instance.new("Part", mcar)
part_80.FormFactor = Enum.FormFactor.Plate
part_80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.TopSurface = Enum.SurfaceType.Smooth
part_80.Reflectance = 0.3
part_80.Material = Enum.Material.SmoothPlastic
part_80.Size = Vector3.new(1, 0.8, 2)
part_80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.CFrame = CFrame.new(57.749, 3.605, -164.551)* CFrame.Angles(1.5707961320877, -1.6015854271245e-005, -1.5707964897156)
part_80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.Friction = 0.3
part_80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_51 = Instance.new("SpecialMesh", part_80)
mesh_51.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_51.MeshType = Enum.MeshType.Brick

 part_81 = Instance.new("Part", mcar)
part_81.FormFactor = Enum.FormFactor.Plate
part_81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.TopSurface = Enum.SurfaceType.Smooth
part_81.Material = Enum.Material.SmoothPlastic
part_81.Size = Vector3.new(1, 2, 1)
part_81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.CFrame = CFrame.new(48.847, 6.405, -147.052)* CFrame.Angles(3.141592502594, -1.1626889317995e-007, -3.1415927410126)
part_81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BrickColor = bodycolor
part_81.Friction = 0.3
part_81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_82 = Instance.new("Part", mcar)
part_82.FormFactor = Enum.FormFactor.Plate
part_82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.TopSurface = Enum.SurfaceType.Smooth
part_82.Material = Enum.Material.SmoothPlastic
part_82.Size = Vector3.new(1, 3.6, 5)
part_82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.CFrame = CFrame.new(48.842, 3.602, -147.156)* CFrame.Angles(3.141592502594, -2.2057520254748e-007, 3.1415927410126)
part_82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BrickColor = bodycolor
part_82.Friction = 0.3
part_82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 window3 = Instance.new("Part", mcar)
window3.FormFactor = Enum.FormFactor.Plate
window3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
window3.Transparency = 0.5
window3.TopSurface = Enum.SurfaceType.Smooth
window3.Reflectance = 0.5
window3.Material = Enum.Material.SmoothPlastic
window3.Size = Vector3.new(3, 2, 1)
window3.Name = "window3"
window3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
window3.CFrame = CFrame.new(58.847, 6.405, -149.052)* CFrame.Angles(-3.996683517471e-008, 1.5707963705063, 0)
window3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
window3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
window3.BrickColor = BrickColor.new("Really black")
window3.Friction = 0.3
window3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_83 = Instance.new("Part", mcar)
part_83.FormFactor = Enum.FormFactor.Plate
part_83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.TopSurface = Enum.SurfaceType.Smooth
part_83.Material = Enum.Material.SmoothPlastic
part_83.Size = Vector3.new(3, 0.8, 9)
part_83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.CFrame = CFrame.new(53.839, 5, -142.154)* CFrame.Angles(-0.013111274689436, 1.5676319599152, 0.013255027122796)
part_83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BrickColor = BrickColor.new("Institutional white")
part_83.Friction = 0.3
part_83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_84 = Instance.new("Part", mcar)
part_84.FormFactor = Enum.FormFactor.Plate
part_84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.TopSurface = Enum.SurfaceType.Smooth
part_84.Reflectance = 0.3
part_84.Material = Enum.Material.SmoothPlastic
part_84.Size = Vector3.new(1, 0.4, 3)
part_84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.CFrame = CFrame.new(58.847, 3.204, -161.151)* CFrame.Angles(5.9475742091308e-006, -0.00045032109483145, -0.00019741691357922)
part_84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BrickColor = BrickColor.new("Grey")
part_84.Friction = 0.3
part_84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_85 = Instance.new("Part", mcar)
part_85.FormFactor = Enum.FormFactor.Plate
part_85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.TopSurface = Enum.SurfaceType.Smooth
part_85.Material = Enum.Material.SmoothPlastic
part_85.Size = Vector3.new(1, 2, 1)
part_85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.CFrame = CFrame.new(58.847, 6.405, -147.052)* CFrame.Angles(3.141592502594, -1.1626889317995e-007, -3.1415927410126)
part_85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BrickColor = bodycolor
part_85.Friction = 0.3
part_85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_86 = Instance.new("Part", mcar)
part_86.FormFactor = Enum.FormFactor.Plate
part_86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.TopSurface = Enum.SurfaceType.Smooth
part_86.Reflectance = 0.3
part_86.Material = Enum.Material.SmoothPlastic
part_86.Size = Vector3.new(1, 1.6, 1)
part_86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.CFrame = CFrame.new(58.846, 2.604, -159.151)* CFrame.Angles(5.872533620277e-006, -0.00045022714766674, -0.00019739411072806)
part_86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BrickColor = BrickColor.new("Grey")
part_86.Friction = 0.3
part_86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_87 = Instance.new("Part", mcar)
part_87.FormFactor = Enum.FormFactor.Plate
part_87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.TopSurface = Enum.SurfaceType.Smooth
part_87.Material = Enum.Material.SmoothPlastic
part_87.Size = Vector3.new(3, 0.4, 11)
part_87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.CFrame = CFrame.new(53.837, 1.6, -138.154)* CFrame.Angles(-0.013204352930188, 1.5676319599152, 0.013348122127354)
part_87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BrickColor = BrickColor.new("Black")
part_87.Friction = 0.3
part_87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_88 = Instance.new("Part", mcar)
part_88.FormFactor = Enum.FormFactor.Plate
part_88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.TopSurface = Enum.SurfaceType.Smooth
part_88.Material = Enum.Material.SmoothPlastic
part_88.Size = Vector3.new(3, 0.4, 9)
part_88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.CFrame = CFrame.new(53.838, 1.6, -141.154)* CFrame.Angles(-0.01320565212518, 1.5676319599152, 0.013349411077797)
part_88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BrickColor = BrickColor.new("Black")
part_88.Friction = 0.3
part_88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_89 = Instance.new("Part", mcar)
part_89.FormFactor = Enum.FormFactor.Plate
part_89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.TopSurface = Enum.SurfaceType.Smooth
part_89.Reflectance = 0.3
part_89.Material = Enum.Material.SmoothPlastic
part_89.Size = Vector3.new(1, 0.8, 2)
part_89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.CFrame = CFrame.new(56.949, 4.605, -164.551)* CFrame.Angles(-3.1349754333496, 1.5676697492599, 0.11481241136789)
part_89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.Friction = 0.3
part_89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_52 = Instance.new("SpecialMesh", part_89)
mesh_52.Scale = Vector3.new(0.118, 0.235, 1.059)
mesh_52.MeshType = Enum.MeshType.Brick

 part_90 = Instance.new("Part", mcar)
part_90.FormFactor = Enum.FormFactor.Plate
part_90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.TopSurface = Enum.SurfaceType.Smooth
part_90.Reflectance = 0.3
part_90.Material = Enum.Material.SmoothPlastic
part_90.Size = Vector3.new(1, 0.4, 5)
part_90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.CFrame = CFrame.new(53.836, 4.099, -137.054)* CFrame.Angles(0.013459369540215, 1.5676319599152, -0.013704515993595)
part_90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BrickColor = BrickColor.new("Grey")
part_90.Friction = 0.3
part_90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_91 = Instance.new("Part", mcar)
part_91.FormFactor = Enum.FormFactor.Plate
part_91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.TopSurface = Enum.SurfaceType.Smooth
part_91.Reflectance = 0.3
part_91.Material = Enum.Material.SmoothPlastic
part_91.Size = Vector3.new(1, 1.2, 1)
part_91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.CFrame = CFrame.new(58.839, 2.401, -143.152)* CFrame.Angles(5.872533620277e-006, -0.00045022714766674, -0.00019739411072806)
part_91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BrickColor = BrickColor.new("Grey")
part_91.Friction = 0.3
part_91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_92 = Instance.new("Part", mcar)
part_92.FormFactor = Enum.FormFactor.Plate
part_92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.TopSurface = Enum.SurfaceType.Smooth
part_92.Reflectance = 0.3
part_92.Material = Enum.Material.SmoothPlastic
part_92.Size = Vector3.new(1, 0.4, 7)
part_92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.CFrame = CFrame.new(58.838, 3.201, -140.152)* CFrame.Angles(5.872533620277e-006, -0.00045022714766674, -0.00019739411072806)
part_92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BrickColor = BrickColor.new("Grey")
part_92.Friction = 0.3
part_92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_93 = Instance.new("Part", mcar)
part_93.FormFactor = Enum.FormFactor.Plate
part_93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.TopSurface = Enum.SurfaceType.Smooth
part_93.Material = Enum.Material.SmoothPlastic
part_93.Size = Vector3.new(3, 1.2, 1)
part_93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.CFrame = CFrame.new(48.837, 2.4, -138.156)* CFrame.Angles(-0.013111274689436, 1.5676319599152, 0.013255027122796)
part_93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BrickColor = bodycolor
part_93.Friction = 0.3
part_93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_94 = Instance.new("Part", mcar)
part_94.FormFactor = Enum.FormFactor.Plate
part_94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.TopSurface = Enum.SurfaceType.Smooth
part_94.Material = Enum.Material.SmoothPlastic
part_94.Size = Vector3.new(1, 3.6, 1)
part_94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.CFrame = CFrame.new(58.84, 3.601, -144.153)* CFrame.Angles(-0.0056147389113903, -1.5676697492599, -0.623783826828)
part_94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BrickColor = bodycolor
part_94.Friction = 0.3
part_94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 hood = Instance.new("Part", mcar)
hood.FormFactor = Enum.FormFactor.Plate
hood.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hood.TopSurface = Enum.SurfaceType.Smooth
hood.Material = Enum.Material.SmoothPlastic
hood.Size = Vector3.new(11, 0.4, 13)
hood.Name = "hood"
hood.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hood.CFrame = CFrame.new(53.845, 7.605, -150.05)* CFrame.Angles(-3.1415011882782, 8.0992285802495e-006, -3.1415579319)
hood.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hood.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hood.BrickColor = BrickColor.new("Institutional white")
hood.Friction = 0.3
hood.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_53 = Instance.new("SpecialMesh", hood)
mesh_53.MeshType = Enum.MeshType.Wedge

 part_95 = Instance.new("Part", mcar)
part_95.FormFactor = Enum.FormFactor.Plate
part_95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.TopSurface = Enum.SurfaceType.Smooth
part_95.Material = Enum.Material.SmoothPlastic
part_95.Size = Vector3.new(6, 0.8, 1)
part_95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.CFrame = CFrame.new(58.846, 4.604, -161.651)* CFrame.Angles(0.24889597296715, 1.5676131248474, -0.24860224127769)
part_95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BrickColor = bodycolor
part_95.Friction = 0.3
part_95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_96 = Instance.new("Part", mcar)
part_96.FormFactor = Enum.FormFactor.Plate
part_96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.TopSurface = Enum.SurfaceType.Smooth
part_96.Reflectance = 0.3
part_96.Material = Enum.Material.SmoothPlastic
part_96.Size = Vector3.new(1, 0.4, 2)
part_96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.CFrame = CFrame.new(59.349, 2.605, -163.656)* CFrame.Angles(3.141592502594, 6.5192580223083e-009, 0.00021353384363465)
part_96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.Friction = 0.3
part_96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_54 = Instance.new("SpecialMesh", part_96)
mesh_54.Scale = Vector3.new(0.4, 0.4, 0.4)
mesh_54.MeshId = "http://www.roblox.com/asset/?id=12221344"
mesh_54.MeshType = Enum.MeshType.FileMesh

 part_97 = Instance.new("Part", mcar)
part_97.FormFactor = Enum.FormFactor.Plate
part_97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.TopSurface = Enum.SurfaceType.Smooth
part_97.Material = Enum.Material.SmoothPlastic
part_97.Size = Vector3.new(1, 6.8, 1)
part_97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.CFrame = CFrame.new(58.848, 5.105, -161.651)* CFrame.Angles(1.570796251297, -4.1880948487005e-008, 6.500397553566e-009)
part_97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BrickColor = bodycolor
part_97.Friction = 0.3
part_97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_55 = Instance.new("CylinderMesh", part_97)

 rearbumper = Instance.new("Part", mcar)
rearbumper.FormFactor = Enum.FormFactor.Plate
rearbumper.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rearbumper.TopSurface = Enum.SurfaceType.Smooth
rearbumper.Reflectance = 0.3
rearbumper.Material = Enum.Material.SmoothPlastic
rearbumper.Size = Vector3.new(1, 0.4, 11)
rearbumper.Name = "rearbumper"
rearbumper.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rearbumper.CFrame = CFrame.new(53.836, 1.899, -136.452)* CFrame.Angles(3.0826721191406, 1.5676697492599, 1.64488697052)
rearbumper.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rearbumper.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rearbumper.Friction = 0.3
rearbumper.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 trunk = Instance.new("Part", mcar)
trunk.FormFactor = Enum.FormFactor.Plate
trunk.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
trunk.TopSurface = Enum.SurfaceType.Smooth
trunk.Material = Enum.Material.SmoothPlastic
trunk.Size = Vector3.new(9, 0.8, 4)
trunk.Name = "trunk"
trunk.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
trunk.CFrame = CFrame.new(53.838, 5, -138.653)* CFrame.Angles(-3.1415860652924, 6.1592681959155e-006, 3.1415603160858)
trunk.RightSurface = Enum.SurfaceType.SmoothNoOutlines
trunk.BackSurface = Enum.SurfaceType.SmoothNoOutlines
trunk.BrickColor = BrickColor.new("Institutional white")
trunk.Friction = 0.3
trunk.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_56 = Instance.new("SpecialMesh", trunk)
mesh_56.MeshType = Enum.MeshType.Wedge

 frontlight1 = Instance.new("Part", mcar)
frontlight1.FormFactor = Enum.FormFactor.Plate
frontlight1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight1.Transparency = 0.2
frontlight1.TopSurface = Enum.SurfaceType.Smooth
frontlight1.Material = Enum.Material.SmoothPlastic
frontlight1.Size = Vector3.new(1, 0.4, 1)
frontlight1.Name = "frontlight1"
frontlight1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight1.CFrame = CFrame.new(58.848, 5.105, -165.252)* CFrame.Angles(-1.5708878040314, 6.310259050224e-005, 3.141140460968)
frontlight1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight1.BrickColor = BrickColor.new("Mid gray")
frontlight1.Friction = 0.3
frontlight1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_57 = Instance.new("CylinderMesh", frontlight1)

 headlight_2 = Instance.new("SpotLight", frontlight1)
headlight_2.Enabled = false
headlight_2.Face = Enum.NormalId.Left
headlight_2.Range = 15
headlight_2.Name = "headlight"
headlight_2.Angle = 180
headlight_2.Brightness = 20

 part_98 = Instance.new("Part", mcar)
part_98.FormFactor = Enum.FormFactor.Plate
part_98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.TopSurface = Enum.SurfaceType.Smooth
part_98.Reflectance = 0.3
part_98.Material = Enum.Material.SmoothPlastic
part_98.Size = Vector3.new(1, 1.2, 1)
part_98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.CFrame = CFrame.new(48.836, 1.799, -136.352)* CFrame.Angles(-1.9569604603475e-007, 1.7488127923571e-007, 3.141526222229)
part_98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.Friction = 0.3
part_98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_58 = Instance.new("CylinderMesh", part_98)

 part_99 = Instance.new("Part", mcar)
part_99.FormFactor = Enum.FormFactor.Plate
part_99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.TopSurface = Enum.SurfaceType.Smooth
part_99.Reflectance = 0.3
part_99.Material = Enum.Material.SmoothPlastic
part_99.Size = Vector3.new(2, 1.2, 1)
part_99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.CFrame = CFrame.new(58.848, 3.205, -163.651)* CFrame.Angles(3.1281673908234, -1.567594408989, 3.1280233860016)
part_99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BrickColor = BrickColor.new("Grey")
part_99.Friction = 0.3
part_99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 frontlight3 = Instance.new("Part", mcar)
frontlight3.FormFactor = Enum.FormFactor.Plate
frontlight3.CanCollide = false
frontlight3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight3.Transparency = 0.2
frontlight3.TopSurface = Enum.SurfaceType.Smooth
frontlight3.Material = Enum.Material.SmoothPlastic
frontlight3.Size = Vector3.new(1, 0.4, 1)
frontlight3.Name = "frontlight3"
frontlight3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight3.CFrame = CFrame.new(58.849, 3.105, -164.851)* CFrame.Angles(-3.0908482074738, -1.5676131248474, -1.5200179815292)
frontlight3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
frontlight3.BrickColor = BrickColor.new("Bright orange")
frontlight3.Friction = 0.3
frontlight3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_59 = Instance.new("CylinderMesh", frontlight3)
mesh_59.Offset = Vector3.new(0, -0.3, 0)
mesh_59.Scale = Vector3.new(0.6, 1, 0.6)

 regularlight_2 = Instance.new("SpotLight", frontlight3)
regularlight_2.Enabled = false
regularlight_2.Color = Color3.new(1, 0.333333, 0)
regularlight_2.Face = Enum.NormalId.Right
regularlight_2.Range = 10
regularlight_2.Name = "regularlight"
regularlight_2.Angle = 180
regularlight_2.Brightness = 20

 part_100 = Instance.new("Part", mcar)
part_100.FormFactor = Enum.FormFactor.Plate
part_100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.TopSurface = Enum.SurfaceType.Smooth
part_100.Reflectance = 0.3
part_100.Material = Enum.Material.SmoothPlastic
part_100.Size = Vector3.new(1, 0.4, 2)
part_100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.CFrame = CFrame.new(59.349, 3.405, -163.656)* CFrame.Angles(3.141592502594, 6.5192580223083e-009, 0.00021353384363465)
part_100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.Friction = 0.3
part_100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_60 = Instance.new("SpecialMesh", part_100)
mesh_60.Scale = Vector3.new(0.4, 0.4, 0.4)
mesh_60.MeshId = "http://www.roblox.com/asset/?id=12221344"
mesh_60.MeshType = Enum.MeshType.FileMesh

 part_101 = Instance.new("Part", mcar)
part_101.FormFactor = Enum.FormFactor.Plate
part_101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.TopSurface = Enum.SurfaceType.Smooth
part_101.Material = Enum.Material.SmoothPlastic
part_101.Size = Vector3.new(7, 2, 1)
part_101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.CFrame = CFrame.new(48.84, 4.4, -140.156)* CFrame.Angles(0.24961392581463, 1.5653810501099, -0.24859754741192)
part_101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BrickColor = bodycolor
part_101.Friction = 0.3
part_101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_102 = Instance.new("Part", mcar)
part_102.FormFactor = Enum.FormFactor.Plate
part_102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.TopSurface = Enum.SurfaceType.Smooth
part_102.Material = Enum.Material.SmoothPlastic
part_102.Size = Vector3.new(1, 0.4, 6)
part_102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.CFrame = CFrame.new(48.84, 5.6, -138.856)* CFrame.Angles(-1.9568149411953e-007, 8.7458829511888e-008, 1.1233827535762e-005)
part_102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BrickColor = bodycolor
part_102.Friction = 0.3
part_102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_61 = Instance.new("SpecialMesh", part_102)
mesh_61.MeshType = Enum.MeshType.Wedge

 part_103 = Instance.new("Part", mcar)
part_103.FormFactor = Enum.FormFactor.Plate
part_103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.TopSurface = Enum.SurfaceType.Smooth
part_103.Reflectance = 0.3
part_103.Material = Enum.Material.SmoothPlastic
part_103.Size = Vector3.new(2, 0.4, 1)
part_103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.CFrame = CFrame.new(58.848, 4.005, -163.651)* CFrame.Angles(3.1281673908234, -1.567594408989, 3.1280233860016)
part_103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.BrickColor = BrickColor.new("Grey")
part_103.Friction = 0.3
part_103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_104 = Instance.new("Part", mcar)
part_104.FormFactor = Enum.FormFactor.Plate
part_104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.TopSurface = Enum.SurfaceType.Smooth
part_104.Reflectance = 0.3
part_104.Material = Enum.Material.SmoothPlastic
part_104.Size = Vector3.new(1, 0.4, 8)
part_104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.CFrame = CFrame.new(48.741, 4.7, -140.756)* CFrame.Angles(4.4527910176839e-006, -0.00034513813443482, -0.00020811511785723)
part_104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BrickColor = BrickColor.new("Grey")
part_104.Friction = 0.3
part_104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_105 = Instance.new("Part", mcar)
part_105.FormFactor = Enum.FormFactor.Plate
part_105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.TopSurface = Enum.SurfaceType.Smooth
part_105.Reflectance = 0.3
part_105.Material = Enum.Material.SmoothPlastic
part_105.Size = Vector3.new(1, 0.4, 2)
part_105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.CFrame = CFrame.new(59.349, 3.005, -163.656)* CFrame.Angles(3.141592502594, 6.4901541918516e-009, 0.00021353385818657)
part_105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.Friction = 0.3
part_105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_62 = Instance.new("SpecialMesh", part_105)
mesh_62.Scale = Vector3.new(0.4, 0.4, 0.4)
mesh_62.MeshId = "http://www.roblox.com/asset/?id=12221344"
mesh_62.MeshType = Enum.MeshType.FileMesh

 part_106 = Instance.new("Part", mcar)
part_106.FormFactor = Enum.FormFactor.Plate
part_106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.TopSurface = Enum.SurfaceType.Smooth
part_106.Reflectance = 0.3
part_106.Material = Enum.Material.SmoothPlastic
part_106.Size = Vector3.new(1, 1.2, 1)
part_106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.CFrame = CFrame.new(58.836, 1.799, -136.352)* CFrame.Angles(-1.9569604603475e-007, 1.74880369741e-007, 3.1415884494781)
part_106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.Friction = 0.3
part_106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_63 = Instance.new("CylinderMesh", part_106)

 backlight1 = Instance.new("Part", mcar)
backlight1.FormFactor = Enum.FormFactor.Plate
backlight1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
backlight1.Transparency = 0.2
backlight1.TopSurface = Enum.SurfaceType.Smooth
backlight1.Material = Enum.Material.SmoothPlastic
backlight1.Size = Vector3.new(1, 0.8, 2)
backlight1.Name = "backlight1"
backlight1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
backlight1.CFrame = CFrame.new(58.838, 4.4, -136.252)* CFrame.Angles(-1.5707968473434, -1.1254653145443e-005, -3.141592502594)
backlight1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
backlight1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
backlight1.BrickColor = BrickColor.new("Bright red")
backlight1.Friction = 0.3
backlight1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_64 = Instance.new("SpecialMesh", backlight1)
mesh_64.MeshType = Enum.MeshType.Wedge

 rearlight = Instance.new("SpotLight", backlight1)
rearlight.Enabled = false
rearlight.Color = Color3.new(1, 0, 0)
rearlight.Face = Enum.NormalId.Back
rearlight.Range = 10
rearlight.Name = "rearlight"
rearlight.Angle = 180
rearlight.Brightness = 20

 part_107 = Instance.new("Part", mcar)
part_107.FormFactor = Enum.FormFactor.Plate
part_107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.Transparency = 0.5
part_107.TopSurface = Enum.SurfaceType.Smooth
part_107.Reflectance = 0.5
part_107.Material = Enum.Material.SmoothPlastic
part_107.Size = Vector3.new(11, 2, 1)
part_107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.CFrame = CFrame.new(53.847, 6.406, -143.051)* CFrame.Angles(3.1415436267853, -0.00021385250147432, -3.1415457725525)
part_107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BrickColor = BrickColor.new("White")
part_107.Friction = 0.3
part_107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_65 = Instance.new("SpecialMesh", part_107)
mesh_65.MeshType = Enum.MeshType.Wedge

 part_108 = Instance.new("Part", mcar)
part_108.FormFactor = Enum.FormFactor.Plate
part_108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.TopSurface = Enum.SurfaceType.Smooth
part_108.Material = Enum.Material.SmoothPlastic
part_108.Size = Vector3.new(7, 2, 1)
part_108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.CFrame = CFrame.new(58.837, 4.4, -140.152)* CFrame.Angles(0.24961392581463, 1.5653810501099, -0.24859754741192)
part_108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BrickColor = bodycolor
part_108.Friction = 0.3
part_108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_109 = Instance.new("Part", mcar)
part_109.FormFactor = Enum.FormFactor.Plate
part_109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.TopSurface = Enum.SurfaceType.Smooth
part_109.Material = Enum.Material.SmoothPlastic
part_109.Size = Vector3.new(1, 0.4, 6)
part_109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.CFrame = CFrame.new(58.84, 5.6, -138.852)* CFrame.Angles(-0.0031524042133242, -0.0030616919975728, 0.01267381105572)
part_109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BrickColor = bodycolor
part_109.Friction = 0.3
part_109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_66 = Instance.new("SpecialMesh", part_109)
mesh_66.MeshType = Enum.MeshType.Wedge

 part_110 = Instance.new("Part", mcar)
part_110.FormFactor = Enum.FormFactor.Plate
part_110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.TopSurface = Enum.SurfaceType.Smooth
part_110.Reflectance = 0.3
part_110.Material = Enum.Material.SmoothPlastic
part_110.Size = Vector3.new(1, 0.4, 1)
part_110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.CFrame = CFrame.new(48.836, 2.899, -136.452)* CFrame.Angles(1.5707026720047, -2.4369450329687e-005, -6.0501420193759e-006)
part_110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.Friction = 0.3
part_110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_67 = Instance.new("SpecialMesh", part_110)
mesh_67.MeshType = Enum.MeshType.Wedge

 backlight2 = Instance.new("Part", mcar)
backlight2.FormFactor = Enum.FormFactor.Plate
backlight2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
backlight2.Transparency = 0.2
backlight2.TopSurface = Enum.SurfaceType.Smooth
backlight2.Material = Enum.Material.SmoothPlastic
backlight2.Size = Vector3.new(1, 0.8, 2)
backlight2.Name = "backlight2"
backlight2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
backlight2.CFrame = CFrame.new(48.84, 4.4, -136.256)* CFrame.Angles(-1.5707968473434, -1.1254653145443e-005, -3.141592502594)
backlight2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
backlight2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
backlight2.BrickColor = BrickColor.new("Bright red")
backlight2.Friction = 0.3
backlight2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_68 = Instance.new("SpecialMesh", backlight2)
mesh_68.MeshType = Enum.MeshType.Wedge

 rearlight_2 = Instance.new("SpotLight", backlight2)
rearlight_2.Enabled = false
rearlight_2.Color = Color3.new(1, 0, 0)
rearlight_2.Face = Enum.NormalId.Back
rearlight_2.Range = 10
rearlight_2.Name = "rearlight"
rearlight_2.Angle = 180
rearlight_2.Brightness = 20

 part_111 = Instance.new("Part", mcar)
part_111.FormFactor = Enum.FormFactor.Plate
part_111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.TopSurface = Enum.SurfaceType.Smooth
part_111.Reflectance = 0.3
part_111.Material = Enum.Material.SmoothPlastic
part_111.Size = Vector3.new(1, 0.4, 8)
part_111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.CFrame = CFrame.new(58.941, 4.6, -140.757)* CFrame.Angles(4.4527910176839e-006, -0.00034513813443482, -0.00020811511785723)
part_111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BrickColor = BrickColor.new("Grey")
part_111.Friction = 0.3
part_111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_112 = Instance.new("Part", mcar)
part_112.FormFactor = Enum.FormFactor.Plate
part_112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.TopSurface = Enum.SurfaceType.Smooth
part_112.Reflectance = 0.3
part_112.Material = Enum.Material.SmoothPlastic
part_112.Size = Vector3.new(1, 0.4, 1)
part_112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.CFrame = CFrame.new(58.836, 2.899, -136.452)* CFrame.Angles(1.5707026720047, -2.4369450329687e-005, -6.0501420193759e-006)
part_112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.Friction = 0.3
part_112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_69 = Instance.new("SpecialMesh", part_112)
mesh_69.MeshType = Enum.MeshType.Wedge

 part_113 = Instance.new("Part", mcar)
part_113.FormFactor = Enum.FormFactor.Plate
part_113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.TopSurface = Enum.SurfaceType.Smooth
part_113.Material = Enum.Material.SmoothPlastic
part_113.Size = Vector3.new(3, 1.2, 1)
part_113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.CFrame = CFrame.new(58.838, 2.4, -138.152)* CFrame.Angles(0.24924147129059, 1.5676697492599, -0.24892929196358)
part_113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BrickColor = bodycolor
part_113.Friction = 0.3
part_113.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 frontaxlepos = Instance.new("Part", mcar)
frontaxlepos.FormFactor = Enum.FormFactor.Custom
frontaxlepos.CanCollide = false
frontaxlepos.Elasticity = 0
frontaxlepos.Transparency = 1
frontaxlepos.TopSurface = Enum.SurfaceType.Smooth
frontaxlepos.Size = Vector3.new(1.8, 11, 0.2)
frontaxlepos.Name = "frontaxlepos"
frontaxlepos.CFrame = CFrame.new(53.8, 1.705, -161.2)* CFrame.Angles(0, 0, 1.5707963705063)
frontaxlepos.Friction = 0.3
frontaxlepos.BottomSurface = Enum.SurfaceType.Smooth

 mesh_70 = Instance.new("CylinderMesh", frontaxlepos)

 part_114 = Instance.new("Part", mcar)
part_114.FormFactor = Enum.FormFactor.Plate
part_114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.TopSurface = Enum.SurfaceType.Smooth
part_114.Reflectance = 0.3
part_114.Material = Enum.Material.SmoothPlastic
part_114.Size = Vector3.new(1, 0.4, 7.213)
part_114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.CFrame = CFrame.new(48.743, 4.506, -148.05)* CFrame.Angles(0.00034509919350967, 2.6231919036945e-006, -9.5047390402669e-008)
part_114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BrickColor = BrickColor.new("Grey")
part_114.Friction = 0.3
part_114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 door2 = Instance.new("Model", mcar)
door2.Name = "Door2"

 part_115 = Instance.new("Part", door2)
part_115.FormFactor = Enum.FormFactor.Plate
part_115.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.TopSurface = Enum.SurfaceType.Smooth
part_115.Material = Enum.Material.SmoothPlastic
part_115.Size = Vector3.new(1, 2, 1)
part_115.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.CFrame = CFrame.new(58.847, 6.405, -151.052)* CFrame.Angles(3.141592502594, -1.1626889317995e-007, -3.1415927410126)
part_115.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BrickColor = bodycolor
part_115.Friction = 0.3
part_115.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_116 = Instance.new("Part", door2)
part_116.FormFactor = Enum.FormFactor.Plate
part_116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.TopSurface = Enum.SurfaceType.Smooth
part_116.Material = Enum.Material.SmoothPlastic
part_116.Size = Vector3.new(1, 3.6, 5)
part_116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.CFrame = CFrame.new(58.844, 3.603, -154.153)* CFrame.Angles(3.141592502594, -2.2057338355808e-007, -3.1415927410126)
part_116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.BrickColor = bodycolor
part_116.Friction = 0.3
part_116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.Name = "doormain"

 window5 = Instance.new("Part", door2)
window5.FormFactor = Enum.FormFactor.Plate
window5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
window5.Transparency = 0.5
window5.TopSurface = Enum.SurfaceType.Smooth
window5.Reflectance = 0.5
window5.Material = Enum.Material.SmoothPlastic
window5.Size = Vector3.new(4, 2, 1)
window5.Name = "window5"
window5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
window5.CFrame = CFrame.new(58.847, 6.405, -153.552)* CFrame.Angles(-9.2511669208761e-005, 1.5707963705063, 0)
window5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
window5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
window5.BrickColor = BrickColor.new("Really black")
window5.Friction = 0.3
window5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_117 = Instance.new("Part", door2)
part_117.FormFactor = Enum.FormFactor.Plate
part_117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.TopSurface = Enum.SurfaceType.Smooth
part_117.Material = Enum.Material.SmoothPlastic
part_117.Size = Vector3.new(1, 2, 1)
part_117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.CFrame = CFrame.new(58.848, 6.405, -156.052)* CFrame.Angles(3.141592502594, -2.250999386888e-007, 3.1415927410126)
part_117.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.BrickColor = bodycolor
part_117.Friction = 0.3
part_117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_118 = Instance.new("Part", mcar)
part_118.FormFactor = Enum.FormFactor.Plate
part_118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.TopSurface = Enum.SurfaceType.Smooth
part_118.Reflectance = 0.3
part_118.Material = Enum.Material.SmoothPlastic
part_118.Size = Vector3.new(1, 0.4, 7.163)
part_118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.CFrame = CFrame.new(58.943, 4.505, -148.075)* CFrame.Angles(-1.9569604603475e-007, 8.7458829511888e-008, -2.6312985937693e-005)
part_118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.BrickColor = BrickColor.new("Grey")
part_118.Friction = 0.3
part_118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_119 = Instance.new("Part", mcar)
part_119.FormFactor = Enum.FormFactor.Plate
part_119.TopSurface = Enum.SurfaceType.Smooth
part_119.Material = Enum.Material.Concrete
part_119.Size = Vector3.new(1.827, 1.462, 0.914)
part_119.CFrame = CFrame.new(52.57, 2.912, -153.683)* CFrame.Angles(0, 1.5707963705063, 0)
part_119.BrickColor = BrickColor.new("Dirt brown")
part_119.Friction = 0.3
part_119.BottomSurface = Enum.SurfaceType.Smooth

 part_120 = Instance.new("Part", mcar)
part_120.FormFactor = Enum.FormFactor.Plate
part_120.TopSurface = Enum.SurfaceType.Smooth
part_120.Material = Enum.Material.Concrete
part_120.Size = Vector3.new(0.914, 1.462, 0.914)
part_120.CFrame = CFrame.new(52.57, 2.912, -155.053)
part_120.BrickColor = BrickColor.new("Dirt brown")
part_120.Friction = 0.3
part_120.BottomSurface = Enum.SurfaceType.Smooth

 mesh_71 = Instance.new("SpecialMesh", part_120)
mesh_71.MeshType = Enum.MeshType.Wedge

 part_121 = Instance.new("Part", mcar)
part_121.FormFactor = Enum.FormFactor.Plate
part_121.TopSurface = Enum.SurfaceType.Smooth
part_121.Material = Enum.Material.Concrete
part_121.Size = Vector3.new(1.827, 0.365, 0.914)
part_121.CFrame = CFrame.new(51.2, 2.364, -155.053)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_121.BrickColor = BrickColor.new("Dirt brown")
part_121.Friction = 0.3
part_121.BottomSurface = Enum.SurfaceType.Smooth

 part_122 = Instance.new("Part", mcar)
part_122.FormFactor = Enum.FormFactor.Plate
part_122.TopSurface = Enum.SurfaceType.Smooth
part_122.Size = Vector3.new(2.741, 0.365, 3.654)
part_122.CFrame = CFrame.new(51.2, 1.999, -154.139)* CFrame.Angles(-0, 1.5707963705063, 0)
part_122.BrickColor = BrickColor.new("Dirt brown")
part_122.Friction = 0.3
part_122.BottomSurface = Enum.SurfaceType.Smooth

 part_123 = Instance.new("Part", mcar)
part_123.FormFactor = Enum.FormFactor.Plate
part_123.TopSurface = Enum.SurfaceType.Smooth
part_123.Material = Enum.Material.Concrete
part_123.Size = Vector3.new(1.827, 1.462, 0.914)
part_123.CFrame = CFrame.new(49.83, 2.912, -153.683)* CFrame.Angles(0, 1.5707963705063, 0)
part_123.BrickColor = BrickColor.new("Dirt brown")
part_123.Friction = 0.3
part_123.BottomSurface = Enum.SurfaceType.Smooth

 part_124 = Instance.new("Part", mcar)
part_124.FormFactor = Enum.FormFactor.Plate
part_124.TopSurface = Enum.SurfaceType.Smooth
part_124.Material = Enum.Material.Concrete
part_124.Size = Vector3.new(0.914, 1.096, 1.827)
part_124.CFrame = CFrame.new(57.27, 2.719, -147.121)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_124.BrickColor = BrickColor.new("Dirt brown")
part_124.Friction = 0.3
part_124.BottomSurface = Enum.SurfaceType.Smooth

 mesh_72 = Instance.new("SpecialMesh", part_124)
mesh_72.MeshType = Enum.MeshType.Wedge

 part_125 = Instance.new("Part", mcar)
part_125.FormFactor = Enum.FormFactor.Plate
part_125.TopSurface = Enum.SurfaceType.Smooth
part_125.Material = Enum.Material.Concrete
part_125.Size = Vector3.new(0.914, 2.558, 0.914)
part_125.CFrame = CFrame.new(57.27, 4.911, -147.212)
part_125.BrickColor = BrickColor.new("Dirt brown")
part_125.Friction = 0.3
part_125.BottomSurface = Enum.SurfaceType.Smooth

 mesh_73 = Instance.new("SpecialMesh", part_125)
mesh_73.MeshType = Enum.MeshType.Wedge

 part_126 = Instance.new("Part", mcar)
part_126.FormFactor = Enum.FormFactor.Plate
part_126.TopSurface = Enum.SurfaceType.Smooth
part_126.Material = Enum.Material.Concrete
part_126.Size = Vector3.new(1.827, 1.096, 1.827)
part_126.CFrame = CFrame.new(55.9, 2.719, -147.121)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_126.BrickColor = BrickColor.new("Dirt brown")
part_126.Friction = 0.3
part_126.BottomSurface = Enum.SurfaceType.Smooth

 mesh_74 = Instance.new("SpecialMesh", part_126)
mesh_74.MeshType = Enum.MeshType.Wedge


 part_127 = Instance.new("Part", mcar)
part_127.FormFactor = Enum.FormFactor.Plate
part_127.TopSurface = Enum.SurfaceType.Smooth
part_127.Material = Enum.Material.Concrete
part_127.Size = Vector3.new(1.827, 0.365, 0.914)
part_127.CFrame = CFrame.new(55.9, 2.353, -149.953)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_127.BrickColor = BrickColor.new("Dirt brown")
part_127.Friction = 0.3
part_127.BottomSurface = Enum.SurfaceType.Smooth

 part_128 = Instance.new("Part", mcar)
part_128.FormFactor = Enum.FormFactor.Plate
part_128.TopSurface = Enum.SurfaceType.Smooth
part_128.Material = Enum.Material.Concrete
part_128.Size = Vector3.new(0.914, 1.096, 1.827)
part_128.CFrame = CFrame.new(54.53, 2.719, -147.121)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_128.BrickColor = BrickColor.new("Dirt brown")
part_128.Friction = 0.3
part_128.BottomSurface = Enum.SurfaceType.Smooth

 mesh_75 = Instance.new("SpecialMesh", part_128)
mesh_75.MeshType = Enum.MeshType.Wedge

 part_129 = Instance.new("Part", mcar)
part_129.FormFactor = Enum.FormFactor.Plate
part_129.TopSurface = Enum.SurfaceType.Smooth
part_129.Material = Enum.Material.Concrete
part_129.Size = Vector3.new(3.654, 0.365, 2.741)
part_129.CFrame = CFrame.new(55.9, 5.003, -146.573)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_129.BrickColor = BrickColor.new("Dirt brown")
part_129.Friction = 0.3
part_129.BottomSurface = Enum.SurfaceType.Smooth

 part_130 = Instance.new("Part", mcar)
part_130.FormFactor = Enum.FormFactor.Plate
part_130.TopSurface = Enum.SurfaceType.Smooth
part_130.Material = Enum.Material.Concrete
part_130.Size = Vector3.new(1.827, 1.462, 0.914)
part_130.CFrame = CFrame.new(57.27, 2.901, -148.583)* CFrame.Angles(0, 1.5707963705063, 0)
part_130.BrickColor = BrickColor.new("Dirt brown")
part_130.Friction = 0.3
part_130.BottomSurface = Enum.SurfaceType.Smooth

 part_131 = Instance.new("Part", mcar)
part_131.FormFactor = Enum.FormFactor.Plate
part_131.TopSurface = Enum.SurfaceType.Smooth
part_131.Material = Enum.Material.Concrete
part_131.Size = Vector3.new(1.827, 2.558, 0.914)
part_131.CFrame = CFrame.new(55.9, 4.911, -147.212)
part_131.BrickColor = BrickColor.new("Dirt brown")
part_131.Friction = 0.3
part_131.BottomSurface = Enum.SurfaceType.Smooth

 mesh_76 = Instance.new("SpecialMesh", part_131)
mesh_76.MeshType = Enum.MeshType.Wedge

 part_132 = Instance.new("Part", mcar)
part_132.FormFactor = Enum.FormFactor.Plate
part_132.TopSurface = Enum.SurfaceType.Smooth
part_132.Material = Enum.Material.Concrete
part_132.Size = Vector3.new(0.914, 1.462, 0.914)
part_132.CFrame = CFrame.new(57.27, 2.901, -149.953)
part_132.BrickColor = BrickColor.new("Dirt brown")
part_132.Friction = 0.3
part_132.BottomSurface = Enum.SurfaceType.Smooth

 mesh_77 = Instance.new("SpecialMesh", part_132)
mesh_77.MeshType = Enum.MeshType.Wedge

 part_133 = Instance.new("Part", mcar)
part_133.FormFactor = Enum.FormFactor.Plate
part_133.TopSurface = Enum.SurfaceType.Smooth
part_133.Material = Enum.Material.Concrete
part_133.Size = Vector3.new(0.914, 2.558, 0.914)
part_133.CFrame = CFrame.new(54.53, 4.911, -147.212)
part_133.BrickColor = BrickColor.new("Dirt brown")
part_133.Friction = 0.3
part_133.BottomSurface = Enum.SurfaceType.Smooth

 mesh_78 = Instance.new("SpecialMesh", part_133)
mesh_78.MeshType = Enum.MeshType.Wedge

 part_134 = Instance.new("Part", mcar)
part_134.FormFactor = Enum.FormFactor.Plate
part_134.TopSurface = Enum.SurfaceType.Smooth
part_134.Size = Vector3.new(2.741, 0.365, 3.654)
part_134.CFrame = CFrame.new(55.9, 1.988, -149.039)* CFrame.Angles(0, 1.5707963705063, 0)
part_134.BrickColor = BrickColor.new("Dirt brown")
part_134.Friction = 0.3
part_134.BottomSurface = Enum.SurfaceType.Smooth

 part_135 = Instance.new("Part", mcar)
part_135.FormFactor = Enum.FormFactor.Plate
part_135.TopSurface = Enum.SurfaceType.Smooth
part_135.Material = Enum.Material.Concrete
part_135.Size = Vector3.new(1.827, 1.462, 0.914)
part_135.CFrame = CFrame.new(54.53, 2.901, -148.583)* CFrame.Angles(0, 1.5707963705063, 0)
part_135.BrickColor = BrickColor.new("Dirt brown")
part_135.Friction = 0.3
part_135.BottomSurface = Enum.SurfaceType.Smooth

 part_136 = Instance.new("Part", mcar)
part_136.FormFactor = Enum.FormFactor.Plate
part_136.TopSurface = Enum.SurfaceType.Smooth
part_136.Material = Enum.Material.Concrete
part_136.Size = Vector3.new(0.914, 1.462, 0.914)
part_136.CFrame = CFrame.new(54.53, 2.901, -149.953)
part_136.BrickColor = BrickColor.new("Dirt brown")
part_136.Friction = 0.3
part_136.BottomSurface = Enum.SurfaceType.Smooth

 mesh_79 = Instance.new("SpecialMesh", part_136)
mesh_79.MeshType = Enum.MeshType.Wedge

 seat = Instance.new("Seat", mcar)
seat.Friction = 0.3
seat.LeftSurface = Enum.SurfaceType.Weld
seat.TopSurface = Enum.SurfaceType.Smooth
seat.FormFactor = Enum.FormFactor.Plate
seat.BackSurface = Enum.SurfaceType.Weld
seat.BrickColor = BrickColor.new("Dirt brown")
seat.Material = Enum.Material.Concrete
seat.Size = Vector3.new(1.827, 0.365, 1.827)
seat.RightSurface = Enum.SurfaceType.Weld
seat.CFrame = CFrame.new(55.9, 2.353, -148.583)
seat.FrontSurface = Enum.SurfaceType.Weld

 part_137 = Instance.new("Part", mcar)
part_137.FormFactor = Enum.FormFactor.Plate
part_137.TopSurface = Enum.SurfaceType.Smooth
part_137.Material = Enum.Material.Concrete
part_137.Size = Vector3.new(0.914, 1.462, 0.914)
part_137.CFrame = CFrame.new(49.83, 2.912, -155.053)
part_137.BrickColor = BrickColor.new("Dirt brown")
part_137.Friction = 0.3
part_137.BottomSurface = Enum.SurfaceType.Smooth

 mesh_80 = Instance.new("SpecialMesh", part_137)
mesh_80.MeshType = Enum.MeshType.Wedge

 part_138 = Instance.new("Part", mcar)
part_138.FormFactor = Enum.FormFactor.Plate
part_138.TopSurface = Enum.SurfaceType.Smooth
part_138.Material = Enum.Material.Concrete
part_138.Size = Vector3.new(1.827, 2.558, 0.914)
part_138.CFrame = CFrame.new(51.2, 4.922, -152.312)
part_138.BrickColor = BrickColor.new("Dirt brown")
part_138.Friction = 0.3
part_138.BottomSurface = Enum.SurfaceType.Smooth

 mesh_81 = Instance.new("SpecialMesh", part_138)
mesh_81.MeshType = Enum.MeshType.Wedge

 part_139 = Instance.new("Part", mcar)
part_139.FormFactor = Enum.FormFactor.Plate
part_139.TopSurface = Enum.SurfaceType.Smooth
part_139.Material = Enum.Material.Concrete
part_139.Size = Vector3.new(0.914, 1.096, 1.827)
part_139.CFrame = CFrame.new(52.57, 2.73, -152.221)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_139.BrickColor = BrickColor.new("Dirt brown")
part_139.Friction = 0.3
part_139.BottomSurface = Enum.SurfaceType.Smooth

 mesh_82 = Instance.new("SpecialMesh", part_139)
mesh_82.MeshType = Enum.MeshType.Wedge

 part_140 = Instance.new("Part", mcar)
part_140.FormFactor = Enum.FormFactor.Plate
part_140.TopSurface = Enum.SurfaceType.Smooth
part_140.Material = Enum.Material.Concrete
part_140.Size = Vector3.new(0.914, 2.558, 0.914)
part_140.CFrame = CFrame.new(52.57, 4.922, -152.312)
part_140.BrickColor = BrickColor.new("Dirt brown")
part_140.Friction = 0.3
part_140.BottomSurface = Enum.SurfaceType.Smooth

 mesh_83 = Instance.new("SpecialMesh", part_140)
mesh_83.MeshType = Enum.MeshType.Wedge

 mainseat = Instance.new("Seat", mcar)
mainseat.Friction = 0.3
mainseat.LeftSurface = Enum.SurfaceType.Weld
mainseat.TopSurface = Enum.SurfaceType.Smooth
mainseat.FormFactor = Enum.FormFactor.Plate
mainseat.BackSurface = Enum.SurfaceType.Weld
mainseat.BrickColor = BrickColor.new("Dirt brown")
mainseat.Material = Enum.Material.Concrete
mainseat.Size = Vector3.new(1.827, 0.365, 1.827)
mainseat.RightSurface = Enum.SurfaceType.Weld
mainseat.CFrame = CFrame.new(51.2, 2.364, -153.683)
mainseat.FrontSurface = Enum.SurfaceType.Weld
mainseat.Name = "mainseat"

 part_141 = Instance.new("Part", mcar)
part_141.FormFactor = Enum.FormFactor.Plate
part_141.TopSurface = Enum.SurfaceType.Smooth
part_141.Material = Enum.Material.Concrete
part_141.Size = Vector3.new(0.914, 1.096, 1.827)
part_141.CFrame = CFrame.new(49.83, 2.73, -152.221)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_141.BrickColor = BrickColor.new("Dirt brown")
part_141.Friction = 0.3
part_141.BottomSurface = Enum.SurfaceType.Smooth

 mesh_84 = Instance.new("SpecialMesh", part_141)
mesh_84.MeshType = Enum.MeshType.Wedge

 part_142 = Instance.new("Part", mcar)
part_142.FormFactor = Enum.FormFactor.Plate
part_142.TopSurface = Enum.SurfaceType.Smooth
part_142.Material = Enum.Material.Concrete
part_142.Size = Vector3.new(1.827, 1.096, 1.827)
part_142.CFrame = CFrame.new(51.2, 2.73, -152.221)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_142.BrickColor = BrickColor.new("Dirt brown")
part_142.Friction = 0.3
part_142.BottomSurface = Enum.SurfaceType.Smooth

 mesh_85 = Instance.new("SpecialMesh", part_142)
mesh_85.MeshType = Enum.MeshType.Wedge

 part_143 = Instance.new("Part", mcar)
part_143.FormFactor = Enum.FormFactor.Plate
part_143.TopSurface = Enum.SurfaceType.Smooth
part_143.Material = Enum.Material.Concrete
part_143.Size = Vector3.new(3.654, 0.365, 2.741)
part_143.CFrame = CFrame.new(51.2, 5.014, -151.673)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_143.BrickColor = BrickColor.new("Dirt brown")
part_143.Friction = 0.3
part_143.BottomSurface = Enum.SurfaceType.Smooth

 part_144 = Instance.new("Part", mcar)
part_144.FormFactor = Enum.FormFactor.Plate
part_144.TopSurface = Enum.SurfaceType.Smooth
part_144.Material = Enum.Material.Concrete
part_144.Size = Vector3.new(0.914, 2.558, 0.914)
part_144.CFrame = CFrame.new(49.83, 4.922, -152.312)
part_144.BrickColor = BrickColor.new("Dirt brown")
part_144.Friction = 0.3
part_144.BottomSurface = Enum.SurfaceType.Smooth

 mesh_86 = Instance.new("SpecialMesh", part_144)
mesh_86.MeshType = Enum.MeshType.Wedge

 frontwheels = Instance.new("Model", mcar)
frontwheels.Name = "frontwheels"

fcollide1 = Instance.new("Part", mcar)
fcollide1.FormFactor = Enum.FormFactor.Custom
fcollide1.Elasticity = 0
fcollide1.TopSurface = Enum.SurfaceType.Smooth
fcollide1.Size = Vector3.new(3.4, 1.4, 4.4)
fcollide1.CFrame = CFrame.new(58.6, 1.706, -161.21)* CFrame.Angles(0, 0, 1.5707963705063)
fcollide1.BrickColor = BrickColor.new("Really black")
fcollide1.Friction = 0.3
fcollide1.BottomSurface = Enum.SurfaceType.Smooth
fcollide1.CanCollide = true
fcollide1.Transparency = 1

 fcollide2 = Instance.new("Part", mcar)
fcollide2.FormFactor = Enum.FormFactor.Custom
fcollide2.Elasticity = 0
fcollide2.TopSurface = Enum.SurfaceType.Smooth
fcollide2.Size = Vector3.new(1.8, 11, 0.2)
fcollide2.Name = "Axle"
fcollide2.CFrame = CFrame.new(53.8, 1.706, -161.2)* CFrame.Angles(0, 0, 1.5707963705063)
fcollide2.Friction = 0.3
fcollide2.BottomSurface = Enum.SurfaceType.Smooth
fcollide2.CanCollide = true
fcollide2.Transparency = 1

 fcollide3 = Instance.new("Part", mcar)
fcollide3.FormFactor = Enum.FormFactor.Custom
fcollide3.Elasticity = 0
fcollide3.TopSurface = Enum.SurfaceType.Smooth
fcollide3.Size = Vector3.new(1.8, 1.8, 2)
fcollide3.CFrame = CFrame.new(58.6, 1.706, -161.21)* CFrame.Angles(0, 0, 1.5707963705063)
fcollide3.Friction = 0.3
fcollide3.BottomSurface = Enum.SurfaceType.Smooth
fcollide3.CanCollide = true
fcollide3.Transparency = 1

 fcollide4 = Instance.new("Part", mcar)
fcollide4.FormFactor = Enum.FormFactor.Custom
fcollide4.Elasticity = 0
fcollide4.TopSurface = Enum.SurfaceType.Smooth
fcollide4.Size = Vector3.new(1.8, 1.8, 2)
fcollide4.CFrame = CFrame.new(49.1, 1.706, -161.2)* CFrame.Angles(0, 0, 1.5707963705063)
fcollide4.Friction = 0.3
fcollide4.BottomSurface = Enum.SurfaceType.Smooth
fcollide4.CanCollide = true
fcollide4.Transparency = 1

 fcollide5 = Instance.new("Part", mcar)
fcollide5.FormFactor = Enum.FormFactor.Custom
fcollide5.Elasticity = 0
fcollide5.TopSurface = Enum.SurfaceType.Smooth
fcollide5.Size = Vector3.new(3.4, 1.4, 4.4)
fcollide5.CFrame = CFrame.new(49.1, 1.706, -161.2)* CFrame.Angles(0, 0, 1.5707963705063)
fcollide5.BrickColor = BrickColor.new("Really black")
fcollide5.Friction = 0.3
fcollide5.BottomSurface = Enum.SurfaceType.Smooth
fcollide5.CanCollide = true
fcollide5.Transparency = 1

 part_145 = Instance.new("Part", frontwheels)
part_145.FormFactor = Enum.FormFactor.Custom
part_145.Elasticity = 0
part_145.TopSurface = Enum.SurfaceType.Smooth
part_145.Size = Vector3.new(3.4, 1.4, 4.4)
part_145.CFrame = CFrame.new(58.6, 1.706, -161.21)* CFrame.Angles(0, 0, 1.5707963705063)
part_145.BrickColor = BrickColor.new("Really black")
part_145.Friction = 0.3
part_145.BottomSurface = Enum.SurfaceType.Smooth
part_145.CanCollide = false

 mesh_87 = Instance.new("CylinderMesh", part_145)

 axle_2 = Instance.new("Part", frontwheels)
axle_2.FormFactor = Enum.FormFactor.Custom
axle_2.Elasticity = 0
axle_2.TopSurface = Enum.SurfaceType.Smooth
axle_2.Size = Vector3.new(1.8, 11, 0.2)
axle_2.Name = "Axle"
axle_2.CFrame = CFrame.new(53.8, 1.706, -161.2)* CFrame.Angles(0, 0, 1.5707963705063)
axle_2.Friction = 0.3
axle_2.BottomSurface = Enum.SurfaceType.Smooth
axle_2.CanCollide = false

 mesh_88 = Instance.new("CylinderMesh", axle_2)

 part_146 = Instance.new("Part", frontwheels)
part_146.FormFactor = Enum.FormFactor.Custom
part_146.Elasticity = 0
part_146.TopSurface = Enum.SurfaceType.Smooth
part_146.Size = Vector3.new(1.8, 1.8, 2)
part_146.CFrame = CFrame.new(58.6, 1.706, -161.21)* CFrame.Angles(0, 0, 1.5707963705063)
part_146.Friction = 0.3
part_146.BottomSurface = Enum.SurfaceType.Smooth
part_146.CanCollide = false

 mesh_89 = Instance.new("CylinderMesh", part_146)

 part_147 = Instance.new("Part", frontwheels)
part_147.FormFactor = Enum.FormFactor.Custom
part_147.Elasticity = 0
part_147.TopSurface = Enum.SurfaceType.Smooth
part_147.Size = Vector3.new(1.8, 1.8, 2)
part_147.CFrame = CFrame.new(49.1, 1.706, -161.2)* CFrame.Angles(0, 0, 1.5707963705063)
part_147.Friction = 0.3
part_147.BottomSurface = Enum.SurfaceType.Smooth
part_147.CanCollide = false

 mesh_90 = Instance.new("CylinderMesh", part_147)

 part_148 = Instance.new("Part", frontwheels)
part_148.FormFactor = Enum.FormFactor.Custom
part_148.Elasticity = 0
part_148.TopSurface = Enum.SurfaceType.Smooth
part_148.Size = Vector3.new(3.4, 1.4, 4.4)
part_148.CFrame = CFrame.new(49.1, 1.706, -161.2)* CFrame.Angles(0, 0, 1.5707963705063)
part_148.BrickColor = BrickColor.new("Really black")
part_148.Friction = 0.3
part_148.BottomSurface = Enum.SurfaceType.Smooth
part_148.CanCollide = false

 mesh_91 = Instance.new("CylinderMesh", part_148)

 part_149 = Instance.new("Part", mcar)
part_149.FormFactor = Enum.FormFactor.Plate
part_149.TopSurface = Enum.SurfaceType.Smooth
part_149.Material = Enum.Material.Concrete
part_149.Size = Vector3.new(0.914, 1.096, 1.827)
part_149.CFrame = CFrame.new(49.83, 2.719, -147.121)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_149.BrickColor = BrickColor.new("Dirt brown")
part_149.Friction = 0.3
part_149.BottomSurface = Enum.SurfaceType.Smooth

 mesh_92 = Instance.new("SpecialMesh", part_149)
mesh_92.MeshType = Enum.MeshType.Wedge

 part_150 = Instance.new("Part", mcar)
part_150.FormFactor = Enum.FormFactor.Plate
part_150.TopSurface = Enum.SurfaceType.Smooth
part_150.Material = Enum.Material.Concrete
part_150.Size = Vector3.new(1.827, 2.558, 0.914)
part_150.CFrame = CFrame.new(51.2, 4.911, -147.212)
part_150.BrickColor = BrickColor.new("Dirt brown")
part_150.Friction = 0.3
part_150.BottomSurface = Enum.SurfaceType.Smooth

 mesh_93 = Instance.new("SpecialMesh", part_150)
mesh_93.MeshType = Enum.MeshType.Wedge

 part_151 = Instance.new("Part", mcar)
part_151.FormFactor = Enum.FormFactor.Plate
part_151.TopSurface = Enum.SurfaceType.Smooth
part_151.Material = Enum.Material.Concrete
part_151.Size = Vector3.new(1.827, 1.462, 0.914)
part_151.CFrame = CFrame.new(52.57, 2.902, -148.583)* CFrame.Angles(0, 1.5707963705063, 0)
part_151.BrickColor = BrickColor.new("Dirt brown")
part_151.Friction = 0.3
part_151.BottomSurface = Enum.SurfaceType.Smooth

 part_152 = Instance.new("Part", mcar)
part_152.FormFactor = Enum.FormFactor.Plate
part_152.TopSurface = Enum.SurfaceType.Smooth
part_152.Material = Enum.Material.Concrete
part_152.Size = Vector3.new(0.914, 1.096, 1.827)
part_152.CFrame = CFrame.new(52.57, 2.719, -147.121)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_152.BrickColor = BrickColor.new("Dirt brown")
part_152.Friction = 0.3
part_152.BottomSurface = Enum.SurfaceType.Smooth

 mesh_94 = Instance.new("SpecialMesh", part_152)
mesh_94.MeshType = Enum.MeshType.Wedge

 part_153 = Instance.new("Part", mcar)
part_153.FormFactor = Enum.FormFactor.Plate
part_153.TopSurface = Enum.SurfaceType.Smooth
part_153.Material = Enum.Material.Concrete
part_153.Size = Vector3.new(1.827, 1.096, 1.827)
part_153.CFrame = CFrame.new(51.2, 2.719, -147.121)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_153.BrickColor = BrickColor.new("Dirt brown")
part_153.Friction = 0.3
part_153.BottomSurface = Enum.SurfaceType.Smooth

 mesh_95 = Instance.new("SpecialMesh", part_153)
mesh_95.MeshType = Enum.MeshType.Wedge

 part_154 = Instance.new("Part", mcar)
part_154.FormFactor = Enum.FormFactor.Plate
part_154.TopSurface = Enum.SurfaceType.Smooth
part_154.Material = Enum.Material.Concrete
part_154.Size = Vector3.new(0.914, 2.558, 0.914)
part_154.CFrame = CFrame.new(52.57, 4.911, -147.212)
part_154.BrickColor = BrickColor.new("Dirt brown")
part_154.Friction = 0.3
part_154.BottomSurface = Enum.SurfaceType.Smooth

 mesh_96 = Instance.new("SpecialMesh", part_154)
mesh_96.MeshType = Enum.MeshType.Wedge

 part_155 = Instance.new("Part", mcar)
part_155.FormFactor = Enum.FormFactor.Plate
part_155.TopSurface = Enum.SurfaceType.Smooth
part_155.Material = Enum.Material.Concrete
part_155.Size = Vector3.new(3.654, 0.365, 2.741)
part_155.CFrame = CFrame.new(51.2, 5.003, -146.573)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_155.BrickColor = BrickColor.new("Dirt brown")
part_155.Friction = 0.3
part_155.BottomSurface = Enum.SurfaceType.Smooth

 part_156 = Instance.new("Part", mcar)
part_156.FormFactor = Enum.FormFactor.Plate
part_156.TopSurface = Enum.SurfaceType.Smooth
part_156.Material = Enum.Material.Concrete
part_156.Size = Vector3.new(0.914, 2.558, 0.914)
part_156.CFrame = CFrame.new(49.83, 4.911, -147.212)
part_156.BrickColor = BrickColor.new("Dirt brown")
part_156.Friction = 0.3
part_156.BottomSurface = Enum.SurfaceType.Smooth

 mesh_97 = Instance.new("SpecialMesh", part_156)
mesh_97.MeshType = Enum.MeshType.Wedge

 part_157 = Instance.new("Part", mcar)
part_157.FormFactor = Enum.FormFactor.Plate
part_157.TopSurface = Enum.SurfaceType.Smooth
part_157.Material = Enum.Material.Concrete
part_157.Size = Vector3.new(0.914, 1.462, 0.914)
part_157.CFrame = CFrame.new(52.57, 2.902, -149.953)
part_157.BrickColor = BrickColor.new("Dirt brown")
part_157.Friction = 0.3
part_157.BottomSurface = Enum.SurfaceType.Smooth

 mesh_98 = Instance.new("SpecialMesh", part_157)
mesh_98.MeshType = Enum.MeshType.Wedge

 part_158 = Instance.new("Part", mcar)
part_158.FormFactor = Enum.FormFactor.Plate
part_158.TopSurface = Enum.SurfaceType.Smooth
part_158.Size = Vector3.new(2.741, 0.365, 3.654)
part_158.CFrame = CFrame.new(51.2, 1.988, -149.039)* CFrame.Angles(0, 1.5707963705063, 0)
part_158.BrickColor = BrickColor.new("Dirt brown")
part_158.Friction = 0.3
part_158.BottomSurface = Enum.SurfaceType.Smooth

 part_159 = Instance.new("Part", mcar)
part_159.FormFactor = Enum.FormFactor.Plate
part_159.TopSurface = Enum.SurfaceType.Smooth
part_159.Material = Enum.Material.Concrete
part_159.Size = Vector3.new(1.827, 0.365, 0.914)
part_159.CFrame = CFrame.new(51.2, 2.353, -149.953)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_159.BrickColor = BrickColor.new("Dirt brown")
part_159.Friction = 0.3
part_159.BottomSurface = Enum.SurfaceType.Smooth

 part_160 = Instance.new("Part", mcar)
part_160.FormFactor = Enum.FormFactor.Plate
part_160.TopSurface = Enum.SurfaceType.Smooth
part_160.Material = Enum.Material.Concrete
part_160.Size = Vector3.new(1.827, 1.462, 0.914)
part_160.CFrame = CFrame.new(49.83, 2.902, -148.583)* CFrame.Angles(0, 1.5707963705063, 0)
part_160.BrickColor = BrickColor.new("Dirt brown")
part_160.Friction = 0.3
part_160.BottomSurface = Enum.SurfaceType.Smooth

 part_161 = Instance.new("Part", mcar)
part_161.FormFactor = Enum.FormFactor.Plate
part_161.TopSurface = Enum.SurfaceType.Smooth
part_161.Material = Enum.Material.Concrete
part_161.Size = Vector3.new(0.914, 1.462, 0.914)
part_161.CFrame = CFrame.new(49.83, 2.902, -149.953)
part_161.BrickColor = BrickColor.new("Dirt brown")
part_161.Friction = 0.3
part_161.BottomSurface = Enum.SurfaceType.Smooth

 mesh_99 = Instance.new("SpecialMesh", part_161)
mesh_99.MeshType = Enum.MeshType.Wedge

 seat_2 = Instance.new("Seat", mcar)
seat_2.Friction = 0.3
seat_2.LeftSurface = Enum.SurfaceType.Weld
seat_2.TopSurface = Enum.SurfaceType.Smooth
seat_2.FormFactor = Enum.FormFactor.Plate
seat_2.BackSurface = Enum.SurfaceType.Weld
seat_2.BrickColor = BrickColor.new("Dirt brown")
seat_2.Material = Enum.Material.Concrete
seat_2.Size = Vector3.new(1.827, 0.365, 1.827)
seat_2.RightSurface = Enum.SurfaceType.Weld
seat_2.CFrame = CFrame.new(51.2, 2.353, -148.583)
seat_2.FrontSurface = Enum.SurfaceType.Weld

 part_162 = Instance.new("Part", mcar)
part_162.FormFactor = Enum.FormFactor.Plate
part_162.TopSurface = Enum.SurfaceType.Smooth
part_162.Material = Enum.Material.Concrete
part_162.Size = Vector3.new(1.827, 2.558, 0.914)
part_162.CFrame = CFrame.new(55.9, 4.911, -152.512)
part_162.BrickColor = BrickColor.new("Dirt brown")
part_162.Friction = 0.3
part_162.BottomSurface = Enum.SurfaceType.Smooth

 mesh_100 = Instance.new("SpecialMesh", part_162)
mesh_100.MeshType = Enum.MeshType.Wedge

 part_163 = Instance.new("Part", mcar)
part_163.FormFactor = Enum.FormFactor.Plate
part_163.TopSurface = Enum.SurfaceType.Smooth
part_163.Material = Enum.Material.Concrete
part_163.Size = Vector3.new(3.654, 0.365, 2.741)
part_163.CFrame = CFrame.new(55.9, 5.003, -151.873)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_163.BrickColor = BrickColor.new("Dirt brown")
part_163.Friction = 0.3
part_163.BottomSurface = Enum.SurfaceType.Smooth

 seat_3 = Instance.new("Seat", mcar)
seat_3.Friction = 0.3
seat_3.LeftSurface = Enum.SurfaceType.Weld
seat_3.TopSurface = Enum.SurfaceType.Smooth
seat_3.FormFactor = Enum.FormFactor.Plate
seat_3.BackSurface = Enum.SurfaceType.Weld
seat_3.BrickColor = BrickColor.new("Dirt brown")
seat_3.Material = Enum.Material.Concrete
seat_3.Size = Vector3.new(1.827, 0.365, 1.827)
seat_3.RightSurface = Enum.SurfaceType.Weld
seat_3.CFrame = CFrame.new(55.9, 2.354, -153.883)
seat_3.FrontSurface = Enum.SurfaceType.Weld

 part_164 = Instance.new("Part", mcar)
part_164.FormFactor = Enum.FormFactor.Plate
part_164.TopSurface = Enum.SurfaceType.Smooth
part_164.Material = Enum.Material.Concrete
part_164.Size = Vector3.new(0.914, 1.096, 1.827)
part_164.CFrame = CFrame.new(54.53, 2.719, -152.421)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_164.BrickColor = BrickColor.new("Dirt brown")
part_164.Friction = 0.3
part_164.BottomSurface = Enum.SurfaceType.Smooth

 mesh_101 = Instance.new("SpecialMesh", part_164)
mesh_101.MeshType = Enum.MeshType.Wedge

 part_165 = Instance.new("Part", mcar)
part_165.FormFactor = Enum.FormFactor.Plate
part_165.TopSurface = Enum.SurfaceType.Smooth
part_165.Material = Enum.Material.Concrete
part_165.Size = Vector3.new(1.827, 1.096, 1.827)
part_165.CFrame = CFrame.new(55.9, 2.719, -152.421)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_165.BrickColor = BrickColor.new("Dirt brown")
part_165.Friction = 0.3
part_165.BottomSurface = Enum.SurfaceType.Smooth

 mesh_102 = Instance.new("SpecialMesh", part_165)
mesh_102.MeshType = Enum.MeshType.Wedge

 part_166 = Instance.new("Part", mcar)
part_166.FormFactor = Enum.FormFactor.Plate
part_166.TopSurface = Enum.SurfaceType.Smooth
part_166.Material = Enum.Material.Concrete
part_166.Size = Vector3.new(1.827, 1.462, 0.914)
part_166.CFrame = CFrame.new(54.53, 2.902, -153.883)* CFrame.Angles(0, 1.5707963705063, 0)
part_166.BrickColor = BrickColor.new("Dirt brown")
part_166.Friction = 0.3
part_166.BottomSurface = Enum.SurfaceType.Smooth

 part_167 = Instance.new("Part", mcar)
part_167.FormFactor = Enum.FormFactor.Plate
part_167.TopSurface = Enum.SurfaceType.Smooth
part_167.Material = Enum.Material.Concrete
part_167.Size = Vector3.new(0.914, 1.096, 1.827)
part_167.CFrame = CFrame.new(57.27, 2.719, -152.421)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_167.BrickColor = BrickColor.new("Dirt brown")
part_167.Friction = 0.3
part_167.BottomSurface = Enum.SurfaceType.Smooth

 mesh_103 = Instance.new("SpecialMesh", part_167)
mesh_103.MeshType = Enum.MeshType.Wedge

 part_168 = Instance.new("Part", mcar)
part_168.FormFactor = Enum.FormFactor.Plate
part_168.TopSurface = Enum.SurfaceType.Smooth
part_168.Material = Enum.Material.Concrete
part_168.Size = Vector3.new(0.914, 1.462, 0.914)
part_168.CFrame = CFrame.new(57.27, 2.902, -155.253)
part_168.BrickColor = BrickColor.new("Dirt brown")
part_168.Friction = 0.3
part_168.BottomSurface = Enum.SurfaceType.Smooth

 mesh_104 = Instance.new("SpecialMesh", part_168)
mesh_104.MeshType = Enum.MeshType.Wedge

 part_169 = Instance.new("Part", mcar)
part_169.FormFactor = Enum.FormFactor.Plate
part_169.TopSurface = Enum.SurfaceType.Smooth
part_169.Size = Vector3.new(2.741, 0.365, 3.654)
part_169.CFrame = CFrame.new(55.9, 1.988, -154.339)* CFrame.Angles(0, 1.5707963705063, 0)
part_169.BrickColor = BrickColor.new("Dirt brown")
part_169.Friction = 0.3
part_169.BottomSurface = Enum.SurfaceType.Smooth

 part_170 = Instance.new("Part", mcar)
part_170.FormFactor = Enum.FormFactor.Plate
part_170.TopSurface = Enum.SurfaceType.Smooth
part_170.Material = Enum.Material.Concrete
part_170.Size = Vector3.new(0.914, 1.462, 0.914)
part_170.CFrame = CFrame.new(54.53, 2.902, -155.253)
part_170.BrickColor = BrickColor.new("Dirt brown")
part_170.Friction = 0.3
part_170.BottomSurface = Enum.SurfaceType.Smooth

 mesh_105 = Instance.new("SpecialMesh", part_170)
mesh_105.MeshType = Enum.MeshType.Wedge

 part_171 = Instance.new("Part", mcar)
part_171.FormFactor = Enum.FormFactor.Plate
part_171.TopSurface = Enum.SurfaceType.Smooth
part_171.Material = Enum.Material.Concrete
part_171.Size = Vector3.new(1.827, 1.462, 0.914)
part_171.CFrame = CFrame.new(57.27, 2.902, -153.883)* CFrame.Angles(0, 1.5707963705063, 0)
part_171.BrickColor = BrickColor.new("Dirt brown")
part_171.Friction = 0.3
part_171.BottomSurface = Enum.SurfaceType.Smooth

 part_172 = Instance.new("Part", mcar)
part_172.FormFactor = Enum.FormFactor.Plate
part_172.TopSurface = Enum.SurfaceType.Smooth
part_172.Material = Enum.Material.Concrete
part_172.Size = Vector3.new(0.914, 2.558, 0.914)
part_172.CFrame = CFrame.new(57.27, 4.911, -152.512)
part_172.BrickColor = BrickColor.new("Dirt brown")
part_172.Friction = 0.3
part_172.BottomSurface = Enum.SurfaceType.Smooth

 mesh_106 = Instance.new("SpecialMesh", part_172)
mesh_106.MeshType = Enum.MeshType.Wedge

weight = Instance.new("Part", mcar)
weight.FormFactor = Enum.FormFactor.Plate
weight.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
weight.Transparency = 1
weight.TopSurface = Enum.SurfaceType.Smooth
weight.Material = Enum.Material.Metal
weight.Size = Vector3.new(11.076, 0.615, 30)
weight.Name = "weight"
weight.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
weight.CFrame = CFrame.new(53.805, 0.295, -150.45)* CFrame.Angles(-3.1415011882782, 8.0992285802495e-006, -3.1415579319)
weight.RightSurface = Enum.SurfaceType.SmoothNoOutlines
weight.BackSurface = Enum.SurfaceType.SmoothNoOutlines
weight.BrickColor = BrickColor.new("Institutional white")
weight.Friction = 0.3
weight.BottomSurface = Enum.SurfaceType.SmoothNoOutlines



 part_173 = Instance.new("Part", mcar)
part_173.FormFactor = Enum.FormFactor.Plate
part_173.TopSurface = Enum.SurfaceType.Smooth
part_173.Material = Enum.Material.Concrete
part_173.Size = Vector3.new(0.914, 2.558, 0.914)
part_173.CFrame = CFrame.new(54.53, 4.911, -152.512)
part_173.BrickColor = BrickColor.new("Dirt brown")
part_173.Friction = 0.3
part_173.BottomSurface = Enum.SurfaceType.Smooth

 mesh_107 = Instance.new("SpecialMesh", part_173)
mesh_107.MeshType = Enum.MeshType.Wedge

 part_174 = Instance.new("Part", mcar)
part_174.FormFactor = Enum.FormFactor.Plate
part_174.TopSurface = Enum.SurfaceType.Smooth
part_174.Material = Enum.Material.Concrete
part_174.Size = Vector3.new(1.827, 0.365, 0.914)
part_174.CFrame = CFrame.new(55.9, 2.354, -155.253)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_174.BrickColor = BrickColor.new("Dirt brown")
part_174.Friction = 0.3
part_174.BottomSurface = Enum.SurfaceType.Smooth

 backaxlepos = Instance.new("Part", mcar)
backaxlepos.FormFactor = Enum.FormFactor.Custom
backaxlepos.CanCollide = false
backaxlepos.Elasticity = 0
backaxlepos.Transparency = 1
backaxlepos.TopSurface = Enum.SurfaceType.Smooth
backaxlepos.Size = Vector3.new(1.8, 11, 0.2)
backaxlepos.Name = "backaxlepos"
backaxlepos.CFrame = CFrame.new(53.8, 1.7, -141.2)* CFrame.Angles(0, 0, 1.5707963705063)
backaxlepos.Friction = 0.3
backaxlepos.BottomSurface = Enum.SurfaceType.Smooth

 mesh_108 = Instance.new("CylinderMesh", backaxlepos)

local engine = mcar.engine
local frontwheels = mcar.frontwheels
local backwheels = mcar.backwheels
local Door1 = mcar.Door
local Door2 = mcar.Door2

Door1:BreakJoints()
Door2:BreakJoints()
backwheels:BreakJoints()
frontwheels:BreakJoints()
mcar:BreakJoints()

local prev
local parts = mcar:GetChildren()

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
mcar:MakeJoints()
mcar.Parent = char
mcar.weight.CFrame = char.Torso.CFrame*CFrame.new(10,24,5)

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
			parts[i].CustomPhysicalProperties = PhysicalProperties.new(400,4,0.1)
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
			parts[i].CustomPhysicalProperties = PhysicalProperties.new(400,4,0.1)
		end 
		prev = parts[i] 
	end 
end
frontwheels:MakeJoints()

local prev
local parts = Door1:GetChildren()

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
Door1:MakeJoints()

local prev
local parts = Door2:GetChildren()

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
Door2:MakeJoints()

weld(frontwheels.Axle, mcar.frontaxlepos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
frontwheels.Axle.Weld.Name = "Weld2"

weld(backwheels.Axle, mcar.backaxlepos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
backwheels.Axle.Weld.Name = "Weld2"

weld(Door1.doormain, mcar.doorpos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
Door1.doormain.Weld.Name = "Weld2"
weld(Door2.doormain, mcar.door2pos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
Door2.doormain.Weld.Name = "Weld2"

local enginestart=Instance.new("Sound")
enginestart.SoundId="http://www.roblox.com/asset/?id=140685060"
enginestart.PlayOnRemove=false
enginestart.Volume=0.75
enginestart.Looped=false
enginestart.Pitch = 1
enginestart.Parent=engine

local engineidle=Instance.new("Sound")
engineidle.SoundId="http://www.roblox.com/asset/?id=152247447"
engineidle.PlayOnRemove=false
engineidle.Volume=0.75
engineidle.Looped=false
engineidle.Pitch = 1
engineidle.Parent=engine

local enginestop=Instance.new("Sound")
enginestop.SoundId="http://www.roblox.com/asset/?id=144126324"
enginestop.PlayOnRemove=false
enginestop.Volume=0.75
enginestop.Looped=false
enginestop.Pitch = 1
enginestop.Parent=engine

local enginemove=Instance.new("Sound")
enginemove.SoundId="http://www.roblox.com/asset/?id=269596439"
enginemove.PlayOnRemove=false
enginemove.Volume=0.75
enginemove.Looped=true
enginemove.Pitch = 1
enginemove.Parent=engine

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

mouse.KeyDown:connect(function(key)
if key == "y" and engineon == false then
	enginestart:Play()
	wait(.5)
engineon = true
engineidle:Play()
end
end)
mouse.KeyDown:connect(function(key)
if key == "u" and engineon == true then
	enginestop:Play()
	wait(.5)
engineon = false
enginestart:Stop()
engineidle:Stop()
end
end)

local bav = Instance.new("BodyAngularVelocity",engine)
bav.MaxTorque = Vector3.new(0,0,0)
bav.P = 100
bav.AngularVelocity = Vector3.new(0,0,0)
local bv = Instance.new("BodyVelocity",engine)
bv.MaxForce = Vector3.new(0,0,0)
bv.P = 1250
bv.Velocity = Vector3.new(0.16,0,0.16)

mouse.KeyDown:connect(function(key)
if key == "w" and engineon == true and spressed == false then
	wpressed = true
	enginemove:Play()
	bv.MaxForce = Vector3.new(forcelevel,0,forcelevel)
	while wpressed == true do wait(.08)
accel = accel + 2
wheelaccel = wheelaccel + .7
if accel >=accellimit then accel = accellimit end
bv.Velocity = (mcar.mainseat.CFrame.lookVector * accel)
frontwheels.Axle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),-wheelaccel,0)
backwheels.Axle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),-wheelaccel,0)
	end
	end
end)

mouse.KeyUp:connect(function(key)
if key == "w" and engineon == true then
wpressed = false
enginemove:Stop()
while wpressed == false and accel >0 and bpressed == false do wait()
	accel = accel - 2.4
	if accel <0 then accel = 0 end
	wheelaccel = wheelaccel + .7
	bv.Velocity = (mcar.mainseat.CFrame.lookVector * accel)
	frontwheels.Axle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),-wheelaccel,0)
backwheels.Axle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),-wheelaccel,0)
end
end
end)





mouse.KeyDown:connect(function(key)
if key == "s" and engineon == true and wpressed == false then
	spressed = true
	mcar.backlight1.rearlight.Enabled = true
	mcar.backlight2.rearlight.Enabled = true
	bv.MaxForce = Vector3.new(forcelevel,0,forcelevel)
	while spressed == true do wait(.06)
accel = accel - 2
wheelaccel = wheelaccel - .7
if accel <=-accellimit then accel = -accellimit end
bv.Velocity = (mcar.mainseat.CFrame.lookVector * accel)
frontwheels.Axle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
backwheels.Axle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
	end
	end
end)

mouse.KeyUp:connect(function(key)
if key == "s" and engineon == true then
spressed = false
mcar.backlight1.rearlight.Enabled = false
mcar.backlight2.rearlight.Enabled = false
while spressed == false and accel <0 do wait()
	accel = accel + 2.4
	if accel >0 then accel = 0 end
	wheelaccel = wheelaccel - .7
	bv.Velocity = (mcar.mainseat.CFrame.lookVector * accel)
	frontwheels.Axle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
backwheels.Axle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
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
	apressed2 = false
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
	dpressed2 = false
	bav.MaxTorque = Vector3.new(0,0,0)
end
end)

mouse.KeyDown:connect(function(key)
if key == "p" then
	ppressed = ppressed + 1
	if ppressed == 1 then
	Door1.doormain.Weld.C0 = CFrame.new(-1.5,0,.6)*CFrame.Angles(math.rad(0),.8,0)
	Door2.doormain.Weld.C0 = CFrame.new(1.5,0,.6)*CFrame.Angles(math.rad(0),-.8,0)
	end
	if ppressed == 2 then
		ppressed = 0
		Door1.doormain.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
		Door2.doormain.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
	end
	end
end)

mouse.KeyDown:connect(function(key)
if key == "z" then
	print("debug key z pressed, angletorque increased")
	angletorque = 7850000 
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



local skidmark = Instance.new("Part")
skidmark.FormFactor = Enum.FormFactor.Custom
skidmark.CanCollide = false
skidmark.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
skidmark.Transparency = 1
skidmark.TopSurface = Enum.SurfaceType.SmoothNoOutlines
skidmark.Anchored = true
skidmark.Size = Vector3.new(3, 0.2, 4)
skidmark.Name = "skidmark"
skidmark.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
skidmark.CFrame = CFrame.new(6, 0.1, 1.5)* CFrame.Angles(-0, -1.5707963705063, 0)
skidmark.RightSurface = Enum.SurfaceType.SmoothNoOutlines
skidmark.BackSurface = Enum.SurfaceType.SmoothNoOutlines
skidmark.Friction = 0.3
skidmark.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local sg = Instance.new("SurfaceGui", skidmark)
sg.Face = Enum.NormalId.Top
sg.CanvasSize = Vector2.new(400, 100)

local skidimage = Instance.new("ImageLabel", sg)
skidimage.Image = "http://www.roblox.com/asset/?id=129609485"
skidimage.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
skidimage.Rotation = 0
skidimage.BackgroundTransparency = 1
skidimage.Size = UDim2.new(0, 100, 0, 100)
skidimage.BackgroundColor3 = Color3.new(1, 1, 1)


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
	accellimit = gearspeed
end
end)

mouse.KeyDown:connect(function(key)
if key == "l" then
	lpressed = lpressed + 1
	if lpressed == 1 then
	mcar.frontlight3.regularlight.Enabled = true
	mcar.frontlight4.regularlight.Enabled = true
	end
	if lpressed == 2 then
		lpressed = 0
		mcar.frontlight3.regularlight.Enabled = false
		mcar.frontlight4.regularlight.Enabled = false
	end
end
end)
mouse.KeyDown:connect(function(key)
if key == "k" then
	kpressed = kpressed + 1
	if kpressed == 1 then
	mcar.frontlight1.headlight.Enabled = true
	mcar.frontlight2.headlight.Enabled = true
	end
	if kpressed == 2 then
		kpressed = 0
		mcar.frontlight1.headlight.Enabled = false
		mcar.frontlight2.headlight.Enabled = false
	end
end
end)

mcar.frontbumper.Touched:connect(function(h)
	if Vector3.new(mcar.mainseat.Velocity.x,0,mcar.mainseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
		accellimit = 0
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(15,30))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mcar.mainsear.CFrame.lookVector*15 end
				h.Parent.Humanoid.Sit = true
				accellimit = 100
	end
	end
end)
mcar.rearbumper.Touched:connect(function(h)
	if Vector3.new(mcar.mainseat.Velocity.x,0,mcar.mainseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
		accellimit = 0
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(15,30))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mcar.mainsear.CFrame.lookVector*-15 end
				h.Parent.Humanoid.Sit = true
				accellimit = 100
	end
	end
end)

--Radio--
local radiogui = Instance.new("ScreenGui", player.PlayerGui)
radiogui.Name = "RadioGui"

local frame = Instance.new("Frame", radiogui)
frame.Size = UDim2.new(0.3, 0, 0.05, 0)
frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
frame.Style = Enum.FrameStyle.RobloxRound
frame.Position = UDim2.new(0.2, 0, 0.3, 0)
frame.BorderSizePixel = 0
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Visible = true
local frame2 = Instance.new("Frame", radiogui)
frame2.Size = UDim2.new(0.3, 0, 0.05, 0)
frame2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
frame2.Style = Enum.FrameStyle.RobloxRound
frame2.Position = UDim2.new(0.2, 0, 0.4, 0)
frame2.BorderSizePixel = 0
frame2.BackgroundColor3 = Color3.new(1, 1, 1)
frame2.Visible = true

local geartext = Instance.new("TextLabel", frame2)
geartext.TextWrapped = true
geartext.BorderSizePixel = 0
geartext.BackgroundColor3 = Color3.new(1, 1, 1)
geartext.BackgroundTransparency = 1
geartext.Size = UDim2.new(0, 190, 0, 15)
geartext.TextScaled = true
geartext.TextColor3 = Color3.new(0.796079, 0, 0)
geartext.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
geartext.Text = "Gear:"
geartext.Position = UDim2.new(-0.01, 0, -0.15, 0)
geartext.Font = Enum.Font.Legacy
geartext.Name = "geartext"
geartext.FontSize = Enum.FontSize.Size14

local songname = Instance.new("TextLabel", frame)
songname.TextWrapped = true
songname.BorderSizePixel = 0
songname.BackgroundColor3 = Color3.new(1, 1, 1)
songname.BackgroundTransparency = 1
songname.Size = UDim2.new(0, 190, 0, 15)
songname.TextScaled = true
songname.TextColor3 = Color3.new(0.796079, 0, 0)
songname.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
songname.Text = "Music-"
songname.Position = UDim2.new(-0.01, 0, -0.15, 0)
songname.Font = Enum.Font.Legacy
songname.Name = "SongName"
songname.FontSize = Enum.FontSize.Size14

local r1=Instance.new("Sound")
r1.SoundId="http://www.roblox.com/asset/?id=357929437" --Kurtis Blow The Breaks
r1.PlayOnRemove=false
r1.Volume=0.85
r1.Looped=true
r1.Pitch = 1
r1.Parent=mcar.engine
local r2=Instance.new("Sound")
r2.SoundId="http://www.roblox.com/asset/?id=190797330" --Time of the Season
r2.PlayOnRemove=false
r2.Volume=0.85
r2.Looped=true
r2.Pitch = 1
r2.Parent=mcar.engine
local r3=Instance.new("Sound")
r3.SoundId="http://www.roblox.com/asset/?id=166628530" --California Dreamin
r3.PlayOnRemove=false
r3.Volume=0.85
r3.Looped=true
r3.Pitch = 1
r3.Parent=mcar.engine
local r4=Instance.new("Sound")
r4.SoundId="http://www.roblox.com/asset/?id=328121442" --Fugees killing me softly
r4.PlayOnRemove=false
r4.Volume=0.75
r4.Looped=true
r4.Pitch = 1
r4.Parent=mcar.engine
local r5=Instance.new("Sound")
r5.SoundId="http://www.roblox.com/asset/?id=245917262" --Light My Fire
r5.PlayOnRemove=false
r5.Volume=0.85
r5.Looped=true
r5.Pitch = 1
r5.Parent=mcar.engine
local r6=Instance.new("Sound")
r6.SoundId="http://www.roblox.com/asset/?id=163596874" --Night Fever (YEE!)
r6.PlayOnRemove=false
r6.Volume=0.85
r6.Looped=true
r6.Pitch = 1
r6.Parent=mcar.engine
local static=Instance.new("Sound")
static.SoundId="http://www.roblox.com/asset/?id=251407575" --static
static.PlayOnRemove=false
static.Volume=0.61
static.Looped=true
static.Pitch = 1
static.Parent=mcar.engine
--Radio End--

mouse.KeyDown:connect(function(key)
	if key == "g" then
		gpressed = gpressed + 1
		if gpressed == 1 then
			geartext.Text = "Gear: 1"
			accellimit = 20
			gearspeed = 20
		end
		if gpressed == 2 then
			geartext.Text = "Gear: 2"
			accellimit = 40
			gearspeed = 40
		end
		if gpressed == 3 then
			geartext.Text = "Gear: 3"
			accellimit = 60
			gearspeed = 60
		end
		if gpressed == 4 then
			geartext.Text = "Gear: 4"
			accellimit = 200
			gearspeed = 200
		end
		if gpressed == 5 then
			gpressed = 0
			geartext.Text = "Gear: 5"
			accellimit = 300
			gearspeed = 300
		end
	end
	end)

mouse.KeyDown:connect(function(key)
	if key == "v" then
		vpressed = vpressed + 1
		if vpressed == 1 then
			r6:Stop()
			static:Stop()
			static:Play()
			r1:Play()
			songname.Text = "Kurtis Blow- The Breaks"
		end
		if vpressed == 2 then
			r1:Stop()
			static:Stop()
			static:Play()
			r2:Play()
			songname.Text = "The Zombies- Time of the Season"
		end
		if vpressed == 3 then
			r2:Stop()
			static:Stop()
			static:Play()
			r3:Play()
			songname.Text = "The Mamas and Papas- California Dreamin"
		end
		if vpressed == 4 then
			r3:Stop()
			static:Stop()
			static:Play()
			r4:Play()
			songname.Text = "The Fugees- Killing me softly"
		end
		if vpressed == 5 then
			r4:Stop()
			static:Stop()
			static:Play()
			r5:Play()
			songname.Text = "The Doors- Light My Fire"
		end
		if vpressed == 6 then
			r5:Stop()
			static:Stop()
			static:Play()
			r6:Play()
			songname.Text = "Bee Gees- Night Fever"
		end
		if vpressed == 7 then
			vpressed = 0
			r6:Stop()
			static:Stop()
			songname.Text = "Music-"
		end
		end
end)