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

local TrailColor = ("Institutional white")
 
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

HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Institutional white","HandleA",Vector3.new(0.200000003, 0.924000025, 0.251999974))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840759277, -0.00163650513, 0.993845463, 0.999998212, -1.10852261e-005, -0, 0, 1.09631201e-017, -0.999998212, 1.09064322e-005, 0.999996305, 1.38777878e-016))
mesh("BlockMesh",HandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
FakeHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Institutional white","FakeHandleA",Vector3.new(0.200000003, 0.420000017, 0.251999974))
FakeHandleAweld=weld(m,HandleA,FakeHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.90734863e-006, -4.76837158e-007, 0.999998212, 2.13162126e-014, -5.3632084e-007, -2.13162126e-014, 0.999998212, -1.27329857e-016, 3.57546924e-007, -4.73488936e-019, 0.999996424))
mesh("BlockMesh",FakeHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxA",Vector3.new(0.260399997, 2.26800036, 0.671999991))
HitboxAweld=weld(m,FakeHandleA,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.01556396, 0.0198795795, 0.999996424, 1.79766672e-012, -1.26029063e-005, -1.79766672e-012, 0.999996424, -1.14722063e-016, 1.22454048e-005, -1.16638766e-016, 0.999992847))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -0.671827316, 0.313827038, 0.999993801, -3.54627962e-014, -8.19193701e-007, 4.97018401e-014, 0.99999404, -1.09530813e-013, 7.89339538e-007, 9.65395366e-014, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.503871918, 0.0200036764, 0.999996424, 5.32912303e-015, -2.68159965e-007, -5.32912473e-015, 0.999996424, -1.26083356e-016, -8.93851393e-008, -1.26327738e-016, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.503999949))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.671840668, 0.019996047, 0.999986649, -2.4655126e-012, 4.32561137e-007, 2.59496005e-012, 0.999986768, -1.49009139e-007, 2.52821337e-007, 8.94055319e-008, 0.999984741))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.17600012, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.47001648, 0.0187937021, 0.999996424, 1.93773531e-007, -9.44143176e-005, -1.93700657e-007, 0.999996424, 7.7484583e-007, 9.40571117e-005, -7.74830198e-007, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 1, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.17600012, 0.335999995))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.46961975, 0.0198013783, 0.999996424, 2.38440322e-007, -1.83236498e-005, -2.38423183e-007, 0.999996424, 9.53646634e-007, 1.79661693e-005, -9.53645667e-007, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.462000072, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.83972168, 0.0198941231, 0.999996424, 1.72305952e-012, -1.13515125e-005, -1.72305952e-012, 0.999996424, -1.15788623e-016, 1.09940074e-005, -1.15460199e-016, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.42800009, 0.671999991))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.59558105, 0.0198942423, 0.999996424, 1.79766672e-012, -1.14408977e-005, -1.79766672e-012, 0.999996424, -1.1639756e-016, 1.10833907e-005, -1.1500975e-016, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0.335924149, 0.0199792385, 0.999992847, 1.81186826e-013, -4.11162546e-006, -1.81186826e-013, 0.999992847, -7.58573273e-016, 3.39656435e-006, 2.54499572e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, -0.756420135, -0.277666092, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335924149, -0.0639793873, 0.999992847, 1.81186826e-013, -4.11162546e-006, -1.81186826e-013, 0.999992847, -7.58573273e-016, 3.39656435e-006, 2.54499572e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.756376266, -0.193712234, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.083984375, -0.0200240612, 0.671857834, -0.999994636, 3.04961617e-007, -1.53258661e-005, 1.58622697e-005, 1.03287621e-005, -0.999989271, -3.04797936e-007, -0.999994636, -1.03287111e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.90734863e-006, 0.0200020075, 0.999994516, -4.8679409e-013, 1.78781193e-007, -4.44161797e-013, 0.99999392, -1.42889402e-016, -7.15082933e-007, -1.14757771e-016, 0.999988675))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.937992096, 0.137899399, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.728122711, 0.305858612, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.672348022, 0.0161781311, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.125961304, 0.0200021267, 0.999992847, -2.13160991e-014, -2.68156327e-007, 2.13160974e-014, 0.999992847, -1.25976285e-016, -4.46930244e-007, -2.53540519e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -1.10586548, 0.221845627, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.728130341, 0.13794899, 0.999996424, -2.13161753e-014, 1.78773917e-007, -3.79196507e-007, 0.707181871, 0.707024157, -3.79278418e-007, -0.70702672, 0.707179308))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840242386, 0.184112549, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335924149, 0.103946805, 0.999992847, 1.81186826e-013, -4.11162546e-006, -1.81186826e-013, 0.999992847, -7.58573273e-016, 3.39656435e-006, 2.54499572e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840148926, -0.671857834, -0.0200095177, -0.999994636, 6.84303503e-009, -1.58898201e-005, 6.67440903e-009, 0.999994636, 1.02837303e-005, 1.64262219e-005, 1.02837857e-005, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.083984375, -0.671857834, -0.020023942, -0.999994636, 6.84303503e-009, -1.58898201e-005, 6.67440903e-009, 0.999994636, 1.02837303e-005, 1.64262219e-005, 1.02837857e-005, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335899353, -0.0639851093, 0.999992847, 2.0783188e-013, -4.55852023e-006, -2.0783188e-013, 0.999992847, -7.57696859e-016, 3.84346276e-006, 2.53825546e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.7563591, -0.109758377, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-005, -1.10585403, 0.305786133, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.728031158, 0.221849442, 0.999996424, -2.13161753e-014, 1.78773917e-007, -3.79196507e-007, 0.707181871, 0.707024157, -3.79278418e-007, -0.70702672, 0.707179308))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, -0.67241478, -0.19370079, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.756313324, 0.0161876678, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.672306061, 0.184104919, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335899353, 0.0199739933, 0.999992847, 2.18489967e-013, -4.73727596e-006, -2.18489967e-013, 0.999992847, -7.57336287e-016, 4.02222031e-006, 2.53552589e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -1.1057682, 0.137836456, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.9379673, 0.305826187, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.812028885, 0.221828461, 0.999996424, -2.13161753e-014, 1.78773917e-007, -3.79196507e-007, 0.707181871, 0.707024157, -3.79278418e-007, -0.70702672, 0.707179308))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840332031, -0.193758011, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840148926, 0.0200095177, -0.671857834, -0.999994636, -5.05518983e-007, -1.59908777e-005, -1.65272759e-005, -1.03287639e-005, 0.999989271, -5.05689968e-007, 0.999994636, 1.03287002e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.644088745, 0.22183609, 0.99999547, -1.31308614e-012, 1.78738446e-007, -3.79217425e-007, 0.707180977, 0.707023621, -3.79301156e-007, -0.707025945, 0.707178891))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.756282806, 0.184106827, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.937936783, 0.221797943, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840261459, 0.016160965, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.335899353, 0.103938103, 0.999992847, 2.29148081e-013, -4.9160335e-006, -2.29148081e-013, 0.999992847, -7.56970052e-016, 4.20097967e-006, 2.53277833e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 0.125974655, 0.0200021267, 0.999992728, 2.21486258e-014, 1.78859409e-007, 7.54365239e-014, 0.999992132, -2.98020169e-008, -1.78682967e-007, -2.9802127e-008, 0.999985099))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000033, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.671825409, -0.27389431, 0.999993801, 1.20855067e-013, -2.82897417e-007, -1.17359681e-013, 0.99999404, -5.96041865e-008, 2.53045073e-007, 5.96042469e-008, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.200000003, 0.336000025, 0.335999936))
Wedgeweld=weld(m,FakeHandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.22543144, 0.0199115276, 0.999995947, 1.79766672e-012, -1.49265943e-005, -1.79766672e-012, 0.999995947, -1.04389876e-016, 1.4569111e-005, -1.1508405e-016, 0.999992847))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.461999953, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,FakeHandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.14149475, 0.0199415684, 0.999996424, 1.79766672e-012, -1.2781531e-005, -1.79766672e-012, 0.999996424, -1.11779232e-016, 1.24240314e-005, -1.15038324e-016, 0.999992847))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 0.840000212, 0.839999676))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.840000033, 0.671999991))
Wedgeweld=weld(m,FakeHandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -2.72929573, 0.0198169947, 0.999996424, 3.1294465e-007, -1.93064552e-005, -3.12920946e-007, 0.999996424, 1.25165718e-006, 1.89489765e-005, -1.2516557e-006, 0.999992847))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Institutional white","HandleB",Vector3.new(0.200000003, 0.924000025, 0.251999974))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.115982056, 0.0891990662, 0.993835926, -0.999997854, -1.10417595e-005, 4.54747297e-013, 4.4408921e-016, -1.49011505e-008, 0.999997795, -1.09821558e-005, 0.999995708, -1.49011541e-008))
mesh("BlockMesh",HandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
FakeHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Institutional white","FakeHandleB",Vector3.new(0.200000003, 0.420000017, 0.251999974))
FakeHandleBweld=weld(m,HandleB,FakeHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.047870636, 5.41210175e-005, 0.999996543, 7.45058131e-008, -5.81111635e-007, -7.45051949e-008, 0.999997199, -1.49019623e-008, 3.5760695e-007, -1.49009205e-008, 0.99999553))
mesh("BlockMesh",FakeHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxB",Vector3.new(0.260399997, 2.26800036, 0.671999991))
HitboxBweld=weld(m,FakeHandleB,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -2.01556969, 0.01980865, 0.999993443, 1.02318154e-012, -1.27701678e-005, 6.82121026e-013, 0.999994397, -2.98027985e-008, 1.22934016e-005, -2.98057792e-008, 0.999991059))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -0.671806335, 0.313799143, 0.99999249, -3.12912107e-007, 8.53831443e-006, 3.12901221e-007, 0.999993801, 1.22185497e-006, -9.2088394e-006, -1.28146849e-006, 0.999990761))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.503873825, 0.0199302435, 0.999991298, 7.03437308e-013, -4.47016646e-007, 7.10542736e-013, 0.999993205, -2.98063618e-008, -2.38406756e-007, -2.98045819e-008, 0.999990702))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.503999949))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.671850204, 0.0200046301, 0.999992192, -4.61934746e-007, 1.15483172e-005, 4.61917068e-007, 0.999993801, 1.43046918e-006, -1.22188476e-005, -1.49008054e-006, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.17600012, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.47002983, 0.0187981129, 0.999992311, 3.26139116e-012, -9.10005256e-005, 8.38440428e-013, 0.999993801, -2.98064791e-008, 9.0330177e-005, -2.98056761e-008, 0.999990582))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 1, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.17600012, 0.335999995))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.46959877, 0.0198251009, 0.999991536, 1.05870868e-012, -1.29638747e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.20996647e-005, -2.98093603e-008, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.462000072, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.839723587, 0.0198229551, 0.999991536, 9.45021839e-013, -1.17124828e-005, 7.88702437e-013, 0.999993205, -2.98063618e-008, 1.08482727e-005, -2.98093568e-008, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.42800009, 0.671999991))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.59558678, 0.0198256969, 0.999991596, 1.00897068e-012, -1.13843653e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.08330742e-005, -2.9807449e-008, 0.999990523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0.335920334, 0.0199792385, 0.99998498, 1.77635684e-012, -4.42457076e-006, 1.20081722e-012, 0.999987602, -5.96116934e-008, 3.08357539e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.756378174, -0.277729034, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335920334, -0.0639791489, 0.99998498, 1.77635684e-012, -4.42457076e-006, 1.20081722e-012, 0.999987602, -5.96116934e-008, 3.08357539e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.756343842, -0.193767548, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.083984375, -0.019960165, 0.671865463, -0.999989688, 3.12922083e-007, -1.50947335e-005, 1.59142619e-005, 1.03585389e-005, -0.999986649, -3.1279896e-007, -0.999991477, -1.02988779e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -7.62939453e-006, 0.0199067593, 0.999989629, -2.98013205e-008, 5.96000973e-008, 7.45057989e-008, 0.999991119, -2.98054701e-008, -8.64197318e-007, -2.98050864e-008, 0.999986231))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.938070297, 0.137874603, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.728212357, 0.305807114, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.672271729, 0.0161094666, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.125976563, 0.0199372768, 0.999988139, -1.04306544e-007, -2.23536517e-007, 1.04307773e-007, 0.999989748, -2.98051006e-008, -5.51243829e-007, -2.98054808e-008, 0.999983549))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -1.10592842, 0.221801758, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-005, -0.728153229, 0.137924194, 0.999991596, 6.67910172e-013, 4.47207604e-008, -7.02402133e-007, 0.707179785, 0.707022667, -7.05294042e-007, -0.707024634, 0.707177639))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.84018898, 0.184049606, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335920334, 0.103946328, 0.99998498, 1.77635684e-012, -4.42457076e-006, 1.20081722e-012, 0.999987602, -5.96116934e-008, 3.08357539e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840606689, -0.671867371, -0.019955039, -0.999989748, 4.47028654e-008, -1.57354771e-005, 4.45826664e-008, 0.999991477, 1.02539025e-005, 1.65997171e-005, 1.03135581e-005, -0.999987185))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0839691162, -0.671863556, -0.0199602842, -0.999989748, 4.47028654e-008, -1.57354771e-005, 4.45826664e-008, 0.999991477, 1.02539025e-005, 1.65997171e-005, 1.03135581e-005, -0.999987185))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335897446, -0.0639851093, 0.99998498, 1.83320026e-012, -4.87146372e-006, 1.17239551e-012, 0.999987602, -5.96116934e-008, 3.53046926e-006, -5.96116934e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.756332397, -0.109825134, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -1.10591888, 0.305747986, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.728061676, 0.221828461, 0.999991596, 6.67910172e-013, 4.47207604e-008, -7.02402133e-007, 0.707179785, 0.707022667, -7.05294042e-007, -0.707024634, 0.707177639))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -0.67234993, -0.193754196, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.756284714, 0.0161113739, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.672286987, 0.18406105, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335897446, 0.0199738741, 0.99998498, 1.85451654e-012, -5.05021944e-006, 1.15818466e-012, 0.999987602, -5.96116934e-008, 3.7092268e-006, -5.96116934e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -1.10585022, 0.137811661, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.938016891, 0.30575943, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.812088013, 0.221776962, 0.999991596, 6.67910172e-013, 4.47207604e-008, -7.02402133e-007, 0.707179785, 0.707022667, -7.05294042e-007, -0.707024634, 0.707177639))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.840309143, -0.193778992, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840606689, 0.0199552774, -0.671869278, -0.999990344, -6.10944085e-007, -1.58993953e-005, -1.67040234e-005, -1.03585407e-005, 0.999987066, -6.11064024e-007, 0.999991655, 1.02988724e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.644163132, 0.22177124, 0.999991596, -1.63911096e-007, 4.47207675e-008, -4.63979092e-007, 0.707178771, 0.707022071, -4.51969669e-007, -0.70702374, 0.707177103))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.756244659, 0.184059143, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.937994003, 0.221740723, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.84022522, 0.0160942078, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.335897446, 0.103937507, 0.99998498, 1.87583282e-012, -5.22897699e-006, 1.15107923e-012, 0.999987602, -5.96116934e-008, 3.88798253e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.125947952, 0.019931674, 0.999988019, -7.45044133e-008, 1.19185643e-007, 7.45060262e-008, 0.99998939, -5.96073733e-008, -3.724208e-007, -5.96076077e-008, 0.999982655))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000033, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.671842575, -0.273898602, 0.999992251, 6.75015599e-013, 3.53156747e-006, 8.73967565e-013, 0.999993801, -8.93913352e-008, -4.2020838e-006, 2.97793719e-008, 0.999990523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.200000003, 0.336000025, 0.335999936))
Wedgeweld=weld(m,FakeHandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -2.22545815, 0.019826293, 0.999991477, -1.19207421e-007, -1.51692248e-005, 1.19209091e-007, 0.999993205, -2.98050331e-008, 1.44987343e-005, -2.9807719e-008, 0.999990404))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.461999953, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,FakeHandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -2.1415081, 0.0198848248, 0.999991477, 1.07291953e-012, -1.30532799e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.21592684e-005, -2.98089127e-008, 0.999990523))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 0.840000212, 0.839999676))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.840000033, 0.671999991))
Wedgeweld=weld(m,FakeHandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.72933006, 0.0198259354, 0.999991477, 1.04449782e-012, -1.20996147e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.11906975e-005, -2.98092999e-008, 0.999990761))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))

