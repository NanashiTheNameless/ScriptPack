-- Project Name: "Zerioth Recreated"
----------------------------Declarations
local p = game.Players.LocalPlayer
local player = p
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game.Lighting
local stanceToggle = "Assertive"
local CanAttack = true
local Daytime = true
local animpose = "Idle"
local lastanimpose = "Idle"
----------------------------Eye / Trail
eye = Instance.new("Part",player.Character)
eye.BrickColor = BrickColor.new("Really red") --("Cyan")
eye.Material = "Neon"
eye.FormFactor = 3
eye.Shape = "Ball"
eye.Size = Vector3.new(0.37,0.37,0.1)
weld = Instance.new("Weld",eye)
weld.Part0 = eye
weld.Part1 = player.Character.Head
weld.C0 = CFrame.new(0.15,-0.2,0.45)
eye.Transparency = 1
-------- 2
eye2 = Instance.new("Part",player.Character)
eye2.BrickColor = BrickColor.new("Really red")
eye2.Material = "Neon"
eye2.FormFactor = 3
eye2.Shape = "Ball"
eye2.Size = Vector3.new(0.37,0.37,0.1)
weld = Instance.new("Weld",eye2)
weld.Part0 = eye2
weld.Part1 = player.Character.Head
weld.C0 = CFrame.new(-0.15,-0.2,0.45)
eye2.Transparency = 1
----------------------------Particles
--[[local particleemitter = Instance.new("ParticleEmitter", torso)
particleemitter.VelocitySpread = 180
particleemitter.LockedToPart = true
particleemitter.Lifetime = NumberRange.new(0.1)
particleemitter.Speed = NumberRange.new(2)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, --5.563)})
particleemitter.RotSpeed = NumberRange.new(-45, 45)
particleemitter.Rate = 100
particleemitter.Rotation = NumberRange.new(-45, 45)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.701, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0
particleemitter.Color = Color3.new(0, 255, 0) --ColorSequence.new(Color3.new(255, 0, 0), Color3.new(0, 0, 255)) ]]
----------------------------Tables
Debounces = {
on = false;
Ready = false;
Here = false;
NoIdl = false;
Shewt = false;
Slashing = false;
Slashed = false;
--EyeTrail = true;
}
local Touche = {char.Name, }
----------------------------Global Functions
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
-----------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
-----------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------Welding
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
----------------------------------------------------------------- Left Arm -----------------------------------------------------------------
larm1 = Instance.new("Part", char)
larm1.Name = "Middle"
larm1.BrickColor = BrickColor.new("Really red")
larm1.Size = Vector3.new(1, 2, 1)
larm1.CanCollide = false
larm1.BottomSurface = "Smooth"
larm1.TopSurface = "Smooth"
larm1.Material = "Neon"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm1
Weld.C1 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)

larm2 = Instance.new("Part", char)
larm2.BrickColor = BrickColor.new("Really black")
larm2.Size = Vector3.new(1, 0.4, 1)
larm2.CanCollide = false
larm2.BottomSurface = "Smooth"
larm2.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm2
Weld.C1 = CFrame.new(-0.452633858, -0.349740982, -1.50225353, -0.00506608887, 0.999986708, -0.00096991309, -0.0106740929, 0.000915773562, 0.999942601, 0.999930143, 0.0050761546, 0.0106693096)

larm3 = Instance.new("Part", char)
larm3.BrickColor = BrickColor.new("Really black")
larm3.Size = Vector3.new(1, 0.4, 1)
larm3.CanCollide = false
larm3.BottomSurface = "Smooth"
larm3.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm3
Weld.C1 = CFrame.new(-0.452513218, -1.90224648, -0.0102577209, -0.00506604509, 0.999986708, -0.000969912624, 0.999930143, 0.00507611083, 0.0106693096, 0.0106740929, -0.000915773562, -0.999942601)	

larm4 = Instance.new("Part", char)
larm4.BrickColor = BrickColor.new("Really black")
larm4.Size = Vector3.new(1, 0.4, 1)
larm4.CanCollide = false
larm4.BottomSurface = "Smooth"
larm4.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm4
Weld.C1 = CFrame.new(-0.452511787, -0.41024971, 1.50225258, -0.00506623974, 0.999986708, -0.000969914719, 0.0106740929, -0.000915773562, -0.999942601, -0.999930143, -0.00507630548, -0.0106693096)	

