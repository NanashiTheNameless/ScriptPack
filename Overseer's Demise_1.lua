Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local m = Instance.new("Model",Character)
m.Name = "WeaponModel"

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 


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
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t)
return a:lerp(b,t)
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Handle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Lime green","Handle",Vector3.new(0.301632881, 2.05244946, 0.301632911))
Handleweld=CreateWeld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900724411, 0.0686532855, 0.100441933, -9.87591953e-013, -0.999999881, 4.85088272e-012, 5.21260915e-007, -4.85088272e-012, -1, 1, -9.87589351e-013, 5.21260915e-007))
CreateMesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FakeHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Lime green","FakeHandle",Vector3.new(0.301632881, 1.05244946, 0.301632911))
FakeHandleweld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.100000024, 0, 1, 0, 3.49105374e-020, 0, 1, 0, 3.49105374e-020, 0, 1))
CreateMesh("CylinderMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Lime green","Part",Vector3.new(0.200000003, 0.904898763, 1.50816441))
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
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.200000003, 4.67530966, 0.200000003))
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
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00170040131, 3.48783398, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00170660019, 5.14681053, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.301632881, 4.67530966, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -3.72235155, -0.00077009201, 0.999994278, -7.02250896e-011, -3.89532287e-012, 6.9244506e-011, 0.999999702, 5.10900372e-006, 3.73475946e-012, -5.00472652e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
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
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.5, 4.76837158e-007, 1, 0, 3.49105374e-020, 0, 1, 0, 3.49105374e-020, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.706498325, -0.000161170959, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000784397125, -0.226063848, 4.32552719, -7.45085771e-008, 9.38253208e-007, -0.999994278, 0.999994278, 2.58115534e-007, -7.45084705e-008, 2.5811508e-007, -0.999999702, -1.04255219e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.404852629, -0.000162601471, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
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
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
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
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Lime green","Part",Vector3.new(0.904898703, 4.67530966, 0.200000003))
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
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00169754028, 2.73375678, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -1.00806975, -0.000158786774, 0.999994278, -8.51322832e-011, -5.37915415e-012, 8.41605743e-011, 0.999999702, 6.15139652e-006, 5.21480515e-012, -6.04712568e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.301632822, 0.331796169, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.452520609, -9.58442688e-005, 1.23446751, 0.999994278, -5.5805336e-011, -2.06513279e-012, 1.90487188e-012, -8.32826402e-007, 0.999994278, -5.48248356e-011, -0.999999702, -9.37126288e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.754082322))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.857257009, -0.000160217285, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 2.11143041, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22638917, -2.44035769, -0.000775337219, 0.999994278, -7.71317871e-011, -4.71892274e-012, 7.61511756e-011, 0.999999702, 6.04763136e-006, 4.55825265e-012, -5.94335961e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.301632911, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.2649765e-005, -4.76837158e-007, -1.40486121, -1, -4.85088315e-012, -9.87589459e-013, 9.87591953e-013, -5.21260915e-007, -1, 4.85088272e-012, -1, 5.21260915e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0935061872, 0.18248795, 0.334812433))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.103231549, -0.00016450882, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.301632911, 0.452449381))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000157356262, -0.452600718, 1.46049201, 3.77276812e-012, -5.00457736e-006, 0.999994278, -0.999994278, 2.98778282e-008, 4.08561423e-012, -2.98766878e-008, -0.999999702, -5.10885457e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox",Vector3.new(0.904898703, 6.27530956, 0.200000003))
Hitboxweld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000299930573, -4.52235365, 0.000774860382, -0.999994278, -6.44028191e-008, 7.45117816e-008, -6.44031601e-008, 0.999999702, 3.93397568e-006, -7.45118669e-008, 3.82969256e-006, -0.999994278))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.452449381))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00029706955, 0.00348496437, 6.28616476, -1.49025681e-008, 4.09715824e-007, -0.999994278, 0.999994278, 1.89689203e-007, -1.49026409e-008, 1.89689132e-007, -0.999999702, -5.14017074e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.791786313, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00029706955, 0.00348496437, 6.13534832, -1.49025681e-008, 4.0970491e-007, -0.999994278, 0.999994278, 1.89689203e-007, -1.49026409e-008, 1.89689132e-007, -0.999999702, -5.1400616e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.806038439, 0.102555193, 0.754082263))

function attackone()
attack = true
for i = 0,1,0.1 do
wait()
end
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 1
attackone()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == '' then

end
end)


local sine = 0
local change = 1
local val = 0

while true do
wait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(0,0,0),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(0,0,0),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0,0,0), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(0,0,0), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(0,1.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(0,-1.6,0),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(0,0,0),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(0,0,0),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0,0,0), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(0,0,0), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(0,1.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(0,-1.6,0),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(0,0,0),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(0,0,0),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0,0,0), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(0,0,0), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(0,1.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(0,-1.6,0),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(1,0,0),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(0,0,0),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0,0,0), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(0,0,0), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(0,1.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(0,-1.6,0),.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
end
end
end