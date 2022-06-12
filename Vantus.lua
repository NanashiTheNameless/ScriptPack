--[[
Altered Fenrier's Cyber Bruiser to utilize Vanta's attack functions. -Ucalegen
]]
de=true
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
moose = Player:GetMouse()
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
 
if Character:findFirstChild("Vanta",true) ~= nil then 
Character:findFirstChild("Vanta",true).Parent = nil 
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

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
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
fenframe.Visible=false
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
modelzorz.Name="Vanta" 
 
local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Vanta" 
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

end
 
function attacktwo()
end
 
function attackthree()

end



















function Nocturn(mouse)
if de==true then
de=false
local n=2
--[[for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2+0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14*i*n,0,0.3-0.9*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(3.14*i*n,0,-0.3+0.9*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.1
end]]
local orb=part(3,Character,0,1,BrickColor.new("Really black"),"Orb",vt())
local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(15,15,15))
local owld=weld(orb,orb,Torso,cf(0,-10,0))
so("http://roblox.com/asset/?id=137463716",orb,1,0.6) 
for i=1,0.3,-0.01 do
wait()
orb.Transparency=i
omsh.Scale=omsh.Scale+vt(0.5,0.5,0.5)
MagicBlock(BrickColor.new("Really black"),orb.CFrame,15,15,15,2,2,2,0.1)
local ef=part(3,workspace,0,0,BrickColor.new("Really black"),"Effect",vt())
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Sphere","",vt(0,0,0),vt(2,math.random(1000,1500)/100,2))
local ceef=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,math.random(10,20),0)
ef.CFrame=orb.CFrame*ceef
game:GetService("Debris"):AddItem(ef,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.Transparency=i
Part.CFrame=Part.CFrame*cf(0,-1,0)
end
Part.Parent=nil
end),ef,emsh)
end
local Pos=cf(orb.Position,Player:GetMouse().Hit.p).lookVector
wait(.5)
orb.Parent=nil
local hit,pos = rayCast(orb.Position,Pos,999,Character)
local mag=(orb.Position-pos).magnitude 
MagicCircle(BrickColor.new("Really black"),cf(pos),15,15,15,8,8,8,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),15,15,15,8,8,8,0.02)
MagicCylinder(BrickColor.new("Really black"),CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0),10,mag*5,10,0.5,0,0.5,0.01)
for i=1,2 do
MagicRing(BrickColor.new("Really black"),cf(pos)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,1,1,1,0.04)
end
for i=1,5 do
tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(mag/5)*(i/2),0)
MagicRing(BrickColor.new("Really black"),tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
for i=0,5 do
tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(-mag/5)*(i/2),0)
MagicRing(BrickColor.new("Really black"),tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf(pos)
so("http://roblox.com/asset/?id=183763506",Torso,1,0.6) 
so("http://roblox.com/asset/?id=178452221",Torso,1,0.6) 
so("http://www.roblox.com/Asset?ID=87767777",Torso,1,1) 
so("http://roblox.com/asset/?id=183763506",ref,1,0.6) 
so("http://roblox.com/asset/?id=178452221",ref,1,0.6) 
so("http://www.roblox.com/Asset?ID=87767777",ref,1,1) 
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Parent=nil
end),ref)
MagniDamage(ref,20,10,30,40,"Knockdown",ref)
if hit~=nil then
Damagefunc(hit,30,70,50,"Knockdown",RootPart,0)
end
wait(1)
local n=2
--[[for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(0.4-0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14-3.14*i*n,0,-0.6+0.9*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(3.14-3.14*i*n,0,0.6-0.9*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.1
end]]
de=true
end
end

function Darkrain()
if de==true then
de=false
local n=2
for i=0,1,0.1 do
wait()
--[[Neck.C0=cf(0,1,0)*euler(-0.2+0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14*i*n,0,0.3-0.3*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i*n,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)]]
n=n-0.1
end
for i=1,math.random(20,40) do
wait(.05)
MagicBlock(BrickColor.new("Really black"),RightArm.CFrame*cf(0,-5,0),30,30,30,2,2,2,0.1)
local orb=part(3,Character,0,0.5,BrickColor.new("Really black"),"Orb",vt())
orb.Anchored=true
so("http://roblox.com/asset/?id=183763498",orb,1,1.2) 
local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(10,10,10))
orb.CFrame=cf(Player:GetMouse().Hit.p+vt(math.random(-10,10),math.random(50,100),math.random(-10,10)))
MagicCircle(BrickColor.new("Really black"),orb.CFrame,10,10,10,1,1,1,0.1)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
wait(1)
Part.Parent=nil
local spread=vt((math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16)*(Part.Position-(Part.Position+vt(0,-1,0))).magnitude/100
local TheHit=Part.Position+vt(0,-1,0)
local MouseLook=cf((Part.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(Part.Position,MouseLook.lookVector,999,Character)
local mag=(Part.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really black"),CFrame.new((Part.Position+pos)/2,pos)*angles(1.57,0,0) ,1,mag*5,1,0.5,0,0.5,0.05)
MagicBlock(BrickColor.new("Really black"),Part.CFrame,8,8,8,0.5,0.5,0.5,0.1)
MagicBlock(BrickColor.new("Really black"),cf(pos),15,15,15,6,6,6,0.1)
MagicRing(BrickColor.new("Really black"),cf(pos)*euler(1.57,math.random(-100,100)/100,math.random(-100,100)/100),1,1,1,2,2,2,0.05)
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf(pos)
so("http://roblox.com/asset/?id=183763487",ref,1,1) 
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Parent=nil
end),ref)
MagniDamage(ref,15,5,10,0,"Normal",RootPart)
if hit~=nil then
Damagefunc(hit,20,40,1,"Knockdown",RootPart,0)
end
end),orb,omsh)
end
wait(0.5)
local n=2
for i=0,1,0.1 do
wait()
--[[Neck.C0=cf(0,1,0)*euler(0.4-0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14-3.14*i*n,0,0.3*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i*n,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)]]
n=n-0.1
end
de=true
end
end

function Terrorblast()
if de==true then
de=false
local n=2
--[[for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2-0.2*i*n,0,0)
RW.C0=cf(1.5-0.5*i*n,0.5,-0.5*i*n)*euler(1.4*i*n,0,0.2-1.4*i*n)
LW.C0=cf(-1.5+0.5*i*n,0.5,-0.5*i*n)*euler(1.6*i*n,0,-0.2+1.6*i*n)
n=n-0.1
end]]
so("http://roblox.com/asset/?id=160772554",Torso,1,0.6) 
so("http://roblox.com/asset/?id=161006069",Torso,1,0.6) 
local charging=true
for _,c in pairs(game.Workspace:GetChildren()) do
if c.className=="Model" then
if c:findFirstChild("Torso")~=nil and c:findFirstChild("Humanoid")~=nil and c.Name~=Player.Name then
print(c)
local Tors=c:findFirstChild("Torso")
coroutine.resume(coroutine.create(function(Part)
local ef=part(3,Character,0,0.5,BrickColor.new("Really black"),"Effect",vt(0.2,0.2,0.2))
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Head","",vt(0,0,0),vt(1,1,1))
game:GetService("Debris"):AddItem(ef,5)
while charging==true do
wait()
local TheHit=Part.Position
local MouseLook=cf((Torso.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(Torso.Position,MouseLook.lookVector,999,Character)
local mag=(Torso.Position-pos).magnitude 
ef.CFrame=CFrame.new((Torso.Position+pos)/2,pos)*euler(1.57,0,0)
emsh.Scale=vt(1,mag*5,1)
end
ef.Parent=nil
local TheHit=Part.Position
local MouseLook=cf((Torso.Position+TheHit)/2,TheHit)
wait()
local hit,pos = rayCast(Torso.Position,MouseLook.lookVector,999,Character)
local mag=(Torso.Position-pos).magnitude 
if hit~=nil then
Damagefunc(hit,20,40,50,"Knockdown",RootPart,0)
MagicCircle(BrickColor.new("Really black"),cf(pos),5,5,5,6,6,6,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),5,5,5,7,7,7,0.02)
MagicCylinder(BrickColor.new("Really black"),CFrame.new((Torso.Position+pos)/2,pos)*euler(1.57,0,0),5,mag*5,5,0.5,0,0.5,0.01)
so("http://roblox.com/asset/?id=183763515",hit,1,1) 
so("http://roblox.com/asset/?id=183763512",hit,1,1) 
end
end),Tors)
end
end
end
wait(1)
n=2
--[[for i=0,1,0.2 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.4+0.2*i*n,0,0)
RW.C0=cf(1+0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.4+0.17*i*n,0,-1.2+2.77*i*n)
LW.C0=cf(-1-0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.6-0.03*i*n,0,1.4-2.97*i*n)
n=n-0.2
end]]
charging=false
wait(1)
n=2
--[[for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i*n,0,1.57-1.37*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i*n,0,-1.57+1.37*i*n)
n=n-0.1
end]]
wait(6)
de=true
end
end

