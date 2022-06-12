Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0
 

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
fp.Position=Torso.Position 
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
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 


	user=game:service'Players'.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	m=Instance.new('Model',char)
	game:service'Lighting'.Outlines=false
	
	
local Handle  = Instance.new("Part", m)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Transparency = 0			Handle.Material = "SmoothPlastic"
			Handle.Name = 'Handle'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Institutional white")
			Handle.Size = Vector3.new(0.337107092, 1.12369001, 0.337107033)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(-0.000732421875, -0.0344696045, -0.945665836, -0.999993205, 0, 0, 0, 0, -1, 0, -0.999993086, 0)
    Handleweld.Parent = Character["Right Arm"]
		
					local HandleMesh = Instance.new("CylinderMesh",Handle)
				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.393207669, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 0.224738032, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-4.00543213e-005, 0.674224854, -1.33514404e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.393225789, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.597281575, -0.842823029, -0.00578403473, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0.5			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 4.62046242, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.24249268e-005, -3.32155609, -4.76837158e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.597218513, -0.842823029, 0.00602054596, 0.258815646, 0, 0.9659127, 0, 1, 0, -0.9659127, 0, 0.258815646)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0, -0.123583317, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.393286943, 0.99998641, 1.07852229e-016, -0, -1.14204248e-016, 1, -2.3803019e-013, -0, 2.38031816e-013, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.230328798, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.618034363, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 4.60922527, 0.224738017)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -3.3159256, -1.14440918e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.618049622, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0, 0.117978811, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.561845005)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.53044498, -0.842823029, 0.0229825974, 0.258815438, -1.97460321e-017, -0.965912819, 3.30120669e-017, 1, -1.15873321e-017, 0.965912819, -2.88872116e-017, 0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.529430389, -0.842823029, 0.0128250122, 0.258815438, 1.35525272e-020, -0.965912819, -3.50722156e-021, 1, 1.35524351e-020, 0.965912819, 0, 0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.529132843, -0.842823029, -0.0117540359, -0.258815706, -3.25260652e-018, -0.965912759, 3.89845789e-017, 1, -1.38099317e-017, 0.965912759, -4.1236952e-017, -0.258815706)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.393235803, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.525370121, -0.842823029, 0.0256881714, 0.258815676, -6.64073831e-019, 0.9659127, 1.05359266e-018, 1, 4.06573049e-019, -0.9659127, 9.14795583e-019, 0.258815676)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 0.174170732, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.59340477, -0.842823029, 0.00790405273, -0.258815557, 0, -0.9659127, 0, 1, 0, 0.9659127, 0, -0.258815557)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.382054657)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.00023651123, -0.842823029, -0.364931583, 0.99998641, -2.62516024e-017, -1.67287184e-026, 2.62512451e-017, 1, 3.6862117e-018, 1.67287184e-026, -3.68626216e-018, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.598263144, -0.842823029, 0.00432395935, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.398794174, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, 0.174145699, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0.5			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 1.01132107, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-8.39233398e-005, -6.13697433, 0.00012421608, -0.99998641, 0, 5.96042398e-008, 0, 1, 0, -5.96042398e-008, 0, -0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Wedge				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.221366972, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, -2.38418579e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.230348349, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local hitbox  = Instance.new("Part", m)
			hitbox:BreakJoints()
			hitbox.TopSurface = "Smooth"
			hitbox.Material = "SmoothPlastic"
			hitbox.Transparency = 1			hitbox.Name = 'hitbox'
			hitbox.BottomSurface = "Smooth"
			hitbox.FormFactor = "Custom" hitbox.CanCollide = false
			hitbox.BrickColor = BrickColor.new("Institutional white")
			hitbox.Size = Vector3.new(0.200000003, 5.60922527, 0.624738038)
			    local hitboxweld = Instance.new("ManualWeld")
   hitboxweld.Part0 =  Handle   hitboxweld.Part1 = hitbox  hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   hitboxweld.C1 = CFrame.new(0, -3.8159256, -1.12056732e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    hitboxweld.Parent = hitbox		
					local hitboxMesh = Instance.new("BlockMesh",hitbox)
				hitboxMesh.Name = "Mesh"
				hitboxMesh.Offset = Vector3.new(0, 0, 0)
				hitboxMesh.Scale = Vector3.new(0.561845124, 1, 1)
				
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = 0			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Institutional white")
			Wedge.Size = Vector3.new(0.200000003, 0.561845124, 0.224738076)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(7.62939453e-006, -5.9009819, -4.0769577e-005, -0.999992788, 1.60944605e-010, -8.94063589e-007, 1.60504526e-010, 0.999993563, -4.18958729e-010, 7.897562e-007, -4.18840851e-010, -0.999986649)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.561845124, 1, 1)