function attackone()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(-5),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,0)*angles(math.rad(0),math.rad(-40),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(6*i,math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
end
so('http://roblox.com/asset/?id=243711414',HitboxA,1,1)
for i = 0,1,0.1 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxA.Position-scfr.p).magnitude > .1 then
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
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(-30), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(40),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30))*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
end
scfr = nil
attack = false
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(40))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
so('http://roblox.com/asset/?id=243711427',HitboxB,1,1)
for i = 0,1,0.1 do
swait()
local blcf = HitboxB.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxB.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-70), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,0)*angles(math.rad(0),math.rad(-50),math.rad(-30))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
end
scfr = nil
attack = false
end

function attackthree()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(50),math.rad(0),math.rad(0)),.3)
end
so('http://roblox.com/asset/?id=243711414',HitboxA,1,1)
so('http://roblox.com/asset/?id=243711427',HitboxB,1,1)
for i = 0,1,0.1 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxA.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
local blcf2 = HitboxB.CFrame*CFrame.new(0,.5,0)
if scfr2 and (HitboxB.Position-scfr2.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr2*CFrame.new(0,h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p,(blcf2*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf2*CFrame.new(0,h/2,0)).p,(blcf2*CFrame.new(0,-h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr2 = blcf2
elseif not scfr2 then
scfr2 = blcf2
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(50)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*100
end
scfr = nil
scfr2 = nil
attack = false
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
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-10),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-130), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,0)*angles(math.rad(0),math.rad(-50),math.rad(-30)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
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