   
repeat wait() until game:GetService("Players").LocalPlayer.Character; 
pcall(function() _G.RMs.Disabled=true end) 
_G.RMs=script
_G.RMf=getfenv()
ServiceTable = {"Players","Lighting","Debris","StarterPack","InsertService"}
for i,v in pairs(ServiceTable) do 
  getfenv()[v]=game:GetService(v)
end
 
INEW=Instance.new
V3=Vector3.new
V3A=function(i) return V3(i,i,i) end
CF=CFrame.new
MRAD=math.rad
MDEG=math.deg
mrnd=math.random
CA=function(a,b,c) return CFrame.Angles(MRAD(a),MRAD(b),MRAD(c)) end
CF0=CF(0,0,0)
v3=V3
v30=v3(0,0,0)
v31=v3(1/0,1/0,1/0)
rotrand = function(a,b) 
    local a = a and -a or -180
    local b = b and -b or  180
    return CA(mrnd(a,b),mrnd(a,b),mrnd(a,b))
end
 
as,so2,so={},{'metal','Block','Slash','Slash2','Hit','Kick','Abscond','Cast'},{}
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
as.Cast='2101137'
as.Abscond='2767090'
as.Blood='158555098'
as.Spear1='69891706'
as.Spear1T='69890778'
as.Skull='6552202'
as.Gradient1='185346444'
as.Gradient2='185346448'
 
for i,v in pairs(as) do 
if v:sub(1,3)~="htt" and v:sub(1,3)~="rbx" then
as[i]="http://www.roblox.com/asset/?id="..v
end
end
 
 
newPart = function(sizea,sizeb,sizec,parent,cframe,aa,bb,cc,dd,ee,ff)
  local Materials = {}
  for i,v in pairs{
    "Plastic","SmoothPlastic","Wood", "WoodPlanks", 
    "Marble", "Slate","Concrete", "Granite",
    "Brick","Pebble", "Cobblestone","CorrodedMetal",
    "DiamondPlate", "Foil", "Metal","Grass",
    "Sand","Fabric","Ice"} do 
    Materials[v]=v
  end
  local mat,col
  local part = Instance.new("Part",parent or Model)
    for i,v in pairs{aa,bb,cc,dd,ee,ff} do 
    if Materials[v] then mat=v end
    if BrickColor.new(v).Name==v then col=v end
    if v=="CylinderMesh" or v=="BlockMesh" then INEW(v,part).Name="Mesh" end
    if v=="Wedge" then part.Parent=nil part=INEW("WedgePart",parent or Model) end
    if v=="Corner" then part.Parent=nil part=INEW("CornerWedgePart",parent or Model)    
    end
    end
  if part.className~="CornerWedgePart" then part.formFactor="Custom" end
  part.TopSurface=0
  part.BottomSurface=0
  part.Size=V3(sizea,sizeb,sizec) or V3(1,1,1)
  part.CFrame=cframe or CF(0,10,0)
  part.BrickColor=BrickColor.new(col or '')
  part.Material = mat or 'Plastic'
  part:BreakJoints()
  return part,cframe
end
newWeld = function(parent,P0,P1,C0,C1)
local weld=INEW("Weld",parent or P0)
weld.Part0=P0
weld.Part1=P1
weld.C0=C0 or weld.C0
weld.C1=C1 or weld.C1
return weld
end
-------
ray = function(Pos, Dir,tab,length) -- ray cast
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *(length or 999)),tab) 
end 
----------------------------------------------------------------------------
WeldLib={}
function GetWeld(weld,CO) 
    local CO=CO or 0
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
mabs=math.abs
mdeg = math.deg
v3floor = function(w,dec)
    local dec=dec or 1000
    return v3(math.floor(w.x*dec)/dec,math.floor(w.y*dec)/dec,math.floor(w.z*dec)/dec)
