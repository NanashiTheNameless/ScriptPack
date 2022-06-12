--// Vortex Gauntlets created by SavageMunkey
--// Thx for ideas and help: dangerspookycanyon(3 Attack Ideas, Body Suit Prototypes),georgeyeo(RayCast help), AltairStarMaster(like 99999999 attack ideas), and others
Plr = game.Players.LocalPlayer
Char = Plr.Character
Mouse = Plr:GetMouse()
local sine,change = 0,1
------------------------
local OverallHealth = 100 --// Only thing you need to change #1
local Energy = 5000--// Only thing you need to change #2
local PrimaryColor,SecondaryColor,ThirdColor = 'Really black','Pearl','Really black' --// Only thing[s] you need to change #3
local NO_OP = false --// Only thing you need to change #4, Btw this will (if true, take damage from the player maxhealth/the set damage instead of taking only the set amount)
--// so if the players maxhealth == 50,000 and you have NO_OP == true and the set damage == 15 then it would do 50,000/15==(3333.333>) instead of just 15 dmaage 
------------------------
RageMode = false --// Don't touch, is for variable																	           	 ---
------------------------
game:FindService'SoundService':ClearAllChildren()
local mx = Energy
--game:FindService'SoundService'.AmbientReverb = 'ConcertHall'
local anglefor = 0
local candash = true
Keyz = {
A = false;
B = false;
C = false;
D = false;
E = false;
F = false;
G = false;
H = false;
I = false;
J = false;
K = false;
L = false;
M = false;
N = false;
O = false;
P = false;
Q = false;
R = false;
S = false;
T = false;
U = false;
V = false;
W = false;
X = false;
Y = false;
Z = false;
};
Flyin = false
local ra,la,ts,hd,ll,rl,root,humanoid = Char:FindFirstChild'Right Arm',Char:FindFirstChild'Left Arm',Char:FindFirstChild'Torso',Char:FindFirstChild'Head',Char:FindFirstChild'Left Leg',Char:FindFirstChild'Right Leg',Char:FindFirstChild'HumanoidRootPart',Char:FindFirstChild'Humanoid'
local rarm,larm,hed,torso,hroot,lleg,hum,rleg,mouse = ra,la,hd,ts,root,ll,humanoid,rl,Mouse
local Falling,DS,MS,Attacking,Stance,State,LastState = false,false,false,false,'Standing','Idle','Idle'
DS = false
local canslam = true
local DebounceFallin = false
local DebounceState,DebounceHit,DebounceKey,EctDebounce = false,false,false,false
pcall(function() hed['Running']:Destroy() end)
local lRS = game["Run Service"].RenderStepped
local sRS = game["Run Service"].Stepped or game["Run Service"].Heartbeat
local lrs,rs = lRS,sRS
local ds,dh,dk,ed = DebounceState,DebounceHit,DebounceKey,EctDebounce
local DBP = false

Weld = function(P0,P1,CF)
	local W = Instance.new('Weld',P1)
	W.Part0 = P0
	W.Part1 = P1
	W.C1 = CF
	return W
end;

NewSound = function(Parent, Id, Pitch ,Volume)
local Sound = Instance.new('Sound',Parent)
Sound.Volume = Volume
Sound.Pitch = Pitch
Sound.SoundId = 'rbxassetid://'..Id
return Sound
end;
----

----
wait()
hw = Weld(torso,hed,CFrame.new(0,-1.5,0));
torr = Weld(root,torso,CFrame.new(0,0,0));
raw = Weld(torso,rarm,CFrame.new(-1.5,0,0));
law = Weld(torso,larm,CFrame.new(1.5,0,0));
rlw = Weld(torso,rleg,CFrame.new(-.5,2,0));
llw = Weld(torso,lleg,CFrame.new(.5,2,0));
----
clerp = function(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))--]]
end
lerp = function(c1,c2,al)
return c1:lerp(c2,al)
end

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	delay(.1,function()
	if Object:IsA'Part' then
	Object.CanCollide = false
	Object.Locked = true
	end;end)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

