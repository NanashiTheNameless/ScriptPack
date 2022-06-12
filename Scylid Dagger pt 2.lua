script:ClearAllChildren()
loadstring(_G["RM"..'Lib'])()
Player,Char,Backpack,PlayerGui=pm:l(Players.LocalPlayer.Name):load()
Pn=Player.Name
Head,Torso=Char.Head,Char.Torso
Hum=Char.Humanoid
Cam=workspace.CurrentCamera
 
Tn='Scylids'
 
 
pcall(function() Backpack[Tn]:Remove() end)
pcall(function() Cam[Tn]:Remove() end)
pcall(function() thesuit=Char[''] end)
pcall(function() Char.Block:Remove() end)
pcall(function() PlayerGui[Tn]:Remove() end)
 
 
CModel=qi{'Model',Cam,n=Tn}
Tool=qi{'HopperBin',Player.Backpack,n=Tn}
Suit=qi{'Model',Char,n=''}
Gui=qi{'ScreenGui',PlayerGui,n=Tn}
 
Block=qi{'NumberValue',Char,n='Block',Value=0}
 
Torso.Transparency=1
Head.Transparency=1
Head.face.Transparency=1
--local/Ani(workspace.bromans[""].Torso,0,0,0,0,0,0,0,0.1,1)
pTorso=qi{'Part',Suit,sc=v3(2,2,1),bn=bn'Really black'}
tw=qi{'Weld',pTorso,P0=Torso,P1=pTorso}
_G.ttw=tw
pcall(function() Torso.roblox:Clone().Parent=pTorso end)
pHead=Head:Clone() pHead.Parent=Suit pHead.Transparency=0 
hw=qi{'Weld',pTorso,P0=pTorso,P1=pHead,C0=cn(0,1.5,0)} 
 
pcall(function() pHead.face.Transparency=0 end)
 
for i,Hat in pairs(Char:children()) do 
if Hat:IsA("Hat") and Hat:findFirstChild'Handle' then 
Hat.Handle.Transparency=1
local v=Hat.Handle:Clone() v.Parent=Suit v.Transparency=0 v.formFactor='Custom' v.Size=v3(0,0,0)
qi{'Weld',v,P0=pHead,P1=v,C0=Head.CFrame:toObjectSpace(Hat.Handle.CFrame)}
end
end
 
ids = {}
ids.Chakram = 18430887
ids.Slash = 10209645
ids.Slash2 = 46760716
ids.Abscond = 2767090
ids.Ring =  3270017 
ids.Crown = 20329976
ids.Boom1 = 3264793
ids.Flame = 31760113
ids.Cast = 2101137
ids.MoonArc2 = 74132306
ids.MoonArc = 87839445
ids.Block = 'rbxasset://sounds\\metal.ogg'
ids.MoonArcShoot = 10209268
 
 
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
LS,RS,LH,RH=Limbs.LS,Limbs.RS,Limbs.LH,Limbs.RH
LA,RA,LL,RL=Char['Left Arm'],Char['Right Arm'],Char['Left Leg'],Char['Right Leg']
LS.Part0,RS.Part0,LH.Part0,RH.Part0=pTorso,pTorso,pTorso,pTorso
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL
 
pcall(function() thesuit:Remove() end)
 
