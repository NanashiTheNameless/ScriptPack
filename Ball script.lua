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
chr.Animate.Disabled=true
local RunSpeed=36
local WlkSpeed=18
local runnin=false
local tik=0
local rollvalue=0
local swimming=false
local fldb={['w']=false,['a']=false,['s']=false,['d']=false}
local jumpval=0
local idlerollv=0

local BallColor=torso.BrickColor
local BallTransparency=0
local BallReflectance=0
local BallMaterial="Neon"



coroutine.wrap(function()
for i,x in pairs(hed:GetChildren()) do if x:IsA('Sound') then x:Destroy() end end end)()
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
function Avg(a, b)
return CFrame.new((a.X+b.X)/2,(a.Y+b.Y)/2,(a.Z+b.Z)/2)
end

local jump=Instance.new('Sound',rutprt)
jump.Volume=.2
jump.Pitch=1
jump.SoundId='http://www.roblox.com/asset?id=170588191'

newWeld(law, torso, larm, -1.5, 0.5, 0)
newWeld(raw, torso, rarm, 1.5, 0.5, 0)
newWeld(llw, torso, lleg, -.5, -2, 0)
newWeld(rlw, torso, rleg, .5, -2, 0)
newWeld(hw, torso, hed, 0, 1.5, 0)
local rutwald=Instance.new('Weld',rutprt)
rutwald.Part0=rutprt
rutwald.Part1=torso
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
if string.byte(kei)==48 and not otheranims and not sitting and not disabled then
runnin=true
end
if kei=='w' then fldb.w=true end
if kei=='a' then fldb.a=true end
if kei=='s' then fldb.s=true end
if kei=='d' then fldb.d=true end
end)
maus.KeyUp:connect(function(kei)
if string.byte(kei)==48 and not otheranims and not sitting and not disabled then
runnin=false
end
if kei=='w' then fldb.w=false end
if kei=='a' then fldb.a=false end
if kei=='s' then fldb.s=false end
if kei=='d' then fldb.d=false end
end)

local bawl=Instance.new("Part",torso)
bawl.formFactor="Custom"
bawl.Shape="Ball"
bawl.BrickColor=(BallColor or torso.BrickColor)
bawl.Material=BallMaterial
bawl.Transparency=(BallTransparency or 0)
bawl.Reflectance=(BallReflectance or 0)
bawl.Size=Vector3.new(5.35,5.35,5.35)
bawl.TopSurface=10
bawl.BottomSurface=10
bawl.LeftSurface=10
bawl.RightSurface=10
bawl.FrontSurface=10
bawl.BackSurface=10
bawl.Anchored=false
bawl:breakJoints''
bawl.Locked=true
bawl.CanCollide=true
--[[local bawlmesh=Instance.new("SpecialMesh",bawl)
bawlmesh.MeshId="http://www.roblox.com/asset/?id=1527559"
--bawlmesh.TextureId="http://www.roblox.com/asset?id=25701026"
bawlmesh.Scale=Vector3.new(2.35,2.35,2.35)]]
local bawllight=Instance.new("PointLight",bawl)
bawllight.Brightness=1
bawllight.Range=15
bawllight.Color=bawl.BrickColor.Color
bawllight.Shadows=true
local bawlweld=Instance.new("Weld",bawl)
bawlweld.Part0=rutprt
bawlweld.Part1=bawl
bawlweld.C1=CFrame.new(0,0,0)
rutprt.Weld.C1=CFrame.new(0,-bawl.Size.y,0)*CFrame.Angles(math.rad(0),math.rad(0),0)

chr.Humanoid.Swimming:connect(function(speedpls)
if speedpls>=5 and not otheranims and not disabled and not sitting then
swimming=true
anim="Swimming"
elseif speedpls<5 and not otheranims and not disabled and not sitting then
swimming=false
end
end)