larm5 = Instance.new("Part", char)
larm5.BrickColor = BrickColor.new("Really black")
larm5.Size = Vector3.new(1, 0.4, 1)
larm5.CanCollide = false
larm5.BottomSurface = "Smooth"
larm5.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm5
Weld.C1 = CFrame.new(-1.50225163, -0.762512684, 0.0102577209, 0.999930143, 0.0050761546, 0.0106693534, -0.00506608794, 0.999986708, -0.000970000518, -0.0106741367, 0.000915860757, 0.999942601)

larm6 = Instance.new("Part", char)
larm6.BrickColor = BrickColor.new("Really black")
larm6.Size = Vector3.new(1, 0.4, 1)
larm6.CanCollide = false
larm6.BottomSurface = "Smooth"
larm6.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh", larm6)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm6
Weld.C1 = CFrame.new(0.0102558136, 0.847481251, 1.50225353, -0.0106740929, 0.00091586099, 0.999942601, -0.00506608794, 0.999986708, -0.000970000518, -0.999930143, -0.0050761546, -0.0106693096)

larm7 = Instance.new("Part", char)
larm7.BrickColor = BrickColor.new("White")
larm7.Size = Vector3.new(0.5, 0.3, 2)
larm7.CanCollide = false
larm7.BottomSurface = "Smooth"
larm7.TopSurface = "Smooth"
larm7.Material = "Granite"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm7
Weld.C1 = CFrame.new(-0.339956284, 1.83238316, 1.50933075, 0.11770986, 0.484406531, 0.866887927, -0.967169523, 0.253912479, -0.0105566857, -0.225227386, -0.837184966, 0.498391271)

larm8 = Instance.new("Part", char)
larm8.BrickColor = BrickColor.new("Really black")
larm8.Size = Vector3.new(1, 0.4, 1)
larm8.CanCollide = false
larm8.BottomSurface = "Smooth"
larm8.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm8
Weld.C1 = CFrame.new(0.247514963, -0.0102424622, 1.58225441, -0.00506623974, 0.999986708, -0.000969914719, 0.0106740929, -0.000915773562, -0.999942601, -0.999930143, -0.00507630548, -0.0106693096)	
----------------------------------------------------------------- Right Arm -----------------------------------------------------------------
rarm1 = Instance.new("Part", char)
rarm1.Name = "Middle"
rarm1.BrickColor = BrickColor.new("Really red")
rarm1.Size = Vector3.new(1, 2, 1)
rarm1.CanCollide = false
rarm1.BottomSurface = "Smooth"
rarm1.TopSurface = "Smooth"
rarm1.Material = "Neon"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm1
Weld.C1 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	

rarm2 = Instance.new("Part", char)
rarm2.BrickColor = BrickColor.new("Really black")
rarm2.Size = Vector3.new(1, 0.4, 1)
rarm2.CanCollide = false
rarm2.BottomSurface = "Smooth"
rarm2.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm2
Weld.C1 = CFrame.new(-0.458259583, -0.356315613, 1.50168037, 0.00366159994, 0.999978125, -0.00550877256, 0.00621323148, 0.00548594771, 0.999965668, 0.999974012, -0.00369570963, -0.00619300362)

rarm3 = Instance.new("Part", char)
rarm3.BrickColor = BrickColor.new("Really black")
rarm3.Size = Vector3.new(1, 0.4, 1)
rarm3.CanCollide = false
rarm3.BottomSurface = "Smooth"
rarm3.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm3
Weld.C1 = CFrame.new(-1.50168133, -0.768137932, -0.00367927551, -0.999974012, 0.00369570986, 0.00619304739, 0.00366159948, 0.999978125, -0.00550886011, -0.00621327572, -0.00548603525, -0.999965668)

rarm4 = Instance.new("Part", char)
rarm4.BrickColor = BrickColor.new("Really black")
rarm4.Size = Vector3.new(1, 0.4, 1)
rarm4.CanCollide = false
rarm4.BottomSurface = "Smooth"
rarm4.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm4
Weld.C1 = CFrame.new(-0.00368309021, 1.8716774, 0.458146095, -0.00621323194, -0.00548603525, -0.999965668, 0.999974012, -0.0036957534, -0.00619300315, -0.00366164325, -0.999978125, 0.00550886057)

rarm5 = Instance.new("Part", char)
rarm5.BrickColor = BrickColor.new("Really black")
rarm5.Size = Vector3.new(1, 0.4, 1)
rarm5.CanCollide = false
rarm5.BottomSurface = "Smooth"
rarm5.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh", rarm5)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm5
Weld.C1 = CFrame.new(0.00368118286, 0.841855764, -1.50168228, 0.00621323194, 0.00548603525, 0.999965668, 0.00366159948, 0.999978125, -0.00550886011, -0.999974012, 0.00369570963, 0.00619300362)

