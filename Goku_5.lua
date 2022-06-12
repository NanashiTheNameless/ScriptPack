wait(2)
local darius = true
local grab8 = false
local throw1 = 5
local throw2 = 5
local grabon3 = false
local grabon4 = false
local jkl = 1
local throw = 5
local grab1 = false
local goo1 = 0
local punching = false
local jk = false

local grabon3 = false
local grabon2 = false
local grabon1 = false
local goo = 0
local grabon = false
local on = false
local poon = false
local clickon = false
local beamknockback = 0
local beamdamage = 0.001
local hited1 = false
local hited = false
local kamesize = 1
local kamehameha  = false
local walksound = "rbxassetid://908473722"
local aj1 = 1
local can = 5
local go = true
local bomb = false
local point = false
local walkon = false
local nohit = 0
local moving = false
local combodamage = 1
local ssj22 = false
local fly = false
local ssbkaiox10 = false
local ssbkaio = false
local auracan3 = true
local ssbon = false
local base = true
local new=Instance.new
local rad=math.rad
local cf=CFrame.new
local v3=Vector3.new
local hitmeter = 0
ssj33 = false
local ang=function(x,y,z)
return CFrame.Angles(rad(x),rad(y),rad(z))
end
local player=game:service'Players'.LocalPlayer
local char=player.Character
local cam=workspace.Camera
local mouse=player:GetMouse()
local weld=function(a,b,c0,c1)
m=Instance.new('Motor',a)
m.Part0=a
m.Part1=b
m.C0=c0
m.C1=c1
return m
end


beamm=Instance.new('Model',workspace)
beamm.Name='beam'

laser=false

rs=Instance.new('Part',char)
rs.Transparency=1
rs.CanCollide=false
rs.TopSurface,rs.BottomSurface=0,0
rs.FormFactor=3
rs.Size=Vector3.new(.5,.5,.5)

ls=rs:Clone()
ls.Parent=char



s1=Instance.new('Sound',char)
s1.Volume=1
s1.Pitch=1
s1.Looped=true


particles={}

local wep=new('Part',char)

wep.FormFactor=3
wep.Transparency = 1
wep.CanCollide=false
wep.Size=v3(0.1,0.1,0.1)
wep.TopSurface,wep.BottomSurface=0,0
local wepw=weld(wep,char['Torso'],cf(0,2,0),ang(95,0,0))


local beam1=wep:Clone()
beam1:ClearAllChildren()
beam1.Material='Neon'
beam1.BrickColor=BrickColor.new('Bright blue')
beam1.Size=Vector3.new(1,1,1)
beam1.Transparency=0
beam1.Anchored=true
local ms=Instance.new('BlockMesh',beam1)
local inner1=beam1:Clone()
inner1.Transparency=1
inner1.Material='SmoothPlastic'
inner1.BrickColor=BrickColor.new('Bright blue')
local ms2=inner1.Mesh

local expl1=inner1:Clone()
expl1.Mesh:Destroy()
expl1.Material='Neon'
expl1.BrickColor=BrickColor.new('Bright blue')
expl1.Size=Vector3.new(5,5,5)
expl1.Transparency=0
pl=Instance.new('PointLight',expl1)
pl.Color=expl1.BrickColor.Color
pl.Range=pl.Range*2
pl.Name='light'
local br=pl.Range

local exa1=expl1:Clone()
exa1.Size=Vector3.new(10,10,10)
pl2=exa1.light

local part=exa1:Clone()
part.Size=Vector3.new(1.5,1.5,1.5)
pl3=part.light
pms=Instance.new('BlockMesh',part)

char.Humanoid.Died:connect(function()
laser=false
beam1.Parent=nil
inner1.Parent=nil
expl1.Parent=nil
exa1.Parent=nil
s1:stop()
end)



parti=0
game:service'RunService'.Stepped:connect(function()
parti=parti+1
for i,v in pairs(particles) do
v.CFrame=v.CFrame*CFrame.new(0,0,-.3)
v.Transparency=v.Transparency+.08
if v.Transparency >= 1 then
v:Destroy()
table.remove(particles,i)
else
v.Parent=beamm
end
end

a=cam.CoordinateFrame.p
b=mouse.Hit.p
mhitr=Ray.new(a,(b-a).unit*999)
mhit,ps=workspace:FindPartOnRayWithIgnoreList(mhitr,{char,beamm})


if laser then
beamm.Parent=workspace
beam1.Parent=beamm
inner1.Parent=beamm
expl1.Parent=beamm
exa1.Parent=beamm
s1.Volume=s1.Volume-0.0034

ray=Ray.new((wep.CFrame*cf(0,-1.5,0)).p,((wep.CFrame*cf(0,-10,0)).p-(wep.CFrame*cf(0,-1.5,0)).p).unit*999)
hit,pos=workspace:FindPartOnRayWithIgnoreList(ray,{char,beamm})

if hit and s1.Volume > .3 and parti/8==math.floor(parti/8) and hit ~= workspace.Base then
	if hit.Parent:IsA("Model") and hit ~= hit.Parent:FindFirstChild("Humanoid") and hit ~= hit.Parent:FindFirstChild("Torso") and hit ~= hit.Parent:FindFirstChild("Head") and hit ~= hit.Parent:FindFirstChild("Left Arm") and hit ~= hit.Parent:FindFirstChild("Right Arm") and hit ~= hit.Parent:FindFirstChild("Left Leg") and hit ~= hit.Parent:FindFirstChild("Right Leg")  then
		hit.Parent:BreakJoints()
		hit.Anchored = false
		wait()
	
		hit.Position = hit.Position + Vector3.new(0,1,0)
		block = Instance.new("BodyForce",hit)
block.Force = beam1.CFrame.lookVector 
s1.Volume=s1.Volume+0.0034
	end
	if hit:IsA("Part") and hit ~= hit.Parent:FindFirstChild("Humanoid") and hit ~= hit.Parent:FindFirstChild("Torso") and hit ~= hit.Parent:FindFirstChild("Head") and hit ~= hit.Parent:FindFirstChild("Left Arm") and hit ~= hit.Parent:FindFirstChild("Right Arm") and hit ~= hit.Parent:FindFirstChild("Left Leg") and hit ~= hit.Parent:FindFirstChild("Left Arm")  then
		
		hit.Anchored = false
		wait()
	
		hit.Position = hit.Position + Vector3.new(0,1,0)
		block = Instance.new("BodyForce",hit)
block.Force = beam1.CFrame.lookVector 
s1.Volume=s1.Volume+0.0034
end
end
if hit and hit.Parent:FindFirstChild("Humanoid") ~= nil then
	if hited == true then
	hited = false
	hited1 = true
	on = true
	human = hit.Parent:FindFirstChild("Humanoid")
ts = hit.Parent:FindFirstChild("Torso")
s1.Volume=s1.Volume+0.0034
welld = Instance.new("Weld",hit)
welld.Part0 = beam1
welld.Part1 = ts
welld.C0 = CFrame.new(beam1.Position.x,beam1.Position.y,ts.Position.z)
part6 = Instance.new("Part",hit)
part6.Size = Vector3.new(1,1,1)
part6.Transparency = 0
part6.Position = hit.Position
part6.BrickColor = BrickColor.new("Toothpaste")
partmesh = Instance.new("SpecialMesh",part6)
partmesh.MeshType = "Sphere"
partmesh.Scale = Vector3.new(1,1,1)
partweld1 = Instance.new("Weld",hit)
partweld1.Part0 = hit.Parent:FindFirstChild("Torso")
partweld1.Part1 = part6
partweld1.C0 = CFrame.new(0,0,0)
if human.Health > 100 then
		human.MaxHealth = 100
		human.Health = 100
		
	end




for i = 1,100 do
	wait()
	partmesh.Scale = partmesh.Scale + Vector3.new(7,7,7)
	part6.Transparency = part6.Transparency + 0.05
end
end
end
if hit and hit.Parent==workspace.Terrain or hit==workspace.Terrain and parti/8==math.floor(parti/8) then
e=Instance.new('Explosion',workspace)
e.Position=pos
e.BlastRadius=14
e.BlastPressure=1e4
end
if hit and not hit.Anchored and not (hit:GetMass()>1e4) then
hit.Velocity=hit.Velocity+beam1.CFrame.lookVector*(1*s1.Volume*hit:GetMass())
end

if parti==math.floor(parti) then
par=part:Clone()
table.insert(particles,par)
par.Parent=beamm
par.Transparency=1-s1.Volume
par.light.Range=br*s1.Volume
par.CFrame=cf(pos)*ang(math.random(-180,180),math.random(-180,180),math.random(-180,180))*cf(10,10,10)
end

mag=((wep.CFrame*cf(0,-1.5,0)).p-pos).magnitude
ms.Scale=v3(s1.Volume,s1.Volume,mag)
ms2.Scale=v3(ms.Scale.x/2,ms.Scale.y/2,mag-(.1/mag))
beam1.CFrame=cf((wep.CFrame*cf(0,-1.5,0)).p,pos)*cf(0,0,-mag/2)*ang(0,0,math.random(0,180))
inner1.CFrame=beam1.CFrame
pl.Range=br*s1.Volume
pl2.Range=br*s1.Volume
expl1.Size=v3(6,6,6)*s1.Volume
expl1.Transparency=0
expl1.CFrame=cf(pos)*ang(math.random(0,180),math.random(0,180),math.random(0,180))
exa1.Size=v3(5,5,5)*s1.Volume
exa1.CFrame=wep.CFrame*cf(0,-1.5,0)*ang(math.random(0,180),math.random(0,180),math.random(0,180))

end
end)
local p = game.Players.LocalPlayer
local ssj = true
local ssb = true

local auracan = false
local auracan1 = false
local ssj2 = false
local ssj3 = false
local ssjg = false
local ssjb = false
local kaio = true
local idle = true
local idle1 = true
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
hed.face:Destroy()
local hum = char.Humanoid
hum.Name = "idk"
hum.JumpPower = 100

