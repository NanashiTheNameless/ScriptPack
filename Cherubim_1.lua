

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
local Mode="Defensive"
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
TorsoBlue=TorsoColor.Color.b
NewCol=Color3.new(0,0,TorsoBlue)
print(BrickColor.new(.5,.5,TorsoBlue))
 
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
 
if Character:findFirstChild("Cherubim",true) ~= nil then 
Character:findFirstChild("Cherubim",true).Parent = nil 
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
fenbarmana2.BackgroundColor3=BrickColor.new("Teal").Color
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
modelzorz.Name="Cherubim" 
 
local handle=part(3,modelzorz,0,0.5,TorsoColor,"Handle",vt())
local prt1=part(3,modelzorz,0,0,TorsoColor,"Part01",vt())
local prt2=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part02",vt())
local prt3=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part03",vt())
local prt4=part(3,modelzorz,0,0,BrickColor.new("Teal"),"Part04",vt())
local prt5=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part05",vt())
local prt6=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part06",vt())
local prt7=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part07",vt())
local prt11=part(3,modelzorz,0,0,BrickColor.new("Teal"),"Part11",vt())
local prt12=part(3,modelzorz,0,0,BrickColor.new("Teal"),"Part12",vt())
local prt13=part(3,modelzorz,0,0,BrickColor.new("Teal"),"Part13",vt())
local prt14=part(3,modelzorz,0,0,BrickColor.new(.5,.5,TorsoBlue),"Part14",vt())
local prt15=part(3,modelzorz,0,0,BrickColor.new(.5,.5,TorsoBlue),"Part15",vt())
local prt16=part(3,modelzorz,0,0,BrickColor.new(.5,.5,TorsoBlue),"Part16",vt())
local prt17=part(3,modelzorz,0,0,BrickColor.new(.5,.5,TorsoBlue),"Part17",vt())
 
local msh1=mesh("SpecialMesh",prt1,"Head","nil",vt(0,0,0),vt(2,25,2))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1,30,1))
local msh3=mesh("SpecialMesh",prt3,"Head","nil",vt(0,0,0),vt(2.5,4,2.5))
local msh4=mesh("CylinderMesh",prt4,"","",vt(0,0,0),vt(2.7,1.5,2.7))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(3,5,8))
local msh6=mesh("SpecialMesh",prt6,"Wedge","nil",vt(0,0,0),vt(3,3,4))
local msh7=mesh("SpecialMesh",prt7,"Wedge","nil",vt(0,0,0),vt(3,3,4))
local msh11=mesh("SpecialMesh",prt11,"Sphere","nil",vt(0,0,0),vt(4,4,3.5))
local msh12=mesh("SpecialMesh",prt12,"Sphere","nil",vt(0,0,0),vt(2,4,2))
local msh13=mesh("SpecialMesh",prt13,"Sphere","nil",vt(0,0,0),vt(2,4,2))
local msh14=mesh("SpecialMesh",prt14,"FileMesh","92135508",vt(0,0,0),vt(.5,.5,.5))
local msh15=mesh("SpecialMesh",prt15,"FileMesh","92135508",vt(0,0,0),vt(.5,.5,.5))
local msh16=mesh("SpecialMesh",prt16,"FileMesh","92135524",vt(0,0,0),vt(.5,.5,.5))
local msh17=mesh("SpecialMesh",prt17,"FileMesh","92135524",vt(0,0,0),vt(.5,.5,.5))
 
