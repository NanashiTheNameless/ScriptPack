--Leaked by N3xul lol
--Converted to local by Scenius
--[[
Made by Fenrier.
]] 
script.Name = "nigga srsly"
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
script.Parent = PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
ch = Character
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
local decreaseatk=0
local decreasedef=0
local decreasemvmt=0
local Anim="Idle"
local Effects={}
local armorparts={}
local armorwelds={}
local weaponparts={}
local weaponwelds={}
local necko=euler(0,0,0)*cf(0,3,0)
local attack=false
local jump=false
local hitfloor,posfloor=nil,nil
local target,distance=nil,nil
local meleecooldown=0
local mcdadd=1
local summoncrystals=0
local crystals=false
local stunanim=false

if workspace:findFirstChild("Neflhelm",true) ~= nil then 
workspace:findFirstChild("Neflhelm",true).Parent = nil 
end 

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

function swait(num)
if num==0 or num==nil then
--if Stagger.Value==false or Stun.Value<=100 then
script.Heartbeat.Event:wait()
--end
else
for i=0,num do
script.Heartbeat.Event:wait()
--[[if Stagger.Value==true or Stun.Value>=StunT.Value then
break
end]]
end
end
end

--30hz Pacemaker

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			----print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 

function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end

function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end

function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 

function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end

function weld(parent,part0,part1,c0)
local weld=it("Motor") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end

function gui(GuiType,parent,text,backtrans,backcol,pos,size,image)
local gui=it(GuiType) 
gui.Parent=parent
gui.BackgroundTransparency=backtrans
gui.BackgroundColor3=backcol
gui.SizeConstraint="RelativeXY" 
gui.Position=pos
gui.Size=size
if GuiType=="TextLabel" then
gui.Text=text
gui.TextXAlignment="Center" 
gui.TextYAlignment="Center" 
gui.Font="SourceSans"
gui.FontSize="Size14"
gui.TextWrapped=false
gui.TextStrokeTransparency=0
gui.TextColor=BrickColor.new("White")
elseif GuiType=="ImageLabel" then
gui.Image="rbxassetid://"..image
gui.ImageColor3=backcol
end
return gui
end

local nr=NumberRange.new
local ns=NumberSequence.new
local cs=ColorSequence.new
local nsk=NumberSequenceKeypoint.new

function particle(parent,col1,col2,lightemis,size,texture,transparency,zoffset,accel,drag,ltp,velinher,emisdir,enabled,lifetime,rate,rotation,rotspeed,speed,velspread)
local fp=it("ParticleEmitter")
fp.Parent=parent
fp.Color=cs(col1,col2)
fp.LightEmission=lightemis
fp.Size=size
fp.Texture=texture
fp.Transparency=transparency
fp.ZOffset=zoffset
fp.Acceleration=accel
fp.Drag=drag
fp.LockedToPart=ltp
fp.VelocityInheritance=velinher
fp.EmissionDirection=emisdir
fp.Enabled=enabled
fp.Lifetime=lifetime
fp.Rate=rate
fp.Rotation=rotation
fp.RotSpeed=rotspeed
fp.Speed=speed
fp.VelocitySpread=velspread
return fp 
end

--[[local Head=part(0,Character,0,0,BrickColor.new("Pearl"),"Head",vt(2,2,2)) Head.Material="Sand"
local Torso=part(0,Character,0,0,BrickColor.new("Pearl"),"Torso",vt(2,2,2)) Torso.Material="Sand"]]
Head.Size = vt(2,2,2)
Torso.Size = vt(2,2,2)
Head.BrickColor = BrickColor.new("Pearl")
Torso.BrickColor = BrickColor.new("Pearl")
Head.Material = "Sand"
Torso.Material = "Sand"
Head.face:Destroy()
workspace.CurrentCamera.CameraSubject = Torso
local Back=part(0,Character,0,0,BrickColor.new("Pearl"),"Back",vt(2,2,2)) Back.Material="Sand"
local Lower1=part(0,Character,0,0,BrickColor.new("Pearl"),"Lower1",vt(2,2,2)) Lower1.Material="Sand"
local Lower2=part(0,Character,0,0,BrickColor.new("Pearl"),"Lower2",vt(2,2,2)) Lower2.Material="Sand"

--local RootPart=part(0,Character,0,0,BrickColor.new("White"),"HumanoidRootPart",vt(2,2,1))
--RootPart.CanCollide=false

local HMesh=mesh("SpecialMesh",Head,"Sphere","nil",vt(0,0,0),vt(59.5,59.5,59.5))
local TMesh=mesh("SpecialMesh",Torso,"Sphere","nil",vt(0,0,0),vt(105,105,105))
local BMesh=mesh("SpecialMesh",Back,"Sphere","nil",vt(0,0,0),vt(100,100,100))
local L1Mesh=mesh("SpecialMesh",Lower1,"Sphere","nil",vt(0,0,0),vt(90,90,90))
local L2Mesh=mesh("SpecialMesh",Lower2,"Sphere","nil",vt(0,0,0),vt(90,90,90))

--[[local Neck=weld(Torso,Torso,Head,cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
Neck.C1=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)]]
local Neck=weld(Torso,Torso,Head,euler(0,0,0)*cf(0,35,0))
--Neck.C1=cf(0,-1.5,0)
Neck.C1=cf(0,-80,0)
--Neck.C0=clerp(Neck.C0,euler(0,0,0)*cf(0,115,0)*euler(-.3,0,0),.3)
local RootJoint=weld(Torso,Torso,RootPart,cf(-1.749,-200,0))
local BackJoint=weld(Torso,Torso,Back,cf(0,51,-87.75))
local L1Joint=weld(Torso,Torso,Lower1,cf(0,-42,-7.75))
local L2Joint=weld(Torso,Torso,Lower2,cf(0,-54.75,-16.749))
--Torso.CFrame=cf(0,20,0)
RootPart.Anchored=true
for d=10,180,10 do
for i=10,360,10 do
local Hitbox1=part(0,Character,0,1,BrickColor.new("Black"),"Left Arm",vt(1,1,1)) Hitbox1.Material="Sand"
local HbMesh=mesh("SpecialMesh",Hitbox1,"Sphere","nil",vt(0,0,0),vt(1,1,1))
--local HHJoint=weld(Hitbox1,Hitbox1,Head,cf(60/(d/30),d,0)*euler(0,math.rad(i),0))
local HHJoint=weld(Hitbox1,Hitbox1,Head,cf(60,0,0)*euler(0,math.rad(i),math.rad(d)))
end
end

Humanoid.Animator:Destroy()
Character.Animate:Destroy()

local armor=Instance.new("Model")
armor.Parent=Character
armor.Name="Body"
--RootPart.Parent=armor

prt1=part(3,armor,0,0,BrickColor.new("Pearl"),"Part01",vt(2,2,2)) prt1.Material="Sand"
prt2=part(3,armor,0,0,BrickColor.new("Really black"),"Part02",vt(2,2,2))
prt3=part(3,armor,0,0,BrickColor.new("Bright blue"),"Part03",vt(2,2,2)) prt3.Material="Neon"
prt4=part(3,armor,0,0,BrickColor.new("Really black"),"Part04",vt(2,2,2))
prt5=part(3,armor,0,0,BrickColor.new("Bright blue"),"Part05",vt(2,2,2)) prt5.Material="Neon"
prt6=part(3,armor,0,0,BrickColor.new("Pearl"),"Part06",vt(2,2,2)) prt6.Material="Sand"
prt7=part(3,armor,0,0,BrickColor.new("Pearl"),"Part07",vt(2,2,2)) prt7.Material="Sand"
prt8=part(3,armor,0,0,BrickColor.new("Pearl"),"Part08",vt(2,2,2)) prt8.Material="Sand"
prt9=part(3,armor,0,0,BrickColor.new("Pearl"),"Part09",vt(2,2,2)) prt9.Material="Sand"
prt10=part(3,armor,0,0,BrickColor.new("Pearl"),"Part10",vt(2,2,2)) prt10.Material="Sand"
prt11=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part11",vt(2,2,2))
prt12=part(3,armor,.4,0,BrickColor.new("Pastel light blue"),"Part12",vt(2,2,2))
prt13=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part13",vt(2,2,2))
prt14=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part14",vt(2,2,2))
prt15=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part15",vt(2,2,2))
prt16=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part16",vt(2,2,2))
prt17=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part17",vt(2,2,2))
prt18=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part18",vt(2,2,2))
prt19=part(3,armor,0,0,BrickColor.new("Pearl"),"Part19",vt(2,2,2)) prt19.Material="Sand" --main right arm
prt20=part(3,armor,0,0,BrickColor.new("Pearl"),"Part20",vt(2,2,2)) prt20.Material="Sand"
prt21=part(3,armor,0,0,BrickColor.new("Pearl"),"Part21",vt(2,2,2)) prt21.Material="Sand" --second right arm point
prt22=part(3,armor,0,0,BrickColor.new("Pearl"),"Part22",vt(2,2,2)) prt22.Material="Sand"
prt23=part(3,armor,0,0,BrickColor.new("Pearl"),"Part23",vt(2,2,2)) prt23.Material="Sand"
prt24=part(3,armor,0,0,BrickColor.new("Pearl"),"Part24",vt(2,2,2)) prt24.Material="Sand" --third right arm point
prt25=part(3,armor,0,0,BrickColor.new("Pearl"),"Part25",vt(2,2,2)) prt25.Material="Sand"
prt26=part(3,armor,0,0,BrickColor.new("Pearl"),"Part26",vt(2,2,2)) prt26.Material="Sand"
prt27=part(3,armor,0,0,BrickColor.new("Pearl"),"Part27",vt(2,2,2)) prt27.Material="Sand"
prt28=part(3,armor,0,0,BrickColor.new("Pearl"),"Part28",vt(2,2,2)) prt28.Material="Sand"
prt29=part(3,armor,0,0,BrickColor.new("Pearl"),"Part29",vt(2,2,2)) prt29.Material="Sand" --fourth right arm point
prt30=part(3,armor,0,0,BrickColor.new("Pearl"),"Part30",vt(2,2,2)) prt30.Material="Sand"
prt31=part(3,armor,0,0,BrickColor.new("Pearl"),"Part31",vt(2,2,2)) prt31.Material="Sand"
prt32=part(3,armor,0,0,BrickColor.new("Pearl"),"Part32",vt(2,2,2)) prt32.Material="Sand"
prt33=part(3,armor,0,0,BrickColor.new("Pearl"),"Part33",vt(2,2,2)) prt33.Material="Sand" --main left arm
prt34=part(3,armor,0,0,BrickColor.new("Pearl"),"Part34",vt(2,2,2)) prt34.Material="Sand"
prt35=part(3,armor,0,0,BrickColor.new("Pearl"),"Part35",vt(2,2,2)) prt35.Material="Sand" --second right arm point
prt36=part(3,armor,0,0,BrickColor.new("Pearl"),"Part36",vt(2,2,2)) prt36.Material="Sand"
prt37=part(3,armor,0,0,BrickColor.new("Pearl"),"Part37",vt(2,2,2)) prt37.Material="Sand"
prt38=part(3,armor,0,0,BrickColor.new("Pearl"),"Part38",vt(2,2,2)) prt38.Material="Sand" --third right arm point
prt39=part(3,armor,0,0,BrickColor.new("Pearl"),"Part39",vt(2,2,2)) prt39.Material="Sand"
prt40=part(3,armor,0,0,BrickColor.new("Pearl"),"Part40",vt(2,2,2)) prt40.Material="Sand"
prt41=part(3,armor,0,0,BrickColor.new("Pearl"),"Part41",vt(2,2,2)) prt41.Material="Sand"
prt42=part(3,armor,0,0,BrickColor.new("Pearl"),"Part42",vt(2,2,2)) prt42.Material="Sand"
prt43=part(3,armor,0,0,BrickColor.new("Pearl"),"Part43",vt(2,2,2)) prt43.Material="Sand" --fourth right arm point
prt44=part(3,armor,0,0,BrickColor.new("Pearl"),"Part44",vt(2,2,2)) prt44.Material="Sand"
prt45=part(3,armor,0,0,BrickColor.new("Pearl"),"Part45",vt(2,2,2)) prt45.Material="Sand"
prt46=part(3,armor,0,0,BrickColor.new("Pearl"),"Part46",vt(2,2,2)) prt46.Material="Sand"