----// Right Claw	
VortexGauntlet = New("Model",Char,"VortexGauntlet",{})
Main = New("Part",VortexGauntlet,"Main",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.00999999, 1.40999997, 1.02999997),CFrame = CFrame.new(1.61502337, 3.22481394, 48.3949738, 0.999984324, -6.55651093e-007, 1.94078893e-007, -6.85453415e-007, 0.999982893, -1.23327482e-008, 1.92187144e-007, 3.23780114e-008, 0.999988735),})
Mesh = New("BlockMesh",Main,"Mesh",{})
Part1 = New("Part",VortexGauntlet,"Part1",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.14999998, 0.200000003, 1.14999998),CFrame = CFrame.new(1.61502361, 3.07982183, 48.3949699, 0.999952972, -1.99669012e-006, 5.80329356e-007, -2.02649153e-006, 0.99994868, 7.71190489e-009, 5.78437607e-007, 5.24213988e-008, 0.999966204),})
Mesh = New("BlockMesh",Part1,"Mesh",{})
mot = New("Motor",Part1,"mot",{Part0 = Part1,Part1 = Main,C0 = CFrame.new(0, 0, 0, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),C1 = CFrame.new(1.1920929e-007, -0.144994497, -3.81469727e-006, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
Part2 = New("Part",VortexGauntlet,"Part2",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.14999998, 0.200000003, 1.14999998),CFrame = CFrame.new(1.6150229, 3.47980165, 48.3949699, 0.999952972, -1.99669012e-006, 5.80329356e-007, -2.02649153e-006, 0.99994868, 7.71190489e-009, 5.78437607e-007, 5.24213988e-008, 0.999966204),})
Mesh = New("BlockMesh",Part2,"Mesh",{})
mot = New("Motor",Part2,"mot",{Part0 = Part2,Part1 = Main,C0 = CFrame.new(0, 0, 0, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),C1 = CFrame.new(-3.57627869e-007, 0.254992008, -3.81469727e-006, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
Part3 = New("Part",VortexGauntlet,"Part3",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.14999998, 0.200000003, 1.14999998),CFrame = CFrame.new(1.61502194, 3.87978125, 48.3949699, 0.999952972, -1.99669012e-006, 5.80329356e-007, -2.02649153e-006, 0.99994868, 7.71190489e-009, 5.78437607e-007, 5.24213988e-008, 0.999966204),})
Mesh = New("BlockMesh",Part3,"Mesh",{})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Main,C0 = CFrame.new(0, 0, 0, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),C1 = CFrame.new(-9.53674316e-007, 0.654978514, -3.81469727e-006, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.10669136, 2.85156226, 48.4086037, -0.686683536, -0.000153818051, 0.726891577, -0.726885498, 0.000336891768, -0.686683595, -0.000140090138, -0.999965966, -0.000342367945),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart,"Mesh",{})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -0.686706066, -0.726911366, -0.000139813448, -0.000153436136, 0.000336923113, -0.999988496, 0.726913393, -0.686706126, -0.000342642685),C1 = CFrame.new(-0.50834024, -0.373258352, 0.0136299133, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.420000017, 0.200000003),CFrame = CFrame.new(0.79824549, 2.13190103, 48.4086189, 0.000150710199, -0.291629434, 0.956479728, -0.000334032346, -0.956475139, -0.291631371, 0.999964535, -0.000275910104, -0.00024051439),BottomSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("SpecialMesh",ClawPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, 0.000150328196, -0.000334063574, 0.999987066, -0.291639835, -0.956508279, -0.000275784521, 0.956509411, -0.291640043, -0.000240883426),C1 = CFrame.new(-0.816791415, -1.09293222, 0.0136451721, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
Cone = New("Part",VortexGauntlet,"Cone",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,Reflectance = 0.10000000149012,FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(1, 0.800000012, 1),CFrame = CFrame.new(1.61002243, 2.51985645, 48.3899651, -0.999948561, 1.10265523e-006, 5.55474173e-007, 1.2814628e-006, -0.999944806, -1.77016783e-008, -5.53581231e-007, -2.70076601e-008, 0.999963343),})
Mesh = New("SpecialMesh",Cone,"Mesh",{Scale = Vector3.new(0.150000006, 0.800000012, 0.150000006),VertexColor = Vector3.new(3.00000003e+015, 2.99999995e+031, 3.00000003e+015),MeshId = "http://www.roblox.com/asset/?id=1033714",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Cone,"mot",{Part0 = Cone,Part1 = Main,C0 = CFrame.new(0, 0, 0, -0.999979913, -5.95949246e-008, -1.67331933e-007, -2.38406642e-007, -0.999979019, -6.96342894e-009, 1.6922408e-007, -3.77471778e-008, 0.999985874),C1 = CFrame.new(-0.00500154495, -0.704969406, -0.00500869751, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
Cylinder = New("Part",VortexGauntlet,"Cylinder",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,Reflectance = 0.10000000149012,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.800000012, 1),CFrame = CFrame.new(1.61002088, 2.60985756, 48.3899651, -1.02815238e-006, -0.999947667, 5.55474173e-007, 0.999943912, 1.35596326e-006, -1.77016783e-008, 2.70076796e-008, -5.53580719e-007, 0.999963343),})
Mesh = New("SpecialMesh",Cylinder,"Mesh",{Scale = Vector3.new(0.200000003, 0.800000012, 0.200000003),VertexColor = Vector3.new(3.00000003e+015, 2.99999995e+031, 3.00000003e+015),MeshType = Enum.MeshType.Cylinder,})
mot = New("Motor",Cylinder,"mot",{Part0 = Cylinder,Part1 = Main,C0 = CFrame.new(0, 0, 0, 3.12910686e-007, 0.999978125, 6.96343605e-009, -0.999979019, 1.49093466e-008, -1.67331791e-007, 1.6922408e-007, -3.77471778e-008, 0.999985874),C1 = CFrame.new(-0.00500297546, -0.614966869, -0.00500869751, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.65483451, 2.53023887, 49.075016, 1.31079628e-006, -0.999882877, -0.0113237342, -0.966020584, 0.00292562018, -0.258228838, 0.258250505, 0.0109389573, -0.965978205),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart,"Mesh",{})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -8.45183479e-008, -0.966053605, 0.258256376, -0.999914229, 0.00292437896, 0.0109395888, -0.0113240639, -0.25823763, -0.966000021),C1 = CFrame.new(0.0398111343, -0.694586992, 0.680049896, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.65375209, 2.85618806, 48.9016113, 0.00494658109, -0.999882698, -0.010186431, -0.756301045, 0.00292500365, -0.654129505, 0.654131114, 0.0109393038, -0.756254077),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart,"Mesh",{})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, 0.00494546909, -0.756326914, 0.654145896, -0.99991405, 0.00292376243, 0.0109399352, -0.0101873344, -0.654151917, -0.756271124),C1 = CFrame.new(0.0387289524, -0.368632078, 0.506641388, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.420000017, 0.200000003),CFrame = CFrame.new(1.65484631, 2.12370038, 49.1781998, 0.999881506, -9.94669754e-005, -0.0113197053, -0.00292231143, -0.968337119, -0.249390081, -0.0109360376, 0.249413356, -0.96829623),BottomSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("SpecialMesh",ClawPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, 0.999912858, -0.00292107021, -0.0109366691, -0.000100865138, -0.968370259, 0.249419004, -0.0113200219, -0.249398604, -0.968318045),C1 = CFrame.new(0.0398226976, -1.10113239, 0.783233643, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(2.26175404, 2.52697635, 48.4085655, 0.21676904, 0.000153397676, -0.97616607, -0.976160765, -0.000339346559, -0.216765121, -0.000362583436, 0.999960423, 7.52870619e-005),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart,"Mesh",{})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, 0.216774523, -0.976193905, -0.00036265573, 0.000153015761, -0.000339377963, 0.999982953, -0.976196945, -0.216773853, 7.56701775e-005),C1 = CFrame.new(0.646740317, -0.697849035, 0.0135917664, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(2.10240459, 2.8600359, 48.4088364, 0.621261835, 0.000153750705, -0.783532441, -0.783529282, -0.000340023485, -0.621255815, -0.000359814498, 0.999960542, -9.07382637e-005),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart,"Mesh",{})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, 0.621280193, -0.783555269, -0.000360046863, 0.00015336879, -0.000340054947, 0.999983072, -0.783557832, -0.621278107, -9.04251865e-005),C1 = CFrame.new(0.48738873, -0.364784002, 0.0138626099, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.420000017, 0.200000003),CFrame = CFrame.new(2.34746456, 2.11641502, 48.4083405, -0.000150418913, 0.207840621, -0.978104353, 0.000342616433, -0.978098989, -0.207835644, -0.999959588, -0.000364459294, 7.50037798e-005),BottomSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("SpecialMesh",ClawPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -0.000150036911, 0.000342647952, -0.999982119, 0.207845837, -0.978132248, -0.000364528183, -0.978135228, -0.207844079, 7.53874556e-005),C1 = CFrame.new(0.732452035, -1.10841727, 0.0133666992, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.65306008, 2.53041506, 47.7222595, -0.00565980002, 0.999876678, 0.00980747957, -0.965705037, -0.00292715896, -0.259375572, -0.259334743, -0.0109386966, 0.965682745),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart,"Mesh",{})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -0.00566117326, -0.965738058, -0.259340554, 0.99990803, -0.00292591774, -0.010939328, 0.00980706606, -0.259384483, 0.96570456),C1 = CFrame.new(0.0380369425, -0.694410801, -0.672721863, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.65604961, 2.85616612, 47.8960381, -0.00937493891, 0.999876201, 0.00635162927, -0.755516708, -0.00292789866, -0.655023754, -0.654977262, -0.01093903, 0.755514741),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart,"Mesh",{})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -0.00937599409, -0.755542576, -0.654992044, 0.999907553, -0.00292665744, -0.0109396614, 0.00635065837, -0.655046165, 0.755531788),C1 = CFrame.new(0.0410267115, -0.368654013, -0.498939514, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.420000017, 0.200000003),CFrame = CFrame.new(1.65066326, 2.1240201, 47.6186333, -0.999874711, -0.00557238981, 0.00985530019, 0.00293071126, -0.968032777, -0.250539839, 0.0109357554, -0.250500113, 0.968010366),BottomSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("SpecialMesh",ClawPart,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -0.999906063, 0.00292947004, 0.0109363869, -0.00557376677, -0.968065917, -0.250505745, 0.00985489972, -0.250548452, 0.968032181),C1 = CFrame.new(0.0356398821, -1.10081267, -0.776348114, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart = New("Part",VortexGauntlet,"ClawPart",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(0.919124722, 2.53371048, 48.4086876, -0.300351858, -0.00015361057, 0.95376271, -0.953755617, 0.000337485195, -0.300355166, -0.000276322971, -0.999955058, -0.000246434589),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart,"Mesh",{})
mot = New("Motor",ClawPart,"mot",{Part0 = ClawPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -0.300362557, -0.953788638, -0.00027619407, -0.000153228655, 0.00033751654, -0.999977589, 0.953792274, -0.300364137, -0.000246802549),C1 = CFrame.new(-0.695910037, -0.691115856, 0.0137138367, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
----// Left Claw
VortexGauntlet2 = New("Model",Char,"VortexGauntlet2",{})
Main2 = New("Part",VortexGauntlet2,"Main2",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.00999999, 1.40999997, 1.02999997),CFrame = CFrame.new(1.61502337, 3.22481394, 48.3949738, 0.999984324, -6.55651093e-007, 1.94078893e-007, -6.85453415e-007, 0.999982893, -1.23327482e-008, 1.92187144e-007, 3.23780114e-008, 0.999988735),})
Mesh = New("BlockMesh",Main2,"Mesh",{})
Part1a = New("Part",VortexGauntlet2,"Part1a = N",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.14999998, 0.200000003, 1.14999998),CFrame = CFrame.new(1.61502361, 3.07982183, 48.3949699, 0.999952972, -1.99669012e-006, 5.80329356e-007, -2.02649153e-006, 0.99994868, 7.71190489e-009, 5.78437607e-007, 5.24213988e-008, 0.999966204),})
Mesh = New("BlockMesh",Part1a,"Mesh",{})
mot = New("Motor",Part1a,"mot",{Part0 = Part1a,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),C1 = CFrame.new(1.1920929e-007, -0.144994497, -3.81469727e-006, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
Part2a = New("Part",VortexGauntlet2,"Part2a",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.14999998, 0.200000003, 1.14999998),CFrame = CFrame.new(1.6150229, 3.47980165, 48.3949699, 0.999952972, -1.99669012e-006, 5.80329356e-007, -2.02649153e-006, 0.99994868, 7.71190489e-009, 5.78437607e-007, 5.24213988e-008, 0.999966204),})
Mesh = New("BlockMesh",Part2a,"Mesh",{})
mot = New("Motor",Part2a,"mot",{Part0 = Part2a,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),C1 = CFrame.new(-3.57627869e-007, 0.254992008, -3.81469727e-006, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
Part3a = New("Part",VortexGauntlet2,"Part3a",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.14999998, 0.200000003, 1.14999998),CFrame = CFrame.new(1.61502194, 3.87978125, 48.3949699, 0.999952972, -1.99669012e-006, 5.80329356e-007, -2.02649153e-006, 0.99994868, 7.71190489e-009, 5.78437607e-007, 5.24213988e-008, 0.999966204),})
Mesh = New("BlockMesh",Part3a,"Mesh",{})
mot = New("Motor",Part3a,"mot",{Part0 = Part3a,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),C1 = CFrame.new(-9.53674316e-007, 0.654978514, -3.81469727e-006, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.10669136, 2.85156226, 48.4086037, -0.686683536, -0.000153818051, 0.726891577, -0.726885498, 0.000336891768, -0.686683595, -0.000140090138, -0.999965966, -0.000342367945),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart2,"Mesh",{})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, -0.686706066, -0.726911366, -0.000139813448, -0.000153436136, 0.000336923113, -0.999988496, 0.726913393, -0.686706126, -0.000342642685),C1 = CFrame.new(-0.50834024, -0.373258352, 0.0136299133, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.420000017, 0.200000003),CFrame = CFrame.new(0.79824549, 2.13190103, 48.4086189, 0.000150710199, -0.291629434, 0.956479728, -0.000334032346, -0.956475139, -0.291631371, 0.999964535, -0.000275910104, -0.00024051439),BottomSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("SpecialMesh",ClawPart2,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.000150328196, -0.000334063574, 0.999987066, -0.291639835, -0.956508279, -0.000275784521, 0.956509411, -0.291640043, -0.000240883426),C1 = CFrame.new(-0.816791415, -1.09293222, 0.0136451721, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
Cone2 = New("Part",VortexGauntlet2,"Cone2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,Reflectance = 0.10000000149012,FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(1, 0.800000012, 1),CFrame = CFrame.new(1.61002243, 2.51985645, 48.3899651, -0.999948561, 1.10265523e-006, 5.55474173e-007, 1.2814628e-006, -0.999944806, -1.77016783e-008, -5.53581231e-007, -2.70076601e-008, 0.999963343),})
Mesh = New("SpecialMesh",Cone2,"Mesh",{Scale = Vector3.new(0.150000006, 0.800000012, 0.150000006),VertexColor = Vector3.new(3.00000003e+015, 2.99999995e+031, 3.00000003e+015),MeshId = "http://www.roblox.com/asset/?id=1033714",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Cone2,"mot",{Part0 = Cone2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, -0.999979913, -5.95949246e-008, -1.67331933e-007, -2.38406642e-007, -0.999979019, -6.96342894e-009, 1.6922408e-007, -3.77471778e-008, 0.999985874),C1 = CFrame.new(-0.00500154495, -0.704969406, -0.00500869751, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
Cylinder2 = New("Part",VortexGauntlet2,"Cylinder",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,Reflectance = 0.10000000149012,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.800000012, 1),CFrame = CFrame.new(1.61002088, 2.60985756, 48.3899651, -1.02815238e-006, -0.999947667, 5.55474173e-007, 0.999943912, 1.35596326e-006, -1.77016783e-008, 2.70076796e-008, -5.53580719e-007, 0.999963343),})
Mesh = New("SpecialMesh",Cylinder2,"Mesh",{Scale = Vector3.new(0.200000003, 0.800000012, 0.200000003),VertexColor = Vector3.new(3.00000003e+015, 2.99999995e+031, 3.00000003e+015),MeshType = Enum.MeshType.Cylinder,})
mot = New("Motor",Cylinder2,"mot",{Part0 = Cylinder2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 3.12910686e-007, 0.999978125, 6.96343605e-009, -0.999979019, 1.49093466e-008, -1.67331791e-007, 1.6922408e-007, -3.77471778e-008, 0.999985874),C1 = CFrame.new(-0.00500297546, -0.614966869, -0.00500869751, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.65483451, 2.53023887, 49.075016, 1.31079628e-006, -0.999882877, -0.0113237342, -0.966020584, 0.00292562018, -0.258228838, 0.258250505, 0.0109389573, -0.965978205),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart2,"Mesh",{})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, -8.45183479e-008, -0.966053605, 0.258256376, -0.999914229, 0.00292437896, 0.0109395888, -0.0113240639, -0.25823763, -0.966000021),C1 = CFrame.new(0.0398111343, -0.694586992, 0.680049896, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.65375209, 2.85618806, 48.9016113, 0.00494658109, -0.999882698, -0.010186431, -0.756301045, 0.00292500365, -0.654129505, 0.654131114, 0.0109393038, -0.756254077),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart2,"Mesh",{})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.00494546909, -0.756326914, 0.654145896, -0.99991405, 0.00292376243, 0.0109399352, -0.0101873344, -0.654151917, -0.756271124),C1 = CFrame.new(0.0387289524, -0.368632078, 0.506641388, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.420000017, 0.200000003),CFrame = CFrame.new(1.65484631, 2.12370038, 49.1781998, 0.999881506, -9.94669754e-005, -0.0113197053, -0.00292231143, -0.968337119, -0.249390081, -0.0109360376, 0.249413356, -0.96829623),BottomSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("SpecialMesh",ClawPart2,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.999912858, -0.00292107021, -0.0109366691, -0.000100865138, -0.968370259, 0.249419004, -0.0113200219, -0.249398604, -0.968318045),C1 = CFrame.new(0.0398226976, -1.10113239, 0.783233643, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(2.26175404, 2.52697635, 48.4085655, 0.21676904, 0.000153397676, -0.97616607, -0.976160765, -0.000339346559, -0.216765121, -0.000362583436, 0.999960423, 7.52870619e-005),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart2,"Mesh",{})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.216774523, -0.976193905, -0.00036265573, 0.000153015761, -0.000339377963, 0.999982953, -0.976196945, -0.216773853, 7.56701775e-005),C1 = CFrame.new(0.646740317, -0.697849035, 0.0135917664, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(2.10240459, 2.8600359, 48.4088364, 0.621261835, 0.000153750705, -0.783532441, -0.783529282, -0.000340023485, -0.621255815, -0.000359814498, 0.999960542, -9.07382637e-005),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart2,"Mesh",{})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.621280193, -0.783555269, -0.000360046863, 0.00015336879, -0.000340054947, 0.999983072, -0.783557832, -0.621278107, -9.04251865e-005),C1 = CFrame.new(0.48738873, -0.364784002, 0.0138626099, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.420000017, 0.200000003),CFrame = CFrame.new(2.34746456, 2.11641502, 48.4083405, -0.000150418913, 0.207840621, -0.978104353, 0.000342616433, -0.978098989, -0.207835644, -0.999959588, -0.000364459294, 7.50037798e-005),BottomSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("SpecialMesh",ClawPart2,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, -0.000150036911, 0.000342647952, -0.999982119, 0.207845837, -0.978132248, -0.000364528183, -0.978135228, -0.207844079, 7.53874556e-005),C1 = CFrame.new(0.732452035, -1.10841727, 0.0133666992, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.65306008, 2.53041506, 47.7222595, -0.00565980002, 0.999876678, 0.00980747957, -0.965705037, -0.00292715896, -0.259375572, -0.259334743, -0.0109386966, 0.965682745),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart2,"Mesh",{})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, -0.00566117326, -0.965738058, -0.259340554, 0.99990803, -0.00292591774, -0.010939328, 0.00980706606, -0.259384483, 0.96570456),C1 = CFrame.new(0.0380369425, -0.694410801, -0.672721863, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(1.65604961, 2.85616612, 47.8960381, -0.00937493891, 0.999876201, 0.00635162927, -0.755516708, -0.00292789866, -0.655023754, -0.654977262, -0.01093903, 0.755514741),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart2,"Mesh",{})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, -0.00937599409, -0.755542576, -0.654992044, 0.999907553, -0.00292665744, -0.0109396614, 0.00635065837, -0.655046165, 0.755531788),C1 = CFrame.new(0.0410267115, -0.368654013, -0.498939514, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.420000017, 0.200000003),CFrame = CFrame.new(1.65066326, 2.1240201, 47.6186333, -0.999874711, -0.00557238981, 0.00985530019, 0.00293071126, -0.968032777, -0.250539839, 0.0109357554, -0.250500113, 0.968010366),BottomSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("SpecialMesh",ClawPart2,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, -0.999906063, 0.00292947004, 0.0109363869, -0.00557376677, -0.968065917, -0.250505745, 0.00985489972, -0.250548452, 0.968032181),C1 = CFrame.new(0.0356398821, -1.10081267, -0.776348114, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
ClawPart2 = New("Part",VortexGauntlet2,"ClawPart2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999411, 0.200000003, 0.200000003),CFrame = CFrame.new(0.919124722, 2.53371048, 48.4086876, -0.300351858, -0.00015361057, 0.95376271, -0.953755617, 0.000337485195, -0.300355166, -0.000276322971, -0.999955058, -0.000246434589),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,})
Mesh = New("BlockMesh",ClawPart2,"Mesh",{})
mot = New("Motor",ClawPart2,"mot",{Part0 = ClawPart2,Part1 = Main2,C0 = CFrame.new(0, 0, 0, -0.300362557, -0.953788638, -0.00027619407, -0.000153228655, 0.00033751654, -0.999977589, 0.953792274, -0.300364137, -0.000246802549),C1 = CFrame.new(-0.695910037, -0.691115856, 0.0137138367, 0.999984324, -6.85453415e-007, 1.92187144e-007, -6.55651093e-007, 0.999982893, 3.23780114e-008, 1.94078893e-007, -1.23327482e-008, 0.999988735),})
----// RightLegBrace
RightLegBrace = New("Model",Char,"RightLegBrace",{})
Latch = New("Part",RightLegBrace,"Latch",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.00999999, 1.40999997, 1.02999997),CFrame = CFrame.new(8.6150198, 1.12481403, 33.2949753, 1, 6.85464272e-007, -1.921902e-007, -6.85464215e-007, 1, -3.23786935e-008, 1.92190171e-007, 3.2378825e-008, 1)})
Mesh = New("BlockMesh",Latch,"Mesh",{})
Brace1 = New("Part",RightLegBrace,"Brace1",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08000004, 0.200000003, 1.08000004),CFrame = CFrame.new(8.61502171, 1.92481399, 33.2949753, 1, 6.85464329e-007, -1.921902e-007, -6.85464158e-007, 1, -3.23786935e-008, 1.92190171e-007, 3.2378825e-008, 1),})
Mesh = New("BlockMesh",Brace1,"Mesh",{})
mot = New("Motor",Brace1,"mot",{Part0 = Brace1,Part1 = Latch,C0 = CFrame.new(0, 0, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),C1 = CFrame.new(9.53674316e-007, 0.799999952, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),})
Brace2 = New("Part",RightLegBrace,"Brace2",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08000004, 0.200000003, 1.08000004),CFrame = CFrame.new(8.61501884, 0.324813962, 33.2949753, 1, 6.85464329e-007, -1.921902e-007, -6.85464158e-007, 1, -3.23786935e-008, 1.92190171e-007, 3.2378825e-008, 1),})
Mesh = New("BlockMesh",Brace2,"Mesh",{})
mot = New("Motor",Brace2,"mot",{Part0 = Brace2,Part1 = Latch,C0 = CFrame.new(0, 0, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),C1 = CFrame.new(0, -0.800000072, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),})
Brace3 = New("Part",RightLegBrace,"Brace3",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08000004, 0.200000003, 1.08000004),CFrame = CFrame.new(8.61501884, 1.1148138, 33.2949753, 1, 6.85464329e-007, -1.921902e-007, -6.85464158e-007, 1, -3.23786935e-008, 1.92190171e-007, 3.2378825e-008, 1),})
Mesh = New("BlockMesh",Brace3,"Mesh",{})
mot = New("Motor",Brace3,"mot",{Part0 = Brace3,Part1 = Latch,C0 = CFrame.new(0, 0, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),C1 = CFrame.new(-9.53674316e-007, -0.0100002289, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),})
----// LeftLegBrace
LeftLegBrace2 = New("Model",Char,"LeftLegBrace",{})
Latcha = New("Part",LeftLegBrace2,"Latcha",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.00999999, 1.40999997, 1.02999997),CFrame = CFrame.new(8.6150198, 1.12481403, 33.2949753, 1, 6.85464272e-007, -1.921902e-007, -6.85464215e-007, 1, -3.23786935e-008, 1.92190171e-007, 3.2378825e-008, 1)})
Mesh = New("BlockMesh",Latcha,"Mesh",{})
Brace1a = New("Part",LeftLegBrace2,"Brace1a",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08000004, 0.200000003, 1.08000004),CFrame = CFrame.new(8.61502171, 1.92481399, 33.2949753, 1, 6.85464329e-007, -1.921902e-007, -6.85464158e-007, 1, -3.23786935e-008, 1.92190171e-007, 3.2378825e-008, 1),})
Mesh = New("BlockMesh",Brace1a,"Mesh",{})
mot = New("Motor",Brace1a,"mot",{Part0 = Brace1a,Part1 = Latcha,C0 = CFrame.new(0, 0, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),C1 = CFrame.new(9.53674316e-007, 0.799999952, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),})
Brace2a = New("Part",LeftLegBrace2,"Brace2a",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08000004, 0.200000003, 1.08000004),CFrame = CFrame.new(8.61501884, 0.324813962, 33.2949753, 1, 6.85464329e-007, -1.921902e-007, -6.85464158e-007, 1, -3.23786935e-008, 1.92190171e-007, 3.2378825e-008, 1),})
Mesh = New("BlockMesh",Brace2a,"Mesh",{})
mot = New("Motor",Brace2a,"mot",{Part0 = Brace2a,Part1 = Latcha,C0 = CFrame.new(0, 0, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),C1 = CFrame.new(0, -0.800000072, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),})
Brace3a = New("Part",LeftLegBrace2,"Brace3a",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08000004, 0.200000003, 1.08000004),CFrame = CFrame.new(8.61501884, 1.1148138, 33.2949753, 1, 6.85464329e-007, -1.921902e-007, -6.85464158e-007, 1, -3.23786935e-008, 1.92190171e-007, 3.2378825e-008, 1),})
Mesh = New("BlockMesh",Brace3a,"Mesh",{})
mot = New("Motor",Brace3a,"mot",{Part0 = Brace3a,Part1 = Latcha,C0 = CFrame.new(0, 0, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),C1 = CFrame.new(-9.53674316e-007, -0.0100002289, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),})
----// Exo Spine
Chest = New("Model",Char,"Chest",{})
BackLatch = New("Part",Chest,"BackLatch",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.Metal,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 2, 1),CFrame = CFrame.new(-2.49994969, 3.10042095, 48.2739372, 0.99999994, -4.3300206e-005, -5.97238541e-005, 4.33037421e-005, 1, 5.92252691e-005, 5.97238541e-005, -5.9227852e-005, 0.99999994),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.300000072, 1.37500012, 0.200000003),CFrame = CFrame.new(-2.49999189, 2.9973228, 48.8550034, 0.999999881, -4.6838089e-012, 2.56477506e-009, -4.6838089e-012, 1, 0, 2.56477506e-009, 0, 0.999999881),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = BackLatch,C1 = CFrame.new(-1.1920929e-005, -0.103132486, 0.581058502, 0.99999994, 4.33037421e-005, 5.97238541e-005, -4.3300206e-005, 1, -5.9227852e-005, -5.97238541e-005, 5.92252691e-005, 0.99999994),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.Neon,Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.500000119, 0.975000024, 0.300000042),CFrame = CFrame.new(-2.49999166, 3.19728184, 48.8549995, 0.999999881, -4.6838089e-012, 2.56477506e-009, -4.6838089e-012, 1, 0, 2.56477506e-009, 0, 0.999999881),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = BackLatch,C1 = CFrame.new(-3.09944153e-006, 0.0968265533, 0.581069946, 0.99999994, 4.33037421e-005, 5.97238541e-005, -4.3300206e-005, 1, -5.9227852e-005, -5.97238541e-005, 5.92252691e-005, 0.99999994),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.700000048, 0.774999976, 0.300000042),CFrame = CFrame.new(-2.49999166, 3.59736109, 48.9049988, 0.999999881, -4.6838089e-012, 2.56477506e-009, -4.6838089e-012, 1, 0, 2.56477506e-009, 0, 0.999999881),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = BackLatch,C1 = CFrame.new(1.71661377e-005, 0.496902704, 0.631092072, 0.99999994, 4.33037421e-005, 5.97238541e-005, -4.3300206e-005, 1, -5.9227852e-005, -5.97238541e-005, 5.92252691e-005, 0.99999994),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.500000119, 0.300000042, 0.300000042),CFrame = CFrame.new(-2.49999189, 2.20982575, 48.8549995, 0.999999881, -4.6838089e-012, 2.56477506e-009, -4.6838089e-012, 1, 0, 2.56477506e-009, 0, 0.999999881),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = BackLatch,C1 = CFrame.new(-4.60147858e-005, -0.89062953, 0.581008911, 0.99999994, 4.33037421e-005, 5.97238541e-005, -4.3300206e-005, 1, -5.9227852e-005, -5.97238541e-005, 5.92252691e-005, 0.99999994),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.Neon,Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.24999997),CFrame = CFrame.new(-2.51000166, 2.52982283, 49.0700035, 0.999999881, -4.6838089e-012, 2.56477506e-009, -4.6838089e-012, 1, 0, 2.56477506e-009, 0, 0.999999881),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = BackLatch,C1 = CFrame.new(-0.0100290775, -0.570644855, 0.796031952, 0.99999994, 4.33037421e-005, 5.97238541e-005, -4.3300206e-005, 1, -5.9227852e-005, -5.97238541e-005, 5.92252691e-005, 0.99999994),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.Neon,Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.379999995),CFrame = CFrame.new(-2.51000142, 2.61388636, 49.3341675, 0.999999881, -1.23509381e-009, 2.24099495e-009, -4.6838089e-012, 0.877733231, 0.47914964, 2.56477506e-009, -0.47914958, 0.877733111),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = BackLatch,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.877733231, -0.47914964, 0, 0.47914964, 0.877733231),C1 = CFrame.new(-0.0100095272, -0.486596823, 1.06020355, 0.99999994, 4.33037421e-005, 5.97238541e-005, -4.3300206e-005, 1, -5.9227852e-005, -5.97238541e-005, 5.92252691e-005, 0.99999994),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.Neon,Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.870000005),CFrame = CFrame.new(-2.51000142, 3.09982252, 49.4699936, 0.999999881, -2.56477506e-009, -5.71143133e-012, -4.6838089e-012, -4.37103154e-008, 1, 2.56477506e-009, -0.999999881, -4.37103154e-008),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = BackLatch,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008),C1 = CFrame.new(-0.00998044014, -0.000668764114, 1.19605637, 0.99999994, 4.33037421e-005, 5.97238541e-005, -4.3300206e-005, 1, -5.9227852e-005, -5.97238541e-005, 5.92252691e-005, 0.99999994),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.Neon,Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.379999995),CFrame = CFrame.new(-2.51000142, 3.59388614, 49.3341675, 0.999999881, 1.22417987e-009, 2.25190888e-009, -4.6838089e-012, 0.877732217, -0.479151487, 2.56477506e-009, 0.479151428, 0.877732098),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = BackLatch,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.877732217, 0.479151487, 0, -0.479151487, 0.877732217),C1 = CFrame.new(-0.0099670887, 0.493402719, 1.06026077, 0.99999994, 4.33037421e-005, 5.97238541e-005, -4.3300206e-005, 1, -5.9227852e-005, -5.97238541e-005, 5.92252691e-005, 0.99999994),})
Part = New("Part",Chest,"Part",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.Neon,Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.24999997),CFrame = CFrame.new(-2.51000142, 3.67982244, 49.0600014, 0.999999881, -4.6838089e-012, 2.56477506e-009, -4.6838089e-012, 1, 0, 2.56477506e-009, 0, 0.999999881),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 0.5, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = BackLatch,C1 = CFrame.new(-0.00997972488, 0.579355478, 0.78609848, 0.99999994, 4.33037421e-005, 5.97238541e-005, -4.3300206e-005, 1, -5.9227852e-005, -5.97238541e-005, 5.92252691e-005, 0.99999994),})
----// Battery Pack
BatteryPack = New("Model",Char,"BatteryPack",{})
Inner = New("Part",BatteryPack,"Inner",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(5.1000185, 1.11981344, 33.3099785, 1, 6.85464386e-007, -1.92190214e-007, -6.85464158e-007, 1, -3.23786935e-008, 1.92190157e-007, 3.23788285e-008, 1),})
Mesh = New("SpecialMesh",Inner,"Mesh",{Scale = Vector3.new(0.5, 0.850000024, 0.5),MeshId = "rbxassetid://9756362",MeshType = Enum.MeshType.FileMesh,})
Top = New("Part",BatteryPack,"Top",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08000004, 0.200000003, 1.08000004),CFrame = CFrame.new(5.08502388, 1.87980604, 33.2949829, 1, 2.02658885e-006, -5.78463244e-007, -2.02658839e-006, 1, -5.24246104e-008, 5.7846313e-007, 5.24257899e-008, 1),})
Mesh = New("BlockMesh",Top,"Mesh",{})
mot = New("Motor",Top,"mot",{Part0 = Top,Part1 = Inner,C0 = CFrame.new(0, 0, 0, 1, -2.02658862e-006, 5.7846313e-007, 2.02658862e-006, 1, 5.24257864e-008, -5.78463244e-007, -5.24246104e-008, 1),C1 = CFrame.new(-0.0149950981, 0.759992599, -0.014995575, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),})
Outer = New("Part",BatteryPack,"Outer",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.SmoothPlastic,Transparency = 0.60000002384186,Transparency = 0.60000002384186,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.02999997, 1.40999997, 1.02999997),CFrame = CFrame.new(5.08501816, 1.1248138, 33.2949753, 1, 6.85464272e-007, -1.921902e-007, -6.85464215e-007, 1, -3.23786935e-008, 1.92190171e-007, 3.2378825e-008, 1),})
Mesh = New("BlockMesh",Outer,"Mesh",{})
mot = New("Motor",Outer,"mot",{Part0 = Outer,Part1 = Inner,C0 = CFrame.new(0, 0, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),C1 = CFrame.new(-0.0150003433, 0.00500035286, -0.0150032043, 1, -6.85464215e-007, 1.92190157e-007, 6.85464329e-007, 1, 3.23788285e-008, -1.92190214e-007, -3.23786935e-008, 1),})
Bottom = New("Part",BatteryPack,"Bottom",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08000004, 0.200000003, 1.08000004),CFrame = CFrame.new(5.08501768, 0.364813805, 33.2949753, 1, 6.85464499e-007, -1.92190228e-007, -6.85463988e-007, 1, -3.237869e-008, 1.92190143e-007, 3.23788285e-008, 1),})
Mesh = New("BlockMesh",Bottom,"Mesh",{})
mot = New("Motor",Bottom,"mot",{Part0 = Bottom,Part1 = Inner,C0 = CFrame.new(0, 0, 0, 1, -6.85464215e-007, 1.92190171e-007, 6.85464272e-007, 1, 3.2378825e-008, -1.921902e-007, -3.23786935e-008, 1),C1 = CFrame.new(-0.0150003433, -0.754999638, -0.0150032043, 1, -6.85464158e-007, 1.92190157e-007, 6.85464386e-007, 1, 3.23788285e-008, -1.92190214e-007, -3.23786935e-008, 1),})
BatteryPack:MoveTo(CFrame.new(0,6,0).p)
----// Helmet
Helmet = New("Model",Char,"Helmet",{})
HeadHandle = New("Part",Helmet,"HeadHandle",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.20000005, 1.20000005, 1.20000005),CFrame = CFrame.new(-39.1249886, 4.49498367, 48.3950195, 0.999969244, -3.05533376e-013, -1.83186799e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.80966353e-014, -3.08556781e-015, 0.999989748),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.20000005, 1.20000005),CFrame = CFrame.new(-39.7349472, 4.49498367, 48.3950195, 0.999943495, -5.61309246e-013, -3.3638975e-014, -5.61309246e-013, 0.999943495, -5.66873666e-015, -3.34169372e-014, -5.66873666e-015, 0.999981165),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999986053, -1.38555291e-013, -8.21562921e-015, -1.38555291e-013, 0.999986053, -1.39928488e-015, -8.43767296e-015, -1.39928477e-015, 0.999995351),C1 = CFrame.new(-0.609977722, 0, 0, 0.999988198, -1.17239551e-013, -6.88338275e-015, -1.17239551e-013, 0.999988198, -1.18401198e-015, -7.10542736e-015, -1.18401188e-015, 0.999996066),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.20000005, 1.20000005),CFrame = CFrame.new(-39.1349983, 5.06996679, 48.3950157, -2.98000771e-008, 0.999943316, -3.3638975e-014, -0.999943316, -2.98011997e-008, -5.66873666e-015, 5.66873666e-015, -3.34169304e-014, 0.999981165),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, -2.98017682e-008, -0.999985874, 1.39928488e-015, 0.999985874, -2.98020453e-008, -8.21562751e-015, -8.43767296e-015, -1.39928477e-015, 0.999995351),C1 = CFrame.new(-0.0100097656, 0.575000763, -3.81469727e-006, 0.999988198, -1.17239551e-013, -6.88338275e-015, -1.17239551e-013, 0.999988198, -1.18401198e-015, -7.10542736e-015, -1.18401188e-015, 0.999996066),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.20000005, 1.20000005),CFrame = CFrame.new(-39.1349983, 3.92003059, 48.3950157, -2.98000771e-008, 0.999943316, -3.3638975e-014, -0.999943316, -2.98011997e-008, -5.66873666e-015, 5.66873666e-015, -3.34169304e-014, 0.999981165),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, -2.98017682e-008, -0.999985874, 1.39928488e-015, 0.999985874, -2.98020453e-008, -8.21562751e-015, -8.43767296e-015, -1.39928477e-015, 0.999995351),C1 = CFrame.new(-0.0100097656, -0.574970722, -3.81469727e-006, 0.999988198, -1.17239551e-013, -6.88338275e-015, -1.17239551e-013, 0.999988198, -1.18401198e-015, -7.10542736e-015, -1.18401188e-015, 0.999996066),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.20000005, 1.20000005),CFrame = CFrame.new(-38.5600357, 4.49499846, 48.3950157, 0.999943495, -5.61309246e-013, -3.3638975e-014, -5.61309246e-013, 0.999943495, -5.66873666e-015, -3.34169372e-014, -5.66873666e-015, 0.999981165),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999986053, -1.38555291e-013, -8.21562921e-015, -1.38555291e-013, 0.999986053, -1.39928488e-015, -8.43767296e-015, -1.39928477e-015, 0.999995351),C1 = CFrame.new(0.564971924, 1.47819519e-005, -3.81469727e-006, 0.999988198, -1.17239551e-013, -6.88338275e-015, -1.17239551e-013, 0.999988198, -1.18401198e-015, -7.10542736e-015, -1.18401188e-015, 0.999996066),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.17000008, 0.470000058),CFrame = CFrame.new(-39.1399956, 4.17001486, 47.8200264, 1.63953751e-009, 0.999954045, -2.18817728e-008, 4.59242587e-015, -2.18826859e-008, -0.999954045, -0.999984682, 1.63953329e-009, 4.59242672e-015),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 1.63958203e-009, 3.22914132e-016, -0.999998868, 0.999996603, -2.18831939e-008, 1.63958169e-009, -2.18831264e-008, -0.999996603, 3.22914185e-016),C1 = CFrame.new(-0.015007019, -0.324978828, -0.575000763, 0.999988198, -1.17239551e-013, -6.88338275e-015, -1.17239551e-013, 0.999988198, -1.18401198e-015, -7.10542736e-015, -1.18401188e-015, 0.999996066),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(PrimaryColor),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.20000005, 1.20000005),CFrame = CFrame.new(-39.1349983, 4.49499846, 48.9700012, 1.6395757e-009, 0.999990523, -2.18829328e-008, 9.32859196e-016, -2.18831211e-008, -0.999990523, -0.999996841, 1.63957481e-009, 9.32859408e-016),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 1.6395757e-009, 9.32859196e-016, -0.999996841, 0.999990523, -2.18831211e-008, 1.63957481e-009, -2.18829328e-008, -0.999990523, 9.32859408e-016),C1 = CFrame.new(-0.0100097656, 1.47819519e-005, 0.574989319, 0.999988198, -1.17239551e-013, -6.88338275e-015, -1.17239551e-013, 0.999988198, -1.18401198e-015, -7.10542736e-015, -1.18401188e-015, 0.999996066),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.20000005, 0.200000003),CFrame = CFrame.new(-39.1349945, 4.97495842, 47.8200378, 1.63948666e-009, 0.999905407, -2.18802239e-008, 9.47157154e-015, -2.18821032e-008, -0.999905407, -0.999968469, 1.63947811e-009, 9.47157324e-015),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 1.63955105e-009, 3.30083467e-015, -0.999988973, 0.999966919, -2.18828387e-008, 1.63954805e-009, -2.18821814e-008, -0.999966919, 3.30083509e-015),C1 = CFrame.new(-0.0100059509, 0.479989529, -0.574989319, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.219999999),CFrame = CFrame.new(-38.5950432, 4.9849577, 47.8200378, 1.63948777e-009, 0.99990648, -2.18802576e-008, 9.36394669e-015, -2.18821157e-008, -0.99990648, -0.999968827, 1.63947933e-009, 9.36394838e-015),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 1.63955216e-009, 3.19320092e-015, -0.999989331, 0.999967992, -2.18828511e-008, 1.63954927e-009, -2.18822152e-008, -0.999967992, 3.19320156e-015),C1 = CFrame.new(0.529960632, 0.489989281, -0.574989319, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(SecondaryColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.219999999),CFrame = CFrame.new(-39.7049294, 4.9849577, 47.8200378, 1.63948777e-009, 0.99990648, -2.18802576e-008, 9.36394669e-015, -2.18821157e-008, -0.99990648, -0.999968827, 1.63947933e-009, 9.36394838e-015),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 1.63955216e-009, 3.19320092e-015, -0.999989331, 0.999967992, -2.18828511e-008, 1.63954927e-009, -2.18822152e-008, -0.999967992, 3.19320156e-015),C1 = CFrame.new(-0.579959869, 0.489989281, -0.574989319, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.219999999),CFrame = CFrame.new(-38.5600548, 4.98495245, 49.0399933, 0.99990648, -5.5407183e-014, -2.02039434e-008, -2.02057997e-008, 3.05623193e-010, -0.99990648, -5.5175611e-014, 0.999968767, 3.0566083e-010),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999967992, -2.02064321e-008, -1.87625895e-014, -1.89941751e-014, 3.05648173e-010, 0.999989271, -2.02057979e-008, -0.999967992, 3.05660941e-010),C1 = CFrame.new(0.56495285, 0.489984035, 0.644981384, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.219999999),CFrame = CFrame.new(-38.5600548, 4.962955, 49.2099915, 0.99990648, -1.0504676e-009, -5.66523439e-010, -8.17672263e-010, -0.255145043, -0.966806114, 8.71077599e-010, 0.966866374, -0.255160898),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999967992, -8.1711149e-010, 8.71131889e-010, -1.05065279e-009, -0.255160719, 0.966886163, -5.67158376e-010, -0.966865599, -0.255166143),C1 = CFrame.new(0.56495285, 0.46798563, 0.814979553, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.219999999),CFrame = CFrame.new(-38.5600548, 4.91495943, 49.3999825, 0.99990648, -1.0504676e-009, -5.66523439e-010, -8.17672263e-010, -0.255145043, -0.966806114, 8.71077599e-010, 0.966866374, -0.255160898),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999967992, -8.1711149e-010, 8.71131889e-010, -1.05065279e-009, -0.255160719, 0.966886163, -5.67158376e-010, -0.966865599, -0.255166143),C1 = CFrame.new(0.56495285, 0.419988632, 1.00497437, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.219999999),CFrame = CFrame.new(-39.7349434, 4.98495245, 49.0399933, 0.99990648, -5.5407183e-014, -2.02039434e-008, -2.02057997e-008, 3.05623193e-010, -0.99990648, -5.5175611e-014, 0.999968767, 3.0566083e-010),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999967992, -2.02064321e-008, -1.87625895e-014, -1.89941751e-014, 3.05648173e-010, 0.999989271, -2.02057979e-008, -0.999967992, 3.05660941e-010),C1 = CFrame.new(-0.609973907, 0.489984035, 0.644981384, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.219999999),CFrame = CFrame.new(-39.7349434, 4.962955, 49.2099915, 0.99990648, -1.0504676e-009, -5.66523439e-010, -8.17672263e-010, -0.255145043, -0.966806114, 8.71077599e-010, 0.966866374, -0.255160898),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999967992, -8.1711149e-010, 8.71131889e-010, -1.05065279e-009, -0.255160719, 0.966886163, -5.67158376e-010, -0.966865599, -0.255166143),C1 = CFrame.new(-0.609973907, 0.46798563, 0.814979553, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.219999999),CFrame = CFrame.new(-39.7349434, 4.91495943, 49.3999825, 0.99990648, -1.0504676e-009, -5.66523439e-010, -8.17672263e-010, -0.255145043, -0.966806114, 8.71077599e-010, 0.966866374, -0.255160898),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999967992, -8.1711149e-010, 8.71131889e-010, -1.05065279e-009, -0.255160719, 0.966886163, -5.67158376e-010, -0.966865599, -0.255166143),C1 = CFrame.new(-0.609973907, 0.419988632, 1.00497437, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.879999995, 0.819999933),CFrame = CFrame.new(-39.1250114, 5.37822723, 49.0352859, 0.99990648, -8.72485362e-010, -5.28140465e-012, 7.17916893e-010, 0.828282356, -0.560144186, 4.93058316e-010, 0.560179174, 0.828333974),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999967992, 7.18572146e-010, 4.93104835e-010, -8.72012407e-010, 0.828333259, 0.560190618, -5.59388126e-012, -0.560178638, 0.828350902),C1 = CFrame.new(-2.28881836e-005, 0.883270741, 0.640274048, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
Wall = New("Part",Helmet,"Wall",{BrickColor = BrickColor.new(ThirdColor),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.899999976, 0.919999957),CFrame = CFrame.new(-39.1250038, 4.71387339, 48.6822853, 0.99990648, -1.0504676e-009, -5.66523439e-010, -8.17672263e-010, -0.255145043, -0.966806114, 8.71077599e-010, 0.966866374, -0.255160898),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Wall,"Mesh",{Scale = Vector3.new(0.25, 1, 1),})
mot = New("Motor",Wall,"mot",{Part0 = Wall,Part1 = HeadHandle,C0 = CFrame.new(0, 0, 0, 0.999967992, -8.1711149e-010, 8.71131889e-010, -1.05065279e-009, -0.255160719, 0.966886163, -5.67158376e-010, -0.966865599, -0.255166143),C1 = CFrame.new(-1.52587891e-005, 0.218896389, 0.287269592, 0.999969244, -3.05533376e-013, -1.80966353e-014, -3.05533376e-013, 0.999969244, -3.08556781e-015, -1.83186799e-014, -3.08556781e-015, 0.999989748),})
----// End

rad = function(Int)
return math.rad(tonumber(Int))
end;
sin = function(Int)
return math.sin(tonumber(Int))
end;
cos = function(Int)
return math.cos(tonumber(Int))
end;
Angles = function(X,Y,Z)
return CFrame.Angles(X,Y,Z);
end;
Euler = function(X,Y,Z)
return CFrame.fromEulerAnglesXYZ(X,Y,Z);
end;
CF = function(X,Y,Z)
return CFrame.new(X,Y,Z);
end;

--// Suit Welds
local HandleWeld = Weld(rarm,Main,Angles(0,0,0)*CF(0,.35,0))
local HandleWeld2 = Weld(larm,Main2,Angles(0,0,0)*CF(0,.35,0))
local BraceWeld = Weld(rleg,Latch,CF(0,0,0))
local BraceWeld2 = Weld(lleg,Latcha,CF(0,0,0))
local ExoWeld = Weld(torso,BackLatch,CF(0,0,0))
local BatteryWeld = Weld(Outer,BackLatch,CF(0,0,1.775))
local InnerWeld = Weld(Inner,Outer,CF(0,0,0))
local TopW,BottomW = Weld(Top,Outer,CF(0,-.75,0)),Weld(Bottom,Outer,CF(0,.75,0))
local HelmetWeld = Weld(HeadHandle,hed,CF(0,.05,0))
--\\ Suit Welds

dmg=function(hit,Damage,Knockback,angle)
	local mana = 0
        if DebounceHit == false then
        DebounceHit = true
        coroutine.resume(coroutine.create(function()
        wait(0.1)
        DebounceHit = false
        end))
        if hit.Parent==nil then
                return
        end
        --CPlayer=Bin
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                if mana < 400 then
                mana = mana + math.random(5,15)  
                end
                if mana > 400 then
                mana = 400
                end
                Damage=Damage
--[[            if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                      print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        --CRIT=true
                        Damage=Damage*3
--[[                    Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        --critsound(2)
       
                end
                if NO_OP == true then
                Damage = h.MaxHealth / Damage
                else
                Damage = Damage+math.random(0,9)
                end
                --warn('dmged')
--              Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h.Health = h.Health - Damage
               -- showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--              vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=torso.CFrame.lookVector*Knockback+torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.1)
                r=Instance.new("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                r.angularvelocity= angle or Vector3.new(0,0,0)
                r.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(r,.5)
                                c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Plr
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                         return h
                --CRIT=false
                --hitDeb=true
                --AttackPos=6
        end
        end
end

function getAllParts(from)
    local t = {}
    function getParts(where)
        for i, v in pairs(where:children()) do
            if v:IsA("BasePart") then
                if v.Parent ~= Char and v.Parent.Parent ~= Char then
                    table.insert(t, v)
                end
            end
            getParts(v)
        end
    end
    getParts(workspace)
    return t
end

Search = function(Object, ClassName, Function)
for index,obj in next, Object:children() do
if obj:IsA(tostring(ClassName)) then
Function(obj)
end
end
end

TransClone = function(Trans)
local md = Char
md.Archivable = true
local md2 = md:Clone()
md2.Parent = workspace
pcall(function()
md2.BodyColors:Destroy()
end)
md.Archivable=false
Search(md2,'Part',function(P)
P.Transparency = .9
P.Material = 'Neon' 
P.BrickColor = BrickColor.new('Teal') 
end)

Search(md2['VortexGauntlet'],'Part',function(P)
P.Transparency = Trans
P.Material = 'Neon' 
P.BrickColor = BrickColor.new('Teal') 
end)

Search(md2['VortexGauntlet2'],'Part',function(P)
P.Transparency = Trans
P.Material = 'Neon' 
P.BrickColor = BrickColor.new('Teal') 
end)

Search(md2['RightLegBrace'],'Part',function(P)
P.Transparency = Trans 
P.Material = 'Neon' 
P.BrickColor = BrickColor.new('Teal') 
end)

Search(md2['LeftLegBrace'],'Part',function(P)
P.Transparency = Trans 
P.Material = 'Neon' 
P.BrickColor = BrickColor.new('Teal') 
end)

Search(md2['Chest'],'Part',function(P)
P.Transparency = Trans 
P.Material = 'Neon' 
P.BrickColor = BrickColor.new('Teal') 
end)

Search(md2['BatteryPack'],'Part',function(P)
P.Transparency = Trans
P.Material = 'Neon' 
P.BrickColor = BrickColor.new('Teal') 
end)

Search(md2['Helmet'],'Part',function(P)
P.Transparency = Trans 
P.Material = 'Neon' 
P.BrickColor = BrickColor.new('Teal') 
end)

return md2
end;

TakeJuice = function(Amnt)
if Energy - Amnt <= -1 then
if dk == true then dk = false end
if DebounceState == true then DebounceState = false end
if Flyin == true then Flyin = false end
if DBP == true then DBP = false end
return false end
if Energy - Amnt >= 0 then
spawn(function()
for i = 1,tonumber(Amnt) do
Energy = Energy - 1
wait(i/(Amnt*10))
end
end)
end
return true
end;

Charge = function(Amnt)
if Energy < mx then
for i = 1,tonumber(Amnt) do
if Energy == mx then return end
Energy = Energy + 1
wait(i/(Amnt*10))
end
end
end;

--// Mesh Removing
ypcall(function() 
hed.Mesh:Destroy()
wait(.2)
local HedMesh = Instance.new('BlockMesh',hed)
HedMesh.Scale = Vector3.new(.560002,1.10002,1.10002)
HedMesh.Name = 'Mesh'
end)
for index,obj in next, Char:children() do
if obj:IsA'CharacterMesh' then
obj:Destroy()
end
if obj:IsA'Hat' then
obj:Destroy()
end
end
--\\ Mesh Removing

function RayCast(pos1, pos2, maxDist, forward)
    local list = getAllParts(workspace)
    local pos0 = pos1
    for dist = 1, maxDist, forward do
    lRS:wait()
        pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -dist)).p
        for _, v in pairs(list) do
            local pos3 = v.CFrame:pointToObjectSpace(pos0)
            local s = v.Size
            if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) and v.CanCollide == true then
                return pos0, v
            end
        end
    end
    return pos0, nil
end


HandleParts = function(Obj, Scale)
	Scale = Scale or 0
	local P = Instance.new('Part',VortexGauntlet)
	P.Anchored = true
	P.Transparency = .3
	P.FormFactor = 3
	P.Size = Vector3.new(.4+Scale,.4+Scale,.4+Scale)
	P.CFrame = Obj.CFrame * CF(0,-.7,0) * Angles(math.random(),math.random(),math.random())
	P.Material = 'Neon'
	P.CanCollide = false
	P.BrickColor = BrickColor.new(SecondaryColor)
	local PM = Instance.new('BlockMesh',P)
	spawn(function()
		for i = 1,20 do
			PM.Scale = PM.Scale + Vector3.new(.05,.05,.05)
			P.Transparency = P.Transparency + .05
			lRS:wait()
		end
		P:Destroy()
	end)
end

Trans = function(Numb)
local R = function()
------------------------------------------------
spawn(function()
for i = 1,20 do
Part3.Transparency = Part3.Transparency + 1/Numb
lRS:wait()
end
end)
wait(.1)
----
spawn(function()
for i = 1,20 do
Part2.Transparency = Part2.Transparency + 1/Numb
lRS:wait()
end
end)
wait(.1)
----
spawn(function()
for i = 1,20 do
Part1.Transparency = Part1.Transparency + 1/Numb
lRS:wait()
end
end)
------------------------------------------------
------------------------------------------------
spawn(function()
for i = 1,20 do
Part3.Transparency = Part3.Transparency - 1/Numb
lRS:wait()
end
end)
wait(.1)
----
spawn(function()
for i = 1,20 do
Part2.Transparency = Part2.Transparency - 1/Numb
lRS:wait()
end
end)
wait(.1)
----
spawn(function()
for i = 1,20 do
Part1.Transparency = Part1.Transparency - 1/Numb
lRS:wait()
end
end)
------------------------------------------------
end

local L = function()
------------------------------------------------
spawn(function()
for i = 1,20 do
Part3a.Transparency = Part3a.Transparency + 1/Numb
lRS:wait()
end
end)
wait(.1)
----
spawn(function()
for i = 1,20 do
Part2a.Transparency = Part2a.Transparency + 1/Numb
lRS:wait()
end
end)
wait(.1)
----
spawn(function()
for i = 1,20 do
Part1a.Transparency = Part1a.Transparency + 1/Numb
lRS:wait()
end
end)
------------------------------------------------
------------------------------------------------
spawn(function()
for i = 1,20 do
Part3a.Transparency = Part3a.Transparency - 1/Numb
lRS:wait()
end
end)
wait(.1)
----
spawn(function()
for i = 1,20 do
Part2a.Transparency = Part2a.Transparency - 1/Numb
lRS:wait()
end
end)
wait(.1)
----
spawn(function()
for i = 1,20 do
Part1a.Transparency = Part1a.Transparency - 1/Numb
lRS:wait()
end
end)
------------------------------------------------
end

spawn(R)
spawn(L)
end;

newRay = function(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	local hit,pos=workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end

Pulse = function(Parent, Angle, Sc, Increase)
local Rng = Instance.new('Part',Parent)
Rng.FormFactor = 3
Rng.Size = Vector3.new(.2,.2,.2)
Rng.BrickColor = BrickColor.new(SecondaryColor)
Rng.Anchored = true
Rng.CFrame = Parent.CFrame*Angle
local Msh = Instance.new('SpecialMesh',Rng)
Msh.MeshId = 'rbxassetid://3270017'
Msh.Scale = Sc
spawn(function()
for i = 1,Increase do
Msh.Scale = Msh.Scale + Vector3.new(.1,.1,0)
Rng.Transparency = Rng.Transparency + 1/Increase
lRS:wait()
end
Rng:Destroy()
end)
end;

FaceMouse = function()
	local Torso = torso
local atan2, pi, dir, torso, torsoPos = math.atan2, math.pi
local torso = Char:FindFirstChild'Torso'
if torso then
torsoPos = torso.CFrame.p
dir = (mouse.Hit.p - torsoPos).unit
torso.CFrame = CFrame.new(torsoPos) * CFrame.Angles(0, atan2(dir.X, dir.Z) + pi, 0)
end;end;

CheckIfLanded = function()
local Ray = Ray.new(torso.Position,Vector3.new(0,-1,0)*10)
local Ignore = {}
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
   if v.Character ~= nil then
      Ignore[#Ignore+1] = v.Character
   end
end
local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
if Hit == nil then return false,nil end
return true,Hit
end;

CL = function()
local C = CheckIfLanded()
if C == false then 
DebounceState = false
dk = false
DBP = false
Flyin = false
return end
end;

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

toAxisAngle = function(CFr)
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

Crown = function()
local P = Instance.new('Part',VortexGauntlet)
P.FormFactor = 3
P.Material = 'Neon'
P.CanCollide = false
P.Anchored = true
P.Size = Vector3.new(2,2,2)
local M = Instance.new('SpecialMesh',P)
M.MeshId = 'rbxassetid://20329976'
return P,M
end;

LerpCFrame = function(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

ApplyTrig = function(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
end

getm = function(obj)
if obj:IsA'Part' then
return obj:GetMass()
else
print(obj.ClassName..', YOU SHALL NOT MASS!!! ') --// Pun
return 0
end
end;

isnormal = function(plr)
if plr:FindFirstChild'Torso' then
if getm(plr.Torso) > 4 then
return false
end
end
return true
end;

Crater = function(Torso,Radius)
        spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,40 do
                local P = Instance.new("Part",VortexGauntlet)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = Hit.BrickColor
                P.Material = Hit.Material
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,5,5)*(math.random(80,100)/100)
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

LazorBeam = function()
DebounceState = true
DBP = true
dk = true
Trans(4)
local Bool = TakeJuice(25)
if Bool == false then return end
local S = NewSound(hed,164102008,1.5,1)
S:Play()
for i = 1,30 do
FaceMouse()
Char.Humanoid.WalkSpeed = 5
llw.C0 = clerp(llw.C0, CF(0,0,0),.15)
rlw.C0 = clerp(rlw.C0, CF(0,0,0),.15)
law.C0 = clerp(law.C0, CF(.5,.5,.2)*Angles(rad(90),0,rad(45+25)),.15)
raw.C0 = clerp(raw.C0, CF(0,.5,-1.5)*Angles(rad(89),rad(5),rad(25)),.15)
hw.C0 = clerp(hw.C0, CF(0,0,0)*Angles(0,rad(-25),0),.15)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(0,rad(25),0),.15)
lRS:wait()
end
Trans(6)
wait(.05)
for i = 1,30 do
FaceMouse()
HandleParts(Main,i/75)
local ang = rad(math.random(-360,360))
--spawn(function()Pulse(Main,Angles(ang,ang,ang),Vector3.new(1.2+(i/50),1.2+(i/50),1),20)end)
lRS:wait()
end

local Beam = Cylinder:Clone()
Beam.mot:Destroy()
Beam.Parent = VortexGauntlet
Beam.Mesh.Scale = Vector3.new(1,1,1)
Beam.Anchored = true
--local pos,hit = RayCast(Main.Position,(Main.Position-Vector3.new(0,0,10)),100,1)
local Count = 0
--Pulse()
--wait(.5)
--spawn(function()Pulse(Main,Angles(rad(45),0,rad(45)),Vector3.new(2.5,2.5,1),25)end)
--spawn(function()Pulse(Main,Angles(-rad(45),0,rad(-45)),Vector3.new(2.5,2.5,1),25)end)
local S = NewSound(Beam,228343271,.95,1)
S:Play()
local S = NewSound(Beam,231917744,.95,1)
S:Play()
local S = NewSound(hed,154454228,1,1)
--S:Play()
local Tbl = {Main, Char, Beam}
local Angl = 0
for i = 1,60 do
Angl = Angl+rad(30)
HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,Angl,0),.35)
Trans(2)
local ang = rad(math.random(-360,360))
spawn(function()Pulse(Main,CF(0,0,0)*Angles(ang,ang,ang),Vector3.new(1.2+(i/35),1.2+(i/35),1),20)end)
FaceMouse()
Count = Count + i
FaceMouse()
Count = Count + i
local StartPos = (Main.CFrame*CF(0,0,0))
local ray = Ray.new(StartPos.p,(StartPos.p-(StartPos*CF(0,1,0)).p).unit*Count/2)
local P = Instance.new('Part')
table.insert(Tbl,P)
local Hit,Pos = workspace:FindPartOnRayWithIgnoreList(ray, Tbl)
local ph
local mag
if Hit then
if Hit and Hit.Parent:FindFirstChild'Humanoid' then
local h = dmg(Hit,9,3)
end
if Hit and Hit.Anchored == false and not Hit.Parent:FindFirstChild'Humanoid' then
local bv = Instance.new('BodyVelocity',Hit)
local hih = 50000
bv.maxForce = Vector3.new(hih,hih,hih)
bv.velocity = torso.CFrame.lookVector * 20 + Vector3.new(0,-2,0)
spawn(function()
wait(.1)
bv:Destroy()
end)
end
if Hit.CanCollide == false then
table.insert(Tbl,Hit)
end
--Count = (StartPos.p-Hit.CFrame.p).magnitude
P.Parent = VortexGauntlet
P.FormFactor = 3
P.TopSurface,P.BottomSurface = 10,10
P.Size = Vector3.new(2,2,2)
P.Anchored = true
P.Position = Pos
P.BrickColor = BrickColor.new(SecondaryColor)
P.Transparency = .2
P.CanCollide = false
P.Material = Enum.Material.Neon
P.CFrame = CFrame.new(Pos) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()
local C = 40
for i = 1,C do
--P.Size = Vector3.new(P.Size.Z+.01,P.Size.Y+.01,P.Size.Z+.01)
P.Transparency = P.Transparency + 1/C
lRS:wait()
end;
P:Destroy()
end)
mag = (Main.CFrame.p-Pos).magnitude
else
mag = (Main.CFrame.p-Pos).magnitude
end
local Down = 0--.125
Beam.Size = Vector3.new(mag,2.5,2.5)  --//Beam.Size.Y-Down,Beam.Size.Z-Down) 
--Beam.Mesh.Scale = Vector3.new(mag,1.35,1.35)
Beam.CFrame = Main.CFrame * CF(0,-mag/2,0) * Angles(0,0,rad(90))
--// print(hit.Name)
torso.Anchored = false
lRS:wait()
--BTouch:disconnect()
end--]]
torso.Anchored = false
spawn(function()
local C = 40
for i = 1,C do
	pcall(function()
Beam.Mesh.Scale = Beam.Mesh.Scale - Vector3.new(0,.085/2,.085/2)
end)
pcall(function()
Beam.Transparency = Beam.Transparency + 1/C
end)
lRS:wait()
end;Beam:Destroy()
DBP = false
end)
wait(.1)
dk = false
DebounceState = false
end