--local wld1=weld(prt1,prt1,Torso,euler(0,0,0)*cf(0,0,5))
--local wld1=weld(prt1,prt1,RightArm,euler(1.57,0,0)*cf(0,1,0))
--local handlewld=weld(handle,handle,RightArm,euler(1.57,0,0)*cf(0,1,0))
local handlewld=weld(handle,handle,Torso,euler(2.1,1.57,0)*cf(1,-1,-.5))
local wld1=weld(prt1,prt1,handle,cf(0,0,0)*euler(0,0,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt1,euler(0,0,0)*cf(0,3,0))
local wld4=weld(prt4,prt4,prt3,euler(0,0,0)*cf(0,.25,0))
local wld5=weld(prt5,prt5,prt1,euler(0,0,0)*cf(0,-2.8,0))
local wld6=weld(prt6,prt6,prt5,euler(0,0,0)*cf(0,-.8,.4))
local wld7=weld(prt7,prt7,prt5,euler(0,3.14,0)*cf(0,-.8,-.4))
local wld11=weld(prt11,prt11,prt5,euler(0,0,1.57)*cf(0,-0.2,0))
local wld12=weld(prt12,prt12,prt5,euler(0,0,1.57)*cf(0,0.1,0.5))
local wld13=weld(prt13,prt13,prt5,euler(0,0,1.57)*cf(0,0.1,-0.5))
local wld14=weld(prt14,prt14,prt5,euler(3.14,1.57,0)*cf(0.4,0.6,-2))
local wld15=weld(prt15,prt15,prt5,euler(3.14,-1.57,0)*cf(-0.4,0.6,2))
local wld16=weld(prt16,prt16,prt5,euler(3.14,1.57,0)*cf(0.4,0.6,2))
local wld17=weld(prt17,prt17,prt5,euler(3.14,-1.57,0)*cf(-0.4,0.6,-2))
 
num=0
num2=0
num3=0
num4=0
num5=2
for i=1,4 do
local prt8=part(3,modelzorz,0.7,0,BrickColor.new("Teal"),"Part08",vt())
local prt9=part(3,modelzorz,0.7,0,BrickColor.new("Teal"),"Part09",vt())
local prt10=part(3,modelzorz,0.7,0,BrickColor.new("Teal"),"Part10",vt())
local msh8=mesh("BlockMesh",prt8,"","",vt(0,0,0),vt(1+num4,5+num,6+num3))
local msh9=mesh("SpecialMesh",prt9,"Wedge","nil",vt(0,0,0),vt(1+num4,4,3+(num3/2)))
local msh10=mesh("SpecialMesh",prt10,"Wedge","nil",vt(0,0,0),vt(1+num4,4,3+(num3/2)))
local wld8=weld(prt8,prt8,prt5,euler(0,0,0)*cf(0,-.8-num2,0))
local wld9=weld(prt9,prt9,prt8,euler(0,0,0)*cf(0,-.9-num*.1,.3+((num3*.1)/2)))
local wld10=weld(prt10,prt10,prt8,euler(0,3.14,0)*cf(0,-.9-num*.1,-.3-((num3*.1)/2)))
num=num+.6
num2=num2+.3*num5
num3=num3-.5
num4=num4-.2
num5=num5+1
end
 
local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
--hitbox.Anchored=true
local hitbox2=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox2.Anchored=true
local hitboxCF=cf(0,0,0)
 
if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Cherubim" 
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
handlewld.C0=clerp(handlewld.C0,euler(1.5,1.4,0)*euler(0,0,-.8)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-1,0)*euler(0,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,.4),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.4,0,-.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
Mvmt.Value=Mvmt.Value+.1
handlewld.Part1=Torso
handlewld.C0=euler(2.1,1.57,0)*cf(1,-1,-.5)
wld1.C0=cf(0,0,0)*euler(0,0,0)
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
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,.4),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.3,0,-.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
handlewld.Part1=LeftArm
handlewld.C0=euler(1.5,1.4,0)*euler(0,0,-1)*cf(0,1,0)
wld1.C0=cf(0,-1,0)*euler(0,0,0)
Mvmt.Value=Mvmt.Value-.1
end 
 
