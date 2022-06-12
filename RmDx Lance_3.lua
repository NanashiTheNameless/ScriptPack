--- shortcuts

v3 = Vector3.new

cn = CFrame.new

ca2 = CFrame.Angles

mf = math.floor

mran = math.random

mrad = math.rad

mdeg = math.deg

ca = function(x,y,z) return ca2(mrad(x),mrad(y),mrad(z)) end 

mran2 = function(a,b) return mran(a*1000,b*1000)/1000 end 

ud=UDim2.new

bn = BrickColor.new

c3 = Color3.new

-----

Player = game:service'Players'.LocalPlayer

Char = Player.Character

Torso = Char.Torso

Head = Char.Head

Humanoid = Char.Humanoid

Root=Char.HumanoidRootPart.RootJoint




LA=Char['Left Arm']

RA=Char['Right Arm']

LL=Char['Left Leg']

RL=Char['Right Leg']

LAM=Torso['Left Shoulder']

RAM=Torso['Right Shoulder']

LLM=Torso['Left Hip']

RLM=Torso['Right Hip']

Neck=Torso.Neck

Neck.C0=cn(0,1.5,0)

Neck.C1=cn(0,0,0)




name='New'

pcall(function() Player.Backpack[name]:Remove() end)

pcall(function() Char[name]:Remove() end)

pcall(function() Char.Block:Remove() end)







as,so={},{'metal','Block','Slash','Slash2','Hit','Kick'}

as.corner='11294911'

as.cone='1033714'

as.ring="3270017"

as.Chakram='47260990'

as.ring2='18430887'

as.blast='20329976'

as.missile='10207677'

as.fire='2693346'

as.boom='3264793'

as.slash='10209645'

as.abscond='2767090'

as.firelaser='13775494'

as.diamond='9756362'

as.metal='rbxasset://sounds\\unsheath.wav'

as.Block = 'rbxasset://sounds\\metal.ogg'

as.Slash = '10209645'

as.Slash2 = '46760716'

as.Hit='10209583'

as.Kick='46153268'

as.cast='2101137'







for i,v in pairs(as) do 

if type(tonumber(v:sub(1,3)))=="number" then

as[i]="http://www.roblox.com/asset/?id="..v

end

end







iNew=function(tab)

local v=Instance.new(tab[1])

for Ind,Val in pairs(tab) do

if Ind~=1 and Ind~=2 then 

v[Ind] = Val

end

end

v.Parent=tab[2]==0 and LastMade or tab[2]

LastMade=v

return v

end

iPart=function(tab)

local v=Instance.new(tab.type or 'Part')

if tab.type~='CornerWedgePart' then v.formFactor='Custom' end

v.CanCollide=false

v.TopSurface=0 v.BottomSurface=0

v.Size=v3(tab[2],tab[3],tab[4])

if tab.co then v.BrickColor=bn(tab.co) end

if tab.tr then v.Transparency=tab.tr end

if tab.rf then v.Reflectance=tab.rf end

if tab.cf then v.CFrame=tab.cf end

if tab.an then v.Anchored=tab.an end

v.Parent=tab[1]

LastMade=v

return v

end

function getoutline(x,z,i)

 return math.sqrt(x^2+z^2)+(i or 0.05),mdeg(math.atan2(x,z))

end

pcall(function() Torso.LAW:Remove() Torso.RAW:Remove() Torso.LLW:Remove() Torso.RLW:Remove() end)

LAW=iNew{'Weld',Torso,Name='LAW',Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)}

RAW=iNew{'Weld',Torso,Name='RAW',Part0=Torso,C0=cn( 1.5,0.5,0),C1=cn(0,0.5,0)}

LLW=iNew{'Weld',Torso,Name='LLW',Part0=Torso,C0=cn(-0.5, -1,0),C1=cn(0,  1,0)}

RLW=iNew{'Weld',Torso,Name='RLW',Part0=Torso,C0=cn( 0.5, -1,0),C1=cn(0,  1,0)}