local function weldBetween(a, b, name)
    local weld = Instance.new("ManualWeld")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse() * a.CFrame
    weld.Parent = a
	weld.Name=name or 'weldb1'
	weld.Parent=m
    return weld;
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Navy blue"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
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
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
       local S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function SummonSword(Part,cframe1,cframe2)
coroutine.resume(coroutine.create(function() 
 
local sword=part(1,workspace,0,0.5,BrickColor.new("Cyan"),"Sword",vt(2,2,2))
sword.Anchored=true
--con1=sword.Touched:connect(function(hit) Damagefunc2(hit,5,1) end) 
local smesh=mesh("SpecialMesh",sword,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(3,3,3))
--smesh.Parent=nil
smesh.VertexColor=Vector3.new(0, 0, 0)
sword.CFrame=Part.CFrame*cframe1
con1=sword.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
	so("http://roblox.com/asset/?id=231917788",sword,0.5,1)
					hitconasdf = sword.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',sword,1,3)
			hitconasdf:disconnect()
		end
	end)
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Cyan")) 
for i=0,1,0.2 do
wait()
local dir = sword.CFrame.lookVector*-1
hit2,pos = rayCast(sword.Position,dir,5,Character)
if hit2~=nil then
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
--Damagefunc2(hit2,5,1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
--Damagefunc2(hit2,5,1)
end
end
sword.CFrame=sword.CFrame*cframe2
end
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Cyan")) 
sword.Parent=nil
pcall(function()
		hitconasdf:disconnect()
	end)
con1:disconnect()
end))
end


rings=Instance.new('Model',Character)

ring=function(way,way2,where,vector,rv1,rv2,rv3,c1,c2)
	local rng = Instance.new("Part", rings)
	rng.Anchored = true
	rng.BrickColor = BrickColor.new("Bright blue")
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = .5
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = where.CFrame * CFrame.Angles(math.rad(way), math.rad(way2), 0) 
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	rngm.Scale = vector--10,10,1
	for i = 1, 20, 1 do
		rngm.Scale = Vector3.new(rv1 + i*c1, rv2 + i*c2, rv3)--(10 + i*2, 10 + i*2, 1)
		rng.Transparency = i/20
		swait()
	end
	wait()
	rng:destroy''
end

player=game.Players.localPlayer
char=player.Character
Effects={}
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
m=Instance.new("Model",char)

mouse.Button1Down:connect(function()
	if equipped==true and hand==false then
		if attacktype==1 then
			attackone()
		elseif attacktype==2 then
			attacktwo()
		elseif attacktype==3 then
			attackthree()
		end
	end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			spin()
		end
	elseif k=='f' then
		if attack==false then
			boom()
		end
		elseif k=='e' then
		if attack==false then
			JumpSwing()
		end
	end
end)

function JumpSwing()
attack=true
for i=0,0.5,0.1 do
swait()
local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1)*euler(0,0,-0.8),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,-2,0)*euler(.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.2,-.1,-0.5)*euler(1,-1.8,0)*euler(.9,0,0),.3)
RH.C0=clerp(RH.C0,RHC0*cf(.2,1,.1)*euler(0,-.5,-.2),.3)
LH.C0=clerp(LH.C0,LHC0*cf(-.2,1,.1)*euler(0,.5,.2),.3)
end
Humanoid.Jump=true
bodvol=Instance.new("BodyVelocity")
bodvol.Parent=RootPart
bodvol.velocity=vt(0,1,0)*100
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
--Torso.Velocity=vt(0,1,0)*100
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=231917987",hitbox,1,1)
		hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',hitbox,1,3)
			hitconasdf:disconnect()
		end
	end)
for i=0,1,0.1 do
swait()
local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(3,-2.4,0)*euler(.1,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.2,.8,-0.5)*euler(3.1,-1.8,0)*euler(.9,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-0.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,1.3),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
con1:disconnect()
hitconasdf:disconnect()
bodvol.Parent=nil
attack=false
end

function spin()
attack=true
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.45)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.7)*euler(1.5,-1.5,0)*euler(.7,0,0),.45)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.45)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.45)
end
for i=0,1,0.15 do
so("http://roblox.com/asset/?id=231917987",hitbox,1,1)
swait()
local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
for i=0,1,0.1 do
swait()
local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(-.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.3)
RootJoint.C0=RootCF*euler(0,0,6.6*i)
end
end
con1:disconnect()
attack=false
end

function attackone()
if attack==false and attacktype==1 then
	attacktype=2
	attack=true
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		LW.C0=clerp(LW.C0,cf(-1.3,0.5,-.3)*euler(.4,0,.2)*euler(0,-.2,0),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
	end
	so("http://roblox.com/asset/?id=234365549",hitbox,1,1)
		hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',hitbox,1,3)
			hitconasdf:disconnect()
		end
	end)
	for i=0,1,0.3 do
		swait()
		local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.4)
		RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(.2,0,-.2)*euler(0,-.5,0),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
	end
	for i=0,1,0.2 do
		swait()
				local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.4)
		RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.6,0,-1)*euler(0,-.7,0),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
	end
	con1:disconnect()
	hitconasdf:disconnect()
	attack=false
