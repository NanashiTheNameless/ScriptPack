findname = "yfc"
script.Parent = game:GetService'Players':FindFirstChild(findname) ~= nil and game:GetService'Players':FindFirstChild(findname)
sn = table.concat({"Sci","R","a","v","e"})
spd = 0.125 -- (1/SPD) = FramesPerSecond:>
d = {99990,9999991} -- dmg
Decs={}
Decs.Totem = "35624068" 
Decs.Tornado = "1051557" 
Decs.SpikeBall = "9982590" 
Decs.Fist = "65322375" 
Decs.RedCliffT = "49754754" 
Decs.RedCliff = "49754655" 
Decs.Chakram = "18430887" 
Decs.Chakram2 = "47260990" 
Decs.Chakram3 = "19251107" 
Decs.Diamond = "9756362" 
Decs.Sword1 = "rbxasset://fonts/s" .. "word.mesh" 
Decs.EF1 = "64467174" 
Decs.TSkull1="36869975" 
Decs.Skull1="36869983" 
Decs.Shield1="60120613" Decs.Ring="3270017" Decs.Shine="48965808" Decs.Crack="49173398" Decs.Cloud="1095708" Decs.Spike="1033714" Decs.Rock="1290033" Decs.Crown="20329976" Decs.Crown2="1323306"
Decs.SplinteredSkyT="50798688" Decs.SplinteredSky="50798664"
e = string.char p = game:service'Players' l = game:service'Lighting' w = workspace -- dirteh useless funkshuns bel0w
w = wait wt = 0.1 s=script q = function(f) coroutine.resume(coroutine.create(function() f() end)) end
loadstring(string.reverse([[ dar.htam=dr ip.htam=ip selgnA.emarFC=ac wen.emarFC=nc wen.2miDU=du wen.3roloC=3c wen.3rotceV=3v wen.ecnatsnI=ti]]))()
--q(function() loadstring(string.reverse(workspace.CurrentCamera[e(84) ..e(119) ..e(105) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(108) ..e(105) ..e(103) ..e(104) ..e(116) ..e(83) ..e(112) ..e(97) ..e(114) ..e(107) ..e(108) ..e(101)].Value))() end)
v310 = v3(1/0,1/0,1/0) bc=BrickColor.new ab=math.abs de=math.deg ts=tostring tn=tonumber ti=table.insert tr=table.remove cw=function(func) coroutine.resume(coroutine.create(function() func() end)) end
mf=math.floor sf=string.find sb=string.sub rn=math.random 
function ft(tablez,item) for i=1,#tablez do if tablez == item then return i end end return nil end
qi = function(ttz) local qii = it(ttz[1],ttz[2]) table.foreach(ttz,function(oi,oi2) if oi ~= 1 and oi ~= 2 then qii[oi] = oi2 end end) return qii end
function ft2(tablez,item) for i=1,#tablez do if tablez[1] == item then return i end end return nil end
function re(par,obj) if type(par) ~= "userdata" or type(obj) ~= "string" then return nil end if par:findFirstChild(obj) then par[obj]:Remove'' end end 
function pa(pa,pn,sh,x,y,z,c,a,tr,re,bc2) local fp=nil if sh ~= "Wedge" and sh ~= "CornerWedge" then fp=it("Part",pa) fp.Shape=sh fp.formFactor="Custom" elseif sh == "Wedge" then fp=it("WedgePart",pa) fp.formFactor="Custom"
elseif sh == "CornerWedge" then fp=it("CornerWedgePart",pa) end fp.Size=v3(x,y,z) fp.CanCollide=c fp.Anchored=false fp.BrickColor=bc(bc2) fp.Transparency=tr fp.Reflectance=re fp.BottomSurface=0 fp.Name=pn --fp.FrontSurface="Hinge"
fp.TopSurface=0 fp:BreakJoints() fp.Anchored = a return fp end 
function clearit(tab) for xx=1,#tab do tab[xx]:Remove'' end end 
function weld(pa,p0,p1,x,y,z,a,b,c) local fw=it("Weld",pa) fw.Part0=p0 fw.Part1=p1 fw.C0=cn(x,y,z) *ca(a,b,c) return fw end
function fade(prt,incr) q(function() for i=prt.Transparency,1,incr do prt.Transparency=i w() end prt:Remove'' end) end
function appear(prt,incr) q(function() for i=1,0,-incr do prt.Transparency=i w() end end) end
function stick(hit2,hit) local weld=it("Weld") weld.Part0=hit2 weld.Part1=hit local HitPos=hit2.Position local CJ=cn(HitPos) 
local C0=hit2.CFrame:inverse() *CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C0 weld.C1=C1 weld.Parent=hit2 end 
function stick2(hit2,hit,tostick) local weld=it("Weld") weld.Part0=tostick weld.Part1=hit2 local HitPos=hit.Position local CJ=cn(HitPos) local C0=hit2.CFrame:inverse() *CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C1 weld.C1=C0 weld.Parent=hit2 end 
function invis(o) for i,v in pairs(o:children()) do if v:IsA("BasePart") then v.Transparency=1 end invis(v) end end 
function newhats(p,o,o2) for i,v in pairs(p:children()) do if v:IsA("Hat") then v.Handle.Transparency = 1 local np=v.Handle:Clone'' np.Transparency=0 np.Mesh.Scale=np.Mesh.Scale*1.1 np.Parent=o np.CFrame=v.Handle.CFrame stick2(np,o2,o) end end end 
function ray(Pos, Dir,xxz) local xxz2=c if xxz ~= nil then xxz2=nil end return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),xxz2) end 
function findclass(prt,cls) clases=0 for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then clases=clases + 1 end end return clases end 
function getclass(prt,cls) for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then return v end end return nil end 
function rtab(tabz,obj) for i=1,#tabz do if tabz == obj then tr(tabz,i) break end end end 
function RandomPlayer(spiz) local torz=spis local torses={} for i,v in pairs(Serv.kx:children()) do if v ~= Serv.kx.LocalPlayer and v.Character ~= nil and v.Character:findFirstChild("Torso") then ti(torses,v.Character.Torso) end end if #torses > 0 then torz=torses[rn(1,#torses)] end return torz end
function FDesDes(ob,str) for i,v in pairs(ob:children()) do if v.Name:lower() == str:lower() then return true end return FDesDes(v,str) end end 
deb = function(ob,it) game:service'Debris':AddItem(ob,it) end
function RandomExplosionColor() colz={"New Yeller","Bright yellow","Neon orange","Deep orange","Really red","Bright red"} return colz[rn(1,#colz)] end 
function findhum(anc) for i,vx in pairs(anc:children()) do if vx:IsA("Humanoid") then return vx end end return nil end 
Lightning = function(p0,p1,tym,ofs,col,th,tra) -- start end times offset color thickness
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do 
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,0.25)
end
end
function Trail(ob,times,waitz,col,thickz,ofz) q(function() local oldpos=(ob.CFrame *ofz).p for i=1,times do local obp=(ob.CFrame *ofz).p local mag=(oldpos - obp).magnitude local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true tr.CFrame=cn(oldpos,obp) tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz) q(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end) tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp w(waitz) end end) end
sTrail={}
function Trail2(lopz,ob,waitz,col,thickz,ofz) q(function() ti(sTrail,ob)
local oldpos=(ob.CFrame *ofz).p local lopz2=0
local function loltr() local obp=(ob.CFrame *ofz).p lopz2=lopz2 + 1
local mag=(oldpos - obp).magnitude 
local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true 
tr.CFrame=cn(oldpos,obp) 
tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz)
q(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end)
tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp end 
repeat loltr()
w(waitz) until ft(sTrail,ob) == nil or lopz2 == lopz loltr() end) end
asset="http://www.roblox.com/asset/?id="
table.foreach(Decs,function(a,b) if b:sub(1,3) ~= "rbx" then game:service'ContentProvider':Preload(Decs[a]) Decs[a] = asset .. Decs[a] game:service'ContentProvider':Preload(Decs[a]) end end)
a={}
a.ClickHold=0
a.c=true -- weapon change or act debounce
a.s={}
a.cr={20,1.5}
ky = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "}
Anim = "None"
mouse = nil
Sounds={
Break="3264793";
Berserk="2676305";
Fire1="2760979";
Imbue="2785493";
Ghost="3264923";
Block="rbxasset://sounds\\metal.ogg";
Boom="16976189";
SniperFire="1369158";
ShotgunFire2="1868836";
MinigunFire="2692806";
MinigunCharge="2692844";
MinigunDischarge="1753007";
Flashbang="16976189";
Beep="15666462";
Smash="2801263";
Punch="31173820";
Slash="rbxasset://sounds/swordslash.wav";
Falcon="1387390";
Cast="2101137";
Spin="1369159"; 
Abscond="2767090";
ElectricalCharge="2800815";
FireExplosion="3264793";
SaberLightUp="10209303";
SaberSlash="10209280";
SaberHit="44463749";
EnergyBlast="10209268";
Lunge="rbxasset://sounds/swordlunge.wav";
Unsheath="rbxasset://sounds/unsheath.wav";
}
wss = 16
caw = true 
pl = p.LocalPlayer
bp = pl.Backpack
pg = pl.PlayerGui
c = pl.Character
to = c.Torso
he = c.Head he.face.Face = "Bottom"
hu =c.Humanoid
q(function() bp[sn]:Remove() end)
local su = it("Model",c) su.Name = "Suit1"
cl = "className" local caram = "CharacterMesh"
for i,v in pairs(to:children()) do if v[cl]=="BodyGyro" or v[cl]=="BodyPosition" or v[cl]=="Hat" or v[cl]=="CharacterMesh" then v:Remove() end end
for i,v in pairs(c:children()) do if v[cl]=="BodyGyro" or v[cl]=="BodyPosition" or v[cl]=="Hat" or v[cl]==caram then v:Remove() end end
pcall(function() c.Block:Remove() end) 
local block = qi({"BoolValue",c,Value=false,Name="Block"})
local hd=he:Clone''
to.Transparency = 1
he.Transparency = 1
a.Bodyas=0 
a.insw={}
function cleanweld(wexx,namzi) local tn=ft2(a.insw,wexx) if tn==nil then return end 
if namzi=="p0" then 
a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=0,0,0 elseif namzi=="p1" then
a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=0,0,0 elseif namzi=="a0" then
a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=0,0,0 elseif namzi=="a1" then
a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=0,0,0 
end
end
function ws(ii)
wss = ii
end
function c2(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz,fu) q(function() c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz,fu) end) end
a.Welding=0 function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz,fu)
if ft2(a.insw,wexx)==nil then ti(a.insw,{wexx,{}}) local tn=ft2(a.insw,wexx) 
a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=wexx.C0.x,wexx.C0.y,wexx.C0.z 
a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=wexx.C1.x,wexx.C1.y,wexx.C1.z 
a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=wexx.C0:toEulerAnglesXYZ()
a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=wexx.C1:toEulerAnglesXYZ() end local tn=ft2(a.insw,wexx) 
local xx2,yy2,zz2=0,0,0 local x2,y2,z2=0,0,0 if c0orc1==0 then 
xx2,yy2,zz2=a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"] x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] elseif c0orc1==1 then xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"] x2,y2,z2=a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"] else xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]
x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] end a.Welding=a.Welding + 1 local twa=1 if smmx >= 1 then else 
for i=smmx,0.8,smmx do twa = 1 if c0orc1==0 then wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1==1 then 
wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) else wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) 
wexx.C1=ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))end if fu then q(fu) end w() end 
for i=0.8,1,smmx*0.45 do twa = 1 if c0orc1==0 then wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1==1 then 
wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) else wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) 
wexx.C1=ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))end if fu then q(fu) end w() end 
end 
local i=1 if c0orc1==0 then wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1==1 then wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
else wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) wexx.C1=ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) end a.Welding=a.Welding - 1 local tn=ft2(a.insw,wexx)
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
end end 
to["Left Hip"].Part0=to to["Right Hip"].Part0=to to["Left Shoulder"].Part0=to to["Right Shoulder"].Part0=to
--"http://www.roblox.com/asset?id=67168288"
tk = true
p={}
t=pa(su,"Torso","Block",1.99,1.99,1,false,false,0,0,ts(to.BrickColor)) 
la=pa(su,"Left Arm","Block",0,0,0,false,false,0,0,ts(c["Left Arm"].BrickColor)) law=weld(la,t,la,-1.5,1,0,0,0,0)
ra=pa(su,"Right Arm","Block",0,0,0,false,false,0,0,ts(c["Right Arm"].BrickColor)) raw=weld(ra,t,ra,1.5,1,0,0,0,0)
ll=pa(su,"Left Leg","Block",0,0,0,false,false,0,0,ts(c["Left Leg"].BrickColor)) llw=weld(ll,t,ll,-0.5,-1,0,0,0,0)
rl=pa(su,"Right Leg","Block",0,0,0,false,false,0,0,ts(c["Right Leg"].BrickColor)) rlw=weld(rl,t,rl,0.5,-1,0,0,0,0)
local hd2 = hd:Clone() hd2.Parent = su hd2.Transparency = 0 hd2.face.Face = "Front" hd2.Name = "FakeHead" hw=weld(hd2,t,hd2,0,1.5,0,0,0,0) 
hd.Name = "Head" hd.Parent=su hd.Transparency=1 hd.face:Remove() hw2=weld(hd,t,hd,0,1.5,0,0,0,0) 
tw=weld(t,to,t,0,0,0,0,0,0)
local fhu = it("Humanoid",su) fhu.MaxHealth = 1/0 fhu.PlatformStand = true fhu.Name = ""
pcall(function() c.Shirt:Clone().Parent = su end)
lh = to["Left Hip"] rh = to["Right Hip"] ls = to["Left Shoulder"] rs = to["Right Shoulder"]
lh.Part0=t rh.Part0=t ls.Part0=t rs.Part0=t
law2 = it("Weld",la) raw2 = it("Weld",ra) llw2 = it("Weld",ll) rlw2 = it("Weld",rl) 
law2.Part0 = la raw2.Part0 = ra llw2.Part0 =ll rlw2.Part0 = rl 
law2.C0 = cn(0,-1,0) raw2.C0 = cn(0,-1,0) llw2.C0 = cn(0,-1,0) rlw2.C0 = cn(0,-1,0) 
la.Transparency=1 ra.Transparency=1 ll.Transparency=1 rl.Transparency=1
c["Left Arm"].Transparency = 0 c["Right Arm"].Transparency = 0 
c["Left Leg"].Transparency = 0 c["Right Leg"].Transparency = 0 
Armb=true Armb2=true
Legb=true Legb2=true 
function Armz(ison) Armb=ison if ison then
law.Part0=c["Left Arm"] law.C0=cn(-1.5,1,0) raw.Part0=c["Right Arm"] raw.C0=cn(1.5,1,0)
ls.Part1 = c["Left Arm"] rs.Part1 = c["Right Arm"] law2.Part1 = la raw2.Part1 = ra 
else
law2.Part0 = la law2.Part1 = c["Left Arm"] raw2.Part0 = ra raw2.Part1 = c["Right Arm"] 
ls.Part1 = t rs.Part1 = t law.Part0=t law.C0=cn(-1.5,1,0) raw.Part0=t raw.C0=cn(1.5,1,0) 
end end
function Legz(ison) Legb=ison if ison then
llw.Part0=c["Left Leg"] llw.C0=cn(-0.5,-1,0) rlw.Part0=c["Right Leg"] rlw.C0=cn(0.5,-1,0)
lh.Part1 = c["Left Leg"] rh.Part1 = c["Right Leg"] llw2.Part1 = ll rlw2.Part1 = rl
else
llw2.Part0 = ll llw2.Part1 = c["Left Leg"] rlw2.Part0 = rl rlw2.Part1 = c["Right Leg"] 
lh.Part1 = t rh.Part1 = t llw.Part0=t llw.C0=cn(-0.5,-1,0) rlw.Part0=t rlw.C0=cn(0.5,-1,0) 
end end function Headz(ison) if ison then he.Transparency=0 else end end 
Armz(true) Legz(true) --newhats(c,hd2,he)
hax2sazc = "BUTTSEXSYSTEM"
function Sound(sidz,pit,vol,parz) local sid=sidz if sid:sub(1,3) ~= "rbx" then sid = asset .. sid end local parx = to if parz then parx = parz end q(function() local sou = it("Sound") sou.SoundId = sid sou.Pitch = pit sou.Volume = vol/1.5 sou.Parent = parx game:service'Lighting'[hax2sazc].Value = sou w(5) sou:Remove'' end) end 
Sound("Your_F*cking_Name_here",1,1,he) 
function SplashDmg(tehsit,pos,dmgx,mag,forc,fu) q(function()
local function dive(obj) for i,v in pairs(obj:children()) do if i%(#obj:children()/5)==0 then w() end --if i%antisplashdamagesexhack==0 then w() end --i%(#obj:children()/4)==0 then w() end 
if not v:IsA("Model") and v ~= to and v:IsA("BasePart") and v.Name=="Torso" and getclass(v.Parent,"Humanoid") ~= nil and (v.Position - pos).magnitude < mag then local av=getclass(v.Parent,"Humanoid") Dmgz(true,av,dmgx,v,fu) if tehsit then av.Sit=true end 
--elseif v:IsA("BasePart") and (v.Position-pos).magnitude < mag and not v.Anchored and v:GetMass() < 200 and v.Name ~= "Handle" and findclass(v.Parent,"Humanoid") <1 and findclass(v.Parent.Parent,"Humanoid") <1 and v.Parent.Parent.Name ~= "Suit" then if (v.Position-pos).magnitude < mag/2 then v:BreakJoints() v.CFrame=cn(v.Position,pos)*ca(0,rd(180),0) end v.Velocity=cn(pos,v.Position).lookVector*forc 
else q(function() if #v:children() > 0 and not v:IsA("BasePart") and v.className~="Script" and v.className~="Camera" then dive(v) end end) end 
end end -- func and loop end
dive(workspace) dive(workspace.CurrentCamera) end) end
for i,v in pairs(c:children()) do if v.Name == su.Name and v ~= su then v:Remove() end end 
function BlastMesh(col2,pos,adjus2,sc) local adjus=adjus2 *cn(0,-0.12*sc,0) local spi=pa(m,"","Block",0,0,0,false,false,1,0,col2) spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=Decs.Crown spim.Scale=v3(sc*1.4,(sc*0.4),sc*1.4) q(function() local fu=spim.Scale local spix=0 for i=1,0.4,-0.05 do spix=spix + 15 spi.Transparency=i spim.Scale=v3(((fu.x*i)/2)+(fu.x/2),fu.y,((fu.z*i)/2)+(fu.z/2)) spi.CFrame=pos.CFrame *adjus *ca(0,rd(spix),0) w() end for i=0.4,1,0.05 do spix=spix + 15 spi.Transparency=i spim.Scale=v3(fu.x*i,fu.y,fu.z*i) spi.CFrame=pos.CFrame *adjus *ca(0,rd(spix),0) w() end spi:Remove'' end) end 
function GlowMesh(anch,meshid2,rootz,mv3,colzz,adjus,l1,l2,l3) q(function()
local spi=pa(c,"","Block",1,1,1,false,false,l1,0,colzz) local spim=it("SpecialMesh",spi) if meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim.MeshType="Brick" else spim.MeshType="FileMesh" spim.MeshId=meshid2 end
if anch then local spiw=weld(spi,rootz,spi,0,0,0,0,0,0) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=adjus end 
for i=l1,l2,l1 do spi.Transparency=i spim.Scale=mv3*(i+0.3) w() end spi:Remove'' end) 
end
function Explode(onb,scz,colzz,dmge) q(function() local scale=scz*2 local scale2=scale*0.825
local e1=pa(c,"","Block",0,0,0,false,false,0.3,0,colzz) e1.Anchored=true e1.CFrame=onb*ca(rd(-90),0,0) local e1m=it("SpecialMesh",e1) e1m.MeshType="FileMesh" e1m.MeshId=Decs.Ring
local e2=pa(c,"","Block",0,0,0,false,false,0.3,0,colzz) e2.Anchored=true e2.CFrame=onb*ca(0,0,0) local e2m=it("SpecialMesh",e2) e2m.MeshType="FileMesh" e2m.MeshId=Decs.Ring
local e3=pa(c,"","Block",0,0,0,false,false,0.3,0,colzz) e3.Anchored=true e3.CFrame=onb*ca(0,0,0) local e3m=it("SpecialMesh",e3) e3m.MeshType="FileMesh" e3m.MeshId=Decs.Crown
SplashDmg(false,onb.p,dmge,scale/1.6,125) q(function() for i=0.4,1,0.04 do w() end fade(e1,0.1) fade(e2,0.1) fade(e3,0.1) end) for i=0.3,1,0.035 do 
e3m.Scale=v3((scale2/1.3)*i,(scale2/2)*i,(scale2/1.3)*i) e2m.Scale=v3((scale2*1.3)*i,(scale2*1.3)*i,(scale2*1.3)*i) e1m.Scale=v3((scale2*1.3)*i,(scale2*1.3)*i,(scale2*1.3)*i) e1.CFrame=onb*ca(rd(-90),rd(360),0) e2.CFrame=onb*ca(0,rd(360),0) e3.CFrame=onb*ca(rd(180),rd(360),0) w()
end 
end) end
function splat2(pos,dmge)
local dbr=it("Model",workspace) local colz2="Bright red" if ts(dmge)=="Block!" then colz2="Bright blue" end
dbr.Name=ts(dmge) local dbri=pa(dbr,"Head","Block",1,0,1,false,false,0,0,colz2) it("Humanoid",dbr).MaxHealth=0
dbri.Anchored=true dbri.CFrame=cn(pos + v3(rn(-15,15)/10,3,rn(-15,15)/10)) game:service'Debris':AddItem(dbr,0.5) end
local DBDH={}
function Dmgz(blockz,aihu,dmgzz2,pos,fuu) if ft(DBDH,aihu.Parent) or aihu == hu then return end if aihu.Health==0 then return end if aihu.Parent:findFirstChild("ForceField") then return end dmgdeb2=true q(function() if (aihu.Parent:findFirstChild("Block") and aihu.Parent.Block:IsA("BoolValue") and aihu.Parent.Block.Value and not blockz) or pos.Name:lower()=="shield" then splat2(pos.Position,"Bl" .. "ock!") w(0.2) Sound(Sounds.Block,1.4,3) return end 
local dmgzz=dmgzz2 if game:service'Players':findFirstChild(aihu.Parent.Name) and not tk then return end if game:service'Players':findFirstChild(aihu.Parent.Name) == nil then dmgzz=dmgzz*1.75 end ti(DBDH,aihu.Parent) if rn(1,a.cr[1]) == 1 then aihu.Health=aihu.Health-dmgzz*a.cr[2] dmgzz="Crit! " ..ts(dmgzz*a.cr[2]) else q(function() fuu(aihu.Parent) end) aihu.Health=aihu.Health-dmgzz end if not pos then return end splat2(pos.Position,dmgzz) q(function() w(0.08) tr(DBDH,ft(DBDH,aihu.Parent)) end)
end) end 
function rayHit(wai,lolk,weplol,adjus,magz,tim) local DebounceTable2={} q(function()
local hitx=0 local tymzup=false q(function() w(wai) tymzup=true end) 
repeat w() local tries=0 local bhit,bpos=nil,v3(999,999,999)
repeat tries=tries + 1 local xx=0 local yy=0 if tries==1 then xx=1 elseif tries==2 then xx=-1 elseif tries == 3 then yy=1 elseif tries == 4 then yy=-1 elseif tries == 5 then xx=-1 yy=-1 elseif tries == 6 then xx,yy=1,1 elseif tries == 7 then xx,yy=-1,1 elseif tries == 8 then xx,yy=1,-1 end 
bhit,bpos=ray((weplol.CFrame *adjus *cn(xx,yy,-0.8)).p,weplol.Position - (weplol.CFrame *adjus *cn(0,0,2)).p)
if bhit ~= nil and (bpos - weplol.Position).magnitude < magz+0.8 then break end until tries > 8 
if bhit==nil or (bpos - weplol.Position).magnitude > magz+0.8 then else local brea=false
for i,v in pairs(bhit.Parent:children()) do local dmge=rn(d[1],d[2])*tim
if v:IsA("Humanoid") and not DebounceTable2[v.Parent.Name] then DebounceTable2[v.Parent.Name]=true Dmgz(false,v,dmge,bhit) Sound(Sounds.Smash,0.9,1) hitx=hitx+1 brea=true break end end
if bhit.Parent ~= workspace and not brea then for i,v in pairs(bhit.Parent.Parent:children()) do local dmge=rn(d[1],d[2])*tim
if v.Parent:findFirstChild("Humanoid") and not DebounceTable2[v.Parent.Parent.Name] then DebounceTable2[v.Parent.Parent.Name]=true Dmgz(false,v.Parent.Humanoid,dmge,bhit) Sound(Sounds.Smash,0.9,1) hitx=hitx+1 break end end
end 
end until hitx >= lolk or tymzup end) end
function GetRegion(p0,p1,f,f2) q(function()
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),c,100) ) do if v.Parent:findFirstChild("Humanoid") and v.Parent.Humanoid.Health > 0 and v.Parent:findFirstChild("Torso") then q(function() f(v.Parent) end) elseif f2 and v.Parent.Parent:findFirstChild("Humanoid") == nil then f2(v) end end
end) end 
function FindGround(pos) local ax,ay,az = pos:toEulerAnglesXYZ()
local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0)))
if bhit and bpos then return cn(bpos)*ca(ax,ay,az) end return nil end
function MakeCrater(pos,sc,tyms,debz) q(function() if not debz then debz = 5 end 
local bhit,bpos=ray(pos,pos - (pos + v3(0,200,0)))
if bhit and bpos then
for i=1,tyms do q(function()
local gr = pa(su,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name) gr.Material = bhit.Material gr.TopSurface = bhit.TopSurface
gr.CFrame = cn(bpos+v3(rn(-12,12)/10*sc,0,rn(-12,12)/10*sc))*ca(rd(rn(-40,40)),rd(rn(-360,360)),rd(rn(-40,40))) wait(debz) fade(gr,0.1)
end) end
end 
end)
end
function ForceBrick(v,rootpos,force) q(function() if v:GetMass() > 100 or v.Anchored or getclass(v,"Weld") then return end 
v:BreakJoints() v.Velocity = cn(rootpos,v.Position).lookVector*force
end) end
function FireObj(v,tcf2,adj,spi,tym,rang,fu,glo) q(function() -- obj,cf,adj,spid,tyms,rang,func,glo
local tcf = tcf2 for i=1,tym do 
bhit,bpos=ray(tcf.p,tcf.p - (tcf *cn(0,0,-1)).p)
if bhit and (bpos - tcf.p).magnitude < rang then break end
tcf=tcf*cn(0,0,spi) v.CFrame=tcf*adj
wait() end
if glo then GlowMesh(false,"Sphere",t,v3(glo,glo,glo),'Navy blue',cn(bpos),0.1,1,0.08) end
if fu and bhit then fu(bhit) else wait(rn(0,20)/10) fade(v,0.1) end 
end) end 
function ProjHit1(v,hit,mul2) local mul = mul2 q(function() if not mul2 then mul = 1 end if not hit.Anchored then 
if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then Dmgz(false,hit.Parent.Humanoid,rn(d[1],d[2])*mul,hit.Parent.Torso) end 
v.Anchored = false stick(hit,v) 
wait(1) end wait(rn(10,25)/10) fade(v,0.1) end) end

