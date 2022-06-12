local plr = game.Players.LocalPlayer
local chr = plr.Character
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
local toss=false
local jamp=false
chr.Animate.Disabled=true
local running=false
local tek=0
local ltdb=false
local surfing=true
local rising=false
local cloudanim='Regular'
local dnc=false
local fldb={['w']=false,['a']=false,['s']=false,['d']=false}
local TotalRate=10
local trcolor = {"Cyan","Deep blue","Really blue","Medium blue"} 
clepz = {"138151785","131396502","152626854"}

coroutine.resume(coroutine.create(function()
for i,x in pairs(chr:GetChildren()) do if x:IsA('Part') then x.Material='SmoothPlastic' elseif x:IsA('Hat') then x.Handle.Material='SmoothPlastic' end end end))





chr.Humanoid.WalkSpeed=25


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
rutwald.Name="RootJoint"
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(10),math.rad(180),0)
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

local claud=Instance.new('Part',chr)
claud.CanCollide=false
claud.Anchored=false
claud.Name='Claud'
claud.formFactor='Custom'
claud.Locked=true
claud.Material='SmoothPlastic'
claud.BrickColor=BrickColor.new('Light stone grey')
claud.TopSurface=10
claud.BottomSurface=10
claud.LeftSurface=10
claud.RightSurface=10
claud.FrontSurface=10
claud.BackSurface=10
claud:breakJoints()
local emit=Instance.new("ParticleEmitter",claud)
emit.Lifetime=NumberRange.new(1,2)
emit.RotSpeed=NumberRange.new(3,6)
emit.Name='claudmitterpls'
emit.Acceleration=Vector3.new(math.random(-50,50)*.01,1,math.random(-50,50)*.01)
emit.Size=NumberSequence.new(.5,1)
emit.Transparency=NumberSequence.new(1)
emit.Texture="http://www.roblox.com/asset?id=241541739"
local clms=Instance.new('SpecialMesh',claud)
clms.MeshId="http://www.roblox.com/asset/?id=1095708"
clms.TextureId="http://www.roblox.com/asset/?id=298752372"
clms.Scale=Vector3.new(7,2.5,6)
local clwl=Instance.new('Weld',claud)
clwl.Part0=rutprt
clwl.Part1=claud
clwl.C0=CFrame.new(0,0,.85)*CFrame.Angles(math.rad(100),math.rad(90),0)


maus.KeyUp:connect(function(kei)
if string.byte(kei)==48 and not otheranims then
if surfing then
chr.Humanoid.WalkSpeed=40
elseif not surfing then
chr.Humanoid.WalkSpeed=25
end
end
if kei=='e' then
floating=false
end
if kei=='q' then
lowering=false
end
if kei=='w' then fldb.w=false end
if kei=='a' then fldb.a=false end
if kei=='s' then fldb.s=false end
if kei=='d' then fldb.d=false end
end)

chr.Humanoid.Changed:connect(function(c)
if c=='Jump' then
if otheranims or not surfing then
chr.Humanoid.Jump=false
end
end
end)

