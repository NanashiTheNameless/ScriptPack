--[[
Fenrier's Armor created by: 
Fenrier: Everything 
Xionic Madness: Inspiration 
If you're gonna steal this, then please I ask you. Please don't forum,free model, give 
away, or anything like that to this script. Thank you very much :) 
]] 
Player = game:GetService("Players").NaClO_DrinkUp
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
walking=false
animating=false
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
script.Parent=Character
 
if Character:findFirstChild("Cervical Armor",true) ~= nil then 
Character:findFirstChild("Cervical Armor",true).Parent = nil 
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
fp.Locked=true
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
 
function weld(parent,part0,part1,cframe)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C0 = cframe
return weld
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
print("Tis be Fen's armor, not yours.")
 
--EfPart = part(1,modelzorz,0,1,BrickColor.new("Derp"),"EffectPart",vt(1,1,1))
local modelzorz = it("Model") 
modelzorz.Name = "Cervical Armor" 
modelzorz.Parent = Character 
 
scarfp1=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"ScarfPart1",vt(1,1,1))
refpart=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"ReferencePart",vt(1,1,1))
scarfp2=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"ScarfPart2",vt(1,1,1))
scarfp2.Anchored=true
scarfp3=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"ScarfPart3",vt(1,1,1))
scarfp3.Anchored=true
modelzorz:BreakJoints()
 
scarfm1=mesh("SpecialMesh",scarfp1,"Head","",vt(0,0,0),vt(1.5,0.7,1.5))
scarfm2=mesh("CylinderMesh",scarfp2,"","",vt(0,0,0),vt(0.5,2,0.5))
scarfm3=mesh("CylinderMesh",scarfp3,"","",vt(0,0,0),vt(0.5,1.2,0.5))
 
local weld1 = it("Weld") 
weld1.Parent = scarfp1
weld1.Part0 = scarfp1
weld1.Part1 = Torso
weld1.C0 = euler(0,0,0) * cf(0,-1,0) 
local refweld = it("Weld") 
refweld.Parent = scarfp1
refweld.Part0 = scarfp1
refweld.Part1 = refpart
refweld.C0 = euler(0,0,0) * cf(0.5,0,0.5) 
 
--[[hpart1=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"HeadPart1",vt(1,1,1))
hpart2=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"HeadPart2",vt(1,1,1))
hpart3=part(1,modelzorz,0,0,BrickColor.new("Really black"),"HeadPart3",vt(1,1,1))
hpart4=part(1,modelzorz,0.5,0.3,BrickColor.new("Camo"),"HeadPart4",vt(1,1,1))
hpart5=part(1,modelzorz,0,0,BrickColor.new("Really black"),"HeadPart5",vt(1,1,1))
hpart6=part(1,modelzorz,0.5,0.3,BrickColor.new("Camo"),"HeadPart6",vt(1,1,1))
hpart7=part(1,modelzorz,0,0,BrickColor.new("Really black"),"HeadPart7",vt(1,1,1))
hpart8=part(1,modelzorz,0.5,0.3,BrickColor.new("Camo"),"HeadPart8",vt(1,1,1))
hpart9=part(1,modelzorz,0,0,BrickColor.new("Really black"),"HeadPart9",vt(1,1,1))
hpart10=part(1,modelzorz,0.5,0.3,BrickColor.new("Camo"),"HeadPart10",vt(1,1,1))
hpart11=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"HeadPart11",vt(1,1,1))
hpart12=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"HeadPart12",vt(1,1,1))
hpart13=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"HeadPart13",vt(1,1,1))
 
hmesh1=mesh("BlockMesh",hpart1,"","",vt(0,0,0),vt(0.7,0.5,0.2))
hmesh2=mesh("BlockMesh",hpart2,"","",vt(0,0,0),vt(0.7,0.5,0.2))
hmesh3=mesh("BlockMesh",hpart3,"","",vt(0,0,0),vt(0.4,0.1,0.2))
hmesh4=mesh("BlockMesh",hpart4,"","",vt(0,0,0),vt(0.2,0.05,0.21))
hmesh5=mesh("BlockMesh",hpart5,"","",vt(0,0,0),vt(0.4,0.1,0.2))
hmesh6=mesh("BlockMesh",hpart6,"","",vt(0,0,0),vt(0.2,0.05,0.21))
hmesh7=mesh("BlockMesh",hpart7,"","",vt(0,0,0),vt(0.4,0.1,0.2))
hmesh8=mesh("BlockMesh",hpart8,"","",vt(0,0,0),vt(0.2,0.05,0.21))
hmesh9=mesh("BlockMesh",hpart9,"","",vt(0,0,0),vt(0.4,0.1,0.2))
hmesh10=mesh("BlockMesh",hpart10,"","",vt(0,0,0),vt(0.2,0.05,0.21))
hmesh11=mesh("BlockMesh",hpart11,"","",vt(0,0,0),vt(0.3,0.5,0.2))
hmesh12=mesh("BlockMesh",hpart12,"","",vt(0,0,0),vt(0.3,0.5,0.2))
hmesh13=mesh("BlockMesh",hpart13,"","",vt(0,0,0),vt(1,0.2,1))
 
