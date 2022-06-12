script.Parent = nil

--[[ Below Spike]]

local color = "Really black"

wt = 0.1 s = script it = Instance.new v3 = Vector3.new c3 = Color3.new ud = UDim2.new cf = CFrame.new ca = CFrame.Angles pi = math.pi rd = math.rad 

bc = BrickColor.new ab = math.abs de = math.deg ts = tostring tn = tonumber ti = table.insert tr = table.remove 

mf = math.floor cr = coroutine.resume cc = coroutine.create sf = string.find sb = string.sub rn = math.random 

asset = "http://www.roblox.com/asset/?id=" 

sr = string.reverse sl = string.lower su = string.upper 

Serv = {} Serv.p = game:GetService(sr("sreyalP")) Serv.l = game:GetService(sr("gnithgiL")) 

Serv.is = game:GetService(sr("ecivreStresnI")) if game:findFirstChild(sr("revreSkrowteN")) then Serv.ns = game:GetService(sr("revreSkrowteN")) else NetworkServer = nil end 

Serv.sg = game:GetService(sr("iuGretratS")) Serv.sp = game:GetService(sr("kcaPretratS")) Serv.d = game:GetService(sr("sirbeD")) 

Decs = {} 

Decs.Shine = "48965808" Decs.Crack = "49173398" Decs.Cloud = "1095708" Decs.Spike = "1033714" Decs.Rock = "1290033" Decs.Crown = "20329976" Decs.Crown2 = "1323306" 

function ft(tablez,item) if not tablez or not item then return nil end for i=1,#tablez do if tablez == item then return i end end return nil end 

function re(par,obj) if type(par) ~= "userdata" or type(obj) ~= "string" then return nil end if par:findFirstChild(obj) then par[obj]:Remove() end end 

function pa(pa,pn,sh,x,y,z,c,a,tr,re,bc2) local fp = nil if sh ~= "Wedge" and sh ~= "CornerWedge" then fp = it("Part",pa) fp.Shape = sh fp.formFactor = "Custom" elseif sh == "Wedge" then fp = it("WedgePart",pa) fp.formFactor = "Custom" 

elseif sh == "CornerWedge" then fp = it("CornerWedgePart",pa) end fp.Size = v3(x,y,z) fp.CanCollide = c fp.Anchored = false fp.BrickColor = bc(bc2) fp.Transparency = tr fp.Reflectance = re fp.BottomSurface = 0 fp.Name = pn --fp.FrontSurface = "Hinge" 

fp.TopSurface = 0 fp.Velocity = Vector3.new(0,10,0) fp:BreakJoints() return fp end 

function clearit(tab) for xx=1,#tab do tab[xx]:Remove() end end 

function weld(pa,p0,p1,x,y,z,a,b,c) local fw = it("Weld",pa) fw.Part0 = p0 fw.Part1 = p1 fw.C0 = cf(x,y,z) *ca(a,b,c) return fw end 

function spm(ty,pa,ss) local sp = it("SpecialMesh",pa) sp.MeshType = ty sp.Scale = Vector3.new(ss,ss,ss) end function mbm(pa,sx,sy,sz) local bm = Instance.new("BlockMesh",pa) bm.Scale = Vector3.new(sx,sy,sz) end 

function fd(pa,ob) if pa:findFirstChild(ob) then return pa[ob] else return nil end end 

function ccn(pa,cl) for i,v in pairs(pa:children()) do if sf(v.className:lower(),cl:lower()) then v:Remove() end end end 

function stick(hit2,hit) local weld = Instance.new("Weld") weld.Part0 = hit2 weld.Part1 = hit local HitPos = hit2.Position local CJ = CFrame.new(HitPos) 

local C0 = hit2.CFrame:inverse() *CJ local C1 = hit.CFrame:inverse() * CJ weld.C0 = C0 weld.C1 = C1 weld.Parent = hit2 end 

function stick2(hit2,hit,tostick) local weld = Instance.new("Weld") weld.Part0 = tostick weld.Part1 = hit2 local HitPos = hit.Position local CJ = CFrame.new(HitPos) local C0 = hit2.CFrame:inverse() *CJ local C1 = hit.CFrame:inverse() * CJ weld.C0 = C1 weld.C1 = C0 weld.Parent = hit2 end 

function invis(o) for i,v in pairs(o:children()) do if v:IsA("BasePart") then v.Transparency = 1 end invis(v) end end 

function newhats(p,o,o2) for i,v in pairs(p:children()) do if v:IsA("Hat") then local np = v.Handle:Clone() np.Transparency = 0 np.Mesh.Scale = np.Mesh.Scale*1.1 np.Parent = o np.CFrame = v.Handle.CFrame stick2(np,o2,o) end end end 

function ray(Pos, Dir) return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999), c) end 

function hasclass(prt,cls) clases = 0 for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then clases = clases + 1 end end return clases end 

function fade(prt,incr) cr(cc(function() for i=prt.Transparency,1,incr do prt.Transparency = i wait() end prt:Remove() end)) end 

function rtab(tabz,obj) for i=1,#tabz do if tabz == obj then tr(tabz,i) break end end end 

function RandomPlayer(spiz) local torz = spis local torses = {} for i,v in pairs(Serv.p:children()) do if v ~= Serv.p.LocalPlayer and v.Character ~= nil and v.Character:findFirstChild("Torso") then ti(torses,v.Character.Torso) end end if #torses > 0 then torz = torses[rn(1,#torses)] end return torz end 

