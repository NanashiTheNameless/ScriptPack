--[[
Cyber Bruiser Class Made by Fenrier.
]]
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
Neck=Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
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
MMouse=nil
combo=0
mana=0
local idle=0
local Anim="Idle"
local orbnum=0
local Mode="Normal"
--player 
player=nil 
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
Charge=0
TorsoColor=Torso.BrickColor.Color
Col1=1-Torso.Color.r
Col2=1-Torso.Color.g
Col3=1-Torso.Color.b
InverseCol=BrickColor.new(Color3.new(Col1,Col2,Col3))
upvel=Instance.new("BodyVelocity")
local hitbeat=nil
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Kaltos Arm",true) ~= nil then 
Character:findFirstChild("Kaltos Arm",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil 
end 
 
 
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
mesh.MeshId=meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor
 
local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
local fenframe=it("Frame") 
fenframe.Parent=fengui
fenframe.BackgroundColor3=Color3.new(255,255,255) 
fenframe.BackgroundTransparency=1 
fenframe.BorderColor3=Color3.new(17,17,17) 
fenframe.Size=UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position=UDim2.new(0.4,0,0.1,0)
local fenbarmana1=it("TextLabel") 
fenbarmana1.Parent=fenframe 
fenbarmana1.Text=" " 
fenbarmana1.BackgroundTransparency=0 
fenbarmana1.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana1.SizeConstraint="RelativeXY" 
fenbarmana1.TextXAlignment="Center" 
fenbarmana1.TextYAlignment="Center" 
fenbarmana1.Position=UDim2.new(0,0,0,0)
fenbarmana1.Size=UDim2.new(4,0,0.2,0)
local fenbarmana2=it("TextLabel") 
fenbarmana2.Parent=fenframe 
fenbarmana2.Text=" " 
fenbarmana2.BackgroundTransparency=0 
fenbarmana2.BackgroundColor3=Torso.Color
fenbarmana2.SizeConstraint="RelativeXY" 
fenbarmana2.TextXAlignment="Center" 
fenbarmana2.TextYAlignment="Center" 
fenbarmana2.Position=UDim2.new(0,0,0,0)
fenbarmana2.Size=UDim2.new(4*mana/100,0,0.2,0)
local fenbarmana3=it("TextLabel") 
fenbarmana3.Parent=fenframe 
fenbarmana3.Text=" " 
fenbarmana3.BackgroundTransparency=0 
fenbarmana3.BackgroundColor3=Color3.new(Col1,Col2,Col3)
fenbarmana3.SizeConstraint="RelativeXY" 
fenbarmana3.TextXAlignment="Center" 
fenbarmana3.TextYAlignment="Center" 
fenbarmana3.Position=UDim2.new(0,0,0,0)
fenbarmana3.Size=UDim2.new(0,0,0.2,0)
local fenbarmana4=it("TextLabel") 
fenbarmana4.Parent=fenframe 
fenbarmana4.Text="Energy("..mana..")"
fenbarmana4.BackgroundTransparency=1 
fenbarmana4.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana4.SizeConstraint="RelativeXY" 
fenbarmana4.TextXAlignment="Center" 
fenbarmana4.TextYAlignment="Center" 
fenbarmana4.Position=UDim2.new(0,0,-0.3,0)
fenbarmana4.Size=UDim2.new(4,0,0.2,0)
fenbarmana4.FontSize="Size9"
fenbarmana4.TextStrokeTransparency=0
fenbarmana4.TextColor=BrickColor.new("White")
 
local modelzorz=Instance.new("Model") 
modelzorz.Parent=Character 
modelzorz.Name="Kaltos Arm" 
 
--local prt1=part(3,modelzorz,0,0,Torso.BrickColor,"Handle",vt())
local prt1=part(3,modelzorz,0,0,BrickColor.new("Black"),"Handle",vt())
local prt2=part(3,modelzorz,0,0,Torso.BrickColor,"Part2",vt())
local prt3=part(3,modelzorz,0,0,Torso.BrickColor,"Part3",vt())
local prt4=part(3,modelzorz,0,0,InverseCol,"Part4",vt())
local prt5=part(3,modelzorz,0,0,InverseCol,"Part5",vt())
local prt6=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part6",vt()) 
local prt7=part(3,modelzorz,0,0,Torso.BrickColor,"Part7",vt())
local prt10=part(3,modelzorz,0,0,Torso.BrickColor,"Part10",vt())
local prt11=part(3,modelzorz,0,0,InverseCol,"Part11",vt())
local prt12=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part12",vt()) 
local prt13=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part13",vt()) 
local prt14=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part14",vt()) 
local prt15=part(3,modelzorz,0,0,Torso.BrickColor,"Part15",vt()) 
local prt16=part(3,modelzorz,0,0.5,BrickColor.new("Really black"),"Part16",vt()) 
local prt17=part(3,modelzorz,0,0.5,BrickColor.new("Really black"),"Part17",vt()) 
local prt18=part(3,modelzorz,0,0.5,BrickColor.new("Really black"),"Part18",vt()) 
local prt19=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part19",vt()) 
local prt20=part(3,modelzorz,0,0,Torso.BrickColor,"Part20",vt()) 
local prt21=part(3,modelzorz,0,0,Torso.BrickColor,"Part21",vt()) 
local prt26=part(3,modelzorz,0,0,Torso.BrickColor,"Part26",vt()) 
local prt27=part(3,modelzorz,0,0,Torso.BrickColor,"Part27",vt()) 
local prt28=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part28",vt()) 
local prt29=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part29",vt()) 
local prt30=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part30",vt()) 
local prt31=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part31",vt()) 
local prt32=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part32",vt()) 
local prt33=part(3,modelzorz,0,0,Torso.BrickColor,"Part33",vt()) 
local prt34=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part34",vt()) 
local prt35=part(3,modelzorz,0,0,InverseCol,"Part35",vt()) 
local prt36=part(3,modelzorz,0,0.5,BrickColor.new("White"),"Part36",vt())
local prt37=part(3,modelzorz,0,0,Torso.BrickColor,"Part37",vt()) 
local prt38=part(3,modelzorz,0,0,InverseCol,"Part38",vt()) 
local prt39=part(3,modelzorz,0,0.5,BrickColor.new("White"),"Part39",vt())
local prt40=part(3,modelzorz,0,0,Torso.BrickColor,"Part40",vt()) 
local prt41=part(3,modelzorz,0,0,InverseCol,"Part41",vt()) 
local prt42=part(3,modelzorz,0,0.5,BrickColor.new("White"),"Part42",vt())
local prt43=part(3,modelzorz,0,0,Torso.BrickColor,"Part43",vt()) 
local prt44=part(3,modelzorz,0,0,InverseCol,"Part44",vt()) 
local prt45=part(3,modelzorz,0,0.5,BrickColor.new("White"),"Part45",vt())
local prt46=part(3,modelzorz,0,0,Torso.BrickColor,"Part46",vt()) 
local prt47=part(3,modelzorz,0,0,InverseCol,"Part47",vt()) 
local prt48=part(3,modelzorz,0,1,InverseCol,"Circle Orbs Part",vt()) 
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(5,3.5,3.5))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(8,3,3))
local msh3=mesh("CylinderMesh",prt3,"","",vt(0,0,0),vt(3,5,3))
local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1,5.1,4))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1,5.1,4))
local msh6=mesh("CylinderMesh",prt6,"","",vt(0,0,0),vt(5,2.5,5))
local msh7=mesh("CylinderMesh",prt7,"","",vt(0,0,0),vt(5.4,2.4,5.4))
local msh10=mesh("SpecialMesh",prt10,"Sphere","",vt(0,0,0),vt(4,4,4))
local msh11=mesh("BlockMesh",prt11,"","",vt(0,0,0),vt(1,4,4))
local msh12=mesh("CylinderMesh",prt12,"","",vt(0,0,0),vt(3,6,3))
local msh13=mesh("SpecialMesh",prt13,"Sphere","",vt(0,0,0),vt(4,4,4))
local msh14=mesh("SpecialMesh",prt14,"Head","",vt(0,0,0),vt(4,9,4))
local msh15=mesh("CylinderMesh",prt15,"","",vt(0,0,0),vt(7,3,7))
local msh16=mesh("BlockMesh",prt16,"","",vt(0,0,0),vt(3,7,3))
local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(2,12,2))
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(3,3,3))
local msh19=mesh("SpecialMesh",prt19,"Head","",vt(0,0,0),vt(6,5,6))
local msh20=mesh("CylinderMesh",prt20,"","",vt(0,0,0),vt(4,5,4))
local msh21=mesh("SpecialMesh",prt21,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(1.7,1.2,.8))
local msh26=mesh("BlockMesh",prt26,"","",vt(0,0,0),vt(3.5,12,3.5))
local msh27=mesh("SpecialMesh",prt27,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(1,1,1))
local msh28=mesh("CylinderMesh",prt28,"","",vt(0,0,0),vt(3,4,3))
local msh29=mesh("CylinderMesh",prt29,"","",vt(0,0,0),vt(3,4,3))
local msh30=mesh("CylinderMesh",prt30,"","",vt(0,0,0),vt(3,4,3))
local msh31=mesh("CylinderMesh",prt31,"","",vt(0,0,0),vt(3,4,3))
local msh32=mesh("BlockMesh",prt32,"","",vt(0,0,0),vt(3.4,12,3.4))
local msh33=mesh("BlockMesh",prt33,"","",vt(0,0,0),vt(3.5,4,5))
local msh34=mesh("BlockMesh",prt34,"","",vt(0,0,0),vt(3.4,3.9,4.9))
local msh35=mesh("CylinderMesh",prt35,"","",vt(0,0,0),vt(3,4,3))
local msh36=mesh("BlockMesh",prt36,"","",vt(0,0,0),vt(1,1,1))
local msh37=mesh("BlockMesh",prt37,"","",vt(0,0,0),vt(1.5,4,1.5))
local msh38=mesh("SpecialMesh",prt38,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.3,0.8,0.3))
local msh39=mesh("BlockMesh",prt39,"","",vt(0,0,0),vt(1,1,1))
local msh40=mesh("BlockMesh",prt40,"","",vt(0,0,0),vt(1.5,4,1.5))
local msh41=mesh("SpecialMesh",prt41,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.3,0.8,0.3))
local msh42=mesh("BlockMesh",prt42,"","",vt(0,0,0),vt(1,1,1))
local msh43=mesh("BlockMesh",prt43,"","",vt(0,0,0),vt(1.5,4,1.5))
local msh44=mesh("SpecialMesh",prt44,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.3,0.8,0.3))
local msh45=mesh("BlockMesh",prt45,"","",vt(0,0,0),vt(1,1,1))
local msh46=mesh("BlockMesh",prt46,"","",vt(0,0,0),vt(1.5,4,1.5))
local msh47=mesh("SpecialMesh",prt47,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.3,0.8,0.3))
local msh48=mesh("BlockMesh",prt48,"","",vt(0,0,0),vt(8,8,8))
 
