loadstring(_G["RM"..'Lib'])()

Player,Backpack=pm:l(game:service'Players'.LocalPlayer.Name):load()

Pn=Player.Name

PlayerGui,Char,Backpack=Player.PlayerGui,Player.Character,Player.Backpack

Head,Torso=Char.Head,Char.Torso



as={}

as.ring="3270017"

as.blast='20329976'

as.missile='10207677'

as.fire='2693346'

as.boom='3264793'



for i,v in pairs(as) do 

if type(tonumber(v:sub(1,3)))=="number" then

as[i]="http://www.roblox.com/asset/?id="..v

end

end





ModelName='Dorp'

ModelParent=workspace

of=Torso.CFrame*cn(0,1,-8)



pcall(function() ModelParent[ModelName..Pn]:Destroy() end)

pcall(function() Backpack[ModelName]:Destroy() end)

pcall(function() _G[Pn..ModelName..'Connection']:Disconnect() end)



bin=qi{'HopperBin',Backpack,n=ModelName}



m=qi{'Model',ModelParent,n=ModelName..Pn,archivable=false}





Body  =qi{'Part',m,sc=v3(2,2,2),cf=of,n='Torso'}

Headd =qi{'Part',m,sc=v3(1,1,1),cf=of,n ='Head'}

wHeadd=qi{'Weld',Body,n='Neck',P0=Body,P1=Headd,C0=cn(0,0,-1.5)}





BP=qi{'BodyPosition',Body,maxForce=v3()}

BG=qi{'BodyGyro',Body,   maxTorque=v3()}



qi{'Texture',Headd,n='face',Face='Front',Texture='rbxasset://textures/face.png',StudsPerTileU=1,StudsPerTileV=0.85}

_G.pet=m



Legs={}

Leg={}

Leg2={}

Legs[1]=Leg

for i=-1,1,2 do 

Leg[i]={}

local sphere=qi{'Part',m,sc=v3(0.5,0.5,0.5),cf=of} qi{'SpecialMesh',sphere,mtyp='Sphere',sca=v3(0.5,1,0.5)*2}

Leg[i][1]=qi{'Weld',sphere,P0=Body,P1=sphere,C0=cn(i*1.2,-0.9,0)}

local ring=qi{'Part',m,sc=v3(0.5,0.5,0.5),cf=of} qi{'SpecialMesh',ring,sca=v3(0.45,0.45,3.5),mid=as.ring}

Leg[i][2]=qi{'Weld',ring,P0=sphere,P1=ring,C0=cn(0,-0.3,0)*ca(90,0,0)}

Leg[i].v=sphere

end



m1f=qi{'Sound',Body,SoundId=as.fire,Pitch=0.9,Volume=0.7}

m2f=qi{'Sound',Body,SoundId=as.fire,Pitch=1.4,Volume=0.5}





MBrick=qi{'Part',m,sc=v3(1,1,1),tra=1,cf=of,an=true,can=false}

Movement='Free'

mouse=v3()

LegBoost=true

SideAnim=0 -- 0 non used -1 anim 1 used 

DownAnim=0

FrontAnim=0

UpAnim=0

BackAnim=0

maxBP=v3(1,1,1)*11000

maxBG=maxBP

BPface=cn(0,0,0)

BPTarget=nil

BPTargetp=cn(0,0,0)

Key={}

Speed={5,0,0,0,0,0,0,0,0,0}



m:MakeJoints()



FollowTarget=function(object,offset,bgface)

if not object then return end 

BPTarget=object

BPTargetp=offset or cn(0,0,0)

BGface=bgface or cn(0,0,0)

end



FireBullet=function(obj,mess)

m2f:play()

q(function() 

local cff=obj*cn(0,0,0)*ca(0,0,0) 

local arc=qi{'Part',m,n='asd',sc=v3(1,1,1),cf=cff,an=true,tra=1} 

local arc2=qi{'Part',m,n='asd',sc=v3(1,1,1),cf=cff*ca(-90,0,0),an=true,bn='Black'} mess.Parent=arc2 

local Hit,Mag,Pos=RangeAnim(arc,{arc2},80,6,6,function(ty2,obj,hit,pos) arc.CFrame=arc.CFrame*ca(-0.05,0,0) end,m,false,false)

arc.CFrame=arc.CFrame*cn(0,0,Mag)

wait()

arc:Remove()

arc2.Transparency=1

Debris:AddItem(arc2,1)

if Hit and Hit.Parent:findFirstChild'Humanoid' then

Dmg(Hit.Parent.Humanoid,mran(5,20))

end -- ifhit

--

end)

