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
local hitdb=false
local toss=false
local jamp=false
chr.Animate.Disabled=true
chr.Humanoid.WalkSpeed=10
local running=false
local tempignore={}

local weit=Instance.new('Part',hed)
weit.Shape='Ball'
weit.BrickColor=BrickColor.new('Black')
weit.Material='Neon'
weit.Size=Vector3.new(3,3,3)
weit.CanCollide=true
weit.Name='Weight'
weit.Friction=1
weit.Elasticity=0



local at1=Instance.new("Attachment",torso)
local at2=Instance.new("Attachment",weit)
local const=Instance.new("RopeConstraint",chr)
const.Attachment0=at2
const.Attachment1=at1
const.Visible=true
const.Restitution=0
const.Length=100

local pseudohead=hed:Clone()
for i,x in pairs(pseudohead:GetChildren()) do if not x.ClassName:find('Mesh') then x:Destroy() end end
pseudohead.Name='PseudoHead'
pseudohead.Parent=chr.Head
local pseudoweld=Instance.new('Weld',torso)
pseudoweld.Part0=hed
pseudoweld.Name='PseudoHedWld'
pseudoweld.Part1=pseudohead
hed.Transparency=1

--[[coroutine.resume(coroutine.create(function()
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
local weitmesh=Instance.new("SpecialMesh",weit)
weitmesh.MeshId="http://www.roblox.com/asset/?id=1527559"
weitmesh.TextureId="http://www.roblox.com/asset?id=25701026"
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
weitmesh.VertexColor=Vector3.new(a,0,-a+1)
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
weitmesh.VertexColor=Vector3.new(-a+1,a,0)
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
weitmesh.VertexColor=Vector3.new(0,-a+1,a)
asd.Color=Color3.new(0,-a+1,a)
coroutine.wrap(function()
for x=1,#Hats do
Hats[x].Handle.Mesh.VertexColor=Vector3.new(0,-a+1,a)
end
end)()
wait''
end
end
end))]]


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
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
rleg.Weld.C1=CFrame.new(0,.25,.05)*CFrame.Angles(math.rad(30),0,0)
lleg.Weld.C1=CFrame.new(0,.25,.05)*CFrame.Angles(math.rad(30),0,0)

local anim = "Idling"
local lastanim = "Idling"
local val = 0
local syne = 0
local num = 0
local runtime = 0


maus.KeyUp:connect(function(kei)
if string.byte(kei)==48 and not otheranims then
running=false
chr.Humanoid.WalkSpeed=10
end
end)

maus.KeyDown:connect(function(kei)
if string.byte(kei)==48 and not otheranims then
running=true
chr.Humanoid.WalkSpeed=18
end

chr.Humanoid.Changed:connect(function(ch)
if ch=='Jump' and not chr.Humanoid.Sit and not chr.Humanoid.PlatformStand then
local rei=Ray.new(torso.CFrame.p,((torso.CFrame*CFrame.new(0,-1,0)).p-torso.CFrame.p).unit*10)
local t,p=Workspace:FindPartOnRay(rei,chr)
if t then
chr.Humanoid.Jump=false
end
end
end)

if kei==' ' and not chr.Humanoid.Jump and not chr.Humanoid.Sit and not chr.Humanoid.PlatformStand and not jamp then
local rei=Ray.new(torso.CFrame.p,((rutprt.CFrame*CFrame.new(0,-1,0)).p-rutprt.CFrame.p).unit*3)
local t,p=Workspace:FindPartOnRay(rei,chr)
if t then
chr.Humanoid.PlatformStand=true
jamp=true
coroutine.wrap(function()
repeat wait()
chr.Torso.Velocity=Vector3.new(0,35,0)
until not chr.Humanoid.PlatformStand
end)()
wait(.1)
chr.Humanoid.PlatformStand=false
jamp=false
end
end
end)



local grunt=Instance.new('Sound',hed)
grunt.Name='Grunt'
grunt.Volume=1
grunt.Pitch=.9
grunt.Looped=false
grunt.SoundId="http://www.roblox.com/asset?id=143384769" 