local wld1=weld(prt1,prt1,Torso,euler(0,0,0)*cf(0,-0.4,-.7))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt1,euler(1.57,0,0)*cf(0,0,0))
local wld4=weld(prt4,prt4,prt3,euler(0,0.785,0)*cf(0,0,0))
local wld5=weld(prt5,prt5,prt3,euler(0,-0.785,0)*cf(0,0,0))
local wld6=weld(prt6,prt6,prt2,euler(1.57,0,0)*cf(-1,-0.5,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(-.05,0,-.1))
local wld10=weld(prt10,prt10,prt6,euler(0,0,0)*cf(0,0,0))
local wld11=weld(prt11,prt11,prt10,euler(0,0.785,0)*cf(0,0,0))
local wld12=weld(prt12,prt12,prt2,euler(0,0,1.57)*cf(.7,0.2,0)*euler(0,0,0.4))
local wld13=weld(prt13,prt13,prt12,euler(0,0,0)*cf(0,.6,0)*euler(0,0,0))
local wld14=weld(prt14,prt14,prt13,cf(0,.8,0)*euler(0,0,1))
local wld15=weld(prt15,prt15,prt14,euler(1.5,-.7,0)*cf(0,1.2,0.2))
local wld16=weld(prt16,prt16,prt15,cf(0,1.2,0)*euler(1.57,-.8,0))
local wld17=weld(prt17,prt17,prt16,cf(0,1.2,0)*euler(0,0,0.5)*cf(0,.7,0))
local wld18=weld(prt18,prt18,prt17,euler(0,0,0)*cf(0,1.6,0))
local wld19=weld(prt19,prt19,prt15,euler(0,0,0)*cf(0,0,0))
local wld20=weld(prt20,prt20,prt19,euler(0,0,0)*cf(0,0,0))
local wld21=weld(prt21,prt21,prt15,cf(0.1,0,.5)*euler(0,0.8,0))
local wld26=weld(prt26,prt26,prt17,cf(0,0,0)*euler(0,0,0))
local wld27=weld(prt27,prt27,prt26,euler(0,0,0)*cf(0,-1.2,0))
local wld28=weld(prt28,prt28,prt26,euler(0.7,0,0)*cf(0,-.1,0.3))
local wld29=weld(prt29,prt29,prt26,euler(-0.7,0,0)*cf(0,-.1,-0.3))
local wld30=weld(prt30,prt30,prt26,euler(0,0,-0.7)*cf(0.3,-.1,0))
local wld31=weld(prt31,prt31,prt26,euler(0,0,0.7)*cf(-0.3,-.1,0))
local wld32=weld(prt32,prt32,prt26,euler(0,0,0)*cf(0.1,0,0))
local wld33=weld(prt33,prt33,prt18,euler(0,0,0)*cf(0,0,0))
local wld34=weld(prt34,prt34,prt33,euler(0,0,0)*cf(0.1,0,0))
local wld35=weld(prt35,prt35,prt33,euler(0,0,1.57)*cf(0.1,0,0))
local wld36=weld(prt36,prt36,prt33,euler(0,0,0)*cf(0,-0.2,-0.5))
local wld37=weld(prt37,prt37,prt36,cf(0,.3,0)*euler(.8,0,1))
local wld38=weld(prt38,prt38,prt37,euler(-1,0,0)*cf(0,.4,0))
local wld39=weld(prt39,prt39,prt33,euler(0,0,0)*cf(0,.4,-0.4))
local wld40=weld(prt40,prt40,prt39,cf(0,.3,0)*euler(0,0,0.5))
local wld41=weld(prt41,prt41,prt40,euler(0,0,.5)*cf(0,.4,0))
local wld42=weld(prt42,prt42,prt33,euler(0,0,0)*cf(0,.4,0))
local wld43=weld(prt43,prt43,prt42,cf(0,.3,0)*euler(0,0,0.5))
local wld44=weld(prt44,prt44,prt43,euler(0,0,.5)*cf(0,.4,0))
local wld45=weld(prt45,prt45,prt33,euler(0,0,0)*cf(0,.4,0.4))
local wld46=weld(prt46,prt46,prt45,cf(0,.3,0)*euler(0,0,0.5))
local wld47=weld(prt47,prt47,prt46,euler(0,0,.5)*cf(0,.4,0))
local wld48=weld(prt48,prt48,prt33,euler(0,0,0)*cf(0,0,0))
 
for i=0,1.5,0.5 do
local prt8=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part8",vt())
local prt9=part(3,modelzorz,0,0,InverseCol,"Part9",vt())
local msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(1,6,1))
local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(1.5,1.5,1.5))
local wld8=weld(prt8,prt8,prt7,cf(0,.6,0)*euler(1.57,-0.2-i,0))
local wld9=weld(prt9,prt9,prt8,euler(0,0,0)*cf(0,.3,0))
end
 