DrawLightning = function(Start,End,Times,Offset,Color,Thickness)
if Start.y>End.y then
local magz = (Start - End).magnitude 
local curpos = Start 
local trz = {-Offset,Offset}
for i=1,Times do 
local li = Instance.new("Part",workspace) 
li.TopSurface =10 
li.BottomSurface = 10 
li.Anchored = true  
li.Transparency = 0 
li.BrickColor = Color
li.formFactor = "Custom" 
li.CanCollide = false 
li.Size = Vector3.new(Thickness,Thickness,magz/Times) 
local lt=Instance.new("SpotLight",li)
lt.Range=16
lt.Brightness=5
lt.Shadows=true
lt.Angle=45
lt.Face="Top"
lt.Color=li.BrickColor.Color
local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
if Times == i then 
local magz2 = (curpos - End).magnitude 
li.Size = Vector3.new(Thickness,Thickness,magz2)
li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p Spawn(function() for i=1,5 do wait() li.Transparency = li.Transparency+.2 end li:Destroy() end)
end
for i,x in pairs(workspace:GetChildren()) do if x:IsA'Model' and x:findFirstChild('Torso') and x:findFirstChild('Head') and x~=chr then
for a,v in pairs(x:GetChildren()) do if v:IsA'Humanoid' then if (x.Torso.CFrame.p-End).magnitude<10 then v.Health=v.Health-30 end end end end end
local so=Instance.new('Sound',claud)
so.SoundId="http://www.roblox.com/asset?id="..clepz[math.random(1,#clepz)]
so.Volume=.2
so:Play''
end
end

maus.KeyDown:connect(function(kei)
if string.byte(kei)==48 and not otheranims then
if surfing then
chr.Humanoid.WalkSpeed=80
elseif not surfing then
chr.Humanoid.WalkSpeed=50
end
end
if kei=='r' then
if torso:findFirstChild('CedarClaudVelo') then
torso['CedarClaudVelo']:Destroy()
else
local veloo=Instance.new('BodyVelocity',torso)
veloo.Name='CedarClaudVelo'
veloo.maxForce=Vector3.new(0,math.huge,0)
end
end
if kei=='w' then fldb.w=true end
if kei=='a' then fldb.a=true end
if kei=='s' then fldb.s=true end
if kei=='d' then fldb.d=true end
if kei=='x' then
if not surfing then surfing=true
chr.Humanoid.WalkSpeed=40
elseif surfing then surfing=false
chr.Humanoid.WalkSpeed=25
end
end
if kei=='e' and not floating and not lowering and surfing then
floating=true
end
if kei=='q' and not lowering and not floating and surfing then
lowering=true
end
if kei=='f' and not otheranims and surfing then
dnc=true
anim='Dance'
end
end)

maus.Button1Down:connect(function()
if not otheranims and surfing and not ltdb and (torso.CFrame.p-maus.Hit.p).magnitude<100 then
ltdb=true
DrawLightning(claud.CFrame.p,maus.Hit.p,5,.5,BrickColor.new("New Yeller"),.2)
wait()
ltdb=false
end
end)

plr.Chatted:connect(function(m)
if m:lower():sub(1,3)=='/e ' then m=m:sub(4)
if m:lower():sub(1,5)=='dance' and not otheranims and surfing then
dnc=true
anim='Dance'
end
end
end)

game:service'RunService'.RenderStepped:connect(function()

if fldb.w or fldb.a or fldb.s or fldb.d then
nerrrk=chr.Humanoid.WalkSpeed
TotalRate=10
else
TotalRate=0
nerrrk=0
end
chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)
syne=syne+.95
if not otheranims then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and torso.Velocity.y<1 and torso.Velocity.y>-1 and not dnc then
anim="Idling"
puffing=false

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < 43 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Walking"
puffing=true
dnc=false

elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 43 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Sprinting"
puffing=true
dnc=false

elseif torso.Velocity.y>1 and surfing then
anim='Jumping'
puffing=true
dnc=false

elseif (torso.Velocity.y < -1) and surfing then
anim='Falling'
puffing=true
dnc=false
end
end

if torso:findFirstChild('CedarClaudVelo') then
if floating and surfing then
torso['CedarClaudVelo'].velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*nerrrk+Vector3.new(0,30,0)
elseif lowering and surfing then
torso['CedarClaudVelo'].velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*nerrrk+Vector3.new(0,-30,0)
else
torso['CedarClaudVelo'].velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*nerrrk
end
end

if anim=='Idling' and not surfing then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(.9,1,0)*CFrame.Angles(math.rad(190),math.rad(0),math.rad(-40)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.9,1,0)*CFrame.Angles(math.rad(190),math.rad(-0),math.rad(40)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.45,-.4)*CFrame.Angles(math.rad(-38),0,0),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.4,-1.7,-.3)*CFrame.Angles(math.rad(15),0,math.rad(-5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.32,-1.9,.1)*CFrame.Angles(math.rad(-5),0,math.rad(10)),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/30)/3,0)*CFrame.Angles(math.rad(90),math.rad(180),0),.1)
clwl.C0=Lerp(clwl.C0,CFrame.new(0,math.cos(syne/30)/3+2.25,.5)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-2.5)),.15)
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(10),math.rad(180),0)
end
if anim=='Walking' and not surfing then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.3,.55,.2)*CFrame.Angles(math.rad(290),math.rad(0),math.rad(-10)),.15)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.3,.55,.2)*CFrame.Angles(math.rad(290),math.rad(-0),math.rad(10)),.15)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.45,-.4)*CFrame.Angles(math.rad(-38),0,0),.15)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.675,-1.8,-.6)*CFrame.Angles(math.rad(40),0,math.rad(10)),.15)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.675,-1.8,-.6)*CFrame.Angles(math.rad(40),0,math.rad(-10)),.15)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/30)/3+1,2.625)*CFrame.Angles(math.rad(50),math.rad(180),0),.15)
clwl.C0=Lerp(clwl.C0,CFrame.new(0,math.cos(syne/30)/3+2.25,.5)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-5)),.15)
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(10),math.rad(180),0)
end
if anim=='Sprinting' and not surfing then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.3,.5,.15)*CFrame.Angles(math.rad(290),math.rad(0),math.rad(-10)),.15)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.3,.5,.15)*CFrame.Angles(math.rad(290),math.rad(-0),math.rad(10)),.15)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.45,-.4)*CFrame.Angles(math.rad(-28),0,0),.15)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.575,-1.3,-.6)*CFrame.Angles(math.rad(20),0,math.rad(5)),.15)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.575,-1.3,-.6)*CFrame.Angles(math.rad(20),0,math.rad(-5)),.15)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/30)/3+1,2.625)*CFrame.Angles(math.rad(40),math.rad(180),0),.15)
clwl.C0=Lerp(clwl.C0,CFrame.new(0,math.cos(syne/30)/3+2.25,.6)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-10)),.15)
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(10),math.rad(180),0)
end
if anim=='Idling' and surfing then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.45,.5,0)*CFrame.Angles(math.cos(syne/30)/10,math.rad(0),math.rad(12.5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.25,.4,0)*CFrame.Angles(math.cos(syne/30)/10*-1,math.rad(-0),math.rad(-15)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(-.15,1.45,0)*CFrame.Angles(math.rad(0),math.rad(85),math.rad(0)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.575,-1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.575,-1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(-5)),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(-3,math.cos(syne/30)/3+4.4,0)*CFrame.Angles(math.rad(0),math.rad(90),0),.1)
clwl.C0=Lerp(clwl.C0,CFrame.new(0,math.cos(syne/30)/3+2.25,-.25)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-2)),.15)
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(0),math.rad(180),0)
end
if anim=='Walking' and surfing then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.25,.5,0)*CFrame.Angles(math.cos(syne/30)/10,math.rad(0),math.rad(25)),.15)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.25,.4,0)*CFrame.Angles(math.cos(syne/30)/10*-1,math.rad(-0),math.rad(-20)),.15)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(-.15,1.45,0)*CFrame.Angles(math.rad(0),math.rad(89),math.rad(0)),.15)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.575,-1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(5)),.15)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.615,-1.55,-.1)*CFrame.Angles(math.rad(0),0,math.rad(-5)),.15)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(-3,math.cos(syne/30)/3+4.4,-.25)*CFrame.Angles(math.rad(-5),math.rad(90),0),.15)
clwl.C0=Lerp(clwl.C0,CFrame.new(0,math.cos(syne/30)/3+2.5,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(5)),.15)
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(0),math.rad(180),0)
end
if anim=='Sprinting' and surfing then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.25,.5,0)*CFrame.Angles(math.cos(syne/30)/10,math.rad(0),math.rad(40)),.15)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.25,.4,0)*CFrame.Angles(math.cos(syne/30)/10*-1,math.rad(-30),math.rad(-20)),.15)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(-.25,1.45,0)*CFrame.Angles(math.rad(0),math.rad(89),math.rad(0)),.15)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.575,-1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(5)),.15)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.725,-1.3,-.1)*CFrame.Angles(math.rad(0),0,math.rad(-10)),.15)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(-3,math.cos(syne/30)/3+2.4,-.5)*CFrame.Angles(math.rad(-15),math.rad(90),0),.15)
clwl.C0=Lerp(clwl.C0,CFrame.new(0,math.cos(syne/30)/3+.5,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(10)),.15)
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(0),math.rad(180),0)
end
if anim=='Jumping' and surfing then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.375,.5,0)*CFrame.Angles(0,math.rad(5),math.rad(48)),.15)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.25,.4,0)*CFrame.Angles(0,math.rad(-20),math.rad(-35)),.15)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(-.25,1.45,0)*CFrame.Angles(math.rad(0),math.rad(89),math.rad(0)),.15)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.575,-1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(5)),.15)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.725,-1.2,-.1)*CFrame.Angles(math.rad(0),0,math.rad(-10)),.15)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(-3,4,0)*CFrame.Angles(math.rad(-30),math.rad(90),0),.15)
clwl.C0=Lerp(clwl.C0,CFrame.new(0,2.5,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(10)),.15)
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(0),math.rad(180),0)
end
if anim=='Falling' and surfing then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.375,.5,0)*CFrame.Angles(0,math.rad(-20),math.rad(30)),.15)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.25,.25,0)*CFrame.Angles(0,math.rad(5),math.rad(-55)),.15)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(-.25,1.45,0)*CFrame.Angles(math.rad(0),math.rad(89),math.rad(0)),.15)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.575,-1.2,-.1)*CFrame.Angles(math.rad(0),0,math.rad(5)),.15)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.725,-1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(-10)),.15)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(-3,4,-0)*CFrame.Angles(math.rad(15),math.rad(90),0),.15)
clwl.C0=Lerp(clwl.C0,CFrame.new(0,2.5,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-20)),.15)
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(0),math.rad(180),0)
end
if anim=='Dance' and surfing and dnc then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.2,1,0)*CFrame.Angles(math.rad(190),math.rad(0),math.rad(-10)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.2,1,0)*CFrame.Angles(math.rad(190),math.rad(-0),math.rad(10)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.45,-.2)*CFrame.Angles(math.rad(-15),0,0),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.575,-1.9,-.1)*CFrame.Angles(math.rad(5),0,math.rad(5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.575,-1.9,-.1)*CFrame.Angles(math.rad(5),0,math.rad(-5)),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,2.375+math.cos(syne/30)/10,3)*CFrame.Angles(0,math.rad(180),0),.1)
clwl.C0=Lerp(clwl.C0,CFrame.new(0,math.cos(syne/30)/10+5.8,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),.15)
rutprt.RootJoint.C1=CFrame.new(0,-1,3)*CFrame.Angles(math.rad(10),math.rad(180),0)
end