function Trail(ob,times,waitz,col,thickz,ofz) local oldpos = (ob.CFrame *ofz).p for i=1,times do local obp = (ob.CFrame *ofz).p local mag = (oldpos - obp).magnitude local tr = pa(ob,"trail","Block",0,0,0,false,false,0.5,0,col) tr.Anchored = true tr.CFrame = cf(oldpos,obp) tr.CFrame = tr.CFrame + tr.CFrame.lookVector* (mag/2) 

local trm = it("CylinderMesh",tr) trm.Scale = v3(5*thickz,mag*5,5*thickz) cr(cc(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale = v3(i,mag*5,i) wait() end tr:Remove() end)) tr.CFrame = tr.CFrame *ca(rd(90),0,0) oldpos = obp wait(waitz) end end 

sTrail = {} 

function Trail2(ob,waitz,col,thickz,ofz) cr(cc(function() ti(sTrail,ob) 

local oldpos = (ob.CFrame *ofz).p 

repeat local obp = (ob.CFrame *ofz).p 

local mag = (oldpos - obp).magnitude 

local tr = pa(ob,"trail","Block",0,0,0,false,false,0.5,0,col) tr.Anchored = true 

tr.CFrame = cf(oldpos,obp) 

tr.CFrame = tr.CFrame + tr.CFrame.lookVector* (mag/2) 

local trm = it("CylinderMesh",tr) trm.Scale = v3(5*thickz,mag*5,5*thickz) 

cr(cc(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale = v3(i,mag*5,i) wait() end tr:Remove() end)) 

tr.CFrame = tr.CFrame *ca(rd(90),0,0) oldpos = obp 

wait(waitz) until ft(sTrail,ob) == nil end)) 

end 

nocf = cf(0,0,0) noca = ca(0,0,0) 

repeat wait() until Serv.p.LocalPlayer.Character and Serv.p.LocalPlayer.Character:findFirstChild("Torso") 

pl = Serv.p.LocalPlayer 

bp = pl.Backpack 

pg = pl.PlayerGui 

c = pl.Character 

he = c.Head 

to = c.Torso ccn(to,"BodyPosition") ccn(to,"BodyGyro") 

hu = c.Humanoid hu.PlatformStand = false 

mou = nil 

Button = false 

Key = false 

Anim = {} 

Anim.ClickHold = 0 

Anim.c = true -- weapon change or act debounce 

Anim.a = "None" -- current weapon 

Anim.b = "None" -- weapon act 

bets = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "} 

act = {key = {}} 

for i=1,#bets do table.insert(act.key,bets) end 

Sounds = { 

Boom = "16976189"; 

SniperFire = "1369158"; 

ShotgunFire2 = "1868836"; 

MinigunFire = "2692806"; 

MinigunCharge = "2692844"; 

MinigunDischarge = "1753007"; 

Flashbang = "16976189"; 

Beep = "15666462"; 

Smash = "2801263"; 

Punch = "31173820"; 

Slash = "rbxasset://sounds/swordslash.wav"; 

Falcon = "1387390"; 

Cast = "2101137"; 

Spin = "1369159"; 

Abscond = "2767090"; 

ElectricalCharge = "2800815"; 

FireExplosion = "3264793"; 

SaberLightUp = "10209303"; 

SaberSlash = "10209280"; 

SaberHit = "44463749"; 

EnergyBlast = "10209268"; 

Lunge = "rbxasset://sounds/swordlunge.wav"; 

Unsheath = "rbxasset://sounds/unsheath.wav"; 

} 

local SoundTest = asset .. Sounds.Spin 

local hd = he:Clone() 

Anim.BodyAnims = 0 

Anim.Welding = 0 function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz) local xx2,yy2,zz2 = 0,0,0 local x2,y2,z2 = 0,0,0 if c0orc1 == 0 then

xx2,yy2,zz2 = wexx.C0:toEulerAnglesXYZ() x2,y2,z2 = wexx.C0.x,wexx.C0.y,wexx.C0.z elseif c0orc1 == 1 then xx2,yy2,zz2 = wexx.C1:toEulerAnglesXYZ() x2,y2,z2 = wexx.C1.x,wexx.C1.y,wexx.C1.z else xx2,yy2,zz2 = wexx.C1:toEulerAnglesXYZ() 

x2,y2,z2 = wexx.C0.x,wexx.C0.y,wexx.C0.z end Anim.Welding = Anim.Welding + 1 local twa = 1 for i=0,twa,smmx do if c0orc1 == 0 then wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1 == 1 then 

wexx.C1 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) else wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) 

wexx.C1 = ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))end wait() end local i = 1 if c0orc1 == 0 then wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1 == 1 then wexx.C1 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 

else wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) wexx.C1 = ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) end Anim.Welding = Anim.Welding - 1 end 

to["Left Hip"].Part0 = to to["Right Hip"].Part0 = to to["Left Shoulder"].Part0 = to to["Right Shoulder"].Part0 = to 

if c:findFirstChild("Suit") then game:service'Debris':AddItem(c["Suit"],0.035) end 

m = it("Model",c) m.Name = "Suit" 

Misc = {} 

Misc["x"] = it("Model",m) 

invis(c) 

p = {} 

