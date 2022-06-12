local Player = game.Players.LocalPlayer
local Character = game.Players.LocalPlayer.Character
local Create = LoadLibrary("RbxUtility").Create
CFuncs = {	
	
	
	
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end


CV="Really black"
ArtificialHB = Create("BindableEvent", script){
	Parent = script,
	Name = "Heartbeat",
}
	
function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

function chatfunc(text)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Fantasy"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = Color3.new(255,255,255)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=565939471", Character, 6, .8)
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(2)
for i = 1, 50 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks3.Rotation = tecks2.Rotation + .8
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
naeeym2:Destroy()
end)
chat()

end
function onChatted(msg)
chatfunc(msg)

end
Player.Chatted:connect(onChatted)

abss = Instance.new("BillboardGui",Character)
abss.Size = UDim2.new(10,0,10,0)
abss.Enabled = false
abss.Name = "ROCKYMOUNT"
imgl = Instance.new("ImageLabel",abss)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://711463989"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(0,255,255)
img2 = Instance.new("ImageLabel",abss)
img2.Position = UDim2.new(0,0,0,0)
img2.Size = UDim2.new(1,0,1,0)
img2.Image = "rbxassetid://711463989"
img2.BackgroundTransparency = 1
img2.ImageColor3 = Color3.new(0,255,255)




local lolf = true
local shake = false
local go2 = false
local up = 0
local grab2 = false
local pushed = false
	base = Instance.new("Part",workspace)
	base.Name = "Base"
base.Transparency = 1
z42d = Instance.new("Sound",game.Players.LocalPlayer.Character)
z42d.Volume = 50
z42d.Looped = true
z42d.SoundId = "rbxassetid://470279287"
z42d:Play()
local jk = false
local kiout = false
local rl = true
ll = 0
local combodamage = 5
local can = 5
local lolwait = 3
local auracan3 = true
local auracan1 = true
local darius1 = true
local ki = true
local darius = true
local kamecolor = "Hot pink"
z42 = Instance.new("Sound",game.Players.LocalPlayer.Character)
z42.Volume = 20
z42.Looped = false
z42.SoundId = "rbxassetid://863808186"
local clickon = false
local beamknockback = 0
local beamdamage = 0.001
local hited1 = false
local hited = false
local kamesize = 1
local kamehameha  = false
local walksound = "rbxassetid://908473722"
local moving = false
local poon = false

local v3 = Vector3.new
	divine = Instance.new("Part",game.Players.LocalPlayer.Character)
	divine.Size = Vector3.new(0.5,0.5,3)
	divine.Position = v3(5,50,5)
	
	divine.BrickColor = BrickColor.new("Pink")
	divine.Transparency = 1
	divinemesh = Instance.new("SpecialMesh",divine)
	divinemesh.MeshType = "Sphere"
	divinemesh.Scale = v3(1,1,1)
	
	
	
	------------------------------------------------------------------
	divine2 = Instance.new("Part",game.Players.LocalPlayer.Character)
	divine2.Size = Vector3.new(0.5,0.5,3)
	divine2.Position = v3(5,5,5)
	
	divine2.BrickColor = BrickColor.new("Pink")
	divine2.Transparency = 1
	divinemesh = Instance.new("SpecialMesh",divine2)
	divinemesh.MeshType = "Sphere"
	divinemesh.Scale = v3(1,1,1)
	
	
	
	------------------------------------------------------------------
	divine3 = Instance.new("Part",game.Players.LocalPlayer.Character)
	divine3.Size = Vector3.new(0.5,0.5,3)
	divine3.Position = v3(5,8,5)
	
	divine3.BrickColor = BrickColor.new("Pink")
	divine3.Transparency = 1
	divinemesh = Instance.new("SpecialMesh",divine3)
	divinemesh.MeshType = "Sphere"
	divinemesh.Scale = v3(1,1,1)
	
	
	
	------------------------------------------------------------------
	divine4 = Instance.new("Part",game.Players.LocalPlayer.Character)
	divine4.Size = Vector3.new(0.5,0.5,3)
	divine4.Position = v3(5,3,5)
	
	divine4.BrickColor = BrickColor.new("Pink")
	divine4.Transparency = 1
	divinemesh = Instance.new("SpecialMesh",divine4)
	divinemesh.MeshType = "Sphere"
	divinemesh.Scale = v3(1,1,1)
	
	
	
	------------------------------------------------------------------
	divine5 = Instance.new("Part",game.Players.LocalPlayer.Character)
	divine5.Size = Vector3.new(0.5,0.5,3)
	divine5.Position = v3(5,55,5)
	
	divine5.BrickColor = BrickColor.new("Pink")
	divine5.Transparency = 1
	divinemesh = Instance.new("SpecialMesh",divine5)
	divinemesh.MeshType = "Sphere"
	divinemesh.Scale = v3(1,1,1)
	
	
	
	------------------------------------------------------------------
	divine6 = Instance.new("Part",game.Players.LocalPlayer.Character)
	divine6.Size = Vector3.new(0.5,0.5,3)
	divine6.Position = v3(5,5,5)
	
	divine6.BrickColor = BrickColor.new("Pink")
	divine6.Transparency = 1
	divinemesh = Instance.new("SpecialMesh",divine6)
	divinemesh.MeshType = "Sphere"
	divinemesh.Scale = v3(1,1,1)


