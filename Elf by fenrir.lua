--[[
Santa's Elf Class Made by Fenrier.
]]
Player=game:GetService("Players").serun15
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
local cansleigh=true
--player
player=nil
--save shoulders
RSH, LSH=nil, nil
--welds
RW, LW=Instance.new("Weld"), Instance.new("Weld")
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
local Effects={}
local GiftbagGifts={}
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Elf",true) ~= nil then
Character:findFirstChild("Elf",true).Parent = nil
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
 
GiftTextures1={
 "http://www.roblox.com/asset/?id=67108526",
 "http://www.roblox.com/asset/?id=66892127",
 "http://www.roblox.com/asset/?id=67156256",
 "http://www.roblox.com/asset/?id=22731874",
 "http://www.roblox.com/asset/?id=66888912",
 "http://www.roblox.com/asset/?id=138053709",
 "http://www.roblox.com/asset/?id=137677423",
 "http://www.roblox.com/asset/?id=137441786",
 "http://www.roblox.com/asset/?id=67156688",
 "http://www.roblox.com/asset/?id=67156487",
 "http://www.roblox.com/asset/?id=67108654",
 "http://www.roblox.com/asset/?id=67108786",
 "http://www.roblox.com/asset/?id=99262324",
 "http://www.roblox.com/asset/?id=99262600",
 "http://www.roblox.com/asset/?id=189783253",
 "http://www.roblox.com/asset/?id=137441880",
 "http://www.roblox.com/asset/?id=67099135",
 "http://www.roblox.com/asset/?id=137729610",
 "http://www.roblox.com/asset/?id=138219638",
 "http://www.roblox.com/asset/?id=162200169",
 "http://www.roblox.com/asset/?id=66888967",
 "http://www.roblox.com/asset/?id=66895727",
 "http://www.roblox.com/asset/?id=66895855",
 "http://www.roblox.com/asset/?id=67108896",
 "http://www.roblox.com/asset/?id=99262911",
 "http://www.roblox.com/asset/?id=100205893",
 "http://www.roblox.com/asset/?id=100372723",
 "http://www.roblox.com/asset/?id=189748284",
 "http://www.roblox.com/asset/?id=137676972",
 "http://www.roblox.com/asset/?id=137441880",
 "http://www.roblox.com/asset/?id=138376505",
 "http://www.roblox.com/asset/?id=138219638",
 "http://www.roblox.com/asset/?id=138135295",
 "http://www.roblox.com/asset/?id=137611947",
 "http://www.roblox.com/asset/?id=137677423",
 "http://www.roblox.com/asset/?id=137729610",
 "http://www.roblox.com/asset/?id=137384483",
 "http://www.roblox.com/asset/?id=137441786",
 "http://www.roblox.com/asset/?id=138293850",
 "http://www.roblox.com/asset/?id=138053709",
 "http://www.roblox.com/asset/?id=136798527",
 "http://www.roblox.com/asset/?id=99902032",
}
GiftTextures2={
 "http://www.roblox.com/asset/?id=41510057",
 "http://www.roblox.com/asset/?id=1238797",
 "http://www.roblox.com/asset/?id=10090366",
 "http://www.roblox.com/asset/?id=1237427",
 "http://www.roblox.com/asset/?id=1247867",
 "http://www.roblox.com/asset/?id=18986139",
 "http://www.roblox.com/asset/?id=19906004",
 "http://www.roblox.com/asset/?id=40867788",
 "http://www.roblox.com/asset/?id=1247871",
 "http://www.roblox.com/asset/?id=1239423",
 "http://www.roblox.com/asset/?id=11596767",
 "http://www.roblox.com/asset/?id=1247866",
 "http://www.roblox.com/asset/?id=1246569",
 "http://www.roblox.com/asset/?id=1239715",
 "http://www.roblox.com/asset/?id=6125462",
 "http://www.roblox.com/asset/?id=6202189",
 "http://www.roblox.com/asset/?id=34115626",
 "http://www.roblox.com/asset/?id=6313630",
 "http://www.roblox.com/asset/?id=6024329",
 "http://www.roblox.com/asset/?id=6020478",
 "http://www.roblox.com/asset/?id=6144194",
 "http://www.roblox.com/asset/?id=1459021",
 "http://www.roblox.com/asset/?id=18824013",
}
 