wait()
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local walk = true
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local canattack = true
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
function lerp(a, b, t) -- Linear interpolation
        return a + (b - a)*t
end

function slerp(a, b, t) --Spherical interpolation
        dot = a:Dot(b)
        if dot > 0.99999 or dot < -0.99999 then
                return t <= 0.5 and a or b
        else
                r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end
function matrixInterpolate(a, b, t)
        local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
        local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
        local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
        local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
        local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
        local t = v1:Dot(v2)
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
                return CFrame.new()
        end
        return CFrame.new(
        v0.x, v0.y, v0.z,
        v1.x, v1.y, v1.z,
        v2.x, v2.y, v2.z,
        v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
hum.MaxHealth = math.huge
wait()
hum.Health = math.huge
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
local block = Instance.new("Part",torso)
block.Size = Vector3.new(0.1,0.1,0.1)
block.Position = block.Position + Vector3.new(2,2,2)
block.Transparency = 1
local weld = Instance.new("Weld",torso)
weld.Part0 = torso
weld.Part1 = block
weld.C0 = CFrame.new(0,5,0)
local block2 = Instance.new("Part",torso)
block2.Size = Vector3.new(3,2,1)
block2.CanCollide = false
block2.Position = block.Position + Vector3.new(2,2,2)
block2.Transparency = 1
local weld2 = Instance.new("Weld",torso)
weld2.Part0 = torso
weld2.Part1 = block2
weld2.C0 = CFrame.new(0,-1.5,0)
local part2 = Instance.new("ParticleEmitter",block)
part2.Lifetime = NumberRange.new(5)
part2.Speed = NumberRange.new(0)
part2.Size = NumberSequence.new(11)
part2.Transparency = NumberSequence.new(1)
part2.LockedToPart = true
part2.Rate = 3
part2.Texture = "http://www.roblox.com/asset/?id=894173257"
part2.ZOffset = -3
local model = Instance.new("Model",torso)
local part3 = Instance.new("ParticleEmitter",block2)
part3.Lifetime = NumberRange.new(1)
part3.Speed = NumberRange.new(5)
part3.Transparency = NumberSequence.new(1)
part3.Size = NumberSequence.new(0.5)
part3.LockedToPart = true
part3.Rate = 40
part3.Texture = "http://www.roblox.com/asset/?id=549349471"
part3.ZOffset = 3
part3.SpreadAngle = Vector2.new(50,50)
ypcall(function()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=393374766"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=237836991"
end)
for i,v in pairs(char:children()) do
    if v:IsA("Accessory") then
        v:Destroy()
    end
end
char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
Hair99 = Instance.new("Part")

Hair99.Parent = p.Character
Hair99.Name = "Hair"
Hair99.formFactor = "Symmetric"
Hair99.Size = Vector3.new(1, 1, 1)
Hair99.CFrame = p.Character.Head.CFrame
Hair99:BreakJoints()
Hair99.CanCollide = false
Hair99.TopSurface = "Smooth"
Hair99.BottomSurface = "Smooth"
Hair99.BrickColor = BrickColor.new("New Yeller")
Hair99.Transparency = 1

Weld = Instance.new("Weld") 
Weld.Part0 = p.Character.Head 
Weld.Part1 = Hair99
Weld.Parent = p.Character.Head 
Weld.C0 = CFrame.new(0, 0.26, 0.06)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

Hair7 = Instance.new("Part")
Hair7.Parent = p.Character
Hair7.Name = "Hair"
Hair7.CanCollide = false
Hair7.Locked = true
Hair7.TopSurface = "Smooth"
Hair7.BottomSurface = "Smooth"
Hair7.formFactor = "Symmetric"
Hair7.Material = "Neon"
Hair7.BrickColor = BrickColor.new("Black")
Hair7.CFrame = p.Character.Torso.CFrame
Hair7.Size = Vector3.new(1, 1, 1)
Hair7.Transparency = 0

Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair99
Mesh.MeshType = "Sphere"
Mesh.Offset = Vector3.new(0, 0.1, 0.1)
Mesh.Scale = Vector3.new(1.2, 1.2, 1.2)


Weld1 = Instance.new("Weld")
Weld1.Parent = p.Character.Head
Weld1.Part0 = p.Character.Head
Weld1.Part1 = Hair7
Weld1.C0 = CFrame.new(0, 1, 0)

Mesh = Instance.new("SpecialMesh")
Mesh.Offset = Vector3.new(0.2, -0.2, 0.2)
Mesh.Parent = Hair7
Mesh.Scale = Vector3.new(1, 1, 1)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=476757756"
Mesh.TextureId = ""

-----------------------------------------------------


GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(3 + i*3.2, 3 + i*3.2, 3)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
GroundWave2 = function()
	local HandCF = CFrame.new(spirit1.Position + Vector3.new(0,11,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	
		local wave = Instance.new("Part", spirit1)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(8 + i*8.2, 3 + i*8.2, 8)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
--combat
local grab = false
function misssound()
	z = Instance.new("Sound",char)
z.Volume = 4
z.Looped = false
z.SoundId = "rbxassetid://137579113"
z:Play()
end
function strongsound()
	z = Instance.new("Sound",char)
z.Volume = 4
z.Looped = false
z.SoundId = "rbxassetid://896242278"
z:Play()
end
function punches()
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-15)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 0.4)
end
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.2)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 0.4)
end
end
function fastpunches()
	
wait(0.01)
	misssound()	
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-15)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)

wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)
wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-15)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)

wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)
wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-15)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)

wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)
wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-15)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)

wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)
wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-15)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)

wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)
wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-15)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)

wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)
wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-15)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)

wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)
wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-15)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)

wait(0.01)
		misssound()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 1)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 1)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 1)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(15)), 1)

end
function kick()
for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(75),math.rad(0)), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), 0.2)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(40)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-40)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-70)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)
end

end
function strongpunchanim()
	strongsound()
for i = 1, 15 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(0)), 0.2)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,.8)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-20)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.8, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-10)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(10)), 0.4)
end

for i = 1, 15 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10), math.rad(70), math.rad(0)), 0.2)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-20)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.8, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, 0) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(10)), 0.4)
end

end


function gramanim()
for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-90)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--rleg
end
for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-0.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-0.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--rleg
end
end





mouse.KeyDown:connect(function(key)
	 if key == "c" then
		if ssj == true then
		if canattack == true then
				combodamage = 3
			aura.Color = ColorSequence.new(Color3.new(255,255,0))
			idle = false
			base = false
			idle1 = false
			canattack = false
			ssj = false
			wait(0.1)
			

for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8,0.6,-0.6)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(-90)), 0.5)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.8,0.6,-.6)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.5)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)--leg
end

				z1 = Instance.new("Sound",char)
z1.Volume = 10
z1.Looped = false
z1.SoundId = "rbxassetid://740811119"
z1:Play()
	
			Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
			ball.BrickColor = BrickColor.new("New Yeller")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0

wait()
zh = Instance.new("Sound",char)
zh.Volume = 1
zh.Looped = true
zh.SoundId = "rbxassetid://891397456"
zh:Play()
aura.Transparency = NumberSequence.new(0)
			auracan = true
		Mesh.MeshId = "rbxassetid://430344159"
		Mesh.Scale = Vector3.new(6,6,6)
		Weld1.C0 = CFrame.new(-.25, 1.2, .34)
		Hair7.BrickColor = BrickColor.new("New Yeller")
		wait(2)
		idle = true
		idle1 = true
		canattack = true
		ssj2 = true
		end
		end
		end
end)
mouse.KeyDown:connect(function(key)
	 if key == "c" then
		if ssj2 == true then
		if canattack == true then
				combodamage = 6
			idle = false
			idle1 = false
			canattack = false
			wait(0.1)
		for i = 1, 20 do
	
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-30)), 0.2)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(30)), 0.2)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(10)), 0.4)--leg
			end
	z1 = Instance.new("Sound",char)
z1.Volume = 10
z1.Looped = false
z1.SoundId = "rbxassetid://740811119"
z1:Play()	
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.3,.2)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.5,0)*CFrame.Angles(math.rad(-120),math.rad(0),math.rad(60)), 0.2)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.5,0)*CFrame.Angles(math.rad(-120),math.rad(0),math.rad(-60)), 0.2)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10)), 0.4)--leg
end
			


			aura.Transparency = NumberSequence.new(0)
			aura1.Transparency = NumberSequence.new(0)
			auracan1 = true
			
			auracan = false
			zh:Destroy()
			Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
			wait()
			
			ball.BrickColor = BrickColor.new("New Yeller")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0

wait()
			zh = Instance.new("Sound",char)
zh.Volume = 1
zh.Looped =true
zh.SoundId = "rbxassetid://850205092"
zh:Play()
		Mesh.MeshId = "rbxassetid://560718478"
		Mesh.Scale = Vector3.new(6,6,6)
		Weld1.C0 = CFrame.new(-.25, 1.2, .34)
		Hair7.BrickColor = BrickColor.new("New Yeller")
		wait(2)
		idle = true
		idle1 = true
		canattack = true
		ssj3 = true
		ssj2 = false
		end
		end
		end
end)
mouse.KeyDown:connect(function(key)
	 if key == "c" then
		if ssj3 == true then
		if canattack == true then
		
			idle = false
			idle1 = false
			canattack = false
				combodamage = 10
			wait(0.1)
			Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
		Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
			for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.10)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(10)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-10)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.4)--rleg
			end
			Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
		Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
			Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
			wait(1)
			Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
				z1 = Instance.new("Sound",char)
z1.Volume = 10
z1.Looped = false
z1.SoundId = "rbxassetid://740811119"
z1:Play()
Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.10)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(10)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-10)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.4)--rleg
end
		Colors = {"New Yeller", "New Yeller"}
		GroundWave1()

Colors = {"New Yeller", "New Yeller"}
		GroundWave1()