function StaggerAnim()
attack=true
for i=1,math.random(2,4) do
ClangEffect(BrickColor.new("New Yeller"),cf(hitbox.Position)*euler(math.random(-50,50)/100,math.random(-50,50),math.random(-50,50)/100),0,.1,.2,math.random(150,300)/1000)
end
for i=0,1,0.35 do
swait()
--Torso.Velocity=RootPart.CFrame.lookVector*-40
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-.2,0,.6),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.4,0,.4)*euler(0,.4,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.9)*euler(0,.7,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.7,0)*euler(0,1.57,0)*euler(-.4,-.2,.4),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.2,0,.4),.3)
end
for i=0,1,0.2 do
swait()
--Torso.Velocity=RootPart.CFrame.lookVector*-40
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.3,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-.4,0,.6),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.6,0,.6)*euler(0,.4,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.6,0,-.9)*euler(0,.7,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.7,0)*euler(0,1.57,0)*euler(-.5,-.2,.5),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.2,0,.4),.3)
end
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.3,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.8)*euler(-.2,0,.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.6,0,-.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.4)*euler(0,.3,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(0,1.2,0)*euler(-.4,0,1.2),.3)
LH.C0=clerp(LH.C0,cf(-1,.4,-.8)*euler(0,-1.57,0)*euler(0,.2,-.1),.3)
end
swait(40)
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
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-.2,0,.6),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.4)*euler(0,.4,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.9)*euler(0,.7,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.2,-.2),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.2,0,.4),.3)
end
attack=false
end
 
function StunAnim()
attack=true
Stunned.Value=true
for i=0,1,0.3 do
swait()
Humanoid.WalkSpeed=0
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
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
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
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
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
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
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
v.velocity=vt(0,-50,0)
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
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
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
 
function dattackone()
attack=true
so("http://roblox.com/asset/?id=199145095",LeftArm,1,1)
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2,0,-.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.5,1,math.random(10,15),nil,true) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(.5,4.5,1.2)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.35)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.8,0,0),.35)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.35)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.35)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.35)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.3)*euler(.5,0,-.1)*euler(0,.5,0),.35)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.35)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.35)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end
 