local new=Instance.new
local rad=math.rad
local cf=CFrame.new
local v3=Vector3.new
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
beam1.BrickColor=BrickColor.new(kamecolor)
beam1.Color = Color3.fromRGB(35,0,53)
beam1.Size=Vector3.new(1,1,1)
beam1.Transparency=0
beam1.Anchored=true
local ms=Instance.new('BlockMesh',beam1)
local inner1=beam1:Clone()
inner1.Transparency=1
inner1.Material='SmoothPlastic'
inner1.BrickColor=BrickColor.new(kamecolor)
inner1.Color = Color3.fromRGB(35,0,53)
local ms2=inner1.Mesh

local expl1=inner1:Clone()
expl1.Mesh:Destroy()
expl1.Material='Neon'
expl1.BrickColor=BrickColor.new(kamecolor)
expl1.Color = Color3.fromRGB(35,0,53)
expl1.Size=Vector3.new(1,1,1)
expl1.Transparency=0
pl=Instance.new('PointLight',expl1)
pl.Color=expl1.BrickColor.Color
pl.Range=pl.Range*2
pl.Name='light'
local br=pl.Range

local exa1=expl1:Clone()
exa1.Size=Vector3.new(1,1,1)
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

if hit and s1.Volume > .3 and parti/8==math.floor(parti/8) then
	
	if hit.Parent:IsA("Model") and hit ~= workspace.Base then
		hit.Parent:BreakJoints()
		
		wait()
	end
	if hit.Parent:IsA("Part") and hit ~= workspace.Base then
		hit.Anchored = false
		hit.Position = hit.Position + Vector3.new(0,1,0)
		block = Instance.new("BodyForce",hit)
block.Force = beam1.CFrame.lookVector 
s1.Volume=s1.Volume+0.0034

hit.Position = hit.Position + Vector3.new(0,1,0)
		block = Instance.new("BodyForce",hit)
block.Force = beam1.CFrame.lookVector

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

expl1.Transparency=0
expl1.CFrame=cf(pos)*ang(math.random(0,180),math.random(0,180),math.random(0,180))

exa1.CFrame=wep.CFrame*cf(0,-1.5,0)*ang(math.random(0,180),math.random(0,180),math.random(0,180))

end
end)

local base = true
local ssjr = false
local down2 = false
local ok = 0
local lala = false
local walkon = false
local idle = true
local idle1 = true
local canattack = true
local nohit = 0
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
zwc = Instance.new("Sound",torso)
zwc.Volume = 1
zwc.Looped = false
zwc.SoundId = "rbxassetid://137579113"
local hum = char.Humanoid
hum.Name = "loldar"
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local walk = true
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local canattack = true
hed.face.Texture = "http://www.roblox.com/asset/?id=665350491"
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
function stance1()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(15),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(0)), 1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(12),math.rad(15),math.rad(30)), 0.1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(12),math.rad(15),math.rad(-30)), 0.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(15), math.rad(10)), 0.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-15), math.rad(-40), math.rad(-5)), 0.1)--leg
end
-------------------------------------------------------------
function stance2()
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.3,-0.5)*CFrame.Angles(math.rad(160),math.rad(210),math.rad(0)), 0.1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.2,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(0)), 0.1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, .2) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.1)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.2) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(20)), 0.1)--rleg
		
end
----------------------------------------------------------
z41 = Instance.new("Sound",torso)
z41.Volume = 20
z41.Looped = false
z41.SoundId = "rbxassetid://863807725"
z412 = Instance.new("Sound",torso)
z412.Volume = 20
z412.Looped = false
z412.SoundId = "rbxassetid://895090420"
z4122 = Instance.new("Sound",torso)
z4122.Volume = 20
z4122.Looped = false
z4122.SoundId = "rbxassetid://897147945"
function swing1()
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.5,-1)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-70)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)--leg
end

z41:Play()
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(60)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)--leg
end
end
function swing11()
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.5,-1)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-70)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)--leg
end

z412:Play()
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(60)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)--leg
end
end
------------------------------------------------------------------------------------------------
function swing2()
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-200),math.rad(0),math.rad(30)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)--leg
end

z41:Play()
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(-10),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(10), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.3,-.4)*CFrame.Angles(math.rad(40),math.rad(0),math.rad(-50)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-30)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(0), math.rad(0)), 0.4)--leg
end
end
-----------------------------------------------------------------------------------------------
function swing3()
	
z41:Play()
for i = 1, 7 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.4)--leg
		torso.CFrame = torso.CFrame * CFrame.Angles(0,-.928,0)+ Vector3.new(0,5,0)
		
end

end
------------------------------------------------------------------------------------------------
function firstswing()
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.5,-1)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-70)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)--leg
end

for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(40)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), 0.4)--leg
end
end
function flytowards()
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(10)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)--leg
end
end
	function swings()
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.5,-1)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-70)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)--leg
end


for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(30)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), 0.4)--leg
end
z42:Play()
end
-----------------------------------------------
function divineswinging()
	shot1 = true
for i = 1, 4 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.8)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8,0.5,-1)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-120)), 0.8)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.8)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.8)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), 0.8)--leg
end
z42:Play()
for i = 1, 4 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.8)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(120)), 0.8)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.8)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-18)), 0.8)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(10)), 0.8)--leg
end
z42:Play()
for i = 1, 4 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(-10),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(10), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.3,-.4)*CFrame.Angles(math.rad(40),math.rad(0),math.rad(-50)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-30)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(0), math.rad(0)), 0.4)--leg
end
z42:Play()
for i = 1, 4 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.8)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8,0.5,-1)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-120)), 0.8)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.8)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.8)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), 0.8)--leg
end
z42:Play()
for i = 1, 4 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.8)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(120)), 0.8)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.8)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-18)), 0.8)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(10)), 0.8)--leg
end
z42:Play()
for i = 1, 4 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.8)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8,0.5,-1)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-120)), 0.8)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.8)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.8)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), 0.8)--leg
end
z42:Play()
z4122:Play()
for i = 1, 4 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(30)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), 0.4)--leg
end