function Arms(on)

 LAM.Parent=Torso LAM.Part0=Torso

 RAM.Parent=Torso RAM.Part0=Torso

 LAM.Part1=on and nil or LA

 RAM.Part1=on and nil or RA

 LAW.Part1=on and LA  or nil

 RAW.Part1=on and RA  or nil

end

function Legs(on)

 LLM.Part1=on and nil or LL

 RLM.Part1=on and nil or RL

 LLW.Part1=on and LL  or nil

 RLW.Part1=on and RL  or nil

end

function v32(cf)

local x,y,z=cf:toEulerAnglesXYZ()

return v3(mdeg(x),mdeg(y),mdeg(z))

end

function GetWeld(weld) 

    if not weld:findFirstChild("Angle") then 

        local a = Instance.new("Vector3Value", weld) 

        a.Name = "Angle"

        local x,y,z=weld.C0:toEulerAnglesXYZ()

        a.Value=v3(mdeg(x),mdeg(y),mdeg(z)) 

    end 

    return weld.C0.p,weld.Angle.Value

end 

function ClearWeld(weld)

if weld:findFirstChild'Angle' then weld.Angle:Remove() end 

end

function SetWeld(weld,CC,i, loops, origpos,origangle, nextpos,nextangle,smooth) 

    local CO='C'..CC

    smooth = smooth or 1 

    if not weld:findFirstChild("Angle") then 

        local a = Instance.new("Vector3Value", weld) 

        a.Name = "Angle"

        local x,y,z=weld.C0:toEulerAnglesXYZ()

        a.Value=v3(mdeg(x),mdeg(y),mdeg(z)) 

    end 

 

    local perc 

    if smooth == 1 then 

        perc = math.sin((math.pi/2)/loops*i) 

    else 

        perc = i/loops 

    end 

 

    local tox,toy,toz = 0,0,0 

    if origangle.x > nextangle.x then 

        tox = -math.abs(origangle.x - nextangle.x) *perc 

    else 

        tox = math.abs(origangle.x - nextangle.x) *perc 

    end 

    if origangle.y > nextangle.y then 

        toy = -math.abs(origangle.y - nextangle.y) *perc 

    else 

        toy = math.abs(origangle.y - nextangle.y) *perc 

    end 

    if origangle.z > nextangle.z then 

        toz = -math.abs(origangle.z - nextangle.z) *perc 

    else 

        toz = math.abs(origangle.z - nextangle.z) *perc 

    end 

 

    local tox2,toy2,toz2 = 0,0,0 

    if origpos.x > nextpos.x then 

        tox2 = -math.abs(origpos.x - nextpos.x) *perc 

    else 

        tox2 = math.abs(origpos.x - nextpos.x) *perc 

    end 

    if origpos.y > nextpos.y then 

        toy2 = -math.abs(origpos.y - nextpos.y) *perc 

    else 

        toy2 = math.abs(origpos.y - nextpos.y) *perc 

    end 

    if origpos.z > nextpos.z then 

        toz2 = -math.abs(origpos.z - nextpos.z) *perc 

    else 

        toz2 = math.abs(origpos.z - nextpos.z) *perc 

    end 

         weld.Angle.Value = Vector3.new(origangle.x + tox,origangle.y + toy,origangle.z + toz)

    weld[CO] = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 

end 

LoopFunctions={}

function DoLoop(times,func)