function Titanfall()
if de==true then
de=false
Humanoid.WalkSpeed=0
local n=2
for i=0,1,0.05 do
wait()
--[[cf4=6-2*i*n
cf5=2+2*i*n
cf6=-2*i*n
cf7=-6+2*i*n
cf8=2+2*i*n
cf9=-2*i*n
Neck.C0=cf(0,1,0)*euler(-0.2+0.8*i*n,0,0)
RW.C0=cf(1.5-0.5*i*n,0.5+0.5*i*n,-0.5*i*n)*euler(3.14*i*n,0,0.3-0.9*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.5*i*n,0.5+0.5*i*n,-0.5*i*n)*euler(3.14*i*n,0,-0.3+0.9*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.05]]
end
so("http://www.roblox.com/asset/?id=169445121",Torso,1,0.6) 
n=2
for i=0,1,0.2 do
wait()
MagicBlock(BrickColor.new("Really black"),RightArm.CFrame*cf(0,-5,0),30,30,30,2,2,2,0.1)
MagicBlock(BrickColor.new("Really black"),LeftArm.CFrame*cf(0,-5,0),30,30,30,2,2,2,0.1)
--cf11=-4+2*i*n
--cf12=-2*i*n
--cf5=4-4*i*n
--cf8=4-4*i*n
--RootJoint.C0=cf(0,-14.5+3*i*n,0)*euler(0,0,0)
--[[Neck.C0=cf(0,1,0)*euler(0.6-1*i*n,0,0)
RW.C0=cf(1,1-1*i*n,-0.5)*euler(3.14-2.64*i*n,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,1-1*i*n,-0.5)*euler(3.14-2.64*i*n,0,0.6)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1+0.5*i*n,-0.5*i*n)*euler(-0.1*i*n,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.6*i*n,0,0)
LH.C1=cf(0,1,0)]]
n=n-0.2
end
local cf2=RootPart.CFrame*cf(0,500,-20)
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf2
ref.Anchored=true
local TheHit=ref.Position+vt(0,-1,0)
local MouseLook=cf((ref.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(ref.Position,MouseLook.lookVector,999,Character)
local ref2=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref2.CFrame=cf(pos)
ref2.Anchored=true
local mag=(ref.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really black"),CFrame.new((ref.Position+pos)/2,pos)*angles(1.57,0,0),5,mag*5,5,1,0,1,0.05)
MagicCircle(BrickColor.new("Really black"),ref2.CFrame,15,15,15,8,8,8,0.02)
MagicBlock(BrickColor.new("Really black"),ref2.CFrame,15,15,15,3,3,3,0.02)
WaveEffect2(BrickColor.new("Really black"),ref2.CFrame,5,5,5,2,3,2,0.05)
MagicRing(BrickColor.new("Really black"),cf(ref2.Position)*euler(1.57,0,0),5,5,5,4,4,4,0.05)
MagniDamage(ref2,25,20,50,math.random(10,30),"Knockdown",ref2)
--so("http://roblox.com/asset/?id=144844438",ref2,1,0.8) 
so("http://roblox.com/asset/?id=87784452",ref2,1,0.8) 
so("http://roblox.com/asset/?id=183763515",ref2,1,0.8) 
game:GetService("Debris"):AddItem(ref,2)
game:GetService("Debris"):AddItem(ref2,2)
n=2
for i=0,1,0.1 do
wait()
--[[cf4=4+2*i*n
cf5=2*i*n
cf6=-2+2*i*n
cf7=-4-2*i*n
cf8=2*i*n
cf9=-2+2*i*n
cf11=-4+2-2*i*n
cf12=-2+2*i*n
RootJoint.C0=cf(0,-14.5+3-3*i*n,0)*euler(0,0,0)
Neck.C0=cf(0,1,0)*euler(-0.4+0.2*i*n,0,0)
RW.C0=cf(1+0.5*i*n,0.5*i*n,-0.5+0.5*i*n)*euler(0.5-0.5*i*n,0,-0.6+0.9*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1-0.5*i*n,0.5*i*n,-0.5+0.5*i*n)*euler(0.5-0.5*i*n,0,0.6-0.9*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-0.5-0.5*i*n,-0.5+0.5*i*n)*euler(-0.1+0.1*i*n,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.6+0.6*i*n,0,0)
LH.C1=cf(0,1,0)]]
n=n-0.1
end
Humanoid.WalkSpeed=16
de=true
end
end

function Darkstomp()
if de==true then
de=false
Humanoid.WalkSpeed=0
local n=2
for i=0,1,0.1 do
--[[wait()
cf11=-4+2*i*n
cf12=-2*i*n
--cf13=-2
--cf14=-4
--cf15=0
RootJoint.C0=cf(0,-14.5,0)*euler(0.2*i*n,0,0)
Neck.C0=cf(0,1,0)*euler(-0.2-0.4*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2*i*n,0,0.3)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i*n,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1+0.5*i*n,-0.5*i*n)*euler(0.2*i*n,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2*i*n,0,0)
LH.C1=cf(0,1,0)]]
n=n-0.1
end
so("http://www.roblox.com/asset/?id=169445046",RightLeg,1,0.6) 
local n=2
for i=0,1,0.2 do
wait()
--cf11=-2-2*i*n
--RH.C0=cf(0.5,-0.5-0.5*i*n,-0.5)*euler(0.2+0.1*i*n,0,0)
--RH.C1=cf(0,1,0)
n=n-0.2
end
MagicCylinder(BrickColor.new("Really black"),cf(RightLeg.Position+vt(0,-4,0)),10,4,10,5,3,5,0.05)
local numb=-8
local basecf=RootPart.CFrame
for i=1,4 do
local cf2=basecf*cf(0,0,numb)
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf2
ref.Anchored=true
local TheHit=ref.Position+vt(0,-1,0)
local MouseLook=cf((ref.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(ref.Position,MouseLook.lookVector,999,Character)
local ref2=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref2.CFrame=cf(pos)
ref2.Anchored=true
MagicCircle(BrickColor.new("Really black"),ref2.CFrame,15,15,15,8,8,8,0.02)
MagicWaveThing(BrickColor.new("Really black"),ref2.CFrame,5,5,5,2,2,2,0.05)
MagniDamage(ref2,20,20,30,math.random(5,20),"Normal",RootPart)
so("http://www.roblox.com/asset/?id=161006093",ref2,1,0.6) 
game:GetService("Debris"):AddItem(ref,2)
game:GetService("Debris"):AddItem(ref2,2)
numb=numb-15
wait(0.4)
end
--wait(1)
local n=2
for i=0,1,0.1 do
wait()
--[[cf12=-2+2*i*n
RootJoint.C0=cf(0,-14.5,0)*euler(0.2-0.2*i*n,0,0)
Neck.C0=cf(0,1,0)*euler(-0.6+0.4*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+0.2*i*n,0,0.3)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i*n,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1,-0.5+0.5*i*n)*euler(0.3-0.3*i*n,0,0)
RH.C1=cf(0,1,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2+0.2*i*n,0,0)
LH.C1=cf(0,1,0)]]
n=n-0.1
end
Humanoid.WalkSpeed=16
de=true
end
end















 
function KaltosBeat()

end
 
function EnergyTranscend()

end
 
function TranscendAttack()

end
 
function NegConvert()

end
 
function KaltosWave()

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

function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function WaveEffect2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1323306",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
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
if key=="r" then
Terrorblast()
end
if key=="q" then
Nocturn()
end
if key=="e" then
Darkrain()
end
if key=="x" then
Titanfall()
end
if key=="c" then
Darkstomp()
end
if key=="v" then
so("http://www.roblox.com/asset/?id=203691282",Player.Character.Torso,1,1)
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
print("Vanta powers activated.")
 
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
	return
end
end
--if orbdelay>=5 then
--end
--orbdelay=orbdelay+1
circlenum=circlenum+0.1
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
if Mode=="Normal" then

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

Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.3,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.5,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
else

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