rarm6 = Instance.new("Part", char)
rarm6.BrickColor = BrickColor.new("Really black")
rarm6.Size = Vector3.new(1, 0.4, 1)
rarm6.CanCollide = false
rarm6.BottomSurface = "Smooth"
rarm6.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm6
Weld.C1 = CFrame.new(-1.50168133, -0.403675079, 0.458138466, -0.999974012, 0.00369575364, 0.00619304692, -0.00621327572, -0.00548603525, -0.999965668, -0.00366164325, -0.999978125, 0.00550886057)

rarm7 = Instance.new("Part", char)
rarm7.BrickColor = BrickColor.new("White")
rarm7.Size = Vector3.new(0.5, 0.3, 2)
rarm7.CanCollide = false
rarm7.BottomSurface = "Smooth"
rarm7.TopSurface = "Smooth"
rarm7.Material = "Granite"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm7
Weld.C1 = CFrame.new(0.344418526, -1.80139351, -1.50391006, 0.122256897, -0.48818168, -0.864136577, -0.966848493, -0.25524351, 0.00740774209, -0.224181563, 0.834583461, -0.503202915)

rarm8 = Instance.new("Part", char)
rarm8.BrickColor = BrickColor.new("Really black")
rarm8.Size = Vector3.new(1, 0.4, 1)
rarm8.CanCollide = false
rarm8.BottomSurface = "Smooth"
rarm8.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm8
Weld.C1 = CFrame.new(0.241888285, -0.00366973877, -1.56167889, 0.00366144883, 0.999978125, -0.00550877163, -0.00621323148, -0.00548594771, -0.999965668, -0.999974012, 0.00369555852, 0.00619300455)
----------------------------Creation
function stick(x,y)
    weld = Instance.new("Weld")
    weld.Part0 = x
    weld.Part1 = y
    local HitPos = x.Position
    local CJ = CFrame.new(HitPos)
    local C0 = x.CFrame:inverse() *CJ
    local C1 = y.CFrame:inverse() * CJ
    weld.C0 = C0
    weld.C1 = C1
    weld.Parent = x
    y.Anchored=false
    return weld
end
blocks = {}
last_block = nil
function ezBlock(type, name, cframe, size, rotation, material, parent, BrickColor, transparency, 

weldToThis, formFactor)
    block = Instance.new(type, parent)
    block.Name = name
    block.FormFactor=formFactor
    block.Size = size
    block.CanCollide = false
    block.Anchored = false
    block.BrickColor = BrickColor
    block.Transparency=transparency
    block.TopSurface = 'SmoothNoOutlines'
    block.BottomSurface = 'SmoothNoOutlines'
    block.FrontSurface = 'SmoothNoOutlines'
    block.BackSurface = 'SmoothNoOutlines'
    block.LeftSurface = 'SmoothNoOutlines'
    block.RightSurface = 'SmoothNoOutlines'
    block.Material = material
    block.formFactor = 'Custom'
    block.CFrame = cframe
 
    if weldToThis then
        stick(weldToThis, block)
    elseif last_block ~= nil then
        stick(block, last_block)
        last_block = block
    else
        last_block = block
    end
    table.insert(blocks, block)
   
    return #blocks
end
 
local model = Instance.new("Model", game.Players.LocalPlayer.Character)
model.Name = 'KZ'
 
plr=game.Players.LocalPlayer
chr=plr.Character
 
x_offset=chr["Right Arm"].Position.x-3
y_offset=chr["Right Arm"].Position.y-6
z_offset=chr["Right Arm"].Position.z-2
handle=0
 
