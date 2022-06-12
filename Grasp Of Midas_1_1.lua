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

--example: local con = HitboxB.Touched:connect(function(hit) Damagefunc(Hitbox,hit,Dmg,Dmg,math.random(Knockback,Knockback),"Normal",RootPart,.2,1) end) 

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"Black","Handle",Vector3.new(1, 0.800000012, 1))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.96453857e-005, 0.000481128693, -1.83582306e-005, 1, 1.92410751e-014, -4.42007258e-005, -1.93349195e-014, 0.999999881, -2.12312026e-012, 4.42007258e-005, 2.12312091e-012, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"Black","Hitbox",Vector3.new(1.60000002, 3.4000001, 1))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300050735, 0.100232601, 3.57627869e-007, 1, 1.06558363e-014, -4.67116479e-009, -1.06558363e-014, 1, -7.35089073e-017, 4.67116479e-009, 7.35089073e-017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.20159912e-005, 1.10002291, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254525e-014, 0.999996662, -2.14035647e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, -0.699694633, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, -0.699361324, -0.40998435, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409914017, 0.000346660614, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409914017, 0.700180769, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.000400543213, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410078049, 0.000326633453, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.000392436981, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.700207949, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410078049, -0.699380398, 1.56164169e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.4100914, 0.700154781, 1.57356262e-005, 1, -1.93349195e-014, 4.42007258e-005, 1.92409124e-014, 0.999991417, 2.12310291e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.700230837, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 2, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699924469, 4.14848328e-005, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 1.39999998, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.57356262e-005, -0.299851894, 0.999885559, -4.41999473e-005, -5.95854743e-008, 1, -2.60350986e-012, 1, 5.95854743e-008, -1, 3.01648321e-014, -4.41999473e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.600000024, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.57356262e-005, -0.700007677, 0.999902725, 4.41999473e-005, -2.13950775e-012, -1, -2.65373322e-014, -1, 2.13950667e-012, -1, 2.64427677e-014, -4.41999473e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.848457336, -0.300411701, -0.141453743, 0.707042813, -1.50516166e-012, -0.707170904, 1.1783393e-014, 1, -2.11664583e-012, 0.707170904, 1.48822632e-012, 0.707042813))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.6998806, -0.499980569, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699882507, 0.500019133, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699882507, 0.500019133, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409921646, -0.699380398, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56164169e-005, -1.10002637, 0.699918747, 4.41999473e-005, -2.14036427e-012, -1, -1.23254932e-014, -1, 2.14036362e-012, -1, 1.22308889e-014, -4.41999473e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.16960907e-005, -0.599924088, 1.49999762, 4.41999473e-005, -2.14036427e-012, -1, 1, -1.22308889e-014, 4.41999473e-005, -1.23254932e-014, -1, 2.14036362e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.141283035, -0.300261259, -0.848459244, 0.707067847, -1.51049073e-012, -0.70714587, 1.20093924e-014, 1, -2.12403055e-012, 0.70714587, 1.49334115e-012, 0.707067847))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.6998806, -0.499980569, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403999984, 0.399999976, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.16960907e-005, -0.79992485, 1.19999647, 4.41999473e-005, -2.14036427e-012, -1, 0.999999821, 2.980231e-008, 4.419994e-005, 2.980231e-008, -0.999999821, 3.45762416e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599924088, -1.19995832, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Finger1Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger1Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger1Connectorweld=weld(m,Handle,Finger1Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399971008, 1.29990399, 0.200015664, 1, 1.78782017e-007, 4.41999473e-005, -1.7878321e-007, 0.999993324, -1.00110302e-011, -4.41999473e-005, 2.10883698e-012, 1))
Finger2Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger2Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger2Connectorweld=weld(m,Handle,Finger2Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399934769, 1.29982674, 0.400015712, 1, 2.97982776e-008, 4.41999473e-005, -2.97984766e-008, 0.999993324, -3.43642345e-012, -4.41999473e-005, 2.11934723e-012, 1))
Finger3Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger3Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger3Connectorweld=weld(m,Handle,Finger3Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399934769, 1.29971194, 0.140015721, 1, 8.93768473e-008, 4.421228e-005, -8.93774441e-008, 0.999993324, -1.82566007e-012, -4.421228e-005, -2.12587717e-012, 1))
Finger4Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger4Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger4Connectorweld=weld(m,Handle,Finger4Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399930954, 1.29973722, -0.119984269, 1, 8.93806842e-008, 4.421228e-005, -8.9381281e-008, 0.999993324, -1.82601091e-012, -4.421228e-005, -2.12569589e-012, 1))
Finger5Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger5Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger5Connectorweld=weld(m,Handle,Finger5Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399984121, -1.29981911, -0.399932861, -4.41701486e-005, 5.95858012e-008, 1, 4.58027785e-008, -0.999993324, 5.95882241e-008, 1, 4.58051019e-008, 4.41701486e-005))
Finger1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger1",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Finger1weld=weld(m,Finger1Connector,Finger1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, 0.100007057, 0, 1, 2.06483719e-011, -5.55111512e-017, -2.54232191e-011, 0.999986649, 4.50594423e-016, 5.55111512e-017, -4.49727061e-016, 1))
Finger2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger2",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger2weld=weld(m,Finger2Connector,Finger2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.199999213, 1.1920929e-007, 1, 8.77520279e-013, 0, -1.67332814e-012, 0.999986649, 1.50920942e-016, 0, -1.50053581e-016, 1))
Finger3=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger3",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger3weld=weld(m,Finger3Connector,Finger3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.200001121, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23739232e-016, 4.35207426e-013, 2.38535383e-016, 1))
Finger4=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger4",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger4weld=weld(m,Finger4Connector,Finger4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.199998736, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23732138e-016, 4.35207426e-013, 2.38539513e-016, 1))
Finger5=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger5",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger5weld=weld(m,Finger5Connector,Finger5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.199927688, 9.53674316e-006, 1, -3.86535248e-012, -7.77482967e-010, 5.45696821e-012, 0.999986649, -1.35540613e-012, 7.77477638e-010, 2.57749442e-012, 1))

