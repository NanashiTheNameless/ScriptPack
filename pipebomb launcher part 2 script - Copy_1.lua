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
Tn="Pipebomb Launcher"
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
equip="unequipped"
anim=""
keys={}
fmouse=nil
PipeRotate=0
Clip=6
LastShot=0
ids = {}
ids.Shoot = 10209633
ids.Reload = 10209636
ids.Crown = 20329976
ids.Crown2 = 1323306
ids.Icon = 52611635
ids.Explode = 2697431
ids.Ring =  3270017 
for i,v in pairs(ids) do 
if type(v)=='number' then 
ids[i]='http://www.roblox.com/asset/?id='..v
end
game:GetService("ContentProvider"):Preload(ids[i])
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
Head.face.Transparency=0 
Head.Transparency=1 Torso.Transparency=1
fTorso=pa(Suit,"FTorso","Block",2,2,1,false,false,0,0,Torso.BrickColor.Name) neck=Torso.Neck
tw=weld(fTorso,Torso,fTorso,0,0,0,0,0,0) qi{"BlockMesh",fTorso}
fHead=pa(Suit,"FHead","Block",2,1,1,false,false,0,0,Head.BrickColor.Name)
hw=weld(fHead,fTorso,fHead,0,1.5,0,0,0,0) qi{"SpecialMesh",fHead,Scale=v3(1.15,1.15,1.15)} Head.face:Clone().Parent=fHead Head.face.Transparency=1
la=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',fTorso,Part0=fTorso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
ll=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',fTorso,Part0=fTorso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
newhats(Char,fHead,Head) ClearClass(Char,"Hat") Hum.WalkSpeed=16 Hum.MaxHealth=175
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
WDesign=function(c)
ha=pa(Weapon,"","Block",0.2,0.5,1,false,false,0,0,c[1]) haw=weld(ha,Torso,ha,0.5,2.5,1,rd(270),0,rd(90))
gp=pa(Weapon,"","Block",0.2,1,0.2,false,false,0,0,c[1]) weld(gp,ha,gp,0,-0.35,0,rd(-90),0,0) qi{'SpecialMesh',gp,MeshType='Wedge'}
gp=pa(Weapon,"","Block",0.2,0.7,0.2,false,false,0,0,c[2]) weld(gp,ha,gp,0,-0.1,0.55,0,0,0) qi{'BlockMesh',gp,Scale=v3(1,1,0.5)}
gp=pa(Weapon,"","Block",0.2,0.5,0.5,false,false,0,0,c[1]) weld(gp,ha,gp,0,-0.115,-0.5,rd(45),0,0)
gp=pa(Weapon,"","Block",0.2,0.5,1,false,false,0,0,c[1]) weld(gp,ha,gp,0,-0.1,-0.95,rd(15),0,0)
gpp=pa(Weapon,"","Block",0.21,0.6,0.3,false,false,0,0,c[3]) weld(gpp,ha,gpp,0,0,-1.5,0,0,0)
gp=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(gp,gpp,gp,0,-0.4,0.05,0,rd(90),0) qi{'SpecialMesh',gp,MeshId=ids.Ring,Scale=v3(0.35,0.35,1)}
gp=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(gp,gpp,gp,0,-0.4,0.05,rd(10),rd(90),0) qi{'BlockMesh',gp,Scale=v3(0.25,1,0.25)}
gp1=pa(Weapon,"","Block",1.2,0.2,1.2,false,false,0,0,c[3]) weld(gp1,gpp,gp1,0,-0.25,-0.2,rd(90),0,0) qi{'CylinderMesh',gp1}
p1=pa(Weapon,"","Block",0.4,1.3,0.2,false,false,0,0,c[3]) weld(p1,gp1,p1,0,0,0.1,rd(90),0,0)
p2=pa(Weapon,"","Block",0.2,0.4,0.2,false,false,0,0,c[3]) weld(p2,p1,p2,0,1.3/2,0,0,0,rd(90)) qi{'CylinderMesh',p2}
hinge=pa(Weapon,"","Block",0.2,0.4,0.2,false,false,0,0,c[4]) hingew=weld(hinge,p2,hinge,0,0,0,0,rd(0),0) qi{'CylinderMesh',hinge,Scale=v3(0.6,1.001,0.6)}
p3=pa(Weapon,"","Block",0.4,0.3,0.2,false,false,0,0,c[3]) weld(p3,p1,p3,0,-1.3/2,0,0,0,0) qi{'BlockMesh',p3}
p4=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p4,p3,p4,0.15,-0.2,0,0,0,0) qi{'BlockMesh',p4,Scale=v3(0.5,1,1)}
p5=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p5,p3,p5,-0.15,-0.2,0,0,0,0) qi{'BlockMesh',p5,Scale=v3(0.5,1,1)}
p6=pa(Weapon,"","Block",0.4,0.2,0.7,false,false,0,0,c[3]) weld(p6,hinge,p6,0,0,0.35,0,0,rd(-90)) qi{'BlockMesh',p6,Scale=v3(1,0.5,1)}
p7=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[3]) weld(p7,p6,p7,0,0,0.55,rd(180),0,0) qi{'SpecialMesh',p7,Scale=v3(1,0.5,1),MeshType="Wedge"}
p8=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[3]) weld(p8,p7,p8,0,-0.15,0,rd(180),0,0) qi{'SpecialMesh',p8,MeshType="Wedge"}
p9=pa(Weapon,"","Block",0.4,0.2,0.3,false,false,0,0,c[3]) weld(p9,p8,p9,0,0,0.35,0,0,0) qi{'BlockMesh',p9}
p10=pa(Weapon,"","Block",0.4,0.2,0.3,false,false,0,0,c[3]) weld(p10,p9,p10,0,0,0.3,0,rd(180),0) qi{'SpecialMesh',p10,MeshType="Wedge"}
p11=pa(Weapon,"","Block",0.4,0.2,0.3,false,false,0,0,c[3]) weld(p11,p10,p11,0,-0.2,0,0,0,0) qi{'BlockMesh',p11}
p12=pa(Weapon,"","Block",0.3,0.2,0.3,false,false,0,0,c[3]) weld(p12,p11,p12,0.35,0,0,0,rd(-90),0) qi{'SpecialMesh',p12,MeshType="Wedge"}
p13=pa(Weapon,"","Block",0.3,0.2,0.3,false,false,0,0,c[3]) weld(p13,p11,p13,-0.35,0,0,0,rd(90),0) qi{'SpecialMesh',p13,MeshType="Wedge"}
p14=pa(Weapon,"","Block",1.5,0.3,1.5,false,false,0,0,c[3]) weld(p14,p11,p14,0,-0.7,0,rd(90),0,0) qi{'CylinderMesh',p14}
p15=pa(Weapon,"","Block",1.3,0.2,1.3,false,false,0,0,c[2]) weld(p15,p14,p15,0,0.25,0,0,0,0) qi{'CylinderMesh',p15}
p16=pa(Weapon,"","Block",0.2,1.4,0.2,false,false,0,0,c[2]) piperw=weld(p16,p15,p16,0,0.7,0,0,rd(30),0) qi{'CylinderMesh',p16}
for i=0,360,360/6 do 
p16p=pa(Weapon,"","Block",0.5,1.1,0.5,false,false,0,0,c[2]) p16pw=weld(p16p,p16,p16p,0,0,0,0,0,0) qi{'CylinderMesh',p16p} p16pw.C0=cn(0,-0.05,0)*ca(0,rd(i),0)*cn(0.4,0,0) 
p16p=pa(Weapon,"","Block",0.3,0.2,0.3,false,false,0,0,c[5]) p16pw=weld(p16p,p16,p16p,0,0,0,0,0,0) qi{'CylinderMesh',p16p,Scale=v3(1,0.1,1)} p16pw.C0=cn(0,0.5,0)*ca(0,rd(i),0)*cn(0.4,0,0) 
p16p=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[2]) p16pw=weld(p16p,p16,p16p,0,0,0,0,0,0) qi{'CylinderMesh',p16p,Scale=v3(1,0.1,1)} p16pw.C0=cn(0,0.51,0)*ca(0,rd(i),0)*cn(0.4,0,0) 
end
p17=pa(Weapon,"","Block",0.2,0.2,0.3,false,false,0,0,c[3]) weld(p17,p14,p17,0,0,0.75,rd(90),rd(180),0) qi{'SpecialMesh',p17,MeshType="Wedge",Scale=v3(1,1,1)}
p18=pa(Weapon,"","Block",0.2,0.2,1.5,false,false,0,0,c[3]) weld(p18,p17,p18,0,0.05,0.9,0,0,0) qi{'BlockMesh',p18,Scale=v3(1,0.5,1)}
p19=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p19,p18,p19,0,0.1,0,0,0,0) qi{'SpecialMesh',p19,Scale=v3(0.5,0.5,1),MeshType="Wedge"}
p20=pa(Weapon,"","Block",0.2,0.2,0.3,false,false,0,0,c[3]) weld(p20,p19,p20,0,0,0.25,0,0,0) qi{'BlockMesh',p20,Scale=v3(0.5,0.5,1)}
p21=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p21,p20,p21,0,0,0.175,0,rd(180),0) qi{'SpecialMesh',p21,Scale=v3(0.5,0.5,0.25),MeshType="Wedge"}
p22=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[4]) weld(p22,p20,p22,0,0,0.05,0,0,rd(90)) qi{'CylinderMesh',p22,Scale=v3(0.25,0.51,0.25)}
p23=pa(Weapon,"","Block",0.75,0.8,0.75,false,false,0,0,c[2]) weld(p23,p14,p23,0,0.1,0.3,0,0,0) qi{'SpecialMesh',p23} -- start of barrel
p24=pa(Weapon,"","Block",0.6,1.8,0.6,false,false,0,0,c[2]) weld(p24,p23,p24,0,-0.9,0,0,0,0) qi{'CylinderMesh',p24}
p25=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[6]) weld(p25,p24,p25,0,-0.9,0,0,0,0) qi{'CylinderMesh',p25,Scale=v3(1,0.1,1)}
p26=pa(Weapon,"","Block",0.65,0.2,0.65,false,false,0,0,c[3]) weld(p26,p24,p26,0,-0.4,0,0,0,0) qi{'CylinderMesh',p26,Scale=v3(1,1,1)}
p26=pa(Weapon,"","Block",0.6,0.4,0.8,false,false,0,0,c[1]) weld(p26,p24,p26,0,0.17,-0.4,rd(90),0,0)
p27=pa(Weapon,"","Block",0.6,0.4,0.4,false,false,0,0,c[1]) weld(p27,p26,p27,0,0,0.6,rd(180),0,0) qi{'SpecialMesh',p27,MeshType="Wedge"}
for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end
end
WDesign({"Reddish brown","Really black","Dark stone grey","White","Medium stone grey","Really black"}) Arms(false) Legs(false)
BBD,BBT=0,{}
Dealt={20,40}
function Destroy(Directory,Part,Distance) 
for i,v in pairs(Directory:GetChildren()) do 
if v:IsA("BasePart") and not GetHum(v) and v.Parent.Name~=Tn and v.Parent.Name~=Suit.Name and v.Name~="Ignore" and v.Name~="Base" then 
if (Part.Position-v.Position).magnitude<=Distance and v:GetMass()<=1000 then
v.Anchored=false
v:BreakJoints()
v.CFrame=cn(v.Position,Part.Position)*ca(0,rd(180),0) 
v.Velocity=cn(Part.Position,v.Position).lookVector*50
end
elseif v:IsA("Model") or v:IsA("Script") or v:IsA("BasePart") and v.Name=="Base" then 
Destroy(v,Part,Distance) 
end 
end
end
SplashDmg=function(Part,Distance)
q(function()
qi{"Explosion",workspace,Position=Part.Position,BlastPressure=0}
for i,v in pairs(workspace:GetChildren()) do
if v:FindFirstChild("Torso",true) then
local vTorso=v:FindFirstChild("Torso",true)
if (vTorso.Position-Part.Position).magnitude<=Distance then
local vHum=GetHum(vTorso)
if not vHum or BBD==0 or BBT[vHum.Parent] then return end
BBT[vHum.Parent]=1
if rn(1,20)==1 then
Dmg(vHum,rn(Dealt[1],Dealt[2])*3,true)
else
Dmg(vHum,rn(Dealt[1],Dealt[2]),false)
end
if BBD==2 and vTorso then 
vHum.PlatformStand=true
if vHum.Jump then
AddBV(120,cn(Part.Position,vTorso.Position),vTorso,0.4) 
else
AddBV(100,cn(Part.Position,vTorso.Position),vTorso,0.4) 
end
if vTorso.Parent~=Char then
AddBAV(v3(rn(-50,50),rn(-50,50),rn(-50,50)),vTorso,0.4)
end
q(function()
wait(0.6)
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
local bb = pa(workspace,"bullet","Block",0.4*sc,0.6*sc,0.4*sc,false,true,0,0,"Bright red") bb.CanCollide=false qi{"CylinderMesh",bb} 
local pp0 = pa(bb,"bullet","Block",0.2*sc,0.2*sc,0.2*sc,false,true,0,0,"Bright red") pp0.CanCollide=false qi{"SpecialMesh",pp0,MeshType="Sphere",Scale=v3(2,2,2)} 
local pp1 = pa(bb,"bullet","Block",0.2*sc,0.2*sc,0.2*sc,false,true,0,0,"Really black") pp1.CanCollide=false qi{"CylinderMesh",pp1,Scale=v3(2.02,0.25,2.02)} 
local pp2 = pa(bb,"bullet","Block",0.2*sc,0.2*sc,0.2*sc,false,true,0,0,"Really black") pp2.CanCollide=false qi{"CylinderMesh",pp2,Scale=v3(2.02,2,2.02)} 
bb.CFrame = cn(cff.p,dest)*ca(rd(-90),0,0)
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown,Scale=v3(0.5,0.5,0.5)}  weld(m,p25,m,0,-0.6,0.05,rd(180),0,0) fade(m,0.2)
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown2,Scale=v3(0.4,0.7,0.4)} weld(m,p25,m,0,-0.8,0,rd(180),0,0) fade(m,0.2)
for i=1,100 do 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-2,0)).p)
bhit2,bpos2=ray(pp0.Position,pp0.Position - (pp0.CFrame *cn(0,-2,0)).p)
bhit3,bpos3=ray(pp1.Position,bb.Position - (pp1.CFrame *cn(0,-2,0)).p)
bhit4,bpos4=ray(pp2.Position,pp0.Position - (pp2.CFrame *cn(0,-2,0)).p)
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bhit.Name~="muzzle" and bpos and (bpos - bb.Position).magnitude < speed then break end
if bhit2 and bhit2.Name ~= "bullet" and bhit2.Name ~= "bullethole" and bhit2.Name~="muzzle" and bpos2 and (bpos2 - bb.Position).magnitude < speed then break end
if bhit3 and bhit3.Name ~= "bullet" and bhit3.Name ~= "bullethole" and bhit3.Name~="muzzle" and bpos3 and (bpos3 - bb.Position).magnitude < speed then break end
if bhit4 and bhit4.Name ~= "bullet" and bhit4.Name ~= "bullethole" and bhit4.Name~="muzzle" and bpos4 and (bpos4 - bb.Position).magnitude < speed then break end
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.3),0,0)
pp0.CFrame=bb.CFrame*cn(0,0.3,0)
pp1.CFrame=bb.CFrame*cn(0,-0.3,0)
pp2.CFrame=bb.CFrame*cn(0,0.1,0)
wait()
end 
GlowMesh(false,"sphere",Weapon,v3(3,3,3),"Bright red",cn(bpos),0.25,1,0.05)
BBD=2
sopart=pa(workspace,"bullet","Block",0,0,0,true,true,1,0)
bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
pp0.CFrame=bb.CFrame*cn(0,0.3,0)
pp1.CFrame=bb.CFrame*cn(0,-0.3,0)
pp2.CFrame=bb.CFrame*cn(0,0.1,0)
sopart.CFrame=bb.CFrame
so(ids.Explode,sopart,1,0.4)
SplashDmg(bb,11)
Destroy(workspace,bb,13)
BBD=0
deb:AddItem(bb,1)
deb:AddItem(sopart,1)
end) 
end 
function Stance(speed)
c2(ra,speed,3,1.25,0.5,-0.25,-75,-65,0)
c2(la,speed,3,-1.25,0.5,-0.25,-70,-20,0)
c2(ll,speed,3,-0.5,-1,0,0,0,0)
c2(rl,speed,3,0.5,-1,0,0,0,0)
c2(hw,speed,3,0,1.5,0,0,-65,0)
c2(tw,speed,3,0,0,0,0,65,0)
c2(neck,speed,3,0,1.5,0,0,0,0)
c2(hingew,speed,3,0,0,0,0,0,0)
c2(piperw,speed,3,0,0.7,0,0,30+PipeRotate,0)
Ani(haw,0,0.5,0,-75,0,0,0,speed/2,1)
end
function Reset(speed)
c2(ra,speed,3,1.5,0.5,0,0,0,0)
c2(la,speed,3,-1.5,0.5,0,0,0,0)
c2(ll,speed,3,-0.5,-1,0,0,0,0)
c2(rl,speed,3,0.5,-1,0,0,0,0)
c2(hw,speed,3,0,1.5,0,0,0,0)
c2(tw,speed,3,0,0,0,0,0,0)
c2(neck,speed,3,0,1.5,0,0,0,0)
c2(piperw,speed,3,0,0.7,0,0,30+PipeRotate,0)
c2(hingew,speed,3,0,0,0,0,0,0)
Ani(haw,0.5,2.5,1,270,0,90,0,speed,1)
end
function Button1Down()
if Clip>0 and anim=="" and (tick()-LastShot)>=0.6 then
LastShot=tick()
so(ids.Shoot,ha,1,1)
Fire(3,1,p25.CFrame*cn(0,-1,0),fmouse.Hit.p)
Clip=Clip-1
PipeRotate=PipeRotate+60
c2(piperw,0.4,3,0,0.7,0,0,30+PipeRotate,0)
elseif Clip==0 and anim=="" and (tick()-LastShot)>=0.6 then
anim="Reloading"
c2(ra,0.1,3,1.25,0.5,-0.25,-75,-65,0)
c2(la,0.1,3,-1.25,0.5,-0.25,-70,-20,0)
c2(hw,0.1,3,0,1.5,0,0,-65,0)
c1(hingew,0.15,3,0,0,0,0,-90,0)
for i=1,6 do
PipeRotate=PipeRotate+60
c1(la,0.13,3,-1.25,0.25,0.1,15,0,-15)
local pipe=pa(Weapon,"","Block",0.4,0.7,0.4,false,false,0,0,"Bright red") weld(pipe,LA,pipe,0,-1.1,0,rd(-90),0,0) qi{"CylinderMesh",pipe}
local pp=pa(pipe,"","Block",0.4,0.4,0.4,false,false,0,0,"Bright red") weld(pp,pipe,pp,0,-0.35,0,0,0,0) qi{"SpecialMesh",pp,MeshType="Sphere"}
local pp=pa(pipe,"","Block",0.41,0.2,0.41,false,false,0,0,"Really black") weld(pp,pipe,pp,0,0.35,0,0,0,0) qi{"CylinderMesh",pp,Scale=v3(1,0.25,1)}
local pp=pa(pipe,"","Block",0.41,0.5,0.41,false,false,0,0,"Really black") weld(pp,pipe,pp,0,0,0,0,0,0) qi{"CylinderMesh",pp}
c1(la,0.16,3,-1.25,0.4,-0.1,-100,0,-15)
c1(la,0.2,3,-1.25,0.3,-0.25,-40,0,-15)
so(ids.Reload,ha,1,1)
c1(piperw,0.4,3,0,0.7,0,0,30+PipeRotate,0)
Clip=i
deb:AddItem(pipe,0.05)
end
Stance(0.15)
anim=""
end
end
function KeyDown(key)
key=key:lower()
keys[key]=true
if key=="r" and anim=="" and equip=="equipped" and Clip==0 then
anim="Reloading"
c2(ra,0.1,3,1.25,0.5,-0.25,-75,-65,0)
c2(la,0.1,3,-1.25,0.5,-0.25,-70,-20,0)
c2(hw,0.1,3,0,1.5,0,0,-65,0)
c1(hingew,0.15,3,0,0,0,0,-90,0)
for i=1,6 do
PipeRotate=PipeRotate+60
c1(la,0.13,3,-1.25,0.25,0.1,15,0,-15)
local pipe=pa(Weapon,"","Block",0.4,0.7,0.4,false,false,0,0,"Bright red") weld(pipe,LA,pipe,0,-1.1,0,rd(-90),0,0) qi{"CylinderMesh",pipe}
local pp=pa(pipe,"","Block",0.4,0.4,0.4,false,false,0,0,"Bright red") weld(pp,pipe,pp,0,-0.35,0,0,0,0) qi{"SpecialMesh",pp,MeshType="Sphere"}
local pp=pa(pipe,"","Block",0.41,0.2,0.41,false,false,0,0,"Really black") weld(pp,pipe,pp,0,0.35,0,0,0,0) qi{"CylinderMesh",pp,Scale=v3(1,0.25,1)}
local pp=pa(pipe,"","Block",0.41,0.5,0.41,false,false,0,0,"Really black") weld(pp,pipe,pp,0,0,0,0,0,0) qi{"CylinderMesh",pp}
c1(la,0.16,3,-1.25,0.4,-0.1,-100,0,-15)
c1(la,0.2,3,-1.25,0.3,-0.25,-40,0,-15)
so(ids.Reload,ha,1,1)
c1(piperw,0.4,3,0,0.7,0,0,30+PipeRotate,0)
Clip=i
deb:AddItem(pipe,0.05)
end
Stance(0.15)
anim=""
end
end
Tool.Selected:connect(function(mouse)
fmouse=mouse
if equip=="unequipped" and anim=="" then
equip="equipping" Arms(true) c2(la,0.1,3,-1.5,0.5,0,0,0,20) c1(ra,0.1,3,1.5,0.5,0,120,0,-70)
local ofs = RA.CFrame:toObjectSpace(ha.CFrame) 
haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
Stance(0.2) equip="equipped"
end
mouse.Button1Down:connect(Button1Down)
mouse.KeyDown:connect(KeyDown)
end)
Tool.Deselected:connect(function()
fmouse=nil
if equip=="equipped" and anim=="" then
equip="unequipping"  c2(la,0.1,3,-1.5,0.5,0,0,0,0) c1(ra,0.1,3,1.5,0.5,0,120,0,-70)
local ofs = Torso.CFrame:toObjectSpace(ha.CFrame)
haw.Part0=Torso haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
Reset(0.1)
Arms(false) Legs(false) equip="unequipped"
end
end)
Gyro=qi{"BodyGyro",Torso,D=50,P=1500}
game:GetService("RunService").Stepped:connect(function()
if fmouse~=nil then  
Gyro.maxTorque=v3(1/0,1/0,1/0)
Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z)) 
else
Gyro.maxTorque = v3(0,0,0) 
end 
if equip=="equipped" and anim=="" and fmouse~=nil then
c2(ra,1,3,1.25,0.5,-0.25,-75+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
c2(la,1,3,-1.25,0.5,-0.25,-70+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
end
end)