end
-----------------------------------------------------------------------------------------
function divineend()
	
for i = 1, 7 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(80)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.4)--leg
		torso.CFrame = torso.CFrame * CFrame.Angles(0,.88,0)
end
wait(0.5)
for i = 1, 7 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(80)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.4)--leg
		torso.CFrame = torso.CFrame * CFrame.Angles(0,.88,0)
end
kiweld7.C0 = CFrame.new(-1.7,-3,0) * CFrame.Angles(rad(180),rad(0),rad(40))
for i = 1, 15 do
		wait()
		
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(60),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8,1.5,-0.3)*CFrame.Angles(math.rad(190),math.rad(40),math.rad(-50)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-70)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)--leg
end
end
---------------------------------------------------------
local block = Instance.new("Part",torso)
block.Size = Vector3.new(0.1,0.1,0.1)
block.Position = block.Position + Vector3.new(2,2,2)
block.Transparency = 1
local weld = Instance.new("Weld",torso)
weld.Part0 = torso
weld.Part1 = block
weld.C0 = CFrame.new(0,3,0)
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
part2.Color = ColorSequence.new(Color3.fromRGB(183,39,212))
part2.Size = NumberSequence.new(7)
part2.Transparency = NumberSequence.new(1)
part2.LockedToPart = true
part2.Rate = 3
part2.Texture = "http://www.roblox.com/asset/?id=894173257"
part2.ZOffset = -3

local part7 = Instance.new("ParticleEmitter",block)
part7.Lifetime = NumberRange.new(5)
part7.Speed = NumberRange.new(0)

part7.Size = NumberSequence.new(7)
part7.Transparency = NumberSequence.new(1)
part7.LockedToPart = true
part7.Rate = 3
part7.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
part7.Texture = "http://www.roblox.com/asset/?id=894173257"
part7.ZOffset = -1
local model = Instance.new("Model",torso)
local part3 = Instance.new("ParticleEmitter",block2)
part3.Lifetime = NumberRange.new(1)
part3.Speed = NumberRange.new(5)
part3.Color = ColorSequence.new(Color3.fromRGB(255,0,102))
part3.Transparency = NumberSequence.new(1)
part3.Size = NumberSequence.new(0.5)
part3.LockedToPart = true
part3.Rate = 10
part3.Texture = "http://www.roblox.com/asset/?id=549349471"
part3.ZOffset = -0.5
part3.SpreadAngle = Vector2.new(50,0)
	aura1 = Instance.new("ParticleEmitter",torso)
aura1.Transparency = NumberSequence.new(1)
aura1.Size = NumberSequence.new(5)
aura1.Speed = NumberRange.new(0)
aura1.Lifetime = NumberRange.new(5)
aura1.LockedToPart = true
aura1.Rate = 3.5
aura1.Color = ColorSequence.new(Color3.new(0,0,0))

aura1.ZOffset = 2
aura1.Lifetime = NumberRange.new(3)



ypcall(function()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=432851554"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=432851568"
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
Hair7.BrickColor = BrickColor.new("Really black")
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
aurapart3 = Instance.new("Part",char)
aurapart3.Size = Vector3.new(0.1,0.1,0.1)
aurapart3.Position = Vector3.new(0,2,0)
aurapart3.Transparency = 1
aurapart3.CanCollide = false
auraweld3 = Instance.new("Weld",char)
auraweld3.Part0 = aurapart3
auraweld3.Part1 = torso
auraweld3.C0 = CFrame.new(0,-3,0)
aura3 = Instance.new("ParticleEmitter",aurapart3)
aura3.Transparency = NumberSequence.new(1)
aura3.Color = ColorSequence.new(Color3.new(0,0,0))
aura3.Size = NumberSequence.new(8)
aura3.Speed = NumberRange.new(0)
aura3.LockedToPart = true
aura3.Rate = 5
aura3.Lifetime = NumberRange.new(5)
aura3.ZOffset = -5
	z2 = Instance.new("Sound",torso)
z2.Volume = 3
z2.Looped = false
z2.SoundId = "rbxassetid://908489666"
	z2d = Instance.new("Sound",torso)
z2d.Volume = 20
z2d.Looped = false
z2d.SoundId = "rbxassetid://663610350"
z4r = Instance.new("Sound",torso)
z4r.Volume = 5
z4r.Looped = false
z4r.SoundId = "rbxassetid://908474188"

mouse.KeyDown:connect(function(Key)
if Key == "r" then
if canattack == true then


kamehamehaon = true

			idle = false
				
			idle1 = false
			canattack = false
			hum.WalkSpeed = 0
		
		

for i = 1,25 do
wait()
		
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(85),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-85), math.rad(0)), 0.1)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,0)*CFrame.Angles(math.rad(30),math.rad(-40),math.rad(-10)), 0.1)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.2,-0.2)*CFrame.Angles(math.rad(30),math.rad(40),math.rad(40)), 0.1)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.1)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.1)--rleg
		end
		
	if ssjr == true then	
		chatfunc("Kaaaaaaa")
z2d:Play()
wait(3)
chatfunc("Meeeeeeee")
	else
		z2:Play()
		chatfunc("Kame")