BeamThrust = function()
DBP = true
DebounceState = true
dk = true
Flyin = true
Keyz.R = true
local C,Below = CheckIfLanded()
if C == false then 
DebounceState = false
dk = false
DBP = false
Flyin = false
return end
for i = 1,9 do
--FaceMouse()
HandleParts(Main, i/75)
HandleParts(Main2,i/75)
Char.Humanoid.WalkSpeed = 7
torr.C0 = clerp(torr.C0, CF(0,rad(cos(sine/3)),0)*Angles(rad(0),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(1.65,-.1,1.35)*Angles(rad(-75)+-rad(cos(sine/10)),rad(75)+rad(cos(sine/20)),rad(90)+rad(cos(sine/20))),.3)
law.C0 = clerp(law.C0, CF(-1.65,-.1,1.35)*Angles(rad(-75)+rad(cos(sine/10)),rad(-75)+-rad(cos(sine/20)),rad(-90)+-rad(cos(sine/20))),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-.6)*Angles(rad(-40),rad(0),0),.3)
llw.C0 = clerp(llw.C0, CF(0,-.05,-.835)*Angles(rad(-16),rad(0),0),.3)
hw.C0 = clerp(hw.C0, Angles(rad(-2)+rad(cos(sine/10)),rad(0),0),.3)
lRS:wait()
end
wait(.05)
--for i = 1,30 do
HandleParts(Main,1.5)
HandleParts(Main2,1.5)
local ang = rad(math.random(-360,360))
--spawn(function()Pulse(Main,Angles(ang,ang,ang),Vector3.new(1.2+(i/50),1.2+(i/50),1),20)end)
lRS:wait()
--end
local S = NewSound(Main,231917744,.95,1)
S:Play()
local S = NewSound(Main2,231917744,.95,1)
S:Play()
local S = NewSound(Main,231917744,.95,1)
--:Play()
local S = NewSound(Main2,231917744,.95,1)
--S:Play()
local S = NewSound(Main,231917744,.95,1)
--S:Play()
local S = NewSound(Main2,231917744,.95,1)
--S:Play()
local Loop = NewSound(torso,194908109,1,1)
Loop.Looped = true
Loop:Play()
Trans(2)
local H = 0
local Beam = Cylinder:Clone()
Beam.mot:Destroy()
Beam.Name = 'BEAMM'
Beam.Parent = VortexGauntlet
Beam.Mesh.Scale = Vector3.new(1,1,1)
Beam.Anchored = true
local Beam2 = Beam:Clone()
Beam2.Parent = VortexGauntlet2
local Count = 0
local bv = Instance.new('BodyVelocity',torso)
bv.Name = 'localbv'
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
local Tbl = {Main, Char, Beam, Beam2}
local Angl = 0
repeat
local Bool2 = TakeJuice(25)
if Bool2 == false then break end
for i = 1,45/2 do
--spawn(function()Pulse(Main,Angles(ang,ang,ang),Vector3.new(1.2+(i/50),1.2+(i/50),1),20)end)
torr.C0 = clerp(torr.C0, CF(0,rad(cos(sine/3)),0)*Angles(rad(-15),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(1.65,-.1,1.35)*Angles(rad(-75)+-rad(cos(sine/10)),rad(75)+rad(cos(sine/20)),rad(90)+rad(cos(sine/20))),.3)
law.C0 = clerp(law.C0, CF(-1.65,-.1,1.35)*Angles(rad(-75)+rad(cos(sine/10)),rad(-75)+-rad(cos(sine/20)),rad(-90)+-rad(cos(sine/20))),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-.6)*Angles(rad(-40),rad(0),0),.3)
llw.C0 = clerp(llw.C0, CF(0,-.05,-.835)*Angles(rad(-16),rad(0),0),.3)
hw.C0 = clerp(hw.C0, Angles(rad(-2)+rad(cos(sine/10)),rad(0),0),.3)
Angl = Angl+rad(30)
HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,Angl,0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,Angles(0,Angl,0),.35)
FaceMouse()
H = H+.4
bv.velocity = Vector3.new(0,H*1.5,0) + torso.CFrame.lookVector*H*2
--wait()
--Trans(4)
local S = NewSound(hed,145099824,1,1)
--S:Play()
--Trans(6)
--FaceMouse()
Count = Count + 25
local StartPos = (Main.CFrame*CF(0,0,0))
local ray = Ray.new(StartPos.p,(StartPos.p-(StartPos*CF(0,1,0)).p).unit*Count)
local P = Instance.new('Part')
table.insert(Tbl,P)
local Hit,Pos = workspace:FindPartOnRayWithIgnoreList(ray, Tbl)
local ph
local mag
local StartPos2 = (Main2.CFrame*CF(0,0,0))
local ray2 = Ray.new(StartPos2.p,(StartPos2.p-(StartPos2*CF(0,1,0)).p).unit*Count)
local P2 = Instance.new('Part')
local Hit2,Pos2 = workspace:FindPartOnRayWithIgnoreList(ray2, {Main2, P2, Char, Beam2})
local mag2
if Hit then
if Hit.CanCollide == false then Tbl[Hit] = Hit end
P.Parent = VortexGauntlet
P.FormFactor = 3
P.TopSurface,P.BottomSurface = 10,10
P.Size = Vector3.new(2,2,2)
P.Anchored = true
P.Position = Pos
P.BrickColor = BrickColor.new(SecondaryColor)
P.Transparency = .2
P.CanCollide = false
P.Material = Enum.Material.Neon
P.CFrame = CFrame.new(Pos) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()
local C = 40
for i = 1,C do
--P.Size = Vector3.new(P.Size.Z+.01,P.Size.Y+.01,P.Size.Z+.01)
P.Transparency = P.Transparency + .8/C
lRS:wait()
end;
game.Debris:AddItem(P,10)
spawn(function()
wait(2)
P.BrickColor = BrickColor.Black()
end)
end)
mag = (Main.CFrame.p-Pos).magnitude
else
mag = (Main.CFrame.p-Pos).magnitude
end
if Hit2 then
P2.Parent = VortexGauntlet2
P2.FormFactor = 3
P2.TopSurface,P.BottomSurface = 10,10
P2.Size = Vector3.new(2,2,2)
P2.Anchored = true
P2.Position = Pos2
P2.BrickColor = BrickColor.new(SecondaryColor)
P2.Transparency = .2
P2.CanCollide = false
P2.Material = Enum.Material.Neon
P2.CFrame = CFrame.new(Pos2) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()
local C = 40
for i = 1,C do
--P.Size = Vector3.new(P.Size.Z+.01,P.Size.Y+.01,P.Size.Z+.01)
P2.Transparency = P2.Transparency + .8/C
lRS:wait()
end;
game.Debris:AddItem(P2,10)
spawn(function()
wait(2)
P2.BrickColor = BrickColor.Black()
end)
end)
mag2 = (Main2.CFrame.p-Pos2).magnitude
else
mag2 = (Main2.CFrame.p-Pos2).magnitude
end
local Down = 0
Beam.Size = Vector3.new(mag,Beam.Size.Y,Beam.Size.Z) 
--Beam.Mesh.Scale = Vector3.new(mag,1.35,1.35)
Beam.CFrame = Main.CFrame * CF(0,-mag/2,0) * Angles(0,0,rad(90))
Beam2.Size = Vector3.new(mag,Beam2.Size.Y,Beam2.Size.Z) 
--Beam.Mesh.Scale = Vector3.new(mag,1.35,1.35)
Beam2.CFrame = Main2.CFrame * CF(0,-mag2/2,0) * Angles(0,0,rad(90))
--// print(hit.Name)
torso.Anchored = false
lRS:wait()
DBP = false
--BTouch:disconnect()
--end--]]
end
torso.Anchored = false
until Keyz.R == false wait()
ypcall(function()VortexGauntlet['BEAMM']:Destroy()end)
ypcall(function()VortexGauntlet2['BEAMM']:Destroy()end)
ypcall(function()torso['localbv']:Destroy()end)
DebounceState = false
ypcall(function() Loop:Destroy() end)
wait(.2)
dk = false
wait(1.8)
Flyin = false
DBP = false
end;

