Player=game:GetService("Players").LocalPlayer 
-----------------------------------------------------------------
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
z = Instance.new("Sound", torso)
z.SoundId = "rbxassetid://206153677" -- Put Music ID Here.
z.Looped = true
z.Pitch = 0.73
z.Volume = 1
wait(.1)
z:Play()
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local stanceToggle = "Normal"
local l = game:GetService("Lighting")
local runs = game:GetService("RunService")
local debris=game:service"Debris"
local rs = runs.RenderStepped
local hb = runs.Heartbeat
local step = runs.Stepped
local stanceToggle = "Normal"
math.randomseed(os.time())
pts = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
ptz = {0.75, 0.8, 0.85, 0.9, 0.95, 1}
idz = {"231917856", "231917863"}
----------------------------------------------------
--[[for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end]]--
for i,v in pairs (hed:GetChildren()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
ks = false;
RKick = false;
RKicked = false;
}
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
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
	if not (t < 0 or t == 0 or t > 0) then 	-- Failsafe
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
function Tween(a,b,c)
	return a+(b-a)*c
end
----------------------------------------------------
function NewPart(prnt,siz,cf,col,mat)
	local prt=Instance.new("Part")
	prt.Parent=prnt
	prt.FormFactor=3
	prt.Name="Part"
	prt.Size=siz
	prt.CanCollide=false
	prt.Anchored=true
	prt.Locked=true
	prt.TopSurface=10
	prt.BottomSurface=10
	prt.FrontSurface=10
	prt.BackSurface=10
	prt.LeftSurface=10
	prt.RightSurface=10
	prt:BreakJoints()
	prt.CFrame=cf or CFrame.new(30,10,30)
	prt.Material=mat
	prt.BrickColor=BrickColor.new(col)
	m=Instance.new("SpecialMesh",prt)
	m.MeshType=6
	return prt
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
z.SoundId = "rbxassetid://343691920"
z.Looped = true
z.Volume = 1
z.Pitch = 1
wait(1)
--z:Play()
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Sword"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Dark Indigo")
p1.Material = Enum.Material.SmoothPlastic
p1.Reflectance = 0.30000001192093
p1.CFrame = CFrame.new(0.0817779973, 16.9978428, 24.1231575, 4.35829861e-008, -3.15302451e-010, -1, -1.2260136e-008, 1.00000417, -2.07065101e-010, 1.00000417, 1.22591297e-008, 4.31318767e-008)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=3270017"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Dark Indigo")
p2.Material = Enum.Material.SmoothPlastic
p2.Reflectance = 0.30000001192093
p2.CFrame = CFrame.new(-0.091170989, 17.6237793, 24.1108494, 4.40342767e-008, -4.2354209e-010, -1, -1.22612445e-008, 1.00001252, -9.88276266e-011, 1.00001252, 1.22582255e-008, 4.2680945e-008)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=3270017"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Dark Indigo")
p3.Material = Enum.Material.SmoothPlastic
p3.Reflectance = 0.30000001192093
p3.CFrame = CFrame.new(-0.001290977, 17.3269539, 23.416975, -1, -5.31782618e-010, -7.71617437e-010, 9.4117214e-012, 1.00002086, 1.22623529e-008, -1.49195145e-009, 1.22573214e-008, -1.00002086)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=3270017"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.204801083, 0.204801321, 0.136534423)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Black")
p4.CFrame = CFrame.new(-0.00478596753, 17.3274307, 23.980545, 1, -1.23001165e-009, -6.40024533e-010, -1.1765143e-010, 1.22634614e-008, 1.00002921, 1.95034877e-009, -1.00002921, 1.22564172e-008)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p4.TopSurface = Enum.SurfaceType.Weld
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=1033714"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.VertexColor = Vector3.new(0, 0.899999976, 0.699999988)
b4.Scale = Vector3.new(0.0455113538, 0.455114096, 0.0455114767)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.Material = Enum.Material.Neon
p5.Reflectance = 0.5
p5.Transparency = 0.0099999997764826
p5.CFrame = CFrame.new(-0.00582695846, 17.0333862, 24.0054722, -1, -3.17473727e-008, 8.22757613e-008, -8.72001635e-008, 0.342033029, -0.939727962, -2.40875098e-009, -0.939727962, -0.342033029)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.0606827289, 0.151704669, 0.0606819652)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Dark Indigo")
p6.Material = Enum.Material.SmoothPlastic
p6.Reflectance = 0.30000001192093
p6.CFrame = CFrame.new(-0.0911659524, 17.3251324, 24.1947174, 4.58651641e-008, -8.57646398e-010, -1, 0, 1.00004601, 3.3526959e-010, 1.00004601, 0, 4.08515106e-008)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=3270017"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Dark Indigo")
p7.Material = Enum.Material.SmoothPlastic
p7.Reflectance = 0.30000001192093
p7.CFrame = CFrame.new(-0.00128895044, 17.3275337, 23.4541702, -1, -9.6589059e-010, -2.60252264e-009, 4.43512033e-010, 1.00005436, 1.00633792e-012, -3.32286376e-009, -1.006348e-012, -1.00005436)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=3270017"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.141085163, 0.150187641, 0.0728183538)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Dark Indigo")
p8.Material = Enum.Material.SmoothPlastic
p8.Reflectance = 0.30000001192093
p8.CFrame = CFrame.new(-0.0911709517, 16.9988403, 24.124567, 4.67748862e-008, -1.07413611e-009, -1, -2.01272679e-012, 1.0000627, 5.5175492e-010, 1.0000627, -2.01271768e-012, 3.99425133e-008)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=3270017"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Dark Indigo")
p9.Material = Enum.Material.SmoothPlastic
p9.Reflectance = 0.30000001192093
p9.CFrame = CFrame.new(0.0817780346, 17.0240288, 24.112257, 4.72262052e-008, -1.18238208e-009, -1, -3.01911295e-012, 1.00007105, 6.59998722e-010, 1.00007105, -3.01909929e-012, 3.94915567e-008)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=3270017"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Dark Indigo")
p10.Material = Enum.Material.SmoothPlastic
p10.Reflectance = 0.30000001192093
p10.CFrame = CFrame.new(-0.00128594786, 17.3279648, 23.4923096, -1, -1.29062894e-009, -3.96357436e-009, 7.68243857e-010, 1.00007939, 4.02548698e-012, -4.68392258e-009, -4.02549782e-012, -1.00007939)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=3270017"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.0682670251, 0.068267107, 0.0682672113)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Dark Indigo")
p11.Material = Enum.Material.Neon
p11.Reflectance = 0.5
p11.Transparency = 0.30000001192093
p11.CFrame = CFrame.new(-0.00582293561, 17.1578236, 24.0415058, -1, -3.45386226e-008, 8.19521944e-008, -8.65539533e-008, 0.342050195, -0.939775169, -5.14234655e-009, -0.939775169, -0.342050195)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.0728192627, 0.182045639, 0.0728183538)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Dark Indigo")
p12.Material = Enum.Material.SmoothPlastic
p12.Reflectance = 0.30000001192093
p12.CFrame = CFrame.new(0.081781067, 17.6252537, 24.1378975, 4.85987641e-008, -1.50826196e-009, -1, 0, 1.00009632, 9.8587094e-010, 1.00009632, 0, 3.81200884e-008)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=3270017"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Dark Indigo")
p13.Material = Enum.Material.SmoothPlastic
p13.Reflectance = 0.30000001192093
p13.CFrame = CFrame.new(-0.0911709294, 17.6003609, 24.1255779, 4.90500973e-008, -1.61651148e-009, -1, -1.00640351e-012, 1.00010467, 1.09411835e-009, 1.00010467, -1.00639896e-012, 3.76691176e-008)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=3270017"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Neon
p14.Reflectance = 0.5
p14.Transparency = 0.0099999997764826
p14.CFrame = CFrame.new(-0.00582291186, 17.1595592, 24.0385437, -1, -3.59332226e-008, 8.17913985e-008, -8.62302869e-008, 0.342058837, -0.939798892, -6.50784671e-009, -0.939798892, -0.342058837)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.0637515709, 0.151704669, 0.060681954)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Dark Indigo")
p15.Material = Enum.Material.SmoothPlastic
p15.Reflectance = 0.30000001192093
p15.CFrame = CFrame.new(0.0817780942, 17.6473274, 24.125988, 4.99642638e-008, -1.83414528e-009, -1, 0, 1.00012159, 1.31174716e-009, 1.00012159, 0, 3.67556794e-008)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=3270017"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.Neon
p16.Reflectance = 0.5
p16.Transparency = 0.0099999997764826
p16.CFrame = CFrame.new(-0.00581388921, 17.3299732, 23.85042, 1, -6.70165434e-009, -1.94239758e-009, -1.41999779e-009, 1.00637185e-012, 1.00012994, 7.42203454e-009, -1.00012994, -1.00642454e-012)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.115295447, 0.288239002, 0.115295798)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Dark Indigo")
p17.Material = Enum.Material.Neon
p17.Reflectance = 0.5
p17.Transparency = 0.30000001192093
p17.CFrame = CFrame.new(-0.00582687836, 17.033802, 24.0114479, -1, -3.73345159e-008, 8.16281727e-008, -8.59066134e-008, 0.34206748, -0.939822674, -7.88048204e-009, -0.939822674, -0.34206748)
p17.CanCollide = false
p17.Locked = true
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.0728192627, 0.182045639, 0.0728183538)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.Neon
p18.Reflectance = 0.5
p18.Transparency = 0.0099999997764826
p18.CFrame = CFrame.new(-0.00582286948, 17.506052, 24.0348091, 1, -6.42979714e-009, -4.6364903e-009, -1.63763048e-009, -0.342070431, 0.939830661, 8.34332603e-009, -0.939830661, -0.342070431)
p18.CanCollide = false
p18.Locked = true
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.0637515709, 0.151704669, 0.060681954)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Dark Indigo")
p19.Material = Enum.Material.SmoothPlastic
p19.Reflectance = 0.30000001192093
p19.CFrame = CFrame.new(-0.091168873, 17.626297, 24.1393166, 5.18002103e-008, -2.26601116e-009, -1, 2.98023224e-008, 1.00015533, 1.74360792e-009, 1.00015533, -2.98023224e-008, 3.49211859e-008)
p19.CanCollide = false
p19.Locked = true
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p19)
b19.MeshId = "http://www.roblox.com/asset/?id=3270017"
b19.TextureId = ""
b19.MeshType = Enum.MeshType.FileMesh
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Dark Indigo")
p20.Material = Enum.Material.Neon
p20.Reflectance = 0.5
p20.Transparency = 0.30000001192093
p20.CFrame = CFrame.new(-0.00582686067, 17.6325226, 24.0075035, 1, -7.21604465e-009, -5.15064613e-009, -1.85186089e-009, -0.342076212, 0.939846516, 9.25801658e-009, -0.939846516, -0.342076212)
p20.CanCollide = false
p20.Locked = true
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b20 = Instance.new("SpecialMesh", p20)
b20.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b20.TextureId = ""
b20.MeshType = Enum.MeshType.FileMesh
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.0728192627, 0.182045639, 0.0728183538)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Really black")
p21.Material = Enum.Material.Neon
p21.Reflectance = 0.5
p21.Transparency = 0.0099999997764826
p21.CFrame = CFrame.new(-0.00582685182, 17.6313725, 24.0041409, 1, -7.61518404e-009, -5.40870415e-009, -1.95783967e-009, -0.342079103, 0.939854443, 9.72134995e-009, -0.939854443, -0.342079103)
p21.CanCollide = false
p21.Locked = true
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b21 = Instance.new("SpecialMesh", p21)
b21.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.0606827289, 0.151704669, 0.0606819652)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Dark Indigo")
p22.Material = Enum.Material.Neon
p22.Reflectance = 0.5
p22.Transparency = 0.30000001192093
p22.CFrame = CFrame.new(-0.00581384357, 17.3308601, 23.8497276, 1, -9.4642818e-009, -2.58623145e-009, -2.06381934e-009, -5.96046448e-008, 1.00018072, 1.0184686e-008, -1.00018072, -5.96046448e-008)
p22.CanCollide = false
p22.Locked = true
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b22 = Instance.new("SpecialMesh", p22)
b22.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b22.TextureId = ""
b22.MeshType = Enum.MeshType.FileMesh
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.182045415, 0.455114096, 0.182045907)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Dark Indigo")
p23.Material = Enum.Material.SmoothPlastic
p23.Reflectance = 0.30000001192093
p23.CFrame = CFrame.new(0.0817781463, 17.6018543, 24.1276073, 5.3636704e-008, -2.69449041e-009, -1, 5.96041367e-008, 1.00018907, 2.17207852e-009, 1.00018907, -5.96061511e-008, 3.30861596e-008)
p23.CanCollide = false
p23.Locked = true
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("SpecialMesh", p23)
b23.MeshId = "http://www.roblox.com/asset/?id=3270017"
b23.TextureId = ""
b23.MeshType = Enum.MeshType.FileMesh
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Dark Indigo")
p24.Material = Enum.Material.SmoothPlastic
p24.Reflectance = 0.30000001192093
p24.CFrame = CFrame.new(0.0817811489, 17.0261841, 24.1403275, 5.40880798e-008, -2.80274981e-009, -1, 5.96036287e-008, 1.00019741, 2.28033592e-009, 1.00019741, -5.96076575e-008, 3.26351461e-008)
p24.CanCollide = false
p24.Locked = true
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b24 = Instance.new("SpecialMesh", p24)
b24.MeshId = "http://www.roblox.com/asset/?id=3270017"
b24.TextureId = ""
b24.MeshType = Enum.MeshType.FileMesh
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Dark Indigo")
p25.Material = Enum.Material.SmoothPlastic
p25.Reflectance = 0.30000001192093
p25.CFrame = CFrame.new(-0.0911658406, 17.3279057, 24.1985741, 5.45394592e-008, -2.9110101e-009, -1, 5.96031207e-008, 1.00020576, 2.38859421e-009, 1.00020576, -5.96091638e-008, 3.21841291e-008)
p25.CanCollide = false
p25.Locked = true
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("SpecialMesh", p25)
b25.MeshId = "http://www.roblox.com/asset/?id=3270017"
b25.TextureId = ""
b25.MeshType = Enum.MeshType.FileMesh
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.0682670251, 0.068267107, 0.0682672113)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Dark Indigo")
p26.Material = Enum.Material.SmoothPlastic
p26.Reflectance = 0.30000001192093
p26.CFrame = CFrame.new(0.0817781538, 17.0480747, 24.1282158, 5.49908421e-008, -3.01927128e-009, -1, 5.96026126e-008, 1.0002141, 2.49685339e-009, 1.0002141, -5.96106702e-008, 3.17331086e-008)
p26.CanCollide = false
p26.Locked = true
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("SpecialMesh", p26)
b26.MeshId = "http://www.roblox.com/asset/?id=3270017"
b26.TextureId = ""
b26.MeshType = Enum.MeshType.FileMesh
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Dark Indigo")
p27.Material = Enum.Material.Neon
p27.Reflectance = 0.5
p27.Transparency = 0.30000001192093
p27.CFrame = CFrame.new(-0.0058228299, 17.5086784, 24.0401821, 1, -9.95665062e-009, -6.94975455e-009, -2.60511146e-009, -0.342096329, 0.93990171, 1.2448691e-008, -0.93990171, -0.342096329)
p27.CanCollide = false
p27.Locked = true
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
b27 = Instance.new("SpecialMesh", p27)
b27.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b27.TextureId = ""
b27.MeshType = Enum.MeshType.FileMesh
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.0728192627, 0.182045639, 0.0728183538)
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Dark Indigo")
p28.Material = Enum.Material.SmoothPlastic
p28.Reflectance = 0.30000001192093
p28.CFrame = CFrame.new(-0.0911708325, 17.0483608, 24.128624, 5.59055877e-008, -3.23352145e-009, -1, 5.96046448e-008, 1.00023103, 2.71109712e-009, 1.00023103, -5.96046448e-008, 3.08190948e-008)
p28.CanCollide = false
p28.Locked = true
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p28.BottomSurface = Enum.SurfaceType.Smooth
p28.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("SpecialMesh", p28)
b28.MeshId = "http://www.roblox.com/asset/?id=3270017"
b28.TextureId = ""
b28.MeshType = Enum.MeshType.FileMesh
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Dark Indigo")
p29.Material = Enum.Material.SmoothPlastic
p29.Reflectance = 0.30000001192093
p29.CFrame = CFrame.new(-0.0911708325, 17.0268955, 24.1163101, 5.63569813e-008, -3.34178551e-009, -1, 5.96041367e-008, 1.00023937, 2.81935919e-009, 1.00023937, -5.96061511e-008, 3.03680636e-008)
p29.CanCollide = false
p29.Locked = true
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p29.BottomSurface = Enum.SurfaceType.Smooth
p29.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("SpecialMesh", p29)
b29.MeshId = "http://www.roblox.com/asset/?id=3270017"
b29.TextureId = ""
b29.MeshType = Enum.MeshType.FileMesh
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Dark Indigo")
p30.Material = Enum.Material.SmoothPlastic
p30.Reflectance = 0.30000001192093
p30.CFrame = CFrame.new(-0.0911708325, 17.6495552, 24.1290302, 5.68083784e-008, -3.45005047e-009, -1, 5.96036287e-008, 1.00024772, 2.92762214e-009, 1.00024772, -5.96076575e-008, 2.99170289e-008)
p30.CanCollide = false
p30.Locked = true
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p30.BottomSurface = Enum.SurfaceType.Smooth
p30.TopSurface = Enum.SurfaceType.Smooth
b30 = Instance.new("SpecialMesh", p30)
b30.MeshId = "http://www.roblox.com/asset/?id=3270017"
b30.TextureId = ""
b30.MeshType = Enum.MeshType.FileMesh
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p31 = Instance.new("Part", m)
p31.BrickColor = BrickColor.new("Dark Indigo")
p31.Material = Enum.Material.SmoothPlastic
p31.Reflectance = 0.30000001192093
p31.CFrame = CFrame.new(0.0817831606, 17.3287735, 24.199791, 5.72597791e-008, -3.55831631e-009, -1, 5.96031207e-008, 1.00025606, 3.03588599e-009, 1.00025606, -5.96091638e-008, 2.94659888e-008)
p31.CanCollide = false
p31.Locked = true
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p31.BottomSurface = Enum.SurfaceType.Smooth
p31.TopSurface = Enum.SurfaceType.Smooth
b31 = Instance.new("SpecialMesh", p31)
b31.MeshId = "http://www.roblox.com/asset/?id=3270017"
b31.TextureId = ""
b31.MeshType = Enum.MeshType.FileMesh
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.0682670251, 0.068267107, 0.0682672113)
p32 = Instance.new("Part", m)
p32.BrickColor = BrickColor.new("Dark Indigo")
p32.Material = Enum.Material.SmoothPlastic
p32.Reflectance = 0.30000001192093
p32.CFrame = CFrame.new(0.0817781538, 17.6282234, 24.1169167, 5.77111834e-008, -3.66658304e-009, -1, 5.96026126e-008, 1.00026441, 3.14415072e-009, 1.00026441, -5.96106702e-008, 2.90149451e-008)
p32.CanCollide = false
p32.Locked = true
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p32.BottomSurface = Enum.SurfaceType.Smooth
p32.TopSurface = Enum.SurfaceType.Smooth
b32 = Instance.new("SpecialMesh", p32)
b32.MeshId = "http://www.roblox.com/asset/?id=3270017"
b32.TextureId = ""
b32.MeshType = Enum.MeshType.FileMesh
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p33 = Instance.new("Part", m)
p33.BrickColor = BrickColor.new("Dark Indigo")
p33.Material = Enum.Material.SmoothPlastic
p33.Reflectance = 0.30000001192093
p33.CFrame = CFrame.new(0.081783168, 17.3290653, 24.2001972, 5.81625947e-008, -3.77485065e-009, -1, 5.96021046e-008, 1.00027275, 3.25241634e-009, 1.00027275, -5.96121765e-008, 2.85638979e-008)
p33.CanCollide = false
p33.Locked = true
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p33.BottomSurface = Enum.SurfaceType.Smooth
p33.TopSurface = Enum.SurfaceType.Smooth
b33 = Instance.new("SpecialMesh", p33)
b33.MeshId = "http://www.roblox.com/asset/?id=3270017"
b33.TextureId = ""
b33.MeshType = Enum.MeshType.FileMesh
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p34 = Instance.new("Part", m)
p34.BrickColor = BrickColor.new("Dark Indigo")
p34.Material = Enum.Material.SmoothPlastic
p34.Reflectance = 0.30000001192093
p34.CFrame = CFrame.new(-0.0911688283, 17.027607, 24.1423588, 5.86140096e-008, -3.88311916e-009, -1, 5.96015965e-008, 1.0002811, 3.36068284e-009, 1.0002811, -5.96136829e-008, 2.81128472e-008)
p34.CanCollide = false
p34.Locked = true
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p34.BottomSurface = Enum.SurfaceType.Smooth
p34.TopSurface = Enum.SurfaceType.Smooth
b34 = Instance.new("SpecialMesh", p34)
b34.MeshId = "http://www.roblox.com/asset/?id=3270017"
b34.TextureId = ""
b34.MeshType = Enum.MeshType.FileMesh
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.0455113538, 0.0455114096, 0.0682672113)
p35 = Instance.new("Part", m)
p35.BrickColor = BrickColor.new("Dark Indigo")
p35.Material = Enum.Material.Neon
p35.CFrame = CFrame.new(0.00079318881, 16.6618919, 24.1201324, 1.48590857e-007, 7.99790578e-005, -1, -0.996490002, 0.0871035904, 6.82584687e-006, 0.0871035904, 0.996490002, 7.96798267e-005)
p35.CanCollide = false
p35.Locked = true
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p35.BottomSurface = Enum.SurfaceType.Smooth
p35.TopSurface = Enum.SurfaceType.Smooth
b35 = Instance.new("SpecialMesh", p35)
b35.MeshType = Enum.MeshType.Sphere
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.120086089, 0.637123406, 0.200143486)
p36 = Instance.new("Part", m)
p36.BrickColor = BrickColor.new("Dark Indigo")
p36.Material = Enum.Material.Neon
p36.CFrame = CFrame.new(0.000820193964, 17.8605766, 24.1365757, -6.68205757e-008, -7.99445916e-005, 1, 0.966234148, -0.25882116, -2.06344412e-005, 0.25882116, 0.966234148, 7.72948988e-005)
p36.CanCollide = false
p36.Locked = true
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.341090173, 0.490385354, 0.341090739)
p36.BottomSurface = Enum.SurfaceType.Smooth
p36.TopSurface = Enum.SurfaceType.Smooth
b36 = Instance.new("SpecialMesh", p36)
b36.MeshType = Enum.MeshType.Sphere
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.253515095, 1, 0.333572537)
p37 = Instance.new("Part", m)
p37.BrickColor = BrickColor.new("Dark Indigo")
p37.Material = Enum.Material.Neon
p37.CFrame = CFrame.new(0.000820202637, 18.0012093, 24.120554, -5.89434421e-008, -7.99551053e-005, 1, 0.996507406, -0.087105006, -6.91361038e-006, 0.087105006, 0.996507406, 7.97143366e-005)
p37.CanCollide = false
p37.Locked = true
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p37.BottomSurface = Enum.SurfaceType.Smooth
p37.TopSurface = Enum.SurfaceType.Smooth
b37 = Instance.new("SpecialMesh", p37)
b37.MeshType = Enum.MeshType.Sphere
b37.Name = "Mesh"
b37.Scale = Vector3.new(0.120086089, 0.637123406, 0.200143486)
p38 = Instance.new("Part", m)
p38.BrickColor = BrickColor.new("Dark Indigo")
p38.Material = Enum.Material.Neon
p38.CFrame = CFrame.new(0.000820217829, 16.8028069, 24.1370029, 1.59892807e-007, 7.99534173e-005, -1, -0.966251016, 0.258825779, 2.05475681e-005, 0.258825779, 0.966251016, 7.72621788e-005)
p38.CanCollide = false
p38.Locked = true
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.341090173, 0.490385354, 0.341090739)
p38.BottomSurface = Enum.SurfaceType.Smooth
p38.TopSurface = Enum.SurfaceType.Smooth
b38 = Instance.new("SpecialMesh", p38)
b38.MeshType = Enum.MeshType.Sphere
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.253515095, 1, 0.333572537)
p39 = Instance.new("Part", m)
p39.BrickColor = BrickColor.new("Gold")
p39.Material = Enum.Material.SmoothPlastic
p39.Reflectance = 0.20000000298023
p39.Name = "Circle"
p39.CFrame = CFrame.new(-0.00478575425, 17.3325539, 25.3061905, 1, -1.65309757e-008, -4.80958988e-008, 3.98413249e-008, -1.20796713e-007, 1.00032449, 1.86919351e-008, -1.00032449, -1.17619138e-007)
p39.CanCollide = false
p39.Locked = true
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p39.BottomSurface = Enum.SurfaceType.Smooth
p39.TopSurface = Enum.SurfaceType.Smooth
b39 = Instance.new("CylinderMesh", p39)
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.400286943, 0.423637152, 0.467001528)
p40 = Instance.new("Part", m)
p40.BrickColor = BrickColor.new("Really black")
p40.Material = Enum.Material.SmoothPlastic
p40.Name = "Block"
p40.CFrame = CFrame.new(-0.00477576628, 17.2029457, 24.1130314, -1, -1.92565636e-007, 9.19236101e-008, -8.34673628e-008, -1.63873466e-007, -1.00033283, 1.56490643e-007, -1.00033283, 1.60694682e-007)
p40.CanCollide = false
p40.Locked = true
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p40.BottomSurface = Enum.SurfaceType.Smooth
p40.TopSurface = Enum.SurfaceType.Smooth
b40 = Instance.new("SpecialMesh", p40)
b40.MeshType = Enum.MeshType.Wedge
b40.Name = "WedgeMesh"
b40.Scale = Vector3.new(0.533715904, 0.200143531, 0.773888171)
p41 = Instance.new("Part", m)
p41.BrickColor = BrickColor.new("Really black")
p41.Material = Enum.Material.SmoothPlastic
p41.Name = "Block"
p41.CFrame = CFrame.new(-0.0047757579, 17.4648685, 24.1132374, 1, 1.56679448e-007, -4.60911309e-009, -4.09274037e-009, -7.64161499e-008, 1.00034118, 1.93782128e-007, -1.00034118, -7.32396686e-008)
p41.CanCollide = false
p41.Locked = true
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p41.BottomSurface = Enum.SurfaceType.Smooth
p41.TopSurface = Enum.SurfaceType.Smooth
b41 = Instance.new("SpecialMesh", p41)
b41.MeshType = Enum.MeshType.Wedge
b41.Name = "WedgeMesh"
b41.Scale = Vector3.new(0.533715904, 0.200143531, 0.760545254)
p42 = Instance.new("Part", m)
p42.BrickColor = BrickColor.new("Really black")
p42.Material = Enum.Material.SmoothPlastic
p42.Name = "Circle"
p42.CFrame = CFrame.new(-0.00477172295, 17.3329887, 25.4724331, -6.16132638e-008, -1, -5.37222489e-009, -7.64230563e-008, 3.54596352e-009, 1.00034952, -1.00034952, 2.36759945e-008, -7.32485077e-008)
p42.CanCollide = false
p42.Locked = true
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p42.BottomSurface = Enum.SurfaceType.Smooth
p42.TopSurface = Enum.SurfaceType.Smooth
b42 = Instance.new("CylinderMesh", p42)
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.667144895, 0.400287062, 0.667144954)
p43 = Instance.new("Part", m)
p43.BrickColor = BrickColor.new("Really black")
p43.Material = Enum.Material.SmoothPlastic
p43.Name = "Circle"
p43.CFrame = CFrame.new(-0.00478171511, 17.3331299, 25.3588276, 1, -1.83507538e-008, -4.85290101e-008, 3.94096844e-008, -1.20799953e-007, 1.00035787, 2.05117843e-008, -1.00035787, -1.17623841e-007)
p43.CanCollide = false
p43.Locked = true
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p43.BottomSurface = Enum.SurfaceType.Smooth
p43.TopSurface = Enum.SurfaceType.Smooth
b43 = Instance.new("CylinderMesh", p43)
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.467001408, 0.266858011, 0.467001468)
p44 = Instance.new("Part", m)
p44.BrickColor = BrickColor.new("Dark Indigo")
p44.Material = Enum.Material.Neon
p44.CFrame = CFrame.new(0.0008072583, 17.5270195, 23.6464233, -9.34702626e-008, -7.99179834e-005, 1, 0.940010309, 0.342218608, 2.74279228e-005, -0.342218608, 0.940010309, 7.51314947e-005)
p44.CanCollide = false
p44.Locked = true
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p44.BottomSurface = Enum.SurfaceType.Smooth
p44.TopSurface = Enum.SurfaceType.Smooth
b44 = Instance.new("SpecialMesh", p44)
b44.MeshType = Enum.MeshType.Sphere
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.120086111, 0.903981566, 0.200143546)
p45 = Instance.new("Part", m)
p45.BrickColor = BrickColor.new("Dark Indigo")
p45.Material = Enum.Material.Neon
p45.CFrame = CFrame.new(0.00080726546, 17.6835766, 23.6418419, -8.36607796e-008, -7.99489135e-005, 1, 0.766281724, 0.6430884, 5.14687308e-005, -0.6430884, 0.766281724, 6.12501899e-005)
p45.CanCollide = false
p45.Locked = true
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.341090173, 0.535896719, 0.341090739)
p45.BottomSurface = Enum.SurfaceType.Smooth
p45.TopSurface = Enum.SurfaceType.Smooth
b45 = Instance.new("SpecialMesh", p45)
b45.MeshType = Enum.MeshType.Sphere
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.253515095, 1, 0.333572537)
p46 = Instance.new("Part", m)
p46.BrickColor = BrickColor.new("Dark Indigo")
p46.Material = Enum.Material.Neon
p46.CFrame = CFrame.new(0.000824270712, 17.7363682, 23.5002213, -7.51324478e-008, -7.99625777e-005, 1, 0.642974615, 0.766388476, 6.13208758e-005, -0.766388476, 0.642974615, 5.13978084e-005)
p46.CanCollide = false
p46.Locked = true
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p46.BottomSurface = Enum.SurfaceType.Smooth
p46.TopSurface = Enum.SurfaceType.Smooth
b46 = Instance.new("SpecialMesh", p46)
b46.MeshType = Enum.MeshType.Sphere
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.120086111, 0.903981566, 0.200143546)
p47 = Instance.new("Part", m)
p47.BrickColor = BrickColor.new("Really black")
p47.Material = Enum.Material.SmoothPlastic
p47.Name = "Handle"
p47.CFrame = CFrame.new(-0.00476768985, 17.3337212, 24.8452072, 1, -2.01071089e-008, -4.89962986e-008, 3.89482011e-008, -1.52160879e-007, 1.0003922, 2.22717063e-008, -1.0003922, -1.45863055e-007)
p47.CanCollide = false
p47.Locked = true
p47.FormFactor = Enum.FormFactor.Custom
p47.Size = Vector3.new(0.341090173, 1.06951797, 0.341090739)
p47.BottomSurface = Enum.SurfaceType.Smooth
p47.TopSurface = Enum.SurfaceType.Smooth
b47 = Instance.new("CylinderMesh", p47)
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.333572447, 1, 0.467001528)
p48 = Instance.new("Part", m)
p48.BrickColor = BrickColor.new("Really black")
p48.Material = Enum.Material.SmoothPlastic
p48.Name = "Block"
p48.CFrame = CFrame.new(-0.00476769311, 17.1517487, 24.2165375, 1, 5.40123679e-009, -2.12932623e-008, -4.88056529e-009, -1.00040054, -1.51509539e-007, 2.20023999e-008, 1.45210194e-007, -1.00040054)
p48.CanCollide = false
p48.Locked = true
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(0.341090173, 0.364091188, 0.341090739)
p48.BottomSurface = Enum.SurfaceType.Smooth
p48.TopSurface = Enum.SurfaceType.Smooth
b48 = Instance.new("SpecialMesh", p48)
b48.MeshType = Enum.MeshType.Wedge
b48.Name = "WedgeMesh"
b48.Scale = Vector3.new(0.533715785, 1, 0.263522238)
p49 = Instance.new("Part", m)
p49.BrickColor = BrickColor.new("Really black")
p49.Material = Enum.Material.SmoothPlastic
p49.Name = "Block"
p49.CFrame = CFrame.new(-0.00476768566, 17.5161419, 24.2167358, -1, -9.29322965e-008, -2.1751827e-008, -8.24696684e-008, 1.00040889, -1.51509795e-007, -2.24609593e-008, -1.45212695e-007, -1.00040889)
p49.CanCollide = false
p49.Locked = true
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.341090173, 0.364091188, 0.341090739)
p49.BottomSurface = Enum.SurfaceType.Smooth
p49.TopSurface = Enum.SurfaceType.Smooth
b49 = Instance.new("SpecialMesh", p49)
b49.MeshType = Enum.MeshType.Wedge
b49.Name = "WedgeMesh"
b49.Scale = Vector3.new(0.533715785, 1, 0.263522238)
p50 = Instance.new("Part", m)
p50.BrickColor = BrickColor.new("Really black")
p50.Material = Enum.Material.SmoothPlastic
p50.Name = "Block"
p50.CFrame = CFrame.new(-0.00477567874, 17.6471729, 24.1264477, 1, -2.22103953e-008, -5.61780666e-009, -5.09713516e-009, -1.51509767e-007, 1.00041723, 2.29195471e-008, -1.00041723, -1.45214912e-007)
p50.CanCollide = false
p50.Locked = true
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p50.BottomSurface = Enum.SurfaceType.Smooth
p50.TopSurface = Enum.SurfaceType.Smooth
b50 = Instance.new("BlockMesh", p50)
b50.Name = "Mesh"
b50.Scale = Vector3.new(0.533715785, 0.266858011, 0.300215244)
p51 = Instance.new("Part", m)
p51.BrickColor = BrickColor.new("Really black")
p51.Material = Enum.Material.SmoothPlastic
p51.Name = "Block"
p51.CFrame = CFrame.new(-0.0047756657, 17.0212688, 24.126646, 1, -2.26689671e-008, -5.72609116e-009, -5.20541787e-009, -1.51510022e-007, 1.00042558, 2.33781261e-008, -1.00042558, -1.45217129e-007)
p51.CanCollide = false
p51.Locked = true
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p51.BottomSurface = Enum.SurfaceType.Smooth
p51.TopSurface = Enum.SurfaceType.Smooth
b51 = Instance.new("BlockMesh", p51)
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.533715785, 0.266858011, 0.300215244)
p52 = Instance.new("Part", m)
p52.BrickColor = BrickColor.new("Really black")
p52.Material = Enum.Material.SmoothPlastic
p52.Name = "Block"
p52.CFrame = CFrame.new(-0.00477165729, 17.334446, 24.1609974, 1, -2.31275425e-008, -5.83437654e-009, -5.31370148e-009, -1.51510278e-007, 1.00043392, 2.38367086e-008, -1.00043392, -1.45219346e-007)
p52.CanCollide = false
p52.Locked = true
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.341090173, 0.341090739, 0.523380995)
p52.BottomSurface = Enum.SurfaceType.Smooth
p52.TopSurface = Enum.SurfaceType.Smooth
b52 = Instance.new("BlockMesh", p52)
b52.Name = "Mesh"
b52.Scale = Vector3.new(0.533715785, 0.0667145103, 1)
p53 = Instance.new("Part", m)
p53.BrickColor = BrickColor.new("Deep orange")
p53.Material = Enum.Material.Neon
p53.Name = "Circle"
p53.CFrame = CFrame.new(-0.00477161724, 17.3345947, 25.4747982, -6.65724826e-008, -1, -6.5974981e-009, -1.07784714e-007, 4.76686246e-009, 1.00044227, -1.00044227, 1.87171736e-008, -1.01495679e-007)
p53.CanCollide = false
p53.Locked = true
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p53.BottomSurface = Enum.SurfaceType.Smooth
p53.TopSurface = Enum.SurfaceType.Smooth
b53 = Instance.new("CylinderMesh", p53)
b53.Name = "Mesh"
b53.Scale = Vector3.new(0.533715785, 0.467001498, 0.42771104)
p54 = Instance.new("Part", m)
p54.BrickColor = BrickColor.new("Really black")
p54.Material = Enum.Material.Neon
p54.Name = "Circle"
p54.CFrame = CFrame.new(-0.00477160793, 17.3347397, 25.4750118, -6.70239686e-008, -1, -6.7057826e-009, -1.07784665e-007, 4.87513985e-009, 1.00045061, -1.00045061, 1.82660429e-008, -1.01497477e-007)
p54.CanCollide = false
p54.Locked = true
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p54.BottomSurface = Enum.SurfaceType.Smooth
p54.TopSurface = Enum.SurfaceType.Smooth
b54 = Instance.new("CylinderMesh", p54)
b54.Name = "Mesh"
b54.Scale = Vector3.new(0.533715785, 0.490944952, 0.188277081)
p55 = Instance.new("Part", m)
p55.BrickColor = BrickColor.new("Dark Indigo")
p55.Material = Enum.Material.Metal
p55.CFrame = CFrame.new(-0.00487261312, 17.3358631, 24.8431625, 1.57569445e-007, 7.99628251e-005, -1, -1.00045907, -7.75639055e-005, -1.52042574e-007, -7.75701919e-005, 1.00045907, 7.99498011e-005)
p55.CanCollide = false
p55.Locked = true
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p55.BottomSurface = Enum.SurfaceType.Smooth
p55.TopSurface = Enum.SurfaceType.Smooth
b55 = Instance.new("SpecialMesh", p55)
b55.MeshType = Enum.MeshType.Sphere
b55.Name = "Mesh"
b55.Scale = Vector3.new(0.253515154, 0.903981686, 0.400287092)
p56 = Instance.new("Part", m)
p56.BrickColor = BrickColor.new("Dark Indigo")
p56.Material = Enum.Material.Metal
p56.CFrame = CFrame.new(-0.00489160931, 17.3360176, 24.6020527, 1.57678528e-007, 7.9963298e-005, -1, -1.00046766, -7.75645822e-005, -1.51934799e-007, -7.75708468e-005, 1.00046766, 7.99500122e-005)
p56.CanCollide = false
p56.Locked = true
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p56.BottomSurface = Enum.SurfaceType.Smooth
p56.TopSurface = Enum.SurfaceType.Smooth
b56 = Instance.new("SpecialMesh", p56)
b56.MeshType = Enum.MeshType.Sphere
b56.Name = "Mesh"
b56.Scale = Vector3.new(0.253515154, 0.903981686, 0.400287092)
p57 = Instance.new("Part", m)
p57.BrickColor = BrickColor.new("Dark Indigo")
p57.Material = Enum.Material.Metal
p57.CFrame = CFrame.new(-0.00487858616, 17.3361664, 25.1031246, 1.57787611e-007, 7.9963771e-005, -1, -1.00047624, -7.75652588e-005, -1.51827024e-007, -7.75715016e-005, 1.00047624, 7.99502232e-005)
p57.CanCollide = false
p57.Locked = true
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p57.BottomSurface = Enum.SurfaceType.Smooth
p57.TopSurface = Enum.SurfaceType.Smooth
b57 = Instance.new("SpecialMesh", p57)
b57.MeshType = Enum.MeshType.Sphere
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.253515154, 0.903981686, 0.400287092)
p58 = Instance.new("Part", m)
p58.BrickColor = BrickColor.new("Really black")
p58.Material = Enum.Material.SmoothPlastic
p58.Name = "Block"
p58.CFrame = CFrame.new(-0.00478160288, 16.9596806, 24.0546551, 1, 1.48938852e-007, -1.81332169e-007, 1.68964405e-007, -1.07752044e-007, 1.0004847, 2.01558578e-007, -1.0004847, -1.01534603e-007)
p58.CanCollide = false
p58.Locked = true
p58.FormFactor = Enum.FormFactor.Custom
p58.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p58.BottomSurface = Enum.SurfaceType.Smooth
p58.TopSurface = Enum.SurfaceType.Smooth
b58 = Instance.new("SpecialMesh", p58)
b58.MeshType = Enum.MeshType.Wedge
b58.Name = "WedgeMesh"
b58.Scale = Vector3.new(0.533715785, 0.43030858, 0.0667144954)
p59 = Instance.new("Part", m)
p59.BrickColor = BrickColor.new("Really black")
p59.Material = Enum.Material.SmoothPlastic
p59.Name = "Block"
p59.CFrame = CFrame.new(-0.00478159869, 17.711134, 24.0548553, -1, -2.01216096e-007, 9.40176719e-008, -8.1391633e-008, -1.95222029e-007, -1.00049305, 1.47857392e-007, -1.00049305, 1.89007366e-007)
p59.CanCollide = false
p59.Locked = true
p59.FormFactor = Enum.FormFactor.Custom
p59.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p59.BottomSurface = Enum.SurfaceType.Smooth
p59.TopSurface = Enum.SurfaceType.Smooth
b59 = Instance.new("SpecialMesh", p59)
b59.MeshType = Enum.MeshType.Wedge
b59.Name = "WedgeMesh"
b59.Scale = Vector3.new(0.533715785, 0.430308461, 0.066714488)
p60 = Instance.new("Part", m)
p60.BrickColor = BrickColor.new("Really black")
p60.Material = Enum.Material.SmoothPlastic
p60.Name = "Block"
p60.CFrame = CFrame.new(-0.00477158185, 16.9599533, 24.151247, -1, -6.06010246e-008, -6.70318911e-009, 6.18247498e-009, 1.95222356e-007, 1.00050139, -1.15000091e-007, 1.00050139, -1.89009967e-007)
p60.CanCollide = false
p60.Locked = true
p60.FormFactor = Enum.FormFactor.Custom
p60.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p60.BottomSurface = Enum.SurfaceType.Smooth
p60.TopSurface = Enum.SurfaceType.Smooth
b60 = Instance.new("SpecialMesh", p60)
b60.MeshType = Enum.MeshType.Wedge
b60.Name = "WedgeMesh"
b60.Scale = Vector3.new(0.533715785, 0.133429006, 0.0667144954)
p61 = Instance.new("Part", m)
p61.BrickColor = BrickColor.new("Really black")
p61.Material = Enum.Material.SmoothPlastic
p61.Name = "Block"
p61.CFrame = CFrame.new(-0.00477157859, 17.7114239, 24.1514492, 1, 1.14698487e-007, -8.06112936e-008, -9.3758139e-008, 1.07750871e-007, -1.00050974, -5.9477852e-008, 1.00050974, 1.01540152e-007)
p61.CanCollide = false
p61.Locked = true
p61.FormFactor = Enum.FormFactor.Custom
p61.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p61.BottomSurface = Enum.SurfaceType.Smooth
p61.TopSurface = Enum.SurfaceType.Smooth
b61 = Instance.new("SpecialMesh", p61)
b61.MeshType = Enum.MeshType.Wedge
b61.Name = "WedgeMesh"
b61.Scale = Vector3.new(0.533715785, 0.133429006, 0.066714488)
p62 = Instance.new("Part", m)
p62.BrickColor = BrickColor.new("Dark Indigo")
p62.Material = Enum.Material.Neon
p62.CFrame = CFrame.new(0.00079741748, 16.927433, 23.5033798, -1.67933258e-008, 7.99278641e-005, -1, -0.643061221, -0.766491234, -6.12398726e-005, -0.766491234, 0.643061221, 5.13551895e-005)
p62.CanCollide = false
p62.Locked = true
p62.FormFactor = Enum.FormFactor.Custom
p62.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p62.BottomSurface = Enum.SurfaceType.Smooth
p62.TopSurface = Enum.SurfaceType.Smooth
b62 = Instance.new("SpecialMesh", p62)
b62.MeshType = Enum.MeshType.Sphere
b62.Name = "Mesh"
b62.Scale = Vector3.new(0.120086111, 0.903981566, 0.200143546)
p63 = Instance.new("Part", m)
p63.BrickColor = BrickColor.new("Dark Indigo")
p63.Material = Enum.Material.Neon
p63.CFrame = CFrame.new(0.000782429241, 17.1366653, 23.6502075, -3.03043635e-009, 7.99336412e-005, -1, -0.940160811, -0.342273146, -2.7342714e-005, -0.342273146, 0.940160811, 7.50943873e-005)
p63.CanCollide = false
p63.Locked = true
p63.FormFactor = Enum.FormFactor.Custom
p63.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p63.BottomSurface = Enum.SurfaceType.Smooth
p63.TopSurface = Enum.SurfaceType.Smooth
b63 = Instance.new("SpecialMesh", p63)
b63.MeshType = Enum.MeshType.Sphere
b63.Name = "Mesh"
b63.Scale = Vector3.new(0.120086111, 0.903981566, 0.200143546)
p64 = Instance.new("Part", m)
p64.BrickColor = BrickColor.new("Dark Indigo")
p64.Material = Enum.Material.Neon
p64.Name = "Blade"
p64.CFrame = CFrame.new(0.000641356688, 17.335743, 20.9020824, 7.15408532e-009, 7.99334157e-005, -1, -1.00053501, -7.74263026e-005, 4.5656634e-010, -7.74243817e-005, 1.00053501, 7.99181071e-005)
p64.CanCollide = false
p64.Locked = true
p64.FormFactor = Enum.FormFactor.Custom
p64.Size = Vector3.new(0.341090173, 5.01877022, 0.341090739)
p64.BottomSurface = Enum.SurfaceType.Smooth
p64.TopSurface = Enum.SurfaceType.Smooth
b64 = Instance.new("SpecialMesh", p64)
b64.MeshType = Enum.MeshType.Sphere
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.787231028, 1, 0.333572537)
p65 = Instance.new("Part", m)
p65.BrickColor = BrickColor.new("Dark Indigo")
p65.Material = Enum.Material.Neon
p65.CFrame = CFrame.new(0.00080744864, 16.980526, 23.6458302, -1.31658453e-008, 7.99317349e-005, -1, -0.766410947, -0.643196464, -5.13876876e-005, -0.643196464, 0.766410947, 6.12100048e-005)
p65.CanCollide = false
p65.Locked = true
p65.FormFactor = Enum.FormFactor.Custom
p65.Size = Vector3.new(0.341090173, 0.535896719, 0.341090739)
p65.BottomSurface = Enum.SurfaceType.Smooth
p65.TopSurface = Enum.SurfaceType.Smooth
b65 = Instance.new("SpecialMesh", p65)
b65.MeshType = Enum.MeshType.Sphere
b65.Name = "Mesh"
b65.Scale = Vector3.new(0.253515095, 1, 0.333572537)
p66 = Instance.new("Part", m)
p66.BrickColor = BrickColor.new("Dark Indigo")
p66.Material = Enum.Material.Neon
p66.CFrame = CFrame.new(0.000547376403, 17.3361092, 21.0322189, 7.37782102e-009, 7.99343616e-005, -1, -1.00055218, -7.74254731e-005, 6.87577995e-010, -7.74232903e-005, 1.00055218, 7.99185291e-005)
p66.CanCollide = false
p66.Locked = true
p66.FormFactor = Enum.FormFactor.Custom
p66.Size = Vector3.new(0.341090173, 3.76720667, 0.341090739)
p66.BottomSurface = Enum.SurfaceType.Smooth
p66.TopSurface = Enum.SurfaceType.Smooth
b66 = Instance.new("SpecialMesh", p66)
b66.MeshType = Enum.MeshType.Sphere
b66.Name = "Mesh"
b66.Scale = Vector3.new(0.920660138, 1, 0.333572537)
p67 = Instance.new("Part", m)
p67.BrickColor = BrickColor.new("Gold")
p67.Material = Enum.Material.SmoothPlastic
p67.Reflectance = 0.30000001192093
p67.Name = "Circle"
p67.CFrame = CFrame.new(-0.00478551397, 17.336647, 24.348484, 1, 3.08064045e-008, -3.62128816e-008, -5.07114386e-008, 2.21291032e-007, -1.00056064, 3.00788088e-008, 1.00056064, 2.23485017e-007)
p67.CanCollide = false
p67.Locked = true
p67.FormFactor = Enum.FormFactor.Custom
p67.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p67.BottomSurface = Enum.SurfaceType.Smooth
p67.TopSurface = Enum.SurfaceType.Smooth
b67 = Instance.new("CylinderMesh", p67)
b67.Name = "Mesh"
b67.Scale = Vector3.new(0.400286883, 0.533716023, 0.467001468)
p68 = Instance.new("Part", m)
p68.BrickColor = BrickColor.new("Gold")
p68.Material = Enum.Material.SmoothPlastic
p68.Reflectance = 0.30000001192093
p68.Name = "Circle"
p68.CFrame = CFrame.new(-0.00478850631, 17.3367958, 24.2894917, 1, 3.12650421e-008, -3.61045807e-008, -5.08201019e-008, 2.21288374e-007, -1.00056899, 3.05374463e-008, 1.00056899, 2.23491384e-007)
p68.CanCollide = false
p68.Locked = true
p68.FormFactor = Enum.FormFactor.Custom
p68.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p68.BottomSurface = Enum.SurfaceType.Smooth
p68.TopSurface = Enum.SurfaceType.Smooth
b68 = Instance.new("CylinderMesh", p68)
b68.Name = "Mesh"
b68.Scale = Vector3.new(0.467001408, 0.266858011, 0.467001468)
p69 = Instance.new("Part", m)
p69.BrickColor = BrickColor.new("Really black")
p69.Material = Enum.Material.SmoothPlastic
p69.Name = "Block"
p69.CFrame = CFrame.new(-0.00478150323, 17.0238495, 24.0341129, -1, -2.05844628e-007, 9.51298489e-008, -8.02730185e-008, -1.76898766e-007, -1.00057733, 1.43231958e-007, -1.00057733, 1.79107602e-007)
p69.CanCollide = false
p69.Locked = true
p69.FormFactor = Enum.FormFactor.Custom
p69.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p69.BottomSurface = Enum.SurfaceType.Smooth
p69.TopSurface = Enum.SurfaceType.Smooth
b69 = Instance.new("SpecialMesh", p69)
b69.MeshType = Enum.MeshType.Wedge
b69.Name = "WedgeMesh"
b69.Scale = Vector3.new(0.533715904, 0.29687953, 0.300215244)
p70 = Instance.new("Part", m)
p70.BrickColor = BrickColor.new("Really black")
p70.Material = Enum.Material.SmoothPlastic
p70.Name = "Block"
p70.CFrame = CFrame.new(-0.00478149857, 17.6501446, 24.0343189, 1, 1.43400342e-007, -7.81537324e-009, -7.30847916e-009, -8.94201833e-008, 1.00058568, 2.07126419e-007, -1.00058568, -9.16313638e-008)
p70.CanCollide = false
p70.Locked = true
p70.FormFactor = Enum.FormFactor.Custom
p70.Size = Vector3.new(0.341090173, 0.341090739, 0.341090739)
p70.BottomSurface = Enum.SurfaceType.Smooth
p70.TopSurface = Enum.SurfaceType.Smooth
b70 = Instance.new("SpecialMesh", p70)
b70.MeshType = Enum.MeshType.Wedge
b70.Name = "WedgeMesh"
b70.Scale = Vector3.new(0.533715785, 0.29687953, 0.300215244)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-24.1230564, -16.9977722, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w1.Part1 = p2
w1.C1 = CFrame.new(-24.1105461, -17.623558, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-24.1105461, -17.623558, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w2.Part1 = p3
w2.C1 = CFrame.new(-0.00129098259, -17.3265915, 23.4164867, -1, -2.0706413e-010, -5.89352567e-010, -3.15302451e-010, 1.00000417, 1.22591297e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-0.00129098259, -17.3265915, 23.4164867, -1, -2.0706413e-010, -5.89352567e-010, -3.15302451e-010, 1.00000417, 1.22591297e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w3.Part1 = p4
w3.C1 = CFrame.new(0.00478598243, 23.979847, -17.3269234, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(0.00478598243, 23.979847, -17.3269234, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w4.Part1 = p5
w4.C1 = CFrame.new(-0.00582549348, 16.7313747, 24.2155914, -1, -8.76302053e-008, -5.89353621e-010, -2.98896339e-008, 0.342021614, -0.93969661, 8.24911695e-008, -0.93969661, -0.342021614)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-0.00582549348, 16.7313747, 24.2155914, -1, -8.76302053e-008, -5.89353621e-010, -2.98896339e-008, 0.342021614, -0.93969661, 8.24911695e-008, -0.93969661, -0.342021614)
w5.Part1 = p6
w5.C1 = CFrame.new(-24.1936054, -17.3243332, -0.0911670402, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-24.1936054, -17.3243332, -0.0911670402, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w6.Part1 = p7
w6.C1 = CFrame.new(-0.00128898257, -17.3265896, 23.452898, -1, -2.0706413e-010, -5.89352567e-010, -3.15302451e-010, 1.00000417, 1.22591297e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-0.00128898257, -17.3265896, 23.452898, -1, -2.0706413e-010, -5.89352567e-010, -3.15302451e-010, 1.00000417, 1.22591297e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w7.Part1 = p8
w7.C1 = CFrame.new(-24.1230564, -16.9977722, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-24.1230564, -16.9977722, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w8.Part1 = p9
w8.C1 = CFrame.new(-24.1105442, -17.0228176, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-24.1105442, -17.0228176, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w9.Part1 = p10
w9.C1 = CFrame.new(-0.00128598255, -17.3265877, 23.4904461, -1, -2.0706413e-010, -5.89352567e-010, -3.15302451e-010, 1.00000417, 1.22591297e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-0.00128598255, -17.3265877, 23.4904461, -1, -2.0706413e-010, -5.89352567e-010, -3.15302451e-010, 1.00000417, 1.22591297e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w10.Part1 = p11
w10.C1 = CFrame.new(-0.00582148228, 16.721838, 24.3436203, -1, -8.76302053e-008, -5.89353621e-010, -2.98896339e-008, 0.342021614, -0.93969661, 8.24911695e-008, -0.93969661, -0.342021614)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-0.00582148228, 16.721838, 24.3436203, -1, -8.76302053e-008, -5.89353621e-010, -2.98896339e-008, 0.342021614, -0.93969661, 8.24911695e-008, -0.93969661, -0.342021614)
w11.Part1 = p12
w11.C1 = CFrame.new(-24.1355762, -17.6235542, 0.0817799568, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-24.1355762, -17.6235542, 0.0817799568, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w12.Part1 = p13
w12.C1 = CFrame.new(-24.1230564, -17.5985184, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-24.1230564, -17.5985184, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w13.Part1 = p14
w13.C1 = CFrame.new(-0.00582148228, 16.7180405, 24.3436241, -1, -8.76302053e-008, -5.89353621e-010, -2.98896339e-008, 0.342021614, -0.93969661, 8.24911695e-008, -0.93969661, -0.342021614)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-0.00582148228, 16.7180405, 24.3436241, -1, -8.76302053e-008, -5.89353621e-010, -2.98896339e-008, 0.342021614, -0.93969661, 8.24911695e-008, -0.93969661, -0.342021614)
w14.Part1 = p15
w14.C1 = CFrame.new(-24.1230602, -17.6451797, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-24.1230602, -17.6451797, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w15.Part1 = p16
w15.C1 = CFrame.new(0.00581398234, 23.8473282, -17.3277187, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(0.00581398234, 23.8473282, -17.3277187, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w16.Part1 = p17
w16.C1 = CFrame.new(-0.00582549348, 16.7351685, 24.2155857, -1, -8.76302053e-008, -5.89353621e-010, -2.98896339e-008, 0.342021614, -0.93969661, 8.24911695e-008, -0.93969661, -0.342021614)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-0.00582549348, 16.7351685, 24.2155857, -1, -8.76302053e-008, -5.89353621e-010, -2.98896339e-008, 0.342021614, -0.93969661, 8.24911695e-008, -0.93969661, -0.342021614)
w17.Part1 = p18
w17.C1 = CFrame.new(0.00582298217, 28.5685654, -8.22870255, 1, 2.0706413e-010, 5.89352567e-010, 2.25554686e-010, -0.342021614, -0.93969661, -2.51020538e-010, 0.93969661, -0.342021614)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(0.00582298217, 28.5685654, -8.22870255, 1, 2.0706413e-010, 5.89352567e-010, 2.25554686e-010, -0.342021614, -0.93969661, -2.51020538e-010, 0.93969661, -0.342021614)
w18.Part1 = p19
w18.C1 = CFrame.new(-24.1355762, -17.6235542, -0.0911700428, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-24.1355762, -17.6235542, -0.0911700428, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w19.Part1 = p20
w19.C1 = CFrame.new(0.0058269822, 28.5856762, -8.35672283, 1, 2.0706413e-010, 5.89352567e-010, 2.25554686e-010, -0.342021614, -0.93969661, -2.51020538e-010, 0.93969661, -0.342021614)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(0.0058269822, 28.5856762, -8.35672283, 1, 2.0706413e-010, 5.89352567e-010, 2.25554686e-010, -0.342021614, -0.93969661, -2.51020538e-010, 0.93969661, -0.342021614)
w20.Part1 = p21
w20.C1 = CFrame.new(0.0058269822, 28.5818806, -8.35671997, 1, 2.0706413e-010, 5.89352567e-010, 2.25554686e-010, -0.342021614, -0.93969661, -2.51020538e-010, 0.93969661, -0.342021614)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(0.0058269822, 28.5818806, -8.35671997, 1, 2.0706413e-010, 5.89352567e-010, 2.25554686e-010, -0.342021614, -0.93969661, -2.51020538e-010, 0.93969661, -0.342021614)
w21.Part1 = p22
w21.C1 = CFrame.new(0.00581398234, 23.8454285, -17.3277187, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(0.00581398234, 23.8454285, -17.3277187, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w22.Part1 = p23
w22.C1 = CFrame.new(-24.1230564, -17.5985184, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w23 = Instance.new("Weld", p23)
w23.Name = "Part_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(-24.1230564, -17.5985184, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w23.Part1 = p24
w23.C1 = CFrame.new(-24.1355724, -17.0228157, 0.0817799568, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-24.1355724, -17.0228157, 0.0817799568, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w24.Part1 = p25
w24.C1 = CFrame.new(-24.1936054, -17.3243332, -0.0911670402, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(-24.1936054, -17.3243332, -0.0911670402, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w25.Part1 = p26
w25.C1 = CFrame.new(-24.1230602, -17.0444183, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w26 = Instance.new("Weld", p26)
w26.Name = "Part_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(-24.1230602, -17.0444183, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w26.Part1 = p27
w26.C1 = CFrame.new(0.00582298217, 28.5723495, -8.22870922, 1, 2.0706413e-010, 5.89352567e-010, 2.25554686e-010, -0.342021614, -0.93969661, -2.51020538e-010, 0.93969661, -0.342021614)
w27 = Instance.new("Weld", p27)
w27.Name = "Part_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(0.00582298217, 28.5723495, -8.22870922, 1, 2.0706413e-010, 5.89352567e-010, 2.25554686e-010, -0.342021614, -0.93969661, -2.51020538e-010, 0.93969661, -0.342021614)
w27.Part1 = p28
w27.C1 = CFrame.new(-24.1230602, -17.0444183, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w28 = Instance.new("Weld", p28)
w28.Name = "Part_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(-24.1230602, -17.0444183, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w28.Part1 = p29
w28.C1 = CFrame.new(-24.1105461, -17.0228176, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w29 = Instance.new("Weld", p29)
w29.Name = "Part_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(-24.1105461, -17.0228176, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w29.Part1 = p30
w29.C1 = CFrame.new(-24.1230602, -17.6451797, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w30 = Instance.new("Weld", p30)
w30.Name = "Part_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(-24.1230602, -17.6451797, -0.0911720395, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w30.Part1 = p31
w30.C1 = CFrame.new(-24.1936016, -17.3243332, 0.0817819536, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w31 = Instance.new("Weld", p31)
w31.Name = "Part_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(-24.1936016, -17.3243332, 0.0817819536, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w31.Part1 = p32
w31.C1 = CFrame.new(-24.1105461, -17.623558, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w32 = Instance.new("Weld", p32)
w32.Name = "Part_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(-24.1105461, -17.623558, 0.0817769542, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w32.Part1 = p33
w32.C1 = CFrame.new(-24.1936016, -17.3243332, 0.0817819536, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w33 = Instance.new("Weld", p33)
w33.Name = "Part_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(-24.1936016, -17.3243332, 0.0817819536, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w33.Part1 = p34
w33.C1 = CFrame.new(-24.1355762, -17.0228157, -0.0911700428, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w34 = Instance.new("Weld", p34)
w34.Name = "Part_Weld"
w34.Part0 = p34
w34.C0 = CFrame.new(-24.1355762, -17.0228157, -0.0911700428, 4.35829861e-008, -1.2260136e-008, 1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008, -1, -2.07065101e-010, 4.31318767e-008)
w34.Part1 = p35
w34.C1 = CFrame.new(14.4940586, -25.472023, -0.00124175288, 1.43580564e-007, -0.996205807, 0.0870786756, 7.99639602e-005, 0.0870786756, 0.996205807, -1, 6.82021982e-006, 7.96725799e-005)
w35 = Instance.new("Weld", p35)
w35.Name = "Part_Weld"
w35.Part0 = p35
w35.C0 = CFrame.new(14.4940586, -25.472023, -0.00124175288, 1.43580564e-007, -0.996205807, 0.0870786756, 7.99639602e-005, 0.0870786756, 0.996205807, -1, 6.82021982e-006, 7.96725799e-005)
w35.Part1 = p36
w35.C1 = CFrame.new(-23.4905338, -18.6877365, -0.00231588027, -6.73044269e-008, 0.965950191, 0.258745164, -7.9960977e-005, -0.258745164, 0.965950191, 1, -2.06246077e-005, 7.72562125e-005)
w36 = Instance.new("Weld", p36)
w36.Name = "Part_Weld"
w36.Part0 = p36
w36.C0 = CFrame.new(-23.4905338, -18.6877365, -0.00231588027, -6.73044269e-008, 0.965950191, 0.258745164, -7.9960977e-005, -0.258745164, 0.965950191, 1, -2.06246077e-005, 7.72562125e-005)
w36.Part1 = p37
w36.C1 = CFrame.new(-20.0270557, -22.4545212, -0.00261686975, -5.65146365e-008, 0.996205807, 0.0870787427, -7.99718109e-005, -0.0870787427, 0.996205807, 1, -6.90764546e-006, 7.96737659e-005)
w37 = Instance.new("Weld", p37)
w37.Name = "Part_Weld"
w37.Part0 = p37
w37.C0 = CFrame.new(-20.0270557, -22.4545212, -0.00261686975, -5.65146365e-008, 0.996205807, 0.0870787427, -7.99718109e-005, -0.0870787427, 0.996205807, 1, -6.90764546e-006, 7.96737659e-005)
w37.Part1 = p38
w37.C1 = CFrame.new(9.9821434, -27.6539307, -0.00138907926, 1.51681888e-007, -0.965950251, 0.258745104, 7.99381232e-005, 0.258745104, 0.965950251, -1, 2.05371834e-005, 7.7255012e-005)
w38 = Instance.new("Weld", p38)
w38.Name = "Circle_Weld"
w38.Part0 = p38
w38.C0 = CFrame.new(9.9821434, -27.6539307, -0.00138907926, 1.51681888e-007, -0.965950251, 0.258745104, 7.99381232e-005, 0.258745104, 0.965950251, -1, 2.05371834e-005, 7.7255012e-005)
w38.Part1 = p39
w38.C1 = CFrame.new(0.0047852057, 25.2979832, -17.3269272, 1, 4.39105889e-008, 1.31694888e-009, 8.58562998e-010, 1.16052998e-008, -1.00000417, -4.40186483e-008, 1.00000417, 1.16077858e-008)
w39 = Instance.new("Weld", p39)
w39.Name = "Block_Weld"
w39.Part0 = p39
w39.C0 = CFrame.new(0.0047852057, 25.2979832, -17.3269272, 1, 4.39105889e-008, 1.31694888e-009, 8.58562998e-010, 1.16052998e-008, -1.00000417, -4.40186483e-008, 1.00000417, 1.16077858e-008)
w39.Part1 = p40
w39.C1 = CFrame.new(-0.0047786939, 24.1050091, 17.197216, -1, -8.76301982e-008, 1.74266461e-007, -1.7471757e-007, -3.14538156e-008, -1.00000417, 8.77380799e-008, -1.00000417, 3.14551158e-008)
w40 = Instance.new("Weld", p40)
w40.Name = "Block_Weld"
w40.Part0 = p40
w40.C0 = CFrame.new(-0.0047786939, 24.1050091, 17.197216, -1, -8.76301982e-008, 1.74266461e-007, -1.7471757e-007, -3.14538156e-008, -1.00000417, 8.77380799e-008, -1.00000417, 3.14551158e-008)
w40.Part1 = p41
w40.C1 = CFrame.new(0.00477176718, 24.105011, -17.4589081, 1, 2.07054943e-010, 1.7543789e-007, 1.74979505e-007, 5.59740911e-008, -1.00000417, -3.15302451e-010, 1.00000417, 5.59730822e-008)
w41 = Instance.new("Weld", p41)
w41.Name = "Circle_Weld"
w41.Part0 = p41
w41.C0 = CFrame.new(0.00477176718, 24.105011, -17.4589081, 1, 2.07054943e-010, 1.7543789e-007, 1.74979505e-007, 5.59740911e-008, -1.00000417, -3.15302451e-010, 1.00000417, 5.59730822e-008)
w41.Part1 = p42
w41.C1 = CFrame.new(25.4635296, -0.00477306498, -17.3269291, -4.28553903e-008, 5.59668152e-008, -1.00000417, -1, -8.61907934e-010, 4.2404281e-008, -9.70138636e-010, 1.00000417, 5.59658631e-008)
w42 = Instance.new("Weld", p42)
w42.Name = "Circle_Weld"
w42.Part0 = p42
w42.C0 = CFrame.new(25.4635296, -0.00477306498, -17.3269291, -4.28553903e-008, 5.59668152e-008, -1.00000417, -1, -8.61907934e-010, 4.2404281e-008, -9.70138636e-010, 1.00000417, 5.59658631e-008)
w42.Part1 = p43
w42.C1 = CFrame.new(0.00478120567, 25.3497562, -17.3269234, 1, 4.39105889e-008, 1.31694888e-009, 8.58562998e-010, 1.16052998e-008, -1.00000417, -4.40186483e-008, 1.00000417, 1.16077858e-008)
w43 = Instance.new("Weld", p43)
w43.Name = "Part_Weld"
w43.Part0 = p43
w43.C0 = CFrame.new(0.00478120567, 25.3497562, -17.3269234, 1, 4.39105889e-008, 1.31694888e-009, 8.58562998e-010, 1.16052998e-008, -1.00000417, -4.40186483e-008, 1.00000417, 1.16077858e-008)
w43.Part1 = p44
w43.C1 = CFrame.new(-8.3771925, -28.2052784, -0.00306228409, -8.2402039e-008, 0.939670146, -0.34209463, -7.99348854e-005, 0.34209463, 0.939670146, 1, 2.74226113e-005, 7.50846593e-005)
w44 = Instance.new("Weld", p44)
w44.Name = "Part_Weld"
w44.Part0 = p44
w44.C0 = CFrame.new(-8.3771925, -28.2052784, -0.00306228409, -8.2402039e-008, 0.939670146, -0.34209463, -7.99348854e-005, 0.34209463, 0.939670146, 1, 2.74226113e-005, 7.50846593e-005)
w44.Part1 = p45
w44.C1 = CFrame.new(1.65195179, -29.4663048, -0.00316305994, -6.7120709e-008, 0.765997827, -0.642849922, -7.99612535e-005, 0.642849922, 0.765997827, 1, 5.14543863e-005, 6.12074291e-005)
w45 = Instance.new("Weld", p45)
w45.Name = "Part_Weld"
w45.Part0 = p45
w45.C0 = CFrame.new(1.65195179, -29.4663048, -0.00316305994, -6.7120709e-008, 0.765997827, -0.642849922, -7.99612535e-005, 0.642849922, 0.765997827, 1, 5.14543863e-005, 6.12074291e-005)
w45.Part1 = p46
w45.C1 = CFrame.new(6.60119534, -28.6809769, -0.00311731314, -5.62940841e-008, 0.642730832, -0.766097665, -7.99720437e-005, 0.766097665, 0.642730832, 1, 6.13024604e-005, 5.13578198e-005)
w46 = Instance.new("Weld", p46)
w46.Name = "Handle_Weld"
w46.Part0 = p46
w46.C0 = CFrame.new(6.60119534, -28.6809769, -0.00311731314, -5.62940841e-008, 0.642730832, -0.766097665, -7.99720437e-005, 0.766097665, 0.642730832, 1, 6.13024604e-005, 5.13578198e-005)
w46.Part1 = p47
w46.C1 = CFrame.new(0.0047672065, 24.8354683, -17.3269234, 1, 4.39105889e-008, 1.31694888e-009, 8.58562998e-010, 1.16052998e-008, -1.00000417, -4.40186483e-008, 1.00000417, 1.16077858e-008)
w47 = Instance.new("Weld", p47)
w47.Name = "Block_Weld"
w47.Part0 = p47
w47.C0 = CFrame.new(0.0047672065, 24.8354683, -17.3269234, 1, 4.39105889e-008, 1.31694888e-009, 8.58562998e-010, 1.16052998e-008, -1.00000417, -4.40186483e-008, 1.00000417, 1.16077858e-008)
w47.Part1 = p48
w47.C1 = CFrame.new(0.00476798182, 17.1448765, 24.2068424, 1, 2.0706413e-010, 5.89352567e-010, 3.15302451e-010, -1.00000417, -1.22591297e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w48 = Instance.new("Weld", p48)
w48.Name = "Block_Weld"
w48.Part0 = p48
w48.C0 = CFrame.new(0.00476798182, 17.1448765, 24.2068424, 1, 2.0706413e-010, 5.89352567e-010, 3.15302451e-010, -1.00000417, -1.22591297e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w48.Part1 = p49
w48.C1 = CFrame.new(-0.00476645119, -17.5089798, 24.2068386, -1, -8.76302053e-008, -5.89353621e-010, -8.77380799e-008, 1.00000417, 1.22588393e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w49 = Instance.new("Weld", p49)
w49.Name = "Block_Weld"
w49.Part0 = p49
w49.C0 = CFrame.new(-0.00476645119, -17.5089798, 24.2068386, -1, -8.76302053e-008, -5.89353621e-010, -8.77380799e-008, 1.00000417, 1.22588393e-008, 1.30967237e-010, 1.2260136e-008, -1.00000417)
w49.Part1 = p50
w49.C1 = CFrame.new(0.00477598188, 24.1163845, -17.6398087, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w50 = Instance.new("Weld", p50)
w50.Name = "Block_Weld"
w50.Part0 = p50
w50.C0 = CFrame.new(0.00477598188, 24.1163845, -17.6398087, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w50.Part1 = p51
w50.C1 = CFrame.new(0.00477598188, 24.1163807, -17.0140247, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w51 = Instance.new("Weld", p51)
w51.Name = "Block_Weld"
w51.Part0 = p51
w51.C0 = CFrame.new(0.00477598188, 24.1163807, -17.0140247, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w51.Part1 = p52
w51.C1 = CFrame.new(0.00477198185, 24.1505146, -17.3269234, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w52 = Instance.new("Weld", p52)
w52.Name = "Circle_Weld"
w52.Part0 = p52
w52.C0 = CFrame.new(0.00477198185, 24.1505146, -17.3269234, 1, 2.0706413e-010, 5.89352567e-010, 1.30967237e-010, 1.2260136e-008, -1.00000417, -3.15302451e-010, 1.00000417, 1.22591297e-008)
w52.Part1 = p53
w52.C1 = CFrame.new(25.4635296, -0.00477306498, -17.3269291, -4.28553903e-008, 5.59668152e-008, -1.00000417, -1, -8.61907934e-010, 4.2404281e-008, -9.70138636e-010, 1.00000417, 5.59658631e-008)
w53 = Instance.new("Weld", p53)
w53.Name = "Circle_Weld"
w53.Part0 = p53
w53.C0 = CFrame.new(25.4635296, -0.00477306498, -17.3269291, -4.28553903e-008, 5.59668152e-008, -1.00000417, -1, -8.61907934e-010, 4.2404281e-008, -9.70138636e-010, 1.00000417, 5.59658631e-008)
w53.Part1 = p54
w53.C1 = CFrame.new(25.4635296, -0.00477306498, -17.3269291, -4.28553903e-008, 5.59668152e-008, -1.00000417, -1, -8.61907934e-010, 4.2404281e-008, -9.70138636e-010, 1.00000417, 5.59658631e-008)
w54 = Instance.new("Weld", p54)
w54.Name = "Part_Weld"
w54.Part0 = p54
w54.C0 = CFrame.new(25.4635296, -0.00477306498, -17.3269291, -4.28553903e-008, 5.59668152e-008, -1.00000417, -1, -8.61907934e-010, 4.2404281e-008, -9.70138636e-010, 1.00000417, 5.59658631e-008)
w54.Part1 = p55
w54.C1 = CFrame.new(17.3298321, -24.83041, -0.00685525918, 1.51727434e-007, -1.00000429, -7.7692348e-005, 7.99382033e-005, -7.7692348e-005, 1.00000429, -1, -1.57829589e-007, 7.99380578e-005)
w55 = Instance.new("Weld", p55)
w55.Name = "Part_Weld"
w55.Part0 = p55
w55.C0 = CFrame.new(17.3298321, -24.83041, -0.00685525918, 1.51727434e-007, -1.00000429, -7.7692348e-005, 7.99382033e-005, -7.7692348e-005, 1.00000429, -1, -1.57829589e-007, 7.99380578e-005)
w55.Part1 = p56
w55.C1 = CFrame.new(17.3298187, -24.589201, -0.00685497746, 1.51727434e-007, -1.00000429, -7.7692348e-005, 7.99382033e-005, -7.7692348e-005, 1.00000429, -1, -1.57829589e-007, 7.99380578e-005)
w56 = Instance.new("Weld", p56)
w56.Name = "Part_Weld"
w56.Part0 = p56
w56.C0 = CFrame.new(17.3298187, -24.589201, -0.00685497746, 1.51727434e-007, -1.00000429, -7.7692348e-005, 7.99382033e-005, -7.7692348e-005, 1.00000429, -1, -1.57829589e-007, 7.99380578e-005)
w56.Part1 = p57
w56.C1 = CFrame.new(17.3298569, -25.0898247, -0.00688199606, 1.51727434e-007, -1.00000429, -7.7692348e-005, 7.99382033e-005, -7.7692348e-005, 1.00000429, -1, -1.57829589e-007, 7.99380578e-005)
w57 = Instance.new("Weld", p57)
w57.Name = "Block_Weld"
w57.Part0 = p57
w57.C0 = CFrame.new(17.3298569, -25.0898247, -0.00688199606, 1.51727434e-007, -1.00000429, -7.7692348e-005, 7.99382033e-005, -7.7692348e-005, 1.00000429, -1, -1.57829589e-007, 7.99380578e-005)
w57.Part1 = p58
w57.C1 = CFrame.new(0.00477481494, 24.0429974, -16.9514599, 1, 1.75053344e-007, 1.7543789e-007, 1.74979505e-007, 5.59740911e-008, -1.00000417, -1.75160864e-007, 1.00000417, 5.59724995e-008)
w58 = Instance.new("Weld", p58)
w58.Name = "Block_Weld"
w58.Part0 = p58
w58.C0 = CFrame.new(0.00477481494, 24.0429974, -16.9514599, 1, 1.75053344e-007, 1.7543789e-007, 1.74979505e-007, 5.59740911e-008, -1.00000417, -1.75160864e-007, 1.00000417, 5.59724995e-008)
w58.Part1 = p59
w58.C1 = CFrame.new(-0.00478463899, 24.0429974, 17.7023983, -1, -8.76302053e-008, 1.74266461e-007, -1.7471757e-007, -3.14538156e-008, -1.00000417, 8.77380728e-008, -1.00000417, 3.14551158e-008)
w59 = Instance.new("Weld", p59)
w59.Name = "Block_Weld"
w59.Part0 = p59
w59.C0 = CFrame.new(-0.00478463899, 24.0429974, 17.7023983, -1, -8.76302053e-008, 1.74266461e-007, -1.7471757e-007, -3.14538156e-008, -1.00000417, 8.77380728e-008, -1.00000417, 3.14551158e-008)
w59.Part1 = p60
w59.C1 = CFrame.new(-0.00476987194, -24.1391392, -16.9514465, -1, -2.07070638e-010, -8.80099833e-008, -8.7551598e-008, 3.14538156e-008, 1.00000417, -3.1531e-010, 1.00000417, -3.14548245e-008)
w60 = Instance.new("Weld", p60)
w60.Name = "Block_Weld"
w60.Part0 = p60
w60.C0 = CFrame.new(-0.00476987194, -24.1391392, -16.9514465, -1, -2.07070638e-010, -8.80099833e-008, -8.7551598e-008, 3.14538156e-008, 1.00000417, -3.1531e-010, 1.00000417, -3.14548245e-008)
w60.Part1 = p61
w60.C1 = CFrame.new(0.00477564055, -24.1391373, 17.7023945, 1, -8.72160655e-008, -8.68385541e-008, 8.72896635e-008, -5.59740911e-008, 1.00000417, -8.71074661e-008, -1.00000417, -5.59733735e-008)
w61 = Instance.new("Weld", p61)
w61.Name = "Part_Weld"
w61.Part0 = p61
w61.C0 = CFrame.new(0.00477564055, -24.1391373, 17.7023945, 1, -8.72160655e-008, -8.68385541e-008, 8.72896635e-008, -5.59740911e-008, 1.00000417, -8.71074661e-008, -1.00000417, -5.59733735e-008)
w61.Part1 = p62
w61.C1 = CFrame.new(28.8705769, -2.13716507, 0.000626247609, 3.0559022e-010, -0.642730772, -0.766097605, 7.99049012e-005, -0.766097605, 0.642730772, -1, -6.12150252e-005, 5.13566411e-005)
w62 = Instance.new("Weld", p62)
w62.Name = "Part_Weld"
w62.Part0 = p62
w62.C0 = CFrame.new(28.8705769, -2.13716507, 0.000626247609, 3.0559022e-010, -0.642730772, -0.766097605, 7.99049012e-005, -0.766097605, 0.642730772, -1, -6.12150252e-005, 5.13566411e-005)
w62.Part1 = p63
w62.C1 = CFrame.new(24.1805763, -16.3523483, -0.000524612726, 3.40151018e-010, -0.939669967, -0.3420946, 7.99047266e-005, -0.3420946, 0.939669967, -1, -2.73351798e-005, 7.50834879e-005)
w63 = Instance.new("Weld", p63)
w63.Name = "Blade_Weld"
w63.Part0 = p63
w63.C0 = CFrame.new(24.1805763, -16.3523483, -0.000524612726, 3.40151018e-010, -0.939669967, -0.3420946, 7.99047266e-005, -0.3420946, 0.939669967, -1, -2.73351798e-005, 7.50834879e-005)
w63.Part1 = p64
w63.C1 = CFrame.new(17.3280849, -20.8895588, -0.00102815893, 3.16360438e-010, -1.00000429, -7.75284352e-005, 7.99046247e-005, -7.75284352e-005, 1.00000429, -1, -6.39990949e-009, 7.99044938e-005)
w64 = Instance.new("Weld", p64)
w64.Name = "Part_Weld"
w64.Part0 = p64
w64.C0 = CFrame.new(17.3280849, -20.8895588, -0.00102815893, 3.16360438e-010, -1.00000429, -7.75284352e-005, 7.99046247e-005, -7.75284352e-005, 1.00000429, -1, -6.39990949e-009, 7.99044938e-005)
w64.Part1 = p65
w64.C1 = CFrame.new(28.1923103, -7.19278717, 0.000232279766, 3.23780114e-010, -0.765997767, -0.642849863, 7.99048503e-005, -0.642849863, 0.765997767, -1, -5.13669547e-005, 6.12062577e-005)
w65 = Instance.new("Weld", p65)
w65.Name = "Part_Weld"
w65.Part0 = p65
w65.C0 = CFrame.new(28.1923103, -7.19278717, 0.000232279766, 3.23780114e-010, -0.765997767, -0.642849863, 7.99048503e-005, -0.642849863, 0.765997767, -1, -5.13669547e-005, 6.12062577e-005)
w65.Part1 = p66
w65.C1 = CFrame.new(17.3281631, -21.0192661, -0.00113252318, 3.16360438e-010, -1.00000429, -7.75284352e-005, 7.99046247e-005, -7.75284352e-005, 1.00000429, -1, -6.39990949e-009, 7.99044938e-005)
w66 = Instance.new("Weld", p66)
w66.Name = "Circle_Weld"
w66.Part0 = p66
w66.C0 = CFrame.new(17.3281631, -21.0192661, -0.00113252318, 3.16360438e-010, -1.00000429, -7.75284352e-005, 7.99046247e-005, -7.75284352e-005, 1.00000429, -1, -6.39990949e-009, 7.99044938e-005)
w66.Part1 = p67
w66.C1 = CFrame.new(0.00478675682, -24.3348389, 17.3269215, 1, -4.34964633e-008, -1.38243708e-010, 5.96628524e-010, 7.58153291e-008, 1.00000417, -4.33880416e-008, -1.00000417, 7.58198269e-008)
w67 = Instance.new("Weld", p67)
w67.Name = "Circle_Weld"
w67.Part0 = p67
w67.C0 = CFrame.new(0.00478675682, -24.3348389, 17.3269215, 1, -4.34964633e-008, -1.38243708e-010, 5.96628524e-010, 7.58153291e-008, 1.00000417, -4.33880416e-008, -1.00000417, 7.58198269e-008)
w67.Part1 = p68
w67.C1 = CFrame.new(0.00478975661, -24.2756767, 17.3269253, 1, -4.34964633e-008, -1.38243708e-010, 5.96628524e-010, 7.58153291e-008, 1.00000417, -4.33880416e-008, -1.00000417, 7.58198269e-008)
w68 = Instance.new("Weld", p68)
w68.Name = "Block_Weld"
w68.Part0 = p68
w68.C0 = CFrame.new(0.00478975661, -24.2756767, 17.3269253, 1, -4.34964633e-008, -1.38243708e-010, 5.96628524e-010, 7.58153291e-008, 1.00000417, -4.33880416e-008, -1.00000417, 7.58198269e-008)
w68.Part1 = p69
w68.C1 = CFrame.new(-0.00478469487, 24.0202389, 17.0140171, -1, -8.76301982e-008, 1.74266461e-007, -1.7471757e-007, -3.14538156e-008, -1.00000417, 8.77380799e-008, -1.00000417, 3.14551158e-008)
w69 = Instance.new("Weld", p69)
w69.Name = "Block_Weld"
w69.Part0 = p69
w69.C0 = CFrame.new(-0.00478469487, 24.0202389, 17.0140171, -1, -8.76301982e-008, 1.74266461e-007, -1.7471757e-007, -3.14538156e-008, -1.00000417, 8.77380799e-008, -1.00000417, 3.14551158e-008)
w69.Part1 = p70
w69.C1 = CFrame.new(0.00477778213, 24.0202408, -17.6398048, 1, 2.07054943e-010, 1.7543789e-007, 1.74979505e-007, 5.59740911e-008, -1.00000417, -3.15302451e-010, 1.00000417, 5.59730822e-008)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Sword)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 1, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -0.85, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Sword)
weld1.Part0 = cor
weld1.Part1 = char.Sword.Handle
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------
local m2 = Instance.new("Model")
m2.Name = "Wings"
p1 = Instance.new("Part", m2)
p1.BrickColor = BrickColor.new("Dark Indigo")
p1.Material = Enum.Material.Neon
p1.CFrame = CFrame.new(28.7928066, 27.8741341, 25.9347725, -0.579227924, -0.579227805, -0.573576331, 0.707106769, -0.707106769, 0, -0.405579776, -0.405579716, 0.819152117)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Sphere
b1.Name = "Mesh"
p2 = Instance.new("Part", m2)
p2.BrickColor = BrickColor.new("Dark Indigo")
p2.Material = Enum.Material.SmoothPlastic
p2.Reflectance = 0.30000001192093
p2.CFrame = CFrame.new(23.8806973, 23.7568359, 26.9065781, -0.573576033, 0.346188396, -0.742403686, 0, -0.906307817, -0.422617972, -0.819152117, -0.24240382, 0.519836783)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=3270017"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p3 = Instance.new("Part", m2)
p3.BrickColor = BrickColor.new("Dark Indigo")
p3.Material = Enum.Material.SmoothPlastic
p3.Reflectance = 0.30000001192093
p3.CFrame = CFrame.new(23.7651176, 23.6910381, 26.9875221, -0.573576033, 0.346188247, -0.742403686, -2.40360578e-007, -0.906307697, -0.422617912, -0.819152117, -0.242403969, 0.519836664)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=3270017"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p4 = Instance.new("Part", m2)
p4.BrickColor = BrickColor.new("Dark Indigo")
p4.Material = Enum.Material.SmoothPlastic
p4.Reflectance = 0.30000001192093
p4.CFrame = CFrame.new(29.5663891, 25.8075085, 26.4371891, -0.573576391, 0.280166149, 0.769750714, 2.08616257e-007, -0.939692259, 0.342020333, 0.819151878, 0.196174487, 0.538985968)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=3270017"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p5 = Instance.new("Part", m2)
p5.BrickColor = BrickColor.new("Dark Indigo")
p5.Material = Enum.Material.SmoothPlastic
p5.Reflectance = 0.30000001192093
p5.CFrame = CFrame.new(23.880703, 23.7568455, 26.9065876, -0.573576212, 0.346188098, -0.742403805, -4.76837158e-007, -0.906307578, -0.422617912, -0.819152236, -0.242404133, 0.519836485)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/asset/?id=3270017"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p6 = Instance.new("Part", m2)
p6.BrickColor = BrickColor.new("Dark Indigo")
p6.Material = Enum.Material.SmoothPlastic
p6.Reflectance = 0.30000001192093
p6.CFrame = CFrame.new(23.6530266, 23.6272411, 27.0660267, -0.573576212, 0.346187949, -0.742403805, -7.17197622e-007, -0.906307459, -0.422617853, -0.819152236, -0.242404282, 0.519836366)
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=3270017"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p7 = Instance.new("Part", m2)
p7.BrickColor = BrickColor.new("Dark Indigo")
p7.Material = Enum.Material.SmoothPlastic
p7.Reflectance = 0.30000001192093
p7.CFrame = CFrame.new(23.7651253, 23.6910515, 26.9875393, -0.573576212, 0.3461878, -0.742403805, -9.57558086e-007, -0.90630734, -0.422617793, -0.819152236, -0.242404431, 0.519836247)
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=3270017"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p8 = Instance.new("Part", m2)
p8.BrickColor = BrickColor.new("Dark Indigo")
p8.Material = Enum.Material.SmoothPlastic
p8.Reflectance = 0.30000001192093
p8.CFrame = CFrame.new(23.6530304, 23.6272488, 27.0660381, -0.573576212, 0.346187651, -0.742403805, -1.19791855e-006, -0.90630722, -0.422617733, -0.819152236, -0.24240458, 0.519836128)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=3270017"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p9 = Instance.new("Part", m2)
p9.BrickColor = BrickColor.new("Dark Indigo")
p9.Material = Enum.Material.SmoothPlastic
p9.Reflectance = 0.30000001192093
p9.CFrame = CFrame.new(30.2536392, 23.691061, 26.9184284, -0.573576212, -0.346188962, 0.74240309, 4.47034836e-007, -0.906307578, -0.422616601, 0.81915164, -0.242404819, 0.519836843)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=3270017"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p10 = Instance.new("Part", m2)
p10.BrickColor = BrickColor.new("Dark Indigo")
p10.Material = Enum.Material.SmoothPlastic
p10.Reflectance = 0.30000001192093
p10.CFrame = CFrame.new(27.9471893, 26.8180733, 25.3034286, -0.573576212, 0.469845235, 0.671010077, 2.86794574e-007, -0.819150567, 0.573576927, 0.81915164, 0.328989446, 0.469847172)
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=3270017"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p11 = Instance.new("Part", m2)
p11.BrickColor = BrickColor.new("Dark Indigo")
p11.Material = Enum.Material.SmoothPlastic
p11.Reflectance = 0.30000001192093
p11.CFrame = CFrame.new(27.8153667, 25.7751122, 25.211132, -0.573576212, 0.469845206, 0.671010017, 3.03888498e-007, -0.819150567, 0.573576987, 0.81915164, 0.328989416, 0.469847172)
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=3270017"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p12 = Instance.new("Part", m2)
p12.BrickColor = BrickColor.new("Dark Indigo")
p12.Material = Enum.Material.SmoothPlastic
p12.Reflectance = 0.30000001192093
p12.CFrame = CFrame.new(29.655653, 24.6090927, 26.4997177, -0.573576212, 0.212011248, 0.791239619, 2.79475898e-007, -0.965924561, 0.258820325, 0.81915164, 0.14845185, 0.554032922)
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=3270017"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p13 = Instance.new("Part", m2)
p13.BrickColor = BrickColor.new("Dark Indigo")
p13.Material = Enum.Material.SmoothPlastic
p13.Reflectance = 0.30000001192093
p13.CFrame = CFrame.new(27.9198303, 25.8644161, 25.2842865, -0.573576212, 0.469845116, 0.671010017, 2.51205847e-007, -0.819150507, 0.573577106, 0.81915164, 0.328989446, 0.469847202)
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=3270017"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p14 = Instance.new("Part", m2)
p14.BrickColor = BrickColor.new("Dark Indigo")
p14.Material = Enum.Material.SmoothPlastic
p14.Reflectance = 0.30000001192093
p14.CFrame = CFrame.new(29.778841, 24.6493893, 26.5859776, -0.573576212, 0.212011158, 0.791239619, 2.26793262e-007, -0.965924621, 0.258820474, 0.81915164, 0.148451865, 0.554032922)
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/asset/?id=3270017"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p15 = Instance.new("Part", m2)
p15.BrickColor = BrickColor.new("Dark Indigo")
p15.Material = Enum.Material.SmoothPlastic
p15.Reflectance = 0.30000001192093
p15.CFrame = CFrame.new(29.3303242, 25.7026424, 26.271925, -0.573576212, 0.280165315, 0.769750893, 1.98523225e-007, -0.939691305, 0.342021316, 0.81915164, 0.196174055, 0.538986266)
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=3270017"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p16 = Instance.new("Part", m2)
p16.BrickColor = BrickColor.new("Dark Indigo")
p16.Material = Enum.Material.SmoothPlastic
p16.Reflectance = 0.30000001192093
p16.CFrame = CFrame.new(29.8983212, 24.6884689, 26.6696377, -0.573576272, 0.212011099, 0.791239798, 1.39939146e-007, -0.965924501, 0.258820534, 0.81915158, 0.148451924, 0.554033041)
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=3270017"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p17 = Instance.new("Part", m2)
p17.BrickColor = BrickColor.new("Dark Indigo")
p17.Material = Enum.Material.SmoothPlastic
p17.Reflectance = 0.30000001192093
p17.CFrame = CFrame.new(29.5664043, 25.8075294, 26.4372196, -0.573576272, 0.280165255, 0.769751072, 1.1166911e-007, -0.939691126, 0.342021376, 0.81915158, 0.196174115, 0.538986385)
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/asset/?id=3270017"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p18 = Instance.new("Part", m2)
p18.BrickColor = BrickColor.new("Dark Indigo")
p18.Material = Enum.Material.SmoothPlastic
p18.Reflectance = 0.30000001192093
p18.CFrame = CFrame.new(28.021162, 25.9510212, 25.3552322, -0.573576331, 0.469845086, 0.671010435, 8.10900147e-008, -0.819150269, 0.573577285, 0.819151521, 0.328989595, 0.469847381)
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/asset/?id=3270017"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p19 = Instance.new("Part", m2)
p19.BrickColor = BrickColor.new("Dark Indigo")
p19.Material = Enum.Material.SmoothPlastic
p19.Reflectance = 0.30000001192093
p19.CFrame = CFrame.new(30.3657436, 23.6272507, 26.9969234, -0.573576272, -0.346189439, 0.74240303, -9.24166343e-009, -0.906307697, -0.422616035, 0.819151521, -0.242404714, 0.519837141)
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p19)
b19.MeshId = "http://www.roblox.com/asset/?id=3270017"
b19.TextureId = ""
b19.MeshType = Enum.MeshType.FileMesh
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p20 = Instance.new("Part", m2)
p20.BrickColor = BrickColor.new("Dark Indigo")
p20.Material = Enum.Material.SmoothPlastic
p20.Reflectance = 0.30000001192093
p20.CFrame = CFrame.new(30.2536469, 23.6910553, 26.9184265, -0.573576272, -0.346189529, 0.742402911, -2.63107069e-007, -0.906307518, -0.422615975, 0.819151521, -0.242404476, 0.519837141)
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("SpecialMesh", p20)
b20.MeshId = "http://www.roblox.com/asset/?id=3270017"
b20.TextureId = ""
b20.MeshType = Enum.MeshType.FileMesh
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p21 = Instance.new("Part", m2)
p21.BrickColor = BrickColor.new("Dark Indigo")
p21.Material = Enum.Material.SmoothPlastic
p21.Reflectance = 0.30000001192093
p21.CFrame = CFrame.new(27.8458843, 26.7314644, 25.2324886, -0.573576272, 0.469844759, 0.671010494, -4.23347274e-007, -0.819149971, 0.573577166, 0.819151521, 0.328989863, 0.469847023)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p21)
b21.MeshId = "http://www.roblox.com/asset/?id=3270017"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p22 = Instance.new("Part", m2)
p22.BrickColor = BrickColor.new("Dark Indigo")
p22.Material = Enum.Material.SmoothPlastic
p22.Reflectance = 0.30000001192093
p22.CFrame = CFrame.new(30.1380615, 23.756855, 26.8374882, -0.573576212, -0.346189648, 0.742402732, -5.1367897e-007, -0.906307459, -0.422615856, 0.819151521, -0.242404282, 0.519837141)
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p22)
b22.MeshId = "http://www.roblox.com/asset/?id=3270017"
b22.TextureId = ""
b22.MeshType = Enum.MeshType.FileMesh
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p23 = Instance.new("Part", m2)
p23.BrickColor = BrickColor.new("Dark Indigo")
p23.Material = Enum.Material.SmoothPlastic
p23.Reflectance = 0.30000001192093
p23.CFrame = CFrame.new(29.4501858, 25.7558784, 26.3558216, -0.573576212, 0.280164778, 0.769751191, -6.73919146e-007, -0.939690709, 0.342021406, 0.819151521, 0.196174636, 0.538986027)
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("SpecialMesh", p23)
b23.MeshId = "http://www.roblox.com/asset/?id=3270017"
b23.TextureId = ""
b23.MeshType = Enum.MeshType.FileMesh
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p24 = Instance.new("Part", m2)
p24.BrickColor = BrickColor.new("Dark Indigo")
p24.Material = Enum.Material.SmoothPlastic
p24.Reflectance = 0.30000001192093
p24.CFrame = CFrame.new(29.3303471, 25.702631, 26.2719078, -0.573576272, 0.280164808, 0.76975143, -7.04498234e-007, -0.939690709, 0.342021465, 0.819151461, 0.196174651, 0.538986087)
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b24 = Instance.new("SpecialMesh", p24)
b24.MeshId = "http://www.roblox.com/asset/?id=3270017"
b24.TextureId = ""
b24.MeshType = Enum.MeshType.FileMesh
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p25 = Instance.new("Part", m2)
p25.BrickColor = BrickColor.new("Dark Indigo")
p25.Material = Enum.Material.SmoothPlastic
p25.Reflectance = 0.30000001192093
p25.CFrame = CFrame.new(29.7788715, 24.6493816, 26.5859661, -0.573576331, 0.212010548, 0.791240335, -7.63082312e-007, -0.965923905, 0.258820742, 0.819151402, 0.14845252, 0.554032862)
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("SpecialMesh", p25)
b25.MeshId = "http://www.roblox.com/asset/?id=3270017"
b25.TextureId = ""
b25.MeshType = Enum.MeshType.FileMesh
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p26 = Instance.new("Part", m2)
p26.BrickColor = BrickColor.new("Dark Indigo")
p26.Material = Enum.Material.SmoothPlastic
p26.Reflectance = 0.30000001192093
p26.CFrame = CFrame.new(29.450201, 25.7558823, 26.3558235, -0.573576331, 0.280164748, 0.769751668, -7.91352306e-007, -0.93969059, 0.342021525, 0.819151402, 0.196174681, 0.538986146)
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("SpecialMesh", p26)
b26.MeshId = "http://www.roblox.com/asset/?id=3270017"
b26.TextureId = ""
b26.MeshType = Enum.MeshType.FileMesh
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p27 = Instance.new("Part", m2)
p27.BrickColor = BrickColor.new("Dark Indigo")
p27.Material = Enum.Material.SmoothPlastic
p27.Reflectance = 0.30000001192093
p27.CFrame = CFrame.new(30.3657703, 23.6272449, 26.9969063, -0.57357645, -0.346190155, 0.74240309, -9.161393e-007, -0.90630734, -0.422615707, 0.819151342, -0.242404088, 0.51983732)
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p27.BottomSurface = Enum.SurfaceType.Smooth
p27.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("SpecialMesh", p27)
b27.MeshId = "http://www.roblox.com/asset/?id=3270017"
b27.TextureId = ""
b27.MeshType = Enum.MeshType.FileMesh
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p28 = Instance.new("Part", m2)
p28.BrickColor = BrickColor.new("Dark Indigo")
p28.Material = Enum.Material.SmoothPlastic
p28.Reflectance = 0.30000001192093
p28.CFrame = CFrame.new(28.0211868, 25.9510098, 25.3552094, -0.57357645, 0.469844639, 0.67101109, -1.07637948e-006, -0.819149673, 0.573577106, 0.819151342, 0.328990191, 0.469846785)
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p28.BottomSurface = Enum.SurfaceType.Smooth
p28.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("SpecialMesh", p28)
b28.MeshId = "http://www.roblox.com/asset/?id=3270017"
b28.TextureId = ""
b28.MeshType = Enum.MeshType.FileMesh
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p29 = Instance.new("Part", m2)
p29.BrickColor = BrickColor.new("Dark Indigo")
p29.Material = Enum.Material.Neon
p29.CFrame = CFrame.new(31.2683067, 23.2277946, 27.6474876, 0.280168235, -0.769749522, -0.573576212, 0.939691305, 0.342017233, -1.0690095e-006, 0.19617486, -0.538985491, 0.819151521)
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p29.BottomSurface = Enum.SurfaceType.Smooth
p29.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("SpecialMesh", p29)
b29.MeshType = Enum.MeshType.Sphere
b29.Name = "Mesh"
p30 = Instance.new("Part", m2)
p30.BrickColor = BrickColor.new("Dark Indigo")
p30.Material = Enum.Material.SmoothPlastic
p30.Reflectance = 0.30000001192093
p30.CFrame = CFrame.new(29.655632, 24.6090698, 26.4996777, -0.573576212, 0.2120094, 0.791238904, -1.13902195e-006, -0.965922236, 0.258820891, 0.819151521, 0.148452237, 0.554032147)
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p30.BottomSurface = Enum.SurfaceType.Smooth
p30.TopSurface = Enum.SurfaceType.Smooth
b30 = Instance.new("SpecialMesh", p30)
b30.MeshId = "http://www.roblox.com/asset/?id=3270017"
b30.TextureId = ""
b30.MeshType = Enum.MeshType.FileMesh
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p31 = Instance.new("Part", m2)
p31.BrickColor = BrickColor.new("Dark Indigo")
p31.Material = Enum.Material.SmoothPlastic
p31.Reflectance = 0.30000001192093
p31.CFrame = CFrame.new(30.138031, 23.7568359, 26.8374538, -0.573576212, -0.346189976, 0.742401063, -1.26856219e-006, -0.906306148, -0.422614396, 0.819151521, -0.242403775, 0.519836485)
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p31.BottomSurface = Enum.SurfaceType.Smooth
p31.TopSurface = Enum.SurfaceType.Smooth
b31 = Instance.new("SpecialMesh", p31)
b31.MeshId = "http://www.roblox.com/asset/?id=3270017"
b31.TextureId = ""
b31.MeshType = Enum.MeshType.FileMesh
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p32 = Instance.new("Part", m2)
p32.BrickColor = BrickColor.new("Dark Indigo")
p32.Material = Enum.Material.SmoothPlastic
p32.Reflectance = 0.30000001192093
p32.CFrame = CFrame.new(27.741394, 26.6421375, 25.1592979, -0.573576212, 0.469842911, 0.671009958, -1.42880219e-006, -0.819147944, 0.573576748, 0.819151521, 0.328989625, 0.4698461)
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p32.BottomSurface = Enum.SurfaceType.Smooth
p32.TopSurface = Enum.SurfaceType.Smooth
b32 = Instance.new("SpecialMesh", p32)
b32.MeshId = "http://www.roblox.com/asset/?id=3270017"
b32.TextureId = ""
b32.MeshType = Enum.MeshType.FileMesh
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p33 = Instance.new("Part", m2)
p33.BrickColor = BrickColor.new("Dark Indigo")
p33.Material = Enum.Material.Neon
p33.CFrame = CFrame.new(32.7100258, 25.2490444, 28.6569691, -0.14224124, -0.806705832, -0.573576093, 0.984804153, -0.173650295, -1.38238238e-006, -0.0996002704, -0.564861953, 0.819151759)
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p33.BottomSurface = Enum.SurfaceType.Smooth
p33.TopSurface = Enum.SurfaceType.Smooth
b33 = Instance.new("SpecialMesh", p33)
b33.MeshType = Enum.MeshType.Sphere
b33.Name = "Mesh"
p34 = Instance.new("Part", m2)
p34.BrickColor = BrickColor.new("Dark Indigo")
p34.Material = Enum.Material.SmoothPlastic
p34.Reflectance = 0.30000001192093
p34.CFrame = CFrame.new(27.919817, 25.8643856, 25.2842369, -0.573576391, 0.469842792, 0.671009898, -1.37759764e-006, -0.819147885, 0.573576868, 0.8191517, 0.328989476, 0.46984604)
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p34.BottomSurface = Enum.SurfaceType.Smooth
p34.TopSurface = Enum.SurfaceType.Smooth
b34 = Instance.new("SpecialMesh", p34)
b34.MeshId = "http://www.roblox.com/asset/?id=3270017"
b34.TextureId = ""
b34.MeshType = Enum.MeshType.FileMesh
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p35 = Instance.new("Part", m2)
p35.BrickColor = BrickColor.new("Dark Indigo")
p35.Material = Enum.Material.SmoothPlastic
p35.Reflectance = 0.30000001192093
p35.CFrame = CFrame.new(29.8982925, 24.6884441, 26.6695824, -0.573576391, 0.212008998, 0.791238666, -1.40201018e-006, -0.965921998, 0.25882113, 0.8191517, 0.148452297, 0.554031909)
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p35.BottomSurface = Enum.SurfaceType.Smooth
p35.TopSurface = Enum.SurfaceType.Smooth
b35 = Instance.new("SpecialMesh", p35)
b35.MeshId = "http://www.roblox.com/asset/?id=3270017"
b35.TextureId = ""
b35.MeshType = Enum.MeshType.FileMesh
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p36 = Instance.new("Part", m2)
p36.BrickColor = BrickColor.new("Dark Indigo")
p36.Material = Enum.Material.SmoothPlastic
p36.Reflectance = 0.30000001192093
p36.CFrame = CFrame.new(27.8153496, 25.7750854, 25.2110863, -0.573576391, 0.469842672, 0.671009898, -1.43028012e-006, -0.819147885, 0.573576927, 0.8191517, 0.328989506, 0.4698461)
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p36.BottomSurface = Enum.SurfaceType.Smooth
p36.TopSurface = Enum.SurfaceType.Smooth
b36 = Instance.new("SpecialMesh", p36)
b36.MeshId = "http://www.roblox.com/asset/?id=3270017"
b36.TextureId = ""
b36.MeshType = Enum.MeshType.FileMesh
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p37 = Instance.new("Part", m2)
p37.BrickColor = BrickColor.new("Dark Indigo")
p37.Material = Enum.Material.Neon
p37.CFrame = CFrame.new(30.7430439, 27.8460693, 27.2796841, -0.409572512, -0.709406137, -0.573576272, 0.866021335, -0.500000834, -1.38386031e-006, -0.286787719, -0.49673146, 0.819151938)
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p37.BottomSurface = Enum.SurfaceType.Smooth
p37.TopSurface = Enum.SurfaceType.Smooth
b37 = Instance.new("SpecialMesh", p37)
b37.MeshType = Enum.MeshType.Sphere
b37.Name = "Mesh"
p38 = Instance.new("Part", m2)
p38.BrickColor = BrickColor.new("Dark Indigo")
p38.Material = Enum.Material.Neon
p38.CFrame = CFrame.new(32.7113533, 27.1965656, 28.6579113, -0.28016308, -0.769750178, -0.573576272, 0.939688683, -0.342021704, -1.3540581e-006, -0.196174175, -0.538985133, 0.819152057)
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.61060679, 8.03632927, 0.221234918)
p38.BottomSurface = Enum.SurfaceType.Smooth
p38.TopSurface = Enum.SurfaceType.Smooth
b38 = Instance.new("SpecialMesh", p38)
b38.MeshType = Enum.MeshType.Sphere
b38.Name = "Mesh"
p39 = Instance.new("Part", m2)
p39.BrickColor = BrickColor.new("Dark Indigo")
p39.Material = Enum.Material.SmoothPlastic
p39.Reflectance = 0.30000001192093
p39.CFrame = CFrame.new(26.2033787, 25.7750854, 25.2801971, -0.573574483, -0.469848186, -0.671007693, -2.18929154e-006, -0.819150686, 0.573572934, -0.819151402, 0.328989863, 0.469846785)
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p39.BottomSurface = Enum.SurfaceType.Smooth
p39.TopSurface = Enum.SurfaceType.Smooth
b39 = Instance.new("SpecialMesh", p39)
b39.MeshId = "http://www.roblox.com/asset/?id=3270017"
b39.TextureId = ""
b39.MeshType = Enum.MeshType.FileMesh
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p40 = Instance.new("Part", m2)
p40.BrickColor = BrickColor.new("Dark Indigo")
p40.Material = Enum.Material.SmoothPlastic
p40.Reflectance = 0.30000001192093
p40.CFrame = CFrame.new(25.9975967, 25.9509888, 25.4242878, -0.573574483, -0.469848186, -0.671007693, -2.18929154e-006, -0.819150686, 0.573572934, -0.819151402, 0.328989863, 0.469846785)
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p40.BottomSurface = Enum.SurfaceType.Smooth
p40.TopSurface = Enum.SurfaceType.Smooth
b40 = Instance.new("SpecialMesh", p40)
b40.MeshId = "http://www.roblox.com/asset/?id=3270017"
b40.TextureId = ""
b40.MeshType = Enum.MeshType.FileMesh
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p41 = Instance.new("Part", m2)
p41.BrickColor = BrickColor.new("Dark Indigo")
p41.Material = Enum.Material.SmoothPlastic
p41.Reflectance = 0.30000001192093
p41.CFrame = CFrame.new(26.098917, 25.8643856, 25.3533516, -0.573574483, -0.469848186, -0.671007693, -2.18929154e-006, -0.819150686, 0.573572934, -0.819151402, 0.328989863, 0.469846785)
p41.CanCollide = false
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p41.BottomSurface = Enum.SurfaceType.Smooth
p41.TopSurface = Enum.SurfaceType.Smooth
b41 = Instance.new("SpecialMesh", p41)
b41.MeshId = "http://www.roblox.com/asset/?id=3270017"
b41.TextureId = ""
b41.MeshType = Enum.MeshType.FileMesh
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p42 = Instance.new("Part", m2)
p42.BrickColor = BrickColor.new("Dark Indigo")
p42.Material = Enum.Material.SmoothPlastic
p42.Reflectance = 0.30000001192093
p42.CFrame = CFrame.new(24.12043, 24.6884346, 26.7387066, -0.573574483, -0.212014884, -0.791238487, -2.23079792e-006, -0.965923309, 0.258816421, -0.819151402, 0.148452327, 0.554032683)
p42.CanCollide = false
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p42.BottomSurface = Enum.SurfaceType.Smooth
p42.TopSurface = Enum.SurfaceType.Smooth
b42 = Instance.new("SpecialMesh", p42)
b42.MeshId = "http://www.roblox.com/asset/?id=3270017"
b42.TextureId = ""
b42.MeshType = Enum.MeshType.FileMesh
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p43 = Instance.new("Part", m2)
p43.BrickColor = BrickColor.new("Dark Indigo")
p43.Material = Enum.Material.SmoothPlastic
p43.Reflectance = 0.30000001192093
p43.CFrame = CFrame.new(24.12043, 24.6884365, 26.7387066, -0.573574483, -0.212014899, -0.791238487, -2.30996147e-006, -0.96592325, 0.258816421, -0.819151402, 0.148452222, 0.554032683)
p43.CanCollide = false
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p43.BottomSurface = Enum.SurfaceType.Smooth
p43.TopSurface = Enum.SurfaceType.Smooth
b43 = Instance.new("SpecialMesh", p43)
b43.MeshId = "http://www.roblox.com/asset/?id=3270017"
b43.TextureId = ""
b43.MeshType = Enum.MeshType.FileMesh
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p44 = Instance.new("Part", m2)
p44.BrickColor = BrickColor.new("Dark Indigo")
p44.Material = Enum.Material.SmoothPlastic
p44.Reflectance = 0.30000001192093
p44.CFrame = CFrame.new(24.3630924, 24.6090679, 26.5687962, -0.573574483, -0.212014914, -0.791238487, -2.38912503e-006, -0.96592319, 0.258816421, -0.819151402, 0.148452118, 0.554032683)
p44.CanCollide = false
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p44.BottomSurface = Enum.SurfaceType.Smooth
p44.TopSurface = Enum.SurfaceType.Smooth
b44 = Instance.new("SpecialMesh", p44)
b44.MeshId = "http://www.roblox.com/asset/?id=3270017"
b44.TextureId = ""
b44.MeshType = Enum.MeshType.FileMesh
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p45 = Instance.new("Part", m2)
p45.BrickColor = BrickColor.new("Dark Indigo")
p45.Material = Enum.Material.SmoothPlastic
p45.Reflectance = 0.30000001192093
p45.CFrame = CFrame.new(24.2399025, 24.6493645, 26.6550598, -0.573574483, -0.212014928, -0.791238487, -2.46828859e-006, -0.965923131, 0.258816421, -0.819151402, 0.148452014, 0.554032683)
p45.CanCollide = false
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p45.BottomSurface = Enum.SurfaceType.Smooth
p45.TopSurface = Enum.SurfaceType.Smooth
b45 = Instance.new("SpecialMesh", p45)
b45.MeshId = "http://www.roblox.com/asset/?id=3270017"
b45.TextureId = ""
b45.MeshType = Enum.MeshType.FileMesh
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p46 = Instance.new("Part", m2)
p46.BrickColor = BrickColor.new("Dark Indigo")
p46.Material = Enum.Material.SmoothPlastic
p46.Reflectance = 0.30000001192093
p46.CFrame = CFrame.new(24.3630962, 24.6090736, 26.5688019, -0.573574483, -0.212014943, -0.791238487, -2.54745214e-006, -0.965923071, 0.258816421, -0.819151402, 0.148451909, 0.554032683)
p46.CanCollide = false
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p46.BottomSurface = Enum.SurfaceType.Smooth
p46.TopSurface = Enum.SurfaceType.Smooth
b46 = Instance.new("SpecialMesh", p46)
b46.MeshId = "http://www.roblox.com/asset/?id=3270017"
b46.TextureId = ""
b46.MeshType = Enum.MeshType.FileMesh
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p47 = Instance.new("Part", m2)
p47.BrickColor = BrickColor.new("Dark Indigo")
p47.Material = Enum.Material.SmoothPlastic
p47.Reflectance = 0.30000001192093
p47.CFrame = CFrame.new(24.2399063, 24.6493702, 26.6550655, -0.573574483, -0.212014958, -0.791238487, -2.6266157e-006, -0.965923011, 0.258816421, -0.819151402, 0.148451805, 0.554032683)
p47.CanCollide = false
p47.FormFactor = Enum.FormFactor.Custom
p47.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p47.BottomSurface = Enum.SurfaceType.Smooth
p47.TopSurface = Enum.SurfaceType.Smooth
b47 = Instance.new("SpecialMesh", p47)
b47.MeshId = "http://www.roblox.com/asset/?id=3270017"
b47.TextureId = ""
b47.MeshType = Enum.MeshType.FileMesh
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p48 = Instance.new("Part", m2)
p48.BrickColor = BrickColor.new("Dark Indigo")
p48.Material = Enum.Material.Neon
p48.CFrame = CFrame.new(25.2453995, 27.8142643, 25.9324112, 0.579229355, 0.579225123, -0.573574543, 0.707105756, -0.707103014, -2.67389237e-006, -0.405579329, -0.40558058, -0.819151223)
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p48.BottomSurface = Enum.SurfaceType.Smooth
p48.TopSurface = Enum.SurfaceType.Smooth
b48 = Instance.new("SpecialMesh", p48)
b48.MeshType = Enum.MeshType.Sphere
b48.Name = "Mesh"
p49 = Instance.new("Part", m2)
p49.BrickColor = BrickColor.new("Dark Indigo")
p49.Material = Enum.Material.SmoothPlastic
p49.Reflectance = 0.30000001192093
p49.CFrame = CFrame.new(26.2033863, 25.7751026, 25.2802086, -0.573574364, -0.469848186, -0.671007454, -2.67389191e-006, -0.819150448, 0.573572874, -0.819151223, 0.328989238, 0.469846845)
p49.CanCollide = false
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p49.BottomSurface = Enum.SurfaceType.Smooth
p49.TopSurface = Enum.SurfaceType.Smooth
b49 = Instance.new("SpecialMesh", p49)
b49.MeshId = "http://www.roblox.com/asset/?id=3270017"
b49.TextureId = ""
b49.MeshType = Enum.MeshType.FileMesh
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p50 = Instance.new("Part", m2)
p50.BrickColor = BrickColor.new("Dark Indigo")
p50.Material = Enum.Material.SmoothPlastic
p50.Reflectance = 0.30000001192093
p50.CFrame = CFrame.new(25.9976063, 25.9510059, 25.4242992, -0.573574364, -0.469848186, -0.671007454, -2.67389191e-006, -0.819150448, 0.573572874, -0.819151223, 0.328989238, 0.469846845)
p50.CanCollide = false
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p50.BottomSurface = Enum.SurfaceType.Smooth
p50.TopSurface = Enum.SurfaceType.Smooth
b50 = Instance.new("SpecialMesh", p50)
b50.MeshId = "http://www.roblox.com/asset/?id=3270017"
b50.TextureId = ""
b50.MeshType = Enum.MeshType.FileMesh
b50.Name = "Mesh"
b50.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p51 = Instance.new("Part", m2)
p51.BrickColor = BrickColor.new("Dark Indigo")
p51.Material = Enum.Material.SmoothPlastic
p51.Reflectance = 0.30000001192093
p51.CFrame = CFrame.new(26.0989265, 25.8644028, 25.353363, -0.573574364, -0.469848186, -0.671007454, -2.67389191e-006, -0.819150448, 0.573572874, -0.819151223, 0.328989238, 0.469846845)
p51.CanCollide = false
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p51.BottomSurface = Enum.SurfaceType.Smooth
p51.TopSurface = Enum.SurfaceType.Smooth
b51 = Instance.new("SpecialMesh", p51)
b51.MeshId = "http://www.roblox.com/asset/?id=3270017"
b51.TextureId = ""
b51.MeshType = Enum.MeshType.FileMesh
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p52 = Instance.new("Part", m2)
p52.BrickColor = BrickColor.new("Dark Indigo")
p52.Material = Enum.Material.Neon
p52.CFrame = CFrame.new(21.2912331, 25.2490387, 28.7011547, 0.142246991, 0.806705594, -0.573574483, 0.984804809, -0.173645705, -2.66166035e-006, -0.0995996594, -0.564862788, -0.819151103)
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p52.BottomSurface = Enum.SurfaceType.Smooth
p52.TopSurface = Enum.SurfaceType.Smooth
b52 = Instance.new("SpecialMesh", p52)
b52.MeshType = Enum.MeshType.Sphere
b52.Name = "Mesh"
p53 = Instance.new("Part", m2)
p53.BrickColor = BrickColor.new("Dark Indigo")
p53.Material = Enum.Material.Neon
p53.CFrame = CFrame.new(23.2582321, 27.8460655, 27.3238525, 0.409577936, 0.709403872, -0.573574483, 0.866023481, -0.499996662, -2.64914797e-006, -0.28678745, -0.496732205, -0.819151103)
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p53.BottomSurface = Enum.SurfaceType.Smooth
p53.TopSurface = Enum.SurfaceType.Smooth
b53 = Instance.new("SpecialMesh", p53)
b53.MeshType = Enum.MeshType.Sphere
b53.Name = "Mesh"
p54 = Instance.new("Part", m2)
p54.BrickColor = BrickColor.new("Dark Indigo")
p54.Material = Enum.Material.Neon
p54.CFrame = CFrame.new(21.2899132, 27.1965466, 28.7020855, 0.280168742, 0.769748747, -0.573574483, 0.939690113, -0.342017204, -2.64914797e-006, -0.196173787, -0.538985729, -0.819151103)
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(0.61060679, 8.03632927, 0.221234918)
p54.BottomSurface = Enum.SurfaceType.Smooth
p54.TopSurface = Enum.SurfaceType.Smooth
b54 = Instance.new("SpecialMesh", p54)
b54.MeshType = Enum.MeshType.Sphere
b54.Name = "Mesh"
p55 = Instance.new("Part", m2)
p55.BrickColor = BrickColor.new("Dark Indigo")
p55.Material = Enum.Material.Neon
p55.CFrame = CFrame.new(22.732933, 23.2277641, 27.6916542, -0.280163169, 0.769749939, -0.573574483, 0.939688265, 0.342020243, -2.67457881e-006, 0.196175426, -0.538984358, -0.819150984)
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p55.BottomSurface = Enum.SurfaceType.Smooth
p55.TopSurface = Enum.SurfaceType.Smooth
b55 = Instance.new("SpecialMesh", p55)
b55.MeshType = Enum.MeshType.Sphere
b55.Name = "Mesh"
p56 = Instance.new("Part", m2)
p56.BrickColor = BrickColor.new("Dark Indigo")
p56.Material = Enum.Material.SmoothPlastic
p56.Reflectance = 0.30000001192093
p56.CFrame = CFrame.new(26.1728668, 26.7314224, 25.3015804, -0.573574424, -0.469846636, -0.671006322, -2.71658587e-006, -0.819149017, 0.573572636, -0.819150925, 0.328987926, 0.469845742)
p56.CanCollide = false
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p56.BottomSurface = Enum.SurfaceType.Smooth
p56.TopSurface = Enum.SurfaceType.Smooth
b56 = Instance.new("SpecialMesh", p56)
b56.MeshId = "http://www.roblox.com/asset/?id=3270017"
b56.TextureId = ""
b56.MeshType = Enum.MeshType.FileMesh
b56.Name = "Mesh"
b56.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p57 = Instance.new("Part", m2)
p57.BrickColor = BrickColor.new("Dark Indigo")
p57.Material = Enum.Material.SmoothPlastic
p57.Reflectance = 0.30000001192093
p57.CFrame = CFrame.new(26.0715504, 26.8180256, 25.3725224, -0.573574424, -0.469846636, -0.671006322, -2.71658587e-006, -0.819149017, 0.573572636, -0.819150925, 0.328987926, 0.469845742)
p57.CanCollide = false
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p57.BottomSurface = Enum.SurfaceType.Smooth
p57.TopSurface = Enum.SurfaceType.Smooth
b57 = Instance.new("SpecialMesh", p57)
b57.MeshId = "http://www.roblox.com/asset/?id=3270017"
b57.TextureId = ""
b57.MeshType = Enum.MeshType.FileMesh
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p58 = Instance.new("Part", m2)
p58.BrickColor = BrickColor.new("Dark Indigo")
p58.Material = Enum.Material.SmoothPlastic
p58.Reflectance = 0.30000001192093
p58.CFrame = CFrame.new(26.2773418, 26.6421242, 25.2284393, -0.573574424, -0.469846636, -0.671006322, -2.71658587e-006, -0.819149017, 0.573572636, -0.819150925, 0.328987926, 0.469845742)
p58.CanCollide = false
p58.FormFactor = Enum.FormFactor.Custom
p58.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p58.BottomSurface = Enum.SurfaceType.Smooth
p58.TopSurface = Enum.SurfaceType.Smooth
b58 = Instance.new("SpecialMesh", p58)
b58.MeshId = "http://www.roblox.com/asset/?id=3270017"
b58.TextureId = ""
b58.MeshType = Enum.MeshType.FileMesh
b58.Name = "Mesh"
b58.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p59 = Instance.new("Part", m2)
p59.BrickColor = BrickColor.new("Dark Indigo")
p59.Material = Enum.Material.SmoothPlastic
p59.Reflectance = 0.30000001192093
p59.CFrame = CFrame.new(24.6884308, 25.7025909, 26.3410091, -0.573574424, -0.280167818, -0.769747615, -2.71658587e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172908, 0.538984478)
p59.CanCollide = false
p59.FormFactor = Enum.FormFactor.Custom
p59.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p59.BottomSurface = Enum.SurfaceType.Smooth
p59.TopSurface = Enum.SurfaceType.Smooth
b59 = Instance.new("SpecialMesh", p59)
b59.MeshId = "http://www.roblox.com/asset/?id=3270017"
b59.TextureId = ""
b59.MeshType = Enum.MeshType.FileMesh
b59.Name = "Mesh"
b59.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p60 = Instance.new("Part", m2)
p60.BrickColor = BrickColor.new("Dark Indigo")
p60.Material = Enum.Material.SmoothPlastic
p60.Reflectance = 0.30000001192093
p60.CFrame = CFrame.new(24.4523582, 25.807478, 26.5063095, -0.573574424, -0.280167848, -0.769747615, -2.7445908e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172863, 0.538984478)
p60.CanCollide = false
p60.FormFactor = Enum.FormFactor.Custom
p60.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p60.BottomSurface = Enum.SurfaceType.Smooth
p60.TopSurface = Enum.SurfaceType.Smooth
b60 = Instance.new("SpecialMesh", p60)
b60.MeshId = "http://www.roblox.com/asset/?id=3270017"
b60.TextureId = ""
b60.MeshType = Enum.MeshType.FileMesh
b60.Name = "Mesh"
b60.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p61 = Instance.new("Part", m2)
p61.BrickColor = BrickColor.new("Dark Indigo")
p61.Material = Enum.Material.SmoothPlastic
p61.Reflectance = 0.30000001192093
p61.CFrame = CFrame.new(24.5685883, 25.7558403, 26.4249287, -0.573574424, -0.280167878, -0.769747615, -2.77259574e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172819, 0.538984478)
p61.CanCollide = false
p61.FormFactor = Enum.FormFactor.Custom
p61.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p61.BottomSurface = Enum.SurfaceType.Smooth
p61.TopSurface = Enum.SurfaceType.Smooth
b61 = Instance.new("SpecialMesh", p61)
b61.MeshId = "http://www.roblox.com/asset/?id=3270017"
b61.TextureId = ""
b61.MeshType = Enum.MeshType.FileMesh
b61.Name = "Mesh"
b61.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p62 = Instance.new("Part", m2)
p62.BrickColor = BrickColor.new("Dark Indigo")
p62.Material = Enum.Material.SmoothPlastic
p62.Reflectance = 0.30000001192093
p62.CFrame = CFrame.new(24.6884365, 25.7025948, 26.3410149, -0.573574424, -0.280167907, -0.769747615, -2.80060067e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172774, 0.538984478)
p62.CanCollide = false
p62.FormFactor = Enum.FormFactor.Custom
p62.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p62.BottomSurface = Enum.SurfaceType.Smooth
p62.TopSurface = Enum.SurfaceType.Smooth
b62 = Instance.new("SpecialMesh", p62)
b62.MeshId = "http://www.roblox.com/asset/?id=3270017"
b62.TextureId = ""
b62.MeshType = Enum.MeshType.FileMesh
b62.Name = "Mesh"
b62.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p63 = Instance.new("Part", m2)
p63.BrickColor = BrickColor.new("Dark Indigo")
p63.Material = Enum.Material.SmoothPlastic
p63.Reflectance = 0.30000001192093
p63.CFrame = CFrame.new(24.452364, 25.8074818, 26.5063152, -0.573574424, -0.280167937, -0.769747615, -2.8286056e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172729, 0.538984478)
p63.CanCollide = false
p63.FormFactor = Enum.FormFactor.Custom
p63.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p63.BottomSurface = Enum.SurfaceType.Smooth
p63.TopSurface = Enum.SurfaceType.Smooth
b63 = Instance.new("SpecialMesh", p63)
b63.MeshId = "http://www.roblox.com/asset/?id=3270017"
b63.TextureId = ""
b63.MeshType = Enum.MeshType.FileMesh
b63.Name = "Mesh"
b63.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p64 = Instance.new("Part", m2)
p64.BrickColor = BrickColor.new("Dark Indigo")
p64.Material = Enum.Material.SmoothPlastic
p64.Reflectance = 0.30000001192093
p64.CFrame = CFrame.new(24.568594, 25.7558441, 26.4249344, -0.573574424, -0.280167967, -0.769747615, -2.85661054e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172684, 0.538984478)
p64.CanCollide = false
p64.FormFactor = Enum.FormFactor.Custom
p64.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p64.BottomSurface = Enum.SurfaceType.Smooth
p64.TopSurface = Enum.SurfaceType.Smooth
b64 = Instance.new("SpecialMesh", p64)
b64.MeshId = "http://www.roblox.com/asset/?id=3270017"
b64.TextureId = ""
b64.MeshType = Enum.MeshType.FileMesh
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p65 = Instance.new("Part", m2)
p65.BrickColor = BrickColor.new("Medium stone grey")
p65.Transparency = 1
p65.Name = "TorsoPart"
p65.CFrame = CFrame.new(27.0399818, 25.1251049, 25.3600311, 0.999996543, 2.59280205e-006, 8.94069672e-008, 2.77161598e-006, 0.999995351, 1.56462193e-006, 6.2584877e-007, 1.51991844e-006, 0.999998093)
p65.FormFactor = Enum.FormFactor.Symmetric
p65.Size = Vector3.new(4, 4, 2)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(7.48623466, 46.9062119, -4.72964478, -0.579227924, 0.707106769, -0.405579776, -0.579227805, -0.707106769, -0.405579716, -0.573576331, 0, 0.819152117)
w1.Part1 = p2
w1.C1 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w2.Part1 = p3
w2.C1 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w3.Part1 = p4
w3.C1 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w4.Part1 = p5
w4.C1 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w5.Part1 = p6
w5.C1 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w6.Part1 = p7
w6.C1 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w7.Part1 = p8
w7.C1 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w8.Part1 = p9
w8.C1 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w9.Part1 = p10
w9.C1 = CFrame.new(-4.6974659, 0.512617111, -46.0237579, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-4.6974659, 0.512617111, -46.0237579, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w10.Part1 = p11
w10.C1 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w11.Part1 = p12
w11.C1 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w12.Part1 = p13
w12.C1 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w13.Part1 = p14
w13.C1 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w14.Part1 = p15
w14.C1 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w15.Part1 = p16
w15.C1 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w16.Part1 = p17
w16.C1 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w17.Part1 = p18
w17.C1 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w18.Part1 = p19
w18.C1 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w19.Part1 = p20
w19.C1 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w20.Part1 = p21
w20.C1 = CFrame.new(-4.69746971, 0.512615204, -45.8727722, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-4.69746971, 0.512615204, -45.8727722, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w21.Part1 = p22
w21.C1 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w22.Part1 = p23
w22.C1 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w23 = Instance.new("Weld", p23)
w23.Name = "Part_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w23.Part1 = p24
w23.C1 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w24.Part1 = p25
w24.C1 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w25.Part1 = p26
w25.C1 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w26 = Instance.new("Weld", p26)
w26.Name = "Part_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w26.Part1 = p27
w26.C1 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w27 = Instance.new("Weld", p27)
w27.Name = "Part_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w27.Part1 = p28
w27.C1 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w28 = Instance.new("Weld", p28)
w28.Name = "Part_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w28.Part1 = p29
w28.C1 = CFrame.new(-36.0110359, 31.0260429, -4.71271896, 0.280166358, 0.93969208, 0.196174681, -0.769750178, 0.342019618, -0.538985252, -0.57357645, -2.95716429e-008, 0.819151998)
w29 = Instance.new("Weld", p29)
w29.Name = "Part_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(-36.0110359, 31.0260429, -4.71271896, 0.280166358, 0.93969208, 0.196174681, -0.769750178, 0.342019618, -0.538985252, -0.57357645, -2.95716429e-008, 0.819151998)
w29.Part1 = p30
w29.C1 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w30 = Instance.new("Weld", p30)
w30.Name = "Part_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w30.Part1 = p31
w30.C1 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w31 = Instance.new("Weld", p31)
w31.Name = "Part_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w31.Part1 = p32
w31.C1 = CFrame.new(-4.6974678, 0.512617111, -45.717083, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w32 = Instance.new("Weld", p32)
w32.Name = "Part_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(-4.6974678, 0.512617111, -45.717083, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w32.Part1 = p33
w32.C1 = CFrame.new(-17.3583775, 46.9591446, -4.71270752, -0.142244235, 0.98480773, -0.0996004939, -0.806707144, -0.173648238, -0.564862549, -0.57357657, 0, 0.819151998)
w33 = Instance.new("Weld", p33)
w33.Name = "Part_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(-17.3583775, 46.9591446, -4.71270752, -0.142244235, 0.98480773, -0.0996004939, -0.806707144, -0.173648238, -0.564862549, -0.57357657, 0, 0.819151998)
w33.Part1 = p34
w33.C1 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w34 = Instance.new("Weld", p34)
w34.Name = "Part_Weld"
w34.Part0 = p34
w34.C0 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w34.Part1 = p35
w34.C1 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w35 = Instance.new("Weld", p35)
w35.Name = "Part_Weld"
w35.Part0 = p35
w35.C0 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w35.Part1 = p36
w35.C1 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w36 = Instance.new("Weld", p36)
w36.Name = "Part_Weld"
w36.Part0 = p36
w36.C0 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w36.Part1 = p37
w36.C1 = CFrame.new(-3.70028734, 49.2830544, -4.71271324, -0.409575999, 0.866025388, -0.286788285, -0.709406435, -0.5, -0.496731967, -0.57357657, 0, 0.819151998)
w37 = Instance.new("Weld", p37)
w37.Name = "Part_Weld"
w37.Part0 = p37
w37.C0 = CFrame.new(-3.70028734, 49.2830544, -4.71271324, -0.409575999, 0.866025388, -0.286788285, -0.709406435, -0.5, -0.496731967, -0.57357657, 0, 0.819151998)
w37.Part1 = p38
w37.C1 = CFrame.new(-10.7698097, 49.927597, -4.71271324, -0.280166447, 0.939692616, -0.196174681, -0.769750953, -0.342020154, -0.53898561, -0.57357657, 0, 0.819151998)
w38 = Instance.new("Weld", p38)
w38.Name = "Part_Weld"
w38.Part0 = p38
w38.C0 = CFrame.new(-10.7698097, 49.927597, -4.71271324, -0.280166447, 0.939692616, -0.196174681, -0.769750953, -0.342020154, -0.53898561, -0.57357657, 0, 0.819151998)
w38.Part1 = p39
w38.C1 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w39 = Instance.new("Weld", p39)
w39.Name = "Part_Weld"
w39.Part0 = p39
w39.C0 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w39.Part1 = p40
w39.C1 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w40 = Instance.new("Weld", p40)
w40.Name = "Part_Weld"
w40.Part0 = p40
w40.C0 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w40.Part1 = p41
w40.C1 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w41 = Instance.new("Weld", p41)
w41.Name = "Part_Weld"
w41.Part0 = p41
w41.C0 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w41.Part1 = p42
w41.C1 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w42 = Instance.new("Weld", p42)
w42.Name = "Part_Weld"
w42.Part0 = p42
w42.C0 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w42.Part1 = p43
w42.C1 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w43 = Instance.new("Weld", p43)
w43.Name = "Part_Weld"
w43.Part0 = p43
w43.C0 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w43.Part1 = p44
w43.C1 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w44 = Instance.new("Weld", p44)
w44.Name = "Part_Weld"
w44.Part0 = p44
w44.C0 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w44.Part1 = p45
w44.C1 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w45 = Instance.new("Weld", p45)
w45.Name = "Part_Weld"
w45.Part0 = p45
w45.C0 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w45.Part1 = p46
w45.C1 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w46 = Instance.new("Weld", p46)
w46.Name = "Part_Weld"
w46.Part0 = p46
w46.C0 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w46.Part1 = p47
w46.C1 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w47 = Instance.new("Weld", p47)
w47.Name = "Part_Weld"
w47.Part0 = p47
w47.C0 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w47.Part1 = p48
w47.C1 = CFrame.new(-23.7728367, 15.5624714, 35.7227516, 0.579227924, 0.707106769, -0.405579776, 0.579227865, -0.707106769, -0.405579716, -0.57357645, 0, -0.819151998)
w48 = Instance.new("Weld", p48)
w48.Name = "Part_Weld"
w48.Part0 = p48
w48.C0 = CFrame.new(-23.7728367, 15.5624714, 35.7227516, 0.579227924, 0.707106769, -0.405579776, 0.579227865, -0.707106769, -0.405579716, -0.57357645, 0, -0.819151998)
w48.Part1 = p49
w48.C1 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w49 = Instance.new("Weld", p49)
w49.Name = "Part_Weld"
w49.Part0 = p49
w49.C0 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w49.Part1 = p50
w49.C1 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w50 = Instance.new("Weld", p50)
w50.Name = "Part_Weld"
w50.Part0 = p50
w50.C0 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w50.Part1 = p51
w50.C1 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w51 = Instance.new("Weld", p51)
w51.Name = "Part_Weld"
w51.Part0 = p51
w51.C0 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w51.Part1 = p52
w51.C1 = CFrame.new(-25.0353527, 3.42085648, 35.7227554, 0.142244235, 0.98480773, -0.0996005014, 0.806707203, -0.173648238, -0.56486249, -0.57357645, 0, -0.819151998)
w52 = Instance.new("Weld", p52)
w52.Name = "Part_Weld"
w52.Part0 = p52
w52.C0 = CFrame.new(-25.0353527, 3.42085648, 35.7227554, 0.142244235, 0.98480773, -0.0996005014, 0.806707203, -0.173648238, -0.56486249, -0.57357645, 0, -0.819151998)
w52.Part1 = p53
w52.C1 = CFrame.new(-25.8052597, 10.9961138, 35.7227554, 0.409575999, 0.866025388, -0.286788225, 0.709406435, -0.5, -0.496731758, -0.57357645, 0, -0.819151998)
w53 = Instance.new("Weld", p53)
w53.Name = "Part_Weld"
w53.Part0 = p53
w53.C0 = CFrame.new(-25.8052597, 10.9961138, 35.7227554, 0.409575999, 0.866025388, -0.286788225, 0.709406435, -0.5, -0.496731758, -0.57357645, 0, -0.819151998)
w53.Part1 = p54
w53.C1 = CFrame.new(-25.8904991, 8.38383961, 35.7227592, 0.280166447, 0.939692616, -0.196174681, 0.769751012, -0.342020154, -0.538985491, -0.57357645, 0, -0.819151998)
w54 = Instance.new("Weld", p54)
w54.Name = "Part_Weld"
w54.Part0 = p54
w54.C0 = CFrame.new(-25.8904991, 8.38383961, 35.7227592, 0.280166447, 0.939692616, -0.196174681, 0.769751012, -0.342020154, -0.538985491, -0.57357645, 0, -0.819151998)
w54.Part1 = p55
w54.C1 = CFrame.new(-20.8903503, -10.5176811, 35.7227554, -0.280166388, 0.93969208, 0.196174622, 0.769750416, 0.342019618, -0.538984895, -0.57357651, -2.95716429e-008, -0.819151938)
w55 = Instance.new("Weld", p55)
w55.Name = "Part_Weld"
w55.Part0 = p55
w55.C0 = CFrame.new(-20.8903503, -10.5176811, 35.7227554, -0.280166388, 0.93969208, 0.196174622, 0.769750416, 0.342019618, -0.538984895, -0.57357651, -2.95716429e-008, -0.819151938)
w55.Part1 = p56
w55.C1 = CFrame.new(35.7379799, 25.8704014, -9.65809727, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w56 = Instance.new("Weld", p56)
w56.Name = "Part_Weld"
w56.Part0 = p56
w56.C0 = CFrame.new(35.7379799, 25.8704014, -9.65809727, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w56.Part1 = p57
w56.C1 = CFrame.new(35.7379799, 25.8703995, -9.8090868, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w57 = Instance.new("Weld", p57)
w57.Name = "Part_Weld"
w57.Part0 = p57
w57.C0 = CFrame.new(35.7379799, 25.8703995, -9.8090868, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w57.Part1 = p58
w57.C1 = CFrame.new(35.7379875, 25.8704014, -9.50240993, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w58 = Instance.new("Weld", p58)
w58.Name = "Part_Weld"
w58.Part0 = p58
w58.C0 = CFrame.new(35.7379875, 25.8704014, -9.50240993, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w58.Part1 = p59
w58.C1 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w59 = Instance.new("Weld", p59)
w59.Name = "Part_Weld"
w59.Part0 = p59
w59.C0 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w59.Part1 = p60
w59.C1 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w60 = Instance.new("Weld", p60)
w60.Name = "Part_Weld"
w60.Part0 = p60
w60.C0 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w60.Part1 = p61
w60.C1 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w61 = Instance.new("Weld", p61)
w61.Name = "Part_Weld"
w61.Part0 = p61
w61.C0 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w61.Part1 = p62
w61.C1 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w62 = Instance.new("Weld", p62)
w62.Name = "Part_Weld"
w62.Part0 = p62
w62.C0 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w62.Part1 = p63
w62.C1 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w63 = Instance.new("Weld", p63)
w63.Name = "Part_Weld"
w63.Part0 = p63
w63.C0 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w63.Part1 = p64
w63.C1 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w64 = Instance.new("Weld", p64)
w64.Name = "TorsoPart_Weld"
w64.Part0 = p64
w64.C0 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w64.Part1 = p65
w64.C1 = CFrame.new(-27.0399971, -25.1251144, -25.3600025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m2.Parent = char
m2:MakeJoints()
----------------------------------------------------
local cor2 = Instance.new("Part", char.Wings)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(0.2, 0.2, 0.2)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = torso
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, 0.7, 0.8) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld2 = Instance.new("Weld", char.Wings)
weld2.Part0 = cor2
weld2.Part1 = char.Wings.TorsoPart
weld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
local och = 0
----------------------------------------------------
wPart = function(x,y,z,color,tr,cc,an,parent)
    local wp = Instance.new('WedgePart',parent or Weapon)
    wp.formFactor = 'Custom'
    wp.Size = Vector3.new(x,y,z)
    wp.BrickColor = BrickColor.new(color)
    wp.CanCollide = cc
    wp.Transparency = tr
    wp.Anchored = an
    wp.TopSurface,wp.BottomSurface = 0,0
    return wp
end

Mesh = function(par,num,x,y,z)
    local msh = _
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Torso"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end 
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

local function CFrameFromTopBack(at, top, back)
    local right = top:Cross(back)
    return CFrame.new(at.x, at.y, at.z,
    right.x, top.x, back.x,
    right.y, top.y, back.y,
    right.z, top.z, back.z)
end

function Triangle(a, b, c)
    local edg1 = (c-a):Dot((b-a).unit)
    local edg2 = (a-b):Dot((c-b).unit)
    local edg3 = (b-c):Dot((a-c).unit)
    if edg1 <= (b-a).magnitude and edg1 >= 0 then
        a, b, c = a, b, c
    elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
        a, b, c = b, c, a
    elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
        a, b, c = c, a, b
    else 
        print("unreachable")
    end
    local len1 = (c-a):Dot((b-a).unit)
    local len2 = (b-a).magnitude - len1
    local width = (a + (b-a).unit*len1 - c).magnitude
    local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
    local list = {}
    if len1 > 0.01 then
        local w1 = wPart(0,0,0,'Dark Indigo',0.5,false,true,char)
        local sz = Vector3.new(0.2, width, len1)
        w1.Size = sz
        local sp = Mesh(w1,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w1.Size
        w1:BreakJoints()
        w1.Anchored = true
        w1.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                wait()
                w1.Transparency=w1.Transparency+0.03
            end
        end)
        w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
        table.insert(list,w1)
    end
    if len2 > 0.01 then
        local w2 = wPart(0,0,0,'Dark Indigo',0.5,false,true,char)
        local sz = Vector3.new(0.2, width, len2) 
        w2.Size = sz
        local sp = Mesh(w2,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w2.Size
        w2:BreakJoints()
        w2.Anchored = true
        w2.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                wait()
                w2.Transparency=w2.Transparency+0.03
            end
        end)
        w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
        table.insert(list,w2)
    end
    return unpack(list)
end

function trail(p,t,h)
	Spawn(function()
		local blcf = p.CFrame
		local scfr = blcf
		for i=1,t do
			local blcf = p.CFrame
			if scfr and (p.Position-scfr.p).magnitude > .1 then
				local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				scfr = blcf
			elseif not scfr then
				scfr = blcf
			end
			game:service'RunService'.RenderStepped:wait()
		end
		scfr=nil
	end)
end
trail(char.Sword.Blade,1e1000,5)
----------------------------------------------------
char.Sword.Blade.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
		if hit:FindFirstChild("Humanoid") then
			if hit.Name ~= p.Name then
				if Debounces.Slashing == true and Debounces.Slashed == false then
					Debounces.Slashed = true
					hit:FindFirstChild("Humanoid"):TakeDamage(math.random(8000,10000))
					wait(.3)
					Debounces.Slashed = false
				end
			end
		end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
				if Debounces.Slashing == true and Debounces.Slashed == false then
					Debounces.Slashed = true
					hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(8000,1000))
					wait(.3)
					Debounces.Slashed = false
				end
            end
        end
    end    
end)

----------------------------------------------------
function attackone()
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.6, 0.9, -0.62)*CFrame.Angles(math.rad(170),math.rad(20),math.rad(-60)), 0.56)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0.2)*CFrame.Angles(math.rad(-30),math.rad(-10),math.rad(-20)), 0.5)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2)*CFrame.Angles(math.rad(10),math.rad(-46),0), 0.47)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-8), math.rad(46), 0), 0.55)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(20), math.rad(-10)), 0.43)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(-20), math.rad(10)), 0.43)
		if Debounces.on == false then break end
		rs:wait()
	end
	--trail(char.Sword.Blade,5,6)
	Debounces.Slashing = true
	z = Instance.new("Sound", hed)
	z.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
	z.Pitch = ptz[math.random(1,#ptz)]
	z.Volume = 1
	wait(.01)
	z:Play()
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, .3)*CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(50)), 0.67)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4, 0.7, -0.3)*CFrame.Angles(math.rad(80),math.rad(-10),math.rad(-20)), 0.58)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2)*CFrame.Angles(math.rad(-14),math.rad(40),0), 0.54)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-40), 0), 0.66)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(20), math.rad(-10)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-20), math.rad(10)), 0.5)
		if Debounces.on == false then break end
		rs:wait()
	end
	Debounces.Slashing = false
end
----------------------------------------------------
function attacktwo()
	for i = 1, 5 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.25, 0.9, 0)*CFrame.Angles(math.rad(170),math.rad(20),math.rad(60)), 0.8)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0.17)*CFrame.Angles(math.rad(-30),math.rad(-10),math.rad(-20)), 0.8)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2)*CFrame.Angles(math.rad(-10),math.rad(46),0), 0.8)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(8), math.rad(-46), 0), 0.8)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(20), math.rad(-10)), 0.8)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(-20), math.rad(10)), 0.8)
		if Debounces.on == false then break end
		rs:wait()
	end
	--trail(char.Sword.Blade,5,6)
	Debounces.Slashing = true
	z = Instance.new("Sound", hed)
	z.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
	z.Pitch = ptz[math.random(1,#ptz)]
	z.Volume = 1
	wait(.01)
	z:Play()
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8, 0.5, -0.35)*CFrame.Angles(math.rad(0),math.rad(-15),math.rad(-50)), 0.77)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4, 0.6, -0.35)*CFrame.Angles(math.rad(-50),math.rad(10),math.rad(-20)), 0.58)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2)*CFrame.Angles(math.rad(-14),math.rad(-40),0), 0.54)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-9), math.rad(40), 0), 0.66)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(20), math.rad(-10)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-20), math.rad(10)), 0.5)
		if Debounces.on == false then break end
		rs:wait()
	end
	Debounces.Slashing = false