msh1=mesh("SpecialMesh",prt1,"FileMesh","62740878",vt(0,0,0),vt(80,50,80))
msh2=mesh("SpecialMesh",prt2,"Sphere","nil",vt(0,0,0),vt(5,10,10))
msh3=mesh("SpecialMesh",prt3,"Sphere","nil",vt(0,0,0),vt(4,8.5,8.5))
msh4=mesh("SpecialMesh",prt4,"Sphere","nil",vt(0,0,0),vt(5,10,10))
msh5=mesh("SpecialMesh",prt5,"Sphere","nil",vt(0,0,0),vt(4,8.5,8.5))
msh6=mesh("SpecialMesh",prt6,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh7=mesh("SpecialMesh",prt7,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh8=mesh("SpecialMesh",prt8,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh9=mesh("SpecialMesh",prt9,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh10=mesh("SpecialMesh",prt10,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh11=mesh("SpecialMesh",prt11,"FileMesh","9756362",vt(0,0,0),vt(20,90,20))
msh12=mesh("SpecialMesh",prt12,"FileMesh","9756362",vt(0,0,0),vt(20,100,27.5))
msh13=mesh("SpecialMesh",prt13,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh14=mesh("SpecialMesh",prt14,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh15=mesh("SpecialMesh",prt15,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh16=mesh("SpecialMesh",prt16,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh17=mesh("SpecialMesh",prt17,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh18=mesh("SpecialMesh",prt18,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh19=mesh("SpecialMesh",prt19,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh20=mesh("SpecialMesh",prt20,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh21=mesh("CylinderMesh",prt21,"nil","nil",vt(0,0,0),vt(50,30,50))
msh22=mesh("SpecialMesh",prt22,"Sphere","nil",vt(0,0,0),vt(50,50,50))
msh23=mesh("SpecialMesh",prt23,"Sphere","nil",vt(0,0,0),vt(50,50,50))
msh24=mesh("CylinderMesh",prt24,"nil","nil",vt(0,0,0),vt(65,10,65))
msh25=mesh("SpecialMesh",prt25,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh26=mesh("SpecialMesh",prt26,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh27=mesh("SpecialMesh",prt27,"FileMesh","1033714",vt(0,0,0),vt(12.5,160,12.5))
msh28=mesh("SpecialMesh",prt28,"FileMesh","1033714",vt(0,0,0),vt(12.5,160,12.5))
msh29=mesh("CylinderMesh",prt29,"nil","nil",vt(0,0,0),vt(52.5,60,52.5))
msh30=mesh("SpecialMesh",prt30,"Sphere","nil",vt(0,0,0),vt(52.5,52.5,52.5))
msh31=mesh("SpecialMesh",prt31,"Sphere","nil",vt(0,0,0),vt(85,85,85))
msh32=mesh("SpecialMesh",prt32,"FileMesh","1290033",vt(0,0,0),vt(90,90,90))
msh33=mesh("SpecialMesh",prt33,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh34=mesh("SpecialMesh",prt34,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh35=mesh("CylinderMesh",prt35,"nil","nil",vt(0,0,0),vt(50,30,50))
msh36=mesh("SpecialMesh",prt36,"Sphere","nil",vt(0,0,0),vt(50,50,50))
msh37=mesh("SpecialMesh",prt37,"Sphere","nil",vt(0,0,0),vt(50,50,50))
msh38=mesh("CylinderMesh",prt38,"nil","nil",vt(0,0,0),vt(65,10,65))
msh39=mesh("SpecialMesh",prt39,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh40=mesh("SpecialMesh",prt40,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh41=mesh("SpecialMesh",prt41,"FileMesh","1033714",vt(0,0,0),vt(12.5,160,12.5))
msh42=mesh("SpecialMesh",prt42,"FileMesh","1033714",vt(0,0,0),vt(12.5,160,12.5))
msh43=mesh("CylinderMesh",prt43,"nil","nil",vt(0,0,0),vt(52.5,60,52.5))
msh44=mesh("SpecialMesh",prt44,"Sphere","nil",vt(0,0,0),vt(52.5,52.5,52.5))
msh45=mesh("SpecialMesh",prt45,"Sphere","nil",vt(0,0,0),vt(85,85,85))
msh46=mesh("SpecialMesh",prt46,"FileMesh","1290033",vt(0,0,0),vt(90,90,90))

local wld1=weld(prt1,prt1,Head,euler(0,math.rad(180),0)*cf(-4.597,-46.367,0))
local wld2=weld(prt1,prt2,Head,euler(0,math.rad(90+(90-65)),0)*cf(23.772,0,-50.979))
local wld3=weld(prt1,prt3,Head,euler(0,math.rad(90+(90-65)),0)*cf(24.406,0,-52.339))
local wld4=weld(prt1,prt4,Head,euler(0,math.rad(65),0)*cf(-23.772,0,-50.979))
local wld5=weld(prt1,prt5,Head,euler(0,math.rad(65),0)*cf(-24.406,0,-52.339))
local wld6=weld(prt1,prt6,Torso,euler(math.rad(63.644),0,0)*cf(0,-118.531,124.184))
local wld7=weld(prt1,prt7,Torso,euler(math.rad(-90-165.516),0,0)*cf(0,-1.816,157.992))
local wld8=weld(prt1,prt8,Torso,euler(math.rad(171.785),0,0)*cf(-3.372,67.659,3.285))
local wld9=weld(prt1,prt9,Torso,euler(math.rad(-90-55),math.rad(-90-65),0)*cf(-32.5,66.459,35.483))
local wld10=weld(prt1,prt10,Torso,euler(math.rad(-90-60),math.rad(-90-115),0)*cf(32.5,66.459,35.483))
local wld11=weld(prt1,prt11,Torso,euler(0,math.rad(45),0)*cf(0,0,-104.75))
local wld12=weld(prt1,prt12,Torso,euler(0,math.rad(90),0)*cf(0,0,-104.75))
local wld13=weld(prt1,prt13,Torso,euler(0,math.rad(90),math.rad(-35))*cf(32.009,-22.413,-88.007))
local wld14=weld(prt1,prt14,Torso,euler(0,math.rad(90),math.rad(35))*cf(-32.009,-22.413,-88.007))
local wld15=weld(prt1,prt15,Torso,euler(0,math.rad(90),math.rad(90))*cf(32.075,0,-88.007))
local wld16=weld(prt1,prt16,Torso,euler(0,math.rad(90),math.rad(-90))*cf(-32.075,0,-88.007))
local wld17=weld(prt1,prt17,Torso,euler(0,math.rad(90),math.rad(90-35))*cf(32.009,22.413,-88.007))
local wld18=weld(prt1,prt18,Torso,euler(0,math.rad(90),math.rad(-90+35))*cf(-32.009,22.413,-88.007))
local wld19=weld(prt1,prt19,Torso,euler(0,0,0)*cf(94,-47.5,-2.248))
local wld20=weld(prt1,prt20,prt19,euler(math.rad(90),math.rad(-90+75),0)*cf(21.417,0,79.93))
local wld21=weld(prt1,prt21,prt19,euler(0,0,math.rad(90))*cf(74.25,0,0))
local wld22=weld(prt1,prt22,prt21,euler(0,0,0)*cf(0,-30,0))
local wld23=weld(prt1,prt23,prt21,euler(0,0,0)*cf(0,30,0))
local wld24=weld(prt1,prt24,prt21,euler(0,0,0)*cf(0,90.25,0))
local wld25=weld(prt1,prt25,prt24,euler(0,0,0)*cf(0,10,0))
local wld26=weld(prt1,prt26,prt24,euler(0,0,0)*cf(0,-10,0))
local wld27=weld(prt1,prt27,prt24,euler(0,0,math.rad(-90))*cf(88.5,0,0))
local wld28=weld(prt1,prt28,prt24,euler(0,0,math.rad(90))*cf(-88.5,0,0))
local wld29=weld(prt1,prt29,prt24,euler(0,0,0)*cf(0,125,0))
local wld30=weld(prt1,prt30,prt29,euler(0,0,0)*cf(0,-60,0))
local wld31=weld(prt1,prt31,prt29,euler(0,0,0)*cf(0,130,0))
local wld32=weld(prt1,prt32,prt29,euler(0,0,0)*cf(0,130,0))
local wld33=weld(prt1,prt33,Torso,euler(0,0,0)*cf(-94,-47.5,-2.248))
local wld34=weld(prt1,prt34,prt33,euler(math.rad(-90),math.rad(-90-75),0)*cf(-21.417,0,79.93))
local wld35=weld(prt1,prt35,prt33,euler(0,0,math.rad(90))*cf(-74.25,0,0))
local wld36=weld(prt1,prt36,prt35,euler(0,0,0)*cf(0,30,0))
local wld37=weld(prt1,prt37,prt35,euler(0,0,0)*cf(0,-30,0))
local wld38=weld(prt1,prt38,prt35,euler(0,0,0)*cf(0,-90.25,0))
local wld39=weld(prt1,prt39,prt38,euler(0,0,0)*cf(0,-10,0))
local wld40=weld(prt1,prt40,prt38,euler(0,0,0)*cf(0,10,0))
local wld41=weld(prt1,prt41,prt38,euler(0,0,math.rad(-90))*cf(88.5,0,0))
local wld42=weld(prt1,prt42,prt38,euler(0,0,math.rad(90))*cf(-88.5,0,0))
local wld43=weld(prt1,prt43,prt38,euler(0,0,0)*cf(0,-125,0))
local wld44=weld(prt1,prt44,prt43,euler(0,0,0)*cf(0,60,0))
local wld45=weld(prt1,prt45,prt43,euler(0,0,0)*cf(0,-130,0))
local wld46=weld(prt1,prt46,prt43,euler(0,0,0)*cf(0,-130,0))

--[[wld19.C0=clerp(wld19.C0,euler(0,0,0)*cf(94,-47.5,-2.248),.3)
wld21.C0=clerp(wld21.C0,euler(0,0,math.rad(90))*cf(74.25,0,0),.3)
wld24.C0=clerp(wld24.C0,euler(0,0,0)*cf(0,90.25,0),.3)
wld29.C0=clerp(wld29.C0,euler(0,0,0)*cf(0,125,0),.3)

wld33.C0=clerp(wld33.C0,euler(0,0,0)*cf(-94,-47.5,-2.248),.3)
wld35.C0=clerp(wld35.C0,euler(0,0,math.rad(90))*cf(-74.25,0,0),.3)
wld38.C0=clerp(wld38.C0,euler(0,0,0)*cf(0,-90.25,0),.3)
wld43.C0=clerp(wld43.C0,euler(0,0,0)*cf(0,-125,0),.3)]]

local effects=it("Model",Character)
effects.Name="Effects"

local refs2={}
local createref=true
if workspace:findFirstChild("SnowfRef",true) ~= nil then 
createref=false
end 
local refs=it("Model",nil)
refs.Name="SnowfRef"

--circle size 170,170,170

Ref1=part(0,refs,0,1,BrickColor.new("Black"),"Ref1",vt(210,210,210)) Ref1.CanCollide=true Ref1.Anchored=true Ref1.Shape="Ball"
Ref2=part(0,refs,0,1,BrickColor.new("Black"),"Ref2",vt(119,119,119)) Ref2.CanCollide=true Ref2.Anchored=true Ref2.Shape="Ball"
Ref3=part(0,refs,0,1,BrickColor.new("Black"),"Ref3",vt(130,130,130)) Ref3.CanCollide=true Ref3.Anchored=true Ref3.Shape="Ball"
Ref4=part(0,refs,0,1,BrickColor.new("Black"),"Ref4",vt(130,100,100)) Ref4.CanCollide=true Ref4.Anchored=true Ref4.Shape="Cylinder"
Ref5=part(0,refs,0,1,BrickColor.new("Black"),"Ref5",vt(130,130,130)) Ref5.CanCollide=true Ref5.Anchored=true Ref5.Shape="Ball"
Ref6=part(0,refs,0,1,BrickColor.new("Black"),"Ref6",vt(160,105,105)) Ref6.CanCollide=true Ref6.Anchored=true Ref6.Shape="Cylinder"
Ref7=part(0,refs,0,1,BrickColor.new("Black"),"Ref7",vt(170,170,170)) Ref7.CanCollide=true Ref7.Anchored=true Ref7.Shape="Ball"
Ref8=part(0,refs,0,1,BrickColor.new("Black"),"Ref8",vt(130,130,130)) Ref8.CanCollide=true Ref8.Anchored=true Ref8.Shape="Ball"
Ref9=part(0,refs,0,1,BrickColor.new("Black"),"Ref9",vt(130,100,100)) Ref9.CanCollide=true Ref9.Anchored=true Ref9.Shape="Cylinder"
Ref10=part(0,refs,0,1,BrickColor.new("Black"),"Ref10",vt(130,130,130)) Ref10.CanCollide=true Ref10.Anchored=true Ref10.Shape="Ball"
Ref11=part(0,refs,0,1,BrickColor.new("Black"),"Ref11",vt(160,105,105)) Ref11.CanCollide=true Ref11.Anchored=true Ref11.Shape="Cylinder"
Ref12=part(0,refs,0,1,BrickColor.new("Black"),"Ref12",vt(170,170,170)) Ref12.CanCollide=true Ref12.Anchored=true Ref12.Shape="Ball"

if createref==false then
refs=workspace.SnowfRef
Ref1=refs.Ref1
Ref2=refs.Ref2
Ref3=refs.Ref3
Ref4=refs.Ref4
Ref5=refs.Ref5
Ref6=refs.Ref6
Ref7=refs.Ref7
Ref8=refs.Ref8
Ref9=refs.Ref9
Ref10=refs.Ref10
Ref11=refs.Ref11
Ref12=refs.Ref12
else
--refs.Parent=workspace
end

--[[R1wld=weld(Ref1,Ref1,Torso,euler(0,0,0)*cf(0,0,0))
R2wld=weld(Ref2,Ref2,Head,euler(0,0,0)*cf(0,0,0))
R3wld=weld(Ref3,Ref3,prt19,euler(0,0,0)*cf(0,0,0))
R4wld=weld(Ref4,Ref4,prt21,euler(0,0,0)*cf(0,0,0))
R5wld=weld(Ref5,Ref5,prt24,euler(0,0,0)*cf(0,0,0))
R6wld=weld(Ref6,Ref6,prt29,euler(0,0,0)*cf(0,0,0))
R7wld=weld(Ref7,Ref7,prt31,euler(0,0,0)*cf(0,0,0))
R8wld=weld(Ref8,Ref8,prt33,euler(0,0,0)*cf(0,0,0))
R9wld=weld(Ref9,Ref9,prt35,euler(0,0,0)*cf(0,0,0))
R10wld=weld(Ref10,Ref10,prt38,euler(0,0,0)*cf(0,0,0))
R11wld=weld(Ref11,Ref11,prt43,euler(0,0,0)*cf(0,0,0))
R12wld=weld(Ref12,Ref12,prt45,euler(0,0,0)*cf(0,0,0))]]
table.insert(refs2,{Ref1,Torso,cf(0,0,0)})
table.insert(refs2,{Ref2,Head,cf(0,0,0)})
table.insert(refs2,{Ref3,prt19,cf(0,0,0)})
table.insert(refs2,{Ref4,prt21,euler(0,0,math.rad(90))})
table.insert(refs2,{Ref5,prt24,cf(0,0,0)})
table.insert(refs2,{Ref6,prt29,euler(0,0,math.rad(90))})
table.insert(refs2,{Ref7,prt31,cf(0,0,0)})
table.insert(refs2,{Ref8,prt33,cf(0,0,0)})
table.insert(refs2,{Ref9,prt35,euler(0,0,math.rad(90))})
table.insert(refs2,{Ref10,prt38,cf(0,0,0)})
table.insert(refs2,{Ref11,prt43,euler(0,0,math.rad(90))})
table.insert(refs2,{Ref12,prt45,cf(0,0,0)})

for _,c in pairs(armor:children()) do
table.insert(armorparts,c)
end
--[[for _,c in pairs(modelzorz:children()) do
table.insert(weaponparts,c)
end]]
for _,c in pairs(prt1:children()) do
table.insert(weaponwelds,c)
end
local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
--hitbox.Anchored=true
local hitbox2=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox2.Anchored=true
local hitboxCF=cf(0,0,0)

--TehHealth=500+(#game.Players:GetChildren()*20)
local CurrentHealth=3000
Humanoid.MaxHealth=CurrentHealth
Humanoid.Health=CurrentHealth
local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Alive=Instance.new("BoolValue")
Alive.Name="Alive"
Alive.Parent=Character
Alive.Value=true
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1
local Block=Instance.new("BoolValue")
Block.Name="Block"
Block.Parent=Stats
Block.Value=false
local Stun=Instance.new("NumberValue")
Stun.Name="Stun"
Stun.Parent=Stats
Stun.Value=0
local StunT=Instance.new("NumberValue")
StunT.Name="StunThreshold"
StunT.Parent=Stats
StunT.Value=800
local Rooted=Instance.new("BoolValue")
Rooted.Name="Rooted"
Rooted.Parent=Stats
Rooted.Value=false
local Stunned=Instance.new("BoolValue")
Stunned.Name="Stunned"
Stunned.Parent=Stats
Stunned.Value=false
local Stagger=Instance.new("BoolValue")
Stagger.Name="Stagger"
Stagger.Parent=Stats
Stagger.Value=false
local StaggerHit=Instance.new("BoolValue")
StaggerHit.Name="StaggerHit"
StaggerHit.Parent=Stats
StaggerHit.Value=false
local Decrease=Instance.new("BoolValue")
Decrease.Name="Decrease"
Decrease.Parent=Stats
Decrease.Value=false
local mana=Instance.new("NumberValue")
mana.Name="Mana"
mana.Parent=Stats
mana.Value=0
local boss=Instance.new("BoolValue")
boss.Name="Boss"
boss.Parent=Stats
boss.Value=true
local ungrab=Instance.new("BoolValue")
ungrab.Name="Ungrabbable"
ungrab.Parent=Stats
ungrab.Value=true

local Cryst1=it("Model",nil)
Cryst1.Name="Crystal"
local C1Head=part(0,Cryst1,0,0,BrickColor.new("Pastel light blue"),"Head",vt(5,10,5)) C1Head.Anchored=true
local C1msh=mesh("SpecialMesh",C1Head,"FileMesh","9756362",vt(0,0,0),vt(10,20,10))
local C1Torso=part(0,Cryst1,0,.5,BrickColor.new("Pastel light blue"),"Torso",vt()) C1Torso.Anchored=true
local C1msh=mesh("SpecialMesh",C1Torso,"FileMesh","9756362",vt(0,0,0),vt(-20,-50,-20))
local C1S=Stats:Clone() C1S.Parent=Cryst1
local Cryst2=it("Model",nil) Cryst2.Name="Crystal"
local C2Head=C1Head:Clone() C2Head.Parent=Cryst2
local C2Torso=C1Torso:Clone() C2Torso.Parent=Cryst2
local C2S=Stats:Clone() C2S.Parent=Cryst2
local Cryst3=it("Model",nil) Cryst3.Name="Crystal"
local C3Head=C1Head:Clone() C3Head.Parent=Cryst3
local C3Torso=C1Torso:Clone() C3Torso.Parent=Cryst3
local C3S=Stats:Clone() C3S.Parent=Cryst3
local Cryst4=it("Model",nil) Cryst4.Name="Crystal"
local C4Head=C1Head:Clone() C4Head.Parent=Cryst4
local C4Torso=C1Torso:Clone() C4Torso.Parent=Cryst4
local C4S=Stats:Clone() C4S.Parent=Cryst4
local C1Neck=weld(C1Torso,C1Torso,C1Head,euler(0,0,0)*cf(0,0,0))
local C2Neck=weld(C2Torso,C2Torso,C2Head,euler(0,0,0)*cf(0,0,0))
local C3Neck=weld(C3Torso,C3Torso,C3Head,euler(0,0,0)*cf(0,0,0))
local C4Neck=weld(C4Torso,C4Torso,C4Head,euler(0,0,0)*cf(0,0,0))
local C1Hum=it("Humanoid")
local C2Hum=it("Humanoid")
local C3Hum=it("Humanoid")
local C4Hum=it("Humanoid")
local C1a=false
local C2a=false
local C3a=false
local C4a=false

so = function(id,par,vol,pit) 
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId="http://www.roblox.com/asset/?id="..id
--swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else 
assert(false, "unreachable")
end

local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude

local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)

local list = {}

if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
w1.Name = "Triangle"
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Teal")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.05})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end

if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
w2.Name = "Triangle"
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Teal")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.05})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
if Type==1 or Type==nil then
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3,msh})
elseif Type==2 then
table.insert(Effects,{prt,"Block2",delay,x3,y3,z3,msh})
end
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,push)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Blood",delay,x3,y3,z3,msh,push})
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"FileMesh","3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicHead(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Head","nil",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function ClangEffect(brickcolor,cframe,duration,decrease,size,power)
local prt=part(3,effects,0,1,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(5,5,5))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"CylinderClang",duration,decrease,size,power,prt.CFrame,nil})
end

function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicWave2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","1323306",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder2",delay,x3,y3,z3,msh,0})
end

function MagicCrystal(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","9756362",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(prt,10)
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
local num=math.random(10,50)/1000
table.insert(Effects,{prt,"Shatter",num,prt.CFrame,math.random()-math.random(),0,math.random(50,100)/100})
--table.insert(Effects,{prt,"Shatter",.02,msh})
--[[
1=prt
2=Shatter
3=.02
4=Thing[1].CFrame
5=randnum
6=Numbb
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
for i=0,1,0.05 do
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)]]
end

function BreakEffect2(brickcolor,cframe,x1,y1,z1)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(prt,10)
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
local num=math.random(10,50)/1000
table.insert(Effects,{prt,"Shatter",num,prt.CFrame,math.random()-math.random(),0,math.random(300,1000)/100})
end


--Break effect. Credits to whoever made it
local MaxPieces = 10
local Explode = true
local Connection = nil
function IsWhole(Number)
	return math.ceil(Number) == Number
end
function ChangeAxis(Vector,Axis,Value)
	if(Axis == "x")then
		return Vector3.new(Value,Vector.y,Vector.z)
	end
	if(Axis == "y")then
		return Vector3.new(Vector.x,Value,Vector.z)
	end
	if(Axis == "z")then
		return Vector3.new(Vector.x,Vector.y,Value)
	end
end
function Break(mouse)
	local Targ = mouse
	local oldParent = mouse.Parent
	local FF = 1
	if(Targ.formFactor == Enum.FormFactor.Symmetric)then
		FF = 1 
	end
	if(Targ.formFactor == Enum.FormFactor.Brick)then
		FF = 1.2
	end
	if(Targ.formFactor == Enum.FormFactor.Plate)then
		FF = 0.4 
	end
	local New = Targ:Clone()
	local Rotation = Targ.CFrame - Targ.CFrame.p
	local SizeFactorX = 1
	local SizeFactorY = FF
	local SizeFactorZ = 1
	local Extra = (Targ.Size.x*Targ.Size.y*Targ.Size.z/(SizeFactorX*SizeFactorY*SizeFactorZ))/MaxPieces
	while Extra > 1 do
		SizeFactorX = SizeFactorX * 2
		SizeFactorY = SizeFactorY * 2
		SizeFactorZ = SizeFactorZ * 2
		if(SizeFactorX > Targ.Size.x)then
			SizeFactorX = Targ.Size.x
		end
		if(SizeFactorY > Targ.Size.y)then
			SizeFactorY = Targ.Size.y
		end
		if(SizeFactorZ > Targ.Size.z)then
			SizeFactorZ = Targ.Size.z
		end
		Extra = (Targ.Size.x*Targ.Size.y*Targ.Size.z/(SizeFactorX*SizeFactorY*SizeFactorZ))/MaxPieces
	end
	local Start = Targ.Position - (Targ.CFrame.lookVector * (Targ.Size.z/2 + (SizeFactorZ / 2)))-((Targ.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).lookVector * (Targ.Size.x/2 + (SizeFactorX / 2)))-((Targ.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)).lookVector * (Targ.Size.y/2 + (SizeFactorY/2)))
	New.Size = Vector3.new(SizeFactorX,SizeFactorY,SizeFactorZ)
	New.Anchored = false
	local OverShootZ = (Targ.Size.z/SizeFactorZ) - math.floor(Targ.Size.z/SizeFactorZ)
	local OverShootX = (Targ.Size.x/SizeFactorX) - math.floor(Targ.Size.x/SizeFactorX)
	local OverShootY = (Targ.Size.y/SizeFactorY) - math.floor(Targ.Size.y/SizeFactorY)
	----print("SizeFactor",SizeFactorX,SizeFactorY,SizeFactorZ)
	----print("OverShoot",OverShootX,OverShootY,OverShootZ)
	for z = 1,math.ceil(Targ.Size.z/SizeFactorZ) do
		if(OverShootZ > 0)then
			if(z == math.ceil(Targ.Size.z/SizeFactorZ))then
				z = z - ((1 - OverShootZ) / 2)
				New.Size = ChangeAxis(New.Size,"z",OverShootZ * SizeFactorZ)
			else
				New.Size = ChangeAxis(New.Size,"z",SizeFactorZ)
			end
		end
		for y = 1,math.ceil(Targ.Size.y/SizeFactorY) do
			if(OverShootY > 0)then
				if(y == math.ceil(Targ.Size.y/SizeFactorY))then
					y = y - ((1 - OverShootY) / 2)
					New.Size = ChangeAxis(New.Size,"y",OverShootY * SizeFactorY)
				else
					New.Size = ChangeAxis(New.Size,"y",SizeFactorY)
				end
			end
			for x = 1,math.ceil(Targ.Size.x/SizeFactorX) do
				if(OverShootX > 0)then
					if(x == math.ceil(Targ.Size.x/SizeFactorX))then
						x = x - ((1 - OverShootX) / 2)
						New.Size = ChangeAxis(New.Size,"x",OverShootX * SizeFactorX)
					else
						New.Size = ChangeAxis(New.Size,"x",SizeFactorX)
					end
				end
				local N = New:Clone()
				N.CFrame = CFrame.new(Start + (Targ.CFrame.lookVector * z * SizeFactorZ)+((Targ.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).lookVector * x * SizeFactorX)+((Targ.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)).lookVector * y * SizeFactorY))*Rotation
				--N.Parent = oldParent
				N.Parent = workspace
				N.CanCollide = false
				N.Velocity = vt(math.random(-300,300),math.random(-20,40),math.random(-300,300))
				N.RotVelocity = vt(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
				game:GetService("Debris"):AddItem(N,5)
			end
		end
	end
	Targ:Remove()
end



local BodGy=Instance.new("BodyGyro")
BodGy.maxTorque=Vector3.new(0,4e+005,0)
BodGy.P=2000
BodGy.D=100
BodGy.Name="SiegmundGyro"
CF=RootPart.CFrame
BodGy.Parent=RootPart
BodGy.cframe=CF

sizeseq=ns({nsk(0,4),nsk(.027,8.5),nsk(.184,9),nsk(1,10)})
transseq=ns({nsk(0,.375),nsk(.4,1),nsk(1,1)})
local icicleparti1=particle(Torso,Color3.new(255/255,255/255,255/255),Color3.new(100/255,100/255,255/255),.2,sizeseq,"http://www.roblox.com/asset/?id=329766994",transseq,0,vt(0,-.5,0),0,false,0,"Bottom",false,nr(7,10),15,nr(-360,360),nr(-30,30),nr(3),20)
sizeseq=ns({nsk(0,5),nsk(.025,7.7),nsk(.192,9),nsk(1,10)})
transseq=ns({nsk(0,.8),nsk(.3,1),nsk(1,1)})
local icicleparti2=particle(Torso,Color3.new(255/255,255/255,255/255),Color3.new(100/255,100/255,255/255),.3,sizeseq,"http://www.roblox.com/asset/?id=241594419",transseq,0,vt(0,-.5,0),0,false,0,"Bottom",false,nr(7,10),80,nr(-360,360),nr(-30,30),nr(3),20)
sizeseq=ns({nsk(0,.328),nsk(.075,3.11),nsk(.206,4.97),nsk(1,10)})
transseq=ns({nsk(0,.363),nsk(.107,1),nsk(1,1)})

--[[Neck.C0=euler(0,0,0)*cf(0,3,0)*euler(0,.6,0)*euler(-.2,0,0)
RootJoint.C0=cf(0,-2,0)*euler(0,.6,0)
RW.C0=cf(4.5,1.5,0)*euler(-.4,0,.5)*euler(0,0,0)
RW.C1=cf(0,1.5,0)*euler(0,0,0)
LW.C0=cf(-4.5,1.5,0)*euler(.2,0,-.5)
LW.C1=cf(0,1.5,0)*euler(0,0,0)
RH.C0=cf(1.5,-3,0)*euler(0,-.6,0)*euler(0,0,.1)
RH.C1=cf(0,3,0)*euler(0,0,0)
LH.C0=cf(-1.5,-3,0)*euler(0,.6,0)*euler(.1,0,0)
LH.C1=cf(0,3,0)*euler(0,0,0)]]
-- idle pose
--[[Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),1)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),1)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,-.4,0),1)
wld24.C0=wld24.C0:lerp(euler(.8,.1,0)*cf(0,90.25,0),1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,.4,0),1)
wld38.C0=wld38.C0:lerp(euler(-.8,.1,0)*cf(0,-90.25,0),1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),1)]]

--[[ old idle
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),1)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.2,-.8),1)
wld24.C0=wld24.C0:lerp(euler(1.4,-.2,0)*cf(0,90.25,0),1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.8),1)
wld38.C0=wld38.C0:lerp(euler(-1.4,-.2,0)*cf(0,-90.25,0),1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),1)
]]