ball.BrickColor = BrickColor.new("New Yeller")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0
	Mesh.Scale = Vector3.new(6,6,6)
	Weld1.C0 = CFrame.new(-.25, 1.2, .34)
	Mesh.MeshId = "rbxassetid://430344159"
		wait()
		


Hair71 = Instance.new("Part")
Hair71.Parent = p.Character
Hair71.Name = "Hair1"
Hair71.CanCollide = false
Hair71.Locked = true
Hair71.TopSurface = "Smooth"
Hair71.BottomSurface = "Smooth"
Hair71.formFactor = "Symmetric"
Hair71.Material = "Neon"
Hair71.BrickColor = BrickColor.new("New Yeller")
Hair71.CFrame = p.Character.Torso.CFrame
Hair71.Size = Vector3.new(1, 1, 1)
Hair71.Transparency = 0

Mesh1 = Instance.new("SpecialMesh")
Mesh1.Parent = Hair991
Mesh1.MeshType = "Sphere"
Mesh1.Offset = Vector3.new(0, 0.1, 0.1)
Mesh1.Scale = Vector3.new(1.2, 1.2, 1.2)

		
		Hair71.BrickColor = BrickColor.new("New Yeller")

Weld11 = Instance.new("Weld",char.Hair1)
Weld11.Parent = p.Character.Head
Weld11.Part0 = p.Character.Head
Weld11.Part1 = Hair71
Weld11.C0 = CFrame.new(-.25, -1, 1.5)

Mesh1 = Instance.new("SpecialMesh",Mesh1)
Mesh1.Offset = Vector3.new(0.2, -0.2, 0.2)
Mesh1.Parent = Hair71

Mesh1.MeshType = "FileMesh"
Mesh1.MeshId = "rbxassetid://560193297"
		Mesh1.Scale = Vector3.new(7,6,6)
Mesh1.TextureId = ""
		wait(2)
			ssj33 = true
		idle = true
		idle1 = true
		canattack = true
		ssj3 = false
		end
		end
		end
end)
aurapart = Instance.new("Part",char)
aurapart.Size = Vector3.new(0.1,0.1,0.1)
aurapart.Transparency = 1
aurapart.CanCollide = false
aurapart.Position = Vector3.new(0,2,0)
auraweld = Instance.new("Weld",char)
auraweld.Part0 = aurapart
auraweld.Part1 = torso
auraweld.C0 = CFrame.new(0,-2,0)
aura = Instance.new("ParticleEmitter",aurapart)
aura.Transparency = NumberSequence.new(1)
aura.Size = NumberSequence.new(8)
aura.Speed = NumberRange.new(0)
aura.LockedToPart = true
aura.Rate = 2
aura.Lifetime = NumberRange.new(5)
aura.ZOffset = -2
aura1 = Instance.new("ParticleEmitter",torso)
aura1.Transparency = NumberSequence.new(1)
aura1.Size = NumberSequence.new(5)
aura1.Speed = NumberRange.new(0)
aura1.Lifetime = NumberRange.new(5)
aura1.LockedToPart = true
aura1.Rate = 1.5

aura1.ZOffset = 2
aura1.Lifetime = NumberRange.new(3)
aurapart3 = Instance.new("Part",char)
aurapart3.Size = Vector3.new(0.1,0.1,0.1)
aurapart3.Position = Vector3.new(0,2,0)
aurapart3.Transparency = 1
aurapart3.CanCollide = false
auraweld3 = Instance.new("Weld",char)
auraweld3.Part0 = aurapart3
auraweld3.Part1 = torso
auraweld3.C0 = CFrame.new(0,-7,0)
aura3 = Instance.new("ParticleEmitter",aurapart3)
aura3.Transparency = NumberSequence.new(1)
aura3.Color = ColorSequence.new(Color3.new(255,0,255))
aura3.Size = NumberSequence.new(14)
aura3.Speed = NumberRange.new(0)
aura3.LockedToPart = true
aura3.Rate = 5
aura3.Lifetime = NumberRange.new(5)
aura3.ZOffset = -5

mouse.KeyDown:connect(function(key)
	 if key == "b" then
		if ssb == true then
		if canattack == true then
			idle = false
			base = false
			
			combodamage = 18
			ssbon = true
				ssb = false
				ssj = false
				ssj2 = false
				ssj3 = false
				ssj33 = false
			idle1 = false
			Colors = {"Toothpaste", "Toothpaste"}
			canattack = false
			wait(0.1)
		
			for i = 1, 20 do
	
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-30)), 0.2)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(30)), 0.2)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(10)), 0.4)--leg
			end
				z1 = Instance.new("Sound",char)
z1.Volume = 10
z1.Looped = false
z1.SoundId = "rbxassetid://740811119"
z1:Play()

		Mesh.MeshId = "rbxassetid://430344159"
		Mesh.Scale = Vector3.new(6,6,6)
		Weld1.C0 = CFrame.new(-.25, 1.2, .34)
		Hair7.BrickColor = BrickColor.new("Toothpaste")
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.3,.2)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.5,0)*CFrame.Angles(math.rad(-120),math.rad(0),math.rad(60)), 0.2)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.5,0)*CFrame.Angles(math.rad(-120),math.rad(0),math.rad(-60)), 0.2)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10)), 0.4)--leg
end



zh = Instance.new("Sound",char)
zh.Volume = 1
zh.Looped = true
zh.SoundId = "rbxassetid://600060450"
zh:Play()
ball.BrickColor = BrickColor.new("Toothpaste")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0
GroundWave1()
wait(0.3)

ball.BrickColor = BrickColor.new("Toothpaste")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0
GroundWave1()
wait(0.3)
ball.BrickColor = BrickColor.new("Toothpaste")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0
GroundWave1()
wait(0.3)
ball.BrickColor = BrickColor.new("Toothpaste")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0
GroundWave1()
wait(0.3)
GroundWave1()
			part2.Transparency = NumberSequence.new(0)
			part3.Transparency = NumberSequence.new(0)
		wait(0.4)
		idle = true
		idle1 = true
		canattack = true
	
		
		end
		end
		end
end)

		
mouse.KeyDown:connect(function(Key)
if Key == "r" then
if canattack == true then


kamehamehaon = true

			idle = false
				
			idle1 = false
			canattack = false
			hum.WalkSpeed = 0
			z2 = Instance.new("Sound",char)
z2.Volume = 3
z2.Looped = false
z2.SoundId = "rbxassetid://908489666"
z2:Play()

		
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(85),math.rad(0)), 1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-85), math.rad(0)), 1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,0)*CFrame.Angles(math.rad(30),math.rad(-40),math.rad(-10)), 1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.2,-0.2)*CFrame.Angles(math.rad(30),math.rad(40),math.rad(40)), 1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 1)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 1)--rleg
		
		partaura.Size = NumberSequence.new(0.1)
		
		partaura.Transparency = NumberSequence.new(0)
		partaura1.Transparency = NumberSequence.new(0)
		kamehameha = true
		wait(5)
		if kamehamehaon == true then
		kamehamehaon = false
		hited = true
		wait(0.1)
	point = true
	kamehamehaon = false
kamehameha = false



partaura.Transparency = NumberSequence.new(1)
partaura1.Transparency = NumberSequence.new(1)
z2:Stop()
z4 = Instance.new("Sound",char)
z4.Volume = 5
z4.Looped = false
z4.SoundId = "rbxassetid://908474188"
z4:Play()

		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.5,0)*CFrame.Angles(math.rad(95),math.rad(-10),math.rad(-20)), 1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.5,-0.2)*CFrame.Angles(math.rad(75),math.rad(170),math.rad(-20)), 1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-10)), 1)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(10)), 1)--rleg





		laser = true
		s1.Volume=1
s1:play()
		wait(5.4)
		point = false
		laser = false
		beam1.Size = Vector3.new(1,1,1)
beam1.Parent=nil
inner1.Parent=nil
expl1.Parent=nil

hited1 = false
exa1.Parent=nil
s1:stop()

		idle = true
				canattack = true
			idle1 = true
			hum.WalkSpeed = 16
		
		end
		end
end
	end)
	mouse.KeyUp:connect(function(Key)
if Key == "r" then
if kamehamehaon == true then
	hited = true
	wait(0.1)
	point = true
	kamehamehaon = false
kamehameha = false



partaura.Transparency = NumberSequence.new(1)
partaura1.Transparency = NumberSequence.new(1)
z2:Stop()
z4 = Instance.new("Sound",char)
z4.Volume = 5
z4.Looped = false
z4.SoundId = "rbxassetid://908474188"
z4:Play()

		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.5,0)*CFrame.Angles(math.rad(95),math.rad(-10),math.rad(-20)), 1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.5,-0.2)*CFrame.Angles(math.rad(75),math.rad(170),math.rad(-20)), 1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-10)), 1)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(10)), 1)--rleg





		laser = true
		s1.Volume=1
s1:play()
		wait(5.4)
		point = false
		laser = false
		beam1.Size = Vector3.new(1,1,1)
beam1.Parent=nil
inner1.Parent=nil
expl1.Parent=nil

hited1 = false
exa1.Parent=nil
s1:stop()

		idle = true
				canattack = true
			idle1 = true
			hum.WalkSpeed = 16
		end
	end
	end)
	
	
