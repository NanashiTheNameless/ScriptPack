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
Material = "Neon",
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
Material = "Neon",
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
	local EffectPart = part("Custom",workspace,"Neon",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,1,"Crimson","Handle",Vector3.new(0.337252527, 0.768720508, 0.32947734))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0155067444, -0.0201148987, -0.9514575, -0.999991775, -2.63234701e-009, -1.78467189e-007, 1.78460596e-007, 2.09074528e-006, -0.999991238, 2.62754263e-009, -0.999994516, -2.09073869e-006))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FakeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","FakeHandle",Vector3.new(0.337252527, 1.56872046, 0.32947734))
FakeHandleweld=weld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -4.29153442e-006, 0, 0.999983549, 6.4943606e-012, 5.18505681e-012, 6.4943606e-012, 0.999982476, -1.40971679e-011, 5.18505681e-012, -1.40971679e-011, 0.999989271))
mesh("CylinderMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,1,"Crimson","Hitbox",Vector3.new(0.200000003, 5.39620876, 1.2275759))
Hitboxweld=weld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0112304688, -5.05733967, -0.142923594, 0.999983549, -1.6889453e-007, 1.7490478e-009, 1.6890759e-007, 0.999982476, 2.06239793e-006, -1.73901538e-009, -2.06241202e-006, 0.999989271))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.941232145, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00333404541, -1.87818408, 0.392029285, 0.999983549, 7.22864968e-009, 1.85786952e-009, -7.21585991e-009, 0.999982476, 6.21967047e-008, -1.8474865e-009, -6.22242169e-008, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00294876099, -1.48618293, 0.234626532, 0.999991775, -6.92084313e-007, -2.79759416e-008, 6.92091135e-007, 0.999991238, 7.76650154e-007, 2.79805104e-008, -7.76661409e-007, 0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0.5,"Crimson","Part",Vector3.new(0.200000003, 1.09810448, 1.09825778))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111503601, -7.12914991, 0.0778756142, -0.999983549, -2.38366567e-007, 2.78984214e-008, -2.38353792e-007, 0.999982476, 3.42407702e-006, -2.79094472e-008, 3.4240818e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.235292464, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032119751, 2.26996613, -0.235239744, 0.999983549, 2.27345004e-006, 1.85357618e-009, 2.27343958e-006, -0.999982476, -6.19256753e-008, 1.8430536e-009, 6.19534148e-008, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00328826904, -3.05379343, 0.31357193, 0.999983549, 1.6775989e-006, 1.85146709e-009, -1.67758776e-006, 0.999982476, 2.10900225e-007, -1.84073135e-009, -2.10926942e-007, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00361633301, 1.17272615, 0.234902143, -0.999991775, 6.90090019e-007, -6.17988789e-008, -6.9009667e-007, -0.999991238, -1.92284324e-006, -6.17948501e-008, -1.92285052e-006, 0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.941232324, 0.941363752))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111312866, -7.05103445, 7.20024109e-005, -0.999983549, -2.38989003e-007, 2.78912751e-008, -2.38976213e-007, 0.999982476, 3.42408703e-006, -2.79023027e-008, 3.4240918e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00328445435, 1.48618865, -0.234995365, 0.999991775, -2.43565705e-006, -2.79671699e-008, -2.43566478e-006, -0.999991238, -7.7722143e-007, -2.79703816e-008, 7.77232799e-007, -0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.313744068, 0.313787907))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00323486328, -3.9158895, 0.313471079, 0.999983549, 1.67746589e-006, 1.82123372e-009, -1.67745475e-006, 0.999982476, 1.36385779e-007, -1.81062387e-009, -1.36413064e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.627488196, 0.627575815))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111541748, -6.26727676, -0.1569736, -0.999983549, -3.74028872e-007, 2.82691719e-008, -3.74016338e-007, 0.999982476, 3.40171596e-006, -2.82806525e-008, 3.40172096e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00325393677, -3.05376291, 0.548654556, 0.999983549, 1.67670032e-006, 1.8507289e-009, -1.67668918e-006, 0.999982476, 1.36589279e-007, -1.84011772e-009, -1.36616563e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.784308136, 0.313744128, 0.941363871))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.956581, -0.0034866333, -0.000377416611, 1.69885118e-006, -0.999982476, -1.4619045e-006, 0.999983549, 1.69886266e-006, -2.81736988e-007, 2.81748243e-007, -1.46192224e-006, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.470616162, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00340270996, -1.32952571, -0.00091958046, 0.999983549, 4.48989113e-009, 2.0147255e-009, -4.47700188e-009, 0.999982476, -1.22017809e-008, -2.00434291e-009, 1.21735866e-008, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00347137451, 1.32950616, 0.391701937, -0.999983549, 6.79197456e-007, -1.06258824e-007, -6.79210928e-007, -0.999982476, -3.40140218e-006, -1.06250148e-007, -3.40140718e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00343322754, -1.01590419, -0.000721693039, 0.999983549, 4.89370677e-009, 1.84525295e-009, -4.88081753e-009, 0.999982476, -1.18052412e-008, -1.83487137e-009, 1.17770469e-008, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 2.19620872, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0112304688, -4.85725212, 0.157074451, 0.999983549, -1.68901025e-007, 1.74386283e-009, 1.68913999e-007, 0.999982476, 2.06241202e-006, -1.73382975e-009, -2.06242612e-006, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332641602, -1.64292932, -0.234835863, -0.999983549, 2.48220749e-006, 4.28772786e-008, 2.48222295e-006, 0.999982476, 6.20761966e-008, -4.28872511e-008, 6.21039362e-008, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.941232204, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00337600708, 1.87816811, 0.548668146, -0.999983549, -2.09514951e-006, -1.85223048e-009, 2.09513905e-006, -0.999982476, -2.10844746e-007, -1.84140636e-009, -2.10871463e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00345993042, -1.64295578, -0.23536098, 0.999983549, 2.14052807e-006, 1.87920302e-009, -2.14051738e-006, 0.999982476, 5.53466975e-007, -1.86763671e-009, -5.53491191e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00329971313, -1.48625445, 0.235539556, -0.999983549, -3.5400555e-007, 5.77611949e-008, -3.53992959e-007, 0.999982476, 2.07279913e-006, -5.77719668e-008, 2.07281323e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00325775146, 1.17274141, 0.235400319, 0.999991775, 3.53981562e-007, 3.20967608e-008, 3.53975338e-007, -0.999991238, -7.16821546e-007, 3.20912328e-008, 7.16833028e-007, -0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00327682495, 2.27002025, -0.235158801, -0.999983549, -2.09821178e-006, -1.85486226e-009, 2.09820132e-006, -0.999982476, -1.5516689e-006, -1.84122417e-009, -1.55168641e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332260132, 1.48624778, -0.235339522, -0.999983549, -2.09700579e-006, -1.86469373e-009, 2.09699533e-006, -0.999982476, -6.16596481e-008, -1.85418236e-009, -6.16873876e-008, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0033531189, -3.05378008, -0.313676715, 0.999983549, 8.44146427e-007, 1.8454156e-009, -8.44134604e-007, 0.999982476, 2.10693088e-007, -1.83485604e-009, -2.10719804e-007, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00336456299, 1.32966352, 0.392354488, 0.999983549, 3.56601788e-007, 3.22670211e-008, 3.56589339e-007, -0.999982476, -7.14656721e-007, 3.22562066e-008, 7.14680027e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.941232145, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00327682495, -1.8780818, -0.392092228, 0.999983549, 9.54754853e-009, 1.8608165e-009, -9.53465928e-009, 0.999982476, 1.36152494e-007, -1.85043292e-009, -1.36179779e-007, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0.5,"Crimson","Part",Vector3.new(0.200000003, 4.23554564, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111465454, -4.46461868, 0.547372937, -0.999983549, -2.37446756e-007, 2.68987197e-008, -2.3743398e-007, 0.999982476, 3.41447935e-006, -2.69097491e-008, 3.41448458e-006, -0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.235292464, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723266, 0.941232204, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00229263306, 1.8784852, 0.548132777, 0.999983549, 2.28433578e-006, 3.46592e-009, 2.28432555e-006, -0.999982476, 2.3989287e-008, 3.45558382e-009, -2.39610927e-008, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00328826904, -3.0538249, 0.548416853, -0.999983549, -8.45527893e-007, 5.79000847e-008, -8.45516013e-007, 0.999982476, 1.37719553e-007, -5.79102348e-008, 1.37746611e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.20000000298023,0.19999998807907,"Crimson","Part",Vector3.new(0.627446532, 0.313744128, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.95695913, 0.153850555, -1.88350677e-005, 1.23580949e-005, -0.999982476, -1.38665314e-006, 0.999983549, 1.2358094e-005, -2.81483551e-007, 2.81509386e-007, -1.38666815e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.32940942, 0.235308081, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00342178345, -1.44685268, 0.0933318138, 0.999983549, 1.82964754e-009, 2.57953658e-008, -4.97580288e-009, 0.992382348, 0.123054668, -2.53653418e-008, -0.123053834, 0.992389202))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723266, 0.313744128, 0.313787907))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10088038, -0.00387954712, -0.00030374527, 1.23383988e-005, -0.999991357, -1.24204348e-006, 0.999991775, 1.24278058e-005, -2.83419212e-007, 2.81970102e-007, -1.24124654e-006, 0.999985576))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.627575815))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00345993042, -1.32954931, -0.000645399094, 0.999991775, 2.2931772e-009, 2.83644663e-009, -2.2867539e-009, 0.999991238, -1.22554411e-008, -2.83125301e-009, 1.22415713e-008, 0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00319671631, 2.58385658, 0.0784084797, -0.999983549, 6.99771647e-007, 7.69456392e-008, -6.99785573e-007, -0.999982476, -3.46686784e-006, 7.69531425e-008, -3.46687284e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00309753418, -1.17580795, 0.201576114, 0.999983549, 1.03144799e-008, 2.49791832e-008, -1.32968978e-008, 0.992377877, 0.123090871, -2.35107542e-008, -0.123090021, 0.992384672))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00310897827, -0.922920227, 0.72364223, 0.999983549, -3.27961232e-008, 1.13043491e-007, -4.19647534e-008, 0.797841132, 0.602842987, -1.09962386e-007, -0.602838814, 0.797846437))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332260132, -3.52438259, 0.0782864094, -0.999983549, -4.52814959e-008, -7.21113196e-008, -4.52688766e-008, 0.999982476, 3.46685874e-006, 7.2100363e-008, 3.46686375e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0030670166, -1.21008945, 0.436469018, 0.999983549, -7.87800047e-009, 7.14481416e-008, -1.95312992e-008, 0.926698804, 0.375760943, -6.91671644e-008, -0.375758439, 0.926705182))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332260132, 3.52438259, -0.0782866478, -0.999983549, 5.2095578e-007, 7.69454971e-008, -5.20969479e-007, -0.999982476, -3.46686829e-006, 7.69536186e-008, -3.4668733e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.20000000298023,0.19999998807907,"Crimson","Part",Vector3.new(0.627446532, 0.313744128, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.95644081, -0.158653259, -0.000337839127, 1.23528962e-005, -0.999991238, -1.08801851e-006, 0.999991775, 1.23528962e-005, -2.81498615e-007, 2.81516435e-007, -1.08802521e-006, 0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00320053101, -2.58385968, -0.0783866644, 0.999983549, -6.99774148e-007, 7.21093087e-008, 6.99787847e-007, 0.999982476, 7.14558269e-007, -7.20990059e-008, -7.14581574e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.627446532, 0.329431295, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.95731616, -0.00356674194, 0.00155854225, 1.22981037e-005, -0.999982476, -1.7120442e-006, 0.999983549, 1.22981037e-005, -2.85729953e-007, 2.85759711e-007, -1.71205704e-006, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.345118493, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.9573344, -0.003490448, 0.0015707016, 1.22974561e-005, -0.999982476, -1.71209012e-006, 0.999983549, 1.22974561e-005, -2.85813286e-007, 2.85843043e-007, -1.71210297e-006, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.800047338, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00285720825, -3.05447507, 0.000669717789, 0.999983549, 1.73040848e-006, 2.60311284e-009, -1.73039746e-006, 0.999982476, 1.80006055e-007, -2.59241517e-009, -1.80033112e-007, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.941232324, 0.941363752))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0108108521, 6.11060905, 7.2479248e-005, -0.999983549, 6.4022845e-007, -3.17583897e-008, -6.40241865e-007, -0.999982476, -3.42378917e-006, -3.17500231e-008, -3.42379394e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.32940942, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321578979, -0.176496148, -1.3961606, 0.999983549, -1.503454e-007, -1.90790331e-007, -1.70862734e-007, 0.122963123, -0.992400408, 1.72679222e-007, 0.992393613, 0.122963957))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00324249268, -3.67959356, -5.48362732e-006, 0.999983549, 1.69034786e-006, 2.03576245e-009, -1.69033672e-006, 0.999982476, 2.0355435e-007, -2.02503547e-009, -2.03581067e-007, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00331115723, -3.52438235, 0.0784561634, 0.999983549, -5.20962203e-007, 7.21101898e-008, 5.20975618e-007, 0.999982476, 7.14548946e-007, -7.20997591e-008, -7.14572252e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 2.19620848, 0.313787997))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0110740662, -4.85657263, -0.313279152, 0.999983549, -1.6248255e-007, 1.81624948e-009, 1.62495525e-007, 0.999982476, 2.05884567e-006, -1.80620241e-009, -2.05885976e-006, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.313744068, 0.313787907))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00326156616, -3.91583991, 0.313654423, -0.999983549, 2.0143832e-006, -1.41037759e-008, 2.01439821e-006, 0.999982476, 4.01588659e-006, 1.41014143e-008, 4.0158875e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032043457, 2.58385968, 0.0783869028, 0.999983549, 1.6445658e-007, -7.69413688e-008, 1.64443989e-007, -0.999982476, -7.14557359e-007, -7.6951423e-008, 7.14580665e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00368881226, 1.02208138, -0.00058555603, 0.999983549, 4.91098717e-009, 1.74820658e-009, -4.89809793e-009, 0.999982476, -1.15255716e-008, -1.73782599e-009, 1.14973773e-008, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.321587712, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00288772583, -1.40384197, -0.126018524, 0.999983549, 2.47798795e-008, -2.45310847e-008, -2.79200663e-008, 0.990392208, -0.138160869, 2.08841122e-008, 0.138159946, 0.990399003))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0032043457, -2.58385634, -0.0784084797, -0.999983549, -3.43271722e-007, 3.70975002e-008, -3.43259103e-007, 0.999982476, 3.46686329e-006, -3.71088511e-008, 3.46686829e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00331497192, 3.52438259, -0.0784561634, 0.999983549, 3.43275076e-007, 3.22715437e-008, 3.43262627e-007, -0.999982476, -7.14547809e-007, 3.22607399e-008, 7.14571115e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00267028809, -2.42355728, 0.000181913376, 0.999983549, 1.71436341e-006, 2.42547382e-009, -1.71435227e-006, 0.999982476, 1.89215598e-007, -2.41476439e-009, -1.89242428e-007, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.313723296, 1.88246465, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00357818604, 0.00305700302, -0.000618696213, 0.999983549, 5.45213652e-009, 1.758099e-009, -5.43924727e-009, 0.999982476, -1.18889147e-008, -1.74771797e-009, 1.18607204e-008, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

