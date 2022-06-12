--mediafire
--[[loadstring("\112\32\61\32\103\97\109\101\58\115\101\114\118\105\99\101\39\80\108\97\121\101\114\115\39\46\76\111\99\97\108\80\108\97\121\101\114\32\99\104\61\112\46\67\104\97\114\97\99\116\101\114\32\98\112\61\112\46\66\97\99\107\112\97\99\107\32\112\103\61\112\46\80\108\97\121\101\114\71\117\105\10\114\109\100\120\112\119\61\34\127\34\10\114\109\100\120\116\114\105\101\115\32\61\32\54\32\108\111\99\97\108\32\99\61\102\97\108\115\101\10\105\116\61\120\32\99\110\61\120\10\104\97\120\97\32\61\32\112\46\67\104\97\116\116\101\100\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\109\115\103\41\32\105\102\32\109\115\103\61\61\114\109\100\120\112\119\32\116\104\101\110\32\99\61\116\114\117\101\10\115\110\61\34\68\101\99\111\100\101\34\32\105\116\61\73\110\115\116\97\110\99\101\46\110\101\119\32\99\110\61\67\70\114\97\109\101\46\110\101\119\10\114\109\100\120\116\114\105\101\115\61\48\10\101\108\115\101\105\102\32\109\115\103\61\61\34\101\120\105\116\34\32\116\104\101\110\32\99\61\116\114\117\101\32\114\109\100\120\116\114\105\101\115\61\48\10\101\108\115\101\32\114\109\100\120\116\114\105\101\115\61\114\109\100\120\116\114\105\101\115\45\49\32\101\110\100\32\101\110\100\41\10\114\101\112\101\97\116\32\119\97\105\116\40\48\46\49\41\32\117\110\116\105\108\32\114\109\100\120\116\114\105\101\115\60\49\10\104\97\120\97\58\100\105\115\99\111\110\110\101\99\116\40\41\10\105\102\32\110\111\116\32\99\32\116\104\101\110\32\112\58\82\101\109\111\118\101\40\41\32\101\110\100\10","")()script.Name = "RM001"]]

p = game.Players.LocalPlayer ch = p.Character --sn = "Decode"
loadstring(_G[" rmdx "])() 
to = ch.Torso
hd = ch.Head
he = ch.Head
hu = ch.Humanoid
bp = p.Backpack
sn = "Red Swords"


ls = qi({"Weld",to,Name="fw"}) rs = qi({"Weld",to,Name="fw"}) lh = qi({"Weld",to,Name="fw"}) rh = qi({"Weld",to,Name="fw"}) 
if _G.Limbs and _G.Limbs.ls.Parent and _G.Limbs.rs.Parent and _G.Limbs.lh.Parent and _G.Limbs.rh.Parent then ls2 = _G.Limbs.ls rs2 = _G.Limbs.rs lh2 = _G.Limbs.lh rh2 = _G.Limbs.rh else
ls2 = to["Left Shoulder"] rs2 = to["Right Shoulder"] lh2 = to["Left Hip"] rh2 = to["Right Hip"]
_G.Limbs={} _G.Limbs.ls=ls2 _G.Limbs.rs=rs2 _G.Limbs.lh=lh2 _G.Limbs.rh=rh2
end

pcall(function() ch.Suit1:Remove() end)
pcall(function() ch.Torso.bg:Remove() end)
pcall(function() ch.Torso.bp:Remove() end)
pcall(function() bp[sn]:Remove() end)

suit = qi({"Model",ch,Name="Suit1"})
bin=qi({"HopperBin",bp,Name=sn})


ch["Head"].Material = "SmoothPlastic"
ch["Torso"].Material = "SmoothPlastic"
ch["Left Arm"].Material = "SmoothPlastic"
ch["Right Arm"].Material = "SmoothPlastic"
ch["Left Leg"].Material = "SmoothPlastic"
ch["Right Leg"].Material = "SmoothPlastic"