function dattacktwo()
so("http://roblox.com/asset/?id=199145146",LeftArm,1,1)
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.8),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.2,0,.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-1,0,-.8)*euler(0,-.5,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.8,-1,.4)*euler(0,1.57,0)*euler(0,-.8,0),.3)
LH.C0=clerp(LH.C0,cf(-.8,-1,-.4)*euler(0,-1.57,0)*euler(0,-.8,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(20,25),"Normal",RootPart,.5,2,math.random(10,15),nil,true) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(.5,4.5,1.2)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.8),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.3)*euler(1,0,-.5)*euler(0,.5,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.8,-1,-.4)*euler(0,1.57,0)*euler(0,.8,0),.3)
LH.C0=clerp(LH.C0,cf(-.8,-1,.4)*euler(0,-1.57,0)*euler(0,.8,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end
 
function dattackthree()
so("http://roblox.com/asset/?id=199145204",LeftArm,1,1)	
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.5,0.5,-.5)*euler(2,0,1)*euler(0,-1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.5,1,math.random(5,15),nil,true) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(.5,4.5,1.2)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.6,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.5,0,-1)*euler(0,-.6,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end
 
function dattackfour()
so("http://roblox.com/asset/?id=199145327",LeftArm,1,1)	
attack=true
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
--wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.57,0,0),.2)
wld1.C0=cf(0,-.5+1.5*i,0)*euler(-.57+7*i,0,0)
Neck.C0=clerp(Neck.C0,necko*euler(-.4,0,.2),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1,0,-1),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.8,0,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
Mvmt.Value=Mvmt.Value-1
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.4)
wld1.C0=clerp(wld1.C0,cf(0,.2,0)*euler(0,0,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
hitfloor=nil
while hitfloor==nil do
swait()
hitfloor,posfloor=rayCast(prt4.Position,(CFrame.new(prt4.Position,prt4.Position - Vector3.new(0,1,0))).lookVector,4,Character)
end
MagicWave(BrickColor.new("Teal"),cf(prt4.Position),1,1,1,1.2,.4,1.2,.05)
MagicBlock(BrickColor.new("Teal"),cf(prt4.Position),1,1,1,1,1,1,.05,1)
so("http://roblox.com/asset/?id=199145264",LeftArm,1,1)	
MagniDamage(prt4,20,5,10,math.random(30,40),"Knockdown2",true)
swait(10)
Mvmt.Value=Mvmt.Value+1
attack=false
end
 
function oattackone()
so("http://roblox.com/asset/?id=199145095",LeftArm,1,1)	
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(-.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,.7),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.4)*euler(0,-.4,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.7,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.7,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.5,1,math.random(5,10),nil,true) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(.5,4.5,1.2)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.4)
wld1.C0=clerp(wld1.C0,cf(0,0,0)*euler(1,0,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(-.1,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(1.2,0,-.4)*euler(0,.2,0),.4)
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
 
function oattacktwo()
so("http://roblox.com/asset/?id=199145146",LeftArm,1,1)	
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.5,0.5,-.5)*euler(2,0,1)*euler(0,-1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.5,1,math.random(5,10),nil,true) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(.5,4.5,1.2)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.6,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.5,0,-1)*euler(0,-.6,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end
 
function oattackthree()
attack=true
so("http://roblox.com/asset/?id=199145327",LeftArm,1,1)	
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.5,0.5,-.5)*euler(1.57,0,1)*euler(0,-1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(10,20),"Normal",RootPart,.5,2,math.random(10,15),nil,true) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(.5,4.5,1.2)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=RootCF*euler(0,0,-.5+6.28*i)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,-1.57)*euler(0,-1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.3,0,-1.57)*euler(0,-1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end
 
function oattackfour()
so("http://roblox.com/asset/?id=199145327",LeftArm,1,1.1)	
attack=true
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(-20,-10),"Normal",RootPart,.2,2,math.random(5,10),nil,true) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(.5,4.5,1.2)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(.2,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.3)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RootJoint.C0=RootCF*euler(0,0,.5-7.28*i)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.5,0.5,-.5)*euler(.6,0,1)*euler(0,.8,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(30,50),"Normal",RootPart,.5,2,math.random(10,15),nil,true) end)
so("http://roblox.com/asset/?id=199145146",LeftArm,1,1.1)	 
for i=0,1,0.1 do
swait()
local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,0,0)*euler(1.4,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.57),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.57),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.4,0,-1.4)*euler(0,1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,-.2)*euler(0,1.57,0)*euler(-.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-.5,-1,.2)*euler(0,-1.57,0)*euler(.2,1.57,0),.2)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
con1:disconnect()
hitbox.Parent=nil
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
else
swait(10)
end
attack=false
end
 
function ModeChange()
attack=true
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.3,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.8,0,-1)*euler(0,1,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(1.2,0,1.1)*euler(0,-1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.4)
RH.C1=clerp(RH.C1,RHC1,.4)
LH.C0=clerp(LH.C0,LHC0,.4)
LH.C1=clerp(LH.C1,LHC1,.4)
end
if Mode=="Defensive" then
Mode="Offensive"
else
Mode="Defensive"
end
for i=0,1,0.05 do
swait()
if Mode=="Offensive" then
wld14.C0=clerp(wld14.C0,euler(3.14,1.57,0)*cf(0.4,0.6,-2)*euler(0,.5,0),.3)
wld15.C0=clerp(wld15.C0,euler(3.14,-1.57,0)*cf(-0.4,0.6,2)*euler(0,.5,0),.3)
wld16.C0=clerp(wld16.C0,euler(3.14,1.57,0)*cf(0.4,0.6,2)*euler(0,-.5,0),.3)
wld17.C0=clerp(wld17.C0,euler(3.14,-1.57,0)*cf(-0.4,0.6,-2)*euler(0,-.5,0),.3)
else
wld14.C0=clerp(wld14.C0,euler(3.14,1.57,0)*cf(0.4,0.6,-2),.3)
wld15.C0=clerp(wld15.C0,euler(3.14,-1.57,0)*cf(-0.4,0.6,2),.3)
wld16.C0=clerp(wld16.C0,euler(3.14,1.57,0)*cf(0.4,0.6,2),.3)
wld17.C0=clerp(wld17.C0,euler(3.14,-1.57,0)*cf(-0.4,0.6,-2),.3)
end
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1.5,0)*euler(0,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,0)*euler(0,1.57,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,0,0)*euler(0,1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
attack=false
end
 
function DecreaseStat(Model,Stat,Amount,Duration)
if Model:findFirstChild("Stats")~=nil then
if Model.Stats[Stat]~=nil then
Model.Stats[Stat].Value=Model.Stats[Stat].Value-Amount
table.insert(Effects,{Model,"DecreaseStat",Stat,Amount,Duration})
end
end
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
 
function MagniDamage(Part,magni,mindam,maxdam,knock,Type,Ranged)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,math.random(5,10),nil,nil,Ranged)
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
w1.BrickColor = BrickColor.new("Teal")
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
w2.BrickColor = BrickColor.new("Teal")
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
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type)
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
 
