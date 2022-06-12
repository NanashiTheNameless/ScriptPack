script:ClearAllChildren()
 
loadstring(_G[" rmdx "])()
 
 
Player=game:GetService("Players").LocalPlayer
 
Char=Player.Character
 
Backpack=Player.Backpack
 
PlayerGui=Player.PlayerGui
 
Torso=Char.Torso
 
Head=Char.Head
 
Hum=Char.Humanoid
 
Cam=workspace.CurrentCamera
 
Tn="Rocket Launcher"
 
 
pcall(function() Backpack[Tn]:Remove() end)
 
pcall(function() Cam[Tn]:Remove() end)
 
pcall(function() thesuit=Char[''] end)
 
pcall(function() thesuit[Tn]:Remove() end)
 
pcall(function() PlayerGui[Tn]:Remove() end)
 
 
CModel=qi{'Model',Cam,Name=Tn}
 
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
 
Suit=qi{'Model',Char,Name=''}
 
Weapon=qi{'Model',Suit,Name=Tn}
 
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}
 
 
Mode="Normal"
 
equip="unequipped"
 
anim=""
 
keys={}
 
fmouse=nil
 
Gyr0z=false
 
LastShot=0
 
 
ids = {}
 
ids.Shoot = 2691586
 
ids.Shoot2 = 10209842
 
ids.Ring =  3270017
 
ids.Fire = 10209821
 
ids.Crown = 20329976
 
ids.Crown2 = 1323306
 
ids.Icon = 52611635
 
ids.Spike = 1033714
 
ids.Hit = 10209590
 
ids.Explode = 2697431
 
ids.Rocket = 103970395
 
 
for i,v in pairs(ids) do
 
if type(v)=='number' then
 
ids[i]='http://www.roblox.com/asset/?id='..v
 
end
 
end
 
 
Limbs={LS=Torso:findFirstChild'Left Shoulder',RS=Torso:findFirstChild'Right Shoulder',LH=Torso:findFirstChild'Left Hip',RH=Torso:findFirstChild'Right Hip'}
 
if _G.Limbz then
 
Limbs.LS=Limbs.LS or _G.Limbz.LS
 
Limbs.RS=Limbs.RS or _G.Limbz.RS
 
Limbs.LH=Limbs.LH or _G.Limbz.LH
 
Limbs.RH=Limbs.RH or _G.Limbz.RH
 
end
 
_G.Limbz=Limbs
 
Torso.Neck.C0=cn(0,1.5,0) Torso.Neck.C1=cn(0,0,0)
 
c2(Torso.Neck,1,3,0,1.5,0,0,0,0)
 
LS,RS,LH,RH=Limbs.LS,Limbs.RS,Limbs.LH,Limbs.RH
 
LA,RA,LL,RL=Char['Left Arm'],Char['Right Arm'],Char['Left Leg'],Char['Right Leg']
 
LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso
 
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL
 
 
pcall(function() thesuit:Remove() end)
 
 
pcall(function() Head.face.Transparency=0 end)
 
Head.Transparency=0.99 Torso.Transparency=1
 
fTorso=pa(Suit,"FTorso","Block",2,2,1,false,false,0,0,Torso.BrickColor.Name) neck=Torso.Neck
 
tw=weld(fTorso,Torso,fTorso,0,0,0,0,0,0) qi{"BlockMesh",fTorso}
 
fHead=pa(Suit,"FHead","Block",2,1,1,false,false,0,0,Head.BrickColor.Name)
 
hw=weld(fHead,fTorso,fHead,0,1.5,0,0,0,0) qi{"SpecialMesh",fHead,Scale=v3(1.15,1.15,1.15)} Head.face:Clone().Parent=fHead Head.face.Transparency=1
 
la=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',fTorso,Part0=fTorso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
 
ll=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',fTorso,Part0=fTorso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
 
newhats(Char,fHead,Head) ClearClass(Char,"Hat") Hum.MaxHealth=200 Hum.Health=Hum.MaxHealth
 
 
Armz=false
 