end



FireMissile=function(obj)

m1f:play()

local zzz=obj.Weld.Part0

q(function() 

local cff=zzz.CFrame*cn(0,0,0)*ca(0,0,0) 

local arc=qi{'Part',m,n='asd',sc=v3(1,1,1),cf=cff,an=true,tra=1} 

local arc2=qi{'Part',m,n='asd',sc=v3(1,1,1),cf=cff*ca(-90,0,0),an=true,bn='Black'} obj.Mesh:Clone().Parent=arc2

local arcs=qi{'Smoke',arc2,RiseVelocity=-15,Opacity=0.1,Color='Black'}

local Hit,Mag,Pos=RangeAnim(arc,{arc2},80,5,5,function(ty2,obj,hit,pos) arc.CFrame=arc.CFrame*ca(-0.1,0,0) end,m,false,false)

arc.CFrame=arc.CFrame*cn(0,0,Mag)

wait()

arc:Remove()

arc2.Transparency=1

arcs.Enabled=false

Debris:AddItem(arc2,5)

if Hit then

qi{'Sound',arc2,SoundId=as.boom,Pitch=1.2,Volume=1}:play()

for x=-1,1,2 do 

MeshEffect(arc2,arc2.CFrame*ca(45*x,0,0),15,25,15,0.2,x==-1 and 'Bright red' or 'Bright yellow','Sphere')

end 

GetRegion(arc.Position,12,function(Hum,HT) Dmg(Hum,mran(10,30)) 

Hum.PlatformStand=true

HT.RotVelocity=v3(0,100,0)

AddBV(45,cn(arc.Position,HT.Position+v3(0,8,0)),HT,0.2) wait(1.5) Hum.PlatformStand=false

end,function(hit) if breaker(hit) then hit.Velocity=arc.CFrame.lookVector*65 end end)

end -- ifhit

--

end)

end





SideMissile=function()

local wings={}

local missiles={}

for i=-1,1,2 do 

local  wing=qi{'Part',m,sc=v3(1.5,0.4,1.5),cf=of} wings[i]=wing

local wwing=qi{'Weld',wing,P0=Body,P1=wing,C0=cn(i,0.8,0),C1=cn(-i*0.75,0.3,0)*ca(0,0,i*90)}

qAni(wwing,-i*0.75,0,0,0,0,i*-10,1,0.1,1)

local  mm=qi{'Part',m,sc=v3(0.5,1,0.5),cf=of,bn='Black'} qi{'SpecialMesh',mm,mid=as.missile,sca=v3(1.3,1,1.3)/10}

local mmw=qi{'Weld',mm,P0=wing,P1=mm,C0=cn(0,-0.5,0)*ca(90,0,0)}

missiles[i]=mmw

end

wait(0.5)

repeat wait() until not Key.z

for ii=-1,1,2 do 

FireMissile(missiles[ii].Part1)

missiles[ii].Part1:Remove()

end

wait(0.2)

for i=-1,1,2 do 

qAni(wings[i].weld,-i*0.75,0.3,0,0,0,i*90,1,0.1,1)

Debris:AddItem(wings[i],0.8)

end

end



DownTurret=function()

local  vv=qi{'Part',m,sc=v3(0.5,0.75,1),cf=of} qi{'SpecialMesh',vv,mtyp='Wedge'}

local wvv=qi{'Weld',vv,P0=Body,P1=vv,C0=cn(0,-0.625,0.5),C1=ca(180,0,0)}

local  cc=qi{'Part',m,sc=v3(0.5,0.8,0.5),cf=of} qi{'CylinderMesh',cc,sca=v3(1,1,1)}

local wcc=qi{'Weld',vv,P0=vv,P1=cc,C0=cn(0,0,0.8)*ca(90,0,0)}

local  cc2=qi{'Part',cc,sc=v3(0.3,0.2,0.3),cf=of,bn='Really black'} qi{'CylinderMesh',cc2,sca=v3(1,0.25,1)}

local wcc2=qi{'Weld',cc,P0=cc,P1=cc2,C0=cn(0,0.4,0)}

Ani(wvv,0,-1-0.375, 0.5,0,0,0,0,0.15,1)

Ani(wvv,0,-1-0.375,-0.15,0,0,0,0,0.2,1)

repeat 

wait(0.2)

FireBullet(cc2.CFrame*ca(90,0,0),qi{'CylinderMesh',nil,sca=v3(0.25,0.7,0.25)})

