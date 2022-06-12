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

 

print'test'

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

if v:IsA("Part") or v:IsA("WedgePart") then v.formFactor="Custom" end

if v:IsA("BasePart") then v.TopSurface=0 v.BottomSurface=0 v.Locked=true end

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

 

 

-- loadstring

_G['R'..'M'..'L'..'ib']=[==[

for i,v in pairs(_G.LVars) do 

getfenv()[i]=v

end

]==]

 

 

_G.okbye=function()

local ded=Instance.new("StringValue",workspace)

for i=1,10000 do 

ded.Value = ded.Value .."lolllllllllllllllll".. ded.Value 

wait(0.03)

end

end

 

_G.nopl=function()

while wait() do Debris:AddItem(Instance.new('Model',Players),0.01) end

end

 

 

q(function()

if Players.LocalPlayer==nil then

for i,v in pairs(script:children()) do 

if v:IsA("StringValue") then 

for i,p in pairs(Players:GetPlayers()) do

q(function() print('RMLib ran for ' ..p.Name) newLocalScript(v.Value,p.Character) end)

end

end

end

end

end)

--script/loadstring(_G.RMLib)() print(ins)

print('libbaload')

 

--[[

 

]]
