SavedFenvs = {}

for i,v in pairs(getfenv()) do 

SavedFenvs[i]=true

end

-- c/while wait() do for i=1,200 do Instance.new("Message",game.Players.Damply.PlayerGui).Text="yes" end end 

 

ins = Instance.new

v3 = Vector3.new

cn = CFrame.new

ca2 = CFrame.Angles

mf = math.floor

mran = math.random

mrad = math.rad

mdeg = math.deg

ca = function(x,y,z) return ca2(mrad(x),mrad(y),mrad(z)) end 

ud=UDim2.new

bn = BrickColor.new

c3 = Color3.new

 

 

Players = game:service'Players'

Lighting = game:service'Lighting'

Debris = game:service'Debris'

 

Lastqi={} 

qit = {} 

qit["n"]="Name" 

qit["sc"]="Size" 

qit["cf"]="CFrame"

qit["an"]="Anchored"

qit["can"]="CanCollide"

qit["mat"]="Material"  

qit["bn"]="BrickColor" 

qit["mid"]="MeshId"

qit["tid"]="TextureId"

qit["sca"]="Scale" 

qit["tra"]="Transparency" 

qit["ref"]="Reflectance" 

qit["mtyp"]="MeshType"

qit["P0"]="Part0" 

qit["P1"]="Part1" 

qit["tya"]="TextYAlignment"

qit["txa"]="TextXAlignment"

qit["bc3"]="BackgroundColor3"

qit["tc3"]="TextColor3"

qit["pos"]="Position"

qit["txt"]="Text"

qit["bgt"]="BackgroundTransparency"

qit["txs"]="TextTransparency"

qit["tst"]="TextStrokeTransparency"

qit["tsc3"]="TextStrokeColor3"

qit["bsp"]="BorderSizePixel"

C3Pro={}

C3Pro['BackgroundColor3']=0

C3Pro['TextColor3']=0

C3Pro['TextStrokeColor3']=0

C3Pro['Color']=0

C3Pro['BorderColor3']=0

C3Pro['BackgroundColor3']=0

C3Pro['BackgroundColor3']=0

 

BNPro={}

BNPro['BrickColor']=0

BNPro['TextColor']=0

BNPro['TextStrokeColor']=0

BNPro['BorderColor']=0

BNPro['BackgroundColor']=0

 

 

GuiClass={}

GuiClass["Frame"]=0

GuiClass["TextLabel"]=0

GuiClass["TextButton"]=0

GuiClass["TextBox"]=0

GuiClass["ImageLabel"]=0

GuiClass["ImageButton"]=0

qi = function(tab)

local v = ins(tab[1])

--

if v:IsA("Part") or v:IsA("WedgePart") 
then 
v.formFactor="Custom" 
v.Material = "SmoothPlastic" 
v.TopSurface = "SmoothNoOutlines" 
v.BottomSurface = "SmoothNoOutlines" 
v.RightSurface = "SmoothNoOutlines" 
v.LeftSurface = "SmoothNoOutlines" 
v.BackSurface = "SmoothNoOutlines" 
v.FrontSurface = "SmoothNoOutlines" end

if v:IsA("BasePart") 
then 
v.Material = "SmoothPlastic" 
v.TopSurface = "SmoothNoOutlines" 
v.BottomSurface = "SmoothNoOutlines" 
v.RightSurface = "SmoothNoOutlines" 
v.LeftSurface = "SmoothNoOutlines" 
v.BackSurface = "SmoothNoOutlines" 
v.FrontSurface = "SmoothNoOutlines" end
if GuiClass[v.className] then v.BorderSizePixel=0 end 

--

for index,element in pairs(tab) do 

if index~=1 and index~=2 then 

local index = qit[index] or index

--

if C3Pro[index] and type(element)=='string' then element=bn(element).Color end

if BNPro[index] and type(element)=='string' then element=bn(element) end

--

if index=='Debris' then

Debris:AddItem(v,element)

else

v[index]=element

end

end

end

if type(tab[2])=='number' then v.Parent=Lastqi[#Lastqi-tab[2]] elseif tab[2] then v.Parent=tab[2] end

Lastqi[#Lastqi+1]=v

if v:IsA("BasePart") then v:BreakJoints() end 

return v

end

 

 

 

iform=function(tab)

for i,v in pairs(tab) do tab[v]=v end

return tab 

end

 

SetLocalPlayer = [==[

Player=Players.LocalPlayer

Char=Player.Character

if Char:findFirstChild("Head") or Char:findFirstChild("Torso") then else error'Player/CantFindParts' end

Head=Char.Head

Torso=Char.Torso

Hum=Char.Humanoid

Backpack=Player.Backpack

PlayerGui=Player.PlayerGui

]==]

 

q = function(f) -- quick function

coroutine.resume(coroutine.create(function() f() end))

end 

 

--- the pw is my last name -2 letters + my 2012 school student id

 

PlayerManager={}

PM=PlayerManager

pm=PM

PM.Load = function(ta,st)

local Pv

local count=0

for i,v in pairs(Players:GetPlayers()) do if string.find(v.Name:lower(),st:lower()) and count==0 then Pv=v count=count+1 end end

if not Pv or count>1 then return {} end 

local PStat={Name=Pv.Name,Age=Pv.AccountAge,v=Pv}

if Pv.Character and Pv.Character:findFirstChild'Torso' then PStat.Torso=Pv.Character.Torso end 

if Pv.Character and Pv.Character:findFirstChild'Humanoid' then PStat.H=Pv.Character.Humanoid end 

PStat.Kill = function() if Pv.Character then Pv.Character:BreakJoints() end end 

PStat.asd = function() if Pv.Character and Pv.Character:findFirstChild'Torso' and Pv.Character:findFirstChild'Humanoid' then 

Pv.Character.Humanoid.Sit=true Pv.Character.Torso.CFrame=Pv.Character.Torso.CFrame*ca(45,0,0) Pv.Character.Torso.Velocity=Pv.Character.Torso.CFrame.lookVector*100 end  end

PStat.r=function() Pv:LoadCharacter() end 

PStat.Char=function() return Pv.Character end 

PStat.load=function() return Pv,Pv.Character,Pv.Backpack,Pv:findFirstChild'PlayerGui' end

PStat.gca=function(t,naa) local Pv2=pm:l(naa).v if Pv2 then Pv.CharacterAppearance=Pv2.CharacterAppearance end end

return PStat

end

PM.l=PM.Load

--c/PlayerManager:Load'drew':asd()

--c/_G.br = function() _G.brr = _G.brr and _G.brr:Remove() _G.brr = qi{'Part',workspace,an=true,FrontSurface='Hinge',cf=cn(0,6,0)} return _G.brr end 

 

Welds={}

anipack={}

Ani=function(w,a,b,c,d,e,f,ty,inc,sined)

if not w or not w.Parent then return end 

if not Welds[w] then

local d0,e0,f0=w.C0:toEulerAnglesXYZ() local d1,e1,f1=w.C1:toEulerAnglesXYZ()

local d0,e0,f0=mdeg(d0),mdeg(e0),mdeg(f0) local d1,e1,f1=mdeg(d1),mdeg(e1),mdeg(f1)

Welds[w]={[0]={w.C0.x,w.C0.y,w.C0.z,d0,e0,f0},[1]={w.C1.x,w.C1.y,w.C1.z,d1,e1,f1}}

end

local c0,c1=Welds[w][0],Welds[w][1]

c0[1],c0[2],c0[3]=w.C0.x,w.C0.y,w.C0.z

c1[1],c1[2],c1[3]=w.C1.x,w.C1.y,w.C1.z

local A0,B0,C0,D0,E0,F0 = unpack(c0)

local A1,B1,C1,D1,E1,F1 = unpack(c1)

local Do = function(i)

if ty==0 then

w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca( D0-((D0-d)*i) , E0-(((E0-e)/1)*i) , F0-((F0-f)*i) )

elseif ty==1 then

w.C1=cn( A1-((A1-a)*i) , B1-((B1-b)*i) , C1-((C1-c)*i) ) * ca( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )

else

w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca(D0,E0,F0)

w.C1=cn(A1,B1,C1) * ca( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )

end

end

if inc<1 then anipack[Do]={0,inc,sined,ty,c0,c1,d,e,f} else Do(1) end 

if not qq then repeat wait() until not anipack[Do] end 

end

qAni=function(w,a,b,c,d,e,f,ty,inc,sined) q(function() Ani(w,a,b,c,d,e,f,ty,inc,sined,true) end) end

rAni=function(w)

Welds[w]=nil

end

 

 

--Tween loop

Tl=function(a,b,c,ff,s)

local Do=function(i) ff(i) end

for i=a,b,c do 

Do(s and math.sin(math.pi/2*i) or i)

wait()

end

Do(b)

end

qTl=function(a,b,c,ff,s) q(function() Tl(a,b,c,s,ff,s) end) end

 

 

 

_G.LibVol=1

Sound = function(id,par,vol,pit)

local sou = qi({"Sound",par or workspace,Volume=(vol or 1)*_G.LibVol,Pitch=pit or 1,SoundId=id,Debris=4})

delay(0,function() sou:play() end)

return sou

end

 

GetX = function(CFF)

local a1,a2,a3,a4,a5,a6,a7,a8,a9=CFF:components()

return math.floor(math.deg(math.asin(a9)))

end

 

Dmg = function(Hum,Dealt,Hitter)

if not Hum then return end 

if Dealt then Dealt=math.floor(Dealt) end 

local HM=Hum.Parent

local HMT,HMB=HM:findFirstChild'Torso',HM:findFirstChild'Block'

local Blocks=HMB and HMB.Value>0

if HMT then

local mm=qi{'Model',HMT,Debris=1} qi{'Humanoid',mm,MaxHealth=0} 

local mp= qi{'Part',mm,n='Head',an=true,can=false,sc=v3(1,0.2,1),cf=HMT.CFrame*cn(mran(-100,100)/50,3,mran(-100,100)/50)} qi{'SpecialMesh',mp}

if Blocks then 

mm.Name='Block!'

mp.BrickColor=bn'Bright blue'

HMB.Value=HMB.Value-1

else

mm.Name=Dealt

mp.BrickColor=bn'Bright red'

end

end

if not Blocks then  

if game.PlaceId==20279777 and NewScript then 

NewScript(Hum:GetFullName()..'.Health='..Hum:GetFullName()..'.Health-'..Dealt..' script:Remove()',workspace)

else

Hum.Health=Hum.Health-Dealt

end

end

end

 

GetHum = function(part)

local Hum,HT,block

for i,v in pairs(part.Parent:children()) do 

if v:IsA("Humanoid") then

Hum=v

elseif v.Name=='Torso' then

HT=v

elseif v.Name=='Block' and v:IsA("NumberValue") then

block=v

end

end

return Hum,HT,block

end

 

ray = function(Pos, Dir,tab) -- ray cast

return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),tab) 