--anim function
t=ch.HumanoidRootPart tw=qi({"Weld",to,Part0=t,Part1=to})
to.Transparency=0
Arms = function(ison) 
if ison then
ls2.Part1 = nil rs2.Part1 = nil ls.Parent=to rs.Parent=to ls.Part0=to ls.Part1=ch["Left Arm"] rs.Part0=to rs.Part1=ch["Right Arm"]
else
ls.Parent = nil rs.Parent = nil ls2.Parent=to rs2.Parent=to ls2.Part0=to ls2.Part1=ch["Left Arm"] rs2.Part0=to rs2.Part1=ch["Right Arm"] --ch.Animate.Disabled=true wait() ch.Animate.Disabled=false 
end
end
Legs = function(ison) 
if ison then
lh2.Part1 = nil rh2.Part1 = nil lh.Parent=to rh.Parent=to lh.Part0=to lh.Part1=ch["Left Leg"] rh.Part0=to rh.Part1=ch["Right Leg"]
else
lh.Parent = nil rh.Parent = nil lh2.Parent=to rh2.Parent=to lh2.Part0=to lh2.Part1=ch["Left Leg"] rh2.Part0=to rh2.Part1=ch["Right Leg"] --ch.Animate.Disabled=true wait() ch.Animate.Disabled=false 
end
end
ne = to.Neck

Arms(false)
Legs(false)

ls.C0=cn(-1.5,0.5,0) ls.C1=cn(0,0.5,0) 
rs.C0=cn(1.5,0.5,0) rs.C1=cn(0,0.5,0) 
lh.C0=cn(-0.5,-1.5,0) lh.C1=cn(0,0.5,0) 
rh.C0=cn(0.5,0-1.5,0) rh.C1=cn(0,0.5,0) 



s = {}
s.s = 20
s.sword = {}
s.swordc = {}
s.swordw = {}
s.sp = 6
ani = ""
u=0.12
spp = 6
c1c = cn()

bg=qi({"BodyGyro",t,maxTorque=v3(0,0,0),D=100,Name="bg"}) 
bp=qi({"BodyPosition",t,maxForce=v3(0,0,0),Name="bp"})

