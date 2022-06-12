--[[By tigerbloodd]]
cc=Instance.new("Message",game.Players.LocalPlayer.PlayerGui)
cc.Text="Library Ran"
wait(3)
cc:Remove()
script.Parent = nil
it = Instance.new
v3=Vector3.new
bc=BrickColor.new 
c3=Color3.new 
cn=CFrame.new 
ca=CFrame.Angles
ti=table.insert 
tr=table.remove 
rn=math.random 
rd=math.rad 
mf=math.floor
ud = UDim2.new
inf=math.huge
dg=math.deg
mdeg=math.deg
v310=v3(1/0,1/0,1/0)
pi=math.pi
w=wait
cf=cn
bn=bc
ts=tostring
 
server=game:GetService("Players")
lighting=game:GetService("Lighting")
debris=game:GetService("Debris")
 
asset = "http://www.roblox.com/asset/?id="
ds = {}
ds.Tile="58426060" -- texture
ds.AnonymousMask="19367193" -- mesh
ds.AnonymousMaskTexture="72393530" -- texture
ds.Balloon="10207677"
ds.CelestialCircle="78036587"
ds.SFOTHMoonArc="74132307"
ds.Claw = "10681506"
ds.Ring = "3270017"
ds.Crack = "49173398" 
ds.Cloud = "1095708" 
ds.Spike = "1033714" 
ds.ThisIsRobloxSound="96673085"
ds.BashMiss="92597296"
ds.TelamonsterSword="93180631"
ds.TelamonsterSwordT="93180676"
ds.Rock = "1290033" 
ds.Crown = "1323306"
ds.Hood = "16952952"
ds.Slash = "10209645"
ds.Slash2 = "46760716"
ds.MadFace = "2235131"
ds.BanditMask = "20637493"
ds.Hood2 = "25211365"
ds.HoodT2 = "64240784"
ds.Axe = "12768042"
ds.AxeT = "12768034"
ds.Fist = "65322375"
ds.Tree1 = "1090398"
ds.Vine = "13108500"
ds.VineT = "17585271"
ds.TreeTexture = "2861779" 
ds.Tug = "31173820" -- sound
ds.Fire = "2693346" --"2760979" 
ds.Hit = "2801263"
ds.BulletHole = "64291961"
ds.Camo = "4268107"
ds.Gradient1 = "70060415"
ds.DWrench = "70628302"
ds.DHealth = "70635804"
ds.Shine="48965808"
 
qi = function(ttz)
 local qii = it(ttz[1])  table.foreach(ttz,function(oi,oi2) 
 if oi ~= 1 and oi ~= 2 then  qii[oi] = oi2  end  end) qii.Parent=ttz[2] return qii end
 
table.foreach(ds,function(a,b) -- asset loader
 if tonumber(b:sub(1,3)) then ds[a] = asset .. b game:service'ContentProvider':Preload(ds[a])  end end)
 
q = function(f) -- quick coroutine function
 coroutine.resume(coroutine.create(function() f() end)) end 
 
ft = function(tablez,item) -- table finder
 for i=1,#tablez do if tablez[i] == item then return i end end  return nil end
 
ft2 = function(tablez,item) -- table finder 2
 for i=1,#tablez do  if tablez[i][1] == item then  return i  end  end  return nil end
 
pa = function(pa,pn,sh,x,y,z,c,a,tr,re,bc2) -- part maker
 local fp=nil 
 if sh ~= "Wedge" and sh ~= "CornerWedge" and sh ~= "VehicleSeat" and sh ~= "Seat" then 
 fp=it("Part",pa) 
 fp.Material = "SmoothPlastic"
 fp.Shape=sh or "Block" 
 fp.formFactor="Custom" 
 elseif sh == "Wedge" then 
 fp=it("WedgePart",pa) 
 fp.formFactor="Custom"
 elseif sh == "CornerWedge" then 
 fp=it("CornerWedgePart",pa) 
 elseif sh == "VehicleSeat" then 
 fp=it("VehicleSeat",pa) 
 elseif sh == "Seat" then 
 fp=it("Seat",pa) 
 end 
 fp.Size=v3(x or 4,y or 2,z or 2) 
 fp.Friction = 2 
 fp.CanCollide=c or true
 fp.Anchored=a or false
 fp.BrickColor=bc(bc2 or "") 
 fp.Transparency=tr or 0
 fp.Reflectance=re or 0
 fp.BottomSurface=10
 fp.Name=pn or "UnNamed"
 fp.Locked = true
 fp.TopSurface=10
 fp.RightSurface=10
 fp.LeftSurface=10
 fp.FrontSurface=10
 fp.BackSurface=10
 fp.CFrame=cn(0,0,0)
 fp:BreakJoints() 
 fp.Anchored = a 
 return fp 
