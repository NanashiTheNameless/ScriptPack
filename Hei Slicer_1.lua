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
Neck=Torso.Neck
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0,1,0,-1,-0,-0,0,0,1,0,1,0)
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
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
Name = "WeaponModel",
Parent = Character,
}
mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
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
RW=Create("Weld"){
Name="Right Shoulder",
Part0=ch.Torso ,
C0=cf(1.5, 0.5, 0),
C1=cf(0, 0.5, 0), 
Part1=ch["Right Arm"] ,
Parent=ch.Torso ,
}
-- 
LW=Create("Weld"){
Name="Left Shoulder",
Part0=ch.Torso ,
C0=cf(-1.5, 0.5, 0),
C1=cf(0, 0.5, 0) ,
Part1=ch["Left Arm"] ,
Parent=ch.Torso ,
}
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
		local fp=Create("Part"){
		formFactor=formfactor,
		Parent=parent,
		Reflectance=reflectance,
		Transparency=transparency,
		CanCollide=false,
		Locked=true,
		BrickColor=BrickColor.new(tostring(brickcolor)),
		Name=name,
		Size=size,
		Position=Character.Torso.Position,
		Material=material,
		}
		nooutline(fp)
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local Msh=Create(Mesh){
		Parent=part,
		Offset=offset,
		Scale=scale,
		}
		if Mesh=="SpecialMesh" then
		Msh.MeshType=meshtype
		Msh.MeshId=meshid
		end
		return Msh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local Weld=Create("Weld"){
		Parent=parent,
		Part0=part0,
		Part1=part1,
		C0=c0,
		C1=c1,
		}
		return Weld
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

local Color = BrickColor.new("Crimson")
 
if len1 > 0.01 then
local w1 = Create('WedgePart', m){
Material = "SmoothPlastic",
FormFactor = 'Custom',
BrickColor = Color,
Transparency = 0,
Reflectance = 0,
Material = "Neon",
CanCollide = false,
Anchored = true,
Parent = workspace,
Transparency = 0.3,
}
game:GetService("Debris"):AddItem(w1,5)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Create("SpecialMesh"){
Parent = w1,
MeshType = "Wedge",
Scale = Vector3.new(0,1,1) * sz/w1.Size,
}
w1:BreakJoints()
table.insert(Effects,{w1,"Disappear",.03})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
if len2 > 0.01 then
local w2 = Create('WedgePart', m){
Material = "SmoothPlastic",
FormFactor = 'Custom',
BrickColor = Color,
Transparency = 0,
Reflectance = 0,
Material = "Neon",
CanCollide = false,
Anchored = true,
Parent = workspace,
Transparency = 0.3,
}
game:GetService("Debris"):AddItem(w2,5)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Create("SpecialMesh"){
Parent = w2,
MeshType = "Wedge",
Scale = Vector3.new(0,1,1) * sz/w2.Size,
}
w2:BreakJoints()
table.insert(Effects,{w2,"Disappear",.03})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Create("Sound",par or workspace){
Volume=vol,
Pitch=pit or 1,
SoundId=id,
Parent=par
}
sou:Play()
swait()
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
                        local c=Create("ObjectValue"){
                        Name="creator",
                        Value=game:service("Players").LocalPlayer,
                        Parent=h,
                        }
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
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
local bodvol=Create("BodyVelocity"){
velocity=angle*knockback,
P=5000,
maxForce=Vector3.new(8e+003, 8e+003, 8e+003),
Parent=hit,
}
local rl=Create("BodyAngularVelocity"){
P=3000,
maxTorque=Vector3.new(500000,500000,500000)*50000000000000,
angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)),
Parent=hit,
}
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Create("BodyVelocity"){
                P=500,
                maxForce=Vector3.new(math.huge,0,math.huge),
                }
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
                local bodyVelocity=Create("BodyVelocity"){
                velocity=vt(0,60,0),
                P=5000,
                maxForce=Vector3.new(8e+003, 8e+003, 8e+003),
                Parent=hit,
                }
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Create("BodyAngularVelocity"){
                P=3000,
                maxTorque=Vector3.new(500000,500000,500000)*50000000000000,
                angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30)),
                Parent=hit,
                }
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Create("BodyPosition"){
                P=2000,
                D=100,
                maxForce=Vector3.new(math.huge,math.huge,math.huge),
                position=hit.Parent.Torso.Position,
                Parent=hit.Parent.Torso,
                }
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
                local  targetgui=Create("BillboardGui"){
                Parent=ZTarget,
                Size=UDim2.new(10,100,10,100),
                }
                local targ=Create("ImageLabel"){
                Parent=targetgui,
                BackgroundTransparency=1,
                Image="rbxassetid://4834067",
                Size=UDim2.new(1,0,1,0),
                }
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
                        local debounce=Create("BoolValue"){
                        Name="DebounceHit",
                        Parent=hit.Parent,
                        Value=true,
                        }
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Create("ObjectValue"){
                        Name="creator",
                        Value=Player,
                        Parent=h,
                        }
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
	local BillboardGui = Create("BillboardGui"){
	Size = UDim2.new(3, 0, 3, 0),
	Adornee = EffectPart,
	Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
	BackgroundTransparency = 1,
	Size = UDim2.new(1, 0, 1, 0),
	Text = Text,
	TextColor3 = Color,
	TextScaled = true,
	Font = Enum.Font.ArialBold,
	Parent = BillboardGui,
	}
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

Handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Handle",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 0, 0, -1, 0, 0.999993801, 0, 1, 0, 0),CFrame.new(0.177848816, 0.0589141846, -1.10449219, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Handle,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.763705134, 1))
Hitbox=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,1,"Bright red","Hitbox",Vector3.new(0.200000003, 4.10947084, 0.698936343))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0.00057220459, -4.3589859, 0.0978279114, 0, 0, -1, -1, 0, 0, 0, 1, 0))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0.28012085, 0.000827789307, 0.00477981567, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.268613517, 0.56356132, 0.247545645))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0.275360107, 0.000465393066, 0.00193786621, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.747904301, 0.539860368, 0.826908112))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(-0.000644683838, 0.0931091309, -0.256637573, 0, 0, -1, 0.341053069, -0.940044045, 0, -0.940044045, -0.341053069, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.539860845, 0.144840568, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 0.0960845947, -0.257797241, 0, 0, -1, 0.355211943, -0.934785843, 0, -0.934785843, -0.355211943, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.558294952, 0.0526693054, 0.689967871))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(-0.000644683838, 0.192611694, -0.192626953, 0, 0, -1, 0.707106829, -0.707106769, 0, -0.707106769, -0.707106829, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.539860845, 0.144840568, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 0.193572998, -0.20010376, 0, 0, -1, 0.707106829, -0.707106769, 0, -0.707106769, -0.707106829, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.558294952, 0.0526693054, 0.689967871))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.360554546, 4.10947084, 0.508936346))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.27897644, 0.152828217, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0842708647, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0.279167175, 0.000465393066, 0.00191879272, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.632032096, 0.55065763, 0.826908112))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.371257514, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -1.66312408, 7.62939453e-006, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 1.04590607, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.766338646, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.381702155))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 1.05589294, -3.81469727e-006, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.531960428, 0.416087478, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.360554546, 0.360554546, 0.930516958))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -2.18531036, 0.00951004028, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.316016048, 0.344983995, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 1.3293103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -1.9859314, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.766338646, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -3.90222931, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -3.579422, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -3.75029755, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -5.82025146, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.94670105, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -2.89572906, -0.113525391, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -3.40847015, -0.113517761, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -3.04767609, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -5.28852081, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -3.21861267, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -5.98604584, -0.113513947, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.43396759, -0.113513947, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.60487366, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.07314301, -0.113513947, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.77577209, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.24404144, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -5.64936066, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 0.389762878, 7.62939453e-006, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.766338646, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -0.959503174, 3.81469727e-006, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.766338646, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -6.17155457, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.458222985, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -5.4784317, -0.113513947, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -2.36400604, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.405553579, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -5.11759949, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.813727915))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -2.18258667, 0.00520706177, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.784772933, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -2.72483063, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.813727915))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -6.37661743, 0.00519943237, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.790039718, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -2.55863953, -0.113529205, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 0.300214857, 0.624131382))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 4.19492531, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.42153168, -0.251224518, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.210677236, 1, 0.834808409))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -0.273963928, 7.62939453e-006, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.766338646, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 1.88893127, -1.38394165, 0, 0, -1, 0.707106829, -0.707106769, 0, -0.707106769, -0.707106829, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.215944156, 0.0526693054, 0.142207071))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 4.86359406, -4.35860443, 0, 0, -1, 0.707106829, -0.707106769, 0, -0.707106769, -0.707106829, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.215944156, 0.0526693054, 0.142207071))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Ghost grey","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(2.31504059, 0, -0.356616974, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.221211255, 0.214890704, 0.186976045))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Ghost grey","Part",Vector3.new(0.360554546, 0.360554546, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(6.5218811, 0, -0.356616974, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.221211255, 0.214890704, 0.186976045))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.360554546, 0.444370121, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -3.24833107, -5.30084229, 0, 0, -1, -0.500000179, -0.866025388, 0, -0.866025388, 0.500000179, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0948047191, 1, 0.58462894))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.360554546, 4.10947084, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.34153748, -0.000942230225, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0948047191, 1, 0.558294654))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.360554546, 0.444370121, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 1.03099823, -2.11115646, 0, 0, -1, 0.500000238, -0.866025269, 0, -0.866025269, -0.500000238, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0948047191, 1, 0.58462894))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Ghost grey","Part",Vector3.new(0.360554546, 0.495643318, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -3.19793129, -5.34571075, 0, 0, -1, -0.500000179, -0.866025388, 0, -0.866025388, 0.500000179, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.105338618, 1, 0.726836324))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.495643318, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 1.04631042, -2.06634521, 0, 0, -1, 0.500000238, -0.866025269, 0, -0.866025269, -0.500000238, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.105338618, 1, 0.726836324))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Ghost grey","Part",Vector3.new(0.360554546, 4.08098316, 0.360554546))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -4.27246094, -0.057964325, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.105338618, 1, 0.726836324))
FakeHandle=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","FakeHandle",Vector3.new(0.360554546, 0.360554546, 0.381702155))
FakeHandleweld=weld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 0.454818726, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(0.531960428, 0.416087478, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.963750422, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -1.66403198, -7.62939453e-006, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 0.770057678, -1.52587891e-005, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.763705134, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.376005113, 0.38360101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0.000465393066, 0.191772461, 7.62939453e-006, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.534593701, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0.000465393066, -1.2676239, -3.81469727e-006, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.529326737, 0.763705134, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.376005113, 0.38360101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0.000465393066, 0.792854309, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.534593701, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 1.3416748, -7.62939453e-006, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.763705134, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0.000465393066, -0.666549683, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.529326737, 0.763705134, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.474753797))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(-0.000835418701, 1.75665283, 0.428131104, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.516159058, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.474753797))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 1.7547226, 0.426303864, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.516159058, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 0.113929749, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.763705134, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, 0.685569763, -1.52587891e-005, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.763705134, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.360554546, 0.360554546, 0.813727915))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(-0.000644683838, -6.6566925, 0.00424957275, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.208043844, 0.763705134, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.360554546, 0.360554546, 0.379802853))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),CFrame.new(0, -0.549789429, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.526693285, 0.763705134, 1))

BackHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","BackHandle",Vector3.new(0.400000095, 0.400000036, 0.200000003))
BackHandleweld=weld(m,Character["Torso"],BackHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00270080566, -0.400000572, -0.995346785, 0.999995828, 9.57450538e-007, 9.07493813e-005, -8.38253868e-007, 0.999996424, 1.28402306e-007, -9.07492722e-005, -1.28478149e-007, 0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000036, 0.399999976))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-005, -1.47819519e-005, 0.299961567, 0.999977112, 5.98281886e-008, 7.15263013e-007, 5.95732566e-008, 0.999999404, -1.0673773e-010, 1.5279511e-010, 1.35713663e-011, 0.999977708))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000072, 0.200000003, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.43322754e-005, -1.29999566, -0.19994545, 0.999962568, 3.36675754e-007, 7.15328497e-007, 3.36268641e-007, -1.00000596, -1.72142322e-007, -7.15474016e-007, 1.72335845e-007, -0.999966145))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 0.400000036, 0.399999976))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.399995804, 0.299943924, 0.999962568, -5.95748411e-008, -1.5279511e-010, 5.99647478e-008, 1.00000596, -1.35571554e-011, 1.43096258e-006, -1.72875048e-010, 0.999966145))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000066, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299932957, -0.800000668, 0.699989319, -2.20599759e-006, 8.24195183e-008, -0.999966145, 2.50814537e-007, -1.00000596, -8.22300166e-008, -0.999962568, -2.51218012e-007, 7.751878e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399985313, -5.38825989e-005, 0.800014496, 4.46675614e-007, -1.0000031, -9.53122026e-011, 1.25138467e-006, -1.92912353e-010, 0.999983191, -0.999981284, -4.46891306e-007, 4.16730472e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400000334, -4.8160553e-005, 0.799980164, -1.19698299e-007, -1.00000596, -8.56203997e-011, 1.75560126e-006, -2.72109446e-010, 0.999966145, -0.999962568, 1.19311267e-007, 3.24791472e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.600000083, 0.599999964))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000152587891, 0.900003672, 0.199926376, 0.999962568, -5.98762355e-008, -7.15517672e-007, 6.02658901e-008, 1.00000596, 1.25339739e-010, 2.14632746e-006, -3.11786152e-010, 0.999966145))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000066, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299934387, -0.800001144, 0.699932098, 2.14639294e-006, -2.43232989e-010, 0.999966145, -6.0108313e-008, -1.00000596, -5.67865754e-011, 0.999962568, -5.97186656e-008, -7.15583155e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000036, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.399998188, -5.57899475e-005, 0.999962449, -5.97711889e-008, -7.15554052e-007, 6.01608363e-008, 1.00000596, 7.9623419e-011, 2.14636384e-006, -2.66084044e-010, 0.999966025))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399990797, -4.00543213e-005, 0.799942017, 5.96139245e-008, 1.00000596, -1.47792889e-010, 1.26962186e-005, -3.92930133e-011, 0.999966145, 0.999962568, -5.92242273e-008, -1.12654307e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 0.400000036, 0.399999976))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, -0.400005579, 0.299938679, 0.999981284, 5.93643037e-008, -8.36495019e-007, -5.91571911e-008, 1.0000031, 1.1671375e-010, 1.67113467e-006, -2.14456009e-010, 0.999983191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399995089, -4.43458557e-005, 0.79996109, -3.87580286e-007, 1.00000024, -6.71747102e-011, 1.24300786e-005, 6.27267127e-011, 1.00000024, 1, 3.87599812e-007, -1.21916382e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000036, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.399989605, -5.76972961e-005, 1, 7.44680392e-007, -1.49234256e-006, -7.44660611e-007, 1.00000024, 1.8306423e-010, 1.73078297e-006, -1.91121785e-010, 1.00000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, -0.401464701, -0.012863636, 0.999999881, 5.91680802e-008, -1.55193993e-006, -5.91485332e-008, 1.00000024, 2.09965378e-010, 1.79038034e-006, -2.19046115e-010, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.398539066, -0.0128684044, 0.999999881, -5.956732e-008, 1.19071046e-007, 5.95868315e-008, 1.00000024, -1.81472615e-011, 1.19376637e-007, 8.96704933e-012, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.398539066, -0.0128684044, 0.999999762, -5.956732e-008, 1.19071046e-007, 5.95868315e-008, 1.00000024, -1.81472615e-011, 1.19369361e-007, 8.96704933e-012, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.300000012, 1.10000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, -0.401463985, -0.0128593445, 1, 5.91109917e-008, -1.67275721e-006, -5.90914624e-008, 1.00000024, 2.37989184e-010, 1.91119761e-006, -2.4706992e-010, 1.00000024))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.300000012, 1.10000002))

WingConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","WingConnectorA",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingConnectorAweld=weld(m,BackHandle,WingConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.760124207, -0.500091553, 2.59146118, -0.70701617, -8.76535466e-007, 0.707190692, 2.30480083e-007, 0.999996424, 1.35069615e-006, -0.707191586, 1.03366017e-006, -0.707015276))
mesh("SpecialMesh",WingConnectorA,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","WingHandleA",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingHandleAweld=weld(m,WingConnectorA,WingHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.36985016e-005, 7.62939453e-006, 0.999981105, -9.80367076e-009, 1.01327896e-006, 1.8345645e-008, 0.999986887, 2.1032065e-011, -1.34110451e-006, 9.24046617e-010, 0.999976635))
mesh("SpecialMesh",WingHandleA,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00260162354, 1.39987755, 0.397865295, -0.999964237, -2.82797487e-007, -7.74860382e-007, -2.68114036e-007, 0.999991536, -3.07588664e-007, 1.43051147e-006, -3.09293114e-007, -0.999956012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000018))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00754928589, -3.2998507, 0.200576782, 0.999981046, -0.000345696521, 1.01327896e-006, -0.000345703098, -0.999986887, 7.34406058e-007, 1.34110451e-006, -7.35720846e-007, -0.999976635))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000033))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00755310059, -3.29984474, -0.000576019287, -0.999973834, 0.00034581509, -9.53674316e-007, -0.000345820386, -0.999988914, 8.78280844e-007, -1.43051147e-006, 8.79830168e-007, 0.999967694))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0071105957, -2.19989014, 0.39232254, 0.999964118, -0.000341437757, 7.4505806e-007, -0.000341443112, -0.999991536, 4.55009285e-007, 1.51991844e-006, -4.56985958e-007, -0.999955952))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.397834778, 1.79987717, -0.0046081543, 1.1920929e-006, 8.05591753e-008, -0.999955893, -9.59476438e-007, 0.999991536, 8.22495849e-008, 0.999964118, 9.74177965e-007, 5.06639481e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.400000036, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102138519, 1.39986181, -0.0054397583, 1.25169754e-006, 8.53931397e-008, -0.999958754, -9.66183052e-007, 0.99999094, 8.68290044e-008, 0.999966741, 9.78532171e-007, 5.96046448e-007))

WingConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","WingConnectorB",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingConnectorBweld=weld(m,BackHandle,WingConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.784416199, -0.499978304, 2.59280396, -0.707191348, -3.90662137e-007, -0.707015634, 2.66780262e-007, 0.999996424, -7.00154715e-007, 0.707016468, -5.99482121e-007, -0.707190454))
mesh("SpecialMesh",WingConnectorB,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","WingHandleB",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingHandleBweld=weld(m,WingConnectorB,WingHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0180549622, 0.000362634659, -0.00287246704, 1.00000024, 2.62332378e-009, -0.000288337469, -2.63818833e-009, 1.00000048, -1.41619694e-009, 0.000288575888, 1.4564705e-009, 1.00000012))
mesh("SpecialMesh",WingHandleB,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000033))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00733184814, -3.29872251, -0.000240325928, -1.00000024, 0.000345554465, 5.09619713e-006, -0.000345554959, -0.999998748, 8.77771527e-007, 6.97374344e-006, 8.76055537e-007, 1.00000679))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000018))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00751495361, -3.30146718, 0.200904846, 1.00000048, -0.000345482345, 0.000583082438, -0.00034548252, -1.00000083, 5.31843398e-007, 0.000582695007, -7.33383786e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00564956665, 1.40153003, 0.398208618, -1.0000006, -1.52919711e-007, -0.000701099634, -1.52856074e-007, 0.999992073, -2.92751594e-007, 0.000700622797, -2.9275219e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0101585388, -2.2015543, 0.392654419, 1.00000048, -0.000341564562, 0.000701278448, -0.000341564592, -1.00000072, 2.00845534e-007, 0.000700861216, -4.40466266e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.400000036, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102455139, 1.40156364, -0.00542831421, 0.000591039658, 8.87212934e-008, -1, -1.1955226e-006, 1.00000083, 8.81201458e-008, 1.0000006, 1.19532979e-006, 0.000591367483))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.398174286, 1.80155635, -0.00764846802, 0.000699937344, 9.82820438e-008, -1.00000012, -8.54601353e-007, 1.00000155, 9.79221255e-008, 1.00000155, 8.54139444e-007, 0.000700563192))