end
function SetWeld(weld,CO,i, loops, origpos,origangle, nextpos,nextangle,smooth) 
    local origpos=origpos
    local origangle=origangle
    loops=math.floor(loops)
    if not origpos and not origangle then 
    origpos,origangle=GetWeld(weld,CO)
    end
    local perc =(smooth==1 or smooth==nil) and math.sin((math.pi/2)/loops*i) or i/loops 
    -----------
    if not WeldLib[weld] then 
        local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
        local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
        WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
    end  
    --if smooth==2 and (origangle-nextangle).magnitude <2.5 then return end -- anti
    -----------
    origangle=v3floor(origangle)
    nextangle=v3floor(nextangle)
    local tox,toy,toz = 0,0,0 
    tox = origangle.x > nextangle.x and -mabs(origangle.x - nextangle.x) *perc or mabs(origangle.x - nextangle.x) *perc 
    toy = origangle.y > nextangle.y and -mabs(origangle.y - nextangle.y) *perc or mabs(origangle.y - nextangle.y) *perc 
    toz = origangle.z > nextangle.z and -mabs(origangle.z - nextangle.z) *perc or mabs(origangle.z - nextangle.z) *perc 
    local tox2,toy2,toz2 = 0,0,0 
    tox2= origpos.x > nextpos.x  and -mabs(origpos.x - nextpos.x) *perc or mabs(origpos.x - nextpos.x) *perc 
    toy2= origpos.y > nextpos.y  and -mabs(origpos.y - nextpos.y) *perc or mabs(origpos.y - nextpos.y) *perc
    toz2= origpos.z > nextpos.z  and -mabs(origpos.z - nextpos.z) *perc or mabs(origpos.z - nextpos.z) *perc 
    WeldLib[weld][CO] = v3(origangle.x + tox,origangle.y + toy,origangle.z + toz)
    weld['C'..CO] = CF(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*CA(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
----------------------------------------
function GetTriangleValues(Points) 
        local G, V = 0
        for S = 1, 3 do
                local L = (Points[1+(S+1)%3]-Points[1+S%3]).magnitude
                G, V = L > G and L or G, L > G and {Points[1+(S-1)%3], Points[1+(S)%3], Points[1+(S+1)%3]} or V
        end
        local D = V[2]+(V[3]-V[2]).unit*((V[3]-V[2]).unit:Dot(V[1]-V[2]))
        local C, B = (D-V[1]).unit, (V[2]-V[3]).unit
        local A = B:Cross(C)
        S1 = V3(0, (V[2]-D).magnitude, (V[1]-D).magnitude)/1  --0.2
        S2 = V3(0, (V[3]-D).magnitude, (V[1]-D).magnitude)/1  --0.2
        C1 = CF(0,0,0,A.X,B.X,C.X,A.Y,B.Y,C.Y,A.Z,B.Z,C.Z)+(V[1]+V[2])/2
        C2 = CF(0,0,0,-A.X,-B.X,C.X,-A.Y,-B.Y,C.Y,-A.Z,-B.Z,C.Z)+(V[1]+V[3])/2
        return C1, C2, S1, S2
end
------
LoopFunctions={}
function DoLoop(times,func)
    LoopFunctions[#LoopFunctions+1]={times,0,func}
end
----------
MeshPack={}
MeshEffect=function(i,ofs,trans,mesh,ofss,col,sc1,sc2) -- Interval>CFrame>Adj
local sc2=sc2
if sc2 and type(sc2)=="number" then sc2=sc1*sc2 end
local ob=INEW("Part",Model)
ob.Anchored=true
ob.CanCollide=false
ob.TopSurface,ob.BottomSurface=0,0
ob.formFactor="Custom"
ob.Name="Effect"
ob.Size=v3(1,1,1)
ob.CFrame=ofs
ob.BrickColor=BrickColor.new(col or EffectColor)
ob.Transparency=trans or 0.5
local obm
if mesh=="Block" or mesh=="Cylinder" then
obm=INEW(mesh.."Mesh",ob)
elseif mesh:sub(1,3)=="htt" or mesh:sub(1,3)=="rbx" then
obm=INEW("SpecialMesh",ob)
obm.MeshType="FileMesh"
obm.MeshId=mesh
else
obm=INEW("SpecialMesh",ob)
obm.MeshType=mesh
end
obm.Scale=sc1 or v3(1,1,1)
MeshPack[#MeshPack+1]={ob,1,-i,ofss or CF0,obm.Scale,sc2 or v30,ob.Transparency}
end
Effect1 = function(orig,adjj,radius,deg,parts,fade,wide,fadespeed)
    local orig = orig
    local adjj = adjj or CF(0,0,0)
    local radius=radius or 8
    local deg=deg or 65
    local parts=parts or 6
    local fade=fade or 1
    local wide = wide or 0.2 --mrnd(500,1500)/1000
    local fadespeed=fadespeed or 0.05
    local part={}
    for x=-deg/2,deg/2,deg/parts do 
    local function reframe(x,radius,wide,orig)
    local xa=x-deg/parts/2
    local xb=x+deg/parts/2
    local xxa=math.sin(math.rad(xa))*radius*wide
    local zza=math.cos(math.rad(xa))*radius
    local xxb=math.sin(math.rad(xb))*radius*wide
    local zzb=math.cos(math.rad(xb))*radius
    local xx=math.sin(math.rad(x))*radius*wide
    local zz=math.cos(math.rad(x))*radius
    local kek=CF(orig*CF(xxa,0,zza).p,orig*CF(xxb,0,zzb).p)*CF(0,0,-(orig*CF(xxa,0,zzb).p-orig*CF(xx,0,zz).p).magnitude)
    local len=(orig*CF(xxa,0,zza).p-orig*CF(xxb,0,zzb).p).magnitude
    return kek,len
    end
    local kek,len = reframe(x,radius,wide,orig)
    local new=INEW("Part",Model)
    new.Anchored=true new.TopSurface=10 new.BottomSurface=10
    new.CanCollide=false new.formFactor="Custom" new.Size=v3(0.2,0.2,0.2)
    new.BrickColor=BrickColor.new(EffectColor) new.Transparency=0.6
    new.CFrame=kek
    newm=INEW("BlockMesh",new)
    newm.Scale=v3(0.5,0.1,len)*5
    part[#part+1]={new,newm,x,CF(fade*radius/(1/fadespeed),0,0),reframe} --part,mesh,x,adj,func
    end
    DoLoop(1/fadespeed,function(i)
    orig=orig*adjj
    for x=1,#part do 
    local kek,len=part[x][5](part[x][3],radius+fade*radius*i,wide,orig)
    part[x][1].CFrame=kek 
    part[x][2].Scale=v3(0.5,0.1,0.01+len)*5
    part[x][1].Transparency=0.6+0.4*i
    if i==1 then part[x][1]:Remove() end
    end
    end)
end
newMesh=function(parent,type,sx,sy,sz)
local filemesh
local mesh
if type=="Block" or type=="Cylinder" then 
mesh=INEW(type.."Mesh",parent)
elseif type:sub(1,4)=="http" or type:sub(1,3)=="rbx" then
mesh=INEW("SpecialMesh",parent)
mesh.MeshType="FileMesh"
mesh.MeshId=type
filemesh=true
else
mesh=INEW("SpecialMesh",parent)
mesh.MeshType=type
end
if parent.Size.x<0.2001 then parent.CanCollide=false end
local yes=parent.Size.x<0.2001 and 5 or 1
if filemesh then yes=1 end
mesh.Scale=V3(sx or 1,sy or 1,sz or 1)*yes
return mesh
end
Ca=function(a,b,c,d,e,f)
    local x,y,z=(CA(a,b,c)*CA(d,e,f)):toEulerAnglesXYZ()
    return v3(mdeg(x),mdeg(y),mdeg(z))
end
-----
Ghost={}
NewGhost=function(cff)
local gho=#Ghost+1
Ghost[gho]={}
Ghost[gho][1]=cff
local ghom=INEW('Model',workspace)
ghom.Name=Player.Name..'Ghost'
Ghost[gho][2]=ghom
Ghost[gho][3]=CF(0,1.5,0)*CA(0,90,0)
Ghost[gho].Torso=INEW("Part",ghom) --
Ghost[gho].Torso.formFactor='Custom'
Ghost[gho].Torso.Size=v3(2,2,1)
Ghost[gho].Torso.Name='Torso'
local kek=Ghost[gho].Torso
Ghost[gho].Handle=kek:Clone() Ghost[gho].Handle.Name='Handle' Ghost[gho].Handle.Touched:connect(BladeFunc) 
Ghost[gho].Handle.Size=v3(0.4,pol+4,1)local mesh=INEW("SpecialMesh",Ghost[gho].Handle) mesh.MeshType='FileMesh' mesh.MeshId=as.Spear1 mesh.TextureId=as.Spear1T mesh.Scale=v3(3,3,3)
Ghost[gho].Head=Ghost[gho].Handle:Clone() Ghost[gho].Head.Mesh.MeshId=as.Skull Ghost[gho].Head.Mesh.TextureId=''
Ghost[gho].Head.Mesh.Scale=v3(1,1,1)/0.32 Ghost[gho].Head.Size=v3(1,1,1)
Ghost[gho].Head.Name='Head'
Ghost[gho].LA=kek:Clone() Ghost[gho].LA.Name=LA.Name Ghost[gho].LA.Size=v3(1,2,1) --LA:Clone()
local kek=Ghost[gho].LA
Ghost[gho].RA=kek:Clone() Ghost[gho].RA.Name=RA.Name --RA:Clone()
Ghost[gho].LL=kek:Clone() Ghost[gho].LL.Name=LL.Name --LL:Clone()
Ghost[gho].RL=kek:Clone() Ghost[gho].RL.Name=RL.Name --RL:Clone()
Ghost[gho].Torso.Parent=ghom
Ghost[gho].Head.Parent=ghom
Ghost[gho].LA.Parent,Ghost[gho].RA.Parent,Ghost[gho].LL.Parent,Ghost[gho].RL.Parent,Ghost[gho].Handle.Parent=ghom,ghom,ghom,ghom,ghom
local bp=INEW('BodyPosition',Ghost[gho].Handle)
bp.maxForce=v31
bp.Name='bp'
for i,v in pairs(ghom:children()) do v.CanCollide=false if v.Name~='Handle' then v.Anchored=true
 v.BrickColor=BrickColor.new'Really black' v.Transparency=0.1 v.TopSurface=0 v.BottomSurface=0 end end
end
------
AOEDmg = function(pos,ra,dmg,func) -- range get 
    local p0,p1=pos-v3(ra/2,ra/2,ra/2),pos+v3(ra/2,ra/2,ra/2)
    for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),nil,100))  do 
    local Hum=v.Parent:findFirstChild'Humanoid'
    if Hum and Hum.Health>0 and Hum~=Humanoid and (HitDB[Hum]==nil or (HitDB[Hum] and HitDB[Hum]<time()))  then 
    HitDB[Hum]=time()+0.08
    fDamage(dmg,v,Hum)
    if func then func(v,Hum) end 
    elseif not Hum then 
    ---------
    end
    end
end 
-------
GetX = function(Part,Point)
local x,y,z=Part.CFrame:toObjectSpace(CFrame.new(Part.Position,Point)):toEulerAnglesXYZ()
return math.deg(x)
end 
GetY = function(Part,Point)
local x,y,z=Part.CFrame:toObjectSpace(CFrame.new(Part.Position,Point)):toEulerAnglesXYZ()
return math.deg(y)
end
-----
--AddBV=function(str,cfr,par,deb,yy)
--return qi{'BodyVelocity',par,velocity=cfr.lookVector*str,maxForce=v3(1/0,not yy and 1/0 or 0,1/0),Debris=deb,n='LibBV'}
----
 
Name="weapon"
SkinColor="Pastel brown"
Player=Players.LocalPlayer
Character=Player.Character
Torso,Head,Humanoid=Character.Torso,Character.Head,Character.Humanoid
HRP=Character.HumanoidRootPart.RootJoint
Neck=Torso.Neck
oHRP=Character.HumanoidRootPart
 
pcall(function() Player.Backpack[Name]:Remove() end)
pcall(function() Character[Name]:Remove() end)
for i,v in pairs(workspace:children()) do if v.Name==Player.Name.."Ghost" then v:Remove() end end
 
Tool=INEW("HopperBin",Player.Backpack)
Tool.Name=Name
 
Model=INEW("Model",Character)
Model.Name=Name
 
-----------------------------LimbWelds
LA=Character["Left Arm"]
RA=Character["Right Arm"]
LL=Character["Left Leg"]
RL=Character["Right Leg"]
LS=Torso:findFirstChild("Left Shoulder") or _G.LS
RS=Torso:findFirstChild("Right Shoulder") or _G.RS
LH=Torso:findFirstChild("Left Hip") or _G.LL
RH=Torso:findFirstChild("Right Hip") or _G.RL
_G.LS,_G.RS,_G.LH,_G.RH=LS,RS,LH,RH
LA:BreakJoints() RA:BreakJoints() LL:BreakJoints() LL:BreakJoints() 
LS.Parent,RS.Parent,LH.Parent,RH.Parent=Torso,Torso,Torso,Torso
LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL
cLA0,cLA1=CF(-1.5,0.5,0),CF(0,0.5,0)
cRA0,cRA1=CF(1.5,0.5,0),CF(0,0.5,0)
cLL0,cLL1=CF(-0.5,-1,0),CF(0,1,0)
cRL0,cRL1=CF(0.5,-1,0),CF(0,1,0)
for i,v in pairs{"LS","RS","LH","RH"} do 
local w=getfenv()[v]
getfenv()["a"..v.."0"]=_G["RMo1"..v] or w.C0.p
getfenv()["a"..v.."1"]=_G["RMo2"..v] or w.C1.p
local a,b,c=w.C0:toEulerAnglesXYZ()
local x,y,z=w.C1:toEulerAnglesXYZ()
getfenv()["b"..v.."0"]=_G["RMo3"..v] or v3(mdeg(a),mdeg(b),mdeg(c))
getfenv()["b"..v.."1"]=_G["RMo4"..v] or v3(mdeg(x),mdeg(y),mdeg(z))
_G["RMo1"..v]=getfenv()["a"..v.."0"]
_G["RMo2"..v]=getfenv()["a"..v.."1"]
_G["RMo3"..v]=getfenv()["b"..v.."0"]
_G["RMo4"..v]=getfenv()["b"..v.."1"]
end
------Sounds
for i,v in pairs(Torso:children()) do 
if v:IsA'Sound' then v:Remove() end
end
for i,v in pairs(oHRP:children()) do 
if v.Name:sub(1,2)=="RM" then v:Remove() end 
end
HRPDist = function(pos,adj) return (oHRP.Position-CF(pos,oHRP.Position)*CF(0,0,adj and -adj or 0).p).magnitude end
oBP=INEW("BodyPosition",oHRP) 
oBG=INEW("BodyGyro",oHRP)
oBV=INEW("BodyVelocity",oHRP)
oBP.Name="RMBP"
oBG.Name="RMBG"
oBV.Name="RMBV"
oBP.maxForce=v30
oBP.D=500
oBG.maxTorque=v30
oBG.D=100
oBV.maxForce=v30
DoBP=function(pos,adj)
    if not pos then oBP.maxForce=v30 return end
    oBP.maxForce=v31 --(1/0,0,1/0)
    oBP.position=(CF(pos,oHRP.Position)*CF(0,0,adj and -adj or 0)).p
end
DoBG=function(pos)
    if not pos then oBG.maxTorque=v30 return end
    oBG.maxTorque=v31
    oBG.cframe=CF(oHRP.Position,v3(pos.x,oHRP.Position.y,pos.z))
end
for i,n in pairs(so2) do 
so[n]={}
so[n].Pitch=1
so[n].Volume=1
so[n].SoundId=as[n]
so[n].Play=function(table)
local v=INEW("Sound",Torso)
v.Volume=so[n].Volume
v.Pitch=so[n].Pitch
v.Looped=false
v.Name=n
v.SoundId=as[n]
v:Play()
Debris:AddItem(v,5)
end
end
SlashPitch=1.3
so.Slash.Pitch=SlashPitch
 
wLA=newWeld(nil,nil,nil,cLA0,cLA1) wLA.Name="left shoulder"
wRA=newWeld(nil,nil,nil,cRA0,cRA1) wRA.Name="right shoulder"
wLL=newWeld(nil,nil,nil,cLL0,cLL1) wLL.Name="left hip"
wRL=newWeld(nil,nil,nil,cRL0,cRL1) wRL.Name="right hip"
Arms = function(on)
    if on then
    LS.Parent,RS.Parent=nil,nil
    LS.Part0,RS.Part0=nil,nil
    LS.Part1,RS.Part1=nil,nil
    wLA.Parent,wRA.Parent=Torso,Torso
    wLA.Part0,wRA.Part0=Torso,Torso
    wLA.Part1,wRA.Part1=LA,RA
    else
    wLA.Parent,wRA.Parent=nil,nil
    wLA.Part0,wRA.Part0=nil,nil
    wLA.Part1,wRA.Part1=nil,nil
    LS.Parent,RS.Parent=Torso,Torso
    LS.Part0,RS.Part0=Torso,Torso
    LS.Part1,RS.Part1=LA,RA
    end
end
LegUse = false
Legs= function(on)
LegUse=on
    if on then
    LH.Parent,RH.Parent=nil,nil
    LH.Part0,RH.Part0=nil,nil
    LH.Part1,RH.Part1=nil,nil
    wLL.Parent,wRL.Parent=Torso,Torso
    wLL.Part0,wRL.Part0=Torso,Torso
    wLL.Part1,wRL.Part1=LL,RL
    else
    wLL.Parent,wRL.Parent=nil,nil
    wLL.Part0,wRL.Part0=nil,nil
    wLL.Part1,wRL.Part1=nil,nil
    LH.Parent,RH.Parent=Torso,Torso
    LH.Part0,RH.Part0=Torso,Torso
    LH.Part1,RH.Part1=LL,RL
    end
end
Arms()
Legs()
WalkBrick=INEW("Part",Model)
WalkBrick.Anchored=true WalkBrick.Size=Vector3.new(1,1,1)
WalkBrick.Transparency=1 WalkBrick.CanCollide=false
WalkBrick.CFrame=CF(0,-10,0)
-----------------------------------------------------
Color1="Black"
Color2="Bright yellow"
Color3="Pastel brown"
EffectColor="Bright yellow"
 
pol=4
Handle=newPart(0,0,0,nil,nil,Color1)
Handlem=newMesh(Handle,"Cylinder",0.2,pol-0.33,0.2)
wHandle=newWeld(Handle,Torso,Handle,CF(0.8,1.5,0.43)*CA(-25,0,135))
tpol=CF(0,2+(pol+4)/2,0)
HitBox=newPart(0.3,tpol.y,0.8) 
HitBox.CanCollide=false
HitBox.Transparency=1
wHitBox=newWeld(HitBox,Handle,HitBox,CF(0,tpol.y/2,0))
oHandle0,oHandle1=GetWeld(wHandle)
---bottomdesignvv
for x=-1,1,2 do 
for xx=-1,1,2 do 
part=newPart(0,0,0,nil,nil,'Dark stone grey')
partm=newMesh(part,as.diamond,0.2,0.15,0.4)
partw=newWeld(part,Handle,part,CF(0,x*(pol/2-0.08),0*x)*CA(55*xx,0,0))
end
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,as.cone,0.06,1,0.06)
partw=newWeld(part,Handle,part,CF(0,-pol/2-1.05,0.1*x)*CA(180,0,0))
local thecf=CF(0,-pol/2-0.7,0.1*x)*CA(90*x+(-90*x/3),0,0)
for i=1,3 do
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,as.cone,0.09,0.4,0.09)
partw=newWeld(part,Handle,part,thecf)
thecf=thecf*CA(-90*x/3,0,0)*CF(0,0.2,0.035*x)
end
end
---botomdesign^^^
local xx=37
for x=-1,1,2 do 
local thecf=CF(0,pol/2,0)
for lel=0.17,0.31,(0.3-0.17)/2 do
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,"Block",0.12,lel+0.04,0.06)
thecf=thecf*CA(-xx*x,0,0)*CF(0,lel/2,0)
partw=newWeld(part,Handle,part,thecf)
local outline=part:Clone() outline.Parent=part 
newWeld(outline,part,outline) outline.Mesh.Scale=outline.Mesh.Scale+(V3(-0.03,0.025,0.03)*5)
outline.BrickColor=BrickColor.new(Color2)
----
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,"Block",0.12,lel+0.04,0.06)
thecf=thecf*CF(0,lel/2,0)*CA(xx*2*x,0,0)*CF(0,lel/2,0)
partw=newWeld(part,Handle,part,thecf)
local outline=part:Clone() outline.Parent=part 
newWeld(outline,part,outline) outline.Mesh.Scale=outline.Mesh.Scale+(V3(-0.03,0.025,0.03)*5)
outline.BrickColor=BrickColor.new(Color2)
------
thecf=thecf*CF(0,lel/2,0)*CA(-xx*x,0,0)
end
end
----botom
local xx=30
for x=-1,1,2 do 
local thecf=CF(0,-pol/2,0)*CA(180,0,0)
for lel=0.14,0.26,(0.25-0.14) do
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,"Block",0.12,lel+0.04,0.06)
thecf=thecf*CA(-xx*x,0,0)*CF(0,lel/2,0)
partw=newWeld(part,Handle,part,thecf)
local outline=part:Clone() outline.Parent=part 
newWeld(outline,part,outline) outline.Mesh.Scale=outline.Mesh.Scale+(V3(-0.03,0.025,0.03)*5)
outline.BrickColor=BrickColor.new(Color2)
----
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,"Block",0.12,lel+0.04,0.06)
thecf=thecf*CF(0,lel/2,0)*CA(xx*2*x,0,0)*CF(0,lel/2,0)
partw=newWeld(part,Handle,part,thecf)
local outline=part:Clone() outline.Parent=part 
newWeld(outline,part,outline) outline.Mesh.Scale=outline.Mesh.Scale+(V3(-0.03,0.025,0.03)*5)
outline.BrickColor=BrickColor.new(Color2)
------
thecf=thecf*CF(0,lel/2,0)*CA(-xx*x,0,0)
end
end
part=newPart(0,0,0,nil,nil,"Bright orange")
partm=newMesh(part,"Sphere",0.2,0.35,0.35)
partw=newWeld(part,Handle,part,CF(0,pol/2+1.4,0))
partx=newPart(0,0,0,nil,nil,Color3)
newMesh(partx,"Cylinder",0.4,0.11,0.4)
newWeld(part,Handle,partx,CF(0,pol/2+1.4,0)*CA(0,0,90))
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,"Cylinder",0.36,0.1,0.36)
partw=newWeld(part,Handle,part,CF(0,pol/2+1.45,0)*CA(0,0,90))
----right half
local blade1=CF(0,pol/2+1.6,-0.15)
--
local blens={2.4,1.6,0.8,0.2,0.3,0.4}
for i=1,3 do
local len=blens[i]
local wid=blens[i+3]
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,"Wedge",0.1+(0.01*i),len,wid)
partw=newWeld(part,Handle,part,blade1*CF(0,len/2,-0.17+0.3-wid/2))
part=newPart(0,0,0)
partm=newMesh(part,"Wedge",0.06,len,wid)
partw=newWeld(part,Handle,part,blade1*CF(0,len/2,-0.18+0.3-wid/2))
end
--
function makedia(cur,xx,len,ii,ad,ad2)
local ad = ad or 0
local ad2=ad2 or 0
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,as.diamond,0.05+ad/10,0.25+len,xx/120)
partw=newWeld(part,Handle,part,cur*CA(ii,0,0)*CF(0,0.1+len,0))
for x=-1,1,2 do 
part=newPart(0,0,0,nil,nil,Color3)
partm=newMesh(part,"Block",0.12+ad+(0.01*x),len+0.02,0.05+ad2)
partw=newWeld(part,Handle,part,cur*CA(ii,0,0)*CF(0,0.18,0)*CA(xx*x,0,0)*CF(0,len/2,0))
part=newPart(0,0,0,nil,nil,Color3)
partm=newMesh(part,"Block",0.12+ad+(0.01*x),len+0.02,0.05+ad2)
partw=newWeld(part,Handle,part,cur*CA(ii,0,0)*CF(0,0.18,0)*CA(xx*x,0,0)*CF(0,len,0)*CA(-xx*x*2,0,0)*CF(0,len/2,0))
end
end
makedia(blade1*CF(0,-0.29,-0.03+0.025),20,0.4,90+33,0,0.03)
makedia(blade1*CF(0,0.04,0.25),20,0.35,-90-20)
makedia(blade1*CF(0,0.05,0.1),20,0.35,-90-60,0.01)
--makedia(blade1*CF(0,-0.15,-0.025),15,0.4,-90-90,0.05)
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,as.cone,0.04,0.5,0.18)
partw=newWeld(part,Handle,part,blade1*CF(0,-0.625,-0.1)*CA(-135,0,0)*CF(0,-0.15,0))
local cur=blade1*CF(0,-0.625,-0.1)*CA(-135,0,0)*CF(0,0,0)
for i=1,3 do
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,as.cone,0.1,0.5,0.1)
partw=newWeld(part,Handle,part,cur)
cur=cur*CA(-23,0,0)*CF(0,0.25,0.02)
end
for i=1,4 do
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,as.cone,0.1,0.5,0.1)
partw=newWeld(part,Handle,part,cur)
cur=cur*CA(i==7 and 20 or 30,0,0)*CF(0,0.25,-0.02)
end
---------------------------------------------
----left half
local blade1=CF(0,pol/2+1.4,0.05)*CA(0,180,0)
--
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,"Wedge",0.1,2,0.2)
partw=newWeld(part,Handle,part,blade1*CF(0,1,-0.1))
part=newPart(0,0,0)
partm=newMesh(part,"Wedge",0.06,2,0.2)
partw=newWeld(part,Handle,part,blade1*CF(0,1,-0.11))
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,"Wedge",0.1,0.4,0.37)
partw=newWeld(part,Handle,part,blade1*CF(0,-0.06,-0.23)*CA(-10,0,0))
part=newPart(0,0,0,nil,nil,'')
partm=newMesh(part,"Wedge",0.06,0.4,0.37)
partw=newWeld(part,Handle,part,blade1*CF(0,-0.06,-0.24)*CA(-10,0,0))
part=newPart(0,0,0,nil,nil,Color1)
partm=newMesh(part,"Wedge",0.06,0.2,0.425)
partw=newWeld(part,Handle,part,blade1*CF(0,-0.7,-0.16)*CA(-90-35,0,0))
-----------------------------------------------------------WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW--stufs
--Basic poses:
Pose={"None","Walking","Running","Jumping","Jumping2","Sitting"}
    for i,v in pairs(Pose) do 
    Pose[v]={ --1=Adj Speed   0=C0xyz    1=C1xyz    2=C0abc    3=C1abc
        ["Handle"]={[0]=v3(0,-1.1,0),[1]=v3(0,0,0),[2]=v3(-90,0,0),[3]=v3(-20,20,0)},
        ["HRP"]={[-1]=0,[0]=v30,[1]=v30,[2]=v3(0,0,0),[3]=v3(0,0,0)},
        ["Neck"]={[0]=v3(0,1,0),[1]=v3(0,-0.5,0),[2]=v3(0,0,0),[3]=v3(0,0,0)},
        ["LA"]={[-1]=1,[0]=cLA0,[1]=cLA1,[2]=v3(-20,0,-10)},
        ["RA"]={[-1]=0.75,[0]=cRA0,[1]=cRA1,[2]=v3(20,20,15)},
        ["LH"]={[-1]=1,[0]=aLH0,[1]=aLH1,[2]=bLH0,[3]=bLH1},
        ["RH"]={[-1]=1,[0]=aRH0,[1]=aRH1,[2]=bRH0,[3]=bRH1}
    } 
    end
