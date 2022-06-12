local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Bong"
math.randomseed(os.time())
hum.WalkSpeed = 8
----------------------------------------------------
----------------------------------------------------
----------------------------------------------------
Debounces = {
CanPuff = true;
CanJoke = true;
Bong = true;
Pipe = false;
Blunt = false;
NoIdl = false;
on = false;
}

----------------------------------------------------

function lerp(a, b, t) -- Linear interpolation
        return a + (b - a)*t
end
 
function slerp(a, b, t) --Spherical interpolation
        dot = a:Dot(b)
        if dot > 0.99999 or dot < -0.99999 then
                return t <= 0.5 and a or b
        else
                r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end
 
function matrixInterpolate(a, b, t)
        local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
        local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
        local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
        local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
        local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
        local t = v1:Dot(v2)
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
                return CFrame.new()
        end
        return CFrame.new(
        v0.x, v0.y, v0.z,
        v1.x, v1.y, v1.z,
        v2.x, v2.y, v2.z,
        v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://143065500"
z.Looped = true
z.Pitch = .94
z.Volume = 1
wait(1)
z:Play()
----------------------------------------------------
pa = Instance.new("Part", torso)
pa.Name = "Fat"
pa.Transparency = 1
pa.CanCollide = false
pa.Anchored = false
pa.Locked = true
pa.Size = Vector3.new(1,1,1)
weld = Instance.new("Weld", pa)
weld.Part0 = pa
weld.Part1 = torso
weld.C0 = CFrame.new(0, 0, -1.5)
weld.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0))
s = Instance.new("Smoke", pa)
s.Color = Color3.new(1,1,1)
s.Opacity = 1
s.RiseVelocity = 4
s.Enabled = false
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Bong"
p1 = Instance.new("Part", m)
p1.Material = "Neon"
p1.BrickColor = BrickColor.new("Black")
p1.Name = "Lip"
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(28.499649, 10.9996414, -11.4994812, -0.999972343, 6.21378422e-006, -0.00049701333, -0.000477582216, -5.70863485e-005, 0.999959588, -1.02631748e-005, 0.999939203, 2.50376761e-005)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=3270017"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
p2 = Instance.new("Part", m)
p2.Material = "Neon"
p2.BrickColor = BrickColor.new("Earth green")
p2.Material = Enum.Material.SmoothPlastic
p2.Transparency = 0.20000000298023
p2.Name = "Tube"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(1, 3, 1)
p2.CFrame = CFrame.new(28.4998627, 9.49954987, -11.4992342, 0.000220132133, -5.49961114e-005, 0.999972463, -7.23355697e-005, 0.999959707, 3.55862139e-005, -0.999939203, -0.000104385108, 0.000236587104)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("CylinderMesh", p2)
b2.Name = "Mesh"
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Earth green")
p3.Name = "Devil's Lettuce"
p3.Size = Vector3.new(1, 1.20000005, 1)
p3.CFrame = CFrame.new(27.1619816, 8.50439644, -11.4991903, 0.754621029, -0.656118929, 2.5186062e-005, 0.656095922, 0.754624128, -5.45315925e-005, 8.17945693e-006, 2.26873817e-005, 0.999939263)
p3.CanCollide = false
p3.Locked = true
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=1290033"
b3.TextureId = "http://www.roblox.com/asset/?id=1290030"
b3.MeshType = Enum.MeshType.FileMesh
b3.VertexColor = Vector3.new(0.5, 70, 0)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.199999988, 0.199999988, 0.199999988)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Black")
p4.Name = "Bowl"
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(27.243679, 8.40425396, -11.4991856, -0.754621029, 0.656118929, 0.000100085585, -0.656095922, -0.754624128, 1.05888903e-005, 9.10690069e-005, -2.26873672e-005, 0.999939263)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=19380188"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.SmoothPlastic
p5.Name = "Stem"
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Size = Vector3.new(1, 1, 1)
p5.CFrame = CFrame.new(27.8998299, 7.64966011, -11.4992504, -0.754621029, -0.656118929, -3.68308465e-005, -0.656095922, 0.754624128, 4.44071593e-005, 7.25091377e-006, 2.26873672e-005, -0.999939263)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("CylinderMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 1.79999995, 0.200000003)
p6 = Instance.new("Part", m)
p6.Material = "Neon"
p6.BrickColor = BrickColor.new("Earth green")
p6.Material = Enum.Material.SmoothPlastic
p6.Transparency = 0.20000000298023
p6.Name = "Bong"
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.CFrame = CFrame.new(28.5000229, 7.34961605, -11.4990406, -0.000452600536, 0.00015476234, -0.999972343, -1.39447293e-005, 0.999959707, 0.000174246117, 0.999939203, -1.80333263e-005, -0.000469060004)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Sphere
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.79999995, 1.79999995, 1.79999995)
p7 = Instance.new("Part", m)
p7.Material = "Neon"
p7.BrickColor = BrickColor.new("Pastel Blue")
p7.Material = Enum.Material.SmoothPlastic
p7.Name = "Water"
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(28.5000248, 7.25962019, -11.4990396, -0.000452600565, 0.000154762354, -0.999972343, -1.39616022e-005, 0.999959707, 0.000174246117, 0.999939322, -1.80501975e-005, -0.000469060033)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Sphere
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.5999999, 1.39999986, 1.5999999)
w1 = Instance.new("Weld", p1)
w1.Name = "Tube_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(28.505003, 11.5008535, -10.9858503, -0.999999881, -0.000485179946, -1.08338909e-007, -8.74227695e-008, -4.31100962e-005, 1, -0.000485179946, 0.999999881, 4.31100489e-005)
w1.Part1 = p2
w1.C1 = CFrame.new(-11.5057898, -9.49978542, -28.4976711, 0.000226438046, -8.63153255e-005, -1, -4.31497574e-005, 1, -8.63251043e-005, 1, 4.31693043e-005, 0.000226438046)
w2 = Instance.new("Weld", p2)
w2.Name = "Devil's Lettuce_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-11.5057898, -9.49978542, -28.4976711, 0.000226438046, -8.63153255e-005, -1, -4.31497574e-005, 1, -8.63251043e-005, 1, 4.31693043e-005, 0.000226438046)
w2.Part1 = p3
w2.C1 = CFrame.new(-26.0778522, 11.4040451, 11.4999485, 0.75464958, 0.656128049, 1.23602822e-005, -0.656128049, 0.75464958, 4.29936699e-005, 1.88816703e-005, -4.05550818e-005, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Bowl_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-26.0778522, 11.4040451, 11.4999485, 0.75464958, 0.656128049, 1.23602822e-005, -0.656128049, 0.75464958, 4.29936699e-005, 1.88816703e-005, -4.05550818e-005, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(26.0749397, -11.5332241, 11.4973526, -0.75464958, -0.656128049, 8.68942152e-005, 0.656128049, -0.75464958, -4.29936554e-005, 9.37840305e-005, 2.45685878e-005, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Stem_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(26.0749397, -11.5332241, 11.4973526, -0.75464958, -0.656128049, 8.68942152e-005, 0.656128049, -0.75464958, -4.29936554e-005, 9.37840305e-005, 2.45685878e-005, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(26.0740185, 12.5332232, -11.4995804, -0.75464958, -0.656128049, 3.07102709e-006, -0.656128049, 0.75464958, 4.29936554e-005, -3.05268914e-005, 3.04301557e-005, -1)
w5 = Instance.new("Weld", p5)
w5.Name = "Bong_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(26.0740185, 12.5332232, -11.4995804, -0.75464958, -0.656128049, 3.07102709e-006, -0.656128049, 0.75464958, 4.29936554e-005, -3.05268914e-005, 3.04301557e-005, -1)
w5.Part1 = p6
w5.C1 = CFrame.new(11.5130777, -7.35474873, 28.493494, -0.000458917581, 2.98023224e-008, 0.99999994, 0.000166644895, 1, 2.98023224e-008, -0.999999881, 0.000166644895, -0.000458917581)
w6 = Instance.new("Weld", p6)
w6.Name = "Water_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(11.5130777, -7.35474873, 28.493494, -0.000458917581, 2.98023224e-008, 0.99999994, 0.000166644895, 1, 2.98023224e-008, -0.999999881, 0.000166644895, -0.000458917581)
w6.Part1 = p7
w6.C1 = CFrame.new(11.5130777, -7.26474905, 28.4935093, -0.000458917581, 2.98023224e-008, 0.99999994, 0.000166644895, 1, 2.98023224e-008, -0.999999881, 0.000166644895, -0.000458917581)
w7 = Instance.new("Weld", p7)
w7.Name = "Head_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(11.5130777, -7.26474905, 28.4935093, -0.000458917581, 2.98023224e-008, 0.99999994, 0.000166644895, 1, 2.98023224e-008, -0.999999881, 0.000166644895, -0.000458917581)
m.Parent = torso
m:MakeJoints()
----------------------------------------------------
weld2 = Instance.new("Weld", torso.Bong)
weld2.Part0 = torso
weld2.Part1 = torso.Bong.Tube
weld2.C0 = CFrame.new(0, -.5, -1.5)
weld2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------
local m2 = Instance.new("Model")
m2.Name = "Blunt"
p1 = Instance.new("Part", m2)
p1.Transparency = 1
p1.BrickColor = BrickColor.new("CGA brown")
p1.Name = "Handle"
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p1.CFrame = CFrame.new(30.5498123, 9.24952984, -12.2989969, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Cylinder
b1.Name = "Mesh"
p2 = Instance.new("Part", m2)
p2.Transparency = 1
p2.BrickColor = BrickColor.new("CGA brown")
p2.Name = "Joint11"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p2.CFrame = CFrame.new(30.5498104, 9.24934578, -12.4989843, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Cylinder
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.300000012, 1, 1)
p3 = Instance.new("Part", m2)
p3.Transparency = 1
p3.BrickColor = BrickColor.new("CGA brown")
p3.Name = "Joint10"
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p3.CFrame = CFrame.new(30.5498104, 9.24934673, -12.5489807, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Cylinder
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.300000012, 1, 1)
p4 = Instance.new("Part", m2)
p4.Transparency = 1
p4.BrickColor = BrickColor.new("CGA brown")
p4.Name = "Joint9"
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p4.CFrame = CFrame.new(30.5498104, 9.24934673, -12.5989771, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Cylinder
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.300000012, 1, 1)
p5 = Instance.new("Part", m2)
p5.Transparency = 1
p5.BrickColor = BrickColor.new("CGA brown")
p5.Name = "Joint8"
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p5.CFrame = CFrame.new(30.5498104, 9.24934769, -12.6489735, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Cylinder
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.300000012, 1, 1)
p6 = Instance.new("Part", m2)
p6.Transparency = 1
p6.BrickColor = BrickColor.new("CGA brown")
p6.Name = "Joint7"
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p6.CFrame = CFrame.new(30.5498104, 9.24934769, -12.6989698, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Cylinder
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.300000012, 1, 1)
p7 = Instance.new("Part", m2)
p7.Transparency = 1
p7.BrickColor = BrickColor.new("CGA brown")
p7.Name = "Joint6"
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p7.CFrame = CFrame.new(30.5498104, 9.24934864, -12.7489662, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Cylinder
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.300000012, 1, 1)
p8 = Instance.new("Part", m2)
p8.Transparency = 1
p8.BrickColor = BrickColor.new("CGA brown")
p8.Name = "Joint5"
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p8.CFrame = CFrame.new(30.5498104, 9.24934864, -12.7989626, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Cylinder
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.300000012, 1, 1)
p9 = Instance.new("Part", m2)
p9.Transparency = 1
p9.BrickColor = BrickColor.new("CGA brown")
p9.Name = "Joint4"
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p9.CFrame = CFrame.new(30.5498104, 9.24934959, -12.848959, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Cylinder
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.300000012, 1, 1)
p10 = Instance.new("Part", m2)
p10.Transparency = 1
p10.BrickColor = BrickColor.new("CGA brown")
p10.Name = "Joint3"
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p10.CFrame = CFrame.new(30.5498104, 9.24934959, -12.8989553, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Cylinder
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.300000012, 1, 1)
p11 = Instance.new("Part", m2)
p11.Transparency = 1
p11.BrickColor = BrickColor.new("CGA brown")
p11.Name = "Joint3"
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p11.CFrame = CFrame.new(30.5498104, 9.24935055, -12.9489517, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshType = Enum.MeshType.Cylinder
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.300000012, 1, 1)
p12 = Instance.new("Part", m2)
p12.Transparency = 1
p12.BrickColor = BrickColor.new("CGA brown")
p12.Name = "Joint2"
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p12.CFrame = CFrame.new(30.5498104, 9.24935055, -12.9989481, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Cylinder
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.300000012, 1, 1)
p13 = Instance.new("Part", m2)
p13.Transparency = 1
p13.BrickColor = BrickColor.new("CGA brown")
p13.Name = "Joint1"
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p13.CFrame = CFrame.new(30.5498104, 9.2493515, -13.0489445, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshType = Enum.MeshType.Cylinder
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.300000012, 1, 1)
w1 = Instance.new("Weld", p1)
w1.Name = "Joint11_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-12.2991934, -9.25106144, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w1.Part1 = p2
w1.C1 = CFrame.new(-12.4991941, -9.25089169, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Joint10_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-12.4991941, -9.25089169, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w2.Part1 = p3
w2.C1 = CFrame.new(-12.5491943, -9.25089645, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "Joint9_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-12.5491943, -9.25089645, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(-12.5991945, -9.25090027, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w4 = Instance.new("Weld", p4)
w4.Name = "Joint8_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-12.5991945, -9.25090027, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w4.Part1 = p5
w4.C1 = CFrame.new(-12.6491947, -9.25090504, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w5 = Instance.new("Weld", p5)
w5.Name = "Joint7_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-12.6491947, -9.25090504, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w5.Part1 = p6
w5.C1 = CFrame.new(-12.6991949, -9.25090885, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w6 = Instance.new("Weld", p6)
w6.Name = "Joint6_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-12.6991949, -9.25090885, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w6.Part1 = p7
w6.C1 = CFrame.new(-12.7491951, -9.25091362, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w7 = Instance.new("Weld", p7)
w7.Name = "Joint5_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-12.7491951, -9.25091362, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w7.Part1 = p8
w7.C1 = CFrame.new(-12.7991953, -9.25091743, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w8 = Instance.new("Weld", p8)
w8.Name = "Joint4_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-12.7991953, -9.25091743, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w8.Part1 = p9
w8.C1 = CFrame.new(-12.8491955, -9.2509222, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w9 = Instance.new("Weld", p9)
w9.Name = "Joint3_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-12.8491955, -9.2509222, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w9.Part1 = p10
w9.C1 = CFrame.new(-12.8991957, -9.25092602, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w10 = Instance.new("Weld", p10)
w10.Name = "Joint3_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-12.8991957, -9.25092602, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w10.Part1 = p11
w10.C1 = CFrame.new(-12.9491959, -9.25093079, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w11 = Instance.new("Weld", p11)
w11.Name = "Joint2_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-12.9491959, -9.25093079, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w11.Part1 = p12
w11.C1 = CFrame.new(-12.9991961, -9.2509346, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w12 = Instance.new("Weld", p12)
w12.Name = "Joint1_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-12.9991961, -9.2509346, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w12.Part1 = p13
w12.C1 = CFrame.new(-13.0491962, -9.25093937, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
m2.Parent = larm
m2:MakeJoints()
----------------------------------------------------
weld3 = Instance.new("Weld", larm.Blunt)
weld3.Part0 = larm
weld3.Part1 = p1
weld3.C0 = CFrame.new(0, 0, 0)
weld3.C1 = CFrame.new(-.4, -.8, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(130))
----------------------------------------------------
local m3 = Instance.new("Model")
m3.Name = "Pipe"
p1 = Instance.new("Part", m3)
p1.Transparency = 1
p1.BrickColor = BrickColor.new("Lime green")
p1.Name = "Ganja"
p1.Size = Vector3.new(1, 1.20000005, 1)
p1.CFrame = CFrame.new(34.4998474, 9.47253323, -12.1971197, 0.999142408, 0.0395895876, 0.00966008008, -0.0395250656, 0.999140501, -0.00866904482, -0.00997729599, 0.00824850239, 0.999855876)
p1.CanCollide = false
p1.Locked = true
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=1290033"
b1.TextureId = "http://www.roblox.com/asset/?id=1290030"
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(1, 1, 0)
b1.Scale = Vector3.new(0.25, 0.25, 0.25)
p2 = Instance.new("Part", m3)
p2.Transparency = 1
p2.BrickColor = BrickColor.new("Reddish brown")
p2.Name = "Bowl"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.600000024, 0.200000003)
p2.CFrame = CFrame.new(34.5002136, 9.30045128, -12.1985321, 0.999142408, -0.0395896509, -0.00965970568, -0.0395250618, -0.999140382, 0.00867650099, -0.0099772159, -0.0082559688, -0.999855697)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=1038653"
b2.TextureId = "http://www.roblox.com/asset/?id=63422869"
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.5, 0.75, 0.5)
p3 = Instance.new("Part", m3)
p3.Transparency = 1
p3.BrickColor = BrickColor.new("Reddish brown")
p3.Name = "Handle"
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 1.29999995, 0.200000003)
p3.CFrame = CFrame.new(34.4998512, 9.09950542, -13.0488882, -0.999973059, -6.22216612e-006, 1.18450553e-005, 7.51431071e-006, 1.40070915e-005, -0.999959469, -1.02808699e-005, -0.999939501, 1.80210918e-005)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("CylinderMesh", p3)
b3.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Bowl_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-34.2188034, -10.7307339, 11.9460506, 0.999168873, -0.0395192951, -0.00998879783, 0.0396024287, 0.999181271, 0.00826664828, 0.00965392869, -0.00865535904, 0.999915898)
w1.Part1 = p2
w1.C1 = CFrame.new(-34.2259827, 10.5586996, -11.9460554, 0.999168873, -0.0395192914, -0.00998871867, -0.0396024957, -0.999181211, -0.00827411562, -0.00965355337, 0.00866281614, -0.999915838)
w2 = Instance.new("Weld", p2)
w2.Name = "Handle_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-34.2259827, 10.5586996, -11.9460554, 0.999168873, -0.0395192914, -0.00998871867, -0.0396024957, -0.999181211, -0.00827411562, -0.00965355337, 0.00866281614, -0.999915838)
w2.Part1 = p3
w2.C1 = CFrame.new(34.5000114, -13.0499754, 9.09998798, -1, -3.60887031e-009, -8.74227766e-008, 8.74227766e-008, 4.37113883e-008, -1, 3.60887409e-009, -1, -4.37113883e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "Handle_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(34.5000114, -13.0499754, 9.09998798, -1, -3.60887031e-009, -8.74227766e-008, 8.74227766e-008, 4.37113883e-008, -1, 3.60887409e-009, -1, -4.37113883e-008)
m3.Parent = larm
m3:MakeJoints()
----------------------------------------------------
weld4 = Instance.new("Weld", larm.Pipe)
weld4.Part0 = larm
weld4.Part1 = p3
weld4.C0 = CFrame.new(0, 0, 0)
weld4.C1 = CFrame.new(-.8, .7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40))
----------------------------------------------------
local m4 = Instance.new("Model")
m4.Name = "Match"
p1 = Instance.new("Part", m4)
p1.CanCollide = false
p1.Transparency = 1
p1.BrickColor = BrickColor.new("Brown")
p1.Material = "Marble"
p1.Name = "Match"
p1.Size = Vector3.new(1, 2.4, 1)
p1.CFrame = CFrame.new(-8.20000362, 1.18600059, -10.0000038, 1.00000048, -0.00011438923, 0.000152289867, 0.000114176073, 0.999999344, 0.00107795233, -0.000152289867, -0.00107795768, 0.999999762)
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.14, 1, 0.14)
p2 = Instance.new("Part", m4)
p2.CanCollide = false
p2.Transparency = 1
p2.BrickColor = BrickColor.new("Really black")
p2.Shape = "Ball"
p2.Material = "Sand"
p2.Name = "MatchHead"
p2.Size = Vector3.new(1, 1, 1)
p2.CFrame = CFrame.new(-8.20000267, 2.48600006, -10.0000038, 1.00000048, -0.000109304514, -3.49245965e-009, 0.000109255525, 0.999999404, 0.00103000901, 1.41153578e-008, -0.00103003171, 0.999999821)
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = "Sphere"
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.3, 0.6, 0.3)
x1 = Instance.new("Fire",p2)
x1.Heat = 4
x1.Size = 2
x1.Enabled = false
x1.Color = Color3.new(236, 139, 70)
x1.SecondaryColor = Color3.new(0, 0, 0)
w1 = Instance.new("Weld", p2)
w1.Part0 = p1
w1.C0 = CFrame.new(8.19834042, -1.19771659, 9.99996376, 1, 0.00011420052, -0.000152360211, -0.000114364695, 0.999999404, -0.00107794593, 0.000152237015, 0.00107796339, 0.999999404)
w1.Part1 = p2
w1.C1 = CFrame.new(8.19972706, -2.49719477, 9.99743366, 1, 0.000109279979, -5.62802924e-008, -0.000109279979, 0.999999464, -0.00103001995, -5.62802924e-008, 0.00103001995, 0.999999464)
m4.Parent = rarm
m4:MakeJoints()
----------------------------------------------------
weld5 = Instance.new("Weld", p1)
weld5.Part0 = p1
weld5.Part1 = rarm
weld5.C0 = CFrame.new(0, 0, 0)
weld5.C1 = CFrame.new(.2, -.8, .3) * CFrame.Angles(math.rad(-150), math.rad(0), math.rad(0))
----------------------------------------------------
function Burn()
local bk=torso.Bong["Devil's Lettuce"].Mesh
bk.VertexColor=Vector3.new(0,0,0)
local pl=Instance.new("PointLight",bk.Parent)
pl.Brightness=0 pl.Color=Color3.new(1,0,0)
for i=1,50 do wait()bk.VertexColor=bk.VertexColor+Vector3.new(.05,0,0)pl.Brightness=pl.Brightness+0.05 end
for i=1,50 do wait()bk.VertexColor=bk.VertexColor-Vector3.new(.05,0,0)pl.Brightness=pl.Brightness-0.05 end
pl:Remove()
end
----------------------------------------------------
function Burn2()
local bk=larm.Pipe.Ganja.Mesh
bk.VertexColor=Vector3.new(0,0,0)
local pl=Instance.new("PointLight",bk.Parent)
pl.Brightness=0 pl.Color=Color3.new(1,0,0)
for i=1,50 do wait()bk.VertexColor=bk.VertexColor+Vector3.new(.05,0,0)pl.Brightness=pl.Brightness+0.05 end
for i=1,50 do wait()bk.VertexColor=bk.VertexColor-Vector3.new(.05,0,0)pl.Brightness=pl.Brightness-0.05 end
pl:Remove()
end
----------------------------------------------------
function Burn3()
local brn=larm.Blunt.Joint1
brn.BrickColor = BrickColor.new("Dusty rose")
wait(.5)
brn.BrickColor = BrickColor.new("Bright red")
wait(.5)
brn.BrickColor = BrickColor.new("Really red")
wait(1)
brn.BrickColor = BrickColor.new("Black")
wait(.5)
brn.BrickColor = BrickColor.new("Really black")
wait(1)
brn.BrickColor = BrickColor.new("White")
end
----------------------------------------------------
function Match1()
        for i = 1, 10 do wait()
                for i,v in pairs(m4:GetChildren()) do
                        if v:IsA("Part") then
                                v.Transparency = v.Transparency - 0.1
                        end
                end
        end
        x1.Enabled = true
end
----------------------------------------------------
function Match2()
        for i = 1, 10 do wait()
                for i,v in pairs(m4:GetChildren()) do
                        if v:IsA("Part") then
                                v.Transparency = v.Transparency + 0.1
                        end
                end
        end
        x1.Enabled = false
end
----------------------------------------------------
print("snoop dawg motherfiker")--Dun change plox
----------------------------------------------------
function Snoop()
pits = {0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1}

if math.random(1,3) == 1 then
cgh = Instance.new("Sound",hed)
cgh.SoundId = "rbxassetid://186581757"
cgh.Pitch = pits[math.random(1,#pits)]
cgh.Volume = 1
wait(.1)
cgh:Play()
end

frogSequence = {177231086,177235819,177231110,177231125,177235637,177231141,177231148,177231162,177231174,177231186}
snoopSequence = {175425918,175425940,175425986,175426013,175426270,175426298,175426373,175426397,175426407,175426432,175426443,175426561,175426586,175426607,175426620,175426638,175426653,175426666,175426691,175426764,175426777,175426972,175426988,175426999,175427017,175427038,175427054,175427092,175427110,175427137,175427148,175427177}

fatboysraidmcdonalds = {
        SelectFromTable = function(tab)
                if #tab == 0 then
                        return nil
                else
                        return tab[math.random(1,#tab)]
                end
        end,
        ["Clamp"] = function(n,a,b)
                n = tonumber(n or 0) or 0
                a = tonumber(a or -math.huge) or -math.huge
                b = tonumber(b or math.huge) or math.huge
                if a > b then
                        a,b = b,a
                end
                return math.max(a,math.min(b,n))
        end,
        ["Slerp"] = function(val)
                val = fatboysraidmcdonalds.Clamp(val,0,1)
                local input = math.pi/2 + (val*math.pi);
                local sine = math.sin(input);
                local scale = -sine/2;
                return 0.5 + scale;
        end,
        ["Bounce"] = function(val)
                val = val%2
                if val <= 1 then
                        return val
                else
                        return 2 - val
                end
        end,
        ["Camera"] = {
                ["Smooth"] = function(t)
                        local start = tick()
                        local now = start
                        local targ = start + t
                        local Diff = now - start
                        local cam = Workspace.CurrentCamera
                        local orig = cam.FieldOfView
                        local diff,distance,offset
                        if orig >= 70 then
                                distance = 50
                                offset = orig - 70
                                diff = offset/distance
                        else
                                distance = 120 - orig
                                offset = 0
                                diff = 0
                        end
                        local speed = 0.5 + (math.random()*1.5)
                        while now <= targ do
                                cam.FieldOfView = orig + (fatboysraidmcdonalds.Slerp(fatboysraidmcdonalds.Bounce(diff + (Diff*speed))) * distance)
                                wait()
                                now = tick()
                                Diff = now - start
                        end
                        cam.FieldOfView = orig
                        return Diff
                end,
                ["Headache"] = function(t)
                        local now = tick()
                        local targ = tick() + t
                        local cam = Workspace.CurrentCamera
                        local fixes = {
                                ["FieldOfView"] = cam.FieldOfView,
                                ["TiltUnits"] = 0,
                        }
                        while now <= targ do
                                local fov = 60 + math.random()*60
                                local pan = -8 + (math.random()*16)
                                local tilt = -9 + (math.random()*18)
                                local roll = (-math.pi/2) + (math.random()*(math.pi*4))
                                fixes.TiltUnits = fixes.TiltUnits + tilt
                                cam.FieldOfView = fov
                                cam:TiltUnits(tilt)
                                wait()
                                now = tick()
                        end
                        cam.FieldOfView = fixes.FieldOfView
                        cam:TiltUnits(-fixes.TiltUnits)
                        return t + (now - targ)
                end
        },
        ["Control"] = function(t,switch)
                switch = switch == nil and true or switch
                local phase = math.min((tonumber(t or 10) or 10),math.random() + (switch and 2 or 0))
                local pick
                if switch then
                        pick = fatboysraidmcdonalds.Camera.Smooth
                else
                        pick = {}
                        for i,v in pairs(fatboysraidmcdonalds.Camera) do
                                if i ~= "Smooth" then
                                        table.insert(pick,v)
                                end
                        end
                        pick = fatboysraidmcdonalds.SelectFromTable(pick)
                end
                local offset = pick(phase)
                t = t - offset
                if t >= 1 then
                        fatboysraidmcdonalds.Control(t,not switch)
                elseif t > 0 then
                        fatboysraidmcdonalds.Control(t,false)
                end
        end,
        ["Snoop"] = function(t)
                local snoopy = Instance.new("Part")
                snoopy.Anchored = true
                snoopy.Locked = true
                snoopy.CanCollide = false
                snoopy.FormFactor = "Custom"
                snoopy.Transparency = 1
                snoopy.Size = Vector3.new(2,2,1)
                local lol = Instance.new("BillboardGui")
                lol.Name = "anim"
                lol.Adornee = lol.Parent
                lol.AlwaysOnTop = false
                lol.Size = UDim2.new(1.5,0,1.5,0)
                lol.SizeOffset = Vector2.new(-0.5,-0.5)
                lol.Parent = snoopy
                local cam = Workspace.CurrentCamera
                local function Pos(p)
                        return p + cam.Focus.p
                end
                local function newSnoop(tiem)
                        Spawn(function()
                                local new = snoopy:Clone()
                                local anim = new:WaitForChild("anim")
                                animGui(anim,snoopSequence,0.05)
                                local tack = tick()
                                local start = tack
                                local wow = tack*(((math.random()*2)-1)*57)
                                local s,c,r = math.sin(wow)*math.random(200,225)*0.01,math.cos(wow)*math.random(175,200)*0.01,-1 + (math.random()*2)
                                local dist = 10
                                local xp,yp,zp = dist*-s,dist*-r,dist*-c
                                local xe,ye,ze = dist*s,dist*r,dist*c
                                local pos,targ = Vector3.new(xp,yp,zp),Vector3.new(xe,ye,ze)
                                new.CFrame = Pos(CFrame.new(pos))
                                new.Parent = cam
                                tiem = tack + tiem
                                while tack <= tiem do
                                        local diff = fatboysraidmcdonalds.Clamp((tack-start)/(tiem-start),0,1)
                                        new.CFrame = Pos(CFrame.new(pos + ((targ-pos)*diff)))
                                        wait()
                                        tack = tick()
                                end
                                new.CFrame = Pos(CFrame.new(targ))
                                new:destroy()
                        end)
                end
                local now = tick()
                local targ = now + t
                while now <= targ do
                        local diff = targ - now
                        newSnoop(math.min(diff,0.75 + math.random()*0.5))
                        wait()
                        now = tick()
                end
        end,
        ["Illuminati"] = function(t,frame)
        local decal = e
                local audio = 168907893
                local img = Instance.new("ImageLabel",frame)
                img.BackgroundTransparency = 1
                img.BorderSizePixel = 0
                img.ImageTransparency = 0.5
                img.ZIndex = 10
                img.Size = UDim2.new(0.1,0,0.1,0)
                img.Position = UDim2.new(0.45,0,0.45,0)
                img.Image = "http://www.roblox.com/asset/?id="..tostring(decal)
                local sound = Instance.new("Sound",img)                
                sound.Volume = 0.75
                sound.Looped = true
                sound.PlayOnRemove = false
                sound.SoundId = "http://www.roblox.com/asset/?id="..tostring(audio)
                sound:Play()
                img:TweenSizeAndPosition(UDim2.new(1,0,1,0),UDim2.new(0,0,0,0),"Out","Linear",t+1.5)
                img.Changed:connect(function(p)
                        if p ~= "ImageTransparency" then
                                local x = img.Size.X.Scale
                                img.ImageTransparency = 1 - x
                                sound.Volume = x
                        end
                end)
        end
}

function animGui(lol,sequence,speed)
        local img = Instance.new("ImageLabel",lol)
        img.BackgroundTransparency = 1
        img.BorderSizePixel = 0
        img.Size = UDim2.new(2.25,0,5,0)
        img.Position = UDim2.new(0,0,-2.5,0)
        Spawn(function()
                local now = tick()
                while img:IsDescendantOf(game) do
                        img.Image = "http://www.roblox.com/asset/?id="..tostring(sequence[(math.floor((tick()-now)/speed)%#sequence)+1]-1)
                        wait()
                end
        end)
        return img
end

function Rainbow(h)
        local h,s,v = h%1,1,1
        local r, g, b
        
        local i = math.floor(h * 6);
        local f = h * 6 - i;
        local p = v * (1 - s);
        local q = v * (1 - f * s);
        local t = v * (1 - (1 - f) * s);
        
        i = i % 6
        
        if i == 0 then r, g, b = v, t, p
        elseif i == 1 then r, g, b = q, v, p
        elseif i == 2 then r, g, b = p, v, t
        elseif i == 3 then r, g, b = p, q, v
        elseif i == 4 then r, g, b = t, p, v
        elseif i == 5 then r, g, b = v, p, q
        end
        
        return r, g, b
end

local gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
gui.Name = "SnoopyMcSnooperson"
local frame = Instance.new("Frame",gui)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundTransparency = 1
local snoop = animGui(frame,snoopSequence,0.05)
snoop.Size = UDim2.new(0.25,0,0.50,0)
snoop.Position = UDim2.new(-0.25,0,0.25,0)
frog = animGui(frame,frogSequence,0.05)
frog.Size = UDim2.new(0.25,0,0.50,0)
frog.Position = UDim2.new(1,0,0.25,0)

trollLabels = {snoopSequence,frogSequence,"Can I have a large pizza with please, cheese?","thomas the weed engine","get out of my face","ur gone and i gutta stay hi111","a duble rainbow... wut dos it men??22/?/","im so high bro","im so high bruh","whoa im tripin balz man","get out of my face","ellomenartiy","WORK 8 HOURS\nPLAY 8 HOURS\nSLEEP 8 HOURS","fite the powur bruh","fite the man11","usa females are payed 20 cents less bru its unfair","why am i doing this to myself","the woods are my home man","run free little bro","teach me ur ways, snoopie-san kawabi","how much for a bong","i luv this bong man","oh yeah its right in my bronchioles man","is this real life??","this is a robbery","this is why my mom doesnt like me"}
snoop:TweenPosition(UDim2.new(0,0,0.25,0), "Out", "Sine", 1, true)
frog:TweenPosition(UDim2.new(0.75,0,0.25,0), "Out","Sine", 1, true)
Spawn(function()
        local start = tick()
        local last = start
        local ending = false
        local tiem = 10
        Spawn(function()
                fatboysraidmcdonalds.Control(tiem)
        end)
        Spawn(function()
                fatboysraidmcdonalds.Snoop(tiem)
        end)
        Spawn(function()
                fatboysraidmcdonalds.Illuminati(tiem,frame)
        end)
        while true do
                local tack = tick()
                local now = tack-start
                frog.Rotation = now*360
                if now <= tiem then
                        local k = math.min(now/2,0.5)
                        frame.BackgroundTransparency = 1 - k
                        if tack - last >= 0.25 then
                                for i = 1,3 do
                                        local wow = tack*(((math.random()*2)-1)*57)
                                        local s,c = math.sin(wow)*math.random(200,225)*0.01,math.cos(wow)*math.random(175,200)*0.01
                                        local dist = 0.5
                                        local xp,yp = dist+(dist*s),dist+(dist*c)
                                        local xe,ye = dist-(dist*s),dist-(dist*c)
                                        local funk
                                        if i == 1 then
                                                funk = trollLabels[math.random(1,2)]
                                        else
                                                funk = trollLabels[math.random(3,#trollLabels)]
                                        end
                                        local ngui
                                        local size = math.random()*0.25
                                        if funk == snoopSequence then
                                                ngui = animGui(frame,funk,0.05)
                                                ngui.Size = UDim2.new(size,0,size*2,0)
                                                ngui.ImageTransparency = (frame.BackgroundTransparency*2) - 1
                                        elseif funk == frogSequence then
                                                ngui = animGui(frame,funk,0.05)
                                                ngui.Size = UDim2.new(size,0,size,0)
                                                ngui.ImageTransparency = (frame.BackgroundTransparency*2) - 1
                                        else
                                                ngui = Instance.new("TextLabel",frame)
                                                local bt = frame.BackgroundTransparency
                                                ngui.TextTransparency = (bt-0.5)/0.5
                                                ngui.TextStrokeTransparency = bt
                                                ngui.BackgroundTransparency = 1
                                                ngui.TextColor3 = Color3.new(math.random(),math.random(),math.random())
                                                ngui.Font = "ArialBold"
                                                ngui.Text = funk
                                                ngui.Size = UDim2.new(size*0.5,0,size*0.5,0)
                                                ngui.TextScaled = true
                                                ngui.TextWrapped = false
                                                ngui.FontSize = "Size48"
                                        end
                                        ngui.Position = UDim2.new(xp,0,yp,0)
                                        ngui:TweenPosition(UDim2.new(xe,0,ye,0), "Out", "Linear", math.random(35,80)*0.035*i, true,function()
                                                ngui:destroy()
                                        end)
                                        if i == 1 then
                                                local sp = 500*(1-(math.random()*2))
                                                ngui.Changed:connect(function(prop)
                                                        if prop ~= "Rotation" and prop ~= "ImageTransparency" then
                                                                ngui.Rotation = (tick()-tack)*sp
                                                                ngui.ImageTransparency = (frame.BackgroundTransparency*2) - 1
                                                        end
                                                end)
                                        else
                                                ngui.Changed:connect(function(prop)
                                                        if prop ~= "TextTransparency" and prop ~= "TextStrokeTransparency" then
                                                                local bt = frame.BackgroundTransparency
                                                                ngui.TextTransparency = (bt-0.5)/0.5
                                                                ngui.TextStrokeTransparency = bt
                                                        end
                                                end)
                                        end
                                end
                                last = tack
                        end
                else
                        if not ending then
                                ending = true
                                snoop:TweenPosition(UDim2.new(-0.25,0,0.25,0), "Out", "Sine", math.max((tiem+1)-now,0), true)
                                frog:TweenPosition(UDim2.new(1,0,0.25,0), "Out", "Sine", math.max((tiem+1)-now,0), true)
                        end
                        local nao = math.max(((tiem+1)-now)*0.3,0)
                        frame.BackgroundTransparency = 1 - nao
                        if nao == 0 then
                                gui:destroy()
                                return
                        end
                end
                frame.BackgroundColor3 = Color3.new(Rainbow(now))
                wait()
        end
end)
end
----------------------------------------------------
local Using="Bong"
local tools={m,m2,m3}
function tolFad(nam)
        local tol=nil
        for _,v in pairs(tools) do
                if Using=="Bong" then
                        tol=m
                elseif Using=="Blunt" then
                        tol=m2
                elseif Using=="Pipe" then
                        tol=m3
                end
                if v~=tol then
                        for _,c in pairs(v:GetChildren()) do
                                if c:IsA("Part") then
                                        c.Transparency=1
                                end
                        end
                else
                        for _,c in pairs(v:GetChildren()) do
                                if c:IsA("Part") and c.Name ~= "Bong" and c.Name ~= "Tube" then
                                        c.Transparency = 0
                                elseif c:IsA("Part") and c.Name == "Bong" or c.Name == "Tube" then
                                        c.Transparency = 0.2
                                end
                        end
                end
        end
end
--[[if Debounces.Bong == true then
        Debounces.Pipe = false
        Debounces.Blunt = false
        for i = 1, 10 do wait()
                for i,v in pairs(torso.Bong:GetChildren()) do
                        if v:IsA("Part") and v.Transparency <= 1 then
                                v.Transparency = v.Transparency - 0.1
                        end
                end
        end
        for i = 1, 10 do wait()
                for q,e in pairs(rarm.Pipe:GetChildren()) do
                        if e:IsA("Part") and e.Transparency >= 0 then
                                e.Transparency = e.Transparency + 0.1
                        elseif e:IsA("Part") and e.Transparency == 1 then wait()
                        end
                end
        end
        for i = 1, 10 do wait()
                for a,d in pairs(rarm.Blunt:GetChildren()) do
                        if d:IsA("Part") and d.Transparency >= 0 then
                                d.Transparency = d.Transparency + 0.1
                        elseif d:IsA("Part") and d.Transparency == 1 then wait()
                        end
                end
        end
elseif Debounces.Pipe == true then
        Debounces.Bong = false
        Debounces.Blunt = false
        for i = 1, 10 do wait()
                for i,v in pairs(torso.Bong:GetChildren()) do
                        if v:IsA("Part") and v.Transparency >= 0 then
                                v.Transparency = v.Transparency + 0.1
                        elseif v:IsA("Part") and v.Transparency == 1 then wait()
                        end
                end
        end
        for i = 1, 10 do wait()
                for q,e in pairs(rarm.Pipe:GetChildren()) do
                        if e:IsA("Part") and e.Transparency <= 1 then
                                e.Transparency = e.Transparency - 0.1
                        end
                end
        end
        for i = 1, 10 do wait()
                for a,d in pairs(rarm.Blunt:GetChildren()) do
                        if d:IsA("Part") and d.Transparency >= 0 then
                                d.Transparency = d.Transparency + 0.1
                        elseif d:IsA("Part") and d.Transparency == 1 then wait()
                        end
                end
        end
elseif Debounces.Blunt == true then
        Debounces.Bong = false
        Debounces.Pipe = false
        for i = 1, 10 do wait()
                for i,v in pairs(torso.Bong:GetChildren()) do
                        if v:IsA("Part") and v.Transparency >= 0 then
                                v.Transparency = v.Transparency + 0.1
                        elseif v:IsA("Part") and v.Transparency == 1 then wait()
                        end
                end
        end
        for i = 1, 10 do wait()
                for q,e in pairs(rarm.Pipe:GetChildren()) do
                        if e:IsA("Part") and e.Transparency >= 0 then
                                e.Transparency = e.Transparency + 0.1
                        elseif e:IsA("Part") and e.Transparency == 1 then wait()
                        end
                end
        end
        for i = 1, 10 do wait()
                for a,d in pairs(rarm.Blunt:GetChildren()) do
                        if d:IsA("Part") and d.Transparency <= 1 then
                                d.Transparency = d.Transparency - 0.1
                        end
                end
        end
end]]--
----------------------------------------------------
mouse.KeyDown:connect(function(key)
        if key == "q" then
                if Debounces.CanPuff == true then
                        Using = "Bong"
                        stanceToggle = "Bong"
                        tolFad(Using)
                end
        end
end)
mouse.KeyDown:connect(function(key)
        if key == "e" then
                if Debounces.CanPuff == true then
                        Using = "Pipe"
                        stanceToggle = "Pipe"
                        tolFad(Using)
                end
        end
end)
mouse.KeyDown:connect(function(key)
        if key == "r" then
                if Debounces.CanPuff == true then
                        Using = "Blunt"
                        stanceToggle = "Blunt"
                        tolFad(Using)
                end
        end
end)
----------------------------------------------------
mt = {8, 8.4, 8.8, 9, 9.4}
mouse.KeyDown:connect(function(key)
        if key == "h" then
        if Debounces.CanJoke == true then
        Debounces.CanJoke = false
        z                 = Instance.new("Sound",hed)
        z.SoundId         = "http://www.roblox.com/asset/?id=238500679"
        z.Looped          = false
        z.Pitch           = mt[math.random(1,#mt)]
        z.Volume          = 1
        z2                = Instance.new("Sound",hed)
        z2.SoundId        = "http://www.roblox.com/asset/?id=238500679"
        z2.Looped         = false
        z2.Pitch          = z.Pitch
        z2.Volume         = 1
        z3                = Instance.new("Sound",hed)
        z3.SoundId        = "http://www.roblox.com/asset/?id=238500679"
        z3.Looped         = false
        z3.Pitch          = z.Pitch
        z3.Volume         = 1
        z4                = Instance.new("Sound",hed)
        z4.SoundId        = "http://www.roblox.com/asset/?id=238500679"
        z4.Looped         = false
        z4.Pitch          = z.Pitch
        z4.Volume         = 1
        z:Play()
        z2:Play()
        z3:Play()
        z4:Play()
        wait(1)
        z:Destroy()
        z2:Destroy()
        z3:Destroy()
        z4:Destroy()
        if Debounces.CanJoke == false then
        Debounces.CanJoke = true
end
end
end
end)
----------------------------------------------------
mouse.Button1Down:connect(function(hoot)
        if Debounces.CanPuff == true and Using == "Bong" then
                Debounces.CanPuff = false
                Debounces.NoIdl = true
                Debounces.on = true
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.55,-1.4)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(-40)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.4) * CFrame.Angles(math.rad(-50), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                        weld2.C0 = Lerp(weld2.C0, CFrame.new(0, -.5, -1.4), 0.4)
                        weld2.C1 = Lerp(weld2.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30),0,0), 0.4)
                        if Debounces.on == false then break end
                        wait()
                end
        Match1()
z = Instance.new("Sound",hed)
z.SoundId = "rbxassetid://174628230"
z.Looped = true
z.Pitch = 2
z.Volume = 1
z1 = Instance.new("Sound",hed)
z1.SoundId = "rbxassetid://174628230"
z1.Looped = true
z1.Pitch = 2
z1.Volume = 1
wait(1)
z:Play()
z1:Play()
Burn()
wait(2.4)
for i = 1,10 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
        if Debounces.on == false then break end
        wait()
end
Match2()
wait(2.6)
                z:Stop()
                z1:Stop()
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(40), 0, 0), 0.4)
                        weld2.C0 = Lerp(weld2.C0, CFrame.new(0, -.5, -1.5), 0.4)
                        weld2.C1 = Lerp(weld2.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
                        if Debounces.on == false then break end
                        wait()
                end
        s.Enabled = true
        wait(5)
        s.Enabled = false
                Snoop()
                if Debounces.CanPuff == false then
                Debounces.CanPuff = true
                Debounces.NoIdl = false
                Debounces.on = true
                end
        end
end)
----------------------------------------------------
mouse.Button1Down:connect(function(hoot)
        if Debounces.CanPuff == true and Using == "Pipe" then
                Debounces.CanPuff = false
                Debounces.NoIdl = true
                Debounces.on = true
                Match1()
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1,0.65,-.3)*CFrame.Angles(math.rad(115),math.rad(-10),math.rad(-30)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.45)*CFrame.Angles(math.rad(110),math.rad(10),math.rad(45)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.4) * CFrame.Angles(math.rad(-10), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(5)), 0.2)
                        if Debounces.on == false then break end
                        wait()
                end
            Burn2()
                wait(2.4)
                for i = 1,10 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.4)
                        if Debounces.on == false then break end
                        wait()
                end
                Match2()
                wait(2.6)
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.4)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.3)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(20)), 0.6)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(30), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(5)), 0.2)
                        if Debounces.on == false then break end
                        wait()
                end
                s.Enabled = true
                wait(5)
                s.Enabled = false
                Snoop()
                if Debounces.CanPuff == false then
                Debounces.CanPuff = true
                Debounces.NoIdl = false
                Debounces.on = true
                end
        end
end)
----------------------------------------------------
mouse.Button1Down:connect(function(hoot)
        if Debounces.CanPuff == true and Using == "Blunt" then
                Debounces.CanPuff = false
                Debounces.NoIdl = true
                Debounces.on = true
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,.1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.45)*CFrame.Angles(math.rad(115),math.rad(10),math.rad(40)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.4) * CFrame.Angles(math.rad(-15), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(5)), 0.2)
                        if Debounces.on == false then break end
                        wait()
                end
                wait(0.5)
                Burn3()
                wait()
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.3)*CFrame.Angles(math.rad(115),math.rad(0),math.rad(-20)), 0.6)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(30), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(5)), 0.2)
                        if Debounces.on == false then break end
                        wait()
                end
                s.Enabled = true
                wait(5)
                s.Enabled = false
                Snoop()
                if Debounces.CanPuff == false then
                Debounces.CanPuff = true
                Debounces.NoIdl = false
                Debounces.on = true
                end
        end
end)
----------------------------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if stanceToggle == "Bong" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
elseif stanceToggle == "Pipe" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,-.3)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
elseif stanceToggle == "Blunt" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-14)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
end
elseif animpose == "Walking" then
if stanceToggle == "Bong" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Pipe" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/4), math.sin(sine/8)/4) * CFrame.Angles(-math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(10+2*math.cos(sine/4))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Blunt" then
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/4), -math.sin(sine/8)/4)*CFrame.Angles(math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(-10-2*math.cos(sine/3))), 0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/4), math.sin(sine/8)/4) * CFrame.Angles(-math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(10+2*math.cos(sine/3))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
end
end
end
end)