function makeModel()
    x=ezBlock('Part', 'Part', CFrame.new(2.9000239372253+x_offset,9.9575099945068+y_offset,2.4182820320129+z_offset) * CFrame.Angles(math.rad(-62.47554397583),math.rad(89.951538085938),math.rad(62.96166229248)), Vector3.new(1,4,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,1,0.12000000476837)
    test=ezBlock('Part', 'Part', CFrame.new(2.9001767635345+x_offset,12.307532310486+y_offset,2.3282859325409+z_offset) * CFrame.Angles(math.rad(75.000564575195),math.rad(-0.0027364948764443),math.rad(-0.0040953187271953)), Vector3.new(1,1,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('SpecialMesh',blocks[test])
        m.MeshType=Enum.MeshType.Wedge
        m.Scale=Vector3.new(0.11999999731779,0.29999992251396,0.79999995231628)
    x=ezBlock('Part', 'Part', CFrame.new(2.9000627994537+x_offset,11.292961120605+y_offset,2.8021762371063+z_offset) * CFrame.Angles(math.rad(-120.99560546875),math.rad(0.0018079035216942),math.rad(-179.99545288086)), Vector3.new(1,1,2), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('SpecialMesh',blocks[x])
        m.MeshType=Enum.MeshType.Wedge
        m.Scale=Vector3.new(0.11999999731779,0.29999992251396,0.69999992847443)
    x=ezBlock('Part', 'Part', CFrame.new(2.8998336791992+x_offset,6.8374934196472+y_offset,2.4182815551758+z_offset) * CFrame.Angles(math.rad(-62.47554397583),math.rad(89.951538085938),math.rad(62.96166229248)), Vector3.new(1,1,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,0.79999995231628,0.12000000476837)
    x=ezBlock('Part', 'Part', CFrame.new(2.8999021053314+x_offset,7.9074859619141+y_offset,2.5182840824127+z_offset) * CFrame.Angles(math.rad(132.43475341797),math.rad(89.868774414062),math.rad(-179.9655456543)), Vector3.new(1,1,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,0.59999990463257,0.12000000476837)
    x=ezBlock('Part', 'Part', CFrame.new(2.8998639583588+x_offset,7.4174952507019+y_offset,2.658282995224+z_offset) * CFrame.Angles(math.rad(101.38736724854),math.rad(89.951538085938),math.rad(-56.383499145508)), Vector3.new(1,1,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,0.79999995231628,0.12000000476837)
    x=ezBlock('Part', 'Part', CFrame.new(2.8998181819916+x_offset,6.4374675750732+y_offset,2.418304681778+z_offset) * CFrame.Angles(math.rad(179.99493408203),math.rad(-0.0017437987262383),math.rad(0.0042136842384934)), Vector3.new(1,0.40000000596046,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Plate)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,0.3999999165535,0.79999995231628)
    handle=ezBlock('Part', 'Handle', CFrame.new(2.8998110294342+x_offset,5.7374625205994+y_offset,2.4182667732239+z_offset) * CFrame.Angles(math.rad(-26.479055404663),math.rad(-89.965728759766),math.rad(153.52093505859)), Vector3.new(1,2,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[handle])
        m.Scale=Vector3.new(0.09999992698431,0.69999992847443,0.09999992698431) --lolfunnyjoke lolhilarlar
    wait()
    for i, v in pairs(blocks) do
            v.Parent = model
    end
end
makeModel()
----
local cor = Instance.new("Part", model)
cor.Name = "HitBox"
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 6, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = larm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0)
hndlw = Instance.new("Weld", model.Handle)
hndlw.Part0 = cor
hndlw.Part1 = model.Handle
hndlw.C0 = CFrame.new(0, 2.75, 0)
----------------------------Extra Settings
--[[f = Instance.new("Fire")
f.Parent = larm
f.Size = 5
f.Heat = 5
f.Color = Color3.new(0,0,0)
f.SecondaryColor = Color3.new(44/255,31/255,90/255)
f1 = Instance.new("Fire")
f1.Parent = rarm
f1.Size = 5
f1.Heat = 5
f1.Color = Color3.new(0,0,0)
f1.SecondaryColor = Color3.new(44/255,31/255,90/255)]]
z = Instance.new("Sound")
z.SoundId = "http://www.roblox.com/asset/?id=343247964" --343247964, 367193208, 160453802, 391530507
z.Parent = char
z.Looped = true
z.Pitch = 1
z.Volume = 5
z.PlayOnRemove = false
wait(.01)
z:Play()
char.Humanoid.WalkSpeed = 10
eye.Transparency=0
eye2.Transparency=0
-----------------------------Cero
mouse.KeyDown:connect(function(key)
if key == "f" then
if CanAttack == true then
CanAttack = false
Debounces.NoIdl = true
char.Humanoid.WalkSpeed = .01
Debounces.on = true
for i = 1, 20 do
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-18), 0, math.rad(-20)), 0.3)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(65), 0, math.rad(-40)), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(8), 0, math.rad(10)), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(-70), 0), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(84), 0), 0.4)
if Debounces.on == false then
break
end
wait()
end
                                x = Instance.new("Sound",char)
				x.SoundId = "rbxassetid://382366855"
				x.Pitch = 1
				x.Volume = 30
				wait(.1)
				x:Play()