--Fixes
xHRP=v3(-90,0,-180)
xNeck=v3(-90,0,180)
local xHRP0,xHRP1=Pose.None.HRP[0],Pose.None.HRP[1]
HRP.C0=CF(xHRP0.x,xHRP0.y,xHRP0.z)*CA(xHRP.x,xHRP.y,xHRP.z) 
HRP.C1=CF(xHRP1.x,xHRP1.y,xHRP1.z)*CA(xHRP.x,xHRP.y,xHRP.z)
local xNeck0,xNeck1=Pose.None.Neck[0],Pose.None.Neck[1]
Neck.C0=CF(xNeck0.x,xNeck0.y,xNeck0.z)*CA(xNeck.x,xNeck.y,xNeck.z) 
Neck.C1=CF(xNeck1.x,xNeck1.y,xNeck1.z)*CA(xNeck.x,xNeck.y,xNeck.z) 
------Set pose:
RunLean=30
JumpLean=50
-----Walking
Pose.Walking.HRP[-1]=0.25
Pose.Walking.Handle[3]=v3(0,0,0)
Pose.Walking.RA[2]=v3(0,15,30)
Pose.Walking.LA[2]=v3(0,-15,-20)
Pose.Walking.LA[-1]=1
--Running
Pose.Running.HRP[-1]=1.4
Pose.Running.HRP[2]=v3(-RunLean,0,0)
Pose.Running.Neck[2]=v3(RunLean,0,0)
Pose.Running.Handle[1]=v3(0,1.2,0)
Pose.Running.Handle[3]=v3(-30,0,0)
Pose.Running.RA[2]=v3(-30,-35,15)
Pose.Running.LA[0]=v3(-1.35,0.5,-0.6)
Pose.Running.LA[2]=v3(100,0,30)
Pose.Running.LA[-1]=1
--Jumping
Pose.Jumping.Handle[1]=v3(0,-1.5,0)
Pose.Jumping.Handle[3]=v3(-45,0,0)
Pose.Jumping.RA[2]=v3(200,20,0)
Pose.Jumping.LA[2]=v3(-45,0,-20)
Pose.Jumping.LH[0]=Pose.Jumping.LH[0]+v3(-0.03,0.3,-1)
Pose.Jumping.LH[2]=Pose.Jumping.LH[2]+v3(-45,0,18)
Pose.Jumping.RH[0]=Pose.Jumping.RH[0]+v3(0.03,0.25,-0.3)
Pose.Jumping.RH[2]=Pose.Jumping.RH[2]+v3(-15,0,-18)
--Jumping2
Pose.Jumping2.HRP[2]=v3(-JumpLean,0,0)
Pose.Jumping2.Neck[2]=v3(JumpLean,0,0)
Pose.Jumping2.Handle[1]=v3(0,-1.5,0)
Pose.Jumping2.Handle[3]=v3(-45,0,0)
Pose.Jumping2.RA[2]=v3(200,20,0)
Pose.Jumping2.LA[0]=v3(-1.4,0.6,-0.1)
Pose.Jumping2.LA[2]=v3(180-JumpLean,0,10)
Pose.Jumping2.LH[0]=Pose.Jumping2.LH[0]+v3(-0.03,0.3,-1)
Pose.Jumping2.LH[2]=Pose.Jumping2.LH[2]+v3(-45,0,18)
Pose.Jumping2.RH[0]=Pose.Jumping2.RH[0]+v3(0.03,0.25,-0.3)
Pose.Jumping2.RH[2]=Pose.Jumping2.RH[2]+v3(-15,0,-18)
---Sitting
Pose.Sitting.Handle[1]=v3(0,1,0)
Pose.Sitting.Handle[3]=v3(-10,0,0)
Pose.Sitting.RA[2]=v3(-50,0,150)
Pose.Sitting.RA[-1]=0
Pose.Sitting.HRP[0]=v3(0,-1.75,0)
Pose.Sitting.HRP[2]=v3(20,0,0)
Pose.Sitting.LH[0]=Pose.Sitting.LH[0]+v3(0,0.1,-0.1)
Pose.Sitting.LH[2]=Ca(70,-90,0,-10,-5,0) 
Pose.Sitting.RH[0]=Pose.Sitting.RH[0]+v3(0,0.1,-0.1)
Pose.Sitting.RH[2]=Ca(70,90,0,-10,5,0) 
----------------
Anim="Deselected"
LegAnim="None"
ArmAnim="None"
WalkSpeed=18
WalkM={1,1,1,1,1,1,1,1,1,1} -- multiplier
aSpd=8
BladeTrail=false
JumpDebounce=time()
Key={}
----------
GetFrontRay = function(cff,Dist,X,Y,Z,Exclude)
  local cff = cff or oHRP.CFrame
  local Hit,Pos,Hum,Torso
  local Hits={}
  for i,v in pairs(workspace:children()) do 
  if v~=Exclude and v~=Character and v:findFirstChild'Humanoid' and v.Humanoid.Health>0 and v:findFirstChild'Torso' then
  local cor=cff:toObjectSpace(v.Torso.CFrame)
  if cor.x<X[2] and cor.x>X[1] and cor.y<Y[2] and cor.y>Y[1] and -cor.z<Z[2] and -cor.z>Z[1] and -cor.z<Dist then 
  if Dist>800 then 
  local i=#Hits+1
  Hits[i]={}
  Hits[i][1]=v.Torso
  Hits[i][2]=v.Humanoid
  Hits[i][3]=CF(v3(v.Torso.Position.x,cff.y,v.Torso.Position.z),cff.p)*CF(0,0,-(v.Torso.Size.x+v.Torso.Size.z)/2).p
  else
  Hit,Pos=v.Torso,CF(v3(v.Torso.Position.x,cff.y,v.Torso.Position.z),cff.p)*CF(0,0,-(v.Torso.Size.x+v.Torso.Size.z)/2).p
  Dist,Hum,Torso=-cor.z,v.Humanoid,v.Torso
  end
  end
  end 
  end
  if Dist>800 then return Hits end
  return Hit,(Pos or cff*CF(0,0,-Dist-1).p),Dist,Hum,Torso