Legz=false
 
Arms = function(on) Armz=on
 
if on then
 
LS.Part1=nil RS.Part1=nil
 
la.Part0=fTorso ra.Part0=fTorso
 
la.Part1=LA ra.Part1=RA
 
la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0)
 
ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
 
else
 
LS.Parent,RS.Parent=fTorso,fTorso LS.Part0=fTorso RS.Part0=fTorso LS.Part1=LA RS.Part1=RA
 
la.Part1=nil ra.Part1=nil
 
end
 
end
 
 
Legs = function(on) Legz=on
 
if on then
 
LH.Part1=nil RH.Part1=nil
 
ll.Part0=fTorso rl.Part0=fTorso
 
ll.Part1=LL rl.Part1=RL
 
ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0)
 
rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
 
else
 
LH.Parent,RH.Parent=fTorso,fTorso LH.Part0=fTorso RH.Part0=fTorso LH.Part1=LL RH.Part1=RL
 
ll.Part1=nil rl.Part1=nil
 
end
 
end
 
Arms'' Legs''
 
 
WDesign=function()
 
hp=pa(Weapon,"","Block",0,0,0,false,false,1,0) haw=weld(hp,Torso,hp,1,1,0.6,rd(180),0,rd(90))
 
ha=pa(Weapon,"","Block",0.25,0.9,0.4,false,false,0,0,"Br. yellowish orange") weld(ha,hp,ha,0,0,0,0,rd(90),0)
 
p=pa(Weapon,"","Block",0.35,0.5,0.45,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,0.45+0.25,0,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.35,0.4,0.8,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,0.9+0.25,-0.175,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.35,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,1.05,0.325,rd(180),0,0) qi{'SpecialMesh',p,MeshType="Wedge"}
 
p=pa(Weapon,"","Block",0.35,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,1.25,0.325,0,0,0) qi{'BlockMesh',p}
 
tr=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,"Dark stone grey") weld(tr,ha,tr,0,0.8,-0.35,0,rd(90),0) qi{'SpecialMesh',tr,MeshId=ids.Ring,Scale=v3(0.4,0.4,1)}
 
p=pa(Weapon,"","Block",0.2,0.25,0.2,false,false,0,0,"Dark stone grey") weld(p,tr,p,-0.15,0,0,0,0,rd(10)) qi{'BlockMesh',p,Scale=v3(1,1,0.5)}
 
bp=pa(Weapon,"","Block",0.7,2.5,0.7,false,false,0,0,"Dark stone grey") weld(bp,ha,bp,0,1.6,-0.5-0.125,rd(90),0,0) qi{'CylinderMesh',bp}
 
p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Br. yellowish orange") weld(p,bp,p,0,1.25,0,rd(180),0,0) qi{'SpecialMesh',p,Scale=v3(0.4,4,0.4),MeshId=ids.Spike}
 
p=pa(Weapon,"","Block",0.9,0.2,0.9,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,2.7,0,0,0,0) qi{'CylinderMesh',p}
 
p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Br. yellowish orange") weld(p,bp,p,0,3.1,0,0,0,0) qi{'SpecialMesh',p,Scale=v3(0.4,1,0.4),MeshId=ids.Spike}
 
p=pa(Weapon,"","Block",0.6,0.5,0.6,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,3.35,0,0,0,0) qi{'CylinderMesh',p}
 
p=pa(Weapon,"","Block",0.7,0.2,0.7,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,3.25,0,0,0,0) qi{'CylinderMesh',p,Scale=v3(1,0.5,1)}
 
p=pa(Weapon,"","Block",0.7,0.2,0.7,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,3.45,0,0,0,0) qi{'CylinderMesh',p,Scale=v3(1,0.5,1)}
 
for i=0,360,360/10 do
 
local p=pa(Weapon,"","Block",0.2,1,0.5,false,false,0,0,"Dark stone grey") local pw=weld(p,bp,p,0,0,0,0,0,0) qi{'BlockMesh',p,Scale=v3(0.5,1,1)}pw.C0=cn(0,3.9,0)*ca(0,rd(i),0)*cn(0.5,0,0)*ca(0,0,rd(-35))
 
