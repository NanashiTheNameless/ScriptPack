--LOL :D
Player = game:GetService("Players").LocalPlayer
Char = Player.Character
RShoulder = Char.Torso['Right Shoulder']
Tool = Instance.new("HopperBin",Player.Backpack)
Tool.Name = "Acient sword"
Sun = Instance.new("Part", Char)--Sorry,"Sun" was a accident and im too lazy to fix it
Sun.FormFactor = "Custom"
Sun.Size = Vector3.new(-1, -2, 1)
Sun.TopSurface = "Smooth"
Sun.BottomSurface = "Smooth"
Sun.BrickColor = BrickColor.new("Cool yellow")
Sun.Reflectance = 0
Sun:BreakJoints()
Mesh = Instance.new("BlockMesh", Sun)
Mesh.Scale = Vector3.new(1, math.rad(-70), 1)
SunWeld = Instance.new("Weld", Char)
SunWeld.Part0 = Char["Right Arm"]
SunWeld.Part1 = Sun
SunWeld.C0 = CFrame.new(0, math.rad(-63), 0) * CFrame.Angles(0, 0, 0)
Handle = Instance.new("Part", Char)
Handle.FormFactor = "Custom"
Handle.Size = Vector3.new(-1, -1, -1)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.BrickColor = BrickColor.new("New Yeller")
Handle.Reflectance = 0
Handle:BreakJoints()
Mesh = Instance.new("SpecialMesh", Handle)
Mesh.MeshId = "http://www.roblox.com/Asset/?id=9982590"
Mesh.Scale = Vector3.new(.2, .2, .01)
HandleWeld = Instance.new("Weld", Char)
HandleWeld.Part0 = Char["Right Arm"]
HandleWeld.Part1 = Handle
HandleWeld.C0 = CFrame.new(0, math.rad(-65), math.rad(40)) * CFrame.Angles(0, math.rad(90), 0)
Detail = Instance.new("Part", Char)
Detail.FormFactor = "Custom"
Detail.Size = Vector3.new(-1, -1, -1)
Detail.TopSurface = "Smooth"
Detail.BottomSurface = "Smooth"
Detail.BrickColor = BrickColor.new("Cool yellow")
Detail.Reflectance = 0
Detail:BreakJoints()
Mesh = Instance.new("SpecialMesh", Detail)
Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Mesh.Scale = Vector3.new(1, 1, 1)
DetailWeld = Instance.new("Weld", Char)
DetailWeld.Part0 = Char["Right Arm"]
DetailWeld.Part1 = Detail
DetailWeld.C0 = CFrame.new(0, math.rad(-65), math.rad(40)) * CFrame.Angles(0, math.rad(90), 0)
M = Instance.new("Part", Char)
M.FormFactor = "Custom"
M.Size = Vector3.new(-1, -1, -1)
M.TopSurface = "Smooth"
M.BottomSurface = "Smooth"
M.BrickColor = BrickColor.new("New Yeller")
M.Reflectance = 0
M:BreakJoints()
Mesh = Instance.new("SpecialMesh", M)
Mesh.MeshId = "http://www.roblox.com/Asset/?id=9982590"
Mesh.Scale = Vector3.new(0.8, 0.8, .01)
MWeld = Instance.new("Weld", Char)
MWeld.Part0 = Char["Torso"]
MWeld.Part1 = M
MWeld.C0 = CFrame.new(0, 0, math.rad(35)) * CFrame.Angles(0, 0, 0)
--[[Rotate = coroutine.create(function()
while wait() do
MWeld.C0 = MWeld.C0 * CFrame.Angles(0, 0.05, 0)
end
end)]]--
--coroutine.resume(Rotate)
H = Instance.new("Part", Char)
H.FormFactor = "Custom"
H.Size = Vector3.new(-1, -1, -1)
H.TopSurface = "Smooth"
H.BottomSurface = "Smooth"
H.BrickColor = BrickColor.new("Bright yellow")
H.Reflectance = 0
H:BreakJoints()
Mesh = Instance.new("SpecialMesh", H)
Mesh.MeshId = "http://www.roblox.com/asset/?id=36869983"
Mesh.Scale = Vector3.new(1, 1, 1)
HWeld = Instance.new("Weld", Char)
HWeld.Part0 = Char["Torso"]
HWeld.Part1 = H
HWeld.C0 = CFrame.new(0, 0, math.rad(35)) * CFrame.Angles(0, math.rad(180), 0)
RotateSkull = coroutine.create(function()
while wait() do
HWeld.C0 = HWeld.C0 * CFrame.Angles(0, 0, 0.05)
end
end)
coroutine.resume(RotateSkull)
--Sword Making
Blade = Instance.new("Part", Char)
Blade.FormFactor = "Custom"
Blade.Size = Vector3.new(-1, 1, -1)--i always start with 1 to see how big it will get and what amount i need so to see if i will need math.rad for the size sometimes :l
Blade.TopSurface = "Smooth"
Blade.BottomSurface = "Smooth"
Blade.BrickColor = BrickColor.new("Cool yellow")--What color? :l ill just stick with Coolr yellow
Blade.Reflectance = 0
Blade:BreakJoints()
Mesh = Instance.new("BlockMesh", Blade)
Mesh.Scale = Vector3.new(1, 1, 1)
BladeWeld = Instance.new("Weld", Char)
BladeWeld.Part0 = Char["Right Arm"]
BladeWeld.Part1 = Blade
BladeWeld.C0 = CFrame.new(0, -1, math.rad(-30)) * CFrame.Angles(0, 0, 0)
O = Instance.new("Part", Char)
O.FormFactor = "Custom"
O.Size = Vector3.new(-1, -1, 5)
O.TopSurface = "Smooth"
O.BottomSurface = "Smooth"
O.BrickColor = BrickColor.new("Bright yellow")
O.Reflectance = 0
O:BreakJoints()
O.CanCollide=false
Mesh = Instance.new("BlockMesh", O)
Mesh.Scale = Vector3.new(1, 1, 1)
OWeld = Instance.new("Weld", Char)
OWeld.Part0 = Char["Right Arm"]
OWeld.Part1 = O
OWeld.C0 = CFrame.new(0, -1, math.rad(-120)) * CFrame.Angles(0, 0, 0)
S = Instance.new("WedgePart", Char)
S.FormFactor = "Custom"
S.Size = Vector3.new(-1, -1, 1)
S.TopSurface = "Smooth"
S.BottomSurface = "Smooth"
S.BrickColor = BrickColor.new("Bright yellow")
S.Reflectance = 0
S:BreakJoints()
S.CanCollide=false
SWeld = Instance.new("Weld", Char)
SWeld.Part0 = Char["Right Arm"]
SWeld.Part1 = S
SWeld.C0 = CFrame.new(0, -1, -5) * CFrame.Angles(0, 0, math.rad(178))
F = Instance.new("Part", Char)
F.FormFactor = "Custom"
F.Size = Vector3.new(1, 1, 1)
F.TopSurface = "Smooth"
F.BottomSurface = "Smooth"
F.BrickColor = BrickColor.new("Lime green")
F.Reflectance = 0
F:BreakJoints()
Mesh = Instance.new("SpecialMesh", F)
Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Mesh.Scale = Vector3.new(0.7, 0.7, 0.1)
FWeld = Instance.new("Weld", Char)
FWeld.Part0 = Char["Left Arm"]
FWeld.Part1 = F
FWeld.C0 = CFrame.new(math.rad(-30), math.rad(-10), math.rad(1)) * CFrame.Angles(0, math.rad(90), 0)
P = Instance.new("Part", Char)
P.FormFactor = "Custom"
P.Size = Vector3.new(1, 1, 1)
P.TopSurface = "Smooth"
P.BottomSurface = "Smooth"
P.BrickColor = BrickColor.new("Institutional white")
P.Reflectance = 0
P:BreakJoints()
Mesh = Instance.new("BlockMesh", P)
Mesh.Scale = Vector3.new(math.rad(60), math.rad(115), math.rad(60))
PWeld = Instance.new("Weld", Char)
PWeld.Part0 = Char["Left Arm"]
PWeld.Part1 = P
PWeld.C0 = CFrame.new(0, math.rad(4), 0) * CFrame.Angles(0, 0, 0)
D = Instance.new("Part", Char)
D.FormFactor = "Custom"
D.Size = Vector3.new(-1, -1, -1)
D.TopSurface = "Smooth"
D.BottomSurface = "Smooth"
D.BrickColor = BrickColor.new("Pastel blue-green")
D.Reflectance = 0
D:BreakJoints()
Mesh = Instance.new("SpecialMesh", D)
Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Mesh.Scale = Vector3.new(1, 1, 1)
DWeld = Instance.new("Weld", Char)
DWeld.Part0 = Char["Left Arm"]
DWeld.Part1 = D
DWeld.C0 = CFrame.new(math.rad(-30), math.rad(-10), math.rad(1)) * CFrame.Angles(0, math.rad(90), 0)
V = Instance.new("Part", Char)
V.FormFactor = "Custom"
V.Size = Vector3.new(1, 1, 1)
V.TopSurface = "Smooth"
V.BottomSurface = "Smooth"
V.BrickColor = BrickColor.new("Deep orange")
V.Reflectance = 0
V:BreakJoints()
Mesh = Instance.new("BlockMesh", V)
Mesh.Scale = Vector3.new(math.rad(120), math.rad(115), math.rad(60))
VWeld = Instance.new("Weld", Char)
VWeld.Part0 = Char["Torso"]
VWeld.Part1 = V
VWeld.C0 = CFrame.new(0, math.rad(4), 0) * CFrame.Angles(0, 0, 0)
Q = Instance.new("Part", Char)
Q.FormFactor = "Custom"
Q.Size = Vector3.new(1, 1, 1)
Q.TopSurface = "Smooth"
Q.BottomSurface = "Smooth"
Q.BrickColor = BrickColor.new("Deep orange")
Q.Reflectance = 0
Q:BreakJoints()
Mesh = Instance.new("BlockMesh", Q)
Mesh.Scale = Vector3.new(math.rad(60), math.rad(115), math.rad(60))
QWeld = Instance.new("Weld", Char)
QWeld.Part0 = Char["Right Arm"]
QWeld.Part1 = Q
QWeld.C0 = CFrame.new(0, math.rad(4), 0) * CFrame.Angles(0, 0, 0)
BIG = Instance.new("Part", Char)
BIG.FormFactor = "Custom"
BIG.Size = Vector3.new(1, 1, 1)
BIG.TopSurface = "Smooth"
BIG.BottomSurface = "Smooth"
BIG.BrickColor = BrickColor.new("Institutional white")
BIG.Reflectance = 0
BIG:BreakJoints()
Mesh = Instance.new("BlockMesh", BIG)
Mesh.Scale = Vector3.new(math.rad(80), math.rad(10), math.rad(80))
BIGWeld = Instance.new("Weld", Char)
BIGWeld.Part0 = Char["Right Leg"]
BIGWeld.Part1 = BIG 
BIGWeld.C0 = CFrame.new(0, math.rad(4), 0) * CFrame.Angles(0, 0, 0)
Je = Instance.new("Part", Char)
Je.FormFactor = "Custom"
Je.Size = Vector3.new(1, 1, 1)
Je.TopSurface = "Smooth"
Je.BottomSurface = "Smooth"
Je.BrickColor = BrickColor.new("Institutional white")
Je.Reflectance = 0
Je:BreakJoints()
Mesh = Instance.new("BlockMesh", Je)
Mesh.Scale = Vector3.new(math.rad(80), math.rad(10), math.rad(80))
JeWeld = Instance.new("Weld", Char)
JeWeld.Part0 = Char["Left Leg"]
JeWeld.Part1 = Je 
JeWeld.C0 = CFrame.new(0, math.rad(4), 0) * CFrame.Angles(0, 0, 0)
Ge = Instance.new("Part", Char)
Ge.FormFactor = "Custom"
Ge.Size = Vector3.new(1, 1, 1)
Ge.TopSurface = "Smooth"
Ge.BottomSurface = "Smooth"
Ge.BrickColor = BrickColor.new("Reddish brown")
Ge.Reflectance = 0
Ge:BreakJoints()
Mesh = Instance.new("BlockMesh", Ge)
Mesh.Scale = Vector3.new(math.rad(65), math.rad(60), math.rad(70))
GeWeld = Instance.new("Weld", Char)
GeWeld.Part0 = Char["Left Leg"]
GeWeld.Part1 = Ge 
GeWeld.C0 = CFrame.new(0, math.rad(-30), 0) * CFrame.Angles(0, 0, 0)
Le = Instance.new("Part", Char)
Le.FormFactor = "Custom"
Le.Size = Vector3.new(1, 1, 1)
Le.TopSurface = "Smooth"
Le.BottomSurface = "Smooth"
Le.BrickColor = BrickColor.new("Reddish brown")
Le.Reflectance = 0
Le:BreakJoints()
Mesh = Instance.new("BlockMesh", Le)
Mesh.Scale = Vector3.new(math.rad(65), math.rad(60), math.rad(70))
LeWeld = Instance.new("Weld", Char)
LeWeld.Part0 = Char["Right Leg"]
LeWeld.Part1 = Le 
LeWeld.C0 = CFrame.new(0, math.rad(-30), 0) * CFrame.Angles(0, 0, 0)