t = pa(m,"Torso","Block",0,0,0,false,false,0,0,ts(color)) tw = weld(t,to,t,0,0,0,0,0,0) 

la = pa(m,"Left Arm","Block",0,0,0,false,false,0,0,ts(color)) law = weld(la,t,la,-1.5,1,0,0,0,0) 

ra = pa(m,"Right Arm","Block",0,0,0,false,false,0,0,ts(color)) raw = weld(ra,t,ra,1.5,1,0,0,0,0) 

ll = pa(m,"Left Leg","Block",0,0,0,false,false,0,0,ts(color)) llw = weld(ll,t,ll,-0.5,-1,0,0,0,0) 

rl = pa(m,"Right Leg","Block",0,0,0,false,false,0,0,ts(color)) rlw = weld(rl,t,rl,0.5,-1,0,0,0,0) 

hd.Parent = m hd.Transparency = 0 hd.face.Face = "Front" hdw = weld(hd,t,hd,0,1.5,0,0,0,0) he.face.Face = "Bottom" 

local nbb = it("BlockMesh") nbb.Offset = v3(0,-1,0) nbb.Scale = v3(5,10,5) 

nbb:Clone().Parent = la nbb:Clone().Parent = ra nbb:Clone().Parent = ll nbb:Clone().Parent = rl 

nbb:Clone().Parent = t t.Mesh.Offset = v3(0,0,0) t.Mesh.Scale = Vector3.new(10,10,5) 

to["Left Hip"].Part0 = t to["Right Hip"].Part0 = t to["Left Shoulder"].Part0 = t to["Right Shoulder"].Part0 = t 

function Armz(ison) if ison then 

c["Left Arm"].Transparency = 0 c["Right Arm"].Transparency = 0 la.Transparency = 1 ra.Transparency = 1

law.Part0 = c["Left Arm"] law.C0 = cf(0,1,0) raw.Part0 = c["Right Arm"] raw.C0 = cf(0,1,0) 

else 

c["Left Arm"].Transparency = 1 c["Right Arm"].Transparency = 1 la.Transparency = 0 ra.Transparency = 0

law.Part0 = t law.C0 = cf(-1.5,1,0) raw.Part0 = t raw.C0 = cf(1.5,1,0) 

end end 

function Legz(ison) if ison then 

c["Left Leg"].Transparency = 0 c["Right Leg"].Transparency = 0 ll.Transparency = 1 rl.Transparency = 1

llw.Part0 = c["Left Leg"] llw.C0 = cf(0,1,0) rlw.Part0 = c["Right Leg"] rlw.C0 = cf(0,1,0) 

else 

c["Left Leg"].Transparency = 1 c["Right Leg"].Transparency = 1 ll.Transparency = 0 rl.Transparency = 0

llw.Part0 = t llw.C0 = cf(-0.5,-1,0) rlw.Part0 = t rlw.C0 = cf(0.5,-1,0) 

end end function Headz(ison) if ison then he.Transparency = 0 else he.Transparency = 1 end end 

Legz(true) Armz(true) newhats(c,hd,he) 

function Sound(sid,pit,vol) local ss = it("Sound") ss.Name = "Sound" ss.Parent = hd ss.SoundId = sid ss.Pitch = pit ss.Volume = vol/3 ss.PlayOnRemove = true wait() ss:Remove() end 

Healthz = 250 hu.MaxHealth = Healthz hu.Health = Healthz 

mp = 1250000 maxmp = 1250000 ns = 18 

function addmp(mpz) mp = mp + mpz if mp > maxmp then mp = maxmp end end 

function DmgHumanoidsNear(pos,dmg,rndmg,mag,forc) 

local function kidive(ob) 

for i,v in pairs(ob:children()) do 

if not v.Parent:IsA("Hat") and v:IsA("BasePart") and v.Parent.Name ~= "Suit" and v.Parent.Parent:findFirstChild("Humanoid") == nil and v.Parent.Parent.Name ~= "Suit" and v.Parent:findFirstChild("Humanoid") == nil and (v.Position - pos).magnitude < mag*1.3 and v.Anchored == false and v:GetMass() < 150 then 

v:BreakJoints() v.Velocity = cf(pos,v.Position).lookVector*forc 

end 

if v:IsA("Humanoid") and v ~= hu and v.Parent:findFirstChild("Torso") then 

if (pos - v.Parent.Torso.Position).magnitude < mag then local tdmg = dmg*rn(1,rndmg) 

addmp(tdmg) v:TakeDamage(tdmg) 

end 

end 

if not v:IsA("Camera") and not v:IsA("Script") then kidive(v) end end end 

kidive(workspace) 

end 

function DmgHit(weplol,mind,maxd,gain) 

weplol.Touched:connect(function(hit) 

if hit.Parent:findFirstChild("Humanoid") == nil then return end 

local aihu = hit.Parent.Humanoid 

local dmgzorz = rn(mind,maxd) addmp(dmgzorz*gain) 

aihu:TakeDamage(dmgzorz) Sound(asset .. Sounds.Smash,1,1) 

end) 

end 

function ShootSpike(sc,adjus,istrai,typ,loltors) 

