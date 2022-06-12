--[[ (Edit) Iris Soldier by Cit]]--

--[[
	Q = Spin
	E = Jump slice
	F = Iris Shot
	R = Irish Rush
  ]]
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
cam=game.Workspace.CurrentCamera
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
local colorscheme = {"Gold","New yeller","Really black","Daisy orange","Black"}
local hitsounds = {"199149137","199149186","199149221","199149235","199149269","199149297"}
local render = game:GetService("RunService").RenderStepped
local bltb = {}

---------------Cape Section--------------
--[[      Modified by Sol/Citrus     ]]--

local verlet = {}
verlet.step_time = 1 / 50
verlet.gravity = Vector3.new(0, -150, 0) --//

local char = game.Players.LocalPlayer.Character
local torso = char:WaitForChild("Torso")
local parts = {}
local render = game:GetService("RunService").RenderStepped

wait(2)

local point = {}
local link = {}
local rope = {}

local function ccw(A,B,C)
    return (C.y-A.y) * (B.x-A.x) > (B.y-A.y) * (C.x-A.x)
end

local function intersect(A,B,C,D)
    return ccw(A,C,D) ~= ccw(B,C,D) and ccw(A,B,C) ~= ccw(A,B,D)
end

local function vec2(v)
	return Vector2.new(v.x, v.z)
end

function point:step()
	if not self.fixed then
		local derivative = (self.position - self.last_position) * 0.95
		self.last_position = self.position
		self.position = self.position + derivative + ((verlet.gravity + (torso.CFrame.lookVector * -90)) * verlet.step_time ^ 2) --//
		--[[local torsoP = torso.CFrame * CFrame.new(-1, 0, 0.5)
		local torsoE = torso.CFrame * CFrame.new(1, 0, 0.5)
		local pointE = self.position + torso.CFrame.lookVector * 100
		local doIntersect = intersect(vec2(torsoP.p), vec2(torsoE.p), vec2(self.position), vec2(pointE))
		if not doIntersect then
			self.postition = self.position - torso.CFrame.lookVector * 10
		end]]
	end
end

function link:step()
	for i = 1, 1 do
		local distance = self.point1.position - self.point2.position
		local magnitude = distance.magnitude
		local differance = (self.length - magnitude) / magnitude
		local translation = ((self.point1.fixed or self.point2.fixed) and 1 or 0.6) * distance * differance
		if not self.point1.fixed then
			self.point1.position = self.point1.position + translation
		end
		if not self.point2.fixed then
			self.point2.position = self.point2.position - translation
		end
	end
end

function verlet.new(class, a, b, c)
	if class == "Point" then
		local new = {}
		setmetatable(new, {__index = point})
		new.class = class
		new.position = a or Vector3.new()
		new.last_position = new.position
		new.velocity = verlet.gravity
		new.fixed = false
		return new
	elseif class == "Link" then
		local new = {}
		setmetatable(new, {__index = link})
		new.class = class
		new.point1 = a
		new.point2 = b
		new.length = c or (a.position - b.position).magnitude
		return new
	elseif class == "Rope" then
		local new = {}
		setmetatable(new, {__index = link})
		new.class = class
		new.start_point = a
		new.finish_point = b
		new.points = {}
		new.links = {}
		local inc = (b - a) / 10
		for i = 0, 10 do
			table.insert(new.points, verlet.new("Point", a + (i * inc)))
		end
		for i = 2, #new.points do
			table.insert(new.links, verlet.new("Link", new.points[i - 1], new.points[i]))
		end
		return new
	end
end

local tris = {}
local triParts = {}

local function GetDiscoColor(hue)
 local section = hue % 1 * 3
 local secondary = 0.5 * math.pi * (section % 1)
 if section < 1 then
  return Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
 elseif section < 2 then
  return Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
 else
  return Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
 end
end

