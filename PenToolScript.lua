--MADE BY OneLegend (NOT THE SCRIPT) Thanks to TheRedAngel for letting me add. Feel free to take his model too. http://www.roblox.com/TheRedAngels-SB-Gift-NEW-SCRIPTS-item?id=88063410 
--LOCAL SCRIPT: JUST RUN!


local players = game:GetService("Players") 

local workspac = game:GetService("Workspace") 

Me = players.LocalPlayer

char = Me.Character

name = Me.Name 

local pg = Me.PlayerGui 

local human = char.Humanoid 

Torso = char.Torso

Rarm = char["Right Arm"]

Larm = char["Left Arm"]

Rleg = char["Right Leg"]

Lleg = char["Left Leg"]

local nummovs = 6 

local mov = 1 

local peno = false 

local currmov = 1 

local attakin = false 

local asset = "http://roblox.com/asset/?id=" 

local sounds = {

Gun = "2760979", 

Gun2 = "10209859", 

Click = "12222076", 

Imbue = "2785493", 

Ele = "2800815", 

Curse = "13775494", 

Slash = "rbxasset://sounds/swordslash.wav", 

Bow = "16211041" 

} 

function sound(id) 

local sound = Instance.new("Sound", Torso) 

sound.SoundId = id 

sound.Volume = 0.5 

sound:play() 

sound:stop() 

wait() 

sound:play() 

coroutine.resume(coroutine.create(function() 

wait(1) 

sound:remove() 

end)) 

end 

function create(prt, parent, siz, cf, can, col, anc, brea, tran, ref, form, weld, part1, cf2, mesh, sca, type, id, bckup) 

part = Instance.new(prt) 

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

pcall(function() char["Pen"]:remove() end) 

local Model = Instance.new("Model",char)

Model.Name = ":P"

local Model2 = Instance.new("Model",char)

Model2.Name = "Pen"

local Model3 = Instance.new("Model",Model2)

Model3.Name = "Staff"

local Model4 = Instance.new("Model",Model2)

Model4.Name = "Sword"

local Model5 = Instance.new("Model",Model2)

Model5.Name = "Bow"

local Model6 = Instance.new("Model",Model2)

Model6.Name = "Lantern"

local Model7 = Instance.new("Model",Model2)

Model7.Name = "Gun"

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

--pen

local shaft = create("Part", Model2, Vector3.new(0.2, 1, 0.2), CFrame.new(0,0,0), false, "Dark stone grey", false, true, 0, 0, "Custom", true, Rarm, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),0,0), "CylinderMesh", Vector3.new(0.5,1,0.5), derp, id, bckup) 

local shaft2 = create("Part", Model2, Vector3.new(0.2, 0.25, 0.2), CFrame.new(0,0,0), false, "Black", false, true, 0, 0, "Custom", true, shaft, CFrame.new(0,-0.3749,0.05)*CFrame.Angles(math.rad(0),0,0), "BlockMesh", Vector3.new(0.25,1,0.25), derp, id, bckup) 

local shaft3 = create("Part", Model2, Vector3.new(0.2, 0.2, 0.2), CFrame.new(0,0,0), false, "Black", false, true, 0, 0, "Custom", true, shaft, CFrame.new(0,-0.425,0)*CFrame.Angles(math.rad(0),0,0), "CylinderMesh", Vector3.new(0.3,1,0.3), derp, id, bckup) 

local shaft4 = create("Part", Model2, Vector3.new(0.2, 0.2, 0.2), CFrame.new(0,0,0), false, "Black", false, true, 0, 0, "Custom", true, shaft, CFrame.new(0,0.55,0)*CFrame.Angles(math.rad(0),0,0), "SpecialMesh", Vector3.new(0.05,0.15,0.05), "FileMesh", "http://www.roblox.com/asset/?id=1033714", bckup) 

shaft4.Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714" 