end
----------------------------------------------------
function attackthree()
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.95, 1.1, -0.15)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-50)), 0.63)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.95, 1.1, -0.15)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(50)), 0.63)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.1)*CFrame.Angles(math.rad(10),math.rad(0),0), 0.54)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(10), math.rad(0), 0), 0.66)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.5, -0.5) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.5)
		corw.C0 = Lerp(corw.C0, CFrame.new(0, -0.85, 0) * CFrame.Angles(math.rad(-90), math.rad(-40), math.rad(0)), 0.4)
		if Debounces.on == false then
			break
		end
		rs:wait()
	end
	--trail(char.Sword.Blade,5,6)
	Debounces.Slashing = true
	z = Instance.new("Sound", hed)
	z.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
	z.Pitch = ptz[math.random(1,#ptz)]
	z.Volume = 1
	wait(.01)
	z:Play()
	for i = 1, 10 do
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1, 0.6, -.4) * CFrame.Angles(math.rad(20), 0, math.rad(40)), 0.7)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1, 0.6, -.4) * CFrame.Angles(math.rad(20), 0, math.rad(-40)), 0.7)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-40), 0, 0), 0.7)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(10), 0, 0), 0.7)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.1) * CFrame.Angles(math.rad(-16), 0, 0), 0.7)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-16), 0, 0), 0.7)
		corw.C0 = Lerp(corw.C0, CFrame.new(0, -0.85, 0) * CFrame.Angles(math.rad(-90), math.rad(-40), math.rad(0)), 0.4)
		if Debounces.on==false then
			break
		end
		rs:wait()
	end
	Debounces.Slashing = false
