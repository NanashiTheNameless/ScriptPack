local plr=game:service'Players'.LocalPlayer
local chr=plr.Character
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
local rutprt = chr.HumanoidRootPart
local torso = chr.Torso
local otheranims=false
local armmovement=false
chr.Animate.Disabled=true
local RunSpeed=30
local WlkSpeed=18
local runnin=false
local disabled=false
local tik=0
local height=1
local fldb={['w']=false,['a']=false,['s']=false,['d']=false}
local raising=false
local lowering=false
local pseudohead=hed:Clone()
for i,x in pairs(pseudohead:GetChildren()) do if not x.ClassName:find('Mesh') then x:Destroy() end end
pseudohead.Name='PseudoHead'
pseudohead.Parent=chr.Head
local pseudoweld=Instance.new('Weld',torso)
pseudoweld.Part0=hed
pseudoweld.Name='PseudoHedWld'
pseudoweld.Part1=pseudohead
hed.Transparency=1
local nerrrk=0

coroutine.resume(coroutine.create(function()
local rate=.05
local Hats={}
for i,x in pairs(chr:GetChildren()) do if x:IsA("Hat") then table.insert(Hats,x) x.Handle.Mesh.TextureId="http://www.roblox.com/asset?id=25701026"
end
end
local lam=Instance.new("SpecialMesh",larm)
lam.MeshId="http://www.roblox.com/asset?id=12221505"
lam.TextureId="http://www.roblox.com/asset?id=25701026"
local ram=Instance.new("SpecialMesh",rarm)
ram.MeshId="http://www.roblox.com/asset?id=12221505"
ram.TextureId="http://www.roblox.com/asset?id=25701026"
local rlm=Instance.new("SpecialMesh",rleg)
rlm.MeshId="http://www.roblox.com/asset?id=12221626"
rlm.TextureId="http://www.roblox.com/asset?id=25701026"
local llm=Instance.new("SpecialMesh",lleg)
llm.MeshId="http://www.roblox.com/asset?id=12221626"
llm.TextureId="http://www.roblox.com/asset?id=25701026"
local trm=Instance.new("SpecialMesh",torso)
trm.MeshId="http://www.roblox.com/asset?id=12221758"
trm.TextureId="http://www.roblox.com/asset?id=25701026"
local hem=Instance.new("SpecialMesh",hed)
hem.MeshId="rbxasset://fonts/head.mesh"
hem.TextureId="http://www.roblox.com/asset?id=25701026"
local hem2=Instance.new("SpecialMesh",pseudohead)
hem2.MeshId="rbxasset://fonts/head.mesh"
hem2.TextureId="http://www.roblox.com/asset?id=25701026"
local asd=Instance.new('PointLight',torso)
asd.Brightness=123
asd.Range=12
asd.Shadows=true

while wait'0' do
for a=0,1,rate do 
lam.VertexColor=Vector3.new(a,0,-a+1)
ram.VertexColor=Vector3.new(a,0,-a+1)
rlm.VertexColor=Vector3.new(a,0,-a+1)
llm.VertexColor=Vector3.new(a,0,-a+1)
trm.VertexColor=Vector3.new(a,0,-a+1)
hem.VertexColor=Vector3.new(a,0,-a+1)
hem2.VertexColor=Vector3.new(a,0,-a+1)
asd.Color=Color3.new(a,0,-a+1)
coroutine.wrap(function()
for x=1,#Hats do
Hats[x].Handle.Mesh.VertexColor=Vector3.new(a,0,-a+1)
end
end)()
wait''
end
for a=0,1,rate do
lam.VertexColor=Vector3.new(-a+1,a,0)
ram.VertexColor=Vector3.new(-a+1,a,0)
rlm.VertexColor=Vector3.new(-a+1,a,0)
llm.VertexColor=Vector3.new(-a+1,a,0)
trm.VertexColor=Vector3.new(-a+1,a,0)
hem.VertexColor=Vector3.new(-a+1,a,0)
hem2.VertexColor=Vector3.new(-a+1,a,0)
asd.Color=Color3.new(-a+1,a,0)
coroutine.wrap(function()
for x=1,#Hats do
Hats[x].Handle.Mesh.VertexColor=Vector3.new(-a+1,a,0)
end
end)()
wait''
end
for a=0,1,rate do
lam.VertexColor=Vector3.new(0,-a+1,a)
ram.VertexColor=Vector3.new(0,-a+1,a)
rlm.VertexColor=Vector3.new(0,-a+1,a)
llm.VertexColor=Vector3.new(0,-a+1,a)
trm.VertexColor=Vector3.new(0,-a+1,a)
hem.VertexColor=Vector3.new(0,-a+1,a)
hem2.VertexColor=Vector3.new(0,-a+1,a)
asd.Color=Color3.new(0,-a+1,a)
coroutine.wrap(function()
for x=1,#Hats do
Hats[x].Handle.Mesh.VertexColor=Vector3.new(0,-a+1,a)
end
end)()
wait''
end
end
end))