end
---------------------------------------------------
onKeyDown = function(k)
  local FrontHit,FrontHitPos,FrontHitDist,FrontHitHum,FrontHitTorso=GetFrontRay(nil,200,{-3,3},{-3,3},{5,300})
-------------------------
  local MouseHit,MouseHitPos=Mouse.Target,Mouse.Hit.p
  local MouseHitDist=(oHRP.Position-MouseHitPos).magnitude
  MouseHit=(MouseHit and MouseHit.Parent:IsA'Hat') and MouseHit.Parent.Parent:findFirstChild'Torso' or MouseHit
  local MouseHitHum=MouseHit and MouseHit.Parent:findFirstChild'Humanoid'
  local MouseHitTorso=MouseHit and MouseHit.Parent:findFirstChild'Torso'
--------------------------------
if k=="0" and Anim=="Walking" then 
    Anim="Running"
--Pierce Burst
elseif k=="0" and Anim=="Stance1" then 
    Anim="Stance1P"
    local bSpd=aSpd-2
    GetRecent()
    for i=1,bSpd do 
    SetWeld(wHandle,1,i,bSpd,phandle1,phandle3,Pose.None.Handle[1]+v3(0,-1.5,0),v3(90,-15,0))
    SetWeld(wRA,0,i,bSpd,pra0,pra2,v3(1.1,0.5,-0.7),Ca(90,0,-60,3,0,0)) 
    SetWeld(wLA,0,i,bSpd,pla0,pla2,v3(-1.2,0.5,-0.5),Ca(90,0,-45,3,0,0)) 
    MeshEffect(0.1,oHRP.CFrame*CF(0,-GroundRange+0.5,0),0.5,as.blast,CA(0,10,0),GroundColor,v3(0.5,0.1,0.5)*5,v3(0.5,0,0.5)*5) 
    wait()
    end
    repeat ------ repeatative
    if FrontHitDist>12 and FrontHitHum then --hax
    so.Slash:Play()
    MeshEffect(0.1,CF(oHRP.Position,FrontHitPos)*CF(0,0,2),0.5,as.ring,nil,EffectColor,v3(1.5,1.5,0)*5,v3(1,1,0)*5) 
    DoBP(FrontHitPos,5)
    DoBG(FrontHitPos)
    local timee=time()
    repeat 
    BladeTrail=true
    MeshEffect(0.1,oHRP.CFrame*CF(0,-GroundRange+0.5,0),0.5,as.blast,CA(0,10,0),GroundColor,v3(0.5,0.1,0.5)*5,v3(0.5,0,0.5)*5) 
    wait() until timee+2.5<time() or HRPDist(FrontHitPos,5)<2
    DoBP()
    DoBG()
    Torso.Velocity=v30
    oHRP.Velocity=v30
    BladeTrail=false
    if HRPDist(FrontHitPos,5)<2 then
    AOEDmg(HitBox.CFrame*CF(0,HitBox.Size.y,0).p,8,Damage/2,function() so.Hit:Play() end)
    so.Abscond:Play()
    local BoomCF=CF(v3(FrontHitPos.x,oHRP.Position.y-3,FrontHitPos.z),oHRP.Position-v3(0,3,0))*CA(0,180,0)
    MeshEffect(0.07,BoomCF,0.05,'Sphere',CA(0,0,0),GroundColor,v3(5,5,5),v3(5,10,5))
    MeshEffect(0.07,BoomCF*CF(0,0.5,0),0.05,as.blast,CA(0,15,0),GroundColor,v3(5,0.75,5),1.1)
    for i=30,360,30 do 
    MeshEffect(0.08,HitBox.CFrame*CF(0,HitBox.Size.y/2,0)*CA(0,i,165)*CF(0,i%60==0 and 1 or 0,0),0.2,as.diamond,CF(0,0.5,0),EffectColor,v3(0.6,2.4,0.6),v3(0,2,0))
    end --mesh360
    else
    DoBP()
    DoBG()
    end --dist
    end --hax
    wait()
    FrontHit,FrontHitPos,FrontHitDist,FrontHitHum,FrontHitTorso=GetFrontRay(nil,200,{-3,3},{-3,3},{12,300},FrontHit and FrontHit.Parent)
    until not Key[k]
    Anim="Stance1P2"
    local xhrp0,xhrp1=GetWeld(HRP)
    local xa,xb=GetWeld(Neck)
    local xr1,xr2=GetWeld(wRA)
    local xl1,xl2=GetWeld(wLA)
    local xhh1,xhh2=GetWeld(wHandle,1)
    for i=1,aSpd do 
    if Anim~="Stance1P2" then break end
    SetWeld(HRP,0,i,aSpd,xhrp0,xhrp1,phrp0,phrp2)
    SetWeld(wHandle,1,i,aSpd,xhh1,xhh2,phandle1,phandle3) 
    SetWeld(wRA,0,i,aSpd,xr1,xr2,pra0,pra2) 
    SetWeld(wLA,0,i,aSpd,xl1,xl2,pla0,pla2) 
    wait()
    end
    if Anim~="Stance1P2" then return end
    Anim="Stance1"