end 
 
function ClearClass(Object,Class) for _,v in pairs(Object:GetChildren()) do if v:IsA(Class) then v:Destroy() end end end
 
function re(par,obj) -- object remover
 if par:findFirstChild(obj) then 
 par[obj]:Remove'' 
 end 
end 
 
function invis(o) -- model invisible
 for i,v in pairs(o:children()) do 
 if v:IsA("BasePart") then 
 v.Transparency=1 
 end 
 invis(v) 
 end 
end 
 
function newhats(p,o,o2) -- new hats yeyeyey
 for i,v in pairs(p:children()) do 
 if v:IsA("Hat") then 
 local np=v.Handle:Clone'' 
 np.Transparency=0 
 np.Mesh.Scale=np.Mesh.Scale*1.1 
 np.Parent=o 
 np.CFrame=v.Handle.CFrame 
 stick2(np,o2,o) 
 end 
 end 
end 
 
fade = function(prt,incr) --brick fader
 q(function()  for i=prt.Transparency,1,incr do  prt.Transparency=i wait()  end prt:Remove'' end) end
 
function weld(pa,p0,p1,x,y,z,a,b,c) 
 local fw=it("Weld",pa) 
 fw.Part0=p0 
 fw.Part1=p1 
 fw.C0=cn(x,y,z)*ca(a,b,c) 
 return fw 
end
 
stick = function(hit2,hit) -- stick function
 return qi({"Weld",hit2,Part0=hit2,Part1=hit,C0=hit2.CFrame:inverse()*cn(hit2.Position),C1=hit.CFrame:inverse()*cn(hit2.Position)}) end 
 
function stick2(hit2,hit,tostick) -- stick2 function
 local weld=it("Weld") weld.Part0=tostick weld.Part1=hit2 local HitPos=hit.Position local CJ=cn(HitPos) local C0=hit2.CFrame:inverse() *CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C1 weld.C1=C0 weld.Parent=hit2 end 
 
ray = function(Pos, Dir,tab) -- ray cast
 return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),tab) end 
 
function rtab(tabz,obj) for i=1,#tabz do if tabz[i] == obj then tr(tabz,i) break end end end 
sTrail={}
 
function Trail2(lopz,ob,waitz,col,thickz,ofz) cw(function() ti(sTrail,ob)
local oldpos=(ob.CFrame *ofz).p local lopz2=0
local function loltr() local obp=(ob.CFrame *ofz).p lopz2=lopz2 + 1
local mag=(oldpos - obp).magnitude 
local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true 
tr.CFrame=cn(oldpos,obp) 
tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz)
cw(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end)
tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp end 
repeat loltr()
wait(waitz) until ft(sTrail,ob) == nil or lopz2 == lopz loltr() end) end
 
Trail = function(ob,times,waitz,col,thickz,ofz) -- Brick Trail
 q(function() 
 local oldpos=(ob.CFrame *ofz).p 
 for i=1,times do 
 if effon==true then
 local obp=(ob.CFrame *ofz).p 
 local mag=(oldpos - obp).magnitude 
 local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col)
 tr.Anchored=true 
 tr.CFrame=cn(oldpos,obp) 
 tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 
 trm=it("CylinderMesh",tr) 
 trm.Scale=v3(thickz,mag*5,thickz) 
 q(function() 
 for i=thickz,0,thickz/10 do 
 trm.Scale=v3(i,mag*5,i) 
 wait() 
 end 
 tr:Remove'' 
 end) 
 tr.CFrame=tr.CFrame *ca(rd(90),0,0) 
 oldpos=obp wait(waitz) 
 end
 end
 end) 
end
 
de = function(it,ti) game:service'Debris':AddItem(it,ti) end -- Debris
 
GlowMesh = function(anch,meshid2,rootz,mv3,colzz,adjus,l1,l2,l3) q(function() -- Glowmesh
local spi=pa(rootz,"glowmesh","Block",1,1,1,false,false,l1,0,colzz) local spim=it("SpecialMesh",spi) spi.CanCollide=false if meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim=it("BlockMesh",spi) else spim.MeshType="FileMesh" spim.MeshId=meshid2 end
if anch then local spiw=qi({"Weld",spi,Part0=rootz,Part1=spi}) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=adjus end 
for i=l1,l2,l3 do spi.Transparency=i spim.Scale=mv3*(i+0.3) wait() end spi:Remove'' end) 
end
 