LoopFunctions[#LoopFunctions+1]={times,0,func}

end

Dmg=false

Dmgv={8,16}

HitDebounce={}

Damage=function(Hum,Mult,Sound)

if not Hum.Parent:findFirstChild'Torso' then return end 

local HName=Hum.Parent.Name

if HitDebounce[HName] and HitDebounce[HName]>tick() then return end 

HitDebounce[HName]=tick()+0.5

local Mult=Mult or 1

local Dealt=mran(Dmgv[1],Dmgv[2])*Mult

local col=''

if Hum.Parent:findFirstChild'Block' and Hum.Parent.Block.Value>0 then 

Hum.Parent.Block.Value=Hum.Parent.Block.Value-1

col='Bright blue'

else

Hum.Health=Hum.Health-Dealt

col='Bright red'

end

if Sound then so[col=='Bright blue' and 'Block' or 'Hit']:Play() end

local DoH=iNew{'Model',Pack,Name=col=='Bright blue' and 'Block' or Dealt}

iNew{'Humanoid',DoH,MaxHealth=1/0,Health=1/0,Name=''}

local Doh=iPart{DoH,0.6,0.2,0.6,co=col,an=true} Doh.Name='Head' iNew{'CylinderMesh',Doh}

local dofs=Hum.Parent.Torso.CFrame*cn(mran2(-1.5,1.5),2.5,mran2(-1,1)) Doh.CFrame=dofs

DoLoop(40,function(i) Doh.CFrame=dofs*cn(0,i*2,0) Doh.Transparency=i-0.5 if i==1 then DoH:Remove() end end)

end




Trails={}

TrailPack={}

Traili={}

function Trail(obj,ofs,col)

Trails[obj]=true

Traili[#Traili+1]={obj,ofs,col,obj.CFrame*ofs}

end













CC={'Dark stone grey','Light stone grey','Black'}

SHH=0.25

Handlelen=8.5




Tool=iNew{'HopperBin',Player.Backpack,Name=name}

Pack=iNew{'Model',Char,Name=name}




Shield=iPart{Pack,1.05,0.2,1.05,co=CC[1],tr=1}

wShield=iNew{'Weld',Pack,Part0=Torso,Part1=Shield,C0=cn(0,0.6,0)*ca(90,0,-90)}




shield=iPart{Pack,1.5,2,SHH,co=CC[2]} 

wwhield=iNew{'Weld',Pack,Part0=Shield,Part1=shield,C0=cn(-0.5-(SHH/2),0,-0.4)*ca(0,90,-90)} 




prop=iPart{Pack,3,1.5,SHH-0.01,co=CC[2]}  -- wide

iNew{'Weld',Pack,Part0=shield,Part1=prop,C0=cn(0,0,0)}




prop=iPart{Pack,1,1,SHH,co=CC[2]} --top

iNew{'Weld',Pack,Part0=shield,Part1=prop,C0=cn(0,1.5,0)}




prop=iPart{Pack,1,2,SHH,co=CC[2]} --bottom

iNew{'Weld',Pack,Part0=shield,Part1=prop,C0=cn(0,-2,0)}




for x=-1,1,2 do 

Prop=iPart{Pack,SHH,1,0.25,co=CC[2],type='WedgePart'} 

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.625*x,1.5,0)*ca(0,-90*x,0)} 

Prop=iPart{Pack,SHH,0.25,0.5,co=CC[2],type='WedgePart'} 

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.25*x,2.125,0)*ca(0,-90*x,0)} 

Prop=iPart{Pack,SHH,1,0.75,co=CC[2],type='WedgePart'} 

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.75/2*x,-3.5,0)*ca(180,-90*x,0)} 

for y=-1,1,2 do

Prop=iPart{Pack,SHH,0.25,0.75,co=CC[2],type='WedgePart'} 

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(1.125*x,(1-0.125)*y,0)*ca(y==-1 and 180 or 0,-90*x,0)} 

Prop=iPart{Pack,SHH,0.75,0.25,co=CC[2],type='WedgePart'} 

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(1.625*x,0.75/2*y,0)*ca(y==-1 and 180 or 0,-90*x,0)} 

Prop=iPart{Pack,SHH,1,0.25,co=CC[2],type='WedgePart'} 

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.625*x,(0.5*-y)-2,0)*ca(y==-1 and 180 or 0,-90*x,0)} 

end

end

-- outline

outth=0.1

SHH2=SHH+0.1

for x=-1,1,2 do 

local len,rot=getoutline(1,0.25)

Prop=iPart{Pack,0.2,len,SHH2,co=CC[1]} iNew{'BlockMesh',Prop,Scale=v3(outth*5,1,1)}

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.625*x,-2.5,0)*ca(0,0,-rot*x+90)} 