coroutine.resume(coroutine.create(function()
while true do
if trailing then
local Ray=Ray.new(rutprt.CFrame.p,(rutprt.CFrame.p-(rutprt.CFrame*CFrame.new(0,-2,0)).p).unit*-5)
local hitbrick,hitposition=Workspace:FindPartOnRay(Ray,chr)
if hitbrick and hitposition then
local splash=Instance.new("Part",bawl)
splash.Anchored=true
splash.CanCollide=false
splash.Transparency=0
splash.formFactor="Custom"
splash.BrickColor=hitbrick.BrickColor
splash.Size=Vector3.new(2,2,2)
game:service'Debris':AddItem(splash,2)
splash.CFrame=CFrame.new(hitposition)*CFrame.Angles(math.random(1,3),math.random(1,3),math.random(1,3))
local splm=Instance.new("BlockMesh",splash)
coroutine.wrap(function()
for a=0,1,.05 do 
splm.Scale=Vector3.new(a,a,a) splash.Transparency=splash.Transparency+.05 splash.CFrame=splash.CFrame+Vector3.new(0,.05,0) wait'' end
end)()
end
wait''
else
wait''
end
end
end))

game:service'RunService'.RenderStepped:connect(function()
syne=syne+1
if not otheranims and not swimming then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and not dnc and not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and torso.Velocity.y>-5
anim="Idling"

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < RunSpeed-5 and not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and torso.Velocity.y>-5
anim="Walking"
dnc=false

elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > RunSpeed-10 and not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and torso.Velocity.y>-5
anim="Sprinting"
dnc=false

elseif torso.Velocity.y>5 and chr.Humanoid.Jump then
anim='Jumping'
dnc=false

elseif (torso.Velocity.y < -5) and chr.Humanoid.Jump then
anim='Falling'
dnc=false

end
end

if anim~=lastanim then runtime=0 end
lastanim=anim

if anim=="Idling" then
trailing=false
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525+math.cos(syne/32.5)/25,0)*CFrame.Angles(0,0,math.rad(3)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/32.5)/25,0)*CFrame.Angles(0,0,math.rad(-3)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/32.5)/20,(math.cos(syne/32.5)/35))*CFrame.Angles(-(math.cos(syne/32.5)/35),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/32.5)/20,(math.cos(syne/32.5)/35))*CFrame.Angles(-(math.cos(syne/32.5)/35),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/32.5)/50,0)*CFrame.Angles(math.cos(syne/32.5)/40,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.4,-math.cos(syne/25)*3)*CFrame.Angles(math.cos(syne/25)/4,math.rad(0),math.rad(0)),.1)
bawlweld.C0=Lerp(bawlweld.C0,CFrame.new(0,-.5,-math.cos(syne/25)*3)*CFrame.Angles(math.rad(rollvalue),0,0),.25)
end


if anim=="Walking" then
trailing=true
rollvalue=rollvalue+3
if rollvalue>=359 then rollvalue=0 bawlweld.C0=CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,-(math.cos(syne/4)/5))
elseif rollvalue>=177 and rollvalue<=183 then rollvalue=184 bawlweld.C0=CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,-(math.cos(syne/4)/5))
else
bawlweld.C0=Lerp(bawlweld.C0,CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,-(math.cos(syne/4)/5)),.2) end
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525-math.cos(syne/8)/6,math.cos(syne/8)/6)*CFrame.Angles(-math.cos(syne/8)/3+math.rad(25),0,math.rad(12.5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/8)/6,-math.cos(syne/8)/6)*CFrame.Angles(math.cos(syne/8)/3+math.rad(25),0,math.rad(-12.5)),.1)
end

lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-(math.cos(syne/8)/11)-.5,-1.7+math.sin(syne/4)/3.5-math.cos(syne/8)/4,math.rad(-5)-(math.cos(syne/8)))*CFrame.Angles(math.rad(5)+(math.cos(syne/8)),0,-(math.cos(syne/8)/11)+math.rad(1)),.1)

rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(-(math.cos(syne/8)/11)+.5,-1.7-math.sin(syne/4)/3.5+math.cos(syne/8)/4,math.rad(-5)+(math.cos(syne/8)))*CFrame.Angles(math.rad(5)-(math.cos(syne/8)),0,-(math.cos(syne/8)/11)+math.rad(-1)),.1)

rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.5-math.cos(syne/4)/2,-math.cos(syne/4)*1.5)*CFrame.Angles(math.cos(syne/4)/10+math.rad(-5),math.cos(syne/4)/10,math.cos(syne/8)/10+math.sin(rutprt.RotVelocity.y/2)/10),.1)
end

if anim=="Sprinting" then
trailing=true
rollvalue=rollvalue+5
if rollvalue>=359 then rollvalue=0 bawlweld.C0=CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,-(math.cos(syne/3)/5))
elseif rollvalue>=177 and rollvalue<=183 then rollvalue=184 bawlweld.C0=CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,-(math.cos(syne/3)/5))
else
bawlweld.C0=Lerp(bawlweld.C0,CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,-(math.cos(syne/3)/5)),.2) end
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525-math.cos(syne/6)/6,math.sin(syne/6)/5)*CFrame.Angles(-math.cos(syne/6)/3+math.rad(25),0,math.rad(12.5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/6)/6,-math.sin(syne/6)/5)*CFrame.Angles(math.cos(syne/6)/3+math.rad(25),0,math.rad(-12.5)),.1)
end

lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-(math.cos(syne/6)/11)-.575,-1.7+math.cos(syne/3)/4-math.cos(syne/6)/4,math.rad(-5)-(math.cos(syne/6)))*CFrame.Angles(math.rad(5)+(math.cos(syne/6)),0,-(math.cos(syne/6)/11)+math.rad(-5)),.1)

rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(-(math.cos(syne/6)/11)+.575,-1.7-math.cos(syne/3)/4+math.cos(syne/6)/4,math.rad(-5)+(math.cos(syne/6)))*CFrame.Angles(math.rad(5)-(math.cos(syne/6)),0,-(math.cos(syne/6)/11)+math.rad(5)),.1)

rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.5-math.cos(syne/3)/2,-math.cos(syne/3)*1.5)*CFrame.Angles(math.cos(syne/3)/10+math.rad(-5),math.cos(syne/3)/10,math.cos(syne/6)/10+math.sin(rutprt.RotVelocity.y/2)/10),.1)
end

if anim=="Falling" then
trailing=false
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(25),0,math.rad(25)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(25),0,math.rad(-25)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9,math.rad(-20))*CFrame.Angles(math.rad(20),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9,math.rad(-20))*CFrame.Angles(math.rad(20),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,-.3)*CFrame.Angles(math.rad(-15),0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,rutprt.Weld.C0.y+.2,1.75)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.1)
bawlweld.C0=Lerp(bawlweld.C0,CFrame.new(0,-.5,0)*CFrame.Angles(math.rad(rollvalue),0,0),.325)
end

if anim=="Jumping" then
trailing=false
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(-25),0,math.rad(25)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(-25),0,math.rad(-25)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9,math.rad(5))*CFrame.Angles(math.rad(-5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9,math.rad(5))*CFrame.Angles(math.rad(-5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.05)*CFrame.Angles(math.rad(15),0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,rutprt.Weld.C0.y+.1,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),.1)
bawlweld.C0=Lerp(bawlweld.C0,CFrame.new(0,-.5,0)*CFrame.Angles(math.rad(rollvalue),0,0),.325)
end

if anim=="WallRun" then
chr.Humanoid.Jump=true
trailing=false
rollvalue=rollvalue+7
if rollvalue>=359 then rollvalue=0 bawlweld.C0=CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,-(math.cos(syne/3)/5))
elseif rollvalue>=177 and rollvalue<=183 then rollvalue=184 bawlweld.C0=CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,-(math.cos(syne/3)/5))
else
bawlweld.C0=Lerp(bawlweld.C0,CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,-(math.cos(syne/3)/5)),.2) end
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.325,.525,.2)*CFrame.Angles(math.rad(-45),0,math.rad(3)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.325,.525,.2)*CFrame.Angles(math.rad(-45),0,math.rad(-3)),.1)
end

lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-(math.cos(syne/5)/11)-.575,-1.8-math.cos(syne/2.5)/2+math.cos(syne/5)/6,math.rad(-30)-(math.cos(syne/5)))*CFrame.Angles(math.rad(30)+(math.cos(syne/5)),0,-(math.cos(syne/5)/11)+math.rad(-5)),.1)

rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(-(math.cos(syne/5)/11)+.575,-1.8+math.cos(syne/2.5)/2-math.cos(syne/5)/6,math.rad(-30)+(math.cos(syne/5)))*CFrame.Angles(math.rad(30)-(math.cos(syne/5)),0,-(math.cos(syne/5)/11)+math.rad(5)),.1)

hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.45,.25)*CFrame.Angles(math.rad(30),0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1-math.cos(syne/2.5)/2,2-math.cos(syne/3)*1.5)*CFrame.Angles(math.cos(syne/2.5)/10+math.rad(-3),math.cos(syne/2.5)/10,math.cos(syne/5)/10+math.sin(rutprt.RotVelocity.y/2)/10),.1)
end


if anim=="Swimming" then
rollvalue=rollvalue+4
if rollvalue>=360 then rollvalue=0 end
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525-math.cos(syne/8)/6,math.cos(syne/8)/6)*CFrame.Angles(-math.cos(syne/8)/3+math.rad(25),0,math.rad(12.5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/8)/6,-math.cos(syne/8)/6)*CFrame.Angles(math.cos(syne/8)/3+math.rad(25),0,math.rad(-12.5)),.1)
end

lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.7+math.cos(syne/4)/4,math.rad(-5)-(math.cos(syne/8)))*CFrame.Angles(math.rad(5)+(math.cos(syne/8)),0,math.rad(-5)),.1)

rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.7-math.cos(syne/4)/4,math.rad(-5)+(math.cos(syne/8)))*CFrame.Angles(math.rad(5)-(math.cos(syne/8)),0,math.rad(5)),.1)

bawlweld.C0=Lerp(bawlweld.C0,CFrame.new(0,-.5,0)*CFrame.Angles(-math.rad(rollvalue),0,0),.25)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.4-math.cos(syne/4)/4,-math.cos(syne/4)*1.25)*CFrame.Angles(math.cos(syne/4)/10+math.rad(95),math.cos(syne/4)/10,math.cos(syne/8)/10+math.sin(rutprt.RotVelocity.y/2)/10),.1)
end

chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)

if runnin and not disabled and not otheranims and not sitting then
chr.Humanoid.WalkSpeed=RunSpeed
elseif not runnin and not disabled and not otheranims and not sitting then
chr.Humanoid.WalkSpeed=WlkSpeed
end

if rutprt:findFirstChild("WallRunningVelocitypls") and otheranims then
local rei=Ray.new((rutprt.CFrame).p,(((rutprt.CFrame*CFrame.new(0,0,-1)).p)-rutprt.CFrame.p).unit*((bawl.Size.y/2)))
local hitpart,hitpos=Workspace:FindPartOnRay(rei,chr)
if not hitpart then
otheranims=false
rutprt:findFirstChild("WallRunningVelocitypls"):Destroy''
else
return
end
end

if runnin and (fldb.w or fldb.a or fldb.s or fldb.d) then
local rei=Ray.new((rutprt.CFrame).p,(((rutprt.CFrame*CFrame.new(0,0,-1)).p)-rutprt.CFrame.p).unit*((bawl.Size.y/2)))
local hitpart,hitpos=Workspace:FindPartOnRay(rei,chr)
if hitpart and hitpart.CanCollide then
otheranims=true
anim="WallRun"
if not rutprt:findFirstChild("WallRunningVelocitypls") then
local wlvelo=Instance.new("BodyVelocity",rutprt)
wlvelo.Name="WallRunningVelocitypls"
wlvelo.maxForce=Vector3.new(0,math.huge,0)
wlvelo.velocity=Vector3.new(0,RunSpeed*1.2,0)
end
end
else
if rutprt:findFirstChild("WallRunningVelocitypls") and otheranims then
otheranims=false
rutprt:findFirstChild("WallRunningVelocitypls"):destroy''
end
end
end)