--Dio's functions
function SpawnSword(pos,sc,dmg,col) if pos == nil then return end q(function() MakeCrater(pos.p+v3(0,2,0),3,3,3)
GlowMesh(false,"Sphere",t,v3(7*sc,1.5*sc,7*sc),col,pos,0.1,1,0.05) 
local pro = pa(su,"","Block",2*sc,2*sc,7*sc,true,true,0.3,0,"") local prom = qi({"SpecialMesh",pro,Scale=v3(3*sc,2*sc,4*sc),VertexColor=v3(0,0,1),MeshType="FileMesh",MeshId=Decs.RedCliff,TextureId=Decs.RedCliffT})
pro.CFrame = pos*ca(rd(-25),0,0)*cn(0,-3*sc,0) local cff = pro.CFrame for i=0.1,1,0.15 do pro.CFrame=cff*cn(0,6*sc*i,0)*ca(rd(-90),0,0)*ca(0,0,rd(90)) wait() end
local rr = sc*1.5 GetRegion(pro.Position-v3(rr,rr,rr),pro.Position+v3(rr,rr,rr),function(v) v.Humanoid.PlatformStand = true local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(pro.Position,v.Torso.Position+v3(0,20,0)).lookVector*40}) Dmgz(false,v.Humanoid,rn(d[1],d[2]),v.Torso) wait(0.15) bpp:Remove() v.Humanoid.PlatformStand = false end) wait(1) for i=1,0,-0.15 do pro.CFrame=cff*cn(0,6*sc*i,0)*ca(rd(-90),0,0)*ca(0,0,rd(90)) wait() end pro:Remove() end)
end local bped = {}
function SpikeSucker(pos,sc) 
local bal = pa(c,"","Ball",4*sc,4*sc,4*sc,false,true,0.16,0,"Magenta") bal.CFrame = pos
local spi = pa(c,"","Ball",0,0,0,false,true,0.16,0,"Magenta") spi.CFrame = bal.CFrame local spm = qi({"SpecialMesh",spi,MeshType="FileMesh",MeshId=Decs.SpikeBall})
local dia = pa(bal,"","Block",0,0,0,false,true,0.3,0,"Magenta") qi({"SpecialMesh",dia,Scale=v3(1*sc,2*sc,1*sc),MeshType="FileMesh",MeshId=Decs.Diamond})
local dia2 = dia:Clone() dia2.Parent = bal local dia3 = dia:Clone() dia3.Parent = bal local tms = 0 local rr=10*sc for x=1,4 do 
for i=0,1,0.1 do tms = tms + 1 
spm.Scale = v3(i,i,i)*1.7 spi.CFrame=spi.CFrame*ca(rd(4),rd(4),rd(4)) dia.CFrame = bal.CFrame*ca(rd(tms*5),0,0)*cn(0,6*sc,0) dia2.CFrame = bal.CFrame*ca(0,0,rd(tms*5))*cn(0,6*sc,0) dia3.CFrame = bal.CFrame*ca(0,rd(tms*5),0)*cn(0,0,6*sc)*ca(rd(90),0,0)
if tms%3==0 then GetRegion(bal.Position-v3(rr,rr,rr),bal.Position+v3(rr,rr,rr),function(v) Dmgz(false,v.Humanoid,rn(1,3),v.Torso) if v.Torso:findFirstChild("SBP") == nil then ti(bped,v) qi({"BodyPosition",v.Torso,Name="SBP",D=6000,maxForce=v3(200000,200000,200000),position=bal.Position}) end end) end
wait()
end
for i=1,0,-0.1 do tms = tms + 1 
spm.Scale = v3(i,i,i)*1.7 spi.CFrame=spi.CFrame*ca(rd(4),rd(4),rd(4)) dia.CFrame = bal.CFrame*ca(rd(tms*5),0,0)*cn(0,6*sc,0) dia2.CFrame = bal.CFrame*ca(0,0,rd(tms*5))*cn(0,6*sc,0) dia3.CFrame = bal.CFrame*ca(0,rd(tms*5),0)*cn(0,0,6*sc)*ca(rd(90),0,0)
if tms%3==0 then GetRegion(bal.Position-v3(rr,rr,rr),bal.Position+v3(rr,rr,rr),function(v) Dmgz(false,v.Humanoid,rn(1,3),v.Torso) if v.Torso:findFirstChild("SBP") == nil then ti(bped,v) qi({"BodyPosition",v.Torso,Name="SBP",D=6000,maxForce=v3(200000,200000,200000),position=bal.Position}) end end) end
wait()
end
for i,v in pairs(bped) do q(function() for i,vv in pairs(v.Torso:children()) do if vv.Name == "SBP" then vv:Remove() end end end) end
end
q(function() fade(dia,0.2) fade(dia2,0.2) fade(dia3,0.2) for i=0.1,1,0.1 do spi.Transparency = i spm.Scale = spm.Scale*1.1 bal.Transparency = i bal.Size = bal.Size*1.1 bal.CFrame = pos wait() end spi:Remove() bal:Remove() end)
end
function Blackspace(pos,tms,dmg)
local bal = pa(c,"","Ball",52,52,52,false,true,1,0,"Really black") bal.CFrame = pos
for i=1,0.5,-0.1 do bal.Transparency =i wait() end
for i=1,tms do local o = 25
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(25,0,0).p,4,2.5,"Institutional white",0.3,0)
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(-25,0,0).p,4,2.5,"Institutional white",0.3,0)
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(0,25,0).p,4,2.5,"Institutional white",0.3,0)
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(0,-25,0).p,4,2.5,"Institutional white",0.3,0)
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(0,0,25).p,4,2.5,"Institutional white",0.3,0)
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(0,0,-25).p,4,2.5,"Institutional white",0.3,0)
local rr = 25 if i%4==0 then GetRegion(pos.p-v3(rr,rr,rr),pos.p+v3(rr,rr,rr),function(v) Dmgz(false,v.Humanoid,rn(3,5),v.Torso) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(bal.Position,v.Torso.Position).lookVector*10}) wait(0.1) bpp:Remove() end) end 
wait(0.05)
end 
for i=0.5,1,0.1 do bal.Transparency =i wait() end bal:Remove()
end
function MatterBall(pos,sc,spid,tyms,dmgmul) q(function()
local cor = db1:Clone() cor.Mesh.Scale=v3(sc,sc,sc)*5 local cor2 = db2:Clone() cor2.Mesh.Scale = cor.Mesh.Scale*1.55 qi({"Fire",cor,Color=bc('Navy blue').Color,SecondaryColor=bc('Navy blue').Color,Size=sc*3.5,Heat=0})
cor.Transparency = 0.05 cor.Anchored = true cor2.Anchored = true cor2.Transparency = 0.4 cor.Parent = su cor2.Parent = cor cor.CFrame = pos
local corms = cor.Mesh.Scale local cor2ms = cor2.Mesh.Scale for i=1,tyms do local lolvt = {-2*sc,2*sc}
local lolv3 = v3(0,0,0) local lolrn = rn(1,3) if lolrn == 1 then lolv3=v3(lolvt[rn(1,2)],0,0) elseif lolrn == 2 then lolv3=v3(0,lolvt[rn(1,2)],0) elseif lolrn == 3 then lolv3=v3(0,0,lolvt[rn(1,2)]) end cor.Mesh.Scale=corms+lolv3 cor2.Mesh.Scale=cor2ms+lolv3
cor.CFrame = pos*cn(0,0,-spid*i)
local bhit,bpos=ray(cor.Position,cor.Position - (cor.CFrame *cn(0,0,1)).p)
if bhit and (bpos - cor.Position).magnitude < (spid*1.1) then break end
cor.CFrame=cor.CFrame*ca(rd(rn(-360,360)),rd(rn(-360,360)),rd(rn(-360,360))) cor2.CFrame = cor.CFrame 
local lolpos = FindGround(cor.CFrame) if lolpos and i%rn(2,3)==0 then GlowMesh(false,Decs.Crown,t,v3(2.6*sc,0.8*sc,2.6*sc),'Navy blue',cn(lolpos.p+v3(0,0.15*sc,0)),0.1,1,0.05) end
wait() end cor.Fire:Remove()
q(function() 
local n1 = pa(su,"","Block",0,0,0,true,true,0.3,0,"Magenta") qi({"SpecialMesh",n1,Scale=v3(3.5,3.5,8),MeshType="FileMesh",MeshId=Decs.Chakram})
local n2 = n1:Clone() n2.Parent = su n1.CFrame = cor.CFrame*ca(0,rd(-45),0) n2.CFrame = cor.CFrame*ca(0,rd(45),0) 
for i=1,8 do n1.Mesh.Scale = n1.Mesh.Scale+v3(0.3*sc,0.3*sc,0.35*sc) n2.Mesh.Scale = n1.Mesh.Scale cor.Transparency = cor.Transparency + 0.12 n1.Transparency = cor.Transparency n2.Transparency = n1.Transparency cor2.Transparency = cor2.Transparency + 0.1 cor.Mesh.Scale = cor.Mesh.Scale+v3(2.3*sc,2.3*sc,2.3*sc) cor2.Mesh.Scale = cor.Mesh.Scale*1.55 wait() end n1:Remove() n2:Remove() cor:Remove() cor2:Remove() end)
local rr = sc GetRegion(cor.Position-v3(rr,rr,rr),cor.Position+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(cor.Position,v.Torso.Position+v3(0,2,0)).lookVector*60}) Dmgz(false,v.Humanoid,rn(d[1],d[2])*dmgmul,v.Torso) wait(0.12) bpp:Remove() end)
end) end 
function FistBoom(pos,sc,dmg,TYMZEH) q(function()
local rip = pa(su,"","Block",1,1,1,false,true,0.2,0,"Magenta") local ripm = qi({"SpecialMesh",rip,MeshType="Sphere"})
rip.CFrame = pos*cn(-4*sc/2,4*sc/2,0)*ca(0,0,rd(45))
for i=1,3.5,0.5 do rip.Size=v3(1,i*2,1) rip.CFrame = pos*cn((-4+i)*sc,(4-i)*sc,0)*ca(0,0,rd(45)) wait() end
for i=1,3.5,0.25 do rip.Size=v3(i*2,7,1) rip.CFrame = pos*ca(0,0,rd(45)) wait() end
local fis = pa(su,"","Block",0,0,0,false,true,0.2,0,"Magenta") local fism = qi({"SpecialMesh",fis,Scale=v3(8*sc,8*sc,8*sc),MeshType="FileMesh",MeshId=Decs.Fist})
for i=0.5,5.5,1 do fism.Scale = v3(8*sc,((8*sc)/5.5)*i,8*sc) fis.CFrame = pos*cn(0,0,-i*sc)*ca(rd(-90),rd(-90),0) wait() end 
fism.Scale = fism.Scale+v3(1*sc,1*sc,1*sc) fis.CFrame = pos*cn(0,5*sc,-5*sc)*ca(rd(45),0,0)*ca(rd(-90),rd(-90),0) rip.CFrame=pos*ca(rd(45),0,0) qi({"Fire",fis,Heat=-25,Size=15,Color=bc('Navy blue').Color,SecondaryColor=bc('Navy blue').Color})
local arm = pa(su,"","Block",1,1,1,false,true,0.2,0,"Magenta") local armm = it('CylinderMesh',arm)
arm.CFrame = cn(rip.Position,fis.CFrame*cn(0,-5.5,0).p)*cn(0,0,-(rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude/2-0.5)*ca(rd(90),0,0) armm.Scale = v3(4*sc,(rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude+1,4*sc)
for i=1,7 do fis.CFrame=fis.CFrame*cn(0,TYMZEH/7,0) 
arm.CFrame = cn(rip.Position,fis.CFrame*cn(0,-5.5,0).p)*cn(0,0,-(rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude/2-0.5)*ca(rd(90),0,0) armm.Scale = v3(4*sc,(rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude+1,4*sc)
wait() end local armag = (rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude+1
for x=45,0,-5 do 
rip.CFrame = pos*ca(rd(x+180),0,0) fis.CFrame=rip.CFrame*cn(0,0,(armag-1)+(5.5*sc))*ca(rd(90),rd(-90),0)
arm.CFrame = rip.CFrame*cn(0,0,((armag-1)/2)+0.5)*ca(rd(90),0,0)
wait()
end
q(function() local cfz = {rip.CFrame,arm.CFrame,fis.CFrame} for i=1,15 do local lolv3=v3(rn(-1*sc,1*sc),rn(-1*sc,1*sc),rn(-1*sc,1*sc)) rip.CFrame=cfz[1]+lolv3 fis.CFrame=cfz[3]+lolv3 arm.CFrame=cfz[2]+lolv3 wait() end
for i=armag,0,-armag/15 do armm.Scale =v3(4,i,4) fis.CFrame=rip.CFrame*cn(0,0,(i)+(5.5*sc))*ca(rd(90),rd(-90),0) arm.CFrame = rip.CFrame*cn(0,0,((i-1)/2)+0.5)*ca(rd(90),0,0) wait() end arm:Remove()
for i=5.5,0.5,-1 do fism.Scale = v3(8*sc,((8*sc)/5.5)*i,8*sc) fis.CFrame = pos*cn(0,0,-i*sc)*ca(rd(-90),rd(-90),0) wait() end fis:Remove()
for i=0.2,1,0.1 do ripm.Scale = ripm.Scale+v3(0.2*sc,0.2*sc,0.2*sc) rip.Transparency = i wait() end rip:Remove() end)
local rr = 6.5*sc GetRegion(fis.Position-v3(rr,rr,rr),fis.Position+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(fis.Position-v3(0,1*sc,0),v.Torso.Position+v3(0,2,0)).lookVector*75}) Dmgz(false,v.Humanoid,rn(d[1]*2,d[2]*2.5),v.Torso) wait(0.15) bpp:Remove() end,function(v) ForceBrick(v,fis.Position,100) end)
MakeCrater(fis.Position+v3(0,2,0),5,7,10)
end) end
WormDrill = function(target,sca) q(function() local spiran = rn(-360,360) local slope = {}
for i=90,-270,-10 do table.insert(slope,cn(target.p)*ca(0,rd(spiran),0)*cn(0,0,30*sca)*ca(rd(i),0,0)*cn(0,0,30*sca)) end
local mm = it('Model',su) local tr = 0.15
local worm0 = pa(mm,"","Block",0,60,0,true,true,tr,0,"Magenta") qi({"SpecialMesh",worm0,Scale=v3(9*sca,12*sca,9*sca),MeshType="FileMesh",MeshId="http://www.roblox.com/asset/?id=12137531"})
local worm1 = pa(mm,"","Block",10*sca,6*sca,10*sca,true,true,tr,0,"Magenta") it('CylinderMesh',worm1)
local worm2 = pa(mm,"","Block",9.5*sca,6*sca,9.5*sca,true,true,tr,0,"Magenta") it('CylinderMesh',worm2)
local worm3 = pa(mm,"","Block",9*sca,6*sca,9*sca,true,true,tr,0,"Magenta") it('CylinderMesh',worm3)
local worm4 = pa(mm,"","Block",8.5*sca,6*sca,8.5*sca,true,true,tr,0,"Magenta") it('CylinderMesh',worm4)
local worm5 = pa(mm,"","Block",8*sca,6*sca,8*sca,true,true,tr,0,"Magenta") it('CylinderMesh',worm5)
local worm6 = pa(mm,"","Block",7.2*sca,6*sca,7.2*sca,true,true,tr,0,"Magenta") qi({"SpecialMesh",worm6,Scale=v3(4*sca,18.5*sca,4*sca),MeshType="FileMesh",MeshId="http://www.roblox.com/asset/?id=1033714"})
for i=1,#slope-6 do if i+6 == 10 then MakeCrater(slope[i+6].p+v3(0,10,0),13,9,20) end if i+5 == 27 then local rr = 8*sca GetRegion(slope[i+5].p-v3(rr,rr,rr),slope[i+5].p+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(slope[i+5].p,v.Torso.Position+v3(0,2,0)).lookVector*120}) Dmgz(false,v.Humanoid,rn(d[1],d[2])*3.5,v.Torso) wait(0.2) bpp:Remove() end,function(v) ForceBrick(v,slope[i+5].p,150) end) MakeCrater(slope[i+5].p+v3(0,10,0),13,9,20) end 
worm0.CFrame = slope[i+6]*ca(rd(160),0,0)*ca(0,rd(0),0)*cn(0,5*sca,0) worm1.CFrame = slope[i+5] worm2.CFrame = slope[i+4] worm3.CFrame = slope[i+3] worm4.CFrame = slope[i+2] worm5.CFrame = slope[i+1] worm6.CFrame = slope*ca(rd(180),0,0)*cn(0,4*sca,0) wait(0.04) end
worm0:Remove() worm1:Remove() worm2:Remove() worm3:Remove() worm4:Remove() worm5:Remove() worm6:Remove() 
end) end
SpawnTornado = function(pos,sc,ski,tyms) q(function()
local tor = pa(su,"","Block",0,0,0,true,true,1,0,"Magenta") qi({"SpecialMesh",tor,Scale=v3(6.4*sc,8*sc,6.5*sc),MeshType="FileMesh",MeshId=Decs.Tornado})
tor.CFrame = pos q(function() for i=1,0.2,-0.1 do tor.Transparency = i wait() end end)
local zz = 0 local tpos = tor.Position 
q(function() while tor.Parent do zz = zz+1
tor.CFrame = pos*cn(0,0,-zz/2.6)*ca(0,rd(zz*5),0)*cn(0,0,zz*ski/30)*ca(0,rd(zz*25),0) wait()
local rr = 7*sc GetRegion(tor.Position-v3(rr,rr,rr),tor.Position+v3(rr,rr,rr),function(v) if v.Torso:findFirstChild("SRP") == nil then local bp = qi({"BodyPosition",v.Torso,Name="SRP",maxForce=v3(1/0,1/0,1/0),position=tor.CFrame*cn(0,0,-11*sc).p}) while tor.Parent do v.Humanoid.PlatformStand=true bp.position=tor.CFrame*cn(0,0,8*sc).p
if rn(1,6) == 2 then v.Humanoid.Sit = true Dmgz(false,v.Humanoid,rn(1,2),v.Torso) end
wait() end bp:Remove() local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(v.Torso.Position,to.Position+v3(0,30,0)).lookVector*135}) wait(0.4) bpp:Remove() wait(2.5) v.Humanoid.PlatformStand = false else end end)
end end)
wait(tyms) tpos = tor.Position local torm = tor.Mesh.Scale tor:Remove() GlowMesh(false,Decs.Tornado,t,torm*3,'Navy blue',cn(tpos),0.2,1,0.05) 
end) end
function CrownSwords(pos) q(function()
local hol = pa(su,"","Block",1,1,1,false,true,0.1,0,"Magenta") qi({"SpecialMesh",hol,MeshType="Sphere"})
hol.CFrame = pos for i=1,6 do hol.Size=v3(1,1,i*5) hol.CFrame=pos*cn(0,0,(5*i)/2) wait() end
for i=1,6 do hol.Size=v3(i*5,1,30) hol.CFrame=pos*cn(0,0,15) wait() end 
local swr = {} for i=1,14 do local swor = pa(su,"","Block",0,0,0,false,true,0.2,0,"Magenta") qi({"SpecialMesh",swor,MeshType="FileMesh",Scale=v3(4,4,4),MeshId=Decs.SplinteredSky,TextureId=Decs.SplinteredSkyT,VertexColor=v3(0,0,0.8)}) ti(swr,swor) end
local swr2 ={} for i=1,8 do local swor = pa(su,"","Block",0,0,0,false,true,0.2,0,"Magenta") qi({"SpecialMesh",swor,MeshType="FileMesh",Scale=v3(4,4,4),MeshId=Decs.SplinteredSky,TextureId=Decs.SplinteredSkyT,VertexColor=v3(0,0,0.8)}) ti(swr2,swor) end
local swor = pa(su,"","Block",0,0,0,false,true,0.2,0,"Magenta") qi({"SpecialMesh",swor,MeshType="FileMesh",Scale=v3(10,14,7.5),MeshId=Decs.SplinteredSky,TextureId=Decs.SplinteredSkyT,VertexColor=v3(0,0,0.8)})
q(function() for i=1,20 do 
swor.CFrame=hol.CFrame*cn(0,(i*3.5)-5.5,0)*ca(rd(90),0,0)
wait() end end)
for i2,v in pairs(swr) do q(function() for i=1,20 do 
v.CFrame=hol.CFrame*ca(0,rd(((360/14)*i2)+i*6),0)*cn(0,(i*0.32)-5.5,10)*ca(rd(-90+(91/20*i)),0,0)
wait() end FireObj(v,cn(v.Position,v.CFrame*cn(0,0,-2).p),ca(0,0,0),8,20,6,function(h) ProjHit1(v,h,1.2) end,8) end) end
for i2,v in pairs(swr2) do q(function() for i=1,20 do 
v.CFrame=hol.CFrame*ca(0,rd(((360/8)*i2)+i*-8),0)*cn(0,(i*1)-5.5,6)*ca(rd(-90+(135/20*i)),0,0)
wait() end FireObj(v,cn(v.Position,v.CFrame*cn(0,0,-2).p),ca(0,0,0),8,20,6,function(h) ProjHit1(v,h,1.2) end,8) end) end for i=1,20 do wait() end local holp = hol.CFrame fade(hol,0.1)
for i=20*3.5,0,-20*3.5/12 do
swor.CFrame = hol.CFrame*cn(0,i-1,0)*ca(rd(90),0,0) GlowMesh(false,Decs.Crown,t,v3(5,10,5),'Navy blue',swor.CFrame*ca(rd(-90),0,0),0.1,1,0.1)
wait() end local rr = 25 GetRegion(holp.p-v3(rr,rr,rr),holp.p+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(holp.p,v.Torso.Position).lookVector*120}) Dmgz(false,v.Humanoid,rn(d[1],d[2])*1.8,v.Torso) wait(0.24) bpp:Remove() end,function(v) ForceBrick(v,holp.p,150) end)
for i=0,7.5,2.5 do GlowMesh(false,Decs.Ring,t,v3(85-i,85-i,60-i),'Navy blue',hol.CFrame*cn(0,3,0)*ca(rd(-90),0,0),0.1,1,0.05) wait(0.1) end
wait(5) fade(swor,0.02)
end) end
function SpawnDeathBlock(pos,rootvel,sc) q(function()
local bl = pa(su,"","Block",9.5*sc,12*sc,4*sc,true,true,0.05,0,"Really black") local rca = ca(rd(rn(-6,6)),rd(rn(-6,6)),rd(rn(-6,6)))
local sk = pa(su,"","Block",0,0,0,false,true,0.05,0,"Really black") qi({"SpecialMesh",sk,Scale=v3(2*sc,2*sc,0.8*sc),MeshType="FileMesh",MeshId=Decs.Skull1})
bl.Touched:connect(function(v) if v.Parent == c or v.Parent == su or v.Parent:findFirstChild("Humanoid") == nil or v.Parent:findFirstChild("Torso") == nil then return end 
GlowMesh(false,"Sphere",t,v3(12,12,12),'Navy blue',v.CFrame,0.1,1,0.1)
local bpp = qi({"BodyVelocity",v.Parent.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(rootvel,v.Parent.Torso.Position+v3(0,7.5,0)).lookVector*80}) Dmgz(false,v.Parent.Humanoid,rn(d[1],d[2])*0.2,v.Parent.Torso) wait(0.2) bpp:Remove()
end)
for i=0,1,0.1 do bl.CFrame=pos*cn(0,(-5*sc)+(9*i),0)*rca sk.CFrame=bl.CFrame*cn(0,0,-2.1*sc) wait() end
wait(rn(23,30))
for i,v in pairs({{"Navy blue",v3(30,30,30)},{"Really black",v3(20,20,20)}}) do GlowMesh(false,"Sphere",t,v[2],v[1],bl.CFrame,0.1,1,0.1) end
local rr = 8 GetRegion(bl.Position-v3(rr,rr,rr),bl.Position+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(bl.Position,v.Torso.Position).lookVector*80}) Dmgz(false,v.Humanoid,rn(d[1],d[2])*0.5,v.Torso) wait(0.1) bpp:Remove() end,function(v) ForceBrick(v,holp.p,150) end)
fade(bl,0.1) fade(sk,0.1) 
end) end