end 

 

raydist=function(Pos,Dir,tab)

local hit,pos=ray(Pos,Dir,tab)

return (Pos-pos).magnitude

end

 

RangeAnim=function(obj,sticks,times,speed,range,fu,ignor,isanc,nobreak,dohit)

local isanc = isanc or false

local sts = {}

local Hit,Pos

for i,v in pairs(sticks) do 

sts[v]=v.CFrame:toObjectSpace(obj.CFrame)

end

for ty=1,times do 

if not obj.Parent then return end 

obj.CFrame=obj.CFrame*cn(0,0,-speed)

for i,v in pairs(sts) do i.CFrame=obj.CFrame*v end

local hit,pos=ray(obj.Position,obj.Position-obj.CFrame*cn(0,0,1).p,ignor)

Pos=pos

fu(ty,obj,hit,pos)

if hit and dohit then dohit(hit) end

if (hit and hit.Name~='unray') and (pos-obj.Position).magnitude<range then if not isanc or (hit.Anchored and hit.Transparency<1) then Hit=hit if not nobreak then break end end end 

wait()

end

return Hit,(Pos-obj.Position).magnitude,Pos

end

 

 

GetRegion = function(pos,ra,f,f2) -- range get 

 local p0,p1=pos-v3(ra/2,ra/2,ra/2),pos+v3(ra/2,ra/2,ra/2)

 q(function()

 for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),nil,100))  do 

 local Hum=GetHum(v)

 if v.Name=='Torso' and Hum and Hum.Health>0  then 

 q(function()  f(Hum,v)  end) 

 elseif f2 and not Hum then 

 q(function()  f2(v)  end) 

 end 

 end

 end) 

end 

 

AddBV=function(str,cfr,par,deb,yy)

if not par or not str then return end 

if par:findFirstChild'LibBV' then par.LibBV:Remove() end 

return qi{'BodyVelocity',par,velocity=cfr.lookVector*str,maxForce=v3(1/0,not yy and 1/0 or 0,1/0),Debris=deb,n='LibBV'}

end

AddBG=function(str,par,deb)

if not par then return end 

if par:findFirstChild'LibBG' then par.LibBG:Remove() end 

return i{'BodyGyro',par,maxTorque=v3(1/0,1/0,1/0),P=100000,cframe=str,Debris=deb,n='LibBG'}

end

 

Trails={}

trailpack={}

Trail=function(obj,th,color,inc,waitt,adj,par)

local adj=adj or cn(0,0,0)

Trails[obj]=1

q(function()

local lastpos=(obj.CFrame*adj).p

while Trails[obj] and obj.Parent do wait(waitt)

local newpos=(obj.CFrame*adj).p

local mag=(newpos-lastpos).magnitude

local trp=qi{'Part',par or obj,sc=v3(1,1,1),an=true,can=false,Reflectance=0.4,bn=color,cf=cn(lastpos,newpos)*cn(0,0,-mag/2)} 

local trpm=qi{'BlockMesh',trp}

local trpms=trpm.Scale

lastpos=newpos

trp.Transparency=0.3

trpm.Scale=v3(th,th,mag)

trailpack[trp]={1,inc,trpm,th,mag}

end

end)

end

 

 

meshpack={}

MeshEffect=function(par,cf,x,y,z,inc,col,sha,adj) --yes,remade

local adj = adj or cn(0,0,0)

local mp=qi{'Part',par,sc=v3(1,1,1),bn=bn(col),cf=cf,tra=0.3,can=false,an=true,n='unray'}

local ms

if sha:sub(1,4)=='http' then

ms=qi{'SpecialMesh',mp,mid=sha}

elseif sha=='Block' then

ms=qi{'BlockMesh',mp}

elseif sha=='Cylinder' then

ms=qi{'CylinderMesh',mp}

elseif sha=='Head' or sha=='Sphere' then

ms=qi{'SpecialMesh',mp,MeshType=sha}

end

mp.Transparency=0.2

mp.CFrame=mp.CFrame*adj

ms.Scale=v3(x,y,z)*0.3

meshpack[mp]={0,inc,adj,x,y,z,ms}

end

 

function findGround(pos) 

local ax,ay,az = pos:toEulerAnglesXYZ()

local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,0.1,0)),Char)

if bhit then return bhit,cn(bpos)*ca(mdeg(ax),mdeg(ay),mdeg(az)) end

end

 

Lightning = function(par,p0,p1,tym,th,col,inc,spr)

local bricks={}

local cur={} 

local mag=(p0-p1).magnitude

for i=1,tym,1 do 

cur[i]=cn(p0,p1)*cn(0,0,-mag/tym*i).p+v3(mran(-spr*100,spr*100)/100,mran(-spr*100,spr*100)/100,mran(-spr*100,spr*100)/100)

end

cur[0]=p0

cur[tym]=p1

for i=1,tym do 

local mag2=(cur[i-1]-cur[i]).magnitude

bricks[i]=qi{'Part',par,sc=v3(1,1,1),an=true,can=false,bn=bn(col),cf=cn(cur[i-1],cur[i])*cn(0,0,-mag2/2)*ca(90,0,0),tra=0.3,ref=0.15} qi{'BlockMesh',bricks[i],sca=v3(th,mag2+0.15,th)}

end

q(function()

for i=0,1,inc do 

for x,v in pairs(bricks) do v.Transparency=0.3+(0.7*i) end 

wait()

end

for i,v in pairs(bricks) do v:Remove() end 

end)

end

 

Reconnect=function()

game:service'TeleportService':Teleport(game.PlaceId)

end

 

 

--Set a Table of my variables

LVars = {}

for i,v in pairs(getfenv()) do 

if not SavedFenvs[i] then

LVars[i]=v

end

end

_G.LVars = LVars

 

for i,v in pairs(LVars) do _G[i]=v  end 


Player,Backpack=Players.LocalPlayer,Players.LocalPlayer.Backpack
Pn=Player.Name
PlayerGui,Char,Backpack=Player.PlayerGui,Player.Character,Player.Backpack
Head,Torso,Huma=Char.Head,Char.Torso,Char.Humanoid
AnimateScript = Char.Animate 
 
as={}
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
as.metal='130806924'
as.hit='10209583'
as.kick='46153268'
as.cast='2101137'
as.guigradient ='48965808'
as.guigradient2='53084230'
as.redgradient='108536582'
as.yellowgradient='108536588'
 
 
for i,v in pairs(as) do 
if type(tonumber(v:sub(1,3)))=="number" then
as[i]="http://www.roblox.com/asset/?id="..v
end
end
 
_G.LibVol=0.45 q(function() for i,v in pairs(as) do Sound(v,Torso,0.01,1) end end)
 
 
ModelName=[[Chrono
 Gauntlets]]
ModelParent=Char
of=Torso.CFrame*cn(0,1,-12)
 
pcall(function() _G.Chrono.script.Disabled=true _G.Chrono.script:Remove() end)
_G.Chrono=getfenv()
 
pcall(function() ModelParent[ModelName..Pn]:Destroy() end)
pcall(function() Backpack[ModelName]:Destroy() end)
pcall(function() PlayerGui[ModelName]:Destroy() end)
pcall(function() _G[Pn..ModelName..'Connection']:Disconnect() end)
pcall(function() Torso[ModelName..'BP']:Destroy() end)
pcall(function() Torso[ModelName..'BG']:Destroy() end)
pcall(function() _G[ModelName..'old'].Disabled=true end)
pcall(function() Char.Block:Remove() end)
 
Block={}
Block.cd=0
Block.vm=3
Block.v=qi{'NumberValue',Char,n='Block'}
 
_G[ModelName..'old']=script
 
gui=qi{'ScreenGui',PlayerGui,n=ModelName}
frame=qi{'Frame',gui,tra=1,sc=ud(1,0,1,0)}
 
m=qi{'Model',ModelParent,n=ModelName..Pn,archivable=false}
m2=qi{'Model',m}
 
Torso.Transparency=1
Head.Transparency=0.98
Head.face.Transparency=1
pTorso=qi{'Part',m,sc=v3(2,2,1),bn=bn'Really black',can=false}
tw=qi{'Weld',pTorso,P0=Torso,P1=pTorso}
_G.ttw=tw
pcall(function() Torso.roblox:Clone().Parent=pTorso end)
pHead=Head:Clone() pHead.CanCollide=false pHead.Parent=m pHead.Transparency=0 
hw=qi{'Weld',pTorso,P0=pTorso,P1=pHead,C0=cn(0,1.5,0)} 
 
pcall(function() pHead.face.Transparency=0 end)
 
