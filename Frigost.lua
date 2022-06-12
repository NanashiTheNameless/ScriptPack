--[[
Made by Fenrier.
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
local Effects={}
local guard=false
--player 
player=nil 
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor

function swait(num)
if num==0 or num==nil then
--if Stagger.Value==false or Stun.Value<=100 then
game:service'RunService'.Stepped:wait(0)
--end
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
--[[if Stagger.Value==true or Stun.Value>=100 then
break
end]]
end
end
end

if Character:findFirstChild("Glaciem",true) ~= nil then 
Character:findFirstChild("Glaciem",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil 
end 
if Character:findFirstChild("Stats",true) ~= nil then 
Character:findFirstChild("Stats",true).Parent = nil 
end 
local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1
local Block=Instance.new("BoolValue")
Block.Name="Block"
Block.Parent=Stats
Block.Value=false
local Stun=Instance.new("NumberValue")
Stun.Name="Stun"
Stun.Parent=Stats
Stun.Value=0
local Stunned=Instance.new("BoolValue")
Stunned.Name="Stunned"
Stunned.Parent=Stats
Stunned.Value=false
local Stagger=Instance.new("BoolValue")
Stagger.Name="Stagger"
Stagger.Parent=Stats
Stagger.Value=false
local StaggerHit=Instance.new("BoolValue")
StaggerHit.Name="StaggerHit"
StaggerHit.Parent=Stats
StaggerHit.Value=false
local RecentEnemy=Instance.new("ObjectValue")
RecentEnemy.Name="RecentEnemy"
RecentEnemy.Parent=Stats
RecentEnemy.Value=nil

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
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
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
fenbarmana4.Text="Mana("..mana..")"
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
modelzorz.Name="Glaciem" 

local prt1=part(3,modelzorz,0,0,TorsoColor,"Part01",vt())
local prt2=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part02",vt())
local prt3=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Part03",vt())
local prt4=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Part04",vt())
local prt5=part(3,modelzorz,0,0,BrickColor.new("Cyan"),"Part05",vt())
local prt6=part(3,modelzorz,0,0,BrickColor.new("Cyan"),"Part06",vt())
local prt7=part(3,modelzorz,0,0,BrickColor.new("Cyan"),"Part07",vt())
local prtt=part(3,modelzorz,0.8,0,BrickColor.new("Medium blue"),"Part09",vt())
local sprt1=part(3,modelzorz,0,0,BrickColor.new("Black"),"Shield Part01",vt())
local sprt2=part(3,modelzorz,0.5,0,BrickColor.new("Cyan"),"Shield Part02",vt())
local sprt3=part(3,modelzorz,0.5,0,BrickColor.new("Cyan"),"Shield Part03",vt())
local sprt4=part(3,modelzorz,0.5,0,BrickColor.new("Cyan"),"Shield Part04",vt())
local sprt5=part(3,modelzorz,0.5,0,BrickColor.new("Cyan"),"Shield Part05",vt())
local sprt6=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Shield Part06",vt())
local sprt7=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Shield Part07",vt())
local sprt8=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Shield Part08",vt())
local sprt9=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Shield Part09",vt())
local sprt10=part(3,modelzorz,0,0,BrickColor.new("Medium blue"),"Shield Part10",vt())

local msh1=mesh("SpecialMesh",prt1,"Head","nil",vt(0,0,0),vt(2,6,2))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(1.5,8,1.5))
local msh3=mesh("SpecialMesh",prt3,"FileMesh","9756362",vt(0,0,0),vt(.6,.5,.6))
local msh4=mesh("SpecialMesh",prt4,"FileMesh","9756362",vt(0,0,0),vt(1.35,.35,.7))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(10,1,3))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(3,1.2,3.1))
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(3,1.2,3.1))
local msht=mesh("SpecialMesh",prtt,"FileMesh","9756362",vt(0,0,0),vt(0.8,1.4,0.31))
local smsh1=mesh("BlockMesh",sprt1,"","",vt(0,0,0),vt(1,1,1))
local smsh2=mesh("SpecialMesh",sprt2,"Wedge","nil",vt(0,0,0),vt(1.5,6,10))
local smsh3=mesh("SpecialMesh",sprt3,"Wedge","nil",vt(0,0,0),vt(1.5,6,10))
local smsh4=mesh("SpecialMesh",sprt4,"Wedge","nil",vt(0,0,0),vt(1.5,6,5))
local smsh5=mesh("SpecialMesh",sprt5,"Wedge","nil",vt(0,0,0),vt(1.5,6,5))
local smsh6=mesh("SpecialMesh",sprt6,"Wedge","nil",vt(0,0,0),vt(1.2,8,12))
local smsh7=mesh("SpecialMesh",sprt7,"Wedge","nil",vt(0,0,0),vt(1.2,8,12))
local smsh8=mesh("SpecialMesh",sprt8,"Wedge","nil",vt(0,0,0),vt(1.2,8,7))
local smsh9=mesh("SpecialMesh",sprt9,"Wedge","nil",vt(0,0,0),vt(1.2,8,7))
local smsh10=mesh("SpecialMesh",sprt10,"FileMesh","187687193",vt(0,0,0),vt(3,1,3))
--Meshes = {187687161, 187687175, 187687193}