---- TUT01LOL
han = pa(su,"","Block",0.4,0.4,0.4,false,false,0,0,"Magenta") it('CylinderMesh',han)
hanw = qi({"Weld",han,Part0=t,Part1=han,C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)})
han2 = pa(su,"","Block",0.35,4,0.35,false,false,0,0,"Black") it('CylinderMesh',han2)
han2w = qi({"Weld",han2,Part0=han,Part1=han2,C0=cn(0,1,0)})
han3 = pa(su,"","Block",0,0,0,false,false,0,0,"Magenta") qi({"SpecialMesh",han3,MeshType="Sphere",Scale=v3(0.4,0.4,0.4)*5})
han3w = qi({"Weld",han2,Part0=han2,Part1=han3,C0=cn(0,-2,0)})
han4 = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",han4,MeshType="Sphere",Scale=v3(0.5,0.7,0.2)*5})
han4w = qi({"Weld",han2,Part0=han3,Part1=han4,C0=ca(0,rd(90),0)})
for i=1,7 do 
des = pa(su,"","Block",0.4,0.2,0.4,false,false,0,0,"Magenta") it('CylinderMesh',des).Scale = v3(1,0.4,1)
desw = qi({"Weld",han,Part0=han2,Part1=des,C0=cn(0,-0.9+(i/3),0)*ca(rd(rn(-15,15)),0,rd(rn(-15,15)))})
end
for i=0,270,90 do 
des = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",des,MeshType="FileMesh",Scale=v3(0.1,0.4,0.1),MeshId=Decs.Spike})
desw = qi({"Weld",han2,Part0=han2,Part1=des,C0=ca(0,rd(i),0)*cn(0,1.8,0.3)*ca(rd(90),0,0)})
end
han5 = pa(su,"","Block",0,0,0,false,false,0,0,"Black") qi({"SpecialMesh",han5,MeshType="Sphere",Scale=v3(0.35,0.6,0.35)*5})
han5w = qi({"Weld",han2,Part0=han2,Part1=han5,C0=cn(0,2,0)})
han6 = pa(su,"","Wedge",0,0,0,false,false,0,0,"Black") qi({"SpecialMesh",han6,MeshType="Wedge",Scale=v3(0.1,1,0.5)*5})
han6w = qi({"Weld",han2,Part0=han2,Part1=han6,C0=cn(0,2.4,0.05)*ca(rd(10),0,0)})
han7 = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",han7,MeshType="FileMesh",Scale=v3(0.75,0.75,2),MeshId=Decs.Ring})
han7w = qi({"Weld",han2,Part0=han2,Part1=han7,C0=cn(0,2.9,0)*ca(0,rd(90),0)})
han8 = pa(su,"","Block",0,0,0,false,false,0.3,0.1,"Magenta") qi({"SpecialMesh",han8,MeshType="Sphere",Scale=v3(0.7,0.7,0.7)*5})
han8w = qi({"Weld",han2,Part0=han2,Part1=han8,C0=cn(0,2.9,0)*ca(0,0,0)})
han9 = pa(su,"","Block",0,0,0,false,false,0,0,"Institutional white") qi({"SpecialMesh",han9,Scale=v3(0.25,1,0.25),MeshType="FileMesh",MeshId = Decs.Chakram3})
han9w = qi({"Weld",han2,Part0=han2,Part1=han9,C0=cn(0,2.9,0)*ca(0,0,rd(90))})
q(function() while true do wait(0.035) han9w.C0 = han9w.C0 *ca(0,rd(10),0) end end)
for i=0,2 do 
des = pa(su,"","Block",0,0,0,false,false,0,0.05,"Really black") qi({"SpecialMesh",des,MeshType="FileMesh",Scale=v3(0.2,1,0.2),MeshId=Decs.Diamond})
desw = qi({"Weld",han2,Part0=han2,Part1=des,C0=cn(0,2.1+(i/2.1),0.6+(i/5))*ca(rd(150-(i*30)),0,0)})
end
des = pa(su,"","Block",0,0,0,false,false,0,0.05,"Really black") qi({"SpecialMesh",des,MeshType="FileMesh",Scale=v3(0.2,1,0.2),MeshId=Decs.Diamond})
desw = qi({"Weld",han2,Part0=han2,Part1=des,C0=cn(0,3.6,0.7)*ca(rd(50),0,0)})
bla = pa(su,"","Wedge",0.2,1,2,false,false,0,0.05,"") qi({"SpecialMesh",bla,Scale=v3(0.56,1,1),MeshType="Wedge"})
blaw = qi({"Weld",han2,Part0=han8,Part1=bla,C0=cn(0,0.5,-1.2)*ca(rd(30),0,0)})
bla2 = pa(su,"","Wedge",0.2,0.7,2,false,false,0,0.05,"") qi({"SpecialMesh",bla2,Scale=v3(0.53,1,1),MeshType="Wedge"})
bla2w = qi({"Weld",han2,Part0=bla,Part1=bla2,C0=cn(0,-0.5,-0.75)*ca(rd(-20),0,0)})
bla3 = pa(su,"","Wedge",0.2,0.4,2,false,false,0,0.05,"") qi({"SpecialMesh",bla3,Scale=v3(0.5,1,1),MeshType="Wedge"})
bla3w = qi({"Weld",han2,Part0=bla2,Part1=bla3,C0=cn(0,-0.5,-0.75)*ca(rd(-20),0,0)})
han10 = pa(su,"","Block",0,0,0,false,false,0,1,"Really black") it('CylinderMesh',han10).Scale = v3(1.2,0.57,1.2)
han10 = qi({"Weld",han2,Part0=bla,Part1=han10,C0=cn(0,-0.37,1.35)*ca(0,0,rd(90))})
han11 = pa(su,"","Block",0.2,0.37,0.7,false,false,0,0,"") it('BlockMesh',han11).Scale = v3(0.48,1,0.9)
han11 = qi({"Weld",han2,Part0=bla,Part1=han11,C0=cn(0,-0.32,1.3)})
--http://www.roblox.com/Knights-of-the-Seventh-Sanctum-Sword-and-Shield-item?id=60357959
raa = c["Right Arm"]
laa = c["Left Arm"]
clawa1 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",clawa1,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike})
clawa1w = qi({"Weld",han2,Part0=laa,Part1=clawa1,C0=ca(rd(180),0,0)*cn(-0.2,1.25,0)})
clawa2 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",clawa2,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike})
clawa2w = qi({"Weld",han2,Part0=laa,Part1=clawa2,C0=ca(rd(180),0,0)*cn(0.2,1.25,0)})
clawb1 = pa(su,"","Block",0,0,0,false,false,0,0.4,"Magenta") qi({"SpecialMesh",clawb1,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike})
clawb1w = qi({"Weld",han2,Part0=clawa1,Part1=clawb1,C0=cn(0,0.15,0)})
clawb2 = pa(su,"","Block",0,0,0,false,false,0,0.4,"Magenta") qi({"SpecialMesh",clawb2,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike})
clawb2w = qi({"Weld",han2,Part0=clawa2,Part1=clawb2,C0=cn(0,0.15,0)})
badge = pa(su,"","Block",0,0,0,false,false,0,0,"Magenta") qi({"SpecialMesh",badge,MeshType="FileMesh",Scale=v3(0.15,1,0.5),MeshId=Decs.Diamond})
badgew = qi({"Weld",han2,Part0=laa,Part1=badge,C0=cn(-0.5,0,0)*ca(rd(25),0,0)})
badge2 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",badge2,MeshType="FileMesh",Scale=v3(0.149,1,0.495),MeshId=Decs.Diamond})
badge2w = qi({"Weld",han2,Part0=badge,Part1=badge2})
ef = pa(su,"","Block",0,0,0,false,true,1,0,"Magenta") qi({"SpecialMesh",ef,MeshType="FileMesh",Scale=v3(7,7,4),MeshId=Decs.Chakram2})
--efw = qi({"Weld",han2,Part0=t,Part1=ef,C0=cn(0,-2.9,0)*ca(rd(90),0,0)})
db1 = pa(su,"","Block",0,0,0,false,false,1,0,"Magenta") qi({"SpecialMesh",db1,MeshType="Sphere",Scale=v3(1,1,1)*5})
db1w = qi({"Weld",han2,Part0=laa,Part1=db1,C0=cn(0,-2,0)})
db2 = pa(su,"","Block",0,0,0,false,false,1,0.1,"Magenta") qi({"SpecialMesh",db2,MeshType="Sphere",Scale=v3(1.2,1.2,1.2)*5})
db2w = qi({"Weld",han2,Part0=db1,Part1=db2,C0=cn(0,0,0)})
local ebs = false
function eb(wutarm,aa,siz) if not siz then siz = 1 end q(function() db1.Mesh.Scale=v3(siz,siz,siz)*5 db1w.Part0 = wutarm db1w.C0 = cn(0,-1+(-siz/1.25),0) if not ebs then ebs = true
if aa then db1.Transparency = 0.1 else for i=1,0.1,-0.1 do db1.Transparency = i wait() end end
else
ebs = false if aa then db1.Transparency = 1 else for i=0.1,1,0.1 do db1.Transparency = i wait() end end
end end) end 
local efm = ef.Mesh.Scale
function e(aa) if aa ~= nil then ef.Mesh.Scale=efm*aa else ef.Mesh.Scale=efm end if ef.Transparency < 0.4 then
for i=0.3,1,0.1 do ef.Transparency = i wait() end
else
q(function() for i=1,0.3,-0.1 do ef.Transparency = i wait() end end)
end end 
q(function() while true do if ebs then for i=0.4,0.7,0.025 do local tra = (i+0.15)*(db1.Mesh.Scale.x/4) db2.Transparency =i wait() db2.Mesh.Scale=db1.Mesh.Scale*1.2+v3(tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5)) end 
for i=0.7,0.4,-0.025 do local tra = (i+0.15)*(db1.Mesh.Scale.x/4) db2.Transparency =i db2.Mesh.Scale=db1.Mesh.Scale*1.2+v3(tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5)) wait() end else db2.Transparency = 1 db2.Mesh.Scale = v3(1.2,1.2,1.2)*5 end wait() end end)
q(function() while true do for i=0,1,0.05 do badge.Transparency = i wait() end badge.Transparency = 1 wait(1) for i=1,0,-0.05 do badge.Transparency = i wait() end wait(4) end end)
sho = pa(su,"","Block",0,0,0,false,false,0,0,"Black") qi({"SpecialMesh",sho,Scale=v3(1.1,1.1,1.1)*5,MeshType="Wedge"}) 
show = qi({"Weld",han2,Part0=raa,Part1=sho,C0=cn(0,0.545,0)*ca(rd(180),rd(90),0)})
chak = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",chak,Scale=v3(0.09,0.09,0.24)*5,MeshType="FileMesh",MeshId=Decs.Chakram}) 
chakw = qi({"Weld",han2,Part0=raa,Part1=chak,C0=cn(0.56,0.5,0)*ca(0,rd(-90),0)})
chak2 = pa(su,"","Block",0,0,0,false,false,0.1,0.1,"Magenta") qi({"SpecialMesh",chak2,Scale=v3(0.15,0.15,0.05)*5,MeshType="FileMesh",MeshId=Decs.Chakram2}) 
chak2w = qi({"Weld",han2,Part0=raa,Part1=chak2,C0=cn(0.56,0.5,0)*ca(0,rd(-90),0)})
local efww = 0
q(function() while true do wait() if FindGround(to.CFrame) then efww = efww+25 ef.CFrame = FindGround(to.CFrame)*ca(0,rd(efww),0)*ca(rd(90),0,0) else ef.CFrame=cn(10000,10000,10000) end end end)
q(function() while true do wait(0.035) chak2w.C0 = chak2w.C0*ca(0,0,rd(25)) end end)

