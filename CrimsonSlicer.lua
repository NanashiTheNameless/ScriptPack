Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head
hed=Head
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
rarm=RightArm
rleg=RightLeg
larm=LeftArm
lleg=LeftLeg
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
fist1=true
fist2=false
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
local CurrentMode = "Unsheathed"


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

        local function weldBetween(a, b)
            local weldd = Instance.new("ManualWeld")
            weldd.Part0 = a
            weldd.Part1 = b
            weldd.C0 = CFrame.new()
            weldd.C1 = b.CFrame:inverse() * a.CFrame
            weldd.Parent = a
            return weldd
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
        
        function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
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
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Crimson")
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
w1.Transparency = 0.3
table.insert(Effects,{w1,"Disappear",.03})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Crimson")
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
w2.Transparency = 0.3
table.insert(Effects,{w2,"Disappear",.03})
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

--[[handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Handle",Vector3.new(0.34799999, 2.78399992, 0.34799999))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.00324273, 0.013961792, -0.00828075409, -1.38366803e-013, -0.999999881, 4.25688995e-009, 2.4656245e-007, -4.25688951e-009, -1, 1, -1.373172e-013, 2.4656245e-007))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Crimson","Hitbox",Vector3.new(1.04400003, 6.35600042, 0.600000024))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000308990479, -5.48094559, -2.00271606e-005, 1, 6.10120843e-011, -1.08637464e-014, -6.10120843e-011, 1, 7.57154339e-011, 1.08637574e-014, -7.57154339e-011, 1))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -0.00242900848, 2.16260338, 1.38366803e-013, -2.4656245e-007, -1, -0.999999702, -4.25688862e-009, -1.37317173e-013, -4.25688862e-009, 0.999999702, -2.46562365e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0649600029, 0.266800046, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.90548706, -0.270383835, 1.38366803e-013, -2.4656245e-007, -1, -0.707106292, 0.707106471, -1.74345999e-007, 0.707106471, 0.707106292, -1.74345757e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.226199999, 0.379320025, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.200000003, 0.34799999, 0.812000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000484466553, -0.232157588, -1.08489037, -1.6391111e-007, -2.91180186e-007, -0.999989986, -0.999989986, 2.34624395e-007, 1.63911025e-007, 2.34622007e-007, 1, -2.91177315e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.628719985, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.1207962, -1.77352905, -1.94793994e-008, -1.96046472e-007, -1, 0.707106471, 0.707106292, -1.52399679e-007, 0.707106292, -0.707106471, 1.24851695e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0522000007, 0.293480009, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.812000036, 0.591600001))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000144004822, -7.46494102, -8.79764557e-005, 4.47029542e-008, 2.42425131e-007, 0.999980867, -2.50834205e-007, 1, -2.42420526e-007, -0.999980867, -2.5083898e-007, 4.47030146e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.628719985, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.231999978, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0605430603, -4.62282181, 0.00242900848, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.190239996, 0.25752002, 0.723839939))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.90548706, -0.270383835, 1.38366803e-013, -2.4656245e-007, -1, -0.707106292, 0.707106471, -1.74345999e-007, 0.707106471, 0.707106292, -1.74345757e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.187919989, 0.477920026, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.232713461, -1.89698601, 0.000104904175, 0.999990463, 6.10373974e-011, -1.79689993e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57438556e-011, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.174778461, -1.66498375, 9.53674316e-006, 1, -2.34479103e-012, -1.42102626e-014, 2.34479103e-012, 1, -2.89901436e-012, 2.04982668e-014, 2.89901436e-012, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.580000103, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(1.04400003, 4.75600052, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000287055969, -4.68094635, -3.14712524e-005, 0.999985695, 6.10369533e-011, -1.79689095e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689129e-014, -7.57438556e-011, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999978, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.055480957, 0.00242888927, 4.62282181, 1.38366803e-013, -2.4656245e-007, -1, 0.999999881, 1.91580511e-008, 1.33643137e-013, 1.91580511e-008, -0.999999881, 2.46562422e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.230839998, 0.200680032, 2.79675961))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.579999983, 0.812000036, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.58329582, -0.00271689892, 0.00253105164, -7.87626959e-008, 0.999999642, -2.45072926e-007, -0.999999464, 8.51500772e-008, -4.54507015e-010, 1.08588507e-008, 2.02850984e-007, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.798079908, 0.843320072, 0.58927989))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.91083908, -0.265031815, 1.38366803e-013, -2.4656245e-007, -1, -0.70710659, -0.707106471, 1.743458e-007, -0.707106471, 0.70710659, -1.74346027e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.187919989, 0.477920026, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.11735535, -1.77697182, 5.58765407e-008, -2.23627353e-007, -1, 0.707106352, -0.707106411, 1.97639011e-007, -0.707106411, -0.707106352, 1.18617642e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0649600029, 0.266800046, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.21653748, 2.8604393, 1.38366803e-013, -2.4656245e-007, -1, 0.707106769, 0.707106709, -1.74345857e-007, 0.707106709, -0.707106769, 1.74346084e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.214599997, 0.428039998, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.91083908, -0.265031815, 1.38366803e-013, -2.4656245e-007, -1, -0.70710659, -0.707106471, 1.743458e-007, -0.707106471, 0.70710659, -1.74346027e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.214599997, 0.428039998, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.44659999, 0.200000003, 0.371199995))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00553905964, -0.620464325, 0.00238800049, 0.999994755, 4.21545732e-009, 1.69303116e-013, -4.2154511e-009, 1, -2.46550314e-007, -1.77448632e-013, 2.46551593e-007, 0.999994755))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.12079048, -0.461172104, -1.20904753e-008, -2.04617493e-007, -1, 0.70710665, 0.70710659, -1.53235618e-007, 0.70710659, -0.70710665, 1.36137132e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0522000007, 0.293480009, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.812000036, 0.200000003, 0.579999983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.58329773, -0.00251197815, 0.00270497799, 4.25687707e-009, -1, 2.46565747e-007, 1.65165096e-013, -2.46565747e-007, -1, 1, 4.25687707e-009, 1.64115493e-013))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.526639998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.812000036, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.294445038, 1.4429245, 0.00253105164, 0.965925753, -0.258819014, 6.3815186e-008, 0.258819014, 0.965925753, -2.38160979e-007, -1.38366803e-013, 2.4656245e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.12079048, -0.461172104, -1.20904753e-008, -2.04617493e-007, -1, 0.70710665, 0.70710659, -1.53235618e-007, 0.70710659, -0.70710665, 1.36137132e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0649600029, 0.266800046, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999978, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0605430603, -4.62282181, 0.00242900848, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.229680017, 0.249400035, 0.650759876))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.90548706, -0.270383835, 1.38366803e-013, -2.4656245e-007, -1, -0.707106292, 0.707106471, -1.74345999e-007, 0.707106471, 0.707106292, -1.74345757e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.214599997, 0.428039998, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.04400003, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28609848, -1.26961899, 0.00253105164, 0.707106709, -0.707106769, 1.74346084e-007, 0.707106769, 0.707106709, -1.74345857e-007, -1.38366803e-013, 2.4656245e-007, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.21653748, 2.8604393, 1.38366803e-013, -2.4656245e-007, -1, 0.707106769, 0.707106709, -1.74345857e-007, 0.707106709, -0.707106769, 1.74346084e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.187919989, 0.477920026, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.21997452, 2.85700226, 1.38366803e-013, -2.4656245e-007, -1, 0.70710659, -0.70710665, 1.74346042e-007, -0.70710665, -0.70710659, 1.74345828e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.214599997, 0.428039998, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -2.18717003, 1.162413, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.187919989, 0.477920026, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -2.18717003, 1.162413, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.214599997, 0.428039998, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.11734962, -0.464616776, 4.62869565e-008, -2.3199955e-007, -1, 0.707106471, -0.70710659, 1.96778231e-007, -0.70710659, -0.707106471, 1.31318558e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0649600029, 0.266800046, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.579999983, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000606894493, -1.54850197, -4.76837158e-006, 1, -2.34479103e-012, -1.42102626e-014, 2.34479103e-012, 1, -2.89901436e-012, 2.04982668e-014, 2.89901436e-012, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -2.18717003, -1.15753412, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.214599997, 0.428039998, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.23126626, -1.89697075, 0.000104904175, 0.999990463, 6.10373974e-011, -1.79689993e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57438556e-011, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.580000222, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.04400003, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.859739304, -1.87621498, 0.00253105164, 0.70710659, 0.70710659, -1.74345828e-007, -0.70710659, 0.70710659, -1.74346027e-007, -1.38366803e-013, 2.4656245e-007, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.58202362, 0.00305497646, 0.00253105164, 1.91577065e-008, -1, 2.46562593e-007, 0.999994159, 1.91577474e-008, -8.742213e-008, 4.37109904e-008, 2.46561086e-007, 0.999994159))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.58260727, -0.577546716, 1.38366803e-013, -2.4656245e-007, -1, -3.40592123e-008, 0.999999821, -2.46562394e-007, 0.999999821, 3.40592123e-008, 1.29969047e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0522000007, 0.293480009, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.44659999, 0.69599998, 0.371199995))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00555098057, -1.02645874, 0.00238800049, 0.999994278, 4.2154551e-009, 1.69303035e-013, -4.21544888e-009, 0.999999523, -2.46550201e-007, -1.77448632e-013, 2.46551593e-007, 0.999994755))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -0.0024292469, 2.16260338, 1.38366803e-013, -2.4656245e-007, -1, -0.999999702, -6.38615347e-008, -1.22620908e-013, -6.38615347e-008, 0.999999702, -2.46562365e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0522000007, 0.293480009, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.463999987, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000650644302, -1.8385067, 0.000104904175, 0.999990463, 6.10373974e-011, -1.79689993e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57438556e-011, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 4.75600052, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000156164169, -4.68094444, -0.000274658203, 0.999971211, 5.13775689e-011, -1.44165397e-014, -5.13864507e-011, 1, 6.64499566e-011, 8.34828473e-015, -6.64783784e-011, 0.999971211))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.580000401, 1, 0.69599992))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.21997452, 2.85700226, 1.38366803e-013, -2.4656245e-007, -1, 0.70710659, -0.70710665, 1.74346042e-007, -0.70710665, -0.70710659, 1.74345828e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.226199999, 0.379320025, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999978, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0605430603, 0.00242888927, 4.62282181, 1.38366803e-013, -2.4656245e-007, -1, 0.999999881, 1.91580511e-008, 1.33643137e-013, 1.91580511e-008, -0.999999881, 2.46562422e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.230839998, 0.200680032, 2.79675961))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -2.18717003, -1.15753412, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.226199999, 0.379320025, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -2.18717003, -1.15753412, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.187919989, 0.477920026, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.231999993, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000268936157, -7.1749382, -0.000166773796, -2.98020346e-008, 2.42384317e-007, 0.999980867, -2.50883971e-007, 1, -2.42379713e-007, -0.999980867, -2.50888746e-007, -2.98019742e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.698320508, 1.00999999, 0.590207934))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.44659999, 1.15999997, 0.371199995))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00572288036, 0.249307632, 0.00253105164, 0.999997973, 4.25688151e-009, 1.37316929e-013, -4.25688196e-009, 0.999998093, -2.46561967e-007, -1.38366789e-013, 2.46562422e-007, 0.999999881))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.44659999, 0.200000003, 0.371199995))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00575697422, 1.22929001, 0.00253105164, 1, 4.25689928e-009, 1.49599246e-013, -4.25689928e-009, 1, -2.46565691e-007, -1.50648848e-013, 2.46565691e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.11734962, -0.464616776, 4.62869565e-008, -2.3199955e-007, -1, 0.707106471, -0.70710659, 1.96778231e-007, -0.70710659, -0.707106471, 1.31318558e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0522000007, 0.293480009, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.579999983, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.347447634, -1.78050041, 0.000102043152, 0.999989986, 6.10373974e-011, -1.79689739e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57438556e-011, 0.999989986))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.21653748, 2.8604393, 1.38366803e-013, -2.4656245e-007, -1, 0.707106769, 0.707106709, -1.74345857e-007, 0.707106709, -0.707106769, 1.74346084e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.226199999, 0.379320025, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999978, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.055480957, -4.62282181, 0.00242900848, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.229680017, 0.249400035, 0.650759876))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.696000099, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.872640967, -2.18717003, 0.00248718262, 1, 4.25688995e-009, 1.37317214e-013, -4.25688995e-009, 1, -2.4656245e-007, -1.38366803e-013, 2.4656245e-007, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.91083908, -0.265031815, 1.38366803e-013, -2.4656245e-007, -1, -0.70710659, -0.707106471, 1.743458e-007, -0.707106471, 0.70710659, -1.74346027e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.226199999, 0.379320025, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -2.18717003, 1.162413, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.226199999, 0.379320025, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.50800002, 1.04400003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.53131104e-005, -7.8129406, 0.00018453598, 4.47029258e-008, 2.42408902e-007, 0.999980867, -2.50858221e-007, 1, -2.42404298e-007, -0.999980867, -2.50863025e-007, 4.47029933e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.581159949, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.04400003, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000666975975, -2.18694496, 0.000104904175, 0.999990463, 6.10373974e-011, -1.79689993e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57438556e-011, 0.999990463))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, -1.11735535, -1.77697182, 5.58765407e-008, -2.23627353e-007, -1, 0.707106352, -0.707106411, 1.97639011e-007, -0.707106411, -0.707106352, 1.18617642e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0522000007, 0.293480009, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.173270226, -1.66498375, 0.0001039505, 0.999997854, 6.10373974e-011, -1.7969128e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79691145e-014, -7.57154339e-011, 0.999997854))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.580000103, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.58260727, 0.582428694, -3.71006301e-008, -2.2971102e-007, -1, 2.55454324e-008, 0.999999821, -2.29710963e-007, 0.999999821, -2.55454431e-008, -3.71006159e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0522000007, 0.293480009, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.04400003, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.863862991, -1.87209129, 0.00253105164, 0.70710659, -0.70710659, 1.74346027e-007, 0.70710659, 0.70710659, -1.74345828e-007, -1.38366803e-013, 2.4656245e-007, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.58260727, -0.577546716, 1.38366803e-013, -2.4656245e-007, -1, -3.40592123e-008, 0.999999821, -2.46562394e-007, 0.999999821, 3.40592123e-008, 1.29969047e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0649600029, 0.266800046, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.21997452, 2.85700226, 1.38366803e-013, -2.4656245e-007, -1, 0.70710659, -0.70710665, 1.74346042e-007, -0.70710665, -0.70710659, 1.74345828e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.187919989, 0.477920026, 1.68895996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.580000043, 4.75600052, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0001963377, -4.68094635, -9.53674316e-005, 0.999990404, 6.10373974e-011, -1.79689874e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57154339e-011, 0.999990404))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.638000011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.04400003, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28197098, -1.27374649, 0.00253105164, 0.707106709, 0.707106769, -1.74345885e-007, -0.707106769, 0.707106709, -1.74346056e-007, -1.38366803e-013, 2.4656245e-007, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.116648793, -1.89650726, 0.000104904175, 0.999990463, 6.10373974e-011, -1.79689993e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57438556e-011, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.58260727, 0.582428694, -3.71006301e-008, -2.2971102e-007, -1, 2.55454324e-008, 0.999999821, -2.29710963e-007, 0.999999821, -2.55454431e-008, -3.71006159e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0649600029, 0.266800046, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.44659999, 0.200000003, 0.371199995))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00563848019, -0.388711929, 0.00253295898, 0.99999404, 4.25686464e-009, 1.37316401e-013, -4.25686508e-009, 0.999994159, -2.46561001e-007, -1.38366789e-013, 2.46562422e-007, 0.999999881))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799999, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.58329582, -0.00271689892, 0.00253105164, -7.87626959e-008, 0.999999642, -2.45072926e-007, -0.999999464, 8.51500772e-008, -4.54507015e-010, 1.08588507e-008, 2.02850984e-007, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.595080018, 0.683239937))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.231999978, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0605430603, 0.00242888927, 4.62282181, 1.38366803e-013, -2.4656245e-007, -1, 0.999999881, 1.91580511e-008, 1.33643137e-013, 1.91580511e-008, -0.999999881, 2.46562422e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.190239996, 0.25752002, 2.79675961))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.347726822, -1.60689163, -9.05990601e-005, 0.99999994, 6.59379218e-011, -1.80878482e-014, -6.59667876e-011, 1, -5.95150595e-011, 2.41627922e-014, 5.94866378e-011, 0.99999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.580000103, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.34799996, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253105164, 1.1207962, -1.77352905, -1.94793994e-008, -1.96046472e-007, -1, 0.707106471, 0.707106292, -1.52399679e-007, 0.707106292, -0.707106471, 1.24851695e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0649600029, 0.266800046, 0.495319903))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.696000099, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.870689273, -2.18681908, 0.000104904175, 0.999990463, 6.10373974e-011, -1.79689993e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57438556e-011, 0.999990463))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","Part",Vector3.new(0.200000003, 0.34799999, 0.812000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000425338745, -0.231835961, -1.08489037, -4.08055101e-009, 2.02203083e-007, 0.99999994, 0.99999994, 2.42933169e-007, 4.08050749e-009, -2.42933169e-007, 1, -2.02203097e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.628719985, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.812000036, 0.200000003, 0.812000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.58329773, -0.00251197815, 0.00270497799, 4.25687707e-009, -1, 2.46565747e-007, 1.65165096e-013, -2.46565747e-007, -1, 1, 4.25687707e-009, 1.64115493e-013))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.444280028, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.231999978, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.055480957, -4.62282181, 0.00242900848, 1.38366803e-013, -2.4656245e-007, -1, -4.25688995e-009, 1, -2.4656245e-007, 1, 4.25688995e-009, 1.37317214e-013))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.190239996, 0.25752002, 0.723839939))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.44659999, 0.200000003, 0.371199995))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00563395023, 0.887273788, 0.00253295898, 0.999990106, 4.25684776e-009, 1.37315859e-013, -4.25684821e-009, 0.999990225, -2.46560035e-007, -1.38366789e-013, 2.46562422e-007, 0.999999881))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.348541379, -1.89650154, 0.000104904175, 0.999990463, 6.10373974e-011, -1.79689993e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57438556e-011, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.579999983, 0.812000036, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.58329582, -0.00271689892, 0.00253105164, -7.87626959e-008, 0.999999642, -2.45072926e-007, -0.999999464, 8.51500772e-008, -4.54507015e-010, 1.08588507e-008, 2.02850984e-007, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.835199952, 0.808520079, 0.58927989))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.44659999, 0.200000003, 0.371199995))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00555217266, -1.43245697, 0.00238800049, 0.999993682, 4.21545243e-009, 1.69302926e-013, -4.21544666e-009, 0.999998927, -2.46550059e-007, -1.77448618e-013, 2.46551593e-007, 0.999994755))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.115347862, -1.89650726, 0.000104904175, 0.999990463, 6.10373974e-011, -1.79689993e-014, -6.10378414e-011, 1, 7.57154339e-011, 1.79689976e-014, -7.57438556e-011, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.231999978, 0.231999993, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.055480957, 0.00242888927, 4.62282181, 1.38366803e-013, -2.4656245e-007, -1, 0.999999881, 1.91580511e-008, 1.33643137e-013, 1.91580511e-008, -0.999999881, 2.46562422e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.190239996, 0.25752002, 2.79675961))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.812000036, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300365448, 1.44133759, 0.00253105164, 0.965925753, 0.258819014, -6.3814916e-008, -0.258819014, 0.965925753, -2.38161064e-007, -1.38366803e-013, 2.4656245e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1)) ]]

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","Handle",Vector3.new(0.337252527, 0.768720508, 0.32947734))
handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0155067444, -0.0201148987, -0.9514575, -0.999991775, -2.63234701e-009, -1.78467189e-007, 1.78460596e-007, 2.09074528e-006, -0.999991238, 2.62754263e-009, -0.999994516, -2.09073869e-006))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FakeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","FakeHandle",Vector3.new(0.337252527, 1.56872046, 0.32947734))
FakeHandleweld=weld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -4.29153442e-006, 0, 0.999983549, 6.4943606e-012, 5.18505681e-012, 6.4943606e-012, 0.999982476, -1.40971679e-011, 5.18505681e-012, -1.40971679e-011, 0.999989271))
mesh("CylinderMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","Hitbox",Vector3.new(0.200000003, 5.39620876, 1.2275759))
Hitboxweld=weld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0112304688, -5.05733967, -0.142923594, 0.999983549, -1.6889453e-007, 1.7490478e-009, 1.6890759e-007, 0.999982476, 2.06239793e-006, -1.73901538e-009, -2.06241202e-006, 0.999989271))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.941232145, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00333404541, -1.87818408, 0.392029285, 0.999983549, 7.22864968e-009, 1.85786952e-009, -7.21585991e-009, 0.999982476, 6.21967047e-008, -1.8474865e-009, -6.22242169e-008, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00294876099, -1.48618293, 0.234626532, 0.999991775, -6.92084313e-007, -2.79759416e-008, 6.92091135e-007, 0.999991238, 7.76650154e-007, 2.79805104e-008, -7.76661409e-007, 0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Crimson","Part",Vector3.new(0.200000003, 1.09810448, 1.09825778))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111503601, -7.12914991, 0.0778756142, -0.999983549, -2.38366567e-007, 2.78984214e-008, -2.38353792e-007, 0.999982476, 3.42407702e-006, -2.79094472e-008, 3.4240818e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.235292464, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032119751, 2.26996613, -0.235239744, 0.999983549, 2.27345004e-006, 1.85357618e-009, 2.27343958e-006, -0.999982476, -6.19256753e-008, 1.8430536e-009, 6.19534148e-008, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00328826904, -3.05379343, 0.31357193, 0.999983549, 1.6775989e-006, 1.85146709e-009, -1.67758776e-006, 0.999982476, 2.10900225e-007, -1.84073135e-009, -2.10926942e-007, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00361633301, 1.17272615, 0.234902143, -0.999991775, 6.90090019e-007, -6.17988789e-008, -6.9009667e-007, -0.999991238, -1.92284324e-006, -6.17948501e-008, -1.92285052e-006, 0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.941232324, 0.941363752))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111312866, -7.05103445, 7.20024109e-005, -0.999983549, -2.38989003e-007, 2.78912751e-008, -2.38976213e-007, 0.999982476, 3.42408703e-006, -2.79023027e-008, 3.4240918e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00328445435, 1.48618865, -0.234995365, 0.999991775, -2.43565705e-006, -2.79671699e-008, -2.43566478e-006, -0.999991238, -7.7722143e-007, -2.79703816e-008, 7.77232799e-007, -0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.313744068, 0.313787907))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00323486328, -3.9158895, 0.313471079, 0.999983549, 1.67746589e-006, 1.82123372e-009, -1.67745475e-006, 0.999982476, 1.36385779e-007, -1.81062387e-009, -1.36413064e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.627488196, 0.627575815))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111541748, -6.26727676, -0.1569736, -0.999983549, -3.74028872e-007, 2.82691719e-008, -3.74016338e-007, 0.999982476, 3.40171596e-006, -2.82806525e-008, 3.40172096e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00325393677, -3.05376291, 0.548654556, 0.999983549, 1.67670032e-006, 1.8507289e-009, -1.67668918e-006, 0.999982476, 1.36589279e-007, -1.84011772e-009, -1.36616563e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.784308136, 0.313744128, 0.941363871))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.956581, -0.0034866333, -0.000377416611, 1.69885118e-006, -0.999982476, -1.4619045e-006, 0.999983549, 1.69886266e-006, -2.81736988e-007, 2.81748243e-007, -1.46192224e-006, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.470616162, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00340270996, -1.32952571, -0.00091958046, 0.999983549, 4.48989113e-009, 2.0147255e-009, -4.47700188e-009, 0.999982476, -1.22017809e-008, -2.00434291e-009, 1.21735866e-008, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00347137451, 1.32950616, 0.391701937, -0.999983549, 6.79197456e-007, -1.06258824e-007, -6.79210928e-007, -0.999982476, -3.40140218e-006, -1.06250148e-007, -3.40140718e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00343322754, -1.01590419, -0.000721693039, 0.999983549, 4.89370677e-009, 1.84525295e-009, -4.88081753e-009, 0.999982476, -1.18052412e-008, -1.83487137e-009, 1.17770469e-008, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 2.19620872, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0112304688, -4.85725212, 0.157074451, 0.999983549, -1.68901025e-007, 1.74386283e-009, 1.68913999e-007, 0.999982476, 2.06241202e-006, -1.73382975e-009, -2.06242612e-006, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332641602, -1.64292932, -0.234835863, -0.999983549, 2.48220749e-006, 4.28772786e-008, 2.48222295e-006, 0.999982476, 6.20761966e-008, -4.28872511e-008, 6.21039362e-008, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.941232204, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00337600708, 1.87816811, 0.548668146, -0.999983549, -2.09514951e-006, -1.85223048e-009, 2.09513905e-006, -0.999982476, -2.10844746e-007, -1.84140636e-009, -2.10871463e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00345993042, -1.64295578, -0.23536098, 0.999983549, 2.14052807e-006, 1.87920302e-009, -2.14051738e-006, 0.999982476, 5.53466975e-007, -1.86763671e-009, -5.53491191e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00329971313, -1.48625445, 0.235539556, -0.999983549, -3.5400555e-007, 5.77611949e-008, -3.53992959e-007, 0.999982476, 2.07279913e-006, -5.77719668e-008, 2.07281323e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00325775146, 1.17274141, 0.235400319, 0.999991775, 3.53981562e-007, 3.20967608e-008, 3.53975338e-007, -0.999991238, -7.16821546e-007, 3.20912328e-008, 7.16833028e-007, -0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00327682495, 2.27002025, -0.235158801, -0.999983549, -2.09821178e-006, -1.85486226e-009, 2.09820132e-006, -0.999982476, -1.5516689e-006, -1.84122417e-009, -1.55168641e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332260132, 1.48624778, -0.235339522, -0.999983549, -2.09700579e-006, -1.86469373e-009, 2.09699533e-006, -0.999982476, -6.16596481e-008, -1.85418236e-009, -6.16873876e-008, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0033531189, -3.05378008, -0.313676715, 0.999983549, 8.44146427e-007, 1.8454156e-009, -8.44134604e-007, 0.999982476, 2.10693088e-007, -1.83485604e-009, -2.10719804e-007, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00336456299, 1.32966352, 0.392354488, 0.999983549, 3.56601788e-007, 3.22670211e-008, 3.56589339e-007, -0.999982476, -7.14656721e-007, 3.22562066e-008, 7.14680027e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.941232145, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00327682495, -1.8780818, -0.392092228, 0.999983549, 9.54754853e-009, 1.8608165e-009, -9.53465928e-009, 0.999982476, 1.36152494e-007, -1.85043292e-009, -1.36179779e-007, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Crimson","Part",Vector3.new(0.200000003, 4.23554564, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111465454, -4.46461868, 0.547372937, -0.999983549, -2.37446756e-007, 2.68987197e-008, -2.3743398e-007, 0.999982476, 3.41447935e-006, -2.69097491e-008, 3.41448458e-006, -0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.235292464, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723266, 0.941232204, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00229263306, 1.8784852, 0.548132777, 0.999983549, 2.28433578e-006, 3.46592e-009, 2.28432555e-006, -0.999982476, 2.3989287e-008, 3.45558382e-009, -2.39610927e-008, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00328826904, -3.0538249, 0.548416853, -0.999983549, -8.45527893e-007, 5.79000847e-008, -8.45516013e-007, 0.999982476, 1.37719553e-007, -5.79102348e-008, 1.37746611e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0.19999998807907,"Crimson","Part",Vector3.new(0.627446532, 0.313744128, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.95695913, 0.153850555, -1.88350677e-005, 1.23580949e-005, -0.999982476, -1.38665314e-006, 0.999983549, 1.2358094e-005, -2.81483551e-007, 2.81509386e-007, -1.38666815e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940942, 0.235308081, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00342178345, -1.44685268, 0.0933318138, 0.999983549, 1.82964754e-009, 2.57953658e-008, -4.97580288e-009, 0.992382348, 0.123054668, -2.53653418e-008, -0.123053834, 0.992389202))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723266, 0.313744128, 0.313787907))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10088038, -0.00387954712, -0.00030374527, 1.23383988e-005, -0.999991357, -1.24204348e-006, 0.999991775, 1.24278058e-005, -2.83419212e-007, 2.81970102e-007, -1.24124654e-006, 0.999985576))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.627575815))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00345993042, -1.32954931, -0.000645399094, 0.999991775, 2.2931772e-009, 2.83644663e-009, -2.2867539e-009, 0.999991238, -1.22554411e-008, -2.83125301e-009, 1.22415713e-008, 0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00319671631, 2.58385658, 0.0784084797, -0.999983549, 6.99771647e-007, 7.69456392e-008, -6.99785573e-007, -0.999982476, -3.46686784e-006, 7.69531425e-008, -3.46687284e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00309753418, -1.17580795, 0.201576114, 0.999983549, 1.03144799e-008, 2.49791832e-008, -1.32968978e-008, 0.992377877, 0.123090871, -2.35107542e-008, -0.123090021, 0.992384672))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00310897827, -0.922920227, 0.72364223, 0.999983549, -3.27961232e-008, 1.13043491e-007, -4.19647534e-008, 0.797841132, 0.602842987, -1.09962386e-007, -0.602838814, 0.797846437))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332260132, -3.52438259, 0.0782864094, -0.999983549, -4.52814959e-008, -7.21113196e-008, -4.52688766e-008, 0.999982476, 3.46685874e-006, 7.2100363e-008, 3.46686375e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0030670166, -1.21008945, 0.436469018, 0.999983549, -7.87800047e-009, 7.14481416e-008, -1.95312992e-008, 0.926698804, 0.375760943, -6.91671644e-008, -0.375758439, 0.926705182))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332260132, 3.52438259, -0.0782866478, -0.999983549, 5.2095578e-007, 7.69454971e-008, -5.20969479e-007, -0.999982476, -3.46686829e-006, 7.69536186e-008, -3.4668733e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0.19999998807907,"Crimson","Part",Vector3.new(0.627446532, 0.313744128, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.95644081, -0.158653259, -0.000337839127, 1.23528962e-005, -0.999991238, -1.08801851e-006, 0.999991775, 1.23528962e-005, -2.81498615e-007, 2.81516435e-007, -1.08802521e-006, 0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00320053101, -2.58385968, -0.0783866644, 0.999983549, -6.99774148e-007, 7.21093087e-008, 6.99787847e-007, 0.999982476, 7.14558269e-007, -7.20990059e-008, -7.14581574e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.627446532, 0.329431295, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.95731616, -0.00356674194, 0.00155854225, 1.22981037e-005, -0.999982476, -1.7120442e-006, 0.999983549, 1.22981037e-005, -2.85729953e-007, 2.85759711e-007, -1.71205704e-006, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.345118493, 0.627575874))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.9573344, -0.003490448, 0.0015707016, 1.22974561e-005, -0.999982476, -1.71209012e-006, 0.999983549, 1.22974561e-005, -2.85813286e-007, 2.85843043e-007, -1.71210297e-006, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.800047338, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00285720825, -3.05447507, 0.000669717789, 0.999983549, 1.73040848e-006, 2.60311284e-009, -1.73039746e-006, 0.999982476, 1.80006055e-007, -2.59241517e-009, -1.80033112e-007, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.941232324, 0.941363752))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0108108521, 6.11060905, 7.2479248e-005, -0.999983549, 6.4022845e-007, -3.17583897e-008, -6.40241865e-007, -0.999982476, -3.42378917e-006, -3.17500231e-008, -3.42379394e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940942, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321578979, -0.176496148, -1.3961606, 0.999983549, -1.503454e-007, -1.90790331e-007, -1.70862734e-007, 0.122963123, -0.992400408, 1.72679222e-007, 0.992393613, 0.122963957))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00324249268, -3.67959356, -5.48362732e-006, 0.999983549, 1.69034786e-006, 2.03576245e-009, -1.69033672e-006, 0.999982476, 2.0355435e-007, -2.02503547e-009, -2.03581067e-007, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00331115723, -3.52438235, 0.0784561634, 0.999983549, -5.20962203e-007, 7.21101898e-008, 5.20975618e-007, 0.999982476, 7.14548946e-007, -7.20997591e-008, -7.14572252e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.19620848, 0.313787997))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0110740662, -4.85657263, -0.313279152, 0.999983549, -1.6248255e-007, 1.81624948e-009, 1.62495525e-007, 0.999982476, 2.05884567e-006, -1.80620241e-009, -2.05885976e-006, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.313744068, 0.313787907))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00326156616, -3.91583991, 0.313654423, -0.999983549, 2.0143832e-006, -1.41037759e-008, 2.01439821e-006, 0.999982476, 4.01588659e-006, 1.41014143e-008, 4.0158875e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032043457, 2.58385968, 0.0783869028, 0.999983549, 1.6445658e-007, -7.69413688e-008, 1.64443989e-007, -0.999982476, -7.14557359e-007, -7.6951423e-008, 7.14580665e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00368881226, 1.02208138, -0.00058555603, 0.999983549, 4.91098717e-009, 1.74820658e-009, -4.89809793e-009, 0.999982476, -1.15255716e-008, -1.73782599e-009, 1.14973773e-008, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.321587712, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00288772583, -1.40384197, -0.126018524, 0.999983549, 2.47798795e-008, -2.45310847e-008, -2.79200663e-008, 0.990392208, -0.138160869, 2.08841122e-008, 0.138159946, 0.990399003))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0032043457, -2.58385634, -0.0784084797, -0.999983549, -3.43271722e-007, 3.70975002e-008, -3.43259103e-007, 0.999982476, 3.46686329e-006, -3.71088511e-008, 3.46686829e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00331497192, 3.52438259, -0.0784561634, 0.999983549, 3.43275076e-007, 3.22715437e-008, 3.43262627e-007, -0.999982476, -7.14547809e-007, 3.22607399e-008, 7.14571115e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00267028809, -2.42355728, 0.000181913376, 0.999983549, 1.71436341e-006, 2.42547382e-009, -1.71435227e-006, 0.999982476, 1.89215598e-007, -2.41476439e-009, -1.89242428e-007, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.88246465, 0.313787937))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00357818604, 0.00305700302, -0.000618696213, 0.999983549, 5.45213652e-009, 1.758099e-009, -5.43924727e-009, 0.999982476, -1.18889147e-008, -1.74771797e-009, 1.18607204e-008, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))