until not Key.x

Ani(wvv,0,-1-0.375,0.5,0,0,0,0,0.15,1)

Ani(wvv,0,-0.625,0.5,0,0,0,0,0.2,1)

vv:Remove()

cc:Remove()

end



CreateBackSeat = function()

Seat =qi{'Seat',m,sc=v3(1,0.5,2),cf=Body.CFrame}

wSeat=qi{'Weld',Seat,P0=Body,P1=Seat,C0=cn(0,-0.75,0),n='s'}

for x=-1,1,2 do 

local vv =qi{'Part',Seat,sc=v3(0.55,2,2),cf=Body.CFrame}

local wvv=qi{'Weld',vv,P0=Seat,P1=vv,C0=cn(x*0.75,0.75,0),n='s'}

end

local vv =qi{'Part',Seat,sc=v3(1,2,0.5),cf=Body.CFrame}

local wvv=qi{'Weld',vv,P0=Seat,P1=vv,C0=cn(0,0.75,0.75),n='s'}

local legs2={}

Leg2={}

for i=-1,1,2 do 

Leg2[i]={}

local sphere=qi{'Part',m,sc=v3(0.5,0.5,0.5),cf=of} qi{'SpecialMesh',sphere,mtyp='Sphere',sca=v3(0.5,1,0.5)*2} 

Leg2[i][1]=qi{'Weld',sphere,P0=Seat,P1=sphere,C0=cn(i*1.2,-0.25,0.8)} 

local ring=qi{'Part',m,sc=v3(0.5,0.5,0.5),cf=of} qi{'SpecialMesh',ring,sca=v3(0.45,0.45,3.5),mid=as.ring}

Leg2[i][2]=qi{'Weld',ring,P0=sphere,P1=ring,C0=cn(0,-0.3,0)*ca(90,0,0)}

Leg2[i].v=sphere

legs2[i..'a']=sphere

legs2[i..'b']=ring

end

Legs[2]=Leg2

Speed[2]=10

Ani(wSeat,0,-0.75,2,0,0,0,0,0.15,1)

BackAnim=1

repeat wait(0.1) until BackAnim==2

for i,v in pairs(Seat:children()) do if v.Name~='s' and v:IsA("Weld") and v.Part1.Parent:findFirstChild("Humanoid") then  v.Part1.Parent.Humanoid.Jump=true wait(0.3) end end

Ani(wSeat,0,-0.75,0,0,0,0,0,0.15,1)

Legs[2]=nil

Speed[2]=0

for i,v in pairs(legs2) do v:Remove() end 

Seat:Remove()

BackAnim=0

end



FireHead=function()

local vv =qi{'Part',m,sc=v3(1.1,1.1,0.2),cf=Body.CFrame,bn='Really black'}

local wvv=qi{'Weld',vv,P0=Body,P1=vv,C0=cn(0,0,-0.93)}

local hit=Headd:Clone()

hit.Size=v3(3,3,3)

hit.face.StudsPerTileV=3

hit.face.StudsPerTileU=3

local mes=qi{'BlockMesh',Headd}

q(function() for i=0.1,1,0.1 do mes.Scale=v3(2*i+1,2*i+1,2*i+1) wait() end end)

Ani(wHeadd,0,0,-2.5,0,0,0,0,0.1,1)

mes:Remove()

hit.Parent=m

hit.CFrame=Headd.CFrame

hit.Velocity=Headd.CFrame.lookVector*100

Debris:AddItem(hit,16)

local freehit=true

