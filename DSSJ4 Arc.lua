print("DSSJ4 Loading..")
local p = game.Players.LocalPlayer
local char = p.Character
local Character = char
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
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
local m = Instance.new("Model",Character)
m.Name = "WeaponModel"
math.randomseed(os.time())
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
----------------------------------------------------
hed.face.Texture = "rbxassetid://34668268"
char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
----------------------------------------------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=236410507"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=236412261"
end)
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
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BC, Name, Size)
	local Part = Create("Part"){
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BC)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
	
function CreateWeld(Parent, P0, P1, c0, c1)
	local W = Create("Weld"){
		Parent = Parent,
		Part0 = P0,
		Part1 = P1,
		C0 = c0,
		C1 = c1,
	}
	return W
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
---------------------------------------------------- ARC
Handle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","Handle",Vector3.new(0.301632881, 2.05244946, 0.301632911))
Handleweld=CreateWeld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900724411, 0.0686532855, 0.100441933, -9.87591953e-013, -0.999999881, 4.85088272e-012, 5.21260915e-007, -4.85088272e-012, -1, 1, -9.87589351e-013, 5.21260915e-007))
CreateMesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FakeHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","FakeHandle",Vector3.new(0.301632881, 1.05244946, 0.301632911))
FakeHandleweld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.100000024, 0, 1, 0, 3.49105374e-020, 0, 1, 0, 3.49105374e-020, 0, 1))
CreateMesh("CylinderMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Crimson","Part",Vector3.new(0.200000003, 0.904898763, 1.50816441))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000781536102, 0.000250577927, 6.81403255, -1.49028878e-008, 9.31697571e-007, -0.999994278, 0.999994278, 1.89689118e-007, -1.49028523e-008, 1.89689047e-007, -0.999999702, -1.03599632e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.123669446, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, -0.000703811646, 5.1551156, 0.999994278, -2.56082499e-011, -8.24284271e-013, 7.24824226e-013, 6.13397333e-010, 0.999994278, -2.4641773e-011, -0.999999702, -1.0368808e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904898703, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.603265822, 1.05571508))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000776290894, 0.00021648407, 6.58780527, -1.49040176e-008, 1.66174368e-006, -0.999994278, 0.999994278, 1.89681401e-007, -1.4903847e-008, 1.89681316e-007, -0.999999702, -1.76603862e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 4.67530966, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000900506973, -3.72235155, -0.000814437866, 0.999994278, -9.57904242e-011, -5.90481917e-012, 9.48240444e-011, 0.999999702, 7.09023971e-006, 5.73459726e-012, -6.98597478e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.829490483))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000506877899, -0.000769615173, 4.40096092, 0.999994278, -7.22328586e-011, -4.83882639e-012, 4.68256814e-012, -4.27471787e-006, 0.999994278, -7.12533782e-011, -0.999999702, -4.37899871e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904898703, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000766277313, -0.226443529, -3.57149124, 1.48977106e-008, 6.26339715e-006, -0.999994278, -0.999994278, -1.93668285e-007, -1.48987827e-008, -1.93668299e-007, 0.999999702, 6.36766708e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 4.67530966, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000900506973, -3.72235155, -0.000761985779, 0.999994278, -9.81090348e-011, -6.22590998e-012, 9.71359521e-011, 0.999999702, 7.29890962e-006, 6.05515291e-012, -7.19464515e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.120653138, 1, 0.837031305))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.603265882, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22638917, -3.94854045, -0.000765800476, 0.999994278, -7.93771299e-011, -4.7180081e-012, 7.83965046e-011, 0.999999702, 5.94327139e-006, 4.55733238e-012, -5.83899919e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 1.65898108, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22638917, -5.2304635, -0.000760555267, 0.999994278, -6.92162577e-011, -4.20806055e-012, 6.8235681e-011, 0.999999702, 5.52625534e-006, 4.04747373e-012, -5.42198086e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000786304474, 0.226445198, -4.32553482, -1.48974175e-008, -5.79835444e-007, 0.999994278, 0.999994278, -1.89793411e-007, 1.4897128e-008, 1.89791407e-007, 0.999999702, 6.84136694e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000786304474, 0.226443529, 3.57149148, -1.49031347e-008, 8.27100678e-007, -0.999994278, 0.999994278, 1.89686276e-007, -1.49031187e-008, 1.89686205e-007, -0.999999702, -9.31400564e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00170040131, 3.48783398, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00170660019, 5.14681053, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.301632881, 4.67530966, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -3.72235155, -0.00077009201, 0.999994278, -7.02250896e-011, -3.89532287e-012, 6.9244506e-011, 0.999999702, 5.10900372e-006, 3.73475946e-012, -5.00472652e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00170373917, 4.3927021, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000761985779, -0.226445198, 4.32553482, 1.49031258e-008, -6.22759217e-006, 0.999994278, -0.999994278, 1.9377616e-007, 1.49045132e-008, -1.93774227e-007, -0.999999702, -6.3318621e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000786304474, -0.226062298, -3.57149124, 7.45085771e-008, -9.02447312e-007, 0.999994278, 0.999994278, -1.29337536e-007, -7.45088684e-008, 1.2933593e-007, 0.999999702, 1.00674674e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000760555267, 0.226063848, -4.32552719, -7.45085771e-008, 6.58613544e-006, -0.999994278, -0.999994278, -2.54132573e-007, 7.45070352e-008, -2.54131749e-007, 0.999999702, 6.69040401e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449352, 0.301632941, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.40486073, 2.28881836e-005, 4.76837158e-007, -7.4510659e-008, 0.999999642, -5.19771334e-007, -0.999999464, 8.94021142e-008, -4.55381871e-010, 1.08580016e-008, 4.77549349e-007, 0.999999642))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.463006377, 0.473563731, 1.8791728))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.5, 4.76837158e-007, 1, 0, 3.49105374e-020, 0, 1, 0, 3.49105374e-020, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.706498325, -0.000161170959, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000784397125, -0.226063848, 4.32552719, -7.45085771e-008, 9.38253208e-007, -0.999994278, 0.999994278, 2.58115534e-007, -7.45084705e-008, 2.5811508e-007, -0.999999702, -1.04255219e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.404852629, -0.000162601471, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.2649765e-005, 0.952409267, -5.24520874e-006, 1, -2.90482699e-012, -6.25005202e-013, 2.90482742e-012, 1, 3.1322088e-007, 6.25004334e-013, -3.13220937e-007, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, 0.198386788, -0.000166416168, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.603265882, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.226004839, -3.94852328, 0.000782966614, -0.999994278, -6.44144791e-008, 7.45087902e-008, -6.44149978e-008, 0.999999702, 1.63986601e-006, -7.45087405e-008, 1.53557016e-006, -0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 1.65898108, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.226004839, -5.23044777, 0.000778198242, -0.999994278, -6.44043041e-008, 7.45087902e-008, -6.44047944e-008, 0.999999702, 2.05687343e-006, -7.45087618e-008, 1.95257962e-006, -0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632822, 0.301632911, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -1.23431873, -0.000158309937, 0.999994278, -7.58783383e-011, -4.41249901e-012, 7.49053597e-011, 0.999999702, 5.52591155e-006, 4.24203684e-012, -5.42163707e-006, 0.999994278))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.2649765e-005, 0.801642776, -5.24520874e-006, 1, -2.90482699e-012, -6.25005202e-013, 2.90482742e-012, 1, 3.1322088e-007, 6.25004334e-013, -3.13220937e-007, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, 0.047641933, -0.000165462494, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000116825104, 1.10333133, -0.000106334686, 1, -8.73691189e-011, -7.57409153e-012, 8.73691744e-011, 1, 7.19496757e-006, 7.57346269e-012, -7.19496757e-006, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000766277313, 0.226062536, 3.57149148, 7.45085771e-008, -6.33886475e-006, 0.999994278, -0.999994278, 1.25355314e-007, 7.45095434e-008, -1.25354148e-007, -0.999999702, -6.44313423e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000506877899, -0.000774383545, 3.49609566, 0.999994278, -7.31991967e-011, -4.93830194e-012, 4.78204325e-012, -4.1704161e-006, 0.999994278, -7.22190502e-011, -0.999999702, -4.27469786e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904898703, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Crimson","Part",Vector3.new(0.904898703, 4.67530966, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000299930573, -3.72235155, 0.000774860382, -0.999994278, -6.44028191e-008, 7.45117816e-008, -6.44031601e-008, 0.999999702, 3.93397568e-006, -7.45118669e-008, 3.82969256e-006, -0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.0980306864))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000506877899, -0.000778675079, 2.74198365, 0.999994278, -7.27333055e-011, -4.87426852e-012, 4.67926956e-012, -3.96196538e-006, 0.999994278, -7.17527218e-011, -0.999999702, -4.06624804e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904898703, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.301632911, 0.452449381))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000200271606, 1.23434317, 0.376773, 1.23888171e-008, 3.24624557e-006, -0.999994278, -8.94632066e-008, -0.999999702, -3.35053187e-006, -0.999994278, 8.94646988e-008, -1.23883597e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.301632911, 0.603265882))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000160217285, -0.301415563, -1.08350956, -1.19206696e-007, -3.91693493e-006, 0.999994278, 0.999994278, 2.97053617e-008, 1.19206646e-007, -2.97066389e-008, 0.999999702, 4.02121714e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000160217285, 1.00810027, 0.301787853, -2.97987164e-008, -4.72161719e-006, 0.999994278, -7.00291214e-011, -0.999999702, -4.8258953e-006, 0.999994278, -7.11414885e-011, 2.9798553e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 1.20653164))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.376680851, 1.98807502, 6.10957045e-007, 2.30473438e-006, -0.999994278, 0.999994278, -5.97264247e-008, 6.10956761e-007, -5.97237104e-008, -0.999999702, -2.40902614e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632822, 0.316714555, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.452566624, -0.000160217285, 1.23431873, 0.999994278, -6.81050077e-011, -3.46748129e-012, 3.30411198e-012, -3.64876109e-006, 0.999994278, -6.71349226e-011, -0.999999702, -3.75304512e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 1.20653164))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000101566315, 0.225869298, 1.98805106, -5.51343817e-007, 2.41004295e-006, 0.999994278, -0.999994278, -5.97035381e-008, -5.51343476e-007, 5.97028773e-008, -0.999999702, 2.30572573e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22638917, -1.30971909, -0.000157833099, 0.999994278, -7.5721332e-011, -4.24837986e-012, 7.47407344e-011, 0.999999702, 5.4216589e-006, 4.08776485e-012, -5.31738306e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 2.11143041, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.226004958, -2.44035769, 0.000785827637, -0.999994278, -6.44114166e-008, 7.45090389e-008, -6.44119211e-008, 0.999999702, 1.84849864e-006, -7.45090034e-008, 1.7442037e-006, -0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00169754028, 2.73375678, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -1.00806975, -0.000158786774, 0.999994278, -8.51322832e-011, -5.37915415e-012, 8.41605743e-011, 0.999999702, 6.15139652e-006, 5.21480515e-012, -6.04712568e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.301632822, 0.331796169, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.452520609, -9.58442688e-005, 1.23446751, 0.999994278, -5.5805336e-011, -2.06513279e-012, 1.90487188e-012, -8.32826402e-007, 0.999994278, -5.48248356e-011, -0.999999702, -9.37126288e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.754082322))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.857257009, -0.000160217285, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 2.11143041, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22638917, -2.44035769, -0.000775337219, 0.999994278, -7.71317871e-011, -4.71892274e-012, 7.61511756e-011, 0.999999702, 6.04763136e-006, 4.55825265e-012, -5.94335961e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.301632881, 0.301632911, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.2649765e-005, -4.76837158e-007, -1.40486121, -1, -4.85088315e-012, -9.87589459e-013, 9.87591953e-013, -5.21260915e-007, -1, 4.85088272e-012, -1, 5.21260915e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0935061872, 0.18248795, 0.334812433))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.103231549, -0.00016450882, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.301632911, 0.452449381))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000157356262, -0.452600718, 1.46049201, 3.77276812e-012, -5.00457736e-006, 0.999994278, -0.999994278, 2.98778282e-008, 4.08561423e-012, -2.98766878e-008, -0.999999702, -5.10885457e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Crimson","Hitbox",Vector3.new(0.904898703, 6.27530956, 0.200000003))
Hitboxweld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000299930573, -4.52235365, 0.000774860382, -0.999994278, -6.44028191e-008, 7.45117816e-008, -6.44031601e-008, 0.999999702, 3.93397568e-006, -7.45118669e-008, 3.82969256e-006, -0.999994278))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.452449381))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00029706955, 0.00348496437, 6.28616476, -1.49025681e-008, 4.09715824e-007, -0.999994278, 0.999994278, 1.89689203e-007, -1.49026409e-008, 1.89689132e-007, -0.999999702, -5.14017074e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.791786313, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00029706955, 0.00348496437, 6.13534832, -1.49025681e-008, 4.0970491e-007, -0.999994278, 0.999994278, 1.89689203e-007, -1.49026409e-008, 1.89689132e-007, -0.999999702, -5.1400616e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.806038439, 0.102555193, 0.754082263))
----------------------------------------------------
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://303570180"
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.1)
z:Play()
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Hair"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(-2.49043155, 8.24595642, -3.40113306, -5.48362732e-006, -0.978699088, 0.205299795, 3.27825546e-007, -0.205299854, -0.978699148, 1, -5.28991222e-006, 1.48639083e-006)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=12212520"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(0, 0, 0)
b1.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Pastel brown")
p2.Transparency = 1
p2.Name = "Head"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 1, 1)
p2.CFrame = CFrame.new(-1.70008016, 8.14794922, -3.40013027, 4.24603923e-006, 7.4505806e-008, -1, -1.50268988e-007, 1, 1.49011612e-008, 1.00000012, 6.79109462e-008, 4.23316806e-006)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Head
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.25, 1.25, 1.25)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really black")
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(2, 2, 2)
p3.CFrame = CFrame.new(-1.70003617, 8.71796131, -3.4000442, 2.57710985e-006, 6.95607483e-008, -1.00000012, -1.20466638e-007, 1, 9.95640903e-009, 1.00000024, 3.81086345e-008, 2.56423846e-006)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=16627529"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0, 0)
b3.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(-1.77981007, 8.84795475, -3.40016508, 5.79576135e-006, 7.9450956e-008, -1.00000012, -1.80071311e-007, 1, 1.98458743e-008, 1.00000024, 9.77132402e-008, 5.78289018e-006)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=19326912"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.VertexColor = Vector3.new(0, 0, 0)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Size = Vector3.new(1, 1, 1)
p5.CFrame = CFrame.new(-1.70003772, 8.46796131, -3.40004301, -3.43517968e-007, 2.98088111e-007, -1, -1.00421907e-007, 1, 2.38484063e-007, 1.00000012, 1.80640072e-008, -3.56389592e-007)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/asset/?id=45916884"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.VertexColor = Vector3.new(0, 0, 0)
b5.Scale = Vector3.new(1, 0.899999976, 1)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Really black")
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.CFrame = CFrame.new(-1.89967656, 8.58795834, -3.44990659, -5.81936433e-007, 5.36502284e-007, -0.99999994, -1.3998249e-007, 1, 4.76898265e-007, 1, 5.76247672e-008, -5.94808171e-007)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=62246019"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.VertexColor = Vector3.new(0, 0, 0)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(-1.89918542, 8.31796837, -3.50097537, -4.62727087e-007, 5.36502228e-007, -0.999999881, -1.39982518e-007, 1, 4.76898208e-007, 0.99999994, 5.76247459e-008, -4.75598938e-007)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=76056263"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.VertexColor = Vector3.new(0, 0, 0)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(-2.62433338, 7.66397905, -3.4010179, -1.17798254e-006, -0.805111349, 0.593123376, -2.5008859e-007, -0.593123615, -0.805111527, 0.999999881, -9.58229293e-007, 4.4941558e-007)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=12212520"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.VertexColor = Vector3.new(0, 0, 0)
b8.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(2, 1, 2)
p9.CFrame = CFrame.new(-1.76505995, 8.56096649, -3.40065479, -9.73168881e-007, -0.0995008349, -0.995037436, -1.70322267e-007, 0.995037675, -0.0995009243, 1, 1.13823972e-007, -6.80968242e-007)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=12259089"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.VertexColor = Vector3.new(0, 0, 0)
b9.Scale = Vector3.new(1.01999998, 1.04999995, 1.04999995)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.CFrame = CFrame.new(-2.0207715, 9.06097031, -3.39961624, -1.10652763e-006, -0.683569431, -0.729885519, -2.85231891e-007, 0.729885638, -0.68356967, 1.00000012, -3.22293062e-007, -8.40051371e-007)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=12212520"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.VertexColor = Vector3.new(0, 0, 0)
b10.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.CFrame = CFrame.new(-2.16468835, 8.78595829, -3.40089417, -1.41617738e-006, -0.989475727, -0.144699216, -4.36450762e-007, 0.144699067, -0.989476085, 1.00000024, -9.47996682e-007, -7.38401468e-007)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=12212520"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.VertexColor = Vector3.new(0, 0, 0)
b11.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 3.5, 1)
p12.CFrame = CFrame.new(-3.74216318, 6.74288082, -3.40101933, -1.20476273e-006, -0.553697288, 0.832718134, -3.31002866e-007, -0.832718611, -0.553697169, 1.00000036, -8.7345768e-007, 3.69213154e-007)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=12212520"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.VertexColor = Vector3.new(0, 0, 0)
b12.Scale = Vector3.new(1, 3, 1.29999995)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1, 2, 1)
p13.CFrame = CFrame.new(-3.32689047, 6.86741829, -3.40101862, -9.81709945e-007, -0.319307148, 0.947651446, -5.6545997e-007, -0.947651923, -0.31930691, 1.00000048, -8.39551717e-007, 1.79318391e-007)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=12212520"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.VertexColor = Vector3.new(0, 0, 0)
b13.Scale = Vector3.new(1, 3, 1.29999995)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1, 2, 1)
p14.CFrame = CFrame.new(-3.02689028, 7.96740961, -3.40101862, -1.33478545e-006, -0.750354111, 0.661036491, -5.20037702e-008, -0.661037207, -0.750354171, 1.0000006, -6.31296757e-007, 2.01137496e-007)
p14.CanCollide = false
p14.Locked = true
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/asset/?id=12212520"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.VertexColor = Vector3.new(0, 0, 0)
b14.Scale = Vector3.new(1, 3, 1.29999995)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1, 2.5, 1)
p15.CFrame = CFrame.new(-2.96531463, 7.75924349, -2.90101862, 0.342019022, -0.520305753, 0.782499552, -1.1920929e-007, -0.832718909, -0.553697407, 0.939693451, 0.189374983, -0.284806281)
p15.CanCollide = false
p15.Locked = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=12212520"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.VertexColor = Vector3.new(0, 0, 0)
b15.Scale = Vector3.new(1, 3, 1.29999995)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1, 2.5, 1)
p16.CFrame = CFrame.new(-2.96531439, 7.75924349, -3.80101967, -0.258820295, -0.534830391, 0.804343879, -1.78813934e-007, -0.832718968, -0.553697228, 0.96592629, -0.143308073, 0.215523779)
p16.CanCollide = false
p16.Locked = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=12212520"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.VertexColor = Vector3.new(0, 0, 0)
b16.Scale = Vector3.new(1, 3, 1.29999995)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1, 2.4000001, 1)
p17.CFrame = CFrame.new(-2.69075108, 7.07788849, -3.40101933, -1.13248825e-006, -0.319307148, 0.947651625, -1.1920929e-006, -0.947652161, -0.319306791, 1.0000006, -1.54972076e-006, 1.04308128e-007)
p17.CanCollide = false
p17.Locked = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/asset/?id=12212520"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.VertexColor = Vector3.new(0, 0, 0)
b17.Scale = Vector3.new(1, 3, 1.29999995)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(2, 2, 2)
p18.CFrame = CFrame.new(-1.70003319, 8.71796608, -3.40004444, -2.37434961e-006, 1.78813934e-007, 1.00000036, -2.35242567e-007, 1.00000072, 3.27825546e-007, -1.0000006, 7.95440158e-009, -2.91315405e-006)
p18.CanCollide = false
p18.Locked = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/asset/?id=16627529"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.VertexColor = Vector3.new(0, 0, 0)
b18.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
w1 = Instance.new("Weld", p1)
w1.Name = "Head_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(3.40111661, -0.744508088, 8.58160019, -5.48362732e-006, 3.27825546e-007, 1, -0.978699088, -0.205299854, -5.30481339e-006, 0.205299824, -0.978699148, 1.49011612e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2.Part1 = p3
w2.C1 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3.Part1 = p4
w3.C1 = CFrame.new(3.40017533, -8.8479538, -1.77979064, 5.78165054e-006, -1.38599077e-007, 1, 3.46098972e-008, 1, 1.38598878e-007, -1, 3.46090907e-008, 5.78165054e-006)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(3.40017533, -8.8479538, -1.77979064, 5.78165054e-006, -1.38599077e-007, 1, 3.46098972e-008, 1, 1.38598878e-007, -1, 3.46090907e-008, 5.78165054e-006)
w4.Part1 = p5
w4.C1 = CFrame.new(3.40004182, -8.46796036, -1.70004117, -3.57627869e-007, -5.89495883e-008, 0.99999994, 2.53247009e-007, 1, 5.89496665e-008, -0.99999994, 2.53247009e-007, -3.57627869e-007)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(3.40004182, -8.46796036, -1.70004117, -3.57627869e-007, -5.89495883e-008, 0.99999994, 2.53247009e-007, 1, 5.89496665e-008, -0.99999994, 2.53247009e-007, -3.57627869e-007)
w5.Part1 = p6
w5.C1 = CFrame.new(3.44990563, -8.58795738, -1.89968324, -5.96046448e-007, -9.85101565e-008, 1, 4.91661183e-007, 1, 9.85104407e-008, -1, 4.9166124e-007, -5.96046448e-007)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(3.44990563, -8.58795738, -1.89968324, -5.96046448e-007, -9.85101565e-008, 1, 4.91661183e-007, 1, 9.85104407e-008, -1, 4.9166124e-007, -5.96046448e-007)
w6.Part1 = p7
w6.C1 = CFrame.new(3.50097466, -8.31796741, -1.89919162, -4.76837158e-007, -9.85101849e-008, 0.99999994, 4.91661126e-007, 1, 9.85104265e-008, -0.99999994, 4.91661183e-007, -4.76837158e-007)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(3.50097466, -8.31796741, -1.89919162, -4.76837158e-007, -9.85101849e-008, 0.99999994, 4.91661126e-007, 1, 9.85104265e-008, -0.99999994, 4.91661183e-007, -4.76837158e-007)
w7.Part1 = p8
w7.C1 = CFrame.new(3.40101647, 2.43280101, 7.72691393, -1.1920929e-006, -2.08616257e-007, 1, -0.805111527, -0.593123555, -9.83476639e-007, 0.593123496, -0.805111527, 4.17232513e-007)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(3.40101647, 2.43280101, 7.72691393, -1.1920929e-006, -2.08616257e-007, 1, -0.805111527, -0.593123555, -9.83476639e-007, 0.593123496, -0.805111527, 4.17232513e-007)
w8.Part1 = p9
w8.C1 = CFrame.new(3.40065455, -8.6941061, -0.904481649, -8.34465027e-007, -1.67638063e-007, 1.00000012, -0.0995008498, 0.995037496, 1.00582838e-007, -0.995037615, -0.0995008498, -8.34465027e-007)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(3.40065455, -8.6941061, -0.904481649, -8.34465027e-007, -1.67638063e-007, 1.00000012, -0.0995008498, 0.995037496, 1.00582838e-007, -0.995037615, -0.0995008498, -8.34465027e-007)
w9.Part1 = p10
w9.C1 = CFrame.new(3.39961672, -7.99480963, 4.71886492, -9.53674316e-007, -2.98023224e-007, 1, -0.683569372, 0.729885519, -4.47034836e-007, -0.729885459, -0.683569431, -9.53674316e-007)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(3.39961672, -7.99480963, 4.71886492, -9.53674316e-007, -2.98023224e-007, 1, -0.683569372, 0.729885519, -4.47034836e-007, -0.729885459, -0.683569431, -9.53674316e-007)
w10.Part1 = p11
w10.C1 = CFrame.new(3.40089583, -3.41323304, 8.38025856, -1.31130219e-006, -4.76837158e-007, 1.00000012, -0.989475787, 0.144699097, -1.07288361e-006, -0.144699246, -0.989475787, -7.15255737e-007)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(3.40089583, -3.41323304, 8.38025856, -1.31130219e-006, -4.76837158e-007, 1.00000012, -0.989475787, 0.144699097, -1.07288361e-006, -0.144699246, -0.989475787, -7.15255737e-007)
w11.Part1 = p12
w11.C1 = CFrame.new(3.40101814, 3.54288888, 6.84968376, -9.53674316e-007, -4.47034836e-007, 1, -0.553697109, -0.832718134, -9.23871994e-007, 0.832718134, -0.553697109, 6.55651093e-007)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(3.40101814, 3.54288888, 6.84968376, -9.53674316e-007, -4.47034836e-007, 1, -0.553697109, -0.832718134, -9.23871994e-007, 0.832718134, -0.553697109, 6.55651093e-007)
w12.Part1 = p13
w12.C1 = CFrame.new(3.40102005, 5.44561195, 5.34554911, -8.34465027e-007, -6.40749931e-007, 1.00000012, -0.319307029, -0.947651505, -8.19563866e-007, 0.947651386, -0.319307029, 3.57627869e-007)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(3.40102005, 5.44561195, 5.34554911, -8.34465027e-007, -6.40749931e-007, 1.00000012, -0.319307029, -0.947651505, -8.19563866e-007, 0.947651386, -0.319307029, 3.57627869e-007)
w13.Part1 = p14
w13.C1 = CFrame.new(3.40101624, 2.99550176, 7.97925997, -9.53674316e-007, -1.49011612e-007, 1, -0.750353813, -0.661036491, -8.64267349e-007, 0.661036491, -0.750353813, 5.36441803e-007)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(3.40101624, 2.99550176, 7.97925997, -9.53674316e-007, -1.49011612e-007, 1, -0.750353813, -0.661036491, -8.64267349e-007, 0.661036491, -0.750353813, 5.36441803e-007)
w14.Part1 = p15
w14.C1 = CFrame.new(3.74026394, 5.46776819, 5.79039907, 0.34201923, -3.27825546e-007, 0.939692974, -0.520305395, -0.832718134, 0.189374775, 0.782499313, -0.553697109, -0.284805775)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(3.74026394, 5.46776819, 5.79039907, 0.34201923, -3.27825546e-007, 0.939692974, -0.520305395, -0.832718134, 0.189374775, 0.782499313, -0.553697109, -0.284805775)
w15.Part1 = p16
w15.C1 = CFrame.new(2.90401983, 4.33060169, 7.50061178, -0.258819938, -2.68220901e-007, 0.965925574, -0.534830093, -0.832718134, -0.143308043, 0.80434382, -0.55369705, 0.215523928)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(2.90401983, 4.33060169, 7.50061178, -0.258819938, -2.68220901e-007, 0.965925574, -0.534830093, -0.832718134, -0.143308043, 0.80434382, -0.55369705, 0.215523928)
w16.Part1 = p17
w16.C1 = CFrame.new(3.4010253, 5.84818506, 4.80991411, -8.56413749e-007, -1.3483392e-006, 1, -0.31930685, -0.947651386, -1.55121427e-006, 0.947651386, -0.31930685, 3.81047698e-007)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(3.4010253, 5.84818506, 4.80991411, -8.56413749e-007, -1.3483392e-006, 1, -0.31930685, -0.947651386, -1.55121427e-006, 0.947651386, -0.31930685, 3.81047698e-007)
w17.Part1 = p18
w17.C1 = CFrame.new(-3.40004683, -8.71796036, 1.70002675, -2.6504224e-006, -7.89943471e-008, -1, -2.47197018e-008, 1, -7.89942831e-008, 1, 2.47194887e-008, -2.6504224e-006)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Hair)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = hed
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Hair)
weld1.Part0 = cor
weld1.Part1 = char.Hair.Head
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
print("Success")
--------------------------------------------------
local m = Instance.new("Model")
m.Name = "Claw"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1.5, 0.5, 0.5)
p1.CFrame = CFrame.new(2.91120553, 6.79703379, -19.5339718, -0.205515206, -0.209888965, 0.955883741, 0.52527827, -0.847774804, -0.0732159689, 0.825741529, 0.487057745, 0.284480691)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
p2 = Instance.new("WedgePart", m)
p2.BrickColor = BrickColor.new("Really black")
p2.Name = "Wedge"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(3, 1, 0.5)
p2.CFrame = CFrame.new(2.94872427, 6.13246727, -16.5004997, -5.96046448e-008, -4.47034836e-008, -1.00000358, -1.3615936e-005, 0.99999994, 4.47034836e-008, 1.00000358, 1.41002238e-005, 0)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really black")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1.5, 0.5, 0.5)
p3.CFrame = CFrame.new(1.84869456, 6.79700661, -18.5422173, -5.06400113e-008, 1.07230136e-007, 1.00000715, -0.499905825, -0.866079628, -1.1125789e-007, 0.86608547, -0.499910295, -2.17476881e-008)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p3)
b2.Name = "Mesh"
p4 = Instance.new("WedgePart", m)
p4.BrickColor = BrickColor.new("Really black")
p4.Name = "Wedge"
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(3, 1, 0.5)
p4.CFrame = CFrame.new(0.0487272739, 4.13279819, -16.5004959, -1.62921424e-007, 1.78814929e-007, 1.00001431, -1.2755394e-005, -0.999999762, -1.78813849e-007, 1.00001431, -1.46627426e-005, -7.54998553e-008)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1.5, 0.5, 0.5)
p5.CFrame = CFrame.new(1.84874606, 6.79701567, -19.6422844, -4.29027068e-007, 1.9046513e-007, 1.00001431, 0.500089467, -0.865973532, 2.18601315e-008, 0.865987122, 0.50009501, 3.78533827e-008)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p5)
b3.Name = "Mesh"
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Really black")
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.5, 0.5, 0.5)
p6.CFrame = CFrame.new(2.61122823, 6.79701757, -18.433939, -0.250001401, 0.0669622123, 0.965941966, -0.491382152, -0.868364573, -0.0669801831, 0.834303975, -0.491393685, 0.249996051)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p6)
b4.Name = "Mesh"
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(3, 1, 1.20000005)
p7.CFrame = CFrame.new(2.59874034, 5.13276958, -16.5005379, -3.27825546e-007, -3.57627869e-007, -1.00001431, -0.000133868307, 0.99999994, 1.49011612e-008, 1.00001442, 0.000135900453, -5.96046448e-008)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("BlockMesh", p7)
b5.Name = "Mesh"
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Bright blue")
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(1.84841466, 6.25537968, -20.3997307, -1.42129729e-005, 0.00428489037, -1.00000513, 0.965967655, 0.258660465, 0.00109496934, 0.258668512, -0.965972245, -0.00414247159)
p8.CanCollide = false
p8.Locked = true
b6 = Instance.new("SpecialMesh", p8)
b6.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1.5, 0.5, 0.5)
p9.CFrame = CFrame.new(2.79691935, 3.68131566, -18.264101, -0.277095288, -0.561500967, -0.779720128, 0.631033003, 0.505603611, -0.58835566, 0.724593103, -0.655058563, 0.214224264)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("BlockMesh", p9)
b7.Name = "Mesh"
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Bright blue")
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.CFrame = CFrame.new(3.09846497, 6.25236273, -20.2996788, -0.0669716895, 0.254178405, -0.964850724, 0.96595335, 0.258713901, 0.00110733509, 0.249903828, -0.93192625, -0.262850702)
p10.CanCollide = false
p10.Locked = true
b8 = Instance.new("SpecialMesh", p10)
b8.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1.5, 0.5, 0.5)
p11.CFrame = CFrame.new(0.386122227, 6.79699421, -18.533905, 0.250022948, -0.0669473261, 0.965937555, -0.491377324, -0.868365645, 0.0670026764, 0.834300399, -0.491393894, -0.250007868)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p11)
b9.Name = "Mesh"
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1.5, 0.5, 0.5)
p12.CFrame = CFrame.new(1.14871967, 6.79700947, -19.6422291, -4.76837158e-007, 2.83122063e-007, 1.00001442, 0.500089884, -0.865973473, 4.47034836e-008, 0.865987122, 0.500095367, 1.49011612e-008)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("BlockMesh", p12)
b10.Name = "Mesh"
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1.5, 0.5, 0.5)
p13.CFrame = CFrame.new(1.14870512, 6.79699612, -18.5421638, -4.63888163e-008, 5.08347114e-007, 1.00001442, -0.499899268, -0.866083562, -2.18518963e-008, 0.866095126, -0.499908328, 3.78581007e-008)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p13)
b11.Name = "Mesh"
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Bright blue")
p14.FormFactor = Enum.FormFactor.Symmetric
p14.Size = Vector3.new(1, 1, 1)
p14.CFrame = CFrame.new(1.14845455, 6.25537348, -20.3996773, -1.42545232e-005, 0.00425684778, -1.00000536, 0.965958476, 0.258694947, 0.00108788908, 0.258703023, -0.965963125, -0.00411536777)
p14.CanCollide = false
p14.Locked = true
b12 = Instance.new("SpecialMesh", p14)
b12.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Medium stone grey")
p15.Transparency = 1
p15.Name = "ArmPart"
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(2, 1, 1)
p15.CFrame = CFrame.new(1.49875152, 5.13257265, -16.0004654, -2.99420208e-007, 4.39002179e-007, 1.00001442, 0.00011029192, -1, 0, 1.00001454, 0.000108176115, 4.42378223e-008)
p15.CanCollide = false
p15.Locked = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("BlockMesh", p15)
b13.Name = "Mesh"
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(3, 1, 2.4000001)
p16.CFrame = CFrame.new(1.49872661, 6.13250732, -16.5007095, -2.98894406e-007, 4.39006953e-007, 1.00001442, 0.000110270419, -1, 4.71678729e-012, 1.00001454, 0.000108154614, 4.37120207e-008)
p16.CanCollide = false
p16.Locked = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("BlockMesh", p16)
b14.Name = "Mesh"
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.5, 0.5, 0.5)
p17.CFrame = CFrame.new(2.77308726, 3.37837577, -19.2558823, 0.396035522, -0.497440547, -0.771840453, -0.207958207, 0.770127177, -0.603040278, 0.894391596, 0.399337679, 0.201549783)
p17.CanCollide = false
p17.Locked = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("BlockMesh", p17)
b15.Name = "Mesh"
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Bright blue")
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(1, 1, 1)
p18.CFrame = CFrame.new(-0.0516102314, 6.25535488, -20.1996384, 0.066943109, -0.245838761, -0.967011333, 0.965954781, 0.258709013, 0.00110003352, 0.249906152, -0.934162259, 0.254788101)
p18.CanCollide = false
p18.Locked = true
b16 = Instance.new("SpecialMesh", p18)
b16.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Bright blue")
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1, 1, 1)
p19.CFrame = CFrame.new(2.43177533, 3.59484506, -20.0301056, 0.559401393, 0.116905749, 0.820629179, -0.685213447, -0.491872638, 0.537163019, 0.466440916, -0.862796843, -0.195047855)
p19.CanCollide = false
p19.Locked = true
b17 = Instance.new("SpecialMesh", p19)
b17.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(3, 1, 2.4000001)
p20.CFrame = CFrame.new(1.49873698, 4.13275099, -16.500618, -2.38418579e-007, -4.47034836e-007, -1.00001454, -0.000133797526, 1.00000024, -2.98023224e-008, 1.00001466, 0.000135831535, -5.96046448e-008)
p20.CanCollide = false
p20.Locked = true
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("BlockMesh", p20)
b18.Name = "Mesh"
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Really black")
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(3, 1, 1.19999993)
p21.CFrame = CFrame.new(0.398718834, 5.13273239, -16.5005798, -2.22529991e-007, -4.17224015e-007, -1.00001454, -0.000133820766, 1.00000024, 5.9472427e-012, 1.00001466, 0.000135854774, -4.37120207e-008)
p21.CanCollide = false
p21.Locked = true
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("BlockMesh", p21)
b19.Name = "Mesh"
p22 = Instance.new("WedgePart", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Name = "Wedge"
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(3, 1, 0.5)
p22.CFrame = CFrame.new(2.94884443, 4.13282013, -16.5005474, 1.35156796e-007, 4.17202415e-007, -1.00001454, 1.19470278e-005, -1.00000024, -6.07483681e-013, -1.00001466, -1.39792755e-005, 4.37120278e-008)
p22.CanCollide = false
p22.Locked = true
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Really black")
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(1.5, 0.5, 0.5)
p23.CFrame = CFrame.new(0.111123323, 6.79699326, -19.53405, 0.167916089, 0.220654398, 0.960804224, 0.593452632, -0.800862908, 0.0802069977, 0.787171543, 0.556722164, -0.265425682)
p23.CanCollide = false
p23.Locked = true
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("BlockMesh", p23)
b20.Name = "Mesh"
p24 = Instance.new("WedgePart", m)
p24.BrickColor = BrickColor.new("Really black")
p24.Name = "Wedge"
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(3, 1, 0.5)
p24.CFrame = CFrame.new(0.0487362742, 6.13243389, -16.5004158, -0.000165194273, -0.00030361861, 1.00001442, 0.00304524973, 0.999995589, 0.000303655863, -1.00001013, 0.00304720178, -0.000164449215)
p24.CanCollide = false
p24.Locked = true
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Bright blue")
p25.FormFactor = Enum.FormFactor.Symmetric
p25.Size = Vector3.new(1, 1, 1)
p25.CFrame = CFrame.new(1.49870086, 5.13261318, -18.0007782, 1.20991026e-005, -1.00001454, -4.94604174e-005, -1.00000024, -1.16155716e-005, -0.000471511274, 0.000469659513, 4.96469293e-005, -1.00001466)
p25.CanCollide = false
p25.Locked = true
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p25)
b21.MeshId = "http://www.roblox.com/asset/?id=3270017"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(1.39999998, 1.39999998, 0.600000024)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Really black")
p26.FormFactor = Enum.FormFactor.Symmetric
p26.Size = Vector3.new(1, 1, 1)
p26.CFrame = CFrame.new(1.49868095, 5.13287783, -17.5005093, 0.00030383491, 0.000164763711, -1.00001454, -0.999995768, -0.00302907336, -0.000303868263, -0.00303102471, 1.00001025, 0.000164022902)
p26.CanCollide = false
p26.Locked = true
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p26)
b22.MeshType = Enum.MeshType.Brick
b22.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Wedge_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(13.1579618, 15.8875484, 3.27191186, -0.205515206, 0.52527827, 0.825741529, -0.209888965, -0.847774804, 0.487057745, 0.955883741, -0.0732159689, 0.284480691)
w1.Part1 = p2
w1.C1 = CFrame.new(16.5005817, -6.13223743, 2.94872212, -4.37113883e-008, -1.38580826e-005, 1, 0, 1, 1.38580826e-005, -1, 6.05756005e-013, -4.37113883e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(16.5006275, -6.13223362, 2.94873357, -5.96046448e-008, -1.3615936e-005, 1.00000358, -4.47034836e-008, 0.99999994, 1.41002238e-005, -1.00000358, 4.47034836e-008, 0)
w2.Part1 = p3
w2.C1 = CFrame.new(19.4568748, -3.38260746, -1.84870064, -4.37113883e-008, -0.499906301, 0.866079509, 0, -0.866079509, -0.499906301, 1, -2.18515979e-008, 3.78575393e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "Wedge_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(19.456995, -3.38268948, -1.84870648, -5.06400113e-008, -0.499905825, 0.86608547, 1.07230136e-007, -0.866079628, -0.499910295, 1.00000715, -1.1125789e-007, -2.17476881e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(16.5005646, 4.13256884, -0.0487511083, -4.37113883e-008, -1.37408551e-005, 1, 0, -1, -1.37408551e-005, 1, -6.00631849e-013, 4.37113883e-008)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(16.5007706, 4.13255453, -0.0487275235, -1.62921424e-007, -1.2755394e-005, 1.00001431, 1.78814929e-007, -0.999999762, -1.46627426e-005, 1.00001431, -1.78813849e-007, -7.54998553e-008)
w4.Part1 = p5
w4.C1 = CFrame.new(13.6104183, 15.7089605, -1.84869325, -4.37113883e-008, 0.500093758, 0.865971267, 0, -0.865971267, 0.500093758, 1, 2.18597922e-008, 3.78528071e-008)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(13.6108379, 15.7090359, -1.84877098, -4.29027068e-007, 0.500089467, 0.865987122, 1.9046513e-007, -0.865973532, 0.50009501, 1.00001431, 2.18601315e-008, 3.78533827e-008)
w5.Part1 = p6
w5.C1 = CFrame.new(19.3720245, -3.33087778, 2.54137325, -0.249996737, -0.491388977, 0.834289134, 0.0669635162, -0.868360817, -0.491391122, 0.965928316, -0.0669792444, 0.24999252)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(19.3722382, -3.33087826, 2.54137945, -0.250001401, -0.491382152, 0.834303975, 0.0669622123, -0.868364573, -0.491393685, 0.965941966, -0.0669801831, 0.249996051)
w6.Part1 = p7
w6.C1 = CFrame.new(16.5012703, -5.1305232, 2.59873891, -4.37113883e-008, -0.000135861075, 1, 0, 1, 0.000135861075, -1, 5.9386762e-012, -4.37113883e-008)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(16.5014496, -5.13052464, 2.59877563, -3.27825546e-007, -0.000133868307, 1.00001442, -3.57627869e-007, 0.99999994, 0.000135900453, -1.00001431, 1.49011612e-008, -5.96046448e-008)
w7.Part1 = p8
w7.C1 = CFrame.new(-0.765930653, -21.3311157, 1.75706458, -1.37833995e-005, 0.965968609, 0.258659452, 0.00428466033, 0.258657128, -0.965959728, -0.999990821, 0.00109495374, -0.00414241292)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-0.765703201, -21.3314991, 1.75706851, -1.42129729e-005, 0.965967655, 0.258668512, 0.00428489037, 0.258660465, -0.965972245, -1.00000513, 0.00109496934, -0.00414247159)
w8.Part1 = p9
w8.C1 = CFrame.new(11.6857395, -12.2548676, 8.25926208, -0.277089596, 0.631037474, 0.724577785, -0.561487973, 0.505604029, -0.655054033, -0.779713154, -0.588350415, 0.214222342)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(11.6860123, -12.254859, 8.25934601, -0.277095288, 0.631033003, 0.724593103, -0.561500967, 0.505603611, -0.655058563, -0.779720128, -0.58835566, 0.214224264)
w9.Part1 = p10
w9.C1 = CFrame.new(-0.759226322, -21.3225994, -2.35311079, -0.0669693872, 0.965954244, 0.249894977, 0.254174918, 0.258710593, -0.931914091, -0.964836895, 0.00110732042, -0.262847036)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-0.759016514, -21.3229256, -2.3531487, -0.0669716895, 0.96595335, 0.249903828, 0.254178405, 0.258713901, -0.93192625, -0.964850724, 0.00110733509, -0.262850702)
w10.Part1 = p11
w10.C1 = CFrame.new(18.7059784, -3.17931223, -5.46201515, 0.250018269, -0.49138394, 0.834285676, -0.0669495314, -0.86836195, -0.491391063, 0.965923727, 0.0670017004, -0.250004292)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(18.7061806, -3.17931461, -5.46200418, 0.250022948, -0.491377324, 0.834300399, -0.0669473261, -0.868365645, -0.491393894, 0.965937555, 0.0670026764, -0.250007868)
w11.Part1 = p12
w11.C1 = CFrame.new(13.6104174, 15.708952, -1.1486963, -4.37113883e-008, 0.500093997, 0.865971148, 0, -0.865971148, 0.500093997, 1, 2.18598029e-008, 3.78528e-008)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(13.6107903, 15.7090092, -1.1487354, -4.76837158e-007, 0.500089884, 0.865987122, 2.83122063e-007, -0.865973473, 0.500095367, 1.00001442, 4.47034836e-008, 1.49011612e-008)
w12.Part1 = p13
w12.C1 = CFrame.new(19.4568653, -3.38261366, -1.14870369, -4.37113883e-008, -0.499906093, 0.866079628, 0, -0.866079628, -0.499906093, 1, -2.1851589e-008, 3.78575429e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(19.457077, -3.38260937, -1.14871991, -4.63888163e-008, -0.499899268, 0.866095126, 5.08347114e-007, -0.866083562, -0.499908328, 1.00001442, -2.18518963e-008, 3.78581007e-008)
w13.Part1 = p14
w13.C1 = CFrame.new(-0.765169621, -21.3281136, 1.05768669, -1.37638153e-005, 0.96595937, 0.258693874, 0.00425664661, 0.258691579, -0.965950608, -0.99999094, 0.00108787336, -0.00411530817)
w14 = Instance.new("Weld", p14)
w14.Name = "ArmPart_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-0.764959335, -21.3284416, 1.05770254, -1.42545232e-005, 0.965958476, 0.258703023, 0.00425684778, 0.258694947, -0.965963125, -1.00000536, 0.00108788908, -0.00411536777)
w14.Part1 = p15
w14.C1 = CFrame.new(16.0000172, 5.13429213, -1.49874043, -4.37113883e-008, 0.000108154614, 1, 0, -1, 0.000108154614, 1, 4.72758855e-012, 4.37113883e-008)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(16.0001163, 5.13430214, -1.49877143, -2.99420208e-007, 0.00011029192, 1.00001454, 4.39002179e-007, -1, 0.000108176115, 1.00001442, 0, 4.42378223e-008)
w15.Part1 = p16
w15.C1 = CFrame.new(16.5000153, 6.13429213, -1.49872518, -4.37113883e-008, 0.000108154614, 1, 0, -1, 0.000108154614, 1, 4.72758855e-012, 4.37113883e-008)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(16.5002594, 6.1342907, -1.49874651, -2.98894406e-007, 0.000110270419, 1.00001454, 4.39006953e-007, -1, 0.000108154614, 1.00001442, 4.71678729e-012, 4.37120207e-008)
w16.Part1 = p17
w16.C1 = CFrame.new(16.8263168, 6.46704865, 8.05857849, 0.396029502, -0.207962677, 0.894378066, -0.497426808, 0.770130157, 0.399332225, -0.771833658, -0.603034973, 0.201548025)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(16.8266068, 6.46726036, 8.05869198, 0.396035522, -0.207958207, 0.894391596, -0.497440547, 0.770127177, 0.399337679, -0.771840453, -0.603040278, 0.201549783)
w17.Part1 = p18
w17.C1 = CFrame.new(-0.991122723, -20.5004215, 5.08983374, 0.0669417754, 0.965955615, 0.249897182, -0.245835528, 0.258705586, -0.9341501, -0.966997266, 0.00110005983, 0.254784435)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-0.990923882, -20.5007305, 5.08983374, 0.066943109, 0.965954781, 0.249906152, -0.245838761, 0.258709013, -0.934162259, -0.967011333, 0.00110003352, 0.254788101)
w18.Part1 = p19
w18.C1 = CFrame.new(10.4456682, -15.7977238, -7.8332901, 0.559388936, -0.68521893, 0.466432214, 0.116898462, -0.491870552, -0.862785101, 0.820620954, 0.537157655, -0.195045918)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(10.4457512, -15.7979813, -7.83342838, 0.559401393, -0.685213447, 0.466440916, 0.116905749, -0.491872638, -0.862796843, 0.820629179, 0.537163019, -0.195047855)
w19.Part1 = p20
w19.C1 = CFrame.new(16.5012665, -4.13050127, 1.49876332, -4.37113883e-008, -0.000135854745, 1, 0, 1, 0.000135854745, -1, 5.93839951e-012, -4.37113883e-008)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(16.5013981, -4.13050938, 1.498757, -2.38418579e-007, -0.000133797526, 1.00001466, -4.47034836e-007, 1.00000024, 0.000135831535, -1.00001454, -2.98023224e-008, -5.96046448e-008)
w20.Part1 = p21
w20.C1 = CFrame.new(16.5012627, -5.13048887, 0.39874959, -4.37113883e-008, -0.000135854745, 1, 0, 1, 0.000135854745, -1, 5.93839951e-012, -4.37113883e-008)
w21 = Instance.new("Weld", p21)
w21.Name = "Wedge_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(16.5014935, -5.13049126, 0.398722976, -2.22529991e-007, -0.000133820766, 1.00001466, -4.17224015e-007, 1.00000024, 0.000135854774, -1.00001454, 5.9472427e-012, -4.37120207e-008)
w21.Part1 = p22
w21.C1 = CFrame.new(-16.5005875, 4.13259029, 2.94876933, -4.37113883e-008, 1.39792737e-005, -1, 0, -1, -1.39792737e-005, -1, -6.11053471e-013, 4.37113883e-008)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-16.500824, 4.13258791, 2.94888711, 1.35156796e-007, 1.19470278e-005, -1.00001466, 4.17202415e-007, -1.00000024, -1.39792755e-005, -1.00001454, -6.07483681e-013, 4.37120278e-008)
w22.Part1 = p23
w22.C1 = CFrame.new(11.3238592, 16.2938461, -5.83674097, 0.167913347, 0.593457043, 0.787155509, 0.220650926, -0.800859332, 0.556720257, 0.960790455, 0.0802058354, -0.265421808)
w23 = Instance.new("Weld", p23)
w23.Name = "Wedge_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(11.3242846, 16.2939701, -5.83676767, 0.167916089, 0.593452632, 0.787171543, 0.220654398, -0.800862908, 0.556722164, 0.960804224, 0.0802069977, -0.265425682)
w23.Part1 = p24
w23.C1 = CFrame.new(-16.5190907, -6.08210278, -0.053311754, -0.000165350299, 0.00304719806, -0.999995351, -0.000303142268, 0.999995351, 0.00304725766, 0.99999994, 0.000303644716, -0.000164425801)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-16.5192356, -6.08211088, -0.0533116534, -0.000165194273, 0.00304524973, -1.00001013, -0.00030361861, 0.999995589, 0.00304720178, 1.00001442, 0.000303655863, -0.000164449215)
w24.Part1 = p25
w24.C1 = CFrame.new(5.14108515, 1.49960721, -17.9982204, 1.16387992e-005, -0.999999881, 0.000471503939, -1, -1.1615477e-005, 4.94651576e-005, -4.94596788e-005, -0.000471504522, -0.999999881)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(5.14104986, 1.49967504, -17.9985313, 1.20991026e-005, -1.00000024, 0.000469659513, -1.00001454, -1.16155716e-005, 4.96469293e-005, -4.94604174e-005, -0.000471511274, -1.00001466)
w25.Part1 = p26
w25.C1 = CFrame.new(5.07938719, 17.5157299, 1.50311017, 0.00030336561, -0.99999541, -0.00302907825, 0.000164940167, -0.00302901864, 0.999995351, -0.99999994, -0.000303863839, 0.000164020501)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor2 = Instance.new("Part", char.Claw)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(2, 1, 1)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = larm
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(90))
corw2.C1 = CFrame.new(0, 0, 0)
weld2 = Instance.new("Weld", char.Claw)
weld2.Part0 = cor2
weld2.Part1 = char.Claw.ArmPart
weld2.C0 = CFrame.new(0, 0, 0)
----------------------------------------------------
for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("Part") then
                v.Transparency=1
        end