local Lite = it("PointLight",Torso)
Lite.Color = Color3.new(255, 0, 0)
Lite.Range = 8
Lite.Brightness = 30
Lite.Shadows = true

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part("Custom",workspace,"Neon",0,0,"Crimson","Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
for i=0,1,0.05 do
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt)
end
--BreakEffect(BrickColor.new("Crimson"),Hitbox.CFrame,0.5,math.random(5,20),0.5)

function attackone()
        attack=true
        local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(120),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,.4)*angles(math.rad(70),math.rad(-10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(50)),.3)
        end
        --so("http://www.roblox.com/asset/?id=154965962",Hitbox,1,1) 
        so("http://www.roblox.com/asset/?id=231917758",Hitbox,1,1) 
so("http://roblox.com/asset/?id=206083107",Torso,1,1)
        hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("Crimson"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                        hitconasdf:disconnect()
                end
        end)
                for i=0,1,0.1 do
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
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(110),math.rad(-90),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,0)*angles(math.rad(-60),math.rad(-10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(-50)),.3)
        end

        attack=false
        con:disconnect()
        scfr = nil
        pcall(function()
        hitconasdf:disconnect()
        end)
end

function attacktwo()
        attack=true
        local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,0)*angles(math.rad(-30),math.rad(-10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(-50)),.3)
        end
        --so("http://www.roblox.com/asset/?id=154965962",Hitbox,1,.9) 
        so("http://www.roblox.com/asset/?id=231917758",Hitbox,1,.9) 