local hweld1=weld(hpart1,hpart1,Head,euler(0,0.4,0) * cf(-0.3,-0.2,0.5))
local hweld2 = it("Weld") 
hweld2.Parent = hpart2
hweld2.Part0 = hpart2
hweld2.Part1 = Head
hweld2.C0 = euler(0,-0.4,0) * cf(0.3,-0.2,0.5) 
local hweld3 = it("Weld") 
hweld3.Parent = hpart3
hweld3.Part0 = hpart3
hweld3.Part1 = hpart1
hweld3.C0 = euler(0,0,-0.1) * cf(0.15,-0.1,0.01) 
local hweld4 = it("Weld") 
hweld4.Parent = hpart4
hweld4.Part0 = hpart4
hweld4.Part1 = hpart3
hweld4.C0 = euler(0,0,0) * cf(0,0,0) 
local hweld5 = it("Weld") 
hweld5.Parent = hpart5
hweld5.Part0 = hpart5
hweld5.Part1 = hpart1
hweld5.C0 = euler(0,0,-0.1) * cf(0.15,0.1,0.01) 
local hweld6 = it("Weld") 
hweld6.Parent = hpart6
hweld6.Part0 = hpart6
hweld6.Part1 = hpart5
hweld6.C0 = euler(0,0,0) * cf(0,0,0) 
local hweld7 = it("Weld") 
hweld7.Parent = hpart7
hweld7.Part0 = hpart7
hweld7.Part1 = hpart2
hweld7.C0 = euler(0,0,0.1) * cf(-0.15,-0.1,0.01) 
local hweld8 = it("Weld") 
hweld8.Parent = hpart8
hweld8.Part0 = hpart8
hweld8.Part1 = hpart7
hweld8.C0 = euler(0,0,0) * cf(0,0,0) 
local hweld9 = it("Weld") 
hweld9.Parent = hpart9
hweld9.Part0 = hpart9
hweld9.Part1 = hpart2
hweld9.C0 = euler(0,0,0.1) * cf(-0.15,0.1,0.01) 
local hweld10 = it("Weld") 
hweld10.Parent = hpart10
hweld10.Part0 = hpart10
hweld10.Part1 = hpart9
hweld10.C0 = euler(0,0,0) * cf(0,0,0) 
local hweld11 = it("Weld") 
hweld11.Parent = hpart11
hweld11.Part0 = hpart11
hweld11.Part1 = hpart1
hweld11.C0 = euler(0,0,0) * cf(0.2,-0.2,0) 
local hweld12 = it("Weld") 
hweld12.Parent = hpart12
hweld12.Part0 = hpart12
hweld12.Part1 = hpart2
hweld12.C0 = euler(0,0,0) * cf(-0.2,-0.2,0) 
local hweld13 = it("Weld") 
hweld13.Parent = hpart13
hweld13.Part0 = hpart13
hweld13.Part1 = Head
hweld13.C0 = euler(0,0,0) * cf(0,-0.7,0) ]]
 
 
tpart1=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"TorsoPart1",vt(1,1,1))
tpart2=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart2",vt(1,1,1))
tpart3=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart3",vt(1,1,1))
tpart4=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart4",vt(1,1,1))
tpart5=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart5",vt(1,1,1))
tpart6=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart6",vt(1,1,1))
tpart7=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart7",vt(1,1,1))
tpart8=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart8",vt(1,1,1))
tpart9=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart9",vt(1,1,1))
tpart10=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart10",vt(1,1,1))
tpart11=part(1,modelzorz,0,0,BrickColor.new("Black"),"TorsoPart11",vt(1,1,1))
 