mouse.KeyDown:connect(function(key)
	 if key == "x" then
		if ssj33 == true then
			aura.Transparency = NumberSequence.new(1)
			
			char.Hair1:Destroy()
		zh:Destroy()
			Mesh.Scale = Vector3.new(1, 1, 1)
		Hair7.BrickColor = BrickColor.new("Black")
		Mesh.MeshId = "http://www.roblox.com/asset/?id=476757756"
		Weld1.C0 = CFrame.new(0,1, 0)
		
			
			Weld1.C0 = CFrame.new(0,1, 0)
		end
		aura.Transparency = NumberSequence.new(1)
					aura1.Transparency = NumberSequence.new(1)
		base = true
			part2.Transparency = NumberSequence.new(1)
			part3.Transparency = NumberSequence.new(1)
	ball.BrickColor = BrickColor.new("White")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0
	
		zh:Destroy()
			walksound = "rbxassetid://908473722"
ssbkaio = false
	ssbon = false
	wait()
zh = Instance.new("Sound",char)
zh.Volume = 10
zh.Looped = false
zh.SoundId = "rbxassetid://700499285"
zh:Play()
aura3.Transparency = NumberSequence.new(1)
Colors = {"White", "White"}
can = 5
		GroundWave1()
	wait(0.5)
		Mesh.Scale = Vector3.new(1, 1, 1)
		Hair7.BrickColor = BrickColor.new("Black")
		Mesh.MeshId = "http://www.roblox.com/asset/?id=476757756"
		Weld1.C0 = CFrame.new(0,1, 0)
		
		ssj = true
			combodamage = 2
		ssb = true
		
		ssj2 = false
		ssj3 = false
		ssj33 = false
		
		ssbkaio = false
		if ssbkaiox10 == true then
			rarm1:Destroy()
			larm1:Destroy()
			torso1:Destroy()
			lleg1:Destroy()
			rleg1:Destroy()
			rhed1:Destroy()
			ssbkaiox10 = false
		end
	end
end)
ball = Instance.new("Part",char)
ball.Size = Vector3.new(1,1,1)

ball.Position = Vector3.new(999,999,999)
ball.BrickColor = BrickColor.new("White")
ball.CanCollide = false
ballmesh = Instance.new("SpecialMesh",ball)
ballmesh.MeshType = "Sphere"
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ballweld = Instance.new("Weld",ball)
ballweld.Part0 = torso
ballweld.Part1 = ball
partt = Instance.new("Part",char)
partt.Position = Vector3.new(999,999,999)
partt.Transparency = 1
partt.CanCollide = false
partt.Size = Vector3.new(0.1,0.1,0.1)
partweld = Instance.new("Weld",partt)
partweld.Part0 = torso
partweld.Part1 = partt
partweld.C0 = CFrame.new(0.3,-.5,-1.5)
partaura = Instance.new("ParticleEmitter",partt)
partaura.Size = NumberSequence.new(2)
partaura.LockedToPart = true

partaura.Transparency = NumberSequence.new(1)
partaura.Texture = "rbxassetid://547574922"
partaura.Speed = NumberRange.new(0)
partaura.Rate = 2
partaura.ZOffset = 0
partaura1 = Instance.new("ParticleEmitter",partt)
partaura1.Size = NumberSequence.new(5)
partaura1.LockedToPart = true

partaura1.Transparency = NumberSequence.new(1)
partaura1.Texture = "http://www.roblox.com/asset/?id=243660364"
partaura1.Speed = NumberRange.new(0)
partaura1.Rate = 3
partaura1.ZOffset = -1
partaura1.Color = ColorSequence.new(Color3.new(0,255,255))
partaura1.RotSpeed = NumberRange.new(-10,10)
partaura1.SpreadAngle = Vector2.new(360,360)
partaura1.Rotation = NumberRange.new(0,360)
aj = 0
spirit = Instance.new("Part",char)
spirit.CanCollide = false
spirit.Size = Vector3.new(1,1,1)
spirit.Transparency = 1
spirit.Position = Vector3.new(999,999,999)
spirit.BrickColor = BrickColor.new("Toothpaste")
spirit.Material = "Neon"


spirit1 = Instance.new("Part",char)
spirit1.CanCollide = false
spirit1.Size = Vector3.new(1,1,1)
spirit1.Transparency = 1
spirit1.Position = Vector3.new(999,999,999)
spirit1.BrickColor = BrickColor.new("Toothpaste")
spirit1.Material = "Neon"
spirit1mesh = Instance.new("SpecialMesh",spirit1)
spirit1mesh.MeshType = "Sphere"
spirit1mesh.Scale = Vector3.new(1,1,1)
partweld7 = Instance.new("Weld",spirit1)
partweld7.Part0 = torso
partweld7.Part1 = spirit1
partweld7.C0 = CFrame.new(0,40,0)
aj = 1
spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(50,50,50)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"


function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
spirit12.Touched:connect(touch122)


mouse.KeyDown:connect(function(key)
	 if key == "t" then
		if base == true then
			if canattack == true then
					if clickon == true then
		jk = true
	clickon=false
	end
			idle = false
			
							
			idle1 = false
			canattack = false
			wait(0.5)
			hum.WalkSpeed = 0
			
			for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.3)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 10, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-180),math.rad(0),math.rad(20)), 0.3)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-180),math.rad(0),math.rad(-20)), 0.3)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)--rleg
			end
			z142 = Instance.new("Sound",char)
z142.Volume = 10
z142.Looped = false
z142.SoundId = "rbxassetid://919429799"
z142:Play()
			spirit1.Transparency = 0
			
			go = false
			
			
wait(9)

for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 10, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(20)), 0.1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-20)), 0.1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(-20)), 0.1)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(20)), 0.1)--rleg
end

go = true

z142.Volume = z142.Volume - 0.5



for i = 1,10 do
	wait()
	partweld7.C0 = partweld7.C0 - Vector3.new(0,0.7,2)
	end
z142.Volume = z142.Volume - 0.5
		spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(60,60,60)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
for i = 1,10 do
	wait()
	partweld7.C0 = partweld7.C0 - Vector3.new(0,0.7,2)
	end
z142.Volume = z142.Volume - 0.5
		spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(60,60,60)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
end
end
for i = 1,10 do
	wait()
	partweld7.C0 = partweld7.C0 - Vector3.new(0,0.7,2)
	end
z142.Volume = z142.Volume - 0.5
		spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(60,60,60)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
for i = 1,10 do
	wait()
	partweld7.C0 = partweld7.C0 - Vector3.new(0,0.7,2)
end
z142.Volume = z142.Volume - 0.5
z14 = Instance.new("Sound",char)
z14.Volume = 10
z14.Looped = false
z14.SoundId = "rbxassetid://638861091"
z14:Play()
Colors = {"Toothpaste", "Toothpaste"}
		GroundWave2()
		spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(60,60,60)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
z142.Volume = z142.Volume - 0.5
spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(50,50,50)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
spirit12.Touched:connect(touch122)
for i = 1,5 do
	wait()
	spirit1mesh.Scale = spirit1mesh.Scale + Vector3.new(5,5,5)
	
end
z142.Volume = z142.Volume - 0.5
Colors = {"Toothpaste", "Toothpaste"}
		GroundWave2()
spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(50,50,50)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
z142.Volume = z142.Volume - 0.5
z142.Volume = z142.Volume - 0.5
spirit12.Touched:connect(touch122)
for i = 1,5 do
	wait()
	spirit1mesh.Scale = spirit1mesh.Scale - Vector3.new(5,5,5)
end
z142.Volume = z142.Volume - 0.5
spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(50,50,50)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
z142.Volume = z142.Volume - 0.5
spirit12.Touched:connect(touch122)
for i = 1,5 do
	wait()
	spirit1mesh.Scale = spirit1mesh.Scale + Vector3.new(5,5,5)
	
end
z142.Volume = z142.Volume - 0.5
Colors = {"Toothpaste", "Toothpaste"}
		GroundWave2()
spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(50,50,50)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
z142.Volume = z142.Volume - 0.5
spirit12.Touched:connect(touch122)
for i = 1,5 do
	wait()
	spirit1mesh.Scale = spirit1mesh.Scale - Vector3.new(5,5,5)
end
z142.Volume = z142.Volume - 0.5
Colors = {"Toothpaste", "Toothpaste"}
		GroundWave2()
spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(50,50,50)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
z142.Volume = z142.Volume - 0.5
spirit12.Touched:connect(touch122)
for i = 1,5 do
	wait()
	spirit1mesh.Scale = spirit1mesh.Scale + Vector3.new(5,5,5)
	
end
z142.Volume = z142.Volume - 0.5
z142.Volume = z142.Volume - 0.5
Colors = {"Toothpaste", "Toothpaste"}
		GroundWave2()
spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(50,50,50)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

z142.Volume = z142.Volume - 0.5
function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 25
	
	
end
end
spirit12.Touched:connect(touch122)
for i = 1,5 do
	wait()
	spirit1mesh.Scale = spirit1mesh.Scale - Vector3.new(5,5,5)
end
z142.Volume = z142.Volume - 0.5
Colors = {"Toothpaste", "Toothpaste"}
		GroundWave2()
spirit12 = Instance.new("Part",char)
spirit12.Name = "XD"
spirit12.CanCollide = false
spirit12.Size = Vector3.new(200,200,200)
spirit12.Transparency = 1
spirit12.Position = spirit1.Position
spirit12.BrickColor = BrickColor.new("Toothpaste")
spirit12.Material = "Neon"

function touch122(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	if hit.Parent:findFirstChild("Humanoid").Health > 100 then
		hit.Parent:findFirstChild("Humanoid").MaxHealth = 100
		hit.Parent:findFirstChild("Humanoid").Health = 100
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 30
	
	
end
end
spirit12.Touched:connect(touch122)
Colors = {"Toothpaste", "Toothpaste"}
		GroundWave2()

spirit12.Touched:connect(touch122)
for i = 1,50 do
	wait()
	spirit1mesh.Scale = spirit1mesh.Scale + Vector3.new(5,5,5)
	

end
z142.Volume = z142.Volume - 0.5
z142:Destroy()


	partweld7.C0 = CFrame.new(0,40,0)
spirit1.Transparency = 1
			aj = 1

wait(0.5)
idle = true
				canattack = true
			idle1 = true
			wait(0.5)
			if jk == true then
		jk = false
		clickon = true
	end
			hum.WalkSpeed = 16
		
			end
		end
	end
end)
mouse.KeyDown:connect(function(key)
	 if key == "k" then
		if ssj2 == true or ssj3 == true or ssj33 == true then
			if canattack == true then
				
			idle = false
						
			idle1 = false
			canattack = false
			combodamage = 12
		z7 = Instance.new("Sound",char)
z7.Volume = 10
z7.Looped = false
z7.SoundId = "rbxassetid://738749992"
z7:Play()
		wait(1)
			for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-30)), 0.2)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(30)), 0.2)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(10)), 0.4)--leg
			end
			wait(0.6)
		for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(10)), 0.2)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10)), 0.2)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), 0.4)--leg
		end
		Colors = {"Really red", "Really red"}
		GroundWave1()
		aura.Color = ColorSequence.new(Color3.new(0,255,0))
		ball.BrickColor = BrickColor.new("Really red")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0
		ssbon = false
		zh:Destroy()
		wait()
	