for i=0.25,-0.45,-0.35 do
local prt22=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part22",vt()) 
local prt23=part(3,modelzorz,0,0,InverseCol,"Part23",vt()) 
local msh22=mesh("CylinderMesh",prt22,"","",vt(0,0,0),vt(2.5,9,2.5))
local msh23=mesh("CylinderMesh",prt23,"","",vt(0,0,0),vt(2.6,2,2.6))
local wld22=weld(prt22,prt22,prt15,euler(0,0,1.57)*cf(.8,0,i)*euler(0,0.6,0))
local wld23=weld(prt23,prt23,prt22,cf(0,0.6,0))
end
 
for i=0,6.28,2.093 do
local prt24=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part24",vt()) 
local prt25=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part25",vt()) 
local msh24=mesh("CylinderMesh",prt24,"","",vt(0,0,0),vt(3,7,3))
local msh25=mesh("SpecialMesh",prt25,"Head","",vt(0,0,0),vt(2.8,9,2.8))
local wld24=weld(prt24,prt24,prt16,cf(.2,0,0)*euler(0,i,0))
local wld25=weld(prt25,prt25,prt24,cf(0,0,0))
end
 
Orbs={}
ActiveOrbs={}
for i=1.256,6.28,1.256 do
local orb1=part(3,modelzorz,0,1,InverseCol,"Orb",vt()) 
local omsh1=mesh("SpecialMesh",orb1,"Sphere","",vt(0,0,0),vt(3,3,3))
local owld1=weld(orb1,orb1,prt48,cf(0,2,0)*euler(i,0,0))
table.insert(Orbs,orb1)
end
print(#Orbs)
 
local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Kaltos Arm" 
script.Parent=Tool 
end 
Bin=script.Parent 
 
local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end
 
function hideanim() 
equipped=false
for i=0,1,0.1 do
swait()
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(0,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,0,1),.3)
wld15.C0=clerp(wld15.C0,euler(1.5,-.7,0)*cf(0,1.2,0.2),.3)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.3)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0.5)*cf(0,.7,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.4)
Torso.Neck.C1=clerp(Torso.Neck.C1,necko2*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,RHC0,.2)
RH.C1=clerp(RH.C1,RHC1,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
LH.C1=clerp(LH.C1,LHC1,.2)
end
end 
 
function equipanim() 
equipped=true
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.1),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
end 
 