--Spinning Slash
elseif k=="q" and Anim=="Stance1" then
    Anim="Stance1Spin"
    BladeTrail=true
    local bSpd=aSpd+5
    GetRecent()
    so.Slash:Play()
    for i=1,bSpd do 
    SetWeld(HRP,0,i,bSpd,phrp0,phrp2,Pose.None.HRP[0],Pose.None.HRP[2]+v3(-3,-360-70,0))
    SetWeld(wHandle,1,i,bSpd,phandle1,phandle3,Pose.None.Handle[1]+v3(0,-1.5,0),v3(111,0,-105))
    SetWeld(wRA,0,i,bSpd,pra0,pra2,v3(1.1,0.5,-0.7),Ca(90,0,-45,0,0,0)) 
    SetWeld(wLA,0,i,bSpd,pla0,pla2,v3(-1.2,0.5,-0.5),Ca(90,0,30,0,0,0)) 
    SetWeld(LH,0,i,bSpd,plh0,plh2,Pose.None.LH[0],Ca(0,-90,0,-10,0,0)) 
    SetWeld(RH,0,i,bSpd,prh0,prh2,Pose.None.RH[0],Ca(0,90,0,-20,0,0)) 
    wait()
    end
    ClearWeld(HRP)
    BladeTrail=false
    local xhrp0,xhrp1=GetWeld(HRP)
    local xa,xb=GetWeld(Neck)
    local xr1,xr2=GetWeld(wRA)
    local xl1,xl2=GetWeld(wLA)
    local xlh1,xlh2=GetWeld(LH)
    local xrh1,xrh2=GetWeld(RH)
    local xhh1,xhh2=GetWeld(wHandle,1)
    for i=1,aSpd do 
    SetWeld(HRP,0,i,aSpd,xhrp0,xhrp1,phrp0,phrp2)
    SetWeld(wHandle,1,i,aSpd,xhh1,xhh2,phandle1,phandle3) 
    SetWeld(wRA,0,i,aSpd,xr1,xr2,pra0,pra2) 
    SetWeld(wLA,0,i,aSpd,xl1,xl2,pla0,pla2) 
    SetWeld(LH,0,i,aSpd,xlh1,xlh2,plh0,plh2)
    SetWeld(RH,0,i,aSpd,xrh1,xrh2,prh0,prh2) 
    wait()
    end
    Anim="Stance1"
--Jump Slash
elseif k==" " and Anim=="Jumping" and JumpDebounce<time() then
    JumpDebounce=time()+1
    MeshEffect(0.1,Torso.CFrame*CF(0,-1,0)*CA(180,0,0),0.5,as.blast,CF(0,0.6,0)*CA(0,10,0),EffectColor,v3(0.75,0.2,0.75)*5,v3(0,0.8,0)*5) 
    Torso.Velocity=v3(Torso.Velocity.x,100,Torso.Velocity.z)
    so.Abscond.Pitch=1.3
    so.Abscond:Play()
    elseif k==" " and Anim=="Jumping2"  and GroundRange>6 and JumpDebounce<time() then
    JumpDebounce=time()+1
    MeshEffect(0.1,Torso.CFrame*CF(0,-1,0)*CA(180,0,0),0.5,as.blast,CF(0,0.6,0)*CA(0,10,0),EffectColor,v3(2,0.5,2),0.3) 
    Torso.Velocity=v3(Torso.Velocity.x,95,Torso.Velocity.z)
    so.Abscond.Pitch=1.3
    so.Abscond:Play()
    WalkM[3]=1.4
    repeat wait() until not Falling
    WalkM[3]=1
--Stance two
elseif k=="q" and (Anim=="None" or Anim=="Walking") then
    Anim="Stance2Ready"
    WalkM[2]=0.25
    local hrp0,hrp1=GetWeld(HRP)
    local a,b=GetWeld(Neck)
    local r1,r2=GetWeld(wRA)
    local l1,l2=GetWeld(wLA)
    local lh1,lh2=GetWeld(LH)
    local rh1,rh2=GetWeld(RH)
    local hh1,hh2=GetWeld(wHandle,1)
    for i=1,aSpd do 
    SetWeld(HRP,0,i,aSpd,hrp0,hrp1,Pose.None.HRP[0]+v3(0,-0.7-0.3,0),Pose.None.HRP[2]+v3(-20,70,0))
    SetWeld(Neck,0,i,aSpd,a,b,Pose.None.Neck[0],Pose.None.Neck[2]+v3(0,-70,0))
    SetWeld(wHandle,1,i,aSpd,hh1,hh2,Pose.None.Handle[1]+v3(0,-1.5,0.2),v3(40-110+35,0,-90+30))
    SetWeld(wRA,0,i,aSpd,r1,r2,v3(1.2,0.55,-0.5),Ca(90,30,60-20,0,0,0)) 
    SetWeld(wLA,0,i,aSpd,l1,l2,v3(-1,0.5,-0.55),Ca(100-20,30-0,75-30,0,0,0)) 
    SetWeld(LH,0,i,aSpd,lh1,lh2,Pose.None.LH[0]+v3(0,0.45+0.3,-0.95),Ca(-22,-90,0, 15,0,0)) 
    SetWeld(RH,0,i,aSpd,rh1,rh2,Pose.None.RH[0]+v3(-0.1,0.4+0.3,0.05),Ca(0,90,0,-85,0,0)) 
    wait()
    end
    Anim="Stance2"
    repeat wait() until not Key[k] and Anim=="Stance2"
    WalkM[2]=1
    Anim="None"
