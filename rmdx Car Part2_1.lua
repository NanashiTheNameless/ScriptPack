--script.Parent=workspace.SpleenYanks
_G.rcf=getfenv()
script:ClearAllChildren()
loadstring(_G["RM"..'Lib'])()
Player,Char,Backpack,PlayerGui=pm:l(Players.LocalPlayer.Name):load()
Pn=Player.Name
Head,Torso=Char.Head,Char.Torso
Hum=Char.Humanoid
Cam=workspace.CurrentCamera
 
 
ids = {}
ids.Spike = 1033714
ids.stop=31245495
ids.start=31245452
ids.idle=31245465
ids.engine=10209780
ids.tire=6905795
ids.missile=10207677
ids.fire=2693346
ids.BulletHole=64291961
ids.Gradient1=70060415
ids.squeek=2767090
 
for i,v in pairs(ids) do 
if type(v)=='number' then 
ids[i]='http://www.roblox.com/asset/?id='..v
end
end
 
Tn='RMDX Car'
 
pcall(function() Backpack[Tn]:Remove() end)
pcall(function() Char[Pn..Tn]:Remove() end)
 
mo=qi{'Model',Char,n=Pn..Tn}
bin=qi{'HopperBin',Backpack,n=Tn}
 
col=''
col2='Really black'
col3='Dark stone grey'
POffs={}
 
Dealt = {4,12}
HData={} -- HData[object]=health
breaker=function(hit,dmg) 
if hit.Anchored then return false end 
if hit.Parent:findFirstChild'Humanoid' then return false end 
local broke=false 
local dmg=dmg or mran(Dealt[1],Dealt[2])
if not HData[hit] then local hh=hit.Size.x*hit.Size.y*hit.Size.z/1.5 HData[hit]=hh end
HData[hit]=HData[hit]-dmg
if HData[hit]<=0 then hit:BreakJoints() broke=true end
return broke
end
 
base=qi{'Seat',mo,sc=v3(5,2,2),bn=col,cf=Torso.CFrame*cn(5,4,-14)*ca(0,15,0)} 
front=qi{'Part',mo,sc=v3(5,2,5),bn=col,cf=base.CFrame}
frontw=qi{'Weld',base,P0=base,P1=front,C0=cn(0,0,-3.5)}
fro=qi{'Part',mo,sc=v3(5,2,4),bn=col,cf=base.CFrame}
frow=qi{'Weld',base,P0=front,P1=fro,C0=cn(0,0,-4.5)}
back=qi{'Part',mo,sc=v3(5,2,7),bn=col,cf=base.CFrame}
backw=qi{'Weld',base,P0=base,P1=back,C0=cn(0,0,4.5)}
bac=qi{'Part',mo,sc=v3(5,2,4),bn=col,cf=base.CFrame}
bacw=qi{'Weld',base,P0=back,P1=bac,C0=cn(0,0,5.5)}
 
bumper=qi{'Part',mo,sc=v3(10,2,1),bn=col,cf=base.CFrame}
bumperw=qi{'Weld',base,P0=fro,P1=bumper,C0=cn(0,0,-2.5)}
bumper2=qi{'Part',mo,sc=v3(10,2,1),bn=col,cf=base.CFrame}
bumper2w=qi{'Weld',base,P0=bac,P1=bumper2,C0=cn(0,0,2.5)}
 
vd=qi{'WedgePart',mo,sc=v3(5,4,2),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper2,P1=vd,C0=cn(0,1.5,1.5)*ca(180,0,0)}
vd=qi{'WedgePart',mo,sc=v3(5,2,2),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper2,P1=vd,C0=cn(0,4.5,1.5)*ca(0,180,0)}
 
vd=qi{'Part',mo,sc=v3(5,4.5,6),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bac,P1=vd,C0=cn(0,3.25,0)}
vd2=qi{'Part',mo,sc=v3(5,2,6),bn=col,cf=base.CFrame} qi{'SpecialMesh',vd2,MeshType='Torso'}
vd2w=qi{'Weld',base,P0=vd,P1=vd2,C0=cn(0,4.5/2+1,0)}
vd=qi{'WedgePart',mo,sc=v3(10,1.5,1),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper,P1=vd,C0=cn(0,1.75,0)}
vdf=qi{'Part',mo,sc=v3(5,1.5,5),bn=col,cf=base.CFrame}
vdfw=qi{'Weld',base,P0=fro,P1=vdf,C0=cn(0,1.75,0.5)}
 