rarm1.BrickColor = BrickColor.new("Royal purple")
larm1.BrickColor = BrickColor.new("Royal purple")
wait(1)
				x = Instance.new("Sound",char)
				x.SoundId = "rbxassetid://340722848"
				x.Pitch = 1
				x.Volume = 1
wait(.1)
x:Play()
rarm1.BrickColor = BrickColor.new("Cyan")
larm1.BrickColor = BrickColor.new("Cyan")
Debounces.on = false
Debounces.Here = false
shot = shot + 1
for i = 1, 6 do
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-12)), 0.4)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(101)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-6)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(6)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-8), math.rad(-84), 0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.4)
wait()
end
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Really red")
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(10, 10, 1)
local bem = Instance.new("Part", char)
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
local out = Instance.new("Part", char)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(1, 1, 1)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(2, 2, 2)
local bnd = Instance.new("Part", char)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really black")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "BEnd"
bnd.Size = Vector3.new(1, 1, 1)
bnd.Transparency = 0.35
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(4, 4, 4)
out.CFrame = rarm.CFrame * CFrame.new(0, -1.75, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
rng.Transparency = i/20
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
char:WaitForChild("Beam" .. shot).Touched:connect(function(ht) --Here
print("Hit")
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
print("Yes")
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 140
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(18,63))
wait(1)
hit:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
print("Yes")
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 140
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
for i = 0, 200, 7 do
bem.Size = Vector3.new(i, 1, 1)
bem.CFrame = rarm.CFrame * CFrame.new(0, -2.5 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 0)
wait()
end
wait()
Debounces.Shewt = false
bem:Destroy()
out:Destroy()
bnd:Destroy()
char.Humanoid.WalkSpeed = 10
Debounces.Ready = false
for i, v in pairs(Touche) do
table.remove(Touche, i)
end
wait()
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if CanAttack == false then
CanAttack = true
wait(.1)
rarm1.BrickColor = BrickColor.new("Really red")
larm1.BrickColor = BrickColor.new("Really red")
end
end
end
end)
-------------------------------Nightshift Blast
mouse.KeyDown:connect(function(key)
    if key == "q" then
        if CanAttack == true then
            CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1, 20 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-26), math.rad(0), 0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
                  if Debounces.on == false then
                          break
                  end
                  wait()
                      end
                      wait()
                    if Daytime == true then
                        Daytime = false
                        l.TimeOfDay = 24
                    else
                        Daytime = true
                        l.TimeOfDay = 12
                        l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
                    end
                    char.Humanoid.MaxHealth = math.huge
                    c = Instance.new("Sound")
                    c.SoundId = "http://www.roblox.com/asset/?id=181384451"
                    c.Parent = m
                    c.Looped = false
                    if Daytime == true then
                        c.Pitch = 1.04
                    elseif Daytime == false then
                        c.Pitch = 1.04
                    end
                    c.Volume = 1
                    wait(.01)
                    c:Play()
            local Shockwave = function()
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Bright red")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    print(hit.Name)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        if hit.Parent.Name ~= char.Name then
                            print("Damaged " .. hit.Parent.Name)
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                Delay(0, function()
                    -- 
                    -- Okay.
                    if Daytime == false then
                       for i = 1, 38, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 38
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 38, 1, -1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 38
                            Wave.Transparency = t
                            wait()
                        end
                    end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
            
            Shockwave()
            
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(-100)), 0.6)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(100)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-20)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(20)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(35), math.rad(0), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.6)
                wait()
                if Debounces.on == false then
                    break
                end
                wait()
            end
	    wait(2)
            Debounces.NoIdl = false
                    if CanAttack == false then
                        CanAttack = true
                wait()
                    end
            end -- for the canattack thing	
        local X = Instance.new("Part",char)
	local O = Instance.new("ObjectValue",X)
	O.Name = "creator"
	X.Locked = true
	X.Name = "Shell"
	X.Anchored = false
	X.CanCollide = false
	X.Transparency = 1
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
			part3.Transparency=1
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
			part4.Transparency=1
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
			part7.Transparency=1
			part7.BrickColor=BrickColor.new("Really black")
			local mesh7 = Instance.new("SpecialMesh",part7)
			mesh7.MeshType = "Sphere"
			mesh7.Scale = Vector3.new(0.1, 0.1, 0.1)

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
						c.CanCollide = True --wt
						c.Material=workspace.Base.Material
						c.Transparency = 1
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
				part.Transparency=1
				part.BrickColor=BrickColor.new('Really black')
				local mesh=Instance.new('SpecialMesh',part)
				mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
				mesh.Scale=Vector3.new(2,2,2)
				local part2=part:clone()
				part2.Parent = rarm
				part2.BrickColor=BrickColor.new("Royal purple")