aura.Color = ColorSequence.new(Color3.new(255,0,0))
ssj = false
ssj2 = false
ssj3 = false
aura1.Color = ColorSequence.new(Color3.new(255,0,0))
		Hair7.BrickColor = BrickColor.new("Really red")
		if ssj33 == true then
			Hair71.BrickColor = BrickColor.new("Really red")
		
		end

		wait(2)
		idle = true
				canattack = true
			idle1 = true
			end
			end
	end
end)
mouse.KeyDown:connect(function(key)
	 if key == "k" then
		if ssbon == true then
			if canattack == true then
			idle = false
			ssbkaio = true				
			idle1 = false
			can = 4
			canattack = false
			combodamage = 25
		
			for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.10)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(10)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-10)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.4)--rleg
	end
		
	
		
		
			wait(0.6)
		z7 = Instance.new("Sound",char)
z7.Volume = 10
z7.Looped = false
z7.SoundId = "rbxassetid://738749992"
z7:Play()
wait(2)
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.10)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(30)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-30)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10)), 0.4)--rleg
		end
		Colors = {"Really red", "Really red"}
		GroundWave1()
		ball.BrickColor = BrickColor.new("Really red")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0
		ssbon = false
		zh:Destroy()
		
		wait()
		zh = Instance.new("Sound",char)
zh.Volume = 4
zh.Looped = true
zh.SoundId = "rbxassetid://590580496"
zh:Play()
aura3.Transparency = NumberSequence.new(0)
aura3.Size = NumberSequence.new(14)
		wait(2)
		idle = true
		
				canattack = true
			idle1 = true
			end
			end
	end
end)

mouse.KeyDown:connect(function(key)
	 if key == "k" then
		if ssbkaio == true then
			if canattack == true then
			idle = false
				combodamage = 40
			ssbkaiox10 = true
			ssbkaio = false				
			idle1 = false
			can = 3
			canattack = false
			walksound = "rbxassetid://863810402"
			
for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.10)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(10)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-10)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.4)--rleg
	end
Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
	
	Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
	
Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
	
	
Colors = {"Really red", "Really red"}
		GroundWave1()
		Colors = {"Really red", "Really red"}
		GroundWave1()
	
		for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.10)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-80),math.rad(0),math.rad(40)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-80),math.rad(0),math.rad(-40)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10)), 0.4)--rleg
		end
		
		zh1 = Instance.new("Sound",char)
zh1.Volume = 4
zh1.Looped = false
zh1.SoundId = "rbxassetid://590580746"
zh1:Play()
			aura3.Transparency = NumberSequence.new(0)
aura3.Size = NumberSequence.new(18)	
		
	
		
		
		Hair7.BrickColor = BrickColor.new("Quill grey")
		larm1 = Instance.new("Part",char)
larm1.Transparency = 0.5
larm1.BrickColor = BrickColor.new("Bright red")
larm1.Size = Vector3.new(1.1,2.1,1.1)
larm1.Position = Vector3.new(999,999,999)
larmhold = Instance.new("Weld",char)
larmhold.Part0 = larm
larmhold.Part1 = larm1
larmhold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
rarm1 = Instance.new("Part",char)
rarm1.Transparency = 0.5
rarm1.BrickColor = BrickColor.new("Bright red")
rarm1.Size = Vector3.new(1.1,2.1,1.1)
rarm1.Position = Vector3.new(999,999,999)
rarmhold = Instance.new("Weld",char)
rarmhold.Part0 = rarm
rarmhold.Part1 = rarm1
rarmhold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
torso1 = Instance.new("Part",char)
torso1.Transparency = 0.5
torso1.BrickColor = BrickColor.new("Bright red")
torso1.Size = Vector3.new(2.1,2.1,1.1)
torso1.Position = Vector3.new(999,999,999)
torsohold = Instance.new("Weld",char)
torsohold.Part0 = torso
torsohold.Part1 = torso1
torsohold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
lleg1 = Instance.new("Part",char)
lleg1.Transparency = 0.5
lleg1.BrickColor = BrickColor.new("Bright red")
lleg1.Size = Vector3.new(1.1,2.1,1.1)
lleg1.Position = Vector3.new(999,999,999)
lleghold = Instance.new("Weld",char)
lleghold.Part0 = lleg
lleghold.Part1 = lleg1
lleghold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
rleg1 = Instance.new("Part",char)
rleg1.Transparency = 0.5
rleg1.BrickColor = BrickColor.new("Bright red")
rleg1.Size = Vector3.new(1.1,2.1,1.1)
rleg1.Position = Vector3.new(999,999,999)
rleghold = Instance.new("Weld",char)
rleghold.Part0 = rleg
rleghold.Part1 = rleg1
rleghold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
rhed1 = Instance.new("Part",char)
rhed1.Transparency = 0.5
rhed1.BrickColor = BrickColor.new("Bright red")
rhed1.Size = Vector3.new(2.3,1.3,1.3)
rhed1.Position = Vector3.new(999,999,999)
rhedhold = Instance.new("Weld",char)
rhedhold.Part0 = hed
rhedhold.Part1 = rhed1
rhedhold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
rhedmesh1 = Instance.new("SpecialMesh",rhed1)
rhedmesh1.MeshType = "Head"
rhedmesh1.Scale = Vector3.new(1,1,1)
Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)		
		ball.BrickColor = BrickColor.new("Really red")
ballmesh.Scale = Vector3.new(0.1,0.1,0.1)
ball.Transparency = 0
		ssbon = false
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		Colors = {"Really red", "Really red"}
		GroundWave1()
		wait(0.1)
		
		wait()
	

		wait(2)
		idle = true
				canattack = true
			idle1 = true
			end
			end
	end
	end)
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true

        if key == "f" then
	
	
			idle = false
						
			idle1 = false
			canattack = false
		
			  hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)), 1)--head
		           torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 1)--lleg
		            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 1)--rleg
			fly = true
                flyToggled = not flyToggled

        if not flyToggled then
	fly = false
                stanceToggle = "Normal"
                floatBP.Parent = nil
                flyBV.Parent = nil
                turnBG.Parent = nil
                root.Velocity = Vector3.new()
               hum.PlatformStand = false
wait(0.5)
idle = true
						
			idle1 = true
			canattack = true
        end
end

end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
wait(0.1)
if fly == true and moving == false then
	
for i = 1, 15 do
		wait()
		             hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)), 0.4)--head
		           torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--lleg
		            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)--rleg
end
end
end)

local function updateFly()

        if not flyToggled then return end

        lastForward = forward
        lastSide = side

        forward = 0
        side = 0

        if keysDown.w then
	moving = true
                forward = forward + 1.2

		             hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)), 0.05)--head
		           torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(0), math.rad(0)), 0.05)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.05)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.05)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.05)--lleg
		            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.05)--rleg
else
	moving = false
        end
        if keysDown.s then
	
                forward = forward - 0.5

		             hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.01)--head
		           torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(20)), 0.1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-10)), 0.1)--lleg
		            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.1)--rleg

        end
        if keysDown.a then
	
                side = side - 0.5
  hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)), 0.05)--head
		           torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(-50), math.rad(20)), 0.05)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.05)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.05)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.05)--lleg
		            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.05)--rleg
else
	
        end
        if keysDown.d then
	
                side = side + 0.5
 hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)), 0.05)--head
		           torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(40), math.rad(-20)), 0.05)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.05)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.05)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.05)--lleg
		            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.05)--rleg

	
        end

        canFly = (forward ~= 0 or side ~= 0)

        if canFly then
	
                stanceToggle = "Floating"
                turnBG.Parent = root
                floatBP.Parent = nil
                flyBV.Parent = root

                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = root.Position
                floatBP.Parent = root

                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end

        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                hum.PlatformStand = true
        end
        updateFly()
end)

local hit1 = true
local hit2 = false
local hit3 = false
local hit4 = false
zw = Instance.new("Sound",char)
zw.Volume = 1
zw.Looped = false
zw.SoundId = "rbxassetid://896243541"

function leftkick()
for i = 1, 5 do
		wait()
	            	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-60),math.rad(0)), 0.8)--head
	     	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(2), math.rad(60), math.rad(0)), 0.8)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.8)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.8)--larm
			 lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.8)--lleg
		        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(40)), 0.8)--rleg
end
zw:Play()
end
function rightkick()
for i = 1, 5 do
		wait()
	            	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(60),math.rad(0)), 0.8)--head
	     	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(5), math.rad(-60), math.rad(0)), 0.8)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.8)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-30)), 0.8)--larm
			 lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-40)), 0.8)--lleg
		        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.8)--rleg
end

end
function leftpunch()
for i = 1, can do
		wait()
		                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0)), 0.8)--head
		             torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(50),math.rad(0)), 0.8)--torso
				    	rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.8)--rarm
					   larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)), 0.8)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.8)--lleg
		             rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)), 0.8)--rleg
end
zw:Play()
end
function rightpunch()
for i = 1, can do
		wait()
		                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0)), 0.8)--head
		             torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(0)), 0.8)--torso
				    	rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 0.8)--rarm
					   larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.8)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.8)--lleg
		             rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)), 0.8)--rleg