WingConnector2A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","WingConnector2A",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingConnector2Aweld=weld(m,BackHandle,WingConnector2A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.35351944, -8.82148743e-006, 0.777774811, 0.70710361, 2.35763025e-007, 0.707103252, -1.815758e-007, 0.999996424, -3.26344036e-008, -0.707104087, -1.89611058e-007, 0.707102716))
mesh("CylinderMesh",WingConnector2A,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandle2A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","WingHandle2A",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingHandle2Aweld=weld(m,WingConnector2A,WingHandle2A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -3.09944153e-006, -3.05175781e-005, 1.00000012, 2.13349054e-008, 2.56299973e-006, -2.13311964e-008, 1.00000012, -2.10869437e-008, -2.50339508e-006, 2.10766586e-008, 1))
mesh("CylinderMesh",WingHandle2A,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00458908081, -0.799812317, -1.43754196, -0.000118851662, 2.60861555e-007, -1, 8.83513394e-007, 1.00000012, 2.60746447e-007, 1, -8.8347872e-007, -0.000118762255))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43828201, 1.49969769, -0.00198364258, 0.999976516, -1.20581092e-006, -0.000126719475, 1.20483628e-006, 0.999987006, -3.7582123e-007, 0.000127106905, 3.84210125e-007, 0.999981046))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 1.20000005, 0.399999976))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.732719421, -0.000127077103, -0.011013031, 0.999976635, -2.55695795e-007, -4.47034836e-007, 2.54775983e-007, 0.999986887, 1.28024396e-007, 7.74860382e-007, -1.19475757e-007, 0.999981165))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000155, 0.599999964))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.6384964, 0.599924326, -0.00668716431, 0.999953151, -1.2063831e-006, -0.000126421452, 1.20447589e-006, 0.999973774, -3.58210656e-007, 0.000127106905, 3.75161164e-007, 0.999962151))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00381469727, -0.499895573, -1.43782806, 0.00011792779, -5.21332424e-007, 0.999962091, -1.20606751e-006, -0.999973774, -5.3828353e-007, 0.999953151, -1.20786547e-006, -0.000117242336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.00000048, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.738220215, 1.99993312, -0.00198364258, 0.999976635, -1.20194647e-006, -0.000127375126, 1.20097798e-006, 0.999977708, -4.28671427e-007, 0.000127702951, 4.37083344e-007, 0.999981105))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000393, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03820801, 1.79991686, -0.00200271606, 0.999976635, -1.20224877e-006, -0.000126779079, 1.20128084e-006, 0.999977708, -4.25658016e-007, 0.000127106905, 4.34070643e-007, 0.999981105))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000376, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03817749, 0.899925232, -0.00204849243, 0.999953151, -1.20194807e-006, -0.000124722719, 1.20003529e-006, 0.999973774, -4.1127916e-007, 0.000125437975, 4.2823288e-007, 0.999962091))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0112571716, -0.699848175, 0.935894012, -0.00011792779, -1.25010138e-006, -0.999962091, -8.60096748e-007, -0.999973774, 1.23308939e-006, -0.999953151, 8.62096385e-007, 0.000117242336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00269317627, -2.09995699, 1.03822327, -0.000118494034, 0.000339705701, -0.999980986, -2.36835331e-006, -0.999977708, -0.000339717168, -0.999976635, 2.32894104e-006, 0.000118196011))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00271606445, 0.89996767, -0.738178253, -0.000116944313, 0.000342214655, -0.999962091, 2.2733293e-006, 0.999973774, 0.000342227548, 0.999953151, -2.23520124e-006, -0.00011625886))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0116539001, -0.699934483, -0.537151337, 2.5331974e-006, -5.20983683e-008, 0.999962151, -4.94033145e-007, -0.999973774, -6.91953517e-008, 0.999953151, -4.95877543e-007, -1.84774399e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.610000014, 0.800000131, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.83622742, 1.50203705e-005, -0.00223922729, 0.999953151, -1.20720688e-006, -0.000126361847, 1.20529853e-006, 0.999973774, -3.67991873e-007, 0.000127017498, 3.84942496e-007, 0.999962091))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0066986084, -0.599959373, 1.93844223, -0.00011870265, 5.45789703e-007, -0.999962091, -1.48036668e-006, -0.999982953, -5.62686523e-007, -0.999953151, 1.48218601e-006, 0.000118017197))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00186538696, 0.699984789, 1.63819122, 0.000117570162, 0.000343447289, 0.999962151, 1.81229552e-007, 0.999973774, -0.000343426189, -0.999953151, 2.2344058e-007, 0.000116944313))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00183486938, -1.99997032, 1.6382103, -0.000119000673, -0.0003434307, -0.999961793, -6.70683221e-007, -0.999992132, 0.000343403255, -0.999953032, 7.13414749e-007, 0.000118345022))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00689315796, -0.799924135, 1.8359642, 0.00011947751, -5.85247506e-007, 0.999980927, 1.29695411e-006, 1.00000536, 5.93606615e-007, -0.999976516, 1.29784451e-006, 0.000119119883))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000377655029, -0.600088358, 1.94027328, -0.000118345022, 5.42628982e-007, -0.999961436, -1.47416779e-006, -1.00001073, -5.59483738e-007, -0.999953032, 1.4760343e-006, 0.000117659569))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 1.00000012, 0.599999964))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.83838654, -0.0998883247, -0.00664901733, 0.999953032, -1.2058166e-006, -0.000126332045, 1.20385414e-006, 1.00001073, -3.57192391e-007, 0.0001270473, 3.74113938e-007, 0.999961436))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00269699097, -3.1999507, 0.738132477, -0.000118583441, 0.000339725055, -0.999980748, -2.36830965e-006, -0.999996185, -0.000339730119, -0.999976516, 2.32889761e-006, 0.000118285418))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.400000036, 0.399999976))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.136451721, -3.79085541e-005, 0.00166320801, 0.999943495, -2.43060981e-007, -1.16229057e-006, 2.41201008e-007, 1.00001097, -9.43163485e-008, 1.84774399e-006, 1.11379194e-007, 0.999952197))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.600000381, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13814926, 1.29996634, -0.00199890137, 0.999976516, -1.20260449e-006, -0.000127136707, 1.20160905e-006, 0.999996185, -4.24037722e-007, 0.000127434731, 4.32436423e-007, 0.999980748))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111846924, -0.400034666, 1.23585892, -0.000119328499, -1.28770091e-006, -0.999980807, -8.9875391e-007, -1.00000536, 1.27924841e-006, -0.999976397, 8.99856275e-007, 0.000119000673))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.399999976))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.23489761, -0.199841738, -0.0108909607, 0.999953032, -1.23361633e-006, -0.000125616789, 1.2316226e-006, 1.00001073, -5.93518166e-007, 0.000126242638, 6.10448865e-007, 0.999961495))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00266265869, -1.99999452, -1.23814011, 0.000118851662, -0.000342111831, 0.999980748, -1.78501068e-006, -0.999996185, -0.000342116982, 0.999976516, -1.74523427e-006, -0.000118523836))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00266647339, 0.700069189, -1.23814774, -0.000118345022, 0.000342116429, -0.999980628, 2.27200508e-006, 1.00000536, 0.000342116284, 0.999976456, -2.23251186e-006, -0.000118017197))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.599999964))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43771744, -0.199832916, -0.00438690186, 0.999953032, -1.21251264e-006, -0.000125616789, 1.21055359e-006, 1.00001073, -3.29055638e-007, 0.000126242638, 3.45975934e-007, 0.999961495))