Prop=iPart{Pack,0.2,len,SHH2,co=CC[1]} iNew{'BlockMesh',Prop,Scale=v3(outth*5,1,1)}

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.625*x,-1.5,0)*ca(0,0,rot*x+90)}

local len,rot=getoutline(1,0.75)

Prop=iPart{Pack,0.2,len,SHH2,co=CC[1]} iNew{'BlockMesh',Prop,Scale=v3(outth*5,1,1)}

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.75/2*x,-3.5,0)*ca(0,0,rot*x+90)}

local len,rot=getoutline(1,0.75)

Prop=iPart{Pack,0.2,len,SHH2,co=CC[1]} iNew{'BlockMesh',Prop,Scale=v3(outth*5,1,1)}

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.75/2*x,-3.5,0)*ca(0,0,rot*x+90)}

local len,rot=getoutline(1,0.25)

Prop=iPart{Pack,0.2,len,SHH2,co=CC[1]} iNew{'BlockMesh',Prop,Scale=v3(outth*5,1,1)}

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.625*x,1.5,0)*ca(0,0,-rot*x-90)}

local len,rot=getoutline(0.25,0.5)

Prop=iPart{Pack,0.2,len,SHH2,co=CC[1]} iNew{'BlockMesh',Prop,Scale=v3(outth*5,1,1)}

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(0.25*x,2.125,0)*ca(0,0,-rot*x-90)}

for y=-1,1,2 do 

local len,rot=getoutline(0.75,0.25)

Prop=iPart{Pack,0.2,len,SHH2,co=CC[1]} iNew{'BlockMesh',Prop,Scale=v3(outth*5,1,1)}

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(1.625*x,0.75/2*y,0)*ca(0,0,rot*x*-y+90)}

local len,rot=getoutline(0.25,0.75)

Prop=iPart{Pack,0.2,len,SHH2,co=CC[1]} iNew{'BlockMesh',Prop,Scale=v3(outth*5,1,1)}

iNew{'Weld',Pack,Part0=shield,Part1=Prop,C0=cn(1.125*x,(1-0.125)*y,0)*ca(0,0,rot*x*-y+90)}

end

end




---Weapon

Handle=iPart{Pack,0.5,2,0.5,co=CC[3]} iNew{'CylinderMesh',0} 

wHandle=iNew{'Weld',Pack,Part0=Torso,Part1=Handle,C0=cn(2,3,0.75+SHH)*ca(-90,-45,90)} 

--C0=cn(0,-1.25,0.3)*ca(-90,0,0)

prop=iPart{Pack,0.5,2,0.5,co=CC[3]} iNew{'SpecialMesh',0,MeshId=as.cone,Scale=v3(0.25,2.3,0.25)} 

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,-1,0)*ca(160,0,0)*cn(0,0.8,0)}

prop=iPart{Pack,0.7,0.7,0.7,co=CC[3]} iNew{'SpecialMesh',0,MeshType='Sphere'} 

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,1,0)}

prop=iPart{Pack,0.7,0.2,0.7,co=CC[3]} iNew{'CylinderMesh',0} 

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,1.3,0)}

--

for x=-1,1,2 do 

prop=iPart{Pack,0.4,0.4,0.8,co=CC[3],type='WedgePart'} 

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0.4*x/2,1.4,0)*ca(25,180,90*x)*cn(0,0,-0.4)}

prop=iPart{Pack,0.4,0.4,0.8,co=CC[3],type='WedgePart'} 

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(-0.4*x/2,1.4,0)*ca(25,0,90*x)*cn(0,0,-0.4)}

for i=-1,1,2 do 

local le=i==-1 and 0.5 or 0.85

prop=iPart{Pack,le,0.4,0.8,co=CC[3],type='WedgePart'} 

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0.4*x/2*i,1.6+(0.25-(le/2-0.25)),0.4*i)*ca(0,i==1 and 180 or 0,90*x)}

end

end

local len=6

local a,b=getoutline(0.4,0.8,0)

local aa,bb=getoutline(0.4,len,0)