so("http://roblox.com/asset/?id=206083107",Torso,1,.9)
        hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("Crimson"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                        hitconasdf:disconnect()
                end
        end)
        for i=0,1,0.1 do
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
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-50),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,0)*angles(math.rad(-50),math.rad(10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(50)),.3)
        end
        attack=false
        con:disconnect()
        scfr = nil
        pcall(function()
        hitconasdf:disconnect()
        end)
end

function Stab()
attack=true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(20),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-20),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*angles(math.rad(0),math.rad(-60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-.9,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("Crimson"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                        hitconasdf:disconnect()
                end
        end)
--so("http://www.roblox.com/asset/?id=154965962",Hitbox,1,.9)
so("http://www.roblox.com/asset/?id=231917758",Hitbox,1,.9) 
so("http://roblox.com/asset/?id=206083107",Torso,1,.9)
for i=0,1,0.1 do
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
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(-80)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-20),math.rad(-30)),.4)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.4)
RH.C0=clerp(RH.C0,cf(1,-.9,0)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.4)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
end
con:disconnect()
attack=false
scfr = nil
pcall(function()
        hitconasdf:disconnect()
        end)
end

function Spin()
attack=true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end)
hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("Crimson"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                        hitconasdf:disconnect()
                end
        end) 
for i=0,1,1 do
so("http://roblox.com/asset/?id=154965962",Hitbox,1,1)
so("http://www.roblox.com/asset/?id=231917758",Hitbox,1,1) 
swait()
for i=0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.3,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1  then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*angles(math.rad(90),math.rad(0),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-1)*angles(math.rad(-20),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-1)*angles(math.rad(-20),math.rad(90),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5)*euler(6*i,0,0),.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(30)),1)
end
end
attack=false
con:disconnect()
scfr = nil
pcall(function()
        hitconasdf:disconnect()
        end)
