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

local TrailColor = ("Navy blue")
 
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Handle",Vector3.new(0.226392448, 3.47665358, 0.230657101))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994874, 0, 0, 0, 1),CFrame.new(-1.00372314, 0.134414673, 0.0259094238, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.794521511, 1, 1.00999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.233241379, 0.794054151, 0.476820409))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.000305175781, -9.53594971, 0.245666504, -0.999203622, 0.0399030223, -5.10000282e-005, 0.000446393824, 0.00990002323, -0.999950886, -0.0399005562, -0.999154508, -0.00990995113))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Hitbox",Vector3.new(0.964624286, 7.02056265, 0.230657101))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.00939941406, -5.6335907, 0.000305175781, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.233241379, 0.791469693, 0.486511916))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.00204467773, -9.54089355, 0.226913452, 0.999200344, -0.0399830155, 0.000214000072, 0.000572016928, 0.00894299801, -0.999959886, 0.0399794951, 0.999160349, 0.00895871688))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 3.65382504, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.000137329102, 0.0888366699, 3.05175781e-005, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.993151784, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.266838193, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(2.25485229, -0.627677917, -0.00048828125, -0.0287740082, -0.712836206, 0.700740159, -0.0286889896, -0.700152695, -0.713416636, 0.999174237, -0.0406313837, -0.000304350368))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.194063991, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.246163338, 0.248747498, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.28954315, -1.97512817, -0.000610351563, -0.0282179993, -0.699832976, -0.713748991, 0.0284940023, 0.713180065, -0.700401664, 0.999195635, -0.0401014946, -0.000183471566))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.246163338, 0.248747498, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.06056976, -1.74359131, -0.000579833984, -0.0282179993, -0.699832976, -0.713748991, 0.0284940023, 0.713180065, -0.700401664, 0.999195635, -0.0401014946, -0.000183471566))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.246163338, 0.248747498, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.97199249, -1.29611206, -0.000122070313, -0.0282179993, -0.699832976, -0.713748991, 0.0284940023, 0.713180065, -0.700401664, 0.999195635, -0.0401014946, -0.000183471566))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.246163338, 0.248747498, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.74330902, -1.06454468, -0.000122070313, -0.0282179993, -0.699832976, -0.713748991, 0.0284940023, 0.713180065, -0.700401664, 0.999195635, -0.0401014946, -0.000183471566))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.346954614, 0.329509705, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.479019165, -2.147995, 0.000274658203, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.580842137, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.922775269, -2.28977966, 0.000366210938, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.174086183, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.0993881226, -0.0986938477, 0, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.255854517, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.74230957, -2.36911011, -0.000823974609, -0.0282179993, -0.699832976, -0.713748991, 0.0284940023, 0.713180065, -0.700401664, 0.999195635, -0.0401014946, -0.000183471566))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.188356221, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.255854517, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.516242981, 2.36096191, 0.000366210938, 0.0286370032, 0.700032055, 0.713537037, -0.0291169863, -0.71294266, 0.700617492, 0.999165773, -0.0408396348, -3.37182901e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.188356221, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.546989441, 0.547393799, 0.000213623047, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.165649414, 0.166137695, 0.000122070313, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.293708801, 0.294067383, 0.000122070313, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.266838193, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.534851074, -2.35520935, -0.000701904297, -0.0287740082, -0.712836206, 0.700740159, -0.0286889896, -0.700152695, -0.713416636, 0.999174237, -0.0406313837, -0.000304350368))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.194063991, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.0378341675, 0.0383300781, 0, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.266838193, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-2.47576904, 0.628616333, -0.000671386719, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.194063991, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.421569824, 0.422119141, 0.000152587891, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.255854517, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-2.46892548, -0.648162842, 0.000244140625, -0.0282179993, -0.699832976, -0.713748991, 0.0284940023, 0.713180065, -0.700401664, 0.999195635, -0.0401014946, -0.000183471566))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.188356221, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 3.08837771, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.024810791, -0.07862854, 6.10351563e-005, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.235160127, 1, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.501152039, -0.500610352, -0.000183105469, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.757072449, -0.756530762, -0.000213623047, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.629348755, -0.628631592, -0.000152587891, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.373474121, -0.37286377, -6.10351563e-005, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.803016663, 0.803192139, 0.000244140625, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.247932434, -0.247436523, -3.05175781e-005, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.894340515, -0.893615723, -0.000244140625, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.03632355, 1.03488159, 0.000427246094, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.346954614, 0.329509705, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.35247803, -1.35478973, -0.000549316406, 0.028436996, 0.712727964, -0.700863957, 0.0274780076, 0.700325191, 0.713294923, 0.999217868, -0.0395423099, 0.000330800423))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.26455688, 1.26376343, 0.000793457031, -0.028531, -0.712845027, 0.700740993, -0.0285710189, -0.700158417, -0.713415682, 0.999184489, -0.0403753445, -0.000390489848))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.479452342, 0.470889479, 1.05999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.28997803, -1.29336548, -0.00048828125, 0.028436996, 0.712727964, -0.700863957, 0.0274780076, 0.700325191, 0.713294923, 0.999217868, -0.0395423099, 0.000330800423))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.924201965, 0.924560547, 0.000335693359, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.33953857, -1.34622955, -0.00048828125, 0.028436996, 0.712727964, -0.700863957, 0.0274780076, 0.700325191, 0.713294923, 0.999217868, -0.0395423099, 0.000330800423))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.19348145, 1.19529724, 0.000701904297, -0.028531, -0.712845027, 0.700740993, -0.0285710189, -0.700158417, -0.713415682, 0.999184489, -0.0403753445, -0.000390489848))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.593607783, 0.585044622, 1.05999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.346954614, 0.329509705, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.29403687, -1.29959869, -0.000518798828, -0.0287740082, -0.712836206, 0.700740159, -0.0286889896, -0.700152695, -0.713416636, 0.999174237, -0.0406313837, -0.000304350368))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.677398682, 0.67791748, 0.000244140625, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.266838193, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.756072998, 2.35659027, 0.00143432617, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.194063991, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.255854517, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(2.24343872, 0.64074707, -0.000305175781, 0.0286370032, 0.700032055, 0.713537037, -0.0291169863, -0.71294266, 0.700617492, 0.999165773, -0.0408396348, -3.37182901e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.188356221, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.30319214, -1.29423523, -0.00048828125, -0.0287740082, -0.712836206, 0.700740159, -0.0286889896, -0.700152695, -0.713416636, 0.999174237, -0.0406313837, -0.000304350368))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.52413177, -1.35296631, -0.000274658203, -0.0282179993, -0.699832976, -0.713748991, 0.0284940023, 0.713180065, -0.700401664, 0.999195635, -0.0401014946, -0.000183471566))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.693493783, 0.14269343, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.346954614, 0.329509705, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.17831421, 1.18121338, 0.000762939453, -0.028531, -0.712845027, 0.700740993, -0.0285710189, -0.700158417, -0.713415682, 0.999184489, -0.0403753445, -0.000390489848))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.53320313, 1.3394928, 0.000274658203, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.693493783, 0.14269343, 1.03999996))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.233241379, 0.791469693, 0.255854875))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.000610351563, -2.57305908, 0.119415283, 0.999200344, -0.0399830155, 0.000214000072, 0.000572016928, 0.00894299801, -0.999959886, 0.0399794951, 0.999160349, 0.00895871688))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.19140625, 1.18958282, 0.000732421875, -0.028531, -0.712845027, 0.700740993, -0.0285710189, -0.700158417, -0.713415682, 0.999184489, -0.0403753445, -0.000390489848))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-2.39938354, 0.596641541, -0.000640869141, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.556507409, 0.582190752, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.49490356, 1.48503113, 0.000427246094, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.580842137, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.928939819, -2.29045105, -0.000183105469, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.174086183, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.616607666, 2.38282013, 0.00149536133, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.556507409, 0.582190752, 1.03999996))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.233241379, 0.791469693, 0.255854875))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-9.15527344e-005, -2.5688324, 0.132644653, -0.999203622, 0.0399030223, -5.10000282e-005, 0.000446393824, 0.00990002323, -0.999950886, -0.0399005562, -0.999154508, -0.00990995113))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.36398315, -1.35218811, -0.00048828125, -0.0287740082, -0.712836206, 0.700740159, -0.0286889896, -0.700152695, -0.713416636, 0.999174237, -0.0406313837, -0.000304350368))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.33740234, 1.33893585, 0.000823974609, -0.028531, -0.712845027, 0.700740993, -0.0285710189, -0.700158417, -0.713415682, 0.999184489, -0.0403753445, -0.000390489848))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.593607783, 0.585044622, 1.05999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.39379311, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.00364685059, -2.21582031, 9.15527344e-005, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.465181798, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 2.25423455, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-2.08901978, -0.00997924805, -0.000244140625, 0.000237, 0.00926900003, -0.999957025, 0.0403669998, 0.999141991, 0.00927101262, 0.999184906, -0.040367458, -0.000137365059))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.188356221, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.14356995, -1.14282227, -0.000274658203, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.255854517, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.64407349, 1.51643372, 0.000427246094, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.188356221, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.346954614, 0.329509705, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.483734131, -2.14515686, -3.05175781e-005, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 2.25294209, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-2.14993286, -0.00918579102, -0.000244140625, 0.000237, 0.00926900003, -0.999957025, 0.0403669998, 0.999141991, 0.00927101262, 0.999184906, -0.040367458, -0.000137365059))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.188356221, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.256500632, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.63208008, -1.53475952, -0.000396728516, -0.0282179993, -0.699832976, -0.713748991, 0.0284940023, 0.713180065, -0.700401664, 0.999195635, -0.0401014946, -0.000183471566))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.194063991, 1, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.018013, -1.01739502, -0.000335693359, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.436644375, 0.430934638, 1.01999998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.24066162, 1.24261475, 0.000732421875, -0.028531, -0.712845027, 0.700740993, -0.0285710189, -0.700158417, -0.713415682, 0.999184489, -0.0403753445, -0.000390489848))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.03999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.247741699, -0.247131348, -3.05175781e-005, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.500968933, -0.500488281, -0.000152587891, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.0379333496, 0.0385742188, 6.10351563e-005, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.421897888, 0.422241211, 0.000213623047, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.293830872, 0.294342041, 9.15527344e-005, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.547264099, 0.547607422, 0.000183105469, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.0990753174, -0.0984802246, 0, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.166122437, 0.166412354, 3.05175781e-005, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.629104614, -0.628387451, -0.000122070313, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.894119263, -0.893432617, -0.000183105469, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.756942749, -0.756286621, -0.000213623047, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.373260498, -0.372619629, -6.10351563e-005, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.677711487, 0.678039551, 0.000213623047, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.924423218, 0.924835205, 0.000305175781, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(0.803123474, 0.803527832, 0.000305175781, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.03664398, 1.03518677, 0.000366210938, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.01774597, -1.01708984, -0.000183105469, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.14334869, -1.14257813, -0.000305175781, -0.0280899964, -0.699775934, -0.713809967, 0.0283620134, 0.713246346, -0.700339496, 0.999203026, -0.039917618, -0.000188032849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.322488964, 0.316779464, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.660736084, 2.35415649, 0.00143432617, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.996005654, 0.970318258, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.897750854, 1.55277252, 0.000518798828, -0.035006009, -0.869685173, 0.492364109, -0.0200600121, -0.49195534, -0.870389342, 0.99918586, -0.0403456874, -0.000224501884))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.593607783, 0.585044622, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-2.41744995, 0.579910278, -0.000671386719, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.556507409, 0.582190752, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.54940796, 0.893287659, 0.00158691406, -0.0199290011, -0.50723207, 0.86157912, -0.0354949981, -0.86084801, -0.507622659, 0.999171138, -0.0406981595, -0.00084836164))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.593607783, 0.585044622, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.31561279, -1.31996918, -0.000549316406, 0.028436996, 0.712727964, -0.700863957, 0.0274780076, 0.700325191, 0.713294923, 0.999217868, -0.0395423099, 0.000330800423))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.289451867, 0.287513345, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.35595703, -1.35126495, -0.000549316406, 0.028436996, 0.712727964, -0.700863957, 0.0274780076, 0.700325191, 0.713294923, 0.999217868, -0.0395423099, 0.000330800423))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.289451867, 0.287513345, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.17471313, 1.18474579, 0.000701904297, -0.028531, -0.712845027, 0.700740993, -0.0285710189, -0.700158417, -0.713415682, 0.999184489, -0.0403753445, -0.000390489848))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.464355469, 1.72952271, 0.000793457031, -0.0386740044, -0.967418134, 0.250213027, -0.0104150195, -0.249996483, -0.96819073, 0.999197662, -0.0400497839, -0.000407313666))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.593607783, 0.585044622, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-2.36499023, 0.63104248, -0.000671386719, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.996005654, 0.970318258, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.289451867, 0.287513345, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.2975769, -1.29597473, -0.000518798828, -0.0287740082, -0.712836206, 0.700740159, -0.0286889896, -0.700152695, -0.713416636, 0.999174237, -0.0406313837, -0.000304350368))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.26565552, -1.26226807, -0.000457763672, 0.028436996, 0.712727964, -0.700863957, 0.0274780076, 0.700325191, 0.713294923, 0.999217868, -0.0395423099, 0.000330800423))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.37671268, 0.368149936, 1.07000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.598419189, 2.40036011, 0.00152587891, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.556507409, 0.582190752, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.73196411, 0.462905884, 0.00189208984, -0.00988499634, -0.267072916, 0.963625669, -0.0393939838, -0.962820649, -0.267253906, 0.999174893, -0.0406028554, -0.00100358657))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.593607783, 0.585044622, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.26574707, 1.26467133, 0.000793457031, -0.028531, -0.712845027, 0.700740993, -0.0285710189, -0.700158417, -0.713415682, 0.999184489, -0.0403753445, -0.000390489848))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.593607783, 0.585044622, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-0.00109863281, 1.79016113, 0.000396728516, -0.0403799973, -0.999145865, -0.0087839989, 0.000205993623, 0.00878284313, -0.999961495, 0.999184489, -0.0403802469, -0.000148833482))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.593607783, 0.585044622, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.21511841, 1.21607971, 0.000732421875, -0.028531, -0.712845027, 0.700740993, -0.0285710189, -0.700158417, -0.713415682, 0.999184489, -0.0403753445, -0.000390489848))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.51022339, 1.49951172, 0.00048828125, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.996005654, 0.970318258, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.47467041, 1.4640274, 0.000396728516, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.996005654, 0.970318258, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 2.25100422, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-2.11976624, -0.0090637207, -0.000213623047, 0.000237, 0.00926900003, -0.999957025, 0.0403669998, 0.999141991, 0.00927101262, 0.999184906, -0.040367458, -0.000137365059))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0913241953, 1, 1.02999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(-1.39797974, 1.38890839, 0.000366210938, 0.0284409914, 0.71268177, -0.700910747, 0.0276640262, 0.700364709, 0.713249028, 0.999212623, -0.0396755189, 0.000203420335))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.722032726, 0.710615277, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.226392448, 0.22639285, 0.230657101))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -0.040218018, -0.999149501, -0.00911000464, 0.000409995089, 0.00910087768, -0.999958515, 0.999190867, -0.0402200818, 4.36271257e-005),CFrame.new(1.33560181, -1.32666016, -0.000457763672, -0.0287740082, -0.712836206, 0.700740159, -0.0286889896, -0.700152695, -0.713416636, 0.999174237, -0.0406313837, -0.000304350368))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.878996372, 0.870432496, 1.02999997))

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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(50)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=228343249",Torso,1,1) 
for i = 1,2 do
magicring(BrickColor.new("Navy blue"),Torso.CFrame*CFrame.new(-5,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
magicring(BrickColor.new("Navy blue"),Torso.CFrame*CFrame.new(-5,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
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
