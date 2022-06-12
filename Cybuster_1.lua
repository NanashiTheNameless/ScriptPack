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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Handle",Vector3.new(0.237522021, 0.237521961, 1.90017581))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(0.00356292725, 1.14132118, -0.188839912, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000274658203, -2.49396038, 0.23774457, -1.00000358, -0.00025753997, -0.00019489511, 0.000194905093, -3.76809076e-005, -1.00000358, 0.000257531909, -1, 3.77307297e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-7.62939453e-005, -1.06887531, -4.8160553e-005, -1.00000358, -0.000257541367, -0.000255930499, -0.000255940482, 3.76586795e-005, 1.0000037, -0.000257530977, 1, -3.7724225e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000335693359, -0.000241756439, -2.49396706, -1.00000393, -0.000341686624, -0.000225411786, -0.000341677136, 1.00000024, -4.03386584e-005, 0.000225425756, -4.02620026e-005, -1.0000037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000473022461, 2.96902084, -0.237581491, -1.0000037, -0.000196505294, -0.000255923573, -0.000255919207, -2.3374756e-005, 1.0000037, -0.0001965103, 1, 2.33250576e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000373840332, 0.237349272, 9.14462948, -1.00000358, -0.000255381834, -0.000139096752, 0.000255384628, -1, -2.50091507e-005, -0.00013909064, -2.50440789e-005, 1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000480651855, -0.000255346298, -2.96901798, -1.0000037, -0.000298528757, -0.000268572127, -0.000298517407, 1.00000024, -4.03300073e-005, 0.000268584408, -4.02501937e-005, -1.0000037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000267028809, -2.96899986, 0.237756968, -1.00000358, -0.00025753997, -0.00019489511, 0.000194905093, -3.76809076e-005, -1.00000358, 0.000257531909, -1, 3.77307297e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000129699707, 0.237582207, 2.73147392, -1.00000358, -0.000255381834, -0.000139096752, 0.000255384628, -1, -2.50091507e-005, -0.00013909064, -2.50440789e-005, 1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(4.57763672e-005, 2.25646687, 4.83989716e-005, -1.00000358, -0.000257541367, -0.000255930499, -0.000255940482, 3.76586795e-005, 1.0000037, -0.000257530977, 1, -3.7724225e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000160217285, -2.25646687, 8.91685486e-005, -1.00000381, -0.000318574312, -0.000194898428, 0.000194930093, -9.87161911e-005, -1.00000358, 0.000318554608, -1.00000024, 9.87781386e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000221252441, 6.07967377e-005, 2.4939661, -1.00000381, -0.000298538391, -0.000182252843, 0.000298542378, -1.00000024, -2.4998335e-005, -0.000182245596, -2.50521498e-005, 1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.712566018, 0.950087845, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0, -0.118883848, 1.7814312, 1.0000037, 0.000212217914, 0.00026858499, -0.000212183018, 1, -0.000126619299, -0.000268612115, 0.000126562343, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000137329102, 1.06887531, -1.40666962e-005, -1.00000381, -0.000318574312, -0.000194898428, 0.000194930093, -9.87161911e-005, -1.00000358, 0.000318554608, -1.00000024, 9.87781386e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000282287598, 0.237331152, 9.61972427, -1.00000358, -0.000255381834, -0.000139096752, 0.000255384628, -1, -2.50091507e-005, -0.00013909064, -2.50440789e-005, 1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000122070313, -0.237676382, -2.25645542, -1.00000393, -0.000341695006, -0.00022541458, -0.000341666047, 1.00000024, -0.000126642291, 0.000225458032, -0.000126565312, -1.0000037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.00032043457, 2.49397469, -0.237598419, -1.00000358, -0.000196505745, -0.000194888184, -0.000194883833, -2.33543979e-005, 1.00000358, -0.000196509354, 1, 2.33166975e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000160217285, 0.237331152, 2.25647068, -1.00000358, -0.000212241648, -0.00018226188, 0.00021224533, -1, -2.50163685e-005, -0.00018225683, -2.50544617e-005, 1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 5.46300602))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000671386719, -0.237869501, 6.29435349, 1.0000037, 0.000212216066, 0.000268573756, -0.000212204337, 1, -4.03105623e-005, -0.000268582575, 4.02539263e-005, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(1.52587891e-005, 0.000101566315, -1.30639076, 1.0000037, 0.00025536833, 0.000225418888, -0.000255339051, 1, -0.000126622836, -0.000225451484, 0.000126565326, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.475043952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-1.78143024, -0.475196838, 0.118642569, 0.000352418923, -0.000136582181, -1.0000037, -1.00000381, -0.000212222454, -0.000352389703, -0.0002121734, 1, -0.000136656949))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.475043952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(1.78146553, -0.475036621, 0.356306076, -0.000245111209, 9.34722775e-005, 1.0000037, -1.0000037, -0.000169049774, -0.000245095143, 0.000169025807, -1, 9.35135176e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-5.34057617e-005, -0.237425208, -1.06889343, 1.0000037, 0.000255377672, 0.000225418917, 0.000255343592, -1, 0.000147793966, 0.000225456941, -0.000147736369, -1.0000037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.00025177002, -3.44404984, 0.237771511, -1.00000358, -0.00025753997, -0.00019489511, 0.000194905093, -3.76809076e-005, -1.00000358, 0.000257531909, -1, 3.77307297e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(1.78147221, -0.237487793, 0.712545872, -0.000245091942, 5.0310864e-005, 1.0000037, -1.0000037, -0.00021220796, -0.000245080999, 0.000212194718, -1, 5.03625597e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000511169434, 3.44407082, -0.237567425, -1.0000037, -0.000196505294, -0.000255923573, -0.000255919207, -2.3374756e-005, 1.0000037, -0.0001965103, 1, 2.33250576e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(7.62939453e-006, -0.47503686, 1.78143883, -1.0000037, -0.000212228333, -0.000268577482, 0.000212210987, -1, 6.12893928e-005, -0.000268590753, 6.12326694e-005, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000114440918, -9.38215256, 0.237928867, -1.00000358, -0.00025753997, -0.00019489511, 0.000194905093, -3.76809076e-005, -1.00000358, 0.000257531909, -1, 3.77307297e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.475044042))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(5.34057617e-005, -0.237433195, -1.18763828, 1.0000037, 0.00025536833, 0.000225418888, -0.000255339051, 1, -0.000126622836, -0.000225451484, 0.000126565326, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000114440918, -0.71269536, 1.7814045, 1.0000037, 0.000169062929, 0.000311746437, -0.000169022416, 1, -0.000126610641, -0.00031176809, 0.000126558007, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(1.78144741, -0.237419128, 0.475049376, -0.000331274932, 5.02683724e-005, 1.0000037, 1.00000381, 0.0002122226, 0.000331264047, -0.000212205035, 1, -5.0338338e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 1.42513192))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(2.28881836e-005, -0.237521172, -6.67572021e-006, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-1.78144646, -0.237701416, 0.474970222, 0.000352459319, -9.34207492e-005, -1.00000381, -1.0000037, -0.000255377876, -0.000352435105, -0.000255344203, 1, -9.35105927e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(4.57763672e-005, -1.0688467, -4.41074371e-005, 1.00000358, 0.000257545529, 0.000316972379, 0.000316998106, -9.86715895e-005, -1.0000037, -0.000257513515, 1, -9.87530802e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.712565839, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0, -0.237625122, 1.54391098, 1.0000037, 0.000212217914, 0.00026858499, -0.000212183018, 1, -0.000126619299, -0.000268612115, 0.000126562343, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-1.52587891e-005, 1.06886196, 4.9829483e-005, 1.00000358, 0.000257542299, 0.000255937048, -0.000255962746, 9.86938103e-005, 1.0000037, 0.000257516309, -1, 9.87595777e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000114440918, -0.237661123, 2.01896191, 1.0000037, 0.000169062929, 0.000311746437, -0.000169022416, 1, -0.000126610641, -0.00031176809, 0.000126558007, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-1.78141499, -0.237548828, 0.712627172, 0.000265971787, -9.34521813e-005, -1.0000037, 1.00000358, 0.000255371677, 0.000265947572, 0.000255346094, -1, 9.35199205e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000717163086, 9.38216305, -0.237362385, -1.0000037, -0.000196505294, -0.000255923573, -0.000255919207, -2.3374756e-005, 1.0000037, -0.0001965103, 1, 2.33250576e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.475043923, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(1.52587891e-005, -0.118854046, 1.30638027, 1.0000037, 0.000212217914, 0.00026858499, -0.000212183018, 1, -0.000126619299, -0.000268612115, 0.000126562343, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0, 1.30637836, 0.475101233, 1.0000037, 0.000196507142, 0.000255940366, -0.000255959982, 9.86955565e-005, 1.0000037, 0.00019648092, -1, 9.87457024e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.475043952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(1.78146648, -0.474914551, 0.118762016, -0.000331274932, 5.02683724e-005, 1.0000037, 1.00000381, 0.0002122226, 0.000331264047, -0.000212205035, 1, -5.0338338e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.475043952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-7.62939453e-006, 0.23740983, 1.42517662, 1.0000037, 0.000212217914, 0.00026858499, -0.000212183018, 1, -0.000126619299, -0.000268612115, 0.000126562343, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000213623047, -0.237773657, -3.20652294, -1.00000381, -0.000298526342, -0.00018225376, -0.000298518426, 1.00000024, -4.03278536e-005, 0.000182266042, -4.02738115e-005, -1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.00025177002, 2.73149014, -6.27040863e-005, -1.00000358, -0.000257540931, -0.000194888591, -0.000194882858, -2.33542669e-005, 1.00000358, -0.000257544743, 1, 2.33046667e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(3.05175781e-005, -0.237580061, 0.831332207, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0, 0.237597227, -0.831331253, 1.0000037, 0.000255377672, 0.000225418917, 0.000255343592, -1, 0.000147793966, 0.000225456941, -0.000147736369, -1.0000037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.475044042, 0.261274159, 0.237522006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.118864059, 0.000343322754, -1.40266609, 0.000232745078, -1, 3.81679929e-005, 1.00000358, 0.0002327533, 0.000194892811, -0.00019490195, 3.8123002e-005, 1.00000358))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.475043952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-1.78142262, -0.47504425, 0.356337547, 0.000265971787, -9.34521813e-005, -1.0000037, 1.00000358, 0.000255371677, 0.000265947572, 0.000255346094, -1, 9.35199205e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000122070313, 0.237564325, 3.2065382, -1.00000358, -0.000255381834, -0.000139096752, 0.000255384628, -1, -2.50091507e-005, -0.00013909064, -2.50440789e-005, 1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000282287598, -2.73148441, 0.000229597092, -1.00000381, -0.000318575214, -0.000194893772, 0.000194905995, -3.7681024e-005, -1.00000358, 0.000318567356, -1.00000024, 3.77427423e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(3.05175781e-005, -0.237946749, -9.1446209, -1.00000381, -0.000298526342, -0.00018225376, -0.000298518426, 1.00000024, -4.03278536e-005, 0.000182266042, -4.02738115e-005, -1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(1.52587891e-005, -0.237601042, 1.06884861, 1.0000037, 0.000212217914, 0.00026858499, -0.000212183018, 1, -0.000126619299, -0.000268612115, 0.000126562343, 1.0000037))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Hitbox",Vector3.new(0.237522021, 0.237521961, 5.93804932))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000411987305, -0.00035738945, 6.29435825, 1.0000037, 0.000255372986, 0.000225414231, -0.000255363178, 1, -4.03191989e-005, -0.000225424825, 4.02619953e-005, 1.0000037))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.00032043457, 4.36306e-005, 2.96901703, -1.0000037, -0.000255382474, -0.000225409574, 0.000255387393, -1, -2.50070079e-005, -0.000225403448, -2.50639805e-005, 1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.00025177002, 3.20654964, -4.55379486e-005, -1.00000358, -0.000257540931, -0.000194888591, -0.000194882858, -2.33542669e-005, 1.00000358, -0.000257544743, 1, 2.33046667e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.475044042, 0.237521961, 0.475043952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.11869216, 0, -1.42515659, 0.000232732127, -1, 9.92033893e-005, 1.0000037, 0.000232758335, 0.000255929743, -0.000255953055, 9.91439592e-005, 1.0000037))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000228881836, -0.237525463, -2.73149204, -1.00000358, -0.000212210027, -0.000182245145, -0.000212217506, 1, 4.58215218e-005, 0.000182235701, 4.58595241e-005, -1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000129699707, -0.2374897, 0.831339836, -1.0000037, -0.000298530562, -0.000268579635, -0.000298496045, 1.00000024, -0.000126638784, 0.000268617674, -0.000126558632, -1.0000037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000137329102, 0.237544298, -0.831316948, -1.0000037, -0.000255382445, -0.000225418888, 0.000255367864, -1, 6.1298022e-005, -0.000225434836, 6.12407457e-005, 1.0000037))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.30000001192093,0.19999998807907,"Toothpaste","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(0.000282287598, -0.00018119812, 9.38218307, -1.00000358, -0.000255381834, -0.000139096752, 0.000255384628, -1, -2.50091507e-005, -0.00013909064, -2.50440789e-005, 1.00000358))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(-0.000267028809, -3.20654964, 0.000241756439, -1.00000381, -0.000318575214, -0.000194893772, 0.000194905995, -3.7681024e-005, -1.00000358, 0.000318567356, -1.00000024, 3.77427423e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.237522021, 0.237521961, 0.237521976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1.0000037, 0.000212211395, 0.000268580334, -0.000212176499, 1, -0.000126614119, -0.000268607429, 0.000126557148, 1.0000037),CFrame.new(9.91821289e-005, -0.000140190125, 2.01896191, 1.00000358, 0.000255379127, 0.00031174015, -0.000255338964, 1, -0.000126630141, -0.000311772805, 0.000126550585, 1.0000037))

