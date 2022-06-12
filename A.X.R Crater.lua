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

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
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

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
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
w2.BrickColor = BrickColor.new(TrailColor)
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
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
                local blocked=false
                local block=hit.Parent:findFirstChild("Block")
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Hitbox.BrickColor.Color)
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Handle",Vector3.new(0.60551995, 0.269119978, 0.200000003))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.795875549, -0.616287231, 0.00760650635, -4.06663814e-009, 0.498903632, 0.866652966, 2.08201634e-009, -0.866652548, 0.498904079, 0.999992132, 3.83054477e-009, 2.48540166e-009))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Barrel",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Barrelweld=weld(m,Handle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.312599182, -3.04084301, -0.00192260742, 0.866652429, 0.498903751, 2.32525288e-009, -0.498903215, 0.866651833, -6.91664725e-010, -2.36209452e-009, -5.58050939e-010, 0.99999094))
mesh("CylinderMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679907, 0.538239956, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318908691, -2.1293807, -0.00379943848, 0.866652429, 0.498903751, 2.27182828e-009, -0.498903215, 0.866651833, 8.23071211e-009, 2.13564766e-009, -8.26406144e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839954, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.485198975, -0.112598419, -0.170608521, 0.866652429, 0.498903751, 1.90404603e-009, -0.498903215, 0.866651773, -9.24883459e-009, -6.26629104e-009, 7.06824999e-009, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800004, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.269119978, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00299072266, -2.43161249, -0.0494918823, 4.00664067e-006, 2.29826651e-006, 0.99999094, -0.498903215, 0.866651833, 7.1333246e-009, -0.866652429, -0.498903751, 4.61897753e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.672800004))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679907, 0.269119978, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318893433, -2.93703985, -0.00373840332, 0.866652429, 0.498903751, 1.76599568e-009, -0.498903215, 0.866651833, 7.95978394e-009, 2.43890108e-009, -7.77687248e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679907, 0.403679967, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318466187, -1.86047745, -0.00106048584, 0.866650403, 0.498902589, 2.46652054e-009, -0.498901695, 0.866649151, -5.77466075e-009, -5.02151831e-009, 3.77818843e-009, 0.999985576))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0176925659, 0.00497436523, -0.210002899, 0.866652429, 0.498903751, 3.26658434e-009, 1.17902363e-008, -1.39329055e-008, -0.999990821, -0.498903215, 0.866651773, -1.79540258e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170783997, 0.112445831, 0.619483948, -3.24811595e-006, 5.63719959e-006, 0.999990821, 0.498903215, -0.866651773, 6.50599031e-006, 0.866652429, 0.498903751, 2.56824162e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799766, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.470959932, 0.200000003, 0.538240016))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318893433, -2.76884508, -0.00373840332, 0.866652429, 0.498903751, 1.76599568e-009, -0.498903215, 0.866651833, 7.95978394e-009, 2.43890108e-009, -7.77687248e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -1.96068239, -0.00351715088, 0.866652429, 0.498903751, 2.26011188e-009, -0.498903215, 0.866651833, -7.97681921e-011, -2.00035988e-009, -1.05585696e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318252563, -1.35538101, -0.00323486328, 0.866652429, 0.498903751, 2.26594099e-009, -0.498903215, 0.866651833, -1.6442292e-010, -2.04764627e-009, -9.85398652e-010, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839954, 0.403679967, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.215965271, -0.380897522, 0.164527893, 0.866652429, 0.498903751, 2.28638819e-009, -0.498903215, 0.866651773, -1.34231595e-008, -8.68025474e-009, 1.04952145e-008, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -2.22983122, -0.00350952148, 0.866652429, 0.498903751, 2.26122032e-009, -0.498903215, 0.866651833, -9.34297084e-011, -2.00813588e-009, -1.04457043e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0485839844, -0.478780746, -0.00545501709, 0.86665231, 0.498903781, 1.85937044e-009, -0.498903096, 0.866651654, -6.03485262e-010, -1.91434224e-009, -4.0203596e-010, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 1.07647991, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827178955, -1.85979414, -0.00352478027, 0.866652429, 0.498903751, 2.25933605e-009, -0.498903215, 0.866651833, -7.67306219e-011, -1.99817207e-009, -1.05810338e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839939, 1.07647991, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.217285156, -1.85971975, -0.00333404541, 0.866643488, 0.498898774, 2.25623431e-009, -0.498896539, 0.866640627, -5.30833155e-011, -1.98837569e-009, -1.07037645e-009, 0.999968052))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399913, 0.201839983, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318962097, -1.75922298, -0.00379943848, 0.866652429, 0.498903751, 2.27182828e-009, -0.498903215, 0.866651833, 8.23071211e-009, 2.13564766e-009, -8.26406144e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.051071167, 0.00290679932, -0.2449646, 0.86664921, 0.498901874, 3.64214658e-009, 1.54552833e-008, -1.95462313e-008, -0.999982953, -0.49890098, 0.866647959, -2.46445477e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.60551995, 0.336399972, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.418212891, -0.347076416, -0.00260162354, 0.866652429, 0.498903751, 2.19306129e-009, -0.498903215, 0.866651773, -4.24318314e-009, -4.01941147e-009, 2.58586197e-009, 0.999990821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.201839983, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0512695313, -0.34427166, -0.00487518311, 0.866652429, 0.498903751, 1.84118321e-009, -0.498903215, 0.866651773, -4.18982626e-010, -1.80652915e-009, -5.52863089e-010, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00177764893, 0.548091888, -0.0154037476, 7.56223835e-006, -4.03065678e-006, -0.999992132, 0.498903811, -0.866652071, 7.26601274e-006, -0.866652608, -0.498904318, -4.54292012e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.403680056))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587188721, -0.615654945, -0.00296020508, 0.866652429, 0.498903751, 2.32280994e-009, -0.498903215, 0.866651833, 4.00462197e-009, -1.69655401e-011, -4.62691307e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839983, 0.269119889, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.823150635, -0.985249519, -0.0020904541, 0.866652429, 0.498903751, 2.33383957e-009, -0.498903215, 0.866651833, 2.51370436e-009, -7.70352893e-010, -3.34029848e-009, 0.99999094))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.051322937, 0.00497436523, -0.210004807, 0.866650403, 0.498902589, 3.26648864e-009, 1.17907248e-008, -1.39336134e-008, -0.999985576, -0.498901755, 0.86664921, -1.7953024e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0513305664, 0.00498199463, -0.479110718, 0.866651297, 0.498903036, 3.2652987e-009, 1.17921033e-008, -1.39385596e-008, -0.999988198, -0.498902291, 0.866650283, -1.79589303e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.302749634, 0.168193817, -1.7881311e-007, 3.24895666e-012, -0.999992132, -0.999996006, 1.58250332e-005, 1.78813991e-007, 1.65402889e-005, 0.999995947, 2.64410716e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800064, 0.672799945, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.336380005, -7.62939453e-006, 0, 0.999996066, -8.73208046e-006, -5.59419178e-012, 9.56654549e-006, 0.999995708, 9.69091474e-012, 4.03987954e-012, -7.46358531e-012, 0.999992132))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.163887024, 0.111458778, -0.349739075, 8.04887259e-006, -1.38551368e-005, -0.999990821, 0.498901278, -0.866652668, 1.60232048e-005, -0.866653264, -0.498901874, -6.32306651e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799766, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.302688599, 0.168170929, -4.75004663e-006, -1.30574485e-008, 0.999984264, -0.999992192, -7.06315041e-006, -4.75000525e-006, 5.87105751e-006, -0.999991894, -1.30275053e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800064, 0.672799945, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.874640048, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00477600098, -0.398108482, 0.518852234, -3.22403184e-006, 5.62819969e-006, 0.99998951, 0.498902708, -0.866650999, 6.48617106e-006, 0.866651773, 0.498903364, -1.38144181e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800183, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.450813293, -0.00280761719, 0.970563889, 0.866649687, 0.498902202, -3.31878525e-009, -1.51858579e-008, 1.97283327e-008, -0.999984264, -0.498901367, 0.866648614, 2.46792311e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0489349365, -0.209962845, -0.00468444824, 0.866652429, 0.498903751, 1.91206961e-009, -0.498903215, 0.866651773, -1.19068244e-009, -2.25297092e-009, 8.05715494e-011, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154342651, -1.55697966, -0.00353240967, 0.866652429, 0.498903751, 2.2578952e-009, -0.498903215, 0.866651833, -5.24460475e-011, -1.98480765e-009, -1.07843046e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.383544922, -0.00280761719, 0.903319359, 0.866649687, 0.498902202, -3.31878658e-009, -1.51858668e-008, 1.9728347e-008, -0.999984264, -0.498901367, 0.866648614, 2.46792453e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399972, 0.740079939, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.317024231, 0.463025093, 0.00568389893, 0.866651773, 0.498903364, -1.41873482e-008, -0.498902708, 0.866650999, 1.34257672e-009, 1.29633655e-008, 5.91760863e-009, 0.99998951))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.181915283, -0.00157928467, 0.9055233, 0.866649687, 0.498902202, -1.50724624e-008, -1.99105337e-008, 4.37652004e-009, -0.999984264, -0.498901367, 0.866648614, 1.37317357e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.538240016, 0.269119918, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283424377, 0.967119217, 0.00565338135, 0.866651773, 0.498903364, -1.33492808e-008, -0.498902708, 0.866650999, -9.34748989e-009, 6.90391699e-009, 1.4763736e-008, 0.99998951))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.18196106, -0.00176239014, 1.03994465, 0.866649687, 0.498902202, -3.39995543e-009, -1.34551961e-008, 1.65592748e-008, -0.999984264, -0.498901367, 0.866648614, 2.10693365e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.383544922, -0.00280761719, 1.03783798, 0.866649687, 0.498902202, -3.31878436e-009, -1.51858544e-008, 1.97283274e-008, -0.999984264, -0.498901367, 0.866648614, 2.46792276e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0176849365, -0.00373840332, 0.479958534, 0.866652429, 0.498903751, 1.34677836e-009, -1.69635683e-008, 2.67676299e-008, 0.999990821, 0.498903215, -0.866651773, 3.16582707e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00584411621, 0.767393112, 0.51902771, -1.75444547e-005, 2.97711194e-005, -0.999984264, -0.498901367, 0.866648614, 3.45541339e-005, 0.866649687, 0.498902202, -3.52023733e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800183, 0.672800303, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -2.0952754, -0.00350952148, 0.866652429, 0.498903751, 2.26122032e-009, -0.498903215, 0.866651833, -9.34297084e-011, -2.00813588e-009, -1.04457043e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.114692688, -0.00176239014, 0.972790718, 0.866649687, 0.498902202, -1.50588342e-008, -1.99821741e-008, 4.52828131e-009, -0.999984264, -0.498901367, 0.866648614, 1.3898994e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.740080059, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00510406494, 0.465695381, -0.115463257, 2.18699406e-005, 6.31612638e-005, 0.999984264, -0.498902321, 0.866648078, -4.38276911e-005, -0.866649151, -0.498903215, 5.0464856e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800183, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0513381958, -0.00524139404, 0.445455551, 0.866652787, 0.49890396, 1.17300525e-009, -1.69591043e-008, 2.71082641e-008, 0.999992132, 0.498903453, -0.86665225, 3.19517284e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399943, 0.403679967, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.484809875, -0.380900383, 0.164237976, 0.866652429, 0.498903751, 2.2979687e-009, -0.498903215, 0.866651773, -1.35429508e-008, -8.75005668e-009, 1.05932561e-008, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.201840073, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00735473633, 0.734195709, -0.0823898315, 2.1904385e-005, 6.32324809e-005, 0.999984264, -0.498902321, 0.866648078, -4.38722309e-005, -0.866649151, -0.498903215, 5.05302487e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800183, 1, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -1.69153118, -0.00353240967, 0.866652429, 0.498903751, 2.2578952e-009, -0.498903215, 0.866651833, -5.24460475e-011, -1.98480765e-009, -1.07843046e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154190063, -2.36441898, -0.00350189209, 0.866652429, 0.498903751, 2.26232877e-009, -0.498903215, 0.866651833, -1.07091891e-010, -2.01591321e-009, -1.03328279e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -1.42240477, -0.00354003906, 0.866652429, 0.498903751, 2.25678676e-009, -0.498903215, 0.866651833, -3.87858634e-011, -1.97703143e-009, -1.08971654e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.672799945, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.385620117, -0.547970772, -0.00156402588, 0.866652787, 0.49890396, 2.34176123e-009, -0.498903453, 0.86665225, -5.86418292e-009, -4.95674879e-009, 3.91615185e-009, 0.999992132))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.485694885, 0.00344848633, -0.110714912, 0.866651773, 0.498903364, 2.06490092e-009, 1.67378111e-009, 1.23195965e-009, -0.99998951, -0.498902708, 0.866650999, 2.36235476e-010))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.552970886, 0.00350952148, -0.243771553, 0.866652429, 0.498903751, 2.00843564e-009, 2.69502953e-009, -6.55322685e-010, -0.999990821, -0.498903215, 0.866651773, -1.90933624e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.164108276, 0.111265182, 0.618415833, -3.24156326e-006, 5.62580908e-006, 0.999990821, 0.498903096, -0.866651654, 6.49284902e-006, 0.86665231, 0.498903781, 2.57243071e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799766, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154190063, -1.82610416, -0.00352478027, 0.866652429, 0.498903751, 2.25900343e-009, -0.498903215, 0.866651833, -6.61066757e-011, -1.99258321e-009, -1.06714459e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839954, 0.403679967, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.216438293, -0.381121635, -0.171089172, 0.866652429, 0.498903751, 2.19618634e-009, -0.498903215, 0.866651833, -1.24133344e-008, -8.09827227e-009, 9.66504299e-009, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.418174744, 0.00370788574, -0.245140076, 0.86665231, 0.498903781, 2.23897123e-009, 6.64269617e-009, -7.05078396e-009, -0.999990821, -0.498903096, 0.866651654, -9.42400824e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679937, 0.269119978, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.317405701, -0.0458230972, -0.00158691406, 0.866652429, 0.498903751, 2.14410667e-009, -0.498903215, 0.866651773, -3.7675072e-009, -3.73966591e-009, 2.19803686e-009, 0.999990821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00132751465, 0.046257019, 0.586250305, -3.23414906e-006, 5.61314437e-006, 0.999990821, 0.498903215, -0.866651773, 6.47817387e-006, 0.866652429, 0.498903751, 2.46550202e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.61471975, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.688362122, -1.38871622, -0.00164794922, 0.866652429, 0.498903751, 2.3246276e-009, -0.498903215, 0.866651833, -5.07280662e-009, -4.54733851e-009, 3.23922e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.269119978))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0016784668, -0.155838966, 0.384544373, -3.23989229e-006, 5.62253354e-006, 0.999990821, 0.498903215, -0.866651773, 6.48917603e-006, 0.866652429, 0.498903751, 2.75841439e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839954, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.484268188, -0.111958504, 0.164001465, 0.86665231, 0.498903781, 2.19069807e-009, -0.498903096, 0.866651654, -2.89383451e-008, -1.6337971e-008, 2.39893474e-008, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800004, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00202941895, -0.155940056, -0.182807922, 4.07467405e-006, -7.25276459e-006, -0.999990821, 0.498895556, -0.866655946, 8.31849866e-006, -0.866656661, -0.498896152, 8.70322268e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 0.672800004))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.538240016, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.654853821, -2.46507072, -0.00198364258, 0.866652429, 0.498903751, 2.32239783e-009, -0.498903215, 0.866651833, -8.78909168e-010, -2.45303911e-009, -3.9434811e-010, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.60551995, 0.200000003, 0.672799945))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.307685852, -0.683084488, -0.00399780273, 0.866652429, 0.498903751, 2.32315811e-009, -0.498903215, 0.866651833, 8.09858314e-009, 2.02524175e-009, -8.17515655e-009, 0.99999088))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399943, 0.403679967, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.484832764, -0.381659508, -0.171195984, 0.866652429, 0.498903751, 2.13510121e-009, -0.498903215, 0.866651833, -4.31538716e-009, -4.00520239e-009, 2.67735412e-009, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170829773, 0.112492561, -0.350662231, 8.04909632e-006, -1.38555888e-005, -0.999990821, 0.498901367, -0.866652668, 1.60237105e-005, -0.866653323, -0.498901874, -6.31975112e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799766, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00198364258, 2.70083809, -0.890274048, 1.22612406e-007, 7.56137375e-010, -0.999991715, 0.498903275, -0.866651952, 6.05138268e-008, -0.866652787, -0.49890393, -1.06639334e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00188446045, 2.70055485, 0.755661011, 6.99501257e-009, -4.66721986e-008, 0.99999094, 0.498903215, -0.866651833, -4.39415899e-008, 0.866652429, 0.498903751, 1.72223977e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.553535461, 0.00312805176, -1.3889389, 0.866649628, 0.4989025, 2.28122921e-009, 2.2102844e-009, 7.3393025e-010, -0.999984264, -0.498901486, 0.866648555, -4.61247929e-010))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.269119978, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00194549561, -2.86907005, 0.789337158, 2.47805443e-009, 3.73790332e-010, -0.999992132, -0.498903453, 0.86665225, -9.09659237e-010, 0.866652787, 0.49890396, 2.33386199e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318229675, -1.42267275, -0.00323486328, 0.866652429, 0.498903751, 2.26594099e-009, -0.498903215, 0.866651833, -1.6442292e-010, -2.04764627e-009, -9.85398652e-010, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00204467773, -1.15345192, -0.890197754, 8.79226505e-008, 5.16588372e-008, 0.999992132, -0.498903453, 0.86665225, -9.02613317e-010, -0.866652787, -0.49890396, 1.01971423e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.807359934, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.520263672, -2.5996995, -0.00192260742, 0.866652429, 0.498903751, 2.32525288e-009, -0.498903215, 0.866651833, -6.91663615e-010, -2.3620943e-009, -5.58051827e-010, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00224304199, -1.15331078, 0.75553894, -9.81664794e-009, -8.13697287e-009, -0.99999094, -0.498903215, 0.866651833, -2.15120899e-009, 0.866652429, 0.498903751, -1.25674564e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.326629639, -1.63202763, 0.0157241821, 0.86664921, 0.498901874, 4.46597426e-009, -0.49890098, 0.866647959, -1.00119912e-008, -8.86894291e-009, 6.45372245e-009, 0.999982953))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.423660278, 0.00339508057, -1.52803516, 0.866652429, 0.498903751, 3.1895504e-009, 2.6605298e-009, 1.7720303e-009, -0.99999094, -0.498903215, 0.866651773, 2.11543671e-010))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.553840637, 0.00194549561, -2.19624376, 0.866652429, 0.498903751, 2.32239783e-009, 2.50885779e-009, 2.97385006e-010, -0.99999094, -0.498903215, 0.866651833, -9.90791005e-010))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.88383985, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.957420349, -1.79261398, -0.00204467773, 0.866652787, 0.49890396, 2.33386199e-009, -0.498903453, 0.86665225, -9.09602171e-010, -2.47802578e-009, -3.73839848e-010, 0.999992132))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.672800004, 0.403680056))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.620758057, -0.985565186, -0.00221252441, 0.866652429, 0.498903751, 2.32505393e-009, -0.498903215, 0.866651833, -8.90858276e-010, -2.46130116e-009, -3.85319332e-010, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679967, 0.200000003, 0.201839983))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00192260742, -2.26367044, 0.553855896, -2.34582611e-008, -1.43058907e-008, -0.99999094, -0.498903215, 0.866651833, -6.91662505e-010, 0.866652429, 0.498903751, -2.7467685e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.538239956, 0.200000003, 0.672799945))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.285865784, -0.750847816, -0.00677490234, 0.866652429, 0.498903751, 2.31163155e-009, -0.498903215, 0.866651833, 8.33962588e-009, 2.15549045e-009, -8.37831049e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318237305, -1.52358532, -0.00323486328, 0.866652429, 0.498903751, 2.26594099e-009, -0.498903215, 0.866651833, -1.6442292e-010, -2.04764627e-009, -9.85398652e-010, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419342041, 0.000923156738, -2.06234789, 0.866652787, 0.49890396, 2.45350562e-009, 4.20546575e-009, -2.38710784e-009, -0.999992132, -0.498903453, 0.86665225, -4.16421386e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.554298401, 0.00379943848, -1.92725849, 0.866652429, 0.498903751, 2.27182828e-009, -2.13564766e-009, 8.26406144e-009, -0.99999094, -0.498903215, 0.866651833, 8.23071211e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.336399943, 0.269119978))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00178527832, 0.682488441, 0.856414795, -3.21860102e-006, 5.58638567e-006, 0.999992132, 0.498903453, -0.86665225, 6.44723104e-006, 0.866652787, 0.49890396, 2.34038389e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419181824, 0.00199890137, -1.79305029, 0.866652131, 0.498903632, 2.32990094e-009, 3.06747294e-009, -6.57872201e-010, -0.999989688, -0.498902828, 0.866651118, -2.09690798e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399913, 0.874639988, 0.403680056))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.486587524, -1.75865698, -0.00193786621, 0.866647184, 0.498901069, 2.32281483e-009, -0.498899341, 0.8666448, -6.6587047e-010, -2.34998132e-009, -5.75107295e-010, 0.999977112))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.553878784, -0.00231170654, -1.65839434, 0.866650403, 0.498902589, 2.46607934e-009, 5.02348474e-009, -3.78248899e-009, -0.999985576, -0.498901695, 0.866649151, -5.77936898e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.615721703, -0.232398987, 0.587142944, 0.498903215, -0.866651833, 4.77541471e-006, 2.38451321e-006, -4.13749922e-006, -0.99999088, 0.866652429, 0.498903751, 2.33085373e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615719795, -0.238517761, 0.587135315, -0.498903215, 0.866651833, -6.69786004e-006, -3.34363585e-006, 5.80360529e-006, 0.99999088, 0.866652429, 0.498903751, 2.33072406e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.615716934, -0.238525391, -0.0488891602, 0.498902082, -0.86665225, 8.04640968e-006, -1.60619777e-007, 9.19200102e-006, 0.99999088, -0.866652966, -0.498902738, 4.44671059e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679967, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00192260742, -2.26364183, -0.385681152, -2.36786946e-009, -5.61378055e-010, 0.99999094, -0.498903215, 0.866651833, -6.91662505e-010, -0.866652429, -0.498903751, -2.33191777e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 0.672800004))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.403680056))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0489349365, -0.615652084, -0.00296783447, 0.866652429, 0.498903751, 2.32153119e-009, -0.498903215, 0.866651833, 4.01780254e-009, -9.28190858e-012, -4.63769601e-009, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839939, 1.07647991, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.217201233, -1.85976696, -0.00347137451, 0.866647124, 0.498901218, 2.26065255e-009, -0.49889949, 0.8666448, -9.83626514e-011, -2.01297223e-009, -1.03593223e-009, 0.999977112))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.470959932, 0.269119978, 0.538240016))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318893433, -2.60064316, -0.00373840332, 0.866652429, 0.498903751, 1.76599568e-009, -0.498903215, 0.866651833, 7.95978394e-009, 2.43890108e-009, -7.77687248e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.470959932, 0.200000003, 0.538240016))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318901062, -2.43210697, -0.00379943848, 0.866652429, 0.498903751, 2.27182828e-009, -0.498903215, 0.866651833, 8.23071389e-009, 2.13564766e-009, -8.26405877e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615708351, -0.232406616, -0.0488739014, -0.498902678, 0.866652071, -7.96434051e-006, -1.77091977e-007, -9.29171892e-006, -0.99999088, -0.866652608, -0.498903275, 4.78914217e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679937, 0.200000003, 0.538240075))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31803894, -0.615720749, -0.00300598145, 0.866652429, 0.498903751, 2.32570896e-009, -0.498903215, 0.866651833, 3.92940835e-009, -5.70028469e-011, -4.56317428e-009, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))

AmmoPrt1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt1",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt1weld=weld(m,Handle,AmmoPrt1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.21711731, -1.05279922, -0.137039185, 0.866652429, 0.498903751, 2.31279484e-009, -0.498903334, 0.866652071, -7.38362926e-010, -2.37459519e-009, -5.11365839e-010, 0.99999094))
mesh("CylinderMesh",AmmoPrt1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt2",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt2weld=weld(m,Handle,AmmoPrt2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.217201233, -1.05278873, 0.131614685, 0.866649985, 0.498902321, 2.29875496e-009, -0.498901188, 0.866648316, -5.67319081e-010, -2.27866082e-009, -6.50366649e-010, 0.999983788))
mesh("CylinderMesh",AmmoPrt2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt3",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt3weld=weld(m,Handle,AmmoPrt3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419036865, -1.052948, -0.00316619873, 0.866649985, 0.498902321, 2.28128072e-009, -0.498901188, 0.866648316, -3.53729712e-010, -2.15695484e-009, -8.26758217e-010, 0.999983788))
mesh("CylinderMesh",AmmoPrt3,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt4",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt4weld=weld(m,Handle,AmmoPrt4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.351737976, -1.05289078, -0.137390137, 0.866649985, 0.498902321, 2.29298824e-009, -0.498901188, 0.866648316, -4.96807928e-010, -2.23848495e-009, -7.08597625e-010, 0.999983788))
mesh("CylinderMesh",AmmoPrt4,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt5",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt5weld=weld(m,Handle,AmmoPrt5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.351760864, -1.0529232, 0.131362915, 0.866652429, 0.498903751, 2.28518027e-009, -0.498903334, 0.866652071, -4.00782296e-010, -2.18224128e-009, -7.90156163e-010, 0.99999094))
mesh("CylinderMesh",AmmoPrt5,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt6",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt6weld=weld(m,Handle,AmmoPrt6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.149917603, -1.05283451, -0.00286865234, 0.866652429, 0.498903751, 2.29759878e-009, -0.498903334, 0.866652071, -5.55574475e-010, -2.27023111e-009, -6.62199851e-010, 0.99999094))
mesh("CylinderMesh",AmmoPrt6,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

function attackone()
attack = true
for i = 0,1,0.1 do
swait()
end
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 1
attackone()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == '' then

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
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.2, 0.3, -1) * angles(math.rad(70), math.rad(0), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-110),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.2, 0, -1) * angles(math.rad(60), math.rad(0), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
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
--end
end
end
end
end