--[[RootJoint.C0=clerp(RootJoint.C0,cf(-1.749,-200,0),1)
wld19.C0=clerp(wld19.C0,euler(-.4,.3,0)*cf(94,-47.5,-2.248),1)
wld21.C0=clerp(wld21.C0,euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.2,-.8),1)
wld24.C0=clerp(wld24.C0,euler(1.4,-.2,0)*cf(0,90.25,0),1)
wld29.C0=clerp(wld29.C0,euler(0,0,0)*cf(0,125,0),1)

wld33.C0=clerp(wld33.C0,euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),1)
wld35.C0=clerp(wld35.C0,euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.8),1)
wld38.C0=clerp(wld38.C0,euler(-1.4,-.2,0)*cf(0,-90.25,0),1)
wld43.C0=clerp(wld43.C0,euler(0,0,0)*cf(0,-125,0),1)]]
msh3.Scale=vt(4,0,8.5)
msh5.Scale=vt(4,0,8.5)
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),1)
RootJoint.C0=RootJoint.C0:lerp(euler(-.2,0,.1)*cf(-1.749,-60,-30),1)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,-.6)*euler(0,-.8,0)*euler(0,0,0),1)
wld24.C0=wld24.C0:lerp(euler(1.4,.5,0)*cf(0,90.25,0),1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.8)*euler(0,.8,0)*euler(.8,0,0),1)
wld38.C0=wld38.C0:lerp(euler(-.6,1,0)*cf(0,-90.25,0),1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),1)
--[[local Ice1=part(0,armor,.2,0,BrickColor.new("Fog"),"Ice",vt(57.75,136.17,57.77)) 
Ice1.Material="Ice" 
Ice1.Anchored=true 
Ice1.CFrame=workspace.BossSpawn.CFrame*cf(144.341,286.773,15.162)
local Ice2=part(0,armor,.2,0,BrickColor.new("Fog"),"Ice",vt(89.99,35.13,77.57)) Ice2.Material="Ice" Ice2.Anchored=true
Ice2.CFrame=workspace.BossSpawn.CFrame*cf(-53.887,-10.726,-155.145)
local Ice3=part(0,armor,.2,0,BrickColor.new("Fog"),"Ice",vt(164.4,63.01,89.76)) Ice3.Material="Ice" Ice3.Anchored=true
Ice3.CFrame=workspace.BossSpawn.CFrame*cf(-107.848,12.137,-93.992)
local Ice4=part(0,armor,.2,0,BrickColor.new("Fog"),"Ice",vt(25.2,179.13,34.57)) 
Ice4.Material="Ice" 
Ice4.Anchored=true 
Ice4.CFrame=workspace.BossSpawn.CFrame*cf(319.875,454.041,179.418)]]
--I1wld=weld(Ice1,RootPart,Ice1,euler(0,0,0)*cf(144.341,286.773,15.162))
--I1wld=weld(Ice1,RootPart,Ice1,euler(0,0,0)*cf(15.162,286.773))
--local HMesh=mesh("SpecialMesh",Head,"Sphere","nil",vt(0,0,0),vt(59.5,59.5,59.5))

