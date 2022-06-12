Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
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
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local m = Instance.new("Model",Character)
m.Name = "WeaponModel"

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

	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
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

local TrailColor = ("Institutional white")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "Neon"
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
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "Neon"
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

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
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


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
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

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	fp.Position=Character.Torso.Position
	nooutline(fp)
	fp.Material=material
	fp:BreakJoints()
	return fp
end
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh=it(Mesh)
	mesh.Parent=part
	if Mesh=="SpecialMesh" then
		mesh.MeshType=meshtype
		mesh.MeshId=meshid
	end
	mesh.Offset=offset
	mesh.Scale=scale
	return mesh
end
function weld(parent,part0,part1,c0,c1)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	weld.C1=c1
	return weld
end

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	fp.Position=Character.Torso.Position
	nooutline(fp)
	fp.Material=material
	fp:BreakJoints()
	return fp
end
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh=it(Mesh)
	mesh.Parent=part
	if Mesh=="SpecialMesh" then
		mesh.MeshType=meshtype
		mesh.MeshId=meshid
	end
	mesh.Offset=offset
	mesh.Scale=scale
	return mesh
end
function weld(parent,part0,part1,c0,c1)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	weld.C1=c1
	return weld
end

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Handle",Vector3.new(0.777778268, 0.259259313, 0.518518627))
handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(0.741678238, 0.794418335, -0.0370121002, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.600000203, 0.200000003, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.4672184, 1.46959305, 0.0142880678, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(6.74074316, 0.259259313, 1.2962966))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.94812012, 9.15527344e-005, -0.00979995728, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-10.5536575, -3.57627869e-006, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.04999995, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(6.74074316, 0.259259313, 1.2962966))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70182037, 9.15527344e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-9.3460083e-005, -0.324073672, 12.3684731, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-5.53131104e-005, -0.207403183, 12.0443993, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.810000002, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.518518686, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.7220459e-005, -0.207421303, 12.0443993, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.810000002, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(9.3460083e-005, -0.324074984, 12.3684731, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.18214798, 0.184528351, 0.00185966492, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.09992981, 1.09993172, 2.31266022e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.733297348, -0.733297348, -1.33514404e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.274971008, -0.27497673, 3.43322754e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.641641617, 0.641643524, 1.74045563e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.92491722, 1.92491722, 5.7220459e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.37493706, 1.37493706, 3.4570694e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.46542358, 1.46780205, 0.00187504292, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.0916500092, -0.0916557312, 1.71661377e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.641609192, -0.641607285, 1.71661377e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.732124329, 0.734502792, 0.00185978413, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(6.22222471, 0.518518627, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0536880493, 7.62939453e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.366659164, -0.366657257, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.183334351, -0.183332443, -1.33514404e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.00829315, 1.00829506, 3.4570694e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.19162178, 1.19162369, 5.17368317e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.55827904, 1.55827904, 5.12599945e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.83205986, 1.83444023, 0.00188946724, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.824943542, -0.824941635, 1.90734863e-006, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.549957275, 0.549959183, -1.31130219e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.274999619, 0.275001526, 3.4570694e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.00117111206, 0.00120735168, 0.00185966492, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.457113266, 0.45949173, -0.00183963776, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.55705452, 1.55943298, -0.00180530548, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.28208542, 1.28446388, 0.00185978413, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.276185989, -0.273807526, -0.00183963776, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.548799515, 0.55116272, 0.00185024738, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.915441513, 0.917819977, 0.00185978413, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.273786545, 0.276166916, -0.00180530548, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.64990616, 1.64990807, 2.31266022e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.74037552, 1.74275398, -0.00180244446, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(1.00948334, -1.00710487, -0.00185012817, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.365472794, 0.367851257, 0.00187504292, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.640443802, 0.642822266, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.28325844, 1.28326035, 2.38418579e-007, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.18331337, 0.183315277, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.00708008, 1.00945854, -0.00180530548, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.826148987, -0.823768616, -0.00183963776, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.824975967, 0.824977875, 3.4570694e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.83322906, 1.83323097, 3.64780426e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.642831802, -0.640453339, -0.00183963776, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0904636383, 0.0928440094, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.0928478241, -0.0904693604, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.549985886, -0.549983978, -1.33514404e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.19040871, 1.19278717, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.823759079, 0.826137543, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.46657944, 1.46658134, 2.31266022e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.733295441, 0.733297348, 2.38418579e-007, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.458320618, 0.458322525, 5.17368317e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.37374115, 1.37611961, -0.00180530548, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(6.22222471, 0.518518627, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0536880493, 0, 7.62939453e-005, 7.26342932e-008, 0, -1, -7.58196705e-008, 1, -5.50710795e-015, 1, 7.58196705e-008, 7.26342932e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.916606903, 0.91660881, 2.38418579e-007, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0916824341, 0.0916843414, 2.67028809e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.734451294, -0.732088089, 0.00185012817, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.916631699, -0.916629791, -1.71661377e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.367816925, -0.365451813, 0.00185966492, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.64874077, 1.65112114, 0.00186932087, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.551136017, -0.548772812, 0.00185012817, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.458297729, -0.458295822, 1.71661377e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.459510803, -0.457132339, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.366638184, 0.366640091, 2.31266022e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.74159431, 1.74159622, 5.12599945e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.184497833, -0.182132721, 0.00183963776, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.917798996, -0.915416718, 0.00183963776, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(6.22222471, 0.518518627, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0536880493, 0.000133514404, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.518518567, 0.518518686, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.90315247, -0.000120162964, 0.847258329, 9.47018997e-009, -1.1920929e-007, 1, -1, -8.30279134e-008, 9.47017753e-009, 8.30279134e-008, -1, -1.19209282e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.518518567, 0.518518686, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.90315247, -0.00012421608, -0.837946296, 9.47018997e-009, -1.1920929e-007, 1, -1, -8.30279134e-008, 9.47017753e-009, 8.30279134e-008, -1, -1.19209282e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.518518686, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133275986, 2.90047836, 4.3380785, -0.999999762, -2.11777547e-008, 3.85407475e-008, 4.39660077e-008, -0.499999642, 0.866025031, 9.29916588e-010, 0.866025269, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.518518686, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120401382, 2.90047836, 4.33810234, 1, 2.27286364e-007, 2.32403181e-007, -3.14910324e-007, 0.499999881, 0.866025448, 8.0634095e-008, -0.866025448, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.518518567, 1.2962966, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.90047836, 3.17142868, 0.000120162964, -1.26123183e-007, 0.49999994, 0.866025448, 8.06344076e-008, -0.866025448, 0.49999994, 1, 1.32893049e-007, 6.89086761e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 0.99000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.518518567, 1.2962966, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.90048981, -3.1714077, 0.000133752823, -1.0990815e-007, -0.49999994, 0.866025388, -9.30000077e-010, -0.866025388, -0.49999994, 1, -5.57594753e-008, 9.47182528e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 0.99000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.03703725, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.78516388, 0.000163555145, -4.44323349, -7.26343217e-008, -1.78813963e-007, 1, -1, -5.96046519e-008, -7.26343359e-008, 5.96046661e-008, -1, -1.78813977e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87590027, 0.000174999237, -4.53397942, -7.26343217e-008, -1.78813963e-007, 1, -1, -5.96046519e-008, -7.26343359e-008, 5.96046661e-008, -1, -1.78813977e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.20371246, 9.27448273e-005, 4.59070015, -1.35872718e-008, -1, -1.78813934e-007, 1, -1.35873384e-008, 3.73972171e-007, -3.73972171e-007, -1.78813934e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.03703725, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.68144608, 8.22544098e-005, -2.112957, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.03703725, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.11297655, 8.32080841e-005, 4.68144417, -1.35872718e-008, -1, -1.78813934e-007, 1, -1.35873384e-008, 3.73972171e-007, -3.73972171e-007, -1.78813934e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.2962966, 0.518518627, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.07218933, 9.1791153e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.03703725, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.78264618, 8.17775726e-005, -4.555583, 7.26343217e-008, 1.78813934e-007, 1, 1, 1.35872735e-008, -7.26343217e-008, -1.35872877e-008, 1, -1.78813934e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87337875, 9.13143158e-005, -4.64633274, 7.26343217e-008, 1.78813934e-007, 1, 1, 1.35872735e-008, -7.26343217e-008, -1.35872877e-008, 1, -1.78813934e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.59070206, 9.1791153e-005, -2.20370197, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-10.8129234, 2.88486481e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.03999996, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.259259313, 1.94444513))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000122070313, -0.116662025, 12.0443993, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.518518686, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.24249268e-005, -0.259274483, 12.1092224, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, 0.583325624, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, 0.259250879, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.05999994, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.24249268e-005, -0.259250879, 12.1092224, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, -0.583348989, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.259259313, 1.94444513))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000122070313, -0.116671681, 12.0443993, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, -0.259255409, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.05999994, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, -0.129636765, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.05999994, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70182037, -1.90734863e-006, 0.129623413, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.05999994, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.05718994e-005, -0.337038875, 12.3684731, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(6.74074316, 0.259259313, 1.2962966))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70182037, -1.90734863e-006, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.119999997, 1.00100005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(7.05718994e-005, -0.33703351, 12.3684731, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.518518686, 0.518518686))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120639801, -3.70452118, -2.79076195, 1, 4.20377333e-008, 2.81075273e-007, 2.82378039e-007, -0.258818924, -0.965925813, 3.21423244e-008, 0.965925813, -0.258818954))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.26083183, -3.08899784, 0.000133752823, -8.63836647e-008, -0.422618359, 0.906307876, -4.29547775e-009, -0.906307757, -0.42261833, 1, -4.04003444e-008, 7.64748265e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 1.2962966, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.90047836, 3.17142868, 0.000120162964, -1.26123183e-007, 0.49999994, 0.866025448, 8.06344076e-008, -0.866025448, 0.49999994, 1, 1.32893049e-007, 6.89086761e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.0921936, 2.85683537, 0.000120639801, -1.09868267e-007, 0.390732348, 0.920504391, -4.35992824e-008, -0.920504391, 0.390732348, 1, 2.79575652e-009, 1.18169858e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 1.2962966, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.90048981, -3.1714077, 0.000133752823, -1.0990815e-007, -0.49999994, 0.866025388, -9.30000077e-010, -0.866025388, -0.49999994, 1, -5.57594753e-008, 9.47182528e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.54734802, -2.42215061, 0.000133991241, -9.79423547e-008, -0.258819193, 0.965925872, 4.70048391e-008, -0.965925872, -0.258819193, 1, 2.00538253e-008, 1.06770791e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 0.518518686, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.89389801, -0.000120162964, 0.847258329, 9.47018997e-009, -1.1920929e-007, 1, -1, -8.30279134e-008, 9.47017753e-009, 8.30279134e-008, -1, -1.19209282e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.560000002, 0.709999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.259259313, 0.518518806))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000130414963, 0.86914444, -4.22298431, -1, -1.22191182e-006, 1.42418617e-006, -1.54888335e-006, 0.965925753, -0.25881955, -1.05940342e-006, -0.25881955, -0.965925753))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 0.518518686, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.89389801, -0.00012421608, -0.837946296, 9.47018997e-009, -1.1920929e-007, 1, -1, -8.30279134e-008, 9.47017753e-009, 8.30279134e-008, -1, -1.19209282e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.560000002, 0.709999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.259259313, 0.777778149))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133275986, 3.89334488, -2.17629051, -1, -1.32561297e-006, 8.84132305e-007, -7.05949105e-007, 0.866025686, 0.499999583, -1.42848728e-006, 0.499999583, -0.866025686))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.259259313, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000135421753, 4.64661407, 1.34696198, -1, -9.82721986e-007, 1.11105791e-007, -1.47027706e-007, 0.25881955, 0.965925753, -9.7799284e-007, 0.965925753, -0.25881955))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.259259313, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120162964, 4.64661789, 1.346982, 1, 4.00835432e-007, 3.23014717e-007, -2.08264595e-007, -0.258818746, 0.965925992, 4.70779611e-007, -0.965925992, -0.258818746))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.259259313, 0.777778149))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000119686127, 3.89336014, -2.17628479, 1, 4.28033047e-007, 1.74377874e-007, 2.83498451e-007, -0.866025269, 0.500000298, 3.65032292e-007, -0.500000298, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.259259313, 0.518518806))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000119924545, 0.869161129, -4.22298813, 1, 5.51122014e-007, 2.59200249e-007, 5.99428972e-007, -0.965925992, -0.258818775, 1.0772753e-007, 0.258818775, -0.965925992))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.2608223, 3.08901405, 0.000119686127, -1.10378075e-007, 0.422619462, 0.90630722, -1.69980208e-009, -0.90630722, 0.422619462, 1, 4.51073809e-008, 1.00754818e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.518518686, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120401382, 2.90047836, 4.33810234, 1, 2.27286364e-007, 2.32403181e-007, -3.14910324e-007, 0.499999881, 0.866025448, 8.0634095e-008, -0.866025448, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.518518686, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133275986, 2.90695953, 4.32685566, -0.999999762, -2.11777547e-008, 3.85407475e-008, 4.39660077e-008, -0.499999642, 0.866025031, 9.29916588e-010, 0.866025269, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.518518686, 1.29629683))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133275986, 3.70452118, 3.69815493, -1, -1.61937432e-008, 4.06052507e-008, 4.34129106e-008, -0.258818865, 0.965925932, -5.13255038e-009, 0.965925932, 0.258818835))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.518518686, 1.29629683))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120639801, 3.70451164, 3.69817638, 1, 8.18811756e-008, 2.70399255e-007, -2.82378039e-007, 0.258818924, 0.965925872, 9.10670028e-009, -0.965925872, 0.258818924))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.518518686, 0.518518686))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133514404, -3.70451355, -2.7907486, -1, -4.76288342e-009, -2.05528039e-009, 7.52531371e-010, 0.258818656, -0.965925932, 5.13253973e-009, -0.965925932, -0.258818626))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.54733849, 2.42216587, 0.000120639801, -1.29213319e-007, 0.258820295, 0.965925574, -2.80968671e-009, -0.965925574, 0.258820295, 1, 3.07290726e-008, 1.25537639e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.14159012, -2.8024168, 0.000133752823, -6.01987367e-008, -0.37460652, 0.927183867, 3.81304055e-008, -0.927183867, -0.37460655, 1, 1.28030564e-008, 7.00991976e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.8148154, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81292725, 0.00012421608, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.8148154, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81292725, 4.9829483e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87337875, 8.17775726e-005, -4.64633274, 7.26343217e-008, 1.78813934e-007, 1, 1, 1.35872735e-008, -7.26343217e-008, -1.35872877e-008, 1, -1.78813934e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87337875, -0.000175714493, -4.64633274, 7.26343217e-008, 1.78813934e-007, 1, 1, 1.35872735e-008, -7.26343217e-008, -1.35872877e-008, 1, -1.78813934e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.59070206, -0.000175237656, -2.20370197, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.20371246, 8.32080841e-005, 4.59070015, -1.35872718e-008, -1, -1.78813934e-007, 1, -1.35873384e-008, 3.73972171e-007, -3.73972171e-007, -1.78813934e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.59070206, -0.000215768814, 2.20371342, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.59070206, 8.22544098e-005, -2.20370197, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87590027, -9.20295715e-005, -4.53397942, -7.26343217e-008, -1.78813963e-007, 1, -1, -5.96046519e-008, -7.26343359e-008, 5.96046661e-008, -1, -1.78813977e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87590027, 0.000163555145, -4.53397942, -7.26343217e-008, -1.78813963e-007, 1, -1, -5.96046519e-008, -7.26343359e-008, 5.96046661e-008, -1, -1.78813977e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.01086426e-005, -5.50149727, 1.24056816, -1, -1.92401131e-007, -4.53303073e-007, 6.00274603e-008, 0.866025209, -0.500000358, 4.88772514e-007, -0.500000358, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000164270401, -0.294586182, 6.34798241, -1, -2.81808241e-007, -1.07155677e-006, 1.06889968e-006, -0.499999523, -0.866025686, -2.91724689e-007, -0.866025686, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.95910645e-005, -5.39571381, 1.16452789, -1, -1.92401131e-007, -4.53303073e-007, 6.00274603e-008, 0.866025209, -0.500000358, 4.88772514e-007, -0.500000358, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.01086426e-005, -5.51445961, 1.21811485, -1, -1.92401131e-007, -4.53303073e-007, 6.00274603e-008, 0.866025209, -0.500000358, 4.88772514e-007, -0.500000358, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000111818314, -4.89693832, 3.89433098, -1, -6.54337043e-007, -1.05499896e-006, 5.86486806e-007, 0.500000536, -0.866025209, 1.09417238e-006, -0.866025209, -0.500000536))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.14984131e-005, -4.77596188, -1.17524147, -1, -1.35872629e-008, 7.26342932e-008, -1.35872771e-008, 1, -1.78813934e-007, -7.26342932e-008, -1.78813934e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.16960907e-005, -4.82089996, 3.78854847, -1, -6.54337043e-007, -1.05499896e-006, 5.86486806e-007, 0.500000536, -0.866025209, 1.09417238e-006, -0.866025209, -0.500000536))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.6239624e-005, -0.171104431, 6.27668953, -1, -2.81808241e-007, -1.07155677e-006, 1.06889968e-006, -0.499999523, -0.866025686, -2.91724689e-007, -0.866025686, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000125408173, -2.85110855, 5.70879173, -1, -7.88447323e-007, -1.0545923e-006, 1.05459173e-006, 7.30156785e-007, -1, 7.88448119e-007, -1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000112056732, -4.87447739, 3.90729904, -1, -6.54337043e-007, -1.05499896e-006, 5.86486806e-007, 0.500000536, -0.866025209, 1.09417238e-006, -0.866025209, -0.500000536))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(1.47819519e-005, -2.86407852, 5.57916451, -1, -7.88447323e-007, -1.0545923e-006, 1.05459173e-006, 7.30156785e-007, -1, 7.88448119e-007, -1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.20159912e-005, -4.64633274, -1.18819618, -1, -1.35872629e-008, 7.26342932e-008, -1.35872771e-008, 1, -1.78813934e-007, -7.26342932e-008, -1.78813934e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.14984131e-005, -4.77596188, -1.20115852, -1, -1.35872629e-008, 7.26342932e-008, -1.35872771e-008, 1, -1.78813934e-007, -7.26342932e-008, -1.78813934e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000163793564, -0.272134781, 6.33502007, -1, -2.81808241e-007, -1.07155677e-006, 1.06889968e-006, -0.499999523, -0.866025686, -2.91724689e-007, -0.866025686, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000125408173, -2.87703323, 5.70879173, -1, -7.88447323e-007, -1.0545923e-006, 1.05459173e-006, 7.30156785e-007, -1, 7.88448119e-007, -1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.53131104e-005, -2.33333254, 6.26292419, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.07424164e-005, 4.60000801, 3.13654184, -1, 7.88447494e-007, 1.05459264e-006, 1.05459196e-006, -8.34465027e-007, 1, 7.88448347e-007, 1, 8.34464174e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81469727e-005, -2.33333683, 6.26292419, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-5.91278076e-005, 0.345923424, 6.61297035, 1, -1.35872806e-008, 7.26343004e-008, -2.45502303e-008, 0.866025329, 0.500000119, -6.96967817e-008, -0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(6.67572021e-005, 0.451700211, 6.53692818, 1, -1.35872806e-008, 7.26343004e-008, -2.45502303e-008, 0.866025329, 0.500000119, -6.96967817e-008, -0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.39233398e-005, 0.345918655, 6.48334122, -1, 1.92401188e-007, 4.53303187e-007, 6.00273324e-008, -0.866025329, 0.500000119, 4.88772628e-007, 0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.15255737e-007, 4.60000992, 3.1365478, 1, -1.92401188e-007, 2.57636145e-007, -2.57636145e-007, -5.96046377e-008, 1, -1.92401174e-007, -1, -5.96046874e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000117063522, 4.61297989, 3.2661674, 1, -1.92401188e-007, 2.57636145e-007, -2.57636145e-007, -5.96046377e-008, 1, -1.92401174e-007, -1, -5.96046874e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000117063522, 4.58705902, 3.2661674, 1, -1.92401188e-007, 2.57636145e-007, -2.57636145e-007, -5.96046377e-008, 1, -1.92401174e-007, -1, -5.96046874e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000145196915, 4.970644, 0.487595558, 1, -5.64930247e-007, 1.63133308e-007, -4.23742733e-007, -0.50000006, 0.866025448, -4.07677305e-007, -0.866025448, -0.50000006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.39233398e-005, 0.332958221, 6.46089363, -1, 1.92401188e-007, 4.53303187e-007, 6.00273324e-008, -0.866025329, 0.500000119, 4.88772628e-007, 0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000169277191, 4.97064209, 0.487604141, -1, 2.81808099e-007, 1.07155711e-006, 1.06889991e-006, 0.499999464, 0.866025746, -2.91724916e-007, 0.866025746, -0.499999464))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000131368637, 4.61297798, 3.26617432, -1, 7.88447494e-007, 1.05459264e-006, 1.05459196e-006, -8.34465027e-007, 1, 7.88448347e-007, 1, 8.34464174e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.50339508e-005, 5.07168198, 0.429261208, 1, -5.64930247e-007, 1.63133308e-007, -4.23742733e-007, -0.50000006, 0.866025448, -4.07677305e-007, -0.866025448, -0.50000006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-5.91278076e-005, 0.332961082, 6.59052086, 1, -1.35872806e-008, 7.26343004e-008, -2.45502303e-008, 0.866025329, 0.500000119, -6.96967817e-008, -0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.38690186e-005, 0.451704025, 6.40730095, -1, 1.92401188e-007, 4.53303187e-007, 6.00273324e-008, -0.866025329, 0.500000119, 4.88772628e-007, 0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000169277191, 4.94818306, 0.500570297, -1, 2.81808099e-007, 1.07155711e-006, 1.06889991e-006, 0.499999464, 0.866025746, -2.91724916e-007, 0.866025746, -0.499999464))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.00012254715, 2.81091881, 5.52395439, -1, 6.54337214e-007, 1.0549993e-006, 5.86486863e-007, -0.500000596, 0.866025031, 1.09417272e-006, 0.866025031, 0.500000596))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.47819519e-005, 2.86450768, 5.40520668, -1, 6.54337214e-007, 1.0549993e-006, 5.86486863e-007, -0.500000596, 0.866025031, 1.09417272e-006, 0.866025031, 0.500000596))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.95774841e-005, 5.07167244, 0.429275513, -1, 2.81808099e-007, 1.07155711e-006, 1.06889991e-006, 0.499999464, 0.866025746, -2.91724916e-007, 0.866025746, -0.499999464))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.81469727e-005, 2.86450768, 5.4052124, 1, -3.41412829e-007, 2.95972967e-007, -8.56137845e-008, 0.499999881, 0.866025567, -4.43658678e-007, -0.866025567, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.53131104e-005, -2.33333254, 6.28885269, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.20159912e-005, -2.20370197, 6.27588654, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.74996185e-005, 2.81091881, 5.52396393, 1, -3.41412829e-007, 2.95972967e-007, -8.56137845e-008, 0.499999881, 0.866025567, -4.43658678e-007, -0.866025567, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000145196915, 4.94819832, 0.500566483, 1, -5.64930247e-007, 1.63133308e-007, -4.23742733e-007, -0.50000006, 0.866025448, -4.07677305e-007, -0.866025448, -0.50000006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81469727e-005, -2.33333683, 6.28885269, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.74996185e-005, 2.78847122, 5.51100349, 1, -3.41412829e-007, 2.95972967e-007, -8.56137845e-008, 0.499999881, 0.866025567, -4.43658678e-007, -0.866025567, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.00012254715, 2.78846169, 5.51098824, -1, 6.54337214e-007, 1.0549993e-006, 5.86486863e-007, -0.500000596, 0.866025031, 1.09417272e-006, 0.866025031, 0.500000596))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000131368637, 4.58704567, 3.26617432, -1, 7.88447494e-007, 1.05459264e-006, 1.05459196e-006, -8.34465027e-007, 1, 7.88448347e-007, 1, 8.34464174e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(9.15527344e-005, -2.20371342, 6.27588654, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-6.72340393e-005, -2.86659622, 5.46681213, 1, 8.19563866e-007, -1.05459219e-006, -1.05459162e-006, -7.30156785e-007, -1, -8.19564661e-007, 1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.12599945e-005, -2.87955475, 5.59644508, 1, 8.19563866e-007, -1.05459219e-006, -1.05459162e-006, -7.30156785e-007, -1, -8.19564661e-007, 1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.38418579e-007, -5.41842747, 1.15975761, 1, 2.08616257e-007, -4.53303073e-007, -4.59847378e-008, -0.866025269, -0.500000358, -4.96880091e-007, 0.500000358, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000163793564, -4.53397942, -1.19071579, 1, 5.96046519e-008, 7.26342861e-008, 5.96046661e-008, -1, -1.7881392e-007, 7.2634279e-008, 1.7881392e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.76565552e-005, -4.84293938, 3.79575825, 1, 6.40749931e-007, -1.05499896e-006, -5.93280276e-007, -0.500000477, -0.86602515, -1.08240556e-006, 0.866025209, -0.500000477))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.12599945e-005, -2.85363007, 5.59644508, 1, 8.19563866e-007, -1.05459219e-006, -1.05459162e-006, -7.30156785e-007, -1, -8.19564661e-007, 1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.64644623e-005, -4.66361141, -1.20367813, 1, 5.96046519e-008, 7.26342861e-008, 5.96046661e-008, -1, -1.7881392e-007, 7.2634279e-008, 1.7881392e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.60012054e-005, -0.229459763, 6.18065071, 1, 3.27825546e-007, -1.07155665e-006, -1.09190842e-006, 0.499999553, -0.866025746, 2.51872478e-007, 0.866025746, 0.499999553))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.78949738e-005, -4.82047844, 3.80872631, 1, 6.40749931e-007, -1.05499896e-006, -5.93280276e-007, -0.500000477, -0.86602515, -1.08240556e-006, 0.866025209, -0.500000477))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000123739243, -5.29968166, 1.10616493, 1, 2.08616257e-007, -4.53303073e-007, -4.59847378e-008, -0.866025269, -0.500000358, -4.96880091e-007, 0.500000358, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.64644623e-005, -4.66361141, -1.17776489, 1, 5.96046519e-008, 7.26342861e-008, 5.96046661e-008, -1, -1.7881392e-007, 7.2634279e-008, 1.7881392e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.38418579e-007, -5.40546131, 1.18221474, 1, 2.08616257e-007, -4.53303073e-007, -4.59847378e-008, -0.866025269, -0.500000358, -4.96880091e-007, 0.500000358, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.96453857e-005, -0.330493927, 6.23898315, 1, 3.27825546e-007, -1.07155665e-006, -1.09190842e-006, 0.499999553, -0.866025746, 2.51872478e-007, 0.866025746, 0.499999553))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.96453857e-005, -0.352949142, 6.2519474, 1, 3.27825546e-007, -1.07155665e-006, -1.09190842e-006, 0.499999553, -0.866025746, 2.51872478e-007, 0.866025746, 0.499999553))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"Institutional white","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-9.25064087e-005, -4.7668972, 3.68998146, 1, 6.40749931e-007, -1.05499896e-006, -5.93280276e-007, -0.500000477, -0.86602515, -1.08240556e-006, 0.866025209, -0.500000477))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.8148154, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81292725, 0.000133752823, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","Part",Vector3.new(0.259259343, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.1920929e-007, -0.129768372, -3.81292725, -9.78950787e-009, -1, -2.98023224e-008, -1, 9.78950787e-009, 4.63133887e-009, -4.63133842e-009, 2.98023224e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=6547801",Vector3.new(0, 0, 0),Vector3.new(0.0518518686, 0.00129629672, 0.0518518686))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","Part",Vector3.new(0.259259343, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.1920929e-007, -0.129768372, -3.81292725, -9.78950787e-009, -1, -2.98023224e-008, -1, 9.78950787e-009, 4.63133887e-009, -4.63133842e-009, 2.98023224e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=6547801",Vector3.new(0, 0, 0),Vector3.new(0.0518518686, 0.00129629672, 0.0518518686))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","Part",Vector3.new(0.259259343, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.75984001, 0.000175714493, -3.91405869, -1.05164366e-008, -0.968119502, -0.250488758, -1, 9.91058347e-009, 3.68003583e-009, -1.08022657e-009, 0.250488758, -0.968119502))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=6547801",Vector3.new(0, 0, 0),Vector3.new(0.0518518686, 0.00129629672, 0.0518518686))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","Part",Vector3.new(0.259259343, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.65045071, 9.1791153e-005, -3.88835716, -7.4505806e-008, 0.968119502, -0.250488728, 1, 7.40473354e-008, -1.12545493e-008, 7.65227881e-009, -0.250488728, -0.968119562))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=6547801",Vector3.new(0, 0, 0),Vector3.new(0.0518518686, 0.00129629672, 0.0518518686))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000163793564, -0.283361435, 6.34150124, -1, -2.81808241e-007, -1.07155677e-006, 1.06889968e-006, -0.499999523, -0.866025686, -2.91724689e-007, -0.866025686, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.01086426e-005, -5.50797844, 1.22934341, -1, -1.92401131e-007, -4.53303073e-007, 6.00274603e-008, 0.866025209, -0.500000358, 4.88772514e-007, -0.500000358, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000125408173, -2.86408234, 5.70879555, -1, -7.88447323e-007, -1.0545923e-006, 1.05459173e-006, 7.30156785e-007, -1, 7.88448119e-007, -1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.14984131e-005, -4.77596188, -1.18818855, -1, -1.35872629e-008, 7.26342932e-008, -1.35872771e-008, 1, -1.78813934e-007, -7.26342932e-008, -1.78813934e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000111818314, -4.88570976, 3.90081406, -1, -6.54337043e-007, -1.05499896e-006, 5.86486806e-007, 0.500000536, -0.866025209, 1.09417238e-006, -0.866025209, -0.500000536))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.74996185e-005, 2.79969025, 5.51748085, 1, -3.41412829e-007, 2.95972967e-007, -8.56137845e-008, 0.499999881, 0.866025567, -4.43658678e-007, -0.866025567, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.53131104e-005, -2.33333254, 6.27589035, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000145196915, 4.95941925, 0.494076729, 1, -5.64930247e-007, 1.63133308e-007, -4.23742733e-007, -0.50000006, 0.866025448, -4.07677305e-007, -0.866025448, -0.50000006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.00012254715, 2.79969025, 5.51747131, -1, 6.54337214e-007, 1.0549993e-006, 5.86486863e-007, -0.500000596, 0.866025031, 1.09417272e-006, 0.866025031, 0.500000596))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000169277191, 4.95941162, 0.494087219, -1, 2.81808099e-007, 1.07155711e-006, 1.06889991e-006, 0.499999464, 0.866025746, -2.91724916e-007, 0.866025746, -0.499999464))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81469727e-005, -2.33333683, 6.27589035, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.39233398e-005, 0.339439392, 6.47211838, -1, 1.92401188e-007, 4.53303187e-007, 6.00273324e-008, -0.866025329, 0.500000119, 4.88772628e-007, 0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-5.91278076e-005, 0.339440346, 6.6017437, 1, -1.35872806e-008, 7.26343004e-008, -2.45502303e-008, 0.866025329, 0.500000119, -6.96967817e-008, -0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000131368637, 4.60000801, 3.26617432, -1, 7.88447494e-007, 1.05459264e-006, 1.05459196e-006, -8.34465027e-007, 1, 7.88448347e-007, 1, 8.34464174e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000117063522, 4.60001373, 3.2661674, 1, -1.92401188e-007, 2.57636145e-007, -2.57636145e-007, -5.96046377e-008, 1, -1.92401174e-007, -1, -5.96046874e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.96453857e-005, -0.341720581, 6.24546432, 1, 3.27825546e-007, -1.07155665e-006, -1.09190842e-006, 0.499999553, -0.866025746, 2.51872478e-007, 0.866025746, 0.499999553))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.12599945e-005, -2.86659622, 5.59644508, 1, 8.19563866e-007, -1.05459219e-006, -1.05459162e-006, -7.30156785e-007, -1, -8.19564661e-007, 1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.64644623e-005, -4.66361141, -1.19071198, 1, 5.96046519e-008, 7.26342861e-008, 5.96046661e-008, -1, -1.7881392e-007, 7.2634279e-008, 1.7881392e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.76565552e-005, -4.831707, 3.80224323, 1, 6.40749931e-007, -1.05499896e-006, -5.93280276e-007, -0.500000477, -0.86602515, -1.08240556e-006, 0.866025209, -0.500000477))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.38418579e-007, -5.4119463, 1.17098236, 1, 2.08616257e-007, -4.53303073e-007, -4.59847378e-008, -0.866025269, -0.500000358, -4.96880091e-007, 0.500000358, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))