local wld1=weld(prt1,prt1,sprt1,euler(0,0,0)*cf(0,2.5,0))
--local wld1=weld(prt1,prt1,RightArm,euler(1.57,0,0)*cf(0,1,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,.8,0))
local wld4=weld(prt4,prt4,prt2,euler(0,1.57,0)*cf(0,-.9,0))
local wld5=weld(prt5,prt5,prt4,euler(0,0,0)*cf(0,-.05,0))
local wld6=weld(prt6,prt6,prt5,euler(0,0,-1.4)*cf(-1,-.2,0))
local wld7=weld(prt7,prt7,prt5,euler(0,0,1.4)*cf(1,-.2,0))
local wldt=weld(prtt,prtt,prt4,euler(0,0,0)*cf(0,-3.45,0))
local swld1=weld(sprt1,sprt1,LeftArm,euler(-1.57,0,0)*cf(.5,.5,0))
local swld2=weld(sprt2,sprt2,sprt1,euler(-1.57,0,0)*cf(.1,-.8,-.6))
local swld3=weld(sprt3,sprt3,sprt1,euler(-1.57,3.14,0)*cf(.1,-.8,.6))
local swld4=weld(sprt4,sprt4,sprt1,euler(-1.57,0,3.14)*cf(.1,.7,-.6))
local swld5=weld(sprt5,sprt5,sprt1,euler(-1.57,3.14,3.14)*cf(.1,.7,.6))
local swld6=weld(sprt6,sprt6,sprt1,euler(-1.57,0,0)*cf(.1,-1,-.8))
local swld7=weld(sprt7,sprt7,sprt1,euler(-1.57,3.14,0)*cf(.1,-1,.8))
local swld8=weld(sprt8,sprt8,sprt1,euler(-1.57,0,3.14)*cf(.1,.9,-.8))
local swld9=weld(sprt9,sprt9,sprt1,euler(-1.57,3.14,3.14)*cf(.1,.9,.8))
local swld10=weld(sprt10,sprt10,sprt1,euler(0,0,1.57)*cf(.25,0,0))

for i=0,180,180 do
for x=-20,20,40 do
local lol=i-90
local lol2=math.abs(lol/480)
local lol3=x/90
local prt8=part(3,modelzorz,0.8,0,BrickColor.new("Medium blue"),"Part08",vt())
local msh8=mesh("BlockMesh",prt8,"","",vt(0,0,0),vt(0.2,17.5,2.97))
--local wld8=weld(prt8,prt4,prt8,euler(0,0,0)*cf(.2,-1.7,0)*euler(0,-0.3-0.785,0))
local wld8=weld(prt8,prt4,prt8,cf(0,1.7,0)*euler(0,math.rad(i+x)+1.57,0))
wld8.C1=cf(lol2,0,-lol3)*euler(0,0,0)
end
end

local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
local hitbox2=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox2.Anchored=true

if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Glaciem" 
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
for i=0,1,0.2 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.7,-.2,.5)*cf(0,1,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.4),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.5,0,-.5)*euler(0,1.57,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.3,-1.2,-.5),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,RHC0,.4)
RH.C1=clerp(RH.C1,RHC1,.4)
LH.C0=clerp(LH.C0,LHC0,.4)
LH.C1=clerp(LH.C1,LHC1,.4)
end
Mvmt.Value=Mvmt.Value+.1
wld1.Part1=sprt1
wld1.C0=euler(0,0,0)*cf(0,2.5,0)
for i=0,1,0.3 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
end
end 

