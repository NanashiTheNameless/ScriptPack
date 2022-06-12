local player = game.Players.LocalPlayer
local char = player.Character
local Hea = char.Head
local tor = char.Torso
local ra = char['Right Arm']
local la = char['Left Arm']
local camera = game.Workspace.CurrentCamera
function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end

bin=Instance.new('HopperBin',player.Backpack)
bin.Name='Mortar'

bin.Selected:connect(function(mouse)
pcall(function()
local canfire = false
local cancrouch = true
local crouched = 0
local mortar = Instance.new("Model", workspace)
mortar.Name = "Mortar"

handle = Instance.new("Part", mortar)
handle.FormFactor = Enum.FormFactor.Symmetric
handle.CanCollide = false
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Transparency = 1
handle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Size = Vector3.new(0.693, 0.693, 0.693)
handle.Name = "Handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(3.966, 1.658, 101.632)* CFrame.Angles(3.1414759159088, 0.019993921741843, -3.1415531635284)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BrickColor = BrickColor.new("Black")
handle.Friction = 0.3
handle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 barrel = Instance.new("Part", mortar)
barrel.RightParamB = 0
barrel.Velocity = Vector3.new(0, -0.004, 0.001)
barrel.FormFactor = Enum.FormFactor.Symmetric
barrel.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
barrel.Transparency = 1
barrel.TopSurface = Enum.SurfaceType.SmoothNoOutlines
barrel.RightParamA = 0
barrel.RotVelocity = Vector3.new(0.001, 0, 0.001)
barrel.Size = Vector3.new(0.693, 0.693, 0.693)
barrel.Name = "barrel"
barrel.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
barrel.CFrame = CFrame.new(3.929, 3.889, 105.291)* CFrame.Angles(3.1413631439209, -1.5544989109039, -2.332640171051)
barrel.RightSurface = Enum.SurfaceType.SmoothNoOutlines
barrel.BackSurface = Enum.SurfaceType.SmoothNoOutlines
barrel.BrickColor = BrickColor.new("Really black")
barrel.Friction = 0.3
barrel.Shape = Enum.PartType.Cylinder
barrel.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part = Instance.new("Part", mortar)
part.FormFactor = Enum.FormFactor.Plate
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Material = Enum.Material.Metal
part.Size = Vector3.new(0.693, 4.374, 0.693)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(3.963, 1.653, 103.16)* CFrame.Angles(0.76158285140991, -0.011491015553474, 0.010960195213556)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Dark stone grey")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part.Name = "shroud"

 mesh = Instance.new("CylinderMesh", part)
mesh.Scale = Vector3.new(1.5, 1, 1.5)

 part_2 = Instance.new("Part", mortar)
part_2.Velocity = Vector3.new(0.002, -0.006, -0.001)
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.RotVelocity = Vector3.new(0.001, 0, 0.001)
part_2.Material = Enum.Material.SmoothPlastic
part_2.Size = Vector3.new(0.693, 2.864, 0.693)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(4.705, 1.483, 104.777)* CFrame.Angles(1.4333664178848, -1.1402186155319, 1.606097817421)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Really black")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_2 = Instance.new("BlockMesh", part_2)
mesh_2.Scale = Vector3.new(0.5, 1.5, 0.5)

 part_3 = Instance.new("Part", mortar)
part_3.Velocity = Vector3.new(0, -0.004, 0.001)
part_3.FormFactor = Enum.FormFactor.Plate
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.RotVelocity = Vector3.new(0.001, 0, 0.001)
part_3.Material = Enum.Material.Metal
part_3.Size = Vector3.new(0.693, 0.277, 0.693)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(3.934, 3.537, 104.956)* CFrame.Angles(0.76158618927002, -0.011490537784994, -3.1306319236755)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Really black")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Name = "realbarrel"

 mesh_3 = Instance.new("CylinderMesh", part_3)
mesh_3.Scale = Vector3.new(1, 0.05, 1)

 part_4 = Instance.new("Part", mortar)
part_4.Velocity = Vector3.new(0.002, -0.003, 0)
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.RotVelocity = Vector3.new(0.001, 0, 0.001)
part_4.Material = Enum.Material.SmoothPlastic
part_4.Size = Vector3.new(0.693, 2.864, 0.693)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(3.012, 1.542, 104.668)* CFrame.Angles(1.3755918741226, 1.0502614974976, -1.5411701202393)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Really black")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_4 = Instance.new("BlockMesh", part_4)
mesh_4.Scale = Vector3.new(0.5, 1.5, 0.5)

 part_5 = Instance.new("Part", mortar)
part_5.Velocity = Vector3.new(0.001, -0.004, 0.001)
part_5.FormFactor = Enum.FormFactor.Plate
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.RotVelocity = Vector3.new(0.001, 0, 0.001)
part_5.Material = Enum.Material.Metal
part_5.Size = Vector3.new(0.693, 0.277, 0.693)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(3.937, 3.336, 104.765)* CFrame.Angles(0.76158618927002, -0.011490537784994, -3.1306319236755)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Dark stone grey")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_5 = Instance.new("CylinderMesh", part_5)
mesh_5.Scale = Vector3.new(1.8, 2, 1.8)

local rocket = Instance.new("Model")
rocket.Name = "Rocket"

detection = Instance.new("Part", rocket)
detection.FormFactor = Enum.FormFactor.Plate
detection.Transparency = 1
detection.TopSurface = Enum.SurfaceType.Smooth
detection.Size = Vector3.new(1, 2.948, 1)
detection.Name = "detection"
detection.CFrame = CFrame.new(3.942, 3.349, 104.659)* CFrame.Angles(-2.3487484455109, -0.00067903328454122, 3.1409056186676)
detection.BrickColor = BrickColor.new("Dark stone grey")
detection.Friction = 0.3
detection.BottomSurface = Enum.SurfaceType.Smooth

 part_6 = Instance.new("Part", rocket)
part_6.FormFactor = Enum.FormFactor.Plate
part_6.TopSurface = Enum.SurfaceType.Smooth
part_6.Size = Vector3.new(1, 0.4, 1)
part_6.CFrame = CFrame.new(3.942, 2.547, 103.973)* CFrame.Angles(0.79284429550171, -1.5707963705063, 0)
part_6.BrickColor = BrickColor.new("Dark stone grey")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.Smooth

 mesh_6 = Instance.new("SpecialMesh", part_6)
mesh_6.Scale = Vector3.new(0.3, 5, 0.3)

 part_7 = Instance.new("Part", rocket)
part_7.FormFactor = Enum.FormFactor.Plate
part_7.TopSurface = Enum.SurfaceType.Smooth
part_7.Size = Vector3.new(1, 0.4, 1)
part_7.CFrame = CFrame.new(3.941, 2.961, 104.393)* CFrame.Angles(0.79284429550171, 1.5707963705063, 0)
part_7.BrickColor = BrickColor.new("Dark stone grey")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.Smooth
part_7.Name = "rockethandle"

 mesh_7 = Instance.new("SpecialMesh", part_7)
mesh_7.Scale = Vector3.new(0.4, 0.4, 0.34)

 part_8 = Instance.new("Part", rocket)
part_8.FormFactor = Enum.FormFactor.Plate
part_8.TopSurface = Enum.SurfaceType.Smooth
part_8.Size = Vector3.new(1, 0.4, 1)
part_8.CFrame = CFrame.new(3.94, 3.972, 105.405)* CFrame.Angles(0.79284429550171, -1.5707963705063, 0)
part_8.BrickColor = BrickColor.new("Earth green")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.Smooth

 mesh_8 = Instance.new("SpecialMesh", part_8)
mesh_8.Scale = Vector3.new(0.2, 2.5, 0.3)

 part_9 = Instance.new("Part", rocket)
part_9.FormFactor = Enum.FormFactor.Plate
part_9.TopSurface = Enum.SurfaceType.Smooth
part_9.Size = Vector3.new(1, 0.4, 1)
part_9.CFrame = CFrame.new(3.941, 3.263, 104.7)* CFrame.Angles(0.79284429550171, -1.5707963705063, 0)
part_9.BrickColor = BrickColor.new("Earth green")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.Smooth

 mesh_9 = Instance.new("SpecialMesh", part_9)
mesh_9.Scale = Vector3.new(0.31, 1.5, 0.39)

 part_10 = Instance.new("Part", rocket)
part_10.FormFactor = Enum.FormFactor.Plate
part_10.TopSurface = Enum.SurfaceType.Smooth
part_10.Size = Vector3.new(1, 0.4, 1)
part_10.CFrame = CFrame.new(3.941, 3.656, 105.084)* CFrame.Angles(0.79284429550171, -1.5707963705063, 0)
part_10.BrickColor = BrickColor.new("Earth green")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.Smooth

 mesh_10 = Instance.new("SpecialMesh", part_10)
mesh_10.Scale = Vector3.new(0.365, 0.65, 0.365)
mesh_10.MeshId = "http://www.roblox.com/asset/?id=1527559"
mesh_10.MeshType = Enum.MeshType.FileMesh

 detector = Instance.new("Part", rocket)
detector.FormFactor = Enum.FormFactor.Plate
detector.Transparency = 1
detector.TopSurface = Enum.SurfaceType.Smooth
detector.Size = Vector3.new(1, 0.4, 1)
detector.Name = "detector"
detector.CFrame = CFrame.new(3.94, 3.8, 105.19)* CFrame.Angles(-3.1415927410126, 0.00041140167741105, -3.8131439339395e-008)
detector.BrickColor = BrickColor.new("Earth green")
detector.Friction = 0.3
detector.BottomSurface = Enum.SurfaceType.Smooth

 part_11 = Instance.new("Part", mortar)
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Material = Enum.Material.SmoothPlastic
part_11.Size = Vector3.new(1.968, 0.2, 2)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(3.987, 0.102, 102)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Really black")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Name = "floor"

mortar.Parent = char
mortar:BreakJoints()
rocket:BreakJoints()

local prev
local parts = mortar:GetChildren()

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
mortar:MakeJoints()

local prev
local parts = rocket:GetChildren()

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
rocket:MakeJoints()

tor["Left Shoulder"].Part1 = nil
weld(la, tor, CFrame.new(1.5,.2,.2)*CFrame.Angles(math.rad(-30),0,0))
weld(mortar.Handle, la, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
mortar.Handle.Weld.Name = "Weld2"

local Handle = mortar.Handle
local apressed = false
local dpressed = false
local wpressed = false
local spressed = false
local ppressed = 0
local vpressed = 0
local angle = 0
local angle2 = -30
local crouched = 0
local loaded = false
local watchcam = false
local mortarstrength = -150
local mortarheight = 150
local blastpressure= 21000
local blastradius = 14
local exploding = false

local mortarfire = Instance.new("Sound")
mortarfire.SoundId="rbxassetid://151776307"
mortarfire.PlayOnRemove=false
mortarfire.Volume=1
mortarfire.Looped=false
mortarfire.Pitch = 1
mortarfire.Parent=mortar.shroud

local mortarreload = Instance.new("Sound")
mortarreload.SoundId="rbxassetid://406798420"
mortarreload.PlayOnRemove=false
mortarreload.Volume=.8
mortarreload.Looped=false
mortarreload.Pitch = 1
mortarreload.Parent=mortar.shroud

local mortargui = Instance.new("ScreenGui", player.PlayerGui)
mortargui.Name = "MortarGui"

local textlabel = Instance.new("TextLabel", mortargui)
textlabel.BorderSizePixel = 0
textlabel.BackgroundColor3 = Color3.new(0.466667, 0.466667, 0.466667)
textlabel.Size = UDim2.new(0, 60, 0, 20)
textlabel.TextColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
textlabel.BorderColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
textlabel.Text = "Height:"
textlabel.Position = UDim2.new(0.841, 0, 0.204, 7)

local textlabel2 = Instance.new("TextLabel", mortargui)
textlabel2.BorderSizePixel = 0
textlabel2.BackgroundColor3 = Color3.new(0.466667, 0.466667, 0.466667)
textlabel2.Size = UDim2.new(0, 60, 0, 20)
textlabel2.TextColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
textlabel2.BorderColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
textlabel2.Text = "X Axis:"
textlabel2.Position = UDim2.new(0.841, 0, 0.254, 7)

local armyhelmet = Instance.new("Model", char)
armyhelmet.Name = "ArmyHelmet"

 part = Instance.new("Part", armyhelmet)
part.FormFactor = Enum.FormFactor.Custom
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Size = Vector3.new(0.45, 0.2, 0.2)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(3.779, 0.7, -176.625)* CFrame.Angles(1.3066229820251, -1.1172529459, -0.28729918599129)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Brown")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 texture = Instance.new("Texture", part)
texture.Texture = "http://www.roblox.com/asset/?id=11063690"
texture.Transparency = 0.6
texture.StudsPerTileV = 40
texture.Face = Enum.NormalId.Bottom
texture.StudsPerTileU = 40

 texture_2 = Instance.new("Texture", part)
texture_2.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_2.Transparency = 0.6
texture_2.StudsPerTileV = 40
texture_2.Face = Enum.NormalId.Top
texture_2.StudsPerTileU = 40

 texture_3 = Instance.new("Texture", part)
texture_3.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_3.Transparency = 0.6
texture_3.StudsPerTileV = 40
texture_3.Face = Enum.NormalId.Back
texture_3.StudsPerTileU = 40

 texture_4 = Instance.new("Texture", part)
texture_4.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_4.Transparency = 0.6
texture_4.StudsPerTileV = 40
texture_4.Face = Enum.NormalId.Right
texture_4.StudsPerTileU = 40

 texture_5 = Instance.new("Texture", part)
texture_5.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_5.Transparency = 0.6
texture_5.StudsPerTileV = 40
texture_5.Face = Enum.NormalId.Left
texture_5.StudsPerTileU = 40

 texture_6 = Instance.new("Texture", part)
texture_6.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_6.StudsPerTileV = 40
texture_6.Face = Enum.NormalId.Bottom
texture_6.StudsPerTileU = 40

 part_2 = Instance.new("Part", armyhelmet)
part_2.FormFactor = Enum.FormFactor.Custom
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Size = Vector3.new(0.219, 0.2, 0.2)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(3.971, 0.258, -176.77)* CFrame.Angles(1.3064686059952, -1.1172366142273, -1.2862546443939)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Brown")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 texture_7 = Instance.new("Texture", part_2)
texture_7.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_7.Transparency = 0.6
texture_7.StudsPerTileV = 40
texture_7.Face = Enum.NormalId.Bottom
texture_7.StudsPerTileU = 40

 texture_8 = Instance.new("Texture", part_2)
texture_8.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_8.StudsPerTileV = 40
texture_8.Face = Enum.NormalId.Bottom
texture_8.StudsPerTileU = 40

 texture_9 = Instance.new("Texture", part_2)
texture_9.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_9.Transparency = 0.6
texture_9.StudsPerTileV = 40
texture_9.Face = Enum.NormalId.Top
texture_9.StudsPerTileU = 40

 texture_10 = Instance.new("Texture", part_2)
texture_10.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_10.Transparency = 0.6
texture_10.StudsPerTileV = 40
texture_10.Face = Enum.NormalId.Left
texture_10.StudsPerTileU = 40

 texture_11 = Instance.new("Texture", part_2)
texture_11.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_11.Transparency = 0.6
texture_11.StudsPerTileV = 40
texture_11.Face = Enum.NormalId.Back
texture_11.StudsPerTileU = 40

 texture_12 = Instance.new("Texture", part_2)
texture_12.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_12.Transparency = 0.6
texture_12.StudsPerTileV = 40
texture_12.Face = Enum.NormalId.Right
texture_12.StudsPerTileU = 40

 part_3 = Instance.new("Part", armyhelmet)
part_3.FormFactor = Enum.FormFactor.Custom
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Size = Vector3.new(0.252, 0.2, 0.2)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(3.915, 0.397, -176.666)* CFrame.Angles(1.3064651489258, -1.1172343492508, -0.50085496902466)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Brown")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 texture_13 = Instance.new("Texture", part_3)
texture_13.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_13.Transparency = 0.6
texture_13.StudsPerTileV = 40
texture_13.Face = Enum.NormalId.Right
texture_13.StudsPerTileU = 40

 texture_14 = Instance.new("Texture", part_3)
texture_14.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_14.Transparency = 0.6
texture_14.StudsPerTileV = 40
texture_14.Face = Enum.NormalId.Left
texture_14.StudsPerTileU = 40

 texture_15 = Instance.new("Texture", part_3)
texture_15.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_15.Transparency = 0.6
texture_15.StudsPerTileV = 40
texture_15.Face = Enum.NormalId.Top
texture_15.StudsPerTileU = 40

 texture_16 = Instance.new("Texture", part_3)
texture_16.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_16.Transparency = 0.6
texture_16.StudsPerTileV = 40
texture_16.Face = Enum.NormalId.Back
texture_16.StudsPerTileU = 40

 texture_17 = Instance.new("Texture", part_3)
texture_17.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_17.StudsPerTileV = 40
texture_17.Face = Enum.NormalId.Bottom
texture_17.StudsPerTileU = 40

 texture_18 = Instance.new("Texture", part_3)
texture_18.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_18.Transparency = 0.6
texture_18.StudsPerTileV = 40
texture_18.Face = Enum.NormalId.Bottom
texture_18.StudsPerTileU = 40

 part_4 = Instance.new("Part", armyhelmet)
part_4.FormFactor = Enum.FormFactor.Custom
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Size = Vector3.new(0.276, 0.244, 0.244)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(3.889, 0.227, -177.778)* CFrame.Angles(-1.8351237773895, 1.1172391176224, -0.80814719200134)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Brown")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("BlockMesh", part_4)
mesh.Scale = Vector3.new(1, 0.337, 0.449)

 texture_19 = Instance.new("Texture", part_4)
texture_19.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_19.Transparency = 0.6
texture_19.StudsPerTileV = 40
texture_19.Face = Enum.NormalId.Bottom
texture_19.StudsPerTileU = 40

 texture_20 = Instance.new("Texture", part_4)
texture_20.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_20.Transparency = 0.6
texture_20.StudsPerTileV = 40
texture_20.Face = Enum.NormalId.Left
texture_20.StudsPerTileU = 40

 texture_21 = Instance.new("Texture", part_4)
texture_21.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_21.Transparency = 0.6
texture_21.StudsPerTileV = 40
texture_21.Face = Enum.NormalId.Top
texture_21.StudsPerTileU = 40

 texture_22 = Instance.new("Texture", part_4)
texture_22.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_22.Transparency = 0.6
texture_22.StudsPerTileV = 40
texture_22.Face = Enum.NormalId.Right
texture_22.StudsPerTileU = 40

 texture_23 = Instance.new("Texture", part_4)
texture_23.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_23.Transparency = 0.6
texture_23.StudsPerTileV = 40
texture_23.Face = Enum.NormalId.Back
texture_23.StudsPerTileU = 40

 texture_24 = Instance.new("Texture", part_4)
texture_24.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_24.StudsPerTileV = 40
texture_24.Face = Enum.NormalId.Bottom
texture_24.StudsPerTileU = 40

 part_5 = Instance.new("Part", armyhelmet)
part_5.FormFactor = Enum.FormFactor.Custom
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.Size = Vector3.new(0.277, 0.244, 0.244)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(3.802, 0.374, -177.896)* CFrame.Angles(-1.8388863801956, 1.1238970756531, -0.019356932491064)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Brown")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_2 = Instance.new("BlockMesh", part_5)
mesh_2.Scale = Vector3.new(1, 0.444, 0.449)

 texture_25 = Instance.new("Texture", part_5)
texture_25.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_25.Transparency = 0.6
texture_25.StudsPerTileV = 40
texture_25.Face = Enum.NormalId.Back
texture_25.StudsPerTileU = 40

 texture_26 = Instance.new("Texture", part_5)
texture_26.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_26.Transparency = 0.6
texture_26.StudsPerTileV = 40
texture_26.Face = Enum.NormalId.Left
texture_26.StudsPerTileU = 40

 texture_27 = Instance.new("Texture", part_5)
texture_27.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_27.Transparency = 0.6
texture_27.StudsPerTileV = 40
texture_27.Face = Enum.NormalId.Right
texture_27.StudsPerTileU = 40

 texture_28 = Instance.new("Texture", part_5)
texture_28.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_28.Transparency = 0.6
texture_28.StudsPerTileV = 40
texture_28.Face = Enum.NormalId.Top
texture_28.StudsPerTileU = 40

 texture_29 = Instance.new("Texture", part_5)
texture_29.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_29.Transparency = 0.6
texture_29.StudsPerTileV = 40
texture_29.Face = Enum.NormalId.Bottom
texture_29.StudsPerTileU = 40

 texture_30 = Instance.new("Texture", part_5)
texture_30.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_30.StudsPerTileV = 40
texture_30.Face = Enum.NormalId.Bottom
texture_30.StudsPerTileU = 40

 part_6 = Instance.new("Part", armyhelmet)
part_6.FormFactor = Enum.FormFactor.Custom
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.Size = Vector3.new(0.481, 0.244, 0.244)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(3.652, 0.678, -177.931)* CFrame.Angles(-1.8388862609863, 1.1238969564438, 0.24244838953018)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Brown")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_3 = Instance.new("BlockMesh", part_6)
mesh_3.Scale = Vector3.new(1, 0.444, 0.449)

 texture_31 = Instance.new("Texture", part_6)
texture_31.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_31.Transparency = 0.6
texture_31.StudsPerTileV = 40
texture_31.Face = Enum.NormalId.Bottom
texture_31.StudsPerTileU = 40

 texture_32 = Instance.new("Texture", part_6)
texture_32.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_32.Transparency = 0.6
texture_32.StudsPerTileV = 40
texture_32.Face = Enum.NormalId.Back
texture_32.StudsPerTileU = 40

 texture_33 = Instance.new("Texture", part_6)
texture_33.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_33.Transparency = 0.6
texture_33.StudsPerTileV = 40
texture_33.Face = Enum.NormalId.Right
texture_33.StudsPerTileU = 40

 texture_34 = Instance.new("Texture", part_6)
texture_34.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_34.Transparency = 0.6
texture_34.StudsPerTileV = 40
texture_34.Face = Enum.NormalId.Left
texture_34.StudsPerTileU = 40

 texture_35 = Instance.new("Texture", part_6)
texture_35.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_35.Transparency = 0.6
texture_35.StudsPerTileV = 40
texture_35.Face = Enum.NormalId.Top
texture_35.StudsPerTileU = 40

 texture_36 = Instance.new("Texture", part_6)
texture_36.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_36.StudsPerTileV = 40
texture_36.Face = Enum.NormalId.Bottom
texture_36.StudsPerTileU = 40

 handle = Instance.new("Part", armyhelmet)
handle.FormFactor = Enum.FormFactor.Custom
handle.CanCollide = false
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Size = Vector3.new(1.049, 0.993, 1.019)
handle.Name = "Handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(3.561, 1.276, -177.263)* CFrame.Angles(-0.02995970658958, -1.4560277462006, -0.029769770801067)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Friction = 0.3
handle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 texture_37 = Instance.new("Texture", handle)
texture_37.Texture = "http://www.roblox.com/asset/?id=155320546"
texture_37.Transparency = 0.6
texture_37.StudsPerTileV = 25
texture_37.Face = Enum.NormalId.Right
texture_37.StudsPerTileU = 25

 texture_38 = Instance.new("Texture", handle)
texture_38.Texture = "http://www.roblox.com/asset/?id=155320546"
texture_38.Transparency = 0.6
texture_38.StudsPerTileV = 25
texture_38.Face = Enum.NormalId.Right
texture_38.StudsPerTileU = 25

 mesh_4 = Instance.new("SpecialMesh", handle)
mesh_4.Scale = Vector3.new(1.2, 1.4, 1.3)
mesh_4.MeshId = "http://www.roblox.com/asset/?id=45609892"
mesh_4.TextureId = "http://www.roblox.com/asset/?id=39468059"
mesh_4.MeshType = Enum.MeshType.FileMesh

 mesh_5 = Instance.new("SpecialMesh", handle)
mesh_5.Scale = Vector3.new(1.259, 1.39, 1.325)
mesh_5.MeshId = "http://www.roblox.com/asset/?id=45609892"
mesh_5.TextureId = "http://www.roblox.com/asset/?id=39468059"
mesh_5.MeshType = Enum.MeshType.FileMesh

 part_7 = Instance.new("Part", armyhelmet)
part_7.FormFactor = Enum.FormFactor.Custom
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.Material = Enum.Material.Granite
part_7.Size = Vector3.new(0.304, 0.244, 0.768)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(3.894, 0.25, -177.288)* CFrame.Angles(0.97581106424332, -1.3651745319366, -2.1557352542877)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Brown")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_6 = Instance.new("SpecialMesh", part_7)
mesh_6.Scale = Vector3.new(1.106, 0.523, 0.537)
mesh_6.MeshId = "http://www.roblox.com/Asset/?id=9944765"
mesh_6.MeshType = Enum.MeshType.FileMesh

 texture_39 = Instance.new("Texture", part_7)
texture_39.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_39.StudsPerTileV = 40
texture_39.Face = Enum.NormalId.Bottom
texture_39.StudsPerTileU = 40

 texture_40 = Instance.new("Texture", part_7)
texture_40.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_40.Transparency = 0.6
texture_40.StudsPerTileV = 40
texture_40.Face = Enum.NormalId.Bottom
texture_40.StudsPerTileU = 40

 texture_41 = Instance.new("Texture", part_7)
texture_41.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_41.Transparency = 0.6
texture_41.StudsPerTileV = 40
texture_41.Face = Enum.NormalId.Left
texture_41.StudsPerTileU = 40

 texture_42 = Instance.new("Texture", part_7)
texture_42.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_42.Transparency = 0.6
texture_42.StudsPerTileV = 40
texture_42.Face = Enum.NormalId.Right
texture_42.StudsPerTileU = 40

 texture_43 = Instance.new("Texture", part_7)
texture_43.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_43.Transparency = 0.6
texture_43.StudsPerTileV = 40
texture_43.Face = Enum.NormalId.Back
texture_43.StudsPerTileU = 40

 texture_44 = Instance.new("Texture", part_7)
texture_44.Texture = "http://www.roblox.com/asset/?id=11063690"
texture_44.Transparency = 0.6
texture_44.StudsPerTileV = 40
texture_44.Face = Enum.NormalId.Top
texture_44.StudsPerTileU = 40

 middle = Instance.new("Part", armyhelmet)
middle.FormFactor = Enum.FormFactor.Symmetric
middle.CanCollide = false
middle.Transparency = 1
middle.TopSurface = Enum.SurfaceType.Smooth
middle.Material = Enum.Material.SmoothPlastic
middle.Size = Vector3.new(2, 1, 1)
middle.Name = "Middle"
middle.CFrame = CFrame.new(3.503, 0.693, -177.288)* CFrame.Angles(-1.4918479962489e-007, -1.5707963705063, 0)
middle.BrickColor = BrickColor.new("Brick yellow")
middle.Friction = 0.3

 mesh_7 = Instance.new("SpecialMesh", middle)
mesh_7.Scale = Vector3.new(1.25, 1.25, 2)
armyhelmet:BreakJoints()
local prev
local parts = armyhelmet:GetChildren()

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
armyhelmet:MakeJoints()
weld(armyhelmet.Middle, char.Head, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))


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
	Handle.Weld.C0 = CFrame.new(-1,.2,0)*CFrame.Angles(math.rad(30),0,0)
	tor["Right Shoulder"].Part1 = nil
	weld(ra, tor, CFrame.new(-.5,.8,.5)*CFrame.Angles(math.rad(-90),-.2,0))
	
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
	Handle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
	if ra:FindFirstChild("Weld") then ra.Weld:Destroy() end
	tor["Right Shoulder"].Part1 = ra
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
	while apressed == true and crouched == 1 do wait(.05)
	angle = angle - .05
	textlabel2.Text = "X Axis:"..angle
	if angle <= -0.5 then angle = -0.5 end
	la.Weld.C0 = CFrame.new(1.5,.2,.2)*CFrame.Angles(math.rad(angle2),angle,0)
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
	while dpressed == true and crouched == 1 do wait(.05)
	angle = angle + .05
	textlabel2.Text = "X Axis:"..angle
	if angle >= 0.5 then angle = 0.5 end
	la.Weld.C0 = CFrame.new(1.5,.2,.2)*CFrame.Angles(math.rad(angle2),angle,0)
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
	textlabel.Text = "Height:"..-angle2
	la.Weld.C0 = CFrame.new(1.5,.2,.2)*CFrame.Angles(math.rad(angle2),angle,0)
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
	textlabel.Text = "Height:"..-angle2
	la.Weld.C0 = CFrame.new(1.5,.2,.2)*CFrame.Angles(math.rad(angle2),angle,0)
	end
end
end)
mouse.KeyUp:connect(function(key)
if key == "s" then
	spressed = false
end
end)

function reload()
if loaded == false then
loaded = true
cancrouch = false
local rocketc = rocket:Clone()
rocketc.Parent = char
weld(rocketc.detector, ra, CFrame.new(0,2,1)*CFrame.Angles(math.rad(0),.2,0))
--X is left and right Y is fowards and backwards Z is up and down
mortarreload:Play()
ra.Weld.C0 = CFrame.new(-1,1,.5)*CFrame.Angles(math.rad(-90),-.2,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.2,1)*CFrame.Angles(math.rad(-90),-.2,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.4,1.2)*CFrame.Angles(math.rad(-90),-.2,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.6,1.2)*CFrame.Angles(math.rad(-90),-.4,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.8,1.2)*CFrame.Angles(math.rad(-90),-.45,0)
wait(.5)
ra.Weld.C0 = CFrame.new(-1,1.8,1.2)*CFrame.Angles(math.rad(-88),-.45,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.8,1.2)*CFrame.Angles(math.rad(-86),-.45,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.8,1.2)*CFrame.Angles(math.rad(-84),-.45,0)
mortarreload:Stop()
rocketc.detector.Weld:Destroy()
rocketc.Parent = mortar
weld(rocketc.detector, mortar.shroud, CFrame.new(0,2.2,1.8)* CFrame.Angles(-15, 0.00041140167741105, -3.8131439339395e-008))
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.8,1.2)*CFrame.Angles(math.rad(-86),-.45,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.8,1.2)*CFrame.Angles(math.rad(-88),-.45,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.8,1.2)*CFrame.Angles(math.rad(-90),-.45,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.6,1.2)*CFrame.Angles(math.rad(-90),-.4,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1.4,1.2)*CFrame.Angles(math.rad(-90),-.2,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-1,1,.5)*CFrame.Angles(math.rad(-90),-.2,0)
wait(.1)
ra.Weld.C0 = CFrame.new(-.5,.8,.5)*CFrame.Angles(math.rad(-90),-.2,0)
cancrouch = true
end
end