function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
end
end
end
end
end

function magicring(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
        local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",Vector3.new(0.5,0.5,0.5))
        prt.Anchored=true
        prt.CFrame=cframe
        prt.Touched:connect(function(hit) end)
        local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(0,0,0),Vector3.new(x1,y1,z1))
local ref = Instance.new("Part",workspace)
ref.Anchored = true
ref.Size = Vector3.new(5,5,5)
ref.CFrame = Torso.CFrame*CFrame.new(-5,0,0)
ref.CanCollide = false
ref.Transparency = 1
MagniDamage(prt,ref,10,5,10,0,"Knockdown")
        coroutine.resume(coroutine.create(function(Part,Mesh) 
                for i=0,1,0.03 do
                        wait()
                        Part.CFrame=Part.CFrame
                        Part.Transparency=i
                        Mesh.Scale=Mesh.Scale+Vector3.new(x3,y3,z3)
                end
                Part.Parent=nil
                ref.Parent = nil
        end),prt,msh)
end

function attackone()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(10)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,30,50,math.random(5,10),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=199150686",Hitbox,1,1) 
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-90), math.rad(-130)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(50)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199146359",Hitbox,1,1) 
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(130)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
scfr = nil
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-90), math.rad(-90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,30,50,math.random(5,10),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=199150686",Hitbox,1,1) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-190), math.rad(-90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199150686",Hitbox,1,.9) 
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199146359",Hitbox,1,.9)
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
scfr = nil
end

function Spin()
attack=true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,30,50,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(120)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
Humanoid.Jump = true
for i=0,1,1 do
so("http://roblox.com/asset/?id=234365573",Torso,1,1)
swait()
for i=0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,2)*euler(0,-1.2,6*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(80)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-70)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
end
attack=false
con:disconnect()
scfr = nil
end

function StunTarget()
attack = true
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(10)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-90)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=228343249",Torso,1,1) 
for i = 1,2 do
magicring(BrickColor.new("Institutional white"),Torso.CFrame*CFrame.new(-5,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
magicring(BrickColor.new("Institutional white"),Torso.CFrame*CFrame.new(-5,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
end
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and attacktype == 2 then
attacktype = 1
attacktwo()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == 'q' then
Spin()
elseif attack == false and k == 'e' then
StunTarget()
end
end)


local sine = 0
local change = 1
local val = 0

while true do
	swait()
	sine = sine + change
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
		if RootPart.Velocity.y > 1 and hitfloor==nil then 
			if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20)),.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(40)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(10)),.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-40)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(40)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-15)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
			end
		end
	end
	if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
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
Mesh=Thing[7]
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
end
end
end
end