end
for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("WedgePart") then
                v.Transparency=1
        end
end
----------------------------------------------------
Blast = function()
	local Colors = {"Really red", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = rarm.CFrame
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshType = "Sphere"
		wm.Scale = Vector3.new(1,1,1)
		z = Instance.new("Sound",wave)
		z.SoundId = "rbxassetid://237035051"
		z.Volume = 1
		z.Pitch = .9
		z:Play()
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wave.Size = Vector3.new(1 + i*4, 1 + i*4, 1 + i*4)
		--wave.Size = wm.Scale
		wave.CFrame = rarm.CFrame
		wave.Transparency = (1/14)
		rs:wait()
		end
		rs:wait()
		wave:Destroy()
		z:Destroy()
	end)()
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
                                end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                        Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
                                end
            end
        end
    end
end)
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end

function Punch()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(0),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really red')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(2,6))
        end
    end
    coroutine.resume(coroutine.create(function()
        for i=0,0.62,0.4 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
    end))
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
				end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
				end
            end
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
-------------------------------
mouse.KeyDown:connect(function(key)
	if key == "q" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			function FindNearestTorso(Position,Distance,SinglePlayer)
				if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
					local List = {}
					for i,v in pairs(workspace:GetChildren())do
						if v:IsA("Model")then
							if v:findFirstChild("Torso")then
								if v ~= char then
									if(v.Torso.Position -Position).magnitude <= Distance then
										table.insert(List,v)
									end
								end
							end
						end
					end
				return List
			end
	z = Instance.new("Sound",hed)
	z.SoundId = "rbxassetid://232213955"
	z.Pitch = 1
	z.Volume = 1
	wait(0.2)
	z:Play()
	sp = Instance.new("Part",rarm)
	sp.Anchored = true
	sp.CanCollide = false
	sp.Locked = true
	sp.Transparency = 0
	sp.Material = "Neon"
	sp.Size = Vector3.new(1,1,1)
	sp.TopSurface = "SmoothNoOutlines"
	sp.BottomSurface = "SmoothNoOutlines"
	sp.BrickColor = BrickColor.new("Royal purple")
	spm = Instance.new("SpecialMesh",sp)
	spm.MeshType = "Sphere"
	spm.Scale = Vector3.new(21,21,21)
	sp2 = Instance.new("Part", rarm)
	sp2.Name = "Energy"
	sp2.BrickColor = BrickColor.new("Royal purple")
	sp2.Size = Vector3.new(1, 1, 1)
	sp2.Shape = "Ball"
	sp2.CanCollide = false
	sp2.Anchored = true
	sp2.Locked = true
	sp2.TopSurface = 0
	sp2.BottomSurface = 0
	sp2.Transparency = 1
	spm2 = Instance.new("SpecialMesh",sp2)
	spm2.MeshId = "rbxassetid://9982590"
	spm2.Scale = Vector3.new(2,2,2)
	for i = 1, 20 do
		spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 100, 20 do rs:wait()
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
	end
	for i = 1, 20 do
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(10),math.rad(-30),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	sp.Transparency = 1
	for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-50), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	wait(1)
	sp.Transparency = 0
	sp2.Transparency = 0.84
	for i = 1, 20 do
		--spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 2880, 50 do
		rs:wait()
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = rarm.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
		rs:wait()
	end
	sp:Destroy()
	sp2:Destroy()
	local X = Instance.new("Part",char)
	local O = Instance.new("ObjectValue",X)
	O.Name = "creator"
	X.Locked = true
	X.Name = "Shell"
	X.Anchored = false
	X.CanCollide = false
	X.Transparency = 0
	X.Reflectance = 0
	X.BottomSurface = 0
	X.TopSurface = 0
	X.Shape = 0
	local V = Instance.new("ObjectValue",X)
	V.Value = char
	V.Name = "creator"
	X.BrickColor = BrickColor.new("Royal purple")
	X.Size = Vector3.new(2,2,2)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh",X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(0.5,0.5,1)
	X.CFrame = rarm.CFrame*CFrame.new(-3,0,0)
	local bv = Instance.new("BodyVelocity",X)
	bv.maxForce = Vector3.new(99999,99999,99999)
	X.CFrame = CFrame.new(X.Position,mouse.Hit.p)
	bv.velocity = X.CFrame.lookVector*65

	Explode = X.Touched:connect(function(hit)
		if hit ~= char and hit.Name ~= "Shell" then
			local cf = X.CFrame
			bv:Destroy()
			X.Anchored = true
			Z:Remove()
			Explode:disconnect()
			X.Size = Vector3.new(3,3,3)
			X.Touched:connect(function(hit) end)
			X.CanCollide = false
			local part3 = Instance.new("Part", rarm)
			part3.Anchored=true
			part3.CanCollide=false
			part3.Locked = true
			part3.TopSurface = "SmoothNoOutlines"
			part3.BottomSurface = "SmoothNoOutlines"
			part3.FormFactor='Custom'
			part3.Size=Vector3.new(1,1, 1)
			part3.CFrame=X.CFrame
			part3.Transparency=0
			part3.BrickColor=BrickColor.new("Royal purple")
			local mesh3 = Instance.new("SpecialMesh",part3)
			mesh3.MeshType = "Sphere"
			mesh3.Scale = Vector3.new(1,1,1)
			--debris:AddItem(X,8)
			local part4 = Instance.new("Part", rarm)
			part4.Material = "Neon"
			part4.Anchored=true
			part4.CanCollide=false
			part4.Locked = true
			part4.TopSurface = "SmoothNoOutlines"
			part4.BottomSurface = "SmoothNoOutlines"
			part4.FormFactor='Custom'
			part4.Size=Vector3.new(1,1, 1)
			part4.CFrame=X.CFrame
			part4.Transparency=0
			part4.BrickColor=BrickColor.new("Hot pink")
			local mesh4 = Instance.new("SpecialMesh",part4)
			mesh4.MeshType = "Sphere"
			mesh4.Scale = Vector3.new(.5,.5,.5)
			local part7 = Instance.new("Part", rarm)
			part7.Material = "Neon"
			part7.Anchored=true
			part7.CanCollide=false
			part7.Locked = true
			part7.TopSurface = "SmoothNoOutlines"
			part7.BottomSurface = "SmoothNoOutlines"
			part7.FormFactor='Custom'
			part7.Size=Vector3.new(1,1, 1)
			part7.CFrame=X.CFrame
			part7.Transparency=0
			part7.BrickColor=BrickColor.new("Really black")
			local mesh7 = Instance.new("SpecialMesh",part7)
			mesh7.MeshType = "Sphere"
			mesh7.Scale = Vector3.new(0.1, 0.1, 0.1)
		--[[X.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)
		part3.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)]]--
		for i,v in pairs(FindNearestTorso(X.CFrame.p,140))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(60,90))
				v.Humanoid.PlatformStand = true
				v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
			end
		end

		local acos = math.acos
		local sqrt = math.sqrt
		local Vec3 = Vector3.new
		local fromAxisAngle = CFrame.fromAxisAngle

		local function toAxisAngle(CFr)
			local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
			local Angle = math.acos((R00+R11+R22-1)/2)
			local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			A = A == 0 and 0.00001 or A
			local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			B = B == 0 and 0.00001 or B
			local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			C = C == 0 and 0.00001 or C
			local x = (R21-R12)/sqrt(A)
			local y = (R02-R20)/sqrt(B)
			local z = (R10-R01)/sqrt(C)
			return Vec3(x,y,z),Angle
		end

		function ApplyTrig(Num,Func)
			local Min,Max = Func(0),Func(1)
			local i = Func(Num)
			return (i-Min)/(Max-Min)
		end

		function LerpCFrame(CFrame1,CFrame2,Num)
			local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
			return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
		end

		function Crater(Torso,Radius)
			Spawn(function()
				local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
				local Ignore = {}
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character ~= nil then
						Ignore[#Ignore+1] = v.Character
					end
				end
				local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
				if Hit == nil then return end
					local Parts = {}
					for i = 1,360,10 do
						local P = Instance.new("Part",Torso.Parent)
						P.Anchored = true
						P.FormFactor = "Custom"
						P.BrickColor = Hit.BrickColor
						P.Material = Hit.Material
						P.TopSurface = "Smooth"
						P.BottomSurface = "Smooth"
						P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
						P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
						Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
						if math.random(0,5) == 0 then -- rubble
							local P = Instance.new("Part",Torso.Parent)
							P.Anchored = true
							P.FormFactor = "Custom"
							P.BrickColor = Hit.BrickColor
							P.Material = Hit.Material
							P.TopSurface = "Smooth"
							P.BottomSurface = "Smooth"
							P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
							P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
							Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
							end
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
							end
							wait(0.02)
						end
						for i,v in pairs(Parts) do
							if v[1].Size.X > 2.1 then
								v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
							end
							v[1].Anchored = false
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].Transparency = i
								if i == 1 then
									v[1]:Destroy()
								elseif i >= 0.25 then
									v[1].CanCollide = false
								end
							end
						wait(0.02)
						end
					Parts = nil
					end)
				end

				ROW = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(X.CFrame.x,0,X.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,15)
					end
				end

				Part = function(x,y,z,color,tr,cc,an,parent)
					local p = Instance.new('Part',parent or Weapon)
					p.formFactor = 'Custom'
					p.Size = Vector3.new(x,y,z)
					p.BrickColor = BrickColor.new(color)
					p.CanCollide = cc
					p.Transparency = tr
					p.Anchored = an
					p.TopSurface,p.BottomSurface = 0,0
					p.Locked=true
					p:BreakJoints()
				return p end

			Mesh = function(par,num,x,y,z)
			local msh = _
			if num == 1 then msh = Instance.new("CylinderMesh",par)
			elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
			elseif num == 3 then msh = Instance.new("BlockMesh",par)
			elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
			elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
			end msh.Scale = Vector3.new(x,y,z)
			return msh end

			function explosion(col1,col2,cfr,sz,rng,dmg)
				local a= Part(1,1,1,col1,.5,false,true,workspace)
				local a2= Part(1,1,1,col2,.5,false,true,workspace)
				local a3= Part(1,1,1,col2,.5,false,true,workspace)
				v1,v2,v3=sz.x,sz.y,sz.z
				local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
				local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
				local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
				a.CFrame=cfr
				a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
				a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())

				Spawn(function()
					while wait() do
						if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
							m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
							m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
							m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
							a.Transparency=a.Transparency+0.05
							a2.Transparency=a2.Transparency+0.05
							a3.Transparency=a3.Transparency+0.05
						end
					end)
				end

				Crater(X,20)
				ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
				z = Instance.new("Sound",X)
				z.SoundId = "rbxassetid://231917744"
				z.Pitch = .5
				z.Volume = 10
				z1 = Instance.new("Sound",X)
				z1.SoundId = "rbxassetid://231917744"
				z1.Pitch = .5
				z1.Volume = 10
				z2 = Instance.new("Sound",X)
				z2.SoundId = "rbxassetid://231917744"
				z2.Pitch = .5
				z2.Volume = 10
				z3 = Instance.new("Sound",X)
				z3.SoundId = "rbxassetid://245537790"
				z3.Pitch = .7
				z3.Volume = 1
				z4 = Instance.new("Sound",X)
				z4.SoundId = "rbxassetid://245537790"
				z4.Pitch = .7
				z4.Volume = 1
				wait(0.1)
				z:Play()
				z1:Play()
				z2:Play()
				z3:Play()
				z4:Play()

				local part=Instance.new('Part',rarm)
				part.Anchored=true
				part.CanCollide=false
				part.Locked = true
				part.FormFactor='Custom'
				part.Size=Vector3.new(1,1,1)
				part.CFrame=X.CFrame*CFrame.new(0,0,0)
				part.Transparency=0
				part.BrickColor=BrickColor.new('Really black')
				local mesh=Instance.new('SpecialMesh',part)
				mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
				mesh.Scale=Vector3.new(2,2,2)
				local part2=part:clone()
				part2.Parent = rarm
				part2.BrickColor=BrickColor.new("Royal purple")
				local part5=part:clone()
				part5.Parent = rarm
				part5.BrickColor=BrickColor.new("Magenta")
				local part6=part:clone()
				part6.Parent = rarm
				part6.BrickColor=BrickColor.new("Black")
				local mesh2=mesh:clone()
				mesh2.Parent=part2
				mesh2.Scale=Vector3.new(3, 3, 3)
				local mesh5=mesh:clone()
				mesh5.Parent=part5
				mesh5.Scale=Vector3.new(3, 3, 3)
				local mesh6=mesh:clone()
				mesh6.Parent=part6
				mesh6.Scale=Vector3.new(3, 3, 3)
				local blast = Instance.new("Part", rarm)
				blast.BrickColor = BrickColor.new("Really black")
				blast.Anchored = true
				blast.CanCollide = false
				blast.Locked = true
				blast.Size = Vector3.new(1, 1, 1)
				blast.TopSurface = "Smooth"
				blast.BottomSurface = "Smooth"
				blast.Transparency = 0
				blast.CFrame = HandCF
				local bm = Instance.new("SpecialMesh", blast)
				bm.Scale = Vector3.new(5,1,5)
				bm.MeshId = "rbxassetid://3270017"
				local blast2 = Instance.new("Part", rarm)
				blast2.BrickColor = BrickColor.new("Really black")
				blast2.Anchored = true
				blast2.CanCollide = false
				blast2.Locked = true
				blast2.Size = Vector3.new(1, 1, 1)
				blast2.TopSurface = "Smooth"
				blast2.BottomSurface = "Smooth"
				blast2.Transparency = 0
				blast2.CFrame = HandCF
				local bm2 = Instance.new("SpecialMesh", blast2)
				bm2.Scale = Vector3.new(3,1,3)
				bm2.MeshId = "rbxassetid://3270017"
				local blast3 = Instance.new("Part", rarm)
				blast3.BrickColor = BrickColor.new("Really black")
				blast3.Anchored = true
				blast3.CanCollide = false
				blast3.Locked = true
				blast3.Size = Vector3.new(1, 1, 1)
				blast3.TopSurface = "Smooth"
				blast3.BottomSurface = "Smooth"
				blast3.Transparency = 0
				blast3.CFrame = HandCF
				local bm3 = Instance.new("SpecialMesh", blast3)
				bm3.Scale = Vector3.new(3,1,3)
				bm3.MeshId = "rbxassetid://3270017"
				for i = 1,120 do rs:wait()
					X.Transparency = X.Transparency + (1/120)
					part.Transparency = part.Transparency + (1/120)
					part2.Transparency = part2.Transparency + (1/120)
					part3.Transparency = part3.Transparency + (1/120)
					part4.Transparency = part4.Transparency + (1/120)
					part5.Transparency = part5.Transparency + (1/120)
					part6.Transparency = part6.Transparency + (1/120)
					part7.Transparency = part7.Transparency + (1/120)
					blast.Transparency = blast.Transparency + (1/120)
					blast2.Transparency = blast2.Transparency + (1/120)
					blast3.Transparency = blast3.Transparency + (1/120)
					X.Size = X.Size + Vector3.new(.8,.8,.8)
					--part3.Size = part3.Size + Vector3.new(3,3,3)
					mesh.Scale = mesh.Scale + Vector3.new(1,.2,1)
					mesh2.Scale = mesh2.Scale + Vector3.new(1.1,.2,1.1)
					mesh3.Scale = mesh3.Scale + Vector3.new(3,3,3)
					mesh4.Scale = mesh4.Scale + Vector3.new(1.7,1.7,1.7)
					mesh5.Scale = mesh5.Scale + Vector3.new(1.6,.2,1.6)
					mesh6.Scale = mesh6.Scale + Vector3.new(2,.2,2)
					mesh7.Scale = mesh7.Scale + Vector3.new(4,4,4)
					bm.Scale = bm.Scale + Vector3.new(6,6,.2)
					bm2.Scale = bm2.Scale + Vector3.new(4,4,.2)
					bm3.Scale = bm3.Scale + Vector3.new(4,4,.2)
					X.CFrame = cf
					part.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2),0)
					part2.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2),0)
					part3.CFrame=X.CFrame
					part4.CFrame=X.CFrame
					part7.CFrame=X.CFrame
					part5.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2.6),0)
					part6.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2.4),0)
					blast.CFrame=X.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
					blast2.CFrame=X.CFrame * CFrame.Angles(math.rad(-i*4), math.rad(i*4), math.rad(0))
					blast3.CFrame=X.CFrame * CFrame.Angles(math.rad(180+i*4), math.rad(90-i*4), math.rad(0))
					rs:wait()
					end
					X:Destroy()
					part:Destroy()
					part2:Destroy()
					part3:Destroy()
					part4:Destroy()
					part5:Destroy()
					part6:Destroy()
					blast:Destroy()
					blast2:Destroy()
					blast3:Destroy()
					z:Destroy()
					z1:Destroy()
					z2:Destroy()
					z3:Destroy()
					z4:Destroy()
				end
			end)
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
				if Debounces.on == false then break end
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
	if key == "e" then
		if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.on = true
		Debounces.NoIdl = true