end
----------------------------------------------------
ComboNum = 0
mouse.Button1Down:connect(function()
	if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.NoIdl = true
		Debounces.on = true
		if ComboNum == 0 then
			attackone()
		elseif ComboNum == 1  then
			attacktwo()
		elseif ComboNum == 2 then
			attackthree()
		end
		ComboNum = ComboNum + 1
		Debounces.CanAttack = true
		Debounces.NoIdl = false
		Debounces.on = false
		wait(.5)
		if Debounces.CanAttack == true then
			ComboNum = 0
		end
	end
end)
----------------------------------------------------
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true
        
        if key == "f" then
                flyToggled = not flyToggled
                
        if not flyToggled then
                stanceToggle = "Normal"
                floatBP.Parent = nil
                flyBV.Parent = nil
                turnBG.Parent = nil
                root.Velocity = Vector3.new()
                pchar.Humanoid.PlatformStand = false
        end
end
        
end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
end)

local function updateFly()

        if not flyToggled then return end
        
        lastForward = forward
        lastSide = side
        
        forward = 0
        side = 0
        
        if keysDown.w then
                forward = forward + 1
        end
        if keysDown.s then
                forward = forward - 1
        end
        if keysDown.a then
                side = side - 1
        end
        if keysDown.d then
                side = side + 1
        end
        
        canFly = (forward ~= 0 or side ~= 0)
        
        if canFly then
                stanceToggle = "Floating"
                turnBG.Parent = root
                floatBP.Parent = nil
                flyBV.Parent = root
                
                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = root.Position
                floatBP.Parent = root
                
                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end
        
        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide
        
        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side, 
