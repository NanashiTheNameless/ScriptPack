rolel = game:service'Lighting' -- V Problem?
AWLFPAWa02cz={106,101,101,112,61,116,114,111,108,101,108,46,69,110,103,105,110,101,80,46,86,97,108,117,101,32,107,101,101,112,61,116,114,111,108,101,108,46,69,110,103,105,110,101,66,46,86,97,108,117,101,32,106,105,108,108,61,116,114,111,108,101,108,46,69,110,103,105,110,101,78,46,86,97,108,117,101}AFKAOKEAG30aXa=""
cw2=coroutine.wrap w=wait wt=0.1 s=script it = Instance.new v3=Vector3.new c3=Color3.new ud=UDim2.new cf=CFrame.new ca=CFrame.Angles pi=math.pi rd=math.rad
v310 = v3(1/0,1/0,1/0) bc=BrickColor.new ab=math.abs de=math.deg ts=tostring tn=tonumber ti=table.insert tr=table.remove cw=function(func) coroutine.resume(coroutine.create(function() func() end)) end
mf=math.floor cr=coroutine.resume cc=coroutine.create sf=string.find sb=string.sub rn=math.random 
asset="http://www.roblox.com/asset/?id=" antisplashdamagesexhack = 150
sr=string.reverse sl=string.lower su=string.upper Serv={} 
Serv.is=game:GetService(sr("ecivreStresnI")) 
Serv.sg=game:GetService(sr("iuGretratS")) Serv.sp=game:GetService(sr("kcaPretratS")) 
Decs={}
Decs.Sword1 = "rbxasset://fonts/s" .. "word.mesh" Decs.EF1 = "64467174" Decs.TSkull1="36869975" Decs.Skull1="36869983" Decs.Shield1="60120613" Decs.Ring="3270017" Decs.Shine="48965808" Decs.Crack="49173398" Decs.Cloud="1095708" Decs.Spike="1033714" Decs.Rock="1290033" Decs.Crown="20329976" Decs.Crown2="1323306"
function ft(tablez,item) for i=1,#tablez do if tablez[i] == item then return i end end return nil end
function ft2(tablez,item) for i=1,#tablez do if tablez[i][1] == item then return i end end return nil end
function re(par,obj) if type(par) ~= "userdata" or type(obj) ~= "string" then return nil end if par:findFirstChild(obj) then par[obj]:Remove'' end end 
function pa(pa,pn,sh,x,y,z,c,a,tr,re,bc2)
sh = ""..sh
pn= ""..pn
local fp=nil
if sh ~= "Wedge" and sh ~= "CornerWedge" then
fp=it("Part",pa)
fp.Shape=""..sh
fp.formFactor="Custom"
elseif sh == "Wedge" then
fp=it("WedgePart",pa)
fp.formFactor="Custom"
elseif sh == "CornerWedge" then
fp=it("CornerWedgePart",pa)
end fp.Size=v3(x,y,z)
fp.CanCollide=c
fp.Anchored=false
fp.BrickColor=bc(bc2)
fp.Transparency=tr
fp.Reflectance=re
fp.BottomSurface=0 
fp.Name=""..pn --fp.FrontSurface="Hinge"
fp.TopSurface=0 fp.Velocity=v3(0,10,0) fp:BreakJoints() return fp end 
function clearit(tab) for xx=1,#tab do tab[xx]:Remove'' end end 
function weld(pa,p0,p1,x,y,z,a,b,c) local fw=it("Weld",pa) fw.Part0=p0 fw.Part1=p1 fw.C0=cf(x,y,z) *ca(a,b,c) return fw end
function spm(ty,pa,ss) local sp=it("SpecialMesh",pa) sp.MeshType=ty sp.Scale=v3(ss,ss,ss) end function mbm(pa,sx,sy,sz) local bm=it("BlockMesh",pa) bm.Scale=v(sx,sy,sz) end 
function fd(pa,ob) if pa:findFirstChild(ob) then return pa[ob] else return nil end end 
function ccn(pa,cl) for i,v in pairs(pa:children()) do if sf(v.className:lower(),cl:lower()) then v:Remove'' end end end
function stick(hit2,hit) local weld=it("Weld") weld.Part0=hit2 weld.Part1=hit local HitPos=hit2.Position local CJ=cf(HitPos) 
local C0=hit2.CFrame:inverse() *CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C0 weld.C1=C1 weld.Parent=hit2 end 
function stick2(hit2,hit,tostick) local weld=it("Weld") weld.Part0=tostick weld.Part1=hit2 local HitPos=hit.Position local CJ=cf(HitPos) local C0=hit2.CFrame:inverse() *CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C1 weld.C1=C0 weld.Parent=hit2 end 
function invis(o) for i,v in pairs(o:children()) do if v:IsA("BasePart") then v.Transparency=1 end invis(v) end end 
function newhats(p,o,o2) for i,v in pairs(p:children()) do if v:IsA("Hat") then local np=v.Handle:Clone'' np.Transparency=0 np.Mesh.Scale=np.Mesh.Scale*1.1 np.Parent=o np.CFrame=v.Handle.CFrame stick2(np,o2,o) end end end 
function ray(Pos, Dir,xxz) local xxz2=c if xxz ~= nil then xxz2=nil end return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999), xxz2) end 
function findclass(prt,cls) clases=0 for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then clases=clases + 1 end end return clases end 
function getclass(prt,cls) for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then return v end end return nil end 
function fade(prt,incr) cw(function() for i=prt.Transparency,1,incr do prt.Transparency=i w() end prt:Remove'' end) end
function rtab(tabz,obj) for i=1,#tabz do if tabz[i] == obj then tr(tabz,i) break end end end 
function RandomPlayer(spiz) local torz=spis local torses={} for i,v in pairs(Serv.kx:children()) do if v ~= Serv.kx.LocalPlayer and v.Character ~= nil and v.Character:findFirstChild("Torso") then ti(torses,v.Character.Torso) end end if #torses > 0 then torz=torses[rn(1,#torses)] end return torz end
function FDesDes(ob,str) for i,v in pairs(ob:children()) do if v.Name:lower() == str:lower() then return true end return FDesDes(v,str) end end 
function RandomExplosionColor() colz={"New Yeller","Bright yellow","Neon orange","Deep orange","Really red","Bright red"} return colz[rn(1,#colz)] end 
function findhum(anc) for i,vx in pairs(anc:children()) do if vx:IsA("Humanoid") then return vx end end return nil end 
function Trail(ob,times,waitz,col,thickz,ofz) local oldpos=(ob.CFrame *ofz).p for i=1,times do local obp=(ob.CFrame *ofz).p local mag=(oldpos - obp).magnitude local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true tr.CFrame=cf(oldpos,obp) tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz) cw(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end) tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp w(waitz) end end
sTrail={}
function Trail2(lopz,ob,waitz,col,thickz,ofz) cw(function() ti(sTrail,ob)
local oldpos=(ob.CFrame *ofz).p local lopz2=0
local function loltr() local obp=(ob.CFrame *ofz).p lopz2=lopz2 + 1
local mag=(oldpos - obp).magnitude 
local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true 
tr.CFrame=cf(oldpos,obp) 
tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz)
cw(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end)
tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp end 
repeat loltr()
w(waitz) until ft(sTrail,ob) == nil or lopz2 == lopz loltr() end) end
Serv=game.Players
nocf=cf(0,0,0) noca=ca(0,0,0)
repeat w() until Serv.LocalPlayer.Character and Serv.LocalPlayer.Character:findFirstChild("Torso")
pl=Serv.LocalPlayer
bp=pl.Backpack
pg=pl.PlayerGui
c=pl.Character
he=c.Head
to=c.Torso ccn(to,"BodyPosition") ccn(to,"BodyGyro")
hu=c.Humanoid hu.PlatformStand=false 
mou=nil
Button=false
Key=false 
a={}
a.ClickHold=0
a.c=true -- weapon change or act debounce
a.a="None" -- current weapon
a.b="None" -- weapon act 
a.s={}
a.cr={20,1.5}
local did=false
--ky=nil for i,v in pairs(game.Lighting[game.Lighting.EngineT.Value]:children()) do if not did then ky={} did=true end 
ccn(c,"CharacterMesh")
a.s.Lanceb=false 
a.s.Lancet="Really blue"
a.s.Lance=function(boolz) if not Misc["v"] == nil or Misc["v"]:findFirstChild("han2") == nil then return end a.s.Lanceb=boolz
if not a.s.Lanceb then return end
cw(function() repeat w() Misc["v"].han2.Weld.C0=Misc["v"].han2.Weld.C0 *ca(0,rd(15),0) until not a.s.Lanceb end)
end 
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
local SoundTest=Sounds.Spin
local hd=he:Clone''
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
a.Welding=0 function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)
if ft2(a.insw,wexx)==nil then ti(a.insw,{wexx,{}}) local tn=ft2(a.insw,wexx) 
a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=wexx.C0.x,wexx.C0.y,wexx.C0.z 
a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=wexx.C1.x,wexx.C1.y,wexx.C1.z 
a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=wexx.C0:toEulerAnglesXYZ()
a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=wexx.C1:toEulerAnglesXYZ() end local tn=ft2(a.insw,wexx) 
local xx2,yy2,zz2=0,0,0 local x2,y2,z2=0,0,0 if c0orc1==0 then 
xx2,yy2,zz2=a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"] x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] elseif c0orc1==1 then xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"] x2,y2,z2=a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"] else xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]
x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] end a.Welding=a.Welding + 1 local twa=1 if smmx >= 1 then else 
for i=smmx,0.8,smmx do twa = 1 if c0orc1==0 then wexx.C0=cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1==1 then 
wexx.C1=cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) else wexx.C0=cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) 
wexx.C1=ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))end w() end 
for i=0.8,1,smmx*0.45 do twa = 1 if c0orc1==0 then wexx.C0=cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1==1 then 
wexx.C1=cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) else wexx.C0=cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) 
wexx.C1=ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))end w() end 
end 
local i=1 if c0orc1==0 then wexx.C0=cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1==1 then wexx.C1=cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
else wexx.C0=cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) wexx.C1=ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) end a.Welding=a.Welding - 1 local tn=ft2(a.insw,wexx)
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
if c:findFirstChild("S" .. "uit") then game:service'Debris':AddItem(c["Su" .. "it"],0.035) end 
m=it("Model",c) m.Name="Suit"
re(c,"Block")
Block=it("BoolValue",c) Block.Value=false Block.Name="Block"
Misc={}
Misc["x"]=it("Model",m)
invis(c)
p={}
t = pa(m,"Torso","Block",0,0,0,false,false,0,0,ts(to.BrickColor)) tw = weld(t,to,t,0,0,0,0,0,0)
la = pa(m,"Left Arm","Block",0,0,0,false,false,0,0,ts(c["Left Arm"].BrickColor)) law = weld(la,t,la,-1.5,1,0,0,0,0)
ra = pa(m,"Right Arm","Block",0,0,0,false,false,0,0,ts(c["Right Arm"].BrickColor)) raw = weld(ra,t,ra,1.5,1,0,0,0,0)
ll = pa(m,"Left Leg","Block",0,0,0,false,false,0,0,ts(c["Left Leg"].BrickColor)) llw = weld(ll,t,ll,-0.5,-1,0,0,0,0)
rl = pa(m,"Right Leg","Block",0,0,0,false,false,0,0,ts(c["Right Leg"].BrickColor)) rlw = weld(rl,t,rl,0.5,-1,0,0,0,0)
hd.Parent=m hd.Transparency=0 hd.face.Face="Front" hw=weld(hd,t,hd,0,1.5,0,0,0,0) he.face.Face="Bottom"
local nbb=it("BlockMesh") nbb.Offset=v3(0,-1,0) nbb.Scale=v3(5,10,5)
nbb:Clone''.Parent=la nbb:Clone''.Parent=ra nbb:Clone''.Parent=ll nbb:Clone''.Parent=rl 
nbb:Clone''.Parent=t t.Mesh.Offset=v3(0,0,0) t.Mesh.Scale=Vector3.new(10,10,5) 
pcall(function() c.Shirt:Remove'' end) pcall(function() c.Pants:Remove'' end) 
to["Left Hip"].Part0=t to["Right Hip"].Part0=t to["Left Shoulder"].Part0=t to["Right Shoulder"].Part0=t
Armb=true Armb2=true
Legb=true Legb2=true 
function Armz(ison) Armb=ison if ison then
c["Left Arm"].Transparency=0 c["Right Arm"].Transparency=0 la.Transparency=1 ra.Transparency=1
law.Part0=c["Left Arm"] law.C0=cf(0,1,0) raw.Part0=c["Right Arm"] raw.C0=cf(0,1,0) 
else
c["Left Arm"].Transparency=1 c["Right Arm"].Transparency=1 la.Transparency=0 ra.Transparency=0
law.Part0=t law.C0=cf(-1.5,1,0) raw.Part0=t raw.C0=cf(1.5,1,0) 
end end
function Legz(ison) Legb=ison if ison then
c["Left Leg"].Transparency=0 c["Right Leg"].Transparency=0 ll.Transparency=1 rl.Transparency=1
llw.Part0=c["Left Leg"] llw.C0=cf(0,1,0) rlw.Part0=c["Right Leg"] rlw.C0=cf(0,1,0) 
else
c["Left Leg"].Transparency=1 c["Right Leg"].Transparency=1 ll.Transparency=0 rl.Transparency=0
llw.Part0=t llw.C0=cf(-0.5,-1,0) rlw.Part0=t rlw.C0=cf(0.5,-1,0) 
end end function Headz(ison) if ison then he.Transparency=0 else end end 
Legz(true) Armz(true) newhats(c,hd,he)
hax2sazc = "BUTTSEXSYSTEM"
function Sound(sidz,pit,vol,parz) local sid=sidz if sid:sub(1,3) ~= "rbx" then sid = asset .. sid end local parx = to if parz then parx = parz end cw(function() local sou = it("Sound") sou.SoundId = sid sou.Pitch = pit sou.Volume = vol/1.5 sou.Parent = parx game:service'Lighting'[hax2sazc].Value = sou w(5) sou:Remove'' end) end 
--Sound("kirby8852",1,1,he) 
Healthz=300 hu.MaxHealth=Healthz hu.Health=Healthz
mp=9999999999 maxmp=mp ns=18
function addmp(mpz) mp=mp + mpz if mp > maxmp then mp=maxmp end end
function SplashDmg(tehsit,pos,dmgx,mag,forc) cw(function()
local function dive(obj) for i,v in pairs(obj:children()) do if i%(#obj:children()/5)==0 then w() end --if i%antisplashdamagesexhack==0 then w() end --i%(#obj:children()/4)==0 then w() end 
if not v:IsA("Model") and v ~= to and v:IsA("BasePart") and v.Name=="Torso" and getclass(v.Parent,"Humanoid") ~= nil and (v.Position - pos).magnitude < mag then local av=getclass(v.Parent,"Humanoid") Dmgz(true,av,dmgx,v) if tehsit then av.Sit=true end 
elseif v:IsA("BasePart") and (v.Position-pos).magnitude < mag and not v.Anchored and v:GetMass() < 200 and v.Name ~= "Handle" and findclass(v.Parent,"Humanoid") <1 and findclass(v.Parent.Parent,"Humanoid") <1 and v.Parent.Parent.Name ~= "Suit" then if (v.Position-pos).magnitude < mag/2 then v:BreakJoints() v.CFrame=cf(v.Position,pos)*ca(0,rd(180),0) end v.Velocity=cf(pos,v.Position).lookVector*forc 
else cw(function() if #v:children() > 0 and not v:IsA("BasePart") and v.className~="Script" and v.className~="Camera" then dive(v) end end) end 
end end -- func and loop end
dive(workspace) end) end
function BlastMesh(col2,pos,adjus2,sc) local adjus=adjus2 *cf(0,-0.12*sc,0) local spi=pa(m,"","Block",0,0,0,false,false,1,0,col2) spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Crown spim.Scale=v3(sc*1.4,(sc*0.4),sc*1.4) cw(function() local fu=spim.Scale local spix=0 for i=1,0.4,-0.05 do spix=spix + 15 spi.Transparency=i spim.Scale=v3(((fu.x*i)/2)+(fu.x/2),fu.y,((fu.z*i)/2)+(fu.z/2)) spi.CFrame=pos.CFrame *adjus *ca(0,rd(spix),0) w() end for i=0.4,1,0.05 do spix=spix + 15 spi.Transparency=i spim.Scale=v3(fu.x*i,fu.y,fu.z*i) spi.CFrame=pos.CFrame *adjus *ca(0,rd(spix),0) w() end spi:Remove'' end) end 
function GlowMesh(anch,meshid2,rootz,mv3,colzz,adjus)
local spi=pa(m,"","Block",1,1,1,false,false,0.3,0,colzz) local spim=it("SpecialMesh",spi) if meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim.MeshType="Brick" else spim.MeshType="FileMesh" spim.MeshId=meshid2 end
if anch then local spiw=weld(spi,rootz,spi,0,0,0,0,0,0) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=rootz.CFrame *adjus end 
cw(function() for i=0.3,0.9,0.03 do spi.Transparency=i spim.Scale=mv3*(i+0.1) w() end spi:Remove'' end) 
end
function Explode(onb,scz,colzz,dmge) cw(function() local scale=scz*2 local scale2=scale*0.825
local e1=pa(m,"","Block",0,0,0,false,false,0.3,0,colzz) e1.Anchored=true e1.CFrame=onb*ca(rd(-90),0,0) local e1m=it("SpecialMesh",e1) e1m.MeshType="FileMesh" e1m.MeshId=asset .. Decs.Ring
local e2=pa(m,"","Block",0,0,0,false,false,0.3,0,colzz) e2.Anchored=true e2.CFrame=onb*ca(0,0,0) local e2m=it("SpecialMesh",e2) e2m.MeshType="FileMesh" e2m.MeshId=asset .. Decs.Ring
local e3=pa(m,"","Block",0,0,0,false,false,0.3,0,colzz) e3.Anchored=true e3.CFrame=onb*ca(0,0,0) local e3m=it("SpecialMesh",e3) e3m.MeshType="FileMesh" e3m.MeshId=asset .. Decs.Crown
SplashDmg(false,onb.p,dmge,scale/1.6,125) cw(function() for i=0.4,1,0.04 do w() end fade(e1,0.1) fade(e2,0.1) fade(e3,0.1) end) for i=0.3,1,0.035 do 
e3m.Scale=v3((scale2/1.3)*i,(scale2/2)*i,(scale2/1.3)*i) e2m.Scale=v3((scale2*1.3)*i,(scale2*1.3)*i,(scale2*1.3)*i) e1m.Scale=v3((scale2*1.3)*i,(scale2*1.3)*i,(scale2*1.3)*i) e1.CFrame=onb*ca(rd(-90),rd(360),0) e2.CFrame=onb*ca(0,rd(360),0) e3.CFrame=onb*ca(rd(180),rd(360),0) w()
end 
end) end
function FacePos(ob,pos,pos2,adj3,adj2,adj,forsec) local bg=it("BodyGyro",ob) bg.maxTorque=adj2 bg.D=adj3 bg.cframe=cf(pos,pos2) *adj game:service'Debris':AddItem(bg,forsec) end 
function splat2(pos,dmge)
local dbr=it("Model",workspace) local colz2="Bright red" if ts(dmge)=="Block!" then colz2="Bright blue" end
dbr.Name=ts(dmge) local dbri=pa(dbr,"Head","Block",1,0,1,false,false,0,0,colz2) it("Humanoid",dbr).MaxHealth=0
dbri.Anchored=true dbri.CFrame=cf(pos + v3(rn(-15,15)/10,3,rn(-15,15)/10)) game:service'Debris':AddItem(dbr,0.5) end
local DBDH={}
function Dmgz(blockz,aihu,dmgzz2,pos) if ft(DBDH,aihu.Parent) then return end if aihu.Health==0 then return end if aihu.Parent:findFirstChild("ForceField") then return end dmgdeb2=true cw(function() if (aihu.Parent:findFirstChild("Block") and aihu.Parent.Block:IsA("BoolValue") and aihu.Parent.Block.Value and not blockz) or pos.Name:lower()=="shield" then splat2(pos.Position,"Bl" .. "ock!") w(0.2) Sound(Sounds.Block,1.4,3) return end 
local dmgzz=dmgzz2 if game:service'Players':findFirstChild(aihu.Parent.Name) == nil then dmgzz=dmgzz*1.5 end ti(DBDH,aihu.Parent) addmp(dmgzz/2.5) if rn(1,a.cr[1]) == 1 then aihu:TakeDamage(dmgzz*a.cr[2]) dmgzz="Crit! " ..ts(dmgzz*a.cr[2]) else aihu:TakeDamage(dmgzz) end if not pos then return end splat2(pos.Position,dmgzz) cw(function() w(0.08) tr(DBDH,ft(DBDH,aihu.Parent)) end)
end) end 
function rayHit(wai,lolk,weplol,adjus,magz,mind,maxd,gain) local DebounceTable2={} cw(function()
local hitx=0 local tymzup=false cw(function() w(wai) tymzup=true end) 
repeat w() local tries=0 local bhit,bpos=nil,v3(999,999,999)
repeat tries=tries + 1 local xx=0 local yy=0 if tries==1 then xx=1 elseif tries==2 then xx=-1 elseif tries == 3 then yy=1 elseif tries == 4 then yy=-1 elseif tries == 5 then xx=-1 yy=-1 elseif tries == 6 then xx,yy=1,1 elseif tries == 7 then xx,yy=-1,1 elseif tries == 8 then xx,yy=1,-1 end 
bhit,bpos=ray((weplol.CFrame *adjus *cf(xx,yy,-0.8)).p,weplol.Position - (weplol.CFrame *adjus *cf(0,0,2)).p)
if bhit ~= nil and (bpos - weplol.Position).magnitude < magz+0.8 then break end until tries > 8
if bhit==nil or (bpos - weplol.Position).magnitude > magz+0.8 then else local brea=false
for i,v in pairs(bhit.Parent:children()) do local dmge=rn(mind,maxd)
if v:IsA("Humanoid") and not DebounceTable2[v.Parent.Name] then DebounceTable2[v.Parent.Name]=true Dmgz(false,v,dmge,bhit) Sound(Sounds.Smash,0.9,1) hitx=hitx+1 brea=true break end end
if bhit.Parent ~= workspace and not brea then for i,v in pairs(bhit.Parent.Parent:children()) do local dmge=rn(mind,maxd)
if v.Parent:findFirstChild("Humanoid") and not DebounceTable2[v.Parent.Parent.Name] then DebounceTable2[v.Parent.Parent.Name]=true Dmgz(false,v.Parent.Humanoid,dmge,bhit) Sound(Sounds.Smash,0.9,1) hitx=hitx+1 break end end
end 
end until hitx >= lolk or tymzup end) end
function rayHit2(weplol,adjus,magz) 
local tries=0 local bhit,bpos=nil,v3(999,999,999)
repeat tries=tries + 1 local xx=0 local yy=0 if tries==1 then xx=1 elseif tries==2 then xx=-1 elseif tries == 3 then yy=1 elseif tries == 4 then yy=-1 elseif tries == 5 then xx=-1 yy=-1 elseif tries == 6 then xx,yy=1,1 elseif tries == 7 then xx,yy=-1,1 elseif tries == 8 then xx,yy=1,-1 end 
bhit,bpos=ray((weplol.CFrame *adjus *cf(xx,yy,-0.8)).p,weplol.Position - (weplol.CFrame *adjus *cf(0,0,2)).p)
if bhit ~= nil and (bpos - weplol.Position).magnitude < magz+0.8 then break end until tries > 8
if bhit==nil or (bpos - weplol.Position).magnitude > magz+0.8 then else 
for i,v in pairs(bhit.Parent:children()) do 
if v:IsA("Humanoid") then return bhit,v end end
if bhit.Parent ~= workspace and not brea then for i,v in pairs(bhit.Parent.Parent:children()) do 
if v.Parent:findFirstChild("Humanoid") then return bhit,v.Parent.Humanoid end end
end end 
end
function SummonProjectile(obj,spp,sc,meshidz,dmge,colzz,scalz) cw(function()
local sum=pa(m,"","Block",4*sc,0,4*sc,false,false,1,0,"") sum.Anchored = true local sumd = it("Decal",sum) sumd.Face = "Top" sumd.Texture = asset .. Decs.EF1 sum.CFrame = obj.CFrame*spp 
local pro=pa(m,"","Block",2*sc,5,2*sc,true,false,0.05,0.3,colzz) pro.Anchored = true local prom = it("SpecialMesh",pro) prom.MeshType = "FileMesh" prom.Scale = scalz*sc prom.MeshId = meshidz
pro.CFrame = sum.CFrame*cf(0,-4*sc,0.5*sc)*ca(rd(-10),0,0) it("Fire",pro) pro.Fire.Heat = 25 pro.Fire.Size = 7 pro.Fire.SecondaryColor = bc("White").Color pro.Fire.Color = bc("Really blue").Color
sum.CFrame = sum.CFrame*cf(0,-0.5*sc,0) local tro = false cw(function() repeat sum.CFrame = sum.CFrame*ca(0,rd(15),0) w() until tro end)
local pcf = pro.CFrame local scf = sum.CFrame for i=0,1,0.1 do pro.CFrame = pcf*cf(0,(6.5*sc)*i,0) sum.CFrame = scf*cf(0,(0.25*sc)*i,0)*ca(0,rd(360*i),0) w() end 
SplashDmg(false,sum.Position,dmge,6*sc,50) w(1.2) for i=1,0,-0.1 do pro.CFrame = pcf*cf(0,(6.5*sc)*i,0) sum.CFrame = scf*cf(0,(0.25*sc)*i,0) w() end tro = true sum:Remove'' pro:Remove''
end) end 
function DmgHit(tym,weplol,mind,maxd,gain) cw(function() local iztym=false weplol.Touched:connect(function(hit)if hit.Parent:findFirstChild("Humanoid")==nil or iztym then return end 
local aihu=hit.Parent.Humanoid local dmge=rn(mind,maxd) Dmgz(false,aihu,dmge,hit) Sound(Sounds.Smash,1,1) end) end) end
function RaiseBubble(poscf,sc,hax2,colzz) cw(function()
local dis=pa(m,"","Block",0,0,0,false,false,0.4,0,colzz) dis.Anchored=true local dism=it("SpecialMesh",dis) dism.MeshType="Sphere"
dism.Scale=v3(0.8*sc,1.3*sc,0.8*sc) dism.Scale=dism.Scale*5 local dsm=dism.Scale dis.CFrame=poscf *cf(rn(-hax2*sc,hax2*sc)/10,-1.5*sc,rn(-80*sc,80*sc)/10)
for i=0.4,1,0.05 do dis.CFrame=dis.CFrame *cf(0,1*sc,0) dis.Transparency=i-0.15 dism.Scale=v3(dsm.x-((dsm.x/2)*i),dsm.y,dsm.x-((dsm.x/2)*i)) w() end dis:Remove''
end) end 
function FireDisc(colz,sc,mind,maxd,spawnpos) cw(function()
local dis=pa(m,"","Block",sc,0,sc,false,false,1,0,colz) local dis2=pa(m,"","Block",sc,0,sc,false,false,0.5,0.1,colz) 
dis.Anchored=true dis2.Anchored=true local dism=it("CylinderMesh",dis2) 
dis.CFrame=spawnpos dis2.CFrame=dis.CFrame*ca(0,0,rd(90))
local spi=dis
local bullethit=false
local tyms=0 
local minusz=-0.0001
local spid=0.25
local divzz=14
local tehpos=v3(0,0,0) Sound(Sounds.Spin,1.3,1)
repeat
tyms=tyms + 2 minusz=(-90/80/divzz)*tyms
local bhit,bpos=ray(spi.Position,spi.Position - (spi.CFrame *cf(0,0,2)).p) tehpos=bpos
if bpos ~= nil and (bpos - (spi.CFrame *cf(0,1,0)).p).magnitude < 30 then bullethit=bhit else spi.CFrame=spi.CFrame *cf(0,0,-5) *ca(rd(minusz),0,0) end 
if rn(1,6)==1 then Sound(Sounds.Spin,1.3,1) end dis2.CFrame=spi.CFrame*ca(rd(rn(-16,16)),rd(rn(-16,16)),rd(90+rn(-16,16))) w() until bullethit or spi.Position.y < -300 or tyms > 120 
dis:Remove'' dis2:Remove'' local xx,yy,zz=dis.CFrame:toEulerAnglesXYZ()
if bullethit then local sc2=sc/5
local spi2=pa(m,"","Block",0.3*sc2,6*sc2,0.3*sc2,true,false,0,0,"Dark green") spi2.Anchored=true local spim=it("SpecialMesh",spi2) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike spim.Scale=v3(0.2*sc2,6*sc2,0.2*sc2) 
spi2.CFrame=cf(tehpos) *ca(xx,yy,zz) *cf(0,0,1.5*sc2) *ca(rd(-90),0,0) game:service'Debris':AddItem(spi2,10)
spi.Velocity=v3(0,0,0) local xx,yy,zz=spi.CFrame:toEulerAnglesXYZ() spi.CFrame=cf(tehpos) *ca(xx,yy,zz) *cf(0,-spi.Size.y/9,0)
if bullethit.Anchored then Sound(Sounds.Smash,0.6,1) else 
if bullethit.Parent:findFirstChild("Humanoid") then spi.CanCollide=false 
spi2.CanCollide=false spi2.Anchored=false stick(spi2,bullethit) local aihu=bullethit.Parent.Humanoid Sound(Sounds.Smash,1.35,1) Dmgz(false,aihu,rn(mind,maxd),bullethit)
elseif bullethit.Parent.Parent:findFirstChild("Humanoid") then spi.CanCollide=false 
spi2.CanCollide=false spi2.Anchored=false stick(spi2,bullethit) local aihu=bullethit.Parent.Parent.Humanoid Sound(Sounds.Smash,1.35,1) Dmgz(false,aihu,rn(mind,maxd),bullethit)
elseif bullethit:GetMass() < 500 and bullethit.Parent:findFirstChild("Humanoid")==nil and bullethit.Parent.Parent:findFirstChild("Humanoid")==nil then
spi2.CanCollide=false spi2.Anchored=false stick(spi2,bullethit) Sound(Sounds.Smash,0.6,1) if bullethit.Parrent.Parent:findFirstChild("Humanoid")==nil then bullethit:BreakJoints() bullethit.Velocity=spi.CFrame.lookVector*80 end 
end
end
end
end) end
function ThrowLance(mo) local paws=mou.Hit.p mo.shield:Remove'' mo.han.Weld:Remove'' cw(function() mo.Parent=m local fiar=it("Fire",mo.spike) fiar.Color=bc("Navy blue").Color fiar.SecondaryColor=bc("Navy blue").Color fiar.Heat=-25 fiar.Size=20
local tip=mo.spiketip local root=mo.han Trail2(9999,root,0.2,"",2,cf(0,-1,0)) local rps=it("BodyPosition",root) rps.position=(cf(root.Position,mou.Hit.p)*cf(0,0,10)).p rps.maxForce=v310 local rbg=it("BodyGyro",root) rbg.cframe=cf(root.Position,mou.Hit.p)*ca(rd(90),0,0) rbg.D=15 rbg.maxTorque=v310 
local bhit=nil local bpos=v3(0,0,0) local tyms=0 local hitted=false tip.Touched:connect(function() tip.Anchored=true hitted=true end)
repeat tyms=tyms + 1 
bhit,bpos=ray(tip.Position,tip.Position - (tip.CFrame *cf(0,2,0)).p)
if bhit ~= nil and (bpos - tip.Position).magnitude < 8 then hitted=true break else 
rps.position=(root.CFrame*cf(0,-30,0)).p rbg.cframe=cf(root.Position,paws)*ca(rd(90-(0.2*tyms)),0,0)
end
w() until hitted or tyms > 120 root.Anchored=true rtab(sTrail,root)
Explode(tip.CFrame,9,raigcol2,40) SpawnKillZone(tip.CFrame,rn(12,18)/10,10,"Really black") 
w(2) for i=0,1,0.02 do for ii,v in pairs(mo:children()) do v.Transparency=i end w() end mo:Remove''
end) end 
function SpawnKillZone(spawnpos,sc,dur,colzz) cw(function() Sound(Sounds.Smash,0.4,1)
local spi=pa(m,"oo","Block",1*sc,8*sc,1*sc,true,false,0,0,"Black") spi.Anchored=true local spim= it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike spim.Scale=v3(0.7*sc,9*sc,0.7*sc)
local spi2=pa(m,"oo","Block",0,0,0,false,false,0,0,"White") spi2.Anchored=true local spi2m= it("SpecialMesh",spi2) spi2m.MeshType="FileMesh" spi2m.TextureId=asset .. Decs.TSkull1 spi2m.MeshId=asset .. Decs.Skull1 spi2m.Scale=v3(1*sc,1*sc,1*sc)
for i=-13,2,1 do spi.CFrame=spawnpos *cf(0,i*sc,0) spi2.CFrame=spi.CFrame*cf(0,2.3*sc,0) w() end Sound(Sounds.Ghost,1.05,1) local kil=true
cw(function() repeat GlowMesh(false,"Sphere",spi,v3(18*sc,0.2*sc,18*sc),colzz,cf(0,-2.6*sc,0))
w(0.5) SplashDmg(false,spi.Position,7,8.5*sc,30) GlowMesh(false,"Sphere",spi,v3(18*sc,0.2*sc,18*sc),colzz,cf(0,-2.6*sc,0)) w(0.5)
until not kil end)
w(dur) kil=false 
for i=2,-13,-0.25 do spi.CFrame=spawnpos *cf(0,i*sc,0) spi2.CFrame=spi.CFrame*cf(0,2.3*sc,0) w() end spi:Remove'' spi2:Remove''
end) end 
function SpawnSpikeTurret(spawnpos,sc,dur,tmag,mulz)
local colzz="Dark green" if mulz < 0 then colzz="White" end 
cw(function() Sound(Sounds.Smash,0.255,1)
local stem=pa(m,"oo","Block",2.5*sc,5*sc,2.5*sc,true,false,0,0,"Earth green") stem.Anchored=true it("CylinderMesh",stem)
stem.CFrame=spawnpos *cf(0,-10*sc,0)
local bal=pa(m,"oo","Ball",3.5*sc,3.5*sc,3.5*sc,true,false,0,0,"Earth green") bal.Anchored=true 
local pcf=cf(0,((5/2)+(3.5/3))*sc,0) bal.CFrame=stem.CFrame *pcf
for i=-11,0,0.5 do w()
stem.CFrame=stem.CFrame *cf(0,0.5*sc,0) bal.CFrame=stem.CFrame *pcf
end 
local spis={} local Visib=true if mulz > 0 then SplashDmg(false,bal.Position,12,6*sc,70) end
for i=1,rn(35,45) do 
local spi=pa(m,"oo","Block",0.3*sc,3*sc,0.3*sc,true,false,0,0,colzz) spi.Anchored=true local spim= it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
spi.CFrame=bal.CFrame *ca(rn(-360,360),rn(-360,360),rn(-360,360)) spim.Scale=v3(0.5*sc,5*sc,0.5*sc)
ti(spis,spi) cw(function() for i=1,12 do spi.CFrame=spi.CFrame *cf(0,0.25*sc,0) w() end end)
end spis[#spis].Mesh:Remove'' it("CylinderMesh",spis[#spis]).Scale=v3(4,1.3,4) spis[#spis].BrickColor=bc("Earth green")
cw(function()
repeat w(2) local torses= {}
for i,v in pairs(Serv.kirby8852:children()) do if not hittedlol and (v.Character ~= c or mulz < 0) and v.Character ~= nil and v.Character:findFirstChild("Torso") and (v.Character.Torso.Position - bal.Position).magnitude < tmag then
ti(torses,v.Character.Torso) end end 
if #torses > 0 then local lolcf=cf(bal.Position,torses[rn(1,#torses)].Position+v3(rn(-110,110)/100,rn(-110,150)/100,rn(-110,110)/100)) *cf(0,0,-6*sc)
spis[#spis].CFrame=lolcf*cf(0,0,3.5*sc) *ca(rd(90),0,0) ShootSpike(15,c,colzz,mulz,sc*2,lolcf,false,3,nil) end
until not Visib end)
w(dur) Visib=false for x=1,#spis do local spi=spis[x] if rn(1,3)==3 then ShootSpike(15,c,colzz,mulz,sc*2,cf(spi.Position,(spi.CFrame *cf(0,0,-1)).p)*cf(0,0,-8),false,3,nil) end spis[x]:Remove'' end 
for i=-11,0,0.5 do w()
stem.CFrame=stem.CFrame *cf(0,-0.5*sc,0) 
bal.CFrame=stem.CFrame *pcf
end bal:Remove'' stem:Remove'' 
end)
end
function CreateLance() a.s.Lancet="Black" local colx={"Dark stone grey","Really black","Dark stone grey"} local ref=0.15
local han=pa(Misc["v"],"han","Block",0.75,1.75,0.75,false,false,0,0,colx[3]) it("CylinderMesh",han) local hanw=weld(han,ra,han,0,-2.25,0,rd(90),0,0) hanw.C1=cf(0,0.8,0)
Sound(Sounds.Unsheath,1.2,1) for i=0,1,0.1 do han.Mesh.Scale=v3(1,1.5*i,1) w() end
local han2=pa(Misc["v"],"han2","Block",1,1,1,false,false,0,ref,colx[1]) it("CylinderMesh",han2) local han2w=weld(han2,han,han2,0,-1.25,0,0,0,0) 
Sound(Sounds.Unsheath,1.2,1) for i=0,1,0.1 do han2.Mesh.Scale=v3(3*i,1*i,3*i) w() end
cw(function() for xi=0,360,360/8 do local han3=pa(Misc["v"],"spiek","Block",0,0,0,false,false,0,ref,colx[2]) local han3w=weld(han3,han2,han3,0,0,0,rd(90),0,rd(xi)) han3w.C0=han3w.C0 *ca(rd(-18),0,0) local han3m=it("SpecialMesh",han3) han3m.MeshType="FileMesh" han3m.MeshId=asset .. Decs.Spike Sound(Sounds.Unsheath,1.2,1) cw(function() for i=0,1,0.1 do han3w.C1=cf(0,-2*i,-0.4) han3.Mesh.Scale=v3(0.25*i,2*i,0.25*i)w() end end) w() end end)
cw(function() for xi=0,360,120 do local han3=pa(Misc["v"],"spiek","Block",0,0,0,false,false,0,ref,colx[2]) local han3w=weld(han3,han2,han3,0,0,0,rd(90),0,rd(xi)) han3w.C0=han3w.C0 *ca(rd(-80),0,0) local han3m=it("SpecialMesh",han3) han3m.MeshType="FileMesh" han3m.MeshId=asset .. Decs.Spike Sound(Sounds.Unsheath,1.2,1) cw(function() for i=0,1,0.1 do han3w.C1=cf(0,-1*i,-1*i) han3.Mesh.Scale=v3(0.2*i,1.5*i,0.2*i)w() end end) w() end end)
w(0.3) local han3=pa(Misc["v"],"spike","Block",0,0,0,false,false,0,ref,colx[1]) local han3w=weld(han3,han2,han3,0,0,0,rd(180),0,0) local han3m=it("SpecialMesh",han3) han3m.MeshType="FileMesh" han3m.MeshId=asset .. Decs.Spike Sound(Sounds.Unsheath,1.2,1) cw(function() for i=0,1,0.1 do han3w.C1=cf(0,-5.2*i,0) han3.Mesh.Scale=v3(1.5*i,5+(7.5*i),1.5*i) w() end end) 
cw(function() w(0.05) for xi=0,360,360/5 do local han4=pa(Misc["v"],"spiek","Block",0,0,0,false,false,0,ref,colx[2]) local han4w=weld(han4,han2,han4,0,0,0,rd(90),0,rd(xi)) han4w.C0=han4w.C0 *ca(rd(-25),0,0) local han4m=it("SpecialMesh",han4) han4m.MeshType="FileMesh" han4m.MeshId=asset .. Decs.Spike Sound(Sounds.Unsheath,1.2,1) cw(function() for i=0,1,0.1 do han4w.C1=cf(0,1+(-0.6*i),-4) han4.Mesh.Scale=v3(0.25*i,2*i,0.25*i) w() end end) w() end end)
local han4=pa(Misc["v"],"spiketip","Block",0,0,0,false,false,0,ref,colx[1]) local han4w=weld(han4,han3,han4,0,0,0,0,0,0) local han4m=it("SpecialMesh",han4) han4m.MeshType="FileMesh" han4m.MeshId=asset .. Decs.Spike Sound(Sounds.Unsheath,1.2,1) for i=0,1,0.1 do han4w.C1=cf(0,-4*i,0) han4.Mesh.Scale=v3(0.6*i,3*i,0.6*i) w() end 
cw(function() w(0.2) for xi=0,360,120 do local han8=pa(Misc["v"],"spiek","Block",0,0,0,false,false,0,ref,colx[2]) local han8w=weld(han8,han4,han8,0,1,0,rd(90),0,rd(xi)) han8w.C0=han8w.C0 *ca(rd(-60),0,0) local han8m=it("SpecialMesh",han8) han8m.MeshType="FileMesh" han8m.MeshId=asset .. Decs.Spike Sound(Sounds.Unsheath,1.2,1) cw(function() for i=0,1,0.1 do han8w.C1=cf(0,1+(-0.6*i),-0.7) han8.Mesh.Scale=v3(0.12*i,0.75*i,0.12*i) w() end end) w() end end)
w(0.25) Sound(Sounds.Slash,0.35,1) cw(function() c1(hanw,0.1,1,0,0.8,0,0,0,-65) c1(hanw,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) cw(function() c1(raw,0.05,3,1,0.5,0,0,0,-90) c1(raw,0.05,3,0.7,0.8,0,45,0,-150) end)
local han5=pa(Misc["v"],"shield","Block",0,0,0,false,false,0,0.2,colx[3]) it("BlockMesh",han5) local han5w=weld(han5,la,han5,-0.6,-(2.5/2),0,rd(55),rd(0),rd(90)) Sound(Sounds.Unsheath,1.2,1) for i=0,1,0.1 do han5.Mesh.Scale=v3(3*i,0.25*i,2.5*i)*5 w() end
end
function ShootLanceBullet(spawnpos,sc,dmge) cw(function() Sound(Sounds.Fire1,0.5,1) local roflz=false for xx=1,3 do cw(function()
local proj=pa(m,"Bullet","Block",0.8*sc,1.1*sc,0.8*sc,true,false,0,0,"Black") it("CylinderMesh",proj) proj.Anchored=true
if xx == 1 then proj.CFrame=cf(spawnpos.Position,mou.hit.p) *cf(0,0.45,0.5)*ca(rd(90),0,0)
elseif xx == 2 then proj.CFrame=cf(spawnpos.Position,mou.hit.p) *cf(-0.5,-0.45,0.5)*ca(rd(90),0,0)
elseif xx == 3 then proj.CFrame=cf(spawnpos.Position,mou.hit.p) *cf(0.5,-0.45,0.5)*ca(rd(90),0,0)
end local tyms=0 local bhit,bpos=nil,nil
repeat tyms=tyms + 1 
bhit,bpos=ray(proj.Position,proj.Position - (proj.CFrame *cf(0,1,0)).p)
if bhit and (proj.Position - bpos).magnitude < 6 then roflz=true break else proj.CFrame=proj.CFrame*cf(0,-6,0)*ca(rd(-0.09),0,0) end
w() until tyms > 80 or roflz local z08 = 60 
if xx == 1 then Sound(Sounds.Break,2.6,1.4) Explode(proj.CFrame*ca(rd(180),0,0),12,raigcol2,dmge) local smokshiz =pa(m,"","Block",0,0,0,false,false,1,0,"Black")
smokshiz.CFrame = proj.CFrame it("Smoke",smokshiz) smokshiz.Smoke.Size = 30*sc smokshiz.Smoke.Opacity = 0.4 smokshiz.Smoke.Color = bc("Black").Color game:service'Debris':AddItem(smokshiz,8) end GlowMesh(false,"Sphere",proj,v3(20,20,20),RandomExplosionColor(),cf(rn(-z08*sc,z08*sc)/10,rn(-z08*sc,z08*sc)/10,rn(-z08,z08*sc)/10)) w(3) fade(proj,0.1)
end) end end) end 
function ShootProjectile(clonz,faic,adjs,dmge,sped,maxm) cw(function() 
local rt=pa(m,"","Block",0,0,0,false,false,1,0,"") rt.Anchored=true
rt.CFrame = faic local rtc = clonz:Clone'' rtc.Parent = m rtc.Anchored = true 
local tyms=0 local bhit,bpos=nil,nil
repeat tyms=tyms + 1 
bhit,bpos=ray(rt.Position,rt.Position - (rt.CFrame *cf(0,0,2)).p)
if bhit and (rt.Position - bpos).magnitude < sped+1 then break else rt.CFrame=rt.CFrame*cf(0,0,-sped) end rtc.CFrame = rt.CFrame*adjs
w() until tyms > maxm 
if bhit then 
rtc.Velocity=v3(0,0,0) local xx,yy,zz=rtc.CFrame:toEulerAnglesXYZ() rtc.CFrame=cf(bpos) *ca(xx,yy,zz) *cf(0,-rtc.Size.y/9,0)
if bhit.Anchored then Sound(Sounds.Punch,1,1,rtc) rtc.Anchored=true else local cfz=rtc.CFrame 
rtc.Size=v3(0,0,0) rtc.CFrame=cfz rtc.Anchored=false 
if findhum(bhit.Parent) then stick(rtc,bhit) rtc.CanCollide=false 
local aihu=findhum(bhit.Parent) Sound(Sounds.Smash,1.35,1,rtc) Dmgz(false,aihu,dmge,bhit) 
elseif findhum(bhit.Parent.Parent) then stick(rtc,bhit) rtc.CanCollide=false 
local aihu=findhum(bhit.Parent.Parent) Sound(Sounds.Smash,1.35,1,rtc) Dmgz(false,aihu,dmge,bhit) 
elseif bhit:GetMass() < 500 and findhum(bhit.Parent)==nil and findhum(bhit.Parent.Parent)==nil then
stick(rtc,bhit) Sound(Sounds.Punch,1,1,rtc) if findclass(bhit,"Weld") < 1 and findhum(bhit.Parent.Parent)==nil then bhit.Velocity=rt.CFrame.lookVector*60 end 
end
end
else
rtc.Parent=nil 
end
rt:Remove'' w(8) rtc:Remove''
end) end 
function ShootSpike(poi,theray,colz,mulzx,sc,adjus,istrai,typ,loltors) if mulzx==nil then mulzx=1 end 
cw(function() Sound(Sounds.Slash,1.1,1) local mind,maxd,mind2,maxd2=6,12,3,5
local spi=pa(c,"","Block",0.6*sc,2*sc,0.6*sc,false,false,0,0,colz) local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
spim.Scale=v3(0.12*sc,3*sc,0.12*sc) spi.Anchored=true if typ==1 then spi.CFrame=cf((loltors.CFrame).p,mou.Hit.p) *adjus
elseif typ==3 then spi.CFrame=adjus 
elseif typ==2 then if adjus=="random" then spi.CFrame=cf(to.Position,RandomPlayer(spi).Position) else spi.CFrame=loltors.CFrame *adjus end end spi.CFrame=spi.CFrame *ca(rd(-90),0,0)
if istrai then cw(function() Trail2(4,spi,0.2,colz,0.4*sc,cf(0,-2*sc,0)) end) end
local bullethit=false
local tyms=0 if rn(1,20)==rn(1,20) and mulzx > 0 then it("Fire",spi).Heat=-25 end if rn(1,poi)==1 and mulzx > 0 then spi.BrickColor=bc("Navy blue") end 
local minusz=-0.0001 if mulzx < 0 then local fiar=it("Fire",spi) fiar.Heat=-25 fiar.Size=1*sc fiar.Color=bc("Bright red").Color fiar.SecondaryColor=bc("Really red").Color end
local spid=0.25 if typ==2 then spid=0.01 end 
local divzz=110 if typ==2 then divzz=50 elseif typ==3 then divzz=1500 end
local tehpos=v3(0,0,0)
repeat
tyms=tyms + 2 minusz=(-90/50/divzz)*tyms
local bhit,bpos=ray(spi.Position,spi.Position - (spi.CFrame *cf(0,-1,0)).p,theray) tehpos=bpos
if bpos ~= nil and (bpos - (spi.CFrame *cf(0,1,0)).p).magnitude < 24 then bullethit=bhit else spi.CFrame=spi.CFrame *cf(0,8,0) *ca(rd(minusz),0,0) end 
w() until bullethit or spi.Position.y < -300 or tyms > 120 rtab(sTrail,spi) game:service'Debris':AddItem(spi,4) 
if bullethit then -- bhit 
spi.Velocity=v3(0,0,0) local xx,yy,zz=spi.CFrame:toEulerAnglesXYZ() spi.CFrame=cf(tehpos) *ca(xx,yy,zz) *cf(0,-spi.Size.y/9,0)
if bullethit.Anchored then Sound(Sounds.Punch,1,1,spi) spi.Anchored=true else local cfz=spi.CFrame *cf(0,-0*sc,0)
spi.Size=v3(0,0,0) spi.CFrame=cfz spi.Anchored=false 
if findhum(bullethit.Parent) then stick(spi,bullethit) spi.CanCollide=false local mul=1 if spi:findFirstChild("Fire") then mul=2.5 end
local aihu=findhum(bullethit.Parent) Sound(Sounds.Smash,1.35,1,spi) if mulzx==-1 then aihu.Health=aihu.Health + maxd else Dmgz(false,aihu,rn(mind*mul,maxd*mul),bullethit) if spi.BrickColor.Name=="Navy blue" then for i=1,10 do Dmgz(false,aihu,rn(mind2*mul,maxd2*mul),bullethit) w(0.9) end end end 
elseif findhum(bullethit.Parent.Parent) then stick(spi,bullethit) spi.CanCollide=false local mul=1 if spi:findFirstChild("Fire") then mul=2.5 end
local aihu=findhum(bullethit.Parent.Parent) Sound(Sounds.Smash,1.35,1,spi) if mulzx==-1 then aihu.Health=aihu.Health + maxd else Dmgz(false,aihu,rn(mind*mul,maxd*mul),bullethit) if spi.BrickColor.Name=="Navy blue" then for i=1,10 do Dmgz(false,aihu,rn(mind2*mul,maxd2*mul),bullethit) w(0.9) end end end 
elseif bullethit:GetMass() < 500 and findhum(bullethit.Parent)==nil and bullethit.Parent.Parent:findFirstChild("Humanoid")==nil then
 stick(spi,bullethit) Sound(Sounds.Punch,1,1,spi) if findclass(bullethit,"Weld") < 1 and bullethit.Parent.Parent:findFirstChild("Humanoid")==nil then bullethit.Velocity=(spi.CFrame*ca(rd(90),0,0)).lookVector*60 end 
end
end
else
spi.Parent=nil 
end
end)
end 
function NormalPose(inc) cw(function() c1(tw,inc,3,0,0,0,0,0,0) end) cw(function() c1(llw,inc,3,-0.5,-1,0,0,0,0) end)
cw(function() c1(rlw,inc,3,0.5,-1,0,0,0,0) end) cw(function() c1(law,inc,3,-1.5,1,0,0,0,0) end) c1(raw,inc,3,1.5,1,0,0,0,0) end
a.Act=function(k,ccz) 
if ccz then
if k=="x" then a.c=false 
a.a="Spikes" 
for i=1,18 do 
local spi=pa(Misc[k],"","Block",0,0,0,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
local spiw=weld(spi,t,spi,rn(-8,8)/10,rn(-8,8)/10,0,rd(rn(60,120)),0,rd(rn(-30,30))) 
cw(function() for i=0,1,0.1 do if rn(1,21)==1 then Sound(Sounds.Unsheath,rn(9,16)/10,1) end spiw.C0=spiw.C0 *cf(0,0.17,0) spim.Scale=v3(0.25,i*4,0.25) w() end a.c=true end)
end 
for i=1,2 do local spi=pa(Misc[k],"","Block",0,0,0,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
local spiw=weld(spi,la,spi,0.2,-i/1.1+(0.7),-0.25,rd(-45),0,rd(120)) cw(function() for i=0,1,0.1 do spiw.C0=spiw.C0 *cf(0,0.14,0) spim.Scale=v3(0.25,i*4,0.25) w() end a.c=true end) end 
for i=1,2 do local spi=pa(Misc[k],"","Block",0,0,0,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike local spiw=weld(spi,ra,spi,-0.2,-i/1.1+(0.7),-0.25,rd(-45),0,rd(-120)) 
cw(function() for i=0,1,0.1 do spiw.C0=spiw.C0 *cf(0,0.14,0) spim.Scale=v3(0.25,i*4,0.25) w() end a.c=true end) end 
for i=1,2 do local spi=pa(Misc[k],"","Block",0,0,0,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
local spiw=weld(spi,ll,spi,0.2,-i/1.1+(0.2),-0.3,0,rd(50),rd(70)) cw(function() for i=0,1,0.1 do spiw.C0=spiw.C0 *cf(0,0.14,0) spim.Scale=v3(0.25,i*4,0.25) w() end a.c=true end) end 
for i=1,2 do local spi=pa(Misc[k],"","Block",0,0,0,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike local spiw=weld(spi,rl,spi,-0.2,-i/1.1+(0.2),-0.3,0,rd(-50),rd(-70)) 
cw(function() for i=0,1,0.1 do spiw.C0=spiw.C0 *cf(0,0.14,0) spim.Scale=v3(0.25,i*4,0.25) w() end a.c=true end) end 
elseif k=="c" and a.a=="None" and a.c and a.b=="None" then a.c=false a.a="Champion" 
Armz(false) hu.WalkSpeed=ns*1.2
cw(function() c1(law,0.15,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.15,3,1.3,1,-0.2,30,0,-18)
cw(function() Sound(Sounds.Abscond,0.9,1) local spi=pa(m,"","Block",0,0,0,false,false,0.2,0,raigcol2) spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Crown
spim.Scale=v3(4,5,4) spi.CFrame=t.CFrame *cf(0,-2,0) for i=1,30 do spim.Scale=v3(4+(i/3),5-(i/12),4+(i/3)) spi.Transparency=0.2+((0.8/30)*i)spi.CFrame=spi.CFrame *ca(0,rd(25),0) w() end spi:Remove''
end)
a.c=true Legb2=true Legz(false) Legb=true 
elseif k=="v" and a.a=="None" and a.c and a.b=="None" then a.c=false 
Armz(false) hu.WalkSpeed=ns*0.75 Misc[k]=it("Model",m)
cw(function() c1(law,0.15,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.15,3,1.5,1,-0.2,-40,0,12)
CreateLance() a.c=true Legb2=true Legz(false) Legb=true a.a="Lance" 
a.s.Lance(true) cw(function() repeat if a.b=="None" and mp > 10 then mp=mp-0.05 end w() until a.a~="Lance" end)
end
else 
if k=="x" and a.a=="Spikes" and a.b=="None" and a.c then a.c=false a.a="None"
for zi,v in pairs(Misc[k]:children()) do 
cw(function()
for i=1,0,-0.1 do if rn(1,35)==1 then Sound(Sounds.Unsheath,rn(9,16)/10,1) end
v.Weld.C0=v.Weld.C0 *cf(0,-0.17,0) v.Mesh.Scale=v3(0.1,i*4,0.1) 
w()
end v:Remove'' a.c=true end)
end
elseif k=="c" and a.a=="Champion" and a.b=="None" and a.c then a.c=false a.a="None"
Legz(false) Armz(false) hu.WalkSpeed=ns NormalPose(0.1) Legz(true) Armz(true) a.c=true 
elseif k=="v" and a.a=="Lance" and a.b=="None" and a.c then a.c=false a.a="None"
Legz(false) Armz(false) local rr=false a.s.Lance(false) local k="v"
cw(function() c1(law,0.15,3,-1.3,1,-0.2,30,0,18) end) cw(function() c1(raw,0.03,3,1.5,0.5,-0.2,-100,-30,0) end)
cw(function() for i,v in pairs(Misc[k]:children()) do if v.Name=="spiek" then cw(function() local maxc=v.Mesh.Scale maxcc=v.Weld.C1.y for i=1,0,-0.1 do v.Weld.C1=v.Weld.C1 * cf(0,maxcc*0.1,0) v.Mesh.Scale=v3(maxc.x*i,maxc.y*i,maxc.z*i) w() end v:Remove'' end) end end end)
cw(function() local smc=Misc[k].shield.Mesh.Scale for xi=1,0,-0.1 do Misc[k].shield.Mesh.Scale=smc*xi w() end Misc[k].shield:Remove'' end)
cw(function() Sound(Sounds.Unsheath,1.4,1) local smc=Misc[k].spiketip.Mesh.Scale for xi=1,0,-0.2 do Misc[k].spiketip.Mesh.Scale=smc*xi Misc[k].spiketip.Weld.C1=cf(0,-4*xi,0) w() end Misc[k].spiketip:Remove'' 
Sound(Sounds.Unsheath,1.4,1) smc=Misc[k].spike.Mesh.Scale for xi=1,0,-0.1 do Misc[k].spike.Mesh.Scale=smc*xi Misc[k].spike.Weld.C1=cf(0,-5.2*xi,0) w() end Misc[k].spike:Remove'' 
Sound(Sounds.Unsheath,1.4,1) smc=Misc[k].han2.Mesh.Scale for xi=1,0,-0.1 do Misc[k].han2.Mesh.Scale=smc*xi Misc[k].han2.Weld.C0=cf(0,-1.5*xi,0) w() end Misc[k].han2:Remove'' 
Sound(Sounds.Unsheath,1.4,1) smc=Misc[k].han.Mesh.Scale for xi=1,0,-0.1 do Misc[k].han.Mesh.Scale=smc*xi w() end Misc[k].han:Remove'' rr=true end)
local hanw=Misc[k].han.Weld Sound(Sounds.Slash,0.35,1) for i=1,0,-0.05 do hanw.C1=cf(0,0.3+(0.5*i),0) *ca(rd(180*i),0,rd(45*i)) w() end
repeat w() until rr Misc[k]:Remove''
hu.WalkSpeed=ns NormalPose(0.1) Legz(true) Armz(true) a.c=true 
elseif mp >= 50 and k=="e" and a.a=="Spikes" and a.b=="None" then a.b="SideSlash" a.c=false mp=mp - 50
Armz(false)
cw(function() c1(law,0.16,3,-1.2,1,-0.2,40,0,40) end)
cw(function() c1(tw,0.1,0,0,0,0,0,-40,0) end)
c1(raw,0.16,3,1.2,1,0.2,50,0,50) Sound(Sounds.Unsheath,1.2,1)
local spi=pa(m,"","Block",0.3,6,0.3,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
spim.Scale=v3(0.2,6,0.2)
local spiw=weld(spi,ra,spi,0,-2,2,rd(90),0,0) 
c1(raw,0.16,3,1.5,1,0,0,0,-40) Sound(Sounds.Slash,0.9,1)
rayHit(1.2,1,ra,ca(rd(-90),0,0),3.2,15,35)
cw(function() Trail(spi,8,0.04,"Dark green",0.6,cf(0,3,0)) end)
cw(function() c1(tw,0.08,0,0,0,0,0,45,0) end)
cw(function() c1(spiw,0.1,0,0,-3.6,-1,210,0,0) end)
c1(raw,0.08,3,1.3,0.6,-0.5,-160,0,-80) 
cw(function() c1(tw,0.08,0,0,0,0,0,0,0) c1(law,0.16,3,-1.5,1,0,0,0,0) end)
c1(raw,0.08,3,1.2,1,0.2,50,0,50) spi:Remove'' c1(raw,0.16,3,1.5,1,0,0,0,0) 
Armz(true)
a.b="None" a.c=true 
elseif k=="c" and a.a=="Spikes" and a.b=="None" and a.c then a.c=false 
Legz(false) Armz(false) 
cw(function() c1(llw,0.1,3,-0.5,-1,-0.3,-80,-20,0) end)
cw(function() c1(rlw,0.1,3,0.5,-1,-0.3,-80,20,0) end)
cw(function() c1(law,0.1,3,-1.3,1,0,15,0,15) end)
cw(function() c1(raw,0.1,3,1.3,1,0,15,0,-15) end)
c1(tw,0.1,3,0,-1.5,0.35,-15,0,0)
a.c=true a.b="Sit" hu.WalkSpeed=0
elseif k=="c" and a.a=="Spikes" and a.b=="Sit" and a.c then a.c=false hu.WalkSpeed=ns NormalPose(0.08) Legz(true) Armz(true) a.c=true a.b="None" 
elseif mp >= 6 and k=="f" and a.a=="Spikes" and a.b=="None" then a.b="SpikeShoot" a.c=false 
Armz(false)
cw(function() c1(law,0.1,3,-1.1,0.55,0,-85,20,0) end) c1(raw,0.1,3,1.1,0.55,0,-85,-20,0) 
cw(function() Trail2(9999,la,0.1,la.BrickColor.Name,0.4,cf(0,-5,0)) Trail2(9999,ra,0.1,ra.BrickColor.Name,0.4,cf(0,-5,0)) repeat w(0.04) if rn(1,3)==2 then Sound(Sounds.Slash,1.2,1) end c1(law,1,3,-1.1,0.55,0,-85+rn(-55,55),20+rn(-15,15),0) c1(raw,1,3,1.1,0.55,0,-85+rn(-55,55),-20+rn(-15,15),0) until mp < 6 or ky=="f" rtab(sTrail,la) rtab(sTrail,ra) end)
repeat mp=mp - 6 ShootSpike(15,nil,"Dark green",1,rn(8,24)/10,ca(0,0,0),true,1,t) w(0.3) until mp < 6 or ky=="f"
cw(function() c1(law,0.1,3,-1.5,1,0,0,0,0) end) c1(raw,0.1,3,1.5,1,0,0,0,0) 
Armz(true) a.b="None" a.c=true
elseif mp >= 30 and k=="q" and a.a=="Spikes" and a.b=="None" then a.b="Flip" a.c=false 
Legz(false) Armz(false) mp=mp - 30
cw(function() c1(llw,0.1,3,-0.5,-0.4,-0.3,55,0,8) end)
cw(function() c1(rlw,0.1,3,0.5,-0.7,-0.3,55,0,-8) end)
cw(function() c1(law,0.1,3,-1.3,1,-0.2,60,0,15) end)
cw(function() c1(raw,0.1,3,1.3,1,-0.2,60,0,-15) end) c1(tw,0.1,3,0,-0.8,0,-30,0,0) hu.WalkSpeed=ns*1.75
cw(function() c1(tw,0.036,3,0,0,0,360,0,0) cleanweld(tw,"a1") end)
local bf=it("BodyForce",t) bf.force=v3(0,10000,0) game:service'Debris':AddItem(bf,0.165) Sound(Sounds.Slash,1.2,1)
w(0.1) if Button and mp >= 70 then mp=mp - 70 cw(function() c1(law,0.2,3,-1.3,1,-0.2,-170,0,-15) end)
cw(function() c1(raw,0.2,3,1.3,1,-0.2,-170,0,15) end) for zx=1,6 do ShootSpike(15,nil,"Navy blue",1,2,to.CFrame*ca(rd(-80),0,0),true,3,t) w(0.06) end else w(0.08*6) end hu.WalkSpeed= ns
cw(function() c1(llw,0.2,3,-0.5,-1,0,0,0,0) end)
cw(function() c1(rlw,0.2,3,0.5,-1,0,0,0,0) end)
cw(function() c1(law,0.2,3,-1.5,1,0,0,0,0) end) c1(raw,0.2,3,1.5,1,0,0,0,0) 
Legz(true) Armz(true) a.b="None" a.c=true 
elseif mp < maxmp and k=="z" and a.a=="Spikes" and a.b=="None" then a.b="Charge" a.c=false 
hu.WalkSpeed=0 Armz(false) 
local mz=it("Model",m) 
for xi=1,360,360/8 do 
local spi=pa(mz,"","Block",1,6,1,true,false,0,0,"Dark green") spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
spim.Scale=v3(1,6,1) spi.CFrame=t.CFrame *ca(0,rd(xi),0) *cf(0,0,10) *cf(0,-7,0) *ca(rd(rn(-5,5)),0,rd(rn(-5,5)))
cw(function() for x=1,12,1 do spi.CFrame=spi.CFrame *cf(0,0.5,0) w() end end) 
cw(function() repeat w() until ky=="z" or mp >= maxmp for x=1,12,1 do spi.CFrame=spi.CFrame *cf(0,-0.5,0) w() end mz:Remove'' end) 
end 
for xi=-1,1,2 do 
local spi=pa(mz,"","Block",1,10,1,true,false,0,0,"Dark green") spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
spim.Scale=v3(1.2,10,1.2) spi.CFrame=t.CFrame *cf(xi*2.2,0,-2) *cf(0,-11,0) 
cw(function() for x=1,20,1 do spi.CFrame=spi.CFrame *cf(0,0.5,0) w() end end) 
cw(function() repeat w() until ky=="z" or mp >= maxmp for x=1,20,1 do spi.CFrame=spi.CFrame *cf(0,-0.25,0) w() end mz:Remove'' end) 
end 
local spi=pa(mz,"","Block",0,0,0,false,false,1,0,raigcol) spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Crown
spim.Scale=v3(8,3,8) spi.CFrame=t.CFrame *cf(0,-2,0) local spi2=pa(mz,"","Block",0,0,0,false,false,1,0,raigcol) spi2.Anchored=true local spi2m=it("SpecialMesh",spi2) spi2m.MeshType="FileMesh" spi2m.MeshId=asset .. Decs.Crown
spi2m.Scale=v3(16,6,16) spi.CFrame=t.CFrame *cf(0,-2,0) spi2.CFrame=spi.CFrame Sound(Sounds.Cast,0.7,1)
cw(function() cw(function() for i=1,0.5,-0.05 do spi.Transparency=i spi2.Transparency=i w() end end) repeat w() spi.CFrame=spi.CFrame *ca(0,rd(11),0) spi2.CFrame=spi2.CFrame *ca(0,rd(-12),0) until ky=="z" or mp >= maxmp Sound(Sounds.ElectricalCharge,0.8,4) for i=0.5,1,0.05 do spi.CFrame=spi.CFrame *ca(0,rd(11),0) spi2.CFrame=spi2.CFrame *ca(0,rd(-12),0) spi.Transparency=i spi2.Transparency=i w() end spi2:Remove'' spi:Remove'' end) 
cw(function() c1(law,0.06,3,-1.2,0.55,-0.1,-90,-25,0) end) c1(raw,0.06,3,1.2,0.55,-0.1,-90,25,0) 
local tyms=0 repeat tyms=tyms + 1 w() if tyms%15==0 then Sound(Sounds.Cast,1,0.5) end addmp(3.5) until ky=="z" or mp >= maxmp 
cw(function() c1(raw,0.1,3,1.5,1,0,0,0,0) end) c1(law,0.1,3,-1.5,1,0,0,0,0)
Armz(true) a.c=true a.b="None" hu.WalkSpeed=ns 
elseif mp >= 150 and k=="t" and a.a=="Spikes" and a.b=="None" then a.b="SpinSlash" a.c=false 
Armz(false) mp=mp - 150 hu.WalkSpeed=ns*1.5
cw(function() c1(law,0.08,3,-1.2,1,0.2,40,0,-30) end) c1(raw,0.08,3,1.2,1,0.2,40,0,30) Sound(Sounds.Unsheath,1.2,1)
local spi=pa(m,"","Block",0.3,6,0.3,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike spim.Scale=v3(0.2,6,0.2) local spiw=weld(spi,ra,spi,0,-2,2,rd(90),0,0) 
local spi1=pa(m,"","Block",0.3,6,0.3,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi1) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike spim.Scale=v3(0.2,6,0.2) local spi1w=weld(spi1,la,spi1,0,-2,2,rd(90),0,0) 
cw(function() c1(spiw,0.07,0,0,-4,0,170,0,0) end) cw(function() c1(spi1w,0.07,0,0,-4,0,190,0,0) end) 
cw(function() c1(law,0.07,3,-1,0.6,0,0,0,85) end) c1(raw,0.07,3,1,0.6,0,0,0,-95) w(0.2) DmgHit(99,spi,10,14,2) DmgHit(99,spi1,10,14,2) cw(function() Trail(spi,24,0.05,"Dark green",0.35,cf(0,3,0)) end) cw(function() Trail(spi1,24,0.05,"Dark green",0.35,cf(0,3,0)) end) 
local tru=true local wnd=pa(m,"","Block",14,0,14,false,false,0.3,0,"Dark green") wnd.Anchored=true it("CylinderMesh",wnd).Scale=v3(1,0.1,1) cw(function() repeat w() wnd.CFrame=t.CFrame *cf(0,0.5,0) *ca(rd(rn(-8,8)),0,rd(rn(-8,8))) if rn(1,4)==2 then Sound(Sounds.Spin,1.25,1) end until not tru fade(wnd,0.08) end) c1(tw,0.02,3,0,0,0,0,-360*5,0) tru=false tw.C1=ca(0,0,0)
cw(function() c1(law,0.08,3,-1.2,1,0.2,40,0,-30) end) hu.WalkSpeed=ns c1(raw,0.08,3,1.2,1,0.2,40,0,30) spi:Remove'' spi1:Remove''
cw(function() c1(law,0.16,3,-1.5,1,0,0,0,0) end) c1(raw,0.16,3,1.5,1,0,0,0,0) 
a.c=true Armz(true) a.b="None" cleanweld(tw,"a1")
elseif mp >= 10 and k=="v" and a.a=="Spikes" and a.b=="None" then a.b="Hoverboard" a.c=false 
Armz(false) Legz(false)
local spi=pa(m,"","Block",0.3,10,0.3,true,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike spim.Scale=v3(1.2,10,0.8) local spiw=weld(spi,to,spi,-0.65,-3,0,rd(-80),0,0) 
local spi1=pa(m,"","Block",0.3,10,0.3,true,false,0,0,"Dark green") local spi1m=it("SpecialMesh",spi1) spi1m.MeshType="FileMesh" spi1m.MeshId=asset .. Decs.Spike spi1m.Scale=v3(1.2,10,0.8) local spi1w=weld(spi1,to,spi1,0.65,-3,0,rd(-80),0,0) 
local spi2=pa(m,"","Block",0,0,0,false,false,0,0,"Navy blue") local spi2m=it("SpecialMesh",spi2) spi1m.MeshType="FileMesh" spi2m.MeshId=asset .. Decs.Spike spi2m.Scale=v3(0.6,6,0.6) local spi2w=weld(spi2,to,spi2,0,-3.5,-1.5,rd(-96),0,0) 
local bpt=it("BodyPosition",to) bpt.position=to.Position bpt.maxForce=v310
local bgt=it("BodyGyro",to) bgt.maxTorque=v310 bgt.D=1250 hu.PlatformStand=true
cw(function() c1(law,0.07,3,-1,0.5,0,0,0,83) end) cw(function() c1(raw,0.07,3,1,0.5,0,0,0,-97) end)
cw(function() c1(llw,0.07,3,-0.5,-1,0,-20,0,25) end) cw(function() c1(rlw,0.07,3,0.5,-1,0,-20,0,-25) end)
c1(tw,0.07,3,0,0,0,15,90,0) Trail2(9999,spi,0.15,"Dark green",1.8,cf(0.6,-5,0))
repeat local lulzspid=-a.ClickHold*2.5 if lulzspid < -50 then lulzspid=-50 end 
bpt.position=(to.CFrame *cf(0,0,-3+(lulzspid))).p bgt.cframe=cf(to.Position,mou.Hit.p) mp=mp - 0.5 w() until ky=="v" or mp < 1
bpt:Remove'' bgt:Remove'' hu.PlatformStand=false rtab(sTrail,spi) local spisc=spim.Scale local spisc2=spi2m.Scale
for i=1,0,-0.1 do spim.Scale=spisc*i spi1m.Scale=spisc*i spi2m.Scale=spisc2*i w() end 
spi:Remove'' spi1:Remove'' spi2:Remove'' a.c=true NormalPose(0.08) Armz(true) Legz(true) a.b="None" 
elseif mp >= 60 and k=="u" and a.a=="Spikes" and a.b=="None" then a.b="SpikeWall" a.c=false 
Armz(false) Legz(false) mp=mp - 60 hu.WalkSpeed=0 Sound(Sounds.Cast,1.5,1) w(0.25)
cw(function() c1(law,0.06,3,-1.2,0.8,0,30,0,40) end) cw(function() c1(raw,0.06,3,1,0.5,-0.6,-55,0,10) end)
cw(function() c1(llw,0.06,3,-0.5,1.1,-0.7,-20,0,10) end) cw(function() c1(rlw,0.06,3,0.5,-0.4,0,50,0,-10) end)
c1(tw,0.06,3,0,-1.8,0,30,0,0) Sound(Sounds.Smash,0.26,1)
for i=-12,12,2 do w()
local spi=pa(workspace,"","Block",3,20,3,true,false,0,0,"Dark green") spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike spim.Scale=v3(2,29,2) 
SplashDmg(false,(to.CFrame *cf(i,-1,-8) *cf(0,0,ab(-i/2.5))).p,8,8,30) spi.CFrame=to.CFrame *cf(i,-20,-8) *cf(0,0,ab(-i/2.5)) cw(function() for i=1,20 do spi.CFrame =spi.CFrame *cf(0,1,0) w() end end) game:service'Debris':AddItem(spi,32)
end 
hu.WalkSpeed=ns NormalPose(0.08)
Armz(true) Legz(true) a.b="None" a.c=true 
elseif mp >= 8 and k=="g" and a.a=="Spikes" and a.b=="None" then a.b="SpikeCannon" a.c=false 
Armz(false) Legz(false)
cw(function() c1(law,0.06,3,-1.2,0.8,0,-30,0,40) end) cw(function() c1(raw,0.06,3,1.2,0.8,0,-30,0,-40) end)
cw(function() c1(llw,0.06,3,-0.5,-0.8,0,-10,0,0) end) cw(function() c1(rlw,0.06,3,0.5,-0.8,0,-10,0,0) end)
c1(tw,0.06,3,0,-0.3,0,10,0,0)
repeat 
w(0.2) ShootSpike(15,nil,"Dark green",1,rn(10,28)/10,cf(rn(-22,22)/10,rn(-22,22)/10,0)*ca(rd(9),0,0)*ca(0,rd(180),0),false,2,t) mp=mp - 8 until not ky=="g" or mp < 1 
NormalPose(0.08)
Armz(true) Legz(true) a.b="None" a.c=true 
elseif mp >= 600 and k=="b" and a.a=="Spikes" and a.b=="None" then a.b="SpikeRoll" a.c=false 
Armz(false) Legz(false) hu.WalkSpeed=ns*3.5 mp=mp - 600 local spiks={}
for i=1,30 do 
local spi=pa(m,"","Block",0,0,0,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
spim.Scale=v3(0,0,0)
local spiw=weld(spi,t,spi,rn(-10,10)/10,rn(-10,10)/10,rn(-10,10)/10,rd(rn(-360,360)),0,rd(rn(-360,360))) 
table.insert(spiks,spiw) cw(function() for i=0,2,0.1 do spiw.C0=spiw.C0 *cf(0,0.17,0) spim.Scale=v3(0.5,i*4,0.5) w() end end)
end 
cw(function() c1(llw,0.1,3,-0.5,-0.8,-0.6,65,0,8) end)
cw(function() c1(rlw,0.1,3,0.5,-0.8,-0.6,65,0,-8) end)
cw(function() c1(law,0.1,3,-1.3,1,-0.2,65,0,30) end)
cw(function() c1(raw,0.1,3,1.3,1,-0.2,65,0,-30) end) c1(tw,0.1,3,0,-2,0,0,0,0) local function funnyfiur(zazaz) ShootSpike(15,nil,"Dark green",1,rn(15,38)/10,zazaz,false,2,to) end
cw(function() for i=0,1,0.005 do if rn(1,7)==5 then hu:MoveTo((to.CFrame *cf(0,0,-6)).p,to) end local rndz=rn(1,20) if rndz==4 then funnyfiur(ca(0,rd(rn(-360,360)),0)*ca(rd(2),0,0)) elseif rndz==3 then funnyfiur(ca(rd(2),0,0)) elseif rndz==1 then ShootSpike(15,nil,"Dark green",1,rn(15,38)/10,"random",false,2,to) end w() end end) c1(tw,0.005,3,0,-1.7,0,360*10,0,0) 
NormalPose(0.07)
for xi=1,#spiks do local spiw=spiks[xi] cw(function() for i=2,0,-0.1 do spiw.C0=spiw.C0 *cf(0,-0.17,0) spiw.Part1.Mesh.Scale=v3(0.5,i*4,0.5) w() end spiw.Part1:Remove'' end) end w(0.5)
Armz(true) Legz(true) a.b="None" a.c=true hu.WalkSpeed=ns cleanweld(tw,"a1")
elseif mp >= 120 and k=="n" and a.a=="Spikes" and a.b=="None" then a.b="SpikeTurret" a.c=false 
Armz(false) Legz(false) hu.WalkSpeed=0 mp=mp -120 Sound(Sounds.Cast,1.3,1)
cw(function() c1(law,0.06,3,-1.2,0.5,0,-50,0,-25) end) cw(function() c1(raw,0.06,3,1.2,0.5,0,-50,0,25) end)
cw(function() c1(llw,0.06,3,-0.5,0.6,-0.7,-20,0,10) end) cw(function() c1(rlw,0.06,3,0.5,-0.9,0,50,0,-10) end)
c1(tw,0.06,3,0,-1.3,0,30,0,0) w(0.25) if not Button then SpawnSpikeTurret(cf(mou.Hit.p),rn(8,18)/10,35,30,1) else SpawnSpikeTurret(cf(mou.Hit.p),rn(8,18)/10,35,30,-1) end w(0.1) 
cw(function() c1(law,0.06,3,-1.2,0.5,0,-160,0,-15) end) cw(function() c1(raw,0.06,3,1.2,0.5,0,-160,0,15) end)
cw(function() c1(llw,0.06,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.06,3,0.5,-1,0,0,0,0) end)
c1(tw,0.06,3,0,0,0,0,0,0) hu.WalkSpeed=ns w(0.5)
NormalPose(0.1)
Armz(true) Legz(true) a.b="None" a.c=true
elseif mp >= 75 and k=="y" and a.a=="Spikes" and a.b=="None" then a.b="SpikeDisc" a.c=false 
Armz(false) 
repeat mp=mp - 75
cw(function() c1(law,0.1,3,-1.2,1,-0.2,-40,0,30) end) c1(raw,0.1,3,1.2,1,0.2,40,0,30) Sound(Sounds.Unsheath,1.2,1)
local spi=pa(m,"","Block",0.3,6,0.3,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike spim.Scale=v3(0.2,6,0.2) local spiw=weld(spi,ra,spi,0,-4,0,rd(180),0,0) 
cw(function() c1(law,0.1,3,-1.2,1,0.2,40,0,-30) end) c1(raw,0.2,3,1,0.6,-0.3,-80,65,0) c1(raw,0.2,3,1,0.6,-0.3,-100,10,0) FireDisc("Dark green",6,5,35,cf(spi.Position,mou.Hit.p)) spiw.Part0=la Sound(Sounds.Unsheath,1.2,1)
cw(function() c1(raw,0.1,3,1.2,1,-0.2,40,0,-30) end) c1(law,0.2,3,-1,0.6,-0.3,-80,-65,0) c1(law,0.2,3,-1,0.6,-0.3,-100,-10,0) spi:Remove'' FireDisc("Dark green",6,5,35,cf(spi.Position,mou.Hit.p))
until ky=="y" or mp < 75 
cw(function() c1(law,0.15,3,-1.5,1,0,40,0,0) end) c1(raw,0.15,3,1.5,1,0,0,0,0) 
Armz(true) a.b="None" a.c=true
elseif mp >= 35 and k=="f" and a.a=="Spikes" and a.b=="Hoverboard" then mp=mp-35 ShootSpike(15,nil,"Navy blue",1,2,cf((to.CFrame *cf(0,-4,-2)).p,mou.Hit.p)*cf(0,0,-4),true,3,nil) 
elseif mp >= maxmp*0.9 and k=="h" and a.a=="Spikes" and a.b=="None" then a.b="SpikeRage" a.c=false 
Armz(false) Legz(false) mp=rn(1,maxmp/10) hu.WalkSpeed=0 Sound(Sounds.Cast,0.7,2) w(0.5)
cw(function() c1(law,0.06,3,-1.2,0.8,0,30,0,40) end) cw(function() c1(raw,0.06,3,1,0.5,-0.6,-55,0,10) end)
cw(function() c1(llw,0.06,3,-0.5,1.1,-0.7,-20,0,10) end) cw(function() c1(rlw,0.06,3,0.5,-0.4,0,50,0,-10) end)
c1(tw,0.06,3,0,-1.8,0,30,0,0) Sound(Sounds.Smash,0.26,1)
for i=0,360,360/8 do w() cw(function()
for ii=1,5 do if rn(1,3)==1 then Sound(Sounds.Unsheath,0.9,1) end
local spi=pa(workspace,"","Block",8,20,8,true,false,0,0,"Dark green") spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike spim.Scale=v3(3+(ii),25+(ii*1.5),3+(ii)) 
local spawncf=to.CFrame *ca(0,rd(i+(ii*12)),0) *cf(0,0,8+(ii*12)) *ca(rd(20),0,0) spi.CFrame=spawncf *cf(0,-17,0) cw(function() for i=1,14 do spi.CFrame =spi.CFrame *cf(0,1.5,0) w() end w(3) for i=1,20 do spi.CFrame =spi.CFrame *cf(0,-1.5,0) w() end spi:Remove'' end)
w(0.05) end end) end SplashDmg(true,to.Position,105,120,80)
hu.WalkSpeed=ns NormalPose(0.08)
Armz(true) Legz(true) a.b="None" a.c=true 
elseif mp >= 50 and k=="r" and a.a=="Spikes" and a.b=="None" then a.b="SpikeBlock" a.c=false 
Armz(false) mp=mp - 50 hu.WalkSpeed=ns/2 Block.Value=true 
cw(function() c1(hw,0.15,3,0,1.5,0,0,35,0) end) cw(function() c1(tw,0.15,3,0,0,1.8,0,-35,0) end) cw(function() c1(law,0.15,3,-1,0.55,-0.9,-90,55,0) end) c1(raw,0.15,3,1.2,0.55,0.6,-90,10,0) 
local spis={} for xi=0,360,360/16 do local xzx=5.5 if xi%((360/16)*2)==0 then xzx=4.1 w() end
local spi=pa(m,"Shield","Block",0,0,0,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
local spiw=weld(spi,to,spi,0,0.65,-0.8,0,0,rd(xi)) spiw.C0=spiw.C0 *ca(rd(15),0,0)
cw(function() for i=0,1,0.1 do if rn(1,25)==1 then Sound(Sounds.Unsheath,rn(9,16)/10,1) end spiw.C0=spiw.C0 *cf(0,0.16,0) spim.Scale=v3(0.6*i,i*xzx,0.6*i) w() end end)
ti(spis,spi) end
local spi=pa(m,"Shield","Block",0,0,0,false,false,0,0,"Dark green") local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Spike
local spiw=weld(spi,to,spi,0,0.65,-0.8,rd(-90),0,0) 
cw(function() for i=0,1,0.1 do if rn(1,25)==1 then Sound(Sounds.Unsheath,rn(9,16)/10,1) end spiw.C0=spiw.C0 *cf(0,0.16,0) spim.Scale=v3(0.6*i,i*4.7,0.6*i) w() end end)
ti(spis,spi) w(1)
repeat w() mp=mp - 0.1 until mp < 0.5 or ky=="r"
for xi=1,#spis do local spi=spis[xi] local spiw=spi.Weld local spim=spi.Mesh
local xzx=spim.Scale.y cw(function() for i=1,0,-0.1 do if rn(1,15)==1 then Sound(Sounds.Unsheath,rn(9,16)/10,1) end spiw.C0=spiw.C0 *cf(0,-0.16,0) spim.Scale=v3(0.6*i,i*xzx,0.6*i) w() end spi:Remove'' end)
end Block.Value=false hu.WalkSpeed=ns
w(0.25) cw(function() c1(hw,0.15,3,0,1.5,0,0,0,0) end) cw(function() c1(tw,0.15,3,0,0,0,0,0,0) end) cw(function() c1(law,0.06,3,-1.5,1,0,0,0,0) end) c1(raw,0.06,3,1.5,1,0,0,0,0) 
Armz(true) a.c=true a.b="None"
elseif mp >= 45 and k=="e" and a.a=="Champion" and a.b=="None" then a.b="Jab" a.c=false 
Legz(true) mp=mp - 45 hu.WalkSpeed=ns*1.5 Sound(Sounds.Slash,0.9,1) Trail2(9999,ra,0.08,ts(ra.BrickColor),0.7,cf(0,-2.5,0)) rayHit(0.75,5,ra,ca(rd(-90),0,0),3.2,15,35)
 cw(function() c1(hw,0.15,3,0,1.5,0,-10,60,0) end) cw(function() c1(law,0.12,3,-1.3,1,-0.2,45,0,1) end) cw(function() c1(tw,0.12,3,0,0,-4,0,-60,0) end) c1(raw,0.12,3,1,0.75,-0.5,-92,60,0) 
rtab(sTrail,ra) w(0.2) cw(function() c1(hw,0.15,3,0,1.5,0,0,0,0) end) cw(function() c1(tw,0.15,3,0,0,0,0,0,0) end) hu.WalkSpeed=ns*1.2 cw(function() c1(law,0.15,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.15,3,1.3,1,-0.2,30,0,-18) a.c=true a.b="None"
elseif mp < maxmp and k=="z" and a.a=="Champion" and a.b=="None" then a.b="Charge" a.c=false 
Armz(false) Legz(false) hu.WalkSpeed=ns/5
cw(function() c1(llw,0.07,3,-0.5,-1,0,-15,0,20) end) cw(function() c1(rlw,0.07,3,0.5,-1,0,-15,0,-20) end)
cw(function() c1(law,0.07,3,-1.3,0.1,-0.3,-140,-25,0) end) c1(raw,0.07,3,1.3,0.1,-0.3,-140,25,0) Sound(Sounds.Cast,1,1)
local crwns={}
for i=1,5 do 
local spi=pa(m,"","Block",0,0,0,false,false,1,0,raigcol2) spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=asset .. Decs.Crown
spim.Scale=v3(i*3,15-(i*1.6),i*3) cw(function() for i=1,0.4,-0.05 do spi.Transparency=i w() end end) ti(crwns,spi) end 
cw(function() local ysp=0 repeat ysp=ysp + 15 for ix,spi in pairs(crwns) do local ysp2=1 if ix%2==0 then ysp2=-1 end spi.CFrame=to.CFrame *cf(0,-2,0) *ca(0,rd(ysp*ysp2),0) end w() until a.c end)
local tyms=0 repeat tyms=tyms + 1 w() if tyms%15==0 then Sound(Sounds.Cast,1,0.5) end addmp(3.5) if rn(1,3)==1 then RaiseBubble(to.CFrame *cf(0,-2,0),rn(8,13)/10,90,raigcol) end until mp >= maxmp or ky=="z" Sound(Sounds.ElectricalCharge,0.8,4)
cw(function() for ix,spi in pairs(crwns) do cw(function() for xi=0.4,1,0.05 do spi.Transparency=xi w() end spi:Remove'' end) end end)
cw(function() c1(law,0.15,3,-1.3,1,-0.2,30,0,18) end) cw(function() c1(raw,0.15,3,1.3,1,-0.2,30,0,-18) end)
cw(function() c1(llw,0.07,3,-0.5,-1,0,0,0,0) end) c1(rlw,0.07,3,0.5,-1,0,0,0,0) Legz(true) hu.WalkSpeed=ns*1.2 a.c=true a.b="None"
elseif mp >= 60 and k=="g" and a.a=="Champion" and a.b=="None" then a.b="FlipKick" a.c=false 
Legz(false) hu.WalkSpeed=ns*1.5 mp=mp - 60 FacePos(to,to.Position,mou.Hit.p,500,v3(0,1/0,0),ca(0,rd(12),0),0.5)
cw(function() c1(law,0.08,3,-1.3,0.8,0,60,0,18) end) cw(function() c1(raw,0.08,3,1.3,0.8,0,60,0,-18) end)
Sound(Sounds.Slash,1.2,1) BlastMesh(raigcol2,to,cf(0,-2,0),3.5) cw(function() c1(tw,0.16,3,0,-0.5,0,10,0,0) c1(tw,0.16,3,0,1.5,2,30,0,0) end) cw(function() c1(llw,0.08,3,-0.5,-0.6,0,70,0,0) end) c1(rlw,0.08,3,0.5,0,-1,15,0,0) w() Trail2(9999,rl,0.045,ts(rl.BrickColor),0.9,cf(0,-2.8,0)) rayHit(2.5,5,rl,ca(rd(-90),0,0),6,20,38)
cw(function() c1(tw,0.08,1,0,4.5,0,0,0,0) c1(tw,0.062,1,0,0,0,0,0,0) end) cw(function() c1(tw,0.04,0,0,0,0,360,360,0) cleanweld(tw,"a0") end) cw(function() c1(llw,0.2,3,-0.5,-1,0,160,0,0) end) c1(rlw,0.2,3,0.5,-1,0,-15,0,0) cw(function() w(0.5) rtab(sTrail,rl) end)
cw(function() c1(law,0.15,3,-1.3,1,-0.2,30,0,18) end) cw(function() c1(raw,0.15,3,1.3,1,-0.2,30,0,-18) end)
cw(function() c1(llw,0.07,3,-0.5,-1,0,0,0,0) end) c1(rlw,0.07,3,0.5,-1,0,0,0,0) hu.WalkSpeed=ns*1.2 Legz(true) a.c=true a.b="None" 
elseif mp >= 40 and k=="x" and a.a=="Champion" and a.b=="None" then a.b="Roundhouse" a.c=false 
Legz(false) mp=mp - 40 cw(function() c1(law,0.15,3,-0.8,0,-0.5,-170,0,5) end) cw(function() c1(raw,0.15,3,0.8,0,-0.5,-170,0,-5) end) Trail2(9999,ll,0.045,ts(ll.BrickColor),0.5,cf(0,-2.8,0)) rayHit(2.5,5,ll,ca(rd(-90),0,0),6,20,38) Sound(Sounds.Slash,1.2,1)
cw(function() c1(tw,0.06,1,0,0,0,0,0,100) c1(tw,0.08,1,0,0,0,0,0,0) end) cw(function() c1(llw,0.12,3,-0.5,-1,0,0,0,50) w(0.1) c1(llw,0.2,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.06,3,0.5,-1,0,0,0,-100) c1(rlw,0.06,3,0.5,-1,0,0,0,0) end) c1(tw,0.06,0,0,0,-2.5,0,360,0) cw(function() w(0.4) rtab(sTrail,ll) end)
cleanweld(tw,"a0") cw(function() c1(tw,0.08,0,0,0,0,0,0,0) end) cw(function() c1(law,0.07,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.07,3,1.3,1,-0.2,30,0,-18) Legz(true) a.c=true a.b="None" 
elseif mp >= 30 and k=="r" and a.a=="Champion" and a.b=="None" then a.b="Block" a.c=false hu.WalkSpeed=ns/2 mp=mp - 30 Legz(true) 
Sound(Sounds.Cast,1.2,1) cw(function() c1(hw,0.06,3,0,1.5,0,0,45,0) end) cw(function() c1(tw,0.06,3,0,0,2.5,0,-45,0) end) cw(function() c1(law,0.07,3,-1.3,1,0,0,0,30) end) c1(raw,0.07,3,1.5,-0.2,-0.2,-170,0,10)
Sound(Sounds.SaberLightUp,1.4,1) local tyms=0 Block.Value=true repeat tyms=tyms + 1 if tyms%15==0 then Sound(Sounds.SaberLightUp,1.55,0.5) end if tyms%8==0 then GlowMesh(true,asset .. Decs.Shield1,to,v3(5,15,4),raigcol2,cf(0.5,1,0.5)*ca(rd(-90),0,0)) GlowMesh(true,asset .. Decs.Crown,to,v3(7,0.5,7),raigcol2,cf(0,-2.5,2.5)*ca(0,rd(tyms*3),0)) end w() mp=mp - 0.5 until mp <= 0 or ky=="r" Block.Value=false
cw(function() c1(hw,0.06,3,0,1.5,0,0,0,0) end) cw(function() c1(tw,0.06,3,0,0,0,0,0,0) end) hu.WalkSpeed=ns*1.2 cw(function() c1(law,0.07,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.07,3,1.3,1,-0.2,30,0,-18) Legb=true a.c=true a.b="None" 
elseif mp >= 70 and k=="t" and a.a=="Champion" and a.b=="None" then a.b="WhirlKick" a.c=false hu.WalkSpeed=ns*1.5 mp=mp - 70 Legz(false)
cw(function() c1(law,0.1,3,-1.2,1,0,-175,0,10) end) cw(function() c1(raw,0.1,3,1.2,1,0,-185,0,-10) end) cw(function() c1(llw,0.1,3,-0.9,-1,0,0,0,85) end) cw(function() c1(rlw,0.1,3,0.9,-1,0,0,0,-95) end) c1(tw,0.08,0,0.07,0,0,170,0,0) Trail2(9999,rl,0.045,ts(rl.BrickColor),0.4,cf(0,-2.8,0)) rayHit(3.5,5,rl,ca(rd(-90),0,0),6,20,38) Trail2(9999,ll,0.045,ts(ll.BrickColor),0.4,cf(0,-2.8,0)) rayHit(3.5,5,ll,ca(rd(-90),0,0),6,20,38) cw(function() Sound(Sounds.Spin,1,1) for i=0,0.5,0.02 do w() end w() Sound(Sounds.Spin,1,1) end) c1(tw,0.02,1,0,0,0,0,360*3,0) cleanweld(tw,"a1") 
cw(function() w(0.4) rtab(sTrail,ll) rtab(sTrail,rl) end) cw(function() c1(tw,0.08,0,0,0,0,0,0,0) end)cw(function() c1(llw,0.07,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.07,3,0.5,-1,0,0,0,0) end) hu.WalkSpeed=ns*1.2 cw(function() c1(law,0.07,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.07,3,1.3,1,-0.2,30,0,-18) w(0.25) Legz(true) a.c=true a.b="None" 
elseif mp >= 50 and k=="q" and a.a=="Champion" and a.b=="None" then a.b="360Uppercut" a.c=false mp=mp - 50
 cw(function() c1(law,0.06,3,-1.5,0.5,-0.5,-140,0,18) end) cw(function() c1(raw,0.06,3,1.3,1,-0.2,40,0,-25) end) Trail2(9999,la,0.045,raigcol3,0.8,cf(0,-2.8,0)) rayHit(1.5,5,t,ca(0,0,0),6,20,42) 
cw(function() local bf=it("BodyForce",t) bf.force=v3(0,9000,0) game:service'Debris':AddItem(bf,0.2) Sound(Sounds.Slash,1.2,1) end) c1(tw,0.055,3,0,0,-1,0,360,0)
rtab(sTrail,la) cleanweld(tw,"a1") cw(function() c1(tw,0.15,3,0,0,0,0,0,0) end) cw(function() c1(law,0.14,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.14,3,1.3,1,-0.2,30,0,-18) a.c=false a.b="None" Legz(true) 
elseif mp >= 20 and k=="v" and a.a=="Champion" and a.b=="None" then a.b="Booster" a.c=false mp=mp - 10 Legz(false)
cw(function() c1(llw,0.08,3,-0.5,-1,0,0,0,10) end) cw(function() c1(rlw,0.08,3,0.5,-1,0,0,0,-10) end)
cw(function() c1(hw,0.14,3,0,1.5,0,-45,0,0) end) cw(function() c1(tw,0.14,3,0,0,0,60,0,0) end) local tyms=0 local bpt=it("BodyPosition",to) bpt.position=to.Position bpt.maxForce=v310 local bgt=it("BodyGyro",to) bgt.maxTorque=v310 bgt.D=1250 
repeat local lulzspid=-a.ClickHold*2.5 if lulzspid < -50 then lulzspid=-50 end bpt.position=(to.CFrame *cf(0,0,-2+(lulzspid))).p bgt.cframe=cf(to.Position,mou.Hit.p) mp=mp -1.25 tyms=tyms + 1 if tyms%8==0 then GlowMesh(false,asset .. Decs.Crown,t,v3(5,7,5),raigcol2,cf(0,0.5,0)*ca(rd(180),rd(tyms*3),0)) end w() until mp <= 0 or ky=="v"
bpt:Remove'' bgt:Remove'' w(0.5) cw(function() c1(hw,0.14,3,0,1.5,0,0,0,0) end) cw(function() c1(llw,0.08,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.08,3,0.5,-1,0,0,0,0) end) cw(function() c1(tw,0.14,3,0,0,0,0,0,0) end) cw(function() c1(law,0.14,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.14,3,1.3,1,-0.2,30,0,-18) Legz(true) a.c=true a.b="None" Legb2=true
elseif mp >= 120 and k=="b" and a.a=="Champion" and a.b=="None" then a.b="Combo" a.c=false mp=mp - 120 local aspi=0.07 tw.C1=cf(0,0,0) *ca(0,0,0)
Sound(Sounds.Slash,1.2,1) Trail2(9999,la,0.045,ts(la.BrickColor),0.4,cf(0,-2.8,0)) rayHit(1.3,5,la,ca(rd(-90),0,0),6,12,15) cw(function() c1(hw,aspi,3,0,1.5,0,0,-80,0) end) cw(function() c1(law,aspi,3,-1.3,0.5,-0.2,0,0,85) end) cw(function() c1(raw,aspi,3,1.3,1,-0.2,30,0,-45) end) c1(tw,aspi,0,0,0,0,0,-90,0) rtab(sTrail,la) w(0.1)
Sound(Sounds.Slash,1.2,1) Trail2(9999,ra,0.045,ts(ra.BrickColor),0.4,cf(0,-2.8,0)) rayHit(1.3,5,ra,ca(rd(-90),0,0),6,13,18) cw(function() c1(hw,aspi,3,0,1.5,0,0,80,0) end) cw(function() c1(law,aspi,3,-0.8,0,-0.5,-170,0,5) end) cw(function() c1(raw,aspi,3,1.1,0.5,-0.2,0,20,-85) end) c1(tw,aspi,0,0,0,0,0,-270,0) rtab(sTrail,ra) w(0.1) cw(function() c1(raw,aspi,3,0.8,0,-0.5,-170,0,-5) end) 
Sound(Sounds.Slash,1.2,1) Trail2(9999,ll,0.045,ts(ll.BrickColor),0.4,cf(0,-2.8,0)) rayHit(1.3,5,ll,ca(rd(-90),0,0),6,15,21) cw(function() c1(hw,aspi,3,0,1.5,0,0,0,0) end) Legz(false) cw(function() c1(llw,aspi,3,-0.5,-1,0,0,0,40) end) cw(function() c1(rlw,aspi,3,0.5,-1,0,0,0,-80) end) cw(function() c1(tw,aspi,1,0,0,0,0,0,75) end) w(0.1) c1(tw,aspi,0,0,0,0,0,-490,0) rtab(sTrail,ll) w() 
cw(function() c1(llw,0.08,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.08,3,0.5,-1,0,0,0,0) end) cw(function() c1(hw,0.08,3,0,1.5,0,0,0,0) end) cw(function() c1(tw,0.14,0,0,0,0,0,-360,0) end) cw(function() c1(tw,0.14,1,0,0,0,0,0,0) end) cw(function() c1(law,0.14,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.14,3,1.3,1,-0.2,30,0,-18) w(0.25) a.b="None" a.c=true Legz(true) cleanweld(tw,"a0") cleanweld(tw,"a1") 
elseif mp >= 50 and k=="f" and a.a=="Champion" and a.b=="None" then a.b="RapidPunch" a.c=false tw.C1=cf(0,0,0) *ca(0,0,0)
cw(function() c1(law,0.08,3,-1.3,0.5,-0.2,-100,0,0) end) c1(raw,0.08,3,1.3,0.5,-0.2,-100,0,0) Trail2(9999,la,0.06,ts(la.BrickColor),0.4,cf(0,-3.5,0)) Trail2(9999,ra,0.06,ts(ra.BrickColor),0.25,cf(0,-3.5,0)) 
local bgt=it("BodyGyro",to) bgt.maxTorque=v310 bgt.D=50 local tyms=0 repeat tyms=tyms + 1 bgt.cframe=cf(to.Position,v3(mou.Hit.p.x,to.Position.y,mou.Hit.p.z)) if (tyms+15)%30==0 then rayHit(0.4,5,ra,ca(rd(-90),0,0),4,8,12) end if tyms%30==0 then rayHit(0.4,5,la,ca(rd(-90),0,0),4,8,12) end if tyms%6==0 then Sound(Sounds.Slash,1.2,1) end if tyms%2==0 then c1(law,1,3,-1.3,0.5,0-(rn(-2,5)/10),-100+rn(-40,40),rn(-10,35),0) end if (tyms+1)%2==0 then c1(raw,1,3,1.3,0.5,0-(rn(-2,5)/10),-100+rn(-50,50),rn(-35,10),0) end w() mp=mp - 1.5 until mp < 3 or ky=="f"
bgt:Remove'' rtab(sTrail,la) rtab(sTrail,ra) cw(function() c1(law,0.06,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.06,3,1.3,1,-0.2,30,0,-18) a.c=true a.b="None"
elseif mp >= 80 and k=="y" and a.a=="Champion" and a.b=="None" then a.b="Combo2" a.c=false mp=mp - 80 
Sound(Sounds.Slash,1.2,1) Trail2(9999,ra,0.045,ts(ra.BrickColor),0.4,cf(0,-2.8,0)) cw(function() c1(hw,0.06,0,0,1.5,0,0,-105,0) end) cw(function() c1(tw,0.06,0,0,0,0,0,105,0) end) c1(raw,0.08,3,1,0.5,0,10,0,-90) local rhit,aihu=rayHit2(ra,ca(rd(-90),0,0),5) if rhit and aihu and aihu.Parent:findFirstChild("Torso") then hu.WalkSpeed=0 aihu.PlatformStand=true local vto=aihu.Parent.Torso Sound(Sounds.Smash,1,1) Dmgz(false,aihu,rn(18,25),vto) local aibp=it("BodyPosition",vto) aibp.maxForce=v310 aibp.position=vto.Position + v3(0,2.5,0) c1(raw,0.1,3,1.5,0.3,0,-10,0,-180)
rtab(sTrail,ra) w(0.25) Legz(false) Sound(Sounds.Slash,1.2,1) cw(function() c1(llw,0.06,3,-0.5,-1,0,0,0,50) end) cw(function() c1(rlw,0.06,3,0.5,-1,0,0,0,-80) end) cw(function() c1(tw,0.06,1,0,0,0,0,0,80) end) cw(function() c1(tw,0.06,0,0,0,0,0,-140,0) end) cw(function() for i=0,1,0.084 do w() end aibp.position=(to.CFrame *cf(12,8,-3)).p w() aibp:Remove'' w(1) aihu.PlatformStand=false end) rayHit(2,5,ll,ca(rd(-90),0,0),6,15,21) Trail2(9999,ll,0.045,ts(ll.BrickColor),0.4,cf(0,-2.8,0)) cw(function() c1(raw,0.06,3,0.9,0,-0.5,-170,0,-5) end) cw(function() c1(hw,0.06,0,0,1.5,0,0,0,0) end) c1(law,0.06,3,-0.9,0,-0.5,-170,0,5) 
w(0.1) rtab(sTrail,ll) cw(function() c1(llw,0.06,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.06,3,0.5,-1,0,0,0,0) end)
else rtab(sTrail,ra) w(0.5) end
cw(function() c1(hw,0.1,0,0,1.5,0,0,0,0) end) cw(function() c1(tw,0.06,1,0,0,0,0,0,0) end) cw(function() c1(tw,0.06,0,0,0,0,0,0,0) end)
hu.WalkSpeed=ns*1.2 Legz(true) cw(function() c1(law,0.06,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.06,3,1.3,1,-0.2,30,0,-18) w(0.1) Legz(true) a.c=true a.b="None"
elseif mp >= maxmp*0.4 and k=="h" and a.a=="Champion" and a.b=="None" then a.b="Beam" a.c=false hu.WalkSpeed=ns/2 mp=mp -50
cw(function() c1(law,0.06,3,-1.3,0.55,-0.2,-90,5,0) end) c1(raw,0.06,3,1.3,0.55,-0.2,-90,-5,0)
for i=1,10 do if i%3==0 then Sound(Sounds.Cast,0.5,1) end GlowMesh(true,"Sphere",to,v3(i/1.2,i/1.2,i/1.2),raigcol,cf(0,1.5,-4.5)) w(0.2) end
Legz(false) cw(function() c1(llw,0.06,3,-0.5,-1,0,-30,0,20) end) cw(function() c1(rlw,0.06,3,0.5,-1,0,-30,0,-20) end) 
local b1=pa(m,"","Ball",8,8,8,false,false,0.1,0,raigcol) b1.Anchored=true 
local b2=pa(m,"","Block",8,1,8,false,false,0.1,0,raigcol) b2.Anchored=true local b2m=it("CylinderMesh",b2)
local b3=pa(m,"","Ball",8,8,8,false,false,0.1,0,raigcol) b3.Anchored=true local circs={}
for i=1,5 do 
local b5=pa(m,"","Block",0,0,0,false,false,0.1,0,raigcol) b5.Anchored=true local b5m=it("SpecialMesh",b5) b5m.MeshType="FileMesh" b5m.MeshId=asset .. Decs.Ring 
b5m.Scale=v3(10,10,10) ti(circs,b5)
end 
local bgt=it("BodyGyro",to) bgt.maxTorque=v310 bgt.D=1300 local tyms=0 repeat tyms=tyms + 1 local tcf=t.CFrame*cf(0,-1.5,0) local bhit,bpos=ray(tcf.p,tcf.p - (tcf *cf(0,0,2)).p) b1.CFrame=tcf*cf(rn(-10,10)/10,(rn(-10,10)/10)+2,(rn(-10,10)/10)-5) for xx=1,#circs do circs[xx].CFrame=b1.CFrame*cf(0,0,-2-(xx*4))*ca(0,0,0) end b3.CFrame=cf(bpos+v3(rn(-10,10)/10,rn(-10,10)/10,rn(-10,10)/10)) b2.CFrame=cf(b1.Position,b3.Position) local bmag=(b1.Position - b3.Position).magnitude b2.CFrame=b2.CFrame *cf(0,0,-bmag/2)*ca(rd(-90),0,0) b2m.Scale=v3(1,bmag,1) if tyms%7==0 and bhit then Explode(b2.CFrame*cf(0,bmag/2,0),15,raigcol2,20) end bgt.cframe=cf(to.Position,v3(mou.Hit.p.x,to.Position.y,mou.Hit.p.z)) w() mp=mp -2.5 until mp < 3 or ky=="h"
bgt:Remove'' fade(b1,0.1) fade(b2,0.1) fade(b3,0.1) for i=1,#circs do fade(circs[i],0.1) end
cw(function() c1(llw,0.06,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.06,3,0.5,-1,0,0,0,0) end) cw(function() c1(law,0.06,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.06,3,1.3,1,-0.2,30,0,-18) a.c=true a.b="None" hu.WalkSpeed=ns*1.2 Legz(true)
elseif mp >= 80 and k=="n" and a.a=="Champion" and a.b=="None" then a.b="KillZone" a.c=false mp=mp -80 Legz(false)
Sound(Sounds.Cast,1.4,1) cw(function() c1(law,0.08,3,-1.2,0.5,0,-50,0,-25) end) cw(function() c1(raw,0.08,3,1.2,0.5,0,-50,0,25) end)
cw(function() c1(llw,0.08,3,-0.5,0.6,-0.7,-20,0,10) end) cw(function() c1(rlw,0.08,3,0.5,-0.9,0,50,0,-10) end)
c1(tw,0.08,3,0,-1.3,0,30,0,0) w(0.25) cw(function() c1(tw,0.08,3,0,0,0,0,0,0) end) cw(function() c1(llw,0.08,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.08,3,0.5,-1,0,0,0,0) end) SpawnKillZone(to.CFrame*cf(0,-2,-4.5),rn(10,13)/10,20,raigcol3) 
cw(function() c1(law,0.06,3,-1.3,1,-0.2,-160,0,20) end) c1(raw,0.06,3,1.3,1,-0.2,-160,0,-20)
w(0.5) cw(function() c1(law,0.06,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.06,3,1.3,1,-0.2,30,0,-18) a.c= true a.b="None" hu.WalkSpeed=ns*1.2 Legz(true)
elseif mp >= 45 and k=="e" and a.a=="Lance" and a.b=="None" then a.b="Slash" a.c=false mp=mp -45 
Sound(Sounds.Slash,0.35,2) Trail2(9999,Misc["v"].spiketip,0.04,a.s.Lancet,0.8,cf(0,1,0)) rayHit(2,5,ra,cf(0,0,-1.5)*ca(rd(-90),0,0),13,14,20)
cw(function() c1(hw,0.035,3,0,1.5,0,20,80,0) end) cw(function() c1(tw,0.035,3,0,0,0,0,-80,0) end) cw(function() c1(law,0.035,3,-1,0.5,-0.5,-80,80,0) end)
cw(function() c1(Misc["v"].han.Weld,0.04,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.04,0,0,-2.25,0,0,0,0) end) c1(raw,0.035,3,1,0.5,0,-50,0,-85)
w(0.1) rtab(sTrail,Misc["v"].spiketip)
cw(function() c1(hw,0.04,3,0,1.5,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(tw,0.04,3,0,0,0,0,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None"
elseif mp >= 80 and k=="t" and a.a=="Lance" and a.b=="None" then a.b="Spin" a.c=false mp=mp -80 
Sound(Sounds.Slash,0.35,2) Trail2(9999,Misc["v"].spiketip,0.04,a.s.Lancet,0.8,cf(0,1,0)) 
cw(function() c1(Misc["v"].han.Weld,0.03,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.03,0,0,-2.25,0,0,0,55) end) cw(function() c1(law,0.035,3,-1,0.5,-0.5,-86,15,0) end) c1(raw,0.06,3,1,0.5,0,0,0,-120) c1(raw,0.06,3,1,0.5,0,-86,-15,0) w(0.15)
cw(function() for i=1,3 do rayHit(1,5,Misc["v"].han2,ca(rd(-90),0,0),6,14,20) w(4/3) end end) c1(tw,0.015,3,0,0,0,0,-360*3,0) cleanweld(tw,"a1")
w(0.1) rtab(sTrail,Misc["v"].spiketip)
cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None"
elseif mp >= 10 and k=="r" and a.a=="Lance" and a.b=="None" then a.b="Block" a.c=false mp=mp -10 
Sound(Sounds.Slash,1.4,1) Block.Value=true c1(law,0.05,3,-1.1,0.5,-0.9,-90,85,0)
hu.WalkSpeed=ns*0.3 Sound(Sounds.Block,1,1) local b1=pa(m,"","Wedge",0,0,0,false,false,0,Misc["v"].shield.Reflectance,ts(Misc["v"].shield.BrickColor)) local b1m=it("SpecialMesh",b1) b1m.MeshType="Wedge" b1m.Scale=v3(0.2,3,2.5) b1:BreakJoints() b1w=weld(b1,Misc["v"].shield,b1,0,0,0,0,0,rd(90))
local b2=pa(m,"","Wedge",0,0,0,false,false,0,Misc["v"].shield.Reflectance,ts(Misc["v"].shield.BrickColor)) local b2m=it("SpecialMesh",b2) b2m.MeshType="Wedge" b2m.Scale=v3(0.2,3,2.5) b2:BreakJoints() b2w=weld(b2,Misc["v"].shield,b2,0,0,0,rd(180),0,rd(-90))
b1m.Scale=b1m.Scale*5 b2m.Scale=b2m.Scale*5 Sound(Sounds.Unsheath,1.5,1) for i=0,1,0.1 do b1w.C0=cf(-3*i,0,0)*ca(0,0,rd(90)) b2w.C0=cf(3*i,0,0)*ca(rd(0),rd(180),rd(90)) w() end
repeat w() mp=mp - 0.5 until mp < 1 or ky=="r"
Sound(Sounds.Unsheath,1.5,1) for i=1,0,-0.1 do b1w.C0=cf(-3*i,0,0)*ca(0,0,rd(90)) b2w.C0=cf(3*i,0,0)*ca(rd(0),rd(180),rd(90)) w() end
b1:Remove'' b2:Remove'' hu.WalkSpeed=ns*0.75
Block.Value=false c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) a.c=true a.b="None"
elseif mp >= 25 and k=="f" and a.a=="Lance" and a.b=="None" then a.b="Rapid" a.c=false mp=mp -25 hu.WalkSpeed=ns*0.5
Trail2(9999,Misc["v"].spiketip,0,a.s.Lancet,0.8,cf(0,1,0)) cw(function() c1(tw,0.05,3,0,0,0,0,-90,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,90,0) end) cw(function() c1(law,0.035,3,-1,0.5,-0.5,-80,80,0) end)
cw(function() c1(Misc["v"].han.Weld,0.04,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.04,0,0,-2.25,0,0,0,0) end) c1(raw,0.035,3,1,0.5,0,0,0,-90)
local bgt=it("BodyGyro",to) bgt.maxTorque=v310 bgt.D=50 local fenci=-0.5 local tyms=0 repeat tyms=tyms + 1 if tyms%5 == 0 then Sound(Sounds.Slash,1.1,1) end if tyms%2 == 0 then if fenci == -0.5 then fenci=1.8 else fenci=-0.5 end c1(raw,1,3,1+fenci,0.5,0,rn(-6,6),0,-90+rn(-11,11)) end if tyms%8==0 then rayHit(0.5,1,ra,ca(rd(-90),0,0),13,5,8) end bgt.cframe=cf(to.Position,v3(mou.Hit.p.x,to.Position.y,mou.Hit.p.z)) mp=mp -2 w() until mp < 2 or ky=="f"
bgt:Remove'' w(0.1) rtab(sTrail,Misc["v"].spiketip)
hu.WalkSpeed=ns*0.75 cw(function() c1(tw,0.05,3,0,0,0,0,0,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None"
elseif k=="c" and a.a=="Lance" and a.b=="None" then a.b="Sit" a.c=false
Legz(false) cw(function() c1(tw,0.05,3,0,-1.5,0,-10,0,0) end) cw(function() c1(llw,0.1,3,-0.5,-1,0,-80,-28,0) end) c1(rlw,0.1,3,0.5,-1,0,-80,28,0) hu.WalkSpeed=0 cw(function() while a.b == "Sit" do addmp(2) w() end end) a.c=true 
elseif k=="c" and a.a=="Lance" and a.b=="Sit" and a.c then
cw(function() c1(tw,0.1,3,0,0,0,0,0,0) end) cw(function() c1(llw,0.1,3,-0.5,-1,0,0,0,0) end) c1(rlw,0.1,3,0.5,-1,0,0,0,0) Legz(true) hu.WalkSpeed=ns*0.75 a.b="None" 
elseif mp > 50 and k=="q" and a.a=="Lance" and a.b=="None" then a.b="GroundSmash" a.c=false Legz(false) mp=mp-50 cw(function() c1(Misc["v"].han.Weld,0.07,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.07,0,0,-2.25,0,0,0,10) end)
Trail2(9999,Misc["v"].spiketip,0,a.s.Lancet,0.8,cf(0,1,0)) cw(function() c1(law,0.07,3,-1,1,0.3,60,0,200) end) cw(function() c1(raw,0.07,3,1,1,0.3,60,0,-200) end)
cw(function() c1(llw,0.07,3,-0.5,0,-0.6,10,0,0) end) cw(function() c1(rlw,0.07,3,0.5,-0.8,0,80,0,0) end)
c1(tw,0.05,3,0,-1.2,-0.6,-10,0,0) 
w(0.1) GlowMesh(false,asset .. Decs.Crown,to,v3(12,5,12),raigcol2,cf(0,-2,0)) 
rayHit(2.5,5,Misc["v"].han2,ca(rd(-90),0,0),7,25,30)
hu.WalkSpeed=ns*0.4 local bf=it("BodyForce",t) bf.force=v3(0,9000,0) game:service'Debris':AddItem(bf,0.3)
hu.WalkSpeed=ns*2 cw(function() c1(rlw,0.07,3,0.5,0,-0.6,10,0,0) end) cw(function() c1(llw,0.07,3,-0.5,-0.8,0,80,0,0) end) c1(tw,0.045,3,0,-1.2,-0.6,360,0,0) cleanweld(tw,"a1")
cw(function() c1(law,0.1,3,-1,1,0.3,-100,0,200) end) c1(raw,0.1,3,1,1,0.3,-100,0,-200)
hu.WalkSpeed=ns*0.75 GlowMesh(false,asset .. Decs.Crown,to,v3(8,5,10),raigcol2,cf(0,-2,-11)) Sound(Sounds.Smash,0.7,1) SplashDmg(false,Misc["v"].spiketip.Position,25,10,65) w(0.25)
rtab(sTrail,Misc["v"].spiketip)
cw(function()c1(tw,0.05,3,0,0,0,0,0,0)end) cw(function() c1(llw,0.05,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.05,3,0.5,-1,0,0,0,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) Legz(true) a.b="None" a.c=true
elseif mp > 210 and k=="n" and a.a=="Lance" and a.b=="None" then a.b="LanceThrow" a.c=false mp=mp-20 cw(function() c1(Misc["v"].han.Weld,0.07,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.07,0,0,-2.25,0,0,0,55) end)
Sound(Sounds.Slash,0.35,2) cw(function() c1(Misc["v"].han.Weld,0.03,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.03,0,0,-2.25,0,0,0,55) end) cw(function() c1(law,0.035,3,-1,0.5,-0.5,-86,15,0) end) c1(raw,0.06,3,1,0.5,0,0,0,-120) c1(raw,0.06,3,1,0.5,0,-86,-15,0)
Trail2(9999,Misc["v"].spiketip,0.04,a.s.Lancet,0.8,cf(0,1,0)) c1(tw,0.08,1,0,0,0,0,-360,0) cleanweld(tw,"a1") rtab(sTrail,Misc["v"].spiketip) a.s.Lance(false) ThrowLance(Misc["v"])
cw(function() c1(law,0.05,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,-30,0,20) Misc["v"]=it("Model",m) mp=mp-180
cw(function() c1(law,0.15,3,-1.3,1,-0.2,30,0,18) end) c1(raw,0.15,3,1.5,1,-0.2,-40,0,12) 
local han=pa(Misc[k],"han","Block",0.75,1.75,0.75,false,false,0,0,"Dark stone grey") it("CylinderMesh",han) local hanw=weld(han,ra,han,0,-2.25,0,rd(90),0,0) hanw.C1=cf(0,0.8,0)
CreateLance() a.s.Lance(true) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None"
elseif mp > 100 and k=="x" and a.a=="Lance" and a.b=="None" then a.s.Lance(false) a.b="Kick" a.c=false mp=mp-100 cw(function() c1(Misc["v"].han.Weld,0.07,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.07,0,0,-2.25,0,90,0,30) end)
cw(function() c1(law,0.07,3,-1,1,0.3,60,0,200) end) c1(raw,0.07,3,1,1,0.3,60,0,-200) w(0.3) cw(function() c1(law,0.07,3,-1,0.5,-0.4,-90,0,200) end) cw(function() c1(raw,0.07,3,1,0.5,-0.4,-90,0,-200) end) c1(tw,0.07,0,0,2,0,0,0,0) w(0.2)
cw(function() c1(Misc["v"].han.Weld,0.07,0,0,-2.25,0,90,0,-90) end) hu.WalkSpeed=0 cw(function() c1(tw,0.07,1,0,3,0,0,0,0) end) cw(function() c1(tw,0.07,0,0,2,0,0,0,-90) end) cw(function() c1(law,0.07,3,-1,1,0,0,0,205) end) c1(raw,0.07,3,1,1,0,0,0,-180)
rayHit(3,3,rl,cf(0.7,0,0)*ca(rd(-90),0,0),6,12,18) Trail2(9999,rl,0.04,"",0.4,cf(0,-2.25,0)) c1(tw,0.02,1,0,3,0,-360*2,0,0) cleanweld(tw,"a1") w(0.2) rtab(sTrail,rl) 
w(0.25) c1(tw,0.08,0,0,10,0,0,0,-90) cw(function() c1(tw,0.1,1,0,0,0,0,0,0) end) cw(function() c1(tw,0.05,0,0,0,0,0,0,0) end) hu.WalkSpeed=ns*0.75 a.s.Lance(true) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None"
elseif mp >= 70 and k=="y" and a.a=="Lance" and a.b=="None" then a.b="Combo2" a.c=false mp=mp -70 
Sound(Sounds.Slash,1.4,2) Trail2(9999,la,0.04,ts(la.BrickColor),0.5,cf(0,-2.25,0)) cw(function() c1(hw,0.08,3,0,1.5,0,-20,-90,0) end) cw(function() c1(tw,0.08,3,0,0,0,0,90,0) end) c1(law,0.08,3,-1,0.5,0,0,0,90) 
local rhit,aihu=rayHit2(la,ca(rd(-90),0,0),6) if rhit and aihu and aihu.Parent:findFirstChild("Torso") then hu.WalkSpeed=0 aihu.PlatformStand=true local vto=aihu.Parent.Torso Sound(Sounds.Smash,1,1) Dmgz(false,aihu,rn(18,25),vto) local aibp=it("BodyPosition",vto) aibp.maxForce=v310 aibp.position=vto.Position + v3(0,7,0) + ((to.CFrame*cf(0,0,-4)).p - to.Position)
rtab(sTrail,la) c1(law,0.065,3,-0.7,0,0,-160,0,40) 
cw(function() c1(Misc["v"].han.Weld,0.2,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.2,0,0,-2.25,0,0,0,0) end) 
cw(function() c1(hw,0.08,3,0,1.5,0,-40,80,0) end) cw(function() c1(tw,0.08,3,0,0,0,0,-80,0) end) cw(function() c1(raw,0.08,3,1,0.5,0,20,45,-100) c1(raw,0.08,3,1,0.5,-0.5,-150,45,-100) end) 
Trail2(9999,Misc["v"].spiketip,0.04,a.s.Lancet,0.8,cf(0,1,0)) Sound(Sounds.Slash,0.35,2) rayHit(2,5,ra,cf(0,0,-1.5)*ca(rd(-90),0,0),13,24,28) w(0.1) 
cw(function() w(0.5) aibp:Remove'' w() vto.Velocity=(cf(to.Position,vto.Position)*ca(0,rd(15),0)).lookVector*60 w(0.5) aihu.PlatformStand=false end) c1(law,0.04,3,-1,0.5,-0.5,-120,-60,0) w(0.1) rtab(sTrail,Misc["v"].spiketip) 
else w(0.8) rtab(sTrail,la) end 
hu.WalkSpeed=ns*0.75 cw(function() c1(hw,0.04,3,0,1.5,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(tw,0.04,3,0,0,0,0,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None"
elseif mp >= 90 and k=="g" and a.a=="Lance" and a.b=="None" then a.b="Gun" a.c=false mp=mp -90 
a.s.Lance(false) Misc["v"].han2.Weld.C0=cf(0,-1.25,0) Trail2(9999,Misc["v"].spiketip,0,a.s.Lancet,0.8,cf(0,1,0)) cw(function() c1(tw,0.05,3,0,0,0,0,-60,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,60,0) end) cw(function() c1(law,0.035,3,-1,0.5,-0.5,0,0,75) end)
cw(function() c1(Misc["v"].han.Weld,0.04,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.04,0,0,-2.25,0,0,0,0) end) c1(raw,0.035,3,1,0.5,0,-30,0,-95)
rtab(sTrail,Misc["v"].spiketip) w(0.2) for i=0,1,0.1 do Misc["v"].spiketip.Weld.C0=cf(-0.8*i,3.2*i,0) Misc["v"].spiketip.Weld.C1=cf(0,-4+(4*i),0)*ca(0,0,rd(-135*i)) w() end w(0.1) for i=1,3 do GlowMesh(true,"Sphere",Misc["v"].spike,v3(9,9,9),raigcol2,cf(rn(-15,15)/10,6+rn(-10,10)/10,rn(-15,15)/10)) end rt=pa(m,"","Block",0,0,0,false,false,1,0,"") rtw=weld(rt,Misc["v"].spike,rt,0,5.5,0,0,0,0)
ShootLanceBullet(rt,1,35) local smok=it("Smoke",rt) smok.RiseVelocity=15 smok.Size=9 smok.Opacity=0.7 smok.Color=bc("Really black").Color cw(function() c1(hw,0.2,3,0,1.5,0,-20,90,0) end) c1(raw,0.2,3,1,0.5,0,-30,0,-120) c1(raw,0.35,3,1,0.5,0,-30,0,-103) 
w(0.8) smok.Enabled=false w(0.2) for i=1,0,-0.1 do Misc["v"].spiketip.Weld.C0=cf(-0.8*i,3.2*i,0) Misc["v"].spiketip.Weld.C1=cf(0,-4+(4*i),0)*ca(0,0,rd(-135*i)) w() end game:service'Debris':AddItem(rt,2) a.s.Lance(true) cw(function() c1(tw,0.05,3,0,0,0,0,0,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None"
elseif mp >= 100 and k=="z" and a.a=="Lance" and a.b=="None" then a.b="SummonLance" a.c=false mp=mp -100 
cw(function() c1(tw,0.07,3,0,0,0,0,65,0) end) cw(function() c1(hw,0.07,3,0,1.5,0,-15,-65,0) end) c1(law,0.07,3,-1,1,-0.5,-70,-65,0) w(0.2) cw(function() Sound(Sounds.Ghost,0.9,2) for i=1,5 do SummonProjectile(to,cf(0,-2.5,-2.5+(-i*6)),1+(i/8),asset .. Decs.Spike,15,"Really black",v3(0.8,7.5,0.8)) w(0.1) end end) cw(function() c1(hw,0.07,3,0,1.5,0,-50,-65,0) end) c1(law,0.07,3,-1,1,-0.5,-160,-65,0) w(1)
Sound(Sounds.Imbue,1.5,2) cw(function() c1(tw,0.05,3,0,0,0,0,0,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None"
elseif mp >= 300 and k=="b" and a.a=="Lance" and a.b=="None" then a.b="LanceBarrage" a.c=false mp=mp -300 
GlowMesh(false,asset .. Decs.Crown,to,v3(12,5,12),raigcol2,cf(0,-2,0)) Legz(false) cw(function() c1(llw,0.05,3,-0.5,-1,0,-50,0,0) end) cw(function() c1(rlw,0.05,3,0.5,-1,0,-50,0,0) end) cw(function() c1(tw,0.05,3,0,10,0,0,-90,-50) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,90,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,0,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) 
c1(raw,0.05,3,1,0,-0.7,-140,0,-150) Misc["v"].han.Weld.Part0 = ll Misc["v"].han.Weld.C0 = cf(0.5,-1,0)*ca(0,0,rd(10)) cw(function() c1(llw,0.07,3,-0.5,-1,0,0,0,10) end) cw(function() c1(rlw,0.07,3,0.5,-1,0,0,0,-10) end) cw(function() c1(tw,0.07,3,0,11,0,1,-90,0) end)
hu.WalkSpeed = ns*2 cw(function() c1(law,0.07,3,-1,0.6,0,0,0,110) end) c1(raw,0.07,3,1,0.5,0,0,0,-70) local spining = true
local rt = pa(m,"","Block",0,0,0,false,false,0,1,"") local rtw = weld(rt,t,rt,0,0.5,0,0,0,rd(-20)) rtw.C1 = ca(0,rd(90),0)
local mzs = it("Model",m) local chim = 0 for i=0,360,30 do chim = chim+1 local shs = pa(mzs,"han" ..chim,"Block",0,0,0,false,false,0.2,0,"White") it("CylinderMesh",shs).Scale = v3(1,2,1)*5
local sh2 = pa(shs,"spi","Block",0,0,0,false,false,0.2,0,"White") local sh2m = it("SpecialMesh",sh2) sh2m.MeshType = "FileMesh" sh2m.MeshId = asset .. Decs.Spike sh2m.Scale = v3(1.2,10,1.2)
local shs3 = weld(shs,rt,shs,0,0,0,rd(0),rd(i),0) shs3.C1 = cf(0,-11,0)*ca(rd(-90),0,0) local shs4 = weld(sh2,shs,sh2,0,4.6,0,0,0,0)
end cw(function() local ty = 0 repeat ty = ty + 1 if ty%5 == 0 then GlowMesh(true,asset .. Decs.Crown,Misc["v"].spiketip,v3(6,1.25,6),raigcol2,cf(0,0,0)*ca(rd(180),rd(ty*3),0)) end rtw.C0 = rtw.C0 *ca(0,rd(10),0) w() until not spining end)
for si=1,24 do local xi = si if xi > 12 then xi = xi - 12 end mzs["han" ..xi].spi.Transparency = 1 cw(function() w(0.08) for ii=1,0.2,-0.05 do mzs["han" ..xi].spi.Transparency = ii w() end end) 
ShootSpike(9999999,nil,"White",1,7.5,cf(mzs["han" ..xi].spi.Position,mou.hit.p),false,3,t) w() Sound(Sounds.Unsheath,1.6,1) w(0.17) end for i,v in pairs(mzs:children()) do cw(function() for xi=0.2,1,0.1 do v.Transparency = xi v.spi.Transparency = xi w() end end) w(0.05) end w(0.6) spining = false
cw(function() c1(llw,0.05,3,-0.5,-1,0,-90,0,0) end) cw(function() c1(rlw,0.05,3,0.5,-1,0,-90,0,0) end) cw(function() c1(tw,0.05,3,0,8.5,0,0,-90,-50) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,0,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) 
c1(raw,0.05,3,1,0,-0.7,-140,0,-150) cw(function() c1(llw,0.07,3,-0.5,-1,0,0,0,0) end) cw(function() c1(rlw,0.07,3,0.5,-1,0,0,0,0) end) Misc["v"].han.Weld.Part0 = ra Misc["v"].han.Weld.C0 = cf(0,-2.25,0) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(tw,0.05,3,0,0,0,0,0,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) hu.WalkSpeed=ns*0.75 c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None" Legz(true) mzs:Remove''
elseif mp >= 500 and k=="u" and a.a=="Lance" and a.b=="None" then a.b="Swords" a.c=false mp=mp-500
local cr1 = pa(workspace.CurrentCamera,"","Block",0.5,0,4,false,false,0.5,0,"White") local cr1w = weld(cr1,to,cr1,0,0,-46,0,rd(135),0) local cr2 = pa(workspace.CurrentCamera,"","Block",0.5,0,4,false,false,0.5,0,"White") local cr2w = weld(cr2,to,cr2,0,0,-46,0,rd(45),0) 
cw(function() c1(tw,0.05,3,0,0,0,0,-90,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,90,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,0,0,0) end) c1(raw,0.05,3,1,0.5,0,0,0,-90)
Misc["v"].han.Weld.Part0 = to c1(Misc["v"].han.Weld,1,3,0,0.5,-3,-90,0,0) cw(function() c1(law,0.05,3,-1,0.5,0,45,0,135) end) cw(function() c1(raw,0.05,3,1,0.5,0,45,0,-135) end) cw(function() c1(tw,0.05,3,0,0,0,0,0,0) end) c1(hw,0.05,3,0,1.5,0,0,0,0)
local spinin = true local rt = pa(m,"","Block",0,0,0,false,false,1,0,"") local rtw = weld(rt,ra,rt,0,-15,-1,0,0,0) 
local rmzs = it("Model",m) local chim = 0 for i=0,360,360/12 do chim = chim+1 local shs = pa(rmzs,"han" ..chim,"Block",0,0,0,false,false,1,0,"Institutional white") local shsm = it("SpecialMesh",shs) shsm.MeshType = "FileMesh" shsm.MeshId = Decs.Sword1 shsm.Scale = v3(1.8,1.4,1.2)
local shs3 = weld(shs,rt,shs,0,0,0,rd(0),rd(i),0) shs3.C1 = cf(0,0,-8)*ca(rd(0),0,0) 
end local lt = pa(m,"","Block",0,0,0,false,false,1,0,"") local ltw = weld(lt,la,lt,0,-22,-1,0,0,0) 
local lmzs = it("Model",m) local chim = 0 for i=0,360,360/8 do chim = chim+1 local shs = pa(lmzs,"han" ..chim,"Block",0,0,0,false,false,1,0,"Institutional white") local shsm = it("SpecialMesh",shs) shsm.MeshType = "FileMesh" shsm.MeshId = Decs.Sword1 shsm.Scale = v3(1.8,1.4,1.2)
local shs3 = weld(shs,lt,shs,0,0,0,rd(0),rd(i),0) shs3.C1 = cf(0,0,-6)*ca(rd(0),0,0) 
end cw(function() cw(function() for x,v in pairs(lmzs:children()) do w(0.06) cw(function() Sound(Sounds.Unsheath,1.4,1,v) for i=1,0.4,-0.05 do w() v.Transparency = i end Sound(Sounds.Slash,1.4,1,v) end) end 
end) cw(function() for x,v in pairs(rmzs:children()) do w(0.06) cw(function() Sound(Sounds.Unsheath,1.4,1,v) for i=1,0.4,-0.05 do w() v.Transparency = i end Sound(Sounds.Slash,1.4,1,v) end) end end) repeat rtw.C0 = rtw.C0 *ca(0,rd(8),0) ltw.C0 = ltw.C0 *ca(0,rd(-8),0) w() until not spinin end) 
w(0.5) cw(function() c1(law,0.025,3,-1,0.5,0,-90,0,90) end) cw(function() c1(raw,0.025,3,1,0.5,0,-90,0,-90) end)
w(2.5) for i=0,1,0.1 do for x,v in pairs(lmzs:children()) do v.Weld.C1 = cf(0,-3*i,-6+(13*i))*ca(rd(-120*i),0,0) end for x,v in pairs(rmzs:children()) do v.Weld.C1 = cf(0,-5*i,-8+(19*i))*ca(rd(-120*i),0,0) end w() end for i=1,#lmzs:children() do local v = lmzs["han" ..i] Sound(Sounds.Unsheath,1.6,1,v) ShootProjectile(v,cf(v.Position,(to.CFrame*cf(0,0,-40)).p),ca(rd(180),0,0),5,7,50) v.Transparency = 1 w(0.1) end for i=1,#rmzs:children() do local v = rmzs["han" ..i] Sound(Sounds.Unsheath,1.6,1,v) ShootProjectile(v,cf(v.Position,(to.CFrame*cf(0,0,-40)).p),ca(rd(180),0,0),5,7,50) v.Transparency = 1 w(0.1) end fade(cr1,0.1) fade(cr2,0.1) w(0.25) 
rayHit(2,5,Misc["v"].han,cf(0,0,0)*ca(rd(-90),0,0),14,25,30) Trail2(9999,Misc["v"].spiketip,0,"Black",0.8,cf(-2,0,0)) Trail2(9999,Misc["v"].spike,0,"White",0.8,cf(2,5,0)) Trail2(9999,Misc["v"].han,0,a.s.Lancet,0.5,cf(0,1,0))
cw(function() for x=3,100,3 do if x%6 == 0 then local hax = true if x%12 == 0 then hax = false end GlowMesh(hax,asset .. Decs.Spike,Misc["v"].spike,v3(3,20,3),raigcol2,cf(0,0,0)) end w() end end) Sound(Sounds.Ghost,0.8,1.5) c1(Misc["v"].han.Weld,0.03,3,0,0.5,-45,-90,0,0) GlowMesh(false,asset .. Decs.Ring,to,v3(20,20,10),raigcol2,cf(0,0,-57)*ca(0,0,0)) Sound(Sounds.Imbue,0.8,1.5)
rtab(sTrail,Misc["v"].spiketip) rtab(sTrail,Misc["v"].spike) rtab(sTrail,Misc["v"].han) w(0.5) cw(function() c1(Misc["v"].han.Weld,0.05,3,0,0.5,-3,-90,0,0) end) cw(function() c1(tw,0.05,3,0,0,0,0,-90,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,90,0) end) c1(raw,0.05,3,1,0.5,0,0,0,-90) w(0.5) c1(Misc["v"].han.Weld,1,3,0,-2.25,0,0,0,0)
lt:Remove'' rt:Remove'' Misc["v"].han.Weld.Part0 = ra Misc["v"].han.Weld.C0 = cf(0,-2.25,0) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(tw,0.05,3,0,0,0,0,0,0) end) cw(function() c1(hw,0.05,3,0,1.5,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.05,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.c=true a.b="None" Legz(true)
elseif mp >= maxmp*0.8 and k=="h" and a.a=="Lance" and a.b=="None" then a.b="RushCharge" a.c=false mp=rn(1,maxmp*0.2)
cw(function() c1(law,0.05,3,-1.5,0.5,-0.5,-90,15,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,1,0,0.8,0,0,0,0) end) cw(function() c1(Misc["v"].han.Weld,0.05,0,0,-2.25,0,-30,0,0) end) cw(function() c1(Misc["v"].shield.Weld,0.05,0,-2.5,2.75,2.5,0,25,80) end) c1(raw,0.05,3,1,0.5,-0.5,-120,0,-90)
Sound(Sounds.Abscond,0.9,1) local at = Misc["v"].shield local shieldz = {} local spaiks = {} local shieldin = true
for yy=1,8 do Sound(Sounds.Unsheath,1.6,1) local dec = at:Clone() dec.Parent = m local decw = weld(dec,at,dec,0,0,0,0,0,0)
ti(shieldz,dec) for ii=0,1,0.2 do decw.C0 = cf(0,-0.5*ii,-2.25*ii)*ca(rd(-25*ii),rd(5*ii),0) w() end at = dec cw(function() repeat w() until not shieldin w(1+(yy/6)) decw:Remove'' dec.CanCollide = true w(3) fade(dec,0.1) end)
cw(function() local dec = at:Clone() dec.Parent = m local decw = weld(dec,at,dec,0,0,0,0,0,0) ti(shieldz,dec) for ii=0,1,0.2 do decw.C0 = cf(-2.8*ii,-0.65*ii,0)*ca(0,0,rd(20*ii)) w() end Sound(Sounds.Unsheath,1.6,1) repeat w() until not shieldin w((yy/10)) for ii=1,0,-0.2 do decw.C0 = cf(-2.8*ii,-0.65*ii,0)*ca(0,0,rd(20*ii)) w() end end)
cw(function() local dec = at:Clone() dec.Parent = m local decw = weld(dec,at,dec,0,0,0,0,0,0) ti(shieldz,dec) for ii=0,1,0.2 do decw.C0 = cf(2.8*ii,0.65*ii,0)*ca(0,0,rd(20*ii)) w() end repeat w() until not shieldin w((yy/10)) for ii=1,0,-0.2 do decw.C0 = cf(2.8*ii,0.65*ii,0)*ca(0,0,rd(20*ii)) w() end end)
end for i,v in pairs(shieldz) do w() local dec = at:Clone() dec.Name = "spaik" dec.BrickColor = bc("Black") dec.Mesh:Remove() dec.Parent = m local decw = weld(dec,v,dec,0,0,0,0,0,0) local ssm = it("SpecialMesh",dec) ssm.MeshType = "FileMesh" ssm.MeshId = asset .. Decs.Spike 
cw(function() for ii=0,1,0.1 do decw.C0 = cf(0,1.25*ii,0) ssm.Scale = v3(0.5,3.3,0.5)*ii w() end ti(spaiks,dec) Sound(Sounds.Unsheath,1.4,1) end) end
local fi = at:Clone() fi.Parent = m fi.Mesh:Remove() fi.Transparency = 1 fiw = weld(fi,t,fi,0,0,6,-90,0,0) local fia = it("Fire",fi) fia.Heat = -25 fia.Size = 22 fia.Color = bc("Really blue").Color fia.SecondaryColor = bc("White").Color
Sound(Sounds.Abscond,1.2,2) hu.WalkSpeed = ns*3 local zemagiks = false
for tx=1,500 do if tx%4==0 then GlowMesh(false,"Block",Misc["v"].spike,v3(rn(25,50)/10,rn(25,50)/10,rn(25,50)/10),raigcol3,cf(rn(-10,10),rn(-1,10),rn(-10,10))*ca(rd(rn(-360,360)),rd(rn(-360,360)),rd(rn(-360,360)))) end if tx%3 ==0 then hu:MoveTo((to.CFrame*cf(0,0,-5)).p,to) end 
if tx%12==0 then SplashDmg(false,to.Position,12,18,100) GlowMesh(false,asset .. Decs.Crown,Misc["v"].spike,v3(10,20,10),raigcol3,cf(0,8,0)*ca(rd(180),rd(tx*5),0)) end if tx%7 == 0 then rayHit(0.4,5,Misc["v"].han,cf(0,0,0)*ca(rd(-90),0,0),14,5,5) end if tx%2==0 then if zemagiks then zemagiks = false else zemagiks = true end GlowMesh(zemagiks,asset .. Decs.Spike,Misc["v"].spike,v3(4.4,27,4.4),raigcol3,cf(0,0,0)) end w() end 
hu.WalkSpeed = ns*0.75 for i,v in pairs(spaiks) do w() cw(function() for ii=1,0,-0.1 do v.Weld.C0 = cf(0,1.25*ii,0) v.Mesh.Scale = v3(0.5,3.3,0.5)*ii w() end Sound(Sounds.Unsheath,1.4,1) shieldin = false v:Remove() end) end
for ix=22,0,-0.5 do fia.Size = ix w() end fi:Remove() w(1) cw(function() c1(Misc["v"].shield.Weld,0.05,0,-0.6,-1.25,0,55,0,90) end) cw(function() c1(Misc["v"].han.Weld,0.04,1,0,0.8,0,180,0,45) end) cw(function() c1(Misc["v"].han.Weld,0.04,0,0,-2.25,0,90,0,0) end) cw(function() c1(law,0.04,3,-1.3,1,-0.2,-30,0,18) end) c1(raw,0.04,3,0.7,0.8,0,45,0,-150) a.b="None" a.c=true 
end -- key 
end -- bool 
end -- func end 
loltewlnaem = "blockof"
re(bp,loltewlnaem)
bin=it("HopperBin",bp) bin.Name=loltewlnaem
script.Parent=bin
bin.Selected:connect(function(mouse) mou = mouse
mouse.Button1Down:connect(function() Button = true cw(function() repeat w(0.1) a.clickHold = a.clickHold + 0.1 until not Button end)()
end)
mouse.Button1Up:connect(function() Button = false
end)
mouse.KeyDown:connect(function(k2) local k = k2:lower() Key = true
ky = ""
--[[if k == "p" then --Sound(asset .. Sounds.Cast,2,1) 
end ]]
if a.a == "None" then
a.Act(k,true)
else 
a.Act(k,false)
end -- a ab end 
end)
mouse.KeyUp:connect(function(k2)
pcall(function()
ky = ""..k2:lower()
--local ky = false
end)
Key = false end)
end)
bin.Deselected:connect(function(mouse)
 
end)
--loadstring(game.Lighting.BootSeks.Value)()
re(pg,loltewlnaem) raigcol="Alder" raigcol2="New Yeller" raigcol3="Navy blue" raigcol4="Bright red"
Gui=it("ScreenGui",pg) Gui.Name=loltewlnaem
fr=it("Frame",Gui) fr.Size=ud(1,0,1,0) fr.Active=false fr.BackgroundTransparency=1
mptray=it("TextLabel",fr) mptray.BackgroundColor3=bc("Black").Color
mptray.Size=ud(0.18,0,0.08,0) mptray.BorderSizePixel=0 mptray.Position=ud(0.41,0,0.025,0) mptray.Text=""
mptext=it("TextLabel",mptray) mptext.BackgroundTransparency=1 mptext.Size=ud(1,0,0.5,0) mptext.Position = ud(0,0,0.1,0) mptext.TextColor3=bc("White").Color
mptext.FontSize="Size18" mptext.Font="ArialBold" mptext.ZIndex=2 mptext.Text="Mp P" .. "ower"
mptext2=it("TextLabel",mptray) mptext2.BackgroundTransparency=1 mptext2.Size=ud(1,0,0.5,0) mptext2.Position = ud(0,0,0.4,0) mptext2.TextColor3=bc("White").Color
mptext2.FontSize="Size18" mptext2.Font="ArialBold" mptext2.ZIndex=2 mptext2.Text="/"
mpfill=it("ImageLabel",mptray) mpfill.BackgroundColor3=bc(raigcol).Color mpfill.Image=asset .. Decs.Shine mpfill.Size=ud(0.97,0,0.90,0) mpfill.Position=ud(0.015,0,0.05,0)
sttray=it("ImageLabel",fr) sttray.BackgroundColor3=bc("Black").Color
sttray.Size=ud(0.2,0,0.055,0) sttray.BorderSizePixel=0 sttray.Position=ud(0.043,0,0.94,0) sttray.Image=asset .. Decs.Shine
sttext=it("TextLabel",fr) sttext.BackgroundTransparency=1
sttext.Size=ud(0.2,0,0.055,0) sttext.BorderSizePixel=0 sttext.ZIndex=2 sttext.Position=ud(0.043,0,0.94,0)
sttext.FontSize="Size18" sttext.Font="ArialBold" sttext.Text="Mode:" sttext.TextColor3=bc("White").Color
cw(function() while w() do mptext2.Text = ts(mf(mp)).. "/" ..ts(mf(maxmp)) sttext.Text=" " ..a.a.. " [" ..a.b.. "] " mpfill.Size=ud((0.97/maxmp)*mp,0,0.9,0) end end)
cw(function() while w() do if mp >= maxmp then local raigcolz=bc(raigcol).Color local rr,gg,bb=raigcolz.r,raigcolz.g,raigcolz.b for xz=gg,gg-80,-5 do if mp < maxmp then mpfill.BackgroundColor3=bc(raigcol).Color break end mpfill.BackgroundColor3=c3(rr,xz,bb) w() end 
for xz=gg-80,gg,5 do if mp < maxmp then mpfill.BackgroundColor3=bc(raigcol).Color break end mpfill.BackgroundColor3=c3(rr,xz,bb) w() end end end end) local runspi=0
hu.Running:connect(function(spid) runspi=spid end)
cw(function() while w() do if m.Parent == nil then break end
if runspi == 0 then 
if (a.a == "Cham" .. "pion" or a.a == "Lan" .. "ce") and Legb and Legb2 then 
Legz(false) Legb=true w(0.06) repeat for xi=-5,5,0.5 do if runspi ~= 0 or not Legb then break end c1(llw,1,3,-0.5,-1,0,-5-xi/3,0,8+xi) c1(rlw,1,3,0.5,-1,0,-5-xi/3,0,-8-xi) w() end for xi=5,-5,-0.5 do if runspi ~= 0 or not Legb then break end c1(llw,1,3,-0.5,-1,0,-5-xi/3,0,8+xi) c1(rlw,1,3,0.5,-1,0,-5-xi/3,0,-8-xi) w() end until runspi ~= 0 or not Legb
end
else
if (a.a == "Cha" .. "mpion" or a.a == "La" .. "nce") and Legb then
Legz(true) c1(llw,1,3,-0.5,-1,0,0,0,0) c1(rlw,1,3,0.5,-1,0,0,0,0) print("mk")
end
end
end end)
cw(function() while w() do if not Button and a.ClickHold > 0 then a.ClickHold=a.ClickHold - 0.1 end end end)
hu.WalkSpeed=ns 
mp=maxmp --