tmesh1=mesh("BlockMesh",tpart1,"","",vt(0,0,0),vt(2.01,1.67,1.01))
tmesh2=mesh("BlockMesh",tpart2,"","",vt(0,0,0),vt(2.1,0.4,1.1))
tmesh3=mesh("BlockMesh",tpart3,"","",vt(0,0,0),vt(0.7,0.5,1))
tmesh4=mesh("BlockMesh",tpart4,"","",vt(0,0,0),vt(0.7,0.5,1))
tmesh5=mesh("SpecialMesh",tpart5,"Wedge","",vt(0,0,0),vt(1,0.5,0.3))
tmesh6=mesh("SpecialMesh",tpart6,"Wedge","",vt(0,0,0),vt(1,0.5,0.3))
tmesh7=mesh("BlockMesh",tpart7,"","",vt(0,0,0),vt(0.6,0.5,1))
tmesh8=mesh("BlockMesh",tpart8,"","",vt(0,0,0),vt(0.6,0.5,1))
tmesh9=mesh("BlockMesh",tpart9,"","",vt(0,0,0),vt(1.9,1,1))
tmesh10=mesh("BlockMesh",tpart10,"","",vt(0,0,0),vt(1.6,0.7,1))
tmesh11=mesh("BlockMesh",tpart11,"","",vt(0,0,0),vt(2.1,0.4,1.1))
 
tweld1=weld(tpart1,tpart1,Torso,euler(0,0,0) * cf(0,0,0))
tweld2=weld(tpart2,tpart2,tpart1,euler(0,0,0) * cf(0,-0.8,0))
tweld3=weld(tpart3,tpart3,tpart2,euler(0,0,0) * cf(0.7,0.5,0.05))
tweld4=weld(tpart4,tpart4,tpart2,euler(0,0,0) * cf(-0.7,0.5,0.05))
tweld5=weld(tpart5,tpart5,tpart2,euler(1.57,-1.57,0) * cf(-0.75,0.9,0.05))
tweld6=weld(tpart6,tpart6,tpart2,euler(1.57,1.57,0) * cf(0.75,0.9,0.05))
tweld7=weld(tpart7,tpart7,tpart2,euler(0,0,0.7) * cf(-0.4,0.25,0.05))
tweld8=weld(tpart8,tpart8,tpart2,euler(0,0,0.7) * cf(0.4,0.25,0.05))
tweld9=weld(tpart9,tpart9,tpart2,euler(0,0,0) * cf(0,0.5,-0.05))
tweld10=weld(tpart10,tpart10,tpart1,euler(0,0,0) * cf(0,0.7,-0.05))
tweld11=weld(tpart11,tpart11,tpart1,euler(0,0,0) * cf(0,0.8,0))
 
inc=-1
for i=1,13 do
inc=inc+0.15
prt=part(1,modelzorz,0,1,BrickColor.new("Really black"),"Part",vt(1,1,1))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(2.02,0.03,1.02))
wld=weld(prt,prt,tpart1,euler(0,0,0) * cf(0,inc,0))
end
 
rapart1=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"RightArmPart1",vt(1,1,1))
rapart2=part(1,modelzorz,0,0,BrickColor.new("Black"),"RightArmPart2",vt(1,1,1))
rapart3=part(1,modelzorz,0,0,BrickColor.new("Black"),"RightArmPart3",vt(1,1,1))
rapart4=part(1,modelzorz,0,0,BrickColor.new("Black"),"RightArmPart4",vt(1,1,1))
rapart5=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"RightArmPart5",vt(1,1,1))
rapart6=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"RightArmPart6",vt(1,1,1))
--rapart7=part(1,modelzorz,0,0,BrickColor.new("Black"),"RightArmPart7",vt(1,1,1))
 
ramesh1=mesh("BlockMesh",rapart1,"","",vt(0,0,0),vt(1.01,1.67,1.01))
ramesh2=mesh("BlockMesh",rapart2,"","",vt(0,0,0),vt(0.7,1.3,0.3))
ramesh3=mesh("BlockMesh",rapart3,"","",vt(0,0,0),vt(1.1,0.7,0.3))
ramesh4=mesh("SpecialMesh",rapart4,"Head","",vt(0,0,0),vt(1.3,0.7,1.3))
ramesh5=mesh("SpecialMesh",rapart5,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(1.2,1.2,2))
ramesh6=mesh("SpecialMesh",rapart6,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(1.2,1.2,2))
--ramesh7=mesh("SpecialMesh",rapart7,"Wedge","",vt(0,0,0),vt(1,0.5,1.8))
 