cr(cc(function() Sound(Sounds.Slash,1.1,1) 

local spi = pa(c,"","Block",0.6*sc,2*sc,0.6*sc,true,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 

spim.Scale = v3(0.12*sc,3*sc,0.12*sc) spi.Anchored = true if typ == 1 then spi.CFrame = cf((loltors.CFrame).p,mou.hit.p) *adjus 

elseif typ == 2 then if adjus == "random" then spi.CFrame = cf(to.Position,RandomPlayer(spi).Position) else spi.CFrame = loltors.CFrame *adjus end end spi.CFrame = spi.CFrame *ca(rd(-90),0,0) 

if istrai then cr(cc(function() Trail(spi,15,0.15,color,0.35,cf(0,-1,0)) end)) end 

local bullethit = false 

local tyms = 0 if rn(1,17) == 1 then it("Fire",spi).Heat = -25 end 

local minusz = -0.0001 

local spid = 0.25 if typ == 2 then spid = 0.01 end 

local divzz = 110 if typ == 2 then divzz = 50 end 

local tehpos = v3(0,0,0) 

repeat 

tyms = tyms + 2 minusz = (-90/3000/divzz)*tyms 

local bhit,bpos = ray(spi.Position,spi.Position - (spi.CFrame *cf(0,-1,0)).p) tehpos = bpos 

if bpos ~= nil and (bpos - (spi.CFrame *cf(0,1,0)).p).magnitude < 2.2 then bullethit = bhit else spi.CFrame = spi.CFrame *cf(0,2,0) *ca(rd(minusz),rd(0),0) end 

if tyms%8 == 0 then wait() end 

until bullethit or spi.Position.y < -300 or tyms > 3000 

if bullethit then 

spi.Velocity = v3(0,0,0) local xx,yy,zz = spi.CFrame:toEulerAnglesXYZ() spi.CFrame = cf(tehpos) *ca(xx,yy,zz) *cf(0,-spi.Size.y/9,0) 

if bullethit.Anchored then Sound(asset .. Sounds.Punch,1,1) spi.Anchored = true else local cfz = spi.CFrame *cf(0,-0*sc,0) 

spi.Size = v3(0,0,0) spi.CFrame = cfz spi.Anchored = false 

if bullethit.Parent:findFirstChild("Humanoid") then stick(spi,bullethit) spi.CanCollide = false local mul = 1 if spi:findFirstChild("Fire") then mul = 2.5 end 

local aihu = bullethit.Parent.Humanoid addmp(20*mul) aihu:TakeDamage(rn(10*mul,24*mul)) Sound(asset .. Sounds.Smash,1.35,1) 

elseif bullethit.Parent.Parent:findFirstChild("Humanoid") then stick(spi,bullethit) spi.CanCollide = false local mul = 1 if spi:findFirstChild("Fire") then mul = 2.5 end 

local aihu = bullethit.Parent.Parent.Humanoid addmp(20*mul) aihu:TakeDamage(rn(10*mul,24*mul)) Sound(asset .. Sounds.Smash,1.35,1) 

elseif bullethit:GetMass() < 500 then stick(spi,bullethit) Sound(asset .. Sounds.Punch,1,1) if hasclass(bullethit,"Weld") < 1 and bullethit.Parrent.Parent:findFirstChild("Humanoid") == nil then bullethit.Velocity = (spi.CFrame*ca(rd(90),0,0)).lookVector*60 end 

end 

end 

game:service'Debris':AddItem(spi,8) 

else 

spi.Parent = nil 

end 

end)) 

end 

function NormalPose(inc) cr(cc(function() c1(tw,inc,3,0,0,0,0,0,0) end)) cr(cc(function() c1(llw,inc,3,-0.5,-1,0,0,0,0) end)) 

cr(cc(function() c1(rlw,inc,3,0.5,-1,0,0,0,0) end)) cr(cc(function() c1(law,inc,3,-1.5,1,0,0,0,0) end)) c1(raw,inc,3,1.5,1,0,0,0,0) end 

Anim.Act = function(k,ccz) 

if ccz then 

if k == "x" then Anim.c = false 

Anim.a = "Spikes" 

for i=1,18 do 

local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 

spim.Scale = v3(0.1,0,0.1) 

local spiw = weld(spi,t,spi,rn(-8,8)/10,rn(-8,8)/10,0,rd(rn(60,120)),0,rd(rn(-30,30))) 

cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.17,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) 

end 

for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 

local spiw = weld(spi,la,spi,0.2,-i/1.1+(0.7),-0.25,rd(-45),0,rd(120)) cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end 

for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike local spiw = weld(spi,ra,spi,-0.2,-i/1.1+(0.7),-0.25,rd(-45),0,rd(-120)) 

cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end 

for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 

local spiw = weld(spi,ll,spi,0.2,-i/1.1+(0.2),-0.3,0,rd(50),rd(70)) cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end 

for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike local spiw = weld(spi,rl,spi,-0.2,-i/1.1+(0.2),-0.3,0,rd(-50),rd(-70)) 

cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end 

elseif k == "c" then 

end 

else 

if k == "x" and Anim.b == "None" and Anim.c then Anim.c = false Anim.a = "None" 

for zi,v in pairs(Misc[k]:children()) do 

cr(cc(function() 

for i=1,0,-0.1 do 

v.Weld.C0 = v.Weld.C0 *cf(0,-0.17,0) v.Mesh.Scale = v3(0.1,i*4,0.1) 

wait() 

end v:Remove() Anim.c = true end)) 

end 

elseif mp >= 50 and k == "e" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SideSlash" Anim.c = false mp = mp - 50 