pt = {1, 1.1, 1.2, 1.3, 1.4, 1.5}
z = Instance.new("Sound", rarm)
z.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z.Volume = .6
z.Pitch = pt[math.random(1,#pt)]
z.Looped = false
z:Play()
Debounces.RPunch = true
Debounces.LPunch = true
Debounces.ks = true
Debounces.ks2 = true
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z2 = Instance.new("Sound", larm)
z2.SoundId = "http://www.roblox.com/asset/?id=206083107"
z2.Volume = .6
z2.Pitch = pt[math.random(1,#pt)]
z2.Looped = false
z2:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z3 = Instance.new("Sound", rarm)
z3.SoundId = "http://www.roblox.com/asset/?id=206083107"
z3.Volume = 0.6
z3.Pitch = pt[math.random(1,#pt)]
z3.Looped = false
z3:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z4 = Instance.new("Sound", larm)
z4.SoundId = "http://www.roblox.com/asset/?id=206083107"
z4.Volume = .6
z4.Pitch = pt[math.random(1,#pt)]
z4.Looped = false
z4:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z5 = Instance.new("Sound", rarm)
z5.SoundId = "http://www.roblox.com/asset/?id=206083107"
z5.Volume = .6
z5.Pitch = pt[math.random(1,#pt)]
z5.Looped = false
z5:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z6 = Instance.new("Sound", larm)
z6.SoundId = "http://www.roblox.com/asset/?id=206083107"
z6.Volume = .6
z6.Pitch = pt[math.random(1,#pt)]
z6.Looped = false
z6:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z7 = Instance.new("Sound", rarm)
z7.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z7.Volume = .6
z7.Pitch = pt[math.random(1,#pt)]
z7.Looped = false
z7:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z8 = Instance.new("Sound", larm)
z8.SoundId = "http://www.roblox.com/asset/?id=206083107"
z8.Volume = .6
z8.Pitch = pt[math.random(1,#pt)]
z8.Looped = false
z8:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z9 = Instance.new("Sound", rarm)
z9.SoundId = "http://www.roblox.com/asset/?id=206083107"
z9.Volume = 0.6
z9.Pitch = pt[math.random(1,#pt)]
z9.Looped = false
z9:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z10 = Instance.new("Sound", larm)
z10.SoundId = "http://www.roblox.com/asset/?id=206083107"
z10.Volume = .6
z10.Pitch = pt[math.random(1,#pt)]
z10.Looped = false
z10:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z11 = Instance.new("Sound", rarm)
z11.SoundId = "http://www.roblox.com/asset/?id=206083107"
z11.Volume = .6
z11.Pitch = pt[math.random(1,#pt)]
z11.Looped = false
z11:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z12 = Instance.new("Sound", larm)
z12.SoundId = "http://www.roblox.com/asset/?id=206083107"
z12.Volume = .6
z12.Pitch = pt[math.random(1,#pt)]
z12.Looped = false
z12:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z13 = Instance.new("Sound", rarm)
z13.SoundId = "http://www.roblox.com/asset/?id=206083107"
z13.Volume = 0.6
z13.Pitch = pt[math.random(1,#pt)]
z13.Looped = false
z13:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z14 = Instance.new("Sound", larm)
z14.SoundId = "http://www.roblox.com/asset/?id=206083107"
z14.Volume = .6
z14.Pitch = pt[math.random(1,#pt)]
z14.Looped = false
z14:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z15 = Instance.new("Sound", rarm)
z15.SoundId = "http://www.roblox.com/asset/?id=206083107"
z15.Volume = .6
z15.Pitch = pt[math.random(1,#pt)]
z15.Looped = false
z15:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z16 = Instance.new("Sound", larm)
z16.SoundId = "http://www.roblox.com/asset/?id=206083107"
z16.Volume = .6
z16.Pitch = pt[math.random(1,#pt)]
z16.Looped = false
z16:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z17 = Instance.new("Sound", rarm)
z17.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z17.Volume = .6
z17.Pitch = pt[math.random(1,#pt)]
z17.Looped = false
z17:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z18 = Instance.new("Sound", larm)
z18.SoundId = "http://www.roblox.com/asset/?id=206083107"
z18.Volume = .6
z18.Pitch = pt[math.random(1,#pt)]
z18.Looped = false
z18:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z19 = Instance.new("Sound", rarm)
z19.SoundId = "http://www.roblox.com/asset/?id=206083107"
z19.Volume = 0.6
z19.Pitch = pt[math.random(1,#pt)]
z19.Looped = false
z19:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z20 = Instance.new("Sound", larm)
z20.SoundId = "http://www.roblox.com/asset/?id=206083107"
z20.Volume = .6
z20.Pitch = pt[math.random(1,#pt)]
z20.Looped = false
z20:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z:Destroy()
z2:Destroy()
z3:Destroy()
z4:Destroy()
z5:Destroy()
z6:Destroy()
z7:Destroy()
z8:Destroy()
z9:Destroy()
z10:Destroy()
z11:Destroy()
z12:Destroy()
z13:Destroy()
z14:Destroy()
z15:Destroy()
z16:Destroy()
z17:Destroy()
z18:Destroy()
z19:Destroy()
z20:Destroy()
Debounces.LPunch = false
Debounces.RPunch = false
Debounces.ks = false
Debounces.ks2 = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
Debounces.on = false
Debounces.NoIdl = false
end
end
end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
	if key == "t" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			Debounces.ks = true
    kik = rleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    Debounces.ks=false
                                    end
                                    hit:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            end
        end)
			for i = 1,20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), math.rad(90)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-90)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			kik:disconnect()
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
	if key == "y" then
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("Part") then
                v.Transparency=0
        end
end
for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("WedgePart") then
                v.Transparency=0
        end
end
				for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(2.7)
                end
				x = Instance.new("Sound",char)
				x.SoundId = "rbxassetid://228343271"
				x.Pitch = 1
				x.Volume = .8
				wait(.1)
				x:Play()
				Debounces.on = false
				Debounces.Here = false
				shot = shot + 1
local rng = Instance.new("Part", larm)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Royal purple")
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
rng2 = rng:clone()
rng3 = rng2:clone()
rng4 = rng2:clone()
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(10, 10, 1)
rngm2 = rngm:clone()
rngm2.Scale = Vector3.new(5, 5, 3)
rngm3=rngm2:clone()
rngm3.Parent = rng3
rngm3.Scale = Vector3.new(8, 8, 1)
rngm4 = rngm2:clone()
rngm4.Parent = rng4
rngm4.Scale = Vector3.new(6, 6, 1)
local bem = Instance.new("Part", larm)
bem.Anchored = true
bem.BrickColor = BrickColor.new("Really black")
bem.CanCollide = false
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(1, 1, 1)
bem.Transparency = 0.35
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 4, 4)
local out = Instance.new("Part", larm)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(4, 4, 4)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(6, 4, 6)
local bnd = Instance.new("Part", larm)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really red")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "Bend"
bnd.Size = Vector3.new(1, 1, 1)
bnd.Transparency = 1
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(8, 8, 8)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
rng3.CFrame = rng.CFrame * CFrame.new(0, -.5, 0)
rng4.CFrame = rng.CFrame * CFrame.new(0, -1, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
rngm3.Scale = Vector3.new(8 + i*3, 8 + i*3, 1)
rngm4.Scale = Vector3.new(6 + i*4, 6 + i*4, 1)
rng.Transparency = i/20
rng3.Transparency = 1/24
rng4.Transparency = i/26
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
larm:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(24,73))
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
wait(1)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Parent.Name)
deb = false
for i, v in pairs(Touche) do
print(v)
end
end
end
end)
end
for i = 0, 260, 8 do
bem.Size = Vector3.new(i, 3, 3)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = larm.CFrame * CFrame.new(0, -4.2 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(1,1,1)
bndm.Scale = Vector3.new(8,8,8)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = larm
newRng.CFrame = larm.CFrame * CFrame.new(0, -4.2-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(8 + i*2, 8 + i*2, 3)
newRng.Transparency = i/10
wait()
end
wait()
newRng:Destroy()
end)()
end
wait()
end
wait()
Debounces.Shewt = false
bem:Destroy()
out:Destroy()
bnd:Destroy()
Debounces.Ready = false
for i, v in pairs(Touche) do
table.remove(Touche, i)
end
wait()
for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("Part") then
                v.Transparency=1
        end
end
for i,v in pairs (char.Claw:GetChildren()) do
        if v:IsA("WedgePart") then
                v.Transparency=1
        end
end
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
--[[mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = BrickColor.new("Royal purple")
				shell.Anchored = false
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1.2,1.2,1.2)
				shell.FormFactor = 3
				local shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1.2,1.2,1.2)
				Omega = function()
					local X = Instance.new("Part",char)
					local O = Instance.new("ObjectValue",X)
					O.Name = "creator"
					X.Locked = true
					X.Name = "Shell"
					X.Anchored = false
					X.CanCollide = false
					X.Transparency = 0.5
					X.Reflectance = 0
					X.BottomSurface = 0
					X.TopSurface = 0
					X.Shape = 0
					local V = Instance.new("ObjectValue",X)
					V.Value = char
					V.Name = "creator"
					X.BrickColor = BrickColor.new("Royal purple")
					X.Size = Vector3.new(40,40,40)
					--X.Material = "Neon"
					local Z = Instance.new("SpecialMesh",X)
					Z.MeshType = "Sphere"
					Z.Scale = Vector3.new(0.2,0.2,0.2)
					X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
					local bv = Instance.new("BodyVelocity",X)
					bv.maxForce = Vector3.new(99999,99999,99999)
					X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
					bv.velocity = root.CFrame.lookVector*10
					Explode = X.Touched:connect(function(hit)
						if hit ~= char and hit.Name ~= "Shell" and hit ~= X and hit:IsA("Part") or hit:IsA("BasePart}") then
							local cf = X.CFrame
							bv:Destroy()
							X.Anchored = true
							Z:Remove()
							Explode:disconnect()
							X.Size = Vector3.new(3,3,3)
							X.Touched:connect(function(hit) end)
							X.CanCollide = false
							for i,v in pairs(FindNearestTorso(X.CFrame.p,200))do
								if v:FindFirstChild('Humanoid') then
									v.Humanoid:TakeDamage(math.random(80,120))
								end
							end
								for i = 1, (40) do rs:wait()
									X.Transparency = X.Transparency + (1/40)
									X.Size = X.Size + Vector3.new(1,1,1)
									X.CFrame = root.CFrame * CFrame.new(0,0,-10)
								end
							X:Destroy()
							end
						end)
					end
			for i = 1,200 do
				shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.03)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,30 do
				shell.CFrame = torso.CFrame * CFrame.new(0,8,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-170)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,20,0)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(100)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-100)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-30)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(20)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(120)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(-120)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
            end
        end
    end
end)]]--
----------------------------------------------------
Charging = false
mouse.KeyDown:connect(function(key)
	if key == "r" then
		if Charging == false then
			Charging = true
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
				Debounces.on = true
				for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					if Debounces.on == false then break end
					rs:wait()
				end
				--[[for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)
					if Debounces.on == false then break end
					rs:wait()
				end]]--
pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6
pt.BrickColor=BrickColor.new('Really black')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=BrickColor.new("Royal purple")
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}

bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("Really black")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)
blm.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
			if Charging == true then
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(0.1, 0.1, 0.1)
				bl.Transparency = bl.Transparency + 0.005
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(0.05,0,0.05)
				msh2.Scale = msh2.Scale + Vector3.new(0.05,0,0.05)
				elseif Charging == false then break
			end
		end
    end))

repeat
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	Spawn(function()
		while rs:wait() do
			if Charging == true then
				rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
				larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
				hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
				torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
				lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
				rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))
			elseif Charging == false then break
			end
		end
	end)
	Spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyUp:connect(function(key)
	if key == "r" then
		if Charging == true then
			Charging = false
				pt:Destroy()
				pt2:Destroy()
				bl:Destroy()
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
	if key == "g" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = BrickColor.new("Royal purple")
				shell.Anchored = true
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1,1,1)
				shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1,1,1)
				local shell2 = Instance.new("Part",torso)
				shell2.BrickColor = BrickColor.new("Royal purple")
				shell2.Anchored = true
				shell2.CanCollide = false
				shell2.Locked = true
				shell2.TopSurface = "SmoothNoOutlines"
				shell2.BottomSurface = "SmoothNoOutlines"
				shell2.Size = Vector3.new(1,1,1)
				shellm2 = Instance.new("SpecialMesh",shell2)
				shellm2.MeshType = "Sphere"
				shellm2.Scale = Vector3.new(1,1,1)

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end

Shell = function()
local X = Instance.new("Part",char)
local O = Instance.new("ObjectValue",X)
        O.Name = "creator"
        X.Locked = true
		X.Name = "Shell"
        X.Anchored = false
        X.CanCollide = false
        X.Transparency = 0
        X.Reflectance = 0
        X.BottomSurface = 0
        X.TopSurface = 0
        X.Shape = 0
        local V = Instance.new("ObjectValue",X)
        V.Value = char
        V.Name = "creator"
        X.BrickColor = BrickColor.new("Royal purple")
        X.Size = Vector3.new(1,1,1)
        --X.Material = "Neon"
        local Z = Instance.new("SpecialMesh",X)
        Z.MeshType = "Sphere"
        Z.Scale = Vector3.new(1,1,1)
        X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
        local bv = Instance.new("BodyVelocity",X)
        bv.maxForce = Vector3.new(99999,99999,99999)
        X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
        bv.velocity = root.CFrame.lookVector*65
Explode = X.Touched:connect(function(hit)
        if hit ~= char and hit.Name ~= "Shell" and hit:IsA("Part") or hit:IsA("BasePart}") then
        local cf = X.CFrame
        bv:Destroy()
        X.Anchored = true
        Z:Remove()
        Explode:disconnect()
        X.Size = Vector3.new(3,3,3)
        X.Touched:connect(function(hit) end)
        X.CanCollide = false
		for i,v in pairs(FindNearestTorso(X.CFrame.p,40))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(6,12))
			end
		end
			for i = 1, (40) do rs:wait()
				X.Transparency = X.Transparency + (1/40)
				X.Size = X.Size + Vector3.new(1,1,1)
				X.CFrame = cf
			end
		X:Destroy()
		end
	end)
end
				Shell()
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				shell.Transparency = 1
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
Search = false
mouse.KeyDown:connect(function(key)
	if key == "n" then
		if Search == false then
			Search = true
			for i,v in pairs(game.Players:getPlayers()) do
				if v.Name~=char.Name then
					for j,k in pairs(v.Character:GetChildren()) do
						if k:IsA("BasePart") and k.Transparency >= 1 then
							bawx=Instance.new("SelectionBox",cam)
							bawx.Color = BrickColor.new("Bright red")
							bawx.Transparency = .5
							bawx.Adornee = k
						end
                    end
                end
            end
		elseif Search == true then
			Search = false
			for i, v in pairs(cam:GetChildren()) do
				if v:IsA("SelectionBox") then
					v:Destroy()
				end
			end
	    end
    end
end)
----------------------------------------------------
Grab = false
mouse.KeyDown:connect(function(key)
    if key == "z" then
        Debounces.on = true
        Debounces.NoIdl = true
		Debounces.ks = true
        if Grab == false then
        gp = nil
		for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
			    if Debounces.ks==true then
                z = Instance.new("Sound",hed)
                z.SoundId = "rbxassetid://169380525"
                z.Volume = 1
                z:Play()
                Debounces.ks=false
				end
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(root,ht:FindFirstChild("Torso"),CFrame.new(0,0,-2.4),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(0),math.rad(180),0)
            --[[elseif hum1 == nil then
                con1:disconnect()
                wait() return]]--
            end
        end)
		for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
	if hum1 == nil then
    Debounces.on = false
    Debounces.NoIdl = false
	end
	con1:disconnect()
    elseif Grab == true then
        Grab = false
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		con1:disconnect()
		Debounces.on = false
		Debounces.NoIdl = false
		if gp ~= nil then
			gp:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 140
				for i,v in pairs(larm:GetChildren()) do
					if v.Name == "asd" and v:IsA("Weld") then
				v:Remove()
			end
		end
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        hum1=nil
		ht=nil
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 60
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 8
    end
end)
-------------------------------
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
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
--rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8+2*math.cos(sine/14))), 0.4)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.45,0)*CFrame.Angles(math.rad(88+2*math.cos(sine/14)),math.rad(180),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.45+0.05*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(-30),math.rad(-40-2*math.cos(sine/14))), 0.2)
--larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(40),0), 0.2)
--torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-40), 0), 0.2)
--hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)

hum.MaxHealth = 9001
wait(3)
hum.Health = 9001

name = game.Players.LocalPlayer.Character
line = function(pos1, pos2)
  local b = Instance.new("Part")
  b.Parent = name.Torso
  b.Name = "Blast"
  b.Anchored = true
  b.BrickColor = BrickColor.new("Really red")
  b.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) * CFrame.Angles(math.rad(90), 0, 0)
  b.CanCollide = false
  local y = Instance.new("BlockMesh")
  y.Parent = b
  y.Scale = Vector3.new(0.02, (pos2 - pos1).magnitude, 0.02)
  game:GetService("Debris"):AddItem(b, 1)
end

random = function()
  return Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
end

while wait(1) do
  for i = 1, 4 do
    p1 = name.Torso.Position + random() * 2
    p2 = p1 + random()
    line(p1, p2)
    p1 = p2
    p2 = p1 + random()
    line(p1, p2)
  end
end