function fire()
if loaded == true and crouched == 1 and cancrouch == true then
	loaded = false
	mortarfire:Play()
	local rocketc = mortar.Rocket
	rocketc.detector.Weld:Destroy()
	rocketc.Parent = workspace
	rocketc.detector.CFrame = rocketc.detector.CFrame*CFrame.new(0,0,-3)
	if watchcam == true then camera.CameraSubject = rocketc.detector end
	local fire = Instance.new("Fire",rocketc.rockethandle)
	game.Debris:AddItem(rocketc,8)
	rocketc.rockethandle.Velocity = mortar.shroud.CFrame.lookVector * mortarstrength + Vector3.new(0,mortarheight,0)
	local bodythrust = Instance.new("BodyThrust", rocketc.rockethandle)
bodythrust.force = Vector3.new(0, 100, 0)
	local mortarwhistle = Instance.new("Sound")
	mortarwhistle.SoundId="rbxassetid://377331780"
	mortarwhistle.PlayOnRemove=false
	mortarwhistle.Volume=1.5
	mortarwhistle.Looped=true
	mortarwhistle.Pitch = 1
	mortarwhistle.Parent=rocketc.detection
	mortarwhistle:Play()
	coroutine.resume(coroutine.create(function()
	mortar.realbarrel.BrickColor = BrickColor.new("Bright orange")
	wait(.1)
	mortar.realbarrel.BrickColor = BrickColor.new("Really black")
end))
rocketc.detection.Touched:connect(function(h)
if exploding == false then
exploding = true
wait()
print(h)
if (not h:isDescendantOf(rocketc)) then
if not h.Name:lower():find("base") then
	h.Anchored = false
				h.Velocity  = char.Head.CFrame.lookVector*50
	            h:BreakJoints()
	if h.Parent:FindFirstChild("Humanoid") then h.Parent.Humanoid:TakeDamage(9000) end
	if h.Parent.className=="Model" then
		h.Parent:BreakJoints()
	end
end
--local boom = Instance.new("Part", workspace)
--boom.TopSurfaceInput = Enum.InputType.Constant
--boom.Transparency = 0.4
--boom.TopSurface = Enum.SurfaceType.Smooth
--boom.TopParamA = -0.1
--boom.TopParamB = 0.1
--boom.Size = Vector3.new(2, 1.2, 2)
--boom.Name = "boom"
--boom.Anchored = true
--boom.BrickColor = BrickColor.new("Bright yellow")
--boom.Friction = 0.3
--boom.BottomSurface = Enum.SurfaceType.Smooth
--if rocketc:FindFirstChild("detection") then boom.Position = rocketc.detection.Position end
--game.Debris:AddItem(boom,2.5)

--local blastmesh = Instance.new("SpecialMesh", boom)
--blastmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
--blastmesh.Name = "BlastMesh"
--blastmesh.MeshType = Enum.MeshType.FileMesh

rocketc.detection.Velocity = Vector3.new(0,0,0)
bodythrust:Destroy()

wait(.1)

local explosion = Instance.new("Explosion",workspace)
	    explosion.Position = rocketc.Part.Position
		explosion.BlastPressure = blastpressure
		explosion.BlastRadius = blastradius
		explosion.DestroyJointRadiusPercent = 1
		explosion.ExplosionType = Enum.ExplosionType.CratersAndDebris

		local s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=180199726"
s.PlayOnRemove=false
s.Volume=1
s.Looped=false
s.Pitch = 1
s.Parent=explosion
s:Play()

rocketc:Destroy()
exploding = false

if watchcam == true then camera.CameraSubject = char.Humanoid end


--coroutine.resume(coroutine.create(function()
--blastmesh.Scale = Vector3.new(1,1,1)
--wait()
--blastmesh.Scale = Vector3.new(2,2,2)
--wait()
--blastmesh.Scale = Vector3.new(3,3,3)
--wait()
--blastmesh.Scale = Vector3.new(4,4,4)
--end))
--coroutine.resume(coroutine.create(function()
--while (boom) do
--wait()
--boom.Transparency=boom.Transparency+.1
--end
--end))	
end
end
end)
end
end

