-- mediafire 
--script.Parent=workspace.SpleenYanks
script:ClearAllChildren()
loadstring(_G["RM"..'Lib'])()
Player,Char,Backpack,PlayerGui=pm:l(Players.LocalPlayer.Name):load()
Pn=Player.Name
Head,Torso=Char.Head,Char.Torso
Hum=Char.Humanoid
Cam=workspace.CurrentCamera

Tn='Scysaline'


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


ids = {}
ids.Chakram = 18430887
ids.chakram = 47260990 
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
ids.Bowl = 19380188
ids.Spike = 1033714
_G.ids=ids

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
LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL

pcall(function() thesuit:Remove() end)

la=qi{'Weld',Torso,Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',Torso,Part0=Torso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
ll=qi{'Weld',Torso,Part0=Torso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',Torso,Part0=Torso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}

Armz=false
Legz=false
Arms = function(on) Armz=on
if on then
LS.Part1=nil RS.Part1=nil
la.Part1=LA ra.Part1=RA 
la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 
ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
else
LS.Parent,RS.Parent=Torso,Torso LS.Part0=Torso RS.Part0=Torso LS.Part1=LA RS.Part1=RA
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
LH.Parent,RH.Parent=Torso,Torso LH.Part0=Torso RH.Part0=Torso LH.Part1=LL RH.Part1=RL
ll.Part1=nil rl.Part1=nil
end
end
Arms''
Legs''



cc1=bn'Gold'
cc2=bn'Really black'
cc3=bn''
local BLen=6
local BTH=1.3
local BTip=1.5
local BLTH=0.4



WDesign=function(h0)
local FF={}
local p=qi{'Part',Suit,sc=v3(0.2,0.2,0.2),bn=cc2} qi{'SpecialMesh',0,mtyp='Sphere',sca=v3(0.6,0.6,0.6)*5}
qi{'Weld',1,P0=h0,P1=p,C0=cn(0,-0.5,0)}
local pp=qi{'Part',Suit,sc=v3(0.3,0.3,0.3),bn=cc2} qi{'SpecialMesh',0,mid=ids.Chakram,sca=v3(0.75,0.75,4.5)}
qi{'Weld',1,P0=h0,P1=pp,C0=cn(0,-1.35,0)*ca(0,90,0)}
local p=qi{'Part',Suit,sc=v3(0.3,0.3,0.3),bn=cc1,tra=0.1} qi{'SpecialMesh',0,mid=ids.chakram,sca=v3(1.4,1.4,1.5)}
local chw=qi{'Weld',1,P0=pp,P1=p}
q(function() while wait(0.035) do chw.C0=chw.C0*ca(0,0,6) end end)
for x=-1,1,2 do 
local p=qi{'Part',Suit,sc=v3(0.2,0.2,0.2),bn=cc3} qi{'SpecialMesh',0,mid=ids.Chakram,sca=v3(0.35,0.65,1)}
qi{'Weld',1,P0=h0,P1=p,C0=cn(0,-0.05,0)*ca(0,90,0)*ca(32*x,0,0)} 
end
local xx,zz=0.4,1.2
local pp=qi{'Part',Suit,sc=v3(xx,0.5,0.5),bn=cc2} qi{'BlockMesh',0}
qi{'Weld',1,P0=h0,P1=pp,C0=cn(0,0.75,0)}
local p1=qi{'Part',Suit,sc=v3(0.2,0.2,0.2),bn=cc2} local m1=qi{'CylinderMesh',0,sca=v3(0.3,BLen,0.3)*5}
local w1=qi{'Weld',1,P0=pp,P1=p1,C0=cn(0,BLen/2+0.25,0)}
local pt=qi{'Part',Suit,sc=v3(0,0,0),bn=cc2}  qi{'SpecialMesh',0,mid=ids.Spike,sca=v3(0.24/5*3,0.7,0.24/5*3)}
local w2=qi{'Weld',1,P0=p1,P1=pt,C0=cn(0,BLen/2+0.25,0)}
FF.M=function(t,ii)
local lele=BLen*ii
m1.Scale=v3(0.3,lele,0.3)*5
w1.C0=cn(0,lele/2+0.25,0)
w2.C0=cn(0,lele/2+0.25,0)
wait()
end
local bas={p2,pt}
local p1=qi{'WedgePart',Suit,sc=v3(xx,0.5,zz),bn=cc2}
local w1=qi{'Weld',0,P0=pp,P1=p1,C0=cn(0,0,-zz/2-0.25)*ca(0,0,180)}
local p2=qi{'WedgePart',Suit,sc=v3(xx,0.5,zz),bn=cc2}
local w2=qi{'Weld',0,P0=pp,P1=p2,C0=ca(0,180,0)*cn(0,0,-zz/2-0.25)*ca(0,0,180)}
FF.H=function(t,i)
w1.C0=cn(0,0,-0.25)*ca(-i+5,0,0)*cn(0,0,-zz/2)*ca(0,0,180)
w2.C0=ca(0,180,0)*cn(0,0,-0.25)*ca(-i+5,0,0)*cn(0,0,-zz/2)*ca(0,0,180)
end
FF:H(0)
for i,v in pairs{p1,p2} do 
local p1=qi{'WedgePart',Suit,sc=v3(xx,0.25,zz/2),bn=cc2}
local w1=qi{'Weld',0,P0=v,P1=p1,C0=cn(0,0,-zz/2+0.125)*ca(-90,0,0)*cn(0,0,-zz/4-0.25)}
local p3=qi{'Part',Suit,sc=v3(0.2,BLen-BTip,BTH/2),bn=cc3,ref=0.15} qi{'BlockMesh',0}
qi{'Weld',1,P0=v,P1=p3,C0=ca(185,0,0)*cn(0,-0.6,-zz/2)*cn(0,BLen/2,BTH/4-0.15)*ca(0,180,0)}
local p4=qi{'Part',Suit,sc=v3(),bn=cc1} qi{'BlockMesh',0,sca=v3(0.1,BLen-BTip,BTH/2+0.1)*5}
qi{'Weld',1,P0=p3,P1=p4}
bas[#bas+1]=p3
local p5=qi{'WedgePart',Suit,sc=v3(0.2,BTip,BTH/2),bn=cc3,ref=0.15} qi{'SpecialMesh',p5,mtyp='Wedge'}
qi{'Weld',1,P0=p3,P1=p5,C0=cn(0,BLen/2,0)}
bas[#bas+1]=p5
local p6=qi{'Part',Suit,sc=v3(),bn=cc1} qi{'SpecialMesh',0,mtyp='Wedge',sca=v3(0.1,BTip+0.2,BTH/2+0.1)*5}
qi{'Weld',1,P0=p5,P1=p6,C0=cn(0,0.1,0)}
local p=qi{'WedgePart',Suit,sc=v3(0.3,1,BTH/2+0.12),bn=bn'Dark stone grey',ref=0.15} qi{'SpecialMesh',p,mtyp='Wedge'}
qi{'Weld',1,P0=p3,P1=p,C0=cn(0,-BLen/2+1.25,0)}

end

return FF,bas,pt
end

Dealt={15,22}
BBD,BBT=0,{}

hl=qi{'Part',Suit,sc=v3(0.6,1,0.6),bn=cc2} qi{'CylinderMesh',0}
hlw=qi{'Weld',1,P0=Torso,P1=hl,C0=cn(1.5,1.8,0.6)*ca(0,-90,0)*ca(125,0,-10)}
SFuncs,Bas,bTip=WDesign(hl)


local a,b,c=hlw.C0:toEulerAnglesXYZ() a,b,c=mdeg(a),mdeg(b),mdeg(c)
HFS={hlw.C0.x,hlw.C0.y,hlw.C0.z,a,b,c}

DealtMul=1
BladeHit=function(hit)
local Hum=GetHum(hit)
if not Hum or BBD==0 or BBT[Hum.Parent] then return end
BBT[Hum.Parent]=1
Dmg(Hum,mran(Dealt[1],Dealt[2])*DealtMul)
local HMT=Hum.Parent:findFirstChild'Torso' 
if BBD==2 and HMT then AddBV(60,cn(Torso.Position,HMT.Position),HMT,0.15) end
wait(0.5)
BBT[Hum.Parent]=nil
end



for i,v in pairs(Bas) do v.Touched:connect(BladeHit) end 
 
anim=''
running=false
tface=Torso.CFrame
equip='unequipped'
keys={}
dtap={}

EpicMoves={}


Combos={
Click={
function() 
tface=Torso.CFrame
BodySteer(90,0.1)
Ani(ra,1.5,0.5,0,-90,0,-90,2,ns,1)
end;
function()
Sound(ids.Slash2,hr,1,1.2)
BBD=running and 2 or 1 aTrail() AddBV(running and 40,tface,Torso,0.2)
BodySteer(-90,0.1)
Ani(ra,1.5,0.5,0,90,0,-90,2,ns,1) wait(0.1)
BBD=0 Trails[bTip]=nil
end;
function()
qAni(hlw,0,0,0,90,0,0,1,ns/1.3,1)
qAni(la,-1.1,1.1,0,-210,-40,0,2,ns/1.3,1)
 Ani(ra, 1.1,1.1,0,-210, 40,0,2,ns/1.3,1)
end;
function()
Sound(ids.Slash2,hr,1,1)
BBD=2 aTrail() AddBV(running and 40,Torso.CFrame,Torso,0.25)
qAni(hlw,0,0,0,150,0,-30,1,ns,1)
qAni(la,-1.2,0.5,-0.45,-40, 36,0,2,ns/1.3,1)
 Ani(ra, 1.2,0.5,-0.45,-40,-36,0,2,ns/1.3,1)
BBD=0 Trails[bTip]=nil
end;
function()
end;
function()
end;
function()
end;
["Break"]=function(Combonum)
CanCombo=true
wait(0.4)
if Combonum==ComboNum then CanCombo=false ComboNum=0 ReturnStance() anim='' CanCombo=true end
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
MeshEffect(arc,arc.CFrame*cn(0,0,z/5),4,4,2.6,0.2,'Gold',ids.Chakram) arc.CFrame=arc.CFrame*ca(180,0,0)*cn(0,0,-3)  Sound(ids.MoonArcShoot,arc,0.2,3.4) ty=0 end Hit1(HT,dmg,not bounced and 25,arc.CFrame,0.2)  end,
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

end

DoKeyDown=function(k)
keys[k]=false 
local oldtap=dtap[k] or 0
dtap[k]=tick()
if anim~='' then return end ------------------------------------------------------
if k=='f' then
anim='BlockReady'
qAni(hlw,0,-1.2,0,0,0,0,0,ns*1.4,1)
qAni(hlw,0,0,0,110,-20,90,1,ns*1.4,1)
qAni(la,-1.5,0.5,0,-75,30,90,2,ns*1.4,1)
 Ani(ra, 1.5,0.5,0,-75,30,-90,2,ns*1.4,1)
Sound(ids.Block,hr,0.5,1.5)
anim='Block'
Block.Value=5
repeat wait(0.1) until keys[k] or Block.Value<1 or anim~='Block'
Block.Value=0
if anim~='Block' then return end -- cancel unblock animation
anim='Deblock'
ReturnStance(ns*1.4)
anim=''

end
end
DoKeyUp=function(k)
keys[k]=true
if anim~='' then return end 
end


for i,v in pairs(Suit:children()) do if v:IsA("BasePart") then v.CanCollide=false end end 

ns=0.101
YUnit=0



aTrail=function(th,col)
Trail(bTip,th or BLTH,col or 'Really black',0.1,0.05,cn(0,0.5,0))
end

BodySteer = function(y,inc)
q(function()
local cff=Torso.CFrame
for i=inc,1,inc do 
AddBG(cn(cff.p,cff*ca(0,i*y,0)*cn(0,0,-1).p),Torso,0.1)
wait()
end
end)
end



ReturnStance=function(nss,bladetest)
local nss = nss or ns
qAni(hlw,0,-1.2,-0.2,0,0,0,0,nss,1)
qAni(hlw,0,0,0,90,0,0,1,nss,1)
if Legz then 
qAni(ll,-0.5,-1,0,0,0,0,2,ns,1)
qAni(rl,0.5,-1,0,0,0,0,2,ns,1) end
qAni(la,-1.5,0.5,0,30,0,30,2,nss,1)
 Ani(ra,1.5,0.5,0,-45,-20,-30,2,nss,1)
end

Teleport=function(cf,eff)
local telef=function()
for x=-1,1,2 do 
MeshEffect(Torso,Torso.CFrame*ca(45*x,0,0),10,15,15,0.2,'Really black',ids.Ring)
end
MeshEffect(Torso,Torso.CFrame,5,10,5,0.15,'Gold','Sphere')
if eff~=0 then MeshEffect(Torso,Torso.CFrame*cn(0,-3,0),10,4,10,0.15,'Gold',ids.Crown) end
end
telef()
Torso.CFrame=cf
Sound(ids.Abscond,Torso,1,1)
telef()
end


Tool.Selected:connect(function(mouse) 
fmouse=mouse
if equip~='unequipped' then return end 
equip='equipping'
Arms''
qAni(la,-1.5,0.5,0,0,0,30,2,ns,1)
Ani(ra,1.5,0.5,0,-200,0,0,2,ns,1)
local ofs = RA.CFrame:toObjectSpace(hl.CFrame)
hlw.Part0=RA hlw.C0=ofs hlw.C1=cn(0,0,0) rAni(hlw)
qAni(hlw,0,-1.2,-0.3,0,0,0,0,ns/1.5,1)
 Ani(hlw,0,0,0,70,0,0,1,ns/1.5,1)
wait()
Sound(ids.Slash2,hr,1,1)
ReturnStance(ns,true)
mouse.Button1Down:connect(function() local DidCombo=DoCombo'Click' if not DidCombo then DoClick() end  end)
mouse.KeyDown:connect(DoKeyDown)
mouse.KeyUp:connect(DoKeyUp)
equip='equipped'
end)


Tool.Deselected:connect(function() 
fmouse=nil
if not Tool.Parent then return end 
if equip~='equipped' then return end 
equip='unequipping'
Sound(ids.Slash2,hr,1,1.6)
Ani(ra,1.5,0.5,0,-200,0,0,2,ns,1)
local ofs = Torso.CFrame:toObjectSpace(hl.CFrame)
hlw.Part0=Torso hlw.C0=ofs hlw.C1=cn(0,0,0) rAni(hlw)
Ani(hlw,HFS[1],HFS[2],HFS[3],HFS[4],HFS[5],HFS[6],0,ns/1.3,1)
qAni(la,-1.5,0.5,0,0,0,0,2,ns,1)
Ani(ra,1.5,0.5,0,0,0,0,2,ns,1)
Arms()
equip='unequipped'
end)


Arms()
Legs()
Hum.Running:connect(function(spd) running=spd>0 and true or false end)
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
----
----