raweld1=weld(rapart1,rapart1,RightArm,euler(0,0,0) * cf(0,0,0))
raweld2=weld(rapart2,rapart2,rapart1,euler(0,0,0) * cf(-0.2,0.3,0))
raweld3=weld(rapart3,rapart3,rapart1,euler(0,1.57,0) * cf(0,0.7,0))
raweld4=weld(rapart4,rapart4,rapart1,euler(0,0,0) * cf(-0.1,0.3,0))
raweld5=weld(rapart5,rapart5,rapart1,euler(1.57,0,-0.5) * cf(-0.2,-0.1,0))
raweld6=weld(rapart6,rapart6,rapart1,euler(1.57,0,-0.5) * cf(-0.2,-0.5,0))
--raweld7=weld(rapart7,rapart7,tpart1,euler(0,1.57,-0.5) * cf(-1.5,-1.3,0))
 
lapart1=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"LeftArmPart1",vt(1,1,1))
lapart2=part(1,modelzorz,0,0,BrickColor.new("Black"),"LeftArmPart2",vt(1,1,1))
lapart3=part(1,modelzorz,0,0,BrickColor.new("Black"),"LeftArmPart3",vt(1,1,1))
lapart4=part(1,modelzorz,0,0,BrickColor.new("Black"),"LeftArmPart4",vt(1,1,1))
lapart5=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"LeftArmPart5",vt(1,1,1))
lapart6=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"LeftArmPart6",vt(1,1,1))
--lapart7=part(1,modelzorz,0,0,BrickColor.new("Black"),"LeftArmPart7",vt(1,1,1))
 
lamesh1=mesh("BlockMesh",lapart1,"","",vt(0,0,0),vt(1.01,1.67,1.01))
lamesh2=mesh("BlockMesh",lapart2,"","",vt(0,0,0),vt(0.7,1.3,0.3))
lamesh3=mesh("BlockMesh",lapart3,"","",vt(0,0,0),vt(1.1,0.7,0.3))
lamesh4=mesh("SpecialMesh",lapart4,"Head","",vt(0,0,0),vt(1.3,0.7,1.3))
lamesh5=mesh("SpecialMesh",lapart5,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(1.2,1.2,2))
lamesh6=mesh("SpecialMesh",lapart6,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(1.2,1.2,2))
--lamesh7=mesh("SpecialMesh",lapart7,"Wedge","",vt(0,0,0),vt(1,0.5,1.8))
 
laweld1=weld(lapart1,lapart1,LeftArm,euler(0,0,0) * cf(0,0,0))
laweld2=weld(lapart2,lapart2,lapart1,euler(0,0,0) * cf(0.2,0.3,0))
laweld3=weld(lapart3,lapart3,lapart1,euler(0,1.57,0) * cf(0,0.7,0))
laweld4=weld(lapart4,lapart4,lapart1,euler(0,0,0) * cf(0.1,0.3,0))
laweld5=weld(lapart5,lapart5,lapart1,euler(1.57,0,0.5) * cf(0.2,-0.1,0))
laweld6=weld(lapart6,lapart6,lapart1,euler(1.57,0,0.5) * cf(0.2,-0.5,0))
--laweld7=weld(lapart7,lapart7,tpart1,euler(0,-1.57,0.5) * cf(1.5,-1.3,0))
 
llpart1=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"LeftLegPart1",vt(1,1,1))
llpart2=part(1,modelzorz,0,0,BrickColor.new("Black"),"LeftLegPart2",vt(1,1,1))
llpart3=part(1,modelzorz,0,0,BrickColor.new("Black"),"LeftLegPart3",vt(1,1,1))
llpart4=part(1,modelzorz,0,0,BrickColor.new("Black"),"LeftLegPart4",vt(1,1,1))
llpart5=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"LeftLegPart5",vt(1,1,1))
 
llmesh1=mesh("BlockMesh",llpart1,"","",vt(0,0,0),vt(1.01,1.67,1.01))
llmesh2=mesh("BlockMesh",llpart2,"","",vt(0,0,0),vt(1.01,0.5,1.01))
llmesh3=mesh("BlockMesh",llpart3,"","",vt(0,0,0),vt(0.5,0.6,1.01))
llmesh4=mesh("BlockMesh",llpart4,"","",vt(0,0,0),vt(0.99,1,1.01))
llmesh5=mesh("SpecialMesh",llpart5,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(1.2,1.2,2))
 