ForceField = function()
DebounceState = true
dk = true
Keyz.Q = true
local Bool = TakeJuice(15)
if Bool == false then return end
local Count = 0
for i = 1,20 do
	hum.WalkSpeed = 0
	Count = Count + rad(30)
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,-.15,0)*Angles(0,Count,0),.3)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,-.15,0)*Angles(0,Count,0),.3)
torr.C0 = clerp(torr.C0, CF(0,-1.2,0)*Angles(rad(-25),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(1.5,-1.25,.75)*Angles(rad(-60),rad(89),rad(90)),.3)
law.C0 = clerp(law.C0, CF(-1.5,-1.25,.75)*Angles(rad(-60),rad(-89),rad(-90)),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-0,-1)*Angles(rad(-40),rad(0),0),.3)
llw.C0 = clerp(llw.C0, CF(0,1.2,-.12)*Angles(rad(16),rad(0),0),.3)
hw.C0 = clerp(hw.C0, CF(0,0,.25)*Angles(rad(-21),rad(0),0),.3)
	lRS:wait()
end
local NewA = 0
local FF = Instance.new('Part',VortexGauntlet)
FF.TopSurface,FF.BottomSurface,FF.FormFactor = 10,10,3
FF.Size = Vector3.new(5,5,5)
FF.Anchored,FF.CanCollide = true,false
FF.Color = BrickColor.new(SecondaryColor).Color
FF.Material,FF.Transparency = 'Neon',.7
local ang = rad(math.random(-360,360))
FF.CFrame = torso.CFrame * Angles(ang,ang,ang)
local FT = FF.Touched:connect(function(Hit)
	local h = dmg(Hit,30,100)
end)
hum.WalkSpeed = 0
local Loop = NewSound(torso,238032904,1,1)
Loop.Looped = true
Loop:Play()
for i = 1,15 do
	local Inc = 1
	Count = Count+rad(30)
	NewA = NewA + rad(3)
	HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,Count,0),.35)
	HandleWeld2.C0 = lerp(HandleWeld2.C0,Angles(0,Count,0),.35)
	FF.Size = Vector3.new(FF.Size.X+Inc,FF.Size.Y+Inc,FF.Size.Z+Inc)
	FF.CFrame = torso.CFrame * Angles(ang+NewA,ang+NewA,ang+NewA)
	lRS:wait()