Armz(false) 

cr(cc(function() c1(law,0.16,3,-1.2,1,-0.2,40,0,40) end)) 

cr(cc(function() c1(tw,0.1,0,0,0,0,0,-40,0) end)) 

c1(raw,0.16,3,1.2,1,0.2,50,0,50) Sound(Sounds.Unsheath,1.2,1) 

local spi = pa(m,"","Block",0.3,6,0.3,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 

spim.Scale = v3(0.2,6,0.2) 

local spiw = weld(spi,ra,spi,0,-2,2,rd(90),0,0) 

c1(raw,0.16,3,1.5,1,0,0,0,-40) Sound(Sounds.Slash,0.9,1) 

DmgHit(spi,5,10,2) 

cr(cc(function() Trail(spi,8,0.04,color,0.6,cf(0,3,0)) end)) 

cr(cc(function() c1(tw,0.08,0,0,0,0,0,45,0) end)) 

cr(cc(function() c1(spiw,0.1,0,0,-3.6,-1,210,0,0) end)) 

c1(raw,0.08,3,1.3,0.6,-0.5,-160,0,-90) wait(0.2) 

cr(cc(function() c1(tw,0.08,0,0,0,0,0,0,0) c1(law,0.16,3,-1.5,1,0,0,0,0) end)) 

c1(raw,0.08,3,1.2,1,0.2,50,0,50) spi:Remove() c1(raw,0.16,3,1.5,1,0,0,0,0) 

Armz(true) 

Anim.b = "None" Anim.c = true 

elseif k == "c" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Sit" Anim.c = false 

Legz(false) Armz(false) 

cr(cc(function() c1(llw,0.1,3,-0.5,-1,-0.3,-80,-20,0) end)) 

cr(cc(function() c1(rlw,0.1,3,0.5,-1,-0.3,-80,20,0) end)) 

cr(cc(function() c1(law,0.1,3,-1.3,1,0,15,0,15) end)) 

cr(cc(function() c1(raw,0.1,3,1.3,1,0,15,0,-15) end)) 

c1(tw,0.1,3,0,-1.5,0.35,-15,0,0) 

Anim.c = true hu.WalkSpeed = 0 

elseif k == "c" and Anim.a == "Spikes" and Anim.b == "Sit" then Anim.c = false hu.WalkSpeed = ns NormalPose(0.08) Legz(true) Armz(true) Anim.c = true Anim.b = "None" 

elseif mp >= 6 and k == "f" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeShoot" Anim.c = false 

Armz(false) 

cr(cc(function() c1(law,0.1,3,-1.1,0.55,0,-85,20,0) end)) c1(raw,0.1,3,1.1,0.55,0,-85,-20,0) 

repeat mp = mp - 6 ShootSpike(rn(8,24)/10,ca(0,0,0),true,1,t) wait(0.12) c1(law,1,3,-1.1,0.55,0,-85+rn(-5,5),20+rn(-5,5),0) 

c1(raw,1,3,1.1,0.55,0,-85+rn(-5,5),-20+rn(-5,5),0) until mp < 6 or not act.key["f"] 

cr(cc(function() c1(law,0.1,3,-1.5,1,0,0,0,0) end)) c1(raw,0.1,3,1.5,1,0,0,0,0) 

Armz(true) Anim.b = "None" Anim.c = true 

elseif mp >= 30 and k == "q" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Flip" Anim.c = false 

Legz(false) Armz(false) mp = mp - 30 

cr(cc(function() c1(llw,0.1,3,-0.5,-0.4,-0.3,55,0,8) end)) 

cr(cc(function() c1(rlw,0.1,3,0.5,-0.7,-0.3,55,0,-8) end)) 

cr(cc(function() c1(law,0.1,3,-1.3,1,-0.2,-170,0,-15) end)) 

cr(cc(function() c1(raw,0.1,3,1.3,1,-0.2,-170,0,15) end)) c1(tw,0.1,3,0,-0.8,0,-30,0,0) hu.WalkSpeed = ns*1.25 

cr(cc(function() c1(tw,0.036,3,0,0,0,360,0,0) end)) 

local bf = it("BodyForce",t) bf.force = v3(0,10000,0) game:service'Debris':AddItem(bf,0.165) Sound(Sounds.Slash,1.2,1) 

wait(0.2) for zx=1,6 do ShootSpike(1.5,cf(rd(-5,5)/10,-2,-1)*ca(rd(-90+rn(-2,2)),0,rd(rn(-2,2))),true,2,to) wait(0.06) end hu.WalkSpeed= ns 

cr(cc(function() c1(llw,0.2,3,-0.5,-1,0,0,0,0) end)) 

cr(cc(function() c1(rlw,0.2,3,0.5,-1,0,0,0,0) end)) 

cr(cc(function() c1(law,0.2,3,-1.5,1,0,0,0,0) end)) c1(raw,0.2,3,1.5,1,0,0,0,0) 

Legz(true) Armz(true) Anim.b = "None" Anim.c = true 

elseif mp < maxmp and k == "z" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Charge" Anim.c = false 

hu.WalkSpeed = 0 Armz(false) 

local mz = it("Model",m) 

for xi=1,360,360/8 do 

local spi = pa(mz,"","Block",1,6,1,true,false,0,0,color) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 

spim.Scale = v3(1,6,1) spi.CFrame = t.CFrame *ca(0,rd(xi),0) *cf(0,0,10) *cf(0,-7,0) *ca(rd(rn(-5,5)),0,rd(rn(-5,5))) 

cr(cc(function() for x=1,12,1 do spi.CFrame = spi.CFrame *cf(0,0.5,0) wait() end end)) 

cr(cc(function() repeat wait() until not act.key["z"] or mp >= maxmp for x=1,12,1 do spi.CFrame = spi.CFrame *cf(0,-0.5,0) wait() end mz:Remove() end)) 

end 

for xi=-1,1,2 do 

local spi = pa(mz,"","Block",1,10,1,true,false,0,0,color) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 

spim.Scale = v3(1.2,10,1.2) spi.CFrame = t.CFrame *cf(xi*2.2,0,-2) *cf(0,-11,0) 

cr(cc(function() for x=1,20,1 do spi.CFrame = spi.CFrame *cf(0,0.5,0) wait() end end)) 

cr(cc(function() repeat wait() until not act.key["z"] or mp >= maxmp for x=1,20,1 do spi.CFrame = spi.CFrame *cf(0,-0.25,0) wait() end mz:Remove() end)) 

end 

local spi = pa(mz,"","Block",0,0,0,false,false,0,0,raigcol) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Crown 

spim.Scale = v3(8,3,8) spi.CFrame = t.CFrame *cf(0,-2,0) Sound(asset .. Sounds.Cast,0.7,1) 

cr(cc(function() for i=1,0.5,-0.05 do spi.Transparency = i end repeat wait() spi.CFrame = spi.CFrame *ca(0,rd(11),0) until not act.key["z"] or mp >= maxmp for i=0.5,1,0.05 do spi.Transparency = i end spi:Remove() end)) 

cr(cc(function() c1(law,0.06,3,-1.2,0.55,-0.1,-90,-25,0) end)) c1(raw,0.06,3,1.2,0.55,-0.1,-90,25,0) 

repeat 

wait() addmp(4.5) until not act.key["z"] or mp >= maxmp 

cr(cc(function() c1(raw,0.1,3,1.5,1,0,0,0,0) end)) c1(law,0.1,3,-1.5,1,0,0,0,0) 

Armz(true) Anim.c = true Anim.b = "None" hu.WalkSpeed = ns 

elseif mp >= 150 and k == "r" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpinSlash" Anim.c = false 

Armz(false) mp = mp - 150 

cr(cc(function() c1(law,0.08,3,-1.2,1,0.2,40,0,-30) end)) c1(raw,0.08,3,1.2,1,0.2,40,0,30) Sound(Sounds.Unsheath,1.2,1) 

local spi = pa(m,"","Block",0.3,6,0.3,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(0.2,6,0.2) local spiw = weld(spi,ra,spi,0,-2,2,rd(90),0,0) 

local spi1 = pa(m,"","Block",0.3,6,0.3,false,false,0,0,color) local spim = it("SpecialMesh",spi1) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(0.2,6,0.2) local spi1w = weld(spi1,la,spi1,0,-2,2,rd(90),0,0) 

cr(cc(function() c1(spiw,0.07,0,0,-4,0,170,0,0) end)) cr(cc(function() c1(spi1w,0.07,0,0,-4,0,190,0,0) end)) 

cr(cc(function() c1(law,0.07,3,-1,0.6,0,0,0,85) end)) c1(raw,0.07,3,1,0.6,0,0,0,-95) wait(0.2) DmgHit(spi,2,5,2) DmgHit(spi1,2,5,2) cr(cc(function() Trail(spi,24,0.05,color,0.35,cf(0,3,0)) end)) cr(cc(function() Trail(spi1,24,0.05,color,0.35,cf(0,3,0)) end)) 

local tru = true local wnd = pa(m,"","Block",14,0,14,false,false,0.3,0,color) wnd.Anchored = true it("CylinderMesh",wnd).Scale = v3(1,0.1,1) cr(cc(function() repeat wait() wnd.CFrame = t.CFrame *cf(0,0.5,0) *ca(rd(rn(-8,8)),0,rd(rn(-8,8))) if rn(1,4) == 2 then Sound(asset .. Sounds.Spin,1.25,1) end until not tru fade(wnd,0.08) end)) c1(tw,0.02,3,0,0,0,0,-360*5,0) tru = false tw.C1 = ca(0,0,0) 

cr(cc(function() c1(law,0.08,3,-1.2,1,0.2,40,0,-30) end)) c1(raw,0.08,3,1.2,1,0.2,40,0,30) spi:Remove() spi1:Remove() 

cr(cc(function() c1(law,0.16,3,-1.5,1,0,0,0,0) end)) c1(raw,0.16,3,1.5,1,0,0,0,0) 

Anim.c = true Armz(true) Anim.b = "None" 

elseif mp >= 10 and k == "v" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Hoverboard" Anim.c = false 

Armz(false) Legz(false) 

local spi = pa(m,"","Block",0.3,10,0.3,true,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(0.8,10,0.8) local spiw = weld(spi,to,spi,-0.65,-3,0,rd(-80),0,0) 

local spi1 = pa(m,"","Block",0.3,10,0.3,true,false,0,0,color) local spi1m = it("SpecialMesh",spi1) spi1m.MeshType = "FileMesh" spi1m.MeshId = asset .. Decs.Spike spi1m.Scale = v3(0.8,10,0.8) local spi1w = weld(spi1,to,spi1,0.65,-3,0,rd(-80),0,0) 

local bpt = it("BodyPosition",to) bpt.position = to.Position bpt.maxForce = v3(1/0,1/0,1/0) 

local bgt = it("BodyGyro",to) bgt.maxTorque = v3(1/0,1/0,1/0) bgt.D = 1250 hu.PlatformStand = true 

cr(cc(function() c1(law,0.07,3,-1,0.5,0,0,0,83) end)) cr(cc(function() c1(raw,0.07,3,1,0.5,0,0,0,-97) end)) 

cr(cc(function() c1(llw,0.07,3,-0.5,-1,0,-20,0,25) end)) cr(cc(function() c1(rlw,0.07,3,0.5,-1,0,-20,0,-25) end)) 

c1(tw,0.07,3,0,0,0,15,90,0) Trail2(spi,0.15,color,1.8,cf(0.6,-5,0)) 

repeat local lulzspid = -Anim.ClickHold*2.5 if lulzspid < -50 then lulzspid = -50 end 

bpt.position = (to.CFrame *cf(0,0,-7+(lulzspid))).p bgt.cframe = cf(to.Position,mou.hit.p) mp = mp - 1 wait() until not act.key["v"] or mp < 1 

bpt:Remove() bgt:Remove() hu.PlatformStand = false rtab(sTrail,spi) local spisc = spim.Scale 

for i=1,0,-0.1 do spim.Scale = spisc*i spi1m.Scale = spisc*i wait() end 

spi:Remove() spi1:Remove() Anim.c = true NormalPose(0.08) Armz(true) Legz(true) Anim.b = "None" 

elseif mp >= 60 and k == "t" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeWall" Anim.c = false 

Armz(false) Legz(false) mp = mp - 60 hu.WalkSpeed = 0 Sound(asset .. Sounds.Cast,1.5,1) wait(0.25) 

cr(cc(function() c1(law,0.06,3,-1.2,0.8,0,30,0,40) end)) cr(cc(function() c1(raw,0.06,3,1,0.5,-0.6,-55,0,10) end)) 

cr(cc(function() c1(llw,0.06,3,-0.5,1.1,-0.7,-20,0,10) end)) cr(cc(function() c1(rlw,0.06,3,0.5,-0.4,0,50,0,-10) end)) 

c1(tw,0.06,3,0,-1.8,0,30,0,0) Sound(asset .. Sounds.Smash,0.26,1) 

for i=-12,12,2 do wait() 

local spi = pa(workspace,"","Block",3,20,3,true,false,0,0,color) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(2,29,2) 

DmgHumanoidsNear((to.CFrame *cf(i,-1,-8) *cf(0,0,ab(-i/2.5))).p,2,12,14,70) spi.CFrame = to.CFrame *cf(i,-20,-8) *cf(0,0,ab(-i/2.5)) cr(cc(function() for i=1,20 do spi.CFrame =spi.CFrame *cf(0,1,0) wait() end end)) game:service'Debris':AddItem(spi,32) 

end 

hu.WalkSpeed = ns NormalPose(0.08) 

Armz(true) Legz(true) Anim.b = "None" Anim.c = true 

elseif mp >= 8 and k == "g" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeCannon" Anim.c = false 

Armz(false) Legz(false) 

cr(cc(function() c1(law,0.06,3,-1.2,0.8,0,-30,0,40) end)) cr(cc(function() c1(raw,0.06,3,1.2,0.8,0,-30,0,-40) end)) 

cr(cc(function() c1(llw,0.06,3,-0.5,-0.8,0,-10,0,0) end)) cr(cc(function() c1(rlw,0.06,3,0.5,-0.8,0,-10,0,0) end)) 

c1(tw,0.06,3,0,-0.3,0,10,0,0) 

repeat 

wait(0.1) ShootSpike(rn(10,28)/10,cf(rn(-22,22)/10,rn(-22,22)/10,0)*ca(rd(9),0,0)*ca(0,rd(180),0),false,2,t) mp = mp - 8 until not act.key["g"] or mp < 1 

NormalPose(0.08) 

Armz(true) Legz(true) Anim.b = "None" Anim.c = true 

elseif mp >= 600 and k == "b" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeRoll" Anim.c = false 

Armz(false) Legz(false) hu.WalkSpeed = ns*3.5 mp = mp - 600 local spiks = {} 

for i=1,30 do 

local spi = pa(m,"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 

spim.Scale = v3(0,0,0) 

local spiw = weld(spi,t,spi,rn(-10,10)/10,rn(-10,10)/10,rn(-10,10)/10,rd(rn(-360,360)),0,rd(rn(-360,360))) 

table.insert(spiks,spiw) cr(cc(function() for i=0,2,0.1 do spiw.C0 = spiw.C0 *cf(0,0.17,0) spim.Scale = v3(0.5,i*4,0.5) wait() end end)) 

end 

cr(cc(function() c1(llw,0.1,3,-0.5,-0.8,-0.6,65,0,8) end)) 

cr(cc(function() c1(rlw,0.1,3,0.5,-0.8,-0.6,65,0,-8) end)) 

cr(cc(function() c1(law,0.1,3,-1.3,1,-0.2,65,0,30) end)) 

cr(cc(function() c1(raw,0.1,3,1.3,1,-0.2,65,0,-30) end)) c1(tw,0.1,3,0,-2,0,0,0,0) local function funnyfiur(zazaz) ShootSpike(rn(15,38)/10,zazaz,false,2,to) end 

cr(cc(function() for i=0,1,0.005 do if rn(1,3) == 2 then DmgHumanoidsNear(to.Position,2,12,8,70) end if rn(1,5) == 5 then hu:MoveTo((to.CFrame *cf(0,0,-6)).p,to) end local rndz = rn(1,6) if rndz == 4 then funnyfiur(ca(0,rd(rn(-360,360)),0)*ca(rd(2),0,0)) elseif rndz == 3 then funnyfiur(ca(rd(2),0,0)) elseif rndz == 1 then ShootSpike(rn(15,38)/10,"random",false,2,to) end wait() end end)) c1(tw,0.005,3,0,-1.7,0,360*10,0,0) 

NormalPose(0.07) 

for xi=1,#spiks do local spiw = spiks[xi] cr(cc(function() for i=2,0,-0.1 do spiw.C0 = spiw.C0 *cf(0,-0.17,0) spiw.Part1.Mesh.Scale = v3(0.5,i*4,0.5) wait() end spiw.Part1:Remove() end)) end wait(0.5) 

Armz(true) Legz(true) Anim.b = "None" Anim.c = true hu.WalkSpeed = ns 

end -- key 

end -- bool 

end -- func end 

re(bp,"ProCacDef") 

bin = it("HopperBin",bp) bin.Name = "Spike" 

bin.Selected:connect(function(mouse) mou = mouse 

mouse.Button1Down:connect(function() Button = true cr(cc(function() repeat wait(0.1) Anim.ClickHold = Anim.ClickHold + 0.1 until not Button end)) 

end) 

mouse.Button1Up:connect(function() Button = false 

end) 

mouse.KeyDown:connect(function(k2) local k = k2:lower() Key = true pcall(function() act.key[k] = true end) 

if k == "p" then Sound(asset .. Sounds.Smash,0.26,1) end 

if Anim.c then 

if Anim.a == "None" then 

Anim.Act(k,true) 

else 

Anim.Act(k,false) 

end -- anim ab end 

end -- c end 

end) 

mouse.KeyUp:connect(function(k2) pcall(function() act.key[k2:lower()] = false end) Key = false end) 

end) 

bin.Deselected:connect(function(mouse) 

end) 

re(pg,"RMDXSig") raigcol = "Frostftw" 

Gui = it("ScreenGui",pg) Gui.Name = "RMDXSig" 

fr = it("Frame",Gui) fr.Size = ud(1,0,1,0) fr.Active = false fr.BackgroundTransparency = 1 

mptray = it("TextLabel",fr) mptray.BackgroundColor3 = bc("Black").Color 

mptray.Size = ud(0.18,0,0.08,0) mptray.BorderSizePixel = 0 mptray.Position = ud(0.41,0,0.025,0) mptray.Text = "" 

mptext = it("TextLabel",mptray) mptext.BackgroundTransparency = 1 mptext.Size = ud(1,0,1,0) mptext.TextColor3 = bc("White").Color 

mptext.FontSize = "Size18" mptext.Font = "ArialBold" mptext.ZIndex = 2 mptext.Text = "Mp Power" 

mpfill = it("ImageLabel",mptray) mpfill.BackgroundColor3 = bc(raigcol).Color mpfill.Image = asset .. Decs.Shine mpfill.Size = ud(0.97,0,0.90,0) mpfill.Position = ud(0.015,0,0.05,0) 

cr(cc(function() while wait() do mpfill.Size = ud((0.97/maxmp)*mp,0,0.9,0) end end)) 

cr(cc(function() while wait() do if mp >= maxmp then local raigcolz = bc(raigcol).Color local rr,gg,bb = raigcolz.r,raigcolz.g,raigcolz.b for xz=gg,gg-80,-5 do if mp < maxmp then mpfill.BackgroundColor3 = bc(raigcol).Color break end mpfill.BackgroundColor3 = c3(rr,xz,bb) wait() end 

for xz=gg-80,gg,5 do if mp < maxmp then mpfill.BackgroundColor3 = bc(raigcol).Color break end mpfill.BackgroundColor3 = c3(rr,xz,bb) wait() end end end end)) 

cr(cc(function() while wait() do if not Button and Anim.ClickHold > 0 then Anim.ClickHold = Anim.ClickHold - 0.1 end end end)) 

function find(name)

p = game.Players:GetChildren()

for i,v in pairs(p) do

if string.find(v.Name, name) then

return v

end

end

end

local skin = color

players = game.Players.LocalPlayer

function chat(msg)

msg = string.lower()

if string.sub(msg,1,6)=="color/" then

col = string.sub(msg,7)

color = ""..col..""


end

if string.sub(msg,1,5)=="color" then

m = game.Players.Yanabis.Character:GetChildren()

for i,v in pairs(m) do

if v.ClassName == "Part" then

v.BrickColor = BrickColor.new(color)


wait(0)


local g = game.Players.jhamarfrost.Character.Suit:GetChildren()

for b,t in pairs(g) do

if t.ClassName == "Part" then

t.BrickColor = BrickColor.new(color)

end

end

end

end

end



end

players.Chatted:connect(chat)




--Lego--