WingConnector2B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","WingConnector2B",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingConnector2Bweld=weld(m,BackHandle,WingConnector2B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.353546143, -1.02519989e-005, 0.77778244, 0.70710355, 2.76879433e-007, -0.707103431, -2.52642138e-007, 0.999996424, 1.9715614e-008, 0.707104325, 2.48997594e-007, 0.707102716))
mesh("CylinderMesh",WingConnector2B,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandle2B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","WingHandle2B",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingHandle2Bweld=weld(m,WingConnector2B,WingHandle2B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, -1.00135803e-005, 1.14440918e-005, 1, -1.95296565e-007, -1.23381615e-005, 1.95308559e-007, 1.00000012, 1.4882113e-007, 1.22785568e-005, -1.48819879e-007, 1.00000024))
mesh("CylinderMesh",WingHandle2B,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057144165, -3.20001864, 0.739765167, -6.97374344e-006, 0.00033977133, 1.00000012, 3.41693521e-007, -1.00000012, 0.000339771359, 1, 3.44076113e-007, 6.85453415e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00654602051, 0.700015306, 1.63977051, 7.68899918e-006, 0.000343456777, -1.00000024, 1.75846799e-006, 1.00000036, 0.00034345669, 1, -1.76109734e-006, 7.4505806e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.00000048, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.739772797, 1.99997914, 0.00642776489, -1, 7.83247856e-007, -5.78165054e-006, 7.83254677e-007, 1.00000072, 4.01889906e-007, 6.10947609e-006, 4.01940554e-007, -1.00000048))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00572967529, 0.700017214, -1.23976517, -7.4505806e-006, 0.000342165935, 1.00000072, -2.45941919e-007, 1.00000095, -0.000342165877, -1, -2.48526703e-007, -7.15255737e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00574493408, -2.00001717, -1.23976517, 7.09295273e-006, -0.000342123793, -1.00000072, -2.43031536e-007, -1.00000095, 0.000342123734, -1, 2.40580533e-007, -6.7949295e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00656890869, -2.00001454, 1.63977051, -7.09295273e-006, -0.000343398249, 1.00000072, -1.2695964e-006, -1.00000095, -0.000343398133, 1, -1.27200531e-006, 6.7949295e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.600000381, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13976669, 1.29998469, 0.0064239502, -1, 7.81620258e-007, -5.75184822e-006, 7.81646975e-007, 1.00000095, 3.88622823e-007, 6.10947609e-006, 3.88666422e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000376, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03976822, 0.899980307, 0.0064125061, -1, 7.82491384e-007, -5.75184822e-006, 7.82518043e-007, 1.00000095, 3.9576264e-007, 6.10947609e-006, 3.95806239e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00278091431, -0.699974537, 0.937519073, -7.06315041e-006, -1.23697805e-006, 1.00000072, -1.12531188e-006, -1.00000095, -1.23693724e-006, 1, -1.12529187e-006, 6.70552254e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057182312, -2.10001993, 1.0397644, -7.06315041e-006, 0.000339750521, 1.00000072, 3.41358827e-007, -1.00000095, 0.000339750462, 1, 3.43769329e-007, 6.70552254e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43976593, 1.49998724, 0.00643157959, -1, 7.81133508e-007, -5.75184822e-006, 7.81160281e-007, 1.00000095, 3.77194482e-007, 6.10947609e-006, 3.77238052e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000393, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0397644, 1.799981, 0.00640869141, -1, 7.82864788e-007, -5.75184822e-006, 7.82891391e-007, 1.00000095, 3.98813171e-007, 6.10947609e-006, 3.98856685e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00316619873, -0.699970961, -0.541133881, 6.46710396e-006, 7.11757536e-007, -1.00000072, -5.82138682e-007, -1.00000095, -7.11712801e-007, -1, 5.82114012e-007, -6.10947609e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057258606, 0.900016785, -0.739753723, -7.4505806e-006, 0.000342250947, 1.00000072, -2.47193384e-007, 1.00000095, -0.000342250918, -1, -2.49782829e-007, -7.15255737e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 1.00000012, 0.599999964))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.84001541, -0.100023985, 0.00176620483, -1, 7.83643713e-007, -5.51342964e-006, 7.83670544e-007, 1.00000095, 3.81563382e-007, 5.87105751e-006, 3.81607123e-007, -1.00000072))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00459289551, -0.499979734, -1.4393959, 7.89761543e-006, -5.65608218e-007, -1.00000179, -7.77587161e-007, -1.00000262, 5.6575351e-007, -1.00000012, 7.77515424e-007, -6.88433647e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000155, 0.599999964))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.64005661, 0.599978924, 0.00173950195, -1, 7.80917503e-007, -5.51342964e-006, 7.80982475e-007, 1.00000262, 3.64202009e-007, 6.49690628e-006, 3.64349034e-007, -1.00000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.399999976))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.2366333, -0.200026751, -0.00246047974, -1, 7.56787927e-007, -5.75184822e-006, 7.56851023e-007, 1.00000262, 6.28874716e-007, 6.82473183e-006, 6.29021883e-007, -1.00000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 1.20000005, 0.399999976))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.736637115, -2.5510788e-005, -0.00245285034, -1, 7.98881445e-007, -5.75184822e-006, 7.98944541e-007, 1.00000262, 6.19298987e-007, 6.82473183e-006, 6.19445927e-007, -1.00000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00276947021, -0.3999753, 1.23746872, -7.12275505e-006, -1.24613757e-006, 1.0000031, -1.08483562e-006, -1.00000429, -1.24588792e-006, 1.00000012, -1.08474001e-006, 5.453825e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.400000036, 0.399999976))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.135440826, -2.5510788e-005, 0.00338745117, 1.00000012, -7.98921292e-007, 5.453825e-006, 7.9902253e-007, 1.00000429, 6.19273123e-007, -7.12275505e-006, -6.19523803e-007, 1.0000031))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.610000014, 0.800000131, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.83781815, -1.74045563e-005, 0.00619506836, -1, 7.80351115e-007, -5.7220459e-006, 7.80415974e-007, 1.00000262, 3.64990427e-007, 6.70552254e-006, 3.65137282e-007, -1.00000179))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00638580322, -0.79997921, -1.43897247, 0.000111579895, -6.41668478e-008, 1.00000048, 1.08743711e-006, 1.00000083, 6.39935536e-008, -1.00000012, 1.08741108e-006, 0.000111877918))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00640487671, -0.599977732, 1.94189835, -7.36117363e-006, 5.59386876e-007, 1.00000191, -5.1072891e-007, -1.00000262, 5.59534215e-007, 1, -5.10656719e-007, 6.34789467e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00386810303, -0.79993391, 1.83702469, -0.00010445714, -2.80817233e-007, -1.0000006, 6.70409918e-007, 1.00000083, -2.80938991e-007, 1, -6.70420036e-007, -0.000104755163))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00172424316, -0.599978447, 1.94002914, -7.09295273e-006, 5.7002211e-007, 1.00000191, -5.03831359e-007, -1.00000262, 5.70169391e-007, 1, -5.03759338e-007, 6.10947609e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.599999964))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.4394722, -0.200026512, 0.00402832031, -1, 7.7835881e-007, -5.7220459e-006, 7.78423669e-007, 1.00000262, 3.64728379e-007, 6.70552254e-006, 3.64875291e-007, -1.00000179))