end
zw:Play()
end
---------------------------------------------------------------------------------------------------------------------------------------------------
function kickup()
for i = 1, 20 do
		wait()
		                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		             torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -0.9, 0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0)), 0.2)--torso
				    	rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-60),math.rad(0),math.rad(0)), 0.2)--rarm
					   larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-60),math.rad(0),math.rad(0)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-10)), 0.4)--lleg
		             rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.4)--rleg
end
zw:Play()

end
function knockdown()
for i = 1, 10 do
		wait()
		                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		             torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 35, 0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.4)--torso
				    	rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,.7,-0.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.4)--rarm
					   larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,.7,-0.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.4)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-10)), 0.4)--lleg
		             rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 0.4)--rleg

end
zw1 = Instance.new("Sound",char)
zw1.Volume = 1
zw1.Looped = false
zw1.SoundId = "rbxassetid://896242278"
zw1:Play()
for i = 1, 20 do
		wait()
		                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		             torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 35, 0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)), 0.2)--torso
				    	rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,.5,-0.4)*CFrame.Angles(math.rad(40),math.rad(0),math.rad(-40)), 0.2)--rarm
					   larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,.4,-0.4)*CFrame.Angles(math.rad(40),math.rad(0),math.rad(40)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(60),math.rad(0),math.rad(-10)), 0.2)--lleg
		             rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(60),math.rad(0),math.rad(10)), 0.2)--rleg
end


end
mouse.KeyDown:connect(function(key)
        if key == "e" and hit1 == true and canattack == true then
	canattack = false
	nohit = 0

	hit1 = false
	hit2 = true
	hit3 = false
	hit4 = false
	hand1 = Instance.new("Part",rarm)
hand1.Size = Vector3.new(1.5,1.5,1.5)
hand1.CanCollide = false
hand1.Transparency = 1
hand1.Position = Vector3.new(999,999,999)
hand1weld = Instance.new("Weld",hand1)
hand1weld.Part0 = rarm
hand1weld.Part1 = hand1
hand1weld.C0 = CFrame.new(0,-1.2,0)
----------------------------------------------------------------

function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - combodamage
	zwt = Instance.new("Sound",char)
zwt.Volume = 1
zwt.Looped = false
zwt.SoundId = "rbxassetid://137579113"
zwt:Play()
end
end
hand1.Touched:connect(touch1)
rightpunch()

hand1:Destroy()
canattack = true
end
end)
mouse.KeyDown:connect(function(key)
        if key == "e" and hit2 == true and canattack == true then
	canattack = false
	nohit = 0
	
	hit1 = false
	hit2 = false
	hit3 = true
	hit4 = false
hand2 = Instance.new("Part",rarm)
hand2.Size = Vector3.new(1.5,1.5,1.5)
hand1.CanCollide = false
hand2.Transparency = 1
hand2.Position = Vector3.new(999,999,999)
hand2weld = Instance.new("Weld",hand2)
hand2weld.Part0 = larm
hand2weld.Part1 = hand2
hand2weld.C0 = CFrame.new(0,-1.2,0)
----------------------------------------------------------------

function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - combodamage
	zwr = Instance.new("Sound",char)
zwr.Volume = 1
zwr.Looped = false
zwr.SoundId = "rbxassetid://137579113"
zwr:Play()
end
end
hand2.Touched:connect(touch1)
leftpunch()

canattack = true
hand2:Destroy()

end
end)
mouse.KeyDown:connect(function(key)
        if key == "e" and hit3 == true and canattack == true then
	canattack = false
	nohit = 0
		
	hit1 = false
	hit2 = false
	hit3 = false
	hit4 = true
hand3 = Instance.new("Part",lleg)
hand3.Size = Vector3.new(1.5,1.5,1.5)
hand3.CanCollide = false
hand3.Transparency = 1
hand3.Position = Vector3.new(999,999,999)
hand3weld = Instance.new("Weld",hand3)
hand3weld.Part0 = lleg
hand3weld.Part1 = hand3
hand3weld.C0 = CFrame.new(0,-1.2,0)
----------------------------------------------------------------

function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - combodamage
	zwc = Instance.new("Sound",char)
zwc.Volume = 1
zwc.Looped = false
zwc.SoundId = "rbxassetid://137579113"
zwc:Play()
end
end
hand3.Touched:connect(touch1)
rightkick()

canattack = true
hand3:Destroy()

end
end)
mouse.KeyDown:connect(function(key)
        if key == "e" and hit4 == true and canattack == true then
	canattack = false
	nohit = 0
	wait()hit4 = false
	hit3 = false
	hit2 = false
	hit1 = true
hand4 = Instance.new("Part",rleg)
hand4.Size = Vector3.new(1.5,1.5,1.5)
hand4.CanCollide = false
hand4.Transparency = 1
hand4.Position = Vector3.new(999,999,999)
hand4weld = Instance.new("Weld",hand4)
hand4weld.Part0 = rleg
hand4weld.Part1 = hand4
hand4weld.C0 = CFrame.new(0,-1.2,0)
----------------------------------------------------------------

function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - combodamage
	zwe = Instance.new("Sound",char)
zwe.Volume = 1
zwe.Looped = false
zwe.SoundId = "rbxassetid://137579113"
zwe:Play()
end
end
hand4.Touched:connect(touch1)
leftkick()

canattack = true
hand4:Destroy()

end
end)
local player = game.Players.LocalPlayer
repeat wait() until player:GetMouse() and player.Character
local mouse = player:GetMouse()
local character = player.Character


local clickon = false
p = game.Players.LocalPlayer
char = p.Character
mouse = p:GetMouse()
torso = char.Torso
mouse.Button1Down:connect(function()
	t = mouse.Target.Parent:FindFirstChild("Torso")
	hu = mouse.Target.Parent:FindFirstChild("Humanoid")
	if mouse.Target == nil then
		clickon = false
	end
if mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
	clickon = true
	poon = true
zwc1s2 = Instance.new("Sound",mouse.Target)
zwc1s2.Volume = 5
zwc1s2.Looped = false
zwc1s2.SoundId = "rbxassetid://915341277"
zwc1s2:Play()



else
	clickon = false
	
end
	
end)

you = game.Players.LocalPlayer.Character.Torso



mouse.KeyDown:connect(function(key)
        if key == "z" then
if canattack == true then
	
canattack = false
idle = false
hum.WalkSpeed = 0
nohit = 0
idle1 = false
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.8,0.7,-0.7)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(140)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(10)), 0.4)--leg
end
zwc1 = Instance.new("Sound",torso)
zwc1.Volume = 1
zwc1.Looped = false
zwc1.SoundId = "rbxassetid://744770874"
zwc1:Play()
if clickon == true then
torso.CFrame = t.CFrame - Vector3.new(0,0,2)
else
	torso.CFrame = torso.CFrame + torso.CFrame.lookVector * 20
end
canattack = true
idle = true
hum.WalkSpeed = 10
idle1 = true
end


end
end)

mouse.KeyDown:connect(function(key)
        if key == "h" then
	if canattack == true then
	idle = false						
			idle1 = false
		canattack = false
		grab = false
	grab5()
	grabhit = Instance.new("Part",char)
grabhit.Size = Vector3.new(2,2,2)
grabhit.Position = Vector3.new(999,999,999)
grabhit.Transparency = 1
grabweld = Instance.new("Weld",grabhit)
grabweld.Part0 = torso
grabweld.Part1 = grabhit
grabweld.C0 = CFrame.new(0,0,-2)
---------------------------------------------------------------
hand1 = Instance.new("Part",rarm)
hand1.Size = Vector3.new(1,1,1)
hand1.CanCollide = false
hand1.Transparency = 1
hand1.Position = Vector3.new(999,999,999)
hand1weld = Instance.new("Weld",hand1)
hand1weld.Part0 = rarm
hand1weld.Part1 = hand1
hand1weld.C0 = CFrame.new(0,-1.2,0)
----------------------------------------------------------------
hand2 = Instance.new("Part",rarm)
hand2.Size = Vector3.new(1,1,1)
hand1.CanCollide = false
hand2.Transparency = 1
hand2.Position = Vector3.new(999,999,999)
hand2weld = Instance.new("Weld",hand2)
hand2weld.Part0 = larm
hand2weld.Part1 = hand2
hand2weld.C0 = CFrame.new(0,-1.2,0)
function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - combodamage
	
end
end
hand1.Touched:connect(touch1)
function touch2(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - combodamage
	
end
end
hand2.Touched:connect(touch2)
function touch(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	grabhit.TouchInterest:Destroy()
	grab = true
	hu = hit.Parent:findFirstChild("Humanoid")
to = hit.Parent:findFirstChild("Torso")
he = hit.Parent:findFirstChild("Head")
hu.WalkSpeed = 0
if hu.Health > 100 then
	hu.MaxHealth = 100
	hu.Health = 100
end
towe = Instance.new("Weld",to)
towe.Part0 = torso
towe.Part1 = to
towe.C0 = CFrame.new(0,0,-1.5)


wait(0.5)
end
if grab == true then
	if clickon == true then
		jk = true
	clickon = false
	end
	towe.Part0 = nil
	partv = Instance.new("Part",to)
	partv.Transparency = 1

	partv.CanCollide = false
	partv.Anchored = true
	towe1 = Instance.new("Weld",to)
towe1.Part0 = to
towe1.Part1 = partv
towe1.C0 = CFrame.new(0,0,0)
	
	

partv:Destroy()
	towe.Part0 = torso
	
	
	----------------------------------------------------
	grabon = true
	towe:Destroy()
		
	kickup()
	wait(0.1)
	for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.2)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.2)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 0.2)--leg
		end
grabon = false
to.Anchored = true