local function setupPart(part)
	part.Anchored = true
	part.FormFactor = 3
	part.CanCollide = false
	part.TopSurface = 10
	part.BottomSurface = 10
	part.LeftSurface = 10
	part.RightSurface = 10
	part.FrontSurface = 10
	part.BackSurface = 10
	part.Material = "Neon"
	local m = Instance.new("SpecialMesh", part)
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.2, 1, 1)
	return part
end

local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x,  right.y, top.y, back.y, right.z, top.z, back.z)
end

local function drawTri(parent, a, b, c)
	local this = {}
	local mPart1 = table.remove(triParts, 1) or setupPart(Instance.new("Part"))
	local mPart2 = table.remove(triParts, 1) or setupPart(Instance.new("Part"))
	function this:Set(a, b, c)
		local ab, bc, ca = b-a, c-b, a-c
		local abm, bcm, cam = ab.magnitude, bc.magnitude, ca.magnitude
		local edg1 = math.abs(0.5 + ca:Dot(ab)/(abm*abm))
		local edg2 = math.abs(0.5 + ab:Dot(bc)/(bcm*bcm))
		local edg3 = math.abs(0.5 + bc:Dot(ca)/(cam*cam))
		if edg1 < edg2 then
			if edg1 >= edg3 then		
				a, b, c = c, a, b
				ab, bc, ca = ca, ab, bc
				abm = cam
			end
		else
			if edg2 < edg3 then
				a, b, c = b, c, a
				ab, bc, ca = bc, ca, ab
				abm = bcm
			else
				a, b, c = c, a, b
				ab, bc, ca = ca, ab, bc
				abm = cam
			end
		end
	 
		local len1 = -ca:Dot(ab)/abm
		local len2 = abm - len1
		local width = (ca + ab.unit*len1).magnitude
	 
		local maincf = CFrameFromTopBack(a, ab:Cross(bc).unit, -ab.unit)
	 
		if len1 > 0.2 then
			mPart1.Parent = parent
			mPart1.Size = Vector3.new(0.2, width, len1)
			mPart1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
		else
			mPart1.Parent = nil
		end
		
		if len2 > 0.2 then
			mPart2.Parent = parent
			mPart2.Size = Vector3.new(0.2, width, len2)
			mPart2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
		else
			mPart2.Parent = nil
		end	
	end
	function this:SetProperty(prop, value)
		mPart1[prop] = value
		mPart2[prop] = value
	end
	this:Set(a, b, c)
	function this:Destroy()
		mPart1:Destroy()
		mPart2:Destroy()
	end
	this.p1 = mPart1
	this.p2 = mPart2
	this.p1.BrickColor = BrickColor.new(GetDiscoColor(math.noise(0.5, 0.5, this.p1.CFrame.Y * 0.5 + time())))
	this.p2.BrickColor = BrickColor.new(GetDiscoColor(math.noise(0.5, 0.5, this.p2.CFrame.Y * 0.5 + time())))
	return this
end

function verlet.draw(object, id)
	if object.class == "Point" then
		local part = parts[id]
		part.BrickColor = BrickColor.new(1, 1, 1)
		part.Transparency = 0
		part.formFactor = 3
		part.Anchored = true
		part.CanCollide = false
		part.TopSurface = 0
		part.BottomSurface = 0
		part.Size = Vector3.new(0.35, 0.35, 0.35)
		part.Material = "Neon"
		part.CFrame = CFrame.new(object.position)
		part.Parent = torso
		return part
	elseif object.class == "Link" then
		local part = parts[id]
		local dist = (object.point1.position - object.point2.position).magnitude
		part.Size = Vector3.new(0.2, 0.2, dist)
		part.CFrame = CFrame.new(object.point1.position, object.point2.position) * CFrame.new(0, 0, dist * -0.5)
		part.Parent = torso
		return part
	end
end

function verlet.clear()
	for _, v in pairs(workspace:GetChildren()) do
		if v.Name == "Part" then
			v:Destroy()
		end
	end
end

local points = {}
local links = {}

for x = 0, 2 do
	points[x] = {}
	for y = 0, 3 do
		points[x][y] = verlet.new("Point", torso.Position + Vector3.new(x * 0.8 - 2, 2 - y * 0.8, 5 + y * 0.4))
		points[x][y].fixed = y == 0
	end