local led, ledw = create("Part", Model2, Vector3.new(0.2, 0.5, 0.2), CFrame.new(0,0,0), false, "Mid stone grey", false, true, 0, 0, "Custom", true, shaft, CFrame.new(0,0.375,0)*CFrame.Angles(math.rad(0),0,0), "CylinderMesh", Vector3.new(0.05,1,0.05), "FileMesh", "http://www.roblox.com/asset/?id=1033714", bckup) 

--staff

local han = create("Part", Model3, Vector3.new(0.25, 1.5, 0.25), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, Rarm, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han2 = create("Part", Model3, Vector3.new(0.5, 0.25, 0.5), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han, CFrame.new(0,0.75,0)*CFrame.Angles(math.rad(0),0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han3 = create("Part", Model3, Vector3.new(0.35, 1.5, 0.25), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han, CFrame.new(0,1.5,0.05)*CFrame.Angles(math.rad(0),0,0), "SpecialMesh", Vector3.new(1,1,1), "Wedge", id, bckup) 

han3.Mesh.MeshType = "Wedge" 

local han4 = create("Part", Model3, Vector3.new(0.35, 1.5, 0.25), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han, CFrame.new(0,1.5,-0.05)*CFrame.Angles(math.rad(0),math.rad(180),0), "SpecialMesh", Vector3.new(1,1,1), "Wedge", id, bckup) 

han4.Mesh.MeshType = "Wedge" 

local han5 = create("Part", Model3, Vector3.new(0.5, 0.25, 0.5), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.75,0)*CFrame.Angles(math.rad(0),0,0), "BlockMesh", Vector3.new(1,1,1), derp, id, bckup) 

for i = 1, 6 do 

local han6 = create("Part", Model3, Vector3.new(0.5, 0.25, 0.5), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.75-(0.25*i),0)*CFrame.Angles(math.rad(45*i),0,0), "BlockMesh", Vector3.new(1-(0.1*i),1,1), derp, id, bckup) 

end 

for i = 1, 6 do 

local han6 = create("Part", Model3, Vector3.new(0.35, 0.1, 0.35), CFrame.new(0,0,0), false, "Black", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.75+(0.25*i),0)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(1,0.5,1), derp, id, bckup) 

end 

for i = 1, 7 do 

local han6 = create("Part", Model3, Vector3.new(0.26, 0.1, 0.26), CFrame.new(0,0,0), false, "Black", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.6+(0.15*i),0)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(1,0.5,1), derp, id, bckup) 

end 

local han7 = create("Part", Model3, Vector3.new(0.5, 0.5, 0.5), CFrame.new(0,0,0), false, "Navy blue", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(0),0,0), "SpecialMesh", Vector3.new(1.5,2,1.5), derp, id, bckup) 

han7.Mesh.MeshType = "Sphere" 

han7.Name = "Orb" 

--sword

local han = create("Part", Model4, Vector3.new(0.25, 1.5, 0.25), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, Rarm, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han2 = create("Part", Model4, Vector3.new(0.5, 0.25, 0.5), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.85,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)), "SpecialMesh", Vector3.new(1,1,1), "Torso", id, bckup) 

local han3 = create("Part", Model4, Vector3.new(0.5, 0.25, 0.25), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han2, CFrame.new(0,0,0.25)*CFrame.Angles(math.rad(90),0,math.rad(-45)), "SpecialMesh", Vector3.new(1,1,1), "Torso", id, bckup) 

han3.Mesh.MeshType = "Torso" 

local han4 = create("Part", Model4, Vector3.new(0.5, 0.25, 0.25), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han2, CFrame.new(0,0,-0.25)*CFrame.Angles(math.rad(90),0,math.rad(-135)), "SpecialMesh", Vector3.new(1,1,1), "Torso", id, bckup) 

han4.Mesh.MeshType = "Torso" 

local han5 = create("Part", Model4, Vector3.new(0.3, 3, 0.2), CFrame.new(0,0,0), false, "Mid stone grey", false, true, 1, 0, "Custom", true, han2, CFrame.new(-1.5,0,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), "SpecialMesh", Vector3.new(1,1,1), "Torso", id, bckup) 

