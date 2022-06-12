Player=game.Players.LocalPlayer
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

local TrailColor = ("Really red")
 
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

HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","HandleA",Vector3.new(1, 0.400000036, 1))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000153899193, 0.000251355581, 0.0273191668, 0.999986053, -0.00443324586, 0.00291919708, 0.00440894719, 0.9999547, 0.00830902252, -0.00295585394, -0.00829610229, 0.999961197))
BladeHandleConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeHandleConnectorA",Vector3.new(1.4000001, 0.220000014, 1))
BladeHandleConnectorAweld=weld(m,HandleA,BladeHandleConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.899367034, -2.90870667e-005, 1.19999492, 9.53041308e-008, 0.999998093, -6.05359674e-008, 1.00000024, 9.53041308e-008, 4.95929271e-008, -4.95929271e-008, 6.05359674e-008, -0.99999994))
mesh("CylinderMesh",BladeHandleConnectorA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409788251, 0.693154871, 4.9546361e-007, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409807205, -0.706620395, 8.64267349e-006, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199968338, -1.09942245, -0.400000602, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000187635422, 0.69285804, 0.410003811, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410165548, 0.693416476, 1.89989805e-007, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199938297, -1.09985983, -0.400007844, -1.00000024, -9.53041308e-008, -4.95929271e-008, 1.10472683e-007, -0.999998093, 4.47034836e-008, 1.38301402e-007, -1.21071935e-008, 0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000187516212, -0.706997454, 0.410004616, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199999571, -1.09961319, -0.400001258, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199967861, 0.000449241139, -0.799993634, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200002074, -1.10001612, -0.699993968, -1.00000024, -9.53041308e-008, -4.95929271e-008, 1.10472683e-007, -0.999998093, 4.47034836e-008, 1.38301402e-007, -1.21071935e-008, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000188231468, 0.69285655, -0.409995556, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200024605, -1.09985411, -0.40000844, -1.00000024, -9.53041308e-008, -4.95929271e-008, 1.10472683e-007, -0.999998093, 4.47034836e-008, 1.38301402e-007, -1.21071935e-008, 0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199978828, -1.10001445, -0.699994683, -1.00000024, -9.53041308e-008, -4.95929271e-008, 1.10472683e-007, -0.999998093, 4.47034836e-008, 1.38301402e-007, -1.21071935e-008, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410178542, -0.706382692, 8.03545117e-006, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.200001121, 0.000294554979, -0.799992144, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199998498, -1.09960449, -0.699994683, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 2, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.22785568e-005, -4.90820967e-005, -0.599998534, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000183939934, -0.706939399, -0.409988642, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199970365, -1.09944367, -0.699996531, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","HandleB",Vector3.new(1, 0.400000036, 1))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000153899193, 0.000251355581, 0.0273191668, 0.999986053, -0.00443324586, 0.00291919708, 0.00440894719, 0.9999547, 0.00830902252, -0.00295585394, -0.00829610229, 0.999961197))
BladeHandleConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeHandleConnectorB",Vector3.new(1.4000001, 0.220000014, 1))
BladeHandleConnectorBweld=weld(m,HandleB,BladeHandleConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.899367034, -2.90870667e-005, 1.19999492, 9.53041308e-008, 0.999998093, -6.05359674e-008, 1.00000024, 9.53041308e-008, 4.95929271e-008, -4.95929271e-008, 6.05359674e-008, -0.99999994))
mesh("CylinderMesh",BladeHandleConnectorB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409788251, 0.693154871, 4.9546361e-007, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409807205, -0.706620395, 8.64267349e-006, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199968338, -1.09942245, -0.400000602, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000187635422, 0.69285804, 0.410003811, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410165548, 0.693416476, 1.89989805e-007, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199938297, -1.09985983, -0.400007844, -1.00000024, -9.53041308e-008, -4.95929271e-008, 1.10472683e-007, -0.999998093, 4.47034836e-008, 1.38301402e-007, -1.21071935e-008, 0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000187516212, -0.706997454, 0.410004616, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199999571, -1.09961319, -0.400001258, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199967861, 0.000449241139, -0.799993634, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200002074, -1.10001612, -0.699993968, -1.00000024, -9.53041308e-008, -4.95929271e-008, 1.10472683e-007, -0.999998093, 4.47034836e-008, 1.38301402e-007, -1.21071935e-008, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000188231468, 0.69285655, -0.409995556, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200024605, -1.09985411, -0.40000844, -1.00000024, -9.53041308e-008, -4.95929271e-008, 1.10472683e-007, -0.999998093, 4.47034836e-008, 1.38301402e-007, -1.21071935e-008, 0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199978828, -1.10001445, -0.699994683, -1.00000024, -9.53041308e-008, -4.95929271e-008, 1.10472683e-007, -0.999998093, 4.47034836e-008, 1.38301402e-007, -1.21071935e-008, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410178542, -0.706382692, 8.03545117e-006, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.200001121, 0.000294554979, -0.799992144, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199998498, -1.09960449, -0.699994683, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 2, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.22785568e-005, -4.90820967e-005, -0.599998534, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000183939934, -0.706939399, -0.409988642, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199970365, -1.09944367, -0.699996531, 1.00000024, 9.53041308e-008, 4.95929271e-008, 9.53041308e-008, 0.999998093, -6.05359674e-008, 4.95929271e-008, -6.05359674e-008, 0.99999994))

BladeHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","BladeHandleA",Vector3.new(1.4000001, 0.220000014, 1))
BladeHandleAweld=weld(m,BladeHandleConnectorA,BladeHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.075024724, -0.00220115576, 0.0248177238, 0.999945879, 0.004408604, -0.00830899831, -0.0044330433, 0.999977112, -0.00291883945, 0.00829609297, 0.00295552565, 0.999961019))
mesh("CylinderMesh",BladeHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Bright violet","HitboxA",Vector3.new(0.200000003, 4.46999931, 1.20000005))
HitboxAweld=weld(m,BladeHandleA,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.5664998e-006, -2.33487749, -0.0999589264, -9.65192157e-008, 0.999991477, -1.07800588e-007, 0.999988794, 1.2482451e-007, -7.72997737e-008, -6.05359674e-008, 4.40049917e-008, -0.999999583))
mesh("BlockMesh",HitboxA,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000036, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.400000006))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.20343131e-005, -1.95763254, 0.421137512, -7.11224857e-009, 0.999991477, -1.07102096e-007, 0.965909183, 3.97558324e-008, -0.258840948, -0.258838028, -1.99768692e-007, -0.965919793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(1.20000005, 0.200000003, 1))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100055456, 2.58637592e-005, -1.35097653e-005, 0.999989033, 1.22987331e-007, 7.54371285e-008, -9.65192157e-008, 0.999991477, -1.07800588e-007, 0, 1.58324838e-008, 0.999999583))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.7350768e-005, 1.95778012, 0.72113359, 7.11224857e-009, -0.999991477, 1.07102096e-007, -0.965909004, 6.37955964e-008, 0.258840889, -0.258837938, -1.10128894e-007, -0.965920031))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.78364527e-005, -1.57147503, -0.0175979435, 7.11224857e-009, -0.999991477, 1.07102096e-007, 0.965909183, 3.97558324e-008, -0.258840948, 0.258838028, 1.99768692e-007, 0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.400000006))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.25782055e-005, -1.18497086, 0.214076847, -7.11224857e-009, 0.999991477, -1.07102096e-007, 0.965909183, -1.96741894e-008, -0.258841008, -0.258838087, -1.39931217e-007, -0.965919793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.400000006))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.54122201e-005, -1.57129979, 0.317610621, -7.11224857e-009, 0.999991477, -1.07102096e-007, 0.965909183, 3.97558324e-008, -0.258840948, -0.258838028, -1.99768692e-007, -0.965919793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.79426235e-005, -1.95781136, -0.121128738, 7.11224857e-009, -0.999991477, 1.07102096e-007, 0.965909183, 3.97558324e-008, -0.258840948, 0.258838028, 1.99768692e-007, 0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000083, 0.240000024, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199986815, -6.18305057e-006, -4.63537872e-005, 0.999989033, 2.12607119e-007, 1.62981451e-007, -7.11224857e-009, 0.999991477, -1.07102096e-007, -5.96046448e-008, 1.55996531e-008, 0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.83770855e-005, -1.18514419, 0.0859245956, 7.11224857e-009, -0.999991477, 1.07102096e-007, 0.965909183, -1.96741894e-008, -0.258841008, 0.258838087, 1.39931217e-007, 0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000083, 0.240000024, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199974179, -4.68781218e-006, -4.53684479e-005, 0.999989033, 2.12607119e-007, 1.62981451e-007, -7.11224857e-009, 0.999991477, -1.07102096e-007, -5.96046448e-008, 1.55996531e-008, 0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000083, 0.240000024, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.43730164e-006, -5.69550321e-006, -0.200050429, 0.999989033, 2.12607119e-007, 1.62981451e-007, -7.11224857e-009, 0.999991477, -1.07102096e-007, -5.96046448e-008, 1.55996531e-008, 0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000083, 0.240000024, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.96046448e-006, -5.04218042e-006, 0.199951231, 0.999989033, 2.12607119e-007, 1.62981451e-007, -7.11224857e-009, 0.999991477, -1.07102096e-007, -5.96046448e-008, 1.55996531e-008, 0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.55398113e-005, 1.57145619, 0.617613614, 7.11224857e-009, -0.999991477, 1.07102096e-007, -0.965909183, -3.97558324e-008, 0.258840948, -0.258838028, -1.99768692e-007, -0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.200000003, 2.59999967, 1))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.61515379e-005, -1.20038569, 4.36045229e-005, -7.11224857e-009, 0.999991477, -1.07102096e-007, 0.999989033, 2.12607119e-007, 1.62981451e-007, 5.96046448e-008, -1.55996531e-008, -0.999999702))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.6099999, 0.370000035))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00453943107, -3.59170008, 1.00501585, -1.85742465e-007, -0.999991477, -5.37838787e-006, 0.931244195, -2.13249587e-006, 0.364371002, -0.364367813, -4.73367982e-006, 0.931253552))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.74778935e-005, 1.18511844, 0.51408869, 7.11224857e-009, -0.999991477, 1.07102096e-007, -0.965909183, -3.97558324e-008, 0.258840948, -0.258838028, -1.99768692e-007, -0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.24000001, 0.379999995))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00445578899, -3.34219456, -0.964703262, 1.06241714e-007, 0.999991477, 4.18559648e-006, 0.868384421, -2.13622116e-006, 0.495875508, 0.495871097, 3.5520643e-006, -0.868393242))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00240394706, -3.73852968, 1.30653429, -1.2010787e-007, -0.999991477, -2.51666643e-006, 0.940572083, -1.03004277e-006, 0.339566648, -0.339563578, -2.24495307e-006, 0.940582037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 0.559999704, 0.929999948))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0019936848, -2.68281245, -0.384100318, 1.41448436e-006, 0.999991477, 9.77655873e-007, 0.989911199, -1.52611756e-006, 0.141614005, 0.141612604, 1.01001933e-006, -0.989921689))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 0.709999681, 0.939999998))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00213447702, -2.67230463, -0.29508394, 5.1926072e-006, 0.999991417, -1.7627608e-006, 0.997284353, -5.10999234e-006, 0.073496215, 0.0734953806, -1.9420404e-006, -0.997294545))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.200000003, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00745915249, 0.800011873, 0.771243393, 3.60022023e-006, 0.999991357, 1.05327927e-005, -0.977349043, 5.78857725e-006, -0.211586878, -0.211585045, -9.41171311e-006, 0.977359116))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00174977514, -0.143583179, 0.544506013, 3.60022023e-006, 0.999991357, 1.05327927e-005, -0.977349043, 5.78857725e-006, -0.211586878, -0.211585045, -9.41171311e-006, 0.977359116))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.3599999, 0.25000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00457242504, 1.44972038, 0.937004209, 4.24918471e-006, 0.999991357, 1.13428105e-005, -0.97515136, 6.72199531e-006, -0.221495599, -0.221493527, -9.98610631e-006, 0.975161493))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 1.98999989, 0.25000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0108854175, 1.90189612, 1.23526239, 4.78753464e-006, 0.999991357, 1.8291641e-005, -0.946396828, 1.0460848e-005, -0.322977185, -0.322974324, -1.57086179e-005, 0.946406901))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.41999984, 0.49000001))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000984288286, -3.58617091, 0.587580323, -7.28723535e-007, -0.999991417, -1.8943334e-005, 0.939981222, -7.21320976e-006, 0.341198981, -0.341195881, -1.74124725e-005, 0.939991176))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.43000007, 0.5))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00097745331, -3.96163177, 0.987698019, -1.66923201e-007, -0.999991477, -7.64313154e-006, 0.935261607, -2.79012602e-006, 0.353932023, -0.353928834, -6.98934309e-006, 0.935270965))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.29999995, 0.400000036))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00240410771, -3.85853004, 1.36153507, -1.2010787e-007, -0.999991477, -2.51666643e-006, 0.940572083, -1.03004277e-006, 0.339566648, -0.339563578, -2.24495307e-006, 0.940582037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.3599999, 0.25000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0152501259, 1.4888978, 0.945500731, 4.24918471e-006, 0.999991357, 1.13428105e-005, -0.97515136, 6.72199531e-006, -0.221495599, -0.221493527, -9.98610631e-006, 0.975161493))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.29999995, 1.29999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.200000003, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124663115, 0.825413465, 0.796889961, 3.60022023e-006, 0.999991357, 1.05327927e-005, -0.977349043, 5.78857725e-006, -0.211586878, -0.211585045, -9.41171311e-006, 0.977359116))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.29999995, 1.29999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 1.58999991, 0.240000024))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0106328866, 1.76202643, 1.27130175, 4.78753464e-006, 0.999991357, 1.8291641e-005, -0.946396828, 1.0460848e-005, -0.322977185, -0.322974324, -1.57086179e-005, 0.946406901))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.29999995, 1.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0216013901, -0.106356978, 0.562396944, 3.60022023e-006, 0.999991357, 1.05327927e-005, -0.977349043, 5.78857725e-006, -0.211586878, -0.211585045, -9.41171311e-006, 0.977359116))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.20000005, 1.20000005))

BladeHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","BladeHandleB",Vector3.new(1.4000001, 0.220000014, 1))
BladeHandleBweld=weld(m,BladeHandleConnectorB,BladeHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.075024724, -0.00220115576, 0.0248177238, 0.999945879, 0.004408604, -0.00830899831, -0.0044330433, 0.999977112, -0.00291883945, 0.00829609297, 0.00295552565, 0.999961019))
mesh("CylinderMesh",BladeHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Bright violet","HitboxB",Vector3.new(0.200000003, 4.46999931, 1.20000005))
HitboxBweld=weld(m,BladeHandleB,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.5664998e-006, -2.33487749, -0.0999589264, -9.65192157e-008, 0.999991477, -1.07800588e-007, 0.999988794, 1.2482451e-007, -7.72997737e-008, -6.05359674e-008, 4.40049917e-008, -0.999999583))
mesh("BlockMesh",HitboxB,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000036, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.400000006))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.20343131e-005, -1.95763254, 0.421137512, -7.11224857e-009, 0.999991477, -1.07102096e-007, 0.965909183, 3.97558324e-008, -0.258840948, -0.258838028, -1.99768692e-007, -0.965919793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(1.20000005, 0.200000003, 1))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100055456, 2.58637592e-005, -1.35097653e-005, 0.999989033, 1.22987331e-007, 7.54371285e-008, -9.65192157e-008, 0.999991477, -1.07800588e-007, 0, 1.58324838e-008, 0.999999583))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.7350768e-005, 1.95778012, 0.72113359, 7.11224857e-009, -0.999991477, 1.07102096e-007, -0.965909004, 6.37955964e-008, 0.258840889, -0.258837938, -1.10128894e-007, -0.965920031))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.78364527e-005, -1.57147503, -0.0175979435, 7.11224857e-009, -0.999991477, 1.07102096e-007, 0.965909183, 3.97558324e-008, -0.258840948, 0.258838028, 1.99768692e-007, 0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.400000006))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.25782055e-005, -1.18497086, 0.214076847, -7.11224857e-009, 0.999991477, -1.07102096e-007, 0.965909183, -1.96741894e-008, -0.258841008, -0.258838087, -1.39931217e-007, -0.965919793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.400000006))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.54122201e-005, -1.57129979, 0.317610621, -7.11224857e-009, 0.999991477, -1.07102096e-007, 0.965909183, 3.97558324e-008, -0.258840948, -0.258838028, -1.99768692e-007, -0.965919793))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.79426235e-005, -1.95781136, -0.121128738, 7.11224857e-009, -0.999991477, 1.07102096e-007, 0.965909183, 3.97558324e-008, -0.258840948, 0.258838028, 1.99768692e-007, 0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000083, 0.240000024, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.199986815, -6.18305057e-006, -4.63537872e-005, 0.999989033, 2.12607119e-007, 1.62981451e-007, -7.11224857e-009, 0.999991477, -1.07102096e-007, -5.96046448e-008, 1.55996531e-008, 0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.83770855e-005, -1.18514419, 0.0859245956, 7.11224857e-009, -0.999991477, 1.07102096e-007, 0.965909183, -1.96741894e-008, -0.258841008, 0.258838087, 1.39931217e-007, 0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000083, 0.240000024, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199974179, -4.68781218e-006, -4.53684479e-005, 0.999989033, 2.12607119e-007, 1.62981451e-007, -7.11224857e-009, 0.999991477, -1.07102096e-007, -5.96046448e-008, 1.55996531e-008, 0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000083, 0.240000024, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.43730164e-006, -5.69550321e-006, -0.200050429, 0.999989033, 2.12607119e-007, 1.62981451e-007, -7.11224857e-009, 0.999991477, -1.07102096e-007, -5.96046448e-008, 1.55996531e-008, 0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000083, 0.240000024, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.96046448e-006, -5.04218042e-006, 0.199951231, 0.999989033, 2.12607119e-007, 1.62981451e-007, -7.11224857e-009, 0.999991477, -1.07102096e-007, -5.96046448e-008, 1.55996531e-008, 0.999999702))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.55398113e-005, 1.57145619, 0.617613614, 7.11224857e-009, -0.999991477, 1.07102096e-007, -0.965909183, -3.97558324e-008, 0.258840948, -0.258838028, -1.99768692e-007, -0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.200000003, 2.59999967, 1))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.61515379e-005, -1.20038569, 4.36045229e-005, -7.11224857e-009, 0.999991477, -1.07102096e-007, 0.999989033, 2.12607119e-007, 1.62981451e-007, 5.96046448e-008, -1.55996531e-008, -0.999999702))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.6099999, 0.370000035))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00453943107, -3.59170008, 1.00501585, -1.85742465e-007, -0.999991477, -5.37838787e-006, 0.931244195, -2.13249587e-006, 0.364371002, -0.364367813, -4.73367982e-006, 0.931253552))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really red","Part",Vector3.new(0.220000014, 0.200000003, 0.200000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.74778935e-005, 1.18511844, 0.51408869, 7.11224857e-009, -0.999991477, 1.07102096e-007, -0.965909183, -3.97558324e-008, 0.258840948, -0.258838028, -1.99768692e-007, -0.965919793))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.24000001, 0.379999995))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00445578899, -3.34219456, -0.964703262, 1.06241714e-007, 0.999991477, 4.18559648e-006, 0.868384421, -2.13622116e-006, 0.495875508, 0.495871097, 3.5520643e-006, -0.868393242))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00240394706, -3.73852968, 1.30653429, -1.2010787e-007, -0.999991477, -2.51666643e-006, 0.940572083, -1.03004277e-006, 0.339566648, -0.339563578, -2.24495307e-006, 0.940582037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 0.559999704, 0.929999948))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0019936848, -2.68281245, -0.384100318, 1.41448436e-006, 0.999991477, 9.77655873e-007, 0.989911199, -1.52611756e-006, 0.141614005, 0.141612604, 1.01001933e-006, -0.989921689))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 0.709999681, 0.939999998))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00213447702, -2.67230463, -0.29508394, 5.1926072e-006, 0.999991417, -1.7627608e-006, 0.997284353, -5.10999234e-006, 0.073496215, 0.0734953806, -1.9420404e-006, -0.997294545))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.200000003, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00745915249, 0.800011873, 0.771243393, 3.60022023e-006, 0.999991357, 1.05327927e-005, -0.977349043, 5.78857725e-006, -0.211586878, -0.211585045, -9.41171311e-006, 0.977359116))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00174977514, -0.143583179, 0.544506013, 3.60022023e-006, 0.999991357, 1.05327927e-005, -0.977349043, 5.78857725e-006, -0.211586878, -0.211585045, -9.41171311e-006, 0.977359116))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 2.3599999, 0.25000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00457242504, 1.44972038, 0.937004209, 4.24918471e-006, 0.999991357, 1.13428105e-005, -0.97515136, 6.72199531e-006, -0.221495599, -0.221493527, -9.98610631e-006, 0.975161493))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Really black","Part",Vector3.new(0.210000008, 1.98999989, 0.25000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0108854175, 1.90189612, 1.23526239, 4.78753464e-006, 0.999991357, 1.8291641e-005, -0.946396828, 1.0460848e-005, -0.322977185, -0.322974324, -1.57086179e-005, 0.946406901))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.41999984, 0.49000001))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000984288286, -3.58617091, 0.587580323, -7.28723535e-007, -0.999991417, -1.8943334e-005, 0.939981222, -7.21320976e-006, 0.341198981, -0.341195881, -1.74124725e-005, 0.939991176))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.43000007, 0.5))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00097745331, -3.96163177, 0.987698019, -1.66923201e-007, -0.999991477, -7.64313154e-006, 0.935261607, -2.79012602e-006, 0.353932023, -0.353928834, -6.98934309e-006, 0.935270965))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.29999995, 0.400000036))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00240410771, -3.85853004, 1.36153507, -1.2010787e-007, -0.999991477, -2.51666643e-006, 0.940572083, -1.03004277e-006, 0.339566648, -0.339563578, -2.24495307e-006, 0.940582037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.3599999, 0.25000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0152501259, 1.4888978, 0.945500731, 4.24918471e-006, 0.999991357, 1.13428105e-005, -0.97515136, 6.72199531e-006, -0.221495599, -0.221493527, -9.98610631e-006, 0.975161493))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.29999995, 1.29999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.200000003, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0124663115, 0.825413465, 0.796889961, 3.60022023e-006, 0.999991357, 1.05327927e-005, -0.977349043, 5.78857725e-006, -0.211586878, -0.211585045, -9.41171311e-006, 0.977359116))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.29999995, 1.29999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 1.58999991, 0.240000024))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0106328866, 1.76202643, 1.27130175, 4.78753464e-006, 0.999991357, 1.8291641e-005, -0.946396828, 1.0460848e-005, -0.322977185, -0.322974324, -1.57086179e-005, 0.946406901))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.29999995, 1.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Really red","Part",Vector3.new(0.210000008, 2.01999998, 0.25000003))
Partweld=weld(m,BladeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0216013901, -0.106356978, 0.562396944, 3.60022023e-006, 0.999991357, 1.05327927e-005, -0.977349043, 5.78857725e-006, -0.211586878, -0.211585045, -9.41171311e-006, 0.977359116))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.20000005, 1.20000005))