end

for x = 1, 2 do
	for y = 0, 3 do
		links[#links + 1] = verlet.new("Link", points[x][y], points[x - 1][y], 1 + y * 0.08)
	end
end

for x = 0, 2 do
	for y = 1, 3 do
		links[#links + 1] = verlet.new("Link", points[x][y], points[x][y - 1], 1.2 + y * 0.03)
	end
end

render:connect(function()
	for x = 0, 2 do
		for y = 0, 3 do
			if y == 0 then
				points[x][y].position = (torso.CFrame * CFrame.new(x * 1 - 1, 1, 0.5)).p
			else
				points[x][y]:step()
			end
		end
	end
	for i = 1, #links do
		links[i]:step()
	end
	for i = 1, #tris do
		triParts[#triParts + 1] = tris[i].p1
		triParts[#triParts + 1] = tris[i].p2
	end
	tris = {}
	for x = 1, 2 do
		for y = 1, 3 do
			tris[#tris + 1] = drawTri(torso, points[x - 1][y - 1].position, points[x - 1][y].position, points[x][y - 1].position)
			tris[#tris + 1] = drawTri(torso, points[x][y].position, points[x - 1][y].position, points[x][y - 1].position)
		end
	end
end)

--<<-------------End Cape Section------------>>--

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
 

function Rainbow(hue)
 local section = hue % 1 * 3
 local secondary = 0.5 * math.pi * (section % 1)
 if section < 1 then
  return Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
 elseif section < 2 then
  return Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
 else
  return Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
 end
end


function UpdatePart(pt,clr)
	pt.BrickColor = BrickColor.new(clr)
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

ppart = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = EffectPart.Position
  NoOutline(fp)
  fp.Material = "Neon"
  fp:BreakJoints()
  return fp
end

nooutline = function(part)
  part.TopSurface = 10
end


part2 = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

local MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent)
  local prt = ppart(3, game.Workspace, 0, 1, brickcolor, "Effect", vt())
  if Type ~= 2 then
    prt.Anchored = true
  end
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh, dur)
    local wld = nil
    if dur == 2 then
      wld = weld(Part, Part, parent, euler(0, 0, 0) * cf(0, 0, 0))
    end
    for i = 0, 1, delay do
      swait()
      if dur == 1 then
        Part.CFrame = Part.CFrame
      else
        if dur == 2 then
          wld.C0 = cframe
        end
      end
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, Type)
end

ChargeBall = function(parent, t)
  local counter = 0
  local size = 1
  for i = 0, t do
    swait()
    counter = counter + 1
    if (counter) % 10 == 0 then 
      if size == 3 then
        MagicRing(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))), parent.CFrame, 0.5, 0.5, 0.5, 1, 1, 1, 0.1, 3, parent)
      else
        if size == 2 then
          MagicRing(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))), parent.CFrame, 0.5, 0.5, 0.5, 1, 1, 1, 0.1, 3, parent)
        end
      end
    end
    if (counter) % 5 == 0 then
      if size == 1 then
        MagicBlock(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))), parent.CFrame, 0.5, 0.5, 0.5, 1, 1, 1, 0.1, 3, parent)
      else
        if size == 2 then
          MagicBlock(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))), parent.CFrame, 0.5, 0.5, 0.5, 1, 1, 1, 0.1, 3, parent)
        else
          if size == 3 then
            MagicBlock(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))), parent.CFrame, 0.5, 0.5, 0.5, 1, 1, 1, 0.1, 3, parent)
          end
        end
      end
    end
  end
end


MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = ppart(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
end

MagicWaveThing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = ppart(3, game.Workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=1051557", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      swait()
      Part.CFrame = Part.CFrame * euler(0, 0.7, 0)
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = ppart(3, game.Workspace, 0, 1, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      wait()
      Part.CFrame = Part.CFrame * euler(math.rad(-50, 50), math.rad(-50, 50), math.rad(-50, 50))
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = ppart(3, game.Workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(0.1, 0.1, 0.1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 2, delay do
      wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = ppart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Blast = function(parent)
  MagicBlock(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))), parent.CFrame, 4, 4, 4, 0.2, 0.2, 0.2, 0.01)
  MagicWaveThing(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))), parent.CFrame, 4, 4, 4, 0.2, 0.2, 0.2, 0.01)