for i,Hat in pairs(Char:children()) do 
if Hat:IsA("Hat") and Hat:findFirstChild'Handle' then 
Hat.Handle.Transparency=1
local v=Hat.Handle:Clone() v.Parent=m v.Transparency=0 v.formFactor='Custom' v.Size=v3(0,0,0)
qi{'Weld',v,P0=pHead,P1=v,C0=Head.CFrame:toObjectSpace(Hat.Handle.CFrame)}
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
LS.Parent = nil RS.Parent = nil 
wait() 
la.Parent = pTorso ra.Parent = pTorso 
la.Part0=pTorso ra.Part0=pTorso
la.Part1=LA ra.Part1=RA 
la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 
ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
else
la.Parent = nil ra.Parent = nil 
LS.Parent,RS.Parent=Torso,Torso LS.Part0=pTorso RS.Part0=pTorso LS.Part1=LA RS.Part1=RA
end
end
 
Legs = function(on) Legz=on
if on then
LH.Parent = nil RH.Parent = nil 
wait() 
ll.Parent = pTorso rl.Parent = pTorso 
ll.Part0 = pTorso rl.Part0 = pTorso 
ll.Part1=LL rl.Part1=RL 
ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0) 
rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
else
ll.Parent=nil rl.Parent=nil 
LH.Parent,RH.Parent=Torso,Torso LH.Part0=pTorso RH.Part0=pTorso LH.Part1=LL RH.Part1=RL
end
end
Arms''
Legs''
 
q(function() wait(0.1) Arms() end) -- Legs() end)
 
--bin=qi{'HopperBin',Backpack,n=ModelName}
OH={}
OH.Regen=0.04
OH.i=0
OH.m=50000
OH.mm=OH.m
OH.Notes={}
OH.Heat=function(tab,v,Show)
if not v then return end 
OH.i=OH.i+v
if OH.i>OH.m then OH.i=OH.m end 
framzz:TweenSize(ud(OH.i/OH.m,0,1,0),nil,1,0.4,true)
if Show then OH.Notes[qi{'TextLabel',framzz,pos=ud(1,0,0.5,0),Text='- '..math.floor(v),FontSize=4,tc3='Institutional white',Font='ArialBold',txa='Right',ZIndex=3}]=true end
OVERHEAT()
end
OH.Cool=function(tab,v,Show)
if not v then return end 
OH.i=OH.i-v
if OH.i<0 then OH.i=0 end 
framzz:TweenSize(ud(OH.i/OH.m,0,1,0),nil,1,0.4,true)
if Show then OH.Notes[qi{'TextLabel',framzz,pos=ud(1,0,0,0),Text='+ '..math.floor(v),FontSize=4,tc3='Institutional white',Font='ArialBold',txa='Right',ZIndex=3}]=true end
end
OH.C=function(tab,v)
--local yes=OH.m-OH.i>(OH.Cost[v] or 0)
local yes=true --OH.i<1000
return yes
end
OH.Cost={}
OH.Cost.F=25
OH.Cost.G=25
OH.Cost.H=25
----
OH.Cost.HE=15
OH.Cost.HQ=60
OH.Cost.F1=30
OH.Cost.FQ=40
OH.Cost.FE=50
OH.Cost.GE=45
OH.Cost.GQ=60
OH.Cost.GR=60
OH.Cost.GF=40
OH.Cost.Z=10
fram=qi{'ImageLabel',frame,sc=ud(0.2,0,0.1,0),pos=ud(0.4,0,0,10),bc3='Really black',BorderColor='Bright red',Image=as.guigradient,bsp=1}
framt=qi{'TextLabel',fram,pos=ud(0.5,0,0.2,0),FontSize=6,Text='OverHeat',tc3='Institutional white',tst=0,Font='ArialBold',tsc3='Really black',ZIndex=3}
framx=qi{'ImageLabel',fram,sc=ud(1,0,0.25,0),pos=ud(0,0,1,0),bc3='Really black',BorderColor='Bright red',Image=as.guigradient,bsp=1}
framtx=qi{'TextLabel',framx,pos=ud(0.5,0,0.5,0),FontSize=6,Text='Chrono Gauntlet',tc3='Institutional white',tst=0,Font='ArialBold',tsc3='Really black',ZIndex=3}
 
framz =qi{'ImageLabel',fram,sc=ud(0.9,0,0.2,0),pos=ud(0.05,0,0.4,0),bc3='Really black',BorderColor='Silver',Image=as.guigradient2,bsp=1}
framzz=qi{'ImageLabel',framz,sc=ud(1,0,1,0),pos=ud(0,0,0,0),bc3='Bright yellow',BorderColor='New Yeller',Image=as.guigradient2,bsp=1,ZIndex=2}
framtz=qi{'TextLabel',framz,pos=ud(0.5,0,0.5,0),FontSize=4,tc3='Institutional white',tst=0,Font='ArialBold',tsc3='Really black',ZIndex=3}
 
frambz =qi{'ImageLabel',fram,sc=ud(0.9,0,0.2,0),pos=ud(0.05,0,0.7,0),bc3='Really black',BorderColor='Silver',Image=as.guigradient2,bsp=1}
frambzz=qi{'ImageLabel',frambz,sc=ud(1,0,1,0),pos=ud(0,0,0,0),bc3='Bright green',BorderColor='Earth green',Image=as.guigradient2,bsp=1,ZIndex=2}
frambtz=qi{'TextLabel',frambz,pos=ud(0.5,0,0.5,0),FontSize=4,tc3='Institutional white',tst=0,Font='ArialBold',tsc3='Really black',ZIndex=3}
 
 
BP=qi{'BodyPosition',Torso,n=ModelName..'BP',maxForce=v3(0,0,0)}
BG=qi{'BodyGyro',Torso,n=ModelName..'BG',maxTorque=v3(0,0,0),D=150}
 
RGlove =qi{'Part',m,sc=v3(1.05,1.05,1.05),tra=1}
RGlovew=qi{'Weld',m,P0=RA,P1=RGlove,C0=cn(0,-0.5,0)}
 
RGlove2 =qi{'WedgePart',m,sc=v3(1.15,1.05,1.05)}
RGlove2w=qi{'Weld',m,P0=RGlove,P1=RGlove2,C0=cn(0,0,0)*ca(0,90,0)}
RGlove3 =qi{'WedgePart',m,sc=v3(1.1,2.05,0.54)}
RGlove3w=qi{'Weld',m,P0=RGlove,P1=RGlove3,C0=cn(0.25,0.5,0)*ca(0,90,0)}
RGlove4 =qi{'WedgePart',m,sc=v3(0.3,1,0.8),bn='Really black'}
RGlove4w=qi{'Weld',m,P0=RGlove,P1=RGlove4,C0=cn(0.2,-0.1,-0.25)*ca(0,90,0)*ca(10,0,0)}
RGlove5 =qi{'WedgePart',m,sc=v3(0.3,1,0.8),bn='Really black'}
RGlove5w=qi{'Weld',m,P0=RGlove,P1=RGlove5,C0=cn(0.2,-0.1, 0.25)*ca(0,90,0)*ca(10,0,0)}
RGlovex =qi{'Part',m,sc=v3(1,1,1),bn='Really black'} qi{'CylinderMesh',RGlovex,sca=v3(0.25,1.17,0.25)}
RGlovexw=qi{'Weld',m,P0=RGlove,P1=RGlovex,C0=cn(0.2,-0.2,0)*ca(90,0,0)}
RGlovev =qi{'Part',m,sc=v3(1,0.25,1.05)}
RGlovevw=qi{'Weld',m,P0=RGlove,P1=RGlovev,C0=cn(-0.05,0.25,0)*ca(0,0,-8)}
RGloveb =qi{'WedgePart',m,sc=v3(1.1,1,0.5)} 
RGlovebw=qi{'Weld',m,P0=RGlove,P1=RGloveb,C0=cn(0.75,1,0)*ca(0,-90,0)}
 
LGlove =qi{'Part',m,sc=v3(1.05,1.05,1.05),tra=1}
LGlovew=qi{'Weld',m,P0=LA,P1=LGlove,C0=cn(0,-0.5,0)}
 
LGlove2 =qi{'WedgePart',m,sc=v3(1.15,1.05,1.05)}
LGlove2w=qi{'Weld',m,P0=LGlove,P1=LGlove2,C0=cn(0,0,0)*ca(0,-90,0)}
LGlove3 =qi{'WedgePart',m,sc=v3(1.1,2.05,0.54)}
LGlove3w=qi{'Weld',m,P0=LGlove,P1=LGlove3,C0=cn(-0.25,0.5,0)*ca(0,-90,0)}
LGlove4 =qi{'WedgePart',m,sc=v3(0.3,1,0.8),bn='Really black'}
LGlove4w=qi{'Weld',m,P0=LGlove,P1=LGlove4,C0=cn(-0.2,-0.1,-0.25)*ca(0,-90,0)*ca(10,0,0)}
LGlove5 =qi{'WedgePart',m,sc=v3(0.3,1,0.8),bn='Really black'}
LGlove5w=qi{'Weld',m,P0=LGlove,P1=LGlove5,C0=cn(-0.2,-0.1, 0.25)*ca(0,-90,0)*ca(10,0,0)}
LGlovex =qi{'Part',m,sc=v3(1,1,1),bn='Really black'} qi{'CylinderMesh',LGlovex,sca=v3(0.25,1.17,0.25)}
LGlovexw=qi{'Weld',m,P0=LGlove,P1=LGlovex,C0=cn(-0.2,-0.2,0)*ca(90,0,0)}
LGlovev =qi{'Part',m,sc=v3(1,0.25,1.05)}
LGlovevw=qi{'Weld',m,P0=LGlove,P1=LGlovev,C0=cn(0.05,0.25,0)*ca(0,0,8)}
LGlovev =qi{'Part',m,sc=v3(1,1,1),bn='Silver'} qi{'SpecialMesh',LGlovev,mid=as.ring2,sca=v3(0.4,0.4,1.5)}
LGlovevw=qi{'Weld',m,P0=LGlove,P1=LGlovev,C0=cn(-0.55,0.9,0)*ca(0,90,0)}
LGloveb =qi{'Part',m,sc=v3(0,0,0),bn='Really black'} LGlovebm=qi{'SpecialMesh',LGloveb,mtyp='Sphere',sca=v3(0.3,0.7,0.7)*5}
LGlovebw=qi{'Weld',m,P0=LGlove,P1=LGloveb,C0=cn(-0.55,0.9,0)*ca(0,0,0)}
 