function attackone()
attack = true
local bounce=false
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con = HitboxA.Touched:connect(function(hit) Damagefunc(HitboxA,hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
local fx=HitboxA.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,.5)
		bounce=true
	end
end)
for i = 0,1,0.3 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.3)* angles(math.rad(5),math.rad(0),math.rad(-30)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(-120), math.rad(-70)),.5)
LH.C0=clerp(LH.C0,cf(-1,-.7,-.5)*angles(math.rad(0),math.rad(-60),math.rad(-10)),.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-40)),.5)
end
so("http://www.roblox.com/asset/?id=199145913",HitboxA,1,1.1) 
for i = 0,1,0.2 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.3)* angles(math.rad(5),math.rad(0),math.rad(140)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-90)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(0), math.rad(160), math.rad(90)),.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(-50), math.rad(-70)),.5)
RH.C0=clerp(RH.C0,cf(1,-.7,0)*angles(math.rad(0),math.rad(60),math.rad(10)),.5)
LH.C0=clerp(LH.C0,cf(-1.1,-1,-.5)*angles(math.rad(0),math.rad(-90),math.rad(40)),.5)
end
attack = false
bounce = false
con:disconnect()
fx:disconnect()
scfr = nil
end

function attacktwo()
attack = true
local bounce=false
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con = HitboxB.Touched:connect(function(hit) Damagefunc(HitboxB,hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
local fx=HitboxB.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,.5)
		bounce=true
	end
end)
for i = 0,1,0.3 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.3)* angles(math.rad(5),math.rad(0),math.rad(30)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-40)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)),.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(-120), math.rad(-70)),.5)
RH.C0=clerp(RH.C0,cf(1,-.7,0)*angles(math.rad(0),math.rad(60),math.rad(10)),.5)
LH.C0=clerp(LH.C0,cf(-1.1,-1,-.5)*angles(math.rad(0),math.rad(-90),math.rad(40)),.5)
end
so("http://www.roblox.com/asset/?id=199145887",HitboxA,1,1.3) 
for i = 0,1,0.2 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.3)* angles(math.rad(5),math.rad(0),math.rad(-140)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(90)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(0), math.rad(160), math.rad(90)),.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)),.5)
LH.C0=clerp(LH.C0,cf(-1,-.7,-.5)*angles(math.rad(0),math.rad(-60),math.rad(-10)),.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-40)),.5)
end
attack = false
bounce = false
con:disconnect()
fx:disconnect()
scfr = nil
end