end

function ContAttack()
        attack=true
        local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("Crimson"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                        hitconasdf:disconnect()
                end
        end) 
        for i=1,4 do
	    swait()
        for i=0,1,0.2 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(120),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,.4)*angles(math.rad(70),math.rad(-10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(50)),.3)
        end
        so("http://www.roblox.com/asset/?id=154965962",Hitbox,1,1) 
        so("http://www.roblox.com/asset/?id=231917758",Hitbox,1,1) 
for i=0,1,0.2 do
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
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(110),math.rad(-90),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,0)*angles(math.rad(-60),math.rad(-10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(-50)),.3)
        end
        for i=0,1,0.2 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,0)*angles(math.rad(-30),math.rad(-10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(-50)),.3)
        end
        so("http://www.roblox.com/asset/?id=154965962",Hitbox,1,.9) 
        so("http://www.roblox.com/asset/?id=231917758",Hitbox,1,.9) 
for i=0,1,0.2 do
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
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-50),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,0)*angles(math.rad(-50),math.rad(10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(50)),.3)
        end
        end
        attack=false
        con:disconnect()
        scfr = nil
        pcall(function()
        hitconasdf:disconnect()
        end)
end


function Sheathe()
attack = true
so("http://www.roblox.com/asset/?id=200633077",Hitbox,1,2) 
--so("http://www.roblox.com/asset/?id=273797222",Hitbox,1,.9) 
CurrentMode = "Sheathed"
for i = 0,1,0.1 do
swait()
handleweld.Part0 = Torso
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(-20)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(190),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(20),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
attack = false
end


