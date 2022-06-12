--Part 2--
--theguy=workspace.thejonathann NLS([[
 
loadstring(_G["RM"..'Lib'])()
 
Player,Backpack=pm:l(game:service'Players'.LocalPlayer.Name):load()
 
Pn=Player.Name
 
PlayerGui,Char,Backpack=Player.PlayerGui,Player.Character,Player.Backpack
 
Head,Torso,Huma=Char.Head,Char.Torso,Char.Humanoid
 
 
 
as={}
 
as.ring="3270017"
 
as.blast='20329976'
 
as.missile='10207677'
 
as.fire='2693346'
 
as.boom='3264793'
 
as.muffin ='23261119'
 
as.muffint='23261110'
 
as.firelaser='13775494'
 
 
 
--Blow Dryer: http://www.roblox.com/asset/?id=11717967 
 
--Laser Hit: http://www.roblox.com/asset/?id=11945266 
 
--Laser Bewm: http://www.roblox.com/asset/?id=13775494 
 
 
 
for i,v in pairs(as) do 
 
if type(tonumber(v:sub(1,3)))=="number" then
 
as[i]="http://www.roblox.com/asset/?id="..v
 
end
 
end
 
 
 
 
 
ModelName='Tol'
 
ModelParent=Char
 
of=Torso.CFrame*cn(0,1,-12)
 
 
 
pcall(function() ModelParent[ModelName..Pn]:Destroy() end)
 
pcall(function() Backpack[ModelName]:Destroy() end)
 
pcall(function() _G[Pn..ModelName..'Connection']:Disconnect() end)
 
pcall(function() Torso[ModelName..'BP']:Destroy() end)
 
pcall(function() Torso[ModelName..'BG']:Destroy() end)
 
pcall(function() _G[ModelName..'old'].Disabled=true end)
 
 
 
_G[ModelName..'old']=script
 
 
 
 
 
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
 
 
 
 
 
la=qi{'Weld',Torso,Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',Torso,Part0=Torso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
 
ll=qi{'Weld',Torso,Part0=Torso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',Torso,Part0=Torso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
 
 
 
_G.limbz={}
 
_G.limbz.la=la
 
_G.limbz.ra=ra
 
 
 
 
 
LArmz=false
 
RArmz=false
 
Legz=false
 
Arms = function(on) LArmz=on
 
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
 
 
 
LArm = function(on) LArmz=on
 
if on then
 
LS.Part1=nil 
 
la.Part1=LA 
 
la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 
 
else
 
LS.Parent=Torso LS.Part0=Torso LS.Part1=LA
 
la.Part1=nil
 
end
 
end
 
 
 
RArm = function(on) RArmz=on
 
if on then
 
RS.Part1=nil 
 
ra.Part1=RA 
 
ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0) 
 
else
 
RS.Parent=Torso RS.Part0=Torso RS.Part1=RA
 
ra.Part1=nil
 
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
 
RArm''
 
LArm''
 
Legs''
 
 
 
q(function() wait(0.1) LArm() RArm() Legs() end)
 
 
 
 
 
--bin=qi{'HopperBin',Backpack,n=ModelName}
 
 
 
m=qi{'Model',ModelParent,n=ModelName..Pn,archivable=false}
 
m.ChildAdded:connect(function(v)
 
if v:IsA("Part") then v.CanCollide=false end
 
end)
 
m2=qi{'Model',m}
 
 
 
Pack=qi{'Part',m,cf=of,sc=v3(2,2,1)}
 
Packw=qi{'Weld',Pack,P0=Torso,P1=Pack,C0=cn(0,0,1)}
 
 
 
m1f=qi{'Sound',Pack,SoundId=as.fire,Pitch=0.9,Volume=0.7}
 
m2f=qi{'Sound',Pack,SoundId='rbxasset://sounds//Rubber band sling shot.wav',Pitch=0.9,Volume=1}
 
m3f=qi{'Sound',Pack,SoundId=as.firelaser,Pitch=1.1,Volume=1}
 
 
 
 
 
BP=qi{'BodyPosition',Torso,n=ModelName..'BP',maxForce=v3(0,0,0)}
 
BG=qi{'BodyGyro',Torso,n=ModelName..'BG',maxTorque=v3(0,0,0)}
 
 
 
LShoulder =qi{'Part',m,sc=v3(1.1,0.6,1.1),bn='Black'}
 
LShoulderw=qi{'Weld',m,P0=LA,P1=LShoulder,C0=cn(0,0.8,0)}
 
 
 
vv=qi{'Part',m,sc=v3(0.8,0.2,0.8),bn='Dark stone grey'} qi{'CylinderMesh',vv}
 
qi{'Weld',m,P0=LShoulder,P1=vv,C0=cn(0,0.3,0)}
 
vv2=qi{'Part',m,sc=v3(0.4,0.5,0.4),bn='Dark stone grey'} qi{'CylinderMesh',vv2}
 
qi{'Weld',m,P0=vv,P1=vv2,C0=cn(0,0.35,0)}
 
LShoulderx=qi{'Part',m,sc=v3(0.4,0.4,0.4),bn='Dark stone grey'} qi{'SpecialMesh',LShoulderx,mtyp='Sphere'}
 
qi{'Weld',m,P0=vv2,P1=LShoulderx,C0=cn(0,0.25,0)}
 
 
 
vv=qi{'Part',m,sc=v3(0.6,0.6,0.6),bn='Dark stone grey'} qi{'SpecialMesh',vv,mtyp='Sphere'}
 
qi{'Weld',m,P0=Pack,P1=vv,C0=cn(-1,1,0.5)*ca(50,0,30)}
 
vv2=qi{'Part',m,sc=v3(0.4,1,0.4),bn='Dark stone grey'} qi{'CylinderMesh',vv2,}
 
qi{'Weld',m,P0=vv,P1=vv2,C0=cn(0,0.5,0)}
 
LShoulderx2=qi{'Part',m,sc=v3(0.4,0.4,0.4),bn='Dark stone grey'} qi{'SpecialMesh',LShoulderx2,mtyp='Sphere'}
 
qi{'Weld',m,P0=vv2,P1=LShoulderx2,C0=cn(0,0.5,0)}
 
LShoulderx3=qi{'Part',m,sc=v3(0.4,1,0.4),bn='Dark stone grey'} qi{'CylinderMesh',LShoulderx3}
 
LShoulderxw=qi{'Weld',m,P0=LShoulderx2,P1=LShoulderx3}
 
 
 
 
 
RShoulder =qi{'Part',m,sc=v3(1.1,0.6,1.1),bn='Black'}
 
RShoulderw=qi{'Weld',m,P0=RA,P1=RShoulder,C0=cn(0,0.8,0)}
 
 
 
vv=qi{'Part',m,sc=v3(0.8,0.2,0.8),bn='Dark stone grey'} qi{'CylinderMesh',vv}
 
qi{'Weld',m,P0=RShoulder,P1=vv,C0=cn(0,0.3,0)}
 
vv2=qi{'Part',m,sc=v3(0.4,0.5,0.4),bn='Dark stone grey'} qi{'CylinderMesh',vv2}
 
qi{'Weld',m,P0=vv,P1=vv2,C0=cn(0,0.35,0)}
 
RShoulderx=qi{'Part',m,sc=v3(0.4,0.4,0.4),bn='Dark stone grey'} qi{'SpecialMesh',RShoulderx,mtyp='Sphere'}
 
qi{'Weld',m,P0=vv2,P1=RShoulderx,C0=cn(0,0.25,0)}
 
 
 
vv=qi{'Part',m,sc=v3(0.6,0.6,0.6),bn='Dark stone grey'} qi{'SpecialMesh',vv,mtyp='Sphere'}
 
qi{'Weld',m,P0=Pack,P1=vv,C0=cn(1,1,0.5)*ca(50,0,-30)}
 
vv2=qi{'Part',m,sc=v3(0.4,1,0.4),bn='Dark stone grey'} qi{'CylinderMesh',vv2,}
 
qi{'Weld',m,P0=vv,P1=vv2,C0=cn(0,0.5,0)}
 
RShoulderx2=qi{'Part',m,sc=v3(0.4,0.4,0.4),bn='Dark stone grey'} qi{'SpecialMesh',RShoulderx2,mtyp='Sphere'}
 
qi{'Weld',m,P0=vv2,P1=RShoulderx2,C0=cn(0,0.5,0)}
 
RShoulderx3=qi{'Part',m,sc=v3(0.4,1,0.4),bn='Dark stone grey'} qi{'CylinderMesh',RShoulderx3}
 
RShoulderxw=qi{'Weld',m,P0=RShoulderx2,P1=RShoulderx3}
 
 
 
RShoulderb =qi{'Part',m,sc=v3(1,0.5,1),bn='Dark stone grey'} qi{'BlockMesh',RShoulderb,sca=v3(1.1,1,1.1)}
 
RShoulderbw=qi{'Weld',m,P0=RShoulder,P1=RShoulderb,C0=cn(0,-0.8-0.5,0)}
 
 
 
HData={}
 
breaker=function(hit,dmg) 
 
if hit.Anchored then return false end 
 
if hit.Parent:findFirstChild'Humanoid' then return false end 
 
if hit.Parent.Parent:findFirstChild'Humanoid' then return false end 
 
if hit.Parent.Parent.Parent:findFirstChild'Humanoid' then return false end 
 
local broke=false 
 
local dmg=dmg or mran(15,40)
 
if not HData[hit] then local hh=hit.Size.x*hit.Size.y*hit.Size.z/1.5 HData[hit]=hh end
 
HData[hit]=HData[hit]-dmg
 
if HData[hit]<=0 then hit:BreakJoints() broke=true end
 
return broke
 
end
 
 
 
BackBooster=function()
 
local Dark=qi{'Part',m,cf=of,sc=v3(1.5,0.2,1.5),bn='Really black'} qi{'Weld',Dark,P0=Pack,P1=Dark,C0=cn(0,0,0.41)*ca(90,0,0)}
 
local Hatch=qi{'Part',m,cf=of,sc=v3(1.55,0.2,1.55)} Hatchw=qi{'Weld',Dark,P0=Dark,P1=Hatch,C0=cn(0,0.05,-0.75),C1=cn(0,0,-0.75)}
 
Ani(Hatchw,0,0,-0.75,135,0,0,1,0.12,1)
 
local bo=qi{'Part',Dark,sc=v3(0,0,0)} local bom=qi{'CylinderMesh',bo}
 
local bow=qi{'Weld',bo,P0=Dark,P1=bo}
 
local bo2=qi{'Part',Dark,sc=v3(0,0,0)} local bo2m=qi{'CylinderMesh',bo2}
 
local bo2w=qi{'Weld',bo,P0=bo,P1=bo2}
 
local bo3=qi{'Part',Dark,sc=v3(0,0,0),bn='Really black'} local bo3m=qi{'CylinderMesh',bo3}
 
local bo3w=qi{'Weld',bo,P0=bo2,P1=bo3}
 
for i=0.25,1,0.25 do bow.C0=cn(0,1*i,0) bom.Scale=v3(1.4,2*i,1.4)*5 bo2w.C0=cn(0,2*i,0) bo2m.Scale=v3(1*i+1.5,2*i,1*i+1.5)*5 
 
bo3w.C0=cn(0,1*i,0) bo3m.Scale=v3(1*i+1,0.05,1*i+1)*5  wait() end
 
local wingz={}
 
for x=-1,1,2 do 
 
local v=qi{'WedgePart',Dark,sc=v3(0.2,0.2,0.2)} local vm=qi{'SpecialMesh',v,mtyp='Wedge',sca=v3(0.6,4,0)*5}
 
local vw=qi{'Weld',v,P0=bo2,P1=v,C0=cn(x*0.5,-1,0)*ca(180,-x*90,0)}
 
wingz[x]=vw
 
end
 
for i=0.25,1,0.25 do for x=-1,1,2 do wingz[x].Part1.Mesh.Scale=v3(0.6,4,2.5*i)*5 wingz[x].C0=cn(x*(i*1.25+0.5),-1,0)*ca(180,-x*90,0) end wait() end
 
local fire=qi{'Fire',bo3,Heat=25,Size=8}
 
local bv=qi{'BodyVelocity',bo,maxForce=v3(10^6,10^5,10^6)}
 
repeat wait(0.1) bv.velocity=Torso.CFrame.lookVector*80 until not Key.f
 
bv:Remove()
 
fire:Remove()
 
for i=1,0,-0.25 do for x=-1,1,2 do wingz[x].Part1.Mesh.Scale=v3(0.6,4,2.5*i)*5 wingz[x].C0=cn(x*(i*1.25+0.5),-1,0)*ca(180,-x*90,0) end wait() end
 
for x=-1,1,2 do wingz[x].Part1:Remove() end 
 
for i=1,0,-0.25 do bow.C0=cn(0,1*i,0) bom.Scale=v3(1.4,2*i,1.4)*5 bo2w.C0=cn(0,2*i,0) bo2m.Scale=v3(1*i+1.5,2*i,1*i+1.5)*5 
 
bo3w.C0=cn(0,1*i,0) bo3m.Scale=v3(1*i+1,0.05,1*i+1)*5  wait() end
 
Ani(Hatchw,0,0,-0.75,0,0,0,1,0.12,1)
 
Dark:Remove()
 
Hatch:Remove()
 
end
 
 
 
BackTurret=function()
 
local Dark=qi{'Part',m,cf=of,sc=v3(1.5,0.2,1.5),bn='Really black'} qi{'Weld',Dark,P0=Pack,P1=Dark,C0=cn(0,0,0.41)*ca(90,0,0)}
 
local Hatch=qi{'Part',m,cf=of,sc=v3(1.55,0.2,1.55)} Hatchw=qi{'Weld',Dark,P0=Dark,P1=Hatch,C0=cn(0,0.05,0.75),C1=cn(0,0,0.75)}
 
Ani(Hatchw,0,0,0.75,-90,0,0,1,0.12,1)
 
local vv1=qi{'Part',m,cf=of,sc=v3(0.2,0.2,0.2)} vv1w=qi{'Weld',Dark,P0=Dark,P1=vv1} qi{'CylinderMesh',vv1}
 
local vv2=qi{'Part',m,cf=of,sc=v3(0.2,0.2,0.2)} vv2w=qi{'Weld',Dark,P0=vv1 ,P1=vv2} qi{'SpecialMesh',vv2,mtyp='Sphere',sca=v3(0.8,0.8,0.8)*5}
 
for i=0.2,1,0.2 do vv1w.C0=cn(0,0.5*i,0) vv2w.C0=cn(0,0.5*i,0) vv1.Mesh.Scale=v3(0.8,1*i,0.8)*5 wait() end vv2w.C0=cn(0,0.5,0)*ca(-100,0,0)
 
local vv3=qi{'Part',m,cf=of,sc=v3(0.2,0.2,0.2)} vv3w=qi{'Weld',Dark,P0=vv2,P1=vv3} qi{'CylinderMesh',vv3}
 
local vv4=qi{'Part',m,cf=of,sc=v3(0.2,0.2,0.2)} vv4w=qi{'Weld',Dark,P0=vv3 ,P1=vv4} qi{'SpecialMesh',vv4,mtyp='Sphere'}
 
for i=0.2,1,0.2 do vv3w.C0=cn(0,2.5*i,0) vv4w.C0=cn(0,2.5*i,0) vv3.Mesh.Scale=v3(0.8,5*i,0.8)*5 vv4.Mesh.Scale=((v3(1,1,1)*i*1.2)+v3(0.8,0.8,0.8))*5 wait() end
 
local vv5=qi{'Part',m,cf=of,sc=v3(0.2,0.2,0.2)} vv5w=qi{'Weld',Dark,P0=vv4,P1=vv5} qi{'CylinderMesh',vv5}
 
local vv6=qi{'Part',m,cf=of,sc=v3(1,0.2,1),bn='Really black'} vv6w=qi{'Weld',Dark,P0=vv5,P1=vv6} qi{'CylinderMesh',vv6}
 
for i=0.2,1,0.2 do vv5w.C0=cn(0,1*i,0) vv6w.C0=cn(0,0.91*i,0) vv5.Mesh.Scale=v3(1.25,2*i,1.25)*5 wait() end
 
GrenadeOff=vv6
 
BackAnim='Grenade'
 
repeat wait() 
 
if selected and mouse then 
 
local cf=cn(vv4.Position,mouse.Hit.p)*cn(0,0,-1)*ca(-90,0,0)
 
cf=vv4.CFrame:toObjectSpace(cf)
 
vv5w.C0=cf
 
end
 
until not Key.f
 
BackAnim='notGrenade'
 
GrenadeOff=nil
 
for i=1,0,-0.2 do vv5w.C0=cn(0,1*i,0) vv6w.C0=cn(0,0.91*i,0) vv5.Mesh.Scale=v3(1.25,2*i,1.25)*5 wait() end vv5:Remove() vv6:Remove()
 
for i=1,0,-0.2 do vv3w.C0=cn(0,2.5*i,0) vv4w.C0=cn(0,2.5*i,0) vv3.Mesh.Scale=v3(0.8,5*i,0.8)*5 vv4.Mesh.Scale=((v3(1,1,1)*i*1.2)+v3(0.8,0.8,0.8))*5 wait() end vv3:Remove() vv4:Remove()
 
for i=1,0,-0.2 do vv1w.C0=cn(0,0.5*i,0) vv2w.C0=cn(0,0.5*i,0) vv1.Mesh.Scale=v3(0.8,1*i,0.8)*5 wait() end vv1:Remove() vv2:Remove()
 
Ani(Hatchw,0,0,0.75,0,0,0,1,0.12,1)
 
Dark:Remove()
 
Hatch:Remove()
 
end
 
 
 
RightArmGun=function()
 
RArm''
 
local armpos=Torso.CFrame*cn(1.5,0.5,0) 
 
local cc=cn(armpos.p,mouse.Hit.p)*ca(90,0,0)*cn(0,-0.5,0)
 
cc=Torso.CFrame:toObjectSpace(cc)
 
local ccx,ccy,ccz=cc:toEulerAnglesXYZ()
 
qAni(ra,cc.x,cc.y,cc.z,mdeg(ccx),mdeg(ccy),mdeg(ccz),0,0.1,1)
 
local me=RShoulderb.Mesh
 
RightGun ={}
 
RightGunAlter=true
 
RightGun2={}
 
qAni(RShoulderbw,0,-0.8-0.5,-0.25,0,0,0,0,0.1,1)
 
for x=-1,1,2 do 
 
local v=qi{'Part',m,sc=v3(0.2,0.2,0.2)} qi{'CylinderMesh',v}
 
local vw=qi{'Weld',v,P0=me.Parent,P1=v,C0=cn(x*0.25,0,0)}
 
RightGun[x]=vw
 
local v2=qi{'Part',m,sc=v3(0.2,0.2,0.2),bn='Really black'} qi{'CylinderMesh',v2,sca=v3(0.3,0.02,0.3)*5}
 
local v2w=qi{'Weld',v,P0=v,P1=v2,C0=cn(0,0,0)}
 
RightGun2[x]=v2w
 
end
 
for i=0,1,0.1 do me.Scale=v3(1.1,1,1.1+(0.7*i)) for x=-1,1,2 do RightGun2[x].C0=cn(0,-0.5*i,0) RightGun[x].C0=cn(x*0.25,-0.5*i,-0.5*i) RightGun[x].Part1.Mesh.Scale=v3(0.5,1*i,0.5)*5 end wait() end
 
ra.C1=cn(0,0,0)
 
RightArmAnim='Gun'
 
repeat
 
local armpos=Torso.CFrame*cn(1.5,0.5,0) 
 
local cc=cn(armpos.p,mouse.Hit.p)*ca(90,0,0)*cn(0,-0.5,0)
 
cc=Torso.CFrame:toObjectSpace(cc)
 
ra.C0=cc
 
wait()
 
until not Key.e and RightArmAnim=='Gun'
 
RightArmAnim='GunReady'
 
rAni(ra)
 
qAni(ra,1.5,0.5,0,0,0,0,0,0.1,1)
 
qAni(ra,0  ,0.5,0,0,0,0,1,0.1,1)
 
qAni(RShoulderbw,0,-0.8-0.5,0,0,0,0,0,0.1,1)
 
for i=1,0,-0.1 do me.Scale=v3(1.1,1,1.1+(0.7*i)) for x=-1,1,2 do RightGun2[x].C0=cn(0,-0.5*i,0) RightGun[x].C0=cn(x*0.25,-0.5*i,-0.5*i) RightGun[x].Part1.Mesh.Scale=v3(0.5,1*i,0.5)*5 end wait() end
 
for x=-1,1,2 do RightGun[x].Part1:Remove() RightGun2[x].Part1:Remove() end
 
wait()
 
RArm()
 
RightArmAnim='None'
 
end
 
 
 
FireLaser=function(targetpos,spawn)
 
q(function() 
 
local cff=cn(spawn.Position,targetpos)*cn(0,0,4)
 
local arc=qi{'Part',m,n='asd',sc=v3(0.3,0.3,1),cf=cff,an=true,bn='New Yeller',tra=0.1} qi{'SpecialMesh',arc,mtyp='Sphere',sca=v3(1,1,2)} 
 
local Hit,Mag,Pos=RangeAnim(arc,{arc},30,4,4,function(ty2,obj,hit,pos) end,m,false,false)
 
arc.CFrame=arc.CFrame*cn(0,0,-Mag)
 
MeshEffect(arc,arc.CFrame,2,2,2,0.2,'New Yeller','Sphere',cn(0,0,0))
 
wait()
 
arc.Transparency=1
 
Debris:AddItem(arc,1)
 
if Hit and (Hit.Parent:findFirstChild'Humanoid' or Hit.Parent.Parent:findFirstChild'Humanoid') then
 
if Hit.Parent.Name==Pn or Hit.Parent.Parent.Name==Pn then return end 
 
Dmg(Hit.Parent:findFirstChild'Humanoid' or Hit.Parent.Parent.Humanoid,11)
 
end -- ifhit
 
--
 
end)
 
end
 
 
 
Huma.PlatformStand=false
 
Jp={} Jp.Wings={} Jp.w={} Jp.t={} Jp.b={}
 
Jetpack=function()
 
if LeftAnim=='JetpackAnim' then return end 
 
if LeftAnim=='None' then 
 
LeftAnim,RightAnim='JetpackAnim','JetpackAnim'
 
for x=-1,1,2 do 
 
local vv=qi{'Part',m,sc=v3(0,0,0)} qi{'BlockMesh',vv}
 
local vw=qi{'Weld',vv,P0=Pack,P1=vv,C0=cn(x*1,0,0)}
 
Jp.Wings[x]=vw
 
qAni(vw,x*2.7,0,0.6,0,-x*20,0,0,0.1)
 
end
 
for i=0.1,1,0.1 do for x=-1,1,2 do Jp.Wings[x].Part1.Mesh.Scale=v3(4*i,1.5,0.5)*5 end wait() end
 
for x=-1,1,2 do 
 
local vv=qi{'Part',m,sc=v3(0,0,0)} qi{'SpecialMesh',vv,mid=as.ring,sca=v3(3,3,3*3.5)}
 
local vw=qi{'Weld',vv,P0=Jp.Wings[x].Part1,P1=vv,C0=cn(x*2,0,0)*ca(90,0,0),C1=ca(0,-x*20,0)}
 
Jp.w[x]=vw
 
qAni(vw,x*3.5,0,0.3,Rots*2,0,0,0,0.1)
 
local vv=qi{'Part',m,sc=v3(1,1,1)} qi{'SpecialMesh',vv,mtyp='Sphere',sca=v3(3,3,3)}
 
local vw=qi{'Weld',vv,P0=Jp.w[x].Part1,P1=vv,C0=cn(0,0,0)*ca(-90,0,0)}
 
Jp.t[x]=vw
 
local vv=qi{'Part',m,sc=v3(1,1,1),bn='Really black'} qi{'SpecialMesh',vv,mtyp='Sphere',sca=v3(3,3,3)}
 
local vw=qi{'Weld',vv,P0=Jp.w[x].Part1,P1=vv,C0=cn(0,0,0)*ca(-90,0,0)}
 
Jp.b[x]=vw
 
end
 
for i=0.1,1,0.1 do for x=-1,1,2 do Jp.b[x].Part1.Mesh.Scale=v3(3*i,0.2,3*i) Jp.t[x].Part1.Mesh.Scale=v3(3*i,0.2,3*i) Jp.w[x].Part1.Mesh.Scale=v3(3*i,3*i,3*3.5) end wait() end
 
for i=0.25,1,0.25 do for x=-1,1,2 do Jp.b[x].C0=cn(0,0,i*1)*ca(-90,0,0) Jp.t[x].C0=cn(0,0,-2*i)*ca(-90,0,0) Jp.t[x].Part1.Mesh.Scale=v3(3,6*i,3) Jp.w[x].Part1.Mesh.Scale=v3(3,3,(i*3+3)*3.5) end wait() end
 
for x=-1,1,2 do qi{'Fire',Jp.b[x].Part1,Heat=-25,Size=6} qi{'Smoke',Jp.b[x].Part1,RiseVelocity=-25,Size=5,Opacity=0.2,Color=bn'Black'.Color} end
 
BP.position=Torso.Position
 
BG.cframe=cn(Torso.Position,Torso.CFrame*cn(0,0,-5).p)
 
Huma.PlatformStand=true
 
LeftAnim,RightAnim='Jetpack','Jetpack'
 
elseif LeftAnim=='Jetpack' then
 
LeftAnim,RightAnim='JetpackAnim','JetpackAnim'
 
Huma.PlatformStand=false
 
for x=-1,1,2 do Jp.b[x].Part1:Remove() end
 
for i=1,0,-0.25 do for x=-1,1,2 do Jp.t[x].C0=cn(0,0,-2*i)*ca(-90,0,0) Jp.t[x].Part1.Mesh.Scale=v3(3,6*i,3) Jp.w[x].Part1.Mesh.Scale=v3(3,3,(i*3+3)*3.5) end wait() end
 
for x=-1,1,2 do qAni(Jp.w[x],x*2,0,0,0,0,0,0,0.1) end
 
for i=1,0,-0.1 do for x=-1,1,2 do Jp.t[x].Part1.Mesh.Scale=v3(3*i,0.2,3*i) Jp.w[x].Part1.Mesh.Scale=v3(3*i,3*i,3*3.5) end wait() end
 
for x=-1,1,2 do qAni(Jp.Wings[x],x*1,0,0,0,0,0,0,0.1) end
 
for i=1,0,-0.1 do for x=-1,1,2 do Jp.Wings[x].Part1.Mesh.Scale=v3(4*i,1.5,0.5)*5 end wait() end
 
for x=-1,1,2 do 
 
Jp.Wings[x].Part1:Remove()
 
end
 
LeftAnim,RightAnim='None','None'
 
end
 
end
 
 
 
Explode=function(object,sc,dmg)
 
if object and object.Parent then 
 
qi{'Sound',object,SoundId=as.boom,Pitch=2,Volume=0.5}:play() 
 
for x=-1,1,2 do 
 
MeshEffect(object,object.CFrame*ca(0,0,45*x),sc*0.7,sc*1.5,sc*0.7,0.2,x==-1 and 'Bright red' or 'Bright yellow','Sphere')
 
end 
 
GetRegion(object.Position,sc,function(Hum,HT) Dmg(Hum,dmg or 25) 
 
Hum.PlatformStand=true
 
HT.RotVelocity=v3(0,100,0)
 
AddBV(45,cn(object.Position,HT.Position+v3(0,8,0)),HT,0.2) wait(1.5) Hum.PlatformStand=false
 
end,function(hit) if breaker(hit) then hit.Velocity=object.CFrame.lookVector*65 end end)
 
end
 
end --
 
 
 
GetX = function(CFF)
 
local a1,a2,a3,a4,a5,a6,a7,a8,a9=CFF:components()
 
return math.floor(math.deg(math.asin(a9)))
 
end
 
 
 
ButtonDown=function() 
 
if BackAnim=='Grenade' and GrenadeOff then 
 
local muffin=qi{'Part',m2,Friction=2,Elasticity=0,Debris=8,sc=v3(1.5,2,1.5)} local muffinm=qi{'SpecialMesh',muffin,sca=v3(2,2,2)*0.9,mid=as.muffin,tid=as.muffint}
 
muffin.CFrame=cn(GrenadeOff.CFrame*cn(0,1,0).p,GrenadeOff.CFrame*cn(0,10,0).p)
 
muffin.Velocity=muffin.CFrame.lookVector*180 
 
--m2f:play()
 
local bewm
 
q(function() wait(3) if muffin.Parent then Explode(muffin,15,18) end end)
 
muffin.Touched:connect(function(hit) 
 
if hit.Anchored then return end 
 
if bewm then return end bewm=true
 
qi{'Weld',muffin,P0=hit,P1=muffin,C0=hit.CFrame:toObjectSpace(muffin.CFrame),Debris=3} 
 
end) 
 
end
 
---
 
 
 
 
 
---
 
if RightArmAnim=='Gun' then 
 
RightArmAnim='Fire'
 
repeat 
 
RightGunAlter = not RightGunAlter
 
local gunturn=RightGunAlter and RightGun2[-1].Part1 or RightGun2[1].Part1
 
MeshEffect(gunturn,gunturn.CFrame*cn(0,-0.1,0),1,2,1,0.15,'New Yeller','Sphere',cn(0,-0.1,0)*ca(0,0,0)) 
 
m3f:play()
 
FireLaser(mouse.Hit.p,gunturn)
 
wait(0.25)
 
until not Button
 
RightArmAnim='Gun'
 
 
 
 
 
end
 
end
 
ButtonUp=function()
 
end
 
 
 
mouseMove=function()
 
if LeftAnim=='Jetpack' then 
 
BG.cframe=cn(Torso.Position,mouse.hit.p)*ca(Key.w and -80 or 0,0,0)
 
end
 
end
 
 
 
Rots=0
 
Key={}
 
BackAnim='None'
 
RightArmAnim='None'
 
LeftArmAnim='None'
 
RightAnim='None'
 
LeftAnim='None'
 
--bin.Selected:connect(function(mouse2)
 
mouse2=Player:GetMouse()
 
selected=true
 
mouse=mouse2
 
mouse.KeyDown:connect(function(k)
 
Key[k]=true
 
if k=='f' and BackAnim=='None' and not Button then 
 
BackAnim='TurretReady'
 
BackTurret()
 
BackAnim='None'
 
elseif k=='f' and BackAnim=='None' and Button then 
 
BackAnim='Booster'
 
BackBooster()
 
BackAnim='None'
 
elseif k=='e' and RightArmAnim=='None' then 
 
RightArmAnim='GunReady'
 
RightArmGun()
 
elseif k=='v' then 
 
Jetpack()
 
elseif k=='w' and LeftAnim=='Jetpack' then
 
local tp=Torso.Position
 
BG.cframe=cn(tp,mouse.hit.p)*ca(-80,0,0)
 
repeat
 
local tp=Torso.Position
 
local mp=mouse.hit.p+v3(0,2,0)
 
local speed=(tp-mp).magnitude/30+5 speed=speed<30 and speed or 30
 
speed=mouse.Target and speed or 12
 
BP.position=cn(tp,mp)*cn(0,0,-speed).p
 
wait()
 
until not Key.w or LeftAnim~='Jetpack'
 
BG.cframe=cn(tp,mouse.hit.p)*ca(0,0,0)
 
elseif k=='y' then 
 
end
 
end)
 
mouse.KeyUp:connect(function(k)
 
Key[k]=false
 
if k=='b' then 
 
 
 
end
 
end)
 
mouse.Button1Down:connect(function()
 
Button=true
 
ButtonDown()
 
end)
 
mouse.Button1Up:connect(function()
 
Button=false
 
ButtonUp()
 
end)
 
mouse.Move:connect(function()
 
mouseMove()
 
 
 
end)
 
--end)
 
 
 
--bin.Deselected:connect(function()
 
--selected=false
 
--end)
 
 
 
u=0
 
while m.Parent do 
 
u=u+1
 
for i,v in pairs{{LShoulderx,LShoulderx2,LShoulderx3,LShoulderxw},{RShoulderx,RShoulderx2,RShoulderx3,RShoulderxw}} do
 
local shouldermag=(v[1].Position-v[2].Position).magnitude
 
v[3].Mesh.Scale=v3(1,shouldermag,1)
 
local cf=cn(v[1].Position,v[2].Position)*cn(0,0,-shouldermag/2)*ca(90,0,0)
 
cf=v[2].CFrame:toObjectSpace(cf)
 
v[4].C0=cf
 
end
 
if mouse then Rots = -math.deg((Head.Position - mouse.hit.p).unit.y) end 
 
if Jp.w and LeftAnim=='Jetpack' then for x=-1,1,2 do Jp.w[x].C0=cn(x*3.5,0,0.3)*ca(GetX(Torso.CFrame)+20,0,0) end end
 
if LeftAnim=='Jetpack' then
 
BG.maxTorque=v3(0,0,0)/0
 
BP.maxForce=v3(0,0,0)/0
 
else
 
BG.maxTorque=v3(0,0,0)
 
BP.maxForce=v3(0,0,0)
 
end
 
 
 
wait()
 
end
 
 
 
--]],theguy)
 
---c/while true do wait() for i,v in pairs(workspace["NOT TELLING LOL"]:children()) do v.BrickColor=BrickColor.Random() end end