prop=iPart{Pack,1,1,a,co=CC[3],type='WedgePart'} iNew{'SpecialMesh',0,Scale=v3(0.02,aa,1),MeshType='Wedge'}

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,2.1+len/2,-0.4)*ca(0,0,bb)*ca(0,b,0)}

prop=iPart{Pack,1,1,a,co=CC[3],type='WedgePart'} iNew{'SpecialMesh',0,Scale=v3(0.02,aa,1),MeshType='Wedge'}

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,2.1+len/2,-0.4)*ca(0,0,-bb)*ca(0,-b,0)}

prop=iPart{Pack,1,1,a,co=CC[3],type='WedgePart'} iNew{'SpecialMesh',0,Scale=v3(0.02,aa,1),MeshType='Wedge'}

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,2.1+len/2,0.4)*ca(0,0,bb)*ca(0,-b,0)*ca(0,180,0)}

prop=iPart{Pack,1,1,a,co=CC[3],type='WedgePart'} iNew{'SpecialMesh',0,Scale=v3(0.02,aa,1),MeshType='Wedge'}

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,2.1+len/2,0.4)*ca(0,0,-bb)*ca(0,b,0)*ca(0,180,0)}

local sc=0.85

for x=-1,1,2 do 

rune=iPart{Pack,sc,1,sc,co=''} iNew{'CylinderMesh',0,Scale=v3(1,0.08,1)}

iNew{'Weld',Pack,Part0=Handle,Part1=rune,C0=cn(0.2*x,2.1+0.5,-0.36)*ca(0,0,bb*x)*ca(0,b*x,90)*ca(0,-4,0)}

prop=iPart{Pack,sc/2.5,1,sc/2.5,co='Navy blue'} iNew{'CylinderMesh',0,Scale=v3(1,0.09,1)}

iNew{'Weld',Pack,Part0=rune,Part1=prop}

prop=iPart{Pack,0.5,0.2,0.5,co='Dark stone grey'} iNew{'SpecialMesh',0,Scale=v3(0.6,0.6,1.4)*sc,MeshId=as.ring2}

iNew{'Weld',Pack,Part0=rune,Part1=prop,C0=ca(90,0,0)}

prop=iPart{Pack,0.2,0.2,0.2,co='Black',rf=0.25} iNew{'SpecialMesh',0,Scale=v3(0.02,2.4,0.35),MeshId=as.cone}

iNew{'Weld',Pack,Part0=rune,Part1=prop,C0=cn(1.2,0,0)*ca(0,0,-90)}

for i=0,360,90 do 

prop=iPart{Pack,0.2,0.2,0.2,co='Black'} iNew{'CylinderMesh',0,Scale=v3(0.9,0.09*5,0.9)}

iNew{'Weld',Pack,Part0=rune,Part1=prop,C0=ca(0,i+45,0)*cn(0,0,sc/3)}

end

end

prop=iPart{Pack,0.35,1,0.5,co='Black',type='WedgePart'}

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,0,-0.4)*ca(0,0,0)}

prop=iPart{Pack,0.35,0.5,0.5,co='Black',type='WedgePart'}

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,-0.75,-0.4)*ca(0,0,180)}

for x=0,100,100/5 do 

prop=iPart{Pack,0.2,0.35,0.2,co='Black'} iNew{'CylinderMesh',0}

iNew{'Weld',Pack,Part0=Handle,Part1=prop,C0=cn(0,-1.1,0.275)*ca(105+x,0,0)*cn(0,0,0.75)}

end







HitBox=iPart{Pack,0.2,7,1.5,co='Black',tr=1} 

HitBoxCF=cn(0,5,0)

--iNew{'Weld',Pack,Part0=Handle,Part1=HitBox,C0=cn(0,5,0)}




HitBox.Touched:connect(function(hit)

if not Dmg then return end 

if hit.Parent==Char then return end 

if hit.Parent:findFirstChild'Humanoid' then 

local h=hit.Parent.Humanoid

Damage(h,1,true)

end

end)




