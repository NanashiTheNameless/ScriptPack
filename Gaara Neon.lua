--// Gaara Remade by: SavageMunkey in about 4 hours.
--// Only Contains: Teleport, OnDeath Sand Puddle, and That follower part thingy.
--// Used build2script cause im lazy

wait()
KillingSand = true
local PColor,SColor = 'Pearl','Bright red';
local SandColor = 'Crimson';

local Plr = game.Players.LocalPlayer
Char = Plr.Character
local Mouse = Plr:GetMouse()

local torso = Char:WaitForChild'Torso'
local rarm = Char:WaitForChild'Right Arm'
local larm = Char:WaitForChild'Left Arm'
local rleg = Char:WaitForChild'Right Leg'
local lleg = Char:WaitForChild'Left Leg'
local root = Char:WaitForChild'HumanoidRootPart'
local hed = Char:WaitForChild'Head'
local hum = Char:WaitForChild('Humanoid')

hum.Died:connect(function()
KillingSand = false
local Pos = torso.CFrame
local DP = Instance.new('Part',Char)
DP.Anchored = true
DP.CFrame = CFrame.new(Pos.p) * CFrame.new(0,-3.15,0)
DP.Transparency = .35
DP.BrickColor = BrickColor.new(SandColor)
local MFP = Instance.new('CylinderMesh',DP)
MFP.Scale = Vector3.new(2,.5,2)
local DP2 = Instance.new('Part',Char)
DP2.Anchored = true
DP2.CFrame = CFrame.new(Pos.p) * CFrame.new(0,-3.15,0)
DP2.Transparency = .35
DP2.BrickColor = BrickColor.new(SandColor)
local MFP2 = Instance.new('CylinderMesh',DP2)
MFP2.Scale = Vector3.new(2,.5,2)
local DP3 = Instance.new('Part',Char)
DP3.Anchored = true
DP3.CFrame = CFrame.new(Pos.p) * CFrame.new(0,-3.15,0)
DP3.Transparency = .35
DP3.BrickColor = BrickColor.new(SandColor)
local MFP3 = Instance.new('CylinderMesh',DP3)
MFP3.Scale = Vector3.new(2,.5,2)
local Div = 1.8
spawn(function()
local C = 80/Div
for I = 1,C do
MFP.Scale = MFP.Scale + Vector3.new(.35,0,.35)
game:FindService'RunService'.RenderStepped:wait()
end;
end)
spawn(function()
local C = 50/Div
for I = 1,C do
MFP2.Scale = MFP2.Scale + Vector3.new(.35,0,.35)
game:FindService'RunService'.RenderStepped:wait()
end;
end)
spawn(function()
local C = 25/Div
for I = 1,C do
MFP3.Scale = MFP3.Scale + Vector3.new(.35,0,.35)
game:FindService'RunService'.RenderStepped:wait()
end;
end)
end)

NSound = function(Parent, Id)
	local Sound = Instance.new('Sound',Parent or workspace)
	Sound.Name = 'Sound_'..(tostring(Id) or 0)
	Sound.SoundId = 'rbxassetid://'..(tostring(Id) or 0)
	return Sound
end

Ang = function(C1,C2,C3)
return CFrame.Angles(math.rad(C1),math.rad(C2),math.rad(C3))
end;

Euler = function(C1,C2,C3)
return CFrame.fromEulerAnglesXYZ(math.rad(C1),math.rad(C2),math.rad(C3))
end;

NWeld = function(P0, P1, CFStuff)
	local Weld = Instance.new('Weld',P0)
	Weld.Part0 = P0
	Weld.Part1 = P1
	Weld.Name = tostring(P0)..'to'..tostring(P1.Name)
	Weld.C1 = CFStuff
	return Weld
end

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	if Object:IsA'Part' then
	Object.CanCollide = false
	print(tostring(Name)..': Loaded')
	game:FindService'Lighting'.Outlines = false
	end;
	spawn(function()
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end;end)
	Object.Parent = Parent
	Object.Name = Name
	wait()
	return Object
end
	