llweld1=weld(llpart1,llpart1,LeftLeg,euler(0,0,0) * cf(0,0,0))
llweld2=weld(llpart2,llpart2,llpart1,euler(0,0,0) * cf(0,0,0.05))
llweld3=weld(llpart3,llpart3,llpart1,euler(0,0,0) * cf(0,0.6,0.05))
llweld4=weld(llpart4,llpart4,llpart1,euler(0,0,0) * cf(0,0.3,-0.05))
llweld5=weld(llpart5,llpart5,llpart1,euler(1.57,0,0.5) * cf(0.3,-0.1,0))
 
rlpart1=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"RightLegPart1",vt(1,1,1))
rlpart2=part(1,modelzorz,0,0,BrickColor.new("Black"),"RightLegPart2",vt(1,1,1))
rlpart3=part(1,modelzorz,0,0,BrickColor.new("Black"),"RightLegPart3",vt(1,1,1))
rlpart4=part(1,modelzorz,0,0,BrickColor.new("Black"),"RightLegPart4",vt(1,1,1))
rlpart5=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"RightLegPart5",vt(1,1,1))
 
rlmesh1=mesh("BlockMesh",rlpart1,"","",vt(0,0,0),vt(1.01,1.67,1.01))
rlmesh2=mesh("BlockMesh",rlpart2,"","",vt(0,0,0),vt(1.01,0.5,1.01))
rlmesh3=mesh("BlockMesh",rlpart3,"","",vt(0,0,0),vt(0.5,0.6,1.01))
rlmesh4=mesh("BlockMesh",rlpart4,"","",vt(0,0,0),vt(0.99,1,1.01))
rlmesh5=mesh("SpecialMesh",rlpart5,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(1.2,1.2,2))
 
rlweld1=weld(rlpart1,rlpart1,RightLeg,euler(0,0,0) * cf(0,0,0))
rlweld2=weld(rlpart2,rlpart2,rlpart1,euler(0,0,0) * cf(0,0,0.05))
rlweld3=weld(rlpart3,rlpart3,rlpart1,euler(0,0,0) * cf(0,0.6,0.05))
rlweld4=weld(rlpart4,rlpart4,rlpart1,euler(0,0,0) * cf(0,0.3,-0.05))
rlweld5=weld(rlpart5,rlpart5,rlpart1,euler(1.57,0,-0.5) * cf(-0.3,-0.1,0))
 
 
testpart=part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"Testy",vt(1,1,1))
testpart.Anchored=true 
 
bod = it("BodyPosition")
bod.position = scarfp2.Position 
bod.Parent = scarfp2
bod.maxForce = vt(4e+080, 4e+080, 4e+080) 
 
print("NEIN.")
coroutine.resume(coroutine.create(function()
while true do
walking=true
if walking==true then
bod.position = (cf(refpart.Position, testpart.Position)).p
scarfp2.CFrame = cf(refpart.Position, testpart.Position) *cf(0,0,0)
scarfp2.CFrame = scarfp2.CFrame + scarfp2.CFrame.lookVector * 0.5 
scarfp2.CFrame = scarfp2.CFrame * cf(0,0,-0.5) * euler(1.57,0,0) 
mainCF=scarfp2.CFrame
if animating==false then scarfp3.CFrame = mainCF * cf(0,0.9,-0.5) * euler(0.5,0,0) end
coroutine.resume(coroutine.create(function()
if animating==false then
animating=true
for i=0,1,0.1 do
wait()
scarfp3.CFrame = mainCF * cf(0,1,-0.5+0.6*i) * euler(0.15-0.3*i,0,0) 
end
for i=0,1,0.1 do
wait()
scarfp3.CFrame = mainCF * cf(0,1,-0.5+0.6-0.6*i) * euler(0.15-0.3+0.3*i,0,0) 
end
animating=false
end
end))
end
wait(0)
end
end))
for i=0,1,0.1 do
wait()
Character.Humanoid.MaxHealth=300
Character.Humanoid.Health=300
end
while true do
wait()
for i=0,1,0.1 do
wait()
testpart.CFrame=cf(refpart.Position-refpart.Velocity) *cf(0,-1,0)
end
--[[for i=0,1,0.1 do
wait()
testpart.CFrame=cf(refpart.Position-refpart.Velocity) *cf(0,-5+i*10,0)
end]]
end
 
-- lego