hit.Touched:connect(function(tors)

if tors.Parent:findFirstChild'Humanoid' and tors.Parent:findFirstChild'Torso' and freehit then 

freehit=false

hit.face.Face='Top'

local tors,H=tors.Parent.Torso,tors.Parent.Humanoid

local w=qi{'Weld',hit,P0=tors,P1=hit,C0=cn(0,0,2)}

wait(0.5)

hit.CanCollide=false

local vv =qi{'Part',hit,sc=v3(2,1,2),cf=hit.CFrame,bn='Dark stone grey',can=false} qi{'CylinderMesh',vv,sca=v3(1,1,1)*1.5}

local wvv=qi{'Weld',vv,P0=hit,P1=vv,C0=cn(0,0,0)*ca(90,0,0)}

local vv2 =qi{'Part',hit,sc=v3(1.4,1.05,1.4),cf=hit.CFrame,bn='Really black',can=false} qi{'CylinderMesh',vv2,sca=v3(1,1,1)*1.5} qi{'Fire',vv2,Heat=25,Size=9}

local wvv2=qi{'Weld',vv2,P0=vv,P1=vv2}

for i=-1,1,2 do 

local vv =qi{'WedgePart',hit,sc=v3(0.5,3,3),cf=hit.CFrame,can=false} 

local wvv=qi{'Weld',vv,P0=hit,P1=vv,C0=cn(0,1,0)*ca(0,0,i*-90)}

qAni(wvv,i*3,1,0,0,0,i*-90,0,0.1,1)

end

Ani(wvv,0,0,1.5+0.75,90,0,0,0,0.1,1)

H.PlatformStand=true q(function() wait(1) H.PlatformStand=false hit.CanCollide=true vv.CanCollide=true end)

local bv=qi{'BodyVelocity',vv,maxForce=v3(1/0,1/0,1/0)}

Debris:AddItem(w,2.4)

repeat wait()

bv.velocity=hit.CFrame.lookVector*125

until not hit or not hit.Parent

end

end)

wHeadd.C0=cn(0,0,-0.4)

wait(0.2)

Ani(wHeadd,0,0,-1.5,0,0,0,0,0.07,1)

vv:Remove()

end



FollowTarget(Head,cn(3,1,4),cn(2,0,0))



q(function() wait(1) BPTarget=nil end)





bin.Selected:connect(function(mouse2)

mouse=mouse2

mouse.KeyDown:connect(function(k)

q(function()

Key[k]=true

if k=='f' then 

if mouse.Target and mouse.Target.Parent:findFirstChild'Head' and Movement=='Free' then 

FollowTarget(mouse.Target.Parent.Head,cn(3,1,4),cn(2,0,0)) Movement='Follow'

else 

Movement='Free' BPTarget=nil

end

elseif k=='z' and SideAnim==0 then

SideAnim=-1

SideMissile()

SideAnim=0

elseif k=='x' and DownAnim==0 then

DownAnim=-1

DownTurret()

DownAnim=0

elseif k=='b' and BackAnim==0 then 

BackAnim=-1

CreateBackSeat()

elseif k=='c' and FrontAnim==0 then 

FrontAnim=-1

FireHead()

FrontAnim=0

elseif k=='y' then 

end

end)

end)

mouse.KeyUp:connect(function(k)

Key[k]=false

if k=='b' and BackAnim==1 then 

BackAnim=2 -- auto 0

elseif k=='y' then 



end

end)

mouse.Button1Down:connect(function()

Button=true

if Movement=='Free' then repeat wait(0.1) MBrick.CFrame=cn(mouse.hit.p)*cn(0,-1,0) FollowTarget(MBrick,cn(3,5,4),cn(2,3,0)) until not Button BPTarget=nil  end



end)

mouse.Button1Up:connect(function()

Button=false

end)

mouse.Move:connect(function()

if Movement=='Free' then BG.cframe=cn(Body.Position,mouse.hit.p)*cn(0,0,2) BG.maxTorque=maxBG end

end)

end)



bin.Deselected:connect(function()



end)



local u=0

while wait() do 

u=u+1

local Speedz=0 for i=1,#Speed do Speedz=Speedz+Speed[i] end 

of=Body.CFrame

if BPTarget and not BPTarget.Parent then BPTarget=nil end 

if BPTarget then local tp=BPTarget.CFrame*BPTargetp.p BP.maxForce=maxBP local mag=(tp-Body.Position).magnitude mag=mag>Speedz and Speedz or mag BP.position=cn(Body.Position,tp)*cn(0,0,-mag).p 

if BGface then BG.cframe=cn(Body.Position,BPTarget.CFrame*BGface.p)*cn(0,0,2) BG.maxTorque=maxBG end 

end

for ii=1,#Legs do 

local Leg=Legs[ii]

for i,v in pairs(Leg) do 

local Vody=ii==1 and Body or Seat

local aa=cn(Vody.CFrame*cn(i*1.2,ii==2 and -0.25 or -0.9,ii==2 and 0.5 or 0).p,Vody.Position+v3(0,10000,0))*ca(-90,0,0)

aa=Vody.CFrame:toObjectSpace(aa)

Leg[i][1].C0=aa

if LegBoost and u%3==0 then

MeshEffect(Leg[i].v,Leg[i].v.CFrame*cn(0,-0.5,0)*ca(180,0,0),1,1.3,1,0.15,'Navy blue','Sphere',cn(0,0.15,0)*ca(0,0,0))

end

end

end



end