--[[local Neck=weld(Torso,Torso,Head,cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
Neck.C1=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)]]
--local Neck=weld(Torso,Torso,Head,euler(0,0,0)*cf(0,35,0))
for i=0,1,0.05 do
swait()
msh3.Scale=vt(4,1+7.5*i,8.5)
msh5.Scale=vt(4,1+7.5*i,8.5)
end
msh3.Scale=vt(4,8.5,8.5)
msh5.Scale=vt(4,8.5,8.5)
stunanim=true
attack=true
stunanim=false
attack=false
--[[for i=0,1,0.02 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),.1)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),.1)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),.1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,-.4,0),.1)
wld24.C0=wld24.C0:lerp(euler(.8,.1,0)*cf(0,90.25,0),.1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),.1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,.4,0),.1)
wld38.C0=wld38.C0:lerp(euler(-.8,.1,0)*cf(0,-90.25,0),.1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.1)
end]]
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),1)
--print("START BOSS BATTLE")

function TriIceShards()
--for i=1,math.random(1,4) do
local dacfm=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart1.CFrame=dacf
local icepart2=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart2.Anchored=true
i2msh=mesh("SpecialMesh",icepart2,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart2.CFrame=dacf2
local icepart3=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart3.Anchored=true
i3msh=mesh("SpecialMesh",icepart3,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart3.CFrame=dacf3
local partic1=icicleparti1:Clone() partic1.Parent=icepart1 partic1.Enabled=true
local partic2=icicleparti2:Clone() partic2.Parent=icepart1 partic2.Enabled=true
local partic3=icicleparti1:Clone() partic3.Parent=icepart2 partic3.Enabled=true
local partic4=icicleparti2:Clone() partic4.Parent=icepart2 partic4.Enabled=true
local partic5=icicleparti1:Clone() partic5.Parent=icepart3 partic5.Enabled=true
local partic6=icicleparti2:Clone() partic6.Parent=icepart3 partic6.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
icepart2.CFrame=dacf2
icepart3.CFrame=dacf3
dacf=dacf*cf(0,math.random(500,1000)/10,0)
dacf2=dacf2*cf(0,math.random(500,1000)/10,0)
dacf3=dacf3*cf(0,math.random(500,1000)/10,0)
end
local target1,distance1=findRandomTorso(icepart1.Position)
local target2,distance2=findRandomTorso(icepart2.Position)
local target3,distance3=findRandomTorso(icepart3.Position)
MagicBlock(BrickColor.new("Cyan"),cf(icepart1.Position),60,60,60,20,20,20,.1,1)
MagicBlock(BrickColor.new("Cyan"),cf(icepart2.Position),60,60,60,20,20,20,.1,1)
MagicBlock(BrickColor.new("Cyan"),cf(icepart3.Position),60,60,60,20,20,20,.1,1)
if target1~=nil then
so("333475957",icepart1,1,.9)
local MouseLook=cf((icepart1.Position+target1.Position)/2,target1.Position+vt(math.random(-1000,1000)/100,math.random(-1000,1000)/100,math.random(-1000,1000)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart1.Position,5,7,0,icepart1,10,1,partic1,partic2})
else
icepart1.Parent=nil
end
if target2~=nil then
so("333475957",icepart2,1,.9)
local MouseLook=cf((icepart2.Position+target2.Position)/2,target2.Position+vt(math.random(-1000,1000)/100,math.random(-1000,1000)/100,math.random(-1000,1000)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart2.Position,5,7,0,icepart2,10,1,partic3,partic4})
else
icepart2.Parent=nil
end
if target3~=nil then
so("333475957",icepart3,1,.9)
local MouseLook=cf((icepart3.Position+target3.Position)/2,target3.Position+vt(math.random(-200,200)/100,math.random(-200,200)/100,math.random(-200,200)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart3.Position,8,10,0,icepart3,10,1,partic5,partic6})
else
icepart3.Parent=nil
end
--end
end

function TriIceShards2()
--for i=1,math.random(1,4) do
local dacfm=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
--[[eul1=math.random(0,800)/1000 eul2=math.random(400,1200)/1000
eul3=math.random(200,1000)/1000
eul4=math.random(0,800)/1000 eul5=math.random(400,1200)/1000
local dacf=Torso.CFrame*euler(-eul1,0,eul2)
local dacf2=Torso.CFrame*euler(-eul3,0,0)
local dacf3=Torso.CFrame*euler(-eul4,0,-eul5)]]
local dacf=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart1.CFrame=dacf
local icepart2=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart2.Anchored=true
i2msh=mesh("SpecialMesh",icepart2,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart2.CFrame=dacf2
local icepart3=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart3.Anchored=true
i3msh=mesh("SpecialMesh",icepart3,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart3.CFrame=dacf3
local partic1=icicleparti1:Clone() partic1.Parent=icepart1 partic1.Enabled=true
local partic2=icicleparti2:Clone() partic2.Parent=icepart1 partic2.Enabled=true
local partic3=icicleparti1:Clone() partic3.Parent=icepart2 partic3.Enabled=true
local partic4=icicleparti2:Clone() partic4.Parent=icepart2 partic4.Enabled=true
local partic5=icicleparti1:Clone() partic5.Parent=icepart3 partic5.Enabled=true
local partic6=icicleparti2:Clone() partic6.Parent=icepart3 partic6.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
icepart2.CFrame=dacf2
icepart3.CFrame=dacf3
dacf=dacf*cf(0,math.random(500,1000)/10,0)
dacf2=dacf2*cf(0,math.random(500,1000)/10,0)
dacf3=dacf3*cf(0,math.random(500,1000)/10,0)
end
local target1,distance1=findNearestTorso(Head.Position)
local target2,distance2=findNearestTorso(Head.Position)
local target3,distance3=findNearestTorso(Head.Position)
MagicBlock(BrickColor.new("Cyan"),cf(icepart1.Position),60,60,60,20,20,20,.1,1)
MagicBlock(BrickColor.new("Cyan"),cf(icepart2.Position),60,60,60,20,20,20,.1,1)
MagicBlock(BrickColor.new("Cyan"),cf(icepart3.Position),60,60,60,20,20,20,.1,1)
if target1~=nil then
so("333475957",icepart1,1,.9)
local MouseLook=cf((icepart1.Position+target1.Position)/2,target1.Position+vt(math.random(-1000,1000)/100,math.random(-1000,1000)/100,math.random(-1000,1000)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart1.Position,5,7,0,icepart1,10,1,partic1,partic2})
else
icepart1.Parent=nil
end
if target2~=nil then
so("333475957",icepart2,1,.9)
local MouseLook=cf((icepart2.Position+target2.Position)/2,target2.Position+vt(math.random(-1000,1000)/100,math.random(-1000,1000)/100,math.random(-1000,1000)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart2.Position,5,7,0,icepart2,10,1,partic3,partic4})
else
icepart2.Parent=nil
end
if target3~=nil then
so("333475957",icepart3,1,.9)
local MouseLook=cf((icepart3.Position+target3.Position)/2,target3.Position+vt(math.random(-200,200)/100,math.random(-200,200)/100,math.random(-200,200)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart3.Position,8,10,0,icepart3,10,1,partic5,partic6})
else
icepart3.Parent=nil
end
--end
end

function TriOrbs()
--for i=1,math.random(1,4) do
local dacf=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart1.CFrame=dacf
local icepart2=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart2.Anchored=true
i2msh=mesh("SpecialMesh",icepart2,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart2.CFrame=dacf2
local icepart3=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart3.Anchored=true
i3msh=mesh("SpecialMesh",icepart3,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart3.CFrame=dacf3
local partic1=icicleparti2:Clone() partic1.Parent=icepart1 partic1.Enabled=true
local partic3=icicleparti2:Clone() partic3.Parent=icepart2 partic3.Enabled=true
local partic5=icicleparti2:Clone() partic5.Parent=icepart3 partic5.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
icepart2.CFrame=dacf2
icepart3.CFrame=dacf3
dacf=dacf*cf(0,math.random(400,800)/10,0)
dacf2=dacf2*cf(0,math.random(400,800)/10,0)
dacf3=dacf3*cf(0,math.random(400,800)/10,0)
end
local target1,distance1=findRandomTorso(icepart1.Position)
local target2,distance2=findRandomTorso(icepart2.Position)
local target3,distance3=findRandomTorso(icepart3.Position)
local test1,dist1=findNearestTorso(Head.Position)
local pos1,pos2,pos3=nil,nil,nil
local refpart1=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart1.Anchored=true
local refpart2=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart2.Anchored=true
local refpart3=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart3.Anchored=true
if target1~=nil then
pos1=target1.Position
refpart1.CFrame=cf(pos1)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
if target2~=nil then
pos2=target2.Position
refpart2.CFrame=cf(pos2)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
if target3~=nil then
pos3=target3.Position
refpart3.CFrame=cf(pos3)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
local move=40
for i=0,1,0.1 do
swait()
move=40-40*i
if target1~=nil then
refpart1.CFrame=cf(refpart1.Position,target1.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart1.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart1.CFrame=dacf
dacf=dacf*cf(0,move,0)
end
if target2~=nil then
refpart2.CFrame=cf(refpart2.Position,target2.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart2.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart2.CFrame=dacf2
dacf2=dacf2*cf(0,move,0)
end
if target3~=nil then
refpart3.CFrame=cf(refpart3.Position,target3.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart3.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart3.CFrame=dacf3
dacf3=dacf3*cf(0,move,0)
end
end
local laser1=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser1.Anchored=true
local lmsh1=mesh("SpecialMesh",laser1,"Head","nil",vt(0,0,0),vt(10,1,10))
local laser2=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser2.Anchored=true
local lmsh2=mesh("SpecialMesh",laser2,"Head","nil",vt(0,0,0),vt(10,1,10))
local laser3=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser3.Anchored=true
local lmsh3=mesh("SpecialMesh",laser3,"Head","nil",vt(0,0,0),vt(10,1,10))
local ref=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref,1)
local ref1=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref1.Anchored=true
ref1.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref1,5)
local ice1=0
local ref2=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref2.Anchored=true
ref2.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref2,5)
local ice2=2
local ref3=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref3.Anchored=true
ref3.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref3,5)
local ice3=4
for i=0,3,0.05 do
swait()
ice1=ice1+1
ice2=ice2+1
ice3=ice3+1
if target1~=nil then
if i>1 then
refpart1.CFrame=refpart1.CFrame*cf(0,0,-1.5)
end
local cfnew=cf(icepart1.Position,refpart1.Position)
local hit1,pos1=rayCast(icepart1.Position,cfnew.lookVector,9999,Character)
local mag1=(icepart1.Position-pos1).magnitude 
laser1.CFrame=CFrame.new((icepart1.Position+pos1)/2,pos1)*angles(1.57,0,0)
lmsh1.Scale=vt(10,mag1*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos1),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos1)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref1.CFrame=cf(ref.Position)
if ice1%2==0 then
so("333476017",ref1,.3,1.4)
end
end
if target2~=nil then
if i>1 then
refpart2.CFrame=refpart2.CFrame*cf(0,0,-1.5)
end
local cfnew=cf(icepart2.Position,refpart2.Position)
local hit2,pos2=rayCast(icepart2.Position,cfnew.lookVector,9999,Character)
local mag2=(icepart2.Position-pos2).magnitude 
laser2.CFrame=CFrame.new((icepart2.Position+pos2)/2,pos2)*angles(1.57,0,0)
lmsh2.Scale=vt(10,mag2*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos2),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos2)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref2.CFrame=cf(ref.Position)
if ice2%2==0 then
so("333476017",ref2,.3,1.4)
end
end
if target3~=nil then
if i>1 then
refpart3.CFrame=refpart3.CFrame*cf(0,0,-1.5)
end
local cfnew=cf(icepart3.Position,refpart3.Position)
local hit3,pos3=rayCast(icepart3.Position,cfnew.lookVector,9999,Character)
local mag3=(icepart3.Position-pos3).magnitude 
laser3.CFrame=CFrame.new((icepart3.Position+pos3)/2,pos3)*angles(1.57,0,0)
lmsh3.Scale=vt(10,mag3*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos3),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos3)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref3.CFrame=cf(ref.Position)
if ice3%2==0 then
so("333476017",ref3,.3,1.4)
end
end
end
if target1~=nil then
local pos1=laser1.CFrame
local x1=lmsh1.Scale.X local y1=lmsh1.Scale.Y local z1=lmsh1.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos1,x1,y1,z1,1,1,1,.1)
end
if target2~=nil then
local pos2=laser2.CFrame
local x2=lmsh2.Scale.X local y2=lmsh2.Scale.Y local z2=lmsh2.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos2,x2,y2,z2,1,1,1,.1)
end
if target3~=nil then
local pos3=laser3.CFrame
local x3=lmsh3.Scale.X local y3=lmsh3.Scale.Y local z3=lmsh3.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos3,x3,y3,z3,1,1,1,.1)
end
MagicCircle(BrickColor.new("Cyan"),cf(icepart1.Position),100,100,100,5,5,5,.2)
MagicCircle(BrickColor.new("Cyan"),cf(icepart2.Position),100,100,100,5,5,5,.2)
MagicCircle(BrickColor.new("Cyan"),cf(icepart3.Position),100,100,100,5,5,5,.2)
icepart1.Parent=nil
icepart2.Parent=nil
icepart3.Parent=nil
refpart1.Parent=nil
refpart2.Parent=nil
refpart3.Parent=nil
laser1.Parent=nil
laser2.Parent=nil
laser3.Parent=nil
ref.Parent=nil
end