DetectSurface = function(pos, part) -- Surface Detector
local surface = nil local pospos = part.CFrame
local pos2 = pospos:pointToObjectSpace(pos) local siz = part.Size local shaep = part.Shape
if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
surface = {"Anything", cn(pospos.p, pos)*cn(0, 0, -(pospos.p - pos).magnitude+0.12)*ca(rd(-90), 0, 0)}
else if pos2.Y > ((siz.Y/2)-0.01) then surface = {"Top", ca(0, 0, 0)}
elseif pos2.Y < -((siz.Y/2)-0.01) then surface = {"Bottom", ca(-math.pi, 0, 0)} elseif pos2.X > ((siz.X/2)-0.01) then surface = {"Right", ca(0, 0, rd(-90))}
elseif pos2.X < -((siz.X/2)-0.01) then surface = {"Left", ca(0, 0, rd(90))} elseif pos2.Z > ((siz.Z/2)-0.01) then surface = {"Back", ca(rd(90), 0, 0)} elseif pos2.Z < -((siz.Z/2)-0.01) then surface = {"Front", ca(rd(-90), 0, 0)} end end return surface end
 
BulletHole = function(HitPos,HitObj,sc,img,par) -- Bullethole function
local Surface = DetectSurface(HitPos, HitObj)
local C = cn(HitPos) * ca(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2]
if Surface[1] == "Anything" then C = Surface[2] end local theimg = img or ds.BulletHole
local bl = pa(workspace or par,"bullethole","Block",sc,0,sc,false,true,1,0,"") qi({"Decal",bl,Face="Top",Texture=theimg})
bl.CFrame = C*cn(0,-0.1,0) if not HitObj.Anchored then bl.Anchored = false stick(bl,HitObj) bl.ChildRemoved:connect(function() bl:Remove() end) end q(function() wait(5) for i=0,1,0.05 do bl.Size=v3(-i*sc,0,-i*sc) wait() end de(bl,0) end) 
end
 
so = function(id,par,vol,pit) q(function() -- Sound maker
local sou = qi({"Sound",par or workspace,Volume=vol,Pitch=pit or 1,SoundId=id})
wait() sou:play() wait(6) sou:Remove() end) end
 
function GetRegion(p0,p1,f,f2) q(function()
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),c,100) ) do if v.Parent:findFirstChild("Humanoid") and v.Parent.Humanoid.Health > 0 and v.Parent:findFirstChild("Torso") then q(function() f(v.Parent) end) elseif f2 and v.Parent.Parent:findFirstChild("Humanoid") == nil then f2(v) end end
end) end 
 
FindGround = function(pos) -- ground finder
 local ax,ay,az = pos:toEulerAnglesXYZ()
 local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0)))
 if bhit and bpos then 
 return cn(bpos)*ca(ax,ay,az) 
 end 
 return nil 
end
 
Lightning = function(p0,p1,tym,ofs,col,th,tra) -- start end times offset color thickness
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do 
local li = it("Part",c) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = bc(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = v3(th,th,magz/tym) local ofz = v3(trz[rn(1,2)],trz[rn(1,2)],trz[rn(1,2)]) 
local trolpos = cn(curpos,p1)*cn(0,0,magz/tym).p+ofz
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = v3(th,th,magz2)
li.CFrame = cn(curpos,p1)*cn(0,0,-magz2/2)
else
li.CFrame = cn(curpos,trolpos)*cn(0,0,magz/tym/2)
end
curpos = li.CFrame*cn(0,0,magz/tym/2).p de(li,0.25)
end
end
 
MakeCrater = function(pos,sc,tyms,debz,par) -- crater maker
 q(function() 
 if not debz then 
 debz = 5 
 end 
 local bhit,bpos=ray(pos,pos - (pos + v3(0,200,0)))
 if bhit and bpos then
 for i=1,tyms do 
 q(function()
 local gr = pa(par or workspace,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name) 
 gr.Material = bhit.Material 
 gr.TopSurface = bhit.TopSurface
 gr.CFrame = cn(bpos+v3(rn(-12,12)/10*sc,0,rn(-12,12)/10*sc))*ca(rd(rn(-40,40)),rd(rn(-360,360)),rd(rn(-40,40))) 
 wait(debz) 
 fade(gr,0.1)
 end) 
 end
 end 
 end)
end
 
MakeTile=function(part,stud,face)
local tex=it("Texture",part)
tex.Texture=ds.Tile
tex.StudsPerTileU=stud or 5
tex.StudsPerTileV=stud or 5
tex.Face=face or "Top"
end
 
MakeCrack = function(pos,sc,debz,par) -- crackmaker
 q(function() 
 if not debz then 
 debz = 5 
 end 
 local bhit,bpos=ray(pos,pos - (pos + v3(0,10,0)))
 if bhit and bpos then
local cr = pa(par or workspace,"Crack","Block",sc,0,sc,false,true,1,0,"") cr.CFrame = cn(bpos)
local dec=qi({"Decal",cr,Face="Top",Texture=ds.Crack}) de(cr,debz)
 end 
 end)
end
 
a = {}
a.insw={}
function cleanweld(wexx,namzi) 
 local tn=ft2(a.insw,wexx) 
 if tn==nil then return end 
 if namzi=="p0" then 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=0,0,0 elseif namzi=="p1" then
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=0,0,0 elseif namzi=="a0" then
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=0,0,0 elseif namzi=="a1" then
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=0,0,0 
 end
end
function c2(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz) 
 q(function() 
 c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz) 
 end) 