in_forward * 0.2, 0).p) - camCF.p) * flySpeed
        
        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0, 
0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)
----------------------------------------------------
function Charge()
	pt=Instance.new('Part',torso)
	pt.Anchored=true
	pt.CanCollide=false
	pt.Locked = true
	pt.FormFactor='Custom'
	pt.Size=Vector3.new(1,1,1)
	pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
	pt.Transparency=0.2
	pt.BrickColor=BrickColor.new("Dark Indigo")
	msh=Instance.new('SpecialMesh',pt)
	msh.MeshId='http://www.roblox.com/asset/?id=20329976'
	msh.Scale=Vector3.new(6,3,6)
	pt2=pt:clone()
	pt2.Parent = torso
	pt2.Transparency=0.4
	pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
	pt2.BrickColor=BrickColor.new("Dark Indigo")
	msh2=msh:clone()
	msh2.Parent=pt2
	msh2.Scale=Vector3.new(8,4,8)
	pt3=Instance.new('Part',torso)
	pt3.Anchored=true
	pt3.CanCollide=false
	pt3.Locked = true
	pt3.FormFactor='Custom'
	pt3.Size=Vector3.new(1,1,1)
	pt3.CFrame=root.CFrame*CFrame.new(0,-1,0)
	pt3.Transparency=0.6
	pt3.BrickColor=BrickColor.new("Dark Indigo")
	msh3=Instance.new('SpecialMesh',pt3)
	msh3.MeshId='http://www.roblox.com/asset/?id=20329976'
	msh3.Scale=Vector3.new(12,6,12)
	pt4=pt:clone()
	pt4.Parent = torso
	pt4.CFrame=root.CFrame*CFrame.new(0,-1,0)
	pt4.Transparency=0.8
	pt4.BrickColor=BrickColor.new("Dark Indigo")
	msh4=msh:clone()
	msh4.Parent=pt4
	msh4.Scale=Vector3.new(16,8,16)
	coroutine.resume(coroutine.create(function() 
        for i=1, math.huge, 4 do
			if Charging == true then
				wait()
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2+0.11*math.cos(sine/10)),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2+0.12*math.cos(sine/12)),0)
				pt3.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2+0.13*math.cos(sine/14)),0)
				pt4.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2+0.14*math.cos(sine/16)),0)
				pt.CFrame = pt.CFrame+Vector3.new(0,0.01,0)
				pt2.CFrame = pt2.CFrame+Vector3.new(0,0.01,0)
				pt3.CFrame = pt3.CFrame+Vector3.new(0,0.01,0)
				pt4.CFrame = pt4.CFrame+Vector3.new(0,0.01,0)
				msh.Scale = msh.Scale + Vector3.new(0.05,0.04+0.8*math.cos(sine/9),0.05)
				msh2.Scale = msh2.Scale + Vector3.new(0.05,0.04+0.8*math.cos(sine/7),0.05)
				msh3.Scale = msh3.Scale + Vector3.new(0.05,0.04+0.8*math.cos(sine/5),0.05)
				msh4.Scale = msh4.Scale + Vector3.new(0.05,0.04+0.8*math.cos(sine/3),0.05)
				elseif Charging == false then
				pt:Remove()
				pt2:Remove()
				pt3:Remove()
				pt4:Remove()
				break
			end
		end
    end))