HandleArm=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleArm",Vector3.new(1.04999995, 0.400000006, 1.04999995))
HandleArmweld=weld(m,Character["Right Arm"],HandleArm,CFrame.new(0, 0, 0, 0, 0, -1, 0, 0.999993801, 0, 1, 0, 0),CFrame.new(-0.0193786621, 0.988277435, -0.0015411377, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",HandleArm,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(1.04999995, 0.480000019, 1.04999995))
Hitboxweld=weld(m,HandleArm,Hitbox,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.00234222412, 0.740032196, 0.00495147705, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.150016785, 0.270523071, -0.425022125, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 0.850000024, 0.850000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.07000005, 0.400000006, 1.07000005))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-1.52587891e-005, -0.800033569, 7.62939453e-006, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.04999995, 0.449999988, 1.04999995))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(7.62939453e-006, -0.42502594, 3.81469727e-006, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.04999995, 0.850000024, 0.600000024))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(7.62939453e-006, -0.425014496, -0.225013733, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.435020447, 0.270511627, -0.424991608, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 0.850000024, 0.850000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.149978638, 0.270496368, -0.425022125, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 0.850000024, 0.850000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.439987183, 0.270507813, -0.425048828, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 0.850000024, 0.850000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.517841339, -0.199775696, 3.81469727e-005, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?ID=9756362",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.5, -0.799793243, -0.300029755, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.499992371, -0.799812317, -0.300060272, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.500045776, -0.799800873, 2.67028809e-005, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.499992371, -0.799823761, 0.300041199, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.499984741, -0.799808502, -1.90734863e-005, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(7.62939453e-006, -0.199756622, -0.500049591, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.5, -0.799850464, 0.299995422, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.500068665, -0.799812317, 0.300010681, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.500019073, -0.799770355, 0.30002594, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.500061035, -0.799808502, -0.299942017, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.499977112, -0.799823761, -0.299972534, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.500053406, -0.799842834, -7.62939453e-006, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.500034332, -0.799797058, 2.28881836e-005, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1.04999995, 0.200000003, 1.04999995))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(2.67028809e-005, -0.250026703, 7.62939453e-006, -0.000171573163, -0.00294177281, -1.00000501, -0.000121731515, -1.00000501, 0.00294179446, -1, 0.000122233527, 0.000171213178))
mesh("SpecialMesh",Part,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.04999995))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.424980164, 0.200485229, 0, -0.000171573134, -0.00294178538, -1.00000501, 0.000121701836, 1.00000501, -0.0029418068, 1, -0.000122203841, -0.000171213236))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

local PE1 = Create("ParticleEmitter"){
Parent = BackHandle,
Color = ColorSequence.new(Color3.new (85, 255, 255), Color3.new (85, 255, 255)),
Transparency = NumberSequence.new(0.5),
Size = NumberSequence.new(2),
Texture = "rbxassetid://242093929",
Lifetime = NumberRange.new(5),
Enabled = false,
Rate = 50,
Rotation = NumberRange.new(100),
RotSpeed = NumberRange.new(180),
Speed = NumberRange.new(3),
LightEmission = 1,
}

local PE2 = PE1:Clone()
PE2.Parent = WingHandleA
PE2.Enabled = false

local PE3 = PE1:Clone()
PE3.Parent = WingHandleB
PE2.Enabled = false



function DoubleJump()
attack = true
Torso.Velocity=vt(0,150,0)
PE1.Enabled = true
PE2.Enabled = true
PE3.Enabled = true
so("http://roblox.com/asset/?id=199145327",Torso,1,1)
so("http://roblox.com/asset/?id=153092348",Torso,1,.9)
for i = 0,1,0.1 do
swait()
--Torso.Velocity=Head.CFrame.lookVector*50
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(6*i,math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(-50))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(-20))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0,cf(0,0,0)* angles(math.rad(20),0,0),.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
end
PE1.Enabled = false
PE2.Enabled = false
PE3.Enabled = false
attack = false
end

function attackone()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(0), math.rad(130), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
so("http://roblox.com/asset/?id=199145095",Hitbox,1,1)
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.3,0)
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
attack = false
scfr = nil
con:disconnect()
end

function attacktwo()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(0), math.rad(-80), math.rad(-120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-.5, 0.5, -.5) * angles(math.rad(0), math.rad(50), math.rad(120)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
so("http://roblox.com/asset/?id=199145146",Hitbox,1,1)
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.3,0)
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(0), math.rad(-50), math.rad(-80)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-.5, 0.5, -.5) * angles(math.rad(0), math.rad(80), math.rad(80)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
attack = false
scfr = nil
con:disconnect()
end

function attackthree()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(120), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.5) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-5),math.rad(60),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-.8,-1,-.5)*angles(math.rad(0),math.rad(-140),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0,cf(0,0,0)* angles(math.rad(4),math.rad(0),math.rad(0)),.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
so("http://www.roblox.com/asset/?id=199145204",Hitbox,1,1)
PE1.Enabled = true
PE2.Enabled = true
PE3.Enabled = true 
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)* angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-5),math.rad(140),math.rad(-20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-0.4,0)*angles(math.rad(0),math.rad(-60),math.rad(-30))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0,cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Torso.Velocity=Head.CFrame.lookVector*50
end
Humanoid.Jump = true
for i=0,0.6,.5 do
swait()
so("http://www.roblox.com/asset/?id=199145327",Hitbox,1,1) 
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
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,4)*euler(0,1,-6*i), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(70), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(.5, 0.5, -.8) * angles(math.rad(0), math.rad(-170), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-5),math.rad(80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0,cf(0,0,0)* angles(math.rad(50),math.rad(0),math.rad(0)),.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
end
attack = false
scfr = nil
con:disconnect()
PE1.Enabled = false
PE2.Enabled = false
PE3.Enabled = false
end

function AirDash()
attack = true
PE1.Enabled = true
PE2.Enabled = true
PE3.Enabled = true
so("http://roblox.com/asset/?id=270989122",Torso,1,1.1)
so("http://roblox.com/asset/?id=153092348",Torso,1,.9)
Humanoid.WalkSpeed = 50
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,4)* angles(math.rad(60),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Torso.Velocity=Torso.CFrame.lookVector*150
end
Humanoid.WalkSpeed = 16
attack = false
scfr = nil
PE1.Enabled = false
PE2.Enabled = false
PE3.Enabled = false
end

function Spin()
attack = true
Humanoid.Jump = true
for i = 1,2 do
swait()
so("http://roblox.com/asset/?id=199145327",Torso,1,1)
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.3,0)
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,5)* angles(6*i,math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(-50), math.rad(30)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
end
attack = false
end

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

function ShockRings()
		local shock = Create("Part"){
		FormFactor = "Custom",
		Size = Vector3.new(1, 1, 1),
		BrickColor = BrickColor.new("Really black"),
		Anchored = true,
		Name = "Shock Ring",
		CanCollide = false,
		Parent = workspace,
		Material = "SmoothPlastic",
		}
		local mesh = Create("SpecialMesh"){
		MeshType = "FileMesh",
		MeshId = "http://www.roblox.com/Asset/?id=3270017",
		Parent = shock,
		}
		MagniDamage(Hitbox,Torso,50,50,90,50,"Knockdown")
		local shock2 = shock:Clone()
		shock2.Parent = workspace
		local shock3 = shock:Clone()
		shock3.Parent = workspace
		local shockAngle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
		local shock2Angle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
		local shock3Angle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
		local shock2Size = math.random(1, 2)
		local shock3Size = math.random(3, 4)
		for i = 0, 100, 10 do
			local shock4 = Create("Part"){
				FormFactor = "Custom",
				Size = Vector3.new(1, 1, 1),
				BrickColor = BrickColor.new("Really black"),
				Anchored = true,
				Name = "Shock Ring",
				CanCollide = false,
				Parent = workspace,
				Material = "SmoothPlastic",
				CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 2, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25))),
				}
				local mesh = Instance.new("SpecialMesh")
				mesh.MeshType = "FileMesh"
				mesh.MeshId = "http://www.roblox.com/Asset/?id=20329976"
				mesh.Parent = shock4
				coroutine.resume(coroutine.create(function(part)
					for i = 0, 1, 0.05 do
						part.Transparency = i
						part.Mesh.Scale = Vector3.new(i * 20, i * 20, i * 20)
						wait()
					end
					part:Remove()
				end),shock4)
			shock.Transparency = i / 500
			shock2.Transparency = i / 500
			shock3.Transparency = i / 500
			shock.Mesh.Scale = Vector3.new(i, i, i)
			shock2.Mesh.Scale = Vector3.new(i, i, i) / shock2Size
			shock3.Mesh.Scale = Vector3.new(i, i, i) / shock3Size
			shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * shockAngle
			shock2.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * shock2Angle
			shock3.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * shock3Angle
			wait(0.03)
		end