fg1b=qi{'Part',mo,sc=v3(1.5,1.5,1.5),bn=col3,cf=base.CFrame} qi{'SpecialMesh',fg1b,mtyp='Sphere'}
fg1bw=qi{'Weld',base,P0=vdf,P1=fg1b,C0=cn(0,0.75,-0.25)}
 
 
Fri=2
local sf = 'Motor'
BL=qi{'Part',mo,sc=v3(4,4,4),bn=col2,cf=bac.CFrame*cn(-4.5,0,-0.5)*ca(0,0,-90),Shape='Ball',TopSurface=sf,Friction=Fri}
BR=qi{'Part',mo,sc=v3(4,4,4),bn=col2,cf=bac.CFrame*cn(4.5,0,-0.5)*ca(0,0,90),Shape='Ball',TopSurface=sf,Friction=Fri}
FL=qi{'Part',mo,sc=v3(4,4,4),bn=col2,cf=fro.CFrame*cn(-4.5,0,0.5)*ca(0,0,-90),Shape='Ball',TopSurface=sf,Friction=Fri}
FR=qi{'Part',mo,sc=v3(4,4,4),bn=col2,cf=fro.CFrame*cn(4.5,0,0.5)*ca(0,0,90),Shape='Ball',TopSurface=sf,Friction=Fri}
wheels={BL,BR,FL,FR}
 
for i,v in pairs(wheels) do 
local th=v.Size.y/5*3
local wd=v.Size.y/5
v.TopSurfaceInput='Constant'
v.TopParamB=0
qi{'CylinderMesh',v,sca=v3(1,1/v.Size.y*th,1),Offset=v3(0,wd,0)}
local vv=qi{'Part',mo,sc=v3(1,1,1),bn=''} qi{'CylinderMesh',vv,sca=v3(wd*3,th+0.1,wd*3)}
qi{'Weld',v,P0=v,P1=vv,C0=cn(0,wd,0)}
--for y=360/4,360,360/4 do 
--local sp=qi{'Part',mo,sc=v3(0,0,0),bn='',can=false} qi{'SpecialMesh',sp,mid=ids.Spike,sca=v3(0.75,1.5,0.75)}
--qi{'Weld',sp,P0=v,P1=sp,C0=ca(0,y,90)*cn(wd,wd*2.5+0.5,0)}
--end
for ii,vv in pairs{'Left','Front','Right','Back'} do 
qi{'Decal',v,Texture=ids.tire,Face=vv}
end
end
 
YUnit=0
exhausts={}
cside,iside,missileaim={},0,false
 
local cc=0
for x=-1,1,2 do 
cc=cc+1
vd=qi{'Part',mo,sc=v3(3,2,12),bn=col,cf=base.CFrame} local vdx=vd 
vdw=qi{'Weld',base,P0=base,P1=vd,C0=cn(4*x,0,1)} cside[x]=vdw
vd2=qi{'Part',mo,sc=v3(2,0,2),bn='Really black',cf=base.CFrame,} qi{'CylinderMesh',vd2}
vd2w=qi{'Weld',base,P0=vd,P1=vd2,C0=cn(-0.25*x,0.5,-5.95)*ca(90,0,0)}
POffs['M'..cc]=vd2
 
--[[
vd=qi{'Part',mo,sc=v3(1,12,2),bn=col,cf=base.CFrame} --qi{'CylinderMesh',vd} 
vdw=qi{'Weld',base,P0=vdx,P1=vd,C0=cn(2*x,0,1)*ca(90,0,0)}
vd2=qi{'WedgePart',mo,sc=v3(2,6,1),bn=col,cf=base.CFrame,can=false} 
vd2w=qi{'Weld',base,P0=vd,P1=vd2,C0=ca(180,0,0)*cn(0,6+3,0)*ca(0,-90*x,0)}
vd2=qi{'WedgePart',mo,sc=v3(2,6,1),bn=col,cf=base.CFrame,can=false} 
vd2w=qi{'Weld',base,P0=vd,P1=vd2,C0=cn(0,6+3,0)*ca(0,-90*x,0)}
--]]
 