end		
		partaura.Size = NumberSequence.new(0.1)
		
		partaura.Transparency = NumberSequence.new(0)
		partaura1.Transparency = NumberSequence.new(0)
		kamehameha = true
		if ssjr == true then
			
		wait(2.5)
		chatfunc("Haaaaaa")
		wait(3.5)
		chatfunc("Meeeeeee")
		wait(2)
		chatfunc("HA")
		wait(0.5)
		else
			
			wait(2)
			chatfunc("Hame")
			wait(2)
		end
		if kamehamehaon == true then
		kamehamehaon = false
		hited = true
		wait(0.1)
	point = true
	kamehamehaon = false
kamehameha = false



partaura.Transparency = NumberSequence.new(1)
partaura1.Transparency = NumberSequence.new(1)
if ssjr == false then
z2:Stop()
z4r:Play()
chatfunc("HAAAAAAAAAA")
end


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
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
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
partaura.Color = ColorSequence.new(Color3.fromRGB(35,0,53))
partaura.Rate = 2
partaura.ZOffset = 0
partaura1 = Instance.new("ParticleEmitter",partt)
partaura1.Size = NumberSequence.new(5)
partaura1.LockedToPart = true

partaura1.Transparency = NumberSequence.new(1)
partaura1.Texture = "http://www.roblox.com/asset/?id=243660364"
partaura1.Color = ColorSequence.new(Color3.fromRGB(35,0,53))
partaura1.Speed = NumberRange.new(0)
partaura1.Rate = 3
partaura1.ZOffset = -1

partaura1.RotSpeed = NumberRange.new(-10,10)
partaura1.SpreadAngle = Vector2.new(360,360)
partaura1.Rotation = NumberRange.new(0,360)
aj = 0

zh = Instance.new("Sound",torso)
zh.Volume = 1
zh.Looped = true
zh.SoundId = "rbxassetid://491515754"
mouse.KeyDown:connect(function(key)
	 if key == "b" then
		if ssjr == false then
		if canattack == true then
			chatfunc("I Have Fully Controlled Goku's Body")
			wait(4)
			chatfunc("Time To Show You The True Power Of A God")
for i = 1,10 do
	wait()
z42d.Volume = z42d.Volume - 5
end
			idle = false
			kiout = false
			kiblade.Transparency = 1
	trail.Enabled = false
			base = false
			hum.WalkSpeed = 0
			lolwait = 6
			local part9 = Instance.new("ParticleEmitter",block)
part9.Lifetime = NumberRange.new(100)
part9.Speed = NumberRange.new(50)
part9.Color = ColorSequence.new(Color3.fromRGB(246,111,255))
part9.Size = NumberSequence.new(15)
part9.Transparency = NumberSequence.new(1)
part9.LockedToPart = true
part9.Rate = 300
part9.Texture = "http://www.roblox.com/asset/?id=894173257"
part9.ZOffset = -3
				
			idle1 = false
			Colors = {"Really black", "Really black"}
			canattack = false
			wait(0.1)
		
			for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.10)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(10)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-10)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.4)--rleg
			end
			shake = true
			partt2 = Instance.new("Part",char)
partt2.Position = torso.Position - Vector3.new(0,2,0)
partt2.Transparency = 1
partt2.CanCollide = true
partt2.Size = Vector3.new(15,0.1,15)
partaura1 = Instance.new("ParticleEmitter",partt2)
partaura1.Size = NumberSequence.new(0.8)
partaura1.LockedToPart = true
partaura1.Lifetime = NumberRange.new(3)
partaura1.Transparency = NumberSequence.new(0)
partaura1.Texture = "http://www.roblox.com/asset/?id=570874272"

partaura1.Speed = NumberRange.new(5)
partaura1.Rate = 2
			
			aura3.Transparency = NumberSequence.new(0)
			
				z1 = Instance.new("Sound",torso)
z1.Volume = 100
z1.Looped = false
z1.SoundId = "rbxassetid://927472099"
z1:Play()
game.Lighting.TimeOfDay = 0
smoke.Enabled = true
light.Enabled = true
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
wait(0.3)

wait(0.3)
GroundWave1()
shake = false
hed.face.Texture = "http://www.roblox.com/asset/?id=601974383"
hum.CameraOffset = Vector3.new(0,0,0)
part9.Transparency = NumberSequence.new(0.4)
aura3.Transparency = NumberSequence.new(1)

aura1.Transparency = NumberSequence.new(1)
	Mesh.MeshId = "rbxassetid://430344159"
		Mesh.Scale = Vector3.new(6,6,6)
		Weld1.C0 = CFrame.new(-.25, 1.2, .34)
		Hair7.BrickColor = BrickColor.new("Carnation pink")
	
for i = 1, 5 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.3,.2)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(0)), 0.8)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.5,0)*CFrame.Angles(math.rad(-120),math.rad(0),math.rad(60)), 0.8)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.5,0)*CFrame.Angles(math.rad(-120),math.rad(0),math.rad(-60)), 0.8)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.8)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10)), 0.8)--leg
end
wait(3)
part9:Destroy()
smoke:Destroy()
zh:Play()
Colors = {"Hot pink", "Hot pink"}
GroundWave1()
wait(0.3)


GroundWave1()
wait(0.3)

GroundWave1()
wait(0.3)

GroundWave1()
wait(0.3)
GroundWave1()
			part2.Transparency = NumberSequence.new(0)
			part3.Transparency = NumberSequence.new(0)
			part7.Transparency = NumberSequence.new(0)
			hed.Anchored = false
			
		ssjr = true
		beam1.Color = Color3.fromRGB(203,16,97)
		inner1.Color = Color3.fromRGB(203,16,97)
		expl1.Color = Color3.fromRGB(203,16,97)
		exa1.Color = Color3.fromRGB(203,16,97)
		partaura.Color = ColorSequence.new(Color3.fromRGB(203,16,97))
		partaura1.Color = ColorSequence.new(Color3.fromRGB(255,102,204))
		wait(1)
		for i = 1,20 do
			wait()
			z1.Volume = z1.Volume - 0.5
		end
