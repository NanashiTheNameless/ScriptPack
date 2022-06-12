local players = game:GetService("Players") 
local workspac = game:GetService("Workspace") 
Me = players.LocalPlayer
char = Me.Character
name = Me.Name 
local pg = Me.PlayerGui 
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]
local attakin = false 
local MainColor = "Black" 
local MainColor2 = "Mid stone grey" 
local MainColor3 = "Dark stone grey" 
Ids = {
Wave = "http://www.roblox.com/asset/?id=20329976", 
} 
function create(prt, parent, siz, cf, can, col, anc, brea, tran, ref, form, weld, part1, cf2, mesh, sca, type, id, bckup) 
part = Instance.new(prt) 
part.Material = "SmoothPlastic"
part.formFactor = form 
part.BrickColor = BrickColor.new(col) 
part.Size = siz 
part.Anchored = anc 
part.Transparency = tran 
part.Name = "ShipPart" 
part.Reflectance = ref 
part.CFrame = cf 
part.CanCollide = can 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
if brea == true then 
part:BreakJoints() 
end 
if weld == true then 
weld = Instance.new("Weld") 
weld.Part0 = part 
weld.Part1 = part1 
weld.C1 = cf2 
weld.Parent = part 
end 
if mesh ~= nil then 
mesh = Instance.new(mesh) 
mesh.Scale = sca 
if bckup == true then 
mesh.MeshType = "Sphere" 
end 
if mesh == "SpecialMesh" then 
mesh.MeshType = type 
pcall(function() 
if type == "Wedge" then 
mesh.MeshType = "Wedge" 
end 
if type == "FileMesh" then 
mesh.MeshType = "FileMesh" 
mesh.MeshId = id 
end 
end)
end 
mesh.Parent = part 
end 
part.Parent = parent 
 return part,weld 