function JumpSpin()
attack = true
Humanoid.Jump = true
local bounce=false
local bounce2=false
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con = HitboxA.Touched:connect(function(hit) Damagefunc(HitboxB,hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
local con2 = HitboxB.Touched:connect(function(hit) Damagefunc(HitboxB,hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
local fx=HitboxA.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,.5)
		bounce=true
	end
end)
local fx2=HitboxB.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce2==false then
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,.5)
		bounce2=true
	end
end)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20)),.3)
BladeHandleAweld.C0=clerp(BladeHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
BladeHandleBweld.C0=clerp(BladeHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,1 do
swait()
so("http://www.roblox.com/asset/?id=243711322",Torso,1,1) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,3)* angles(6*i,math.rad(0),math.rad(0)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(160), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(160), math.rad(0), math.rad(-0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-30)),.3)
BladeHandleAweld.C0=clerp(BladeHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
BladeHandleBweld.C0=clerp(BladeHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
end
end
attack = false
bounce=false
bounce2=false
con:disconnect()
fx:disconnect()
con2:disconnect()
fx2:disconnect()
end

function OmegaSlash()
attack = true
so("http://www.roblox.com/asset/?id=152052659",HitboxA,1,1)
so("http://www.roblox.com/asset/?id=152052659",HitboxB,1,1)
local bounce=false
local bounce2=false
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con = HitboxA.Touched:connect(function(hit) Damagefunc(HitboxB,hit,20,30,math.random(5,10),"Normal",RootPart,.2,1) end) 
local con2 = HitboxB.Touched:connect(function(hit) Damagefunc(HitboxB,hit,20,30,math.random(5,10),"Normal",RootPart,.2,1) end)
local fx=HitboxA.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,.5)
		bounce=true
	end
end)
local fx2=HitboxB.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce2==false then
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,.5)
		bounce2=true
	end