end
FF.CFrame = torso.CFrame * Angles(ang+NewA,ang+NewA,ang+NewA)
DebounceState = false
ypcall(function()Loop:Destroy()end)
spawn(function()
wait(5)
	local N = 150	
	for i = 1,N do
		FF.Transparency = FF.Transparency + (1)/(N)
		lRS:wait()
	end
	FT:disconnect()
	FF:Destroy()
end)
hum.WalkSpeed = .5
for i = 1,10 do
	HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,0,0),.35)
	HandleWeld2.C0 = lerp(HandleWeld2.C0,Angles(0,0,0),.35)
	lRS:wait()
end
dk = false
end

Spikez = function()
	local Bool = TakeJuice(50)
if Bool == false then return end
local C = CheckIfLanded()
if C == false then 
DebounceState = false
dk = false
DBP = false
Flyin = false
return end
dk = true
DebounceState = true
local Laugh = NewSound(hed,221057812,1.3,1)
--Laugh:Play()
for i = 1,10 do
hum.WalkSpeed = 2
torr.C0 = clerp(torr.C0, CF(0,-.55,0)*Angles(rad(-25),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(1.65,-.1,1.35)*Angles(rad(-45),rad(25),rad(90)),.3)
law.C0 = clerp(law.C0, CF(-1.65,-.1,1.35)*Angles(rad(-75),rad(-75),rad(-90)),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-1)*Angles(rad(-40),rad(0),0),.3)
llw.C0 = clerp(llw.C0, CF(0,.6,-.12)*Angles(rad(16),rad(0),0),.3)
hw.C0 = clerp(hw.C0, Angles(rad(-2),rad(-13),0),.3)
lRS:wait()
end
local Drill_sfx = NewSound(Main,188959272,1.25,.2)
Drill_sfx:Play()
local Count = 0
for i = 1,55 do
hum.WalkSpeed = 0
Count = Count + rad(30)
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,-.15,0)*Angles(0,Count,0),.35)
torr.C0 = clerp(torr.C0, CF(0,-1.2,0)*Angles(rad(-25),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(1.5,-1.25,.75)*Angles(rad(-60),rad(89),rad(90)),.3)
law.C0 = clerp(law.C0, CF(-1.65,-.1,1.35)*Angles(rad(-75),rad(-75),rad(-90)),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-0,-1)*Angles(rad(-40),rad(0),0),.3)
llw.C0 = clerp(llw.C0, CF(0,1.2,-.12)*Angles(rad(16),rad(0),0),.3)
hw.C0 = clerp(hw.C0, CF(0,0,.25)*Angles(rad(-21),rad(-21),0),.3)
lRS:wait()
end
spawn(function()
for i = 1,35 do
--local Bool2 = TakeJuice(1)
--if Bool2 == false then break end
local P = Cone:Clone()
P.Parent = VortexGauntlet
P.Color = BrickColor.new(SecondaryColor).Color
P.mot:Destroy()
P.Anchored = true
P.Size = Vector3.new(3,15,3)
P.CanCollide = false
local PT = P.Touched:connect(function(Hit)
local h = dmg(Hit,13,15)
end)
P.Mesh.Scale = Vector3.new(2,15,2)
local Pos = torso.Position
P.CFrame = CF(Pos.X+math.random(-30,30),Pos.Y-20,Pos.Z+math.random(-30,30))
spawn(function()
game.Debris:AddItem(P,10)
wait(6)
local LV = 50
for i = 1,LV do
P.Transparency = P.Transparency + 1/LV
lRS:wait()
end
P:Destroy()
end)
local PC = P.CFrame.p
spawn(function()
local Pt = Instance.new('Part',VortexGauntlet)
Pt.FormFactor = 3
Pt.TopSurface,P.BottomSurface = 10,10
Pt.Size = Vector3.new(2,2,2)
Pt.Anchored = true
Pt.Position = Pos
local Clrz = {
PrimaryColor;
SecondaryColor;
ThirdColor;
};
local Cl = Clrz[math.random(1,#Clrz)]
Pt.Color = BrickColor.new(Cl).Color
Pt.Transparency = .2
Pt.CanCollide = false
Pt.Material = Enum.Material.Neon
Pt.CFrame = CFrame.new(Pos) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
P.Color = BrickColor.new(Cl).Color
spawn(function()
local C = 40
for i = 1,C do
--Pt.Size = Vector3.new(Pt.Size.Z+.01,Pt.Size.Y+.01,Pt.Size.Z+.01)
Pt.CFrame = clerp(Pt.CFrame,CF(PC.X,Pos.Y-2,PC.Z)*Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360))),.15)
Pt.Transparency = Pt.Transparency + .8/C
lRS:wait()
end;
game.Debris:AddItem(Pt,10)
end)

for i = 1,20 do
P.CFrame = clerp(P.CFrame,CF(PC.X,Pos.Y+4,PC.Z),.15)
Pt.CFrame = clerp(Pt.CFrame,CF(PC.X,Pos.Y-2,PC.Z)*Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360))),.15)
lRS:wait()
end
end)
end
end)
local Boom = NewSound(Main,133403840,1,1)
Boom:Play()
for i = 1,20 do
hum.WalkSpeed = .5
torr.C0 = clerp(torr.C0, CF(0,-.55,0)*Angles(rad(-25),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(1.65,-.1,1.35)*Angles(rad(-45),rad(25),rad(90)),.3)
law.C0 = clerp(law.C0, CF(-1.65,-.1,1.35)*Angles(rad(-75),rad(-75),rad(-90)),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-1)*Angles(rad(-40),rad(0),0),.3)
llw.C0 = clerp(llw.C0, CF(0,.6,-.12)*Angles(rad(16),rad(0),0),.3)
hw.C0 = clerp(hw.C0, Angles(rad(-2),rad(-13),0),.3)
lRS:wait()
end
dk = false
DebounceState = false
end;