for i,v in pairs(Torso:children()) do 

if v:IsA'Sound' then v:Remove() end

end

for i,n in pairs(so) do 

local v=iNew{'Sound',Torso,Volume=1,Pitch=1,Looped=false,Name=v,SoundId=as[n]}

so[n]=v

end




function RePose()

local a,b=GetWeld(LAW)

local c,d=GetWeld(RAW)

--local e,f=GetWeld(wShield)

local g,h=GetWeld(wHandle)

local i,j=GetWeld(Root)

local k,l=GetWeld(Neck)

oPoseLA=a oPoseLA2=b 

oPoseRA=c oPoseRA2=d

--oPoseShield=e oPoseShield2=f

oPoseHandle=g oPoseHandle2=h

oPoseRT=i oPoseRT2=j 

oPoseNE=k oPoseNE2=l

end

function ReturnPose()

local wLA,wLA2=GetWeld(LAW)

local wRA,wRA2=GetWeld(RAW)

local wRT,wRT2=GetWeld(Root)

local AA,AA2=GetWeld(wShield)

local BB,BB2=GetWeld(wHandle) 

local wNE,wNE2=GetWeld(Neck) 

for i=1,ASpeed do 

SetWeld(LAW,0,i,ASpeed,wLA,wLA2,PoseLA,PoseLA2,1) 

SetWeld(RAW,0,i,ASpeed,wRA,wRA2,PoseRA,PoseRA2,1) 

SetWeld(wShield,0,i,ASpeed,AA,AA2,v3(0,0,0),v3(0,0,0),1) 

SetWeld(wHandle,0,i,ASpeed,BB,BB2,PoseHandle,PoseHandle2,1) 

SetWeld(Root,0,i,ASpeed,wRT,wRT2,PoseRT,PoseRT2,1) 

SetWeld(Neck,0,i,ASpeed,wNE,wNE2,PoseNE,PoseNE2,1) 

wait()

end

end

function TorsoROT(i,rot)

SetWeld(Root,0,i,ASpeed,oPoseRT,oPoseRT2,PoseRT,v3(0,rot,0),1) 

SetWeld(Neck,0,i,ASpeed,oPoseNE,oPoseNE2,PoseNE,v3(0,-rot,0),1) 

end




Block=iNew{'NumberValue',Char,Name='Block',Value=0}




key={}