part2.Transparency=1
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
			--[[for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
				if Debounces.on == false then break end
				rs:wait()
			end]]
        end
end)
-------------------------------Slash
mouse.KeyDown:connect(function(key)
    if key == "e" then
        if CanAttack == true then
            CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), math.rad(-36), math.rad(30)), 0.3)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(32)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0, -1) * CFrame.Angles(math.rad(0), 0, math.rad(-10)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(10)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(18), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-60), math.rad(-10)), 0.6)
                      if Debounces.on == false then
                              break
                      end
                      wait()
                      end
                      wait()
                            z = Instance.new("Sound")
                            z.SoundId = "http://www.roblox.com/asset/?id=160069154"
                            z.Parent = char.Head
                            z.Looped = false
                            z.Pitch = 1
                            z.Volume = 1
                            wait(.01)
                            z:Play()
                            Debounces.Slashing = true
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-21), math.rad(50), math.rad(-40)), 0.46)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(18)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-14), 0, math.rad(-10)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(6), 0, math.rad(10)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(-36), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(36), 0), 0.6)
            wait()
            if Debounces.on == false then
                break
            end
            wait()
                end
                Debounces.Slashing = false
            Debounces.NoIdl = false
            wait()
            if CanAttack == false then
                                    CanAttack = true
                                end -- dis betr
        end
    end
end)
cor.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true
                                if (lastanimpose == "Running" and animpose == "Idle") or animpose == "Running" then
                                    -- extra damage, 100 for testing.
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(37, 56))
                                else
                                    print(lastanimpose, animpose)
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(18,37))
                                end
                                wait(1)
                                Debounces.Slashed = false
                        end
                end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                        if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true
                                if (lastanimpose == "Running" and animpose == "Idle") or animpose == "Running" then
                                    -- extra damage, 100 for testing.
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(37, 56))
                                else
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(18,37))
                                end
                                wait(1)
                                Debounces.Slashed = false
                        end
                    end
                end
        end
end)
-------------------------------Stab
mouse.KeyDown:connect(function(key)
    if key == "r" then
        if CanAttack == true then
            CanAttack = false
             Debounces.NoIdl = true
                    Debounces.on = true
                        z = Instance.new("Sound")
                        z.SoundId = "http://www.roblox.com/asset/?id=159218913"
                        z.Parent = char.Head
                        z.Looped = false
                        z.Pitch = .9
                        z.Volume = 1
                        wait(.01)
                        z:Play()
                        Debounces.Slashing = true
            for i = 1, 20 do
                        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.2, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(-10)), 0.6)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(50), math.rad(-40)), 0.6)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), math.rad(34), math.rad(-20)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-14)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(14)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(48), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.7)
                wait()
                if Debounces.on == false then
                    break
                end
                wait()
                end
                Debounces.Slashing = false
            Debounces.NoIdl = false
            if CanAttack == false then
                    CanAttack = true
                end
                end
end
-------------------------------Getsuga Tenshou
mouse.KeyDown:connect(function(key)
    if key == "t" then
        if CanAttack == true then
            CanAttack = false
        Debounces.NoIdl = true
        Debounces.on = true
        for i = 1, 20 do
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.2, -2.75) * CFrame.Angles(math.rad(90), math.rad(40), math.rad(0)), 0.6)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1, 1, -.5) * CFrame.Angles(math.rad(130), math.rad(0), math.rad(40)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, 1, -.5) * CFrame.Angles(math.rad(130), math.rad(0), math.rad(-40)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-10)), 0.6)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(10)), 0.6)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.6)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
              if Debounces.on == false then
                      break
              end
              wait()
                  end
                  wait()
                        z = Instance.new("Sound")
                        z.SoundId = "http://www.roblox.com/asset/?id=159218913"
                        z.Parent = char.Head
                        z.Looped = false
                        z.Pitch = 1
                        z.Volume = 1
                        wait(.01)
                        z:Play()
                        Debounces.Slashing = true
        for i = 1, 20 do
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.2, -2.75) * CFrame.Angles(math.rad(90), math.rad(40), math.rad(0)), 0.6)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1, .5, -.5) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(40)), 0.6)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, .5, -.5) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-40)), 0.6)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1.5, -.5) * CFrame.Angles(math.rad(-90), 0, math.rad(0)), 0.6)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.6)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.6)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.6)
        wait()
        if Debounces.on == false then
            break
        end
        wait()
            end
            Debounces.Slashing = false
        Debounces.NoIdl = false
        wait()
        if CanAttack == false then
            CanAttack = true
            end
                end
        end
    end)