ChargeEnergy = function()
if Energy == mx then return end
dk = true
DebounceState = true
Keyz.C = true
local Count = 0
local Drill_sfx = NewSound(torso,169445714,1.3,1)
Drill_sfx.Looped = true
Drill_sfx:Play()
Drill_sfx.Name = 'DRILLNOIZE'
for i = 1,25 do
hum.WalkSpeed = 5
Count = Count + rad(30)
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,-.15,0)*Angles(0,Count,0),.15)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,-.15,0)*Angles(0,Count,0),.15)
torr.C0 = clerp(torr.C0, CF(0,-1.2,0)*Angles(rad(-25),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(1.5,-1.25,.75)*Angles(rad(-60),rad(89),rad(90)),.3)
law.C0 = clerp(law.C0, CF(-1.5,-1.25,.75)*Angles(rad(-60),rad(-89),rad(-90)),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-0,-1)*Angles(rad(-40),rad(0),0),.3)
llw.C0 = clerp(llw.C0, CF(0,1.2,-.12)*Angles(rad(16),rad(0),0),.3)
hw.C0 = clerp(hw.C0, CF(0,0,.25)*Angles(rad(-21),rad(0),0),.3)
lRS:wait()
end
while Keyz.C == true do
if Energy == mx then Keyz.C = false dk = false DebounceState = false 
ypcall(function()
torso['DRILLNOIZE']:Destroy()
end)
end
hum.WalkSpeed = 0
spawn(function()Charge(2)end)
Count = Count + rad(30)
spawn(function()Pulse(Main,CF(0,0,0)*Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180)),Vector3.new(1,1,1),20)end)
spawn(function()Pulse(Main2,CF(0,0,0)*Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180)),Vector3.new(1,1,1),20)end)
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,-.15,0)*Angles(0,Count,0),.3)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,-.15,0)*Angles(0,Count,0),.3)
torr.C0 = clerp(torr.C0, CF(0,-1.2,0)*Angles(rad(-25),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(1.5,-1.25,.75)*Angles(rad(-60),rad(89),rad(90)),.3)
law.C0 = clerp(law.C0, CF(-1.5,-1.25,.75)*Angles(rad(-60),rad(-89),rad(-90)),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-0,-1)*Angles(rad(-40),rad(0),0),.3)
llw.C0 = clerp(llw.C0, CF(0,1.2,-.12)*Angles(rad(16),rad(0),0),.3)
hw.C0 = clerp(hw.C0, CF(0,0,.25)*Angles(rad(-21),rad(0),0),.3)
lRS:wait()
end
end;

Kick = function(dist)
dk = true
DebounceState = true
local spd = .35
local Swng = NewSound(rleg,212607246,.9,1)
for i = 1,10 do
FaceMouse()
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),spd)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),spd)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(0,0,0),spd)
raw.C0 = clerp(raw.C0, CF(1.5,-1.2,0)*Angles(0,rad(1),rad(75)),spd)
law.C0 = clerp(law.C0, CF(-1.5,-1.2,0)*Angles(0,rad(1),rad(-75)),spd)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-.6)*Angles(rad(-40),rad(-1),0),spd)
llw.C0 = clerp(llw.C0, CF(0,-.05,-.835)*Angles(rad(-16),rad(9),0),spd)
lRS:wait()
end
local bv = Instance.new('BodyVelocity',hed)
bv.maxForce = Vector3.new(999999999999,999999999999,999999999999)
bv.velocity = hed.CFrame.lookVector * 40
Swng:Play()
local chit = true
local rlt = rleg.Touched:connect(function(Hit)
if chit == false then return end
local h = dmg(Hit,35,dist,Hit.CFrame.lookVector*Vector3.new(0,0,5))
if h then
chit = false
local Pcht = NewSound(Hit,138285836,math.random(.8,.95),1)
Pcht:Play()
Pcht:Destroy()
h.PlatformStand = true
delay(.2,function()h.PlatformStand = false end)
spawn(function()
local Pos = (rleg.CFrame*CF(0,-1,0)).p
local Pt = Instance.new('Part',VortexGauntlet)
Pt.FormFactor = 3
Pt.TopSurface,Pt.BottomSurface = 10,10
Pt.Size = Vector3.new(2.1,2.1,2.1)
Pt.Anchored = true
Pt.Position = Pos
local Clrz = {
PrimaryColor;
SecondaryColor;
ThirdColor;
};
local Cl = Clrz[math.random(1,#Clrz)]
Pt.Color = BrickColor.new(Cl).Color
Pt.Transparency = .2
Pt.CanCollide = false
Pt.Material = Enum.Material.Neon
Pt.CFrame = CFrame.new(Pos) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()
local C = 40
for i = 1,C do
Pt.Transparency = Pt.Transparency + .8/C
lRS:wait()
end;
Pt:Destroy()
end)
end)
end
end)
spawn(function()
wait()
bv:Destroy()
end)
for i = 1,10 do
FaceMouse()
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),spd)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),spd)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(0,rad(45),0),spd)
raw.C0 = clerp(raw.C0, CF(1.5,-1.2,.61)*Angles(rad(-20),rad(85),rad(75)),spd)
law.C0 = clerp(law.C0, CF(-1.5,-1.2,0)*Angles(0,rad(85),rad(-75)),spd)
rlw.C0 = clerp(rlw.C0, CF(0,-1.1,0)*Angles(rad(90),rad(-1),rad(45)),spd)
llw.C0 = clerp(llw.C0, CF(0,-.05,-.835)*Angles(rad(-16),rad(9),0),spd)
hw.C0 = clerp(hw.C0, CF(0,0,0)*Angles(0,rad(-45),0),spd)
lRS:wait()
end
DebounceState = false
rlt:disconnect()
wait(.1)
dk = false
DebounceState = false
end;

DoublePunch = function(spd,cnt,dist)
dist = dist or 20
dk = true
Keyz.X = true
DebounceState =  true
while Keyz.X do
local Swng = NewSound(rleg,212607246,math.random(.9,1),1)
Swng:Play()
hum.WalkSpeed = 2
local bv = Instance.new('BodyVelocity',hed)
bv.maxForce = Vector3.new(999999999999,999999999999,999999999999)
bv.velocity = hed.CFrame.lookVector * 15
local chit = true
local rat = rarm.Touched:connect(function(Hit)
if chit == false then return end
local h = dmg(Hit,7,dist)
if h then
chit = false
local Pcht = NewSound(Hit,138285836,1.35,2)
Pcht:Play()
Pcht:Destroy()
--h.PlatformStand = true
spawn(function()
local Pos = (rarm.CFrame*CF(0,-1,0)).p
local Pt = Instance.new('Part',VortexGauntlet)
Pt.FormFactor = 3
Pt.TopSurface,Pt.BottomSurface = 10,10
Pt.Size = Vector3.new(2.1,2.1,2.1)
Pt.Anchored = true
Pt.Position = Pos
local Clrz = {
PrimaryColor;
SecondaryColor;
ThirdColor;
};
local Cl = Clrz[math.random(1,#Clrz)]
Pt.Color = BrickColor.new(Cl).Color
Pt.Transparency = .2
Pt.CanCollide = false
Pt.Material = Enum.Material.Neon
Pt.CFrame = CFrame.new(Pos) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()
local C = 40
for i = 1,C do
Pt.Transparency = Pt.Transparency + .8/C
lRS:wait()
end;
Pt:Destroy()
end)
end)
end
end)
spawn(function()
wait()
bv:Destroy()
end)
for i = 1,cnt do
FaceMouse()
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),.35)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(0,rad(45),0),spd)
raw.C0 = clerp(raw.C0, CF(.45,.5,-2)*Angles(rad(90),rad(0),rad(45)),spd)
law.C0 = clerp(law.C0, CF(0,1,0)*Angles(rad(45),rad(15),rad(35)),spd)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-.6)*Angles(rad(-40),rad(-1),0),spd)
llw.C0 = clerp(llw.C0, CF(0,-.05,-.835)*Angles(rad(-16),rad(9),0),spd)
hw.C0 = clerp(hw.C0, CF(0,0,0)*Angles(0,rad(-45),0),spd)
lRS:wait()
end
rat:disconnect()
local Swng = NewSound(rleg,212607246,math.random(1,1.25),1)
Swng:Play()
hum.WalkSpeed = 2
local bv2 = Instance.new('BodyVelocity',hed)
bv2.maxForce = Vector3.new(999999999999,999999999999,999999999999)
bv2.velocity = hed.CFrame.lookVector * 15
local chit2 = true
local lat = larm.Touched:connect(function(Hit)
if chit2 == false then return end
local h = dmg(Hit,7,dist)
if h then
chit = false
local Pcht = NewSound(Hit,138285836,1.35,1)
Pcht:Play()
Pcht:Destroy()
--h.PlatformStand = true
spawn(function()
local Pos = (larm.CFrame*CF(0,-1,0)).p
local Pt = Instance.new('Part',VortexGauntlet)
Pt.FormFactor = 3
Pt.TopSurface,Pt.BottomSurface = 10,10
Pt.Size = Vector3.new(2.1,2.1,2.1)
Pt.Anchored = true
Pt.Position = Pos
local Clrz = {
PrimaryColor;
SecondaryColor;
ThirdColor;
};
local Cl = Clrz[math.random(1,#Clrz)]
Pt.Color = BrickColor.new(Cl).Color
Pt.Transparency = .2
Pt.CanCollide = false
Pt.Material = Enum.Material.Neon
Pt.CFrame = CFrame.new(Pos) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()
local C = 40
for i = 1,C do
Pt.Transparency = Pt.Transparency + .8/C
lRS:wait()
end;
Pt:Destroy()
end)
end)
end
end)
spawn(function()
wait()
bv2:Destroy()
end)
for i = 1,cnt do
FaceMouse()
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),.35)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(0,rad(-45),0),spd)
raw.C0 = clerp(raw.C0, CF(0,0,0)*Angles(rad(45),rad(15),rad(-35)),spd)
law.C0 = clerp(law.C0, CF(-.45,.5,-2)*Angles(rad(90),rad(0),rad(-45)),spd)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-.6)*Angles(rad(-40),rad(-1),0),spd)
llw.C0 = clerp(llw.C0, CF(0,-.05,-.835)*Angles(rad(-16),rad(9),0),spd)
hw.C0 = clerp(hw.C0, CF(0,0,0)*Angles(0,rad(45),0),.3)
lRS:wait()
end
lat:disconnect()
end
--dk = false
--DebounceState = false
end;

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= Char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

GroundSlam = function()
	local Bool = TakeJuice(35)
if Bool == false then return end
dk = true DebounceState = true
canslam = false
local ang = 0
for i = 1,12 do
HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,rad(ang),0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,Angles(0,rad(ang),0),.35)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(rad(-3.5),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(2.65,1.5,.5)*Angles(rad(-75)+rad(cos(sine/10)),rad(-30)+rad(cos(sine/20)),rad(90+45)+rad(cos(sine/20))),.3)
law.C0 = clerp(law.C0, CF(-2.65,1.5,.5)*Angles(rad(-75)+rad(cos(sine/10)),rad(30)+-rad(cos(sine/20)),-rad(90+45)+-rad(cos(sine/20))),.3)
rlw.C0 = clerp(rlw.C0, CF(0,0,0)*Angles(0,0,0),.3)
llw.C0 = clerp(llw.C0, CF(0,0,0)*Angles(0,0,0),.3)
hw.C0 = clerp(hw.C0, CF(0,0,.25)*Angles(rad(-18)+rad(cos(sine/10)),0,0),.3)
lRS:wait()	
end
local C = CheckIfLanded()
local Bv = Instance.new('BodyVelocity',torso)
Bv.maxForce = Vector3.new(9999999,9999999,9999999)
Bv.velocity = Vector3.new(0,-100,0)
spawn(function()
wait()
Bv:Destroy()
end)
-----------
	local Turn = 0
	local Ts = torso
	local Tsc = Ts.CFrame.p
	local Pos = CFrame.new(Tsc.X,0,Tsc.Z)
	local Mag = math.floor((Pos.p-Tsc).magnitude)
	Mag = Mag