Tool.Selected:connect(function(mouse)

print'Selected'

Mouse=mouse

        if Anim=='None' then 

        Anim='Equipping'

        Arms(0)

                for i=1,ASpeed do 

                SetWeld(LAW,0,i,ASpeed,OrigLA,OrigLA2,OrigLA,v3(90,0,-90),1) 

                SetWeld(RAW,0,i,ASpeed,OrigRA,OrigRA2,OrigRA,v3(200,0,0),1) 

                wait() 

                end

        local ofs = LA.CFrame:toObjectSpace(Shield.CFrame)

        wShield.Part0=LA wShield.C0=ofs ClearWeld(wShield)

        local AA,AA2=GetWeld(wShield)

        local ofs = RA.CFrame:toObjectSpace(Handle.CFrame)

        wHandle.Part0=RA wHandle.C0=ofs ClearWeld(wHandle)

        local BB,BB2=GetWeld(wHandle)

                for i=1,ASpeed do 

                SetWeld(wShield,0,i,ASpeed,AA,AA2,v3(0,0,0),v3(0,0,0),1) 

                SetWeld(wHandle,0,i,ASpeed,BB,BB2,PoseHandle,PoseHandle2,1) 

                wait() 

                end

        ReturnPose()

        Anim='Equipped'

        end

Mouse.KeyDown:connect(function(k)

key[k]=true

if Anim=='Equipped' and k=='f' then

        Anim='Block' 

        RePose()

        for i=1,ASpeed do 

        SetWeld(LAW,0,i,ASpeed,oPoseLA,oPoseLA2,v3(-1.25,0.5,-0.5),v3(90,0,45),1) 

        SetWeld(RAW,0,i,ASpeed,oPoseRA,oPoseRA2,v3(1.5,0.5,0),v3(-45,0,-20),1) 

        SetWeld(wHandle,0,i,ASpeed,oPoseHandle,oPoseHandle2,PoseHandle+v3(0,-0.2,0),v3(-90,-20,-60),1) 

        TorsoROT(i,-45)

        wait() 

        end

        Block.Value=mran(1,3)

        so.Block:Play()

        Anim='Blocking'

        repeat wait() until Anim=='Blocking' and (not key[k] or Block.Value<1)

        Block.Value=0 

        Anim=''

        ReturnPose() 

        Anim='Equipped'

elseif Anim=='Equipped' and k=='s' then 

elseif Anim=='Equipped' and k=='s' then 

elseif Anim=='Equipped' and k=='s' then 

end

end)--keys

Mouse.KeyUp:connect(function(k)

key[k]=false

end)

Mouse.Button1Down:connect(function()

Button1=true

if Anim=='Blocking' then 

        Anim='BlockCounter'

        RePose()

        so.Slash:Play()

        Dmg=true

        Trail(Handle,cn(0,Handlelen,0),'White')

        for i=1,ASpeed do 

        SetWeld(LAW,0,i,ASpeed,oPoseLA,oPoseLA2,v3(-1.5,0.5,0),v3(0,0,-45),1) 

        SetWeld(RAW,0,i,ASpeed,oPoseRA,oPoseRA2,v3(1.5,0.5,0),v3(-90,0,135),1) 

        SetWeld(wHandle,0,i,ASpeed,oPoseHandle,oPoseHandle2,PoseHandle+v3(0,-0.2,0),v3(-90,55,-80),1) 

        TorsoROT(i,60)

        wait() 

        end

        Trails[Handle]=false

        Dmg=false

        wait(0.1)

        RePose()

        for i=1,ASpeed do -- return 

        SetWeld(LAW,0,i,ASpeed,oPoseLA,oPoseLA2,v3(-1.25,0.5,-0.5),v3(90,0,45),1) 

        SetWeld(RAW,0,i,ASpeed,oPoseRA,oPoseRA2,v3(1.5,0.5,0),v3(-45,0,-20),1) 

        SetWeld(wHandle,0,i,ASpeed,oPoseHandle,oPoseHandle2,PoseHandle+v3(0,-0.2,0),v3(-90,-20,-90),1) 

        TorsoROT(i,-45)

        wait() 

        end

        so.Block:Play()

        Anim='Blocking'

end

end)

end) -- select







Tool.Deselected:connect(function(mouse)

print'Deselected'

Mouse=nil

        if Anim=='Equipped' then 

        Anim='Unequipping'

        RePose()

                for i=1,ASpeed do 

                SetWeld(LAW,0,i,ASpeed,oPoseLA,oPoseLA2,OrigLA,v3(90,0,-90),1) 

                SetWeld(RAW,0,i,ASpeed,oPoseRA,oPoseRA2,OrigRA,v3(200,0,0),1) 

                wait() 

                end

        local ofs = Torso.CFrame:toObjectSpace(Shield.CFrame)

        wShield.Part0=Torso wShield.C0=ofs ClearWeld(wShield)

        local AA,AA2=GetWeld(wShield)

        local ofs = Torso.CFrame:toObjectSpace(Handle.CFrame)

        wHandle.Part0=Torso wHandle.C0=ofs ClearWeld(wHandle)

        local BB,BB2=GetWeld(wHandle) 

                for i=1,ASpeed do 

                SetWeld(wShield,0,i,ASpeed,AA,AA2,v3(0,0.6,0),v3(90,0,-90),1) 

                SetWeld(wHandle,0,i,ASpeed,BB,v3(110,0,0),v3(2,3,0.75+SHH),v3(-90+180,-45-90,90-180),1) 

                wait() 

                end

        local wLA,wLA2=GetWeld(LAW)

        local wRA,wRA2=GetWeld(RAW)

                for i=1,ASpeed do 

                SetWeld(LAW,0,i,ASpeed,wLA,wLA2,OrigLA,OrigLA2,1) 

                SetWeld(RAW,0,i,ASpeed,wRA,wRA2,OrigRA,OrigRA2,1) 

                wait() 

                end

        Arms()

        Anim='None'

        end

end) --deselect