emit.Rate=TotalRate
if surfing then
claud.BrickColor=BrickColor.new("Black")
clms.VertexColor=TwnVector3(clms.VertexColor,Vector3.new(.1,.1,.1),.075)
else
claud.BrickColor=BrickColor.new("Institutional white")
clms.VertexColor=TwnVector3(clms.VertexColor,Vector3.new(1,1,1),.075)
end

if puffing then
tek=tek+1
else
tek=0
end
if tek>=15 then
tek=0
local cl2=Instance.new('Part',Workspace)
local p1=math.random(10,30)*.1
local p2=math.random(40,60)*.1
local p3=math.random(70,90)*.1
cl2.CanCollide=false
cl2.Anchored=true
cl2.Name='Claud'
cl2.formFactor='Custom'
cl2.BrickColor=claud.BrickColor
cl2.TopSurface=10
cl2.BottomSurface=10
cl2.LeftSurface=10
cl2.RightSurface=10
cl2.FrontSurface=10
cl2.BackSurface=10
game:service'Debris':AddItem(cl2,1)
cl2.CFrame=claud.CFrame*CFrame.new(-3.5,0,math.random(-15,15)*.1)*CFrame.Angles(math.rad(0),0,math.rad(90))
local cl2l=Instance.new('PointLight',cl2)
cl2l.Range=8
cl2l.Color=Color3.new(1,1,1)
cl2l.Brightness=123123
local clms2=Instance.new('SpecialMesh',cl2)
clms2.MeshId="http://www.roblox.com/asset/?id=1095708"
clms2.Scale=Vector3.new(1,2,1.5)
coroutine.wrap(function()
for ttt=0,1.05,.1 do cl2.Transparency=ttt cl2.CFrame=cl2.CFrame*CFrame.Angles(math.rad(p1),math.rad(p2),math.rad(p3)) clms2.Scale=clms2.Scale+Vector3.new(.035,.035,.035) cl2l.Range=cl2l.Range-.5 wait()
end
cl2:Destroy()
end)()
end

end)