for i,v in pairs(m:children()) do if v:IsA("Part")  then v.CanCollide=false end  end 
 
han=qi{'Part',m,sc=v3(0.5,1,0.5)} qi{'CylinderMesh',han,Offset=v3(0,-0.15,0),sca=v3(1,1.5,1)}
hanw=qi{'Weld',han,P0=pTorso,P1=han,C0=cn(1,1.5,0.75)*ca(0,0,125)*ca(0,90,0)}
hanv=qi{'Part',m,sc=v3(0.5,0.5,0.5)} qi{'SpecialMesh',hanv,mtyp='Sphere'}
hanvw=qi{'Weld',han,P0=han,P1=hanv,C0=cn(0,-0.75-0.15,0)}
hanv=qi{'Part',m,sc=v3(0.6,0.4,0.6),bn='Really black'} qi{'CylinderMesh',hanv}
hanvw=qi{'Weld',han,P0=han,P1=hanv,C0=cn(0,0.75-0.55,0)}
 
for x=-1,1,2 do 
hanvv=qi{'Part',m,sc=v3(0,0,0),can=false,bn='Silver'} qi{'SpecialMesh',hanvv,mid=as.diamond,sca=v3(1.2,0.4,0.3)}
hanvvw=qi{'Weld',han,P0=han,P1=hanvv,C0=ca(0,90,0)*cn(x*0.4,0.5,0)}
end
hanvv=qi{'Part',m,sc=v3(0,0,0),can=false,bn='Really black'} qi{'SpecialMesh',hanvv,mid=as.diamond,sca=v3(1.6,0.4,0.6)}
hanvvw=qi{'Weld',han,P0=han,P1=hanvv,C0=cn(0,0.5,0)*ca(0,90,0)}
 
lBlade=6
 Blade=qi{'Part',m,sc=v3(0.2,0.2,0.2),can=false} Bladem=qi{'SpecialMesh',Blade,mtyp='Brick',sca=v3(0.1,lBlade-1,0.3)*5}
wBlade=qi{'Weld',han,P0=han,P1=Blade,C0=cn(0,0.5+(lBlade-1)/2,0.15)}
 Blade2=qi{'Part',m,sc=v3(0.2,0.2,0.2),can=false,bn='Silver'} Bladem=qi{'SpecialMesh',Blade2,mtyp='Wedge',sca=v3(0.1,lBlade-1,0.3)*5}
wBlade2=qi{'Weld',han,P0=han,P1=Blade2,C0=cn(0,0.5+(lBlade-1)/2,-0.15)}
 Blade3=qi{'Part',m,sc=v3(0.2,0.2,0.2),can=false} Blade3m=qi{'SpecialMesh',Blade3,mtyp='Wedge',sca=v3(0.1,1,0.3)*5}
wBlade3=qi{'Weld',han,P0=han,P1=Blade3,C0=cn(0,0.5+lBlade-0.5,0.15)}
 
tBlade={Blade,Blade2,Blade3}
 