function Giftify(Part,x,y,z)
if Part.className=="Part" then
if math.random(1,2)==1 then
Texture=math.random(1,#GiftTextures1) --FileMesh of gift 1 is weird :V
local giftmsh=mesh("SpecialMesh",Part,"FileMesh","http://www.roblox.com/asset/?id=66887781",vt(0,0,0),vt(x,y,z))
giftmsh.TextureId=GiftTextures1[Texture]
else
Texture=math.random(1,#GiftTextures2)
local giftmsh=mesh("SpecialMesh",Part,"FileMesh","http://www.roblox.com/asset/?id=1237207",vt(0,0,0),vt(x,y,z))
giftmsh.TextureId=GiftTextures2[Texture]
end
end
end
 
local modelzorz=Instance.new("Model")
modelzorz.Parent=Character
modelzorz.Name="Elf"
 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Black"),"Hat",vt())
local prt2=part(3,modelzorz,0,0,BrickColor.new("Black"),"Bag",vt())
local prt3=part(3,modelzorz,0,0,BrickColor.new("Black"),"Gift1",vt())
local prt4=part(3,modelzorz,0,0,BrickColor.new("Black"),"Gift2",vt())
local prt5=part(3,modelzorz,0,0,BrickColor.new("Black"),"Gift3",vt())
local prt6=part(3,modelzorz,0,0,BrickColor.new("Black"),"Gift4",vt())
table.insert(GiftbagGifts,prt3)
table.insert(GiftbagGifts,prt4)
table.insert(GiftbagGifts,prt5)
table.insert(GiftbagGifts,prt6)
 
local msh1=mesh("SpecialMesh",prt1,"FileMesh","http://www.roblox.com/asset/?id=1090610",vt(0,0,0),vt(1,1,1))
msh1.TextureId="http://www.roblox.com/asset/?id=42037120"
local msh2=mesh("SpecialMesh",prt2,"FileMesh","http://www.roblox.com/asset/?id=19646118",vt(0,0,0),vt(1.5,1.5,1.5))
msh2.TextureId="http://www.roblox.com/asset/?id=19646165"
Giftify(prt3,1.3,1.3,1.3)
Giftify(prt4,1.3,1.3,1.3)
Giftify(prt5,1.3,1.3,1.3)
Giftify(prt6,1.3,1.3,1.3)
 
local wld1=weld(prt1,prt1,Head,euler(0,0,0)*cf(0,-.5,0))
local wld2=weld(prt2,prt2,Torso,euler(0,1.57,0)*cf(0,.5,-1.5))
local wld3=weld(prt3,prt3,prt2,euler(.5,.1,0)*cf(-.2,-1.6,0.3))
local wld4=weld(prt4,prt4,prt2,euler(0,.1,.5)*cf(-.2,-1.4,0))
local wld5=weld(prt5,prt5,prt2,euler(0,.1,-.3)*cf(.3,-1.6,-.1))
local wld6=weld(prt6,prt6,prt2,euler(-.4,-.2,0)*cf(0,-1.7,-.4))
 
local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
if (script.Parent.className~="HopperBin") then
Tool=Instance.new("HopperBin")
Tool.Parent=Backpack
Tool.Name="Christmas Spirit"
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
Neck.C0=clerp(Neck.C0,necko*euler(-.3,0,-.4),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3.8,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.3),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
num=math.random(1,#GiftbagGifts)
GiftbagGifts[num].Mesh.Parent=nil
Giftify(GiftbagGifts[num],1.3,1.3,1.3)
local giftprt=part(3,modelzorz,0,0,BrickColor.new("Black"),"Gift",vt(1.3,1.3,1.3))
Giftify(giftprt,1.3,1.3,1.3)
local gwld=weld(giftprt,giftprt,RightArm,euler(1.57,0,0)*cf(0,1.3,0))
for i=0,1,0.15 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-0.3),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
so("http://roblox.com/asset/?id=169445092",RightArm,1,math.random(80,120)/100)
gwld.Parent=nil
giftprt.Parent=workspace
giftprt.CanCollide=true
local TheHit=MMouse.Hit.p
local MouseLook=cf((RootPart.Position+TheHit)/2,TheHit)
--giftprt.Velocity=RootPart.CFrame.lookVector*100
giftprt.Velocity=MouseLook.lookVector*160
game:GetService("Debris"):AddItem(giftprt,5)
Boom(giftprt,100,2,5,10,true)
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.7),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,-.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-0.3),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
attack=false
end
 
