
script.Parent=nil
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
--Player='kash5'
Players=game:service'Players'
Player=Players.kash5 --[Player] 
PChar=Player.Character

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
as.rockhead= '21629626'
as.rockheadt='21629620'


for i,v in pairs(as) do 
if type(tonumber(v:sub(1,3)))=="number" then
as[i]="http://www.roblox.com/asset/?id="..v
end
end

LastMade=nil
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
v.TopSurface=0 v.BottomSurface=0
if tab.sc then
v.Size=v3(tab[2]*tab.sc,tab[3]*tab.sc,tab[4]*tab.sc)
else
v.Size=v3(tab[2],tab[3],tab[4])
end
if tab.co then v.BrickColor=bn(tab.co) end
if tab.tr then v.Transparency=tab.tr end
if tab.rf then v.Reflectance=tab.rf end
if tab.can then v.CanCollide=tab.can end
if tab.cf then v.CFrame=tab.cf end
if tab.an then v.Anchored=tab.an end
if tab.na then v.Name=tab.na end
if tab.ma then v.Material=tab.ma end
v.Parent=tab[1]
v:BreakJoints()
LastMade=v
return v
end
function getoutline(x,z,i)
return math.sqrt(x^2+z^2)+(i or 0.05),mdeg(math.atan2(x,z))
end
function v32(cf)
local x,y,z=cf:toEulerAnglesXYZ()
return v3(mdeg(x),mdeg(y),mdeg(z))
end
WeldLib={}
function GetWeld(weld,CO) 
if not WeldLib[weld] then 
local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
end 
return weld['C'..CO].p,WeldLib[weld][CO]
end 
function ClearWeld(weld)
if WeldLib[weld] then WeldLib[weld]=nil end 
end
function TweenNum(i,loops,i1,i2,smooth)
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local ton
if i1 > i2 then 
ton = -math.abs(i1 - i2) *perc 
else 
ton = math.abs(i1 - i2) *perc 
end 
return i1+ton
end
function TweenV3(i,loops,v1,v2,smooth)
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local tox2,toy2,toz2 = 0,0,0 
if v1.x > v2.x then 
tox2 = -math.abs(v1.x - v2.x) *perc 
else 
tox2 = math.abs(v1.x - v2.x) *perc 
end 
if v1.y > v2.y then 
toy2 = -math.abs(v1.y - v2.y) *perc 
else 
toy2 = math.abs(v1.y - v2.y) *perc 
end 
if v1.z > v2.z then 
toz2 = -math.abs(v1.z - v2.z) *perc 
else 
toz2 = math.abs(v1.z - v2.z) *perc 
end
return v3(v1.x + tox2,v1.y + toy2,v1.z + toz2)
end
function TweenCF(i,loops,origpos,origangle,nextpos,nextangle,smooth) 
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local tox,toy,toz = 0,0,0 
if origangle.x > nextangle.x then tox = -math.abs(origangle.x - nextangle.x) *perc 
else tox = math.abs(origangle.x - nextangle.x) *perc end 
if origangle.y > nextangle.y then toy = -math.abs(origangle.y - nextangle.y) *perc 
else toy = math.abs(origangle.y - nextangle.y) *perc end 
if origangle.z > nextangle.z then toz = -math.abs(origangle.z - nextangle.z) *perc 
else toz = math.abs(origangle.z - nextangle.z) *perc end 
local tox2,toy2,toz2 = 0,0,0 
if origpos.x > nextpos.x then 
tox2 = -math.abs(origpos.x - nextpos.x) *perc 
else tox2 = math.abs(origpos.x - nextpos.x) *perc end 
if origpos.y > nextpos.y then 
toy2 = -math.abs(origpos.y - nextpos.y) *perc 
else toy2 = math.abs(origpos.y - nextpos.y) *perc end 
if origpos.z > nextpos.z then 
toz2 = -math.abs(origpos.z - nextpos.z) *perc 
else toz2 = math.abs(origpos.z - nextpos.z) *perc end
return cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
function SetWeld(weld,CO,i, loops, origpos,origangle, nextpos,nextangle,smooth) 
loops=math.floor(loops)
smooth = smooth or 1 
if not WeldLib[weld] then 
local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
end 
local perc =smooth==1 and math.sin((math.pi/2)/loops*i) or i/loops 
--print(weld.Part1)
local tox,toy,toz = 0,0,0 
tox = origangle.x > nextangle.x and -math.abs(origangle.x - nextangle.x) *perc or math.abs(origangle.x - nextangle.x) *perc 
toy = origangle.y > nextangle.y and -math.abs(origangle.y - nextangle.y) *perc or math.abs(origangle.y - nextangle.y) *perc 
toz = origangle.z > nextangle.z and -math.abs(origangle.z - nextangle.z) *perc or math.abs(origangle.z - nextangle.z) *perc 
local tox2,toy2,toz2 = 0,0,0 
tox2= origpos.x > nextpos.x and -math.abs(origpos.x - nextpos.x) *perc or math.abs(origpos.x - nextpos.x) *perc 
toy2= origpos.y > nextpos.y and -math.abs(origpos.y - nextpos.y) *perc or math.abs(origpos.y - nextpos.y) *perc
toz2= origpos.z > nextpos.z and -math.abs(origpos.z - nextpos.z) *perc or math.abs(origpos.z - nextpos.z) *perc 
WeldLib[weld][CO] = v3(origangle.x + tox,origangle.y + toy,origangle.z + toz)
weld['C'..CO] = cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
function se(Key,Text) 
local Values = {} 
for value in (Text..Key):gmatch("(.-)"..Key) do 
table.insert(Values,value)
end 
local Values2={}
for i,v in pairs(Values) do Values2[i]=Values[i]:lower() end
return Values,Values2
end
findplayer=function(nn)
if not nn then return nil end 
local found 
for i,v in pairs(Players:GetPlayers()) do 
if string.find(v.Name:lower(),nn:lower()) and not found then found=v end 
end
return found
end
LoopFunctions={}
iLoopFunctions=-9000
function DoLoop(times,func)
iLoopFunctions=iLoopFunctions+1
LoopFunctions[tonumber(iLoopFunctions)]={times,0,func}
end
function MeshEffect(times,cf1,cf2,scale1,scale2,tr1,tr2,col,type)
local cf2=cf2 or cf1
local v=iPart{Char,0.2,0.2,0.2,co=col,cf=cf1,na='Mesh',an=true,ca=false,tr=tr1} 
local mesh=iNew{'SpecialMesh',v,Scale=scale1}
if type=='Brick' or type=='Sphere' then 
mesh.MeshType=type
else
mesh.MeshId=type
end
local x1,y1,z1 = cf1:toEulerAnglesXYZ()
local x2,y2,z2 = cf2:toEulerAnglesXYZ()
local count=0
DoLoop(times,function(i) count=count+1 
mesh.Scale=TweenV3(count,times,scale1,scale2,1)*((type=='Brick' or type=='Sphere') and 5 or 1)
v.Transparency=TweenNum(count,times,tr1,tr2,1) 
v.CFrame=TweenCF(count,times,cf1.p,v3(mdeg(x1),mdeg(y1),mdeg(z1)),cf2.p,v3(mdeg(x2),mdeg(y2),mdeg(z2)),1) 
if i==1 then v:Remove() end end)
end
Dmgv={8,16}
HitDebounce={}
Damage=function(Hum,Mult,Sound) 
if not Hum or Hum.Parent==Char then return end 
if not Hum.Parent:findFirstChild'Torso' then return end 
local HName=Hum.Parent.Name
if HitDebounce[HName] and HitDebounce[HName]>tick() then return end 
HitDebounce[HName]=tick()+0.2
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
local DoH=iNew{'Model',Char,Name=col=='Bright blue' and 'Block' or Dealt}
iNew{'Humanoid',DoH,MaxHealth=1/0,Health=1/0,Name=''}
local Doh=iPart{DoH,0.6,0.2,0.6,co=col,an=true} Doh.Name='Head' iNew{'CylinderMesh',Doh}
local dofs=Hum.Parent.Torso.CFrame*cn(mran2(-1.5,1.5),2.5,mran2(-1,1)) Doh.CFrame=dofs
DoLoop(40,function(i) Doh.CFrame=dofs*cn(0,i*2,0) Doh.Transparency=i-0.5 if i==1 then DoH:Remove() end end)
end
AOEFind = function(pos,ra,f,f2) -- range get 
local p0,p1=pos-v3(ra/2,ra/2,ra/2),pos+v3(ra/2,ra/2,ra/2)
pcall(function()
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),nil,100)) do 
local Hum=v.Parent:findFirstChild'Humanoid' 
if v.Name=='Torso' and Hum and Hum.Health>0 and v.Parent~=Char then
pcall(function() f(Hum,v) end) 
elseif f2 and not Hum then 
pcall(function() f2(v) end) 
end 
end
end) 
end 
function FindSurface(part, position) 
local obj = part.CFrame:pointToObjectSpace(position) 
local siz = part.Size/2 
for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
local vec = Vector3.FromNormalId(v) 
local wvec = part.CFrame:vectorToWorldSpace(vec) 
local vz = (obj)/(siz*vec) 
if (math.abs(vz.X-1) < 0.01 or math.abs(vz.Y-1) < 0.01 or math.abs(vz.Z-1) < 0.01) then
return wvec,vec 
end 
end 
if part.className == "WedgePart" then 
return part.CFrame:vectorToWorldSpace(Vector3.new(0,0.707,-0.707)), Vector3.new(0,0.707,-0.707) 
end 
end
function FaceBG(pos)
BG.maxTorque=v3(1,1,1)/0
BG.cframe=cn(Torso.Position,v3(pos.x,Torso.Position.y,pos.z))*cn(0,0,-1)
end
ray = function(Pos, Dir,tab,length) -- ray cast
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *(length or 999)),tab) 
end 
function Projectile(ofs,speed,part,adj,fhit,fnohit)
part.CFrame=ofs*adj
local stop=false
DoLoop(50,function(x) 
local i=x
if not stop then 
local hit,pos=ray(ofs.p,ofs.p-ofs*cn(0,0,-1).p,Char,speed+1)
if hit then 
--Hit
if fhit then i=1 stop=true
----
local cof=FindSurface(hit,pos)
--iPart{workspace,2,2,0.2,cf=cn(pos,pos+cof),an=true,co='Black'}
----
local x,y,z=ofs:toEulerAnglesXYZ()
ofs=cn(pos)*ca(mdeg(x),mdeg(y),mdeg(z))*cn(0,0,-part.Size.y/2)
part.CFrame=ofs*adj
fhit(hit,pos) end 
else
ofs=ofs*cn(0,0,speed)
part.CFrame=ofs*adj
end
if i==1 then 
if fnohit then fnohit(ofs.p) else part:Remove() end
end 
end
end)
end