function FuckYou()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-170)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.01 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-150)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
end

function attackone()
attack = true
local con = Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-15)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,.9)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-70)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(60)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.5) * angles(math.rad(90), math.rad(0), math.rad(120)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(-20)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(-20)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-20),math.rad(0),math.rad(-20)),.3)
end
attack = false
con:disconnect()
end

function attacktwo()
attack = true
local con = Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(-10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
so("http://roblox.com/asset/?id=200632211",Hitbox,1,.9)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(70)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
attack = false
con:disconnect()
end

function attackthree()
attack = true
local con = Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(-10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,.8)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(90)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-40*i)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
end

function weld5(part0, part1, c0, c1)
    local weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    
weeld.C0=c0
    weeld.C1=c1
    return weeld
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0.5,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0.5,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

local Grab = false

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

function MagniDamage2(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
for i,v in pairs (hum.Parent:GetChildren()) do
if v:IsA("Humanoid") then
v:remove()
end
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Black")
v.Reflectance = 0.5
v.Material = "SmoothPlastic"
v.CanCollide = true
end
end
end
end
end
end
end


function GrabNSlam()
attack = true
so("http://roblox.com/asset/?id=200632211",Hitbox,1,.9)
if Grab == false then
gp = nil
con1=Hitbox.Touched:connect(function(hit) -- credits to TheDarkRevenant for the grabbing
local ht = hit.Parent          
local hum1=ht:FindFirstChild('Humanoid')
if hum1 ~= nil then
hum1.PlatformStand=true
gp = ht
Grab = true
local asd=weld5(RightArm,ht:FindFirstChild("Torso"),CFrame.new(0,-1.7,0),CFrame.new(0,0,0))
asd.Parent = RightArm
asd.Name = "asd"
asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
so("http://roblox.com/asset/?id=200632821",Torso,1,.9)
for i,v in pairs (gp:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Black")
v.Reflectance = 0.5
v.Material = "SmoothPlastic"
end
end
elseif hum1 == nil then
con1:disconnect()
wait() return
end
end)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-40)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
if Grab == true then
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-50)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(40)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
so("http://roblox.com/asset/?id=200632875",Torso,1,.9)
MagicCircle(BrickColor.new("Black"),Hitbox.CFrame,5,5,5,6,6,6,0.05)
MagicRing(BrickColor.new("Black"),Hitbox.CFrame,5,5,5,6,6,6,0.05)
MagniDamage(Hitbox,Hitbox,10,30,50,0,"Normal")
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(50),math.rad(0),math.rad(70)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-70)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
end
con1:disconnect()
for i,v in pairs(RightArm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
         
end
end
Grab = false
attack = false
end

function BlastEffect(brickcolor,cframe,x1,y1,z1,x2,y2,z2)
local prt=part(3,workspace,"Neon",0.5,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame = cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.05 do
wait()
prt.Transparency=i
msh.Scale=msh.Scale+vt(x2,y2,z2)
end
prt.Parent=nil
end))
end