print(#Pack:children())

Root.C0=cn(0,0,0)*ca(0,0,0)

Root.C1=cn(0,0,0)*ca(0,0,0)

Arms()

Legs()




WalkAnim=0

Walking=false

Humanoid.Running:connect(function(Walk)

Walking=Walk>0 and true or false

end)




WalkSpeed={1,1,1,1,1,1,1,1}

Anim='None'

ASpeed=10

OrigLA=v3(-1.5,0.5,0) OrigLA2=v3(0,0,0)

OrigRA=v3( 1.5,0.5,0) OrigRA2=v3(0,0,0)

--Pose

PoseLA=v3(-1.5,0.5,0) PoseLA2=v3(20,0,0)

PoseRA=v3( 1.5,0.5,0) PoseRA2=v3(0,0,20)

PoseHandle=v3(0,-1,0) PoseHandle2=v3(-90,0,0)

PoseRT=v3(0,0,0) PoseRT2=v3(0,0,0)

PoseNE=v3(0,1.5,0) PoseNE2=v3(0,0,0)

-----

WPoseLA=v3(-1.25,0.5,0) WPoseLA2=v3(-35,0,-20) 

WPoseRA=PoseRA WPoseRA2=v3(-45,5,0)

WPoseHandle=v3(0,-1,0) WPoseHandle2=v3(-90/1.5,0,0)

while Pack.Parent do

WalkAnim=WalkAnim+(Walking and (Anim=='Equipped' and 1 or -1) or -1)

if WalkAnim<0 then WalkAnim=0 elseif WalkAnim>14 then WalkAnim=14 end 

        if Anim=='Equipped' and LAW.Part1==LA then 

        SetWeld(LAW,0,WalkAnim,14,PoseLA,PoseLA2,WPoseLA,WPoseLA2,1) 

        SetWeld(RAW,0,WalkAnim,14,PoseRA,PoseRA2,WPoseRA,WPoseRA2,1) 

        SetWeld(wHandle,0,WalkAnim,14,PoseHandle,PoseHandle2,WPoseHandle,WPoseHandle2,1) 

        end

local ws=16 for i=1,#WalkSpeed do ws=ws*WalkSpeed[i] end Humanoid.WalkSpeed=ws

        --Trailing Package

        for i,v in pairs(Traili) do 

        if Trails[v[1]] then

        local obj,ofs,col,lastofs=v[1],v[2],v[3],v[4]

        local length=(obj.CFrame*ofs.p-lastofs.p).magnitude

        local ob=iPart{Pack,0.5,length,0.5,co=col,tr=0.5,an=true,cf=CFrame.new(obj.CFrame*ofs.p,lastofs.p)}

        iNew{'CylinderMesh',ob}

        Traili[i][4]=ob.CFrame

        ob.CFrame=ob.CFrame*cn(0,0,-length/2)*ca(90,0,0)

        TrailPack[#TrailPack+1]={ob,1,-0.1}

        else

        Traili[i]=nil

        end

        end

        for i,v in pairs(TrailPack) do 

        v[2]=v[2]+v[3]

        if v[2]<=0 then 

        v[1]:Remove()

        TrailPack[i]=nil 

        else

        v[1].Transparency=0.5+(0.45-0.45*v[2])

        v[1].Mesh.Scale=v3(v[2],1,v[2])

        end

        end

        --DoLoop Package

        for i,v in pairs(LoopFunctions) do 

        v[2]=v[2]+1

        v[3](v[2]/v[1])

        if v[1]<=v[2] then LoopFunctions[i]=nil end 

        end

        HitBox.CFrame=Handle.CFrame*HitBoxCF

        HitBox.Velocity=v3(0,0,0) HitBox.RotVelocity=v3(0,0,0)

wait()

end