end 
pcall(function() char[":P"]:remove() end)
pcall(function() char["Blade"]:remove() end) 
local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "Blade"
--armwelds
local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()
local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)
local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()
local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)
local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)
local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0) 
--sword1
local han,hanweld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, Rarm, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(90), 0, 0), "CylinderMesh", Vector3.new(0.25, 1, 0.25), type, id, bckup) 
local han2,hanweld2 = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, han, CFrame.new(0, 0.4, 0.125)*CFrame.Angles(math.rad(-22.5/2), 0, 0), "BlockMesh", Vector3.new(0.25, 0.25, 0.75), type, id, bckup) 
local han3,hanweld3 = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, han, CFrame.new(0, -0.4, 0.125)*CFrame.Angles(math.rad(0), 0, 0), "BlockMesh", Vector3.new(0.25, 0.25, 0.75), type, id, bckup) 
local han4,hanweld4 = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, han, CFrame.new(0, 0, 0.5)*CFrame.Angles(math.rad(0), 0, 0), "BlockMesh", Vector3.new(0.25, 1.25, 0.25), type, id, bckup) 
local han5,hanweld5 = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, han, CFrame.new(0, -0.55, 0.135)*CFrame.Angles(math.rad(-25), 0, 0), "BlockMesh", Vector3.new(0.25, 0.5, 0.75), type, id, bckup) 
local bla,blaweld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, han, CFrame.new(0, -0.75, 0.25)*CFrame.Angles(math.rad(0), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup) 
local bla2,bla2weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, bla, CFrame.new(0, 0.125/2, 0.125/2)*CFrame.Angles(math.rad(25), 0, 0), "BlockMesh", Vector3.new(0.249, 0.35, 0.5), type, id, bckup) 
local bla3,bla3weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, bla, CFrame.new(0, -0.475, 0.025)*CFrame.Angles(math.rad(-6.25), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup)
local bla4,bla4weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, bla, CFrame.new(0, -0.475*1.95, 0.025*4)*CFrame.Angles(math.rad(-6.25*2), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup)
local bla5,bla5weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, bla, CFrame.new(0, -0.475*2.9, 0.025*9)*CFrame.Angles(math.rad(-6.25*3), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup)
local bla6,bla6weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, bla, CFrame.new(0, -0.475*3.8, 0.025*16)*CFrame.Angles(math.rad(-6.25*4), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup) 
local bla7,bla7weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, bla, CFrame.new(0, -0.475*4.65, 0.025*25)*CFrame.Angles(math.rad(-6.25*5), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup) 
local bla8,bla8weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, bla, CFrame.new(0, -0.475*5.45, 0.025*36)*CFrame.Angles(math.rad(-6.25*6), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup) 
local spi,spiweld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla3, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi2,spi2weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla3, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi3,spi3weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla4, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi4,spi4weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla4, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi5,spi5weld = create("WedgePart", Model2, Vector3.new(0.249, 0.4, 0.4), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla5, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi6,spi6weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla5, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi7,spi7weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla6, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi8,spi8weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla6, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi9,spi9weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla7, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi10,spi10weld = create("WedgePart", Model2, Vector3.new(0.249, 0.4, 0.4), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla7, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi11,spi11weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla8, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi12,spi12weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, bla8, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local spi13,spi13weld = create("WedgePart", Model2, Vector3.new(0.249, 0.65, 0.5), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, bla8, CFrame.new(0, -0.2, 0.15)*CFrame.Angles(math.rad(50), 0, 0)) 
--sword2
local shan,shanweld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, Larm, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(90), 0, 0), "CylinderMesh", Vector3.new(0.25, 1, 0.25), type, id, bckup) 
local shan2,shanweld2 = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, shan, CFrame.new(0, 0.4, 0.125)*CFrame.Angles(math.rad(-22.5/2), 0, 0), "BlockMesh", Vector3.new(0.25, 0.25, 0.75), type, id, bckup) 
local shan3,shanweld3 = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, shan, CFrame.new(0, -0.4, 0.125)*CFrame.Angles(math.rad(0), 0, 0), "BlockMesh", Vector3.new(0.25, 0.25, 0.75), type, id, bckup) 
local shan4,shanweld4 = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, shan, CFrame.new(0, 0, 0.5)*CFrame.Angles(math.rad(0), 0, 0), "BlockMesh", Vector3.new(0.25, 1.25, 0.25), type, id, bckup) 
local shan5,shanweld5 = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor, false, true, 0, 0, "Custom", true, shan, CFrame.new(0, -0.55, 0.135)*CFrame.Angles(math.rad(-25), 0, 0), "BlockMesh", Vector3.new(0.25, 0.5, 0.75), type, id, bckup) 
local sbla,sblaweld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, shan, CFrame.new(0, -0.75, 0.25)*CFrame.Angles(math.rad(0), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup) 
local sbla2,sbla2weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, sbla, CFrame.new(0, 0.125/2, 0.125/2)*CFrame.Angles(math.rad(25), 0, 0), "BlockMesh", Vector3.new(0.249, 0.35, 0.5), type, id, bckup) 
local sbla3,sbla3weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, sbla, CFrame.new(0, -0.475, 0.025)*CFrame.Angles(math.rad(-6.25), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup)
local sbla4,sbla4weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, sbla, CFrame.new(0, -0.475*1.95, 0.025*4)*CFrame.Angles(math.rad(-6.25*2), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup)
local sbla5,sbla5weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, sbla, CFrame.new(0, -0.475*2.9, 0.025*9)*CFrame.Angles(math.rad(-6.25*3), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup)
local sbla6,sbla6weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, sbla, CFrame.new(0, -0.475*3.8, 0.025*16)*CFrame.Angles(math.rad(-6.25*4), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup) 
local sbla7,sbla7weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, sbla, CFrame.new(0, -0.475*4.65, 0.025*25)*CFrame.Angles(math.rad(-6.25*5), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup) 
local sbla8,sbla8weld = create("Part", Model2, Vector3.new(1, 1, 1), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, sbla, CFrame.new(0, -0.475*5.45, 0.025*36)*CFrame.Angles(math.rad(-6.25*6), 0, 0), "BlockMesh", Vector3.new(0.249, 0.5, 0.5), type, id, bckup) 
local sspi,sspiweld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla3, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi2,sspi2weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla3, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi3,sspi3weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla4, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi4,sspi4weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla4, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi5,sspi5weld = create("WedgePart", Model2, Vector3.new(0.249, 0.4, 0.4), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla5, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi6,sspi6weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla5, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi7,sspi7weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla6, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi8,sspi8weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla6, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi9,sspi9weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla7, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi10,sspi10weld = create("WedgePart", Model2, Vector3.new(0.249, 0.4, 0.4), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla7, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi11,sspi11weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla8, CFrame.new(0, 0.25, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi12,sspi12weld = create("WedgePart", Model2, Vector3.new(0.249, 0.2, 0.2), CFrame.new(0, 5, 0), false, MainColor3, false, true, 0, 0, "Custom", true, sbla8, CFrame.new(0, 0, 0.25)*CFrame.Angles(math.rad(-45), 0, 0)) 
local sspi13,sspi13weld = create("WedgePart", Model2, Vector3.new(0.249, 0.65, 0.5), CFrame.new(0, 5, 0), false, MainColor2, false, true, 0, 0, "Custom", true, sbla8, CFrame.new(0, -0.2, 0.15)*CFrame.Angles(math.rad(50), 0, 0)) 
--otha funcs
function ring()
local ring = Instance.new("Part", workspace) 
ring.formFactor = "Custom" 
ring.BrickColor = BrickColor.new("White") 
ring.Size = Vector3.new(10, 0.5, 10) 
ring.Anchored = true 
ring.Transparency = 0.75 
ring.CanCollide = false 
ring.CFrame = Torso.CFrame * CFrame.new(0, 0.2, 0) 
local ringm = Instance.new("CylinderMesh", ring) 
ringm.Scale = Vector3.new(1, 0.25, 1) 
coroutine.resume(coroutine.create(function() 
wait(0.15) 
ring:remove() 
end)) 
end 
--anims
function spin() 
local spinz = false 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new() * CFrame.Angles(0, 0, math.rad(90*i)) 
LAW.C0 = CFrame.new() * CFrame.Angles(0, 0, math.rad(-90*i)) 
wait() 
end 
local bv = Instance.new("BodyAngularVelocity")
bv.Parent = Torso
bv.angularvelocity = Vector3.new(0, 50, 0) 
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
spinz = true 
coroutine.resume(coroutine.create(function() 
while spinz == true do 
ring() 
wait() 
end 
end)) 
wait(2) 
bv:remove() 
spinz = false 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new() * CFrame.Angles(0, 0, math.rad(90-90*i)) 
LAW.C0 = CFrame.new() * CFrame.Angles(0, 0, math.rad(-90+90*i)) 
wait() 
end 
end 
function jump() 
char.Humanoid.Jump = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(180*i), 0, 0) 
LAW.C0 = CFrame.new() * CFrame.Angles(math.rad(180*i), 0, 0) 
wait() 
end 
wait(0.5) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(180-170*i), 0, 0) 
LAW.C0 = CFrame.new() * CFrame.Angles(math.rad(180-170*i), 0, 0) 
wait() 
end 
end 
--tool
if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Swords"
    script.Parent = h
end
local bin = script.Parent
function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
    mouse.Button1Down:connect(function()
jump() 
    end)
    mouse.KeyDown:connect(function(key)
	if key == "q" then 
spin() 
end 

    end)
end
function onDesel(mouse)
RAW.Part1 = nil 
LAW.Part1 = nil 
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
 