function HammerFist()
attack = true
Humanoid.WalkSpeed = 0
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(-5))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(-5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.07,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=200632875",Torso,1,.9)
so("http://roblox.com/asset/?id=263610131",Torso,1,1)
so("http://roblox.com/asset/?id=263610111",Torso,1,1)
MagniDamage(Hitbox,Hitbox,20,20,30,0,"Knockdown")
local hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if hit~=nil then
local ref=part(3,workspace,"Neon",0,1,BrickColor.new("Bright blue"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,10 do
local Col=BrickColor.new("Black")
local groundpart=part(3,workspace,"SmoothPlastic",0.5,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=false
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end 
BlastEffect(BrickColor.new("Bright orange"),cf(pos),1,1,1,.7,.7,.7)
MagicCircle(BrickColor.new("Black"),cf(pos),3,3,3,5,5,5,0.05)
MagniDamage(ref,ref,10,10,20,math.random(10,20),"Knockdown")
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)* angles(math.rad(40),math.rad(0),math.rad(0)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,.5,-.2)*angles(math.rad(0),math.rad(90),math.rad(30))*angles(math.rad(2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-80),math.rad(40))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.07,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
Humanoid.WalkSpeed = 16
end

function TurnIntoGold()
attack = true
so("http://roblox.com/asset/?id=200632211",Hitbox,1,.9)
if Grab == false then
gp = nil
con1=Hitbox.Touched:connect(function(hit) -- credits to TheDarkRevenant for the grabbing
local ht = hit.Parent          
local hum1=ht:FindFirstChild('Humanoid')
if hum1 ~= nil then
hum1.PlatformStand=true
gp = ht
Grab = true
local asd=weld5(RightArm,ht:FindFirstChild("Torso"),CFrame.new(0,-1.7,0),CFrame.new(0,0,0))
asd.Parent = RightArm
asd.Name = "asd"
asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
so("http://roblox.com/asset/?id=200632821",Torso,1,.9)
--[[for i,v in pairs (gp:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Black")
v.Reflectance = 0.5
v.Material = "SmoothPlastic"
end
end]]--
elseif hum1 == nil then
con1:disconnect()
wait() return
end
end)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-40)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
if Grab == true then
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
so("http://roblox.com/asset/?id=248572927",Torso,1,1)
MagniDamage2(Hitbox,Hitbox,5,30,50,0,"Normal")
MagicCircle(BrickColor.new("Black"),RightArm.CFrame,3,3,3,5,5,5,0.05)
BlastEffect(BrickColor.new("Black"),Torso.CFrame,1,1,1,.7,.7,.7)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
end
con1:disconnect()
Grab = false
attack = false
for i,v in pairs(RightArm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
         
end
end
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and attacktype == 2 then
attacktype = 3
attacktwo()
elseif attack == false and attacktype == 3 then
attacktype = 1
attackthree()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == 'q' then
GrabNSlam()
elseif attack == false and k == 'e' then
HammerFist()
elseif attack == false and k == 'r' then
TurnIntoGold()
end
end)


local sine = 0
local change = 1
local val = 0
local donum = .5

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
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(5)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.07,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10)*math.cos(sine/13), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10)*math.cos(sine/13), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-5)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
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