end

computeDirection = function(vec)
  local lenSquared = vec.magnitude * vec.magnitude
  local invSqrt = 1 / math.sqrt(lenSquared)
  return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end

MagniDamage = function(Part, dis, mind, maxd, force, knock)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= dis and c.Name ~= Character.Name then
          Damagefunc2(Part, hum.Parent.Torso, mind, maxd, force, knock, RootPart, 0.2, 1)
        end
      end
    end
  end
end



function ShowDamage2(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part2("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

Damagefunc2=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
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
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
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
                ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
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
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
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
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end
--<----------------------------------S w o r d  C r e a t i o n---------------------------------->--

	user=game:service'Players'.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	m=Instance.new('Model',char)
	iris = m
	game:service'Lighting'.Outlines=false
	
	
local Handle  = Instance.new("Part", m)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Transparency = 0			Handle.Material = "SmoothPlastic"
			Handle.Name = 'Handle'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Really black")
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
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part1'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
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
				
				table.insert(bltb, Part)				
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part2'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.Material = "Neon"
			Part.Transparency = 0.5			Part.Name = 'Part3'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 4.62046242, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.24249268e-005, -3.32155609, -4.76837158e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 1, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part4'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0, -0.123583317, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part5'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.230328798, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part6'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.618034363, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part7'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.618049622, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part8'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0, 0.117978811, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part9'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.53044498, -0.842823029, 0.0229825974, 0.258815438, -1.97460321e-017, -0.965912819, 3.30120669e-017, 1, -1.15873321e-017, 0.965912819, -2.88872116e-017, 0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part10'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.525370121, -0.842823029, 0.0256881714, 0.258815676, -6.64073831e-019, 0.9659127, 1.05359266e-018, 1, 4.06573049e-019, -0.9659127, 9.14795583e-019, 0.258815676)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part11'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 0.174170732, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part12'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.59340477, -0.842823029, 0.00790405273, -0.258815557, 0, -0.9659127, 0, 1, 0, 0.9659127, 0, -0.258815557)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part13'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.382054657)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.00023651123, -0.842823029, -0.364931583, 0.99998641, -2.62516024e-017, -1.67287184e-026, 2.62512451e-017, 1, 3.6862117e-018, 1.67287184e-026, -3.68626216e-018, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part14'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.598263144, -0.842823029, 0.00432395935, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part15'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.398794174, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part16'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, 0.174145699, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0.5			Part.Name = 'Part17'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
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
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
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
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part18'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.230348349, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part19'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local hitbox  = Instance.new("Part", m)
			hitbox:BreakJoints()
			hitbox.TopSurface = "Smooth"
			hitbox.Material = "SmoothPlastic"
			hitbox.Transparency = 1			hitbox.Name = 'hitbox'
			hitbox.BottomSurface = "Smooth"
			hitbox.FormFactor = "Custom" hitbox.CanCollide = false
			hitbox.BrickColor = BrickColor.new("Really black")
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
			Wedge.BrickColor = BrickColor.new("Really black")
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



EffectPart2 = part2(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Institutional white", "EffectPart2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
EffectPart2weld = weld(m, Character["Left Arm"], EffectPart2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.15575993, 0.00814216491, -0.0231294632, -5.23798153e-005, 0.999999821, -0.000210702419, -6.36925748e-008, -0.00021070239, -0.99999994, -1, -5.23797935e-005, 7.47295417e-008))
EffectPart = part2(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Institutional white", "EffectPart", Vector3.new(0.200000003, 0.200000003, 0.200000003))
EffectPartweld = weld(m, Handle, EffectPart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00693154335, 0.014090538, 6.03910685, -5.23798153e-005, -6.36925748e-008, -1, 0.99999994, -0.000210702419, -5.23798008e-005, -0.000210702419, -0.99999994, 7.47295417e-008))
mesh("BlockMesh", EffectPart, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	


coroutine.resume(coroutine.create(function()
while wait() do 
	for i,v in pairs(bltb) do
			if v:IsA("Part") or v:IsA("WedgePart") then
					UpdatePart(v,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
				
			end
		end
end
end)) --work

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

Mesh2 = function(par,num,x,y,z)
    local msh = _
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Torso"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end 
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

Weld2 = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end


--------------------[[ Outfit Begin ]]--------------------


for _,v in pairs(Character:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end
local hat = part(3,Character,0,0,BrickColor.new("Really black"),"Hood",vt(0.5,1,1.02))
Mesh2(hat,'http://www.roblox.com/asset/?id=16952952',1.05,1.05,1.05) --hood
Weld2(Character.Head,hat,0,-.25,0,0,0,0,hat)

Coat = Instance.new("Part",Character)
Coat.TopSurface = "Smooth"
Coat.BottomSurface = "Smooth"
Coat.Material = "Neon"
Coat.Size = Vector3.new(1.05, 1.05, 1.05)
Coat.CanCollide = false
Coat.Transparency = 0
Coat.BrickColor = BrickColor.new("Institutional white")
CoatMesh = Instance.new("SpecialMesh", Coat)
CoatMesh.MeshType = "Brick"
CoatMesh.Scale = Vector3.new(2,1.8,1.1)
CoatWeld = Instance.new("Weld",Character)
CoatWeld.Part0 = Character.Torso
CoatWeld.Part1 = Coat
CoatWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatRA = Instance.new("Part",Character)
CoatRA.TopSurface = "Smooth"
CoatRA.BottomSurface = "Smooth"
CoatRA.Size = Vector3.new(1, 1, 1)
CoatRA.CanCollide = false
CoatRA.Transparency = 0
CoatRA.Material = "Neon"
CoatRA.BrickColor = BrickColor.new("Institutional white")
CoatRAMesh = Instance.new("SpecialMesh", CoatRA)
CoatRAMesh.MeshType = "Brick"
CoatRAMesh.Scale = Vector3.new(1.1,1.8,1.1)
CoatRAWeld = Instance.new("Weld",Character)
CoatRAWeld.Part0 = Character["Right Arm"]
CoatRAWeld.Part1 = CoatRA
CoatRAWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatLA = Instance.new("Part",Character)
CoatLA.TopSurface = "Smooth"
CoatLA.BottomSurface = "Smooth"
CoatLA.Size = Vector3.new(1, 1, 1)
CoatLA.CanCollide = false
CoatLA.Transparency = 0
CoatLA.Material = "Neon"
CoatLA.BrickColor = BrickColor.new("Institutional white")
CoatLAMesh = Instance.new("SpecialMesh", CoatLA)
CoatLAMesh.MeshType = "Brick"
CoatLAMesh.Scale = Vector3.new(1.1,1.8,1.1)
CoatLAWeld = Instance.new("Weld",Character)
CoatLAWeld.Part0 = Character["Left Arm"]
CoatLAWeld.Part1 = CoatLA
CoatLAWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatRL = Instance.new("Part",Character)
CoatRL.TopSurface = "Smooth"
CoatRL.BottomSurface = "Smooth"
CoatRL.Size = Vector3.new(1, 1, 1)
CoatRL.CanCollide = false
CoatRL.Transparency = 0
CoatRL.Material = "Neon"
CoatRL.BrickColor = BrickColor.new("Institutional white")
CoatRLMesh = Instance.new("SpecialMesh", CoatRL)
CoatRLMesh.MeshType = "Brick"
CoatRLMesh.Scale = Vector3.new(1.1,0.5,1.1)
CoatRLWeld = Instance.new("Weld",Character)
CoatRLWeld.Part0 = Character["Right Leg"]
CoatRLWeld.Part1 = CoatRL
CoatRLWeld.C1 = CFrame.new(0, -0.7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatLL = Instance.new("Part",Character)
CoatLL.TopSurface = "Smooth"
CoatLL.BottomSurface = "Smooth"
CoatLL.Size = Vector3.new(1, 1, 1)
CoatLL.CanCollide = false
CoatLL.Transparency = 0
CoatLL.Material = "Neon"
CoatLL.BrickColor = BrickColor.new("Institutional white")
CoatLLMesh = Instance.new("SpecialMesh", CoatLL)
CoatLLMesh.MeshType = "Brick"
CoatLLMesh.Scale = Vector3.new(1.1,0.5,1.1)
CoatLLWeld = Instance.new("Weld",Character)
CoatLLWeld.Part0 = Character["Left Leg"]
CoatLLWeld.Part1 = CoatLL
CoatLLWeld.C1 = CFrame.new(0, -0.7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatRightDesign = Instance.new("Part",Character)
CoatRightDesign.TopSurface = "Smooth"
CoatRightDesign.BottomSurface = "Smooth"
CoatRightDesign.Size = Vector3.new(1, 1, 1)
CoatRightDesign.CanCollide = false
CoatRightDesign.Material = "Neon"
CoatRightDesign.Transparency = 0
CoatRightDesign.BrickColor = BrickColor.new("Institutional white")
CoatRightDesignMesh = Instance.new("SpecialMesh", CoatRightDesign)
CoatRightDesignMesh.MeshType = "Wedge"
CoatRightDesignMesh.Scale = Vector3.new(1.1,0.8,1.1)
CoatRightDesignWeld = Instance.new("Weld",Character)
CoatRightDesignWeld.Part0 = Character["Right Leg"]
CoatRightDesignWeld.Part1 = CoatRightDesign
CoatRightDesignWeld.C1 = CFrame.new(0, 0.1, 0)*CFrame.fromEulerAnglesXYZ(1.6, -1.6, 0)

CoatLeftDesign = Instance.new("Part",Character)
CoatLeftDesign.TopSurface = "Smooth"
CoatLeftDesign.BottomSurface = "Smooth"
CoatLeftDesign.Size = Vector3.new(1, 1, 1)
CoatLeftDesign.CanCollide = false
CoatLeftDesign.Material = "Neon"
CoatLeftDesign.Transparency = 0
CoatLeftDesign.BrickColor = BrickColor.new("Institutional white")
CoatLeftDesignMesh = Instance.new("SpecialMesh", CoatLeftDesign)
CoatLeftDesignMesh.MeshType = "Wedge"
CoatLeftDesignMesh.Scale = Vector3.new(1.1,0.8,1.1)
CoatLeftDesignWeld = Instance.new("Weld",Character)
CoatLeftDesignWeld.Part0 = Character["Left Leg"]
CoatLeftDesignWeld.Part1 = CoatLeftDesign
CoatLeftDesignWeld.C1 = CFrame.new(0, 0.1, 0)*CFrame.fromEulerAnglesXYZ(1.6, 1.6, 0)
nooutline(CoatLeftDesign)

coroutine.resume(coroutine.create(function()
while wait() do 
	
UpdatePart(hat,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(Coat,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatRA,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatLA,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatLL,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatRL,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatRightDesign,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatLeftDesign,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))

end
end)) 

--------------------[[ Outfit End ]]--------------------


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
                --showDamage(hit.Parent,Damage,.5,BrickColor.new("Navy blue"))
				ShowDamage2((hit.Parent:FindFirstChild("Head").CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Institutional white").Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage2((hit.Parent:FindFirstChild("Head").CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Institutional white").Color)
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
				local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
				local rndm=math.random(1,#hitsounds)
				local r=rndm
				so("http://www.roblox.com/asset/?id="..hitsounds[r],Part,1,1)
                swait(5)
				so("http://www.roblox.com/asset/?id="..hitsounds[r],Part,1,1)
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
char.Humanoid.WalkSpeed = 25

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
			IrisShot()
			ChargeBall(efprt, 100)
		end
		elseif k=='e' then
		if attack==false then
			JumpSwing()
		end
			elseif k=='r' then
			if attack==false then
					IrisRush()
		end
	end
end)

function JumpSwing()
attack=true
for i=0,0.5,0.1 do
swait()
--[[local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]] --NOU!!
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
			so("http://www.roblox.com/asset/?id="..hitsounds[math.random(1,#hitsounds)],hitbox,1,1)
			hitconasdf:disconnect()
		end
	end)
for i=0,1,0.1 do
swait()
--[[local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
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
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) so("http://www.roblox.com/asset/?id="..hitsounds[math.random(1,#hitsounds)],hitbox,1,1) end) 
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
--[[local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
for i=0,1,0.1 do
swait()
--[[local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(-.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.3)
RootJoint.C0=RootCF*euler(0,0,6.6*i)
end
end
con1:disconnect()
attack=false
end


function IrisRush()
attack = true
n=2
so("http://www.roblox.com/asset/?id=199145433",hitbox,1,1.1)
so("http://roblox.com/asset/?id=199145659", Head, 1, 2) 
coroutine.resume(coroutine.create(function()
	
	for i = 0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(-5),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.5, 0.8, 0.2) * angles(math.rad(5), math.rad(-15), math.rad(112)), 0.3)
LW.C0=clerp(LW.C0,cf(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1.1,-1,0)*angles(math.rad(-5),math.rad(120),math.rad(-8)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(5),math.rad(-60),math.rad(0)),.3)
end

local v=it("BodyVelocity",Torso)
v.maxForce=Vector3.new(4e+005,4e+005,4e+005)*1
v.velocity=RootPart.CFrame.lookVector*100
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(5),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(60), math.rad(100)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-15)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
v.Parent=nil
scfr=nil	
	
end))

for i=1,3 do
	
local orb=part(3,Character,0,1,BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))),"Orb",vt())

local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(10,10,10))
local owld=weld(orb,orb,Torso,cf(0,10,0))
MagicCircle(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))),orb.CFrame,10,10,10,1,1,1,0.1)
--[[formerso]]
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
	local ceef1=math.random(-50,50)
	local ceef2=math.random(-2,8)
	local ceef3=math.random(100,200)/100
	local n=2
		for i=0,1,0.1 do
			wait()
			Part.Transparency=Part.Transparency-0.07
			owld.C0=cf(ceef2*i*n,-5,0)*euler(ceef3*i*n,ceef1,0)
			n=n-0.1
		end
	wait(0)
	Part.Parent=nil
	local spread=vt((math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16)*(Part.Position-(Part.Position+vt(0,-1,0))).magnitude/100
	local TheHit=Part.Position+vt(0,-1,0)
	local MouseLook=cf((Part.Position+TheHit)/2,TheHit+spread)
	local hit,pos = rayCast(Part.Position,MouseLook.lookVector,999,Character)
	local mag=(Part.Position-pos).magnitude 
	MagicCylinder(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))),CFrame.new((Part.Position+pos)/2,pos)*angles(1.57,0,0) ,1,mag*5,1,0.5,0,0.5,0.05)
	MagicBlock(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))),Part.CFrame,8,8,8,0.5,0.5,0.5,0.1)
	MagicBlock(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))),cf(pos),15,15,15,6,6,6,0.1)
	MagicRing(BrickColor.new(Rainbow(math.noise(0.5, 0.5, 0.5 + time()))),cf(pos)*euler(1.57,math.random(-100,100)/100,math.random(-100,100)/100),1,1,1,2,2,2,0.05)
	local ref=part(3,workspace,0,1,BrickColor.new("Pastel light blue"),"Effect",vt())
	ref.CFrame=cf(pos)
	so("http://roblox.com/asset/?id=166221646",ref,1,1) 
  	so("http://roblox.com/asset/?id=200632875", ref, 1, 1)
  	so("http://roblox.com/asset/?id=263610131", ref, 1, 1)
  	so("http://roblox.com/asset/?id=263610111", Torso, 1, 1)


		coroutine.resume(coroutine.create(function(Part) 
			wait(0.2)
			Part.Parent=nil
			end),ref)
			MagniDamage(ref,20,10,30,10,"Knockdown",ref)
				if hit~=nil then
					Damagefunc(hit,20,40,1,"Knockdown",RootPart,0)
				end