table.insert(Effects,{shock,"Disappear",.1})
table.insert(Effects,{shock2,"Disappear",.1})
table.insert(Effects,{shock3,"Disappear",.1})
end

function Judgement()
attack = true
Humanoid.Jump = true
Humanoid.WalkSpeed = 0
Torso.Velocity=vt(0,100,0)
PE1.Enabled = true
PE2.Enabled = true
PE3.Enabled = true
so("http://roblox.com/asset/?id=199145327",Torso,1,1)
so("http://roblox.com/asset/?id=153092348",Torso,1,.9)
for i = 0,1,0.1 do
swait()
--Torso.Velocity=Head.CFrame.lookVector*50
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,5)* angles(6*i,math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(-50), math.rad(30)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
PE1.Enabled = false
PE2.Enabled = false
PE3.Enabled = false
for i = 0,1,0.05 do
swait()
--Torso.Velocity=Head.CFrame.lookVector*50
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.5)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.5)*angles(math.rad(0),math.rad(-90),math.rad(50))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, .5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
so("http://roblox.com/asset/?id=199145264",workspace,1,.9)	
so("http://roblox.com/asset/?id=200632875",workspace,1,.9)
ShockRings()
Humanoid.WalkSpeed = 16
attack = false
end

function FlyOn()
attack = true
PE1.Enabled = true
PE2.Enabled = true
PE3.Enabled = true
so("http://roblox.com/asset/?id=169445572",Torso,1,1)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.6)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(15),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.2,-.5)*angles(math.rad(0),math.rad(90),math.rad(15))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,-.3)*angles(math.rad(0),math.rad(-80),math.rad(20))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, .4, -.4) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
so("http://roblox.com/asset/?id=169445602",Torso,1,1)
local FlySound = Create("Sound"){
Parent = Torso,
SoundId = "rbxassetid://139582054",
Volume = 1,
Looped = true,
}
FlySound:Play()
coroutine.resume(coroutine.create(function()
local direction = Instance.new("BodyGyro", Torso)
direction.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
direction.cframe = CFrame.new(Torso.Position, mouse.Hit.p)
repeat wait()
if Torso:FindFirstChild("BodyGyro") then
wait()
direction.cframe = CFrame.new(Torso.Position, mouse.Hit.p)*CFrame.Angles(math.rad(-90),0,0)
Torso.Velocity = (direction.cframe*CFrame.Angles(math.rad(90),0,0)).lookVector.unit * 300
end
until attack == false
end))
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(60),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.7,-.2)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
end

function FlyOff()
attack = false
for i,BodyGyro in pairs(Torso:GetChildren()) do
if BodyGyro:IsA("BodyGyro") then
BodyGyro.maxTorque=Vector3.new(0,0,0)
BodyGyro.cframe=CFrame.new(0,0,0)
BodyGyro:Destroy()
end
end
for i,v in pairs (Torso:GetChildren()) do
if v:IsA("Sound") then
v:Stop()
v:remove()
end
end
so("http://roblox.com/asset/?id=139582177",Torso,1,1)
PE1.Enabled = false
PE2.Enabled = false
PE3.Enabled = false
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
--[[elseif attack == false and attacktype == 4 then
attacktype = 1
attackfour()]]--
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == ' ' and Anim == "Jump" then
DoubleJump()
elseif attack == false and k == 'w' and Anim == "Jump" then
AirDash()
elseif attack == false and k == 'q' then
Spin()
elseif attack == false and k == 'e' then
Judgement()
elseif attack == false and k == 'g' then
FlyOn()
end
end)
mouse.KeyUp:connect(function(k)
if k == 'g' and attack == true then
FlyOff()
end
end)
--[[
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0.2, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
]]--

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
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.5)*angles(math.rad(0),math.rad(90),math.rad(20))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-5)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20)*math.cos(sine/13), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, .4, -.4) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
WingHandleAweld.C0 = clerp(WingHandleAweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandleBweld.C0 = clerp(WingHandleBweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Aweld.C0 = clerp(WingHandle2Aweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
WingHandle2Bweld.C0 = clerp(WingHandle2Bweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
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