la=qi{'Weld',pTorso,Part0=pTorso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',pTorso,Part0=pTorso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
ll=qi{'Weld',pTorso,Part0=pTorso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',pTorso,Part0=pTorso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
 
Armz=false
Legz=false
Arms = function(on) Armz=on
if on then
LS.Part1=nil RS.Part1=nil
la.Part1=LA ra.Part1=RA 
la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 
ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
else
LS.Parent,RS.Parent=Torso,Torso LS.Part0=pTorso RS.Part0=pTorso LS.Part1=LA RS.Part1=RA
la.Part1=nil ra.Part1=nil
end
end
 
Legs = function(on) Legz=on
if on then
LH.Part1=nil RH.Part1=nil
ll.Part1=LL rl.Part1=RL 
ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0) 
rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
else
LH.Parent,RH.Parent=Torso,Torso LH.Part0=pTorso RH.Part0=pTorso LH.Part1=LL RH.Part1=RL
ll.Part1=nil rl.Part1=nil
end
end
Arms()
Legs()
 
 
cc1=bn'Really red'
cc2=bn'Really blue'
local BLen=1.2
local BLenT=0.45
local BLen2=1.2
local BLTH=0.35
 
WDesign=function(h0)
pp=qi{'Part',Suit,sc=v3(0.4,0.4,0.4),bn=cc1} qi{'SpecialMesh',0,MeshType='Sphere'}
qi{'Weld',1,P0=h0,P1=pp,C0=cn(0,-0.4,0)}
pp=qi{'Part',Suit,sc=v3(0.3,0.6,0.5),bn=cc2} qi{'SpecialMesh',0,MeshType='Sphere'}
qi{'Weld',1,P0=h0,P1=pp,C0=cn(0,-0.42,0)}
for x=-1,1,2 do 
pp=qi{'Part',Suit,sc=v3(0.2,0.2,0.2),bn=cc2} qi{'SpecialMesh',0,mid=ids.Chakram,sca=v3(0.25,0.4,1)}
qi{'Weld',1,P0=h0,P1=pp,C0=ca(40*x,0,0)} 
pp=qi{'WedgePart',Suit,sc=v3(0.2,0.2,0.5),bn=cc1} 
qi{'Weld',0,P0=h0,P1=pp,C0=ca(0,x==-1 and 180 or 0,0)*cn(0,0.3,0.35)*ca(180,0,0)} 
pp2=qi{'WedgePart',Suit,sc=v3(0.2,0.2,0.2),bn=cc1} qi{'SpecialMesh',0,MeshType='Wedge',sca=v3(0.2,0.15,0.5)*5}
qi{'Weld',1,P0=pp,P1=pp2,C0=cn(0,-0.1,-0.17)*ca(-90,0,0)*cn(0,0,-0.25)} 
end
B1=qi{'Part',Suit,sc=v3(0.2,BLen,BLenT),bn=bn'Black',ref=0.15} qi{'BlockMesh',0,sca=v3(0.3,1,1)}
B1w=qi{'Weld',1,P0=h0,P1=B1,C0=cn(0,0.4+BLen/2,0)}
B1p=qi{'Part',Suit,sc=v3(0.2,BLen,BLenT),bn=bn'',ref=0.15} qi{'BlockMesh',0,sca=v3(0.5,1,0.8)}
qi{'Weld',1,P0=h0,P1=B1p,C0=cn(0,0.4+BLen/2,0)}
BB1=qi{'WedgePart',Suit,sc=v3(0.2,BLen2,BLenT),bn=bn'Black',ref=0.15} qi{'SpecialMesh',0,MeshType='Wedge',sca=v3(0.3,1,1)}
BB1w=qi{'Weld',1,P0=B1,P1=BB1,C0=cn(0,BLen/2+BLen2/2,0)}
BB1p=qi{'WedgePart',Suit,sc=v3(0.2,BLen2,BLenT),bn=bn'',ref=0.15} qi{'SpecialMesh',0,MeshType='Wedge',sca=v3(0.5,.8,.8)}
qi{'Weld',1,P0=BB1,P1=BB1p,C0=cn(0,-BLen2/10,0)}
return {B1,BB1}
end
 
Dealt={8,20}
LBD,RBD=0,0
LBT,RBT={},{}
 
hl=qi{'Part',Suit,sc=v3(0.4,0.8,0.4),bn=cc1} qi{'CylinderMesh',0}
hlw=qi{'Weld',1,P0=pTorso,P1=hl,C0=cn(-1.2,1.1,0.7)*ca(0,90,0)*ca(155,0,0)}
Bl=WDesign(hl)
hr=qi{'Part',Suit,sc=v3(0.4,0.8,0.4),bn=cc1} qi{'CylinderMesh',0}
hrw=qi{'Weld',1,P0=pTorso,P1=hr,C0=cn(1.2,1.1,0.7)*ca(0,-90,0)*ca(155,0,0)}
Br=WDesign(hr)
 
local HFS={}
local a,b,c=hlw.C0:toEulerAnglesXYZ() a,b,c=mdeg(a),mdeg(b),mdeg(c)
HFS.L={hlw.C0.x,hlw.C0.y,hlw.C0.z,a,b,c}
local a,b,c=hrw.C0:toEulerAnglesXYZ() a,b,c=mdeg(a),mdeg(b),mdeg(c)
HFS.R={hrw.C0.x,hrw.C0.y,hrw.C0.z,a,b,c}
 
 
DealtMul=1
LeftHit=function(hit)
local Hum=GetHum(hit)
if not Hum or LBD==0 or LBT[Hum.Parent] then return end
LBT[Hum.Parent]=1
Dmg(Hum,mran(Dealt[1],Dealt[2])*DealtMul)
local HMT=Hum.Parent:findFirstChild'Torso' 
if LBD==2 and HMT then AddBV(40,cn(Torso.Position,HMT.Position),HMT,0.12) end
wait(0.3)
LBT[Hum.Parent]=nil
end
 
RightHit=function(hit)
local Hum=GetHum(hit)
if not Hum or RBD==0 or RBT[Hum.Parent] then return end
RBT[Hum.Parent]=1
Dmg(Hum,mran(Dealt[1],Dealt[2])*DealtMul)
local HMT=Hum.Parent:findFirstChild'Torso' 
if RBD==2 and HMT then AddBV(40,cn(Torso.Position,HMT.Position),HMT,0.12) end
wait(0.3)
RBT[Hum.Parent]=nil
end
 
 
Bl[1].Touched:connect(LeftHit)
Bl[2].Touched:connect(LeftHit)
Br[1].Touched:connect(RightHit)
Br[2].Touched:connect(RightHit)
 
 
anim=''
equip='unequipped'
keys={}
dtap={}
 
EpicMoves={}
EpicMoves.Combo=function(tcf)
local b1=qi{'Part',workspace,n='DarkWaveBall',sc=v3(1,1,1),bn=bn'Navy blue',tra=0.3,ref=0.1,cf=tcf,an=true} local b1m=qi{'SpecialMesh',0,MeshType='Sphere'}
local b2=b1:Clone() b2.Parent=b1 local b2m=b2.Mesh b2.BrickColor=bn'Black' b2.Transparency=0 b2.CFrame=tcf
-----
local SBT={}
b1.Touched:connect(function(hit)
local Hum=GetHum(hit)
if not Hum or SBT==0 or SBT[Hum.Parent.Name] or Hum.Parent==Char then return end
SBT[Hum.Parent.Name]=1
Dmg(Hum,mran(Dealt[1]/2,Dealt[2]/2))
AddBV(40,b1.CFrame,Hum.Parent:findFirstChild'Torso',0.4)
wait(0.2)
SBT[Hum.Parent.Name]=nil
end)
local fs=qi{'Sound',b1,SoundId=ids.Flame,Looped=true}
Sound(ids.Cast,b1,1,0.6)
------
local count=0
for i=0,1,1/45 do
count=count+1 
if count%3==0 then 
Lightning(b1,Bl[2].Position,b1.Position,5,0.3,'Black',0.15,1) 
Lightning(b1,Br[2].Position,b1.Position,5,0.3,'Black',0.15,1) 
Lightning(b1,pTorso.CFrame*cn(mran(-25,25),-3,mran(-35,-10)).p,b1.Position,5,0.8,'Really black',0.15,1) 
end
tcf=tcf*cn(mran(-10,10)/30,mran(-10,10)/30,mran(-10,10)/30)
b1.Size=v3(20,20,20)*i b1.CFrame=tcf
b2m.Scale=v3(8,8,8)*i b2.CFrame=b1.CFrame
wait(0.035)
end
MeshEffect(b1,b1.CFrame*cn(0,0,2),40,40,25,0.1,'White',ids.Ring)
b1.Shape='Ball' b1.CFrame=tcf
Sound(ids.Abscond,b1,1,1.2)
fs:play()
local Hit=RangeAnim(b1,{b2},60,1.2,5,function(ty) if ty%2==0 then 
MeshEffect(b1,b1.CFrame*cn(mran(-15,15)/15,mran(-15,15)/15,2)*ca(90,mran(-360,360),0),21,27,21,0.15,'Navy blue',ids.Crown,cn(0,2,0)*ca(0,11,0)) 
MeshEffect(b1,b1.CFrame*cn(mran(-15,15),mran(-15,15),mran(-25,6))*ca(mran(-360,360),mran(-360,360),mran(-360,360)),mran(2,6),mran(2,4),mran(2,7),0.15,'Black','Block') 
end end,Char,true)
local sca=Hit and Hit.Name=='DarkWaveBall' and Hit~=b1 and 3 or 1
MeshEffect(b1,b1.CFrame*ca(60,0,0),70*sca,70*sca,60*sca,0.05,'Black',ids.Ring)
MeshEffect(b1,b1.CFrame*cn(0,-2,0),30*sca,5*sca,30*sca,0.05,'Black',ids.Crown,ca(0,12,0))
if sca==3 then 
MeshEffect(b1,b1.CFrame*cn(0,-3,0)*ca(90,0,0),80*sca,80*sca,60*sca,0.035,'New Yeller',ids.Chakram) 
MeshEffect(b1,b1.CFrame*cn(0,20,0),30*sca,60*sca,30*sca,0.05,'New Yeller',ids.Crown,ca(0,-12,0))
end 
fs:stop()
fs:Remove()
Sound(ids.Boom1,b1,1,sca==3 and 0.6 or 1)
for i=0,1,sca==3 and 0.05 or 0.1 do 
b1.Transparency=0.3+(i*0.7)
b2.Transparency=b1.Transparency
b1m.Scale=v3(1,1,1)*(1+(i*sca))
b2m.Scale=v3(8,8,8)*(1+(i*sca))
wait()
end
GetRegion(b1.Position,35*sca,function(Hum,HT) Dmg(Hum,mran(Dealt[1],Dealt[2]*2)) 
Hum.PlatformStand=true
HT.RotVelocity=v3(0,100,0)
AddBV(90,cn(b1.Position,HT.Position+v3(0,8,0)),HT,0.4) wait(1.5) Hum.PlatformStand=false
end,f2)
wait(0.5)
b1:Remove()
end
 
 
Combos={
Click={
function()
BodySteer(-80,YUnit)
Sound(ids.Slash,hr,1,1.4) RBD=1
qAni(la,-1.5,0.5,0,90,0,10,2,ns,1)
qAni(ra,1.5,0.5,0,-20,0,-90+YUnit,2,ns,1)
 Ani(hrw,0,-1.15,0,180,0,0,2,ns,1)
wait(0.15) RBD=0
end;
function()
BodySteer(80,YUnit,0.5)
Sound(ids.Slash,hr,1,1.4) LBD=1
qAni(hrw,0,-1.15,-0.3,90,0,0,2,ns,1)
qAni(la,-1.5,0.5,0,-20,0,90-YUnit,2,ns,1)
qAni(ra, 1.5,0.5,0,90,0,10,2,ns,1)
 Ani(hlw,0,-1.15,0,180,0,0,2,ns,1)
wait(0.25) LBD=0
end;
function()
BodySteer(0,false,0.5)
Sound(ids.Slash,hr,1,1.4) 
qAni(hlw,0,-1.15,0,90,0,0,2,ns,1)
qAni(la,-1.4,0.5,0,-180,0, 20,2,ns,1)
 Ani(ra, 1.4,0.5,0,-180,0,-20,2,ns,1)
wait(0.3) 
end;
function() LBD=1 RBD=1
Sound(ids.Slash,hr,1,1.7) 
AddBV(60,pTorso.CFrame,pTorso,0.15)
DoubleBladeTrail()
qAni(hlw,0,-1.15,0,150,0,0,2,ns,1)
qAni(hrw,0,-1.15,0,150,0,0,2,ns,1)
qAni(la,-1.4,0.5,-0.4,-45,0,-26,2,ns,1)
 Ani(ra, 1.4,0.5,-0.4,-45,0, 26,2,ns,1)
Trails[Bl[2]]=nil Trails[Br[2]]=nil 
LBD=0 RBD=0
wait(0.2)
end;
function()
local nss=ns/1.5
AddBV(-60,pTorso.CFrame,pTorso,0.15)
qAni(hlw,0,-1.15,0,90,0,0,2,nss,1)
qAni(hrw,0,-1.15,0,90,0,0,2,nss,1)
qAni(la,-1.5,0.5,0,90,0, 90,2,nss,1)
 Ani(ra, 1.5,0.5,0,90,0,-90,2,nss,1)
end;
function()LBD=1 RBD=1
AddBV(60,pTorso.CFrame,pTorso,0.25)
Sound(ids.Slash,hr,1,1.7) 
DoubleBladeTrail()
qAni(hlw,0,-1.15,0,180,0,0,2,ns,1)
qAni(hrw,0,-1.15,0,180,0,0,2,ns,1)
qAni(la,-1.5,0.5,0,-106,0, 90,2,ns,1)
 Ani(ra, 1.5,0.5,0,-106,0,-90,2,ns,1)
 Trails[Bl[2]]=nil Trails[Br[2]]=nil 
 LBD=0 RBD=0
wait(0.25)
end;
function()
local nss=ns/1.5
AddBV(-15,pTorso.CFrame,pTorso,1.6)
qAni(hlw,0,-1.15,0,90,0,0,2,nss,1)
qAni(hrw,0,-1.15,0,90,0,0,2,nss,1)
qAni(la,-1.5,0.5,0,45,0, 90,2,nss,1)
 Ani(ra, 1.5,0.5,0,45,0,-90,2,nss,1)
q(function() EpicMoves.Combo(pTorso.CFrame*cn(-25,2,0)*ca(0,-20,0)) end) EpicMoves.Combo(pTorso.CFrame*cn(25,2,0)*ca(0,20,0))
--EpicMoves.Combo(pTorso.CFrame*cn(0,2,-5)*ca(0,0,0))
end;
["Break"]=function(Combonum)
CanCombo=true
wait(0.4)
if Combonum==ComboNum then CanCombo=false ComboNum=0 ReturnStance() anim='' CanCombo=true end
end;
};
Dual={
function()
BodySteer(-95)
qAni(hlw,0,-1.15,0.3,310,0,0,2,ns,1)
qAni(hrw,0,-1.15,0.3,310,0,0,2,ns,1)
qAni(la,-1.3,0.5,-0.3,-130,0, 90,2,ns,1)
 Ani(ra, 1.3,0.5,-0.3,-130,0,-90,2,ns,1)
local ofs=hr.CFrame:toObjectSpace(hl.CFrame)
hlw.Part0=hr hlw.C0=ofs hlw.C1=cn(0,0,0)
rAni(hlw)
local a,b,c=ofs:toEulerAnglesXYZ()
qAni(hlw,0,-1,0,0,0,0,0,ns,1)
qAni(hlw,0,0,0,0,180,180,1,ns,1)
rAni(hrw)
BodySteer(0)
DoubleBladeTrail() LBD,RBD=1,1 Sound(ids.Slash,hr,1,1.7) 
qAni(hrw,0,-1.15,0,-90,0,90,2,ns,1)
qAni(la,-1.5,0.5,0,0,0,25,2,ns,1)
Ani(ra, 1.5,0.5,0,0,0,-90,2,ns,1)
Trails[Bl[2]]=nil Trails[Br[2]]=nil LBD,RBD=0,0
wait(0.3)
end;
function()
DoubleBladeTrail() LBD,RBD=1,1 DealtMul=0.5
BodySteer(-90)
Ani(hrw,0,-0.5,0,-90+360,0,90,1,ns/2.2)
rAni(hrw)
Trails[Bl[2]]=nil Trails[Br[2]]=nil LBD,RBD=0,0 DealtMul=1
end;
function()
end;
["Break"]=function(Combonum)
CanCombo=true
wait(0.8)
if Combonum==ComboNum then CanCombo=false ComboNum=0 
qAni(hrw,0,-1.15,0.3,-50,0,0,2,ns/1.5,1)
qAni(la,-1.3,0.5,-0.3,-130,0, 90,2,ns/1.5,1)
 Ani(ra, 1.3,0.5,-0.3,-130,0,-90,2,ns/1.5,1) 
rAni(hlw)
ReturnStance() anim='' CanCombo=true end
end;
};
}
 
ComboNum=0
CanCombo=true
DoCombo=function(com)
local DidCombo
if anim~='' and anim~=com..'Combo'..ComboNum then return end
if not CanCombo then return end
if Combos[com][ComboNum+1] then 
ComboNum=ComboNum+1
anim=com..'Combo'..ComboNum
CanCombo=false
DidCombo=true
Combos[com][ComboNum]()
Combos[com].Break(ComboNum)
end
return DidCombo
end
 
H1T={}
Hit1=function(hit,dmg,v1,v2,v3)
local Hum=GetHum(hit)
if not Hum or H1T[Hum.Parent] then return end
H1T[Hum.Parent]=1
Dmg(Hum,dmg)
local HMT=Hum.Parent:findFirstChild'Torso' 
if v1 and HMT then AddBV(v1,v2,HMT,v3) end
wait(0.3)
H1T[Hum.Parent]=nil
end
 
MoonArc=function(cff,x,z,dmg,nn)
q(function()
local arc=qi{'Part',workspace,n=nn or 'MoonArc',sc=v3(x,0.2,z),cf=cff,an=true,tra=1} qi{'BlockMesh',arc,sca=v3(1.35,0.2,1.3)}
local darc={}
for i,v in pairs{'Top','Bottom'} do for ii,vv in pairs{arc} do  darc[#darc+1]=qi{'Decal',vv,Texture=ids.MoonArc,Face=v,n=v} end end
local tym=40
local ty=0
Sound(ids.MoonArcShoot,arc,0.3,3)
local HitArc=function() GetRegion(arc.Position,(x+z)/2.6,function(Hum,HT) local Hum,HT,block=GetHum(HT) local bounced=block and block.Value>0 if bounced then 
MeshEffect(arc,arc.CFrame*cn(0,0,z/5),4,4,2.6,0.2,'Navy blue',ids.Chakram) arc.CFrame=arc.CFrame*ca(180,0,0)*cn(0,0,-3)  Sound(ids.MoonArcShoot,arc,0.2,3.4) ty=0 end Hit1(HT,dmg,not bounced and 25,arc.CFrame,0.2)  end,
----
function(v) if v~=arc and v.Name=='MoonArc' and arc.Name=='MoonArc' then arc:Remove() for i=-1,1,2 do MoonArc(arc.CFrame*ca(0,180+(25*i),0)*cn(0,0,0),x/1.2,z,dmg,'MoonArc2') end end end) end 
local Hit,Mag=RangeAnim(arc,{},1/0,1.6,1.6,function(ty2,obj,hit,pos) ty=ty+1  HitArc() if ty>=tym-10 then for i,dar in pairs(darc) do dar.Transparency=dar.Transparency+0.1 end end if ty==tym then arc:Remove() end end,Char,true,false)
if Hit and Hit.Anchored and arc.Parent then print(Hit.Name,Mag) local cf=arc.CFrame for i=0,1,0.25 do arc.Size=v3(x,0.2,z*(1-i)) arc.CFrame=cf*cn(0,0,-z/2*i)  wait() end arc:Remove() end
end)
end
--c/local b=qi{'Part',nil,an=true,n='MoonArc',sc=v3(6,30,1)} for i=15,360,15 do  bb=b:Clone() bb.Parent=workspace.Base bb.CFrame=cn(0,10,0)*ca(0,i,0)*cn(0,0,50) end local bb=b:Clone() b.Parent=workspace.Base bb.Name='potato' bb.Size=v3(10,30,10) bb.CFrame=cn(0,10,0) 
--c/qi{'NumberValue',workspace.Fenrier,n='Block',Value=5000}
--c/qi{'NumberValue',workspace.RobroxMasterDX,n='Block',Value=5000}
--c/workspace.RobroxMasterDX.Block.Name='s'
 
DoClick=function()
if not keys.f and anim=='Block' then
anim='MoonWave'
local ns=ns*1.25
qAni(la,-1.5,0.5,0,-120,30,90,2,ns*1.3,1)
 Ani(ra, 1.5,0.5,0,-120,30,-90,2,ns*1.3,1)
Sound(ids.Slash2,hr,1,1.4)
delay(0,function() MoonArc(pTorso.CFrame*cn(0,0.5,-2.5),5.5,2.5,mran(Dealt[1],Dealt[2])) end)
qAni(hlw,0,-1.15,-0.3,90,0,0,2,ns,1)
qAni(hrw,0,-1.15,-0.3,90,0,0,2,ns,1)
qAni(la,-1.5,0.5,0,60,0,90,2,ns,1)
 Ani(ra, 1.5,0.5,0,60,0,-90,2,ns,1)
ReturnStance(ns)
anim=''
end
end
 
DoKeyDown=function(k)
keys[k]=false 
local oldtap=dtap[k] or 0
dtap[k]=tick()
if k=='z' then DoCombo'Dual' return 
elseif k=='w' and dtap[k]-oldtap<0.25 and anim=='Block' then
anim='Counter'
AddBV(65,Torso.CFrame,Torso,0.3)
Trail(pTorso,1.5,'White',0.1,0.05)
local block=qi{'Part',pTorso,sc=v3(5,3,1),cf=pTorso.CFrame,Debris=0.9,tra=1} qi{'Weld',block,Part0=pTorso,Part1=block,C0=cn(0,0.3,-1.8)}
block.Touched:connect(function(hit) local Hum,HT=GetHum(hit) if HT then AddBV(30,Torso.CFrame,HT,0.2) end if Hum then Hum.PlatformStand=true wait(1.5) Hum.PlatformStand=false Hum.Jump=true end end)
qAni(la,-1.5,0.5,0,-100,15,90,2,ns,1)
 Ani(ra, 1.5,0.5,0,-100,15,-90,2,ns,1)
wait(0.3)
Trails[pTorso]=nil
ReturnStance(ns*1.25)
anim='' return
elseif k=='w' and dtap[k]-oldtap<0.25 and anim=='Flip' then
anim='Flip2'
AddBV(85,Torso.CFrame*ca(50,0,0),Torso,0.45)
MeshEffect(pTorso,Torso.CFrame*ca(130,0,0),8,6,8,0.15,'Navy blue',ids.Crown)
Sound(ids.Abscond,pTorso,1,1.4) return
end 
if anim~='' then return end ------------------------------------------------------
if k=='b' then -- TEST function
delay(0,function() MoonArc(pTorso.CFrame*cn(0,0.5,-2.5),5.5,2.5,mran(Dealt[1],Dealt[2])) end)
elseif k=='f' then
anim='BlockReady'
qAni(hlw,0,-1.15,-0.3,90,0,-90,2,ns,1)
qAni(hrw,0,-1.15,-0.3,90,0,90,2,ns,1)
qAni(la,-1.5,0.5,0,-75,15,90,2,ns,1)
 Ani(ra, 1.5,0.5,0,-75,15,-90,2,ns,1)
Sound(ids.Block,hr,0.5,1.5)
anim='Block'
Block.Value=3
repeat wait(0.1) until keys[k] or Block.Value<1 or anim~='Block'
Block.Value=0
if anim~='Block' then return end -- cancel unblock animation
anim='Deblock'
ReturnStance(ns*1.4)
anim=''
elseif k=='e' then
anim='spin'
qAni(hlw,0,-1.3,0,160,0,0,2,ns,1)
qAni(hrw,0,-1.3,0,160,180,0,2,ns,1)
qAni(la,-1.5,0.5,0,-20,0, 84,2,ns,1)
 Ani(ra, 1.5,0.5,0, 20,0,-96,2,ns,1)
DoubleBladeTrail() 
LBD=2 RBD=2 DealtMul=0.5
 Ani(tw,0,0,0,0,-360*2,0,2,1/30)
Trails[Bl[2]]=nil Trails[Br[2]]=nil 
LBD=0 RBD=0 DealtMul=1
rAni(tw)
ReturnStance()
anim=''
elseif k=='w' and dtap[k]-oldtap<0.2 then
anim='Dash'
DoubleBladeTrail(0.8,'Really black')
AddBV(60,pTorso.CFrame,pTorso,0.15)
qAni(hlw,0,-1.3,0,130,180,0,2,1)
qAni(hrw,0,-1.3,0,130,180,0,2,1)
qAni(la,-1.5,0.5,0,40,0, 90,2,1)
qAni(ra, 1.5,0.5,0,40,0,-90,2,1)
local dist = raydist(Torso.Position,Torso.Position-Torso.CFrame*cn(0,0,1).p,Char) 
dist = dist>15 and 15 or dist
Torso.CFrame=Torso.CFrame*cn(0,0,-dist)
qi{'Part',CModel,Debris=2,tra=1,an=true,sc=v3(3,1,15),cf=Torso.CFrame*cn(0,-3.6,-7)}
Sound(ids.Slash2,hr,1,1.4)
wait(0.2)
Trails[Bl[2]]=nil Trails[Br[2]]=nil 
ReturnStance(ns*1.5)
anim=''
elseif k==' ' and dtap[k]-oldtap<0.35 then
anim='Flip'
Legs''
local ns=ns*1.5
qAni(la,-1.5,0.5,0,60,0, 25,2,ns,1)
qAni(ra, 1.5,0.5,0,60,0,-25,2,ns,1)
qAni(ll,-0.5,0.2,-1.1,25,0,0,2,ns,1)
qAni(rl, 0.5,0.2,-1  ,15,0,0,2,ns,1)
Ani(tw,0,-1,0,0,0,0,2,ns,1)
Hum.Jump=true
AddBV(60,Torso.CFrame*ca(40,0,0),Torso,0.4)
qAni(ll,-0.5,-1,0,0,0,0,2,ns/4,1)
qAni(rl, 0.5,-1,0,0,0,0,2,ns/4,1)
Ani(tw,0,0,0,360,0,0,2,ns/4,1)
rAni(tw)
ReturnStance(ns)
Legs()
anim=''
elseif k=='q' then
 
end
end
DoKeyUp=function(k)
keys[k]=true
if anim~='' then return end 
end
 
 
for i,v in pairs(Suit:children()) do if v:IsA("BasePart") then v.CanCollide=false end end 
 
ns=0.125
YUnit=0
 
DoubleBladeTrail=function(th,col)
Trail(Bl[2],th or BLTH,col or '',0.1,0.05,cn(0,BLen2/2,0))
Trail(Br[2],th or BLTH,col or '',0.1,0.05,cn(0,BLen2/2,0))
end
 
BodySteer=function(Steer,hf,zs)
local ns=ns*(zs or 1)
qAni(tw,0,0,0,0,Steer,0,2,ns,1)
qAni(hw,0,1.5,0,hf and hf or 0,-Steer,0,2,ns,1)
end
 
 
ReturnStance=function(nss,bladetest)
local nss = nss or ns
BodySteer(0)
rAni(tw)
rAni(hw)
ReturnBlades(nss,not bladetest)
if Legz then 
qAni(ll,-0.5,-1,0,0,0,0,2,ns,1)
qAni(rl,0.5,-1,0,0,0,0,2,ns,1) end
qAni(tw,0,0,0,0,0,0,2,nss,1)
qAni(la,-1.5,0.5,0,0,0,20,2,nss,1)
 Ani(ra,1.5,0.5,0,0,0,-20,2,nss,1)
end
 
Teleport=function(cf,eff)
local telef=function()
for x=-1,1,2 do 
MeshEffect(pTorso,pTorso.CFrame*ca(45*x,0,0),10,15,15,0.2,'Black',ids.Ring)
end
MeshEffect(pTorso,pTorso.CFrame,5,10,5,0.15,'Navy blue','Sphere')
if eff~=0 then MeshEffect(pTorso,pTorso.CFrame*cn(0,-3,0),10,4,10,0.15,'Navy blue',ids.Crown) end
end
telef()
Torso.CFrame=cf
Sound(ids.Abscond,pTorso,1,1)
telef()
end
 
ReturnBlades=function(nss,qq)
local nss = nss or ns
local ofs=LA.CFrame:toObjectSpace(hl.CFrame)
hlw.Part0=LA hlw.C0=ofs hlw.C1=cn(0,0,0)
local ofs=RA.CFrame:toObjectSpace(hr.CFrame)
hrw.Part0=RA hrw.C0=ofs hrw.C1=cn(0,0,0)
--rAni(hlw) rAni(hrw) 
local wAni=qq and qAni or Ani
qAni(hlw,0,-1.15,-0.3,0,0,0,0,nss,1)
qAni(hrw,0,-1.15,-0.3,0,0,0,0,nss,1)
qAni(hlw,0,0,0,90,0,0,1,nss,1)
wAni(hrw,0,0,0,90,0,0,1,nss,1)
end
 
Tool.Selected:connect(function(mouse) 
fmouse=mouse
if equip~='unequipped' then return end 
equip='equipping'
Arms''
qAni(la,-1.5,0.5,0,-210,0,0,2,ns,1)
Ani(ra,1.5,0.5,0,-210,0,0,2,ns,1)
Sound(ids.Slash2,hr,1,1.6)
ReturnStance(ns,true)
mouse.Button1Down:connect(function() local DidCombo=DoCombo'Click' if not DidCombo then DoClick() end  end)
mouse.KeyDown:connect(DoKeyDown)
mouse.KeyUp:connect(DoKeyUp)
equip='equipped'
end)
 
 
Tool.Deselected:connect(function() 
fmouse=nil
if equip~='equipped' then return end 
equip='unequipping'
Sound(ids.Slash2,hr,1,1.6)
qAni(la,-1.5,0.5,0,-210,0,0,2,ns,1)
Ani(ra,1.5,0.5,0,-210,0,0,2,ns,1)
local ofs=pTorso.CFrame:toObjectSpace(hl.CFrame)
hlw.Part0=pTorso hlw.C0=ofs hlw.C1=cn(0,0,0)
local ofs=pTorso.CFrame:toObjectSpace(hr.CFrame)
hrw.Part0=pTorso hrw.C0=ofs hrw.C1=cn(0,0,0)
rAni(hlw) rAni(hrw)
qAni(hlw,HFS.L[1],HFS.L[2],HFS.L[3],HFS.L[4],HFS.L[5],HFS.L[6],0,ns/1.5,1)
Ani(hrw,HFS.R[1],HFS.R[2],HFS.R[3],HFS.R[4],HFS.R[5],HFS.R[6],0,ns/1.55,1)
rAni(hlw) rAni(hrw)
qAni(la,-1.5,0.5,0,0,0,0,2,ns,1)
Ani(ra,1.5,0.5,0,0,0,0,2,ns,1)
wait()
Arms()
equip='unequipped'
end)
 
 
 
for ii=1,1/0 do 
if ii%3==0 then
if fmouse then
YUnit=mdeg((Head.Position - fmouse.hit.p).unit.y)
else
YUnit=0
end
end
 
wait(0.035)
end