local hut=Instance.new('Sound',weit)
hut.Name='Hit'
hut.Volume=1
hut.Looped=false
hut.Pitch=1
hut.SoundId="http://www.roblox.com/asset?id=146163534" 
local wtl=Instance.new('PointLight',weit)
wtl.Shadows=true
wtl.Brightness=123
wtl.Range=12
wtl.Color=weit.BrickColor.Color
wtl.Name='WeightLight'
local wgui=Instance.new('SurfaceGui',weit)
wgui.Face='Front'
wgui.Adornee=weit
wgui.CanvasSize=Vector2.new(100,100)
wgui.Name='WeightGui'
local tb=Instance.new('TextLabel',wgui)
tb.Size=UDim2.new(1,0,1,0)
tb.Text=[[500
LBS.]]
tb.TextColor3=Color3.new(1,1,1)
tb.BackgroundTransparency=1
local wtw=Instance.new('Weld',torso)
wtw.Name='WeightWeld'
wtw.Part0=torso
wtw.Part1=weit
wtw.C0=CFrame.new(0,.5,-1.8)*CFrame.Angles(math.rad(-20),0,0)
weit.Touched:connect(function(hit)
if hit and hit.CanCollide and hit.Parent and hit.Parent~=chr and hit.Parent.Parent~=chr and otheranims then
hum=hit.Parent:findFirstChild('Humanoid') and hit.Parent:findFirstChild('Torso') and hit.Parent.ClassName=='Model'
if hum and not hitdb then
local ex=Instance.new('Explosion',workspace)
ex.DestroyJointRadiusPercent=0
ex.BlastPressure=222222
ex.BlastRadius=18
hitdb=true
ex.Position=hit.Parent.Torso.Position
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(101*(hit.Parent.Humanoid.MaxHealth/100))
table.insert(tempignore,hit.Parent)
hut:Play()
toss=false
hit.Parent.Humanoid.PlatformStand=true
coroutine.wrap(function()
repeat wait()
hit.Parent.Torso.Velocity=((hit.Parent.Torso.CFrame.p*Vector3.new(1,0,1))-(weit.CFrame.p*Vector3.new(1,0,1))).unit*100
weit.Velocity=((hit.Parent.Torso.CFrame.p*Vector3.new(1,0,1))-(weit.CFrame.p*Vector3.new(1,0,1))).unit*-10+Vector3.new(0,20,0)
until not hit.Parent.Humanoid.PlatformStand
end)()
wait(.2)
hit.Parent.Humanoid.PlatformStand=false
end
end
end)
maus.Button1Down:connect(function()
if not otheranims then
chr.Humanoid.WalkSpeed=0
otheranims=true
anim='PreThrow'
hitdb=false
coroutine.resume(coroutine.create(function()
for fgh,hgf in pairs(tempignore) do
table.remove(tempignore,hgf)
end
end))
wait(.3)
grunt:Play()
wait(.2)
anim='Throw'
const.Parent=nil
wtw.Parent=nil
wtw.Part0=nil
toss=true
weit.CFrame=rutprt.CFrame*CFrame.new(0,3,-3)
wait()
weit.Velocity=((rutprt.CFrame.p*Vector3.new(1,0,1))-(weit.CFrame.p*Vector3.new(1,0,1))).unit*-200+Vector3.new(0,12,0)
wait(.25)
const.Parent=chr
anim='Rest'
wait(1)
wtw.Parent=torso
wtw.Part0=torso
otheranims=false
chr.Humanoid.WalkSpeed=10
toss=false
end
end)

-----------------------------------------------------------------------------

game:service'RunService'.RenderStepped:connect(function()
chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)
syne=syne+.95
if running and not otheranims then chr.Humanoid.WalkSpeed=18
elseif not running and not otheranims then chr.Humanoid.WalkSpeed=10
end
if not otheranims then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Idling"

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < 12 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Walking"

elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 12 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Sprinting"

elseif torso.Velocity.y>1 then
anim='Jumping'

elseif (torso.Velocity.y < -1) then
anim='Falling'
end
end

if anim=="Idling" then if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.35,.425,-.225)*CFrame.Angles(math.rad(67),0,math.rad(-12.5)),.05)
end
wtw.C0=Lerp(wtw.C0,CFrame.new(0,.375,-1.7)*CFrame.Angles(math.rad(-20),0,0),.25)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.35,.425,-.225)*CFrame.Angles(math.rad(67),0,math.rad(12.5)),.05)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.525,-1.3,.35)*CFrame.Angles(math.rad(-7),0,math.rad(-2.5)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.525,-1.3,.35)*CFrame.Angles(math.rad(-7),0,math.rad(2.5)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),0,math.cos(syne/30)/25),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/40)/15-.5,0)*CFrame.Angles(math.rad(125),math.rad(180),0),.05)
end
if anim=="Walking" then if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.35,.425,-.225)*CFrame.Angles(math.rad(67),0,math.rad(-12.5)),.05)
end
wtw.C0=Lerp(wtw.C0,CFrame.new(0,.375,-1.8)*CFrame.Angles(math.rad(-20),0,0),.25)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.35,.425,-.225)*CFrame.Angles(math.rad(67),0,math.rad(12.5)),.05)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.525,(math.cos(syne/10))-1.3,(math.cos(syne/10))+.475)*CFrame.Angles((math.cos(syne/10))*-1,0,math.rad(-2.5)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.525,(math.cos(syne/10))*-1-1.3,(math.cos(syne/10))*-1+.475)*CFrame.Angles((math.cos(syne/10)),0,math.rad(2.5)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),math.cos(syne/10)/10*-1,math.cos(syne/10)/20),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/6)/4-.5,0)*CFrame.Angles(math.rad(125),math.cos(syne/10)/10+math.rad(180),0),.05)
end