function attacktwo()
attack=true
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(-.3,0,.4),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.3),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.8,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
num=math.random(1,#GiftbagGifts)
GiftbagGifts[num].Mesh.Parent=nil
Giftify(GiftbagGifts[num],1.3,1.3,1.3)
local giftprt=part(3,modelzorz,0,0,BrickColor.new("Black"),"Gift",vt(1.3,1.3,1.3))
Giftify(giftprt,1.3,1.3,1.3)
local gwld=weld(giftprt,giftprt,LeftArm,euler(1.57,0,0)*cf(0,1.3,0))
for i=0,1,0.15 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,0.3),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
so("http://roblox.com/asset/?id=169445092",LeftArm,1,math.random(80,120)/100)
gwld.Parent=nil
giftprt.Parent=workspace
giftprt.CanCollide=true
local TheHit=MMouse.Hit.p
local MouseLook=cf((RootPart.Position+TheHit)/2,TheHit)
--giftprt.Velocity=RootPart.CFrame.lookVector*100
giftprt.Velocity=MouseLook.lookVector*160
game:GetService("Debris"):AddItem(giftprt,5)
Boom(giftprt,100,2,5,10,true)
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.7),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.7),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,0.3),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
attack=false
end
 
function attackthree()
attack=true
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(-.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3.8,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.8,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
num=math.random(1,#GiftbagGifts)
GiftbagGifts[num].Mesh.Parent=nil
Giftify(GiftbagGifts[num],1.3,1.3,1.3)
local giftprt=part(3,modelzorz,0,0,BrickColor.new("Black"),"Gift",vt(2,2,2))
Giftify(giftprt,2,2,2)
local gwld=weld(giftprt,giftprt,LeftArm,euler(1.57,0,0)*cf(-.8,1.8,0))
for i=0,1,0.15 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
so("http://roblox.com/asset/?id=169445092",LeftArm,1,math.random(60,90)/100)
gwld.Parent=nil
giftprt.Parent=workspace
giftprt.CanCollide=true
local TheHit=MMouse.Hit.p
local MouseLook=cf((RootPart.Position+TheHit)/2,TheHit)
--giftprt.Velocity=RootPart.CFrame.lookVector*100
giftprt.Velocity=MouseLook.lookVector*120
game:GetService("Debris"):AddItem(giftprt,5)
Boom(giftprt,150,4,7,12,true)
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(1,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.3)*euler(1,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
attack=false
end
 
function Surprise()
attack=true
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(-.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3.8,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.8,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
num=math.random(1,#GiftbagGifts)
GiftbagGifts[num].Mesh.Parent=nil
Giftify(GiftbagGifts[num],1.3,1.3,1.3)
Humanoid.WalkSpeed=0
so("http://roblox.com/asset/?id=169445092",RightArm,1,math.random(50,80)/100)
local giftprt=part(3,modelzorz,0,0,BrickColor.new("Black"),"Gift",vt(6,6,6))
Giftify(giftprt,6,6,6)
local gwld=weld(giftprt,giftprt,LeftArm,euler(1.57,0,.4)*cf(-.2,2.5,0))
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1.1,0.4,-0.8)*euler(-0.05,-1.57,0),.3)
end
Humanoid.WalkSpeed=16
gwld.Parent=nil
giftprt.Parent=workspace
giftprt.CanCollide=true
game:GetService("Debris"):AddItem(giftprt,10)
Boom(giftprt,300,6,10,20,false)
attack=false
end
 
function PartyCannon()
attack=true
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(-.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3.8,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.8,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
Humanoid.WalkSpeed=0
local cannon=part(3,modelzorz,0,0,BrickColor.new("Bright stone grey"),"Cannon",vt())
local cmsh=mesh("SpecialMesh",cannon,"FileMesh","http://www.roblox.com/asset/?id=110153429",vt(0,0,0),vt(1.5,1.5,1.5))
local cwld=weld(cannon,cannon,LeftArm,euler(1.57,0,.4)*cf(-0.6,2,-0.5))
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1.1,0.4,-0.8)*euler(-0.05,-1.57,0),.3)
end
swait(5)
for i=1,10 do
so("http://roblox.com/asset/?id=146767803",cannon,1,1)
swait(5)
MagicBlock(BrickColor.new("Bright red"),cannon.CFrame,1,1,1,3,3,3,.05,1)
Torso.Velocity=RootPart.CFrame.lookVector*-130
for i=1,30 do
local confetti=part(3,workspace,0,0,BrickColor.Random(),"Confetti",vt())
local cmsh=mesh("BlockMesh",confetti,"","",vt(0,0,0),vt(3,1,3))
confetti.CFrame=cannon.CFrame*cf(math.random(-300,300)/100,math.random(-300,300)/100,math.random(-300,300)/100)
confetti.Velocity=(RootPart.CFrame.lookVector*math.random(40,60))+(vt(math.random(-100,100)/100,1,math.random(-100,100)/100)*math.random(60,80))
game:GetService("Debris"):AddItem(confetti,5)
end
--[[for i=1,10 do
num=math.random(100,400)/100
local giftprt=part(3,workspace,0,0,BrickColor.new("Black"),"Gift",vt(num,num,num))
Giftify(giftprt,num,num,num)
giftprt.CFrame=cannon.CFrame*cf(math.random(-300,300)/100,math.random(-300,300)/100,math.random(-300,-100)/100)
giftprt.CanCollide=true
giftprt.Velocity=(RootPart.CFrame.lookVector*math.random(40,60))+(vt(0,1,0)*math.random(60,80))
game:GetService("Debris"):AddItem(giftprt,10)
Boom(giftprt,math.random(200,600),num,10,20,true)
end]]
--[[for i=1,100 do
num=math.random(100,400)/100
local giftprt=part(3,workspace,0,0,BrickColor.new("Black"),"Gift",vt(num,num,num))
Giftify(giftprt,num,num,num)
giftprt.CFrame=cannon.CFrame*cf(math.random(-300,300)/100,math.random(-300,300)/100,math.random(-300,-100)/100)
giftprt.CanCollide=true
giftprt.Velocity=(RootPart.CFrame.lookVector*math.random(30,80))+(vt(0,1,0)*math.random(60,80))
game:GetService("Debris"):AddItem(giftprt,10)
Boom(giftprt,math.random(200,600),num,10,20,true)
end]]
for i=1,5 do
num=math.random(200,1000)/100
local giftprt=part(3,workspace,0,0,BrickColor.new("Black"),"Gift",vt(num,num,num))
Giftify(giftprt,num,num,num)
giftprt.CFrame=cannon.CFrame*cf(math.random(-300,300)/100,math.random(-300,300)/100,math.random(-300,-100)/100)
giftprt.CanCollide=true
giftprt.Velocity=(RootPart.CFrame.lookVector*math.random(50,100))+(vt(0,1,0)*math.random(60,80))
game:GetService("Debris"):AddItem(giftprt,10)
Boom(giftprt,math.random(200,600),num,10,20,true)
end
end
--swait(100)
cannon.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function SnowDay()
attack=true
Humanoid.WalkSpeed=0
local gairo=Instance.new("BodyGyro")
gairo.Parent=RootPart
gairo.maxTorque=Vector3.new(4e+005,4e+005,4e+005)*math.huge
gairo.P=20e+003
gairo.cframe=RootPart.CFrame
s=Instance.new("Sound")
s.Parent=Torso
s.Pitch=1
s.Volume=1
s.SoundId="http://www.roblox.com/asset/?id=19358641"
s.Looped=true
s:Play()
num=0
num2=0
num3=0
CF=RootPart.CFrame
local snowfield=part(3,modelzorz,0,1,BrickColor.new("White"),"SnowField",vt())
local cmsh=mesh("CylinderMesh",snowfield,"","",vt(0,0,0),vt(300,1,300))
snowfield.Anchored=true
snowfield.CFrame=cf(RootPart.Position)*cf(0,-3,0)
while holdc==true do
swait()
hitfloor2,posfloor2=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,999,Character)
if hitfloor2~=nil then
snowfield.CFrame=cf(posfloor2)
end
if snowfield.Transparency>=.85 then
snowfield.Transparency=snowfield.Transparency-0.0001
end
Neck.C0=clerp(Neck.C0,necko*euler(-.6,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3,0,.8),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
MagicBlock(BrickColor.new("White"),LeftArm.CFrame*cf(0,-1,0),1,1,1,1,1,1,.1,1)
MagicBlock(BrickColor.new("White"),RightArm.CFrame*cf(0,-1,0),1,1,1,1,1,1,.1,1)
gairo.cframe=CF*euler(0,num,0)
num=num+0.1
num2=num2+1
if num2%100==0 then
MagniDamage(RootPart,30,0,10,math.random(1,5),"Knockdown")
end
if num2%20==0 then
local cloud=part(3,workspace,0,0,BrickColor.new("White"),"Cloud",vt())
local cmsh=mesh("SpecialMesh",cloud,"FileMesh","http://www.roblox.com/asset/?id=1095708",vt(0,0,0),vt(8,8,8))
cloud.Anchored=true
cloud.CFrame=cf(RootPart.Position)*cf(math.random(-2000,2000)/100,30,math.random(-2000,2000)/100)*euler(0,1.57,0)
game:GetService("Debris"):AddItem(cloud,5)
table.insert(Effects,{cloud,"Snow",40,0})
end
end
snowfield.Parent=nil
gairo.Parent=nil
s:Stop()
s.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function SantaSleigh()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(-.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3.8,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.8,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
local sleigh=part(3,modelzorz,0,0,BrickColor.new("White"),"Sleigh",vt())
local smsh=mesh("SpecialMesh",sleigh,"FileMesh","http://www.roblox.com/asset/?id=67730602 ",vt(0,0,0),vt(1.5,1.5,1.5))
smsh.TextureId="http://www.roblox.com/asset/?id=67730764"
local swld=weld(sleigh,sleigh,LeftArm,euler(3.14,0,.4+1.57)*cf(-0.6,2,-1))
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,-0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1.1,0.4,-0.8)*euler(-0.05,-1.57,0),.3)
end
swld.Part1=Torso
swld.C0=euler(1.57,-1.57,0)*cf(0,1.2,0)
wld2.C0=euler(0,1.57,0)*cf(0,-.8,-1.8)
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0)*euler(1.3,1.57,0)*euler(-0.2,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0)*euler(1.3,-1.57,0)*euler(-0.2,0,0),.3)
end
s=Instance.new("Sound")
s.Parent=Torso
s.Pitch=1
s.Volume=1
s.SoundId="http://www.roblox.com/asset/?id=19358641"
s.Looped=true
s:Play()
bodvel=Instance.new("BodyVelocity")
bodvel.Parent=RootPart
bodvel.velocity=MMouse.Hit.lookVector*30
bodvel.P=5000
bodvel.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
local gairo=Instance.new("BodyGyro")
gairo.Parent=RootPart
gairo.maxTorque=Vector3.new(4e+005,4e+005,4e+005)
gairo.P=3000
gairo.cframe=RootPart.CFrame
gift=0
for i=1,1000 do
swait()
bodvel.velocity=MMouse.Hit.lookVector*80
gairo.cframe=CFrame.new(RootPart.Position,MMouse.Hit.p)
if gift>=20 then
gift=0
for i=1,5 do
local confetti=part(3,workspace,0,0,BrickColor.Random(),"Confetti",vt())
local cmsh=mesh("BlockMesh",confetti,"","",vt(0,0,0),vt(3,1,3))
confetti.CFrame=RootPart.CFrame*cf(math.random(-300,300)/100,math.random(-300,300)/100,math.random(-300,300)/100)
confetti.Velocity=(RootPart.CFrame.lookVector*math.random(40,60))+(vt(math.random(-100,100)/100,-1,math.random(-100,100)/100)*math.random(60,80))
game:GetService("Debris"):AddItem(confetti,5)
end
for i=1,math.random(2,6) do
num=math.random(100,300)/100
local giftprt=part(3,workspace,0,0,BrickColor.new("Black"),"Gift",vt(num,num,num))
Giftify(giftprt,num,num,num)
giftprt.CFrame=RootPart.CFrame*cf(math.random(-300,300)/100,math.random(-500,-300)/100,math.random(-300,300)/100)
giftprt.CanCollide=true
giftprt.Velocity=(RootPart.CFrame.lookVector*math.random(20,40))+(vt(math.random(-1,1),-1,math.random(-1,1))*math.random(20,60))
game:GetService("Debris"):AddItem(giftprt,10)
Boom(giftprt,math.random(200,400),num,10,20,false)
end
end
gift=gift+1
end
s:Stop()
s.Parent=nil
bodvel.Parent=nil
gairo.Parent=nil
wld2.C0=euler(0,1.57,0)*cf(0,.5,-1.5)
Humanoid.WalkSpeed=16
sleigh.Parent=nil
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
 