end) 
for i = 0,1,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(120), math.rad(120)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(110)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.5)
BladeHandleAweld.C0=clerp(BladeHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
BladeHandleBweld.C0=clerp(BladeHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
end
so("http://www.roblox.com/asset/?id=203691699",HitboxA,1,1)
so("http://www.roblox.com/asset/?id=203691699",HitboxB,1,1)
for i = 0,1,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(-80)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(70)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(80)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(50), math.rad(80)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-50)),.5)
BladeHandleAweld.C0=clerp(BladeHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
BladeHandleBweld.C0=clerp(BladeHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*100
end
attack = false
bounce=false
bounce2=false
con:disconnect()
fx:disconnect()
con2:disconnect()
fx2:disconnect()
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
JumpSpin()
elseif attack == false and k == 'e' then
OmegaSlash()
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20)),.3)
BladeHandleAweld.C0=clerp(BladeHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
BladeHandleBweld.C0=clerp(BladeHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.3)
BladeHandleAweld.C0=clerp(BladeHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
BladeHandleBweld.C0=clerp(BladeHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.3)* angles(math.rad(5),math.rad(0),math.rad(30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(90), math.rad(50), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(90), math.rad(-50), math.rad(20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.7,0)*angles(math.rad(0),math.rad(60),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1.1,-1,-.5)*angles(math.rad(0),math.rad(-90),math.rad(40)),.3)
BladeHandleAweld.C0=clerp(BladeHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
BladeHandleBweld.C0=clerp(BladeHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(20), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(-20), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
BladeHandleAweld.C0=clerp(BladeHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
BladeHandleBweld.C0=clerp(BladeHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
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