mouse.KeyDown:connect(function(key)
if key == "r" and crouched == 1 then
	reload()
end
end)

mouse.Button1Down:connect(function()
		fire()
end)

mouse.KeyDown:connect(function(key)
if key == "p" then
	ppressed = ppressed + 1
	if ppressed == 1 then
		watchcam = true
		print("Watching Missile")
	end
	if ppressed == 2 then
		ppressed = 0
		watchcam = false
		print("Not Watching Missile")
	end
end
end)
mouse.KeyDown:connect(function(key)
if key == "v" then
	vpressed = vpressed + 1
	if vpressed == 1 then
		print("Realistic Mortar Strength")
		mortarstrength = -50
		mortarheight = 400
		blastradius = 20
	end
	if vpressed == 2 then
		print("Long Range Mortar Strength")
		mortarstrength = -150
		mortarheight = 400
		blastradius = 30
	end
	if vpressed == 3 then
		vpressed = 0
		print("Arcade Mortar Strength")
		mortarstrength = -150
		mortarheight = 150 
		blastpressure= 21000
		blastradius = 14
	end
end
end)

bin.Deselected:connect(function()
	mortar:Destroy()
	canfire = false
	if crouched == 1 then crouched = 0 uncrouch() end
	if la:FindFirstChild("Weld") then la.Weld:Destroy() end
	tor["Left Shoulder"].Part1 = la
	if ra:FindFirstChild("Weld") then ra.Weld:Destroy() end
	tor["Right Shoulder"].Part1 = ra
	camera.CameraSubject = char.Humanoid
	mortargui:Destroy()
	armyhelmet:Destroy()
end)
end)
end)