han5.Mesh.MeshType = "Torso" 

han5.Name = "Blade" 

local han7 = create("Part", Model4, Vector3.new(0.3, 0.275, 0.3), CFrame.new(0,0,0), false, "New Yeller", false, true, 1, 0, "Custom", true, han2, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), "SpecialMesh", Vector3.new(1,1,1), "Torso", id, bckup) 

--bow

local han = create("Part", Model5, Vector3.new(0.25, 1.5, 0.25), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, Rarm, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han2 = create("Part", Model5, Vector3.new(0.25, 1.5, 0.25), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-1.2,-0.5)*CFrame.Angles(math.rad(45),0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han3 = create("Part", Model5, Vector3.new(0.25, 1.5, 0.25), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han, CFrame.new(0,1.2,-0.5)*CFrame.Angles(math.rad(-45),0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han4 = create("Part", Model5, Vector3.new(0.2, 3.25, 0.2), CFrame.new(0,0,0), false, "White", false, true, 1, 0, "Custom", true, han, CFrame.new(0,0,-1)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(0.5,1,0.5), derp, id, bckup) 

local han5 = create("Part", Model5, Vector3.new(0.26, 1, 0.26), CFrame.new(0,0,0), false, "Black", false, true, 1, 0, "Custom", true, han, CFrame.new(0,0,0)*CFrame.Angles(0, 0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

--lantern

local han = create("Part", Model6, Vector3.new(0.5, 0.5, 0.5), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, Rarm, CFrame.new(0,-1,0)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han2 = create("Part", Model6, Vector3.new(0.75, 0.25, 0.75), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.25,0)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han3 = create("Part", Model6, Vector3.new(0.6, 1, 0.6), CFrame.new(0,0,0), false, "White", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.65,0)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

han3.Name = "Glass" 

local han4 = create("Part", Model6, Vector3.new(0.75, 0.25, 0.75), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han3, CFrame.new(0,-0.5,0)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han5 = create("Part", Model6, Vector3.new(0.5, 0.25, 0.5), CFrame.new(0,0,0), false, "Reddish brown", false, true, 1, 0, "Custom", true, han4, CFrame.new(0,-0.25,0)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local bill = Instance.new("BillboardGui", han3) 

bill.Name = "Light" 

bill.Size = UDim2.new(10, 0, 10, 0) 

bill.Enabled = false 

local l1 = Instance.new("ImageLabel", bill)

l1.Image = "http://www.roblox.com/asset/?id=42835416" 

l1.Size = UDim2.new(2, 0, 2, 0) 

l1.Position = UDim2.new(-0.5, 0, -0.5, 0) 

l1.ZIndex = 0 

l1.BackgroundTransparency = 1 

--gun

local han = create("Part", Model7, Vector3.new(0.2, 0.3, 0.75), CFrame.new(0,0,0), false, "Dark stone grey", false, true, 1, 0, "Custom", true, Rarm, CFrame.new(0,-1.1,0)*CFrame.Angles(0,0,0), "BlockMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han2z = create("Part", Model7, Vector3.new(0.2, 1, 0.2), CFrame.new(0,0,0), false, "Dark stone grey", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.5,-0.35)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(1,1,1), derp, id, bckup) 

local han3 = create("Part", Model7, Vector3.new(0.2, 0.75, 0.2), CFrame.new(0,0,0), false, "Dark stone grey", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.35,-0.25)*CFrame.Angles(0,0,0), "CylinderMesh", Vector3.new(0.75,1,0.75), derp, id, bckup) 

local han4 = create("Part", Model7, Vector3.new(0.2, 0.2, 0.2), CFrame.new(0,0,0), false, "Dark stone grey", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.15,-0.15)*CFrame.Angles(math.rad(-45),0,0), "BlockMesh", Vector3.new(0.25,1,0.15), derp, id, bckup) 

local han5 = create("Part", Model7, Vector3.new(0.2, 0.25, 0.2), CFrame.new(0,0,0), false, "Dark stone grey", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.225,0.025)*CFrame.Angles(math.rad(45),0,0), "BlockMesh", Vector3.new(0.25,1,0.15), derp, id, bckup) 

local han6 = create("Part", Model7, Vector3.new(0.2, 0.2, 0.2), CFrame.new(0,0,0), false, "Dark stone grey", false, true, 1, 0, "Custom", true, han, CFrame.new(0,-0.31125,-0.15)*CFrame.Angles(math.rad(90),0,0), "BlockMesh", Vector3.new(0.25,1,0.15), derp, id, bckup) 

local han7 = create("Part", Model7, Vector3.new(0.201, 0.275, 0.6), CFrame.new(0,0,0), false, "Black", false, true, 1, 0, "Custom", true, han, CFrame.new(0,0,0.05)*CFrame.Angles(0,0,0), "BlockMesh", Vector3.new(1,1,1), derp, id, bckup) 


function pen() 

for _,v in pairs(Model3:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

end)) 

end 

for _,c in pairs(Model6:children()) do 

pcall(function() 

c.Transparency = 1

c.Light.Enabled = false 

end)

end 

for _,v in pairs(Model7:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

end)) 

end 

for _,v in pairs(Model4:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

end)) 

end 

for _,v in pairs(Model5:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

end)) 

end 

for _,c in pairs(Model2:children()) do 

coroutine.resume(coroutine.create(function() 

for i = 1, 10 do 

c.Transparency = 1-(0.1*i)

wait() 

end 

end)) 

end 

end 

function staff() 

for _,v in pairs(Model3:children()) do 

coroutine.resume(coroutine.create(function() 

for i = 1, 10 do 

v.Transparency = 1-(0.1*i)

wait() 

end 

if v.Name == "Orb" then 

v.Transparency = 0.5 

end 

end)) 

end 

for _,v in pairs(Model5:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

end)) 

end 

for _,c in pairs(Model2:children()) do 

coroutine.resume(coroutine.create(function() 

c.Transparency = 1

end)) 

end 

for _,c in pairs(Model6:children()) do 

pcall(function() 

c.Transparency = 1

c.Light.Enabled = false 

end)

end 

for _,v in pairs(Model7:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

end)) 

end 

for _,c in pairs(Model4:children()) do 

pcall(function() 

c.Transparency = 1

wait() 

end)

end 

end 

function sword() 

for _,v in pairs(Model4:children()) do 

coroutine.resume(coroutine.create(function() 

for i = 1, 10 do 

v.Transparency = 1-(0.1*i)

wait() 

end 

end)) 

end 

for _,c in pairs(Model2:children()) do 

pcall(function() 

c.Transparency = 1

end) 

end 

for _,v in pairs(Model5:children()) do 

pcall(function() 

v.Transparency = 1

end) 

end 

for _,c in pairs(Model6:children()) do 

pcall(function() 

c.Transparency = 1

c.Light.Enabled = false 

end)

end 

for _,v in pairs(Model7:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

end)) 