local p=pa(Weapon,"","Block",0.3,0.2,0.7,false,false,0,0,"Dark stone grey") local pw=weld(p,bp,p,0,0,0,0,0,0) qi{'BlockMesh',p,Scale=v3(1,0.5,1)}pw.C0=cn(0,4.3,0)*ca(0,rd(i),0)*cn(0.9,0,0)
 
end
 
bar=pa(Weapon,"","Block",0.65,1.2,0.65,false,false,0,0,"Dark stone grey") weld(bar,bp,bar,0,-1.5,0,0,0,0) qi{'CylinderMesh',bar}
 
p=pa(Weapon,"","Block",0.45,1,0.45,false,false,0,0,"Really black") weld(p,bar,p,0,-0.6,0,0,0,0) qi{'CylinderMesh',p,Scale=v3(1,0.02,1)}
 
p=pa(Weapon,"","Block",0.25,1.5,0.4,false,false,0,0,"Br. yellowish orange") weld(p,ha,p,0,0.3,-1.8,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.35,0.5,0.9,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,1.1,-1.8,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.2,0.3,0.4,false,false,0,0,"Dark stone grey") weld(p,bar,p,-0.1,0,-0.3,rd(90),0,0) qi{'BlockMesh',p}
 
pb=pa(Weapon,"","Block",0.3,0.2,0.5,false,false,0,0,"Dark stone grey") weld(pb,bar,pb,-0.1,0,-0.5,rd(-90),0,0) qi{'BlockMesh',pb,Scale=v3(1,0.5,1)}
 
p=pa(Weapon,"","Block",0.2,0.3,0.5,false,false,0,0,"Dark stone grey") weld(p,pb,p,-0.125,0.2,0,0,0,0) qi{'SpecialMesh',p,MeshType="Wedge",Scale=v3(0.25,1,1)}
 
p=pa(Weapon,"","Block",0.2,0.3,0.5,false,false,0,0,"Dark stone grey") weld(p,pb,p,0.125,0.2,0,0,0,0) qi{'SpecialMesh',p,MeshType="Wedge",Scale=v3(0.25,1,1)}
 
p=pa(Weapon,"","Block",0.25,0.6,0.2,false,false,0,0,"Dark stone grey") weld(p,pb,p,0,0.2,0,rd(-15),0,0) qi{'BlockMesh',p,Scale=v3(1,1,0.25)}
 
p=pa(Weapon,"","Block",0.25,0.3,0.2,false,false,0,0,"Dark stone grey") weld(p,pb,p,0,0.6,0,rd(25),0,0) qi{'BlockMesh',p,Scale=v3(1,1,0.25)}
 
p=pa(Weapon,"","Block",0.3,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,bp,p,0.4,-0.75,0,0,0,0) qi{'BlockMesh',p,Scale=v3(1,0.5,0.5)}
 
p=pa(Weapon,"","Block",0.3,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,bp,p,0.4,0.75,0,0,0,0) qi{'BlockMesh',p,Scale=v3(1,0.5,0.5)}
 
pl=pa(Weapon,"","Block",0.2,2,0.7,false,false,0,0,"Dark stone grey") weld(pl,bp,pl,0.6,0,0,0,0,0) qi{'BlockMesh',pl,Scale=v3(0.5,1,1)}
 
p=pa(Weapon,"","Block",0.2,2,0.6,false,false,0,0,"Dark stone grey") weld(p,pl,p,-0.275,0,-0.5,0,rd(60),0) qi{'BlockMesh',p,Scale=v3(0.5,1,1)}
 
for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end
 
end
 
 
WDesign()
 
Arms(false) Legs(false)
 
 
Dealt={20,70}
 
BBD,BBT=0,{}
 
 
function Destroy(Directory,Part,Distance)
 
for i,v in pairs(Directory:GetChildren()) do
 
if v:IsA("BasePart") and not GetHum(v) and v.Parent.Name~=Tn and v.Parent.Name~=Suit.Name then
 