end),orb,omsh,owld)
wait(0.2)
end
n=2
for i=0,1,0.1 do
wait()
n=n-0.1
end
attack=false
end




function attackone()
if attack==false and attacktype==1 then
	attacktype=2
	attack=true
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
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
	so("http://roblox.com/asset/?id=199145841",hitbox,1,1)
		hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so("http://www.roblox.com/asset/?id="..hitsounds[math.random(1,#hitsounds)],hitbox,1,1)
			hitconasdf:disconnect()
		end
	end)
	for i=0,1,0.3 do
		swait()
--[[		local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]--NOU!!
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
	--[[local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]] --NOU!!
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
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
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
	so("http://roblox.com/asset/?id=199145887",hitbox,1,1)
			hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so("http://www.roblox.com/asset/?id="..hitsounds[math.random(1,#hitsounds)],hitbox,1,1)
			hitconasdf:disconnect()
		end
	end)
	for i=0,1,0.3 do
		swait()
		--[[		local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
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
		--[[		local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
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
		con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
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
		so("http://roblox.com/asset/?id=199145913",hitbox,1,1)
					hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so("http://www.roblox.com/asset/?id="..hitsounds[math.random(1,#hitsounds)],hitbox,1,1)
			hitconasdf:disconnect()
		end
	    end)
		for i=0,1,0.1 do
			swait()
		--[[			local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
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



function IrisShot()
attack=true
for i=0,1,.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(18), math.rad(-15), math.rad(15)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-75), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-3),math.rad(65),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1.1,-1,0)*angles(math.rad(-25),math.rad(-110),math.rad(0))*angles(math.rad(-25),math.rad(0),math.rad(0)),.3)
end
so("http://www.roblox.com/asset/?id=401604539",EffectPart2,1.5,1.5)
efprt=part2(Enum.FormFactor.Custom,game.Workspace,Enum.Material.Neon,0,0,"White","BallEffect",Vector3.new(2, 2, 2))
weld(m,Character["Left Arm"],efprt,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.15575993, 0.00814216491, -0.0231294632, -5.23798153e-005, 0.999999821, -0.000210702419, -6.36925748e-008, -0.00021070239, -0.99999994, -1, -5.23797935e-005, 7.47295417e-008))
mesh("SpecialMesh",efprt,"Sphere","",vt(0,0,0),vt(1,1,1))
ChargeBall(EffectPart2,35)
for i=0,1,.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-18), math.rad(15), math.rad(15)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(-65)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(110),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1.1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0)),.3)
end
so("http://www.roblox.com/asset/?id=199145534",EffectPart2,1,1.2)
efprt:BreakJoints()
local Target=mouse.Hit.p
local direction = Target - Handle.Position
direction = computeDirection(direction)
local pos = Handle.Position + (direction * 10.0)		
efprt.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles(math.pi/2, 0, 0)
local floatForce = Instance.new("BodyForce")
floatForce.force = Vector3.new(0, efprt:GetMass() * 196.1, 0.0)
floatForce.Parent = efprt
efprt.Velocity = direction * 160
efprt.Touched:connect(function(hit) 
if not hit:IsDescendantOf(Character) then
if hit.Name~="Effect" then
MagniDamage(efprt,15,15,25,math.random(5,10),"Knockdown",RootPart)
floatForce.Parent=nil
efprt.Anchored=true
so("http://www.roblox.com/asset/?id=228343330",hit,1,.8)
Blast(efprt)
efprt:Destroy()
end
end
end)
game:GetService("Debris"):AddItem(efprt,6)
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
w1.Material = "Neon"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Cyan")
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
w2.Material = "Neon"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Cyan")
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