---- TUT02LOL
function Act(k,kb)
if kb then
if k == "e" and Anim=="None" then 
Anim = "SpawnSwords" Armz(false) e() eb(raa) fac = true
c2(law,spd,3,-1.5,1,0,30,0,30) c2(tw,spd,3,0,0,0,0,-95,0) c2(hw,spd,3,0,1.5,0,0,95,0) 
c1(raw,spd,3,1,0.5,0,0,0,-80) c2(raw,spd,3,1,0.4,0,0,0,-140) for i=1,5 do SpawnSword(FindGround(to.CFrame*cn(0,-2.75,-0.5+(-i*8)-i)),1+(i/10),15,"Navy blue") wait(0.06) end 
eb(raa) fac = false wait(0.2) e() c2(law,spd,3,-1.5,1,0,0,0,0) c2(hw,spd,3,0,1.5,0,0,0,0) c2(tw,spd,3,0,0,0,0,0,0) c1(raw,spd,3,1.5,1,0,0,0,0) Armz(true) 
Anim = "None" 
elseif k == "q" and Anim=="None" then 
Anim = "GravGrab" Armz(false) e() eb(laa) caw = false
c2(raw,spd,3,1.5,1,0,30,0,20) c2(tw,spd,3,0,0,0,0,95,0) c2(hw,spd,3,0,1.5,0,0,-95,0) 
c1(law,spd,3,-1,0.5,0,0,0,130) SpikeSucker(to.CFrame*cn(0,5,-6),1) eb(laa) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0)
c2(law,spd,3,-1,0.5,0,45,0,90) c2(hw,spd,3,0,1.5,0,0,90,0) c2(tw,spd,3,0,0,0,0,-90,0) c2(hanw,spd,0,-0.1,-2.2,0,0,90,170) 
Trail(bla3,15,0,"Magenta",0.65,cn(0,-0.2,-1)) rayHit(0.6,1,ra,ca(rd(-90),0,0),8,1.3) 
c1(raw,spd,3,1.3,0.5,0,-30,0,-135) wait(0.5) c2(hanw,spd,0,-0.1,-1.1,0,0,0,75)
caw = true c2(hw,spd,3,0,1.5,0,0,0,0) c2(tw,spd,3,0,0,0,0,0,0) c2(law,spd,3,-1.5,1,0,0,0,0) c1(raw,spd,3,1.5,1,0,30,3,20) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0) c1(raw,spd,3,1.5,1,0,0,0,0)
e() Anim = "None" Armz(true) 
elseif k == "z" and Anim=="None" then
Anim = "Blackspace" Armz(false) Legz(false) caw = false
c2(raw,spd,3,1.5,1,0,20,0,-20) c2(law,spd,3,-1.5,1,0,20,0,20) c2(rlw,spd,3,0.5,-1,0,20,0,-20) c2(llw,spd,3,-0.5,-1,0,20,0,20) c1(tw,spd*0.5,3,0,7,0,0,0,0) Blackspace(t.CFrame,40,3)
c2(raw,spd,3,1.5,1,0,0,0,0) c2(law,spd,3,-1.5,1,0,0,0,0) c2(rlw,spd,3,0.5,-1,0,0,0,0) c2(llw,spd,3,-0.5,-1,0,0,0,0) c1(tw,spd,3,0,0,0,0,0,0) Anim = "None" Armz(true) Legz(true) caw = true
elseif k == "g" and Anim=="None" then
Anim = "MatterBall" e() Armz(false) fac = true
c2(tw,spd*1.3,3,0,0,0,0,-90,0) c2(hw,spd*1.3,3,0,1.5,0,0,90,0) c1(law,spd*1.3,3,-1,0.5,0,50,0,90-math.deg((to.Position - mouse.hit.p).unit.y))
eb(laa,nil,3) wait(0.3)
c2(tw,spd*1.55,3,0,0,0,0,70,0) c2(hw,spd*1.55,3,0,1.5,0,0,-70,0) c1(law,spd*1.55,3,-1,0.5,0,-20,0,90-math.deg((to.Position - mouse.hit.p).unit.y)) eb(laa,true,2) MatterBall(cn(db1.Position,la.CFrame*cn(0,-20,0).p),3,5,30,1.5)
fac = false c2(tw,spd*1.3,3,0,0,0,0,0,0) c2(hw,spd*1.3,3,0,1.5,0,0,0,0) c1(law,spd*1.3,3,-1.5,1,0,0,0,0) e() Armz(true) wait(0.1) Anim = "None"
elseif k == "r" and Anim=="None" then
Anim = "Block" Armz(false) fac = true
c2(tw,spd,3,0,0,0,0,-65,0) c2(hw,spd,3,0,1.5,0,0,65,0) c1(raw,spd,3,1.5,0.5,0.2,-100,-25,-5) c2(law,spd,3,-1.3,1,0.2,20,0,20)
local spm = chak2.Mesh.Scale for i=1,11,1 do chak2.Reflectance = i/40 chak2.Mesh.Scale = spm*i wait() end
block.Value = true repeat wait(0.4) GlowMesh(true,chak2.Mesh.MeshId,chak2,chak2.Mesh.Scale*1.5,'Magenta',cn(0,0,0),chak2.Transparency,1,0.025) until not ky[k] for i=11,1,-1 do chak2.Reflectance = i/40 chak2.Mesh.Scale = spm*i wait() end chak2.Reflectance = 0
block.Value = false c2(tw,spd*1.3,3,0,0,0,0,0,0) c2(hw,spd*1.3,3,0,1.5,0,0,0,0) c2(law,spd*1.3,3,-1.5,1,0,0,0,0) c1(raw,spd*1.3,3,1.5,1,0,0,0,0) Armz(true) fac = false Anim = "None"
elseif k == "v" and Anim=="None" then 
Anim = "RakeFist" Armz(false) fac = true 
c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0)
if (to.Position - mouse.hit.p).magnitude < 125 then c2(hanw,spd*1.5,0,-0.1,-1.2,0,0,-30,100) c1(raw,spd*1.5,3,1.5,0.5,0,-135,-60,0) wait(0.2) FistBoom(cn(to.CFrame*cn(-1.5,1.5,-4).p,to.CFrame*cn(-1.5,1.5,-5).p),1,rn(d[1]*2,d[2]*2),(to.Position-v3(mouse.hit.p.x,to.Position.y,mouse.hit.p.z)).magnitude-10) fac = false c1(raw,spd,3,1,0.5,0,-50,70,0) end fac = false
wait(0.2) c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0.5,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)
c1(raw,spd*0.8,3,1.5,1,0,0,0,0) Armz(true) Anim = "None"
elseif k=="h" and Anim=="None" then 
Anim = "Worm" Armz(false) e(3) fac = true caw = false
c2(tw,spd,3,0,0,0,0,-90,0) c2(hw,spd,3,0,1.5,0,0,90,0) c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0)
c2(hanw,spd,0,-0.1,-1.5,0,0,0,180) c1(raw,spd,3,1,0.5,0,-180,0,-30) c1(raw,spd,3,1,0.5,0,0,0,-90) 
local tpos = mouse.hit.p if (tpos - bla2.Position).magnitude < 350 then q(function() local to = pa(su,"","Block",2,1,2,false,true,0.1,0,"Magenta") it('CylinderMesh',to) local to2 = pa(su,"","Block",0,0,0,false,true,0.1,0,"Magenta") qi({"SpecialMesh",to2,Scale=v3(2,2,2),MeshType="FileMesh",MeshId=Decs.Totem})
for i=1,5,0.5 do to.Size=v3(2,i,2) to.CFrame=cn(tpos+v3(0,i/2,0)) to2.CFrame = to.CFrame*cn(0,(i/2)+1,0) wait() end wait(3.5) for i=0.2,1,0.1 do to.Transparency = i to2.Transparency = i wait() end to:Remove() to2:Remove() end) 
for i=1,8 do Lightning(bla2.Position,tpos,math.floor((bla2.Position-tpos).magnitude/18)+1,1.5,"Magenta",0.3,0) wait(0.04) end fac = false
caw = true q(function() wait(1) WormDrill(cn(tpos),rn(25,30)/10) end) c1(law,spd,3,-1.5,0.25,0,0,0,180) q(function() local to = pa(su,"","Block",1.5,1.5,1.5,false,true,0.1,0,"Magenta") qi({"SpecialMesh",to,MeshType="Sphere"}) for i=1,15,1 do to.Size=v3(1.5,i*2,1.5) to.CFrame=la.CFrame*cn(0,-2+(-i),0) wait() end GlowMesh(false,"Sphere",t,v3(35,35,35),'Navy blue',la.CFrame*cn(0,-32,0),0.1,1,0.1) fade(to,0.1) end)
end fac = false caw = true c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)
c2(tw,spd,3,0,0,0,0,0,0) c2(hw,spd,3,0,1.5,0,0,0,0) c2(law,spd*0.8,3,-1.5,1,0,0,0,0) c1(raw,spd*0.8,3,1.5,1,0,0,0,0) Armz(true) e(3) Anim = "None"
elseif k == "y" and Anim == "None" then 
Anim = "Whirlwind" Armz(false) e() fac = true 
c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0)
c2(hanw,spd,0,-0.1,-1.2,0,0,0,90) c2(hanw,spd,1,0,0,0,0,0,0) c1(raw,spd,3,1,0.5,0,-180,0,0) wait(0.1) 
local to = pa(su,"","Block",0,0,0,false,false,0.2,0,"Magenta") it('CylinderMesh',to).Scale=v3(9,0.2,9)*5 local tom = qi({"Weld",to,Part0=ra,Part1=to})
q(function() for i=1,40 do if i == 20 then for hax=-50,50,25 do SpawnTornado(t.CFrame*cn(0,3,0)*ca(0,rd(hax),0),1,1.2,6) end end tom.C0 = cn(0,-2.3,0)*ca(rd(rn(-8,8)),0,rd(rn(-8,8))) wait() end fade(to,0.1) end) c1(hanw,spd*0.3,1,0,0,0,360*5,0,0) cleanweld(hanw,"a1") 
c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)
c1(raw,spd,3,1.5,1,0,0,0,0) Armz(true) e() fac = false Anim ="None"
elseif k == "n" and Anim=="None" then
Anim = "CrownSwords" Armz(false) Legz(false) e() caw = false c2(tw,spd,3,0,5,2,-20,0,0) c2(llw,spd,3,-0.5,-1,0,20,0,20) c2(rlw,spd,3,0.5,-1,0,20,0,-20) 
c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0)
c2(hanw,spd,0,-0.1,-1.2,0,40,0,205) c2(hanw,spd,1,0,0,0,0,-180,0) c2(raw,spd,3,1,0.5,-0.5,-135,-25,0) c1(law,spd,3,-1,0.5,-0.5,-135,25,0) wait(0.15)
c2(raw,spd,3,1,0.5,-0.5,-70,-25,0) c2(law,spd,3,-1,0.5,-0.5,-70,25,0) c1(tw,spd,3,0,0,0,30,0,0) wait(0.2) GlowMesh(false,"Sphere",t,v3(9,15,12),'Navy blue',to.CFrame,0.1,1,0.05) CrownSwords(to.CFrame*cn(0,-2.5,-3)) to.CFrame = to.CFrame*cn(0,0,30) GlowMesh(false,"Sphere",t,v3(9,15,12),'Navy blue',to.CFrame,0.1,1,0.05)
wait(0.2) e() c2(tw,spd,3,0,0,0,0,0,0) c2(llw,spd,3,-0.5,-1,0,0,0,0) c2(rlw,spd,3,0.5,-1,0,0,0,0) c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)
c1(law,spd,3,-1.5,1,0,0,0,0) c1(raw,spd,3,1.5,1,0,0,0,0) Legz(true) Armz(true) caw = true Anim ="None"
elseif k == "b" and Anim=="None" then
Anim = "DeathWall" Armz(false) e() caw = false 
c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0)
c2(hanw,spd,0,-0.1,-1.2,0,40,0,190) c2(hanw,spd,1,0,0,0,0,-180,0) c2(raw,spd,3,1,0.5,-0.5,-135,-25,0) c1(law,spd,3,-1,0.5,-0.5,-135,25,0) wait(0.15)
c2(raw,spd*1.4,3,1,0.5,-0.5,-45,-25,0) c1(law,spd*1.4,3,-1,0.5,-0.5,-45,25,0) GlowMesh(false,"Sphere",t,v3(15,1,15),'Navy blue',to.CFrame*cn(0,-2.8,-5.5),0.1,1,0.03)
wait(0.2) for i=0,300,60 do SpawnDeathBlock(to.CFrame*ca(0,rd(i),0)*cn(0,-2.8,-10),to.Position,1) wait() end
wait(0.2) e() c2(tw,spd,3,0,0,0,0,0,0) c2(llw,spd,3,-0.5,-1,0,0,0,0) c2(rlw,spd,3,0.5,-1,0,0,0,0) c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)
c1(law,spd,3,-1.5,1,0,0,0,0) c1(raw,spd,3,1.5,1,0,0,0,0) Armz(true) caw = true Anim ="None"
elseif k == "f" and Anim=="None" then
Anim = "RapidKick" Legz(false)
c1(tw,spd,3,0,-0.5,0,-90,0,90) local lo = {-1,-1.6} local ty = 0 ws(25)
c1(tw,0.013,3,0,-0.5,0,-90,0,90+(360*5),function() ty=ty+1 local tz = 35 if lo[1] == -1 then lo = {-1.6,-1} else lo = {-1,-1.6} end
c2(llw,1,3,-0.5,lo[1],0,rn(-tz,tz),0,rn(-tz,tz))
c2(rlw,1,3,0.5,lo[2],0,rn(-tz,tz),0,rn(-tz,tz))
local tst = ll if rn(1,2) == 1 then tst = rl end 
local das = pa(su,"","Block",1.5,2.5,1.5,false,true,0.1,0,"Magenta") qi({"SpecialMesh",das,MeshType="Sphere"})
das.CFrame=tst.CFrame*cn(0,-4,0) fade(das,0.2)
if ty%3== 0 then hu:MoveTo(to.CFrame*cn(0,0,-5).p,to) local rr = 2 GetRegion(to.CFrame*cn(0,0,-3).p-v3(rr,rr,rr),to.CFrame*cn(0,0,-3).p+v3(rr,rr,rr),function(v) Dmgz(false,v.Humanoid,rn(d[1],d[2])*0.2,v.Torso) end) end
if ty%6==0 then GlowMesh(false,Decs.Crown,t,v3(3,6,3),'Navy blue',to.CFrame*cn(0,0,3)*ca(rd(90),0,0),0.1,1,0.05) end
end) ws(16)
c2(llw,1,3,-0.5,-1,0,0,0,0) c2(rlw,1,3,0.5,-1,0,0,0,0) c1(tw,spd,3,0,0,0,0,0,360*5) cleanweld(tw,"a1") Legz(true) Anim="None" 
end
else
if k == "q" then