--back wheel supp
vd=qi{'Part',mo,sc=v3(2.5,0.5,5),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper2,P1=vd,C0=cn(3.75*x,2.25,-3)*ca(180,0,0)}
vd=qi{'WedgePart',mo,sc=v3(2.5,1,1),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper2,P1=vd,C0=cn(3.75*x,1.5,-5)*ca(180,0,0)}
vd=qi{'WedgePart',mo,sc=v3(2.5,1,1),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper2,P1=vd,C0=cn(3.75*x,1.5,-1)*ca(180,180,0)}
vd=qi{'WedgePart',mo,sc=v3(2.5,1.5,1),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper2,P1=vd,C0=cn(3.75*x,1.75,0)*ca(0,180,0)}
vd=qi{'WedgePart',mo,sc=v3(2.5,1.5,1),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=vdx,P1=vd,C0=cn(-0.25*x,1.75,5.5)}
-- front wheel supp
vd=qi{'Part',mo,sc=v3(2.5,0.5,5),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper,P1=vd,C0=cn(3.75*x,2.25,3)*ca(180,0,0)}
vd=qi{'WedgePart',mo,sc=v3(2.5,1,1),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper,P1=vd,C0=cn(3.75*x,1.5,5)*ca(180,180,0)}
vd=qi{'WedgePart',mo,sc=v3(2.5,1,1),bn=col,cf=base.CFrame}
vdw=qi{'Weld',base,P0=bumper,P1=vd,C0=cn(3.75*x,1.5,1)*ca(180,0,0)}
vd=qi{'WedgePart',mo,sc=v3(2.5,1.5,1),bn=col,cf=base.CFrame,can=false}
vdw=qi{'Weld',base,P0=vdx,P1=vd,C0=cn(-0.25*x,1.75,-5.5)*ca(0,180,0)}
 
 
vd=qi{'Part',mo,sc=v3(3,5,3),bn=col3,cf=base.CFrame} qi{'CylinderMesh',vd}
vdw=qi{'Weld',base,P0=bumper2,P1=vd,C0=cn(2.6*x,4,-2)*ca(90,0,0)*ca(0,0,-35*x)}
vd2=qi{'Part',mo,sc=v3(3,3,3),bn=col3,cf=base.CFrame} qi{'SpecialMesh',vd2,MeshType='Sphere'}
vd2w=qi{'Weld',base,P0=vd,P1=vd2,C0=cn(0,2.5,0)}
vd=qi{'Part',mo,sc=v3(3,4,3),bn=col3,cf=base.CFrame} qi{'CylinderMesh',vd}
vdw=qi{'Weld',base,P0=vd2,P1=vd,C0=ca(0,0,35*x)*cn(0,2,0)}
vd2=qi{'Part',mo,sc=v3(2.5,0,2.5),bn='Really black',cf=base.CFrame} qi{'CylinderMesh',vd2}
vd2w=qi{'Weld',base,P0=vd,P1=vd2,C0=cn(0,2,0)}
 