BackHandle=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","BackHandle",Vector3.new(0.400000095, 0.400000036, 0.200000003))
BackHandleweld=weld(m,Character["Torso"],BackHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00270080566, -0.400000572, -0.995346785, 0.999995828, 9.57450538e-007, 9.07493813e-005, -8.38253868e-007, 0.999996424, 1.28402306e-007, -9.07492722e-005, -1.28478149e-007, 0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000036, 0.399999976))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-005, -1.47819519e-005, 0.299961567, 0.999977112, 5.98281886e-008, 7.15263013e-007, 5.95732566e-008, 0.999999404, -1.0673773e-010, 1.5279511e-010, 1.35713663e-011, 0.999977708))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.800000072, 0.200000003, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.43322754e-005, -1.29999566, -0.19994545, 0.999962568, 3.36675754e-007, 7.15328497e-007, 3.36268641e-007, -1.00000596, -1.72142322e-007, -7.15474016e-007, 1.72335845e-007, -0.999966145))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(2, 0.400000036, 0.399999976))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.399995804, 0.299943924, 0.999962568, -5.95748411e-008, -1.5279511e-010, 5.99647478e-008, 1.00000596, -1.35571554e-011, 1.43096258e-006, -1.72875048e-010, 0.999966145))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000066, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299932957, -0.800000668, 0.699989319, -2.20599759e-006, 8.24195183e-008, -0.999966145, 2.50814537e-007, -1.00000596, -8.22300166e-008, -0.999962568, -2.51218012e-007, 7.751878e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399985313, -5.38825989e-005, 0.800014496, 4.46675614e-007, -1.0000031, -9.53122026e-011, 1.25138467e-006, -1.92912353e-010, 0.999983191, -0.999981284, -4.46891306e-007, 4.16730472e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400000334, -4.8160553e-005, 0.799980164, -1.19698299e-007, -1.00000596, -8.56203997e-011, 1.75560126e-006, -2.72109446e-010, 0.999966145, -0.999962568, 1.19311267e-007, 3.24791472e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.800000012, 0.600000083, 0.599999964))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000152587891, 0.900003672, 0.199926376, 0.999962568, -5.98762355e-008, -7.15517672e-007, 6.02658901e-008, 1.00000596, 1.25339739e-010, 2.14632746e-006, -3.11786152e-010, 0.999966145))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000066, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299934387, -0.800001144, 0.699932098, 2.14639294e-006, -2.43232989e-010, 0.999966145, -6.0108313e-008, -1.00000596, -5.67865754e-011, 0.999962568, -5.97186656e-008, -7.15583155e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000036, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.399998188, -5.57899475e-005, 0.999962449, -5.97711889e-008, -7.15554052e-007, 6.01608363e-008, 1.00000596, 7.9623419e-011, 2.14636384e-006, -2.66084044e-010, 0.999966025))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399990797, -4.00543213e-005, 0.799942017, 5.96139245e-008, 1.00000596, -1.47792889e-010, 1.26962186e-005, -3.92930133e-011, 0.999966145, 0.999962568, -5.92242273e-008, -1.12654307e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(2, 0.400000036, 0.399999976))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, -0.400005579, 0.299938679, 0.999981284, 5.93643037e-008, -8.36495019e-007, -5.91571911e-008, 1.0000031, 1.1671375e-010, 1.67113467e-006, -2.14456009e-010, 0.999983191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399995089, -4.43458557e-005, 0.79996109, -3.87580286e-007, 1.00000024, -6.71747102e-011, 1.24300786e-005, 6.27267127e-011, 1.00000024, 1, 3.87599812e-007, -1.21916382e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000036, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.399989605, -5.76972961e-005, 1, 7.44680392e-007, -1.49234256e-006, -7.44660611e-007, 1.00000024, 1.8306423e-010, 1.73078297e-006, -1.91121785e-010, 1.00000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, -0.401464701, -0.012863636, 0.999999881, 5.91680802e-008, -1.55193993e-006, -5.91485332e-008, 1.00000024, 2.09965378e-010, 1.79038034e-006, -2.19046115e-010, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.398539066, -0.0128684044, 0.999999881, -5.956732e-008, 1.19071046e-007, 5.95868315e-008, 1.00000024, -1.81472615e-011, 1.19376637e-007, 8.96704933e-012, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.398539066, -0.0128684044, 0.999999762, -5.956732e-008, 1.19071046e-007, 5.95868315e-008, 1.00000024, -1.81472615e-011, 1.19369361e-007, 8.96704933e-012, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.300000012, 1.10000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, -0.401463985, -0.0128593445, 1, 5.91109917e-008, -1.67275721e-006, -5.90914624e-008, 1.00000024, 2.37989184e-010, 1.91119761e-006, -2.4706992e-010, 1.00000024))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.300000012, 1.10000002))

WingConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,1,"Crimson","WingConnectorA",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingConnectorAweld=weld(m,BackHandle,WingConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.760124207, -0.500091553, 2.59146118, -0.70701617, -8.76535466e-007, 0.707190692, 2.30480083e-007, 0.999996424, 1.35069615e-006, -0.707191586, 1.03366017e-006, -0.707015276))
mesh("SpecialMesh",WingConnectorA,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","WingHandleA",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingHandleAweld=weld(m,WingConnectorA,WingHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.36985016e-005, 7.62939453e-006, 0.999981105, -9.80367076e-009, 1.01327896e-006, 1.8345645e-008, 0.999986887, 2.1032065e-011, -1.34110451e-006, 9.24046617e-010, 0.999976635))
mesh("SpecialMesh",WingHandleA,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00260162354, 1.39987755, 0.397865295, -0.999964237, -2.82797487e-007, -7.74860382e-007, -2.68114036e-007, 0.999991536, -3.07588664e-007, 1.43051147e-006, -3.09293114e-007, -0.999956012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000018))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00754928589, -3.2998507, 0.200576782, 0.999981046, -0.000345696521, 1.01327896e-006, -0.000345703098, -0.999986887, 7.34406058e-007, 1.34110451e-006, -7.35720846e-007, -0.999976635))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000033))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00755310059, -3.29984474, -0.000576019287, -0.999973834, 0.00034581509, -9.53674316e-007, -0.000345820386, -0.999988914, 8.78280844e-007, -1.43051147e-006, 8.79830168e-007, 0.999967694))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0071105957, -2.19989014, 0.39232254, 0.999964118, -0.000341437757, 7.4505806e-007, -0.000341443112, -0.999991536, 4.55009285e-007, 1.51991844e-006, -4.56985958e-007, -0.999955952))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.397834778, 1.79987717, -0.0046081543, 1.1920929e-006, 8.05591753e-008, -0.999955893, -9.59476438e-007, 0.999991536, 8.22495849e-008, 0.999964118, 9.74177965e-007, 5.06639481e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.400000036, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102138519, 1.39986181, -0.0054397583, 1.25169754e-006, 8.53931397e-008, -0.999958754, -9.66183052e-007, 0.99999094, 8.68290044e-008, 0.999966741, 9.78532171e-007, 5.96046448e-007))

WingConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,1,"Crimson","WingConnectorB",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingConnectorBweld=weld(m,BackHandle,WingConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.784416199, -0.499978304, 2.59280396, -0.707191348, -3.90662137e-007, -0.707015634, 2.66780262e-007, 0.999996424, -7.00154715e-007, 0.707016468, -5.99482121e-007, -0.707190454))
mesh("SpecialMesh",WingConnectorB,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","WingHandleB",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingHandleBweld=weld(m,WingConnectorB,WingHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0180549622, 0.000362634659, -0.00287246704, 1.00000024, 2.62332378e-009, -0.000288337469, -2.63818833e-009, 1.00000048, -1.41619694e-009, 0.000288575888, 1.4564705e-009, 1.00000012))
mesh("SpecialMesh",WingHandleB,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000033))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00733184814, -3.29872251, -0.000240325928, -1.00000024, 0.000345554465, 5.09619713e-006, -0.000345554959, -0.999998748, 8.77771527e-007, 6.97374344e-006, 8.76055537e-007, 1.00000679))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000018))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00751495361, -3.30146718, 0.200904846, 1.00000048, -0.000345482345, 0.000583082438, -0.00034548252, -1.00000083, 5.31843398e-007, 0.000582695007, -7.33383786e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00564956665, 1.40153003, 0.398208618, -1.0000006, -1.52919711e-007, -0.000701099634, -1.52856074e-007, 0.999992073, -2.92751594e-007, 0.000700622797, -2.9275219e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0101585388, -2.2015543, 0.392654419, 1.00000048, -0.000341564562, 0.000701278448, -0.000341564592, -1.00000072, 2.00845534e-007, 0.000700861216, -4.40466266e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.400000036, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102455139, 1.40156364, -0.00542831421, 0.000591039658, 8.87212934e-008, -1, -1.1955226e-006, 1.00000083, 8.81201458e-008, 1.0000006, 1.19532979e-006, 0.000591367483))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.398174286, 1.80155635, -0.00764846802, 0.000699937344, 9.82820438e-008, -1.00000012, -8.54601353e-007, 1.00000155, 9.79221255e-008, 1.00000155, 8.54139444e-007, 0.000700563192))