end)
--------------------------------------------------Insanity
mouse.KeyDown:connect(function(key)
	if key == "g" then
		       if CanAttack == true then
            CanAttack = false
        Debounces.NoIdl = true
				z = Instance.new("Sound")
				z.SoundId = "http://www.roblox.com/asset/?id=154564700"
				z.Parent = char
				z.Looped = true
				z.Pitch = .88
				z.Volume = 1
				wait(.01)
				z:Play()
        for i = 1, 20 do
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.2, -2.75) * CFrame.Angles(math.rad(90), math.rad(40), math.rad(0)), 0.6)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-26), math.rad(0), 0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
            if Debounces.on == false then
			break
end
wait()
end
mouse.KeyUp:connect(function(key)
	if key == "g" then
		z:Stop()
	Debounces.NoIdl = false
	wait()
if CanAttack == true then
	CanAttack = false
end
	end
end)
end
		end
	end)
--------------------------------------------------Idle Changing
mouse.KeyDown:connect(function(key)
    if key == "z" then
        stanceToggle = "Aggressive"
    elseif key == "x" then
        stanceToggle = "Assertive"
    elseif key == "c" then
        stanceToggle = "Floating"
    end
end)
-------------------------------Sprint
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 48
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 10
    end
end)
-------------------------------
local sine = 0
local change = 1
local val = 0
local ffing = false
--------------------------------Trail
local LastCFr = nil
local Trails = Instance.new("Model",char)
local Trail = {}
local Tip = blocks[test]
local number = 0
local num2 = 1
game:GetService("RunService").RenderStepped:connect(function()
	local start = nil
	for i = num2,number do
		local v = Trail[i]
		if v ~= nil then
			local cfr = v.CFrame
			local Amount = v.Size.Y/4
			v.Size = v.Size-Vector3.new(0,Amount,0)
			v.Transparency = v.Transparency+0.05
			v.CFrame = cfr*CFrame.new(0,Amount/2,0)
			if v.Size.Y <= 0.205 or v.Transparency > 0.95 then
				v:Destroy()
				Trail[i] = nil
				num2=num2+1
			end
			break
		end
	end

	if Debounces.Slashing then
		if LastCFr ~= nil and (Tip.Position-LastCFr.p).Magnitude > 0.01 then
			local cfr = Tip.CFrame
			local T = Instance.new("Part",Trails)
			number = number+1
			Trail[number] = T
			T.FormFactor = "Custom"
			T.Name = "Trail"
			T.Anchored = true
			T.CanCollide = false
			T.Size = Vector3.new(0.5,(LastCFr.p-cfr.p).Magnitude,0.5)
			T.TopSurface = "SmoothNoOutlines"
			T.BottomSurface = "SmoothNoOutlines"
			T.FrontSurface = "SmoothNoOutlines"
			T.BackSurface = "SmoothNoOutlines"
			T.LeftSurface = "SmoothNoOutlines"
			T.RightSurface = "SmoothNoOutlines"
			--[[local m = Instance.new("SpecialMesh",T)
			m.MeshType = "Head"
			m.Name = "Mesh"]]
			T.BrickColor = BrickColor.new("Really red")
			T.Transparency = 0.4
			T.CFrame = CFrame.new(cfr.p, LastCFr.p)* CFrame.Angles(math.rad(90),0,0) * CFrame.new(0, -(LastCFr.p-cfr.p).Magnitude/2, 0)
			LastCFr = cfr
		else
			LastCFr = Tip.CFrame
		end
	else
		if LastCFr ~= nil then LastCFr = nil Trails:ClearAllChildren() Trail = {} end
	end
-----------------------------------Animations
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jump == true then
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
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.6)
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if ffing then
change = 0.5
if stanceToggle == "Assertive" then
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(15), 0, math.rad(30)), 0.1)
elseif stanceToggle == "Aggressive" then


rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(20+2*math.cos(sine/14)),math.rad(95)), 0.1)

elseif stanceToggle == "Floating" then

end
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-20)), 0.1)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(20)), 0.1)
    
elseif animpose == "Idle" then
if stanceToggle == "Aggressive" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(20+2*math.cos(sine/14)),math.rad(70)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(10),math.rad(-70),math.rad(-30-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5+2*math.cos(sine/14)),math.rad(-60),math.rad(10))
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(70), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(6), math.rad(0), math.rad(-20-3*math.cos(sine/14))), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(20+3*math.cos(sine/14))), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.2)
elseif stanceToggle == "Assertive" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10+2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10+2*math.cos(sine/14)),math.rad(-32),0)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(36), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.2)