function Boom(Part,numb,magnitude,mindam,maxdam,cantouch)
if cantouch==true then
con1=Part.Touched:connect(function(hit)
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
for _,v in pairs(hit.Parent:children()) do
if v:IsA("Humanoid") then
h=v
end
end
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
Part.Parent=nil
end
end)
end
table.insert(Effects,{Part,"Explode",numb,magnitude,mindam,maxdam})
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
                vp.velocity=Property.CFrame.lookVector*knockback
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
holdg=false
holdc=false
cansurprise=true
equipped=false
function key(key)
if key=="g" then
holdg=true
end
if key=="c" then
holdc=true
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
if key=="z" and cansurprise==true then
Surprise()
cansurprise=false
coroutine.resume(coroutine.create(function()
wait(5)
cansurprise=true
end))
end
if key=="x" then
PartyCannon()
end
if key=="c" then
SnowDay()
end
if key=="v" and cansleigh==true then
cansleigh=false
SantaSleigh()
end
--[[if key=="g" then
while holdg==true do
swait()
attack=true
Neck.C0=clerp(Neck.C0,necko*euler(-.6,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3,0,.8),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
size=math.random(100,500)/100
local giftprt=part(3,modelzorz,0,0,BrickColor.new("Black"),"Gift",vt(size*2,size*2,size*2))
Giftify(giftprt,size*2,size*2,size*2)
giftprt.Parent=workspace
giftprt.CanCollide=true
giftprt.CFrame=Torso.CFrame*cf(math.random(-50,50),math.random(80,100),math.random(-50,50))
game:GetService("Debris"):AddItem(giftprt,5)
Boom(giftprt,size*100,size*2,5,10,false)
end
attack=false
end]]
end
 
function key2(key)
if key=="g" then
holdg=false
end
if key=="c" then
holdc=false
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
print("Santa's Elf loaded.")
 
 
local donum=0
while true do
swait()
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
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.2,0,0.3),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.2,0,-0.3),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.3,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.5,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
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
if Thing[2]=="Snow" then
if Thing[1].Parent~=nil then
if Thing[4]==Thing[3] then
local snow=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt())
snow.CFrame=Thing[1].CFrame*cf(math.random(-300,300)/100,0,math.random(-300,300)/100)
local smsh=mesh("SpecialMesh",snow,"Sphere","",vt(0,0,0),vt(1,1,1))
bodvol=Instance.new("BodyVelocity")
bodvol.Parent=snow
bodvol.velocity=vt(0,-1,0)*10
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
game:GetService("Debris"):AddItem(snow,5)
Thing[4]=0
else
Thing[4]=Thing[4]+1
end
end
end
if Thing[2]=="Explode" then
if Thing[3]<=0 or Thing[1].Parent==nil then
Thing[1].Parent=nil
size=Thing[4]
MagicBlock(BrickColor.new("Bright red"),Thing[1].CFrame,1,1,1,size,size,size,.05,1)
MagicCircle(BrickColor.new("Bright yellow"),Thing[1].CFrame,1,1,1,size*5,size*5,size*5,.1)
local prtt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
prtt.Anchored=true
prtt.CFrame=Thing[1].CFrame
MagniDamage(prtt,size*5,Thing[5],Thing[6],math.random(size*2,size*3),"Normal")
game:GetService("Debris"):AddItem(prtt,1)
so("http://roblox.com/asset/?id=2101148",prtt,1,1)
table.remove(Effects,e)
end
Thing[3]=Thing[3]-1
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
end
 
--[[
Copyrighted (C) Fenrier 2014
]]