end
end

function attacktwo()
	if attack==false and attacktype==2 then
	attacktype=3
	attack=true
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.2,0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.7),.4)
		RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.57,0,-1)*euler(0,1.2,0),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.8,0,-.4),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(.8,-1,.2)*euler(0,1.57,0)*euler(0,-.7,0),.4)
		LH.C0=clerp(LH.C0,cf(-.8,-1,.2)*euler(0,-1.57,0)*euler(0,-.7,0),.4)
	end
	so("http://roblox.com/asset/?id=234365573",hitbox,1,1)
			hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',hitbox,1,3)
			hitconasdf:disconnect()
		end
	end)
	for i=0,1,0.3 do
		swait()
				local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(0,0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.3,0,1)*euler(0,1.6,0),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
	end
	for i=0,1,0.2 do
		swait()
				local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(.1,0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,.8)*euler(0,1.3,0),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
	end
	attack=false
	con1:disconnect()
	hitconasdf:disconnect()
	end
end

function attackthree()
	if attack==false and attacktype==3 then
		attacktype=1
		attack=true
		con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
		for i=0,1,0.2 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.4)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.4)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1.2)*euler(0,-2,0),.4)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
			LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(.7,0,.1)*euler(0,-.4,0),.4)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.3,0),.4)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.3,0),.4)
		end
		so("http://roblox.com/asset/?id=231917871",hitbox,1,1)
					hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',hitbox,1,3)
			hitconasdf:disconnect()
		end
	    end)
		for i=0,1,0.1 do
			swait()
					local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
			Neck.C0=clerp(Neck.C0,necko*euler(.2,0,-.6),.35)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.6),.35)
			RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.2,0,-1.2)*euler(0,-1.2,0),.35)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
			LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-.4,0,-.7)*euler(0,0,0),.35)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.6,0),.35)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.6,0),.35)
		end
		attack=false
		con1:disconnect()
		hitconasdf:disconnect()
	end
end

function boom()
	attack=true
	for i=0,3,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(math.rad(0),math.rad(0),math.rad(0)),.4)
		RW.C0=clerp(RW.C0,cf(1, 1, -.5)*euler(math.rad(145),math.rad(180),math.rad(45)),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(0)),.4)
		LW.C0=clerp(LW.C0,cf(-1, 1, -.5)*euler(math.rad(145),math.rad(0),math.rad(45)),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(0)),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.4)
	end
	so("http://roblox.com/asset/?id=231917813",hitbox,1,1)
	for i=0,1,0.07 do
		swait()
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1+(0.04/2),0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)*euler(0.1,0,0),.4)
		RW.C0=clerp(RW.C0,cf(1, 1, -.5)*euler(math.rad(90),math.rad(180),math.rad(45)),.4)
		LW.C0=clerp(LW.C0,cf(-1, 1, -.5)*euler(math.rad(90),math.rad(0),math.rad(45)),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.4)
		LH.C0=clerp(LH.C0,cf(-1.1,0.4,-0.8)*euler(-0.05,-1.57,0),.4)
		for i=0,1 do
 inc=1
wait(0)
SummonSword(Torso,CFrame.fromEulerAnglesXYZ(.1,0,1)*CFrame.new(0,inc,-6),CFrame.new(0,0,-3))
inc=inc-5
end
	end
	attack=false
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
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Toothpaste")
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
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Toothpaste")
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
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
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
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[1].Mesh
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end

idleanim=.4

while true do
swait()
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if Anim~='Fly' then
		pcall(function()
	RightLeg.Transparency=0
	LeftLeg.Transparency=0
	m.fakerleg:destroy()
	m.fakelleg:destroy()
	end)
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
--[[Neck.C0=clerp(Neck.C0,necko*angles(math.rad(-10),0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*angles(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(15),0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(0,0,0.1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),0,math.rad(45)),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(15),math.rad(90),0),.3)
RH.C1=clerp(RH.C1,RHC1,.3)
LH.C0=clerp(LH.C0,cf(1,-.5,0)*angles(math.rad(15),math.rad(-90),0),.3)
LH.C1=clerp(LH.C1,LHC1,.3)]]
idleanim=.4
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5-idleanim)*euler(0.4+(idleanim/2),0,-0.4),.3)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-idleanim/2,0,0.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-25),math.rad(-35),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-idleanim)*euler(-0.2-(idleanim/2),1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5+idleanim,0)*euler(0.5+(idleanim/2),-1.2,0)*euler(-.2,0,0),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
idleanim=-1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0.4,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-35),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(35),math.rad(-45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0.5,-1.57,0)*euler(0,0,0),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.4,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-35),math.rad(-35),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-35),math.rad(35),math.rad(-45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0.5,-1.57,0)*euler(0,0,0),.3)
end
end
end
end