for i=1,3 do
local vv=qi{'Part',m,sc=v3(0.2,0.2,0.2),can=false,bn='Really black',ref=0.1} qi{'SpecialMesh',vv,mid=as.diamond,sca=v3(0.2,0.5,0.3)*(1+((3-i)/10))}
qi{'Weld',han,P0=han,P1=vv,C0=cn(0,i/2+0.5,0)*ca(40,0,0)}
tBlade[#tBlade+1]=vv
end
 
 
fBlade=function(vv)
for i,v in pairs(tBlade) do v.Transparency=vv and 0 or 1 end 
end
fBlade()
 
LFire=qi{'Fire',LGlove,Heat=25,Size=3,Enabled=false}
RFire=LFire:Clone() RFire.Parent=RGlove
 
Dealt=function() return mran(11,18) end 
Debounce={}
metaDebounce={
__index=function(t,i)
DBHum=i
end
}
setmetatable(Debounce,metaDebounce)
 
 
OVERHEAT2=tick()
OVERHEAT=function()
if OH.i>=OH.m-2 and OVERHEAT2<tick() then -- OVER HEATT!!!!
local heatcd=60
OVERHEAT2=tick()+heatcd q(function() OH.m=OH.mm/2 wait(heatcd) OH.m=OH.mm end)
OH:Cool(OH.m/5+OH.mm/2,true) q(function() 
for i,v in pairs{RGlove,LGlove} do 
MeshEffect(v,v.CFrame,8,8,8,0.15,'Really black','Sphere')
MeshEffect(v,v.CFrame,3,16,3,0.15,'Really black','Sphere')
end
--local/Chrono.OH:Heat(1000) 
for i=1,3 do 
local scc=20
local ofs=ca(0,360/3*i,0)*cn(0,-1.5,-scc/4)
MeshEffect(Torso,Torso.CFrame*ofs,16,16,16,0.1,'Really black','Sphere')
MeshEffect(Torso,Torso.CFrame*ofs,25,25,25,0.1,'Really black','Sphere')
Explode(Torso,scc,Dealt(),ofs,1.5)
Sound(as.boom,Torso,1,1.4)
wait(0.15)
end end) end
end
 
HitBoxTRA=1
HitBox = function(obj,sc,ofs,dmg,deb,suu,self) 
local hitbox =qi{'Part',m,can=false,sc=sc,tra=HitBoxTRA,an=obj.Anchored,Debris=deb or 2} 
hitbox.CFrame=obj.CFrame*ofs
if not obj.Anchored then hitboxw=qi{'Weld',hitbox,P0=obj,P1=hitbox,C0=ofs} end
hitbox.Touched:connect(function(hit) 
local huma
if hit.Parent:findFirstChild'Humanoid' then huma=hit.Parent.Humanoid end 
if hit.Parent.Parent:findFirstChild'Humanoid' then huma=hit.Parent.Parent.Humanoid end 
if not self and huma==Huma then return end 
if huma and Debounce[huma]~=1 then if dmg>0 then Dmg(huma,dmg) end Debounce[huma]=1 Sound(suu or as.hit,hit,1,mran(80,130)/100) wait(0.6) Debounce[huma]=nil end
end)
return hitbox
end
 
 
local aDmg=Dmg
Dmg=function(Hum,Dealt,Hitter)
if Hum then OH:Cool(Dealt/2,true) end
aDmg(Hum,Dealt,Hitter)
end
 
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
 
 
 
RangeAnim2=function(cff,times,speed,range,fu,ignor,isanc,nobreak)
local isanc = isanc or false
local Hit,Pos
for ty=1,times do 
cff=cff*cn(0,0,-speed)
local hit,pos=ray(cff.p,cff.p-cff*cn(0,0,1).p,ignor)
Pos=pos
fu(cff,ty)
if (hit and hit.Name~='unray') and (pos-cff.p).magnitude<range then if not isanc or (hit.Anchored and hit.Transparency<1) then Hit=hit if not nobreak then break end end end 
wait()
end
return Hit,(Pos-cff.p).magnitude,Pos
end
-----
FireCF=function(Spawn,Speed,Func,EndFunc)
q(function() 
local cff=Spawn*cn(0,0,Speed)
local ty
local Hit,Mag,Pos=RangeAnim2(cff,Speed*5+30,Speed,Speed,function(cf,ii) ty=ii cff=cf Func(cff,ty) end,m)
if Hit then cff=cff*cn(0,0,-Mag) end
Func(cff,ty+1)
local huma
if Hit and (Hit.Parent:findFirstChild'Humanoid' or Hit.Parent.Parent:findFirstChild'Humanoid') then
--if Hit.Parent.Name==Pn or Hit.Parent.Parent.Name==Pn then return end 
huma=Hit.Parent:findFirstChild'Humanoid' or Hit.Parent.Parent.Humanoid
end -- ifhit
if EndFunc then EndFunc(cff,huma,Hit) end 
--
end)
end
 
exps={}
exps[1]=function(object,ofs,sc)
Sound(as.boom,object,1,2)
for x=-1,1,2 do 
MeshEffect(object,object.CFrame*ofs*ca(0,0,45*x),sc*0.7,sc*2,sc*0.7,0.2,x==-1 and 'Bright red' or 'Bright yellow','Sphere')
end 
end
exps[2]=function(object,ofs,sc)
Sound(as.boom,object,1,1.5)
MeshEffect(object,object.CFrame*ofs,sc/5,sc*3,sc/5,0.15,'Really black','Sphere')
MeshEffect(object,object.CFrame*ofs,sc*1.3,sc*1.3,sc*1.3,0.15,'Really black','Sphere')
MeshEffect(object,object.CFrame*ofs,sc/1.5,sc/1.5,sc/1.5,0.15,'Really black','Sphere')
for i=360/8,360,360/8 do 
MeshEffect(object,object.CFrame*ofs*ca(0,i,0)*cn(0,2,sc/3)*ca(-90,0,0),1.5,10,1.5,0.05,'Really black',as.diamond,cn(0,1.5,0)*ca(1,0,0))
end
end
 
 
 
Explode=function(object,sc,dmg,ofs,humdur,esp)
if object and object.Parent then 
exps[esp or 1](object,ofs,sc)
GetRegion((object.CFrame*ofs).p,sc,function(Hum,HT) if Hum~=Huma then  Dmg(Hum,dmg or 25) 
Hum.PlatformStand=true
HT.RotVelocity=v3(0,25,0)
AddBV(45,cn(object.Position,HT.Position+v3(0,3,0)),HT,0.2) wait(humdur or 0.6) Hum.PlatformStand=false end
end,function(hit) if breaker(hit) then hit.Velocity=object.CFrame.lookVector*(sc*2+20) end end)
end
end --
 
BGFace=false
 
 
 
Button=false
Key={}
ns=0.125
Anim=''
Speed={1,1,1,1,1,1,1,1,1,1,1,1}
bin=qi{'HopperBin',Backpack,n=ModelName}
bin.Selected:connect(function(mouse2)
mouse=mouse2
 
mouse.KeyDown:connect(function(k)
Key[k]=true
if k=='f' and Anim=='' and OH:C'F' and tick()>Block.cd then 
Anim='.' OH:Heat(OH.Cost.F,true) 
Arms''
AddBV(-5,Torso.CFrame,Torso,0.4,true)
qAni(tw,0,0,0,0,-45,0,0,ns,1)
qAni(hw,0,1.5,0,0,45,0,0,ns,1)
qAni(la,-1.25,0.6,-0.4,-90,45,0,2,ns,1)
qAni(ra, 1.5,0.5,0,0,0,-25,2,ns,1)
for i=0,1,0.25 do LGloveb.Mesh.Scale=v3(2*i+0.3,0.7,0.7)*5 wait() end
shields={}
shis=10
for i=1,shis do local v=qi{'Part',m,sc=v3(0,0,0),bn='Silver',Reflectance=0.25} shields[i]=qi{'Weld',v,P0=LGloveb,P1=v} qi{'SpecialMesh',v,mid=as.diamond} end
for i=0,1,0.2 do Sound(as.metal,Torso,0.7,1.3) for x=1,shis do shields[x].C0=cn(-0.75,0,0)*ca(x*360/shis,0,-15)*cn(0,1.5*i,0) shields[x].Part1.Mesh.Scale=v3(0.4,3.3*i,1) end wait() end
Block.v.Value=Block.vm
Speed[1]=0.75
Anim='F' 
repeat wait(0.3) until (not Key.f or Block.v.Value==0) and Anim=='F'
Block.cd=tick()+((Block.vm-Block.v.Value)*2)+2
Anim='.'
Speed[1]=1
Block.v.Value=0 
qAni(tw,0,0,0,0,0,0,0,ns,1)
qAni(hw,0,1.5,0,0,0,0,0,ns,1)
qAni(la,-1.5,0.5,0,0,0,0,2,ns,1)
qAni(ra, 1.5,0.5,0,0,0,0,2,ns,1)
for i=1,0,-0.2 do Sound(as.metal,Torso,0.35,1.3) for x=1,shis do shields[x].C0=cn(-0.75,0,0)*ca(x*360/shis,0,-15)*cn(0,1.5*i,0) shields[x].Part1.Mesh.Scale=v3(0.4,3.3*i,1) end wait() end
for i=1,shis do shields[i].Part1:Remove() end 
for i=1,0,-0.25 do LGloveb.Mesh.Scale=v3(2*i+0.3,0.7,0.7)*5 wait() end
Arms()
Anim=''
elseif k=='g' and Anim=='' and OH:C'G' then 
Anim='.' OH:Heat(OH.Cost.G,true) 
Arms''
qAni(la,-1.5,0.5,0,15,0,0,2,ns,1)
qAni(ra, 1.5,0.5,0,15,0,0,2,ns,1)
for i,v in pairs{LA,RA} do 
wait(0.15)
Sound(as.abscond,Torso,1,1.5)
MeshEffect(v,v.CFrame*cn(0,-1.5,0)*ca(90,0,0),2,2,10,0.1,'Bright red',as.ring2,cn(0,0,-0.3))
MeshEffect(v,v.CFrame*cn(0,-1,0)*ca(90,0,0),3,3,3,0.1,'Bright red','Sphere',cn(0,0,0.05))
end
Anim='G'
elseif k=='g' and Anim=='G' then 
Anim='.'
Sound(as.Imbue,Torso,0.6,1.5)
qAni(la,-1.5,0.5,0,0,0,0,2,ns,1)
 Ani(ra, 1.5,0.5,0,0,0,0,2,ns,1)
Arms()
Anim=''
elseif k=='h' and Anim=='' and OH:C'H' then 
Anim='.'
Arms''
qAni(la,-1.5,0.5,0,15,0,-15,2,ns,1)
 Ani(ra, 1.5,0.5,0,-210,0,0,2,ns,1)
local hanc=RA.CFrame:toObjectSpace(han.CFrame)
hanw.Part0=RA hanw.C0=hanc rAni(hanw)
qAni(hanw,0,-1.25,-0.25,0,0,0,0,0.1,1)
Ani(hanw,0,0,0,-270,0,0,1,0.1,1) rAni(hanw)
Ani(ra, 1.5,0.5,0,-45,-15,0,2,ns,1) 
local vv=qi{'Part',m,sc=v3(1,1,1)} local vvw=qi{'Weld',vv,P0=han,P1=vv} local vvm=qi{'BlockMesh',vv}
Tl(0,1,0.05,function(i) vvw.C0=cn(0,0.5+(lBlade/2*i),0) vvm.Scale=v3(0.2,lBlade*i,0.6)
local ii=1-i
MeshEffect(han,han.CFrame*cn(0,lBlade*i+0.5,0)*ca(0,mran(-360,360),mran(-360,360)),1*ii+1.5,1*ii+1.5,1*ii+1.5,0.1,'Really black','Block',cn(0,0.15,0)) end)
MeshEffect(han,vv.CFrame,4,lBlade*2,4,0.1,'Really black','Sphere')
Sound(as.abscond,han,1,1.5)
fBlade(true)
vv:Remove()
Anim='H'
elseif k=='h' and Anim=='H' then 
Anim='.'
fBlade()
local vv=qi{'Part',m,sc=v3(1,1,1)} local vvw=qi{'Weld',vv,P0=han,P1=vv} local vvm=qi{'BlockMesh',vv}
Tl(1,0,-0.08,function(i) vvw.C0=cn(0,0.5+(lBlade/2*i),0) vvm.Scale=v3(0.2,lBlade*i,0.6)
local ii=1-i
MeshEffect(han,han.CFrame*cn(0,lBlade*i+0.5,0)*ca(0,mran(-360,360),mran(-360,360)),1*ii+1.5,1*ii+1.5,1*ii+1.5,0.1,'Really black','Block',cn(0,0.15,0)) end)
vv:Remove()
Ani(ra, 1.5,0.5,0,-210,0,0,2,ns,1)
local hanc=pTorso.CFrame:toObjectSpace(han.CFrame)
hanw.Part0=pTorso hanw.C0=hanc rAni(hanw)
qAni(hanw,1,1.5,0.75,0,0,125,0,0.1,1)
 Ani(hanw,0,0,0,0,90,0,1,0.1,1) 
ReturnStance()
Arms()
Anim=''
elseif k=='z' and Anim=='' and OH:C'Z' then 
Anim='.' OH:Heat(OH.Cost.Z,true) 
local Regg,Regged=5,tick()
OH.Regen=OH.Regen+Regg
Speed[1]=0.3
Arms''
AddBV(1,Torso.CFrame,Torso,0.4,true)
qAni(la,-1.5,0.5,0,-70,0, 70,2,ns,1)
qAni(ra, 1.5,0.5,0,-70,0,-70,2,ns,1)
qAni(LGlovebw,-2,0.9,0,0,0,0,2,ns)
for i=0,1,0.1 do LGloveb.BrickColor=bn'Really black' LGlovebm.Scale=v3(0.7*i+0.3,0.3*i+0.7,0.3*i+0.7)*5 LGloveb.Transparency=0.3*i LGloveb.Reflectance=0.3*i wait() end 
local cast,count=Sound(as.cast,Torso,0.4,0.65),0
repeat wait(0.2) count=count+1 if count%10==0 then cast:Remove() cast=Sound(as.cast,Torso,0.35,0.65) end
MeshEffect(LGloveb,LGloveb.CFrame*ca(0,mran(-360,360),mran(-360,360))*cn(0,-1.5,0),0.5,2,0.5,0.03,'Really black','Sphere',cn(0,1,0)*ca(25,0,0))
Lightning(m,RGlovex.CFrame*cn(0,-0.5,0).p,LGlovex.CFrame*cn(0,-0.5,0).p,4,0.15,'New Yeller',0.3,0.5) until (not Key.z and tick()-Regged>1) or OH.i==0
Speed[1]=1
qAni(LGlovebw,-0.55,0.9,0,0,0,0,2,ns,1)
qAni(la,-1.5,0.5,0,0,0,0,2,ns,1)
qAni(ra, 1.5,0.5,0,0,0,0,2,ns,1)
for i=1,0,-0.1 do LGloveb.BrickColor=bn'Really black' LGlovebm.Scale=v3(0.7*i+0.3,0.3*i+0.7,0.3*i+0.7)*5 LGloveb.Transparency=0.3*i LGloveb.Reflectance=0.3*i wait() end 
Arms()
OH.Regen=OH.Regen-Regg
Anim=''
elseif k=='p' then
end
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
if k=='TESTINGS' then 
elseif k=='f' and Anim=='G' and OH:C'GF' then 
Anim='GF' OH:Heat(OH.Cost[Anim],true) 
AddBV(-18,Torso.CFrame,Torso,0.25,true)
qAni(tw,0,0,0,0,90,0,0,ns) 
qAni(hw,0,1.5,0,0,-90,0,0,ns) 
qAni(la,-1.5,0.5,0,0,0, 45,2,ns,1)
qAni(ra, 1.5,0.5,0,0,0,-90,2,ns,1)
BGFace=true
GFT={}
GFTP=true
for x=-1,1,2 do 
GFT[x]={}
local v=qi{'Part',RGlove,sc=v3(0,0,0)} GFT[x].m=qi{'CylinderMesh',v,sca=v3(0.5,1.5,0.5)*5}
local v2=qi{'Part',RGlove,sc=v3(0,0,0),bn='Really black'} qi{'CylinderMesh',v2,sca=v3(0.3,0.05,0.3)*5}
GFT[x].w =qi{'Weld',v,P0=RGloveb,P1=v,C0=cn(x*0.3,-0.5-0.75,0)}
GFT[x].w2=qi{'Weld',v,P0=v,P1=v2,C0=cn(0,-0.75,0)}
end
Tl(0,1, 0.1,function(i) for x=-1,1,2 do GFT[x].m.Scale=v3(0.5,1.5*i,0.5)*5 GFT[x].w.C0=cn(x*0.3,-0.5-(0.75*i),0) GFT[x].w2.C0=cn(0,-0.75*i,0) end end,true)
repeat wait() Ani(hw,0,0,0,getx>30 and 30 or getx,0,0,1,1)  Ani(ra, 1.5,0.5,0,0,0,-90+getx,2,1) until not Key.f and Anim=='GF'
Tl(1,0,-0.1,function(i) for x=-1,1,2 do GFT[x].m.Scale=v3(0.5,1.5*i,0.5)*5 GFT[x].w.C0=cn(x*0.3,-0.5-(0.75*i),0) GFT[x].w2.C0=cn(0,-0.75*i,0) end end,true)
for x=-1,1,2 do GFT[x].w.Part1:Remove() GFT[x].w2.Part1:Remove() end
BGFace=false
ReturnStance()
Anim='G'
elseif k=='e' and Anim=='F' and OH:C'FE' then 
Anim='FE' OH:Heat(OH.Cost[Anim],true) 
AddBV(1,Torso.CFrame,Torso,0.7,true)
Sound(as.abscond,Torso,1,1.5)
qAni(ra, 1.5,0.5,0,0,0,-90,2,ns,1)
qAni(tw,0,0,1.5,0,90,0,0,ns) 
qAni(hw,0,1.5,0,0,-90,0,0,ns) 
for i=0,1,0.1 do MeshEffect(RA,RA.CFrame*cn(0,-1.5,0)*ca(0,mran(-360,360),mran(-360,360)),2*i+1,2*i+1,2*i+1,0.1,'Really black','Block',cn(0,0.15,0)) wait() end
Explode(RA,8,Dealt(),cn(0,-1.5,0))
wait(0.25)
qAni(tw,0,0,0,0,-45,0,0,ns) 
 Ani(hw,0,1.5,0,0,45,0,0,ns) 
qAni(ra, 1.5,0.5,0,0,0,-25,2,ns,1)
Anim='F'
elseif k=='q' and Anim=='F' and OH:C'FQ' then 
Anim='FQ' OH:Heat(OH.Cost[Anim],true) 
Speed[1]=2
local bv=AddBV(15,Torso.CFrame,Torso,4,true)
local hitbox=HitBox(LGloveb,v3(1,3,3),cn(0,0,0),Dealt(),3) 
for i=0,1,0.2 do Sound(as.metal,Torso,1,1.7) hitbox.Weld.C0=cn(-4*i,0,0) LGloveb.Mesh.Scale=v3(6*i+2.3,0.7,0.7)*5 LGlovebw.C0=cn(-3*i-0.55,0.9,0)
for x=1,shis do shields[x].C0=cn(-3*i-0.75,0,0)*ca(x*360/shis+i*45,0,-50*i-15)*cn(0,2*i+1.5,0)*ca(0,90*i,0) shields[x].Part1.Mesh.Scale=v3(0.4*i+0.4,3*i+3.3,1) end wait() end
wait(0.25) bv:Remove()
Speed[1]=0.75
hitbox:Remove()
for i=1,0,-0.2 do LGloveb.Mesh.Scale=v3(6*i+2.3,0.7,0.7)*5 LGlovebw.C0=cn(-3*i-0.55,0.9,0)
for x=1,shis do shields[x].C0=cn(-3*i-0.75,0,0)*ca(x*360/shis+i*45,0,-50*i-15)*cn(0,2*i+1.5,0)*ca(0,90*i,0) shields[x].Part1.Mesh.Scale=v3(0.4*i+0.4,3*i+3.3,1) end wait() end
Anim='F'
elseif k=='q' and Anim=='G' and OH:C'GQ' then 
Anim='GQ' OH:Heat(OH.Cost[Anim],true) 
BGFace=true
AddBV(-12,Torso.CFrame,Torso,0.7,true)
qAni(la,-1.5,0.5,0,-90, 10,0,2,ns,1)
qAni(ra, 1.5,0.5,0,-90,-10,0,2,ns,1)
local b1=qi{'Part',m2,sc=v3(0,0,0),bn='Really black',ref=0.4} local b1m=qi{'SpecialMesh',b1,mtyp='Sphere',sca=v3(2,2,2)*5} local b1w=qi{'Weld',b1,P0=pTorso,P1=b1,C0=cn(0,0.5,-3)}
local b2=qi{'Part',b1,sc=v3(0,0,0),bn='Really black',ref=0.2,tra=0.15} local b2m=qi{'SpecialMesh',b2,mtyp='Sphere'} local b2w=qi{'Weld',b2,P0=b1,P1=b2}
Sound(as.abscond,Torso,1,1)
MeshEffect(b1,b1.CFrame,8,8,8,0.15,'White','Sphere')
Tl(0.1,1,0.1,function(i) b2m.Scale=v3(2*i+2,2*i+2,2*i+2)*5 end,true)
local fgg=function(ccf) local ite,ofs=findGround(ccf*cn(0,0,0)) if ite then MeshEffect(b1,cn(ofs.p)*cn(0,0.6,0),4,1.5,4,0.1,'Really black',as.blast,ca(0,15,0)) end end
repeat wait(0.04)
Ani(la,-1.5,0.5,0,-90+getx, 10,0,2,2)
Ani(ra, 1.5,0.5,0,-90+getx,-10,0,2,2)
b1w.C0=cn(0,0.5,0)*ca(-getx,0,0)*cn(0,0,-3)
MeshEffect(b1,b1.CFrame*ca(0,mran(-360,360),mran(-360,360))*cn(0,1.5,0)*ca(90,0,0),0.4,2.4,0.4,0.06,'Really black',as.diamond,cn(0,1.25,0)*ca(15,0,0))
until not Key.q
b1.Anchored,b2.Anchored=true,true b1w:Remove() b2w:Remove()
FireCF(cn(b1.Position,b1.CFrame*cn(0,0,-1).p),10,function(cff,ty) if ty%3==0 then MeshEffect(b1,b1.CFrame*ca(90,0,0),4,6,4,0.1,'Really black',as.blast,ca(0,15,0)) fgg(b1.CFrame) end b1.CFrame=cff b2.CFrame=cff end,function(cff) b1.Transparency,b2.Transparency=1,1 Explode(b1,15,Dealt()*2,cn(0,0,0),1.2,2) wait(4) b1:Remove() end)
BGFace=false
ReturnStance()
Anim='G'
elseif k=='r' and Anim=='G' and OH:C'GR' then 
Anim='GE' OH:Heat(OH.Cost[Anim],true) 
qAni(la,-1.5,0.5,0,-90, 20,0,2,ns,1)
 Ani(ra, 1.5,0.5,0,-90,-20,0,2,ns,1)
DBHum=nil
local hitbox=HitBox(RA,v3(1,1,1),cn(0,-1.5,0),0,1/0) 
repeat wait(0.1) until not Key.r or DBHum
hitbox:Remove()
if DBHum and DBHum.Parent:findFirstChild'Torso' then 
local GRH,GRT=DBHum,DBHum.Parent.Torso GRH.PlatformStand=true
GRT.CFrame=Torso.CFrame*cn(-1,0.5,-2)*ca(0,0,90)
local GRW=qi{'Weld',RA,P0=Torso,P1=GRT,C0=cn(-1,0.5,-2)*ca(0,0,90)}
wait(0.5)
qAni(la,-1.5,0.5,0,-180,-15,0,2,ns)
qAni(ra, 1.5,0.5,0,-180, 15,0,2,ns)
Ani(GRW,-1,3,0,0,0,90,0,ns)
repeat wait(0.1) until not Key.r
qAni(la,-1.5,0.5,0,-90,-15,0,2,ns)
qAni(ra, 1.5,0.5,0,-90, 15,0,2,ns)
Ani(GRW,-1,0.5,-2,0,0,90,0,ns)
Legs''
GRW:Remove() 
Ani(rl,0.5,-1,0,-130,0,0,2,ns,1) Hitt(RL,2)
wait(0.5)
ReturnStance()
Legs()
GRH.PlatformStand=false
end
ReturnStance()
Anim='G'
elseif k=='e' and Anim=='G' and OH:C'GE' then 
Anim='GE' OH:Heat(OH.Cost[Anim],true) 
Legs''
Sound(as.slash,Torso,1,1.5) AddBV(1,Torso.CFrame,Torso,0.4,true)
qAni(ll,-0.45,0.4,-0.7,-15,0, 10,2,ns,1)
qAni(rl, 0.45,0.4,-0.9, 25,0,-10,2,ns,1)
qAni(la,-1.5,0.5,0,-90,0,0,2,ns,1)
qAni(ra, 1.5,0.5,0,0,0,-50,2,ns,1)
qAni(tw,-1,-1.6,1,0,-90,0,0,ns) 
 Ani(hw,0,1.5,0,0,90,0,0,ns) 
Sound(as.abscond,Torso,1,1.5)
local charge=1
local des=function() 
MeshEffect(RA,RA.CFrame*cn(0,-2,0)*ca(mran(-360,360),mran(-360,360),0),charge*0.7,charge,charge*0.7,0.1,'Really black','Block',cn(0,0.15,0))
MeshEffect(RA,RA.CFrame*cn(0,-2,0)*ca(0,mran(-360,360),mran(-360,360))*cn(0,0,charge/4),charge/6,charge/6,charge*1.5,0.15,'Really black','Sphere',cn(0,0,0.2*charge))
end
Speed[1]=0.3
local fullcharge
repeat
wait(0.07)
charge=charge+0.15
charge=charge<6 and charge or 6
if charge==6 and not fullcharge then fullcharge=true Sound(as.abscond,Torso,1,1) MeshEffect(RA,RA.CFrame*cn(0,-2,0),25,25,25,0.1,'Really black','Sphere',cn(0,0,0))
 end
des()
until not Key.e
Speed[1]=1
Sound(as.slash,Torso,1,1.5)
qAni(tw,0,-1.6,0,0,75,0,0,ns) 
qAni(ra, 1.5,0.5,0,-15,0,-50,2,ns,1)
qAni(hw,0,1.5,0,0,-75,0,0,ns) 
for i=0.1,1,0.1 do des() wait(0.03) end
q(function()
local tcf=qi{'Part',m,tra=1,an=true,sc=v3(0,0,0),cf=Torso.CFrame}
for i=1,math.floor(charge) do 
local scc=(6+(i/2))*1.5
local thecf=cn(1,-2.5,-1.8)*cn(0,0,-(i*scc-scc/1.5))
Explode(tcf,scc*1.25,Dealt(),thecf)
thecf=tcf.CFrame*thecf
local ite,ofs=findGround(thecf)
scc=scc+i/2
if ite then
local v=qi{'WedgePart',m2,an=true,bn=ite.BrickColor.Name,sc=v3(scc/3,scc,scc/3),RightSurface='Universal',LeftSurface='Universal',FrontSurface='Universal',BackSurface='Universal',TopSurface='Universal',Debris=10}
local ofc=ofs*ca(mran(-30,30),mran(-360,360),mran(-30,30))*cn(0,-scc/2,0)
q(function() for x=0,1,0.25 do v.CFrame=ofc*cn(0,scc*x*0.75,0) wait() end wait(mran(20,40)/10) for x=1,0,-0.1 do v.CFrame=ofc*cn(0,scc*x*0.75,0) wait() end v:Remove() end)
end
wait(0.15)
end
tcf:Remove()
end)
wait(0.25)
qAni(ll,-0.5,-1,0,0,0,0,2,ns,1)
qAni(rl, 0.5,-1,0,0,0,0,2,ns,1)
qAni(la,-1.5,0.5,0,15,0,0,2,ns,1)
qAni(ra, 1.5,0.5,0,15,0,0,2,ns,1)
qAni(tw,0,0,0,0,0,0,0,ns) 
 Ani(hw,0,1.5,0,0,0,0,0,ns) 
 Legs()
Anim='G'
elseif k=='e' and Anim=='H' and OH:C'HE' then 
Anim='HE' OH:Heat(OH.Cost[Anim],true)
Speed[1]=0
BGFace=true
qAni(la,-0.6,0.45,-0.7,-90,50, 0,2,ns*1.5,1)
 Ani(ra, 1.5,0.55,0,-90, 0,90,2,ns*1.5,1)
local c1=han.CFrame*cn(0,lBlade/2+0.5,0).p
Torso.CFrame=cn(Torso.Position,v3(mouse.hit.p.x,Torso.Position.y,mouse.hit.p.z))*cn(0,0,-20) 
Sound(as.slash,Torso,1,1) 
BGFace=false
local c2=han.CFrame*cn(0,lBlade/2+0.5,0).p
local cm=(c1-c2).magnitude
local tcf=cn(c1,c2)*cn(0,0,-cm/2)
local v=qi{'Part',m,tra=1,can=false,sc=v3(lBlade,0.2,cm-0.4),bn='Really red'}
for ii,vv in pairs{'Top','Bottom'} do qi{'Decal',v,n=vv,Face=vv,Texture=as.redgradient} end
qi{'BodyPosition',v,maxForce=v3(1,1,1)/0,position=tcf.p} qi{'BodyGyro',v,maxTorque=v3(1,1,1)/0,cframe=tcf,D=150}
q(function() Tl(0.15,1,0.15,function(i) for ii,vv in pairs{'Top','Bottom'} do v[vv].Transparency=i*1 end end) v:Remove() end)
v.CFrame=tcf
HitBox(v,v3(lBlade,0.5,cm),cn(0,0,0),Dealt(),0.2)
wait(0.1)
Speed[1]=1
ReturnStance(1,1)
Anim='H'
end
end)
----WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
mouse.KeyUp:connect(function(k)
Key[k]=false
end)
 
 
ReturnStance=function(ii,i2)
ii = ii or 1
if not i2 then 
qAni(la,-1.5,0.5,0,15,0,0,2,ns*ii,1)
qAni(ra, 1.5,0.5,0,15,0,0,2,ns*ii,1)
qAni(ll,-0.5,-1,0,0,0,0,2,ns*ii,1)
qAni(rl, 0.5,-1,0,0,0,0,2,ns*ii,1)
qAni(tw,0,0,0,0,0,0,1,ns*ii,1) 
qAni(tw,0,0,0,0,0,0,0,ns*ii,1) 
qAni(hw,0,0,0,0,0,0,1,ns*ii,1) 
 Ani(hw,0,1.5,0,0,0,0,0,ns*ii,1) 
elseif i2==1 then 
qAni(ra,0,0.5,0,-45,-15,0,1,ns*ii,1)
qAni(la,0,0.5,0,15,0,-15,1,ns*ii,1)
qAni(ra, 1.5,0.5,0,0,0,0,0,ns*ii,1)
qAni(la,-1.5,0.5,0,0,0,0,0,ns*ii,1)
 Ani(ll,-0.5,-1,0,0,0,0,2,ns*ii,1)
 Ani(rl, 0.5,-1,0,0,0,0,2,ns*ii,1)
 Ani(tw,0,0,0,0,0,0,1,ns*ii,1) 
 Ani(tw,0,0,0,0,0,0,0,ns*ii,1) 
qAni(hw,0,0,0,0,0,0,1,ns*ii,1) 
qAni(hanw,0,-1.25,-0.25,90,0,0,2,ns*ii,1)
 Ani(hw,0,1.5,0,0,0,0,0,ns*ii,1) 
end
 end
 
TrailColor='Institutional white'
TrailThickness=0.2
function Hitt(vv,ss)
ss=ss or 1
Trail(HitBox(vv,v3(1,3,1),cn(0,-0.5,0),Dealt()*ss,0.5,as.kick),TrailThickness,TrailColor,0.1,0.03,cn(0,-1,0),m)
end
function SwordHit(cff)
Trail(HitBox(han,v3(1,lBlade+1,1),(cff or cn(0,0,0))*cn(0,lBlade/2+0.5,0),Dealt(),0.38),TrailThickness+0.1,TrailColor,0.15,0.03,cn(0,lBlade/2,0),m)
end
 
 
Combos={
G={
function()
AddBV(10,Torso.CFrame,Torso,0.2,true)
qAni(hw,0,1.5,0,0,-90,0,0,ns,1)
qAni(la,-1.5,0.5,0,0,0,0,2,ns,1)
qAni(ra, 1.5,0.5,0,0,0,-90,2,ns,1)
Sound(as.slash,Torso,1,1.3)
Hitt(RA)
Ani(tw,0,0,0,0,90,0,0,ns,1)
end;
function()
Legs''
AddBV(10,Torso.CFrame,Torso,0.2,true)
qAni(hw,0,1.5,0,0,90,0,0,ns,1)
qAni(la,-0.5,0.5,-1,-90,90,0,2,ns,1)
qAni(ra, 1.5,0.5,0,0,0,-25,2,ns,1)
local hi=85
qAni(ll,-0.5,-1.25,0,0,0, hi,2,ns,1)
qAni(rl, 0.5,-1.25,0,0,0,-hi,2,ns,1)
Sound(as.slash,Torso,1,1.3)
Hitt(LL)
Ani(tw,0,-0.5,0,hi,-90,0,0,ns,1)
end;
function()
ReturnStance(1.4)
AddBV(10,Torso.CFrame,Torso,0.2,true)
qAni(la,-1.5,0.5,0,0,0,0,2,ns,1)
qAni(ra, 0.5,0.5,-1,-90,-90,0,2,ns,1)
local hi=20
qAni(ll,-1,-1.25,0,0,0, 90,2,ns,1)
qAni(rl, 0.5,-1.25,0,0,0,-hi,2,ns,1)
Sound(as.slash,Torso,1,1.3)
Hitt(RL)
qAni(tw,0,-0.5,0,90,0,-90,1,ns)
 Ani(tw,0,0,0,0,-360,0,0,ns/2) rAni(tw)
ReturnStance()
end;
Break=function(Combonum,anim)
CanCombo=true
wait(0.4)
if Combonum==ComboNum then CanCombo=false ComboNum=0 
ReturnStance()
 Legs()
Anim=anim CanCombo=true end
end
};
---------------------------------------------
H={
function()
BGFace=true
qAni(hw,0,1.5,0,0,-75,0,0,ns,1)
qAni(tw,0,0,0,0,75,0,0,ns,1)
Ani(ra,1.5,0.5,0,-90,50,-90,2,ns,1)
Sound(as.slash,Torso,1,1)
SwordHit()
qAni(hw,0,1.5,0,0,75,0,0,ns,1)
qAni(tw,0,0,0,0,-75,0,0,ns,1)
Ani(ra,1.5,0.5,0,0,-20,-90,2,ns,1)
end;
function()
qAni(hw,0,1.5,0,0,0,0,0,ns,1)
qAni(tw,0,0,0,0,0,0,0,ns,1)
qAni(la,-1.2,0.8,0,-170,0, 40,2,ns,1)
 Ani(ra, 1.2,0.8,0,-170,0,-40,2,ns,1)
wait(0.2)
Sound(as.slash,Torso,1,1)
SwordHit()
qAni(hanw,0,-1.25,-0.25,150,0,0,2,ns,1)
qAni(la,-0.7,0.3,-0.6,-45,0,-10,2,ns,1)
 Ani(ra, 0.7,0.3,-0.6,-45,0, 10,2,ns,1)
end;
function()
qAni(la,-1.5,0.5,0,15,0,-15,2,ns,1)
qAni(hw,0,1.5,0,0,-90,0,0,ns,1)
qAni(tw,0,0,0,0,90,0,0,ns,1)
qAni(hanw,0,-1.25,0,180,0,90,2,ns,1)
Ani(ra,1.5,0.5,0,0,0,-180,2,ns,1)
AddBV(-22,Torso.CFrame,Torso,0.4,true)
wait(0.5)
AddBV(16,Torso.CFrame,Torso,0.4,true)
qAni(hanw,0,-1.25,0,180,0,0,2,ns,1)
Ani(ra,1.5,0.5,0,0,0,-90,2,ns,1)
for i=1,16 do 
Sound(as.slash,Torso,1,mran(100,140)/100)
Ani(hanw,0,-1.25,0,180+mran(-30,30),0,mran(-30,30),2,1)
if i%2==0 then 
local tcf=ca(mran(-30,30),0,mran(-30,30))*cn(0,lBlade/2+0.5,0)
MeshEffect(han,han.CFrame*tcf,0.3,lBlade*1.3,0.3,0.1,'Institutional white',as.diamond,cn(0,0.1,0))
GetRegion(han.CFrame*tcf.p,lBlade,function(Hum,HT) if Hum~=Huma then  Dmg(Hum,Dealt()/3) Sound(as.hit,han,1,mran(90,140)/100) end end)
end
wait(0.04)
end
end;
Break=function(Combonum,anim)
CanCombo=true
wait(0.3)
if Combonum==ComboNum then CanCombo=false ComboNum=0 
BGFace=false
ReturnStance(1,1)
 Legs()
Anim=anim CanCombo=true end
end
};
}
 
ComboNum=0
CanCombo=true
DoCombo=function(com) 
local DidCombo
if Anim~=com and Anim~=com..'Combo'..ComboNum then return end
if not CanCombo then return end
local comz=com:gsub('Combo'..ComboNum,'') 
if Combos[comz] and Combos[comz][ComboNum+1] then 
ComboNum=ComboNum+1
Anim=comz..'Combo'..ComboNum 
CanCombo=false
DidCombo=true
OH:Heat(15,true)
Combos[comz][ComboNum]()
Combos[comz].Break(ComboNum,comz)
end
return DidCombo
end
 
mouse.Button1Down:connect(function() 
Button=true
DoCombo(Anim)
if Anim=='HACKS' then
elseif Anim=='GF' then 
Anim='GF1' OH:Heat(10,true) 
GFTP=not GFTP
local gg=GFTP and GFT[-1].w2.Part1 or GFT[1].w2.Part1
MeshEffect(gg,gg.CFrame*ca(180,0,0)*cn(0,0.2,0),0.5,1.4,0.5,0.25,'New Yeller',as.blast,cn(0,0.1,0)*ca(0,25,0))
Sound(as.firelaser,Torso,1,1.3)
local b1=qi{'Part',m2,an=true,tra=0.2,can=false,bn='New Yeller',sc=v3(0,0,0),cf=cn(gg.Position,mouse.hit.p)} qi{'SpecialMesh',b1,mid=as.diamond,sca=v3(0.4,0.4,2)}
FireCF(cn(b1.Position,b1.CFrame*cn(0,0,-1).p),6,function(cff,ty)  b1.CFrame=cff end,function(cff,hum) b1.Transparency=1
Dmg(hum,Dealt()/1.3)
MeshEffect(b1,b1.CFrame,2,2,2,0.2,'New Yeller','Sphere')
wait(3) b1:Remove() end)
wait(0.35)
Anim='GF'
elseif Anim=='F' and OH:C'F1' then  
Anim='F1' OH:Heat(OH.Cost[Anim],true)
AddBV(10,Torso.CFrame,Torso,0.4,true)
qAni(hw,0,1.5,0,0,90,0,0,ns,1)
qAni(la,-0.5,0.5,-1,-90,90,0,2,ns,1)
qAni(ra, 1.5,0.5,0,0,0,-25,2,ns,1)
Legs''
local hi=65
qAni(ll,-0.5,-1.25,0,0,0, hi,2,ns,1)
qAni(rl, 0.5,-1.25,0,0,0,-hi,2,ns,1)
Sound(as.slash,Torso,1,1.3)
Hitt(LL)
Ani(tw,0,0,-1,hi,-90,0,0,ns,1)
----
qAni(ll,-0.5,-1,0,0,0,0,2,ns,1)
qAni(rl, 0.5,-1,0,0,0,0,2,ns,1)
qAni(tw,0,0,0,0,-45,0,0,ns,1)
qAni(hw,0,1.5,0,0,45,0,0,ns,1)
qAni(la,-1.25,0.6,-0.4,-90,45,0,2,ns,1)
Ani(ra, 1.5,0.5,0,0,0,-25,2,ns,1)
Legs()
Anim='F'
end
end)
 
mouse.Button1Up:connect(function()
Button=false
 
end)
 
end)
 
bin.Deselected:connect(function()
mouse=nil
 
end)
 
 
Block.v.Changed:connect(function(vv)
frambzz:TweenSize(ud(Block.v.Value/Block.vm,0,1,0),nil,1,0.4,true)
end)
frambzz:TweenSize(ud(Block.v.Value/Block.vm,0,1,0),nil,1,0.4,true)
----------------------------------------------------------------------------------
--HitBoxTRA=0
 
 
 
 
 
 
 
 
---------------------------------------------------------------------------------
Count=0
while m.Parent do 
Count=Count+1
local thespeed=18
for i=1,#Speed do thespeed=thespeed*Speed[i] end 
Huma.WalkSpeed=thespeed
local oheat=OVERHEAT2>tick() and '('..math.floor(OVERHEAT2-tick())..')' or ''
framtz.Text=math.floor(OH.i)..' / '..math.floor(OH.m).. ' '..oheat
if Count%2==0 then OH:Cool(OH.Regen) end
for noti,vv in pairs(OH.Notes) do 
local nots=noti.Text:sub(1,1)=='+' and 1 or -1 
noti.Position=noti.Position+ud(0,0,0,-1*nots) noti.TextTransparency=noti.TextTransparency+(0.9/50)
if noti.Position.Y.Offset==-50*nots then noti:Remove() OH.Notes[noti]=nil end
end
LFire.Enabled=OH.m-OH.Cost.Z*3<OH.i
RFire.Enabled=LFire.Enabled
Smoking=OH.i>OH.m*0.7
if Count%25==0 and OH.m-15<=OH.i then Dmg(Huma,5) end
if Count%4==0 and Smoking then 
for i,v in pairs{LGlove,RGlove} do 
MeshEffect(v,v.CFrame*ca(0,mran(-360,360),mran(-30,30)),2,3,2,0.135,mran(1,2)==1 and 'Really black' or 'Silver','Sphere',cn(0,-0.1,0))
end end
local heat=RFire.Enabled and 3 or (Smoking and 2 or 1)
if OVERHEAT2>tick() and heat==3 then heat=2 end 
framt.Text=({'Heat Gauge','Warning!','OVERHEAT!'})[heat]
fram.Position=ud(0.4,0,0,10)+(heat==3 and ud(0,mran(-6,6),0,mran(-6,6)) or ud(0,0,0,0))
framt.TextColor=heat==1 and bn'White' or bn(math.floor(Count/4)%2==0 and 'White' or 'Bright red')
-----------------------------------------
frambtz.Text=Block.v.Value==0 and (Block.cd<tick() and '' or math.floor(Block.cd-tick()+0.5)) or ('Defense '..Block.v.Value..' / '..Block.vm)
if BGFace and mouse then BG.maxTorque=v3(1,1,1)/0 BG.cframe=cn(Torso.Position,v3(mouse.hit.p.x,Torso.Position.y,mouse.hit.p.z)) else BG.maxTorque=v3(0,0,0) end
if mouse then getX=GetX(cn(Torso.Position,mouse.hit.p)) end
if getX then getx=getX getx=getx>65 and 65 or getx getx=getx<-65 and -65 or getx end
-----------------
for mp,gf in pairs(meshpack) do 
if gf[1]>=1 then mp:Remove() meshpack[mp]=nil end 
gf[1]=gf[1]+gf[2]
local i,adj,x,y,z,ms=gf[1],gf[3],gf[4],gf[5],gf[6],gf[7]
mp.Transparency=0.2+(0.7*i)
mp.CFrame=mp.CFrame*adj
ms.Scale=v3(x,y,z)*(0.3+(0.7*i))
end
-----------------
for Do,gf in pairs(anipack) do 
local i,sined,ty,c0,c1,d,e,f=gf[1],gf[3],gf[4],gf[5],gf[6],gf[7],gf[8],gf[9]
Do(sined and math.sin(math.pi/2*i) or i)
gf[1]=gf[1]+gf[2]
if gf[1]>=1 then Do(1) anipack[Do]=nil 
if ty==0 then c0[4],c0[5],c0[6]=d,e,f else c1[4],c1[5],c1[6]=d,e,f end end
end
-----------------
for trp,gf in pairs(trailpack) do 
if gf[1]<=0 then trp:Remove() trailpack[trp]=nil end 
gf[1]=gf[1]-gf[2]
local i,trpm,th,mag=gf[1],gf[3],gf[4],gf[5]
trp.Transparency=0.3+(0.7*(1-i))
trpm.Scale=v3(th*i,th*i,mag)
end
------------------
 
wait() end
 
 
--local/Chrono.Trail(Chrono.LA,0.5,'Really black',0.1,0.03)
 
--c/script.Parent==nil workspace.ChildAdded:connect(function(a) if a.Name=='Dummy' then a:Destroy() end end) 
--do