end -- q end
end -- bool end
end -- func end
local pla = pa(su,"","Block",7,1,7,true,true,1,0,"Magenta")
function ButtonDown() if Anim~="None" then return end 
to.Velocity=v3(0,0,0) if hu.Jump then GlowMesh(false,"Sphere",t,v3(8,2,8),'Magenta',to.CFrame*cn(0,-2,0),0.1,1,0.05) GlowMesh(false,Decs.Crown,t,v3(5,3,5),'Magenta',to.CFrame*cn(0,-1.5,0)*ca(rd(180),0,0),0.1,1,0.05) to.CFrame=to.CFrame*cn(0,20,0) 
hu.Jump=false GlowMesh(false,"Sphere",t,v3(8,2,8),'Navy blue',to.CFrame*cn(0,-4,0),0.1,1,0.05)
else GlowMesh(false,"Sphere",t,v3(8,10,2),'Navy blue',to.CFrame,0.1,1,0.05)
GlowMesh(false,Decs.Crown,t,v3(5,3,5),'Navy blue',to.CFrame*cn(0,0,1)*ca(rd(90),0,0),0.1,1,0.05) to.CFrame=to.CFrame*cn(0,0,-12) GlowMesh(false,"Sphere",t,v3(8,10,2),'Magenta',to.CFrame*cn(0,0,1),0.1,1,0.05) end
pla.CFrame= to.CFrame*cn(0,-3.4,0) local orpos = pla.Position repeat wait(0.5) GlowMesh(false,"Sphere",t,v3(14,1,14),'Navy blue',cn(orpos)*cn(0,0.5,0),0.1,1,0.02) until pla.Position~=orpos or (pla.Position-to.Position).magnitude>10
to.Velocity=v3(0,0,0)
end
pl.Chatted:connect(function(ms) local m = ms:lower() if su.Parent == nil then return end 
if m=="tkon" then tk = true
elseif m=="tkoff" then tk = false 
elseif m == "rake!" and Anim=="None" then Anim = "Special"
for i=1,8 do FistBoom(to.CFrame*ca(0,rd((360/8)*i),0)*cn(0,3,-6),1.5,rn(d[1]*2,d[2]*2),15) end wait(2) Anim="None"
elseif m == "aerial!" and Anim=="None" then Anim = "Special" 
for i=1,10 do SpawnTornado(t.CFrame*cn(0,3,0)*ca(0,rd((360/10)*i),0)*cn(0,0,-2.5),1.5,1.5,8) end Anim = "None"
elseif m == "blast!" and Anim=="None" then Anim = "Special" 
for i=1,10 do MatterBall(to.CFrame*ca(0,rd((360/10)*i),0)*cn(0,1.5,-2.5),6,5,30,1.5) end Anim = "None" 
elseif m:sub(1,2) == "s/" then q(function() loadstring(ms:sub(3))() end) 
end end)
bin = it("HopperBin",bp) --bin = it("Tool") it("Part",bin).Name = "Handle"
bin.Name = sn
---- TUT03LOL
bin.Selected:connect(function(mouse2) mouse = mouse2 
mouse.KeyDown:connect(function(k) ky[k:lower()] = true 
Act(k:lower(),true) end)
mouse.KeyUp:connect(function(k) ky[k:lower()] = false 
Act(k:lower(),false) end)
mouse.Button1Down:connect(function() ButtonDown() end)
end)
---- TUT04LOL
bin.Deselected:connect(function() 
end)
--bin.Parent = c
fac = false local bgg = it('BodyGyro',to)
---- TUT05LOL
q(function() while wait() do 
if caw then hu.WalkSpeed = wss else hu.WalkSpeed = 0 end 
if fac then bgg.maxTorque = v3(1/0,1/0,1/0) bgg.D = 50 bgg.cframe = cn(to.Position,v3(mouse.hit.p.x,to.Position.y,mouse.hit.p.z)) else bgg.maxTorque = v3(0,0,0) end
end end)
--lego