if anim=="Sprinting" then if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.35,.425,-.225)*CFrame.Angles(math.rad(67),0,math.rad(-12.5)),.05)
end
wtw.C0=Lerp(wtw.C0,CFrame.new(0,.375,-1.8)*CFrame.Angles(math.rad(-20),0,0),.25)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.35,.425,-.225)*CFrame.Angles(math.rad(67),0,math.rad(12.5)),.05)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.525,(math.cos(syne/7))-1.3,(math.cos(syne/7))+.475)*CFrame.Angles((math.cos(syne/7))*-1,0,math.rad(-2.5)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.525,(math.cos(syne/7))*-1-1.3,(math.cos(syne/7))*-1+.475)*CFrame.Angles((math.cos(syne/7)),0,math.rad(2.5)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),math.cos(syne/7)/7*-1,math.cos(syne/7)/20),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/6)/4-.5,0)*CFrame.Angles(math.rad(125),math.cos(syne/7)/7+math.rad(180),0),.05)
end

if anim=="Jumping" then if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(30),0,math.rad(30)),.15)
end
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(30),0,math.rad(-30)),.15)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.85,1)*CFrame.Angles(0,0,math.rad(-2.5)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.85,1)*CFrame.Angles(0,0,math.rad(2.5)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),0,0),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/50)/20,.5)*CFrame.Angles(math.rad(75),math.rad(180),math.rad(0)),.05)
end

if anim=="Falling" then if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.425,.525,0)*CFrame.Angles(math.cos(syne/10)/5+math.rad(120),0,math.rad(22.5)),.15)
end
wtw.C0=Lerp(wtw.C0,CFrame.new(0,1.25,-2.25)*CFrame.Angles(math.cos(syne/20)/20,math.cos(syne/10)/30,0),.25)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.425,.525,0)*CFrame.Angles((math.cos(syne/10)/5)*-1+math.rad(120),0,math.rad(-22.5)),.15)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.725,-1.5,-.3)*CFrame.Angles(math.cos(syne/10)/5+math.rad(33),0,math.rad(-15)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.725,-1.5,-.3)*CFrame.Angles(math.cos(syne/10)/5*-1+math.rad(33),0,math.rad(15)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),0,0),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,0,1)*CFrame.Angles(math.rad(125),math.rad(180),math.rad(0)),.05)
end

if anim=="PreThrow" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.35,.5,-.225)*CFrame.Angles(math.rad(105),0,math.rad(-12.5)),.1)
wtw.C0=Lerp(wtw.C0,CFrame.new(0,1,-2)*CFrame.Angles(math.rad(-10),0,0),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.35,.425,-.225)*CFrame.Angles(math.rad(105),0,math.rad(12.5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.525,-1.3,.3)*CFrame.Angles(math.rad(-10),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.525,-1.3,.3)*CFrame.Angles(math.rad(-10),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(40),0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/40)/15-.5,0)*CFrame.Angles(math.rad(132.5),math.rad(180),0),.1)
end

if anim=="Throw" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.35,.6,-.225)*CFrame.Angles(math.rad(105),0,math.rad(-12.5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.35,.425,-.225)*CFrame.Angles(math.rad(105),0,math.rad(12.5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.525,-1.3,0)*CFrame.Angles(math.rad(40),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.525,-1.3,0)*CFrame.Angles(math.rad(40),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/40)/15-.5,0)*CFrame.Angles(math.rad(75),math.rad(180),0),.1)
end

if anim=="Rest" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.35,.55,-.225)*CFrame.Angles(math.rad(35),0,math.rad(-12.5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.35,.425,-.225)*CFrame.Angles(math.rad(35),0,math.rad(12.5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.525,-.85,-.25)*CFrame.Angles(math.rad(40),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.525,-.85,-.25)*CFrame.Angles(math.rad(40),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,math.cos(syne/40)/15-1,0)*CFrame.Angles(math.rad(75),math.rad(180),0),.1)
end

end)