function TriOrbs2()
--for i=1,math.random(1,4) do
local dacf=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart1.CFrame=dacf
local icepart2=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart2.Anchored=true
i2msh=mesh("SpecialMesh",icepart2,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart2.CFrame=dacf2
local icepart3=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart3.Anchored=true
i3msh=mesh("SpecialMesh",icepart3,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart3.CFrame=dacf3
local partic1=icicleparti2:Clone() partic1.Parent=icepart1 partic1.Enabled=true
local partic3=icicleparti2:Clone() partic3.Parent=icepart2 partic3.Enabled=true
local partic5=icicleparti2:Clone() partic5.Parent=icepart3 partic5.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
icepart2.CFrame=dacf2
icepart3.CFrame=dacf3
dacf=dacf*cf(0,math.random(400,800)/10,0)
dacf2=dacf2*cf(0,math.random(400,800)/10,0)
dacf3=dacf3*cf(0,math.random(400,800)/10,0)
end
local target1,distance1=findNearestTorso(Head.Position)
local target2,distance2=findNearestTorso(Head.Position)
local target3,distance3=findNearestTorso(Head.Position)
local test1,dist1=findNearestTorso(Head.Position)
local pos1,pos2,pos3=nil,nil,nil
local refpart1=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart1.Anchored=true
local refpart2=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart2.Anchored=true
local refpart3=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart3.Anchored=true
if target1~=nil then
pos1=target1.Position
refpart1.CFrame=cf(pos1)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
if target2~=nil then
pos2=target2.Position
refpart2.CFrame=cf(pos2)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
if target3~=nil then
pos3=target3.Position
refpart3.CFrame=cf(pos3)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
local move=40
for i=0,1,0.1 do
swait()
move=40-40*i
if target1~=nil then
refpart1.CFrame=cf(refpart1.Position,target1.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart1.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart1.CFrame=dacf
dacf=dacf*cf(0,move,0)
end
if target2~=nil then
refpart2.CFrame=cf(refpart2.Position,target2.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart2.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart2.CFrame=dacf2
dacf2=dacf2*cf(0,move,0)
end
if target3~=nil then
refpart3.CFrame=cf(refpart3.Position,target3.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart3.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart3.CFrame=dacf3
dacf3=dacf3*cf(0,move,0)
end
end
local laser1=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser1.Anchored=true
local lmsh1=mesh("SpecialMesh",laser1,"Head","nil",vt(0,0,0),vt(10,1,10))
local laser2=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser2.Anchored=true
local lmsh2=mesh("SpecialMesh",laser2,"Head","nil",vt(0,0,0),vt(10,1,10))
local laser3=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser3.Anchored=true
local lmsh3=mesh("SpecialMesh",laser3,"Head","nil",vt(0,0,0),vt(10,1,10))
local ref=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref,1)
local ref1=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref1.Anchored=true
ref1.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref1,5)
local ice1=0
local ref2=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref2.Anchored=true
ref2.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref2,5)
local ice2=2
local ref3=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref3.Anchored=true
ref3.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref3,5)
local ice3=4
for i=0,3,0.1 do
swait()
ice1=ice1+1
ice2=ice2+1
ice3=ice3+1
if target1~=nil then
if i>1 then
refpart1.CFrame=refpart1.CFrame*cf(0,0,-2)
end
local cfnew=cf(icepart1.Position,refpart1.Position)
local hit1,pos1=rayCast(icepart1.Position,cfnew.lookVector,9999,Character)
local mag1=(icepart1.Position-pos1).magnitude 
laser1.CFrame=CFrame.new((icepart1.Position+pos1)/2,pos1)*angles(1.57,0,0)
lmsh1.Scale=vt(10,mag1*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos1),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos1)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref1.CFrame=cf(ref.Position)
if ice1%2==0 then
so("333476017",ref1,.3,1.4)
end
end
if target2~=nil then
if i>1 then
refpart2.CFrame=refpart2.CFrame*cf(0,0,-2)
end
local cfnew=cf(icepart2.Position,refpart2.Position)
local hit2,pos2=rayCast(icepart2.Position,cfnew.lookVector,9999,Character)
local mag2=(icepart2.Position-pos2).magnitude 
laser2.CFrame=CFrame.new((icepart2.Position+pos2)/2,pos2)*angles(1.57,0,0)
lmsh2.Scale=vt(10,mag2*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos2),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos2)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref2.CFrame=cf(ref.Position)
if ice2%2==0 then
so("333476017",ref2,.3,1.4)
end
end
if target3~=nil then
if i>1 then
refpart3.CFrame=refpart3.CFrame*cf(0,0,-2)
end
local cfnew=cf(icepart3.Position,refpart3.Position)
local hit3,pos3=rayCast(icepart3.Position,cfnew.lookVector,9999,Character)
local mag3=(icepart3.Position-pos3).magnitude 
laser3.CFrame=CFrame.new((icepart3.Position+pos3)/2,pos3)*angles(1.57,0,0)
lmsh3.Scale=vt(10,mag3*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos3),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos3)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref3.CFrame=cf(ref.Position)
if ice3%2==0 then
so("333476017",ref3,.3,1.4)
end
end
end
if target1~=nil then
local pos1=laser1.CFrame
local x1=lmsh1.Scale.X local y1=lmsh1.Scale.Y local z1=lmsh1.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos1,x1,y1,z1,1,1,1,.1)
end
if target2~=nil then
local pos2=laser2.CFrame
local x2=lmsh2.Scale.X local y2=lmsh2.Scale.Y local z2=lmsh2.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos2,x2,y2,z2,1,1,1,.1)
end
if target3~=nil then
local pos3=laser3.CFrame
local x3=lmsh3.Scale.X local y3=lmsh3.Scale.Y local z3=lmsh3.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos3,x3,y3,z3,1,1,1,.1)
end
MagicCircle(BrickColor.new("Cyan"),cf(icepart1.Position),100,100,100,5,5,5,.2)
MagicCircle(BrickColor.new("Cyan"),cf(icepart2.Position),100,100,100,5,5,5,.2)
MagicCircle(BrickColor.new("Cyan"),cf(icepart3.Position),100,100,100,5,5,5,.2)
icepart1.Parent=nil
icepart2.Parent=nil
icepart3.Parent=nil
refpart1.Parent=nil
refpart2.Parent=nil
refpart3.Parent=nil
laser1.Parent=nil
laser2.Parent=nil
laser3.Parent=nil
ref.Parent=nil
end

function IceMortar()
for i=1,math.random(2,3) do
local dacf=Torso.CFrame*euler(-1.57+math.random(40,80)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"Sphere","nil",vt(0,0,0),vt(200,200,200))
icepart1.CFrame=dacf
local inc=100
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
dacf=dacf*cf(0,inc,0)
inc=100-100*i
end
local cfinc=99999
MagicHead(BrickColor.new("Cyan"),cf(icepart1.Position)*cf(0,cfinc/10,0),200,cfinc,200,-10,1,-10,.1)
MagicCircle(BrickColor.new("Cyan"),cf(icepart1.Position),200,200,200,-10,0,-10,.1)
icepart1.Transparency=1
so("334325056",icepart1,1,1)
game:GetService("Debris"):AddItem(icepart1,1)
local target1,distance1=findRandomTorso(icepart1.Position)
local test1,dist1=findNearestTorso(Head.Position)
if target1~=nil then
cfda=target1.Position+vt(math.random(-3000,3000)/100,0,math.random(-3000,3000)/100)
local hit2,pos2=rayCast(cfda,(CFrame.new(cfda,cfda - Vector3.new(0,1,0))).lookVector,999,Character)
local d1=part(3,effects,0,.5,BrickColor.new("Medium blue"),"Effect",vt())
d1.Anchored=true
d1.CFrame=cf(pos2)
msh=mesh("CylinderMesh",d1,"nil","nil",vt(0,0,0),vt(200,5,200))
d2=d1:Clone()
d2.Parent=d1
d2.CFrame=cf(d1.Position)
d2.BrickColor=BrickColor.new("White")
d2.Mesh.Scale=vt(0,5,0)
table.insert(Effects,{d1,"SatelliteStrike",d2,d2.Mesh,0})
end
end
end

function TurnSlam()
attack=true
local target,distance=findRandomTorso(RootPart.Position)
if target~=nil or target==nil then
local x,y,z = 0,0,0
for i=0,1,0.02 do
swait()
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),.05)
wld19.C0=wld19.C0:lerp(euler(-.6,.3,0)*cf(94,-47.5,-2.248),.01)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,.4,-.6),.01)
wld24.C0=wld24.C0:lerp(euler(2.4,.2,0)*cf(0,90.25,0),.01)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.01)

wld33.C0=wld33.C0:lerp(euler(-.6,-.3,0)*cf(-94,-47.5,-2.248),.01)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,-.4,.6),.01)
wld38.C0=wld38.C0:lerp(euler(-2.4,.2,0)*cf(0,-90.25,0),.01)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.01)
if Stun.Value>=StunT.Value then
break
end
end
for i=0,1,0.01 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(-.2,0,0),.02)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),.05)
wld19.C0=wld19.C0:lerp(euler(.2,.3,0)*cf(94,-47.5,-2.248),.02)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-1,-1.2),.02)
wld24.C0=wld24.C0:lerp(euler(2,-1,0)*cf(0,90.25,0),.02)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0)*euler(.5,0,1),.02)

wld33.C0=wld33.C0:lerp(euler(.2,-.3,0)*cf(-94,-47.5,-2.248),.02)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,1,1.2),.02)
wld38.C0=wld38.C0:lerp(euler(-2,-1,0)*cf(0,-90.25,0),.02)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0)*euler(-.5,0,-1),.02)
if Stun.Value>=StunT.Value then
break
end
end
shockwave=false
ref1a=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref1a.Anchored=true
ref1a.CFrame=cf(0,-50,0)
game:GetService("Debris"):AddItem(ref1a,3)
ref2a=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref2a.Anchored=true
ref2a.CFrame=cf(0,-50,0)
game:GetService("Debris"):AddItem(ref2a,3)
incda=80
for i=0,3,0.03 do
swait()
dan=.1
if shockwave==true then
incda=incda+10
if i<1.5 then
MagniDamage(ref1a,incda,10,15,math.random(0,0),"Knockdown2",RootPart,1.5,1,math.random(8,10),nil,nil,false,"Movement",.1,300)
MagniDamage(ref2a,incda,10,15,math.random(0,0),"Knockdown2",RootPart,1.5,1,math.random(8,10),nil,nil,false,"Movement",.1,300)
end
end
if i>1 then
dan=.05
if shockwave==false then
for i=1,2 do
so("157878578",ref1a,1,0.4) 
so("2101148",ref1a,1,0.6) 
end
for i=1,2 do
so("157878578",ref2a,1,0.4) 
so("2101148",ref2a,1,0.6) 
end
shockwave=true
refcam=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refcam.Anchored=true
refcam.CFrame=cf(prt31.Position)
refcam.CFrame=refcam.CFrame:lerp(cf(prt45.Position),.5)
game:GetService("Debris"):AddItem(refcam,1)
hitfl1,posfl1=rayCast(prt31.Position,(CFrame.new(prt31.Position,prt31.Position - Vector3.new(0,1,0))).lookVector,50,Character)
MagicRing(BrickColor.new("Pearl"),cf(posfl1)*euler(1.57,0,0),160,160,1,20,20,1,.1)
ref1a.CFrame=cf(posfl1)
hitfl2,posfl2=rayCast(prt45.Position,(CFrame.new(prt45.Position,prt45.Position - Vector3.new(0,1,0))).lookVector,50,Character)
MagicRing(BrickColor.new("Pearl"),cf(posfl2)*euler(1.57,0,0),160,160,1,20,20,1,.1)
ref2a.CFrame=cf(posfl2)
end
else
MagniDamage(prt31,90,50,70,math.random(40,60),"Knockdown2",RootPart,2,1,math.random(25,40),nil,nil,false)
MagniDamage(prt45,90,50,70,math.random(40,60),"Knockdown2",RootPart,2,1,math.random(25,40),nil,nil,false)
end
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),dan)
wld19.C0=wld19.C0:lerp(euler(-.6,.3,0)*cf(94,-47.5,-2.248),dan)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-1,-1.2),dan)
wld24.C0=wld24.C0:lerp(euler(1.2,-1,0)*cf(0,90.25,0),dan)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0)*euler(-.5,0,0)*euler(0,-.6,0)*euler(.3,0,0),dan)

wld33.C0=wld33.C0:lerp(euler(-.6,-.3,0)*cf(-94,-47.5,-2.248),dan)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,1,1.2),dan)
wld38.C0=wld38.C0:lerp(euler(-1.2,-1,0)*cf(0,-90.25,0),dan)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0)*euler(.5,0,0)*euler(0,-.6,0)*euler(-.3,0,0),dan)
if Stun.Value>=StunT.Value then
break
end
end
meleecooldown=0
mcdadd=.05
if CurrentHealth<=1500 then
mcdadd=1
end
--mcdadd=1
end
attack=false
end

function GrandPunch()
attack=true
local target,distance=findRandomTorso(RootPart.Position)
if target~=nil or target==nil then
local x,y,z = 0,0,0
for i=0,1,0.01 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,.5,0),.02)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0)*euler(0,.5,0),.02)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.02)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,.3,-.4)*euler(0,-.2,0),.02)
wld24.C0=wld24.C0:lerp(euler(2,0,0)*euler(0,0,0)*cf(0,90.25,0),.02)
wld29.C0=wld29.C0:lerp(euler(0,.5,0)*cf(0,125,0),.02)

wld33.C0=wld33.C0:lerp(euler(-.4,-.8,0)*cf(-94,-47.5,-2.248),.02)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.2)*euler(0,0,0),.02)
wld38.C0=wld38.C0:lerp(euler(-1,-.4,0)*cf(0,-90.25,0),.02)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.02)
if Stun.Value>=StunT.Value then
break
end
end
da=0
local oldpos=prt31.Position
for i=0,1.5,0.01 do
swait()
da=da+1
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,-.5,0),.04)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0)*euler(0,-.5,0),.04)
wld19.C0=wld19.C0:lerp(euler(-.8,.6,0)*cf(94,-47.5,-2.248),.04)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-1.2,-.2)*euler(0,-.2,0),.04)
--wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-1.2,-.8)*euler(0,-.2,0),.1)
wld24.C0=wld24.C0:lerp(euler(.8,0,0)*euler(0,0,0)*cf(0,90.25,0),.04)
wld29.C0=wld29.C0:lerp(euler(0,3,0)*cf(0,125,0),.04)

wld33.C0=wld33.C0:lerp(euler(-.4,-.1,0)*cf(-94,-47.5,-2.248),.04)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,-.2,.2)*euler(0,0,0),.04)
wld38.C0=wld38.C0:lerp(euler(-1.8,-.4,0)*cf(0,-90.25,0),.04)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.04)
if i<.5 then
if da%4==0 then
MagniDamage(prt31,95,15,20,math.random(60,100),"Knockdown2",prt31,.5,1,math.random(25,40),nil,nil,false)
MagicWave(BrickColor.new("Cyan"),cf(prt31.Position,oldpos)*euler(-1.57,0,0),100,100,100,10,10,10,.1)
oldpos=prt31.Position
end
end
if Stun.Value>=StunT.Value then
break
end
end
meleecooldown=0
mcdadd=.1
if CurrentHealth<=1500 then
mcdadd=1
end
--mcdadd=50
end
attack=false
end