function MagicHead(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Head","nil",vt(0,0,0),vt(x1,y1,z1))
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
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged)
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
if ranged~=true then
StaggerHit.Value=true
end
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
if ranged~=true then
enblock.Value=false
Stagger.Value=true
end
else
Damage=math.floor(Damage)
h.Health=h.Health-Damage
showDamage(hit.Parent,Damage,.5,BrickColor:Red())
if Type=="NormalDecreaseMvmt1" then
DecreaseStat(hit.Parent,"Movement",.1,200)
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
elseif Type=="Knockdown2" then
hum=hit.Parent.Humanoid
local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
elseif Type=="Normal" or Type=="NormalDecreaseMvmt1" then
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
if Mode=="Defensive" then
if combo==0 then
combo=1
dattackone()
elseif combo==1 then
combo=2
dattacktwo()
elseif combo==2 then
combo=3
dattackthree()
elseif combo==3 then
combo=0
dattackfour()
end
else
if combo==0 then
combo=1
oattackone()
elseif combo==1 then
combo=2
oattacktwo()
elseif combo==2 then
combo=3
oattackthree()
elseif combo==3 then
combo=0
oattackfour()
end
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
if key=="e" then
ModeChange()
end
if key=="q" then
--Punishment()
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
print("Commander loaded.")
 
local mananum=0
local donum=0
local stunnum=0
local staggeranim=false
local stunanim=false
while true do
hitbox2.Parent=hitbox.Parent
hitbox2.Size=hitbox.Size
hitbox2.CFrame=hitboxCF
game:service'RunService'.RenderStepped:wait(0)
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
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,0,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.2)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,0,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.2)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.8),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.8),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
if Mode=="Defensive" then
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.15)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.57,0,0),.15)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.15)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.15)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.2+(donum/3)),.15)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.15)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,0,0-(donum/2))*euler(0,0+donum/1.5,0),.15)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.15)
RH.C0=clerp(RH.C0,RHC0,.2)
RH.C1=clerp(RH.C1,RHC1,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
LH.C1=clerp(LH.C1,LHC1,.2)
else
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(-.2,0,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,.5),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.5-(donum/2),0,.5-(donum/2)),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.4+(donum/2)),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.2)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,1.5,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,1),.2)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.57,0,-1),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(.6,-1,.5)*euler(0,1.57,0)*euler(0,-1,-.2),.2)
LH.C0=clerp(LH.C0,cf(-.6,-1,-.5)*euler(0,-1.57,0)*euler(0,-1,-.2),.2)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,1.5,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,1),.2)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.57,0,-1),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(.6,-1,.5)*euler(0,1.57,0)*euler(0,-1,-.2),.2)
LH.C0=clerp(LH.C0,cf(-.6,-1,-.5)*euler(0,-1.57,0)*euler(0,-1,-.2),.2)
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
if Thing[2]=="DecreaseStat" then
Thing[5]=Thing[5]-1
if Thing[5]<=0 then
if Thing[1]:findFirstChild("Stats")~=nil then
Thing[1].Stats[Thing[3]].Value=Thing[1].Stats[Thing[3]].Value+Thing[4]
end
table.remove(Effects,e)
end
end
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
if Thing[2]~="DecreaseStat" then
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
 