grabon1 = true
zwc12 = Instance.new("Sound",torso)
zwc12.Volume = 1
zwc12.Looped = false
zwc12.SoundId = "rbxassetid://436748675"
zwc12:Play()
	knockdown()
	hu.Health = hu.Health - 30
	to.Anchored = false
	grabon1 = false

	
	local HandCF4 = CFrame.new(to.Position - Vector3.new(0,0,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	Colors = {"White"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF4
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(3 + i*3.2, 3 + i*3.2, 3)
		wave.Size = wm.Scale
		wave.CFrame = HandCF4
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
		end)()
		wait(0.3)
		local HandCF4 = CFrame.new(to.Position - Vector3.new(0,0,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	Colors = {"White"}
	zwd = Instance.new("Sound",char)
zwd.Volume = 5
zwd.Looped = false
zwd.SoundId = "rbxassetid://863810402"
zwd:Play()
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF4
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(3 + i*3.2, 3 + i*3.2, 3)
		wave.Size = wm.Scale
		wave.CFrame = HandCF4
		wave.Transparency = i/30
		wait()
		end
			
		wait()
		wave:Destroy()
	
		end)()
			
		wait(0.6)
		zwd:Destroy()
		wait(0.4)
	hed.Anchored = false
	
	
	canattack = true
idle = true
hand1:Destroy()
hand2:Destroy()

			goo = 0			
			idle1 = true
grab = false
	wait(1)
	if jk == true then
		jk = false
		clickon = true
	end
	
end

	
end


grabhit.Touched:connect(touch)
wait(0.1)
grabhit:Destroy()

	
	
	
	if grab == false then
		hand1:Destroy()
hand2:Destroy()
	
canattack = true
idle = true
						
			idle1 = true
			
	end	
end
end
end)

mouse.KeyDown:connect(function(Key)
if Key == "g" then
if canattack == true then


kamehamehaon = true
beam1.Size = Vector3.new(6,6,1)

partaura.Size = NumberSequence.new(0.8)
			idle = false
				
			idle1 = false
			canattack = false
			hum.WalkSpeed = 0
			z2 = Instance.new("Sound",char)
z2.Volume = 3
z2.Looped = false
z2.SoundId = "rbxassetid://908489666"
z2:Play()

		
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(85),math.rad(0)), 1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-85), math.rad(0)), 1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,0)*CFrame.Angles(math.rad(30),math.rad(-40),math.rad(-10)), 1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.2,-0.2)*CFrame.Angles(math.rad(30),math.rad(40),math.rad(40)), 1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 1)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 1)--rleg
		
	
		
		partaura.Transparency = NumberSequence.new(0)
		partaura1.Transparency = NumberSequence.new(0)
		kamehameha = true
		wait(6)
		zwc1 = Instance.new("Sound",char)
zwc1.Volume = 1
zwc1.Looped = false
zwc1.SoundId = "rbxassetid://744770874"
zwc1:Play()
		torso.CFrame = t.CFrame - Vector3.new(0,0,-10)
		hum.HipHeight = 10
		wait(0.5)
		if kamehamehaon == true then
		kamehamehaon = false
		hited = true
		wait(0.1)
	point = true
	kamehamehaon = false
kamehameha = false



partaura.Transparency = NumberSequence.new(1)
partaura1.Transparency = NumberSequence.new(1)
z2:Stop()
z4 = Instance.new("Sound",char)
z4.Volume = 5
z4.Looped = false
z4.SoundId = "rbxassetid://908474188"
z4:Play()

		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.5,0)*CFrame.Angles(math.rad(95),math.rad(-10),math.rad(-20)), 1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.5,-0.2)*CFrame.Angles(math.rad(75),math.rad(170),math.rad(-20)), 1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-10)), 1)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(10)), 1)--rleg





		laser = true
		s1.Volume=1
s1:play()
		wait(5.4)
		point = false
		
		laser = false
		beam1.Size = Vector3.new(1,1,1)
beam1.Parent=nil
inner1.Parent=nil
expl1.Parent=nil

hited1 = false
exa1.Parent=nil
s1:stop()

		idle = true
				canattack = true
			idle1 = true
			hum.WalkSpeed = 16
		hum.HipHeight = 0
		end
		end
end
end)

function spin()
for i = 1, 50 do
		wait()
		
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		torso.CFrame = torso.CFrame * CFrame.Angles(0,.8,0)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,-.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.1)--leg
end
end
function grab5()
for i = 1, 10 do
		wait()
		
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso		
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(10)), 0.1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(-10)), 0.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.1)--leg
end
for i = 1, 10 do
		wait()
		
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)--torso		
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-.5)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-40)), 0.2)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,-.5)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(40)), 0.2)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-10)), 0.2)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(10)), 0.2)--leg
end
end
mouse.KeyDown:connect(function(key)
        if key == "y" then
	if canattack == true then
	idle = false						
			idle1 = false
		canattack = false
	grab5()

	grabhit = Instance.new("Part",char)
grabhit.Size = Vector3.new(2,2,2)
grabhit.Position = Vector3.new(999,999,999)
grabhit.Transparency = 1
grabweld = Instance.new("Weld",grabhit)
grabweld.Part0 = torso
grabweld.Part1 = grabhit
grabweld.C0 = CFrame.new(0,0,-2)
---------------------------------------------------------------
hand1 = Instance.new("Part",rarm)
hand1.Size = Vector3.new(1,1,1)
hand1.CanCollide = false
hand1.Transparency = 1
hand1.Position = Vector3.new(999,999,999)
hand1weld = Instance.new("Weld",hand1)
hand1weld.Part0 = rarm
hand1weld.Part1 = hand1
hand1weld.C0 = CFrame.new(0,-1.2,0)
----------------------------------------------------------------
hand2 = Instance.new("Part",rarm)
hand2.Size = Vector3.new(1,1,1)
hand1.CanCollide = false
hand2.Transparency = 1
hand2.Position = Vector3.new(999,999,999)
hand2weld = Instance.new("Weld",hand2)
hand2weld.Part0 = larm
hand2weld.Part1 = hand2
hand2weld.C0 = CFrame.new(0,-1.2,0)
function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hu1 = hit.Parent:findFirstChild("Humanoid")
	grab1 = true
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 0.5
	if hu1.Health > 100 then
	hu1.MaxHealth = 100
	hu1.Health = 100
end
end
end
hand1.Touched:connect(touch1)
function touch2(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hu1 = hit.Parent:findFirstChild("Humanoid")
	grab1 = true
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 0.5
	if hu1.Health > 100 then
	hu1.MaxHealth = 100
	hu1.Health = 100
end
end
end
hand2.Touched:connect(touch2)
function touch(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	grab1 = true
	if clickon == true then
		jk = true
	clickon = false
	end
	grabhit.TouchInterest:Destroy()
	
	hu1 = hit.Parent:findFirstChild("Humanoid")
to1 = hit.Parent:findFirstChild("Torso")
he1 = hit.Parent:findFirstChild("Head")
hu1.WalkSpeed = 0
if hu1.Health > 100 then
	hu1.MaxHealth = 100
	hu1.Health = 100
end




end

if grab1 == true then
	throw = 5
	to1.CFrame = to1.CFrame + Vector3.new(0,60,0)
	kickup()
	hum.HipHeight = 10
	wait()
	grabon1 = true
	
	hed.Anchored = true
	wait(0.3)
	
		hed.Anchored = false
	spin()
	ds = Instance.new("Sound",torso)
ds.Volume = 4
ds.Looped = false
ds.SoundId = "rbxassetid://860448713"
ds:Play()

	grabon1 = false
	grabon2 = true
	wait(0.5)
	grabon2 = false
	hand1:Destroy()
	
hand2:Destroy()

	hum.HipHeight = 0
	wait(0.5)
canattack = true
idle = true
			grabhit:Destroy()			
			idle1 = true
		grab1 = false	
		
		if jk == true then
		jk = false
		clickon = true
	end
end

	
end

	
end





grabhit.Touched:connect(touch)
	


	
	wait(0.2)
	
	if grab1 == false then
		hand1:Destroy()
hand2:Destroy()
grabhit:Destroy()
	
canattack = true
idle = true
						
			idle1 = true
			


	end
	end
end)

function pushaway()
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(-1)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--leg
		end
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-80),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(1)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--leg
end
end

function dragoncharge()
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8,0.2,-1)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.5,-.4)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(60)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--leg
end
end
function dragonfist()
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(-1)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--leg
		end
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-80),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(1)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(80)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(-20)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-30)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-5)), 0.4)--leg
end
end
mouse.KeyDown:connect(function(key)
        if key == "u" then
	if canattack == true then
		if ssj33 == true then
	idle = false						
			idle1 = false
		canattack = false
	grab5()

	grabhit = Instance.new("Part",char)
grabhit.Size = Vector3.new(2,2,2)
grabhit.Position = Vector3.new(999,999,999)
grabhit.Transparency = 1
grabweld = Instance.new("Weld",grabhit)
grabweld.Part0 = torso
grabweld.Part1 = grabhit
grabweld.C0 = CFrame.new(0,0,-2)
---------------------------------------------------------------
hand1 = Instance.new("Part",rarm)
hand1.Size = Vector3.new(0.1,0.1,0.1)
hand1.CanCollide = false
hand1.Transparency = 1
hand1.Position = Vector3.new(999,999,999)
hand2mesh = Instance.new("SpecialMesh",hand1)
hand2mesh.MeshType = "FileMesh"

hand2mesh.Scale = Vector3.new(1,1,1)
hand2aura = Instance.new("ParticleEmitter",hand1)
hand2aura.Size = NumberSequence.new(1)
hand2aura.Texture = "rbxassetid://715401010"
hand2aura.Speed = NumberRange.new(0)
hand2aura.LockedToPart = true
hand2aura.Transparency = NumberSequence.new(1)
hand2aura.RotSpeed = NumberRange.new(999)
hand1weld = Instance.new("Weld",hand1)
hand1weld.Part0 = rarm
hand1weld.Part1 = hand1
hand1weld.C0 = CFrame.new(0,-1.8,0)
----------------------------------------------------------------
hand2 = Instance.new("Part",rarm)
hand2.Size = Vector3.new(1,1,1)
hand1.CanCollide = false
hand2.Transparency = 1
hand2.Position = Vector3.new(999,999,999)

hand2weld = Instance.new("Weld",hand2)
hand2weld.Part0 = larm
hand2weld.Part1 = hand2
hand2weld.C0 = CFrame.new(0,-1.2,0)
function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hu1 = hit.Parent:findFirstChild("Humanoid")
	grab2 = true
	
	if clickon == true then
		jk = true
	clickon = false
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 0.5
	if hu1.Health > 100 then
	hu1.MaxHealth = 100
	hu1.Health = 100
end
end
end
hand1.Touched:connect(touch1)
function touch2(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hu1 = hit.Parent:findFirstChild("Humanoid")
	grab2 = true
	if clickon == true then
		jk = true
	clickon = false
	end
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 0.5
	if hu1.Health > 100 then
	hu1.MaxHealth = 100
	hu1.Health = 100
end
end
end
hand2.Touched:connect(touch2)
function touch(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	grab8 = true
	if clickon == true then
		jk = true
	clickon = false
	end
	grabhit.TouchInterest:Destroy()
	
	hu12 = hit.Parent:findFirstChild("Humanoid")
to12 = hit.Parent:findFirstChild("Torso")
he12 = hit.Parent:findFirstChild("Head")
hu1.WalkSpeed = 0
if hu12.Health > 100 then
	hu12.MaxHealth = 100
	hu12.Health = 100
end




end

if grab2 == true then
	z4f = Instance.new("Sound",torso)
z4f.Volume = 5
z4f.Looped = false
z4f.SoundId = "rbxassetid://815202315"
z4f:Play()

	pushaway()
	grabon3 = true
	wait(1)
	grabon3 = false
	he12.Anchored = true
	
	dragoncharge()
	hand2aura.Transparency = NumberSequence.new(0)
	wait(1.5)
	dragonfist()
	z4f:Destroy()
	z4x = Instance.new("Sound",torso)
z4x.Volume = 5
z4x.Looped = false
z4x.SoundId = "rbxassetid://908474188"
z4x:Play()
	hand1.Transparency = 0
	hand2mesh.MeshId = "rbxassetid://58430372"
	hand1.BrickColor = BrickColor.new("New Yeller")
	hand2mesh.Scale = Vector3.new(5,5,5)
	hand1weld.C0 = CFrame.new(0,-3,-1) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0))
	grabon4 = true
	wait(0.5)
	
	hu12.Health = 0
	grabon4 = false
	wait(0.5)
	he12.Anchored = false
	z4x:Destroy()
	throw1 = 5
throw2 = 5
	
	
	
	
	
	
	
------------------------------------------------------------
	hand1:Destroy()
hand2:Destroy()
	
canattack = true
idle = true
			grabhit:Destroy()			
			idle1 = true
		
	if jk == true then
		jk = false
		clickon = true
	end
	
		grab8 = false	
end

	
end

	






grabhit.Touched:connect(touch)
	


	
	wait(0.2)
	
	if grab8 == false then
		hand1:Destroy()
hand2:Destroy()
grabhit:Destroy()
	
canattack = true
idle = true
						
			idle1 = true
			


	end
		end
		end
	end
end)
game:GetService("RunService").RenderStepped:connect(function()
	if grabon3 == true then
		throw1 = throw1 + 1
		to12.CFrame = torso.CFrame + hed.CFrame.lookVector * throw1
		
	end
	if grabon4 == true then
		throw2 = throw2 + 0.2
		torso.CFrame = hed.CFrame - Vector3.new(0,2,0) + hed.CFrame.lookVector * throw2
	end
	if grabon1 == true then
		
		to1.CFrame = torso.CFrame * CFrame.Angles(math.rad(90),math.rad(0),math.rad(180)) + torso.CFrame.lookVector * 5 
		
	end
	if grabon2 == true then
		throw = throw + 6
		to1.CFrame = torso.CFrame * CFrame.Angles(math.rad(90),math.rad(0),math.rad(180)) + torso.CFrame.lookVector * throw
	end
if grabon == true then
		goo = goo + 0.5
		to.CFrame = torso.CFrame + torso.CFrame.lookVector * 2 + Vector3.new(0,goo,0)
	end
if hum.Jump == true then
		if canattack == true then
			if clickon == true then
		jk = true
	clickon=false
	end
			zwc12 = Instance.new("Sound",torso)
zwc12.Volume = 1
zwc12.Looped = false
zwc12.SoundId = "rbxassetid://436748675"
zwc12:Play()
			canattack = false
			idle = false
			idle1 = false
			nohit = 0
		
		for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-30)), 0.2)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.7, -.8) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-5)), 0.2)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(5)), 0.2)--leg
		end
		wait(0.5)
		canattack = true
			idle = true
			idle1 = true
			if jk == true then
		jk = false
		clickon = true
	end
		end
	end