function equipanim() 
equipped=true
for i=0,1,0.2 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.4),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.5,0,-.5)*euler(0,1.57,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.3,-1.2,-.5),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
end
Mvmt.Value=Mvmt.Value-.1
wld1.Part1=RightArm
wld1.C0=euler(1.7,-.2,.5)*cf(0,1,0)
local hit,pos=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,200,Character)
if hit~=nil then
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
MagicWave(BrickColor.new("Medium blue"),cf(ref.Position),1,1,1,1,.5,1,.1)
end
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.1,0,-.2),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1)*euler(0,1,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.1,0,-1.4)*euler(0,-.2,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
end 

function StaggerAnim()
attack=true
for i=1,math.random(2,4) do
ClangEffect(BrickColor.new("New Yeller"),cf(hitbox.Position)*euler(math.random(-50,50)/100,math.random(-50,50),math.random(-50,50)/100),0,.1,.2,math.random(150,300)/1000)
end
for i=0,1,0.35 do
swait()
Torso.Velocity=RootPart.CFrame.lookVector*-40
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-.2,0,-.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.7)*euler(0,-.7,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.4)*euler(0,.4,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,0)*euler(0,1.57,0)*euler(-.5,0,.6),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.2,.2),.3)
end
for i=0,1,0.2 do
swait()
Torso.Velocity=RootPart.CFrame.lookVector*-40
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(.1,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.2)*euler(-.5,0,-.4),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.7)*euler(0,-.7,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.4)*euler(0,.4,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-.8,0)*euler(0,1.57,0)*euler(-.5,0,.6),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.2,.5),.4)
end
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.4)*euler(.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.8)*euler(-.2,0,-.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.3,0,.4)*euler(0,-.4,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.3,0,-.2)*euler(0,.4,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,0)*euler(0,1.57,0)*euler(-.5,0,1.2),.3)
LH.C0=clerp(LH.C0,cf(-1,0,-1)*euler(0,-1.57,0)*euler(0,.2,.2),.3)
end
swait(15)
combo=0
attack=false
end

function StaggerHitt()
attack=true
for i=1,math.random(2,4) do
ClangEffect(BrickColor.new("New Yeller"),cf(hitbox.Position)*euler(math.random(-50,50)/100,math.random(-50,50),math.random(-50,50)/100),0,.1,.2,math.random(150,300)/1000)
end
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.7)*euler(.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-.2,0,-.6),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.9)*euler(0,-.7,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.4)*euler(0,.4,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,0)*euler(0,1.57,0)*euler(-.2,0,-.4),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.2,.2),.3)
end
attack=false
end

function StunAnim()
attack=true
Stunned.Value=true
for i=0,1,0.3 do
swait()
Humanoid.WalkSpeed=0
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,-.5),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(.2,0,-3),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,1.3),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(1,0,.4)*euler(0,-.1,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(0,1.57,0)*euler(-.5,0,.3),.25)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.2,0,0),.25)
end
for i=0,1,0.3 do
swait()
Humanoid.WalkSpeed=0
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-.3,0,-.5),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(.8,0,-3),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.8,0,1.3),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(1.2,0,.8)*euler(0,-.1,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(0,1.57,0)*euler(-.5,0,.6),.25)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(.1,0,.7),.25)
end
for i=0,1,0.3 do
swait()
Humanoid.WalkSpeed=0
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-.3,0,-1),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2)*euler(1.57,0,-3),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.8,0,1.3),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8)*euler(0,-.1,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(0,1.57,0)*euler(-.2,0,.6),.25)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.1,0,.3),.25)
end
gairo=Instance.new("BodyGyro") 
gairo.Parent=RootPart
gairo.maxTorque=Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P=20e+003 
gairo.cframe=RootPart.CFrame
v=Instance.new("BodyVelocity",RootPart)
v.Name="BodVel"
v.P=2000
v.maxForce=Vector3.new(500000000,50000000,500000000)
v.velocity=vt(0,-50,0)
for i=0,1,0.1 do
swait()
Humanoid.WalkSpeed=0
v.velocity=vt(0,-50,0)
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1.57),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2.5)*euler(1.57,0,-3.14),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-1.57,0,1.5)*euler(.2,0,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.5,0,-1.57)*euler(0,0,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(-.3,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(-.1,.2,0),.3)
end
for i=1,70 do
swait()
Humanoid.WalkSpeed=0
v.velocity=vt(0,-50,0)
end
v.velocity=vt(0,0,0)
for i=0,1,0.2 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2)*euler(1,0,-4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-1.57,0,1)*euler(.2,-1,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,.2)*euler(0,0,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(-.3,.5,.4),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-1)*euler(0,-1.57,0)*euler(-.1,.2,1),.3)
end
gairo.Parent=nil
v.Parent=nil
combo=0
Stunned.Value=false
attack=false
end