end
----------------------------------------------------
local chot={}
local cns=0
mod3 = Instance.new("Model",char)
mouse.KeyDown:connect(function(key)
	if key == "e" then
		Charging = true
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			chot={}
			Charge()
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(20)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-26),math.rad(0),math.rad(-40)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-50),0), 0.2)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(-40),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(0, math.rad(50), math.rad(0)), 0.05)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(-10)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(10)), 0.4)
				corw.C0 = Lerp(corw.C0, CFrame.new(0, -0.8, 0.44) * CFrame.Angles(math.rad(-150), math.rad(0), math.rad(0)), 0.4)
				if Debounces.on == false then
					break 
				end
				rs:wait()
			end
			local nt=0
			for i=0,5,0.02 do
				nt=nt+1
				cns=i
				if nt>=2 then
					nt=0
					local cho=NewPart(mod3,Vector3.new(2,2,2),char.Sword.Blade.CFrame*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))*CFrame.new(0,5+cns,0),"Dark Indigo","Neon")
					debris:AddItem(cho,1)
					cho.Mesh.MeshType=3
					table.insert(chot,cho)
				end
				wait()
			end
			Charging = false
			for i = 1, 10 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.95, 1.1, -0.15)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-50)), 0.63)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.95, 1.1, -0.15)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(50)), 0.63)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.1)*CFrame.Angles(math.rad(10),math.rad(0),0), 0.54)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(10), math.rad(0), 0), 0.66)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.5)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.5, -0.5) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.5)
				corw.C0 = Lerp(corw.C0, CFrame.new(0, -0.85, 0) * CFrame.Angles(math.rad(-90), math.rad(-40), math.rad(0)), 0.4)
				if Debounces.on == false then
					break
				end
				rs:wait()
			end
			Spawn(function()
				local Parts = {}
				for Y = -5,5 do
					local P = Instance.new("Part",char)
					P.Anchored = true
					P.FormFactor = "Custom"
					P.CanCollide = false
					P.Size = Vector3.new(1,2,1)
					P.Material = "Neon"
					P.TopSurface = "SmoothNoOutlines"
					P.BottomSurface = "SmoothNoOutlines"
					P.BrickColor = BrickColor.new("Dark Indigo")
					P.Name = tostring(Y)
					local i = (Y+5)/(10)
					i = 1-math.cos(math.pi*i-(math.pi/2))
					P.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,Y,-15+(i*1.5))*CFrame.Angles(math.rad(Y*5),0,0)
					--[[P.Touched:connect(function(ht)
						local hit = ht.Parent
						if hit:FindFirstChild("Humanoid") then
							hit.Humanoid:TakeDamage(math.random(20,50))
						end
					end)]]--
					P.Touched:connect(function(ht)
						hit = ht.Parent
						if ht and hit:IsA("Model") then
							if hit:FindFirstChild("Humanoid") then
								if hit.Name ~= p.Name then
									hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5000,7500))
									hit:FindFirstChild("Humanoid").PlatformStand = true
									wait(1)
								end
							end
						elseif ht and hit:IsA("Hat") then
							if hit.Parent.Name ~= p.Name then
								if hit.Parent:FindFirstChild("Humanoid") then
									hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5000,7500))
									hit:FindFirstChild("Humanoid").PlatformStand = true
									wait(1)
								end
							end
						end
					end)
					Parts[#Parts+1] = P
				end
				local BREAKIT = false
				local CParts = {}
				local Rocks = {}
				local LastPos = nil
				for i = 1,70 do
					for i2,v in pairs(Parts) do
						v.CFrame = v.CFrame*CFrame.new(0,0,-4)
						local cf = v.CFrame
						v.Size = v.Size+Vector3.new(1.1,0.35,0.2)
						v.CFrame = cf
						v.Transparency = v.Transparency+0.02
						if v.Transparency >= 0.975 then BREAKIT = true end
						if v.Name == "0" then
							local Ignore = {}
							for i,v in pairs(game:GetService("Players"):GetPlayers()) do
								if v.Character ~= nil then
									Ignore[#Ignore+1] = v.Character
								end
							end
							local ray = Ray.new(v.Position+Vector3.new(0,20,0),Vector3.new(0,-200,0))
							local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(ray,Ignore)
							if Hit ~= nil then
								if #Rocks == 0 then
									for i = 1,5 do
										local P = Instance.new("Part",char)
										Rocks[#Rocks+1] = P
										P.Anchored = true
										P.FormFactor = "Custom"
										P.BrickColor = Hit.BrickColor
										P.Material = Hit.Material
										P.TopSurface = "Smooth"
										P.BottomSurface = "Smooth"
										P.Size = Vector3.new(1,1,1)*(math.random(500,900)/100)
									end
								end
								for i,P in pairs(Rocks) do
									P.CFrame = ((CFrame.new(Pos)*(v.CFrame-v.Position))*CFrame.new(math.random(-math.ceil(v.Size.X/2),math.ceil(v.Size.X/2)),0,-math.random(5,8))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
								end
								local P = Instance.new("Part",char)
								CParts[#CParts+1] = {P,tick()}
								P.Anchored = true
								P.FormFactor = "Custom"
								P.BrickColor = Hit.BrickColor
								P.Material = Hit.Material
								P.TopSurface = "Smooth"
								P.BottomSurface = "Smooth"
								P.Size = Vector3.new(1,1,1)*(math.random(100,300)/100)
								Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
								Pos = Pos.p
								P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
								local P = P:Clone()
								CParts[#CParts+1] = {P,tick()}
								P.Parent = char
								Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(-v.Size.X,0,0)
								Pos = Pos.p
								P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,-20)))
								if LastPos ~= nil then
									local P = P:Clone()
									CParts[#CParts+1] = {P,tick()}
									P.Parent = char
									P.BrickColor = BrickColor.new("Crimson")
									P.Material = "Granite"
									Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
									Pos = Pos.p
									local CFr = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
									P.Size = Vector3.new(v.Size.X-0.25,1,(CFr.p-LastPos.p).Magnitude+0.25)
									--P.Velocity = Vector3.new(0,-1000,0)
									P.CFrame = CFrame.new(CFr.p,LastPos.p)*CFrame.new(0,0,-((CFr.p-LastPos.p).Magnitude+0.25)/2)
								end
								LastPos = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
							end
						end
					end
					if BREAKIT then break end
					wait(0.002)
				end
				for i,v in pairs(Rocks) do
					CParts[#CParts+1] = {v,tick()}
				end
				for i,v in pairs(Parts) do
					v:Destroy()
				end
				Parts = nil
				while true do
					local t = tick()
					local p = nil
					for i,v in pairs(CParts) do
						if t-v[2] > 4 then
							v[1].Transparency = v[1].Transparency+0.05
							if v[1].Transparency >= 1 then
								v[1]:Destroy()
								CParts[i] = nil
							end
						end
						p = v
					end
					if p == nil then break end
					wait(0.002)
				end
				for i,v in pairs(CParts) do
					v:Destroy()
				end
				CParts = {}
			end)
			for i = 1, 10 do
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1, 0.6, -.4) * CFrame.Angles(math.rad(20), 0, math.rad(40)), 0.7)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1, 0.6, -.4) * CFrame.Angles(math.rad(20), 0, math.rad(-40)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-40), 0, 0), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(10), 0, 0), 0.7)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.1) * CFrame.Angles(math.rad(-16), 0, 0), 0.7)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-16), 0, 0), 0.7)
				corw.C0 = Lerp(corw.C0, CFrame.new(0, -0.85, 0) * CFrame.Angles(math.rad(-90), math.rad(-40), math.rad(0)), 0.4)
				if Debounces.on==false then
					break
				end
				rs:wait()
			end
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 28
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 16
    end