if (Part.Position-v.Position).magnitude<=Distance and v:GetMass()<=1000 then
 
v.Anchored=false
 
v:BreakJoints()
 
v.CFrame=cn(v.Position,Part.Position)*ca(0,rd(180),0)
 
v.Velocity=cn(Part.Position,v.Position).lookVector*50
 
end
 
elseif v:IsA("Model") or v:IsA("Script") then
 
Destroy(v,Part,Distance)
 
end
 
end
 
end
 
 
SplashDmg=function(Part,Distance)
 
q(function()
 
so(ids.Explode,Part,1,0.4)
 
qi{"Explosion",workspace,Position=Part.Position,BlastPressure=0}
 
for i,v in pairs(workspace:GetChildren()) do
 
if v:FindFirstChild("Torso",true) then
 
local vTorso=v:FindFirstChild("Torso",true)
 
if (vTorso.Position-Part.Position).magnitude<=Distance then
 
local vHum=GetHum(vTorso)
 
if not vHum or BBD==0 or BBT[vHum.Parent] then return end
 
BBT[vHum.Parent]=1
 
if rn(1,20)==1 then
 
Dmg(vHum,rn(Dealt[1],Dealt[2])*3)
 
else
 
Dmg(vHum,rn(Dealt[1],Dealt[2]))
 
end
 
if BBD==2 and vTorso then
 
vHum.PlatformStand=true
 
if vHum.Jump then
 
AddBV(140,cn(Part.Position,vTorso.Position),vTorso,0.3)
 
else
 
AddBV(110,cn(Part.Position,vTorso.Position),vTorso,0.3)
 
end
 
if vTorso.Parent~=Char then
 
AddBAV(v3(rn(-25,25),rn(-25,25),rn(-25,25)),vTorso,0.4)
 
end
 
q(function()
 
wait(0.4)
 
vHum.PlatformStand=false
 
end)
 
end
 
so(ids.Hit,vTorso,1,1)
 
BBT[vHum.Parent]=nil
 
end
 
end
 
end
 
end)
 
end
 
 
Fire = function(speed,sc,cff,dest)
 
q(function()
 
bb = pa(workspace,"bullet","Block",0.5*sc,2.8*sc,0.5*sc,false,true,0,0,"Black") qi{"SpecialMesh",bb,MeshId=ids.Rocket} bb.CanCollide=false
 
bb.CFrame = cn(cff.p,dest)
 
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown,Scale=v3(0.5,0.5,0.5)}  weld(m,bar,m,0,-0.825,0.05,rd(180),0,0) fade(m,0.2)
 
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown2,Scale=v3(0.4,0.7,0.4)} weld(m,bar,m,0,-1,0,rd(180),0,0) fade(m,0.2)
 
so(ids.Fire,ha,1,1)
 
for i=1,100 do
 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,0,2)).p)
 
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bhit.Name~="muzzle" and bpos and (bpos - bb.Position).magnitude < speed then break end
 
bb.CFrame=bb.CFrame*cn(0,0,-speed)
 
GlowMesh(false,"block",Weapon,v3(1,1,1),"Bright red",bb.CFrame*cn(rn(-5,5),rn(-5,5),rn(1,3))*ca(rn(-5,5),rn(-5,5),rn(-5,5)),0.1,1,0.07)
 
wait()
 
end
 
local Surface = DetectSurface(bpos,bhit)
 
local C = cn(bpos) * ca(bhit.CFrame:toEulerAnglesXYZ()) * Surface[2]
 
if Surface[1] == "Anything" then C = Surface[2] end
 
GlowMesh(false,ids.Crown,Weapon,v3(6,4,6),"Bright orange",C*cn(0,1.5,0),0.25,1,0.05)
 
GlowMesh(false,ids.Crown2,Weapon,v3(6,4,6),"Bright orange",C*cn(0,1.5,0),0.25,1,0.05)
 
BBD=2
 
bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
 
SplashDmg(bb,12)
 