for i = 1,50 do
	wait()
z42d.Volume = z42d.Volume + 1
end
		idle = true
		idle1 = true
		canattack = true
		chatfunc("Aint This A Beautiful Color?")
		wait(4)
		chatfunc("I Shall Call This")
		wait(4)
		chatfunc("Rosé")
		wait(3)
		chatfunc("Yes Super Sayian Rosé")
		wait(3)
		if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
hum.WalkSpeed = 16
		
		end
		end
		end
end)
local hit1 = true
local hit2 = false
local hit3 = false
local hit4 = false
zw = Instance.new("Sound",torso)
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
zw:Play()
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
mouse.KeyDown:connect(function(key)
        if key == "e" then
	 if hit1 == true and canattack == true and kiout == false then
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
	
zwc:Play()
end
end
hand1.Touched:connect(touch1)
rightpunch()

hand1:Destroy()
canattack = true
	end
	
	
	
	
	if hit1 == true and canattack == true and kiout == true then
		nohit = 0
	canattack = false
	hit1 = false
	kiblade5 = Instance.new("Part",char)
kiblade5.Name = "Blade"
kiblade5.Size = v3(1,5,1)
kiblade5.Transparency = 1
kiblade5.Color = Color3.fromRGB(170,0,127)
kiblade5.Position = v3(999,999,999)
kiblade5.CanCollide = false


kiweld5 = Instance.new("Weld",kiblade5)
kiweld5.Part0 = rarm
kiweld5.Part1 = kiblade5
kiweld5.C0 = CFrame.new(0,-2.1,0) * CFrame.Angles(rad(180),rad(0),rad(0))
	hit2 = true
	hit3 = false
	hit4 = false
	function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - combodamage / 2

z42:Play()
end
end
kiblade5.Touched:connect(touch1)
	hum.WalkSpeed = 0
	swing1()
	hum.WalkSpeed = 16
	
	canattack = true
kiblade5:Destroy()
	end
end






end)
mouse.KeyDown:connect(function(key)
        if key == "e" then
	if hit2 == true and canattack == true and kiout == false then
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

zwc:Play()
end
end
hand2.Touched:connect(touch1)
leftpunch()

canattack = true
hand2:Destroy()

	end
	
	if hit2 == true and canattack == true and kiout == true then
	canattack = false
	nohit = 0
	kiblade5 = Instance.new("Part",char)
kiblade5.Name = "Blade"
kiblade5.Size = v3(1,5,1)
kiblade5.Transparency = 1
kiblade5.Color = Color3.fromRGB(170,0,127)
kiblade5.Position = v3(999,999,999)
kiblade5.CanCollide = false


kiweld5 = Instance.new("Weld",kiblade5)
kiweld5.Part0 = rarm
kiweld5.Part1 = kiblade5
kiweld5.C0 = CFrame.new(0,-2.1,0) * CFrame.Angles(rad(180),rad(0),rad(0))
	hit1 = false
	hit2 = false
	hit3 = true
	hit4 = false
	function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - combodamage / 2
	
z42:Play()
end
end
kiblade5.Touched:connect(touch1)
	hum.WalkSpeed = 0
	swing2()
	hum.WalkSpeed = 16
	
	canattack = true
kiblade5:Destroy()
	end
	
	end
end)
mouse.KeyDown:connect(function(key)
        if key == "e" then
	if hit3 == true and canattack == true and kiout == false then
	canattack = false
	nohit = 0
	
	hit1 = true
	hit2 = false
	hit3 = false
	hit4 = false
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
	
zwc:Play()
end
end
hand3.Touched:connect(touch1)
rightkick()

canattack = true
hand3:Destroy()

	end
	
	if hit3 == true and canattack == true and kiout == true then
		if clickon == true then
		jk = true
	clickon = false
	end
	canattack = false
	kiblade5 = Instance.new("Part",char)
kiblade5.Name = "Blade"
kiblade5.Size = v3(1,5,1)
kiblade5.Transparency = 1
kiblade5.Color = Color3.fromRGB(170,0,127)
kiblade5.Position = v3(999,999,999)
kiblade5.CanCollide = false


kiweld5 = Instance.new("Weld",kiblade5)
kiweld5.Part0 = rarm
kiweld5.Part1 = kiblade5
kiweld5.C0 = CFrame.new(0,-2.1,0) * CFrame.Angles(rad(180),rad(0),rad(0))
	nohit = 0
	hit1 = true
	hit2 = false
	hit3 = false
	hit4 = false
	function touch1(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - combodamage / 2
	hit.Parent:findFirstChild("Torso").CFrame =	hit.Parent:findFirstChild("Torso").CFrame + v3(0,5,0)
	
z42:Play()
end
end
kiblade5.Touched:connect(touch1)
hum.WalkSpeed = 0
	swing3()
	hum.WalkSpeed = 16
	
	canattack = true
	
kiblade5:Destroy()
wait(0.4)
if jk == true then
		jk = false
		clickon = true
	end
	end
	
	
	
	
	
	
	end
end)

	
	
	
	
	
	
	
	












kiblade = Instance.new("Part",char)
kiblade.Name = "Blade"
kiblade.Size = v3(1,5,1)
kiblade.Transparency = 1
kiblade.Color = Color3.fromRGB(170,0,127)
kiblade.Position = v3(999,999,999)
kiblade.CanCollide = false
kiblademesh = Instance.new("SpecialMesh",kiblade)
kiblademesh.MeshType = "FileMesh"
kiblademesh.MeshId = "rbxassetid://898849476"
kiblademesh.Scale = v3(0.01,0.008,0.01)
kiweld7 = Instance.new("Weld",kiblade)
kiweld7.Part0 = rarm
kiweld7.Part1 = kiblade
kiweld7.C0 = CFrame.new(0,-2.1,0) * CFrame.Angles(rad(180),rad(0),rad(0))
kiblade1 = Instance.new("Part",char)
kiblade1.Name = "Blade"
kiblade1.Transparency = 1
kiblade1.Size = v3(0.1,0.1,0.1)
kiblade1.Position = v3(999,999,999)
kiblade1.CanCollide = false
kiblademesh = Instance.new("SpecialMesh",kiblade1)
kiblademesh.MeshType = "Sphere"
kiblademesh.Scale = v3(1,1,1)
kiweld = Instance.new("Weld",kiblade1)
kiweld.Part0 = rarm
kiweld.Part1 = kiblade1
kiweld.C0 = CFrame.new(0,-1,0)
kiblade2 = Instance.new("Part",char)
kiblade2.Name = "Blade"
kiblade2.Size = v3(0.1,0.1,0.1)
kiblade2.Transparency = 1
kiblade2.Position = v3(999,999,999)
kiblade2.CanCollide = false
kiblademesh = Instance.new("SpecialMesh",kiblade2)
kiblademesh.MeshType = "Sphere"
kiblademesh.Scale = v3(1,1,1)
kiweld = Instance.new("Weld",kiblade2)
kiweld.Part0 = rarm
kiweld.Part1 = kiblade2
kiweld.C0 = CFrame.new(0,-4.5,0)
torso = game.Players.LocalPlayer.Character.Torso
head = game.Players.LocalPlayer.Character.Head
torso1 = Instance.new("Attachment",kiblade1)
head1 = Instance.new("Attachment",kiblade2)
trail = Instance.new("Trail",torso)
trail.Color = ColorSequence.new(Color3.fromRGB(170,0,127))
trail.Attachment0 = torso1
trail.Attachment1 = head1
trail.Lifetime = 0.5
trail.Enabled = false
light = Instance.new("PointLight",torso)
light.Enabled = false
light.Color = Color3.fromRGB(120,6,105)
light.Brightness = 999
light.Range = 50
smoke = Instance.new("Smoke",torso)
smoke.RiseVelocity = 5
smoke.Color = Color3.fromRGB(170,0,127)
smoke.Size = 20
smoke.Opacity = 0.5
smoke.Enabled = false

mouse.KeyDown:connect(function(key)
        if key == "n" then
	if kiout == false then
		if canattack == true then
			canattack = false
			idle=false
			idle1=false
			wait(0.1)
	kiout = true
	swing11()
	kiblade.Transparency = 0
	trail.Enabled = true
	wait(0.6)
	canattack = true
			idle=true
			idle1=true
	end
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
mouse.KeyDown:connect(function(key)
	if key == "m" then
	if kiout == true then
		
		
	kiout = false
	kiblade.Transparency = 1
	trail.Enabled = false
		
		end
	end
end)



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
        if key == "u" then
	if canattack == true then
		
			if kiout == false then
				grab2 = false
					grabhit3 = Instance.new("Part",char)
grabhit3.Size = Vector3.new(2,2,2)
grabhit3.Name = "LOL"
grabhit3.Position = Vector3.new(999,999,999)
grabhit3.Transparency = 1
grabhit3.CanCollide = false
grabweld3 = Instance.new("Weld",grabhit3)
grabweld3.Part0 = torso
grabweld3.Part1 = grabhit3
grabweld3.C0 = CFrame.new(0,0,-2)
				
				grab8 = false	
				idle = false						
			idle1 = false
		canattack = false
				hum.HipHeight = 0
			
			kiblade.Transparency = 0
	trail.Enabled = true	
	swing11()
	if clickon == true then
		jk = true
	clickon = false
	end
				wait(1.4)
				
				go2 = true
					flytowards()
				
function touch5(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	grabhit3.TouchInterest:Destroy()
				go2 = false


	
	
	
	
	
	
			

	
	
	
	
	
	
	grabhit = Instance.new("Part",char)
grabhit.Size = Vector3.new(5,5,5)
grabhit.Position = Vector3.new(999,999,999)
grabhit.Transparency = 1
grabhit.CanCollide = false
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
	
	t.Anchored = false
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
	grabhit.TouchInterest:Destroy()
	grab2 = true
	t.Anchored = false
	if clickon == true then
		jk = true
	clickon = false
	end
	
	
	
	hu12 = hit.Parent:findFirstChild("Humanoid")
to12 = hit.Parent:findFirstChild("Torso")
he12 = hit.Parent:findFirstChild("Head")
ra12 = hit.Parent:findFirstChild("Right Arm")
la12 = hit.Parent:findFirstChild("Left Arm")
rl12 = hit.Parent:findFirstChild("Right Leg")
ll12 = hit.Parent:findFirstChild("Left Leg")
hu12.WalkSpeed = 0
if hu12.Health > 100 then
	hu12.MaxHealth = 100
	hu12.Health = 100
end




end

if grab2 == true then
	
hu12.Health = hu12.Health - 10
	firstswing()
	hu12.Health = hu12.Health - 10
	z42:Play()
	pushed = true
	go1 = true
	flytowards()

	he12.Anchored = true
	pushed = false
	-------------------------------------------------------------
	grabhit1 = Instance.new("Part",char)
grabhit1.Size = Vector3.new(1,1,1)
grabhit1.Position = Vector3.new(999,999,999)
grabhit1.Transparency = 1
grabhit1.CanCollide = false
grabweld = Instance.new("Weld",grabhit1)
grabweld.Part0 = torso
grabweld.Part1 = grabhit1
grabweld.C0 = CFrame.new(0,0,-2)
function touch(hit)
if not hit.Parent:findFirstChild("Humanoid") then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
	grabhit1.TouchInterest:Destroy()
	go1 = false

-------------------------------------------------------------------
	
	
	swings()
	hu12.Health = hu12.Health - 20
	hu12.Health = hu12.Health - 10
	he12.Anchored = false
	pushed1 = true
	divine.Transparency = .5
	divine2.Transparency = .5
	divine3.Transparency = .5
	divine4.Transparency = .5
	divine5.Transparency = .5
	divine6.Transparency = .5
	
	divineswinging()
	
	hu12.Health = hu12.Health - 10
	pushed1 = false
	shot1 = false
	divine.CFrame = to12.CFrame + hed.CFrame.lookVector
		divine2.CFrame = ra12.CFrame + hed.CFrame.lookVector + v3(0,0,0)
		divine3.CFrame = la12.CFrame + hed.CFrame.lookVector + v3(0,0,0)
		divine4.CFrame = rl12.CFrame + hed.CFrame.lookVector + v3(2.1,1.3,0)
		divine5.CFrame = ll12.CFrame + hed.CFrame.lookVector + v3(-1.7,1.6,0)
		divine6.CFrame = he12.CFrame + hed.CFrame.lookVector + v3(1.9,-1,0)
	
	divine.Anchored = true
	divine2.Anchored = true
	divine3.Anchored = true
	divine4.Anchored = true
	divine5.Anchored = true
	divine6.Anchored = true
	he12.Anchored = true
	go1 = false
	part6 = Instance.new("Part",to12)
part6.Size = Vector3.new(1,1,1)
part6.Transparency = 0
part6.Position = hit.Position
part6.BrickColor = BrickColor.new("Hot pink")
partmesh = Instance.new("SpecialMesh",part6)
partmesh.MeshType = "Sphere"
partmesh.Scale = Vector3.new(1,1,1)
partweld1 = Instance.new("Weld",to12)
partweld1.Part0 = to12
partweld1.Part1 = part6
partweld1.C0 = CFrame.new(0,0,0)

	divineend()
	
	
	wait(0.4)
	hu12:Destroy()
	
	for i = 1,50 do
	wait()
	partmesh.Scale = partmesh.Scale + Vector3.new(7,7,7)
	part6.Transparency = part6.Transparency + 0.02
	end
	hu12.WalkSpeed = 16
	

------------------------------------------------------------
	hand1:Destroy()
hand2:Destroy()
kiweld7.C0 = CFrame.new(0,-2.1,0) * CFrame.Angles(rad(180),rad(0),rad(0))	
	kiblade.Transparency = 1
	trail.Enabled = false
	
	for i,v in pairs(char:children()) do
    if v:IsA("Accessory") then
        v:Destroy()
    end
end
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
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
grabhit1.Touched:connect(touch)	
end

	
end

	






grabhit.Touched:connect(touch)
end
end
grabhit3.Touched:connect(touch5)


	
	wait(3)
	
	if grab2 == false then
		grabhit3:Destroy()
		go2 = false
	kiblade.Transparency = 1
	trail.Enabled = false
canattack = true
idle = true
	up = 0	
				
			idle1 = true
		if jk == true then
		jk = false
		clickon = true
	end	


	
	end
end
end
		
	
	end
end)
	
	
	
	------------------------------------------------------------------
	throw1 = 3
game:GetService("RunService").RenderStepped:connect(function()
	
	
	if pushed == true then
		
		to12.CFrame = to12.CFrame + hed.CFrame.lookVector * 3 + v3(0,0.51,0)
	end
	if pushed1 == true then
		
		to12.CFrame = to12.CFrame + hed.CFrame.lookVector * 1.5 + v3(0,0,0)
	end
	if go1 == true then
		
		torso.CFrame = CFrame.new(torso.CFrame.p,to12.CFrame.p + v3(0,0,2))
	end
	if go2 == true then
		torso.CFrame = CFrame.new(torso.CFrame.p,t.CFrame.p + v3(0,0,2))
		
	end
	if shot1 == true then
		throw1 = throw1 + 1.5
		divine.CFrame = hed.CFrame + hed.CFrame.lookVector * throw1 + v3(0,0,0)
		divine2.CFrame = hed.CFrame + hed.CFrame.lookVector * throw1 + v3(1,0,0)
		divine3.CFrame = hed.CFrame + hed.CFrame.lookVector * throw1 + v3(-1,-1,0)
		divine4.CFrame = hed.CFrame + hed.CFrame.lookVector * throw1 + v3(2,1,0)
		divine5.CFrame = hed.CFrame + hed.CFrame.lookVector * throw1 + v3(-1,1,0)
		divine6.CFrame = hed.CFrame + hed.CFrame.lookVector * throw1 + v3(2,-1,0)
		
		
	end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if hum.MoveDirection.x > 0 and nohit > 10 or hum.MoveDirection.x < 0 and nohit > 10 then

			if walk == true then
			
			if canattack == true then
			walk = false
			ok = 0
			hum.HipHeight = 0
			lala = false
			down2 = false
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
	if hum.MoveDirection.x == 0 and nohit > 10 then
		if idle1 == true then
			if ssjr == true then
			walkon = false
			idle1 = false
		idle = false
			if canattack == true then
idle = true
idle1 = true
			end
		
		hum.HipHeight = ok
	stance1()
	
	end
		end
	end
	if hum.MoveDirection.x == 0 and nohit > 10 then
		if idle1 == true then
			if base == true then
				hum.HipHeight = 0
				if canattack == true then
idle = true
idle1 = true
end
			walkon = false
			idle1 = false
		idle = false
			if canattack == true then
idle = true
idle1 = true
			end
		
	stance2()
	
	end
		end
	end
	if rl == true then
		rl = false
		nohit = nohit + 0.2	
		rl = true
	end
	
	if lala == false and walkon == false then
		
		ok = ok + 0.05
		
	end
	if ok > 3.9999999 and walkon == false then
		lala = true
		down2 = true
		ok = ok - 0.05
		
	end
	if ok < 0.1111111 and walkon == false then
		down2 = false
		lala = false
	end
	if down2 == true then
		ok = ok - 0.05
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
	
	
	
	
	
	if kamehameha == true then
			aj1 = aj1 + 0.005
			partaura.Size = NumberSequence.new(aj1)
			beam1.Size=beam1.Size + v3(0.01,0.01,0)
			beamdamage = beamdamage + 0.001
			expl1.Size=expl1.Size + v3(0.01,0.01,0.01)*s1.Volume
			exa1.Size=exa1.Size + v3(0.01,0.01,0.01)*s1.Volume
	else
		aj1 = 0.1
		
	end
	
if clickon == true then
		
	torso.CFrame = CFrame.new(torso.CFrame.p,t.CFrame.p)
	if hu.Health > 100 then
		hu.MaxHealth = 100
		hu.Health = 100
	end
	if hu.Health < 1 then
		clickon = false
	
		end
		
	end
	
	if darius == true then
		darius = false
	wait(0.1)
part2.Texture = "http://www.roblox.com/asset/?id=926975911" 
wait(0.1)
part2.Texture = "http://www.roblox.com/asset/?id=926976058"
wait(0.1)
part2.Texture = "http://www.roblox.com/asset/?id=926976185"


darius = true
	end
if darius1 == true then
		darius1 = false
	wait(0.1)
part7.Texture = "http://www.roblox.com/asset/?id=927229024" 
wait(0.1)
part7.Texture = "http://www.roblox.com/asset/?id=927282857"
wait(0.1)
part7.Texture = "http://www.roblox.com/asset/?id=927283016"


darius1 = true
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
	

	
	
	
	
	
	
	
	
	
	if shake == true then
		if lolf == true then
		lolf = false
		
hum.CameraOffset = Vector3.new(math.random(-0.7,0.7),math.random(-0.7,0.7),math.random(-0.7,0.7))



		
		wait()
	lolf = true
	end
	end
	
end)
zwc1 = Instance.new("Sound",torso)
zwc1.Volume = 5
zwc1.Looped = false
zwc1.SoundId = "rbxassetid://744770874"
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

zwc1:Play()
if clickon == true then
torso.CFrame = t.CFrame - Vector3.new(0,0,2)
else
	torso.CFrame = torso.CFrame + torso.CFrame.lookVector * 40
end
canattack = true
idle = true
hum.WalkSpeed = 10
idle1 = true
end


end
end)

ee = Instance.new("Part",char)
ee.Size = Vector3.new(0.2,0.2,0.2)
ee.Position = Vector3.new(9999999,9999999,9999999)
ee.Shape = "Ball"
ee.BrickColor = BrickColor.new("Lime green")
ee1 = Instance.new("Part",char)
ee1.Size = Vector3.new(0.18,0.18,0.18)
ee1.Position = Vector3.new(999999,999999,999999)
ee1.Shape = "Ball"
ee1.BrickColor = BrickColor.new("New Yeller") 
ee2 = Instance.new("Part",char)
ee2.Size = Vector3.new(0.06,0.06,0.06)
ee2.Shape = "Ball"
ee2.BrickColor = BrickColor.new("New Yeller")
ee2.Position = Vector3.new(99999,99999,99999)
ee3 = Instance.new("Part",char)
ee3.Size = Vector3.new(0.06,0.06,0.06)
ee3.Shape = "Ball"
ee3.BrickColor = BrickColor.new("New Yeller")
ee3.Position = Vector3.new(9999,9999,9999)
ee4 = Instance.new("Part",char)
ee4.Size = Vector3.new(0.1,0.1,0.1)
ee4.Shape = "Ball"
ee4.BrickColor = BrickColor.new("New Yeller")
ee4.Position = Vector3.new(999,999,999)
eew = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew.Part0 = game.Players.LocalPlayer.Character.Head
eew.Part1 = ee
eew.C0 = CFrame.new(-0.68,-0.22,0)
eew1 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew1.Part0 = ee
eew1.Part1 = ee1
eew1.C0 = CFrame.new(0,0.02,0)
eew2 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew2.Part0 = game.Players.LocalPlayer.Character.Head
eew2.Part1 = ee2
eew2.C0 = CFrame.new(-0.67,-0.1,0)
eew3 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew3.Part0 = game.Players.LocalPlayer.Character.Head
eew3.Part1 = ee3
eew3.C0 = CFrame.new(-0.66,-0.05,0)
eew4 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew4.Part0 = game.Players.LocalPlayer.Character.Head
eew4.Part1 = ee4
eew4.C0 = CFrame.new(-0.64,-0.01,0)
chatfunc("So This Is Goku Body")
wait(4)
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end