--Stance one
elseif k=="e" and (Anim=="None" or Anim=="Walking") then
    Anim="Stance1Ready"
    WalkM[2]=0.25
    local hrp0,hrp1=GetWeld(HRP)
    local a,b=GetWeld(Neck)
    local r1,r2=GetWeld(wRA)
    local l1,l2=GetWeld(wLA)
    local lh1,lh2=GetWeld(LH)
    local rh1,rh2=GetWeld(RH)
    local hh1,hh2=GetWeld(wHandle,1)
    for i=1,aSpd do 
    SetWeld(HRP,0,i,aSpd,hrp0,hrp1,Pose.None.HRP[0]+v3(0,-0.7,0),Pose.None.HRP[2]+v3(-20,-70,0))
    SetWeld(Neck,0,i,aSpd,a,b,Pose.None.Neck[0],Pose.None.Neck[2]+v3(0,70,0))
    SetWeld(wHandle,1,i,aSpd,hh1,hh2,Pose.None.Handle[1]+v3(0,-1.5,0.15),v3(40-110,0,-90))
    SetWeld(wRA,0,i,aSpd,r1,r2,v3(1.1,0.5,-0.7),Ca(90,-20,60,0,0,0)) 
    SetWeld(wLA,0,i,aSpd,l1,l2,v3(-1,0.75,-0.45),Ca(100,-20,75,0,0,0)) 
    SetWeld(LH,0,i,aSpd,lh1,lh2,Pose.None.LH[0]+v3(0.6,0.4,-0.05),Ca(0,-90,0,-85,0,0)) 
    SetWeld(RH,0,i,aSpd,rh1,rh2,Pose.None.RH[0]+v3(-0.3,0.45,-0.93),Ca(-22,90,0,-15,0,0)) 
    wait()
    end
    Anim="Stance1"
    repeat wait() until not Key[k] and Anim=="Stance1"
    WalkM[2]=1
    Anim="None"
elseif k=="x" and (Anim=="None" or Anim=="Walking") then
    WalkM[2]=0
    Anim="Sitting"
elseif (k=="x" or k==" ") and Anim=="Sitting" then 
    WalkM[2]=1
    Anim="None"
elseif k =="p" then 
  repeat
  Effect1(Torso.CFrame*CF(0,4,0)*CA(mrnd(-30,30),mrnd(-200,200),mrnd(-200,200)),CF(0,0,1.5),8,mrnd(45,150),10,1,0.85,0.1)--cf,Radius,Deg,Parts,Fade,Wide
  wait(0.3)
  until not Key[k]
elseif k=="[" then 
if #Ghost==0 then

NewGhost(CF(0,8,0))
NewGhost(CF(0,16,0))
NewGhost(CF(0,24,0))


else
for i=1,1 do Ghost[i][1]=nil end  end
end
end
--
---------------------------------------------------
onKeyUp = function(k)
if k=="0" and Anim=="Running" then 
    Anim="Walking"
end
end
---------------------------------------------------------------------------------------------BUTTON -WWWWBUTTON
onButton1Down= function()
--Jump Slash
if Anim=="Jumping" and GroundRange>5 and JumpDebounce<time() then 
    Anim=" JumpSlash"
    BladeTrail=true
    local a,b=GetWeld(wRA)
    local c,d=GetWeld(wHandle,1)
    so.Slash:Play()
    for i=1,aSpd do
    SetWeld(wRA,0,i,aSpd,a,b,v3(1.5,0.5,0),v3(-20,0,0)) 
    SetWeld(wHandle,1,i,aSpd,c,d,v3(0,-1.5,0),v3(20,0,-20)) 
    wait()
    end
    local timee=time()
    repeat wait() until not Falling or timee+2<time() --if DoubleJump then wait(0.5) end  -l---
    BladeTrail=false
    Anim="None"
--DoubleJump Slash
elseif Anim=="Jumping" and GroundRange>12 and JumpDebounce>time() then 
     Anim=" JumpSlash2"
    BladeTrail=1
    GetRecent()
    local timee=time()
    so.Slash.Pitch=2
    local flipdmg=function() 
    local Hits=GetFrontRay(Torso.CFrame,999,{-3,3},{-8,8},{-8,8}) for i,v in pairs(Hits) do local Huma=v[2]
    if HitDB[Huma] and HitDB[Huma]>time() then else
    HitDB[Huma]=time()+0.2 fDamage(mrnd(Damage*70,Damage*130)/100,v[1],Huma) so.Hit:Play() end end end
    local steer=oHRP.CFrame:toObjectSpace(CF(oHRP.Position,Mouse.Hit.p)) 
    local x,y,z = steer:toEulerAnglesXYZ()
    steer=math.deg(-y)
    steer = steer>90 and 90 or steer
    steer = steer<-90 and -90 or steer
    for i=1,aSpd*30 do
    if i%4==0 then     so.Slash:Play() end
    local i2=i>aSpd and aSpd or i
    --steer=steer +(Key['q'] and 6 or (Key['e'] and -6 or 0))
    SetWeld(wLA,0,i2,aSpd,pla0,pla2,v3(-1,0.9,0),v3(180,0,30)) 
    SetWeld(wRA,0,i2,aSpd,pra0,pra2,v3(1,0.9,0),v3(180,0,-30)) 
    SetWeld(wHandle,1,i2,aSpd,phandle1,phandle3,v3(0.2,-1.5,0),v3(45,30,0)) 
    SetWeld(HRP,1,i,aSpd*30,phrp0,phrp1,phrp0,v3(360*2*10,0,0))
    SetWeld(HRP,0,1,1,phrp0,phrp2,phrp0+v3(0,-mabs(steer/45),0),v3(0,0,steer))
    flipdmg()
    if (not Falling and timee+(mabs(steer)>30 and 1 or 0.6)<time()) or timee+4<time() then break end 
    wait()
    end
    flipdmg()
    so.Slash.Pitch=SlashPitch
    ClearWeld(HRP)
    BladeTrail=false
    Anim="None"
--RunningJump Slash
elseif Anim=="Jumping2" and GroundRange>6  and JumpDebounce<time() then 
     Anim=" JumpSlash2"
     WalkM[2]=2.5
    BladeTrail=true
    GetRecent()
    local timee=time()
    so.Slash.Pitch=2
    for i=1,aSpd*30 do
    if i%4==0 then     so.Slash:Play() end
    local i2=i>aSpd and aSpd or i
    SetWeld(wLA,0,i2,aSpd,pla0,pla2,v3(-1.5,0.5,0),v3(180,0,0)) 
    SetWeld(wRA,0,i2,aSpd,pra0,pra2,v3(1.5,0.5,0),v3(0,0,90)) 
    SetWeld(wHandle,1,i2,aSpd,phandle1,phandle3,v3(0.2,-1.5,0),v3(90,110,0)) 
    SetWeld(HRP,0,i2,aSpd,phrp0,phrp2,phrp0+v3(0,1,0),v3(-110,0,0))
    SetWeld(HRP,1,i,aSpd*30,phrp1,phrp3,phrp1,v3(0,360*2*15,0))
    if (not Falling and timee+0.5<time()) or timee+4<time() then break end 
    wait()
    end
    AOEDmg(HitBox.Position,6.5,Damage,function() so.Hit:Play() end)
    WalkM[2]=1
    so.Slash.Pitch=SlashPitch
    ClearWeld(HRP)
    BladeTrail=false
    Anim="None"
elseif Anim=="Stance1" then
    Anim="Stance1Stab"
    local r1,r2=GetWeld(wRA)
    local l1,l2=GetWeld(wLA)
    local hh1,hh2=GetWeld(wHandle,1)
    so.Slash.Pitch=2
    repeat 
    local raise=mrnd(-4,4)*80/4
    local div=2
    for i=1,div do 
    SetWeld(wHandle,1,i,div,hh1,hh2,Pose.None.Handle[1]+v3(0,-1.5,0.1),v3(40,0,-90))
    SetWeld(wRA,0,i,div,r1,r2,v3(0.5,0.5,-0.5),Ca(90+raise,-20,-50,0,0,0)) 
    SetWeld(wLA,0,i,div,l1,l2,v3(-1.6,0.75,0),Ca(100+raise,-20,-15,0,0,0)) 
    wait()
    end
    AOEDmg(HitBox.Position,4,Damage/3,function() so.Hit:Play() end)
    so.Slash:Play()
    MeshEffect(0.15,Handle.CFrame*CF(0,tpol.y/4,0),0.5,as.cone,CF(0,0.5,0),EffectColor,v3(0.01,4,0.3),v3(0.1,3,0.1)) 
    local R1,R2=GetWeld(wRA)
    local L1,L2=GetWeld(wLA)
    local HH1,HH2=GetWeld(wHandle,1)
    for i=1,div  do 
    SetWeld(wHandle,1,i,div,HH1,HH2,hh1,hh2)
    SetWeld(wRA,0,i,div,R1,R2,r1,r2) 
    SetWeld(wLA,0,i,div,L1,L2,l1,l2) 
    wait()
    end
    wait() until not Button1 or Anim~="Stance1Stab"
    so.Slash.Pitch=SlashPitch
    Anim="Stance1"