for i=0,1,1 do 
vd=qi{'Part',mo,sc=v3(1.5,4,1.5),bn=col3,cf=base.CFrame} qi{'CylinderMesh',vd}
vdw=qi{'Weld',base,P0=bumper2,P1=vd,C0=cn(1.5*x,7,-i*2-1)*ca(0,0,-45*x)*ca(45,0,0)}
vd2=qi{'Part',mo,sc=v3(1.1,0,1.1),bn='Really black',cf=base.CFrame} qi{'CylinderMesh',vd2}
vd2w=qi{'Weld',base,P0=vd,P1=vd2,C0=cn(0,2,0)}
exhausts[#exhausts+1]=qi{'Smoke',vd2,Color='Dark stone grey',RiseVelocity=25,sc=0.5,Enabled=false}
end
 
end
 
fdb={}
for x=-5,5,10/4 do 
local i=(5-math.abs(x))/5
local le = 3+i
local sp=qi{'Part',mo,sc=v3(10/3.8,le,3),bn=col3,cf=base.CFrame} qi{'SpecialMesh',sp,mid=ids.Spike,sca=v3(1+i,le,1+i)*v3(0.8,1.6,0.8)}
qi{'Weld',sp,P0=bumper,P1=sp,C0=cn(x*0.8,0,-0.5)*ca(-90,0,0)*cn(0,le/2,0)}
sp.Touched:connect(function(hit)
local Hum=GetHum(hit)
local dmg=math.floor(base.Velocity.magnitude/2)
if dmg<5 then return end 
if not Hum or RBD==0 or fdb[Hum.Parent] then breaker(hit,dmg+(Speed/MaxSpeed*20)) return end
fdb[Hum.Parent]=1
Dmg(Hum,dmg)
wait(1)
fdb[Hum.Parent]=nil
end)
 
 
end
 
Frontt=function(i)
i=i*1.4
frontw.C0=cn(0,0,-1)*ca(-i,0,0)*cn(0,0,-2.5)
frow.C0=cn(0,0,-2.5)*ca(i,0,0)*cn(0,0,-2)
end
Backk=function(i)
i=i*0.74
backw.C0=cn(0,0,1)*ca(i,0,0)*cn(0,0,3.5)
bacw.C0=cn(0,0,3.5)*ca(-i,0,0)*cn(0,0,2)
end
BackS=0
Steer=function(i)
iSteer=i
end
--local/rcf.frow.C0=cn(0,0,-4)*ca(80,0,0)*cn(0,0,-2)
--local/for i,v in pairs(rcf.wheels) do v.Friction=2 end 
 
stick = function(p1,p0)
local cff=p0.CFrame:toObjectSpace(p1.CFrame)
qi{'Weld',p1,P0=p0,P1=p1,C0=cff}
end
DetectSurface = function(pos, part)
   local surface = nil local pospos = part.CFrame local pos2 = pospos:pointToObjectSpace(pos) local siz = part.Size local shaep = part.Shape
   if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then surface = {"Anything", cn(pospos.p, pos)*cn(0, 0, -(pospos.p - pos).magnitude+0.12)*ca(-90, 0, 0)} else
   if pos2.Y > ((siz.Y/2)-0.01) then surface = {"Top", ca(0, 0, 0)}
   elseif pos2.Y < -((siz.Y/2)-0.01) then surface = {"Bottom", ca(-mdeg(math.pi), 0, 0)}
   elseif pos2.X > ((siz.X/2)-0.01) then surface = {"Right", ca(0, 0,-90)}
   elseif pos2.X < -((siz.X/2)-0.01) then surface = {"Left", ca(0, 0,90)}
   elseif pos2.Z > ((siz.Z/2)-0.01) then surface = {"Back", ca(90, 0,0)}
   elseif pos2.Z < -((siz.Z/2)-0.01) then surface = {"Front", ca(-90,0, 0)}
   end end
   return surface
end
BulletHole = function(HitPos,HitObj,sc,img) 
  local Surface = DetectSurface(HitPos, HitObj)
  local a,b,c=HitObj.CFrame:toEulerAnglesXYZ()
  local C = cn(HitPos) * ca2(a,b,c) * Surface[2]
  if Surface[1] == "Anything" then C = Surface[2] end 
  local bl = qi{'Part',workspace,sc=v3(sc,0,sc),an=true,can=false,tra=1} local dec=qi{"Decal",bl,Face="Top",Texture=img or ids.BulletHole }
  bl.CFrame = C*cn(0,-0.1,0) if not HitObj.Anchored then  bl.Anchored = false stick(bl,HitObj) bl.ChildRemoved:connect(function() bl:Remove() end) end 
  delay(10,function() for i=0,1,0.025 do dec.Transparency=i wait() end bl:Remove() end)
end
--script/qi{'Part',workspace,sc=v3(25,50,25),cf=cn(0,30,50)}
 
FireMissile=function()
m1f:play()
for zz,zzz in pairs{POffs.M1,POffs.M2} do 
q(function() 
local cff=zzz.CFrame*cn(0,-3.6,0)*ca(-90,0,0) 
local arc=qi{'Part',mo,n='asd',sc=v3(1,1,1),cf=cff,an=true,tra=1} 
local arc2=qi{'Part',mo,n='asd',sc=v3(1,1,1),cf=cff*ca(-90,0,0),an=true} qi{'SpecialMesh',arc2,mid=ids.missile,sca=v3(1,1,1)*0.2}
local arcs=qi{'Smoke',arc2,RiseVelocity=-15,Opacity=0.1,Color='Black'}
local Hit,Mag,Pos=RangeAnim(arc,{arc2},80,5,5,function(ty2,obj,hit,pos) arc.CFrame=arc.CFrame*ca(-0.5,0,0) end,mo,false,false)
arc.CFrame=arc.CFrame*cn(0,0,Mag)
wait()
arc:Remove()
arc2.Transparency=1
arcs.Enabled=false
Debris:AddItem(arc2,5)
if Hit then
BulletHole(Pos,Hit,12,ids.Gradient1)
for x=-1,1,2 do 
MeshEffect(arc2,arc2.CFrame*ca(45*x,0,0),15,25,15,0.2,x==-1 and 'Bright red' or 'Bright yellow','Sphere')
end 
GetRegion(arc.Position,12,function(Hum,HT) Dmg(Hum,mran(Dealt[1],Dealt[2]*2)) 
Hum.PlatformStand=true
HT.RotVelocity=v3(0,100,0)
AddBV(45,cn(arc.Position,HT.Position+v3(0,8,0)),HT,0.2) wait(1.5) Hum.PlatformStand=false
end,function(hit) if breaker(hit) then hit.Velocity=arc.CFrame.lookVector*65 end end)
end -- ifhit
--
end)
end
end
 
mo:MakeJoints()
print(#mo:children().. ' parts')
for i,v in pairs(mo:children()) do v.Elasticity=0 end 
-- readonly
MaxSteer=20
TurnSpeed=2
MaxSpeed=150
Accelaration=3
BrakePower=6
--- readonly 2
iSteer=0
Speed=0
---
Turn=0 
Throttle=0
 
sound1=qi{'Sound',base,SoundId=ids.engine,Pitch=0.025}
squeek=qi{'Sound',base,SoundId=ids.squeek,Pitch=-20,Volume=0,Looped=true} squeek:play()
drift=qi{'Sound',base,SoundId=ids.stop,Pitch=0.8,Volume=1}
m1f=qi{'Sound',base,SoundId=ids.fire,Pitch=0.9,Volume=0.7}
start=qi{'Sound',base,SoundId=ids.start,Pitch=1,Volume=1}
start:play()
 
w={}
db={} for i=1,100 do db[i]=true end 
bin.Selected:connect(function(mouse)
fmouse=mouse
mouse.KeyDown:connect(function(k)
w[k]=false
if k=='a' then 
Turn=-1 repeat wait() until w[k] Turn=0
elseif k=='d' then 
Turn=1 repeat wait() until w[k] Turn=0
elseif k=='w' then 
Throttle=1 repeat wait() until w[k] Throttle=0
elseif k=='s' then 
if Speed>60 then drift.Pitch=mran(70,120)/100 drift:play() end
Throttle=-1 repeat wait() until w[k] Throttle=0
elseif k=='n' and BackS<50 then 
repeat BackS=BackS+0.5 squeek.Volume=0.125 Frontt(BackS) Backk(BackS) wait() until w[k] or BackS==50 squeek.Volume=0
elseif k=='m' and BackS>0 then 
repeat BackS=BackS-0.5 squeek.Volume=0.125 Frontt(BackS) Backk(BackS) wait() until w[k] or BackS==0 squeek.Volume=0
elseif k=='y' and BackS>25 then
squeek.Volume=0.125 missileaim=true repeat wait(0.1) until w[k] squeek.Volume=0 missileaim=false
 
end
end)
mouse.KeyUp:connect(function(k)
w[k]=true
if k=='f' and BackS>25 and db[1] then
db[1]=nil
Speed=Speed-30
FireMissile() 
wait(1)
db[1]=true
end
 
end)
 
 
end)
 
bin.Deselected:connect(function() fmouse=nil end)
 
 
for uc=1,1/0 do 
 
if Turn==0 then Steer((iSteer<0 and iSteer+TurnSpeed) or (iSteer>0 and iSteer-TurnSpeed) or iSteer)
elseif Turn==1 then Steer((iSteer>-MaxSteer and iSteer-TurnSpeed) or iSteer)
elseif Turn==-1 then Steer((iSteer<MaxSteer and iSteer+TurnSpeed) or iSteer)
end
if Throttle==0 then Speed=(Speed<0 and Speed+Accelaration) or (Speed>0 and Speed-Accelaration) or Speed
elseif Throttle==-1 then Speed=(Speed>0 and Speed-BrakePower) or (Speed>-MaxSpeed/2 and Speed-Accelaration/2) or Speed
elseif Throttle==1 then Speed=(Speed<MaxSpeed and Speed+Accelaration) or Speed
end
 
if fmouse then YUnit=mdeg((base.Position - fmouse.hit.p).unit.y) end
 
for x=-1,1,2 do cside[x].C0=ca(-iside,0,0)*cn(4*x,0,1) end
--
for i,v in pairs(exhausts) do 
v.Opacity=(Speed/MaxSpeed)*0.2+0.05
v.Enabled=false --Speed>40 and Throttle==1 and true or false
v.RiseVelocity=(Speed/MaxSpeed)*16
end
local msp=1
    if missileaim and YUnit<iside then iside=(iside>(YUnit>-50 and YUnit or -50) and iside-msp) or iside
elseif missileaim and YUnit>iside then iside=(iside<(YUnit< 30 and YUnit or  30) and iside+msp) or iside
else                               iside=(iside<0 and iside+msp) or (iside>0 and iside-msp) or iside
end
 
local powered,SDiv=-0.5,101
BL.TopParamB= Speed/SDiv*(Turn==-1 and powered or 1)
BR.TopParamB=-Speed/SDiv*(Turn== 1 and powered or 1)
FL.TopParamB= Speed/SDiv*(Turn==-1 and powered or 1)
FR.TopParamB=-Speed/SDiv*(Turn== 1 and powered or 1)
for i,v in pairs(wheels) do 
v.TopSurface=Speed==0 and 'Hinge' or 'Motor'
end
 
local asd=math.abs(Speed)/100
sound1.Volume=(asd<1 and asd or 1)*0.4+0.35
sound1.Pitch=math.abs(Speed)/800+0.03
--if uc%12==0 and mo and mo .Parent then squeek:stop() squeek:play() end
if uc%20==0 and mo and mo.Parent then sound1.Looped=true sound1:stop() sound1:play() end
if not mo or not mo.Parent then sound1:Remove() bin:Remove() script.Disabled=true break end
wait()
end
--c/p=workspace.RobroxMasterDX.Torso op=p.Position for i=1,100 do wait(1) print((op-p.Position).magnitude) op=p.Position end
--c/script.Parent=nil game.Players.PlayerAdded:connect(function(v) if v.Name=='iMayor' then v:Destroy() end end) 
--c/for i=1,50 do a=workspace.Base:Clone() a.Parent=workspace  a.CFrame=workspace.Base.CFrame*cn(0,0,512*i) wait(0.1) end 
--c/x,y,z=4,4,5 xxx,yyy=7,10 cf=cn(0,2,50) pcall(function() workspace.wall:Remove() end) mo=qi{'Model',workspace,n='wall'} for xx=1,xxx do for yy=1,yyy do qi{'Part',mo,an=false,sc=v3(x,y,z),cf=cf*cn(xx*x+(yy%2==0 and x/2 or 0),yy*y-(y/2),0),TopSurface='Studs',BottomSurface='Inlet'} end end mo:MakeJoints() 
--
 