HandleSheath=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","HandleSheath",Vector3.new(0.27382499, 0.522756696, 7.71688461))
HandleSheathweld=weld(m,Character["Torso"],HandleSheath,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.655022621, 0.881320953, 0.26348114, 0.000490999897, 0.000594999874, -0.999999762, -0.18843396, 0.982085764, 0.000491819985, 0.982085705, 0.188433647, 0.000594322104))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.248931795, 0.497863561, 0.248931751))
Partweld=weld(m,HandleSheath,Part,CFrame.new(0, 0, 0, 0.000490999897, 0.000594999874, -0.999999762, -0.18843396, 0.982085764, 0.000491819985, 0.982085705, 0.188433647, 0.000594322104),CFrame.new(-3.23623657, 0.0121183395, -0.0123138428, -0.98207438, -0.188493073, -0.000608000206, -0.188493386, 0.98207432, 0.000528000004, 0.000497577072, 0.00063313928, -0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.21657069, 0.261378407, 3.84599495))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(5.47650003, 0.497863561, 0.248931751))
Partweld=weld(m,HandleSheath,Part,CFrame.new(0, 0, 0, 0.000490999897, 0.000594999874, -0.999999762, -0.18843396, 0.982085764, 0.000491819985, 0.982085705, 0.188433647, 0.000594322104),CFrame.new(-0.373420715, 0.0123081207, -0.0122480392, -0.98207438, -0.188493073, -0.000608000206, -0.188493386, 0.98207432, 0.000528000004, 0.000497577072, 0.00063313928, -0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(3.21619892, 0.159316391, 3.84599495))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.27382499, 0.522756696, 0.510310233))
Partweld=weld(m,HandleSheath,Part,CFrame.new(0, 0, 0, 0.000490999897, 0.000594999874, -0.999999762, -0.18843396, 0.982085764, 0.000491819985, 0.982085705, 0.188433647, 0.000594322104),CFrame.new(6.29425049e-005, -0.000170707703, 4.11382294, -0.000462999888, -0.000546999858, 0.999999762, 0.18836692, -0.982098639, -0.000449994026, 0.982098579, 0.188366652, 0.000557748135))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Toothpaste","Part",Vector3.new(0.248931795, 0.497863561, 0.248931751))
Partweld=weld(m,HandleSheath,Part,CFrame.new(0, 0, 0, 0.000490999897, 0.000594999874, -0.999999762, -0.18843396, 0.982085764, 0.000491819985, 0.982085705, 0.188433647, 0.000594322104),CFrame.new(2.48940277, 0.0126237869, -0.0125102997, -0.98207438, -0.188493073, -0.000608000206, -0.188493386, 0.98207432, 0.000528000004, 0.000497577072, 0.00063313928, -0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.21657069, 0.261378407, 3.84599495))