function attackone()
attack=true
for i=0,1,0.2 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1.2)*euler(0,-2,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(.7,0,.1)*euler(0,-.4,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.3,0),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.3,0),.4)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
hitbox.Parent=modelzorz
hitbox.Size=vt(1.1,4,.5)
hitbox.Transparency=1
hitbox.CFrame=prtt.CFrame*cf(0,-1.2,0)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.5,1,math.random(2,8),nil,true) end) 
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prtt.CFrame*cf(0,-1.2,0)
if scfr and (prtt.Position-scfr.p).magnitude > .1 then
local h = 4.3
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox.CFrame=prtt.CFrame*cf(0,-1.2,0)
wld1.C0=clerp(wld1.C0,euler(2.9,0,0)*cf(0,.8,-.2),.25)
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,-.3),.25)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.3),.25)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.2,0,-1)*euler(0,-1,0),.25)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.25)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(.7,0,-.7)*euler(0,0,0),.25)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.25)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.3,0),.25)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.3,0),.25)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end

function attacktwo()
attack=true
for i=0,1,0.2 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.2)*euler(-.2,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.2),.4)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(2.2,0,-.8)*euler(0,1,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(.5,0,-.5),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.2,0),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.2,0),.4)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
hitbox.Parent=modelzorz
hitbox.Size=vt(1.1,4,.5)
hitbox.Transparency=1
hitbox.CFrame=prtt.CFrame*cf(0,-1.2,0)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.5,1,math.random(2,8),nil,true) end) 
blcf=nil
scfr=nil
for i=0,1,0.15 do
swait()
local blcf = prtt.CFrame*cf(0,-1.2,0)
if scfr and (prtt.Position-scfr.p).magnitude > .1 then
local h = 4.3
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox.CFrame=prtt.CFrame*cf(0,-1.2,0)
wld1.C0=clerp(wld1.C0,euler(2.2,0,0)*cf(0,.8,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.2)*euler(.4,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.2,0,.3)*euler(0,.2,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-.5,0,-.2),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end

function attackthree()
attack=true
for i=0,1,0.2 do
swait()
wld1.C0=clerp(wld1.C0,euler(2,0,0)*cf(0,.8,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.4)*euler(-.4,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.4),.4)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(2.9,0,-.6)*euler(0,.2,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.4)*euler(3,0,.8)*euler(0,0,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.4,0),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.4,0),.4)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
hitbox.Parent=modelzorz
hitbox.Size=vt(1.1,4,.5)
hitbox.Transparency=1
hitbox.CFrame=prtt.CFrame*cf(0,-1.2,0)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,10),"Normal",RootPart,.5,1,math.random(4,10),nil,true) end) 
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prtt.CFrame*cf(0,-1.2,0)
if scfr and (prtt.Position-scfr.p).magnitude > .1 then
local h = 4.3
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox.CFrame=prtt.CFrame*cf(0,-1.2,0)
wld1.C0=clerp(wld1.C0,euler(2.4,0,0)*cf(0,.8,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.6)*euler(.4,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.6),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.5,0,0)*euler(0,-1,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.6,0.5,-.5)*euler(.2,0,.6)*euler(0,-1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.6,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end

function attackfour()
attack=true
for i=0,1,0.2 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.8,0.5,-.5)*euler(1.57,0,1.2)*euler(0,.2,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.25)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.25)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
Torso.Velocity=RootPart.CFrame.lookVector*100
hitbox.Parent=modelzorz
hitbox.Size=vt(1,3.5,3)
hitbox.Transparency=1
hitbox.CFrame=sprt1.CFrame*cf(0,.3,0)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(20,30),"Knockdown2",RootPart,.5,1,math.random(5,15),nil,false) end) 
for i=0,1,0.1 do
swait()
hitbox.CFrame=sprt1.CFrame*cf(0,.3,0)
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.3),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(1.57,0,1),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
--swait(10)
for i=1,5 do
swait()
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
attack=false
end