coroutine.wrap(function()
for i,x in pairs(hed:GetChildren()) do if x:IsA('Sound') then x:Destroy() end end end)()

local flap=Instance.new("Sound",torso)
flap.Volume=.3
flap.Pitch=1
flap.SoundId="http://www.roblox.com/asset?id=90820031"

function Lerp(a, b, i)
local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
local calx = com1[1] + (com2[1] - com1[1]) * i
local caly = com1[2] + (com2[2] - com1[2]) * i
local calz = com1[3] + (com2[3] - com1[3]) * i
local cala = com1[4] + (com2[4] - com1[4]) * i
local calb = com1[5] + (com2[5] - com1[5]) * i
local calc = com1[6] + (com2[6] - com1[6]) * i
return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end

function TwnSingleNumber(s,f,m)
local wot=s+(f-s)*m
return wot
end

function TwnVector3(q,w,e)
local begin={q.x,q.y,q.z}
local ending={w.x,w.y,w.z}
local bgx=begin[1]+(ending[1]-begin[1])*e
local bgy=begin[2]+(ending[2]-begin[2])*e
local bgz=begin[3]+(ending[3]-begin[3])*e
return Vector3.new(bgx,bgy,bgz)
end

newWeld = function(wld, wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end

newWeld(law, torso, larm, -1.5, 0.5, 0)
newWeld(raw, torso, rarm, 1.5, 0.5, 0)
newWeld(llw, torso, lleg, -.5, -2, 0)
newWeld(rlw, torso, rleg, .5, -2, 0)
newWeld(hw, torso, hed, 0, 1.5, 0)
local rutwald=Instance.new('Weld',rutprt)
rutwald.Part0=rutprt
rutwald.Part1=torso
rutprt.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
rleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
lleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)

local anim = "Idling"
local lastanim = "Idling"
local val = 0
local syne = 0
local num = 0
local runtime = 0



maus.KeyDown:connect(function(kei)
if string.byte(kei)==48 and not otheranims and not disabled then
chr.Humanoid.WalkSpeed=RunSpeed
runnin=true
end
if kei=="e" and not otheranims and not disabled and not lowering then
raising=true
end
if kei=="q" and not otheranims and not disabled and not raising then
lowering=true
end
if kei=='r' then
if rutprt:findFirstChild('CedarHarpyVelo') then
rutprt['CedarHarpyVelo']:Destroy()
else
local veloo=Instance.new('BodyVelocity',rutprt)
veloo.Name='CedarHarpyVelo'
veloo.maxForce=Vector3.new(math.huge,math.huge,math.huge)
end
end
if kei=='w' then fldb.w=true end
if kei=='a' then fldb.a=true end
if kei=='s' then fldb.s=true end
if kei=='d' then fldb.d=true end
end)

maus.KeyUp:connect(function(kei)
if string.byte(kei)==48 and not otheranims and not disabled then
chr.Humanoid.WalkSpeed=WlkSpeed
runnin=false
end
if kei=="e" and not otheranims and not disabled then
raising=false
end
if kei=="q" and not otheranims and not disabled then
lowering=false
end
if kei=='w' then fldb.w=false end
if kei=='a' then fldb.a=false end
if kei=='s' then fldb.s=false end
if kei=='d' then fldb.d=false end
end)