elseif stanceToggle == "Floating" then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16-4*math.cos(sine/14)),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-16+2*math.cos(sine/14)),math.rad(0),0)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, (2-0.4*math.cos(sine/14)), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.4)
--[[bodypos.Parent = root
local hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(root.CFrame,CFrame.new(0,-20,0)),char:children())
if hit then
    bodypos.position = Vector3.new(0,hit.CFrame.2 + hit.Size.2/2 + 2,0) 
else
    bodypos.position = Vector3.new(0,root.CFrame.2,0)
end]]
end
elseif animpose == "Walking" then
change = 1
if stanceToggle == "Assertive" then
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.4)
elseif stanceToggle == "Passive" then

end
if stanceToggle == "Assertive" then
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(14),math.rad(-10-2*math.cos(sine/14))), 0.2)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.sin(sine/10)/6, math.rad(10), math.rad(10)), 0.4)
    hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10-4*math.cos(sine/14)),0,0)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(-math.sin(sine/14)/2, 0, 0), .4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.sin(sine/14)/2, 0, 0), .4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, --[[math.rad(36)]]0, math.rad(0)), 0.2)
elseif stanceToggle == "Aggressive" then
    change = 1.5
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(10),math.rad(-70),math.rad(-30-2*math.cos(sine/14))), 0.2)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(20+2*math.cos(sine/14)),math.rad(30)), 0.2)
    hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0+2*math.cos(sine/10)),math.rad(-60),math.rad(10))
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(4), math.rad(0), math.rad(-10-8*math.cos(sine/14))), 0.2)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(10+6*math.cos(sine/14))), 0.2)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), math.rad(0)), 0.2)
elseif stanceToggle == "Floating" then
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(14),math.rad(-10-2*math.cos(sine/14))), 0.4)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.sin(sine/10)/6, math.rad(10), math.rad(10)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0), 0.4)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(sine/14)), 0, 0), 0.4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(sine/13)), 0, 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, (2-0.2*math.cos(sine/14)), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
end

cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.4)
elseif animpose == "Running" then
    change = 1
    if stanceToggle == "Assertive" then
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.04)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-12.5-6*math.cos(sine/14)), math.rad(50), math.rad(-40)), 0.4)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(40), math.rad(26)), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.75 + -math.sin(sine / 20)/12, -0.5 + -math.sin(sine / 16) / 2.5) * CFrame.Angles(math.rad(8) + -math.sin(sine/6)/1.5, 0, 0), .4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.75 + math.sin(sine / 20)/12, -0.5 + math.sin(sine / 16) / 2.5) * CFrame.Angles(math.rad(8) + math.sin(sine/6)/1.5, 0, 0), .4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(-1.1, -3.2, 0) * CFrame.Angles(0, 0, math.rad(-28)), 0.4)
                if sine <= 7 then 
                for i = 1, 1.5 do
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.55, 0) * CFrame.Angles(math.rad(17-2*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(-30+4*math.cos(sine/14)), math.rad(0), 0), 0.05)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(-5)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0, -1) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
            if sine > 7 or Debounces.on == true then
                                break
                        end
                        wait()
                        end
                        elseif sine <= 10 then
                        for i = 1, 1.5 do
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(-5)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
                if sine > 10 or Debounces.on == true then
                                break
                        end
                        wait()
                        end
                        elseif sine <= 17 then
                        for i = 1, 1.5 do
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0, -1) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0.5) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
            if sine > 17 or Debounces.on == true then
                    break
            end
            wait()
                end
                elseif sine <= 20 then
                        for i = 1, 1.5 do
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(-5)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
                if sine > 20 or Debounces.on == true then
                                break
                        end
                        wait()
                        end
                    elseif sine > 20 then
                            sine = 0
                    end
    elseif stanceToggle == "Aggressive" then
    elseif stanceToggle == "Floating" then
	larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-20*math.cos(sine/14)),math.rad(14),math.rad(-10-2*math.cos(sine/14))), 0.4)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20*math.cos(sine/14)), math.rad(10), math.rad(10)), 0.4)
    hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-4-10*math.cos(sine/16)), 0, 0), 0.4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-3-12*math.cos(sine/17)), 0, 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, (2-0.4*math.cos(sine/14)), 0) * CFrame.Angles(math.rad(-15),0, math.rad(0)), 0.05)
    end
end
end
end)