Destroy(workspace,bb,12)
 
BBD=0
 
game:GetService("Debris"):AddItem(bb,1)
 
end)
 
end
 
 
function Stance(speed)
 
c2(ra,speed,3,1.25,0.5,-0.25,-90,-65,0)
 
c2(la,speed,3,-1.25,0.5,-0.25,-90,-20,0)
 
c2(ll,speed,3,-0.5,-1,0,0,0,0)
 
c2(rl,speed,3,0.5,-1,0,0,0,0)
 
c2(hw,speed,3,0,1.5,0,0,-65,0)
 
c2(tw,speed,3,0,0,0,0,65,0)
 
c2(neck,speed,3,0,1.5,0,0,0,0)
 
Ani(haw,0,-1,0.8,-90,-90,0,0,speed,1)
 
end
 
 
function Reset(speed)
 
c2(ra,speed,3,1.5,0.5,0,0,0,0)
 
c2(la,speed,3,-1.5,0.5,0,0,0,0)
 
c2(ll,speed,3,-0.5,-1,0,0,0,0)
 
c2(rl,speed,3,0.5,-1,0,0,0,0)
 
c2(hw,speed,3,0,1.5,0,0,0,0)
 
c2(tw,speed,3,0,0,0,0,0,0)
 
c2(neck,speed,3,0,1.5,0,0,0,0)
 
Ani(haw,1,1,0.6,180,0,90,0,speed,1)
 
end
 
 
function Button1Down()
 
if equip=="equipped" and anim=="" and (tick()-LastShot)>=0.8 and Hum.Health>0 then
 
LastShot=tick()
 
Fire(4,1,bar.CFrame*cn(0,-2,0),fmouse.Hit.p)
 
end
 
end
 
 
function KeyDown(key)
 
key=key:lower()
 
keys[key]=true
 
end
 
 
function KeyUp(key)
 
key=key:lower()
 
keys[key]=false
 
end
 
 
function Move()
 
if equip=="equipped" and anim=="" then
 
c2(ra,1,3,1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
c2(la,1,3,-1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)
 
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
end
 
if Gyr0z then
 
Gyro.maxTorque=v3(1/0,1/0,1/0)
 
Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z))
 
else
 
Gyro.maxTorque = v3(0,0,0)
 
end
 
end
 
 
Tool.Selected:connect(function(mouse)
 
fmouse=mouse Gyr0z=true
 
if equip=="unequipped" and anim=="" then
 
equip="equipping" Arms(true) c2(la,0.1,3,-1.5,0.5,0,0,0,20) c1(ra,0.1,3,1.5,0.5,0,-210,0,-10)
 
local ofs = RA.CFrame:toObjectSpace(hp.CFrame)
 
haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
 
Stance(0.1) equip="equipped"
 
end
 
mouse.Button1Down:connect(Button1Down)
 
mouse.KeyDown:connect(KeyDown)
 
mouse.KeyUp:connect(KeyUp)
 
mouse.Move:connect(Move)
 
end)
 
 
Tool.Deselected:connect(function()
 
fmouse=nil Gyr0z=false
 
if equip=="equipped" and anim=="" then
 
equip="unequipping" c2(la,0.1,3,-1.5,0.5,0,0,0,0) c1(ra,0.1,3,1.5,0.5,0,-210,0,-10)
 
local ofs = Torso.CFrame:toObjectSpace(hp.CFrame)
 
haw.Part0=Torso haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
 
Reset(0.1)
 
Arms(false) Legs(false) equip="unequipped"
 
end
 
end)
 
 
Gyro=qi{"BodyGyro",Torso,D=50,P=1500}
 
game:GetService("RunService").Stepped:connect(function()
 
if equip=="equipped" and anim=="" then
 
c2(ra,1,3,1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
c2(la,1,3,-1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)
 
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
end
 
if Gyr0z then
 
Gyro.maxTorque=v3(1/0,1/0,1/0)
 
Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z))
 
else
 
Gyro.maxTorque = v3(0,0,0)
 
end
 
end)