function attackone()
attack=true
for i=0,1,0.1 do
swait()
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(0,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,0,0),.3)
wld15.C0=clerp(wld15.C0,euler(1.4,-2.7,0.5)*cf(0,1.2,0.2),.3)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.3)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0.2)*cf(0,.7,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,1.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1,0,1),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
end
swait(5)
hitbox.Parent=modelzorz
hitbox.Size=vt(2,5,2)
hitbox.Transparency=1
hitbox.CFrame=prt26.CFrame
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,4,9,math.random(30,40),"Normal",RootPart,.5,1) end) 
so("http://roblox.com/asset/?id=169445092",prt26,1,.7) 
for i=0,1,0.05 do
swait()
hitbox.CFrame=prt26.CFrame
wld15.C0=clerp(wld15.C0,euler(-1.4,3,-1.3)*cf(0,1.2,0.2),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0)*cf(0,.7,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.57),.25)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.57),.25)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1.3),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-1.57),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
end
con1:disconnect()
hitbox.Parent=nil
swait(5)
attack=false
end
 
function attacktwo()
attack=true
for i=0,1,0.1 do
swait()
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(0,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(-.5,-.5,.5),.3)
wld15.C0=clerp(wld15.C0,euler(3,-1,1)*cf(0,1.2,0.2),.3)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.3)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0.8)*cf(0,.7,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.3),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.3),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1.3),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(0,-2.5,-1.57),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
end
swait(5)
hitbox.Parent=modelzorz
hitbox.Size=vt(2,5,2)
hitbox.Transparency=1
hitbox.CFrame=prt26.CFrame
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,11,math.random(30,40),"Normal",RootPart,.5,1) end) 
so("http://roblox.com/asset/?id=169445073",prt26,1,.8) 
for i=0,1,0.07 do
swait()
hitbox.CFrame=prt26.CFrame
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(-.5,-.5,-.5),.2)
wld15.C0=clerp(wld15.C0,euler(2,.5,2)*cf(0,1.2,0.2),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0.2)*cf(0,.7,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1.5),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.5),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,1,1.3),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-1.2),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
end
con1:disconnect()
hitbox.Parent=nil
swait(5)
attack=false
end
 