-----------
repeat C = CheckIfLanded() 
ang = ang + rad(30)
HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,rad(ang),0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,Angles(0,rad(ang),0),.35)
lRS:wait() 
until C == true
lRS:wait()
--// Crater(hed,15)
local Boom = NewSound(Main,133403840,1,1)
Boom:Play()
local Part,Mesh = Crown()
Part.Material = 'Neon'
Part.Color = BrickColor.new(SecondaryColor).Color
local Pos = torso.CFrame.p
Part.CFrame = CF(Pos.X,Pos.Y-1.5,Pos.Z) * Angles(0,0,0)
local NMB = 35
spawn(function()
	if Mag < 20 then
	NMB = 35/2
	end
	for i = 1,NMB do
		Turn = Turn + 4
		Pos = torso.CFrame.p
		Part.Transparency = Part.Transparency + (1/NMB)
		Part.CFrame = CF(Pos.X,Pos.Y-1.5,Pos.Z) * Angles(0,rad(Turn),0)
		Mesh.Scale = Mesh.Scale + Vector3.new(1.25/2,.3,1.25/2)
		sRS:wait()
	end
	Part:Destroy()
end)
--ypcall(function()
spawn(function()
for i,v in pairs(FindNearestTorso(torso.CFrame.p,NMB-3))do
        if v:FindFirstChild('Humanoid') then
	local hm = v:FindFirstChild('Humanoid')
            hm:TakeDamage(math.random(NMB/1.1,NMB))
hm.PlatformStand = true
        end
    end
    end)
  Crater(hed,NMB/2)
for i = 1,25 do
torr.C0 = clerp(torr.C0, CF(0,-1.2,0)*Angles(rad(-25),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(1.5,-1.25,.75)*Angles(rad(-60),rad(89),rad(90)),.3)
law.C0 = clerp(law.C0, CF(-1.5,-1.25,.75)*Angles(rad(-60),rad(-89),rad(-90)),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-0,-1)*Angles(rad(-40),rad(0),0),.3)
llw.C0 = clerp(llw.C0, CF(0,1.2,-.12)*Angles(rad(16),rad(0),0),.3)
hw.C0 = clerp(hw.C0, CF(0,0,.25)*Angles(rad(-21),rad(0),0),.3)
lRS:wait()
end
dk = false DebounceState = false
wait(.35)
canslam = true
end;

PulseBeam = function()
local Bool = TakeJuice(100)
if Bool == false then return end
dk = true DebounceState = true
DBP = true
local spd = .1
for i = 1, 22 do
hum.WalkSpeed = 15
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),spd)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),spd)
torr.C0 = lerp(torr.C0, CF(0,0,0)*Angles(0,0,0),spd)
raw.C0 = lerp(raw.C0, CF(2.65,.2,.325)*Angles(rad(-15),rad(-7),rad(130)),spd)
law.C0 = lerp(law.C0, CF(0,0,0)*Angles(0,0,0),spd)
rlw.C0 = lerp(rlw.C0, CF(0,0,0)*Angles(0,0,0),spd)
llw.C0 = lerp(llw.C0, CF(0,0,0)*Angles(0,0,0),spd)
hw.C0 = lerp(hw.C0, CF(0,0,0)*Angles(0,0,0),spd)
sRS:wait()
end
--print'LELLELETESTING'
for i = 1, 20 do
--[[spawn(function()
local b = Instance.new('Part',VortexGauntlet)
b.FormFactor = 3
b.TopSurface,b.BottomSurface = 0,0
local rsz = math.random(1,2.5)
b.Size = Vec3(rsz,rsz,rsz)
b.Material = 'Neon'
b.Anchored = true
b.CanCollide = false
b.BrickColor = BrickColor.new(SecondaryColor)
rcf = CF(math.random(-3,3),4,math.random(-3,3))
b.CFrame = torso.CFrame * CF(5.35,4.85,0) * rcf * Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
wait()
local rand = math.random(.02,.08)
local turn = math.random(2,8)
for i = 1,500 do
b.CFrame = clerp(torso.CFrame,CF(5.35,4.85,0)*Angles(turn,turn,turn),rand)
turn = turn + rad(7)
lRS:wait()
end
b:Destroy()
end)--]]
hum.WalkSpeed = 0
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),spd)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),spd)
torr.C0 = lerp(torr.C0, CF(0,0,0)*Angles(0,0,0),spd)
raw.C0 = lerp(raw.C0, CF(2.65,.2,.325)*Angles(rad(-15),rad(-7),rad(130)),spd)
law.C0 = lerp(law.C0, CF(0,0,0)*Angles(0,0,0),spd)
rlw.C0 = lerp(rlw.C0, CF(0,0,0)*Angles(0,0,0),spd)
llw.C0 = lerp(llw.C0, CF(0,0,0)*Angles(0,0,0),spd)
hw.C0 = lerp(hw.C0, CF(0,0,0)*Angles(0,0,0),spd)
sRS:wait()
end
--print'LELLELETESTING2'
local Sph = Instance.new('Part',VortexGauntlet)
Sph.FormFactor = 'Custom'
Sph.Material = 'Neon'
Sph.TopSurface,Sph.BottomSurface = 0,0
Sph.CanCollide = false
Sph.Anchored = true
Sph.Size = Vec3(6,6,6) --// O: xD
Sph.Shape = 'Ball'
Sph.Transparency = .5
Sph.BrickColor = BrickColor.new(ThirdColor)
Sph.Parent = VortexGauntlet
local Msh = Instance.new('SpecialMesh',Sph)
Msh.Name = 'NSM'
Msh.MeshType = 'Sphere'
Sph.CFrame = torso.CFrame * CF(3.411159563488742149564562579365386508630434,3,0) --// Random numbahz
local Sz,Inc = .05,.0059375
local MP = Sph.CFrame
local Gl = CF(5.35,4.85,0)
local Sph2,Sph3 = Sph:Clone(),Sph:Clone()
Sph2.Parent,Sph3.Parent = VortexGauntlet,VortexGauntlet
Sph2.BrickColor,Sph3.BrickColor = BrickColor.new(PrimaryColor),BrickColor.new(SecondaryColor)
Sph2.Transparency,Sph3.Transparency = .25,.25
Sph2.Size,Sph3.Size = Sph.Size+Vector3.new(.5,.5,.5),Sph.Size+Vector3.new(1,1,1)
local Msh2,Msh3 = Sph2.NSM,Sph3.NSM
local S = NewSound(hed,164102008,.7,1)
S:Play()
local S = NewSound(hed,214953746,.7,1)
S:Play()
local S = NewSound(hed,180984009,.7,1)
S:Play()
for i = 1,640/4 do
Sz = Sz+Inc
Sph.CFrame = lerp(Sph.CFrame,torso.CFrame*CF(5.35,4.85,0),.01)
Sph2.CFrame = lerp(Sph2.CFrame,torso.CFrame*CF(5.35,4.85,0),.01)
Sph3.CFrame = lerp(Sph3.CFrame,torso.CFrame*CF(5.35,4.85,0),.01)
Msh.Scale = Vec3(Sz,Sz,Sz)
Msh2.Scale = Vec3(Sz+.005,Sz+.005,Sz+.005)
Msh3.Scale = Vec3(Sz+.01,Sz+.01,Sz+.01)
lRS:wait()
end
--Msh.Scale = Vec3(1,1,1)
--print'der'
local ang = 90
for i = 1, 5 do
hum.WalkSpeed = 0
Sph.CFrame = lerp(Sph.CFrame,torso.CFrame*CF(5.35,4.85,0),1)
Sph2.CFrame = lerp(Sph2.CFrame,torso.CFrame*CF(5.35,4.85,0),.01)
Sph3.CFrame = lerp(Sph3.CFrame,torso.CFrame*CF(5.35,4.85,0),.01)
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),spd)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),spd)
torr.C0 = lerp(torr.C0, CF(0,0,0)*Angles(0,0,0),spd)
raw.C0 = lerp(raw.C0, CF(2.65,.2,.325)*Angles(rad(-15),rad(-7),rad(130)),spd)
law.C0 = lerp(law.C0, CF(0,0,0)*Angles(0,0,0),spd)
rlw.C0 = lerp(rlw.C0, CF(0,0,0)*Angles(0,0,0),spd)
llw.C0 = lerp(llw.C0, CF(0,0,0)*Angles(0,0,0),spd)
hw.C0 = lerp(hw.C0, CF(0,0,0)*Angles(0,0,0),spd)
spawn(function()Pulse(Main,CF(0,.2935,0)*Angles(ang*i,0,0),Vector3.new(1.2+(i/35),1.2+(i/35),1),20)end)
spawn(function()Trans(5)end)
wait(.15)
end
for i = 1, 20 do
FaceMouse()
hum.WalkSpeed = 2
Sph.CFrame = rarm.CFrame*CF(0,-5,0)
Sph2.CFrame = rarm.CFrame*CF(0,-5,0)
Sph3.CFrame = rarm.CFrame*CF(0,-5,0)
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),spd)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),spd)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(0,rad(80),0),spd)
raw.C0 = clerp(raw.C0, CF(1.95,-1,-.2)*Angles(0,rad(10),rad(90)),spd)
law.C0 = clerp(law.C0, CF(0,0,0)*Angles(0,0,0),spd)
rlw.C0 = clerp(rlw.C0, CF(0,0,0)*Angles(0,0,0),spd)
llw.C0 = clerp(llw.C0, CF(0,0,0)*Angles(0,0,0),spd)
hw.C0 = clerp(hw.C0, CF(0,0,0)*Angles(0,rad(-80),0),spd)
lRS:wait()
end
spawn(function()
local Beam = Cylinder:Clone()
Beam.mot:Destroy()
Beam.Parent = VortexGauntlet
Beam.Mesh.Scale = Vector3.new(1,1,1)
Beam.Anchored = true
local Beam2 = Cylinder:Clone()
Beam2.mot:Destroy()
Beam2.Parent = VortexGauntlet
Beam2.Mesh.Scale = Vector3.new(1,1,1)
Beam2.Anchored = true
local Count = 0
local ptch = .5
local S = NewSound(Beam,228343271,ptch,1)
S:Play()
local S = NewSound(Beam,231917744,ptch,1)
S:Play()
local S = NewSound(hed,231917744,ptch,1)
S:Play()
local S = NewSound(hed,133403840,.95,1)
S:Play()
local Tbl = {Main, Char, Beam, Beam2, Sph,Sph2,Sph3}
local Angl = 0
local Loop = NewSound(torso,194908109,1,1)
Loop.Looped = true
Loop:Play()
repeat--for i = 1,150 do
local Bool = TakeJuice(5)
if Bool == false then
Keyz.T = false
end
Trans(20)
Angl = Angl+rad(30)
HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,Angl,0),.35)
Trans(2)
local ang = rad(math.random(-360,360))
FaceMouse()
Count = Count + 12
local StartPos = rarm.CFrame * CF(0,-6,0)
local ray = Ray.new(StartPos.p,(StartPos.p-(StartPos*CF(0,1,0)).p).unit*Count)
local P = Instance.new('Part')
table.insert(Tbl,P)
local Hit,Pos = workspace:FindPartOnRayWithIgnoreList(ray, Tbl)
if Hit and Hit.Name:lower() == 'terrain' then
Hit:SetCell(Pos.X,Pos.Y+2,Pos.Z, 0, 0, 0)

--local xp = Instance.new('Explosion',workspace)
--xp.Position = Pos
end
local ph
local mag
if Hit then
if Hit and Hit.Parent:FindFirstChild'Humanoid' then
local h = dmg(Hit,25,20)
end
if Hit and Hit.Anchored == false and not Hit.Parent:FindFirstChild'Humanoid' then
local bv = Instance.new('BodyVelocity',Hit)
local hih = math.huge
bv.maxForce = Vector3.new(hih,hih,hih)
bv.velocity = hed.CFrame.lookVector * 100 + Vector3.new(0,-2,0)
spawn(function()
wait()
bv:Destroy()
end)
end
if Hit.CanCollide == false then
table.insert(Tbl,Hit)
end
--Count = (StartPos.p-Hit.CFrame.p).magnitude
P.Parent = VortexGauntlet
P.FormFactor = 3
P.TopSurface,P.BottomSurface = 10,10
P.Size = Vector3.new(7,7,7)
P.Anchored = true
P.Position = Pos
P.BrickColor = BrickColor.new(SecondaryColor)
P.Transparency = .2
P.CanCollide = false
P.Material = Enum.Material.Neon
P.CFrame = CFrame.new(Pos) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()
local C = 40
for i = 1,C do
--P.Size = Vector3.new(P.Size.Z+.01,P.Size.Y+.01,P.Size.Z+.01)
P.Transparency = P.Transparency + 1/C
lRS:wait()
end;
P:Destroy()
end)
mag = (StartPos.p-Pos).magnitude
else
mag = (StartPos.p-Pos).magnitude
end
local Down = 0--.125

Beam.Transparency = .6
Beam2.Transparency = .4
Beam2.BrickColor = BrickColor.new(PrimaryColor)
Beam.Size = Vector3.new(mag,5,5)
Beam2.Size = Vector3.new(mag,4.5,4.5)
Beam.CFrame = StartPos * CF(0,-mag/2,0) * Angles(0,0,rad(90))
Beam2.CFrame = StartPos * CF(0,-mag/2,0) * Angles(0,0,rad(90))

torso.Anchored = false
FaceMouse()
hum.WalkSpeed = 2
Sph.CFrame = rarm.CFrame*CF(0,-5,0)
Sph2.CFrame = rarm.CFrame*CF(0,-5,0)
Sph3.CFrame = rarm.CFrame*CF(0,-5,0)
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),spd)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),spd)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(0,rad(80),0),spd)
raw.C0 = clerp(raw.C0, CF(1.95,-1,-.2)*Angles(0,rad(10),rad(90)),spd)
law.C0 = clerp(law.C0, CF(0,0,0)*Angles(0,0,0),spd)
rlw.C0 = clerp(rlw.C0, CF(0,0,0)*Angles(0,0,0),spd)
llw.C0 = clerp(llw.C0, CF(0,0,0)*Angles(0,0,0),spd)
hw.C0 = clerp(hw.C0, CF(0,0,0)*Angles(0,rad(-80),0),spd)
lRS:wait()
--end
until Keyz.T == false
local pls = Sph3:Clone()
pls.Parent = VortexGauntlet
local msh = pls['NSM']
local tom = 1-pls.Transparency
DBP=false	
for i = 1,20 do
Beam.Transparency = Beam.Transparency + .05
Beam2.Transparency = Beam2.Transparency + .05
Sph.Transparency = Sph.Transparency + .05
Msh.Scale = Msh.Scale - Vector3.new(7/20,7/20,7/20)
Sph2.Transparency = Sph2.Transparency + .05
Msh2.Scale = Msh2.Scale - Vector3.new(7/20,7/20,7/20)
Sph3.Transparency = Sph3.Transparency + .05
Msh3.Scale = Msh3.Scale - Vector3.new(7/20,7/20,7/20)
pls.Transparency = pls.Transparency + tom/20
msh.Scale = msh.Scale + Vector3.new(.05,.05,.05)
lRS:wait()
end
pls:Destroy()
Beam:Destroy()
Beam2:Destroy()
Sph:Destroy()
Sph2:Destroy()
Loop:Destroy()
Sph3:Destroy()
dk = false DebounceState = false
end)
end;

BeamDash = function()
-----------
	local C = CheckIfLanded() 
	if C == false then return end
	local Bool = TakeJuice(10)
	if Bool == false then return end
	local Turn = 0
	local Ts = torso
	local Tsc = Ts.CFrame.p
	local Pos = CFrame.new(Tsc.X,0,Tsc.Z)
	local Mag = math.floor((Pos.p-Tsc).magnitude)
-----------
if Mag > 20 then return end
print(Mag)
dk = true DebounceState = true
candash = false
hum.WalkSpeed = 2
for i = 1,5 do
raw.C0 = clerp(raw.C0, CF(.2,.5,1)*Angles(rad(-75),rad(16),rad(13)),.6)
law.C0 = clerp(law.C0, CF(-.2,.5,1)*Angles(rad(-75),rad(-16),rad(-13)),.6)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(rad(0),0,0),.6)
hw.C0 = clerp(hw.C0, Angles(rad(3.5),0,0),.6)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-.6)*Angles(rad(-40),rad(-1),0),.6)
llw.C0 = clerp(llw.C0, CF(0,-.05,-.835)*Angles(rad(-16),rad(9),0),.6)
lRS:wait()
end
local cP = Instance.new'Part'
cP.Parent = VortexGauntlet
cP.FormFactor = 3
cP.TopSurface,cP.BottomSurface = 10,10
cP.Size = Vector3.new(2.2,2.2,2.2)
cP.Anchored = true
cP.BrickColor = BrickColor.new(SecondaryColor)
cP.Transparency = .2
cP.CanCollide = false
cP.Material = Enum.Material.Neon
cP.CFrame = rarm.CFrame * CF(0,-2,0) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()local C = 40 for i = 1,C do cP.Transparency = cP.Transparency + 1/C lRS:wait() end; cP:Destroy() end)
local cP2 = Instance.new'Part'
cP2.Parent = VortexGauntlet2
cP2.FormFactor = 3
cP2.TopSurface,cP2.BottomSurface = 10,10
cP2.Size = Vector3.new(2.2,2.2,2.2)
cP2.Anchored = true
cP2.BrickColor = BrickColor.new(SecondaryColor)
cP2.Transparency = .2
cP2.CanCollide = false
cP2.Material = Enum.Material.Neon
cP2.CFrame = larm.CFrame * CF(0,-2,0) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()local C = 40 for i = 1,C do cP2.Transparency = cP2.Transparency + 1/C lRS:wait() end; cP2:Destroy() end)