function Unsheathe()
attack = true
CurrentMode = "Unsheathed"
so("http://www.roblox.com/asset/?id=200633077",Hitbox,1,1.2) 
--so("http://www.roblox.com/asset/?id=239169404",Hitbox,1,.9) 
for i = 0,1,0.1 do
swait()
handleweld.Part0 = RightArm
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(200),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(-30),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
end
scfr = nil
attack = false
end

rarm = Character["Right Arm"]
larm = Character["Left Arm"]

function punch1()
attack = true
local con=rarm.Touched:connect(function(hit) Damagefunc(Hitbox,hit,15,25,math.random(5,10),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(120),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(50)),.3)
end
so("http://roblox.com/asset/?id=206083107",Torso,1,1)
                for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(110),math.rad(-90),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(-50)),.3)
        end
CurrentMode = "Sheathed"
con:disconnect()
attack=false
end

function punch2()
attack = true
local con=larm.Touched:connect(function(hit) Damagefunc(Hitbox,hit,15,25,math.random(5,10),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(120),math.rad(0),math.rad(20)),.3)
--LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-90)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(120),math.rad(0),math.rad(20)),.3)

LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(50)),.3)
--Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(-50)),.3)
end
so("http://roblox.com/asset/?id=206083107",Torso,1,.9)
                for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(110),math.rad(-90),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(-50)),.3)
        end