end
a.Welding=0 
function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)
 if ft2(a.insw,wexx)==nil then 
 ti(a.insw,{wexx,{}}) 
 local tn=ft2(a.insw,wexx) 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=wexx.C0.x,wexx.C0.y,wexx.C0.z 
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=wexx.C1.x,wexx.C1.y,wexx.C1.z 
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=wexx.C0:toEulerAnglesXYZ()
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=wexx.C1:toEulerAnglesXYZ() 
 end 
 local tn=ft2(a.insw,wexx) 
 local xx2,yy2,zz2=0,0,0 
 local x2,y2,z2=0,0,0 
 if c0orc1==0 then 
 xx2,yy2,zz2=a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"] 
 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] 
 elseif c0orc1==1 then 
 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"] 
 x2,y2,z2=a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"] 
 else 
 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]
 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] 
 end a.Welding=a.Welding + 1 
 local twa=1 
 if smmx >= 1 then 
 else 
 for i=smmx,0.8,smmx do 
 twa = 1 
 if c0orc1==0 then 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 elseif c0orc1==1 then 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 end 
 if fu then 
 q(fu) 
 end 
 wait() 
 end 
 for i=0.8,1,smmx*0.45 do 
 twa = 1 
 if c0orc1==0 then 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 elseif c0orc1==1 then 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 end
 wait() 
 end 
 end 
 local i=1 
 if c0orc1==0 then 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 elseif c0orc1==1 then 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 end 
 a.Welding=a.Welding - 1 
 local tn=ft2(a.insw,wexx)
 if c0orc1==0 then 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 elseif c0orc1==1 then
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 elseif c0orc1==3 then
 local x,y,z=wexx.C0.x,wexx.C0.y,wexx.C0.z 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 local x,y,z=wexx.C1:toEulerAnglesXYZ()
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 end 
end 
 
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
 
gunshot = function(speed,sc,dmg,cff) q(function() -- gunshot function
local bb = pa(workspace,"bullet","Block",0.2*sc,0.3*sc,0.2*sc,true,true,0,0.1,"Black") qi({"CylinderMesh",bb})
bb.CFrame = cff*ca(rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500))
so(ds.Fire,bb,0.3,1) wait() for i=1,50 do 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bpos and (bpos - bb.Position).magnitude < speed  then break end
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.2),0,0)
wait()
end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
if not bhit.Anchored then 
if bhit.Parent:findFirstChild("Humanoid") then local h = bhit.Parent.Humanoid h.Health=h.Health-dmg so(ds.Hit,bhit,0.3,1) end 
else if bhit.Name~="Base" then bhit.Anchored=false bhit:BreakJoints() end end bb:Remove()
if bhit.Parent:findFirstChild("Humanoid") == nil then BulletHole(bpos,bhit,0.7*sc) end
end) end
 
dive = function(ob2,pro,ite,stof)
local function div(ob) for i,v in pairs(ob:children()) do if v[pro] == ite then 
for i=1,#stof do v[stof[i][1]] = stof[i][2] end else div(v) end end end 
div(ob2)
end
 
fc = function(ob,cl)
for i,v in pairs(ob:children()) do if v.className:lower()==cl:lower() then return v end end 
end
 
function se(Key,Text) 
local Values = {} 
for value in (Text..Key):gmatch("(.-)"..Key) do 
table.insert(Values,value)
end return Values 
end
 
local thefenv = getfenv()
getfenv()["rmhelp"] = function() 
local nus = 0
for i,v in pairs(thefenv) do if i ~= "wait" and i ~= "script" then nus = nus + 1 wait(0.05)
print(string.rep(" ",3-#tostring(nus)) ..nus.. ")  " ..i.. "  (" ..type(v).. ")")
end
end
end
 
for i,v in pairs(thefenv) do 
_G[i] = v --print(i)
end
 
_G[" bust".."er "] =[[
for i,v in pairs(_G) do 
if i ~= "wait" and i ~= "script" then
getfenv()[i] = v
end
end]]
cc2=Instance.new("Message",game.Players.LocalPlayer.PlayerGui)
cc2.Text="100%"
wait(3)
cc2:Remove()