function attackthree()
attack=true
for i=0,1,0.08 do
swait()
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(0,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,0,1),.25)
wld15.C0=clerp(wld15.C0,euler(0,3,-1.5)*cf(0,1.2,0.2),.25)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.25)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0.2,-1.57,0)*cf(0,.7,0),.25)
Neck.C0=clerp(Neck.C0,necko*euler(-0.4,0,.5),.25)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-0.5),.25)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.5),.25)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.25)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.5,0,-.5),.25)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.25)
end
Humanoid.WalkSpeed=0
hitbox.Parent=modelzorz
hitbox.Size=vt(2,5,2)
hitbox.Transparency=1
hitbox.CFrame=prt26.CFrame
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,12,16,math.random(30,40),"Normal",RootPart,.5,1) end) 
so("http://roblox.com/asset/?id=169445121",prt26,1,.8) 
for i=0,1,0.15 do
swait()
hitbox.CFrame=prt26.CFrame
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(-1.5,0,1),.35)
wld15.C0=clerp(wld15.C0,euler(0,-2.6,-1.5)*cf(0,1.2,0.2),.35)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.35)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(1,-1.57,0)*cf(0,.7,0),.35)
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,.1),.35)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)*euler(0,0,-0.1),.35)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.8),.35)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-1,0,-.2),.35)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.35)
LH.C0=clerp(LH.C0,cf(-1.1,0.4,-0.8)*euler(-0.05,-1.57,0),.35)
end
con1:disconnect()
hitbox.Parent=nil
hit,pos=rayCast(prt33.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if hit~=nil then
local ref=part(3,workspace,0,1,hit.BrickColor,"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
for i=1,5 do
Col=hit.BrickColor
local groundpart=part(3,workspace,0,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.Material=hit.Material
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-300,300)/100,0,math.random(-300,300)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,3)
end
so("http://roblox.com/asset/?id=157878578",ref,.7,2) 
MagicWave(hit.BrickColor,cf(pos),1,1,1,.7,.7,.7,0.05)
MagniDamage(ref,13,14,23,math.random(40,50),"Normal")
end
swait(10)
Humanoid.WalkSpeed=16
attack=false
end
 
function KaltosBeat()
attack=true
for i=0,1,0.1 do
swait()
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(1,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(.5,0,.7),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,.7),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(-.5,0,.7),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(1.5,0,1.5),.3)
wld15.C0=clerp(wld15.C0,euler(1.57,0,.4)*cf(0,1.2,0.2),.3)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.3)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0.8)*cf(0,.7,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.6)*euler(.2,0,.5),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-.5),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.8,0,.4),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.2,0,-.8),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1.1,-.4,-.1)*euler(0,1.57,0)*euler(-.1,-.5,.2),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,-.2)*euler(0,-1.57,0)*euler(-.1,-.5,.4),.3)
end
so("http://roblox.com/asset/?id=244482337",LeftArm,1,.8) 
local num=0
while holdz==true do
swait()
if num<40 and mana>=num then
fenbarmana3:TweenSize(UDim2.new(4*num/100,0,0.2,0),nil,1,0.4,true)
num=num+.4
end
if num>=40 then
holdz=false
end
Humanoid.WalkSpeed=5
MagicBlock(InverseCol,prt35.CFrame*cf(0,-1,0)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,.5,.5,.5,.05,2)
end
if num>20 then
print(num)
mana=mana-math.floor(num)
fenbarmana3:TweenSize(UDim2.new(4*0,0,0.2,0),nil,1,0.4,true)
Humanoid.WalkSpeed=16
upvel.Parent=Torso
upvel.maxForce=Vector3.new(4e+005,4e+005,4e+005)*2
if num>=40 then
velcf=(Head.CFrame.lookVector*(num*2.5))+(vt(0,1,0)*(num*2.5))
else
velcf=(Head.CFrame.lookVector*(num*2.5))+(vt(0,1,0)*(num*1.5))
end
so("http://roblox.com/asset/?id=138210320",prt20,1,1)
MagicBlock(InverseCol,prt15.CFrame,1,1,1,1.5,1.5,1.5,.02,1)
MagicCircle(InverseCol,prt15.CFrame,1,1,1,8,8,8,.1)
for i=0,1,0.05 do
swait()
upvel.velocity=velcf
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(0,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,0,1),.25)
wld15.C0=clerp(wld15.C0,euler(0,3,-1.5)*cf(0,1.2,0.2),.25)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.25)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0.2,-1.57,0)*cf(0,.7,0),.25)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.3),.25)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-0.3),.25)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.5),.25)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.25)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.5,0,-.5),.25)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.25)
RH.C0=clerp(RH.C0,cf(1.1,-.4,-.1)*euler(0,1.57,0)*euler(-.1,0,.2),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,-.2)*euler(0,-1.57,0)*euler(-.1,0,.4),.3)
end
swait(10)
upvel.Parent=nil
upvel.velocity=vt(0,0,0)
hitbeat=nil
while hitbeat==nil do
swait()
hitbeat,posbeat=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
end
print("end")
Humanoid.WalkSpeed=0
upvel.velocity=vt(0,0,0)
upvel.Parent=nil
for i=0,1,0.2 do
swait()
Torso.Velocity=RootPart.CFrame.lookVector*0
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(-1.5,0,1),.5)
wld15.C0=clerp(wld15.C0,euler(0,-2.6,-1.5)*cf(0,1.2,0.2),.5)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-1,0),.5)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(1,-1.57,0)*cf(0,.7,0),.5)
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,.1),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)*euler(0,0,-0.1),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.8),.5)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-1,0,-.2),.5)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.5)
LH.C0=clerp(LH.C0,cf(-1.1,0.4,-0.8)*euler(-0.05,-1.57,0),.5)
end
hit,pos=rayCast(prt33.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if hit~=nil then
local ref=part(3,workspace,0,1,hit.BrickColor,"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
for i=1,10 do
Col=hit.BrickColor
local groundpart=part(3,workspace,0,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.Material=hit.Material
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-700,700)/100,0,math.random(-700,700)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,3)
end
so("http://roblox.com/asset/?id=157878578",ref,.7,1) 
so("http://roblox.com/asset/?id=2760979",ref,1,.5) 
MagicWave(BrickColor.new("White"),cf(pos),1,1,1,1,1,1,0.04)
MagicBlock(BrickColor.new("White"),cf(pos),1,1,1,4,4,4,0.05,1)
MagicBlock(BrickColor.new("White"),cf(pos)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,2,2,2,0.02,2)
if Mode=="Transcend" then
Humanoid.Health=Humanoid.Health-math.random(5,15)
num=#ActiveOrbs
table.remove(ActiveOrbs,num)
orbnum=orbnum-1
so("http://roblox.com/asset/?id=138210320",prt20,1,.8) 
so("http://roblox.com/asset/?id=183763515",prt20,1,1) 
MagniDamage(ref,17,13,16,math.random(40,50),"Knockdown")
MagicWave(InverseCol,cf(pos),1,1,1,.5,.5,.5,0.02)
coroutine.resume(coroutine.create(function()
for i=1,20 do
swait(1)
if i%4==0 then
MagniDamage(ref,17,13,16,math.random(40,50),"Knockdown")
end
MagicBlock(InverseCol,cf(pos)*cf(math.random(-700,700)/100,math.random(-200,200)/100,math.random(-700,700)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,4,4,4,0.05,2)
end
end))
else
MagniDamage(ref,10,20,40,math.random(30,60),"Knockdown")
end
end
n=0
dis=.05
for i=0,1.5,0.02 do
swait()
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-1-dis,0),1)
n=n+1
if n>=2 then
n=0
if dis==.05 then
dis=0
else
dis=.05
end
end
end
end
Humanoid.WalkSpeed=16
fenbarmana3:TweenSize(UDim2.new(4*0,0,0.2,0),nil,1,.2,true)
attack=false
end
 
function EnergyTranscend()
attack=true
so("http://roblox.com/asset/?id=203691326",prt33,1,1) 
for i=0,1,0.1 do
swait()
MagicBlock(InverseCol,prt33.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0,0,0,1,1,1,.05,2)
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(0,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,-1,0)*euler(-1.5,0,0),.2)
wld15.C0=clerp(wld15.C0,euler(0,-1.5,0)*cf(0,1.2,0.4),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,-1.57,-0.5)*cf(0,.7,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.4)*euler(0,0,1.2),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-1.2),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,0,.8),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.6,0,-1),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-.8,.5)*euler(0,1.57,0)*euler(.2,-1,0),.3)
LH.C0=clerp(LH.C0,cf(-.8,-.8,-.5)*euler(0,-1.57,0)*euler(-.5,-1,0),.3)
end
for i=0,1,0.05 do
swait()
MagicBlock(InverseCol,prt33.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0,0,0,1,1,1,.05,2)
end
Mode="Transcend"
attack=false
end
 