game:service'RunService'.RenderStepped:connect(function()
if fldb.w or fldb.a or fldb.s or fldb.d then
nerrrk=chr.Humanoid.WalkSpeed
else
nerrrk=0
end
if rutprt:findFirstChild('CedarHarpyVelo') then
if raising and not lowering then
rutprt['CedarHarpyVelo'].velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*nerrrk+Vector3.new(0,15,0)
rutprt['CedarHarpyVelo'].maxForce=Vector3.new(1/0,1/0,1/0)
elseif lowering and not raising then
rutprt['CedarHarpyVelo'].maxForce=Vector3.new(0,0,0)
else
rutprt['CedarHarpyVelo'].velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*nerrrk
rutprt['CedarHarpyVelo'].maxForce=Vector3.new(1/0,1/0,1/0)
end
end
syne=syne+1
if not otheranims then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and not dnc  and torso.Velocity.y<5 and torso.Velocity.y>-5 then
anim="Idling"

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < 25 and torso.Velocity.y<5 and torso.Velocity.y>-5 then
anim="Walking"
dnc=false

elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 25  and torso.Velocity.y<5 and torso.Velocity.y>-5 then
anim="Sprinting"
dnc=false

elseif torso.Velocity.y>5 then
anim='Jumping'
dnc=false

elseif (torso.Velocity.y < -5) then
anim='Falling'
dnc=false
end
end

if anim=="Idling" then
tik=tik+1
if tik==45 then tik=0
flap:play''
end
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.55,0)*CFrame.Angles(math.sin(syne/16)/3,0,(math.sin(syne/8)*1.5)+math.rad(55)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.55,0)*CFrame.Angles(math.sin(syne/16)/3,0,-(math.sin(syne/8)*1.5)-math.rad(55)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.8,math.sin(syne/16)/3)*CFrame.Angles(-math.sin(syne/16)/3,0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.8,math.sin(syne/16)/3)*CFrame.Angles(-math.sin(syne/16)/3,0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(0,math.rad(0),0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-(math.sin(syne/8))*1.8+.5,-(math.sin(syne/16)/2))*CFrame.Angles(math.sin(syne/16)/10,math.rad(0),math.rad(0)),.025)
end
if anim=="Walking" then
tik=tik+1
if tik==43 then tik=0
flap:play''
end
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-3)+math.sin(syne/7)/4,0,(math.sin(syne/7)*1.5)+math.rad(55)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-3)+math.sin(syne/7)/4,0,-(math.sin(syne/7)*1.5)-math.rad(55)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.8,-math.sin(syne/14)/10)*CFrame.Angles(math.sin(syne/14)/10+math.rad(-5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.8,-math.sin(syne/14)/10)*CFrame.Angles(math.sin(syne/14)/10+math.rad(-5),0,math.rad(2.5)),.1)
if raising then
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.2)*CFrame.Angles(math.rad(25),math.rad(0),0),.1)
else
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(0,math.rad(0),0),.1)
end
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-(math.sin(syne/7))*1.8+.5,math.sin(syne/14)/2)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.025)
end
if anim=="Sprinting" then
tik=tik+1
if tik==40 then tik=0
flap:play''
end
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-3)-math.sin(syne/6.5)/2,0,(math.sin(syne/6.5)*1.5)+math.rad(55)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-3)-math.sin(syne/6.5)/2,0,-(math.sin(syne/6.5)*1.5)-math.rad(55)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-2,0)*CFrame.Angles(math.rad(0),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.5,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.1)
if raising then
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.2)*CFrame.Angles(math.rad(25),math.rad(0),0),.1)
else
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(0,math.rad(0),0),.1)
end
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-(math.sin(syne/6.5)*1.6)+.5,math.sin(syne/6.5)/5)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),.025)
end
if anim=="Jumping" and not raising then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.55,0)*CFrame.Angles(0,0,math.rad(5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.55,0)*CFrame.Angles(0,0,math.rad(5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-2,0)*CFrame.Angles(math.rad(0),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.5,-.1)*CFrame.Angles(math.rad(-12.5),0,math.rad(2.5)),.125)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),math.rad(0),0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,.5,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),.025)
elseif anim=="Jumping" and raising then
tik=tik+1
if tik==45 then tik=0
flap:play''
end
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-3)-math.sin(syne/6.5)/2,0,(math.sin(syne/6.5)*1.5)+math.rad(55)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-3)-math.sin(syne/6.5)/2,0,-(math.sin(syne/6.5)*1.5)-math.rad(55)),.1)
end
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),math.rad(0),0),.1)
end
if anim=="Falling" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,1,0)*CFrame.Angles(math.rad(15),0,math.rad(175)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,1,0)*CFrame.Angles(math.rad(15),0,math.rad(-175)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-2,0)*CFrame.Angles(math.rad(0),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.5,-.125)*CFrame.Angles(math.rad(-15),0,math.rad(2.5)),.125)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,-.1)*CFrame.Angles(math.rad(-20),math.rad(0),0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,1,0)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end


chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)
end)