HandleCannon=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleCannon",Vector3.new(0.380853504, 0.465487719, 0.299818367))
HandleCannonweld=weld(m,Character["Left Arm"],HandleCannon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(-0.0349960327, 0.00903892517, -1.38847697, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005))
mesh("SpecialMesh",HandleCannon,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(1.13240445, 1.10278249, 5.35903311))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299818367, 0.846341252, 0.507804573))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(0.546882629, 0.41355896, -0.00118350983, 0.865929723, 0.500165999, -4.80155359e-005, 0.50016588, -0.865929902, 2.83071313e-005, -2.74212107e-005, -4.7741989e-005, -0.999999881))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.846853971, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299818367, 0.846341252, 0.423170537))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(0.57966423, 0.432435989, -0.00188446045, -0.000144000034, 0.499983549, -0.866035163, 0.000182999996, -0.866035104, -0.499982744, -1, -0.000230482023, 3.32121745e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.846853971, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299818367, 0.846341252, 0.338536382))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(-0.57763195, 0.431354523, -0.0142745972, 8.40085704e-005, -0.49997887, -0.86603713, 0.000198996524, -0.866037726, 0.499979317, -1, -0.00021434098, 2.67395135e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.846853971, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299818367, 0.299818367, 0.423170626))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(1.6304903, -0.621986389, 0.153175354, 0.000259000633, -1.00000024, 5.10206301e-005, -4.29957763e-005, -5.03085794e-005, -0.999999881, 1.00000012, 0.00025899848, -4.30089131e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.282284617, 0.282284617, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299818367, 2.28512096, 0.761707008))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(-0.528982162, 1.24835825, -0.00759887695, 3.09952957e-005, 2.72388133e-005, 0.999999881, 0.000214000916, -1.00000024, 2.79849282e-005, 1, 0.000214000072, -3.10011965e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.564569294, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299818367, 0.846341252, 0.592438817))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(-0.494949341, 0.383617401, 0.0411663055, 0.866149008, -0.49978596, -9.87100066e-007, -0.49978587, -0.866149127, 5.12359038e-005, -2.64841146e-005, -4.31224107e-005, -0.999999881))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.846853971, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299818367, 2.2851212, 0.761707008))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(0.486633301, 1.24845505, 0.000785827637, 3.09952957e-005, 2.72388133e-005, 0.999999881, 0.000214000916, -1.00000024, 2.79849282e-005, 1, 0.000214000072, -3.10011965e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.564569294, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.30000001192093,"Toothpaste","Part",Vector3.new(1.18487751, 0.592438877, 1.20804858))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(0.000869750977, 1.24849939, 0.0211935043, 1.00000012, 0.000259000721, -3.2994576e-005, 0.00025900203, -1.00000012, 4.09772474e-005, -3.29840368e-005, -4.02628866e-005, -0.999999821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.299818367, 0.299818367, 0.423170626))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(1.46092153, -0.622012138, 0.15750885, 0.000259000633, -1.00000024, 5.10206301e-005, -4.29957763e-005, -5.03085794e-005, -0.999999881, 1.00000012, 0.00025899848, -4.30089131e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.282284617, 0.282284617, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.18487751, 0.846341312, 1.20804846))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(0.000877380371, 1.96789289, 0.0212240219, 1.00000012, 0.000259000721, -3.2994576e-005, 0.00025900203, -1.00000012, 4.09772474e-005, -3.29840368e-005, -4.02628866e-005, -0.999999821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0.5,"Toothpaste","Part",Vector3.new(1.18487751, 0.423170626, 1.0156095))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(0.0209197998, -0.105600953, -0.0211791992, 1.00000012, 0.000259000721, -3.2994576e-005, 0.00025900203, -1.00000012, 4.09772474e-005, -3.29840368e-005, -4.02628866e-005, -0.999999821))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.18487751, 0.846341312, 1.20804846))
Partweld=weld(m,HandleCannon,Part,CFrame.new(0, 0, 0, -0.99999994, 0.000457996561, -9.09982045e-005, 9.10133022e-005, 3.37350612e-005, -0.999999881, -0.000457993418, -1.00000012, -3.30279108e-005),CFrame.new(0.000930786133, 0.529093742, 0.0211801529, 1.00000012, 0.000259000721, -3.2994576e-005, 0.00025900203, -1.00000012, 4.09772474e-005, -3.29840368e-005, -4.02628866e-005, -0.999999821))

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