function TranscendAttack()
attack=true
num=#ActiveOrbs
table.remove(ActiveOrbs,num)
orbnum=orbnum-1
so("http://roblox.com/asset/?id=138210320",prt20,.6,1.4) 
so("http://roblox.com/asset/?id=183763512",prt20,1,.8) 
MagicBlock(InverseCol,prt15.CFrame,1,1,1,1.5,1.5,1.5,.02,1)
MagicCircle(InverseCol,prt15.CFrame,1,1,1,8,8,8,.1)
so("http://roblox.com/asset/?id=169445092",prt26,1,.6) 
vel=Instance.new("BodyVelocity")
vel.Parent=Torso
vel.maxForce=Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity=Head.CFrame.lookVector*150
hitbox.Parent=modelzorz
hitbox.Size=vt(2,5,2)
hitbox.Transparency=1
hitbox.CFrame=prt26.CFrame
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,0,"Normal",RootPart,.5,1) end) 
for i=0,1,0.2 do
swait()
hitbox.CFrame=prt26.CFrame
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(0,0,1),.4)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.4)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(0,0,1.5),.4)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.4)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,1.5),.4)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.4)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(0,0,1.5),.4)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.4)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,0,0),.4)
wld15.C0=clerp(wld15.C0,euler(-1.4,3,-1.3)*cf(0,1.2,0.2),.4)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.4)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0)*cf(0,.7,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.4)*euler(0,0,-1.57),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1.57),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.4),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-1.57),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(.9,-.8,-.2)*euler(0,1.57,0)*euler(-.4,1,0),.3)
LH.C0=clerp(LH.C0,cf(-1.3,-.8,.2)*euler(0,-1.57,0)*euler(.2,1,0),.3)
end
vel.Parent=nil
for i=0,1,0.1 do
swait()
hitbox.CFrame=prt26.CFrame
end
hitbox.Parent=nil
con1:disconnect()
attack=false
end
 
function NegConvert()
attack=true
so("http://roblox.com/asset/?id=203691378",LeftArm,1,1.4) 
for i=0,1,0.1 do
swait()
MagicBlock(InverseCol,LeftArm.CFrame*cf(0,-1,0),0,0,0,1,1,1,.1,1)
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(1,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(.5,0,.7),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,.7),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(-.5,0,.7),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(1,-1,0),.2)
wld15.C0=clerp(wld15.C0,euler(2,0,.6)*cf(0,1.2,0),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,1)*cf(0,.7,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,.5),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,.2),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2,0,-.3),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,RHC0,.2)
RH.C1=clerp(RH.C1,RHC1,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
LH.C1=clerp(LH.C1,LHC1,.2)
end
for i=0,1,0.05 do
swait()
MagicBlock(InverseCol,LeftArm.CFrame*cf(0,-1,0),0,0,0,1,1,1,.1,1)
end
orbnum=orbnum+1
table.insert(ActiveOrbs,Orbs[orbnum])
so("http://roblox.com/asset/?id=183763493",prt33,1,1) 
MagicBlock(InverseCol,prt33.CFrame,0,0,0,2,2,2,.05,1)
swait(10)
attack=false
end
 
function KaltosWave()
attack=true
for i=0,1,0.1 do
swait()
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(0,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1.5,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(0,0,1.5),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,1.5)*cf(0,.4,0),.3)
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(.5,0,1),.3)
wld15.C0=clerp(wld15.C0,euler(0,-2.3,-1.57)*cf(0,1.2,0.2),.3)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.3)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,1.2)*cf(0,.7,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-.4,0,.4),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.4),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.4),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,RHC0,.2)
RH.C1=clerp(RH.C1,RHC1,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
LH.C1=clerp(LH.C1,LHC1,.2)
end
Humanoid.WalkSpeed=0
so("http://roblox.com/asset/?id=169445092",prt26,1,1) 
for i=0,1,0.1 do
swait()
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(-.5,0,1),.3)
wld15.C0=clerp(wld15.C0,euler(0,-1.6,-1.57)*cf(0,1.2,0.2),.3)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.3)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0)*cf(0,.7,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.6)*euler(0,0,0),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(.4,0,.4),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.6),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-.5),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-.6,-.4)*euler(0,1.57,0)*euler(-.1,0,-.2),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,-.2)*euler(0,-1.57,0)*euler(-.2,0,.8),.3)
end
mana=mana-50
if Mode=="Transcend" then
MagicBlock(InverseCol,prt33.CFrame,0,0,0,2,2,2,.05,1)
num=#ActiveOrbs
table.remove(ActiveOrbs,num)
orbnum=orbnum-1
so("http://roblox.com/asset/?id=138210320",prt20,1,.8) 
end
num1,num2,num3=0,0,0
if Mode=="Normal" then
num1=-0.785
num2=0.785
num3=0.785
dammin=20
dammax=30
else
--[[num1=0
num2=5.495
num3=0.785]]
num1=-1.57
num2=2
num3=0.785
dammin=30
dammax=40
end
--0.785
for i=num1,num2,num3 do
coroutine.resume(coroutine.create(function(MagicCF)
for i=5,25,10 do
local CeEf=MagicCF*cf(0,0,-i)
local prt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
prt.Parent=nil
prt.Anchored=true
prt.CFrame=CeEf
hit,pos=rayCast(prt.Position,(CFrame.new(prt.Position,prt.Position - Vector3.new(0,1,0))).lookVector,500,Character)
if hit~=nil then
prt.CFrame=cf(pos)
prt.Parent=workspace
game:GetService("Debris"):AddItem(prt,2)
so("http://roblox.com/asset/?id=29504625",prt,.8,1) 
so("http://roblox.com/asset/?id=183763487",prt,.8,1) 
MagniDamage(prt,8,dammin,dammax,math.random(20,40),"Knockdown")
eul=euler(math.random(-50,50)/100,0,math.random(-50,50)/100)
MagicBlock(InverseCol,cf(pos)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0,0,0,.5,.5,.5,.01,2)
MagicCircle(InverseCol,cf(pos)*eul,0,0,0,1.5,4.5,1.5,.02)
MagicCircle(Torso.BrickColor,cf(pos)*eul,0,0,0,2,10,2,.05)
end
swait(10)
end
end),RootPart.CFrame*euler(0,i,0))
end
swait(100)
Humanoid.WalkSpeed=16
attack=false
end
 
