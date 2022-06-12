Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
attack = false 
attackdebounce = false 
attacktype = 1 
combo = 0 
damage = 3 
oridamage = 3 
walkdebounce = false 
sheathed = true 
act = {key = {}}
walking = false 
hold=false
MMouse=nil
equipped=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
con1=nil
con2=nil
con3=nil
mana=400
offset=nil
sonicing=false
newpos2=nil
modee=0
comboing=false
combo=0
drivemode=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = it("Weld"), it("Weld") 
RW2, LW2 = it("Weld"), it("Weld") 
--what anim 
anim = "none" 
--[[
if Character:findFirstChild("SonicDriv",true) ~= nil then 
Character:findFirstChild("SonicDriv",true).Parent = nil 
end 
]]
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
--[[
if Player.userId~=209911 and Player.userId~=19063050 then 
script.Parent = Character 
local h = it("Hint") 
h.Parent = workspace 
h.Text = "UR NOT MEMORY!" 
wait(1) 
h.Text = "U MUST DAI!!" 
wait(0.5) 
if Character:findFirstChild("ForceField") ~= nil then 
Character:findFirstChild("ForceField").Parent = nil 
end 
Character:BreakJoints() 
local m = it("Explosion") 
m.Parent = workspace 
m.Position = Torso.Position 
wait(3) 
h.Parent = nil 
script.Parent = nil 
wait(9001) 
while true do 
wait() 
end 
end 
 ]]
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
fp.BottomSurface="Smooth"
fp.TopSurface="Smooth"
fp:BreakJoints()
return fp 
end 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
end
Ballprt=part(1,nil,0,1,BrickColor.new("Black"),"Ball",vt(3,3,3))
Ballmsh=mesh("SpecialMesh",Ballprt,"Sphere","",vt(0,0,0),vt(1,1,1))
Ballwld=weld(Ballprt,Ballprt,Prt4,cf(0,0,0))

local Main=it("Model")
Main.Parent=Character
Main.Name="Weapon"
local model = Main