--[[ punch
wld19.C0=wld19.C0:lerp(euler(-.4,-.3,0)*cf(94,-47.5,-2.248),.1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(-.8,0,0)*euler(0,-.2,0),.1)
wld24.C0=wld24.C0:lerp(euler(1.2,.8,0)*cf(0,90.25,0),.1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.1)
]]

function FrostSlam()
attack=true
local target,distance=findRandomTorso(RootPart.Position)
if target~=nil or target==nil then
local x,y,z = 0,0,0
for i=0,1,0.008 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0)*euler(0,.3,-.2),.015)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0)*euler(0,.3,0),.015)
wld19.C0=wld19.C0:lerp(euler(-.4,-.3,0)*cf(94,-47.5,-2.248),.015)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(-1,0,0)*euler(0,-.4,0)*euler(0,0,-.4),.015)
wld24.C0=wld24.C0:lerp(euler(.8,.8,0)*euler(0,-.2,0)*cf(0,90.25,0),.015)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.015)

wld33.C0=wld33.C0:lerp(euler(.4,-.3,0)*cf(-94,-47.5,-2.248),.015)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,1)*euler(.5,0,0)*euler(0,.2,0),.015)
wld38.C0=wld38.C0:lerp(euler(-1,-.2,0)*cf(0,-90.25,0),.015)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.015)
if Stun.Value>=StunT.Value then
break
end
end
da=0
local oldpos=prt45.Position
shockwave=false
ref2a=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref2a.Anchored=true
ref2a.CFrame=cf(0,-50,0)
game:GetService("Debris"):AddItem(ref2a,3)
incda=80
for i=0,10,0.02 do
swait()
da=da+1
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0)*euler(0,.3,-.2),.025)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-190,0)*euler(0,.3,0)*euler(-.1,0,0),.025)
wld19.C0=wld19.C0:lerp(euler(-.4,-.3,0)*cf(94,-47.5,-2.248),.025)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(-1,0,0)*euler(0,-.4,0)*euler(0,0,0),.025)
wld24.C0=wld24.C0:lerp(euler(1,0,0)*euler(0,.3,0)*cf(0,90.25,0),.025)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.025)

wld33.C0=wld33.C0:lerp(euler(-.2,-.3,0)*cf(-94,-47.5,-2.248),.025)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.6)*euler(0,1.4,0)*euler(0,0,0),.025)
wld38.C0=wld38.C0:lerp(euler(-.5,0,0)*euler(0,0,-.2)*cf(0,-90.25,0),.025)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.025)
if i>1 and i<8 then
if da%10==0 then
local do1=0
local do2=0
local rand1=math.random(1,2)
if rand1==1 then do1=math.random(5000,15000)/100
elseif rand1==2 then do1=math.random(-15000,-5000)/100 end
local rand2=math.random(1,2)
if rand2==1 then do2=math.random(5000,15000)/100
elseif rand2==2 then do2=math.random(-15000,-5000)/100 end
cfda=ref2a.Position+vt(do1,10,do2)
local hit2,pos2=rayCast(cfda,(CFrame.new(cfda,cfda - Vector3.new(0,1,0))).lookVector,999,Character)
local d1=part(3,effects,0,.5,BrickColor.new("Cyan"),"Effect",vt())
d1.Anchored=true
d1.CFrame=cf(pos2)
msh=mesh("CylinderMesh",d1,"nil","nil",vt(0,0,0),vt(300,5,300))
d2=d1:Clone()
d2.Parent=d1
d2.CFrame=cf(d1.Position)
d2.BrickColor=BrickColor.new("White")
d2.Mesh.Scale=vt(0,5,0)
table.insert(Effects,{d1,"SatelliteStrike2",d2,d2.Mesh,0})
end
end
if i>1 and i<1.3 then
incda=incda+10
MagniDamage(ref2a,incda,6,8,math.random(0,0),"Knockdown2",RootPart,1.5,1,math.random(8,10),nil,nil,false,"Movement",.1,300)
end
if i<1 then
if da%4==0 then
MagniDamage(prt45,95,15,20,math.random(40,60),"Knockdown2",prt45,.5,1,math.random(25,40),nil,nil,false)
MagicWave(BrickColor.new("Cyan"),cf(prt45.Position,oldpos)*euler(-1.57,0,0),100,100,100,10,10,10,.1)
oldpos=prt45.Position
end
else
if shockwave==false then
shockwave=true
so("157878578",ref2a,1,0.4) 
so("2101148",ref2a,1,0.6) 
hitfl2,posfl2=rayCast(prt45.Position,(CFrame.new(prt45.Position,prt45.Position - Vector3.new(0,1,0))).lookVector,50,Character)
refaa=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refaa.Anchored=true
refaa.CFrame=cf(posfl2)
game:GetService("Debris"):AddItem(refaa,1)
MagicRing(BrickColor.new("Pearl"),cf(posfl2)*euler(1.57,0,0),160,160,1,20,20,1,.1)
ref2a.CFrame=cf(posfl2)
end
end
if Stun.Value>=StunT.Value then
break
end
end
--print(incda)
meleecooldown=0
mcdadd=.08
if CurrentHealth<=1500 then
mcdadd=1
end
end
attack=false
end

function StunAnim()
attack=true
for i=0,1,0.06 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.7,0,0),.06)
RootJoint.C0=RootJoint.C0:lerp(euler(-.2,0,0)*cf(-1.749,-180,0),.06)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.06)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,.6)*euler(0,-.2,0)*euler(-.5,0,0),.06)
wld24.C0=wld24.C0:lerp(euler(1,.1,0)*cf(0,90.25,0),.06)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.06)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.06)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,-.6)*euler(0,.2,0)*euler(-.5,0,0),.06)
wld38.C0=wld38.C0:lerp(euler(-1,.1,0)*cf(0,-90.25,0),.06)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.06)
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.04 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.2,0,0)*euler(0,0,.2),.07)
RootJoint.C0=RootJoint.C0:lerp(euler(-.5,.2,0)*cf(-1.749,-140,0),.07)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.07)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,.8)*euler(0,.2,0)*euler(-.4,0,0),.07)
wld24.C0=wld24.C0:lerp(euler(1.2,.3,0)*cf(0,90.25,0),.07)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.07)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.07)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.6)*euler(0,.2,0)*euler(.7,0,0),.07)
wld38.C0=wld38.C0:lerp(euler(-1.4,.1,0)*cf(0,-90.25,0),.07)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.07)
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.01 do
swait()
msh3.Scale=vt(4,8.5-8*i,8.5)
msh5.Scale=vt(4,8.5-8*i,8.5)
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0)*euler(0,1.5,0),.02)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-100,0)*euler(-1.3,0,0),.05)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.05)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,1)*euler(0,.2,0)*euler(-.1,0,0),.05)
wld24.C0=wld24.C0:lerp(euler(.5,2.2,0)*cf(0,90.25,0),.05)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.05)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.05)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.6)*euler(0,-.6,0)*euler(1.6,0,0),.05)
wld38.C0=wld38.C0:lerp(euler(-1.6,.1,0)*cf(0,-90.25,0),.05)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.05)
if Humanoid.Health<=0 then
break
end
end
msh3.Scale=vt(4,.5,8.5)
msh5.Scale=vt(4,.5,8.5)
--swait(100)
local numb=1300
if CurrentHealth<=1500 then
numb=1000
end
local removedeb=8
for i=0,numb do
swait()
removedeb=removedeb+1
if removedeb>8 then
removedeb=0
for _,c in pairs(Character:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
end
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.1 do
swait()
msh3.Scale=vt(4,.5+8*i,8.5)
msh5.Scale=vt(4,.5+8*i,8.5)
end
msh3.Scale=vt(4,8.5,8.5)
msh5.Scale=vt(4,8.5,8.5)
for i=0,1,0.02 do
swait()
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-100,0)*euler(-1.3,0,0),.05)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.05)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,.1)*euler(0,.4,0)*euler(1,0,0),.05)
wld24.C0=wld24.C0:lerp(euler(1.6,.1,0)*cf(0,90.25,0),.05)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.05)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.05)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,-.1)*euler(0,-.4,0)*euler(1,0,0),.05)
wld38.C0=wld38.C0:lerp(euler(-1.6,.1,0)*cf(0,-90.25,0),.05)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.05)
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.03 do
swait()
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-180,0)*euler(-.6,0,0),.06)
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0),.06)
wld19.C0=wld19.C0:lerp(euler(.2,.3,0)*cf(94,-47.5,-2.248),.06)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,-.4)*euler(0,-.2,0)*euler(-.3,0,0),.06)
wld24.C0=wld24.C0:lerp(euler(1.2,.1,0)*cf(0,90.25,0),.06)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.06)

wld33.C0=wld33.C0:lerp(euler(.2,-.3,0)*cf(-94,-47.5,-2.248),.06)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.4)*euler(0,.2,0)*euler(-.3,0,0),.06)
wld38.C0=wld38.C0:lerp(euler(-1.2,.1,0)*cf(0,-90.25,0),.06)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.06)
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.008 do
swait()
if i<.4 then
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(-.1,0,0),.06)
else
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0),.06)
end
RootJoint.C0=RootJoint.C0:lerp(cf(5,-210,0)*euler(.1,0,0),.06)
wld19.C0=wld19.C0:lerp(euler(.2,.3,0)*cf(94,-47.5,-2.248),.06)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,-.8)*euler(0,-.6,0)*euler(-.5,0,0),.06)
wld24.C0=wld24.C0:lerp(euler(.6,.3,0)*cf(0,90.25,0),.06)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.06)

wld33.C0=wld33.C0:lerp(euler(.2,-.3,0)*cf(-94,-47.5,-2.248),.06)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.8)*euler(0,.6,0)*euler(-.5,0,0),.06)
wld38.C0=wld38.C0:lerp(euler(-.6,.3,0)*cf(0,-90.25,0),.06)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.06)
if Humanoid.Health<=0 then
break
end
end
attack=false
end