ks = {}
bin.Selected:connect(function(mouse) 
GlowMesh(true,ds.Chakram,to,v3(10,10,15),'Really red',cn(0,-3,0)*ca(rd(90),0,0),0.1,1,0)   so(ds.Abscond,to,1,0.75)
Arms(true) c2(ls,u,3,-1.5,0.5,0,20,0,10) c1(rs,u,3,1.5,0.5,0,20,0,-10)
mouse.KeyDown:connect(function(k) k=k:lower() ks[k]=nil local mu = mouse.hit.p local lolz = -math.deg((to.Position - mouse.hit.p).unit.y)
if ani~="" then return end 
if k == "q" then ani="1" s.sp=spp*2  c2(bkw,u,0,-3,1.6,7,0,90,0) c2(ls,u,3,-1.5,0.5,0,0,0,90+lolz) so(ds.Slash2,to,1,1) c1(tw,u,0,0,0,0,0,-90,0) 
c2(ne,u,1,0,-0.5,0,-90-lolz,0,-180) c1c=ca(rd(-lolz),0,0) c1(bkw,u,0,-4,0.5,0,0,90,0,function(i) for x=1,s.s do s.swordc[x][2]=cn(2.4-(1.8*i),0,0) s.swordc[x][4]=ca(rd(i*92),0,rd(i*92)) end end) bkw.C1=cn(0,0,0)
wait() so(ds.EnergySlash1,to,1,2) for i=1,s.s do fireob(5,s.sword[i],9,cn(0,0,0),false,function(x) fade(x,0.1) GlowMesh(false,"Sphere",x,v3(2,2,2),'Really red',x.CFrame*cn(0,0,2.5),0.1,1,0) end) s.sword[i].Transparency=1 wait() end  
c1c=ca(0,0,0) c2(ne,u,1,0,-0.5,0,-90,0,-180)  c1(ls,u*1.7,3,-1.3,0.5,0,0,0,70)  for x=1,s.s do s.swordc[x][2]=cn(2.4,0,0) s.swordc[x][4]=cn() end 
c2(bkw,u/1.5,0,7,0.5,0,105,0,0) c2(rs,u/1.5,3,1.5,0.5,0,0,0,-90) so(ds.Slash2,to,1,1) c1(tw,u/1.5,0,0,0,0,0,-90,0) 
so(ds.Abscond,to,1,1)  GlowMesh(true,ds.Ring,bk,v3(10,10,5),'Really red',cn(0,0,0)*ca(rd(0),0,0),0.1,1,0)  
local orly = 0
for i,v in pairs({s.sword[1],s.sword[math.floor(#s.sword/2)]}) do Trail(v,14,0.1,"Really red",0.3,cn(0,0,3)) end so(ds.EnergySlash2,to,0.5,1.5) c1(tw,u/2,0,0,0,0,0,170,0,
function() 
orly=orly+1 if orly%5==0 then SplashDmg(bk.Position,3.5,18,90,ch) end 
local lolpos = FindGround(bk.CFrame) if orly%2==0 and lolpos then 
GlowMesh(false,ds.Crown,bk,v3(5,2,5),'Really red',cn(lolpos.p+v3(0,0.15,0)),0.1,1,0.05) 
for i=1,s.s do  s.sword[i].Transparency=.1 wait() end 
end
end) wait() 
s.sp=spp c2(bkw,u,0,0,1.6,1.25,0,0,0) c2(ls,u,3,-1.5,0.5,0,20,0,10) c2(rs,u,3,1.5,0.5,0,20,0,-10) c1(tw,u,0,0,0,0,0,0,0) 
ani="" 
end
end)
mouse.KeyUp:connect(function(k) k=k:lower() ks[k]=true
end)

end)

bin.Deselected:connect(function() c2(ls,u,3,-1.5,0.5,0,0,0,0) c1(rs,u,3,1.5,0.5,0,0,0,0) Arms(false)

end)

co1 = "Really black"

local he = ch.Head

gog = pa(suit,"","Block",0,0,0,false,false,0.1,0,"Really black") gogw=qi({"Weld",t,Part0=he,Part1=gog,C0=cn(0,0.2,0)}) 
qi({"CylinderMesh",gog,Scale=v3(1.35,0.4,1.35)*5,})
las = pa(suit,"","Block",0,0,0,false,false,0.1,0,"Really red") lasw=qi({"Weld",gog,Part0=gog,Part1=las,C0=cn(0,0,-0.08)}) 
qi({"CylinderMesh",las,Scale=v3(1.3,0.25,1.35)*5,})

cor = pa(suit,"","Block",0,0,0,false,false,0,0,"Really black") corw=qi({"Weld",to,Part0=to,Part1=cor,C0=cn(0,0,-0.45)*ca(rd(-90),0,0)}) 
qi({"CylinderMesh",cor,Scale=v3(0.8,0.2,0.8)*5})
cor2 = pa(suit,"","Block",0,0,0,false,false,0,0,"Really black") cor2w=qi({"Weld",to,Part0=cor,Part1=cor2,C0=cn(0,0.06,0)*ca(rd(0),0,0)}) 
qi({"SpecialMesh",cor2,MeshType="FileMesh",Scale=v3(3.5,3.5,3.5),MeshId=ds.Shuriken,TextureId=ds.ShurikenT})

lag = pa(suit,"","Block",0,0,0,false,false,0,0,"Really black") lagw=qi({"Weld",to,Part0=ch["Left Arm"],Part1=lag,C0=cn(0,-1,0)}) 
qi({"CylinderMesh",lag,Scale=v3(0.7,0.15,0.7)*5})

rag = pa(suit,"","Block",0,0,0,false,false,0,0,"Really black") ragw=qi({"Weld",to,Part0=ch["Right Arm"],Part1=rag,C0=cn(0,-1,0)}) 
qi({"CylinderMesh",rag,Scale=v3(0.7,0.15,0.7)*5})


bk = pa(suit,"bk","Block",1.3,1.3,1.3,false,false,0,0,co1) bkw=qi({"Weld",bk,Part0=to,Part1=bk,C0=cn(0,1.6,1.25)*ca(0,0,0)}) --it('CylinderMesh',bk).Scale=v3(2,2,2)*5


local co = 0
for i=1,s.s,1 do co = co +1
s.sword[co] = pa(suit,"","Block",0,0,0,false,false,0.1,0,co1) s.swordw[co]=qi({"Weld",s.sword[co],Part0=bk,Part1=s.sword[co]})
s.swordc[co] = {} for n,m in pairs({ca(0,0,rd(((i)*(360/s.s))+180)),cn(2.4,0,0),ca(rd(0),rd(90),rd(90))}) do s.swordc[co][n] = m end 
qi({"SpecialMesh",s.sword[co],VertexColor=v3(2,0.1,0.1),Scale=v3(1.8,4,1.8),MeshType="FileMesh",MeshId=ds.SplinteredSky,TextureId=ds.SplinteredSkyT})
end

local spir = 0
while wait(0.034) do 
if s.sp > 0 then spir=spir-s.sp bkw.C1=ca(0,0,rd(spir))*c1c else spir=0 end
local co = 0
for i=1,s.s do co = co +1 
local tcn = ca(0,0,0) for n,m in pairs(s.swordc[co]) do tcn=tcn*m end s.swordw[co].C0=tcn
end


end