end 

for _,c in pairs(Model3:children()) do 

pcall(function() 

c.Transparency = 1

end) 

end 

end 

function bow() 

for _,v in pairs(Model5:children()) do 

coroutine.resume(coroutine.create(function() 

for i = 1, 10 do 

v.Transparency = 1-(0.1*i)

wait() 

end 

end)) 

end 

for _,c in pairs(Model2:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

for _,c in pairs(Model6:children()) do 

pcall(function() 

c.Transparency = 1

c.Light.Enabled = false 

end)

end 

for _,v in pairs(Model7:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

end)) 

end 

for _,c in pairs(Model3:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

for _,c in pairs(Model4:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

end 

function lamp() 

for _,v in pairs(Model6:children()) do 

coroutine.resume(coroutine.create(function() 

for i = 1, 10 do 

v.Transparency = 1-(0.1*i)

wait() 

end 

if v.Name == "Glass" then 

v.Transparency = 0.5 

v.Light.Enabled = true 

end 

end)) 

end 

for _,v in pairs(Model7:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

end)) 

end 

for _,c in pairs(Model2:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

for _,c in pairs(Model3:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

for _,c in pairs(Model4:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

for _,c in pairs(Model5:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

end 

function gun() 

for _,v in pairs(Model7:children()) do 

coroutine.resume(coroutine.create(function() 

for i = 1, 10 do 

v.Transparency = 1-(0.1*i)

wait() 

end 

end)) 

end 

for _,v in pairs(Model6:children()) do 

coroutine.resume(coroutine.create(function() 

v.Transparency = 1

v.Light.Enabled = false 

end)) 

end 

for _,c in pairs(Model2:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

for _,c in pairs(Model3:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

for _,c in pairs(Model4:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

for _,c in pairs(Model5:children()) do 

pcall(function() 

c.Transparency = 1

end)

end 

end 

coroutine.resume(coroutine.create(function() 

while wait() do 

pcall(function() 

if mov ~= currmov then 

currmov = mov 

if mov == 1 then 

pen() 

elseif mov == 2 then 

staff() 

elseif mov == 3 then 

sword() 

elseif mov == 4 then 

bow() 

elseif mov == 5 then 

lamp() 

elseif mov == 6 then 

gun() 

end 

end 

end) 

end 

end)) 

function dmg(pos, mag, dmg) 

for _,v in pairs(workspace:children()) do 

pcall(function() 

if (v.Torso.Position - pos).magnitude <= mag then 

if v.Name ~= Me.Name then 

v.Humanoid:TakeDamage(dmg) 

end 

end 

end) 

end 

end 

function shoot(targ) 

sound(asset..sounds["Gun2"]) 

local ray = Instance.new("Part", workspace) 

ray.Name = "Shot" 

ray.BrickColor = BrickColor.new("New Yeller") 

ray.formFactor = "Custom" 

ray.Size = Vector3.new(0.2, 0.2, (targ - han2z.Position).magnitude) 

ray.CanCollide = false 

ray.Anchored = true 

local cf = han2z.CFrame * CFrame.new(0, -0.5, 0) 

ray.CFrame = CFrame.new((cf.p + targ) / 2, targ) 

local raym = Instance.new("BlockMesh", ray) 

raym.Scale = Vector3.new(0.5, 0.5, 1) 

dmg(targ, 1, math.random(5,15)) 

coroutine.resume(coroutine.create(function() 

wait(0.15) 

ray:remove() 

end)) 

end 

function arrow(targ) 

sound(asset..sounds["Bow"]) 

local ray = Instance.new("Part", workspace) 

ray.Name = "Shot" 

ray.BrickColor = BrickColor.new("White") 

ray.formFactor = "Custom" 

ray.Transparency = 0.5

ray.Size = Vector3.new(0.2, 0.2, (targ - Rarm.Position).magnitude) 

ray.CanCollide = false 

ray.Anchored = true 

local cf = Rarm.CFrame * CFrame.new(0, -0.5, 0) 

ray.CFrame = CFrame.new((cf.p + targ) / 2, targ) 

local raym = Instance.new("BlockMesh", ray) 

raym.Scale = Vector3.new(0.5, 0.5, 1) 

dmg(targ, 1, math.random(7, 21)) 

coroutine.resume(coroutine.create(function() 

wait(0.15) 

ray:remove() 

end)) 

end 

function orb(pos) 

sound(asset..sounds["Ele"]) 

coroutine.resume(coroutine.create(function() 

local ball = Instance.new("Part", workspace) 

ball.formFactor = "Custom" 

ball.BrickColor = BrickColor.new("Really red") 

ball.Size = Vector3.new(1.5,1.5,1.5) 

ball.Name = "Spell" 

ball.CanCollide = true 

ball.CFrame = Model3.Orb.CFrame 

ball:BreakJoints() 

local ballp = Instance.new("BodyPosition", ball) 

ballp.position = pos 

ballp.maxForce = Vector3.new(1000, 50000, 1000) 

local ballm = Instance.new("SpecialMesh", ball) 

ballm.MeshType = "Sphere" 

ball.Touched:connect(function(hit) 

if hit.Parent.Name ~= Me.Name and hit.Name ~= "Spell" and hit.Name ~= "Base" and hit.Parent.Name ~= Model2.Name and hit.Parent.Name ~= Model3.Name and hit.Parent.Name ~= Model4.Name and hit.Parent.Name ~= Model5.Name and hit.Parent.Name ~= Model6.Name and hit.Parent.Name ~= Model7.Name then 

ball.Anchored = true 

for i = 1, 10 do 

ball.Transparency = 0.025*i 

dmg(ball.Position, i, 0.5) 

ballm.Scale = ballm.Scale + Vector3.new(0.5, 0.5, 0.5) 

wait() 

end 

ball:remove() 

end 

end) 

coroutine.resume(coroutine.create(function() 

wait(2.5) 

ball.Anchored = true 

for i = 1, 10 do 

dmg(ball.Position, i, math.random(2,6)) 

ball.Transparency = 0.025*i 

ballm.Scale = ballm.Scale + Vector3.new(0.5, 0.5, 0.5) 

wait() 

end 

ball:remove() 

end)) 

while wait() do 

if ball.Position == ballp.position then 

ball.Anchored = true 

for i = 1, 10 do 

dmg(ball.Position, i, math.random(2,6)) 

ball.Transparency = 0.025*i 

ballm.Scale = ballm.Scale + Vector3.new(0.5, 0.5, 0.5) 

wait() 

end 

ball:remove() 

break

end 

end 

end)) 

end 

function slash() 

local a = math.random(0, 45) 

for i = 0, 1, 0.2 do 

RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90+45*i),math.rad(a*i),0) 

wait() 

end 

sound(sounds["Slash"]) 

for i = 0, 1, 0.1 do 

RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(135-135*i),math.rad(a+0*i),0) 

wait() 

end 

dmg(Model4.Blade.Position, 3, math.random(10, 25)) 

for i = 0, 1, 0.1 do 

RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(0+90*i),math.rad(a-a*i),0) 

wait() 

end 

end 

if script.Parent.className ~= "HopperBin" then

    local h = Instance.new("HopperBin", Me.Backpack)

    h.Name = "Pen"

    script.Parent = h

end

local bin = script.Parent

function onSelected(mouse)

RAW.Part1 = Rarm 

for i = 0, 1, 0.1 do 

RAW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90*i),0,0) 

wait() 

end 

    mouse.Button1Down:connect(function()

        if mov == 1 then 

sound(asset..sounds["Click"]) 

        if peno == true then

        peno = false 

        ledw.C0 = CFrame.new(0,0.25,0) 

        else

        peno = true 

        ledw.C0 = CFrame.new(0,0,0) 

        end 

        elseif mov == 2 then 

        orb(mouse.hit.p) 

        elseif mov == 3 then 

        slash() 

        elseif mov == 4 then 

        arrow(mouse.hit.p) 

        elseif mov == 6 then 

        shoot(mouse.hit.p) 

        end 

    end)

    mouse.KeyDown:connect(function(key)

        if key == "e" then 

        if mov == nummovs then 

        mov = 1 

        else

        mov = mov + 1 

        end 

        elseif key == "q" then 

        if mov == 1 then 

        mov = nummovs 

        else

        mov = mov - 1 

        end 

        end 

    end)

    mouse.KeyUp:connect(function(key)

    end)

end

function onDesel(mouse)

for i = 0, 1, 0.1 do 

RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90-90*i),0,0) 

wait() 

end 

RAW.Part1 = nil 

end

bin.Selected:connect(onSelected)

bin.Deselected:connect(onDesel)