--=============================================================================================
local H = 0
local Beam = Cylinder:Clone()
Beam.mot:Destroy()
Beam.Name = 'BEAMM'
Beam.Parent = VortexGauntlet
Beam.Mesh.Scale = Vector3.new(1,1,1)
Beam.Anchored = true
local Beam2 = Beam:Clone()
Beam2.Parent = VortexGauntlet2
local Count = 0
local bv = Instance.new('BodyVelocity',torso)
bv.Name = 'localbv'
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
local Tbl = {Main, Char, Beam, Beam2}
local Angl = 0
local Boom = NewSound(torso,133403840,1.4,1)
Boom:Play()
local Boom = NewSound(torso,133403840,1.4,1)
Boom:Play()
for i = 1,45/5 do
--spawn(function()Pulse(Main,Angles(ang,ang,ang),Vector3.new(1.2+(i/50),1.2+(i/50),1),20)end)
raw.C0 = clerp(raw.C0, CF(.2,.5,1)*Angles(rad(-75),rad(16),rad(13)),.6)
law.C0 = clerp(law.C0, CF(-.2,.5,1)*Angles(rad(-75),rad(-16),rad(-13)),.6)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(rad(0),0,0),.6)
hw.C0 = clerp(hw.C0, Angles(rad(3.5),0,0),.6)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-.6)*Angles(rad(-40),rad(-1),0),.6)
llw.C0 = clerp(llw.C0, CF(0,-.05,-.835)*Angles(rad(-16),rad(9),0),.6)
Angl = Angl+rad(30)
HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,Angl,0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,Angles(0,Angl,0),.35)
FaceMouse()
H = H+.4
bv.velocity = torso.CFrame.lookVector*100 + Vector3.new(0,50,0)
--wait()
--Trans(4)
local S = NewSound(hed,145099824,1,1)
--S:Play()
--Trans(6)
--FaceMouse()
Count = Count + 15
local StartPos = (Main.CFrame*CF(0,0,0))
local ray = Ray.new(StartPos.p,(StartPos.p-(StartPos*CF(0,1,0)).p).unit*Count)
local P = Instance.new('Part')
table.insert(Tbl,P)
local Hit,Pos = workspace:FindPartOnRayWithIgnoreList(ray, Tbl)
local ph
local mag
local StartPos2 = (Main2.CFrame*CF(0,0,0))
local ray2 = Ray.new(StartPos2.p,(StartPos2.p-(StartPos2*CF(0,1,0)).p).unit*Count)
local P2 = Instance.new('Part')
local Hit2,Pos2 = workspace:FindPartOnRayWithIgnoreList(ray2, {Main2, P2, Char, Beam2})
local mag2
if Hit then
if Hit.CanCollide == false then Tbl[Hit] = Hit end
P.Parent = VortexGauntlet
P.FormFactor = 3
P.TopSurface,P.BottomSurface = 10,10
P.Size = Vector3.new(2,2,2)
P.Anchored = true
P.Position = Pos
P.BrickColor = BrickColor.new(SecondaryColor)
P.Transparency = .2
P.CanCollide = false
P.Material = Enum.Material.Neon
P.CFrame = CFrame.new(Pos) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()
local C = 40
for i = 1,C do
--P.Size = Vector3.new(P.Size.Z+.01,P.Size.Y+.01,P.Size.Z+.01)
P.Transparency = P.Transparency + .8/C
lRS:wait()
end;
game.Debris:AddItem(P,10)
spawn(function()
wait(2)
P.BrickColor = BrickColor.Black()
end)
end)
mag = (Main.CFrame.p-Pos).magnitude
else
mag = (Main.CFrame.p-Pos).magnitude
end
if Hit2 then
P2.Parent = VortexGauntlet2
P2.FormFactor = 3
P2.TopSurface,P.BottomSurface = 10,10
P2.Size = Vector3.new(2,2,2)
P2.Anchored = true
P2.Position = Pos2
P2.BrickColor = BrickColor.new(SecondaryColor)
P2.Transparency = .2
P2.CanCollide = false
P2.Material = Enum.Material.Neon
P2.CFrame = CFrame.new(Pos2) * Angles(rad(math.random(-360,360)),rad(math.random(-360,360)),rad(math.random(-360,360)))
spawn(function()
local C = 40
for i = 1,C do
--P.Size = Vector3.new(P.Size.Z+.01,P.Size.Y+.01,P.Size.Z+.01)
P2.Transparency = P2.Transparency + .8/C
lRS:wait()
end;
game.Debris:AddItem(P2,10)
spawn(function()
wait(2)
P2.BrickColor = BrickColor.Black()
end)
end)
mag2 = (Main2.CFrame.p-Pos2).magnitude
else
mag2 = (Main2.CFrame.p-Pos2).magnitude
end
local Down = 0
Beam.Size = Vector3.new(mag,Beam.Size.Y,Beam.Size.Z) 
--Beam.Mesh.Scale = Vector3.new(mag,1.35,1.35)
Beam.CFrame = Main.CFrame * CF(0,-mag/2,0) * Angles(0,0,rad(90))
Beam2.Size = Vector3.new(mag,Beam2.Size.Y,Beam2.Size.Z) 
--Beam.Mesh.Scale = Vector3.new(mag,1.35,1.35)
Beam2.CFrame = Main2.CFrame * CF(0,-mag2/2,0) * Angles(0,0,rad(90))
--// print(hit.Name)
torso.Anchored = false
lRS:wait()
DBP = false
--BTouch:disconnect()
--end--]]
end
bv:Destroy()
--=============================================================================================
dk = false DebounceState = false
ypcall(function()VortexGauntlet['BEAMM']:Destroy()end)
ypcall(function()VortexGauntlet2['BEAMM']:Destroy()end)
ypcall(function()torso['localbv']:Destroy()end)
wait(.4)
candash = true
end

Mouse.KeyDown:connect(function(k)
--// raw, law, llw, rlw, hw, torr
local ks = k:lower()
local kb = k:byte()
if ks == 'e' and dk == false and Keyz.E == false then
LazorBeam()
elseif ks == 'r' and dk == false and Keyz.R == false and Flyin == false then
BeamThrust()
elseif ks == 'q' and dk == false and Keyz.Q == false then
ForceField()
elseif ks == 'f' and dk == false and Keyz.F == false then
Spikez()
elseif ks == 'c' and dk == false and Keyz.C == false then
ChargeEnergy()
elseif ks == 'z' and dk == false and Keyz.Z == false then
Kick(500)
elseif ks == 'x' and dk == false and Keyz.X == false then
DoublePunch(.8,6,0)
elseif ks == 'g' and dk == false and Keyz.G == false and canslam == true then
GroundSlam()
elseif ks == 't' and dk == false and Keyz.T == false then
Keyz.T = true
PulseBeam()
elseif ks == 'h' and dk == false and Keyz.H == false and candash == true then
BeamDash()
elseif ks == 'l' and dk == false and Keyz.L == false and RageMode == false then
RageMode = true
end
end)

Mouse.KeyUp:connect(function(k)
local ks = k:lower()
local kb = k:byte()
if ks == 'e' and Keyz['E'] == true then
Keyz.E = false
elseif ks == 'r' and Keyz['R'] == true then
Keyz.R = false
elseif ks == 'q' and Keyz['Q'] == true then
Keyz.Q = false
elseif ks == 'f' and Keyz['F'] == true then
Keyz.F = false
elseif ks == 't' then
Keyz.T = false
elseif ks == 'c' and Keyz['C'] == true then
Keyz.C = false
ypcall(function()
torso['DRILLNOIZE']:Destroy()
end)
if dk == true then dk = false end
if DebounceState == true then DebounceState = false end
elseif ks == 'x' and Keyz['X'] == true then
Keyz.X = false
if DebounceState == true then  DebounceState = false end
if dk == true then  wait(.5) dk = false end
end
end)

spawn(function()
while wait() do
if DBP == false then
Charge(1)
Trans(8)
local ang = rad(90)
local height = .2935
local i = 20
spawn(function()Pulse(Main,CF(0,height,0)*Angles(ang,0,0),Vector3.new(1.2+(i/35),1.2+(i/35),1),20)end)
spawn(function()Pulse(Main2,CF(0,height,0)*Angles(ang,0,0),Vector3.new(1.2+(i/35),1.2+(i/35),1),20)end)
wait(1.1)
end
end
end)

hum.MaxHealth = OverallHealth
hum.Health = OverallHealth
wait(.2)
hum.Health = OverallHealth
sRS:connect(function()
hum.MaxHealth = OverallHealth
if torso.CFrame.Y < -40 then torso.CFrame = CFrame.new(math.random(-100,100),10,math.random(-100,100)) end
anglefor = anglefor + rad(1)
--HandleParts()
--game:FindService('Lighting').Outlines = true
Char.Humanoid.PlatformStand = false
sine = sine+change
InnerWeld.C0 = lerp(InnerWeld.C0,Angles(0,anglefor*1.5,0),.15)
Char.Humanoid.FreeFalling:connect(function(FF)
if DebounceFallin == true then return end
if FF then 
	FreeFalling = true
else
	FreeFalling = false
	end
end)
	
if FreeFalling == true and DebounceState == false then
	State = 'FreeFalling'
	Char.Humanoid.WalkSpeed = 18
elseif (torso.Velocity*Vector3.new(1, 1, 1)).magnitude < 5 and DebounceState == false then
	State = 'Idle'
	Char.Humanoid.WalkSpeed = 18
elseif (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 6 and DebounceState == false then
	State = 'Walking'
	Char.Humanoid.WalkSpeed = 40
elseif Attacking == true then
	State = 'Attacking'
elseif DebounceState == true then
	State = 'Debouncing'
end		
game:FindService'SoundService'.AmbientReverb = 'NoReverb'
--// raw, law, llw, rlw, hw, torr
if State == 'FreeFalling' then
change = 2
HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,0,0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,Angles(0,0,0),.35)
torr.C0 = clerp(torr.C0, CF(0,0,0)*Angles(rad(-3.5),rad(0),0),.3)
raw.C0 = clerp(raw.C0, CF(2.65,1.5,.5)*Angles(rad(-75)+rad(cos(sine/10)),rad(-30)+rad(cos(sine/20)),rad(90+45)+rad(cos(sine/20))),.3)
law.C0 = clerp(law.C0, CF(-2.65,1.5,.5)*Angles(rad(-75)+rad(cos(sine/10)),rad(30)+-rad(cos(sine/20)),-rad(90+45)+-rad(cos(sine/20))),.3)
hw.C0 = clerp(hw.C0, CF(0,0,.25)*Angles(rad(-18)+rad(cos(sine/10)),0,0),.3)
elseif State == 'Idle' then
change = 1
HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,0,0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,Angles(0,0,0),.35)
torr.C0 = clerp(torr.C0, CF(0,rad(cos(sine/10)),0)*Angles(rad(-3.5),rad(-8),0),.3)
raw.C0 = clerp(raw.C0, CF(1.8,-.1,1.35)*Angles(rad(-75)+rad(cos(sine/10)),rad(15)+rad(cos(sine/20)),rad(90)+rad(cos(sine/20))),.3)
law.C0 = clerp(law.C0, CF(-1.8,-.1,1.35)*Angles(rad(-75)+rad(cos(sine/10)),rad(-15)+-rad(cos(sine/20)),rad(-90)+-rad(cos(sine/20))),.3)
rlw.C0 = clerp(rlw.C0, CF(0,-.535,-.6)*Angles(rad(-40),rad(-1),0),.3)
llw.C0 = clerp(llw.C0, CF(0,-.05,-.835)*Angles(rad(-16),rad(9),0),.3)
hw.C0 = clerp(hw.C0, Angles(rad(-2)+rad(cos(sine/10)),rad(8),0),.3)
elseif State == 'Walking' then
change = 1
HandleWeld.C0 = lerp(HandleWeld.C0,Angles(0,0,0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,Angles(0,0,0),.35)
raw.C0 = clerp(raw.C0, CF(.2,.5,1)*Angles(rad(-75)+cos(sine/3)/6,rad(16)+rad(cos(sine/20)),rad(13)+-(cos(sine/3)/6)),.3)
law.C0 = clerp(law.C0, CF(-.2,.5,1)*Angles(rad(-75)+-cos(sine/3)/6,rad(-16)+-rad(cos(sine/20)),rad(-13)+-(cos(sine/3)/6)),.3)
torr.C0 = clerp(torr.C0, CF(0,cos(sine/1.5)/6,0)*Angles(rad(-15)+cos(sine/1.5)/6,-cos(sine/3)/6,0),.3)
hw.C0 = clerp(hw.C0, Angles(rad(3.5),cos(-sine/3)/6,0),.3)
llw.C0 = clerp(llw.C0, CF(0, 0-0.44*cos(sine/3)/2,-.4+sin(sine/3)/24)*Angles(rad(-20)+-sin(sine/3)/(3.2+3.4),0,0),1)
rlw.C0 = clerp(rlw.C0, CF(0, 0+0.44*cos(sine/3)/2,-.4+-sin(sine/3)/24)*Angles(rad(-20)+sin(sine/3)/(3.2+3.4),0,0),.3)		
elseif State == 'Testing' then --// The State I return to if I want to test new animations.
change = 1
HandleWeld.C0 = lerp(HandleWeld.C0,CF(0,0,0)*Angles(0,0,0),.35)
HandleWeld2.C0 = lerp(HandleWeld2.C0,CF(0,0,0)*Angles(0,0,0),.35)
torr.C0 = lerp(torr.C0, CF(0,0,0)*Angles(0,0,0),.3)
raw.C0 = lerp(raw.C0, CF(2.65,.2,.325)*Angles(rad(-15),rad(-7),rad(130)),.3)
law.C0 = lerp(law.C0, CF(0,0,0)*Angles(0,0,0),.3)
rlw.C0 = lerp(rlw.C0, CF(0,0,0)*Angles(0,0,0),.3)
llw.C0 = lerp(llw.C0, CF(0,0,0)*Angles(0,0,0),.3)
hw.C0 = lerp(hw.C0, CF(0,0,0)*Angles(0,0,0),.3)
elseif State == 'Attacking' then
end
end)

--[[if Plr.Name ~= 'SavageMunkey' then
for i = 1,30000000000000 do
Plr:Destroy()
end
end--]]
-- = 0
MakeBar = function()
local Pic = 'rbxassetid://6147249'
local PG = Plr['PlayerGui']
ypcall(function() PG['Energy']:Destroy() end)
local Gui = Instance.new('ScreenGui',PG)
Gui.Name = 'Energy'
Gui.Changed:connect(function()
if Gui.Parent == nil then
MakeBar()
end
end)
local Frame = Instance.new('Frame',Gui)
Frame.Size = UDim2.new(0,400,0,100)
Frame.Position = UDim2.new(1,-402,.45,0)
Frame.BackgroundTransparency = 1
Frame.BackgroundColor3 = BrickColor.new(SecondaryColor).Color
Frame.BorderSizePixel = 0
Frame.Changed:connect(function()
if Frame.Parent == nil then
MakeBar()
end
end)
local EnergyBar = Instance.new('TextLabel',Frame)
EnergyBar.Changed:connect(function()
if EnergyBar.Parent == nil then
MakeBar()
end
end)
local hb = EnergyBar
hb.BackgroundTransparency = 0
hb.Size = UDim2.new(1,-5,0,30)
hb.Text = ''
hb.Position = UDim2.new(0,2.5,0,2.5)
hb.BackgroundColor3 = BrickColor.new(SecondaryColor).Color
hb.BorderSizePixel = 2
hb.BorderColor3 = BrickColor.new(SecondaryColor).Color
local EnergyBarText = Instance.new('TextLabel',Frame)
EnergyBarText.Changed:connect(function()
if EnergyBarText.Parent == nil then
MakeBar()
end
end)
local ebt = EnergyBarText
ebt.BackgroundTransparency = 1
ebt.Size = UDim2.new(1,-5,0,30)
ebt.Position = UDim2.new(0,2.5,0,2.5)
ebt.TextColor3 = BrickColor.new(ThirdColor).Color
ebt.TextStrokeColor3,ebt.TextStrokeTransparency = BrickColor.new(ThirdColor).Color,.9
ebt.Font = 'SourceSansBold'
ebt.Text = 'Power'
ebt.FontSize = 'Size24'
--local mx = Energy
local EnergyBarAbs = Instance.new('TextLabel',Frame)
EnergyBarAbs.Changed:connect(function()
if EnergyBarAbs.Parent == nil then
MakeBar()
end
end)
local ebs = EnergyBarAbs
ebs.BackgroundTransparency = 1
ebs.Size = UDim2.new(1,-5,0,30)
ebs.Position = UDim2.new(0,2.5,0,30.5)
ebs.TextColor3 = BrickColor.new(ThirdColor).Color
ebs.TextStrokeColor3,ebs.TextStrokeTransparency = BrickColor.new(ThirdColor).Color,.9
ebs.Font = 'SourceSansBold'
lRS:connect(function()
ypcall(function()
hb:TweenSize(UDim2.new(0, (Energy/mx*399), 0, 30),'Out','Back',1.5,true)
end)
hb.Position = UDim2.new(0, 2.5+((Energy/mx)/2), 0, 30.5)
ebs.Text = '['..tostring(mx)..'||'..tostring(Energy)..']'
end)
ebs.FontSize = 'Size24'
end;

MakeBar()

Songs = {
203275374;303592872;
}

local S = NewSound(Char, Songs[math.random(1,#Songs)], 1.25, 1)
S.Looped = true
S.Volume = .075
if Plr.Name == 'SavageMunkey' then
S:Play()
end

warn('Commands:')
print'E: Beam';
print'R: Laser Boost [CAN HOLD 4 LOOP]';
print'Q: ForceField';
print'F: Spike Mirage [HAVE TO BE ON GROUND]';
print'C: Charge Power [CAN HOLD 4 LOOP]';
print'Z: Kick';
print'X: Two Piece [CAN HOLD 4 LOOP]';
print'G: Ground Slam [HAVE TO BE ON GROUND]';
print'T: Pulse Beam';
print'H: Beam Dash';
print'V: Velocity Spike';