function Guard()
attack=true
guard=true
Mvmt.Value=Mvmt.Value-.4
Block.Value=true
for i=0,1,0.15 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.3),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(1.57,0,1.27),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.3,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.3,0),.3)
end
while guard==true and Block.Value==true do
swait()
end
Block.Value=false
Mvmt.Value=Mvmt.Value+.4
attack=false
end

function ShieldSlam()
attack=true
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=RootPart.CFrame*cf(0,0,-2)
game:GetService("Debris"):AddItem(ref,1)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("HumanoidRootPart")
if head~=nil then
if GetDist(head,ref,3)==true then
if head.Parent:findFirstChild("Stats")~=nil then
if head.Parent.Stats.Stunned.Value==true then
Humanoid.WalkSpeed=0
for i=0,1,0.2 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,1,-.5)*euler(2.5,0,1.3)*euler(0,0,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
hitbox.Parent=modelzorz
hitbox.Size=vt(1,3.5,3)
hitbox.Transparency=1
hitbox.CFrame=sprt1.CFrame*cf(0,.3,0)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,25,math.random(5,10),"Normal",RootPart,1,1,math.random(5,15),nil,false) end) 
for i=0,1,0.15 do
swait()
hitbox.CFrame=sprt1.CFrame*cf(0,.3,0)
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.4,0,.6),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.8)*euler(0,0,-.6),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.3,.2,-.5)*euler(1.3,0,1)*euler(0,0,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1.1,-1,0)*euler(0,1.57,0)*euler(0,0,-1),.3)
LH.C0=clerp(LH.C0,cf(-1,.2,-.4)*euler(0,-1.57,0)*euler(-.2,0,.2),.3)
end
con1:disconnect()
hitbox.Parent=nil
Humanoid.WalkSpeed=16
end
end
end
end
end
end
attack=false
end

function GetDist(Part1,Part2,magni)
local targ=Part1.Position-Part2.Position
local mag=targ.magnitude
if mag<=magni then 
return true
else
return false
end
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
Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
end
end
end
end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local Point=Torso.CFrame*cf(0,Torso.Size.Y,0)
LastPoint=Point
function effect(Color,Ref,LP,P1,returnn)
if LP==nil or P1==nil then return end
local effectsmsh=Instance.new("CylinderMesh")
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
effectsmsh.Name="Mesh"
local effectsg=Instance.new("Part")
NoOutline(effectsg)
effectsg.formFactor=3
effectsg.CanCollide=false
effectsg.Name="Eff"
effectsg.Locked=true
effectsg.Anchored=true
effectsg.Size=Vector3.new(0.5,1,0.5)
effectsg.Parent=workspace
effectsmsh.Parent=effectsg
effectsg.BrickColor=BrickColor.new(Color)
effectsg.Reflectance=Ref
local point1=P1
local mg=(LP.p - point1.p).magnitude
effectsg.Size=Vector3.new(0.5,mg,0.5)
effectsg.CFrame=cf((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
if not returnn then
table.insert(Effects,{effectsg,"Cylinder",0.2,0.01,0,0.01,effectsmsh})
end
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
assert(false, "unreachable")
end

local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude

local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)

local list = {}

if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Medium blue")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.05})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end

if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Medium blue")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.05})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
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
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function ClangEffect(brickcolor,cframe,duration,decrease,size,power)
local prt=part(3,workspace,0,1,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(5,5,5))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"CylinderClang",duration,decrease,size,power,prt.CFrame,nil})
end