if kamehameha == true then
			aj1 = aj1 + 0.005
			partaura.Size = NumberSequence.new(aj1)
			beam1.Size=beam1.Size + Vector3.new(0.01,0.01,0)
			beamdamage = beamdamage + 0.001
			
	else
		aj1 = 0.1
		
	end
	if hited1 == true then
		wait(0.3)
welld.C0 = CFrame.new(beam1.Position.x,beam1.Position.y,ts.Position.z-beamknockback)
	human.Health = human.Health - beamdamage


	human.PlatformStand = true
	human.Sit = true

if hited1 == false and on == true then
	on  = false
	wait(0.5)
		human.PlatformStand = false
	human.Sit = false
	beamknockback = 0
beamdamage = 0.001
	human.Jump = true

	end
	end 
if clickon == true then
		if point == false then
	you.CFrame = CFrame.new(you.CFrame.p,t.CFrame.p)
	if hu.Health < 1 then
		clickon = false
	end
		end
		
	end
ballmesh.Scale = ballmesh.Scale + Vector3.new(5,5,5)
ball.Transparency = ball.Transparency + 0.05
	if go == false then
		aj = aj + 0.13
		spirit1mesh.Scale = Vector3.new(aj,aj,aj)
		
	end
if auracan1 == true then
	auracan1 = false
	aura1.Texture = "rbxassetid://281983000"
	wait(0.1)
aura1.Texture = "rbxassetid://281982895"
	wait(0.1)
aura1.Texture = "rbxassetid://281983092"
	wait(0.1)
aura1.Texture = "rbxassetid://281996097"
	wait(0.1)
aura1.Texture = "rbxassetid://281983189"
	wait(0.1)
aura1.Texture = "rbxassetid://281983242"
	wait(0.1)
aura1.Texture = "rbxassetid://281983280"
	wait(0.1)
aura1.Texture = "rbxassetid://281983337"
	wait(0.1)
	
	auracan1 = true
	end
	if auracan == true then
	auracan = false
	aura.Texture = "rbxassetid://901509906"
	wait(0.07)
	aura.Texture = "rbxassetid://901510046"
	wait(0.07)
	aura.Texture = "rbxassetid://901510125"
	wait(0.07)
	
	auracan = true
	end
	if auracan3 == true then
	auracan3 = false
	aura3.Texture = "rbxassetid://901509906"
	wait(0.07)
	aura3.Texture = "rbxassetid://901510046"
	wait(0.07)
	aura3.Texture = "rbxassetid://901510125"
	wait(0.07)
	auracan3 = true
	end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then

			if walk == true then
			
			if canattack == true then
			walk = false
			walkon = true
			
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(5)), 0.5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-5)),0.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.6, -.5) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(5)),.5)--rleg
wait(0.1)
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(5)), 0.5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-5)),0.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.6, -.5) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(5)),.5)--rleg
		wait(0.1)
		end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-5)),1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(5)),.5)--rleg
		
		z41 = Instance.new("Sound",char)
z41.Volume = 10
z41.Looped = false
z41.SoundId = walksound
z41:Play()
wait(.1)
end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-5)),1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(5)),.5)--rleg
		
		
wait(.1)
end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then

	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)),.5)--rleg
wait(0.1)

end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then

	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)),.5)--rleg
wait(0.1)

end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then

	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(-5)),.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.6, -.5) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(5)),.5)--rleg
wait(0.1)
end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then

	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(-5)),.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.6, -.5) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(5)),.5)--rleg
wait(0.1)
end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-5)),.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.2) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(5)),.5)--rleg
		wait(0.1)
		z41 = Instance.new("Sound",char)
z41.Volume = 10
z41.Looped = false
z41.SoundId = walksound
z41:Play()
end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-5)),.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.2) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(5)),.5)--rleg
		wait(0.1)
	
end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then	
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)),.5)--rleg

wait(0.1)
end
if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then	
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .5)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)), .5)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.5)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)),.5)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)),.5)--rleg

wait(0.1)
end

		walk = true
			end	
			end
end
	if hum.MoveDirection.x == 0 then
		if idle1 == true then
			walkon = false
			idle1 = false
		idle = false
			
		
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.3,-0.5)*CFrame.Angles(math.rad(160),math.rad(210),math.rad(0)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(-20)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, .2) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.2) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(20)), 0.4)--rleg
		wait(0.1)
		
		if canattack == true then
idle = true
idle1 = true
end
		end
	
	end
	nohit = nohit + 0.2
	if nohit > 10 and canattack == true and walkon == false then
		idle = true
idle1 = true
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.3,-0.5)*CFrame.Angles(math.rad(160),math.rad(210),math.rad(0)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(-20)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, .2) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.2) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(20)), 0.4)--rleg
		
	end
	if darius == true then
		darius = false
	wait(0.1)
part2.Texture = "http://www.roblox.com/asset/?id=894173257" 
wait(0.1)
part2.Texture = "http://www.roblox.com/asset/?id=894173392"
wait(0.1)
part2.Texture = "http://www.roblox.com/asset/?id=890403068"
wait(0.1) 
part2.Texture = "http://www.roblox.com/asset/?id=890403512"
darius = true
end
end)