CurrentMode = "Sheathed"
con:disconnect()
attack=false
end

local hovering = false

local Hover = false

local Animator = Humanoid.Animator

function OnHover()
if CurrentMode == "Sheathed" then
	attack = true
	Animator.Parent = nil
	Character.Animate.Disabled = true
	Hover = true
	Humanoid.JumpPower = 0
        Humanoid.WalkSpeed = 0
	attack = false
end
end

function OffHover()
if CurrentMode == "Sheathed" then
	attack = true
	Animator.Parent = Humanoid
	Character.Animate.Disabled = false
	Hover = false
	Humanoid.JumpPower = 50
        Humanoid.WalkSpeed = 16
	attack = false
end
end

local Sit = false

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype==1 and CurrentMode == "Unsheathed" then
                        attack=true
                        attacktype=2
                        attackone()
                elseif attacktype==2 and CurrentMode == "Unsheathed" then
                        attack=true
                        attacktype=1
                        attacktwo()
                end
        end
end)


mouse.Button1Down:connect(function()
        if attack==false then
                if fist1==true and CurrentMode == "Sheathed" then
                        attack=true
                        fist2=true
                        fist1=false
                        punch1()
                elseif fist2==true and CurrentMode == "Sheathed" then
                        attack=true
                        fist1=true
                        fist2=false
                        punch2()
                end
        end
end)


mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=='q' then
                if attack==false and CurrentMode == "Unsheathed" then
                        Stab()
                end
	        elseif attack == false and k == ' ' and Anim == "Jump" and Hover == false then
		hovering = true
		OnHover()
	        elseif attack == false and k == ' ' and Hover == true then
		hovering = false
		OffHover()
                elseif k=='e' then
                if attack==false and CurrentMode == "Unsheathed" then
                        Spin()
                end
                elseif k=='r' then
                if attack==false and CurrentMode == "Unsheathed" then
                        ContAttack()
                end
                elseif k=='f' then
                if attack==false and CurrentMode == "Unsheathed" then
                        Sheathe()
                elseif k=='f' then
                if attack==false and Sit == false and CurrentMode == "Sheathed" then
                        Unsheathe()
                end
                end
                elseif k=='t' then
                if attack==false and Sit == false and CurrentMode == "Sheathed" then
                Sit = true
                Humanoid.WalkSpeed = 0
                elseif k=='t' then
                if attack==false and Sit == true and CurrentMode == "Sheathed" then
                Sit = false
                Humanoid.WalkSpeed = 16
                end
                end

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
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false and Sit == false and CurrentMode == "Unsheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(50),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-40),math.rad(5),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-1)*angles(math.rad(-20),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(-10),math.rad(0)),.3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.2)*angles(math.rad(0),math.rad(90),math.rad(5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and Sit == false and CurrentMode == "Unsheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-5),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-40),math.rad(5),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-1)*angles(math.rad(-20),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(-10),math.rad(0)),.3)
end
if attack == false and Hover == true then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -.8, -.3) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(40)) * angles(math.rad(2), math.rad(0), math.rad(0)), .3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.5)*angles(math.rad(0),math.rad(90),math.rad(5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and Sit == false and CurrentMode == "Unsheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(40),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(20),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(-10),math.rad(0)),.3)
end
if attack == false and Hover == true then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5+0.2*math.cos(sine/15)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10+3.5*math.cos(sine/15)), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, .3) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
--LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -.8, -.3) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(40)) * angles(math.rad(2), math.rad(0), math.rad(0)), .3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(5)),.3)
--LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-5)),.3)

--RW.C0=clerp(RW.C0,cf(1.7,0.7,0)*euler(math.rad(90),math.rad(0),math.rad(-50)),.3)
--LW.C0=clerp(LW.C0,cf(-1.7,0.7,0)*euler(math.rad(90),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(.8, 0.5, -.7) * angles(math.rad(85), math.rad(0), math.rad(-70)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-.8, 0.5, -.3) * angles(math.rad(70), math.rad(0), math.rad(70)), 0.3)

LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
if attack==false and Sit == true and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-10),math.rad(0),math.rad(5)),.3)
LW.C0=clerp(LW.C0,cf(-1.3,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(30)),.3)
LH.C0=clerp(LH.C0,cf(-1,.7,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(70))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false and Sit == false and CurrentMode == "Unsheathed" then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-5),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-30),math.rad(5),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-0,0)*angles(math.rad(15),math.rad(-10),math.rad(0)),.3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(30*math.cos(sine/10)),math.rad(0),math.rad(5)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-30*math.cos(sine/10)),math.rad(0),math.rad(-5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(5))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)

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