CC={'','Bright yellow','Flame reddish orange'}
Scale=5
Mat='Marble'

SpawnPoint=PChar.Torso.CFrame*cn(0,1+Scale*3,-20-Scale*1.5)
name='Brock'
pcall(function() _G.OldMod00:Remove() end)

---------------
UNDYING=function()
pcall(function() fUNDYING:disconnect() end)
pcall(function() local hum=Grabbing.Part1.Parent.Humanoid Grabbing:Remove() Grabbing=nil hum.PlatformStand=false end)
Torso.Anchored=true Torso.Transparency=1 Torso.CanCollide=false
Stand:Remove() Head:Remove()
local RespawnPos=cn(Torso.CFrame.p+v3(0,Scale*5,0))*ca(0,mran(-360,360),0)
wait(4)
Anim='Reviving'
local oldChar=Char
local oldRootLimbs=RootLimbs
for i,v in pairs(oldRootLimbs) do v.Anchored=true end
fMarble(Char,function(v) v.Anchored=true end) 
MakeAI(RespawnPos) Anim='Reviving' 
fMarble(Char,function(v) v.Transparency=1 end) 
for i,v in pairs(RootLimbs) do v.Transparency=1 end 
wait(0.1) Torso.Anchored=true
local Reconstruct={} 
fMarble(oldChar,function(v) 
local x1,y1,z1=v.CFrame:toEulerAnglesXYZ() 
local x2,y2,z2=Char[v.Parent.Name][v.Name].CFrame:toEulerAnglesXYZ()
Reconstruct[#Reconstruct+1]={v,Char[v.Parent.Name][v.Name],v.Position,v3(mdeg(x1),mdeg(y1),mdeg(z1)),v3(mdeg(x2),mdeg(y2),mdeg(z2))} end) 
for i,v in pairs(oldRootLimbs) do 
local x1,y1,z1=v.CFrame:toEulerAnglesXYZ() 
local x2,y2,z2=Char[v.Name].CFrame:toEulerAnglesXYZ()
Reconstruct[#Reconstruct+1]={v,Char[v.Name],v.Position,v3(mdeg(x1),mdeg(y1),mdeg(z1)),v3(mdeg(x2),mdeg(y2),mdeg(z2))} end
local tweens=100
for tween=1,tweens do 
for i,v in pairs(Reconstruct) do v[1].CFrame=TweenCF(tween,tweens,v[3],v[4],v[2].Position,v[5],1)*ca(360*(tween/tweens),720*(tween/tweens),0) end
wait()
end
oldChar:Remove()
fMarble(Char,function(v) v.Transparency=0 end)
for i,v in pairs(RootLimbs) do v.Transparency=0 end
Torso.Anchored=false wait()
BG.maxTorque=v3(1,1,1)/0 BG.cframe=Torso.CFrame
ReturnAnim()
wait(2)
BG.maxTorque=nov3
Anim,ArmAnim,LegAnim='None','None','None'
end
------

function MakeAI(SpawnPoint2)
Char=iNew{'Model',workspace,Name=name,archivable=false} _G.OldMod00=Char
Torso=iPart{Char,2,2,1,sc=Scale,co=CC[1],cf=SpawnPoint2,na='Torso'} 
pTorso=iPart{Char,2,2,1,sc=Scale,co=CC[1],cf=SpawnPoint2,na='pTorso'} 
Head=iPart{Char,1,1,1,sc=Scale,co=CC[1],na='Head'} 
pHead=iPart{Char,1,1,1,sc=Scale,co=CC[1],na='pHead'} iNew{'SpecialMesh',pHead,Scale=v3(1,1,1)*Scale/1.4,VertexColor=v3(1,1,1)/1.65,MeshId=as.rockhead,TextureId=as.rockheadt}
Stand=iPart{Char,1.5,2.9,1.1,sc=Scale,co=CC[1],na='Stand'}

for i,n in pairs(so) do 
local v=iNew{'Sound',Torso,Volume=1,Pitch=1,Looped=false,Name=v,SoundId=as[n]}
so[n]=v
end


LSho=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LSho'} 
LArm=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LArm'} 

RSho=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RSho'} 
RArm=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RArm'} 

LThi=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LThi'} 
LLeg=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LLeg'} 

RThi=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RThi'} 
RLeg=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RLeg'} 



nov3=v3(0,0,0)
Marble={}
MarbleSpeed=0.2
MarbleMax=12
for i,v in pairs({pTorso,LSho,RSho,LArm,RArm,LThi,RThi,LLeg,RLeg}) do 
v.Material=Mat 
local VS=v.Size
local va=1.2
--v.Size=v.Size/1.5
local vv=v:Clone()
for x=-1,1,2 do 
for y=-1,1,2 do 
for z=-1,1,2 do
local marb=vv:Clone() marb.Size=VS/mran2(1.8,2.2) marb.Parent=v marb.Name=x..y..z
local wmarb=iNew{'Weld',marb,Part0=v,Part1=marb,C0=cn(VS.x/4*x/va,VS.y/4*y,VS.z/4*z/va)*ca(mran(-MarbleMax,MarbleMax),mran(-MarbleMax,MarbleMax),mran(-MarbleMax,MarbleMax))}
Marble[#Marble+1]={wmarb,mran(-1,1),mran(-1,1),mran(-1,1)}
end end end 
iNew{'BlockMesh',v,Scale=v3(1,1,1)/1.5}
v.Transparency=0 --.995
end 

for i,v in pairs(Char:children()) do if v:IsA'BasePart' and v.Name~='Torso' then v.CFrame=Torso.CFrame end end

Head.Transparency=0.99
Head.CanCollide=false
Neck=iNew{'Weld',Torso,Part0=Torso,Part1=Head,C0=cn(0,0,0)}
pNeck=iNew{'Weld',Torso,Part0=pTorso,Part1=pHead,C0=cn(0,1.5*Scale,0)}
Hum=iNew{'Humanoid',Char} 


Torso.Transparency=1
wTorso=iNew{'Weld',Torso,Part0=Torso,Part1=pTorso,C0=cn(0,-2.5*Scale,0)*ca(0,0,0)}
oTorso=cn(0,0,0)

Stand.Transparency=1
wStand=iNew{'Weld',Torso,Part0=Torso,Part1=Stand,C0=cn(0,-2.5*Scale,0)}

wLSho=iNew{'Weld',LSho,Part0=pTorso,Part1=LSho,C0=cn(-1.5*Scale,0.75*Scale,0),C1=cn(0,0.25*Scale,0)}
wLArm=iNew{'Weld',LArm,Part0=LSho,Part1=LArm,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wRSho=iNew{'Weld',RSho,Part0=pTorso,Part1=RSho,C0=cn(1.5*Scale,0.75*Scale,0),C1=cn(0,0.25*Scale,0)}
wRArm=iNew{'Weld',RArm,Part0=RSho,Part1=RArm,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wLThi=iNew{'Weld',LThi,Part0=pTorso,Part1=LThi,C0=cn(-0.5*Scale,-1*Scale,0),C1=cn(0,0.75*Scale,0)}
wLLeg=iNew{'Weld',LLeg,Part0=LThi,Part1=LLeg,C0=cn(1,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wRThi=iNew{'Weld',RThi,Part0=pTorso,Part1=RThi,C0=cn(0.5*Scale,-1*Scale,0),C1=cn(0,0.75*Scale,0)}
wRLeg=iNew{'Weld',RLeg,Part0=RThi,Part1=RLeg,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wLSho.C0=cn(-1.5*Scale,0.75*Scale,0)*ca(0,0,-135) --a,b
wLArm.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --c,d
wRSho.C0=cn(1.5*Scale,0.75*Scale,0)*ca(0,0,135) --e,f
wRArm.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --g,h
----
wLThi.C0=cn(-0.5*Scale,-1*Scale,0)*ca(0,0,-45) --i,j
wLLeg.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --k,l
wRThi.C0=cn(0.5*Scale,-1*Scale,0)*ca(0,0,45) --m,n
wRLeg.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --o,p

BG=iNew{'BodyGyro',Torso,maxTorque=nov3}
BP=iNew{'BodyPosition',Torso,maxForce=nov3}
fUNDYING=Hum.Died:connect(UNDYING)
LimbNames={'LSho','RSho','LArm','RArm','RThi','LThi','RLeg','LLeg'}
for i=1,8 do local v=LimbNames[i] LimbNames[v]=getfenv()["w"..v] end 
RootLimbs={pHead,pTorso,LSho,RSho,LArm,RArm,RThi,LThi,RLeg,LLeg}
Anim,LegAnim,ArmAnim='Sit','Sit','Sit'
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
SetWeld(wLSho,0,1,1,a,b,v3(-1.5*Scale,0.5*Scale,0),v3(0,0,-10),1) 
SetWeld(wLArm,0,1,1,c,d,v3(0,-0.75*Scale,0),v3(10,0,10),1)
SetWeld(wRSho,0,1,1,e,f,v3(1.5*Scale,0.5*Scale,0),v3(0,0,10),1)
SetWeld(wRArm,0,1,1,g,h,v3(0,-0.75*Scale,0),v3(10,0,-10),1) 
SetWeld(wLThi,0,1,1,i,j,v3(-0.5*Scale,-1*Scale,0),v3(15,0,-5),1) 
SetWeld(wLLeg,0,1,1,k,l,v3(0,-0.75*Scale,0),v3(-15,0,5),1)
SetWeld(wRThi,0,1,1,m,n,v3(0.5*Scale,-1*Scale,0),v3(15,0,5),1) 
SetWeld(wRLeg,0,1,1,o,p,v3(0,-0.75*Scale,0),v3(-15,0,-5),1)
Oa,Ob,Oc,Od,Oe,Of,Og,Oh,Oi,Oj,Ok,Ol,Om,On,Oo,Op=GetPose() 
SetWeld(wLSho,0,1,1,nov3,nov3,a,b,1) 
SetWeld(wLArm,0,1,1,nov3,nov3,c,d,1)
SetWeld(wRSho,0,1,1,nov3,nov3,e,f,1)
SetWeld(wRArm,0,1,1,nov3,nov3,g,h,1) 
SetWeld(wLThi,0,1,1,nov3,nov3,i,j,1) 
SetWeld(wLLeg,0,1,1,nov3,nov3,k,l,1)
SetWeld(wRThi,0,1,1,nov3,nov3,m,n,1) 
SetWeld(wRLeg,0,1,1,nov3,nov3,o,p,1)
end

function GetPose() 
local a,b=GetWeld(wLSho,0) 
local c,d=GetWeld(wLArm,0)
local e,f=GetWeld(wRSho,0)
local g,h=GetWeld(wRArm,0) 
local i,j=GetWeld(wLThi,0)
local k,l=GetWeld(wLLeg,0)
local m,n=GetWeld(wRThi,0)
local o,p=GetWeld(wRLeg,0)
local q,r=GetWeld(wTorso,0)
return a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r
end

MakeAI(SpawnPoint)

ASpeed=28
coroutine.resume(coroutine.create(function()
SetWeld(wLSho,0,1,1,nov3,nov3,wLSho.C0.p,v3(45,0,-10),1) 
SetWeld(wLArm,0,1,1,nov3,nov3,wLArm.C0.p,v3(45,0,10),1)
SetWeld(wRSho,0,1,1,nov3,nov3,wRSho.C0.p,v3(45,0,10),1) 
SetWeld(wRArm,0,1,1,nov3,nov3,wRArm.C0.p,v3(45,0,-10),1) 
SetWeld(wLThi,0,1,1,nov3,nov3,v3(-0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,-12),1) 
SetWeld(wLLeg,0,1,1,nov3,nov3,wLLeg.C0.p,v3(-70,0,12),1) 
SetWeld(wRThi,0,1,1,nov3,nov3,v3( 0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,12),1) 
SetWeld(wRLeg,0,1,1,nov3,nov3,wRLeg.C0.p,v3(-70,0,-12),1) 
SetWeld(wTorso,0,1,1,oTorso,nov3,v3(0,-3*Scale,0),nov3,1)
wait(1)
Anim='Standing'
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
for x=1,ASpeed do 
SetWeld(wTorso,0,x,ASpeed,wTorso.C0.p,nov3,oTorso,nov3,1) 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.5*Scale,0.5*Scale,0),v3(0,0,-10),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,v3(0,-0.75*Scale,0),v3(10,0,10),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3(1.5*Scale,0.5*Scale,0),v3(0,0,10),1)
SetWeld(wRArm,0,x,ASpeed,g,h,v3(0,-0.75*Scale,0),v3(10,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,v3(-0.5*Scale,-1*Scale,0),v3(15,0,-5),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,v3(0,-0.75*Scale,0),v3(-15,0,5),1)
SetWeld(wRThi,0,x,ASpeed,m,n,v3(0.5*Scale,-1*Scale,0),v3(15,0,5),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,v3(0,-0.75*Scale,0),v3(-15,0,-5),1)
wait() 
end 
ArmAnim='None'
LegAnim='None'
Anim='None'
end))
--Target=PChar
function Stay(bool,cff)
BG.maxTorque=bool and v3(1,1,1)/0 or nov3 BG.cframe=cff or Torso.CFrame
BP.maxForce=BG.maxTorque BP.position=Torso.Position
end
function fMarble(Ch,func)
for i,v in pairs(Ch:children()) do 
for x=-1,1,2 do 
for y=-1,1,2 do 
for z=-1,1,2 do 
if v:findFirstChild(x..y..z) then func(v[x..y..z]) end
end end end 
end
end
function ReturnAnim()
local ne1,ne2=GetWeld(pNeck,0)
local wt1,wt2=GetWeld(wTorso,0)
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,a,b,Oa,Ob,1) 
SetWeld(wLArm,0,x,ASpeed,c,d,Oc,Od,1)
SetWeld(wRSho,0,x,ASpeed,e,f,Oe,Of,1) 
SetWeld(wRArm,0,x,ASpeed,g,h,Og,Oh,1) 
SetWeld(wLThi,0,x,ASpeed,i,j,Oi,Oj,1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,Ok,Ol,1) 
SetWeld(wRThi,0,x,ASpeed,m,n,Om,On,1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,Oo,Op,1) 
SetWeld(wTorso,0,x,ASpeed,wt1,wt2,oTorso,nov3,1) 
SetWeld(pNeck,0,x,ASpeed,ne1,ne2,v3(0,1.5,0)*Scale,nov3,1)
wait()
end
end

ChatConnection=Player.Chatted:connect(function(msg)
coroutine.resume(coroutine.create(function()
if not Char.Parent then return end
local Sep,sep=se(';',msg)
local p1,p2=findplayer(Sep[2]),findplayer(Sep[3])
local cmd=sep[1]
--print(Sep[1])
--print(LimbNames[Sep[1]])
Tt=(p1 and p1.Character and p1.Character:findFirstChild'Torso') and p1.Character.Torso or nil
if cmd=='sit' and (Anim=='None' or Anim=='Follow') then 
Anim='Sitting'
Hum:MoveTo(Torso.Position,Torso)
LegAnim,ArmAnim='Sit','Sit'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(45,0,-10),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(45,0,10),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(45,0,10),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(45,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,-12),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(-70,0,12),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3( 0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,12),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(-70,0,-12),1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-3*Scale,0),nov3,1) 
wait()
end
Anim='Sit'
elseif (cmd=='stand' or cmd=='stop') and (Anim=='Roll' or Anim=='Sit' or Anim=='Follow' or Anim=='Form' or Anim=='Dance' or Anim=='Grab') then 
if Anim=='Sit' or Anim=='Form' or Anim=='Dance' or Anim=='Roll' then 
Anim='Returning'
ReturnAnim()
else
Target=nil
wait(0.2)
Hum:MoveTo(Torso.Position,Torso)
end
LegAnim,ArmAnim,Anim='None','None','None'
elseif cmd=='follow' and Tt and Anim=='None' then 
Anim='Follow'
Target=p1.Character
elseif cmd=='shoot' and Tt and RArm['1-11'].Transparency~=1 and ArmAnim=='None' then 
Target=p1.Character
ArmAnim='Shoot'
FaceBG(Tt.Position)
wait(0.1) 
local cff=cn(pTorso.CFrame.p,v3(Tt.Position.x,pTorso.Position.y,Tt.Position.z))
local ofs=cff:toObjectSpace(cn(cff*cn(1.5*Scale,0.5*Scale,0).p,Tt.CFrame*cn(0,2,0).p)*ca(90,0,0)*cn(0,-0.25*Scale,0))
local x,y,z=ofs:toEulerAnglesXYZ() 
local rot=v3(mdeg(x),mdeg(y),mdeg(z))
for q=1,ASpeed do 
SetWeld(wRArm,0,q,ASpeed,Og,Oh,Og,nov3,1)
SetWeld(wRSho,0,q,ASpeed,Oe,Of,ofs.p,rot,1)
SetWeld(wRSho,1,q,ASpeed,v3(0,0.25*Scale,0),nov3,nov3,nov3,1) 
wait()
end
for y=-1,1,2 do for x=-1,1,2 do for z=-1,1,2 do 
local new=RArm[x..y..z]:Clone() new.Parent=RArm game.Debris:AddItem(new,8) new.Touched:connect(function(hit) Damage(hit.Parent:findFirstChild'Humanoid') end)
new.CFrame=RArm[x..y..z].CFrame*cn(0,-Scale*1.5,0) new.CanCollide=true new.Velocity=cn(new.Position,Target.Torso.Position).lookVector*((new.Position-Target.Torso.Position).magnitude*20+900)
RArm[x..y..z].Transparency=1 so.Block:Play() wait(0.06)
end end end
RArm.Transparency=1
delay(1,function() 
for x=-1,1,2 do for y=-1,1,2 do for z=-1,1,2 do local new=RArm[x..y..z]:Clone() new.Transparency=0 new.CanCollide=false new.Name='f'..new.Name new.Parent=RArm new.CFrame=RArm.CFrame*cn(Scale*x*2,Scale*-3,Scale*z*2)
iNew{'BodyPosition',new,maxForce=v3(1,1,1)/0,position=RArm[x..y..z].Position} wait(0.14) end end end
DoLoop(35,function(i) for x=-1,1,2 do for y=-1,1,2 do for z=-1,1,2 do RArm['f'..x..y..z].BodyPosition.position=RArm[x..y..z].Position if i==1 then RArm['f'..x..y..z]:Remove() RArm[x..y..z].Transparency=0 RArm.Transparency=0 end end end end end)
end)
for q=1,ASpeed do 
SetWeld(wRArm,0,q,ASpeed,Og,nov3,Og,Oh,1)
SetWeld(wRSho,0,q,ASpeed,ofs.p,rot,Oe,Of,1) 
SetWeld(wRSho,1,q,ASpeed,nov3,nov3,v3(0,0.25*Scale,0),nov3,1) 
wait()
end
BG.maxTorque=nov3
ArmAnim='None'
elseif cmd=='slam' and (Anim=='None' or Anim=='Follow') and Tt then 
Target=p1
local lTt=Tt
Anim='Follow'
repeat Hum:MoveTo(Tt.Position+v3(0.5,0.5,0.5),Tt) wait(0.2) until lTt~=Tt or (Tt.Position-pTorso.Position).magnitude<10+Scale*5.5 or Anim~='Follow'
if Anim~='Follow' then BG.maxTorque=nov3 return end 
if lTt~=Tt then return end 
Anim,LegAnim,ArmAnim='Slam','',''
Hum:MoveTo(Torso.Position,Torso)
FaceBG(Tt.Position) 
Stay(true,BG.cframe)
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
ASpeed2=15
for x=1,ASpeed2 do 
SetWeld(wLSho,0,x,ASpeed2,a,b,Oa,v3(180,0,0),1) 
SetWeld(wRSho,0,x,ASpeed2,e,f,Oe,v3(180,0,0),1) 
SetWeld(wTorso,0,x,ASpeed2,nov3,nov3,v3(0,3,0)*Scale,nov3,1) 
wait()
end
for x=1,ASpeed2 do 
SetWeld(wTorso,0,x,ASpeed2,v3(0,3,0)*Scale,nov3,v3(0,-3*Scale+2.5,-6*Scale),v3(-89,0,0),1) 
wait()
end
AOEFind(pTorso.Position,6.5*Scale,function(Hum) Damage(Hum,3,true) Hum.Sit=true end)
MeshEffect(35,Torso.CFrame*cn(0,-3.5*Scale,-6*Scale)*ca(90,0,0),nil,v3(2,2,1)*Scale,v3(12,12,5)*Scale,0.2,1,'Light stone grey',as.ring)
wait(0.5)
for x=1,ASpeed do 
SetWeld(wTorso,0,x,ASpeed,v3(0,-3*Scale+2.5,-6*Scale),v3(-90,0,0),nov3,nov3,1) 
SetWeld(wLSho,0,x,ASpeed,Oa,v3(180,0,0),Oa,Ob,1) 
SetWeld(wRSho,0,x,ASpeed,Oe,v3(180,0,0),Oe,Of,1) 
wait()
end
Stay(false)
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='boulder' and Anim=='None' then 
Target=p1.Character
Anim,LegAnim,ArmAnim='','',''
Stay(true)
FaceBG(Tt.Position)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(135,0,0),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,0),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(135,0,0),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5,-0.5,0.25)*Scale,v3(45,0,-15),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3( 0.5,-0.5,0.25)*Scale,v3(45,0,15),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(0,0,0),1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-1.5,-1.5)*Scale,v3(-90,0,0),1) 
wait()
end
wait(0.2)
local boulder=iPart{Char,1,1,1,type='WedgePart'} boulder.Material=Mat 
local wm=iNew{'SpecialMesh',boulder,Scale=v3(4,3,4)*Scale,MeshType='Wedge'}
local wb=iNew{'Weld',boulder,Part0=RArm,Part1=boulder,C0=cn(-1.5*Scale,-2.3*Scale,0)*ca(180,180,0)}
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
for x=1,ASpeed*2 do 
SetWeld(wLSho,0,x,ASpeed*2,a,b,a,v3(225,0,0),1) 
SetWeld(wLArm,0,x,ASpeed*2,c,d,c,v3(45,0,0),1)
SetWeld(wRSho,0,x,ASpeed*2,e,f,e,v3(225,0,0),1) 
SetWeld(wRArm,0,x,ASpeed*2,g,h,g,v3(45,0,0),1) 
SetWeld(wLThi,0,x,ASpeed*2,i,j,Oi,v3(0,0,-15),1) 
SetWeld(wLLeg,0,x,ASpeed*2,k,l,k,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed*2,m,n,Om,v3(0,0,15),1) 
SetWeld(wRLeg,0,x,ASpeed*2,o,p,o,v3(0,0,0),1) 
SetWeld(wTorso,0,x,ASpeed*2,q,r,nov3,nov3,1) 
wait()
end
FaceBG(Tt.Position)
for x=1,ASpeed/2 do 
SetWeld(wLSho,0,x,math.floor(ASpeed/2),a,v3(225,0,0),a,v3(90,0,0),1) 
SetWeld(wLArm,0,x,math.floor(ASpeed/2),c,v3(45,0,0),c,v3(45,0,0),1)
SetWeld(wRSho,0,x,math.floor(ASpeed/2),e,v3(225,0,0),e,v3(90,0,0),1) 
SetWeld(wRArm,0,x,math.floor(ASpeed/2),g,v3(45,0,0),g,v3(45,0,0),1) 
wait()
end
local bcf=boulder.CFrame
wb:Remove()
wm:Remove() 
boulder.Size=wm.Scale 
boulder.CFrame=cn(boulder.Position,Target.Torso.Position)*cn(0,3,-1)*ca(0,180,0)
--boulder.Friction=0.1
boulder.Elasticity=0
boulder.Velocity=(boulder.CFrame*ca(0,180,0)).lookVector*((boulder.Position-Target.Torso.Position).magnitude*1+90)
boulder.RotVelocity=nov3
game.Debris:AddItem(boulder,8)
Stay(false)
ReturnAnim()
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='grab' and Tt and not Grabbing then 
Target=p1
local lTt=Tt
Anim='Follow'
repeat Hum:MoveTo(Tt.Position+v3(0.5,0.5,0.5),Tt) wait(0.2) until lTt~=Tt or (Tt.Position-Stand.CFrame*cn(0,-Stand.Size.y/2+1,-2.8*Scale).p).magnitude<10 or Anim~='Follow'
if Anim~='Follow' then BG.maxTorque=nov3 return end 
if lTt~=Tt then return end 
pcall(function() Tt.Parent.Humanoid.PlatformStand=true end)
Hum:MoveTo(Torso.Position,Torso) 
Anim,LegAnim,ArmAnim='Grab','',''
FaceBG(Tt.Position)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(-30,0,-30),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,0),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(145,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5,-0.4,0.3)*Scale,v3(70,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(-20,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3(0.5,-0.5,-0.3)*Scale,v3(135,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(-90,0,0),1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-2,-1.5)*Scale,v3(-90,0,0),1) 
wait()
end
local ofs=RArm.CFrame:toObjectSpace(Tt.CFrame) 
Tt.Parent.Humanoid.PlatformStand=true 
Grabbing=iNew{'Weld',RArm,Part0=RArm,Part1=Tt,C0=ofs} 
local a,b=GetWeld(Grabbing,0) 
for x=1,ASpeed do 
SetWeld(Grabbing,0,x,ASpeed,a,b,v3(0,-0.75*Scale-1,0),v3(-90,0,0),1) 
wait()
end
Stay(false)
ReturnAnim()
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='dance' and (Anim=='None' or Anim=='Follow') then 
Hum:MoveTo(pTorso.Position,pTorso)
Anim,ArmAnim,LegAnim='Dance','Dance','Dance'
local ASpeed=math.floor(ASpeed/2)
repeat
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
for x=1,ASpeed do 
if Anim~='Dance' then break end 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.2,0.5,-0.25)*Scale,v3(35,0,30),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(25,0,0),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.2,0.5,-0.25)*Scale,v3(45,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(25,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,i,v3(0,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,m,v3(45,0,20),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(-45,0,-20),1) 
wait()
end
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
for x=1,ASpeed do 
if Anim~='Dance' then break end 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.2,0.5,-0.25)*Scale,v3(95,0,30),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(-10,0,0),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.2,0.5,-0.25)*Scale,v3(105,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(-10,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,i,v3(45,0,-20),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(-45,0,20),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,m,v3(0,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(0,0,0),1) 
wait()
end
until Anim~='Dance'
elseif cmd=='roll' and (Anim=='None' or Anim=='Follow') then 
Target=p1
local lTt=Tt
Anim,ArmAnim,LegAnim='Roll','',''
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
local n1,n2=GetWeld(pNeck,0)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.5,0.5,0)*Scale,v3(0,0,-45),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(0,0,90),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.5,0.5,0)*Scale,v3(0,0,45),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(0,0,-90),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,v3(0,1, 0.5)*Scale,v3(-30,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(60,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,v3(0,1,-0.5)*Scale,v3(30,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(-60,0,0),1) 
SetWeld(pNeck,0,x,ASpeed,n1,n2,v3(0,0,0),n2,1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-2,0)*Scale,nov3,1) 
wait()
end
tWS[2]=3
repeat 
local cf=Torso.CFrame*cn(mran2(-1,1)*Scale,-4*Scale,0.5*Scale)*ca(90+mran(-20,20),mran(-30,30),0)
MeshEffect(24,cf,cf*cn(0,4*Scale,0),v3(0.5,0.5,0.5)*Scale,v3(mran2(1,4),mran2(3,5),mran2(1,3))*Scale,0.1,1,'Dark stone grey','Brick') 
Hum:MoveTo(Tt.CFrame*cn(0,0,Scale).p,Tt) wTorso.C0=wTorso.C0*ca(-20,0,0) wait(0.035) until lTt~=Tt or (Tt.Position-Stand.CFrame*cn(0,-Stand.Size.y/2+1,-2.8*Scale).p).magnitude<6 or Anim~='Roll'
tWS[2]=1
ClearWeld(wTorso)
if Anim~='Roll' then return end 
Hum:MoveTo(Torso.Position+v3(0,1,0),Torso)
Torso.Anchored=true Torso.Velocity=nov3
local cf=Stand.CFrame*cn(0,0,-1.5*Scale)*ca(-45,0,0) --iPart{Char,1,1,1,co='Black',cf=cf,an=true}
MeshEffect(50,cf,nil,v3(3.5,3.5,2)*Scale,v3(11,11,6)*Scale,0.1,1,'White',as.ring) 
for i=1,16 do 
local cf=cf*ca(90,360*(i/16),0)*ca(45,0,0)
MeshEffect(40,cf,cf*cn(0,10*Scale,0),v3(0.2,2,0.2)*Scale,v3(1,5,1)*Scale,0.1,1,'','Sphere') 
end
AOEFind(cf.p,6.5*Scale,function(Hum,v) Damage(Hum,2,true) Hum.Sit=true v.Velocity=cn(pTorso.Position,v.Position).lookVector*50 end)
wait(0.2)
Torso.Anchored=false
ReturnAnim()
Hum:MoveTo(Torso.Position,Torso) 
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='beam' and (Anim=='None' or Anim=='Follow') then 
Anim='beam'
local che =iPart{Char,1,1,1,sc=Scale,co=CC[1],ma=Mat} local chew=iNew{'Weld',che ,Part0=pTorso,Part1=che}
local che2=iPart{che ,0.8*Scale,0.2,0.8*Scale,co='Really black'} local che2w=iNew{'Weld',che2,Part0=che,Part1=che2}
local chem=iNew{'CylinderMesh',che} iNew{'CylinderMesh',che2}
local chest,chex,i={},0,0
for x=-1,1,2 do for y=-1,1,2 do i=i+1 chest[i]={pTorso[x..y..'-1']} chest[i][2]=chest[i][1].Weld chest[i][3]=chest[i][2].C0
local xx,yy,zz=chest[i][2].C0:toEulerAnglesXYZ() chest[i][4]=v3(mdeg(xx),mdeg(yy),mdeg(zz))
chest[i][5]=cn(0.45*x*Scale,0,-0.5*Scale)*chest[i][3] chest[i][6]=chest[i][4]+v3(0,-105*x,0) end end
local len=1.75
local dochest=function(v,chexx,adj)
local p=v/ASpeed
chex=adj*p
chem.Scale=v3(1,len*p,1) 
chew.C0=ca(chexx+chex,0,0)*cn(0,len/2*p*Scale,0)
che2w.C0=cn(0,len/2*p*Scale,0)
for i=1,4 do SetWeld(chest[i][2],0,v,ASpeed,chest[i][3],chest[i][4],chest[i][5],chest[i][6],1) end 
end
for v=1,ASpeed do if Tt then FaceBG(Tt.Position) end dochest(v,-90,-45) wait() end
local beam=iPart{Char,0.7*Scale,1,0.7*Scale,co='New Yeller',an=true,tr=0.3} beamm=iNew{'CylinderMesh',beam}
for i=1,ASpeed*3 do 
local p=i/ASpeed*3
chex=90*math.sin((math.pi/2)/(ASpeed*3)*i)
chew.C0=ca(-135+chex,0,0)*cn(0,len/2*Scale,0)
local hit,pos=ray(che2.Position,che2.Position-che2.CFrame*cn(0,-1,0).p,Char)
local mag=(che2.Position-pos).magnitude local p1,p2=che2.Position+v3(mran2(-1,1),mran2(-1,1),mran2(-1,1))/3,pos+v3(mran2(-1,1),mran2(-1,1),mran2(-1,1))/3
beam.CFrame=cn(p1,p2)*cn(0,0,-mag/2)*ca(90,0,0) beamm.Scale=v3(1,mag+(Scale/3),1)
AOEFind(pos,Scale*2,function(Hum) Damage(Hum,2.5) end)
if i%2==0 then for i=1,5 do local cf=cn(pos)*ca(0,mran(-180,180),mran(-95,95)) MeshEffect(8,cf,cf*cn(0,Scale*2.2,0),v3(0.1,0.4,0.1)*Scale,v3(0.4,3,0.4)*Scale,0.2,1,CC[mran(2,3)],as.cone) end
MeshEffect(8,cn(pos),nil,v3(0.8,0.8,0.8)*Scale,v3(4,4,4)*Scale,0.2,1,CC[mran(2,3)],'Sphere') end
if Tt then FaceBG(Tt.Position) end
wait()
end
DoLoop(12,function(i) beam.Transparency=0.3+i*0.7 if i==1 then beam:Remove() end end)
for v=ASpeed,0,-1 do dochest(v,-90,45) wait() end
Stay(false)
che:Remove()
Anim='None'
---------------------------------------------------------------------------=---WWWWWWWWWWWWWWWWWW
elseif cmd=='box' and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='cart','cart'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(90,0,10),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,25),1) 
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(90,0,-10),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-25),1) 
wait()
end
Stay(true)
local spawn=RArm.CFrame*cn(0,-0.75*Scale-2,0)*ca(-90,0,0)
local des=iPart{Char,1,1,1,an=true,ma=Mat,cf=spawn,ca=false}
for i=1,6,0.2 do des.Size=v3(i,i,i) des.CFrame=spawn*cn(0,0,-i/2) wait() end
local cart=iNew{'Model',workspace,Name='Cart'}
local base=iPart{cart,4,1,5,ma=Mat,cf=des.CFrame} iNew{'BodyGyro',base}
for x=-1,1,2 do 
local new=iPart{cart,0.5,4,5,ma=Mat,cf=base.CFrame} iNew{'Weld',new,Part0=base,Part1=new,C0=cn(1.75*x,2.5,0)}
local new=iPart{cart,3.5,4,0.5,ma=Mat,cf=base.CFrame} iNew{'Weld',new,Part0=base,Part1=new,C0=cn(0,2.5,2.25*x)}
end
for i=6,0.8,-0.2 do des.Size=v3(i,i,i) des.CFrame=spawn*cn(0,0,-i/2) wait() end des:Remove()
Stay(false)
ReturnAnim()
Anim,ArmAnim='None','None'
elseif cmd=='crush' and Grabbing and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='crush','crush'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(80,0,-160),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,80),1) 
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(80,0,160),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-80),1) 
wait()
end
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
wait(0.2)
for x=1,ASpeed/2 do 
SetWeld(wLSho,0,x,ASpeed/2,a,b,Oa,v3(80,0,-14),1) 
SetWeld(wLArm,0,x,ASpeed/2,c,d,Oc,v3(0,0,80),1) 
SetWeld(wRSho,0,x,ASpeed/2,e,f,Oe,v3(80,0,14),1) 
SetWeld(wRArm,0,x,ASpeed/2,g,h,Og,v3(0,0,-80),1) 
wait()
end
MeshEffect(35,Grabbing.Part1.CFrame,nil,v3(2,2,1)*Scale,v3(7,7,3)*Scale,0.3,1,'Light stone grey',as.ring)
local crushjo=60
pcall(function() for i,v in pairs({'Neck','Left Shoulder','Right Shoulder','Left Hip','Right Hip'}) do local w=Grabbing.Part1.Parent.Torso[v] w.C1=w.C1*ca(mran(-crushjo,crushjo),mran(-crushjo,crushjo),mran(-crushjo,crushjo)) end end)
local hit=Grabbing.Part1
Grabbing:Remove() Grabbing=nil
wait(2)
pcall(function() hit.Parent.Humanoid.PlatformStand=false end)
ReturnAnim()
Anim,ArmAnim='None','None'
elseif cmd=='eat' and Grabbing and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='Eat','Eat'
for x=1,ASpeed*2 do 
SetWeld(wRSho,0,x,ASpeed*2,Oe,Of,Oe,v3(135,0,15),1) 
SetWeld(wRArm,0,x,ASpeed*2,Og,Oh,Og,v3(45,-10,-100),1) 
wait()
end
wait(1)
for x=1,40 do 
SetWeld(wRSho,0,1,1,Oe,Of,Oe,v3(135+mran(-3,3),0,15+mran(-3,3)),1) 
SetWeld(wRArm,0,1,1,Og,Oh,Og,v3(45,-10+mran(-12,12),-100+mran(-3,3)),1) 
wait(0.05)
if x%2==0 then 
local cf=Grabbing.Part1.CFrame*ca(180,mran(-180,180),mran(-40,40))*cn(0,1.5,0)
MeshEffect(24,cf,cf*cn(0,10,0),v3(0.2,2,0.2),v3(0.4,5,0.4),0.1,1,'Really red','Sphere') 
end
end
Grabbing.Part1:BreakJoints()
pcall(function() Grabbing.Part1.Parent.Head:Remove() end)
Grabbing:Remove() Grabbing=nil
wait(2)
ReturnAnim()
Anim,ArmAnim='None','None'
elseif cmd=='drop' and Grabbing then 
local hum=Grabbing.Part1.Parent.Humanoid Grabbing:Remove() Grabbing=nil hum.PlatformStand=false
elseif LimbNames[Sep[1]] and (Anim=='None' or Anim=='Form') then
Anim,ArmAnim,LegAnim='Form','Form','Form'
local v1,v2=GetWeld(LimbNames[Sep[1]],0)
local sepx=se(',',Sep[2])
for x=1,ASpeed*2 do 
SetWeld(LimbNames[Sep[1]],0,x,ASpeed*2,v1,v2,v1,v3(tonumber(sepx[1]),tonumber(sepx[2]),tonumber(sepx[3])),1) 
wait()
end
elseif cmd=='plode' then 
Char:BreakJoints() wait()
local Pressure=tonumber(sep[2]) or 50
fMarble(Char,function(v) v.Velocity=cn(Torso.Position,v.Position).lookVector*Pressure end)
for i,v in pairs(RootLimbs) do v.Velocity=cn(Torso.Position,v.Position).lookVector*Pressure end
elseif cmd=='explode' then 
iNew{'Explosion',pTorso,Position=pTorso.Position,BlastRadius=Scale*20}
elseif cmd=='goto' then
pcall(function()
Hum:MoveTo(Player:GetMouse().Hit.p,Player:GetMouse().Target) end)
elseif cmd=='newscale' and tonumber(sep[2]) then 
Char:BreakJoints()
Scale=tonumber(sep[2])
if Scale<0.5 then Scale=0.5 end 
if Scale>=100 then Scale=100 end 
elseif cmd=='nobox' then
for i,v in pairs(workspace:children()) do if v.Name=='Cart' then v:Remove() end end 
elseif cmd=='die' then 
Char:BreakJoints()
elseif cmd=='brick' then 
iPart{workspace,12,30,30,cf=Player.Character.Torso.CFrame*cn(0,10,-20),tr=0.5,an=true}
elseif cmd=='test' then 
local pt=Player.Character.Torso.CFrame
MeshEffect(35,pt*cn(0,5,0)*ca(90,0,0),nil,v3(2,2,1)*Scale,v3(7,7,3)*Scale,0.2,1,'Light stone grey',as.ring)
else