Part1 = New("Part",Main,"Part1",{BrickColor = BrickColor.new("Black"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(0.0545222983, -0.00267482176, -0.140711084),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(23.5281181, 1.05307972, -20.1492653, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part1,"Mesh",{Scale = Vector3.new(0.300000012, 1, 0.300000012),})
Part2 = New("Part",Main,"Part2",{BrickColor = BrickColor.new("White"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(0.0545222983, -0.00267482176, -0.140711084),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(23.5281181, 1.05307972, -20.1492653, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.94902, 0.952941, 0.952941),})
Mesh = New("CylinderMesh",Part2,"Mesh",{Scale = Vector3.new(0.310000002, 0.5, 0.310000002),})
Part3 = New("Part",Main,"Part3",{BrickColor = BrickColor.new("Navy blue"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(0.126909614, -0.00345553411, -0.273170292),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(23.8791237, 1.05308807, -19.9574451, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 0.12549, 0.376471),})
Mesh = New("CylinderMesh",Part3,"Mesh",{Scale = Vector3.new(0.5, 0.200000003, 0.5),})
Part4 = New("Part",Main,"Part4",{BrickColor = BrickColor.new("Navy blue"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(0.163103625, -0.00384589471, -0.339399874),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(24.0546265, 1.05309236, -19.8615341, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 0.12549, 0.376471),})
Mesh = New("CylinderMesh",Part4,"Mesh",{Scale = Vector3.new(0.310000002, 0.300000012, 0.310000002),})
Part5 = New("Part",Main,"Part5",{BrickColor = BrickColor.new("Navy blue"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(0.199289024, -0.00423614029, -0.405634642),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(24.2301426, 1.05307627, -19.765646, 0.479459524, 0.877516031, -0.0092926221, -0.0164564233, -0.00159672752, -0.999864638, -0.877409637, 0.47954759, 0.0136752091),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 0.12549, 0.376471),})
Mesh = New("SpecialMesh",Part5,"Mesh",{Scale = Vector3.new(0.300000012, 0.200000003, 0.300000012),MeshType = Enum.MeshType.Torso,})
Part6 = New("Part",Main,"Part6",{BrickColor = BrickColor.new("Navy blue"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(0.199296206, -0.00423623621, -0.405630171),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(24.2301311, 1.05309701, -19.7656269, 0.00824380852, 0.878278732, 0.478078187, 0.999851525, -5.90623995e-006, -0.0172302313, -0.0151301203, 0.478149295, -0.878148198),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 0.12549, 0.376471),})
Mesh = New("SpecialMesh",Part6,"Mesh",{Scale = Vector3.new(0.300000012, 0.200000003, 0.300000012),MeshType = Enum.MeshType.Torso,})
Part7 = New("Part",Main,"Part7",{BrickColor = BrickColor.new("Navy blue"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(-0.0359616578, -0.00169893377, 0.0248629153),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(23.0893612, 1.05306923, -20.38904, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 0.12549, 0.376471),})
Mesh = New("CylinderMesh",Part7,"Mesh",{Scale = Vector3.new(0.310000002, 0.300000012, 0.310000002),})
Part8 = New("Part",Main,"Part8",{BrickColor = BrickColor.new("Navy blue"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(-0.0540590286, -0.0015037487, 0.0579777062),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(23.0016098, 1.05306709, -20.4369965, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 0.12549, 0.376471),})
Mesh = New("CylinderMesh",Part8,"Mesh",{Scale = Vector3.new(0.400000006, 0.200000003, 0.400000006),})
Part9 = New("Part",Main,"Part9",{BrickColor = BrickColor.new("Navy blue"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(-0.0721556917, -0.00130857283, 0.091092512),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(22.9138584, 1.05306506, -20.484951, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 0.12549, 0.376471),})
Mesh = New("CylinderMesh",Part9,"Mesh",{Scale = Vector3.new(0.5, 0.200000003, 0.5),})
Part10 = New("Part",Main,"Part10",{BrickColor = BrickColor.new("Black"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(-0.126446351, -0.000723036297, 0.1904369),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(22.6506042, 1.05305874, -20.6288166, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part10,"Mesh",{Scale = Vector3.new(0.349999994, 0.300000012, 0.349999994),MeshId = "http://www.roblox.com/asset/?id=1778999",MeshType = Enum.MeshType.FileMesh,})
Part11 = New("Part",Main,"Part11",{BrickColor = BrickColor.new("Black"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(-0.180737019, -0.000137499766, 0.289781302),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(22.3873501, 1.05305243, -20.7726822, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part11,"Mesh",{Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012),MeshId = "http://www.roblox.com/asset/?id=1778999",MeshType = Enum.MeshType.FileMesh,})
Part13 = New("Part",Main,"Part13",{BrickColor = BrickColor.new("Bright blue"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(-0.289318353, 0.00103357318, 0.488470107),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(21.8608418, 1.05303991, -21.0604134, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0509804, 0.411765, 0.67451),})
Mesh = New("SpecialMesh",Part13,"Mesh",{Scale = Vector3.new(0.200000003, 0.300000012, 0.200000003),MeshType = Enum.MeshType.Sphere,})
Part12 = New("Part",Main,"Part12",{BrickColor = BrickColor.new("Navy blue"),RotVelocity = Vector3.new(0.0047971271, 0.377370775, 0.000397353608),Velocity = Vector3.new(-0.253124326, 0.000643212465, 0.422240496),Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(22.0363445, 1.05304408, -20.9645023, 0.479486048, -0.877514124, 0.00788792316, -0.0164869614, -2.09873924e-005, 0.999864101, -0.877394617, -0.479550958, -0.0144776041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0, 0.12549, 0.376471),})
Mesh = New("CylinderMesh",Part12,"Mesh",{Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012),})


Prt1=Main.Part1
Prt2=Main.Part2
Prt3=Main.Part3
Prt4=Main.Part4
Prt5=Main.Part5
Prt6=Main.Part6
Prt7=Main.Part7
Prt8=Main.Part8
Prt9=Main.Part9
Prt10=Main.Part10
Prt11=Main.Part11
Prt12=Main.Part12
Prt13=Main.Part13
count=0
for i=1,6 do
Part=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part",vt(1,1,1))
Mesh=mesh("BlockMesh",Part,"","",vt(0,0,0),vt(0.1,0.4,0.1))
Weld=weld(Main,Part,Prt11,cf(0.15,-0.15,0)*euler(0,count,0))
count=count+1.05
end
count=0
for i=1,6 do
Part=part(1,Main,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
Mesh=mesh("BlockMesh",Part,"","",vt(0,0,0),vt(0.1,0.5,0.1))
Weld=weld(Main,Part,Prt10,cf(0.15,-0.15,0)*euler(0,count+0.5,0))
count=count+1.05
end
count=0
for i=1,6 do
Part=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part",vt(1,1,1))
Mesh=mesh("BlockMesh",Part,"","",vt(0,0,0),vt(0.05,0.2,0.05))
Weld=weld(Main,Part,Prt12,euler(0,0,0)*cf(0.1,-0.15,0)*euler(0,count,0))
count=count+1.05
coroutine.resume(coroutine.create(function(Derpweld,numb,part)
while true do
wait()
if drivemode==false then
Derpweld=weld(Main,part,Prt12,euler(0,0,0)*cf(0.1,-0.15,0)*euler(0,numb,0))
end
if drivemode==true then
Derpweld=weld(Main,part,Prt12,euler(0,0,-0.5)*cf(0.2,-0.17,0)*euler(0,numb,0))
end
end
end),Weld,count,Part)
end
Msh1=Prt1.Mesh
Msh2=Prt2.Mesh
Msh3=Prt3.Mesh
Msh4=Prt4.Mesh
Msh5=Prt5.Mesh
Msh6=Prt6.Mesh
Msh7=Prt7.Mesh
Msh8=Prt8.Mesh
Msh9=Prt9.Mesh
Msh10=Prt10.Mesh
Msh11=Prt11.Mesh
Msh12=Prt12.Mesh
Msh13=Prt13.Mesh
Wld1=weld(Main,Prt1,LeftLeg,euler(0,0,2)*cf(1,-0.8,-0.4))
Wld2=weld(Main,Prt2,Prt1,euler(0,0,0)*cf(0,0,0))
Wld3=weld(Main,Prt3,Prt1,euler(0,0,0)*cf(0,0.4,0))
Wld4=weld(Main,Prt4,Prt1,euler(0,0,0)*cf(0,0.6,0))
Wld5=weld(Main,Prt5,Prt1,euler(3.14,0,0)*cf(0,0.8,0))
Wld6=weld(Main,Prt6,Prt1,euler(3.14,1.57,0)*cf(0,0.8,0))
Wld7=weld(Main,Prt7,Prt1,euler(0,0,0)*cf(0,-0.5,0))
Wld8=weld(Main,Prt8,Prt1,euler(0,0,0)*cf(0,-0.6,0))
Wld9=weld(Main,Prt9,Prt1,euler(0,0,0)*cf(0,-0.7,0))
Wld10=weld(Main,Prt10,Prt9,euler(0,0,0)*cf(0,-0.3,0))
Wld11=weld(Main,Prt11,Prt9,euler(0,0,0)*cf(0,-0.3,0))
Wld12=weld(Main,Prt12,Prt11,euler(0,0,0)*cf(0,-0.4,0))
Wld13=weld(Main,Prt13,Prt12,euler(0,0,0)*cf(0,-0.2,0))
local Board=it("Model")
Board.Parent=nil
Board.Name="Jet Board"
BPrt1=part(1,Board,0,0,BrickColor.new("Black"),"Part1",vt(1,1,1))
BPrt2=part(1,Board,0,0,BrickColor.new("Black"),"Part2",vt(1,1,1))
BPrt3=part(1,Board,0,0,BrickColor.new("Black"),"Part3",vt(1,1,1))
BPrt4=part(1,Board,0,0,BrickColor.new("Black"),"Part4",vt(1,1,1))
BPrt5=part(1,Board,0,0,BrickColor.new("Black"),"Part5",vt(1,1,1))
BPrt6=part(1,Board,0,0,BrickColor.new("Navy blue"),"Part6",vt(1,1,1))
BPrt7=part(1,Board,0,0,BrickColor.new("Navy blue"),"Part7",vt(1,1,1))
BPrt8=part(1,Board,0,0,BrickColor.new("Navy blue"),"Part8",vt(1,1,1))
BPrt9=part(1,Board,0,0,BrickColor.new("Black"),"Part9",vt(1,1,1))
BPrt10=part(1,Board,0,0,BrickColor.new("Really black"),"Part10",vt(1,1,1))
BPrt11=part(1,Board,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
BPrt12=part(1,Board,0,0,BrickColor.new("Really black"),"Part12",vt(1,1,1))
BMsh1=mesh("BlockMesh",BPrt1,"","",vt(0,0,0),vt(4,0.7,5))
BMsh2=mesh("SpecialMesh",BPrt2,"Wedge","",vt(0,0,0),vt(0.85,1.57,2))
BMsh3=mesh("SpecialMesh",BPrt3,"Wedge","",vt(0,0,0),vt(0.85,1.57,2))
BMsh4=mesh("BlockMesh",BPrt4,"","",vt(0,0,0),vt(0.35,0.7,2))
BMsh5=mesh("CylinderMesh",BPrt5,"","",vt(0,0,0),vt(0.4,0.7,0.4))
BMsh6=mesh("BlockMesh",BPrt6,"","",vt(0,0,0),vt(3.5,0.71,4.5))
BMsh7=mesh("SpecialMesh",BPrt7,"Wedge","",vt(0,0,0),vt(0.86,1.07,1.5))
BMsh8=mesh("SpecialMesh",BPrt8,"Wedge","",vt(0,0,0),vt(0.86,1.07,1.5))
BMsh9=mesh("CylinderMesh",BPrt9,"","",vt(0,0,0),vt(1.5,2,1.5))
BMsh10=mesh("CylinderMesh",BPrt10,"","",vt(0,0,0),vt(1.2,2,1.2))
BMsh11=mesh("CylinderMesh",BPrt11,"","",vt(0,0,0),vt(1.5,2,1.5))
BMsh12=mesh("CylinderMesh",BPrt12,"","",vt(0,0,0),vt(1.2,2,1.2))
BWld1=weld(Board,BPrt1,Head,euler(0,0,0)*cf(0,2,5))
BWld2=weld(Board,BPrt2,BPrt1,euler(0,0,1.57)*cf(-1.1,0,3.5))
BWld3=weld(Board,BPrt3,BPrt1,euler(0,0,-1.57)*cf(1.1,0,3.5))
BWld4=weld(Board,BPrt4,BPrt1,euler(0,0,0)*cf(0,0,3.5))
BWld5=weld(Board,BPrt5,BPrt1,euler(0,0,0)*cf(0,0,4.35))
BWld6=weld(Board,BPrt6,BPrt1,euler(0,0,0)*cf(0,0,0))
BWld7=weld(Board,BPrt7,BPrt1,euler(0,0,1.57)*cf(-0.8,0,3))
BWld8=weld(Board,BPrt8,BPrt1,euler(0,0,-1.57)*cf(0.8,0,3))
BWld9=weld(Board,BPrt9,BPrt1,euler(1.57,0,0)*cf(1.2,1,-0.8))
BWld10=weld(Board,BPrt10,BPrt9,euler(0,0,0)*cf(0,0.01,0))
BWld11=weld(Board,BPrt11,BPrt1,euler(1.57,0,0)*cf(-1.2,1,-0.8))
BWld12=weld(Board,BPrt12,BPrt11,euler(0,0,0)*cf(0,0.01,0))
local fengui = it("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = it("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = it("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = it("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = it("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
local bg = it("BodyGyro") 
bg.Parent = nil 
local bg2=it("BodyGyro")
Tool = it("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Sonic Driver" 
Bin = Tool 
function unequipweld() 
Wld1.Part1=LeftLeg
Wld1.C0=euler(0,0,2)*cf(1,-0.8,-0.4)
Wld11.C0=euler(0,0,0)*cf(0,-0.3,0)
end 
function equipweld() 
Wld1.Parent=Main
Wld1.Part1=LeftArm
Wld1.C0=euler(2,0,0)*cf(0,1.2,0)
end 
function hideanim() 
equipped = false
bg.Parent=nil
drivemode=false
unequipweld() 
--[[for i = 0 , 1 , 0.1 do 
wait(0)  
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end ]]
wait(0.1)
Torso.Neck.C0=necko*euler(0,0,0)
end 
function equipanim(mouse) 
equipped = true 
for i = 0,1,0.1 do 
wait()  
Torso.Neck.C0=necko*euler(0.5*i,0,0.5*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3*i,-1.57*i,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
equipweld() 
for i = 0,1,0.1 do 
wait()  
Wld1.C0=euler(2,0,0)*cf(0,1.2-0.3*i,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+0.9*i,-1.57+1.7*i,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
wait(0.2)
for i = 0,1,0.2 do 
wait()  
Torso.Neck.C0=necko*euler(0.5+0.2*i,0,0.5)
Wld1.C0=euler(2,0,0)*cf(0,0.9,0)
Wld11.C0=euler(0,0,0)*cf(0,-0.3-0.3*i,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0.6-0.5*i,0.13+0.07*i,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
drivemode=true
wait(0.2)
Torso.Neck.C0=necko*euler(0,0,0)
Stance()
end 
function Stance()
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 15000
bg.Parent = Torso
while equipped==true and walking==false and attack==false do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1,0)
bg.Parent = Torso
--Torso.Neck.C0=necko*euler(0,offset,0)*euler(0,0,1)
Torso.Neck.C0=necko*euler(0,0,1)
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
Wld1.C0=euler(2,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
Torso.Neck.C0=necko*euler(0,0,0)
bg.Parent=nil
end))
end
function Walking()
if attack==false then
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
walking=true
end
function Slash1()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(2+1.14*i,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57*i,0,-0.5+1.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-5,0)
Stun2(Ballprt,0,0,0,BrickColor.new("Navy blue"))
con1=Ballprt.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i=0,1,0.2 do
wait()
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57-offset,0,1-2.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=false
lightning=false
con1:disconnect()
wait(0.2)
Ballprt.Parent=nil
attack=false
end
function Slash2()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57+1.57*i,0,-2+2*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-5,0)
Stun2(Ballprt,0,0,0,BrickColor.new("Navy blue"))
con1=Ballprt.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(3.14-3.14*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=false
lightning=false
con1:disconnect()
wait(0.2)
Ballprt.Parent=nil
attack=false
end
function Slash3()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57*i,0,-1.57*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-5,0)
Stun2(Ballprt,0,0,0,BrickColor.new("Navy blue"))
con1=Ballprt.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
for i=0,1,0.1 do
wait()
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,6.28*i,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57-1*i,0,-1.57-1*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(0.1)
for i=0,1,0.1 do
wait()
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0.57+1*i,0,-2.57+3*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=false
lightning=false
con1:disconnect()
wait(0.2)
Ballprt.Parent=nil
attack=false
end
function Magic1()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1.57,0)
bg.Parent = Torso
Torso.Neck.C0=necko*euler(0,0,1.57)
Wld1.C0=euler(2+1.14*i,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5-1.07*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-10,0)
con1=Ballprt.Touched:connect(function(hit) DOH(hit,20,0) end) 
for i=0,4,0.1 do
wait()
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1.57,0)
bg.Parent = Torso
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,-offset) 
MMMAGIC(Ballprt,4,4,4,0,0,0,BrickColor.new("Black")) 
end
sonicing=false
con1:disconnect()
wait(0.2)
Ballprt.Parent=nil
attack=false
end
function Magic2()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1.57,0)
bg.Parent = Torso
Torso.Neck.C0=necko*euler(0,0,1.57)
Wld1.C0=euler(2+1.14*i,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,1.57*i) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
coroutine.resume(coroutine.create(function() 
derpprt=part(1,workspace,0,1,BrickColor.new("Black"),"Derp",vt(1,1,1))
derpprt.CFrame=Head.CFrame
derpprt.Anchored=true
count=0
for i=0,3,0.1 do
wait()
EVENMOARMAGIX(derpprt,4,15,4,0,-4,-5-count,0,0,0,BrickColor.new("Navy blue")) 
count=count+2.5
local testbrick = it("Part") 
testbrick.Parent = workspace
testbrick.Anchored = true 
testbrick.Transparency = 0 
testbrick.CFrame = derpprt.CFrame * cf(0,0,-5-count) 
coroutine.resume(coroutine.create(function() 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - testbrick.Position;
                local mag = targ.magnitude;
                if mag <= 5 and c[i].Name ~= Player.Name then 
                Damagefunc1(head,math.floor(10),0.1)
                end 
                end 
                end 
        end 
end)) 
coroutine.resume(coroutine.create(function(Part) 
Part.Parent = nil 
end),testbrick)
end
derpprt.Parent=nil
end))
wait(0.5)
sonicing=false
wait(0.5)
attack=false
end
function Magic3()
attack=true
sonicing=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1.57,0)
bg.Parent = Torso
Torso.Neck.C0=necko*euler(0,0,1.57)
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,1.57-1.57*i) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-10,0)
numb=math.random(-50,50)
EVENMOARMAGIX2(Ballprt.CFrame,3,3,3,0,0,0,0,0,0,BrickColor.new("Black")) 
WaveEffect2(Ballprt.CFrame,7,7,7,0,0,0,numb,1,0,BrickColor.new("Black")) 
WaveEffect2(Ballprt.CFrame,7,7,7,0,0,0,-numb,-1,0,BrickColor.new("Black")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - Ballprt.Position;
local mag = targ.magnitude;
if mag <= 15 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,20,0.1,Ballprt.Position)
end 
end 
end 
end
wait()
sonicing=false
wait(1)
Ballprt.Parent=nil
attack=false
end
function JetBoard()
attack=true
local GUI = Instance.new("BillboardGui") 
GUI.Adornee = Torso
GUI.Parent = Torso
GUI.Active = true 
GUI.Enabled = true 
GUI.Size = UDim2.new(0,0,0,0) 
GUI.StudsOffset = Vector3.new(1, 5, 0) 
GUI.Name="SylladexCardGui"
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(0,0,0.4)
Chat.Position = UDim2.new(0, 0, 0, 0) 
Chat.Size = UDim2.new(2,0,2,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(0,0,0.4)
Chat.Position = UDim2.new(0, 0, -0.3, 0) 
Chat.Size = UDim2.new(1.5,0,2,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(0,0,0.4)
Chat.Position = UDim2.new(0, 0, -0.6, 0) 
Chat.Size = UDim2.new(1,0,2,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, 0.25, 0) 
Chat.Size = UDim2.new(1.5,0,1.5,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, -0.15, 0) 
Chat.Size = UDim2.new(1,0,1.5,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, -0.45, 0) 
Chat.Size = UDim2.new(0.5,0,1.5,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, 0.25, 0) 
Chat.Size = UDim2.new(1.5,0,1.5,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("ImageLabel") 
Chat.Parent = GUI 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, 0.25, 0) 
Chat.Size = UDim2.new(1.5,0,1.5,0)
Chat.Visible = true
Chat.Image="http://www.roblox.com/asset/?id=86770725"
for i=0,1,0.5 do
wait()
GUI.Size = UDim2.new(i, 0, i, 0) 
Torso.Neck.C0=necko*euler(0,0,1)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(1)
GUI.Parent=nil
Board.Parent=Main
BWld1.Parent=Board
BWld2.Parent=Board
BWld3.Parent=Board
BWld4.Parent=Board
BWld5.Parent=Board
BWld6.Parent=Board
BWld7.Parent=Board
BWld8.Parent=Board
BWld9.Parent=Board
BWld10.Parent=Board
BWld11.Parent=Board
BWld12.Parent=Board
wait(2)
Board.Parent=nil
attack=false
end
function Taunt1()
attack=true
wait(0.1)
Wld1.Part0=Prt8
Wld1.C0=euler(2,0,0)*cf(0,1.2,0.5)
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
for i=0,1,0.1 do
wait()
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Torso.Neck.C0=necko*euler(0.5*i,0,1-0.5*i)
Wld1.C0=euler(2,0,0)*cf(0,1.2,0.5)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3*i,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5-0.4*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.5-0.5*i,0,0.5)
Wld1.C0=euler(2,0,0)*cf(0,1.2,0.5)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+1*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.1) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(-0.5*i,0,0.5)
Wld1.C0=euler(2+4.186*i,0,0)*cf(0,1.2,0.5+1*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+1+1*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.1) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.2 do
wait()
Wld1.C0=euler(2+4.186+4.186*i,0,0)*cf(0,1.2,0.5+1+1*i)
end
for i=0,1,0.2 do
wait()
Wld1.C0=euler(2+4.186+4.186+4.186*i,0,0)*cf(0,1.2,0.5+1+1-2*i)
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(-0.5+1*i,0,0.5)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+1+1-2*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.1) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.5-0.5*i,0,0.5+0.5*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+0.3*i,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.1+0.4*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
Wld1.C0=euler(2,0,0)*cf(0,0.9,0)
Wld1.Part0=Prt1
attack=false
end
Stun2=function(Feh,x,y,z,color)
lightning=true
coroutine.resume(coroutine.create(function(part,X,Y,Z)
--[[                if part.Parent:FindFirstChild("Torso")==nil then
                        return
                end]]
                Torsoh2=part
                End2=Torsoh2.CFrame+Vector3.new(X/10,Y/10,Z/10)
                ST2=Torsoh2.Position
--[[                p=Instance.new("BodyPosition")
                p.P=3000
                p.D=100
                p.maxForce=Vector3.new(math.huge,0,math.huge)
                p.position=Torsoh2.Position
                p.Parent=Torsoh2]]
                while part.Parent ~= nil and lightning == true do 
--                        f1:Play()
--                        p.position=ST2+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
                        Start2=End2
                        End2=Torsoh2.CFrame*CFrame.new(X/10,Y/10,Z/10)
                        e=Instance.new("Part")
                        e.TopSurface=0
                        e.BottomSurface=0
                        e.CanCollide=false
                        e.Anchored=true
                        e.formFactor="Symmetric"
                        e.Size=Vector3.new(1,1,1)
                        Look2=(End2.p-Start2.p).unit
                        m=Instance.new("BlockMesh")
                        m.Scale=Vector3.new(.2,.2,(Start2.p-End2.p).magnitude)
                        m.Parent=e
                        e.CFrame=CFrame.new(Start2.p+Look2*(m.Scale.z/2),Start2.p+Look2*99)
--                        EVENMOARMAGIX(e,2,2,2,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
                        WaveEffect(e,0.3,0.3,0.3,0,0,0,1.57,0,0,BrickColor.new("Navy blue")) 
                        e.Reflectance=.3
                        e.Name="Zap"
                        e.BrickColor=color
                        e.Parent=part.Parent
                        coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
                        wait()
                end
                wait(.45)
--                p.Parent=nil
end),Feh,x,y,z) 
end
function slasheffect(cframe,waitin,size) 
coroutine.resume(coroutine.create(function()
wait(waitin) 
wait() 
e=Instance.new("Part")
--coneffect=e.Touched:connect(function(hit) Damagefunc1(hit,efdam,1) end)
e.Name="SlashEffect"
e.TopSurface=0
e.BottomSurface=0
e.formFactor="Symmetric"
e.Size=Vector3.new(1,1,size)
e.Anchored=true
e.BrickColor=BrickColor.new("Black") 
e.Reflectance=0
e.Transparency=0
e.CanCollide=false
m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Scale=Vector3.new(.25,.25,1)
m.Parent=e
e.CFrame = cframe
e.Parent=workspace
print(e.Parent)
coroutine.resume(coroutine.create(function(m) for i=1, 5 do m.Transparency=i*.2 m.Mesh.Scale=m.Mesh.Scale-Vector3.new(.02,.02,.08)*2 wait() end m.Parent=nil end),e)
end))
end 
function ss(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = workspace
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function charge(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function bewm(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function abscond(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function distort(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function fire1(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697431" 
SlashSound.Parent = workspace 
SlashSound.Volume = 0.3 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function fire2(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=48618802 " 
SlashSound.Parent = workspace 
SlashSound.Volume = 0.5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function grip(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds/swordslash.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function reload(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697295" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0,0.3,0) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MOREMAGIX(part,cframe,x,y,z,color) 
                p2=it("Part")
                p2.Name="Blast"
                p2.TopSurface=0
                p2.BottomSurface=0
                p2.CanCollide=false
                p2.Anchored=true
                p2.BrickColor=color
                p2.Size=vt(x,y,z)
                p2.formFactor="Symmetric"
                p2.CFrame=part.CFrame*cf(0,cframe,0)
                p2.Parent=Character
                m=it("BlockMesh")
                m.Parent=p2
                m.Name="BlastMesh"
                coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-vt(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*cf(dir)*euler(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 
function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 5 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.2,0.2,0.2) Part.Transparency=i*.2 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function EVENMOARMAGIX2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 14 do Part.Mesh.Scale = Part.Mesh.Scale + vt(1,1,1) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function ChargeEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position+vt(math.random(-30,30),math.random(-30,30),math.random(-30,30))
        f.Parent=Part
        for i=0,1,0.1 do
        wait()
        Part.Transparency=Part.Transparency+0.1
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 
print("Y U NU GIVE CREDIT.") 
function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function WaveEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=3270017" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 18 do Part.Mesh.Scale = Part.Mesh.Scale + vt(3,3,3) Part.Transparency=i*.07 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.5,0.8,0.5) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function DerpMagic(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame
        S.Parent=workspace
        msh1.Parent = S
        W=it("Weld")
        W.Parent=S
        W.Part0=S
        W.Part1=part
        W.C0=cf(x2,y2,z2) * euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        W.Parent=nil
        S.Anchored=true
        coroutine.resume(coroutine.create(function(Part,Weld) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) --[[Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))]] Part.Transparency=i*.1 wait() end Part.Parent=nil Weld.Parent=nil end),S,W)
end 
function ChargeEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position
        f.Parent=Part
        for i=0,1,0.05 do
        wait()
        Part.Transparency=Part.Transparency+0.05
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 
DarkRiftF=function(par) 
PWN={}
for _,v in pairs(workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
if v~=Character and (v.Torso.Position-par.Position).magnitude<=25 then
table.insert(PWN,v.Torso)
end
end
end
end
for _,t in pairs(PWN) do
Mag=(par.Position-t.Position).magnitude/2
t.Parent.Humanoid:TakeDamage(.6)
rl=it("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=vt(500000,500000,500000)*5000
rl.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
if Mag<=2 then
t.Parent.Humanoid:TakeDamage(.3)
else
vl=it("BodyVelocity")
vl.P=3000
vl.maxForce=vt(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
wait(.08)
end
DBHit=function(hit,Damage,Knockback) 
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,1)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-40,40),math.random(-40,40),math.random(-40,40))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end
DBHit2=function(hit,Damage) 
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,30,0)
                vl.velocity=Head.CFrame.lookVector*35+Head.Velocity/1.05
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end
DOHHit=function(hit,Damage,Pos) 
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,60,0)
                vl.velocity=Head.CFrame.lookVector+Head.Velocity/1.05
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                f=it("BodyPosition")
                f.P=2000
                f.D=100
                f.maxForce=vt(math.huge,math.huge,math.huge)
                f.position=t.Position+vt(0,0,0)
                f.Parent=t
                game:GetService("Debris"):AddItem(f,.5)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
        end
end
Damagefunc1=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Player" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        if mana<400 then
                        mana=mana+math.random(10,20)
                        else
                        mana=400
                        end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
Damagefunc2=function(hit,Damage,Knockback,durposition)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
local angle = (hit.Position-(durposition+Vector3.new(0,-3,0))).unit
hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                rl.Parent=hit
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(0.7) 
Vel:Remove() 
end),bodyVelocity) 
coroutine.resume(coroutine.create(function(vel) 
wait(1) 
vel:Remove() 
end),rl) 
                game:GetService("Debris"):AddItem(vp,1)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
DOH=function(hit,Damage,Knockback)
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
showDamage=function(Char,Dealt,du)
        m=it("Model")
        m.Name=tostring(Dealt)
        h=it("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=it("Part")
        c.Transparency=0
        c.BrickColor=BrickColor:Red()
        if CRIT==true then
                c.BrickColor=BrickColor.new("Really red")
        end
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=vt(1,.4,1)
        ms=it("CylinderMesh")
        ms.Scale=vt(.8,.8,.8)
        if CRIT==true then
                ms.Scale=vt(1.25,1.5,1.25)
        end
        ms.Parent=c
        c.Reflectance=0
        it("BodyGyro").Parent=c
        c.Parent=m
        c.CFrame=cf(Char["Head"].CFrame.p+vt(0,1.5,0))
        f=it("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=c.Position+vt(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end
function shoottrail2(pos1,Damage) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 200
rangepower = 10
local spreadvector = (vt(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (pos1.Position).magnitude/100
local dir = Head.CFrame.lookVector+spreadvector 
--local dir = pos1.CFrame.lookVector+spreadvector
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,Main)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = it("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = vt(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(1,0.4,1)
effectsg.Parent = Main
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Navy blue") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = vt(3,3,3)
effectsg.CFrame = cf((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
--MMMAGIC(effectsg,4,4,4,0,0,0,BrickColor.new("Black")) 
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(1-1*i,mg*5,1-1*i)
end 
wait(1) 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
ammount=100
local Damg = Damage*2
local decr = 0
repeat
wait() 
decr = decr + 1
rangepos = rangepos - 10
dir = dir
--dir = dir 
ammount=ammount-3
if decr == 2 then
Damg = Damg/1.3
decr=0
end
hit2,pos = rayCast(newpos,dir,inc,Main)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
EVENMOARMAGIX2(cf(newpos),2,2,2,0,0,0,0,0,0,BrickColor.new("Black")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - newpos;
local mag = targ.magnitude;
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc1(head,math.floor(Damg),0.1)
end 
end 
end 
end
if hit2 ~= nil then
local effectsmsh = it("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = vt(1,1,2.5)
effectsmsh.Scale = vt(3,3,3)
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = Main
effectsg.BrickColor = BrickColor.new("Black") 
effectsmsh.Parent = effectsg
effectsg.CFrame = cf(newpos,pos) + cf(newpos,pos).lookVector*2.5*2
coroutine.resume(coroutine.create(function()
wait(0)
effectsg.Parent = nil 
end))
local efwel = it("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
--local HitPos = effectsg.Position + cf(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + cf(newpos,pos).lookVector*0.75
local HitPos = Prt4.Position + (Head.CFrame.lookVector * .5) 
local CJ = cf(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg),0.1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hum,math.floor(Damg),0.1)
end
end
end))
end
function shoottrail3(pos1,Damage) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 1000
rangepower = 2
local spreadvector = (vt(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (pos1.Position).magnitude/100
local dir = Head.CFrame.lookVector+spreadvector 
--local dir = pos1.CFrame.lookVector+spreadvector
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,Character)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = it("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = vt(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(1,0.4,1)
effectsg.Parent = Main
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Black") 
effectsg.Reflectance = 0
effectsg.Transparency=0.3
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = vt(3,3,3)
effectsg.CFrame = cf((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
--MMMAGIC3(effectsg.CFrame,1,6,1,0,0,0,BrickColor.new("Black")) 
EVENMOARMAGIX(effectsg,3,3,3,0,0,0,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(effectsg,0,2,2,2,BrickColor.new("Navy blue")) 
coroutine.resume(coroutine.create(function()
--[[for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(1-1*i,mg*5,1-1*i)
end ]]
wait()
effectsg.Transparency = 1
wait(2) 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
ammount=100
local Damg = Damage*2
local decr = 0
repeat
wait() 
decr = decr + 1
rangepos = rangepos - 10
dir = dir
--dir = dir 
ammount=ammount-3
hit2,pos = rayCast(newpos,dir,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
EVENMOARMAGIX2(cf(newpos),5,5,5,0,0,0,0,0,0,BrickColor.new("Black")) 
WaveEffect2(cf(newpos),10,10,10,0,0,0,1,0,0,BrickColor.new("Black")) 
WaveEffect2(cf(newpos),10,10,10,0,0,0,-1,0,0,BrickColor.new("Black")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - newpos;
local mag = targ.magnitude;
if mag <= 30 and c[i].Name ~= Player.Name then 
attackdebounce=false
newpos2=newpos
Damagefunc2(head,math.floor(Damg),0.1,newpos2)
end 
end 
end 
end
if hit2 ~= nil then
print(hit2)
local effectsmsh = it("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = vt(1,1,2.5)
effectsmsh.Scale = vt(3,3,3)
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = Main
effectsg.BrickColor = BrickColor.new("Black") 
effectsmsh.Parent = effectsg
effectsg.CFrame = cf(newpos,pos) + cf(newpos,pos).lookVector*2.5*2
coroutine.resume(coroutine.create(function()
wait(0)
effectsg.Parent = nil 
end))
local efwel = it("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
--local HitPos = effectsg.Position + cf(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + cf(newpos,pos).lookVector*0.75
local HitPos = Prt4.Position + (Head.CFrame.lookVector * .5) 
local CJ = cf(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg),0.1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hum,math.floor(Damg),0.1)
end
end
end))
end
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
hold = false 
function ob1d(mouse) 
hold=true
sonicing=true
end 
function ob1u(mouse) 
hold = false 
sonicing=false
end 
buttonhold = false 
function Key(key,mouse) 
if attack == true then return end 
if key=="g" then
Taunt1()
end
if key=="h" then
JetBoard()
end
if key=="z" then
if combo==0 then
combo=1
Slash1()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==1 then
combo=2
Slash2()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==2 then
combo=3
Slash3()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==3 then
combo=0
end
end
if key=="x" then
if combo==0 then
combo=1
Magic1()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==1 then
combo=2
Magic2()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==2 then
combo=3
Magic3()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==3 then
combo=0
end
end
--attack=true
Stance()
if attack==false then
pcall(function() act.key[key:lower()] = true end)
local kk = key:lower()
coroutine.resume(coroutine.create(function()
if kk == "w" or kk == "a" or kk == "s" or kk == "d" then
while act.key["w"] == true or act.key["a"] == true or act.key["s"] == true or act.key["d"] == true do
wait()
end
walking = false 
end
end)) 
if kk == "w" or kk == "a" or kk == "s" or kk == "d" then
if walking == true then return end
while act.key["w"] == true or act.key["a"] == true or act.key["s"] == true or act.key["d"] == true do
Walking()
dodging=false
Stance()
wait()
end
walking = false 
wait(0.1)
Stance()
end
end
attack=false
end 
function Key2(key,mouse) 
pcall(function() act.key[key:lower()] = false end)
walking=false
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
--mouse.KeyDown:connect(key2) 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
mouse.KeyUp:connect(function(k) act.keydown = false 
pcall(function() act.key[k:lower()] = false  end)
hold = false 
end) 
MMouse = mouse 
sheathed = false 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
RHP = ch.Torso["Right Hip"] 
LHP = ch.Torso["Left Hip"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--[[RHP.C0 = cf(-0.5, -1.5, 0) * euler(0,0,0) 
RHP.C1 = cf(0, 0.5, 0) 
LHP.C0 = cf(0.5, -1.5, 0) * euler(0,0,0) 
LHP.C1 = cf(0, 0.5, 0) ]]
-- 
RW.Part0 = ch.Torso 
RW.C0 = cf(1.5, 0.5, 0) --* euler(1.3, 0, -0.5) 
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = cf(-1.5, 0.5, 0) --* euler(1.7, 0, 0.8) 
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
--[[RW2.Part0 = ch.Torso 
RW2.C0 = cf(0.5, -1.5, 0) --* euler(1.7, 0, 0.8) 
RW2.C1 = cf(0, 0.5, 0) 
RW2.Part1 = ch["Right Leg"] 
RW2.Parent = ch.Torso 
--_G.L = LW 
-- 
LW2.Part0 = ch.Torso 
LW2.C0 = cf(-0.5, -1.5, 0) --* euler(1.7, 0, 0.8) 
LW2.C1 = cf(0, 0.5, 0) 
LW2.Part1 = ch["Left Leg"] 
LW2.Parent = ch.Torso 
--_G.L = LW 
-- ]]
equipanim(mouse) 
end 
function ds(mouse) 
sheathed = true 
guardy = false 
walking = nil 
Character.Humanoid.WalkSpeed = 16 
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
increase=0
while true do
wait()
bg.P = 15000
while sonicing==false do
wait()
end
while sonicing==true do
wait(0.05)
EVENMOARMAGIX(Prt13,2,2,2,0,0,0,0,0,0,BrickColor.new("Bright blue")) 
end
end
-- lego mediafire This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2012 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 
----------------------------------------------------mediafire--------------------------------------------------------------------------------------------------
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
attack = false 
attackdebounce = false 
attacktype = 1 
combo = 0 
damage = 3 
oridamage = 3 
walkdebounce = false 
sheathed = true 
act = {key = {}}
walking = false 
hold=false
MMouse=nil
equipped=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
con1=nil
con2=nil
con3=nil
mana=400
offset=nil
sonicing=false
newpos2=nil
modee=0
comboing=false
combo=0
drivemode=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = it("Weld"), it("Weld") 
RW2, LW2 = it("Weld"), it("Weld") 
--what anim 
anim = "none" 
--[[
if Character:findFirstChild("SonicDriv",true) ~= nil then 
Character:findFirstChild("SonicDriv",true).Parent = nil 
end 
]]
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
--[[
if Player.userId~=209911 and Player.userId~=17613036 then 
script.Parent = Character 
local h = it("Hint") 
h.Parent = workspace 
h.Text = "UR NOT FEN!" 
wait(1) 
h.Text = "U MUST DAI!!" 
wait(0.5) 
if Character:findFirstChild("ForceField") ~= nil then 
Character:findFirstChild("ForceField").Parent = nil 
end 
Character:BreakJoints() 
local m = it("Explosion") 
m.Parent = workspace 
m.Position = Torso.Position 
wait(3) 
h.Parent = nil 
script.Parent = nil 
wait(9001) 
while true do 
wait() 
end 
end 
 ]]
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
fp.BottomSurface="Smooth"
fp.TopSurface="Smooth"
fp:BreakJoints()
return fp 
end 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
end
Ballprt=part(1,nil,0,1,BrickColor.new("Black"),"Ball",vt(3,3,3))
Ballmsh=mesh("SpecialMesh",Ballprt,"Sphere","",vt(0,0,0),vt(1,1,1))
Ballwld=weld(Ballprt,Ballprt,Prt4,cf(0,0,0))
--local Main=game.workspace.CurrentCamera.Weapon:Clone()
Main.Parent=nil
local c = Main:children() 
for i=1,#c do 
if c[i].className=="Part" then
c[i].Anchored=false
c[i].Transparency=0
end
end 
local Main=it("Model")
Main.Parent=Character
Main.Name="Weapon"
--print(Main.Parent)
--local Main=game.workspace.CurrentCamera.SonicDriv:Clone()
Main.Parent=Character
local c = Main:children() 
for i=1,#c do 
if c[i].className=="Part" then
c[i].Anchored=false
c[i].Transparency=0
end
end 
Prt1=Main.Part1
Prt2=Main.Part2
Prt3=Main.Part3
Prt4=Main.Part4
Prt5=Main.Part5
Prt6=Main.Part6
Prt7=Main.Part7
Prt8=Main.Part8
Prt9=Main.Part9
Prt10=Main.Part10
Prt11=Main.Part11
Prt12=Main.Part12
Prt13=Main.Part13
count=0
for i=1,6 do
Part=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part",vt(1,1,1))
Mesh=mesh("BlockMesh",Part,"","",vt(0,0,0),vt(0.1,0.4,0.1))
Weld=weld(Main,Part,Prt11,cf(0.15,-0.15,0)*euler(0,count,0))
count=count+1.05
end
count=0
for i=1,6 do
Part=part(1,Main,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
Mesh=mesh("BlockMesh",Part,"","",vt(0,0,0),vt(0.1,0.5,0.1))
Weld=weld(Main,Part,Prt10,cf(0.15,-0.15,0)*euler(0,count+0.5,0))
count=count+1.05
end
count=0
for i=1,6 do
Part=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part",vt(1,1,1))
Mesh=mesh("BlockMesh",Part,"","",vt(0,0,0),vt(0.05,0.2,0.05))
Weld=weld(Main,Part,Prt12,euler(0,0,0)*cf(0.1,-0.15,0)*euler(0,count,0))
count=count+1.05
coroutine.resume(coroutine.create(function(Derpweld,numb,part)
while true do
wait()
if drivemode==false then
Derpweld=weld(Main,part,Prt12,euler(0,0,0)*cf(0.1,-0.15,0)*euler(0,numb,0))
end
if drivemode==true then
Derpweld=weld(Main,part,Prt12,euler(0,0,-0.5)*cf(0.2,-0.17,0)*euler(0,numb,0))
end
end
end),Weld,count,Part)
end
Msh1=Prt1.Mesh
Msh2=Prt2.Mesh
Msh3=Prt3.Mesh
Msh4=Prt4.Mesh
Msh5=Prt5.Mesh
Msh6=Prt6.Mesh
Msh7=Prt7.Mesh
Msh8=Prt8.Mesh
Msh9=Prt9.Mesh
Msh10=Prt10.Mesh
Msh11=Prt11.Mesh
Msh12=Prt12.Mesh
Msh13=Prt13.Mesh
Wld1=weld(Main,Prt1,LeftLeg,euler(0,0,2)*cf(1,-0.8,-0.4))
Wld2=weld(Main,Prt2,Prt1,euler(0,0,0)*cf(0,0,0))
Wld3=weld(Main,Prt3,Prt1,euler(0,0,0)*cf(0,0.4,0))
Wld4=weld(Main,Prt4,Prt1,euler(0,0,0)*cf(0,0.6,0))
Wld5=weld(Main,Prt5,Prt1,euler(3.14,0,0)*cf(0,0.8,0))
Wld6=weld(Main,Prt6,Prt1,euler(3.14,1.57,0)*cf(0,0.8,0))
Wld7=weld(Main,Prt7,Prt1,euler(0,0,0)*cf(0,-0.5,0))
Wld8=weld(Main,Prt8,Prt1,euler(0,0,0)*cf(0,-0.6,0))
Wld9=weld(Main,Prt9,Prt1,euler(0,0,0)*cf(0,-0.7,0))
Wld10=weld(Main,Prt10,Prt9,euler(0,0,0)*cf(0,-0.3,0))
Wld11=weld(Main,Prt11,Prt9,euler(0,0,0)*cf(0,-0.3,0))
Wld12=weld(Main,Prt12,Prt11,euler(0,0,0)*cf(0,-0.4,0))
Wld13=weld(Main,Prt13,Prt12,euler(0,0,0)*cf(0,-0.2,0))
local Board=it("Model")
Board.Parent=nil
Board.Name="Jet Board"
BPrt1=part(1,Board,0,0,BrickColor.new("Black"),"Part1",vt(1,1,1))
BPrt2=part(1,Board,0,0,BrickColor.new("Black"),"Part2",vt(1,1,1))
BPrt3=part(1,Board,0,0,BrickColor.new("Black"),"Part3",vt(1,1,1))
BPrt4=part(1,Board,0,0,BrickColor.new("Black"),"Part4",vt(1,1,1))
BPrt5=part(1,Board,0,0,BrickColor.new("Black"),"Part5",vt(1,1,1))
BPrt6=part(1,Board,0,0,BrickColor.new("Navy blue"),"Part6",vt(1,1,1))
BPrt7=part(1,Board,0,0,BrickColor.new("Navy blue"),"Part7",vt(1,1,1))
BPrt8=part(1,Board,0,0,BrickColor.new("Navy blue"),"Part8",vt(1,1,1))
BPrt9=part(1,Board,0,0,BrickColor.new("Black"),"Part9",vt(1,1,1))
BPrt10=part(1,Board,0,0,BrickColor.new("Really black"),"Part10",vt(1,1,1))
BPrt11=part(1,Board,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
BPrt12=part(1,Board,0,0,BrickColor.new("Really black"),"Part12",vt(1,1,1))
BMsh1=mesh("BlockMesh",BPrt1,"","",vt(0,0,0),vt(4,0.7,5))
BMsh2=mesh("SpecialMesh",BPrt2,"Wedge","",vt(0,0,0),vt(0.85,1.57,2))
BMsh3=mesh("SpecialMesh",BPrt3,"Wedge","",vt(0,0,0),vt(0.85,1.57,2))
BMsh4=mesh("BlockMesh",BPrt4,"","",vt(0,0,0),vt(0.35,0.7,2))
BMsh5=mesh("CylinderMesh",BPrt5,"","",vt(0,0,0),vt(0.4,0.7,0.4))
BMsh6=mesh("BlockMesh",BPrt6,"","",vt(0,0,0),vt(3.5,0.71,4.5))
BMsh7=mesh("SpecialMesh",BPrt7,"Wedge","",vt(0,0,0),vt(0.86,1.07,1.5))
BMsh8=mesh("SpecialMesh",BPrt8,"Wedge","",vt(0,0,0),vt(0.86,1.07,1.5))
BMsh9=mesh("CylinderMesh",BPrt9,"","",vt(0,0,0),vt(1.5,2,1.5))
BMsh10=mesh("CylinderMesh",BPrt10,"","",vt(0,0,0),vt(1.2,2,1.2))
BMsh11=mesh("CylinderMesh",BPrt11,"","",vt(0,0,0),vt(1.5,2,1.5))
BMsh12=mesh("CylinderMesh",BPrt12,"","",vt(0,0,0),vt(1.2,2,1.2))
BWld1=weld(Board,BPrt1,Head,euler(0,0,0)*cf(0,2,5))
BWld2=weld(Board,BPrt2,BPrt1,euler(0,0,1.57)*cf(-1.1,0,3.5))
BWld3=weld(Board,BPrt3,BPrt1,euler(0,0,-1.57)*cf(1.1,0,3.5))
BWld4=weld(Board,BPrt4,BPrt1,euler(0,0,0)*cf(0,0,3.5))
BWld5=weld(Board,BPrt5,BPrt1,euler(0,0,0)*cf(0,0,4.35))
BWld6=weld(Board,BPrt6,BPrt1,euler(0,0,0)*cf(0,0,0))
BWld7=weld(Board,BPrt7,BPrt1,euler(0,0,1.57)*cf(-0.8,0,3))
BWld8=weld(Board,BPrt8,BPrt1,euler(0,0,-1.57)*cf(0.8,0,3))
BWld9=weld(Board,BPrt9,BPrt1,euler(1.57,0,0)*cf(1.2,1,-0.8))
BWld10=weld(Board,BPrt10,BPrt9,euler(0,0,0)*cf(0,0.01,0))
BWld11=weld(Board,BPrt11,BPrt1,euler(1.57,0,0)*cf(-1.2,1,-0.8))
BWld12=weld(Board,BPrt12,BPrt11,euler(0,0,0)*cf(0,0.01,0))
local fengui = it("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = it("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = it("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = it("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = it("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
local bg = it("BodyGyro") 
bg.Parent = nil 
local bg2=it("BodyGyro")
if (script.Parent.className ~= "HopperBin") then 
Tool = it("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Sonic Driver" 
script.Parent = Tool 
end 
Bin = script.Parent 
function unequipweld() 
Wld1.Part1=LeftLeg
Wld1.C0=euler(0,0,2)*cf(1,-0.8,-0.4)
Wld11.C0=euler(0,0,0)*cf(0,-0.3,0)
end 
function equipweld() 
Wld1.Parent=Main
Wld1.Part1=LeftArm
Wld1.C0=euler(2,0,0)*cf(0,1.2,0)
end 
function hideanim() 
equipped = false
bg.Parent=nil
drivemode=false
unequipweld() 
--[[for i = 0 , 1 , 0.1 do 
wait(0)  
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end ]]
wait(0.1)
Torso.Neck.C0=necko*euler(0,0,0)
end 
function equipanim(mouse) 
equipped = true 
for i = 0,1,0.1 do 
wait()  
Torso.Neck.C0=necko*euler(0.5*i,0,0.5*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3*i,-1.57*i,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
equipweld() 
for i = 0,1,0.1 do 
wait()  
Wld1.C0=euler(2,0,0)*cf(0,1.2-0.3*i,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+0.9*i,-1.57+1.7*i,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
wait(0.2)
for i = 0,1,0.2 do 
wait()  
Torso.Neck.C0=necko*euler(0.5+0.2*i,0,0.5)
Wld1.C0=euler(2,0,0)*cf(0,0.9,0)
Wld11.C0=euler(0,0,0)*cf(0,-0.3-0.3*i,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0.6-0.5*i,0.13+0.07*i,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
drivemode=true
wait(0.2)
Torso.Neck.C0=necko*euler(0,0,0)
Stance()
end 
function Stance()
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 15000
bg.Parent = Torso
while equipped==true and walking==false and attack==false do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1,0)
bg.Parent = Torso
--Torso.Neck.C0=necko*euler(0,offset,0)*euler(0,0,1)
Torso.Neck.C0=necko*euler(0,0,1)
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
Wld1.C0=euler(2,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
Torso.Neck.C0=necko*euler(0,0,0)
bg.Parent=nil
end))
end
function Walking()
if attack==false then
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
walking=true
end
function Slash1()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(2+1.14*i,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57*i,0,-0.5+1.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-5,0)
Stun2(Ballprt,0,0,0,BrickColor.new("Navy blue"))
con1=Ballprt.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i=0,1,0.2 do
wait()
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57-offset,0,1-2.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=false
lightning=false
con1:disconnect()
wait(0.2)
Ballprt.Parent=nil
attack=false
end
function Slash2()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57+1.57*i,0,-2+2*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-5,0)
Stun2(Ballprt,0,0,0,BrickColor.new("Navy blue"))
con1=Ballprt.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(3.14-3.14*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=false
lightning=false
con1:disconnect()
wait(0.2)
Ballprt.Parent=nil
attack=false
end
function Slash3()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57*i,0,-1.57*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-5,0)
Stun2(Ballprt,0,0,0,BrickColor.new("Navy blue"))
con1=Ballprt.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
for i=0,1,0.1 do
wait()
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,6.28*i,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57-1*i,0,-1.57-1*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(0.1)
for i=0,1,0.1 do
wait()
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0.57+1*i,0,-2.57+3*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=false
lightning=false
con1:disconnect()
wait(0.2)
Ballprt.Parent=nil
attack=false
end
function Magic1()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1.57,0)
bg.Parent = Torso
Torso.Neck.C0=necko*euler(0,0,1.57)
Wld1.C0=euler(2+1.14*i,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5-1.07*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-10,0)
con1=Ballprt.Touched:connect(function(hit) DOH(hit,20,0) end) 
for i=0,4,0.1 do
wait()
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1.57,0)
bg.Parent = Torso
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,-offset) 
MMMAGIC(Ballprt,4,4,4,0,0,0,BrickColor.new("Black")) 
end
sonicing=false
con1:disconnect()
wait(0.2)
Ballprt.Parent=nil
attack=false
end
function Magic2()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1.57,0)
bg.Parent = Torso
Torso.Neck.C0=necko*euler(0,0,1.57)
Wld1.C0=euler(2+1.14*i,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,1.57*i) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
sonicing=true
coroutine.resume(coroutine.create(function() 
derpprt=part(1,workspace,0,1,BrickColor.new("Black"),"Derp",vt(1,1,1))
derpprt.CFrame=Head.CFrame
derpprt.Anchored=true
count=0
for i=0,3,0.1 do
wait()
EVENMOARMAGIX(derpprt,4,15,4,0,-4,-5-count,0,0,0,BrickColor.new("Navy blue")) 
count=count+2.5
local testbrick = it("Part") 
testbrick.Parent = workspace
testbrick.Anchored = true 
testbrick.Transparency = 0 
testbrick.CFrame = derpprt.CFrame * cf(0,0,-5-count) 
coroutine.resume(coroutine.create(function() 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - testbrick.Position;
                local mag = targ.magnitude;
                if mag <= 5 and c[i].Name ~= Player.Name then 
                Damagefunc1(head,math.floor(10),0.1)
                end 
                end 
                end 
        end 
end)) 
coroutine.resume(coroutine.create(function(Part) 
Part.Parent = nil 
end),testbrick)
end
derpprt.Parent=nil
end))
wait(0.5)
sonicing=false
wait(0.5)
attack=false
end
function Magic3()
attack=true
sonicing=true
for i=0,1,0.1 do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,-1.57,0)
bg.Parent = Torso
Torso.Neck.C0=necko*euler(0,0,1.57)
Wld1.C0=euler(3.14,0,0)*cf(0,0.9,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,1.57-1.57*i) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part1=Prt13
Ballwld.C0=cf(0,-10,0)
numb=math.random(-50,50)
EVENMOARMAGIX2(Ballprt.CFrame,3,3,3,0,0,0,0,0,0,BrickColor.new("Black")) 
WaveEffect2(Ballprt.CFrame,7,7,7,0,0,0,numb,1,0,BrickColor.new("Black")) 
WaveEffect2(Ballprt.CFrame,7,7,7,0,0,0,-numb,-1,0,BrickColor.new("Black")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - Ballprt.Position;
local mag = targ.magnitude;
if mag <= 15 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,20,0.1,Ballprt.Position)
end 
end 
end 
end
wait()
sonicing=false
wait(1)
Ballprt.Parent=nil
attack=false
end
function JetBoard()
attack=true
local GUI = Instance.new("BillboardGui") 
GUI.Adornee = Torso
GUI.Parent = Torso
GUI.Active = true 
GUI.Enabled = true 
GUI.Size = UDim2.new(0,0,0,0) 
GUI.StudsOffset = Vector3.new(1, 5, 0) 
GUI.Name="SylladexCardGui"
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(0,0,0.4)
Chat.Position = UDim2.new(0, 0, 0, 0) 
Chat.Size = UDim2.new(2,0,2,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(0,0,0.4)
Chat.Position = UDim2.new(0, 0, -0.3, 0) 
Chat.Size = UDim2.new(1.5,0,2,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(0,0,0.4)
Chat.Position = UDim2.new(0, 0, -0.6, 0) 
Chat.Size = UDim2.new(1,0,2,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, 0.25, 0) 
Chat.Size = UDim2.new(1.5,0,1.5,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, -0.15, 0) 
Chat.Size = UDim2.new(1,0,1.5,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, -0.45, 0) 
Chat.Size = UDim2.new(0.5,0,1.5,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, 0.25, 0) 
Chat.Size = UDim2.new(1.5,0,1.5,0)
Chat.Visible = true
Chat.Text = " " 
local Chat = Instance.new("ImageLabel") 
Chat.Parent = GUI 
Chat.BackgroundColor3=Color3.new(1,1,1)
Chat.Position = UDim2.new(0.25, 0, 0.25, 0) 
Chat.Size = UDim2.new(1.5,0,1.5,0)
Chat.Visible = true
Chat.Image="http://www.roblox.com/asset/?id=86770725"
for i=0,1,0.5 do
wait()
GUI.Size = UDim2.new(i, 0, i, 0) 
Torso.Neck.C0=necko*euler(0,0,1)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(1)
GUI.Parent=nil
Board.Parent=Main
BWld1.Parent=Board
BWld2.Parent=Board
BWld3.Parent=Board
BWld4.Parent=Board
BWld5.Parent=Board
BWld6.Parent=Board
BWld7.Parent=Board
BWld8.Parent=Board
BWld9.Parent=Board
BWld10.Parent=Board
BWld11.Parent=Board
BWld12.Parent=Board
wait(2)
Board.Parent=nil
attack=false
end
function Taunt1()
attack=true
wait(0.1)
Wld1.Part0=Prt8
Wld1.C0=euler(2,0,0)*cf(0,1.2,0.5)
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
for i=0,1,0.1 do
wait()
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,0,0)
bg.Parent = Torso
Torso.Neck.C0=necko*euler(0.5*i,0,1-0.5*i)
Wld1.C0=euler(2,0,0)*cf(0,1.2,0.5)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3*i,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5-0.4*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.5-0.5*i,0,0.5)
Wld1.C0=euler(2,0,0)*cf(0,1.2,0.5)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+1*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.1) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(-0.5*i,0,0.5)
Wld1.C0=euler(2+4.186*i,0,0)*cf(0,1.2,0.5+1*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+1+1*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.1) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.2 do
wait()
Wld1.C0=euler(2+4.186+4.186*i,0,0)*cf(0,1.2,0.5+1+1*i)
end
for i=0,1,0.2 do
wait()
Wld1.C0=euler(2+4.186+4.186+4.186*i,0,0)*cf(0,1.2,0.5+1+1-2*i)
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(-0.5+1*i,0,0.5)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+1+1-2*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.1) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.5-0.5*i,0,0.5+0.5*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.3+0.3*i,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.1+0.4*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
Wld1.C0=euler(2,0,0)*cf(0,0.9,0)
Wld1.Part0=Prt1
attack=false
end
Stun2=function(Feh,x,y,z,color)
lightning=true
coroutine.resume(coroutine.create(function(part,X,Y,Z)
--[[                if part.Parent:FindFirstChild("Torso")==nil then
                        return
                end]]
                Torsoh2=part
                End2=Torsoh2.CFrame+Vector3.new(X/10,Y/10,Z/10)
                ST2=Torsoh2.Position
--[[                p=Instance.new("BodyPosition")
                p.P=3000
                p.D=100
                p.maxForce=Vector3.new(math.huge,0,math.huge)
                p.position=Torsoh2.Position
                p.Parent=Torsoh2]]
                while part.Parent ~= nil and lightning == true do 
--                        f1:Play()
--                        p.position=ST2+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
                        Start2=End2
                        End2=Torsoh2.CFrame*CFrame.new(X/10,Y/10,Z/10)
                        e=Instance.new("Part")
                        e.TopSurface=0
                        e.BottomSurface=0
                        e.CanCollide=false
                        e.Anchored=true
                        e.formFactor="Symmetric"
                        e.Size=Vector3.new(1,1,1)
                        Look2=(End2.p-Start2.p).unit
                        m=Instance.new("BlockMesh")
                        m.Scale=Vector3.new(.2,.2,(Start2.p-End2.p).magnitude)
                        m.Parent=e
                        e.CFrame=CFrame.new(Start2.p+Look2*(m.Scale.z/2),Start2.p+Look2*99)
--                        EVENMOARMAGIX(e,2,2,2,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
                        WaveEffect(e,0.3,0.3,0.3,0,0,0,1.57,0,0,BrickColor.new("Navy blue")) 
                        e.Reflectance=.3
                        e.Name="Zap"
                        e.BrickColor=color
                        e.Parent=part.Parent
                        coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
                        wait()
                end
                wait(.45)
--                p.Parent=nil
end),Feh,x,y,z) 
end
function slasheffect(cframe,waitin,size) 
coroutine.resume(coroutine.create(function()
wait(waitin) 
wait() 
e=Instance.new("Part")
--coneffect=e.Touched:connect(function(hit) Damagefunc1(hit,efdam,1) end)
e.Name="SlashEffect"
e.TopSurface=0
e.BottomSurface=0
e.formFactor="Symmetric"
e.Size=Vector3.new(1,1,size)
e.Anchored=true
e.BrickColor=BrickColor.new("Black") 
e.Reflectance=0
e.Transparency=0
e.CanCollide=false
m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Scale=Vector3.new(.25,.25,1)
m.Parent=e
e.CFrame = cframe
e.Parent=workspace
print(e.Parent)
coroutine.resume(coroutine.create(function(m) for i=1, 5 do m.Transparency=i*.2 m.Mesh.Scale=m.Mesh.Scale-Vector3.new(.02,.02,.08)*2 wait() end m.Parent=nil end),e)
end))
end 
function ss(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = workspace
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function charge(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function bewm(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function abscond(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function distort(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function fire1(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697431" 
SlashSound.Parent = workspace 
SlashSound.Volume = 0.3 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function fire2(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=48618802 " 
SlashSound.Parent = workspace 
SlashSound.Volume = 0.5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function grip(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds/swordslash.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function reload(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697295" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0,0.3,0) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MOREMAGIX(part,cframe,x,y,z,color) 
                p2=it("Part")
                p2.Name="Blast"
                p2.TopSurface=0
                p2.BottomSurface=0
                p2.CanCollide=false
                p2.Anchored=true
                p2.BrickColor=color
                p2.Size=vt(x,y,z)
                p2.formFactor="Symmetric"
                p2.CFrame=part.CFrame*cf(0,cframe,0)
                p2.Parent=Character
                m=it("BlockMesh")
                m.Parent=p2
                m.Name="BlastMesh"
                coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-vt(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*cf(dir)*euler(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 
function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 5 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.2,0.2,0.2) Part.Transparency=i*.2 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function EVENMOARMAGIX2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 14 do Part.Mesh.Scale = Part.Mesh.Scale + vt(1,1,1) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function ChargeEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position+vt(math.random(-30,30),math.random(-30,30),math.random(-30,30))
        f.Parent=Part
        for i=0,1,0.1 do
        wait()
        Part.Transparency=Part.Transparency+0.1
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 
print("Y U NU GIVE CREDIT.") 
function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function WaveEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=3270017" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 18 do Part.Mesh.Scale = Part.Mesh.Scale + vt(3,3,3) Part.Transparency=i*.07 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.5,0.8,0.5) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function DerpMagic(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame
        S.Parent=workspace
        msh1.Parent = S
        W=it("Weld")
        W.Parent=S
        W.Part0=S
        W.Part1=part
        W.C0=cf(x2,y2,z2) * euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        W.Parent=nil
        S.Anchored=true
        coroutine.resume(coroutine.create(function(Part,Weld) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) --[[Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))]] Part.Transparency=i*.1 wait() end Part.Parent=nil Weld.Parent=nil end),S,W)
end 
function ChargeEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position
        f.Parent=Part
        for i=0,1,0.05 do
        wait()
        Part.Transparency=Part.Transparency+0.05
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 
DarkRiftF=function(par) 
PWN={}
for _,v in pairs(workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
if v~=Character and (v.Torso.Position-par.Position).magnitude<=25 then
table.insert(PWN,v.Torso)
end
end
end
end
for _,t in pairs(PWN) do
Mag=(par.Position-t.Position).magnitude/2
t.Parent.Humanoid:TakeDamage(.6)
rl=it("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=vt(500000,500000,500000)*5000
rl.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
if Mag<=2 then
t.Parent.Humanoid:TakeDamage(.3)
else
vl=it("BodyVelocity")
vl.P=3000
vl.maxForce=vt(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
wait(.08)
end
DBHit=function(hit,Damage,Knockback) 
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,1)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-40,40),math.random(-40,40),math.random(-40,40))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end
DBHit2=function(hit,Damage) 
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,30,0)
                vl.velocity=Head.CFrame.lookVector*35+Head.Velocity/1.05
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end
DOHHit=function(hit,Damage,Pos) 
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,60,0)
                vl.velocity=Head.CFrame.lookVector+Head.Velocity/1.05
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                f=it("BodyPosition")
                f.P=2000
                f.D=100
                f.maxForce=vt(math.huge,math.huge,math.huge)
                f.position=t.Position+vt(0,0,0)
                f.Parent=t
                game:GetService("Debris"):AddItem(f,.5)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
        end
end
Damagefunc1=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Player" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        if mana<400 then
                        mana=mana+math.random(10,20)
                        else
                        mana=400
                        end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
Damagefunc2=function(hit,Damage,Knockback,durposition)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
local angle = (hit.Position-(durposition+Vector3.new(0,-3,0))).unit
hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                rl.Parent=hit
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(0.7) 
Vel:Remove() 
end),bodyVelocity) 
coroutine.resume(coroutine.create(function(vel) 
wait(1) 
vel:Remove() 
end),rl) 
                game:GetService("Debris"):AddItem(vp,1)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
DOH=function(hit,Damage,Knockback)
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
showDamage=function(Char,Dealt,du)
        m=it("Model")
        m.Name=tostring(Dealt)
        h=it("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=it("Part")
        c.Transparency=0
        c.BrickColor=BrickColor:Red()
        if CRIT==true then
                c.BrickColor=BrickColor.new("Really red")
        end
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=vt(1,.4,1)
        ms=it("CylinderMesh")
        ms.Scale=vt(.8,.8,.8)
        if CRIT==true then
                ms.Scale=vt(1.25,1.5,1.25)
        end
        ms.Parent=c
        c.Reflectance=0
        it("BodyGyro").Parent=c
        c.Parent=m
        c.CFrame=cf(Char["Head"].CFrame.p+vt(0,1.5,0))
        f=it("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=c.Position+vt(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end
function shoottrail2(pos1,Damage) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 200
rangepower = 10
local spreadvector = (vt(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (pos1.Position).magnitude/100
local dir = Head.CFrame.lookVector+spreadvector 
--local dir = pos1.CFrame.lookVector+spreadvector
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,Main)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = it("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = vt(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(1,0.4,1)
effectsg.Parent = Main
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Navy blue") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = vt(3,3,3)
effectsg.CFrame = cf((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
--MMMAGIC(effectsg,4,4,4,0,0,0,BrickColor.new("Black")) 
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(1-1*i,mg*5,1-1*i)
end 
wait(1) 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
ammount=100
local Damg = Damage*2
local decr = 0
repeat
wait() 
decr = decr + 1
rangepos = rangepos - 10
dir = dir
--dir = dir 
ammount=ammount-3
if decr == 2 then
Damg = Damg/1.3
decr=0
end
hit2,pos = rayCast(newpos,dir,inc,Main)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
EVENMOARMAGIX2(cf(newpos),2,2,2,0,0,0,0,0,0,BrickColor.new("Black")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - newpos;
local mag = targ.magnitude;
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc1(head,math.floor(Damg),0.1)
end 
end 
end 
end
if hit2 ~= nil then
local effectsmsh = it("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = vt(1,1,2.5)
effectsmsh.Scale = vt(3,3,3)
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = Main
effectsg.BrickColor = BrickColor.new("Black") 
effectsmsh.Parent = effectsg
effectsg.CFrame = cf(newpos,pos) + cf(newpos,pos).lookVector*2.5*2
coroutine.resume(coroutine.create(function()
wait(0)
effectsg.Parent = nil 
end))
local efwel = it("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
--local HitPos = effectsg.Position + cf(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + cf(newpos,pos).lookVector*0.75
local HitPos = Prt4.Position + (Head.CFrame.lookVector * .5) 
local CJ = cf(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg),0.1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hum,math.floor(Damg),0.1)
end
end
end))
end
function shoottrail3(pos1,Damage) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 1000
rangepower = 2
local spreadvector = (vt(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (pos1.Position).magnitude/100
local dir = Head.CFrame.lookVector+spreadvector 
--local dir = pos1.CFrame.lookVector+spreadvector
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,Character)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = it("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = vt(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(1,0.4,1)
effectsg.Parent = Main
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Black") 
effectsg.Reflectance = 0
effectsg.Transparency=0.3
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = vt(3,3,3)
effectsg.CFrame = cf((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
--MMMAGIC3(effectsg.CFrame,1,6,1,0,0,0,BrickColor.new("Black")) 
EVENMOARMAGIX(effectsg,3,3,3,0,0,0,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(effectsg,0,2,2,2,BrickColor.new("Navy blue")) 
coroutine.resume(coroutine.create(function()
--[[for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(1-1*i,mg*5,1-1*i)
end ]]
wait()
effectsg.Transparency = 1
wait(2) 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
ammount=100
local Damg = Damage*2
local decr = 0
repeat
wait() 
decr = decr + 1
rangepos = rangepos - 10
dir = dir
--dir = dir 
ammount=ammount-3
hit2,pos = rayCast(newpos,dir,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
EVENMOARMAGIX2(cf(newpos),5,5,5,0,0,0,0,0,0,BrickColor.new("Black")) 
WaveEffect2(cf(newpos),10,10,10,0,0,0,1,0,0,BrickColor.new("Black")) 
WaveEffect2(cf(newpos),10,10,10,0,0,0,-1,0,0,BrickColor.new("Black")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - newpos;
local mag = targ.magnitude;
if mag <= 30 and c[i].Name ~= Player.Name then 
attackdebounce=false
newpos2=newpos
Damagefunc2(head,math.floor(Damg),0.1,newpos2)
end 
end 
end 
end
if hit2 ~= nil then
print(hit2)
local effectsmsh = it("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = vt(1,1,2.5)
effectsmsh.Scale = vt(3,3,3)
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = Main
effectsg.BrickColor = BrickColor.new("Black") 
effectsmsh.Parent = effectsg
effectsg.CFrame = cf(newpos,pos) + cf(newpos,pos).lookVector*2.5*2
coroutine.resume(coroutine.create(function()
wait(0)
effectsg.Parent = nil 
end))
local efwel = it("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
--local HitPos = effectsg.Position + cf(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + cf(newpos,pos).lookVector*0.75
local HitPos = Prt4.Position + (Head.CFrame.lookVector * .5) 
local CJ = cf(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg),0.1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hum,math.floor(Damg),0.1)
end
end
end))
end
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
hold = false 
function ob1d(mouse) 
hold=true
sonicing=true
end 
function ob1u(mouse) 
hold = false 
sonicing=false
end 
buttonhold = false 
function Key(key,mouse) 
if attack == true then return end 
if key=="g" then
Taunt1()
end
if key=="h" then
JetBoard()
end
if key=="z" then
if combo==0 then
combo=1
Slash1()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==1 then
combo=2
Slash2()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==2 then
combo=3
Slash3()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==3 then
combo=0
end
end
if key=="x" then
if combo==0 then
combo=1
Magic1()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==1 then
combo=2
Magic2()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==2 then
combo=3
Magic3()
coroutine.resume(coroutine.create(function()
wait(1)
if attack==false then
combo=0
end
end))
elseif combo==3 then
combo=0
end
end
--attack=true
Stance()
if attack==false then
pcall(function() act.key[key:lower()] = true end)
local kk = key:lower()
coroutine.resume(coroutine.create(function()
if kk == "w" or kk == "a" or kk == "s" or kk == "d" then
while act.key["w"] == true or act.key["a"] == true or act.key["s"] == true or act.key["d"] == true do
wait()
end
walking = false 
end
end)) 
if kk == "w" or kk == "a" or kk == "s" or kk == "d" then
if walking == true then return end
while act.key["w"] == true or act.key["a"] == true or act.key["s"] == true or act.key["d"] == true do
Walking()
dodging=false
Stance()
wait()
end
walking = false 
wait(0.1)
Stance()
end
end
attack=false
end 
function Key2(key,mouse) 
pcall(function() act.key[key:lower()] = false end)
walking=false
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
--mouse.KeyDown:connect(key2) 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
mouse.KeyUp:connect(function(k) act.keydown = false 
pcall(function() act.key[k:lower()] = false  end)
hold = false 
end) 
MMouse = mouse 
sheathed = false 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
RHP = ch.Torso["Right Hip"] 
LHP = ch.Torso["Left Hip"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--[[RHP.C0 = cf(-0.5, -1.5, 0) * euler(0,0,0) 
RHP.C1 = cf(0, 0.5, 0) 
LHP.C0 = cf(0.5, -1.5, 0) * euler(0,0,0) 
LHP.C1 = cf(0, 0.5, 0) ]]
-- 
RW.Part0 = ch.Torso 
RW.C0 = cf(1.5, 0.5, 0) --* euler(1.3, 0, -0.5) 
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = cf(-1.5, 0.5, 0) --* euler(1.7, 0, 0.8) 
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
--[[RW2.Part0 = ch.Torso 
RW2.C0 = cf(0.5, -1.5, 0) --* euler(1.7, 0, 0.8) 
RW2.C1 = cf(0, 0.5, 0) 
RW2.Part1 = ch["Right Leg"] 
RW2.Parent = ch.Torso 
--_G.L = LW 
-- 
LW2.Part0 = ch.Torso 
LW2.C0 = cf(-0.5, -1.5, 0) --* euler(1.7, 0, 0.8) 
LW2.C1 = cf(0, 0.5, 0) 
LW2.Part1 = ch["Left Leg"] 
LW2.Parent = ch.Torso 
--_G.L = LW 
-- ]]
equipanim(mouse) 
end 
function ds(mouse) 
sheathed = true 
guardy = false 
walking = nil 
Character.Humanoid.WalkSpeed = 16 
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
increase=0
while true do
wait()
bg.P = 15000
while sonicing==false do
wait()
end
while sonicing==true do
wait(0.05)
EVENMOARMAGIX(Prt13,2,2,2,0,0,0,0,0,0,BrickColor.new("Bright blue")) 
end
end
--mediafire