function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit)
if hit.Parent==nil then
return
end
if hit.Name=="Hitbox" and hit.Parent~=modelzorz then
StaggerHit.Value=true
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
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game:service("Players").LocalPlayer
c.Parent=h
RecentEnemy.Value=hit.Parent
game:GetService("Debris"):AddItem(c,.5)
minim=minim*Atk.Value
maxim=maxim*Atk.Value
Damage=math.random(minim,maxim)
blocked=false
enblock=nil
Stats=hit.Parent:findFirstChild("Stats")
if Stats~=nil then
enblock=Stats:findFirstChild("Block")
if Stats:findFirstChild("Defense")~=nil then
Damage=Damage/Stats.Defense.Value
if Damage<=3 and staghit==true then
StaggerHit.Value=true
end
end
if Stats:findFirstChild("Stun")~=nil then
Stats.Stun.Value=Stats.Stun.Value+incstun
end
if Stats:findFirstChild("Stagger")~=nil then
if stagger==true then
Stats.Stagger.Value=true
end
end
end
if enblock~=nil then
if enblock.Value==true then
blocked=true
end
end
if blocked==true then
showDamage(hit.Parent,"Block",.5,BrickColor.new("Bright blue"))
enblock.Value=false
Stagger.Value=true
else
Damage=math.floor(Damage)
h.Health=h.Health-Damage
showDamage(hit.Parent,Damage,.5,BrickColor:Red())
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
elseif Type=="Knockdown2" then
hum=hit.Parent.Humanoid
local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
elseif Type=="Normal" then
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
if KnockbackType==1 then
vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
elseif KnockbackType==2 then
vp.velocity=Property.CFrame.lookVector*knockback
end
game:GetService("Debris"):AddItem(vp,.5)
if knockback>0 then
vp.Parent=hit.Parent.Torso
end
end
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
        m.Name=tostring(Dealt)
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
if combo==0 then
combo=1
attackone()
elseif combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=3
attackthree()
elseif combo==3 then
combo=0
attackfour()
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
equipped=false
function key(key) 
if key=="g" then
if guard==true then
guard=false
end
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
if key=="g" then
if guard==false then
Guard()
end
end
if key=="q" then
ShieldSlam()
end
if key=="h" then
mana=100
end
if attack==false then
RecentEnemy.Value=nil
end
end 

function key2(key) 


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
print("Frigost loaded.")

local mananum=0
local donum=0
local stunnum=0
local staggeranim=false
local stunanim=false
local Point=nil
local LastPoint=nil
while true do
game:service'RunService'.RenderStepped:wait(0)
hitbox2.Parent=hitbox.Parent
hitbox2.Size=hitbox.Size
hitbox2.CFrame=hitbox.CFrame
if Stagger.Value==true and staggeranim==false then
coroutine.resume(coroutine.create(function()
staggeranim=true
while attack==true do
swait()
end
StaggerAnim()
StaggerHit.Value=false
Stagger.Value=false
staggeranim=false
end))
end
if StaggerHit.Value==true and staggeranim==false then
coroutine.resume(coroutine.create(function()
staggeranim=true
while attack==true do
swait()
end
StaggerHitt()
StaggerHit.Value=false
Stagger.Value=false
staggeranim=false
end))
end
if Mvmt.Value<0 or Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
Humanoid.WalkSpeed=0
else
Humanoid.WalkSpeed=16*Mvmt.Value
end
if Stun.Value>=100 and stunanim==false then
coroutine.resume(coroutine.create(function()
stunanim=true
while attack==true do
swait()
end
StunAnim()
Stun.Value=0
stunanim=false
end))
end
if stunnum>=10 then
if Stun.Value>0 then
Stun.Value=Stun.Value-1
end
stunnum=0
end
stunnum=stunnum+1
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
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.2)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(1,0,.8)*euler(0,-.7,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.2)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.3,0,0.2),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.3,0,-0.2),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.15)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.15)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.15)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.15)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2+(donum/5),0,.4-(donum/3)),.15)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.15)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(.7+(donum/3),0,.4+(donum/3))*euler(0,-.4,0),.15)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.15)
RH.C0=clerp(RH.C0,RHC0,.2)
RH.C1=clerp(RH.C1,RHC1,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
LH.C1=clerp(LH.C1,LHC1,.2)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,-.5),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4+(donum/2),0,.6-(donum/1)),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(.5+(donum/3),0,.8+(donum/3))*euler(0,-.7,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.6,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.2)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,-.5),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4+(donum/5),0,.6-(donum/3)),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(.5+(donum/3),0,.8+(donum/3))*euler(0,-.7,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.6,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.2)
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
if Thing[2]=="CylinderClang" then
if Thing[3]<=1 then
Thing[1].CFrame=Thing[1].CFrame*CFrame.new(0,2.5*Thing[5],0)*CFrame.fromEulerAnglesXYZ(Thing[6],0,0) 
Thing[7]=Thing[1].CFrame
effect("New Yeller",0,Thing[8],Thing[7])
Thing[8]=Thing[7]
Thing[3]=Thing[3]+Thing[4]
else
Part.Parent=nil
table.remove(Effects,e)
end
--[[Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]]
end
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Block2" then
Thing[1].CFrame=Thing[1].CFrame
Mesh=Thing[7]
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
Mesh=Thing[7]
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
fenbarmana4.Text="Mana("..mana..")"
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