end
end))
end)

keys={}
NewAnim={}
Player:GetMouse().KeyDown:connect(function(k) 
coroutine.resume(coroutine.create(function() keys[k]=true 
if (k=='q' or k=='e') and (Anim=='None' or Anim=='Laser') and (ArmAnim=='None' or ArmAnim=='Laser') and not NewAnim[k] then
NewAnim[k]=true 
local w1,w2=k=='q' and wLSho or wRSho,k=='q' and wLArm or wRArm
local x=k=='q' and -1 or 1
local aa,bb=GetWeld(w1,0)
local cc,dd=GetWeld(w2,0)
local targ=w1.Part1.CFrame*cn(0,-333,0)
local tips={}
local co=0
local sho1=iPart{Char,0.35,RArm.Size.y/Scale+0.15 ,0.35,sc=Scale,co=CC[1]} iNew{'Weld',sho1,Part0=k=='q' and LArm or RArm,Part1=sho1} iNew{'CylinderMesh',sho1} 
local sho2=iPart{Char,0.3,RArm.Size.y/Scale+0.16,0.3,sc=Scale,co='Really black'} iNew{'Weld',sho2,Part0=sho1,Part1=sho2} iNew{'CylinderMesh',sho2} 
for x=-1,1,2 do for z=-1,1,2 do tips[#tips+1]={(k=='q' and LArm or RArm)[x..'-1'..z].Weld} 
co=co+0.25
local asd=tips[#tips]
asd[2],asd[3]=GetWeld(asd[1],0)
local cf=ca(0,360*co,0)*cn(0,asd[2].y*1.8,-0.75*Scale)*ca(-20,0,0)
asd[4]=cf.p
local a,b,c=cf:toEulerAnglesXYZ()
asd[5]=v3(mdeg(a),mdeg(b),mdeg(c))
end end
for u=1,ASpeed/2 do 
for i=1,4 do local asd=tips[i]
SetWeld(asd[1],0,u,ASpeed/2,asd[2],asd[3],asd[4],asd[5],1) 
end wait()
end 
repeat Anim,ArmAnim,LaserOn='Laser','Laser',true wait()
for i=1,4 do tips[i][1].C0=ca(0,15*x,0)*tips[i][1].C0 end
targ=TweenV3(1,12,targ,Player:GetMouse().Hit.p)
w1.C0=pTorso.CFrame:toObjectSpace(cn(pTorso.CFrame*cn(1.5*Scale*x,0.5*Scale,0).p,targ))*ca(90,0,0)
w2.C0=cn(0,-0.75*Scale,0)
until not keys[k]
ClearWeld(w1) ClearWeld(w2) for i=1,4 do ClearWeld(tips[i][1]) tips[i][6],tips[i][7]=GetWeld(tips[i][1],0) end 
local a,b=GetWeld(w1,0)
local c,d=GetWeld(w2,0)
for z=1,ASpeed/2 do 
for i=1,4 do SetWeld(tips[i][1],0,z,ASpeed/2,tips[i][6],tips[i][7],tips[i][2],tips[i][3],1) end
SetWeld(w1,0,z,ASpeed/2,a,b,aa,bb,1) 
SetWeld(w2,0,z,ASpeed/2,c,d,cc,dd,1) 
wait()
end
sho1:Remove() sho2:Remove()
NewAnim[k]=false 
Anim,ArmAnim,LaserOn='None','None',false
end
end)) end)
Player:GetMouse().KeyUp:connect(function(k) keys[k]=false end)
Player:GetMouse().Button1Down:connect(function()
Button=true
if keys.f and Player:GetMouse().Target and Anim=='None' then 
Hum:MoveTo(Player:GetMouse().Hit.p,Player:GetMouse().Target)
elseif (keys.q or keys.e) and LaserOn then
local pick=keys.q and 'q' or 'e'
repeat
local ofs=(pick=='q' and LArm or RArm).CFrame*ca(90,0,0)
if pick=='q' and keys.e then pick='e' 
elseif pick=='e' and keys.q then pick='q' end 
local part=iPart{Char,0.2,0.5,0.2,sc=Scale,co=CC[mran(2,3)],an=true,ma=Mat} iNew{'CylinderMesh',part}
Projectile(ofs,2*Scale,part,ca(-90,0,0),function(hit,pos) 
AOEFind(pos,Scale*2,function(Hum,v) Damage(Hum) end)
end,
function(pos) 
for i=1,5 do local cf=cn(pos)*ca(0,mran(-180,180),mran(-95,95)) MeshEffect(8,cf,cf*cn(0,Scale*2.2,0),v3(0.07,0.3,0.07)*Scale,v3(0.4,3,0.4)*Scale,0.2,1,CC[mran(2,3)],as.cone) end
MeshEffect(8,cn(pos),nil,v3(0.1,0.1,0.1)*Scale,v3(3,3,3)*Scale,0.2,1,CC[mran(2,3)],'Sphere') part:Remove() end) 
wait((keys.q and keys.e) and 0.2 or 0.4)
until not Button or (not keys.q and not keys.e) 
elseif 'swag'=='sweg' then 
end
end)
Player:GetMouse().Button1Up:connect(function()
Button=false
end)

WalkAnim=0
Walking=false
WalkMulp=1
WalkMax=16
Hum.WalkSpeed=18
tWS={1,1,1,1,1,1,1}

Marbler=0
local cou=0
while Char.Parent do 
cou=cou+1
--if cou%2==0 then print(cou) end 
if Hum.Health>0 then 
if Torso.Velocity.y>5 then Torso.Velocity=v3(Torso.Velocity.x,5,Torso.Velocity.z) end 
Walking=v3(Torso.Velocity.x,0,Torso.Velocity.z).magnitude>Hum.WalkSpeed-2 and true or false
if Walking and LegAnim=='None' then 
WalkAnim=WalkAnim+WalkMulp
end
if WalkAnim>0 and not Walking then 
WalkAnim=WalkAnim-1 
elseif WalkAnim<0 and not Walking then 
WalkAnim=WalkAnim+1 
end
if math.abs(WalkAnim)>=WalkMax then WalkMulp=WalkMulp*-1 end 
local WalkAdj=26
Neck.C0=Torso.CFrame:toObjectSpace(pHead.CFrame)
if ArmAnim=='None' then 
SetWeld(wLSho,0,WalkAnim,WalkMax,Oa,Ob,Oa,v3(-WalkAdj*1.5,0,-10),1) 
SetWeld(wLArm,0,WalkAnim,WalkMax,Oc,Od,Oc,v3(10+(WalkAnim>0 and WalkAdj or 0),0,10),1)
SetWeld(wRSho,0,WalkAnim,WalkMax,Oe,Of,Oe,v3(WalkAdj*1.5,0,10),1) 
SetWeld(wRArm,0,WalkAnim,WalkMax,Og,Oh,Og,v3(10+(WalkAnim>0 and WalkAdj or 0),0,-10),1) 
end
if LegAnim=='None' then 
SetWeld(wLThi,0,WalkAnim,WalkMax,Oi,Oj,Oi,v3(15+WalkAdj,0,-5),1) 
SetWeld(wLLeg,0,WalkAnim,WalkMax,Ok,Ol,Ok,v3(-15+(WalkAnim>0 and -WalkAdj or 0),0,5),1) 
SetWeld(wRThi,0,WalkAnim,WalkMax,Om,On,Om,v3(15-WalkAdj,0,5),1) 
SetWeld(wRLeg,0,WalkAnim,WalkMax,Oo,Op,Oo,v3(-15+(WalkAnim<0 and WalkAdj or 0),0,-5),1) 
end
--[[
for i,v in pairs(Marble) do 
v[1].C0=v[1].C0*ca(MarbleSpeed*v[2],MarbleSpeed*v[3],MarbleSpeed*v[4])
Marbler=Marbler+(MarbleSpeed*v[2])
if Marbler>MarbleMax then 
v[2]=v[2]*-1
v[3]=v[3]*-1
v[4]=v[4]*-1
end
end --]]
if Anim=='Follow' and Target and Target:findFirstChild'Torso' and not BG.maxTorque~=v3(1,1,1)/0 then 
Hum:MoveTo(Target.Torso.CFrame*cn(2.5*Scale,0,5*Scale).p,Target.Torso)
end
if Grabbing and (not Grabbing.Part1 or not Grabbing.Part1.Parent or Grabbing.Part1.Parent:findFirstChild'Humanoid'==nil or Grabbing.Part1.Parent.Humanoid.Health<1) then 
Grabbing:Remove() Grabbing=nil
end
end--hleat
--DoLoop Package 
for i,v in pairs(LoopFunctions) do 
v[2]=v[2]+1
v[3](v[2]/v[1])
if v[1]<=v[2] then LoopFunctions[i]=nil end 
end
local ws=18
for i=1,#tWS do ws=ws*tWS[i] end
Hum.WalkSpeed=ws
if Hum.MaxHealth~=8000 then Hum.MaxHealth=8000 Hum.Health=8000 end 
Hum.Health=Hum.Health+0.1
wait(0.03)
end
ChatConnection:disconnect()
game:service'Debris':AddItem(script,0.5)
script.Disabled=true