end
end
---------------------------------------------------
onButton1Up= function()
end
---------------------------------------------------
Tool.Selected:connect(function(mouse)
Mouse=mouse
if Anim=="Deselected" then 
Anim="Selecting"
Arms(1)
    for x=1,aSpd do
    SetWeld(wRA,0,x,aSpd,cRA0,v30,cRA0+v3(0,0,-0.2),v3(135,0,15)) 
    wait()
    end
local w0,w1=GetWeld(wRA)
    for x=1,aSpd do
    SetWeld(wRA,0,x,aSpd,w0,w1,cRA0,v3(200,0,-15)) 
    wait()
    end
local a,b=GetWeld(wRA)
wHandle.C0=RA.CFrame:toObjectSpace(Handle.CFrame)
wHandle.Part0=RA 
ClearWeld(wHandle)
local w0,w1=GetWeld(wHandle)
w1=v3(-360+w1.x,w1.y,w1.z)
    for x=1,aSpd do 
    SetWeld(wHandle,0,x,aSpd,w0,w1,Pose.None.Handle[0],Pose.None.Handle[2]) 
    SetWeld(wHandle,1,x,aSpd,v30,v30,Pose.None.Handle[1],Pose.None.Handle[3]) 
    SetWeld(wRA,0,x,aSpd,a,b,cRA0,v3(200,0,20)) 
    wait()
    end
local a,b=GetWeld(wRA)
    for x=1,aSpd do 
    SetWeld(wRA,0,x,aSpd,a,b,Pose.None.RA[0],Pose.None.RA[2]) 
    wait()
    end
    SetWeld(Neck,0,1,1,nil,nil,Pose.None.Neck[0],Pose.None.Neck[2]) 
    SetWeld(Neck,1,1,1,nil,nil,Pose.None.Neck[1],Pose.None.Neck[3]) 
    SetWeld(HRP,0,1,1,nil,nil,Pose.None.HRP[0],Pose.None.HRP[2]) 
    SetWeld(HRP,1,1,1,nil,nil,Pose.None.HRP[1],Pose.None.HRP[3]) 
    pcall(function() Character.Animate.Disabled=true end)
Anim="None"
end -- anim
-------------------
mouse.KeyDown:connect(function(k)
Key[k]=true
onKeyDown(k)
end)
-------------------------
mouse.KeyUp:connect(function(k)
Key[k]=false
onKeyUp(k)
end)
mouse.Button1Down:connect(function()
Button1=true
onButton1Down()
end)
mouse.Button1Up:connect(function()
Button1=false
onButton1Up()
end)
end)
-------------------------------------------------------
Tool.Deselected:connect(function()
Mouse=nil
if Anim=="None" or Anim=="Walking" then 
Anim="Deselecting"
local a,b=GetWeld(wRA)
    for x=1,aSpd do
    SetWeld(wRA,0,x,aSpd,a,b,cRA0+v3(0,0,-0.2),v3(135,0,15)) 
    wait()
    end
local w0,w1=GetWeld(wRA)
    for x=1,aSpd do
    SetWeld(wRA,0,x,aSpd,w0,w1,cRA0,v3(200,0,-15)) 
    SetWeld(wHandle,0,x,aSpd,Pose.None.Handle[0],Pose.None.Handle[2],Pose.None.Handle[0],Pose.None.Handle[2]+v3(0,45,45)) 
    wait()
    end
wHandle.C0=Torso.CFrame:toObjectSpace(Handle.CFrame)
wHandle.C1=CF(0,0,0)
wHandle.Part0=Torso 
ClearWeld(wHandle)
local w0,w1=GetWeld(wHandle)
    for x=1,aSpd do 
    SetWeld(wHandle,0,x,aSpd,w0,w1,oHandle0,oHandle1) 
    wait()
    end
local a,b=GetWeld(wRA)
    for x=1,aSpd do 
    SetWeld(wRA,0,x,aSpd,a,b,cRA0,cRA1) 
    wait()
    end
Arms()
    SetWeld(Neck,0,1,1,nil,nil,v3(xNeck0.x,xNeck0.y,xNeck0.z),xNeck) 
    SetWeld(Neck,1,1,1,nil,nil,v3(xNeck1.x,xNeck1.y,xNeck1.z),xNeck) 
    SetWeld(HRP,0,1,1,nil,nil,v3(xHRP0.x,xHRP0.y,xHRP0.z),xHRP) 
    SetWeld(HRP,1,1,1,nil,nil,v3(xHRP1.x,xHRP1.y,xHRP1.z),xHRP) 
    pcall(function() Character.Animate.Disabled=false end)
Anim="Deselected"
end
end)
 
KillEvade=time()
Damage=18
HitDB={}
BladeFunc=function(Hit)
if Hit.Parent==Model or Hit.Parent==Character or not BladeTrail then return end 
if BladeTrail==1 then return end
local Huma=Hit.Parent:findFirstChild'Humanoid'
if not Huma then return end
if HitDB[Huma] and HitDB[Huma]>time() then return end
HitDB[Huma]=time()+0.5
local Dmg=mrnd(Damage*70,Damage*130)/100
fDamage(Dmg,Hit,Huma)
so.Hit.Pitch=mrnd(90,115)/100
so.Hit:Play()
end
fDamage=function(Dmg,Hit,Huma)
if Huma.Health<=0 then return end
----------Damage Bar
Huma:TakeDamage(Dmg)
local bdmg=INEW("Model",workspace)
bdmg.Name=math.floor(Dmg)
Debris:AddItem(bdmg,1.5)
local bhead=partx:Clone() --taken from weapon part
bhead.CanCollide=false
bhead.Parent=bdmg
bhead.BrickColor=BrickColor.new'Bright red'
bhead.Mesh.Scale=v3(0.6,0.2,0.6)*5
bhead.Name="Head"
bhead.Anchored=true
bhead.CFrame=CF(Hit.Position)*CF(mrnd(-100,100)/100*1.5,4.25,mrnd(-100,100)/100*1.5)
local bhuma=INEW("Humanoid",bdmg)
bhuma.Name="keks"
bhuma.MaxHealth=0
------------------------Effects
    if Hit then 
    local blod
    for i=1,3 do 
    local y1=mrnd(300,450)/100
    local z1=mrnd(300,450)/100
    local z2=mrnd(400,600)/100
    local blood=INEW("Part",workspace) 
    blood.Transparency=1
    blood.formFactor='Custom'
    blood.Anchored=true
    blood.CanCollide=false
    blood.Size=v3(0.2,0.2,0.2)
    blood.CFrame=CF(Hit.Position,HitBox.Position)*CA(mrnd(-15,15),mrnd(-15,15),mrnd(-180,180))*CF(0,0,-z1/2)*CA(-90,0,0)
    if i==1 then blod=blood:Clone() end
    local bloodm=INEW("BlockMesh",blood)
    Debris:AddItem(blood,1.5)
    bloodm.Scale=v3(0,y1,z1)*5
    for i,v in pairs{'Left','Right'} do local dec=INEW('Decal',blood) dec.Name=v dec.Face=v dec.Texture=as.Blood dec.Transparency=0.1
    DoLoop(10,function(i) blood.CFrame=blood.CFrame*CF(0,z2/2/10,0) bloodm.Scale=v3(0,y1+z2*i,z1-z1/2.1*i)*5 dec.Transparency=0.1+0.9*i if i==1 then blood:Remove() end end) end
    end
    local hit2,pos2=ray(Hit.Position,Hit.Position-Hit.CFrame*CF(0,1,0).p,Hit.Parent,10)
    if hit2 then 
    local blad=blod:Clone()  
    local bloodmm=INEW("BlockMesh",blad)
    blad.Parent=workspace Debris:AddItem(blad,1.5)
    blad.CFrame=CF(pos2)*CF(mrnd(-250,250)/100,0.08,mrnd(-250,250)/100)*CA(0,mrnd(-180,180),0)
    local decx=INEW('Decal',blad) decx.Face='Top' decx.Texture=as.Blood decx.Transparency=0
    bloodmm.Scale=v3(mrnd(200,400)/100,0,mrnd(300,500)/100)*13
    DoLoop(30,function(i) decx.Transparency=1*i bloodmm.Scale=bloodmm.Scale+v3(1,0,1)*5/30/2 if i==1 then blad:Remove() end end)
    end
    end  
-------Special Evade Move
if Huma.Health-Dmg<=0 and KillEvade<time() and Key['2'] then 
KillEvade=time()+1
so.Abscond:Play()
oHRP.CFrame=oHRP.CFrame*CF(0,0,35)
for i=1,6 do 
MeshEffect(0.04,oHRP.CFrame*CF(0,0,-i*5+2.5)*CA(90,0,0),0.2,'Cylinder',nil,'',v3(4,6,4)*(i-1)/3,-v3(4,0,4)*(i-1)/3)
end
end
end
HitBox.Touched:connect(BladeFunc)
 
poll=1
 
 
Humanoid.FreeFalling:connect(function(v)
Falling=v
end)
Humanoid.Running:connect(function(v)
Moving=v>3 and true or false
end)
Humanoid.Jumping:connect(function(v)
--print(v)
end)
 
GetRecent=function()
pneck0,pneck2=GetWeld(Neck)
pneck1,pneck3=GetWeld(Neck,1)
phrp0,phrp2=GetWeld(HRP)
phrp1,phrp3=GetWeld(HRP,1)
phandle0,phandle2=GetWeld(wHandle)
phandle1,phandle3=GetWeld(wHandle,1)
pla0,pla2=GetWeld(wLA)
pra0,pra2=GetWeld(wRA)
plh0,plh2=GetWeld(LH)
plh1,plh3=GetWeld(LH,1)
prh0,prh2=GetWeld(RH)
prh1,prh3=GetWeld(RH,1)
end
 