function SummonCrystals()
attack=true
for i=0,1,0.01 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.5,0,0),.03)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-210,0)*euler(.05,0,0),.03)
--[[wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),.1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,-.4,0),.1)
wld24.C0=wld24.C0:lerp(euler(.8,.1,0)*cf(0,90.25,0),.1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),.1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,.4,0),.1)
wld38.C0=wld38.C0:lerp(euler(-.8,.1,0)*cf(0,-90.25,0),.1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.1)]]
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),.03)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.2,-.8)*euler(.2,0,0),.03)
wld24.C0=wld24.C0:lerp(euler(1.8,-.2,0)*cf(0,90.25,0),.03)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.03)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),.03)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.8)*euler(.2,0,0),.03)
wld38.C0=wld38.C0:lerp(euler(-1.8,-.2,0)*cf(0,-90.25,0),.03)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.03)
end
for i=0,1,0.04 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0),.05)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0)*euler(-.05,0,0),.05)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.05)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.2,-.8)*euler(.2,0,0)*euler(0,-.2,0),.05)
wld24.C0=wld24.C0:lerp(euler(1.4,-.2,0)*cf(0,90.25,0),.05)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.05)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.05)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.8)*euler(.2,0,0)*euler(0,.2,0),.05)
wld38.C0=wld38.C0:lerp(euler(-1.4,-.2,0)*cf(0,-90.25,0),.05)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.05)
end
Cryst1.Parent=workspace
C1Head.CFrame=RootPart.CFrame*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
C1Torso.CFrame=C1Head.CFrame
C1Neck.Parent=C1Head
C1S.Parent=Cryst1
C1Hum.Parent=Cryst1
C1Hum.MaxHealth=200
C1Hum.Health=200
C1Hum.Parent=Cryst1
C1Hum:TakeDamage(1)
C1a=true
for _,c in pairs(Cryst1:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
Cryst2.Parent=workspace
C2Head.CFrame=RootPart.CFrame*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
C2Torso.CFrame=C2Head.CFrame
C2Neck.Parent=C2Head
C2S.Parent=Cryst2
C2Hum.Parent=Cryst2
C2Hum.MaxHealth=200
C2Hum.Health=200
C2Hum.Parent=Cryst2
C2Hum:TakeDamage(1)
C2a=true
for _,c in pairs(Cryst2:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
Cryst3.Parent=workspace
C3Head.CFrame=RootPart.CFrame*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
C3Torso.CFrame=C3Head.CFrame
C3Neck.Parent=C3Head
C3S.Parent=Cryst3
C3Hum.Parent=Cryst3
C3Hum.MaxHealth=200
C3Hum.Health=200
C3Hum.Parent=Cryst3
C3Hum:TakeDamage(1)
C3a=true
for _,c in pairs(Cryst3:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
Cryst4.Parent=workspace
C4Head.CFrame=RootPart.CFrame*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
C4Torso.CFrame=C4Head.CFrame
C4Neck.Parent=C4Head
C4S.Parent=Cryst4
C4Hum.Parent=Cryst4
C4Hum.MaxHealth=200
C4Hum.Health=200
C4Hum.Parent=Cryst4
C4Hum:TakeDamage(1)
C4a=true
for _,c in pairs(Cryst4:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
MagicCircle(BrickColor.new("Cyan"),cf(C1Head.Position),150,400,150,5,10,5,.05)
MagicCircle(BrickColor.new("Cyan"),cf(C2Head.Position),150,400,150,5,10,5,.05)
MagicCircle(BrickColor.new("Cyan"),cf(C3Head.Position),150,400,150,5,10,5,.05)
MagicCircle(BrickColor.new("Cyan"),cf(C4Head.Position),150,400,150,5,10,5,.05)
crystals=true
if CurrentHealth>1500 then
else
end
swait(50)
attack=false
end

function HeavySlam()
attack=true
for i=0,1,0.05 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,3,0),.1)
wld2.C0=clerp(wld2.C0,euler(0,0,0)*cf(0,1,0),.1)
Neck.C0=clerp(Neck.C0,necko*euler(0,1,0)*euler(-.3,0,0),.1)
RootJoint.C0=clerp(RootJoint.C0,cf(0,-2,0)*euler(0,1,0),.1)
RW.C0=clerp(RW.C0,cf(4.5,1.5,0)*euler(2,0,.3),.1)
RW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.1)
LW.C0=clerp(LW.C0,cf(-4.5,1.5,0)*euler(-.2,0,-.6),.1)
LW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.1)
LH.C0=clerp(LH.C0,cf(-1.5,-3,0)*euler(0,1,0)*euler(.1,0,0),.1)
RH.C0=clerp(RH.C0,cf(1.5,-3,0)*euler(0,-1,0)*euler(.1,0,0),.1)
end
for i=0,1,0.04 do
swait()
wld1.C0=clerp(wld1.C0,euler(1,0,0)*cf(0,3,0),.1)
wld2.C0=clerp(wld2.C0,euler(0,0,0)*cf(0,1,0),.1)
Neck.C0=clerp(Neck.C0,necko*euler(0,-.2,0)*euler(-.4,0,0),.1)
RootJoint.C0=clerp(RootJoint.C0,cf(0,-2,0)*euler(0,-.2,0),.1)
RW.C0=clerp(RW.C0,cf(4.5,1.5,0)*euler(3.5,0,0)*euler(0,.2,0),.1)
RW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.1)
LW.C0=clerp(LW.C0,cf(-4.5,1.5,0)*euler(-.4,0,-.6),.1)
LW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.1)
LH.C0=clerp(LH.C0,cf(-1.5,-3,0)*euler(0,0,0)*euler(-.3,0,0),.1)
RH.C0=clerp(RH.C0,cf(1.5,-3,-1)*euler(0,0,0)*euler(-.1,0,0),.1)
end
so("161006212",prt9,1,.6)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(50,70),"Knockdown2",RootPart,2,1,math.random(20,40),nil,true) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,20,8)
hitboxCF=prt9.CFrame*cf(0,0,0)
hitbox.CFrame=hitboxCF
blcf=nil
scfr=nil
for i=0,1,0.02 do
swait()
--[[local blcf = prt9.CFrame*cf(0,0,0)
if scfr and (prt9.Position-scfr.p).magnitude > .1 then
local h = 14
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
hitboxCF=prt9.CFrame*cf(0,0,0)
hitbox.CFrame=hitboxCF
wld1.C0=clerp(wld1.C0,euler(2.5,0,0)*cf(0,3,0),.4)
wld2.C0=clerp(wld2.C0,euler(0,0,0)*cf(0,1,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*euler(-.6,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,cf(0,0,0)*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(2.5,1.5,-1)*euler(.5,0,-.2)*euler(0,0,0),.4)
RW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-4.5,1.5,0)*euler(-.8,0,-.6),.2)
LW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1.5,-3,0)*euler(0,0,0)*euler(-1,0,0),.2)
RH.C0=clerp(RH.C0,cf(1.5,-1,-1.5)*euler(0,0,0)*euler(-.1,0,0),.2)
if i>=.16 and i<=.17 then
hit,pos=rayCast(prt9.Position,(CFrame.new(prt9.Position,prt9.Position - Vector3.new(0,1,0))).lookVector,10,Character)
if hit~=nil then
ref=part(3,workspace,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
so("199145477",prt9,1,.8) 
game:GetService("Debris"):AddItem(ref,1)
--MagniDamage(ref,30,1,5,math.random(50,70),"Knockdown2",false,"Movement",.2,400,math.random(90,100))
MagniDamage(ref,30,1,5,math.random(200,400),"Knockdown2",false,"Movement",.2,200,math.random(90,100))
MagicWave(BrickColor.new("Bright stone grey"),cf(ref.Position),1,1,1,2,2,2,.05)
end
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end

local magref=part(3,effects,0,.5,BrickColor.new("Black"),"Effect",vt())
magref.Anchored=true
magref.CFrame=cf(0,0,0)
magref.Parent=nil
local mrmsh=mesh("SpecialMesh",magref,"Sphere","nil",vt(0,0,0),vt(1,1,1))

function MagniDamage(Part,magni,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged,DecreaseState,DecreaseAmount,Duration)
--magref.CFrame=cf(Part.Position)
--mrmsh.Scale=vt(magni*10,magni*10,magni*10)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=nil
for _,d in pairs(c:children()) do
--if d.Name=="Torso" or d.Name=="Head" or d.Name=="HumanoidRootPart" or d.Name=="HitPart" then
if d.className=="Part" then
head=d
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Character.Name and c.Name~="Crystal" then 
if stun==nil then
stun=math.random(5,10)
end
local Rang=nil
if Ranged==false then
Rang=true
end
local stag=nil
if shbash==true then
stag=true
end
Damagefunc(head,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged,DecreaseState,DecreaseAmount,Duration)
--Damagefunc(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,DecreaseState,DecreaseAmount,Duration)
end
end
end
end
end
end
end

function DecreaseStat(Model,Stat,Amount,Duration)
if Model:findFirstChild("Stats")~=nil then
if Model.Stats[Stat]~=nil then
Model.Stats[Stat].Value=Model.Stats[Stat].Value-Amount
d=Instance.new("NumberValue",Model.Stats.Decrease)
dur=Instance.new("NumberValue",d)
dur.Name="Duration"
dur.Value=Duration
game:GetService("Debris"):AddItem(d,40)
if Stat=="Damage" then
d.Name="DecreaseAtk"
elseif Stat=="Defense" then
d.Name="DecreaseDef"
elseif Stat=="Movement" then
d.Name="DecreaseMvmt"
end
if Model:findFirstChild("Torso")~=nil then
display=""
if Stat=="Damage" then
if Amount>0 then
display="-Damage"
else
display="+Damage"
end
elseif Stat=="Defense" then
if Amount>0 then
display="-Defense"
else
display="+Defense"
end
elseif Stat=="Movement" then
if Amount>0 then
display="-Movement"
else
display="+Movement"
end
end
showDamage(Model,display,"Debuff")
end
d.Value=Amount
table.insert(Effects,{Model,"DecreaseStat",Stat,Amount,Duration,d})
end
end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 10000
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) and (temp2.Name~="Crystal") then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					local dohit=true
					if temp2:findFirstChild("Stats")~=nil then if temp2.Stats:findFirstChild("Boss")~=nil then if temp2.Stats.Boss.Value==true then dohit=false end end end
					if temp2:findFirstChild("Alive")==nil then dohit=false end
					if dohit==true then
					torso = temp
					dist = (temp.Position - pos).magnitude
					end
				end
			end
		end
	end
	return torso,dist
end

function findRandomTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 10000
	local temp = nil
	local human = nil
	local temp2 = nil
	local list2 = {}
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) and (temp2.Name~="Crystal") then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if pos.magnitude < dist then
					local dohit=true
					if temp2:findFirstChild("Stats")~=nil then if temp2.Stats:findFirstChild("Boss")~=nil then if temp2.Stats.Boss.Value==true then dohit=false end end end
					if temp2:findFirstChild("Alive")==nil then dohit=false end
					if dohit==true then
					torso = temp
					table.insert(list2,temp)
					end
				end
			end
		end
	end
	if #list2>0 then
	rand=math.random(1,#list2)
	return list2[rand],dist
	else
	return nil,dist
	end
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged,DecreaseState,DecreaseAmount,Duration,Sound)
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
--[[for _,v in pairs(hit.Parent:children()) do
if v:IsA("Humanoid") then
h=v
end
end]]
--[[if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
h=hit.Parent.Parent:FindFirstChild("Humanoid")
end]]
if hit.Parent.className=="Hat" then
hit=hit.Parent.Parent:findFirstChild("Head")
end
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent.Name~="Crystal" and hit.Parent:FindFirstChild("Torso")~=nil then
if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
if Sound=="GreatHit" then
so("200632875",hit,1,1)
end
game:GetService("Debris"):AddItem(c,.5)
minim=minim*Atk.Value
maxim=maxim*Atk.Value
Damage=0
if minim==maxim or minim>maxim then
Damage=maxim
else
Damage=math.random(minim,maxim)
end
blocked=false
enblock=nil
Stats=hit.Parent:findFirstChild("Stats")
if Stats~=nil then
enblock=Stats:findFirstChild("Block")
if enblock~=nil then
if enblock.Value==true then
blocked=true
end
end
if Stats:findFirstChild("Defense")~=nil then
Damage=Damage/(Stats.Defense.Value)
if Damage<=3 and (ranged==false or ranged==nil) and blocked~=true then
hitnum=math.random(1,5)
if hitnum==1 then so("199149321",hit,1,.7)
elseif hitnum==2 then so("199149338",hit,1,.7)
elseif hitnum==3 then so("199149367",hit,1,.7)
elseif hitnum==4 then so("199149409",hit,1,.7)
elseif hitnum==5 then so("199149452",hit,1,.7)
end
elseif ranged==false or ranged==nil and blocked~=true then
hitnum=math.random(1,6)
if hitnum==1 then so("199149137",hit,1,.7)
elseif hitnum==2 then so("199149186",hit,1,.7)
elseif hitnum==3 then so("199149221",hit,1,.7)
elseif hitnum==4 then so("199149235",hit,1,.7)
elseif hitnum==5 then so("199149269",hit,1,.7)
elseif hitnum==6 then so("199149297",hit,1,.7)
end
end
end
if Stats:findFirstChild("Stun")~=nil then
if blocked==true then
incstun=math.floor(incstun/2)
end
Stats.Stun.Value=Stats.Stun.Value+incstun
end
if Stats:findFirstChild("Stagger")~=nil then
if stagger==true then
Stats.Stagger.Value=true
end
end
end
if blocked==true then
showDamage(hit.Parent,"Block","Damage")
hitnum=math.random(1,2)
if hitnum==1 then so("199148933",hit,1,1)
elseif hitnum==2 then so("199148947",hit,1,1)
end
enblock.Value=false
else
Damage=math.floor(Damage)
h:TakeDamage(Damage)
--[[coroutine.resume(coroutine.create(function(Hum,Dam)
damageFunc:InvokeServer(nil,h,Damage)
--print(Dam)
end),h,Damage)]]
showDamage(hit.Parent,Damage,"Damage")
if DecreaseState~=nil then
if DecreaseState=="Shatter" then
DecreaseStat(hit.Parent,"Movement",DecreaseAmount,Duration)
DecreaseStat(hit.Parent,"Damage",DecreaseAmount,Duration)
else
DecreaseStat(hit.Parent,DecreaseState,DecreaseAmount,Duration)
end
end
if Type=="Knockdown" then
hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=cf(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
elseif Type=="Shatter" then
for i=1,10 do
BreakEffect(BrickColor.new("Cyan"),hit.CFrame,math.random(20,80)/100,math.random(2,10),math.random(20,80)/100)
end
elseif Type=="Knockdown2" then
hum=hit.Parent.Humanoid
local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
elseif Type=="Normal" then
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
if KnockbackType==1 then
vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
elseif KnockbackType==2 then
vp.velocity=Property.CFrame.lookVector*knockback
end
game:GetService("Debris"):AddItem(vp,.5)
if knockback>0 then
vp.Parent=hit.Parent.Torso
end
end
end
debounce=Instance.new("BoolValue")
debounce.Name="DebounceHit"
debounce.Parent=hit.Parent
debounce.Value=true
game:GetService("Debris"):AddItem(debounce,Delay)
CRIT=false
end
end

showDamage=function(Char,Dealt,Type)
m=Instance.new("Model")
m.Name="Effect"
c=Instance.new("Part")
c.Transparency=1
c.Name="Head"
c.TopSurface=0
c.BottomSurface=0
c.formFactor="Plate"
c.Size=Vector3.new(1,.4,1)
b=Instance.new("BillboardGui",c)
b.Size=UDim2.new(5,0,5,0)
b.AlwaysOnTop=true
damgui=gui("TextLabel",b,tostring(Dealt),1,Color3.new(0,0,0),UDim2.new(0,0,0,0),UDim2.new(1,0,1,0))
if Type=="Damage" then
damgui.Font="SourceSans"
if Dealt=="Block" then
damgui.TextColor3=BrickColor.new("Bright blue").Color
elseif Dealt<3 then
damgui.TextColor3=BrickColor.new("White").Color
elseif Dealt>=3 and Dealt<20 then
damgui.TextColor3=BrickColor.new("Bright yellow").Color
else
damgui.TextColor3=BrickColor.new("Really red").Color
damgui.Font="SourceSansBold"
end
elseif Type=="Debuff" then
damgui.TextColor3=BrickColor.new("White").Color
elseif Type=="Interrupt" then
damgui.TextColor3=BrickColor.new("New Yeller").Color
end
--damgui.FontSize="Size48"
damgui.TextScaled=true
ms=Instance.new("CylinderMesh")
ms.Scale=Vector3.new(.8,.8,.8)
ms.Parent=c
c.Reflectance=0
Instance.new("BodyGyro").Parent=c
c.Parent=m
if Char:findFirstChild("Head")~=nil then
c.CFrame=cf(Char["Head"].CFrame.p+Vector3.new(math.random(-100,100)/100,3,math.random(-100,100)/100))
elseif Char.Parent:findFirstChild("Head")~=nil then
c.CFrame=cf(Char.Parent["Head"].CFrame.p+Vector3.new(math.random(-100,100)/100,3,math.random(-100,100)/100))
end
f=Instance.new("BodyPosition")
f.P=2000
f.D=100
f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
if Type=="Damage" then
f.position=c.Position+Vector3.new(0,3,0)
elseif Type=="Debuff" or Type=="Interrupt" then
f.position=c.Position+Vector3.new(0,5,0)
end
f.Parent=c
game:GetService("Debris"):AddItem(m,5)
table.insert(Effects,{m,"showDamage",damgui,f,10,1,15,50,100})
c.CanCollide=false
m.Parent=effects
c.CanCollide=false
end

Player:GetMouse().KeyDown:connect(function(kek)
kek = kek:lower()
if kek == "z" then
TurnSlam()
end
if kek == "x" then
GrandPunch()
end
if kek == "c" then
FrostSlam()
end
if kek == "v" then
TriIceShards()
end
if kek == "q" then
TriOrbs()
end
if kek == "e" then
IceMortar()
end
if kek == "r" then
TriIceShards2()
end
if kek == "f" then
TriOrbs2()
end
end)

local stunnum=0
local animnum=0
local idle=1
local animlimit=120
local attacking=false
while Humanoid.Health>0 do
swait()
for _,c in pairs(C1S:children()) do
if c.Name=="Defense" then c.Value=1 end
if c.Name=="Decrease" then
for _,d in pairs(c:children()) do
d.Parent=nil
end
end
end
for _,c in pairs(C2S:children()) do
if c.Name=="Defense" then c.Value=1 end
if c.Name=="Decrease" then
for _,d in pairs(c:children()) do
d.Parent=nil
end
end
end
for _,c in pairs(C3S:children()) do
if c.Name=="Defense" then c.Value=1 end
if c.Name=="Decrease" then
for _,d in pairs(c:children()) do
d.Parent=nil
end
end
end
for _,c in pairs(C4S:children()) do
if c.Name=="Defense" then c.Value=1 end
if c.Name=="Decrease" then
for _,d in pairs(c:children()) do
d.Parent=nil
end
end
end
if stunanim==false then
Humanoid.Health=CurrentHealth
else
CurrentHealth=Humanoid.Health
end
for i=1,#refs2 do
refs2[i][1].CFrame=refs2[i][2].CFrame*refs2[i][3]
end
if meleecooldown<100 then
meleecooldown=meleecooldown+mcdadd
end
hitbox2.Parent=hitbox.Parent
hitbox2.Size=hitbox.Size
hitbox2.CFrame=hitboxCF
--[[target,distance=findNearestTorso(Torso.Position)
if target~=nil then
local test1,dist1=findNearestTorso(Head.Position)
if dist1<200 then
if math.random(1,50)==1 and stunanim==false then --close projectile attack
coroutine.resume(coroutine.create(function()
atktype=math.random(1,4)
if atktype==1 then
TriIceShards2()
elseif atktype==2 then
TriIceShards2()
elseif atktype==3 then
TriIceShards2()
elseif atktype==4 then
TriOrbs2()
end
end))
end
end
local rand=math.random(1,30)
if CurrentHealth<1500 then
rand=math.random(1,20)
end
if rand==1 and stunanim==false then --projectile attack
coroutine.resume(coroutine.create(function()
atktype=math.random(1,4)
if atktype==1 then
TriIceShards()
elseif atktype==2 then
TriIceShards()
elseif atktype==3 then
TriOrbs()
elseif atktype==4 then
IceMortar()
end
end))
end
if math.random(1,50)==1 and attack==false and meleecooldown>=100 and stunanim==false then --melee attack
coroutine.resume(coroutine.create(function()
atktype=math.random(1,3)
if atktype==1 then
TurnSlam()
elseif atktype==2 then
GrandPunch()
elseif atktype==3 then
FrostSlam()
end
end))
end
end
if C1a==true then
if C1Hum.Health<=0 then
C1a=false
summoncrystals=0
Stun.Value=Stun.Value+160
MagicCrystal(BrickColor.new("Pastel light blue"),cf(C1Head.Position),10,20,10,3,3,3,.1)
Cryst1.Parent=nil
end
end
if C2a==true then
if C2Hum.Health<=0 then
C2a=false
summoncrystals=0
Stun.Value=Stun.Value+160
MagicCrystal(BrickColor.new("Pastel light blue"),cf(C2Head.Position),10,20,10,3,3,3,.1)
Cryst2.Parent=nil
end
end
if C3a==true then
if C3Hum.Health<=0 then
C3a=false
summoncrystals=0
Stun.Value=Stun.Value+160
MagicCrystal(BrickColor.new("Pastel light blue"),cf(C3Head.Position),10,20,10,3,3,3,.1)
Cryst3.Parent=nil
end
end
if C4a==true then
if C4Hum.Health<=0 then
C4a=false
summoncrystals=0
Stun.Value=Stun.Value+160
MagicCrystal(BrickColor.new("Pastel light blue"),cf(C4Head.Position),10,20,10,3,3,3,.1)
Cryst4.Parent=nil
end
end
if C1a==false and C2a==false and C3a==false and C4a==false then
if CurrentHealth>1500 then
else
end
crystals=false
end
if CurrentHealth<=1500 then
end
summoncrystals=summoncrystals+.1
if summoncrystals>100 and crystals==false and attack==false then
coroutine.resume(coroutine.create(function()
while attack==true do
swait()
end
SummonCrystals()
end))
end]]
Humanoid.WalkSpeed=0
if Stun.Value>=StunT.Value and stunanim==false and attack==false then
coroutine.resume(coroutine.create(function()
stunanim=true
while attack==true do
swait()
Stun.Value=StunT.Value
end
summoncrystals=0
StunAnim()
Stun.Value=0
stunanim=false
end))
end
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
for _,c in pairs(Decrease:children()) do
c.Parent=nil
if c:findFirstChild("Duration")~=nil then
c.Duration.Value=c.Duration.Value-9999
if c.Duration.Value<=0 then
c.Parent=nil
end
end
if c.Name=="DecreaseAtk" then
decreaseatk=decreaseatk+c.Value
elseif c.Name=="DecreaseDef" then
decreasedef=decreasedef+c.Value
elseif c.Name=="DecreaseMvmt" then
decreasemvmt=decreasemvmt+c.Value
end
end
Atk.Value=2-decreaseatk
if Atk.Value<=0 then
Atk.Value=0
end
Def.Value=2-decreasedef
if Def.Value<=0 then
Def.Value=0.01
end
Mvmt.Value=0-decreasemvmt
if Mvmt.Value<=0 then
Mvmt.Value=0
end
decreaseatk=0
decreasedef=0
decreasemvmt=0
AtkVal=Atk.Value*100
AtkVal=math.floor(AtkVal)
AtkVal=AtkVal/100
DefVal=Def.Value*100
DefVal=math.floor(DefVal)
DefVal=DefVal/100
MvmtVal=Mvmt.Value*100
MvmtVal=math.floor(MvmtVal)
MvmtVal=MvmtVal/100
if MvmtVal<=0 then
MvmtVal=0
end
animnum=animnum+1
if animnum>=animlimit*5 then
idle=1
animnum=0
elseif animnum>=animlimit*4 then
idle=1
animnum=0
elseif animnum>=animlimit*3 then
idle=4
elseif animnum>=animlimit*2 then
idle=3
elseif animnum>=animlimit*1 then
idle=2
end
if attack==false then --idle anim
if idle==1 or idle==2 then
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),.005)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),.005)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),.005)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,-.4,0),.005)
wld24.C0=wld24.C0:lerp(euler(.8,.1,0)*cf(0,90.25,0),.005)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.005)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),.005)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,.4,0),.005)
wld38.C0=wld38.C0:lerp(euler(-.8,.1,0)*cf(0,-90.25,0),.005)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.005)
else
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),.005)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-180,10)*euler(-.2,0,0),.005)
wld19.C0=wld19.C0:lerp(euler(-.2,.3,0)*cf(94,-47.5,-2.248),.005)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,0,0),.005)
wld24.C0=wld24.C0:lerp(euler(1.2,-.2,0)*cf(0,90.25,0),.005)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.005)