function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,3,1)
end
end
end
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
local Effects={}
local Point=Torso.CFrame*cf(0,Torso.Size.Y,0)
LastPoint=Point
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh=Instance.new("CylinderMesh")
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
effectsmsh.Name="Mesh"
local effectsg=Instance.new("Part")
effectsg.formFactor=3
effectsg.CanCollide=false
effectsg.Name="Eff"
effectsg.Locked=true
effectsg.Anchored=true
effectsg.Size=Vector3.new(0.5,1,0.5)
effectsg.Parent=workspace
effectsmsh.Parent=effectsg
effectsg.BrickColor=Color1
effectsg.Reflectance=Ref
local point1=P1
local mg=(LP.p - point1.p).magnitude
effectsg.Size=Vector3.new(0.5,mg,0.5)
effectsg.CFrame=cf((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale=Vector3.new(0.4,1,0.4)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
if not returnn then
table.insert(Effects,{effectsg,"Cylinder",0.05,0.01,0,0.01})
end
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type,parent)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
if Type==1 or Type==nil then
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3,msh})
elseif Type==2 then
table.insert(Effects,{prt,"Block2",delay,x3,y3,z3,msh})
end
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end
 
function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
                if math.random(1,5)==1 and Mode=="Normal" then
                if orbnum<5 then
                print("GAINED ORB")
                Damage=h.Health*0.5
                so("http://roblox.com/asset/?id=183763498",hit,1,1) 
                MagicBlock(InverseCol,cf(hit.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,1,1,1,0.05,1)
                orbnum=orbnum+1
                table.insert(ActiveOrbs,Orbs[orbnum])
                end
                end
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-decreaseblock
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-decreaseblock
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor:Red())
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=cf(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,30,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(math.floor(Dealt))
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=cf(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=cf(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end
 
combo=0
function ob1d(mouse) 
if attack==true or equipped==false then return end
hold=true
if Mode=="Normal" then
if combo==0 then
combo=1
attackone()
elseif combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=0
attackthree()
end
else
TranscendAttack()
end
coroutine.resume(coroutine.create(function() 
for i=1,50 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
holdz=false
equipped=false
function key(key) 
if key=="z" then
if attack==true and hitbeat==nil then
so("http://roblox.com/asset/?id=138210320",prt20,1,1.4)
MagicBlock(InverseCol,prt15.CFrame,1,1,1,1.5,1.5,1.5,.02,1)
MagicCircle(InverseCol,prt15.CFrame,1,1,1,8,8,8,.1)
upvel.Parent=Torso
velcf=(Head.CFrame.lookVector*60)+(vt(0,-1,0)*200)
upvel.velocity=velcf
end
holdz=true
end
if attack==true then return end
if key=="f" then
attack=true
if equipped==false then
equipped=true
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
--
equipanim() 
else
equipped=false
hideanim() 
swait(0) 
RW.Parent=nil 
LW.Parent=nil 
RSH.Parent=player.Character.Torso 
LSH.Parent=player.Character.Torso 
end
attack=false
end
if equipped==false then return end
if key=="z" then
KaltosBeat()
end
if key=="x" and orbnum>0 then
if Mode=="Normal" then
EnergyTranscend()
else
Mode="Normal"
end
end
if key=="c" and orbnum<5 and mana>=40 and Mode=="Normal" then
mana=mana-40
NegConvert()
end
if key=="v" and mana>=50 then
KaltosWave()
end
--print(#ActiveOrbs)
if key=="h" then
mana=100
end
end 
 
function key2(key) 
if key=="z" then
holdz=false
end
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
 
player=Player 
ch=Character 
MMouse=mouse 
end 
 
function ds(mouse) 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Cyber Bruiser loaded.")
 
local mananum=0
local donum=0
local circlenum=0
local handidle=false
local orbeffect=1
local orbdelay=0
local effectdelay=0
while true do
swait()
if Mode=="Transcend" then
if orbnum<=0 then
Mode="Normal"
end
if effectdelay>4 then
effectdelay=0
MagicBlock(InverseCol,prt26.CFrame*cf(math.random(-150,150)/100,math.random(-300,300)/100,math.random(-150,150)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,-.4,-.4,-.4,.1,2)
end
effectdelay=effectdelay+1
end
--if orbdelay>=5 then
if #ActiveOrbs>0 then
local orbeffect2=#ActiveOrbs
if orbeffect<orbeffect2 then
orbeffect=orbeffect+1
elseif orbeffect>=orbeffect2 then
orbeffect=1
end
NewPart=Orbs[orbeffect]
MagicCircle(InverseCol,NewPart.CFrame,2,2,2,1,1,1,.5)
orbdelay=0
end
--end
--orbdelay=orbdelay+1
circlenum=circlenum+0.1
local mpos = prt48.CFrame
local cff = CFrame.new(mpos.p,mpos.p+vt(0,10,0)) * CFrame.Angles(math.pi/2,0,0)
local x,y,z = prt48.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
wld48.Part0=prt33
wld48.Part1=prt48
wld48.C0=clerp(wld48.C0,CFrame.Angles(x,y,z)*euler(circlenum,0,0),.3)
--wld48.C0=clerp(wld48.C0,CFrame.Angles(x,y,z),.3)
if donum>=.5 then
handidle=true
elseif donum<=0 then
handidle=false
end
if handidle==false then
donum=donum+0.003
else
donum=donum-0.003
end
if attack==false and equipped==true then
wld37.C0=clerp(wld37.C0,cf(0,.3,0)*euler(.8-donum,0,1),.3)
wld38.C0=clerp(wld38.C0,euler(-1-donum,0,0)*cf(0,.4,0),.3)
wld40.C0=clerp(wld40.C0,cf(0,.3,0)*euler(0,0,0.5+donum),.3)
wld41.C0=clerp(wld41.C0,euler(0,0,.5+donum)*cf(0,.4,0),.3)
wld43.C0=clerp(wld43.C0,cf(0,.3,0)*euler(0,0,0.5+donum),.3)
wld44.C0=clerp(wld44.C0,euler(0,0,.5+donum)*cf(0,.4,0),.3)
wld46.C0=clerp(wld46.C0,cf(0,.3,0)*euler(0,0,0.5+donum),.3)
wld47.C0=clerp(wld47.C0,euler(0,0,.5+donum)*cf(0,.4,0),.3)
end
--between prt16 and prt17
--local wld27=weld(prt27,prt27,prt26,euler(0,0,0)*cf(0,-1.2,0))
--[[local top=prt16r.CFrame
local bottom=prt17r.CFrame
oristrpos=CFrame.new((top.p+bottom.p)/2)
local mg1=(top.p-oristrpos.p).magnitude
local mg2=(bottom.p-oristrpos.p).magnitude
cff=CFrame.new(top*angles(1.57,0,0).p,prt17r.Position)*angles(math.rad(90),0,0)*cf(0,-mg1/2,0)
hit2=prt27
hit=prt17r
wld27.Parent=prt27
wld27.Part0=hit2
wld27.Part1=hit
HitPos=cff.p
local CJ = CFrame.new(HitPos)
local C0=cff:inverse() *CJ 
local C1=hit.CFrame:inverse() * CJ 
wld27.C0=clerp(wld27.C0,C0,.1)
wld27.C1=clerp(wld27.C1,C1,.1)]]
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(.5,0,1),.2)
wld15.C0=clerp(wld15.C0,euler(1,0,-.2)*cf(0,1.2,0.2),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,1)*cf(0,.7,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,0.5,.5),.2)
wld15.C0=clerp(wld15.C0,euler(1.8,0,.5)*cf(0,1.2,0.2),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,0,0)*euler(0,-1,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0)*cf(0,.7,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
if Mode=="Normal" then
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,0,1+(donum/2)),.2)
wld15.C0=clerp(wld15.C0,euler(1.5,-.7,0)*cf(0,1.2,0.2),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0.5+(donum/1.5))*cf(0,.7,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.1-(donum/5)),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.1+(donum/5)),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
RH.C1=clerp(RH.C1,RHC1,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
LH.C1=clerp(LH.C1,LHC1,.3)
else
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,-.4+(donum/3),0)*euler(0,0,0),.2)
wld15.C0=clerp(wld15.C0,euler(1.5,-1.3,0)*cf(0,1.2,0.2),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0.2-(donum/3),0,0)*cf(0,.7,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.4)*euler(0,0,.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,0,.4-(donum/4)),.3)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.8+(donum/4)),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,0)*euler(0,1.57,0)*euler(-.1,-.5,-.4),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,-.2)*euler(0,-1.57,0)*euler(-.1,-.5,.4),.3)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
if Mode=="Normal" then
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,0.5,.5),.2)
wld15.C0=clerp(wld15.C0,euler(1.2,-.1,.2)*cf(0,1.2,0.2),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.5,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0)*cf(0,.7,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.2,0,0.3),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.2,0,-0.3),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
else
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,-.1,0),.2)
wld15.C0=clerp(wld15.C0,euler(1.5,-1.3,0)*cf(0,1.2,0.2),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0.2,0,0)*cf(0,.7,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.4)*euler(0.1,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.6,0,.4),.3)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.6,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,0)*euler(0,1.57,0)*euler(-.1,0,-.4),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,-.2)*euler(0,-1.57,0)*euler(-.1,0,.4),.3)
end
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
if Mode=="Normal" then
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,0.5,.5),.2)
wld15.C0=clerp(wld15.C0,euler(1.2,-.1,.2)*cf(0,1.2,0.2),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.5,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0,0,0)*cf(0,.7,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.3,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.5,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
else
wld14.C0=clerp(wld14.C0,cf(0,.8,0)*euler(0,-.1,0),.2)
wld15.C0=clerp(wld15.C0,euler(1.5,-1.3,0)*cf(0,1.2,0.2),.2)
wld16.C0=clerp(wld16.C0,cf(0,1.2,0)*euler(1.57,-.8,0),.2)
wld17.C0=clerp(wld17.C0,cf(0,1.2,0)*euler(0.2,0,0)*cf(0,.7,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.4)*euler(0.1,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.6,0,.4),.3)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.6,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,0)*euler(0,1.57,0)*euler(-.1,0,-.4),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,-.2)*euler(0,-1.57,0)*euler(-.1,0,.4),.3)
end
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
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
elseif Thing[2]=="Block2" then
Thing[1].CFrame=Thing[1].CFrame
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[7]
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
--end
end
end
end
fenbarmana2:TweenSize(UDim2.new(4*mana/100,0,0.2,0),nil,1,0.4,true)
fenbarmana4.Text="Energy("..mana..")"
if mana>=100 then
mana=100
else
if mananum<=8 then
mananum=mananum+1
else
mananum=0
mana=mana+1
end
end
end
--[[ 
Copyrighted (C) Fenrier 2014
]] 