Gaara = New("Model",Char,"GaaraModel",{})
Base = New("Part",Gaara,"Base",{BrickColor = BrickColor.new("Really black"),Transparency = 0.30000001192093,Transparency = 0.30000001192093,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 3.79999995, 1),CFrame = CFrame.new(-6.5525918, 3.02563214, 48.0500031, 0.70710665, 0.707106709, 0, -0.707106709, 0.70710665, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",Base,"Mesh",{})
BaseRing = New("Part",Gaara,"BaseRing",{BrickColor = BrickColor.new(PColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 3.79999995, 1),CFrame = CFrame.new(-6.5525918, 3.02563214, 48.0500031, 0.707106709, 0.707106769, 0, -0.707106769, 0.707106709, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 1, 1),})
Mesh = New("CylinderMesh",BaseRing,"Mesh",{Scale = Vector3.new(2, 0.0850000009, 2),})
mot = New("Motor",BaseRing,"mot",{Part0 = BaseRing,Part1 = Base,C0 = CFrame.new(0, 0, 0, 0.707106709, -0.707106769, 0, 0.707106769, 0.707106709, 0, 0, 0, 1),C1 = CFrame.new(0, 0, 0, 0.707106709, -0.707106769, 0, 0.707106769, 0.707106709, 0, 0, 0, 1),})
TopCircle = New("Part",Gaara,"TopCircle",{BrickColor = BrickColor.new(SColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-5.84548521, 3.73273802, 48.0500031, 0.707106471, 0.707106531, 0, -0.707106531, 0.707106471, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 1, 0),})
Mesh = New("SpecialMesh",TopCircle,"Mesh",{Scale = Vector3.new(2.6500001, 2.6500001, 2.6500001),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",TopCircle,"mot",{Part0 = TopCircle,Part1 = Base,C0 = CFrame.new(0, 0, 0, 0.707106709, -0.707106769, 0, 0.707106769, 0.707106709, 0, 0, 0, 1),C1 = CFrame.new(4.76837158e-007, 0.999999523, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
BottomCircle = New("Part",Gaara,"BottomCircle",{BrickColor = BrickColor.new(SColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-7.25969839, 2.31852579, 48.0500031, 0.707106471, 0.707106531, 0, -0.707106531, 0.707106471, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 1, 0),})
Mesh = New("SpecialMesh",BottomCircle,"Mesh",{Scale = Vector3.new(2.6500001, 2.6500001, 2.6500001),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",BottomCircle,"mot",{Part0 = BottomCircle,Part1 = Base,C0 = CFrame.new(0, 0, 0, 0.707106709, -0.707106769, 0, 0.707106769, 0.707106709, 0, 0, 0, 1),C1 = CFrame.new(0, -0.999999762, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
TopFunnel = New("Part",Gaara,"TopFunnel",{BrickColor = BrickColor.new(SColor),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-4.9969573, 4.5812664, 48.0500031, 0.707106471, 0.707106531, 0, -0.707106531, 0.707106471, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 1, 0),})
Mesh = New("CylinderMesh",TopFunnel,"Mesh",{Scale = Vector3.new(0.400000006, 0.600000024, 0.400000006),})
mot = New("Motor",TopFunnel,"mot",{Part0 = TopFunnel,Part1 = Base,C0 = CFrame.new(0, 0, 0, 0.707106709, -0.707106769, 0, 0.707106769, 0.707106709, 0, 0, 0, 1),C1 = CFrame.new(0, 2.19999981, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
TopFunnelInner = New("Part",Gaara,"TopFunnelInner",{BrickColor = BrickColor.new(PColor),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-4.98988628, 4.58833694, 48.0500031, 0.707106471, 0.707106531, 0, -0.707106531, 0.707106471, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 1, 1),})
Mesh = New("CylinderMesh",TopFunnelInner,"Mesh",{Scale = Vector3.new(0.300000012, 0.600000024, 0.300000012),})
mot = New("Motor",TopFunnelInner,"mot",{Part0 = TopFunnelInner,Part1 = Base,C0 = CFrame.new(0, 0, 0, 0.707106709, -0.707106769, 0, 0.707106769, 0.707106709, 0, 0, 0, 1),C1 = CFrame.new(4.76837158e-007, 2.20999885, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
TopFunnelCap = New("Part",Gaara,"TopFunnelCap",{BrickColor = BrickColor.new(PColor),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-4.77068233, 4.80754137, 48.0500031, 0.707106471, 0.707106531, 0, -0.707106531, 0.707106471, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 1, 0),})
Mesh = New("CylinderMesh",TopFunnelCap,"Mesh",{Scale = Vector3.new(0.5, 0.100000001, 0.5),})
mot = New("Motor",TopFunnelCap,"mot",{Part0 = TopFunnelCap,Part1 = Base,C0 = CFrame.new(0, 0, 0, 0.707106709, -0.707106769, 0, 0.707106769, 0.707106709, 0, 0, 0, 1),C1 = CFrame.new(0, 2.52000046, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
TopFunnelCapConnector = New("Part",Gaara,"TopFunnelCapConnector",{Material = Enum.Material.Neon, BrickColor = BrickColor.new(PColor),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-4.99695778, 4.9348197, 48.0500031, 0.707106471, 0.707106531, 0, -0.707106531, 0.707106471, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 1, 0),})
Mesh = New("SpecialMesh",TopFunnelCapConnector,"Mesh",{Scale = Vector3.new(0.150000006, 0.150000006, 0.150000006),MeshId = "rbxassetid://3270017",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",TopFunnelCapConnector,"mot",{Part0 = TopFunnelCapConnector,Part1 = Base,C0 = CFrame.new(0, 0, 0, 0.707106709, -0.707106769, 0, 0.707106769, 0.707106709, 0, 0, 0, 1),C1 = CFrame.new(-0.250000477, 2.44999909, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
SackWeld = NWeld(torso,Base,Ang(0,0,45)*CFrame.new(0,0,-1.45))
BodyStrap = New("Model",Gaara,"BodyStrap",{})
Main = New("Part",BodyStrap,"Main",{BrickColor = BrickColor.new(PColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(2.5400002, 0.200000003, 1.10000002),CFrame = CFrame.new(-6.42506027, 3.01506114, 46.4999962, 0.70710665, 0.707106709, 0, -0.707106709, 0.70710665, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",BodyStrap,"Part_1",{BrickColor = BrickColor.new(PColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.10000002, 0.200000003, 1.10000002),CFrame = CFrame.new(-6.7826333, 2.59263539, 46.4999962, 0, -0.999999166, 0, 0.999999166, 0, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Main,C0 = CFrame.new(0, 0, 0, 2.98023224e-008, 0.999999523, 0, -0.999999523, 2.98023224e-008, 0, 0, 0, 1),C1 = CFrame.new(0.0458579063, -0.551542521, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
Part = New("Part",BodyStrap,"Part_2",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.10000002, 0.200000003, 0.200000003),CFrame = CFrame.new(-6.78263283, 3.2426362, 46.4899979, -1.38580754e-006, 0.999998868, 8.94069672e-007, -1.17351931e-007, 9.53674316e-007, -0.999999106, -0.999999344, -1.51991844e-006, 1.9185741e-007),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Main,C0 = CFrame.new(0, 0, 0, -1.38580799e-006, -1.17351988e-007, -0.999999344, 0.999999166, 9.34102445e-007, -1.51991844e-006, 9.34102729e-007, -0.999999404, 1.9185741e-007),C1 = CFrame.new(-0.413762093, -0.0919222832, -0.00999832153, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
Part = New("Part",BodyStrap,"Part_3",{BrickColor = BrickColor.new(PColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.10000002),CFrame = CFrame.new(-7.31289196, 3.9028945, 46.4999962, -5.96046448e-008, 0.999999464, 0, -0.999999464, -5.96046448e-008, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Main,C0 = CFrame.new(0, 0, 0, -4.47034836e-008, -0.999999762, 0, 0.999999762, -4.47034836e-008, 0, 0, 0, 1),C1 = CFrame.new(-1.25558472, 1.1920929e-006, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
Part = New("Part",BodyStrap,"Part_4",{BrickColor = BrickColor.new(PColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.10000002),CFrame = CFrame.new(-5.51289368, 2.10289407, 46.4999962, -5.96046448e-008, 0.999999464, 0, -0.999999464, -5.96046448e-008, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Main,C0 = CFrame.new(0, 0, 0, -4.47034836e-008, -0.999999762, 0, 0.999999762, -4.47034836e-008, 0, 0, 0, 1),C1 = CFrame.new(1.28999901, -2.38418579e-007, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
Part = New("Part",BodyStrap,"Part_5",{BrickColor = BrickColor.new(PColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.10000002),CFrame = CFrame.new(-6.78289366, 2.08289385, 46.4999962, -5.96046448e-008, 0.999999464, 0, -0.999999464, -5.96046448e-008, 0, 0, 0, 1),Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Main,C0 = CFrame.new(0, 0, 0, -4.47034836e-008, -0.999999762, 0, 0.999999762, -4.47034836e-008, 0, 0, 0, 1),C1 = CFrame.new(0.406115532, -0.912168264, 0, 0.70710665, -0.707106709, 0, 0.707106709, 0.70710665, 0, 0, 0, 1),})
StrapWeld = NWeld(torso,Main,Ang(0,0,45)*CFrame.new(0,-.025,0))

KillingSand = true
local rs = game:FindService'RunService'.RenderStepped or nil

CanTele = true;

MakeBodyClone = function()
local CharM = Instance.new('Model',Char)
CharM.Name = 'SecChar_Model'
spawn(function()
local HED = hed:clone()
HED.Parent = CharM
HED.Anchored = true
HED.BrickColor = BrickColor.new(SandColor)
HED.Transparency = .45
local RARM = rarm:clone()
RARM.Parent = CharM
RARM.Anchored = true
RARM.BrickColor = BrickColor.new(SandColor)
RARM.Transparency = .45
local LARM = larm:clone()
LARM.Parent = CharM
LARM.Anchored = true
LARM.BrickColor = BrickColor.new(SandColor)
LARM.Transparency = .45
local TORSO = torso:clone()
TORSO.Parent = CharM
TORSO.Anchored = true
TORSO.BrickColor = BrickColor.new(SandColor)
TORSO.Transparency = .45
local LLEG = lleg:clone()
LLEG.Parent = CharM
LLEG.Anchored = true
LLEG.BrickColor = BrickColor.new(SandColor)
LLEG.Transparency = .45
local RLEG = rleg:clone()
RLEG.Parent = CharM
RLEG.Anchored = true
RLEG.BrickColor = BrickColor.new(SandColor)
RLEG.Transparency = .45
end)
return CharM
end;

Keys = {
R = false;
Q = false;
};
local CanUse1,CanUse2,CanUse3,CanUse4 = true,true,true,true
Mouse.KeyDown:connect(function(k)
ks = tostring(k)
kb = k:byte()

if kb == 114 and CanUse1 then	
Keys.R = true
local FolloP = Instance.new('Part',BodyStrap)
FolloP.Name = 'FollowingPart'
FolloP.Size = Vector3.new(1,1,1)
FolloP.Transparency = 1
FolloP.CanCollide = false
FolloP.Anchored = true
FolloP.CFrame = torso.CFrame
spawn(function()pcall(function()
rs:connect(function()
local NewPos = Mouse.Hit
FolloP.CFrame = FolloP.CFrame:lerp(CFrame.new(NewPos.X,NewPos.Y,NewPos.Z),.055)
end)end)end)
local MakeDeathPart = function(Pos)
pcall(function()
local P = Instance.new('Part',torso)
P.FormFactor = 3
P.Size = Vector3.new(2,2,2)
P.Transparency = .5
P.Anchored = true
P.CanCollide = false
P.Material = 'Neon'
P.BrickColor = BrickColor.new(SandColor)
P.CFrame = CFrame.new(Pos)*Euler(math.random(-180,180),math.random(-180,180),math.random(-180,180))
P.Touched:connect(function(hit)
if hit:IsA'Part' and not hit:FindFirstChild('AlreadyHit') and hit.Name ~= 'Base' and hit.Parent and hit.Parent.Name ~= Plr.Name then
if hit.Parent.Name ~= 'GaaraModel' and hit.Parent.Name ~= 'BodyStrap' then
spawn(function()
hit.BrickColor = BrickColor.new(SandColor)
repeat rs:wait() hit.BrickColor = BrickColor.new(SandColor) hit.Transparency = hit.Transparency + .015 until
hit.Transparency >= 1
hit:Destroy()
end)
end;end;end)
spawn(function()
local M = Instance.new('BlockMesh',P)
repeat rs:wait() 
M.Scale = M.Scale + Vector3.new(.1,.1,.1)
P.Transparency = P.Transparency + .035 until P.Transparency >= 1
wait()
P:Destroy()
end)
--// print('Made Part', Pos)
rs:wait()
end)end;
repeat MakeDeathPart(FolloP.Position) until Keys.R == false
elseif kb == 113 and CanTele == true then
KillingSand = false
local BodMod = MakeBodyClone()
local Pos = Mouse.Hit
CanTele = false
local Beacon = Instance.new('Part',workspace.CurrentCamera)
Beacon.FormFactor = 3
Beacon.Material = 'Neon'
Beacon.Anchored = true
Beacon.CanCollide = false
Beacon.BrickColor = BrickColor.new(SandColor)
Beacon.CFrame = CFrame.new(Pos.X,Pos.Y-.5,Pos.Z)
Beacon.Transparency = .4
Beacon.Size = Vector3.new(.3,3,.3)
torso.Anchored = true
local MakeInvis,MakeVis = function()
for index,part in next, Char:children() do
if part:IsA'Part' then
part.Transparency = 1
end
end
end,function()
for index,part in next, Char:children() do
if part:IsA'Part' and part.Name ~= 'HumanoidRootPart' then
part.Transparency = 0
end
end
end;
MakeInvis()
for index,part in next, Gaara:children() do
if part:IsA'Part' then
spawn(function()
repeat
rs:wait() part.Transparency = part.Transparency + .065
until part.Transparency >= 1
end)
end
end
repeat rs:wait() torso.CFrame = torso.CFrame * CFrame.new(0,-.125,0)
until torso.CFrame.Y  <= -2.3
wait()
local Count = 0
repeat
rs:wait() Count = Count + .9
torso.CFrame = torso.CFrame:lerp(CFrame.new(Pos.X,-2.3,Pos.Z),.1)
until Count >= 62.5
wait()
Count = 0
repeat rs:wait() torso.CFrame = torso.CFrame * CFrame.new(0,.125,0)
until torso.CFrame.Y  >= 3
wait()
for index,part in next, Gaara:children() do
if part:IsA'Part' then
spawn(function()
repeat
rs:wait() part.Transparency = part.Transparency - .065
until part.Transparency <= 0
end)
end
end
BodMod:Destroy()
Beacon:Destroy()
wait()
MakeVis()
torso.Anchored = false
spawn(function()
wait(.5)
CanTele = true
end)
end

end)

Mouse.KeyUp:connect(function(k)
if k:lower() == 'r' then
pcall(function()
Keys.R = false
BodyStrap:FindFirstChild'FollowingPart':Destroy()
end)end;
end)

rs:connect(function()
if KillingSand == true then
local SandPart = Instance.new('Part',Gaara)
SandPart.Anchored = true
SandPart.CanCollide = false
SandPart.FormFactor = 3
SandPart.Material = 'Neon'
local Pl = Instance.new('PointLight',SandPart)
Pl.Color = SandPart.Color
SandPart.BrickColor = BrickColor.new(SandColor)
SandPart.Size = Vector3.new(math.random(.2,.3),math.random(.2,.3),math.random(.2,.3))
SandPart.CFrame = torso.CFrame * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) * Euler(math.random(-360,360),math.random(-360,360),math.random(-360,360))
SandPart.Touched:connect(function(hit)
if hit:IsA'Part' and not hit:FindFirstChild('AlreadyHit') and hit.Name ~= 'Base' and hit.Parent and hit.Parent.Name ~= Plr.Name then
if hit.Parent.Name ~= 'GaaraModel' and hit.Parent.Name ~= 'BodyStrap' then
spawn(function()
hit.BrickColor = BrickColor.new(SandColor)
repeat rs:wait() hit.BrickColor = BrickColor.new(SandColor) hit.Transparency = hit.Transparency + .015 until
hit.Transparency >= 1
hit:Destroy()
end)
end;end;end)
spawn(function()
repeat rs:wait() SandPart.Transparency = SandPart.Transparency + .05 until SandPart.Transparency >= 1
wait()
SandPart:Destroy()
end)
end
end)