LastPoints={}
 
 
LS:SetDesiredAngle(0)
RS:SetDesiredAngle(0)
LS.CurrentAngle=0
RS.CurrentAngle=0
WedgeTrail={}
-----------------WWWWWWWWWWWW wWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
game:GetService'RunService'.RenderStepped:connect(function()
            --------ghost sytem
        for x,v in pairs(Ghost) do 
        if v[1] then
        v.Torso.CFrame=oHRP.CFrame*v[1]*(oHRP.CFrame:toObjectSpace(Torso.CFrame))
        v.Handle.CFrame=v.Torso.CFrame*(Torso.CFrame:toObjectSpace(wHandle.Part1.CFrame))*v[3]
        v.Handle.bp.position=v.Handle.Position
        v.Handle.Velocity=v30 v.Handle.RotVelocity=v30
        for ii,vv in pairs(v[2]:children()) do if vv.Name~="Torso" and vv.Name~="Handle" then 
        local adh=Torso.CFrame:toObjectSpace(Character[vv.Name].CFrame) vv.CFrame=v.Torso.CFrame*adh end end
        else
        for ii,vv in pairs(v[2]:children()) do if v[1]==nil or (v[1] and vv.Name~='Handle') then vv.Transparency=vv.Transparency+0.1 
        if vv.Transparency>=1 then v[2]:Remove() Ghost[x]=nil end end end
        end
        end
end)
------------------------------------------------
local handles={Handle}
if Character:findFirstChild'Sound' then Character.Sound.Disabled=true end 
Falling=false
xAngle,yAngle,XAngle,YAngle=0,0,0,0
Adj=0
Adjx=1
GroundRange=0
Adjt={["None"]=0.3,["Walking"]=1.4,["Running"]=3,["Jumping"]=0,["Jumping2"]=0}
LegRaise={["None"]={5,0.003},["Walking"]={37,0.1},["Running"]={80,0.22}} LegNega=1
WSAnim={["Running"]=2,["Jumping2"]=3}
--sPose={["Jumping"]=1.5}
count=0
_G.hrp=wHRP
_G.rmail=_G.rmail and _G.rmail+1 or 0
local rmail=_G.rmail
while _G.rmail==rmail do 
      --[[ Anti Fall System
    local tx,ty,tz=oHRP.CFrame:toEulerAnglesXYZ() 
    tx,ty,tz=mdeg(tx)%180,mdeg(ty)%180,mdeg(tz)%180
    print(math.floor(tx))
    if v3(oHRP.Velocity.x,0,oHRP.Velocity.z).magnitude>5 and (mabs(tx)>45) then print'kek'
    oHRP.Velocity=v30 oHRP.RotVelocity=v30
    Torso.Velocity=v30 Torso.Velocity=v30
    oHRP.CFrame=CF(oHRP.Position.x+mrnd(-12,12),oHRP.Position.y+1,oHRP.Position.z+mrnd(-12,12))*CA(0,mrnd(-200,200),0)
    end]]
    DoubleJump=JumpDebounce>time() and true or false
    Adjx = mabs(Adj)>16 and -Adjx or Adjx
    local wss=WalkSpeed 
        for i,v in pairs(WalkM) do 
        wss=wss*v
        end
    WalkM[1]=WSAnim[Anim] or 1
    Humanoid.WalkSpeed=wss
    torvel=(Torso.Velocity*v3(1,0,1)).magnitude
    --Moving=torvel>2 and true or false
        if Anim=="None" and Moving then Anim="Walking" Adj=0 end
        if (Anim=="Walking" or Anim=="Running") and not Moving then Anim="None" Adj=0 end
        if Falling and (Anim=="None" or Anim=="Walking") then Torso.Velocity=Torso.Velocity+v3(0,16,0) Anim="Jumping" Adj=0 end
        if Falling and Anim=="Running" then Torso.Velocity=Torso.Velocity+v3(0,25,0) Anim="Jumping2"  so.Slash2:Play()
        MeshEffect(0.1,oHRP.CFrame*CF(0,-GroundRange+0.5,0),0.5,as.blast,CA(0,10,0),GroundColor,v3(0.5,0.1,0.5)*5,v3(0.5,0,0.5)*5)  Adj=0 end
        local hit,pos
        local gg=99999
        for i,x in pairs{0,-0.5,0.5,-1.05,1.05} do 
        local HCF=oHRP.CFrame*CF(x,0,0)
        hit2,pos2=ray(HCF.p,HCF.p-HCF*CF(0,1,0).p,Character,200)
        local current= (pos2-oHRP.Position).magnitude
        if current<gg then 
        gg=current
        GroundRange=current
        hit=hit2
        pos=pos2
        end
        end
        if not Falling and Anim:sub(1,4)=="Jump" then Anim="None" Adj=0 end
        if hit and GroundRange<40 then GroundColor=hit.BrickColor.Name end
    if Pose[Anim] then
    Adj=Adj+(Adjt[Anim] or 1)*Adjx
    local xx = 1 --PoseAnim
    local PoseSpd=10
    local xxAngle=xAngle<-10 and -10 or xAngle
    SetWeld(Neck,0,xx,PoseSpd,pneck10,pneck20,Pose[Anim].Neck[0],Pose[Anim].Neck[2]-v3(-xxAngle/1.5,Adj*Pose[Anim].HRP[-1]-yAngle,-Adj*Pose[Anim].HRP[-1])) 
    SetWeld(Neck,1,xx,PoseSpd,pneck30,pneck40,Pose[Anim].Neck[1],Pose[Anim].Neck[3]) 
    SetWeld(HRP,0,xx,PoseSpd,phrp10,phrp20,Pose[Anim].HRP[0],Pose[Anim].HRP[2]+v3(0,Adj*Pose[Anim].HRP[-1],0)) 
    SetWeld(HRP,1,xx,PoseSpd,phrp30,phrp40,Pose[Anim].HRP[1],Pose[Anim].HRP[3]) 
    SetWeld(wHandle,0,xx,PoseSpd,phandle10,phandle20,Pose[Anim].Handle[0],Pose[Anim].Handle[2]) 
    SetWeld(wHandle,1,xx,PoseSpd,phandle30,phandle40,Pose[Anim].Handle[1],Pose[Anim].Handle[3]) 
    SetWeld(wRA,0,xx,PoseSpd,pra10,pra20,Pose[Anim].RA[0],Pose[Anim].RA[2]+v3(Adj*Pose[Anim].RA[-1],yAngle,0)) 
    SetWeld(wLA,0,xx,PoseSpd,pla10,pla20,Pose[Anim].LA[0],Pose[Anim].LA[2]+v3(-Adj*Pose[Anim].LA[-1],yAngle,0)) 
    SetWeld(LH,0,xx,PoseSpd,plh10,plh20,Pose[Anim].LH[0],Pose[Anim].LH[2]) 
    SetWeld(LH,1,xx,PoseSpd,plh30,plh40,Pose[Anim].LH[1],Pose[Anim].LH[3]) 
    SetWeld(RH,0,xx,PoseSpd,prh10,prh20,Pose[Anim].RH[0],Pose[Anim].RH[2]) 
    SetWeld(RH,1,xx,PoseSpd,prh30,prh40,Pose[Anim].RH[1],Pose[Anim].RH[3]) 
    else
    end
    --Leg System
    LegNega=LegNega*(LH.DesiredAngle==LH.CurrentAngle and -1 or 1)
    local LegX=35/WalkSpeed*wss
    LegX=LegX>50 and 50 or LegX
    LegX2= 0.065/WalkSpeed*wss
    LegX2=LegX2>0.2 and 0.2 or LegX2
    LH:SetDesiredAngle(math.rad(LegRaise[Anim] and LegRaise[Anim][1] or ((Moving and not Humanoid.Jump) and LegX or 0))*LegNega)
    RH:SetDesiredAngle(LH.DesiredAngle)
    if math.abs(LH.DesiredAngle)>=math.abs(LH.CurrentAngle) then 
    LH.MaxVelocity=LegRaise[Anim] and LegRaise[Anim][2] or LegX2
    RH.MaxVelocity=LH.MaxVelocity
    end
    -----------------------
    if BladeTrail then 
    for i,handle in pairs(handles) do 
        local C1, C2, S1, S2 = GetTriangleValues({
        handle.CFrame*tpol.p,
        handle.Position,
        LastPoints[handle][1]
        })
    local Triangle1 = Instance.new("WedgePart", Model)
    for i,v in pairs{"Top","Bottom","Left","Right","Front","Back"} do Triangle1[v.."Surface"]=10 end 
    Triangle1.Anchored = true
    Triangle1.BrickColor = BrickColor.new(EffectColor)
    Triangle1.FormFactor = 3
    Triangle1.Transparency = 0.6
    Triangle1.Size = V3(1, 1, 1)
    Triangle1.CanCollide=false
    Triangle1.CFrame = C1
    local Triangle1Mesh = Instance.new("SpecialMesh", Triangle1)
    Triangle1Mesh.MeshType = "Wedge"
    Triangle1Mesh.Scale = S1
    Triangle1Mesh.Name="kek"
    local Triangle2 = Triangle1:Clone()
    Triangle2.Parent = Model
    Triangle2.CFrame = C2
    Triangle2.kek.Scale = S2
    local C1, C2, S1, S2 = GetTriangleValues({
        handle.Position,
        LastPoints[handle][1],
        LastPoints[handle][2]
        })
    local Triangle3 = Triangle1:Clone()
    Triangle3.Parent = Model
    Triangle3.CFrame = C1
    Triangle3.kek.Scale = S1
    local Triangle4 = Triangle1:Clone()
    Triangle4.Parent = Model
    Triangle4.CFrame = C2
    Triangle4.kek.Scale = S2
    WedgeTrail[#WedgeTrail+1]=Triangle1
    WedgeTrail[#WedgeTrail+1]=Triangle2
    WedgeTrail[#WedgeTrail+1]=Triangle3
    WedgeTrail[#WedgeTrail+1]=Triangle4
    end
    end
    LastPoints[Handle]={[1]=Handle.CFrame*tpol.p,[2]=Handle.Position}
    for i,v in pairs(Ghost) do handles[v.Handle]=v.Handle LastPoints[v.Handle]={[1]=v.Handle.CFrame*tpol.p,[2]=v.Handle.Position} end
    -----------------------
        for i,v in pairs(WedgeTrail) do 
        if v.Transparency>=1 then v:Remove() WedgeTrail[i]=nil 
        else
        v.Transparency=v.Transparency+0.1
        end
        end
        for i,v in pairs(MeshPack) do 
        v[2]=v[2]+v[3]
        if v[2]<=0 then 
        v[1]:Remove()
        MeshPack[i]=nil 
        else
        v[1].Transparency=v[7]+((1-v[7])-(1-v[7])*v[2])
        v[1].Mesh.Scale=v[5]+(v[6]*(1-v[2]))
        v[1].CFrame=v[1].CFrame*v[4]
        end
        end
    -------------
            --DoLoop Package
        for i,v in pairs(LoopFunctions) do 
        v[2]=v[2]+1
        v[3](v[2]/v[1])
        if v[1]<=v[2] then LoopFunctions[i]=nil end 
        end
        ----
        if Mouse then 
        XAngle = GetX(oHRP,Mouse.Hit.p)
        YAngle = GetY(oHRP,Mouse.Hit.p)
        else
        XAngle = 0
        YAngle = 0
        end
        xAngle=XAngle
        yAngle=YAngle
        xAngle=xAngle>45 and 45 or xAngle
        xAngle=xAngle<-45 and -45 or xAngle
        yAngle=yAngle>45 and 45 or yAngle
        yAngle=yAngle<-45 and -45 or yAngle
wait(0.0275)
count=count+1
end
 
 