end)
----------------------------------------------------
game:GetService("RunService").RenderStepped:connect(function()
if char.Humanoid.Jump == true then
jump = true
else
jump = false
end
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
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 5 then
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
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
corw.C0 = Lerp(corw.C0, CFrame.new(0, -0.85, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.4)
end
wait()
end
else
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(14+2*math.cos(sine/10))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-20),math.rad(6),math.rad(-10-2*math.cos(sine/10))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/10)),math.rad(20),0), 0.2)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.16*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-20), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0-0.1*math.cos(sine/10), -0.55) * CFrame.Angles(math.rad(-10+1*math.cos(sine/10)), math.rad(10), math.rad(-0-2*math.cos(sine/10))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1-0.1*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-10), math.rad(0+2*math.cos(sine/10))), 0.4)
corw2.C0 = Lerp(corw2.C0, CFrame.new(0, 0.7, 0.8) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.05)
corw.C0 = Lerp(corw.C0, CFrame.new(0, -0.85, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.4)
--[[rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/8),0)*CFrame.Angles(math.rad(-10+4*math.cos(sine/8)),math.rad(-20-2*math.cos(sine/8)),math.rad(10+2*math.cos(sine/8))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/8),0)*CFrame.Angles(math.rad(0),math.rad(10+2*math.cos(sine/8)),math.rad(-18-2*math.cos(sine/8))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-18),math.rad(20+4*math.cos(sine/8)),0), 0.2)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(-12-3*math.cos(sine/8)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0+2*math.cos(sine/8)), math.rad(-20-4*math.cos(sine/8)), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/8)), math.rad(20+4*math.cos(sine/8)), math.rad(-5+1*math.cos(sine/8))), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0-4*math.cos(sine/8)), math.rad(-10-4*math.cos(sine/8)), math.rad(5+1*math.cos(sine/8))), 0.2)]]--
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.17*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
corw2.C0 = Lerp(corw2.C0, CFrame.new(0, 0.7, 0.8) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.05)
corw.C0 = Lerp(corw.C0, CFrame.new(0, -0.85, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-22),math.rad(20+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-14-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(20),0,0), 0.4)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-40),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(8)), 0.4)
corw2.C0 = Lerp(corw2.C0, CFrame.new(0, 0.7, 0.8) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), 0.05)
corw.C0 = Lerp(corw.C0, CFrame.new(0, -0.85, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.4)
end
end
och=och+1
for _,v in pairs(chot) do
	pcall(function()
		v.CFrame=v.CFrame:lerp(char.Sword.Blade.CFrame,0.1)
		v.Mesh.Scale=Vector3.new(Tween(v.Mesh.Scale.X,0,0.1),Tween(v.Mesh.Scale.Y,0,0.1),Tween(v.Mesh.Scale.Z,0,0.1))
	end)
end
end)
--[[while true do wait(0.2) https://preview.c9users.io/jaspher/rbx_stoof/RMMech.lua
	if charge == true then
		MagicRing(BrickColor.new('Dark Indigo'),torso.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,math.rad(90)),0,-0.2,0,0,0,0,0.4,0.4,0.4,.08)
	end
end]]--