wld33.C0=wld33.C0:lerp(euler(-.2,-.3,0)*cf(-94,-47.5,-2.248),.005)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,0,0),.005)
wld38.C0=wld38.C0:lerp(euler(-1.2,-.2,0)*cf(0,-90.25,0),.005)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.005)
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[2]=="DecreaseStat" then
--table.insert(Effects,{Model,"DecreaseStat",Stat,Amount,Duration,d})
Thing[5]=Thing[5]-1
if Thing[5]<=0 then
if Thing[1]:findFirstChild("Stats")~=nil then
if Thing[1].Stats:findFirstChild("Decrease")~=nil then
--Thing[1].Stats[Thing[3]].Value=Thing[1].Stats[Thing[3]].Value+Thing[4]
end
end
Thing[6].Parent=nil
table.remove(Effects,e)
end
end
if Thing[2]=="CylinderClang" then
if Thing[3]<=1 then
Thing[1].CFrame=Thing[1].CFrame*CFrame.new(0,2.5*Thing[5],0)*CFrame.fromEulerAnglesXYZ(Thing[6],0,0) 
Thing[7]=Thing[1].CFrame
effect("New Yeller",0,Thing[8],Thing[7])
Thing[8]=Thing[7]
Thing[3]=Thing[3]+Thing[4]
else
Part.Parent=nil
table.remove(Effects,e)
end
end
if Thing[2]=="showDamage" then
if Thing[6]<Thing[5] then
Thing[6]=Thing[6]+1
elseif Thing[6]<Thing[7] then
Thing[4].position=Thing[4].position+vt(0,-.2,0)
Thing[6]=Thing[6]+1
elseif Thing[6]<Thing[8] then
Thing[6]=Thing[6]+1
elseif Thing[6]<Thing[9] then
Thing[6]=Thing[6]+1
Thing[4].position=Thing[4].position+vt(0,.2,0)
Thing[3].TextStrokeTransparency=Thing[3].TextStrokeTransparency+.1
Thing[3].TextTransparency=Thing[3].TextTransparency+.1
else
Thing[1].Parent=nil
table.remove(Effects,e)
end
end
if Thing[2]=="ShootIce" then
local Look=Thing[1]
local hit,pos = rayCast(Thing[4],Look.lookVector,Thing[9],Character)
local mag=(Thing[4]-pos).magnitude 
--MagicHead(BrickColor.new(NewCol),CFrame.new((Thing[4]+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,.5,0,.5,.2)
Thing[8].CFrame=CFrame.new((Thing[4]+pos)/2,pos)*euler(-1.57,0,0)
Thing[4]=Thing[4]+(Look.lookVector*Thing[9])
Thing[3]=Thing[3]-1
Thing[9]=Thing[9]+.2
if hit~=nil then
Thing[3]=0
--DecreaseStat(hit.Parent,"Movement",.02,50,false)
--Damagefunc(hit,Thing[5],Thing[6],Thing[7],"Normal",RootPart,0,2,math.random(1,3),nil,nil,true)
ref=part(3,effects,0,1,BrickColor.new("Really red"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
--MagicCircle(BrickColor.new(NewCol3),cf(pos),5,5,5,1,1,1,0.2)
game:GetService("Debris"):AddItem(ref,1)
ref2=part(3,effects,0,1,BrickColor.new("Really red"),"Reference",vt(5,5,5))
ref2.Anchored=true
ref2.CFrame=cf(pos)
--MagicCircle(BrickColor.new(NewCol3),cf(pos),5,5,5,1,1,1,0.2)
so("199146181",ref2,1,1.6)
game:GetService("Debris"):AddItem(ref2,5)
--MagicCircle(BrickColor.new("Cyan"),ref.CFrame,40,40,40,1,1,1,.05)
freeze=true
MagicCircle(BrickColor.new("Cyan"),cf(ref.Position),20,20,20,20,20,20,.1)
MagniDamage(ref,15,Thing[5],Thing[6],Thing[7],"Normal",RootPart,0,2,math.random(10,15),nil,nil,true,"Movement",.1,100)
freeze=false
for i=1,8 do
BreakEffect(BrickColor.new("Pearl"),ref.CFrame*cf(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100),math.random(60,120)/100,math.random(3,20),math.random(60,120)/100)
end
end
if Thing[3]<=0 then
Thing[8].Transparency=1
Thing[11].Enabled=false
Thing[12].Enabled=false
game:GetService("Debris"):AddItem(Thing[8],5)
table.remove(Effects,e)
end
end
if Thing[2]=="SatelliteStrike" then
if Thing[5]<200 then
Thing[5]=Thing[5]+2
Thing[4].Scale=vt(Thing[5],5,Thing[5])
else
refda=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refda.Anchored=true
refda.CFrame=cf(Thing[1].Position)
game:GetService("Debris"):AddItem(refda,1)
so("334325056",refda,1,1)
so("199145739",refda,.8,2)
MagniDamage(refda,20,8,10,0,"Knockdown2",refda,0,1,math.random(10,12),nil,nil,true,"Movement",.4,100)
MagicHead(BrickColor.new("Medium blue"),cf(refda.Position),50,99999,50,-4,1,-4,.1)
MagicBlock(BrickColor.new("Medium blue"),cf(refda.Position),120,120,120,-5,-5,-5,.07,1)
for i=1,15 do
local freezepart=part(3,effects,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(500,800)/100,math.random(500,800)/100,math.random(500,800)/100))
freezepart.Anchored=true
freezepart.CanCollide=true
freezepart.CFrame=cf(refda.Position)*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(freezepart,5)
end
Thing[1].Parent=nil
--MagicIcicle(BrickColor.new("Bright green"),cf(Thing[1].Position)*cf(0,-4,0)*euler(math.random(-50,50)/100,0,math.random(-50,50)/100),5,15,5,.05)
table.remove(Effects,e)
end
end
if Thing[2]=="SatelliteStrike2" then
if Thing[5]<300 then
Thing[5]=Thing[5]+2
Thing[4].Scale=vt(Thing[5],5,Thing[5])
else
refda=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refda.Anchored=true
refda.CFrame=cf(Thing[1].Position)
game:GetService("Debris"):AddItem(refda,1)
refda2=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refda2.Anchored=true
refda2.CFrame=refda.CFrame*cf(0,-10,0)
game:GetService("Debris"):AddItem(refda2,1)
so("178452221",refda,1,1.2)
so("334325056",refda,1,1)
MagniDamage(refda,30,8,10,math.random(40,60),"Knockdown2",refda2,0,1,math.random(15,20),nil,nil,true,"Damage",.4,300)
--MagicHead(BrickColor.new("Medium blue"),cf(refda.Position),50,99999,50,-4,1,-4,.1)
MagicBlock(BrickColor.new("Medium blue"),cf(refda.Position),120,120,120,-5,-5,-5,.07,1)
MagicWave2(BrickColor.new("Cyan"),cf(refda.Position),40,30,40,5,8,5,.07)
--[[for i=1,15 do
local freezepart=part(3,effects,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(500,800)/100,math.random(500,800)/100,math.random(500,800)/100))
freezepart.Anchored=true
freezepart.CanCollide=true
freezepart.CFrame=cf(refda.Position)*cf(math.random(-1500,1500)/100,0,math.random(-1500,1500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(freezepart,5)
end]]
Thing[1].Parent=nil
--MagicIcicle(BrickColor.new("Bright green"),cf(Thing[1].Position)*cf(0,-4,0)*euler(math.random(-50,50)/100,0,math.random(-50,50)/100),5,15,5,.05)
table.remove(Effects,e)
end
end
if Thing[2]~="DecreaseStat" and Thing[2]~="showDamage" and Thing[2]~="ShootIce" and Thing[2]~="SatelliteStrike" and Thing[2]~="SatelliteStrike2" then
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Block2" then
Thing[1].CFrame=Thing[1].CFrame
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder2" then
Mesh=Thing[7]
if Thing[1].Transparency<=.5 then
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[8]=Thing[8]+.2
Thing[1].CFrame=Thing[1].CFrame*cf(0,1,0)*euler(0,Thing[8],0)
else
Mesh.Scale=Mesh.Scale+vt(Thing[4]/2,-Thing[5]/1,Thing[6]/2)
Thing[1].CFrame=Thing[1].CFrame*cf(0,-1,0)
end
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Shatter" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
Thing[4]=Thing[4]*cf(0,Thing[7],0)
Thing[1].CFrame=Thing[4]*euler(Thing[6],0,0)
--Thing[1].CFrame=Thing[1].CFrame
Thing[6]=Thing[6]+Thing[5]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,Thing[8],0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
table.remove(Effects,e)
end
end
end
--end
end
end
end
end
refs.Parent=nil
effects.Parent=nil
Humanoid.Parent=nil
for _,c in pairs(Character:children()) do
if c.className=="Part" then
--[[c:BreakJoints()
c.CanCollide=true
c.Anchored=false]]
c.Anchored=true
end
end
for _,c in pairs(armor:children()) do
if c.className=="Part" then
--[[c:BreakJoints()
c.CanCollide=true
c.Anchored=false]]
c.Anchored=true
end
end
for _,c in pairs(Character:children()) do
if c.className=="Part" then
if c.Name~="Left Arm" then
swait()
end
c:BreakJoints()
c.CanCollide=false
c.Anchored=false
end
end
for _,c in pairs(armor:children()) do
if c.className=="Part" then
swait()
c:BreakJoints()
c.CanCollide=false
c.Anchored=false
end
end
--[[ 
Copyrighted (C) Fenrier 2015
]]