WingConnector2A=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,1,"Really black","WingConnector2A",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingConnector2Aweld=weld(m,BackHandle,WingConnector2A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.35351944, -8.82148743e-006, 0.777774811, 0.70710361, 2.35763025e-007, 0.707103252, -1.815758e-007, 0.999996424, -3.26344036e-008, -0.707104087, -1.89611058e-007, 0.707102716))
mesh("CylinderMesh",WingConnector2A,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandle2A=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","WingHandle2A",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingHandle2Aweld=weld(m,WingConnector2A,WingHandle2A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -3.09944153e-006, -3.05175781e-005, 1.00000012, 2.13349054e-008, 2.56299973e-006, -2.13311964e-008, 1.00000012, -2.10869437e-008, -2.50339508e-006, 2.10766586e-008, 1))
mesh("CylinderMesh",WingHandle2A,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00458908081, -0.799812317, -1.43754196, -0.000118851662, 2.60861555e-007, -1, 8.83513394e-007, 1.00000012, 2.60746447e-007, 1, -8.8347872e-007, -0.000118762255))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000033, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43828201, 1.49969769, -0.00198364258, 0.999976516, -1.20581092e-006, -0.000126719475, 1.20483628e-006, 0.999987006, -3.7582123e-007, 0.000127106905, 3.84210125e-007, 0.999981046))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.799999952, 1.20000005, 0.399999976))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.732719421, -0.000127077103, -0.011013031, 0.999976635, -2.55695795e-007, -4.47034836e-007, 2.54775983e-007, 0.999986887, 1.28024396e-007, 7.74860382e-007, -1.19475757e-007, 0.999981165))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000155, 0.599999964))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.6384964, 0.599924326, -0.00668716431, 0.999953151, -1.2063831e-006, -0.000126421452, 1.20447589e-006, 0.999973774, -3.58210656e-007, 0.000127106905, 3.75161164e-007, 0.999962151))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00381469727, -0.499895573, -1.43782806, 0.00011792779, -5.21332424e-007, 0.999962091, -1.20606751e-006, -0.999973774, -5.3828353e-007, 0.999953151, -1.20786547e-006, -0.000117242336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000036, 2.00000048, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.738220215, 1.99993312, -0.00198364258, 0.999976635, -1.20194647e-006, -0.000127375126, 1.20097798e-006, 0.999977708, -4.28671427e-007, 0.000127702951, 4.37083344e-007, 0.999981105))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000393, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03820801, 1.79991686, -0.00200271606, 0.999976635, -1.20224877e-006, -0.000126779079, 1.20128084e-006, 0.999977708, -4.25658016e-007, 0.000127106905, 4.34070643e-007, 0.999981105))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000376, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03817749, 0.899925232, -0.00204849243, 0.999953151, -1.20194807e-006, -0.000124722719, 1.20003529e-006, 0.999973774, -4.1127916e-007, 0.000125437975, 4.2823288e-007, 0.999962091))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0112571716, -0.699848175, 0.935894012, -0.00011792779, -1.25010138e-006, -0.999962091, -8.60096748e-007, -0.999973774, 1.23308939e-006, -0.999953151, 8.62096385e-007, 0.000117242336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00269317627, -2.09995699, 1.03822327, -0.000118494034, 0.000339705701, -0.999980986, -2.36835331e-006, -0.999977708, -0.000339717168, -0.999976635, 2.32894104e-006, 0.000118196011))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00271606445, 0.89996767, -0.738178253, -0.000116944313, 0.000342214655, -0.999962091, 2.2733293e-006, 0.999973774, 0.000342227548, 0.999953151, -2.23520124e-006, -0.00011625886))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0116539001, -0.699934483, -0.537151337, 2.5331974e-006, -5.20983683e-008, 0.999962151, -4.94033145e-007, -0.999973774, -6.91953517e-008, 0.999953151, -4.95877543e-007, -1.84774399e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.610000014, 0.800000131, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.83622742, 1.50203705e-005, -0.00223922729, 0.999953151, -1.20720688e-006, -0.000126361847, 1.20529853e-006, 0.999973774, -3.67991873e-007, 0.000127017498, 3.84942496e-007, 0.999962091))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0066986084, -0.599959373, 1.93844223, -0.00011870265, 5.45789703e-007, -0.999962091, -1.48036668e-006, -0.999982953, -5.62686523e-007, -0.999953151, 1.48218601e-006, 0.000118017197))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00186538696, 0.699984789, 1.63819122, 0.000117570162, 0.000343447289, 0.999962151, 1.81229552e-007, 0.999973774, -0.000343426189, -0.999953151, 2.2344058e-007, 0.000116944313))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00183486938, -1.99997032, 1.6382103, -0.000119000673, -0.0003434307, -0.999961793, -6.70683221e-007, -0.999992132, 0.000343403255, -0.999953032, 7.13414749e-007, 0.000118345022))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00689315796, -0.799924135, 1.8359642, 0.00011947751, -5.85247506e-007, 0.999980927, 1.29695411e-006, 1.00000536, 5.93606615e-007, -0.999976516, 1.29784451e-006, 0.000119119883))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000377655029, -0.600088358, 1.94027328, -0.000118345022, 5.42628982e-007, -0.999961436, -1.47416779e-006, -1.00001073, -5.59483738e-007, -0.999953032, 1.4760343e-006, 0.000117659569))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 1.00000012, 0.599999964))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.83838654, -0.0998883247, -0.00664901733, 0.999953032, -1.2058166e-006, -0.000126332045, 1.20385414e-006, 1.00001073, -3.57192391e-007, 0.0001270473, 3.74113938e-007, 0.999961436))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00269699097, -3.1999507, 0.738132477, -0.000118583441, 0.000339725055, -0.999980748, -2.36830965e-006, -0.999996185, -0.000339730119, -0.999976516, 2.32889761e-006, 0.000118285418))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.399999976, 0.400000036, 0.399999976))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.136451721, -3.79085541e-005, 0.00166320801, 0.999943495, -2.43060981e-007, -1.16229057e-006, 2.41201008e-007, 1.00001097, -9.43163485e-008, 1.84774399e-006, 1.11379194e-007, 0.999952197))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000036, 0.600000381, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13814926, 1.29996634, -0.00199890137, 0.999976516, -1.20260449e-006, -0.000127136707, 1.20160905e-006, 0.999996185, -4.24037722e-007, 0.000127434731, 4.32436423e-007, 0.999980748))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111846924, -0.400034666, 1.23585892, -0.000119328499, -1.28770091e-006, -0.999980807, -8.9875391e-007, -1.00000536, 1.27924841e-006, -0.999976397, 8.99856275e-007, 0.000119000673))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.399999976))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.23489761, -0.199841738, -0.0108909607, 0.999953032, -1.23361633e-006, -0.000125616789, 1.2316226e-006, 1.00001073, -5.93518166e-007, 0.000126242638, 6.10448865e-007, 0.999961495))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00266265869, -1.99999452, -1.23814011, 0.000118851662, -0.000342111831, 0.999980748, -1.78501068e-006, -0.999996185, -0.000342116982, 0.999976516, -1.74523427e-006, -0.000118523836))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00266647339, 0.700069189, -1.23814774, -0.000118345022, 0.000342116429, -0.999980628, 2.27200508e-006, 1.00000536, 0.000342116284, 0.999976456, -2.23251186e-006, -0.000118017197))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.599999964))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43771744, -0.199832916, -0.00438690186, 0.999953032, -1.21251264e-006, -0.000125616789, 1.21055359e-006, 1.00001073, -3.29055638e-007, 0.000126242638, 3.45975934e-007, 0.999961495))

WingConnector2B=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,1,"Really black","WingConnector2B",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingConnector2Bweld=weld(m,BackHandle,WingConnector2B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.353546143, -1.02519989e-005, 0.77778244, 0.70710355, 2.76879433e-007, -0.707103431, -2.52642138e-007, 0.999996424, 1.9715614e-008, 0.707104325, 2.48997594e-007, 0.707102716))
mesh("CylinderMesh",WingConnector2B,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandle2B=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","WingHandle2B",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingHandle2Bweld=weld(m,WingConnector2B,WingHandle2B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, -1.00135803e-005, 1.14440918e-005, 1, -1.95296565e-007, -1.23381615e-005, 1.95308559e-007, 1.00000012, 1.4882113e-007, 1.22785568e-005, -1.48819879e-007, 1.00000024))
mesh("CylinderMesh",WingHandle2B,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057144165, -3.20001864, 0.739765167, -6.97374344e-006, 0.00033977133, 1.00000012, 3.41693521e-007, -1.00000012, 0.000339771359, 1, 3.44076113e-007, 6.85453415e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00654602051, 0.700015306, 1.63977051, 7.68899918e-006, 0.000343456777, -1.00000024, 1.75846799e-006, 1.00000036, 0.00034345669, 1, -1.76109734e-006, 7.4505806e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000036, 2.00000048, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.739772797, 1.99997914, 0.00642776489, -1, 7.83247856e-007, -5.78165054e-006, 7.83254677e-007, 1.00000072, 4.01889906e-007, 6.10947609e-006, 4.01940554e-007, -1.00000048))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00572967529, 0.700017214, -1.23976517, -7.4505806e-006, 0.000342165935, 1.00000072, -2.45941919e-007, 1.00000095, -0.000342165877, -1, -2.48526703e-007, -7.15255737e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00574493408, -2.00001717, -1.23976517, 7.09295273e-006, -0.000342123793, -1.00000072, -2.43031536e-007, -1.00000095, 0.000342123734, -1, 2.40580533e-007, -6.7949295e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00656890869, -2.00001454, 1.63977051, -7.09295273e-006, -0.000343398249, 1.00000072, -1.2695964e-006, -1.00000095, -0.000343398133, 1, -1.27200531e-006, 6.7949295e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000036, 0.600000381, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13976669, 1.29998469, 0.0064239502, -1, 7.81620258e-007, -5.75184822e-006, 7.81646975e-007, 1.00000095, 3.88622823e-007, 6.10947609e-006, 3.88666422e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000376, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03976822, 0.899980307, 0.0064125061, -1, 7.82491384e-007, -5.75184822e-006, 7.82518043e-007, 1.00000095, 3.9576264e-007, 6.10947609e-006, 3.95806239e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00278091431, -0.699974537, 0.937519073, -7.06315041e-006, -1.23697805e-006, 1.00000072, -1.12531188e-006, -1.00000095, -1.23693724e-006, 1, -1.12529187e-006, 6.70552254e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057182312, -2.10001993, 1.0397644, -7.06315041e-006, 0.000339750521, 1.00000072, 3.41358827e-007, -1.00000095, 0.000339750462, 1, 3.43769329e-007, 6.70552254e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000033, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43976593, 1.49998724, 0.00643157959, -1, 7.81133508e-007, -5.75184822e-006, 7.81160281e-007, 1.00000095, 3.77194482e-007, 6.10947609e-006, 3.77238052e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000393, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0397644, 1.799981, 0.00640869141, -1, 7.82864788e-007, -5.75184822e-006, 7.82891391e-007, 1.00000095, 3.98813171e-007, 6.10947609e-006, 3.98856685e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00316619873, -0.699970961, -0.541133881, 6.46710396e-006, 7.11757536e-007, -1.00000072, -5.82138682e-007, -1.00000095, -7.11712801e-007, -1, 5.82114012e-007, -6.10947609e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057258606, 0.900016785, -0.739753723, -7.4505806e-006, 0.000342250947, 1.00000072, -2.47193384e-007, 1.00000095, -0.000342250918, -1, -2.49782829e-007, -7.15255737e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 1.00000012, 0.599999964))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.84001541, -0.100023985, 0.00176620483, -1, 7.83643713e-007, -5.51342964e-006, 7.83670544e-007, 1.00000095, 3.81563382e-007, 5.87105751e-006, 3.81607123e-007, -1.00000072))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00459289551, -0.499979734, -1.4393959, 7.89761543e-006, -5.65608218e-007, -1.00000179, -7.77587161e-007, -1.00000262, 5.6575351e-007, -1.00000012, 7.77515424e-007, -6.88433647e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000155, 0.599999964))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.64005661, 0.599978924, 0.00173950195, -1, 7.80917503e-007, -5.51342964e-006, 7.80982475e-007, 1.00000262, 3.64202009e-007, 6.49690628e-006, 3.64349034e-007, -1.00000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.399999976))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.2366333, -0.200026751, -0.00246047974, -1, 7.56787927e-007, -5.75184822e-006, 7.56851023e-007, 1.00000262, 6.28874716e-007, 6.82473183e-006, 6.29021883e-007, -1.00000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.799999952, 1.20000005, 0.399999976))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.736637115, -2.5510788e-005, -0.00245285034, -1, 7.98881445e-007, -5.75184822e-006, 7.98944541e-007, 1.00000262, 6.19298987e-007, 6.82473183e-006, 6.19445927e-007, -1.00000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00276947021, -0.3999753, 1.23746872, -7.12275505e-006, -1.24613757e-006, 1.0000031, -1.08483562e-006, -1.00000429, -1.24588792e-006, 1.00000012, -1.08474001e-006, 5.453825e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.399999976, 0.400000036, 0.399999976))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.135440826, -2.5510788e-005, 0.00338745117, 1.00000012, -7.98921292e-007, 5.453825e-006, 7.9902253e-007, 1.00000429, 6.19273123e-007, -7.12275505e-006, -6.19523803e-007, 1.0000031))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.610000014, 0.800000131, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.83781815, -1.74045563e-005, 0.00619506836, -1, 7.80351115e-007, -5.7220459e-006, 7.80415974e-007, 1.00000262, 3.64990427e-007, 6.70552254e-006, 3.65137282e-007, -1.00000179))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00638580322, -0.79997921, -1.43897247, 0.000111579895, -6.41668478e-008, 1.00000048, 1.08743711e-006, 1.00000083, 6.39935536e-008, -1.00000012, 1.08741108e-006, 0.000111877918))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00640487671, -0.599977732, 1.94189835, -7.36117363e-006, 5.59386876e-007, 1.00000191, -5.1072891e-007, -1.00000262, 5.59534215e-007, 1, -5.10656719e-007, 6.34789467e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00386810303, -0.79993391, 1.83702469, -0.00010445714, -2.80817233e-007, -1.0000006, 6.70409918e-007, 1.00000083, -2.80938991e-007, 1, -6.70420036e-007, -0.000104755163))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00172424316, -0.599978447, 1.94002914, -7.09295273e-006, 5.7002211e-007, 1.00000191, -5.03831359e-007, -1.00000262, 5.70169391e-007, 1, -5.03759338e-007, 6.10947609e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.599999964))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.4394722, -0.200026512, 0.00402832031, -1, 7.7835881e-007, -5.7220459e-006, 7.78423669e-007, 1.00000262, 3.64728379e-007, 6.70552254e-006, 3.64875291e-007, -1.00000179))






MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Handle",Vector3.new(1.09732866, 2.19465828, 1.09732854))
MNweld=weld(m,Character["Right Arm"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0323486328, -0.0509860516, -0.00120401382, -0.00500982394, 0.00520668458, 0.999973893, -0.00739898486, 0.999958873, -0.00524367485, -0.999960065, -0.00742506143, -0.0049710935))
TR7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR7weld=weld(m,MN,TR7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",TR7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
MD9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD9",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD9weld=weld(m,MN,MD9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.741846681, 0.199262142, 1.00000405, -6.92205504e-06, 0.000154254027, 4.65649646e-05, 0.965939224, -0.25876984, -0.000147186685, 0.258768767, 0.965943158))
mesh("SpecialMesh",MD9,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD1",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD1weld=weld(m,MN,MD1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.402763367, -0.974855185, 0.682875633, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD10",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD10weld=weld(m,MN,MD10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD11",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD11weld=weld(m,MN,MD11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.493839264, -0.274354219, 4.24385071e-05, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD12",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD12weld=weld(m,MN,MD12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.493812561, -0.274300575, -0.000376224518, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD13",Vector3.new(1.09732866, 0.822996795, 1.09732854))
MD13weld=weld(m,MN,MD13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.68582201, 0.000464439392, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD14",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD14weld=weld(m,MN,MD14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.603547096, 0.000416755676, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD15",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD15weld=weld(m,MN,MD15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-05, 0.137180567, -4.529953e-05, -1.0000037, -0.000862163957, 0.000179466791, -0.000862103421, 0.999999523, 0.000520790287, -0.000179945491, 0.000520619913, -1.00000381))
mesh("SpecialMesh",MD15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD16",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD16weld=weld(m,MN,MD16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-05, 0.932742357, 0.000658988953, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD19=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD19",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD19weld=weld(m,MN,MD19,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD19,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
MD18=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD18",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD18weld=weld(m,MN,MD18,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD18,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD2",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD2weld=weld(m,MN,MD2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392555237, -0.573539257, 1.09872949, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD3",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD3weld=weld(m,MN,MD3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397964478, -0.817667723, 0.487944126, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD4",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD4weld=weld(m,MN,MD4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.422103882, -0.82026124, 0.507567406, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD5",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD5weld=weld(m,MN,MD5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427509308, -0.557831764, 1.11046171, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD6",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD6weld=weld(m,MN,MD6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417263031, -0.972257376, 0.702233315, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD7weld=weld(m,MN,MD7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD8",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD8weld=weld(m,MN,MD8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
TR1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR1",Vector3.new(0.266768694, 0.54866457, 0.548664272))
TR1weld=weld(m,MN,TR1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548826218, 0.30154109, 4.57763672e-05, -0.000205519143, -0.0001726388, -1, -4.31765802e-05, 1, -0.00017263052, 1, 4.314119e-05, -0.000205526594))
mesh("SpecialMesh",TR1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.700000048, 0.700000048))
TR2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR2",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR2weld=weld(m,MN,TR2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, 0.741921067, 0.198978901, 1.00000405, -2.92747281e-05, -1.7457176e-05, 2.37242784e-05, 0.965939343, -0.258769363, 2.44602561e-05, 0.25876832, 0.965943277))
mesh("SpecialMesh",TR2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
TR3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR3",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR3weld=weld(m,MN,TR3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.603546381, 0.000186920166, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR4",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR4weld=weld(m,MN,TR4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, 0.93274045, 0.000304222107, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR5",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR5weld=weld(m,MN,TR5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
TR6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR6",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR6weld=weld(m,MN,TR6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR6,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
MD21=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","MD21",Vector3.new(0.266768694, 0.54866457, 0.548664272))
MD21weld=weld(m,MN,MD21,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548921585, 0.301375628, 0.000118255615, -0.000262488145, -9.39509191e-05, -1.00000393, -0.000154611655, 1, -9.38984886e-05, 1.00000393, 0.000154557638, -0.000262471847))
mesh("SpecialMesh",MD21,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.900000036, 0.900000036))
MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Handle",Vector3.new(1.03740847, 2.07481742, 1.03740823))
MNweld=weld(m,Character["Right Leg"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00872802734, 0.00284510851, -0.0114479065, 0.000559218752, 0.00461495388, -0.999989212, 0.0116515048, 0.999921441, 0.00462115649, 0.999931991, -0.0116539635, 0.000505403674))
FB1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB1",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB1weld=weld(m,MN,FB1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.466812134, -0.259373605, 4.19616699e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB10",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB10weld=weld(m,MN,FB10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14440918e-05, -0.907726586, -0.0001745224, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB11",Vector3.new(0.518704236, 0.778056443, 0.252201557))
FB11weld=weld(m,MN,FB11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 0.415454417))
FB12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB12",Vector3.new(1.03740847, 0.778056443, 1.03740823))
FB12weld=weld(m,MN,FB12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-05, 0.648371816, 1.38282776e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB2",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB2weld=weld(m,MN,FB2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454417, 1.04999995))
FB3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB3",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB3weld=weld(m,MN,FB3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000141143799, -0.907841623, 0.725996017, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB4",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB4weld=weld(m,MN,FB4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000263214111, -0.495628834, 1.08177543, -1, -0.000208274461, -0.000166981248, -2.93208286e-05, 0.707433105, -0.706780434, 0.000265331706, -0.706780314, -0.707433105))
mesh("SpecialMesh",FB4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB5",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB5weld=weld(m,MN,FB5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454417, 1.04999995))
FB6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB6",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB6weld=weld(m,MN,FB6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-06, 0.129679263, 3.29017639e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB7",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB7weld=weld(m,MN,FB7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.466838837, -0.259338915, -8.58306885e-06, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB8",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB8weld=weld(m,MN,FB8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000205993652, -0.764207125, 0.546924591, -0.999995053, -0.000121198129, -0.00017335522, -0.000163274352, 0.965882957, 0.258978456, 0.000135882699, 0.258978575, -0.96587801))
mesh("SpecialMesh",FB8,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB9",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB9weld=weld(m,MN,FB9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00023651123, 0.648379326, -0.000217437744, -0.99999994, 0.00030120369, -0.00014261005, -0.000301247928, -0.999999821, 0.000302845408, -0.000142518838, 0.000302889268, 1))
mesh("SpecialMesh",FB9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
TN1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TN1",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN1weld=weld(m,MN,TN1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))
TN2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TN2",Vector3.new(0.518704236, 0.778056443, 0.252201557))
TN2weld=weld(m,MN,TN2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.899999917, 0.899999917, 0.419567823))
TN3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TN3",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN3weld=weld(m,MN,TN3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))
TG1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Handle",Vector3.new(0.231713057, 0.953130603, 0.953130603))
TG1weld=weld(m,Character["HumanoidRootPart"],TG1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.042350769, 2.25753069, -2.74072218, -0.0144443018, -0.00148237997, 0.999894559, 0.138804898, -0.99031961, 0.000536966661, 0.990214407, 0.138798028, 0.0145102367))
mesh("SpecialMesh",TG1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
AM1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","AM1",Vector3.new(0.953130484, 0.238282651, 0.953130603))
AM1weld=weld(m,TG1,AM1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.24249268e-05, 0.166828156, 3.09944153e-05, -0.000157195085, 1, 9.1494876e-05, -0.99999994, -0.000157169881, -0.000279594213, -0.000279579312, -9.1555652e-05, 0.99999994))
mesh("SpecialMesh",AM1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P1",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P1weld=weld(m,TG1,P1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.911342621, 0.703609467, 0.114207745, 0.706984818, 0.683136642, 0.183021277, -0.707228661, 0.682939231, 0.182815671, -0.000104348175, -0.258685827, 0.965961576))
mesh("SpecialMesh",P1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
P10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P10",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P10weld=weld(m,TG1,P10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.00679016e-05, -0.524249077, 0.166728973, 0.000105811283, -0.000137583454, -1, 0.000479714101, -0.999999821, 0.000137644194, -0.999999821, -0.000479728915, -0.000105744228))
mesh("SpecialMesh",P10,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
P11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P11",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P11weld=weld(m,TG1,P11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.731900215, 0.270252228, -0.114115238, 0.258668154, 0.93309164, -0.249861524, -0.965966165, 0.249754369, -0.0673211813, -0.000412817113, 0.258771658, 0.965938509))
mesh("SpecialMesh",P11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P12",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P12weld=weld(m,TG1,P12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.731903076, 0.27022934, 0.114096642, 0.258535415, 0.933087707, 0.250022143, -0.966005266, 0.24975659, 0.066811718, -0.000106466934, -0.258798361, 0.965934813))
mesh("SpecialMesh",P12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P13",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P13weld=weld(m,TG1,P13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000140666962, -0.333644867, 0.357366562, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P13,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
P14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P14",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P14weld=weld(m,TG1,P14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.43051147e-06, -0.333572388, -0.119208813, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P14,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
P15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P15",Vector3.new(0.231713057, 0.953130603, 0.953130603))
P15weld=weld(m,TG1,P15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, 1.16415322e-10, -9.31322575e-10, 1.16415322e-10, 1, -1.79352355e-09, -9.31322575e-10, -1.79352355e-09, 1))
mesh("SpecialMesh",P15,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
P16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P16",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P16weld=weld(m,TG1,P16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000156879425, -0.524261951, 0.166660309, 0.000348402828, -0.99999994, -0.00028672372, 1.2637116e-05, -0.000286738126, 0.99999994, -0.999999881, -0.000348406611, 1.25393271e-05))
mesh("SpecialMesh",P16,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
P2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P2",Vector3.new(0.238282621, 0.238282651, 0.238282651))
P2weld=weld(m,TG1,P2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114342928, -1.26896286, 0.703344345, -8.68691131e-05, 0.25868696, -0.965961158, -0.706778944, -0.683370173, -0.18294476, -0.707434416, 0.682705104, 0.182893887))
mesh("SpecialMesh",P2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
P3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P3",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P3weld=weld(m,TG1,P3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.9112854, 0.703716278, -0.114027977, 0.707162201, 0.682978034, -0.182929516, -0.707051754, 0.683040321, -0.183125019, -0.000122674741, 0.258839428, 0.965920746))
mesh("SpecialMesh",P3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
P4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P4",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P4weld=weld(m,TG1,P4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04713726, -0.0560836792, 0.589748383, -0.433230519, 0.499762714, 0.750031829, 0.249949813, 0.866157889, -0.432767093, -0.865926266, -1.81881187e-05, -0.500163496))
mesh("SpecialMesh",P4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
P5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P5",Vector3.new(0.238282621, 0.238282651, 0.238282651))
P5weld=weld(m,TG1,P5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110613346, -1.25364304, 0.687784195, 2.46139243e-05, -0.258755654, -0.96594286, -0.706809103, -0.683316648, 0.183028057, -0.707404375, 0.682732642, -0.182907671))
mesh("SpecialMesh",P5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
P6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P6",Vector3.new(0.238282621, 0.238282651, 0.238282651))
P6weld=weld(m,TG1,P6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0552225113, -0.590129852, 1.40441322, 0.249802664, 0.865931273, -0.433314741, 0.865909696, 0.000505216594, 0.500199974, 0.433357745, -0.50016278, -0.749692082))
mesh("SpecialMesh",P6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
P7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P7",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P7weld=weld(m,TG1,P7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.76527071, 0.166690826, 0.0566182137, 0.000211901963, -0.499973178, -0.866040885, -0.999999881, -0.000433116395, 5.36441803e-06, -0.000377777033, 0.866040766, -0.499973238))
mesh("SpecialMesh",P7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P8",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P8weld=weld(m,TG1,P8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.58035278e-05, -0.333610535, 0.11908865, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P8,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
P9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P9weld=weld(m,TG1,P9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.72340393e-05, -0.333576202, -0.357462883, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
TG2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.953130484, 0.238282651, 0.953130603))
TG2weld=weld(m,Character["HumanoidRootPart"],TG2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.76916337, -1.09253693, -3.17651272, -0.203467354, -0.97908175, 0.000212302519, 0.014012184, -0.00312875048, -0.999896944, 0.978981495, -0.203443378, 0.0143556716))
mesh("SpecialMesh",TG2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
AM2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","AM2",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM2weld=weld(m,TG2,AM2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.64780426e-05, 2.43186951e-05, -0.000192319567, -1, -0.000198441558, 0.99999994, -0.000192359177, 0.000197284782, -0.000197345667, -0.000198401511, 1))
mesh("SpecialMesh",AM2,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
R1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R1",Vector3.new(0.238282621, 0.238282651, 0.238282651))
R1weld=weld(m,TG2,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0134754181, -0.445617676, 1.47668266, 0.865856409, -0.250035048, -0.433330387, 0.000181133975, -0.865997136, 0.500049055, -0.500292599, -0.433049113, -0.749783754))
mesh("SpecialMesh",R1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
R10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R10",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R10weld=weld(m,TG2,R10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765271187, -0.000122070312, 0.0565447211, -0.49987632, 6.51674345e-05, -0.866096556, -0.000113177681, 0.999999881, 0.000140445307, 0.866096616, 0.000168018509, -0.49987638))
mesh("SpecialMesh",R10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
R11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R11",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R11weld=weld(m,TG2,R11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775099754, 0.109127045, -0.114162922, 0.93301934, -0.258937955, -0.249852076, 0.250070184, 0.965893984, -0.0671848729, 0.258727312, 0.000204227865, 0.965950489))
mesh("SpecialMesh",R11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
R12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R12",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R12weld=weld(m,TG2,R12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.5340271e-05, -0.166751862, -0.357446432, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R12,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
R13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R13",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R13weld=weld(m,TG2,R13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775063515, 0.109107971, 0.114238739, 0.933033288, -0.258907735, 0.249831468, 0.250103503, 0.96590209, 0.0669436976, -0.258645028, 2.30353326e-05, 0.965972483))
mesh("SpecialMesh",R13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
R14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R14",Vector3.new(0.231713057, 0.953130603, 0.953130603))
R14weld=weld(m,TG2,R14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16683197, 4.8160553e-05, 5.29289246e-05, -0.000261391891, -0.999999881, -0.000371804461, 0.99999994, -0.000261496811, 0.000282098801, -0.000282215682, -0.000371729024, 0.999999881))
mesh("SpecialMesh",R14,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
R15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R15",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R15weld=weld(m,TG2,R15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000193595886, -0.524248123, -0.000160217285, -1, -1.53651927e-05, -0.000401128491, -0.000401158031, -0.000155125745, 0.999999881, -1.54274312e-05, 1, 0.000155119225))
mesh("SpecialMesh",R15,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
R16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R16",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R16weld=weld(m,TG2,R16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.10623169e-06, -0.524226427, -0.000118255615, -1.7896502e-05, 3.39159742e-05, -1, -0.99999994, -0.00018825283, 1.79418876e-05, -0.000188252423, 1, 3.39206308e-05))
mesh("SpecialMesh",R16,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
R2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R2",Vector3.new(0.238282621, 0.238282651, 0.238282651))
R2weld=weld(m,TG2,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110644341, -1.37159348, 0.569787979, -0.25872317, 0.000103516504, -0.965960801, -0.683125854, 0.706990838, 0.183048159, 0.68293786, 0.707234144, -0.182844043))
mesh("SpecialMesh",R2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
R3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R3",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R3weld=weld(m,TG2,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.11937332, -0.014339447, 0.445285797, 0.499887019, 0.432952553, 0.75011003, 0.866090596, -0.250205398, -0.432763666, 0.000315477257, 0.865996122, -0.500050545))
mesh("SpecialMesh",R3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
R4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R4",Vector3.new(0.238282621, 0.238282651, 0.238282651))
R4weld=weld(m,TG2,R4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114369392, -1.38692093, 0.585348129, 0.258709073, 0.00012283586, -0.965955317, -0.683140814, 0.707019031, -0.182873711, 0.682926297, 0.707194507, 0.182996109))
mesh("SpecialMesh",R4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
R5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R5",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R5weld=weld(m,TG2,R5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02929306, 0.585784912, -0.114109039, 0.682771325, -0.707353652, -0.182959229, 0.683289289, 0.706859827, -0.182934627, 0.258725971, -0.000111560337, 0.965950847))
mesh("SpecialMesh",R5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
R6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R6",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R6weld=weld(m,TG2,R6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.6321106e-05, -0.166820526, 0.357390642, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
R7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R7",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R7weld=weld(m,TG2,R7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, -0.166748047, -0.11918807, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
R8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R8",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R8weld=weld(m,TG2,R8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02933121, 0.585668564, 0.114168167, 0.682898223, -0.707234383, 0.182947412, 0.683152735, 0.706979275, 0.182982892, -0.258751839, 2.23368406e-05, 0.965943873))
mesh("SpecialMesh",R8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
R9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R9weld=weld(m,TG2,R9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.33786011e-05, -0.166786194, 0.119110346, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
TG3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.953130484, 0.238282651, 0.953130603))
TG3weld=weld(m,Character["HumanoidRootPart"],TG3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.31476164, 0.203437805, 2.80334663, -0.128740072, -0.991682827, 0.00021147728, 0.0140880942, -0.00204598904, -0.999902606, 0.991582751, -0.128720194, 0.0142298341))
mesh("SpecialMesh",TG3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
AM3=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","AM3",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM3weld=weld(m,TG3,AM3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.67164612e-05, 1.04904175e-05, -0.000191303392, -1.00000393, -0.000253161415, 1.00000441, -0.000187523692, 0.000130466695, -0.000134325906, -0.000248713419, 1.00000381))
mesh("SpecialMesh",AM3,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
B1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B1",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B1weld=weld(m,TG3,B1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.70809412, 0.00481796265, -0.0214853287, 0.53710258, -0.0329185463, -0.842881262, -0.0168763734, -0.999461472, 0.0282779075, -0.843353331, -0.00096894661, -0.537363231))
mesh("SpecialMesh",B1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
B10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B10",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B10weld=weld(m,TG3,B10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, -0.166755676, -0.119180202, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B10,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
B11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B11",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B11weld=weld(m,TG3,B11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775104523, 0.109054565, -0.114163399, 0.93302691, -0.258820474, -0.249937788, 0.249989182, 0.965924561, -0.0670276657, 0.258770257, 5.44674695e-05, 0.965937078))
mesh("SpecialMesh",B11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
B12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B12",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B12weld=weld(m,TG3,B12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.2479248e-05, -0.16677475, -0.357437134, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B12,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
B13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B13",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B13weld=weld(m,TG3,B13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.6321106e-05, -0.166809082, 0.357398033, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B13,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
B14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B14",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B14weld=weld(m,TG3,B14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775089264, 0.109050751, 0.114126205, 0.933031797, -0.258863419, 0.249890804, 0.250038087, 0.965917766, 0.0670325682, -0.258728862, -5.84023073e-05, 0.965954661))
mesh("SpecialMesh",B14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
B15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B15",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B15weld=weld(m,TG3,B15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000216007233, -0.524245262, -0.000152587891, -1.00000429, -3.11442855e-05, -0.000386493775, -0.000390294503, -0.000265599228, 1.00000381, -2.74346676e-05, 1.00000393, 0.000270009041))
mesh("SpecialMesh",B15,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
B16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B16",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B16weld=weld(m,TG3,B16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977258682, -0.0517673492, 0.351222992, -0.542918801, -0.399409056, 0.738729894, 0.839790225, -0.257581204, 0.47791937, -0.000600833155, 0.879847884, 0.475267261))
mesh("SpecialMesh",B16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
B2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B2",Vector3.new(0.238282621, 0.238282651, 0.238282651))
B2weld=weld(m,TG3,B2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110642433, -1.37159348, 0.569799423, -0.258739293, 0.00030168239, -0.965950191, -0.683101058, 0.706977069, 0.183202252, 0.682960927, 0.707241893, -0.182715356))
mesh("SpecialMesh",B2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
B3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B3",Vector3.new(0.238282621, 0.238282651, 0.238282651))
B3weld=weld(m,TG3,B3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114408493, -1.38694382, 0.585298538, 0.258632272, 0.000245507807, -0.965980828, -0.683182418, 0.707017481, -0.182730928, 0.682920158, 0.7072016, 0.183024958))
mesh("SpecialMesh",B3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
B4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B4",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B4weld=weld(m,TG3,B4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.14712524e-05, -0.524226665, -0.000114440918, -0.000117740456, 0.000170248561, -1.00000381, -1.00000441, -0.000197534246, 0.000121528283, -0.000193700951, 1.00000393, 0.000174695626))
mesh("SpecialMesh",B4,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
B5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B5",Vector3.new(0.231713057, 0.953130603, 0.953130603))
B5weld=weld(m,TG3,B5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.67164612e-05, 1.04904175e-05, -0.000191303392, -1.00000393, -0.000253161415, 1.00000441, -0.000187523692, 0.000130466695, -0.000134325906, -0.000248713419, 1.00000381))
mesh("SpecialMesh",B5,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
B6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B6",Vector3.new(0.238282621, 0.238282651, 0.238282651))
B6weld=weld(m,TG3,B6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0746879578, -0.356079102, 1.3260231, -0.846059859, 0.246211126, -0.472827435, 0.0127377426, -0.877367735, -0.479661644, -0.532944143, -0.411842138, 0.73916626))
mesh("SpecialMesh",B6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
B7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B7",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B7weld=weld(m,TG3,B7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02930832, 0.585767746, -0.114040375, 0.682766974, -0.707316399, -0.183130339, 0.683257401, 0.706901014, -0.182916299, 0.258831084, -0.000232725404, 0.965924442))
mesh("SpecialMesh",B7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
B8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B8",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B8weld=weld(m,TG3,B8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02937317, 0.585603714, 0.114164352, 0.682955801, -0.707211196, 0.182828441, 0.683118403, 0.707007945, 0.183033586, -0.258707404, -0.000107087195, 0.965960801))
mesh("SpecialMesh",B8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
B9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B9weld=weld(m,TG3,B9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.24249268e-05, -0.166786194, 0.11911726, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
TG4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.953130484, 0.238282651, 0.953130603))
TG4weld=weld(m,Character["HumanoidRootPart"],TG4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.701898575, -1.07242584, 3.10196733, 0.247876227, -0.968791723, 0.000235861822, 0.0139541421, 0.00332688913, -0.999897122, 0.968691289, 0.247854009, 0.0143433129))
mesh("SpecialMesh",TG4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
AM4=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","AM4",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM4weld=weld(m,TG4,AM4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16683197, 5.14984131e-05, 2.57492065e-05, -0.000262918446, -0.99999994, -0.000245724805, 1, -0.000262905785, -5.22979026e-05, 5.22422997e-05, -0.000245738775, 1))
mesh("SpecialMesh",AM4,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
Q1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q1",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q1weld=weld(m,TG4,Q1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02936554, 0.58564949, 0.114022255, 0.682914674, -0.707203865, 0.183003649, 0.683140576, 0.707009733, 0.182910576, -0.258740425, 0.000104899518, 0.965946913))
mesh("SpecialMesh",Q1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Q10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q10",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q10weld=weld(m,TG4,Q10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.91278076e-05, -0.524228096, -0.00012588501, -0.000225846947, 8.19889829e-05, -1.00000644, -1.00000012, -0.000232773818, 0.000224219271, -0.000232745646, 1.00000644, 8.20420682e-05))
mesh("SpecialMesh",Q10,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
Q11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q11",Vector3.new(0.238282621, 0.238282651, 0.238282651))
Q11weld=weld(m,TG4,Q11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0746479034, -0.356128693, 1.32600975, -0.846081793, 0.246080905, -0.472852886, 0.0128138652, -0.877419651, -0.479552537, -0.532899082, -0.411799699, 0.739215553))
mesh("SpecialMesh",Q11,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
Q12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q12",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q12weld=weld(m,TG4,Q12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977277756, -0.0517272949, 0.351173401, -0.542923808, -0.399282485, 0.73878783, 0.839781821, -0.257620722, 0.477910042, -0.000494024833, 0.87988919, 0.47517857))
mesh("SpecialMesh",Q12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Q13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q13",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q13weld=weld(m,TG4,Q13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708095074, 0.00480651855, -0.0214424133, 0.537001133, -0.0329830386, -0.842936516, -0.016877139, -0.999455392, 0.0283556767, -0.843412697, -0.0010006763, -0.53726542))
mesh("SpecialMesh",Q13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Q14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q14",Vector3.new(0.238282621, 0.238282651, 0.238282651))
Q14weld=weld(m,TG4,Q14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110631943, -1.37159348, 0.569797516, -0.258814424, 0.000158959068, -0.965927124, -0.683109343, 0.706977546, 0.183151439, 0.682917833, 0.707235932, -0.182867393))
mesh("SpecialMesh",Q14,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
Q15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q15",Vector3.new(0.238282621, 0.238282651, 0.238282651))
Q15weld=weld(m,TG4,Q15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114351273, -1.38692474, 0.585363388, 0.258614838, 0.000151800923, -0.965980589, -0.68317169, 0.707010865, -0.182789415, 0.682931006, 0.707202673, 0.182947218))
mesh("SpecialMesh",Q15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
Q16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q16",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q16weld=weld(m,TG4,Q16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02927017, 0.585828781, -0.1140728, 0.682736814, -0.707362711, -0.183043808, 0.683264673, 0.706848323, -0.183054447, 0.258872002, -9.22912732e-05, 0.965909958))
mesh("SpecialMesh",Q16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Q2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q2",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q2weld=weld(m,TG4,Q2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.95639038e-05, -0.166786194, 0.119113445, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q3",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q3weld=weld(m,TG4,Q3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.57492065e-05, -0.166748047, -0.119185925, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q4",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q4weld=weld(m,TG4,Q4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775097847, 0.109146118, -0.114173889, 0.932992756, -0.258940458, -0.249948949, 0.250075579, 0.965893269, -0.0671743006, 0.258818179, 0.000166995451, 0.965926051))
mesh("SpecialMesh",Q4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Q5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q5",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q5weld=weld(m,TG4,Q5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.91549683e-05, -0.166755676, -0.357444286, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q6",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q6weld=weld(m,TG4,Q6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.44137573e-05, -0.166820526, 0.357393742, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q7",Vector3.new(0.231713057, 0.953130603, 0.953130603))
Q7weld=weld(m,TG4,Q7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16683197, 5.14984131e-05, 2.57492065e-05, -0.000262918446, -0.99999994, -0.000245724805, 1, -0.000262905785, -5.22979026e-05, 5.22422997e-05, -0.000245738775, 1))
mesh("SpecialMesh",Q7,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
Q8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q8",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q8weld=weld(m,TG4,Q8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.77507782, 0.109096527, 0.11418438, 0.933048368, -0.258882731, 0.249801114, 0.250101715, 0.965908766, 0.0668535084, -0.258592248, 9.8134391e-05, 0.965986609))
mesh("SpecialMesh",Q8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Q9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q9weld=weld(m,TG4,Q9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000154495239, -0.524244308, -0.000152587891, -1, -2.11830047e-05, -0.000211575112, -0.000211558785, -0.000157893635, 1, -2.12165178e-05, 0.99999994, 0.00015788991))
mesh("SpecialMesh",Q9,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))



MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Handle",Vector3.new(1.09732866, 2.19465828, 1.09732854))
MNweld=weld(m,Character["Left Arm"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0323486328, -0.0509860516, -0.00120401382, -0.00500982394, 0.00520668458, 0.999973893, -0.00739898486, 0.999958873, -0.00524367485, -0.999960065, -0.00742506143, -0.0049710935))
TR7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR7weld=weld(m,MN,TR7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",TR7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
MD9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD9",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD9weld=weld(m,MN,MD9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.741846681, 0.199262142, 1.00000405, -6.92205504e-06, 0.000154254027, 4.65649646e-05, 0.965939224, -0.25876984, -0.000147186685, 0.258768767, 0.965943158))
mesh("SpecialMesh",MD9,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD1",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD1weld=weld(m,MN,MD1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.402763367, -0.974855185, 0.682875633, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD10",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD10weld=weld(m,MN,MD10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD11",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD11weld=weld(m,MN,MD11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.493839264, -0.274354219, 4.24385071e-05, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD12",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD12weld=weld(m,MN,MD12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.493812561, -0.274300575, -0.000376224518, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD13",Vector3.new(1.09732866, 0.822996795, 1.09732854))
MD13weld=weld(m,MN,MD13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.68582201, 0.000464439392, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD14",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD14weld=weld(m,MN,MD14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.603547096, 0.000416755676, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD15",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD15weld=weld(m,MN,MD15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-05, 0.137180567, -4.529953e-05, -1.0000037, -0.000862163957, 0.000179466791, -0.000862103421, 0.999999523, 0.000520790287, -0.000179945491, 0.000520619913, -1.00000381))
mesh("SpecialMesh",MD15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD16",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD16weld=weld(m,MN,MD16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-05, 0.932742357, 0.000658988953, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD19=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD19",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD19weld=weld(m,MN,MD19,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD19,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
MD18=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD18",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD18weld=weld(m,MN,MD18,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD18,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD2",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD2weld=weld(m,MN,MD2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392555237, -0.573539257, 1.09872949, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD3",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD3weld=weld(m,MN,MD3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397964478, -0.817667723, 0.487944126, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD4",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD4weld=weld(m,MN,MD4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.422103882, -0.82026124, 0.507567406, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD5",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD5weld=weld(m,MN,MD5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427509308, -0.557831764, 1.11046171, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD6",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD6weld=weld(m,MN,MD6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417263031, -0.972257376, 0.702233315, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD7weld=weld(m,MN,MD7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD8",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD8weld=weld(m,MN,MD8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
TR1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR1",Vector3.new(0.266768694, 0.54866457, 0.548664272))
TR1weld=weld(m,MN,TR1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548826218, 0.30154109, 4.57763672e-05, -0.000205519143, -0.0001726388, -1, -4.31765802e-05, 1, -0.00017263052, 1, 4.314119e-05, -0.000205526594))
mesh("SpecialMesh",TR1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.700000048, 0.700000048))
TR2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR2",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR2weld=weld(m,MN,TR2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, 0.741921067, 0.198978901, 1.00000405, -2.92747281e-05, -1.7457176e-05, 2.37242784e-05, 0.965939343, -0.258769363, 2.44602561e-05, 0.25876832, 0.965943277))
mesh("SpecialMesh",TR2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
TR3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR3",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR3weld=weld(m,MN,TR3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.603546381, 0.000186920166, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR4",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR4weld=weld(m,MN,TR4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, 0.93274045, 0.000304222107, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR5",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR5weld=weld(m,MN,TR5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
TR6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR6",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR6weld=weld(m,MN,TR6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR6,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
MD21=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","MD21",Vector3.new(0.266768694, 0.54866457, 0.548664272))
MD21weld=weld(m,MN,MD21,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548921585, 0.301375628, 0.000118255615, -0.000262488145, -9.39509191e-05, -1.00000393, -0.000154611655, 1, -9.38984886e-05, 1.00000393, 0.000154557638, -0.000262471847))
mesh("SpecialMesh",MD21,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.900000036, 0.900000036))
MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Handle",Vector3.new(1.03740847, 2.07481742, 1.03740823))
MNweld=weld(m,Character["Left Leg"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00872802734, 0.00284510851, -0.0114479065, 0.000559218752, 0.00461495388, -0.999989212, 0.0116515048, 0.999921441, 0.00462115649, 0.999931991, -0.0116539635, 0.000505403674))
FB1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB1",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB1weld=weld(m,MN,FB1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.466812134, -0.259373605, 4.19616699e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB10",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB10weld=weld(m,MN,FB10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14440918e-05, -0.907726586, -0.0001745224, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB11",Vector3.new(0.518704236, 0.778056443, 0.252201557))
FB11weld=weld(m,MN,FB11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 0.415454417))
FB12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB12",Vector3.new(1.03740847, 0.778056443, 1.03740823))
FB12weld=weld(m,MN,FB12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-05, 0.648371816, 1.38282776e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB2",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB2weld=weld(m,MN,FB2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454417, 1.04999995))
FB3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB3",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB3weld=weld(m,MN,FB3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000141143799, -0.907841623, 0.725996017, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB4",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB4weld=weld(m,MN,FB4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000263214111, -0.495628834, 1.08177543, -1, -0.000208274461, -0.000166981248, -2.93208286e-05, 0.707433105, -0.706780434, 0.000265331706, -0.706780314, -0.707433105))
mesh("SpecialMesh",FB4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB5",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB5weld=weld(m,MN,FB5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454417, 1.04999995))
FB6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB6",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB6weld=weld(m,MN,FB6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-06, 0.129679263, 3.29017639e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB7",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB7weld=weld(m,MN,FB7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.466838837, -0.259338915, -8.58306885e-06, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB8",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB8weld=weld(m,MN,FB8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000205993652, -0.764207125, 0.546924591, -0.999995053, -0.000121198129, -0.00017335522, -0.000163274352, 0.965882957, 0.258978456, 0.000135882699, 0.258978575, -0.96587801))
mesh("SpecialMesh",FB8,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FB9",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB9weld=weld(m,MN,FB9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00023651123, 0.648379326, -0.000217437744, -0.99999994, 0.00030120369, -0.00014261005, -0.000301247928, -0.999999821, 0.000302845408, -0.000142518838, 0.000302889268, 1))
mesh("SpecialMesh",FB9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
TN1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TN1",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN1weld=weld(m,MN,TN1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))
TN2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TN2",Vector3.new(0.518704236, 0.778056443, 0.252201557))
TN2weld=weld(m,MN,TN2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.899999917, 0.899999917, 0.419567823))
TN3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TN3",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN3weld=weld(m,MN,TN3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))
TG1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Handle",Vector3.new(0.231713057, 0.953130603, 0.953130603))
TG1weld=weld(m,Character["HumanoidRootPart"],TG1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.042350769, 2.25753069, -2.74072218, -0.0144443018, -0.00148237997, 0.999894559, 0.138804898, -0.99031961, 0.000536966661, 0.990214407, 0.138798028, 0.0145102367))
mesh("SpecialMesh",TG1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
AM1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","AM1",Vector3.new(0.953130484, 0.238282651, 0.953130603))
AM1weld=weld(m,TG1,AM1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.24249268e-05, 0.166828156, 3.09944153e-05, -0.000157195085, 1, 9.1494876e-05, -0.99999994, -0.000157169881, -0.000279594213, -0.000279579312, -9.1555652e-05, 0.99999994))
mesh("SpecialMesh",AM1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P1",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P1weld=weld(m,TG1,P1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.911342621, 0.703609467, 0.114207745, 0.706984818, 0.683136642, 0.183021277, -0.707228661, 0.682939231, 0.182815671, -0.000104348175, -0.258685827, 0.965961576))
mesh("SpecialMesh",P1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
P10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P10",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P10weld=weld(m,TG1,P10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.00679016e-05, -0.524249077, 0.166728973, 0.000105811283, -0.000137583454, -1, 0.000479714101, -0.999999821, 0.000137644194, -0.999999821, -0.000479728915, -0.000105744228))
mesh("SpecialMesh",P10,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
P11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P11",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P11weld=weld(m,TG1,P11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.731900215, 0.270252228, -0.114115238, 0.258668154, 0.93309164, -0.249861524, -0.965966165, 0.249754369, -0.0673211813, -0.000412817113, 0.258771658, 0.965938509))
mesh("SpecialMesh",P11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P12",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P12weld=weld(m,TG1,P12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.731903076, 0.27022934, 0.114096642, 0.258535415, 0.933087707, 0.250022143, -0.966005266, 0.24975659, 0.066811718, -0.000106466934, -0.258798361, 0.965934813))
mesh("SpecialMesh",P12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P13",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P13weld=weld(m,TG1,P13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000140666962, -0.333644867, 0.357366562, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P13,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
P14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P14",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P14weld=weld(m,TG1,P14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.43051147e-06, -0.333572388, -0.119208813, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P14,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
P15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P15",Vector3.new(0.231713057, 0.953130603, 0.953130603))
P15weld=weld(m,TG1,P15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, 1.16415322e-10, -9.31322575e-10, 1.16415322e-10, 1, -1.79352355e-09, -9.31322575e-10, -1.79352355e-09, 1))
mesh("SpecialMesh",P15,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
P16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P16",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P16weld=weld(m,TG1,P16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000156879425, -0.524261951, 0.166660309, 0.000348402828, -0.99999994, -0.00028672372, 1.2637116e-05, -0.000286738126, 0.99999994, -0.999999881, -0.000348406611, 1.25393271e-05))
mesh("SpecialMesh",P16,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
P2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P2",Vector3.new(0.238282621, 0.238282651, 0.238282651))
P2weld=weld(m,TG1,P2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114342928, -1.26896286, 0.703344345, -8.68691131e-05, 0.25868696, -0.965961158, -0.706778944, -0.683370173, -0.18294476, -0.707434416, 0.682705104, 0.182893887))
mesh("SpecialMesh",P2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
P3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P3",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P3weld=weld(m,TG1,P3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.9112854, 0.703716278, -0.114027977, 0.707162201, 0.682978034, -0.182929516, -0.707051754, 0.683040321, -0.183125019, -0.000122674741, 0.258839428, 0.965920746))
mesh("SpecialMesh",P3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
P4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P4",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P4weld=weld(m,TG1,P4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04713726, -0.0560836792, 0.589748383, -0.433230519, 0.499762714, 0.750031829, 0.249949813, 0.866157889, -0.432767093, -0.865926266, -1.81881187e-05, -0.500163496))
mesh("SpecialMesh",P4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
P5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P5",Vector3.new(0.238282621, 0.238282651, 0.238282651))
P5weld=weld(m,TG1,P5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110613346, -1.25364304, 0.687784195, 2.46139243e-05, -0.258755654, -0.96594286, -0.706809103, -0.683316648, 0.183028057, -0.707404375, 0.682732642, -0.182907671))
mesh("SpecialMesh",P5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
P6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","P6",Vector3.new(0.238282621, 0.238282651, 0.238282651))
P6weld=weld(m,TG1,P6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0552225113, -0.590129852, 1.40441322, 0.249802664, 0.865931273, -0.433314741, 0.865909696, 0.000505216594, 0.500199974, 0.433357745, -0.50016278, -0.749692082))
mesh("SpecialMesh",P6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
P7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P7",Vector3.new(0.476565242, 0.238282651, 0.238282651))
P7weld=weld(m,TG1,P7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.76527071, 0.166690826, 0.0566182137, 0.000211901963, -0.499973178, -0.866040885, -0.999999881, -0.000433116395, 5.36441803e-06, -0.000377777033, 0.866040766, -0.499973238))
mesh("SpecialMesh",P7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
P8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P8",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P8weld=weld(m,TG1,P8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.58035278e-05, -0.333610535, 0.11908865, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P8,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
P9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","P9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
P9weld=weld(m,TG1,P9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.72340393e-05, -0.333576202, -0.357462883, -0.0002978798, 0.000259431486, 0.999999881, 0.999991119, 0.000227510231, 0.000298896804, -0.000227348646, 0.999991298, -0.000258179527))
mesh("SpecialMesh",P9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
TG2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.953130484, 0.238282651, 0.953130603))
TG2weld=weld(m,Character["HumanoidRootPart"],TG2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.76916337, -1.09253693, -3.17651272, -0.203467354, -0.97908175, 0.000212302519, 0.014012184, -0.00312875048, -0.999896944, 0.978981495, -0.203443378, 0.0143556716))
mesh("SpecialMesh",TG2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
AM2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","AM2",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM2weld=weld(m,TG2,AM2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.64780426e-05, 2.43186951e-05, -0.000192319567, -1, -0.000198441558, 0.99999994, -0.000192359177, 0.000197284782, -0.000197345667, -0.000198401511, 1))
mesh("SpecialMesh",AM2,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
R1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R1",Vector3.new(0.238282621, 0.238282651, 0.238282651))
R1weld=weld(m,TG2,R1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0134754181, -0.445617676, 1.47668266, 0.865856409, -0.250035048, -0.433330387, 0.000181133975, -0.865997136, 0.500049055, -0.500292599, -0.433049113, -0.749783754))
mesh("SpecialMesh",R1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
R10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R10",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R10weld=weld(m,TG2,R10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.765271187, -0.000122070312, 0.0565447211, -0.49987632, 6.51674345e-05, -0.866096556, -0.000113177681, 0.999999881, 0.000140445307, 0.866096616, 0.000168018509, -0.49987638))
mesh("SpecialMesh",R10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
R11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R11",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R11weld=weld(m,TG2,R11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775099754, 0.109127045, -0.114162922, 0.93301934, -0.258937955, -0.249852076, 0.250070184, 0.965893984, -0.0671848729, 0.258727312, 0.000204227865, 0.965950489))
mesh("SpecialMesh",R11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
R12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R12",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R12weld=weld(m,TG2,R12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.5340271e-05, -0.166751862, -0.357446432, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R12,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
R13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R13",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R13weld=weld(m,TG2,R13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775063515, 0.109107971, 0.114238739, 0.933033288, -0.258907735, 0.249831468, 0.250103503, 0.96590209, 0.0669436976, -0.258645028, 2.30353326e-05, 0.965972483))
mesh("SpecialMesh",R13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
R14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R14",Vector3.new(0.231713057, 0.953130603, 0.953130603))
R14weld=weld(m,TG2,R14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16683197, 4.8160553e-05, 5.29289246e-05, -0.000261391891, -0.999999881, -0.000371804461, 0.99999994, -0.000261496811, 0.000282098801, -0.000282215682, -0.000371729024, 0.999999881))
mesh("SpecialMesh",R14,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
R15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R15",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R15weld=weld(m,TG2,R15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000193595886, -0.524248123, -0.000160217285, -1, -1.53651927e-05, -0.000401128491, -0.000401158031, -0.000155125745, 0.999999881, -1.54274312e-05, 1, 0.000155119225))
mesh("SpecialMesh",R15,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
R16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R16",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R16weld=weld(m,TG2,R16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.10623169e-06, -0.524226427, -0.000118255615, -1.7896502e-05, 3.39159742e-05, -1, -0.99999994, -0.00018825283, 1.79418876e-05, -0.000188252423, 1, 3.39206308e-05))
mesh("SpecialMesh",R16,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
R2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R2",Vector3.new(0.238282621, 0.238282651, 0.238282651))
R2weld=weld(m,TG2,R2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110644341, -1.37159348, 0.569787979, -0.25872317, 0.000103516504, -0.965960801, -0.683125854, 0.706990838, 0.183048159, 0.68293786, 0.707234144, -0.182844043))
mesh("SpecialMesh",R2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
R3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R3",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R3weld=weld(m,TG2,R3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.11937332, -0.014339447, 0.445285797, 0.499887019, 0.432952553, 0.75011003, 0.866090596, -0.250205398, -0.432763666, 0.000315477257, 0.865996122, -0.500050545))
mesh("SpecialMesh",R3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
R4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R4",Vector3.new(0.238282621, 0.238282651, 0.238282651))
R4weld=weld(m,TG2,R4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114369392, -1.38692093, 0.585348129, 0.258709073, 0.00012283586, -0.965955317, -0.683140814, 0.707019031, -0.182873711, 0.682926297, 0.707194507, 0.182996109))
mesh("SpecialMesh",R4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
R5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R5",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R5weld=weld(m,TG2,R5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02929306, 0.585784912, -0.114109039, 0.682771325, -0.707353652, -0.182959229, 0.683289289, 0.706859827, -0.182934627, 0.258725971, -0.000111560337, 0.965950847))
mesh("SpecialMesh",R5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
R6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R6",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R6weld=weld(m,TG2,R6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.6321106e-05, -0.166820526, 0.357390642, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
R7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R7",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R7weld=weld(m,TG2,R7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, -0.166748047, -0.11918807, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
R8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","R8",Vector3.new(0.476565242, 0.238282651, 0.238282651))
R8weld=weld(m,TG2,R8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02933121, 0.585668564, 0.114168167, 0.682898223, -0.707234383, 0.182947412, 0.683152735, 0.706979275, 0.182982892, -0.258751839, 2.23368406e-05, 0.965943873))
mesh("SpecialMesh",R8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
R9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","R9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
R9weld=weld(m,TG2,R9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.33786011e-05, -0.166786194, 0.119110346, 0.000167457998, 0.000183601864, 0.99999994, -9.69851826e-05, -1, 0.000183618627, 0.99999994, -9.70162218e-05, -0.000167464168))
mesh("SpecialMesh",R9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
TG3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.953130484, 0.238282651, 0.953130603))
TG3weld=weld(m,Character["HumanoidRootPart"],TG3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.31476164, 0.203437805, 2.80334663, -0.128740072, -0.991682827, 0.00021147728, 0.0140880942, -0.00204598904, -0.999902606, 0.991582751, -0.128720194, 0.0142298341))
mesh("SpecialMesh",TG3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
AM3=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","AM3",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM3weld=weld(m,TG3,AM3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.67164612e-05, 1.04904175e-05, -0.000191303392, -1.00000393, -0.000253161415, 1.00000441, -0.000187523692, 0.000130466695, -0.000134325906, -0.000248713419, 1.00000381))
mesh("SpecialMesh",AM3,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
B1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B1",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B1weld=weld(m,TG3,B1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.70809412, 0.00481796265, -0.0214853287, 0.53710258, -0.0329185463, -0.842881262, -0.0168763734, -0.999461472, 0.0282779075, -0.843353331, -0.00096894661, -0.537363231))
mesh("SpecialMesh",B1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
B10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B10",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B10weld=weld(m,TG3,B10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, -0.166755676, -0.119180202, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B10,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
B11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B11",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B11weld=weld(m,TG3,B11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775104523, 0.109054565, -0.114163399, 0.93302691, -0.258820474, -0.249937788, 0.249989182, 0.965924561, -0.0670276657, 0.258770257, 5.44674695e-05, 0.965937078))
mesh("SpecialMesh",B11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
B12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B12",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B12weld=weld(m,TG3,B12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.2479248e-05, -0.16677475, -0.357437134, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B12,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
B13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B13",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B13weld=weld(m,TG3,B13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.6321106e-05, -0.166809082, 0.357398033, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B13,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
B14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B14",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B14weld=weld(m,TG3,B14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775089264, 0.109050751, 0.114126205, 0.933031797, -0.258863419, 0.249890804, 0.250038087, 0.965917766, 0.0670325682, -0.258728862, -5.84023073e-05, 0.965954661))
mesh("SpecialMesh",B14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
B15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B15",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B15weld=weld(m,TG3,B15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000216007233, -0.524245262, -0.000152587891, -1.00000429, -3.11442855e-05, -0.000386493775, -0.000390294503, -0.000265599228, 1.00000381, -2.74346676e-05, 1.00000393, 0.000270009041))
mesh("SpecialMesh",B15,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
B16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B16",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B16weld=weld(m,TG3,B16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977258682, -0.0517673492, 0.351222992, -0.542918801, -0.399409056, 0.738729894, 0.839790225, -0.257581204, 0.47791937, -0.000600833155, 0.879847884, 0.475267261))
mesh("SpecialMesh",B16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
B2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B2",Vector3.new(0.238282621, 0.238282651, 0.238282651))
B2weld=weld(m,TG3,B2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110642433, -1.37159348, 0.569799423, -0.258739293, 0.00030168239, -0.965950191, -0.683101058, 0.706977069, 0.183202252, 0.682960927, 0.707241893, -0.182715356))
mesh("SpecialMesh",B2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
B3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B3",Vector3.new(0.238282621, 0.238282651, 0.238282651))
B3weld=weld(m,TG3,B3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114408493, -1.38694382, 0.585298538, 0.258632272, 0.000245507807, -0.965980828, -0.683182418, 0.707017481, -0.182730928, 0.682920158, 0.7072016, 0.183024958))
mesh("SpecialMesh",B3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
B4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B4",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B4weld=weld(m,TG3,B4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.14712524e-05, -0.524226665, -0.000114440918, -0.000117740456, 0.000170248561, -1.00000381, -1.00000441, -0.000197534246, 0.000121528283, -0.000193700951, 1.00000393, 0.000174695626))
mesh("SpecialMesh",B4,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
B5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B5",Vector3.new(0.231713057, 0.953130603, 0.953130603))
B5weld=weld(m,TG3,B5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.166828156, 3.67164612e-05, 1.04904175e-05, -0.000191303392, -1.00000393, -0.000253161415, 1.00000441, -0.000187523692, 0.000130466695, -0.000134325906, -0.000248713419, 1.00000381))
mesh("SpecialMesh",B5,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
B6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B6",Vector3.new(0.238282621, 0.238282651, 0.238282651))
B6weld=weld(m,TG3,B6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0746879578, -0.356079102, 1.3260231, -0.846059859, 0.246211126, -0.472827435, 0.0127377426, -0.877367735, -0.479661644, -0.532944143, -0.411842138, 0.73916626))
mesh("SpecialMesh",B6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
B7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B7",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B7weld=weld(m,TG3,B7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02930832, 0.585767746, -0.114040375, 0.682766974, -0.707316399, -0.183130339, 0.683257401, 0.706901014, -0.182916299, 0.258831084, -0.000232725404, 0.965924442))
mesh("SpecialMesh",B7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
B8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","B8",Vector3.new(0.476565242, 0.238282651, 0.238282651))
B8weld=weld(m,TG3,B8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02937317, 0.585603714, 0.114164352, 0.682955801, -0.707211196, 0.182828441, 0.683118403, 0.707007945, 0.183033586, -0.258707404, -0.000107087195, 0.965960801))
mesh("SpecialMesh",B8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
B9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","B9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
B9weld=weld(m,TG3,B9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.24249268e-05, -0.166786194, 0.11911726, 0.000214098938, 7.58497044e-05, 1.00000393, -5.36924927e-05, -1.00000405, 7.14352354e-05, 1.00000429, -4.98957525e-05, -0.000217909779))
mesh("SpecialMesh",B9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
TG4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.953130484, 0.238282651, 0.953130603))
TG4weld=weld(m,Character["HumanoidRootPart"],TG4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.701898575, -1.07242584, 3.10196733, 0.247876227, -0.968791723, 0.000235861822, 0.0139541421, 0.00332688913, -0.999897122, 0.968691289, 0.247854009, 0.0143433129))
mesh("SpecialMesh",TG4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
AM4=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","AM4",Vector3.new(0.231713057, 0.953130603, 0.953130603))
AM4weld=weld(m,TG4,AM4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16683197, 5.14984131e-05, 2.57492065e-05, -0.000262918446, -0.99999994, -0.000245724805, 1, -0.000262905785, -5.22979026e-05, 5.22422997e-05, -0.000245738775, 1))
mesh("SpecialMesh",AM4,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.5, 0.5))
Q1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q1",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q1weld=weld(m,TG4,Q1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02936554, 0.58564949, 0.114022255, 0.682914674, -0.707203865, 0.183003649, 0.683140576, 0.707009733, 0.182910576, -0.258740425, 0.000104899518, 0.965946913))
mesh("SpecialMesh",Q1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Q10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q10",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q10weld=weld(m,TG4,Q10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.91278076e-05, -0.524228096, -0.00012588501, -0.000225846947, 8.19889829e-05, -1.00000644, -1.00000012, -0.000232773818, 0.000224219271, -0.000232745646, 1.00000644, 8.20420682e-05))
mesh("SpecialMesh",Q10,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))
Q11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q11",Vector3.new(0.238282621, 0.238282651, 0.238282651))
Q11weld=weld(m,TG4,Q11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0746479034, -0.356128693, 1.32600975, -0.846081793, 0.246080905, -0.472852886, 0.0128138652, -0.877419651, -0.479552537, -0.532899082, -0.411799699, 0.739215553))
mesh("SpecialMesh",Q11,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
Q12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q12",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q12weld=weld(m,TG4,Q12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977277756, -0.0517272949, 0.351173401, -0.542923808, -0.399282485, 0.73878783, 0.839781821, -0.257620722, 0.477910042, -0.000494024833, 0.87988919, 0.47517857))
mesh("SpecialMesh",Q12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Q13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q13",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q13weld=weld(m,TG4,Q13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708095074, 0.00480651855, -0.0214424133, 0.537001133, -0.0329830386, -0.842936516, -0.016877139, -0.999455392, 0.0283556767, -0.843412697, -0.0010006763, -0.53726542))
mesh("SpecialMesh",Q13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Q14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q14",Vector3.new(0.238282621, 0.238282651, 0.238282651))
Q14weld=weld(m,TG4,Q14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110631943, -1.37159348, 0.569797516, -0.258814424, 0.000158959068, -0.965927124, -0.683109343, 0.706977546, 0.183151439, 0.682917833, 0.707235932, -0.182867393))
mesh("SpecialMesh",Q14,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
Q15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q15",Vector3.new(0.238282621, 0.238282651, 0.238282651))
Q15weld=weld(m,TG4,Q15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.114351273, -1.38692474, 0.585363388, 0.258614838, 0.000151800923, -0.965980589, -0.68317169, 0.707010865, -0.182789415, 0.682931006, 0.707202673, 0.182947218))
mesh("SpecialMesh",Q15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
Q16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q16",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q16weld=weld(m,TG4,Q16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02927017, 0.585828781, -0.1140728, 0.682736814, -0.707362711, -0.183043808, 0.683264673, 0.706848323, -0.183054447, 0.258872002, -9.22912732e-05, 0.965909958))
mesh("SpecialMesh",Q16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Q2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q2",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q2weld=weld(m,TG4,Q2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.95639038e-05, -0.166786194, 0.119113445, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q3",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q3weld=weld(m,TG4,Q3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.57492065e-05, -0.166748047, -0.119185925, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q4",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q4weld=weld(m,TG4,Q4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.775097847, 0.109146118, -0.114173889, 0.932992756, -0.258940458, -0.249948949, 0.250075579, 0.965893269, -0.0671743006, 0.258818179, 0.000166995451, 0.965926051))
mesh("SpecialMesh",Q4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Q5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q5",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q5weld=weld(m,TG4,Q5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.91549683e-05, -0.166755676, -0.357444286, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q6",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q6weld=weld(m,TG4,Q6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.44137573e-05, -0.166820526, 0.357393742, 0.000289762218, 0.000152884051, 1, -6.89870794e-05, -1, 0.000152902678, 1.00000012, -6.90316083e-05, -0.000289731135))
mesh("SpecialMesh",Q6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.415454328, 1.00999999))
Q7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Q7",Vector3.new(0.231713057, 0.953130603, 0.953130603))
Q7weld=weld(m,TG4,Q7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.16683197, 5.14984131e-05, 2.57492065e-05, -0.000262918446, -0.99999994, -0.000245724805, 1, -0.000262905785, -5.22979026e-05, 5.22422997e-05, -0.000245738775, 1))
mesh("SpecialMesh",Q7,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.700000048, 0.700000048))
Q8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q8",Vector3.new(0.476565242, 0.238282651, 0.238282651))
Q8weld=weld(m,TG4,Q8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.77507782, 0.109096527, 0.11418438, 0.933048368, -0.258882731, 0.249801114, 0.250101715, 0.965908766, 0.0668535084, -0.258592248, 9.8134391e-05, 0.965986609))
mesh("SpecialMesh",Q8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Q9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Q9",Vector3.new(0.953130484, 0.231713057, 0.238282651))
Q9weld=weld(m,TG4,Q9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000154495239, -0.524244308, -0.000152587891, -1, -2.11830047e-05, -0.000211575112, -0.000211558785, -0.000157893635, 1, -2.12165178e-05, 0.99999994, 0.00015788991))
mesh("SpecialMesh",Q9,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.411340922, 1))








MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Handle",Vector3.new(1.09732866, 2.19465828, 1.09732854))
MNweld=weld(m,Character["Torso"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0323486328, -0.0509860516, -0.00120401382, -0.00500982394, 0.00520668458, 0.999973893, -0.00739898486, 0.999958873, -0.00524367485, -0.999960065, -0.00742506143, -0.0049710935))
TR7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR7weld=weld(m,MN,TR7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",TR7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
MD9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD9",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD9weld=weld(m,MN,MD9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.741846681, 0.199262142, 1.00000405, -6.92205504e-06, 0.000154254027, 4.65649646e-05, 0.965939224, -0.25876984, -0.000147186685, 0.258768767, 0.965943158))
mesh("SpecialMesh",MD9,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD1",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD1weld=weld(m,MN,MD1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.402763367, -0.974855185, 0.682875633, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD10",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD10weld=weld(m,MN,MD10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD11",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD11weld=weld(m,MN,MD11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.493839264, -0.274354219, 4.24385071e-05, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD12",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD12weld=weld(m,MN,MD12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.493812561, -0.274300575, -0.000376224518, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD13",Vector3.new(1.09732866, 0.822996795, 1.09732854))
MD13weld=weld(m,MN,MD13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.68582201, 0.000464439392, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD14",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD14weld=weld(m,MN,MD14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.603547096, 0.000416755676, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD15",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD15weld=weld(m,MN,MD15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-05, 0.137180567, -4.529953e-05, -1.0000037, -0.000862163957, 0.000179466791, -0.000862103421, 0.999999523, 0.000520790287, -0.000179945491, 0.000520619913, -1.00000381))
mesh("SpecialMesh",MD15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD16",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD16weld=weld(m,MN,MD16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-05, 0.932742357, 0.000658988953, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD19=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD19",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD19weld=weld(m,MN,MD19,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD19,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
MD18=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD18",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD18weld=weld(m,MN,MD18,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD18,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD2",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD2weld=weld(m,MN,MD2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392555237, -0.573539257, 1.09872949, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD3",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD3weld=weld(m,MN,MD3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397964478, -0.817667723, 0.487944126, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD4",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD4weld=weld(m,MN,MD4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.422103882, -0.82026124, 0.507567406, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD5",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD5weld=weld(m,MN,MD5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427509308, -0.557831764, 1.11046171, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD6",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD6weld=weld(m,MN,MD6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417263031, -0.972257376, 0.702233315, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","MD7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD7weld=weld(m,MN,MD7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD8",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD8weld=weld(m,MN,MD8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
TR1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR1",Vector3.new(0.266768694, 0.54866457, 0.548664272))
TR1weld=weld(m,MN,TR1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548826218, 0.30154109, 4.57763672e-05, -0.000205519143, -0.0001726388, -1, -4.31765802e-05, 1, -0.00017263052, 1, 4.314119e-05, -0.000205526594))
mesh("SpecialMesh",TR1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.700000048, 0.700000048))
TR2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR2",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR2weld=weld(m,MN,TR2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, 0.741921067, 0.198978901, 1.00000405, -2.92747281e-05, -1.7457176e-05, 2.37242784e-05, 0.965939343, -0.258769363, 2.44602561e-05, 0.25876832, 0.965943277))
mesh("SpecialMesh",TR2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
TR3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR3",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR3weld=weld(m,MN,TR3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.603546381, 0.000186920166, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR4",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR4weld=weld(m,MN,TR4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, 0.93274045, 0.000304222107, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR5",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR5weld=weld(m,MN,TR5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
TR6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","TR6",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR6weld=weld(m,MN,TR6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR6,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
MD21=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","MD21",Vector3.new(0.266768694, 0.54866457, 0.548664272))
MD21weld=weld(m,MN,MD21,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548921585, 0.301375628, 0.000118255615, -0.000262488145, -9.39509191e-05, -1.00000393, -0.000154611655, 1, -9.38984886e-05, 1.00000393, 0.000154557638, -0.000262471847))
mesh("SpecialMesh",MD21,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.900000036, 0.900000036))
MN=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Handle",Vector3.new(1.03740847, 2.07481742, 1.03740823))






local PE1 = Create("ParticleEmitter"){
Parent = BackHandle,
Color = ColorSequence.new(Color3.new (255, 0, 0), Color3.new (255, 0, 0)),
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
		Material = "Neon",
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
				Material = "Neon",
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

