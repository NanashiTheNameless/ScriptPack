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

local TrailColor = ("Really black")
 
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.399999976, 5.19999981, 0.399999976))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, -5.69614329e-008, 5.96046448e-008, 5.69614222e-008, 0.999999881, 6.38557296e-008, -5.9604556e-008, -6.38557367e-008, 1),CFrame.new(0.00374984741, 1.86080933, -1.12269855, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(0.399999976, 5.79999971, 1.19999993))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(0, 4.58221436, 1.54972076e-006, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.549069703, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-1.7038269, -4.17234802, 0.521482468, -0.00134061801, -0.965925872, -0.258815825, 0.127585664, 0.256535649, -0.958076835, 0.991826713, -0.0343056135, 0.122894369))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366188102",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright blue","Part",Vector3.new(0.200000003, 0.505991995, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-0.0048789978, -6.39959717, -0.0483512878, -0.00134025724, -0.999999166, 3.77781362e-010, -1.4289509e-006, 1.52977009e-009, -1, 0.999999166, -0.00134026876, -1.42327076e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366190087",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.536077976, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-1.70379639, -4.74310303, -0.0496940613, -0.00134061789, -0.965925515, -0.258816719, 9.96684539e-005, 0.258816808, -0.965926409, 0.999999166, -0.00132074545, -0.000250696496))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366187724",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.366502315, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(6.41351318, 1.12187362, 0.0872383118, 1.4289509e-006, -1.83359816e-009, 1, 0.0450558141, 0.998984575, -6.22948448e-008, -0.998984516, 0.0450558215, 1.4219072e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366186808",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.272141635, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.68979645, 3.77229309, -0.443828583, -0.0013399038, -0.965925515, 0.258816719, -0.110641979, 0.257371128, 0.95995754, -0.99385941, -0.027349731, -0.107216768))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366189977",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright blue","Part",Vector3.new(0.34188652, 0.341886491, 0.341886491))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-0.0048789978, -5.64064026, -0.0483398438, -0.00134025724, -0.999999166, 3.77781362e-010, -1.4289509e-006, 1.52977009e-009, -1, 0.999999166, -0.00134026876, -1.42327076e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366190286",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.544283271, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.68979645, -4.18066406, 0.443828583, -0.0013399038, -0.965925515, 0.258816719, 0.110641979, -0.257371128, -0.95995754, 0.99385941, 0.027349731, 0.107216768))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366189509",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.50530827, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(5.83914185, 3.16908264, -0.0102233887, 1.33372578e-006, 0.258821219, 0.965925336, -0.00719921896, -0.965900242, 0.258814514, 0.999974191, -0.00695426436, 0.00186202815))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366188798",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.252995998, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(5.49203491, -4.05382919, 0.000431060791, 0.000857862935, -0.342018634, 0.939692795, 0.00978991855, -0.93964529, -0.342010289, 0.99995172, 0.00949290115, 0.00254225265))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366187331",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.536077976, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.68981552, -4.74194336, -0.0941734314, -0.0013399038, -0.965925515, 0.258816719, -0.00951948017, -0.258792907, -0.965885937, 0.999953866, -0.0037580065, -0.00884834584))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366189770",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.274876744, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-1.7038002, 3.76046753, -0.521482468, -0.00134061801, -0.965925872, -0.258815825, -0.127585664, -0.256535649, 0.958076835, -0.991826713, 0.0343056135, -0.122894369))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366188387",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.366502315, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(6.41294861, 1.11096418, -0.0871925354, 1.4289509e-006, -1.83359816e-009, 1, 0.0424318425, -0.999099433, -6.22238758e-008, 0.999099374, 0.0424318314, -1.42191016e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366188623",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.50530827, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(5.82444763, 3.1806221, -0.000411987305, 1.42099032e-006, -0.258821219, 0.965925217, -0.00982686318, 0.965878606, 0.258808762, -0.99995172, -0.00949237309, -0.00254203402))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366187079",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(6.12332153, -2.99322701, 0.0102005005, -0.000627051399, 0.173652589, 0.984806776, 0.00717565231, 0.984782457, -0.173643723, -0.999974132, 0.00695775915, -0.00186358555))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366189081",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 1.60000002, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, 2.92131805, -4.32131958, 1, 1.08324627e-007, -2.16275893e-007, 2.41579585e-007, -0.707107067, 0.707106471, -7.2315359e-008, -0.707106531, -0.707107067))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 0.400000006, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(4.49303436, 1.52587891e-005, 1.74960327, -7.96248685e-008, -0.707107067, 0.707106531, 1, -1.0280155e-007, 2.68496159e-008, 4.96882677e-008, 0.707106531, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00399995, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 0.400000006, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.74960327, 7.62939453e-006, 4.49303436, -7.96248685e-008, -0.707107067, 0.707106531, 1, -1.0280155e-007, 2.68496159e-008, 4.96882677e-008, 0.707106531, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00399995, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 1.39999998, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, -3.42132568, -1.92131042, 1, 1.30831239e-007, -1.86473642e-007, -3.53272753e-008, -0.70710665, -0.707106888, -2.36420846e-007, 0.707106888, -0.70710665))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 1.39999998, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, 3.42131805, -1.92132568, 1, -2.11684181e-007, -1.26868997e-007, -4.79209916e-008, -0.707106709, 0.707106829, -2.35375424e-007, -0.707106829, -0.707106709))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 0.400000006, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-1.72132874, 1.52587891e-005, 4.52131653, -5.63450442e-008, -0.707106948, -0.70710659, 1, -1.11538469e-007, 2.6172529e-008, -8.53239754e-008, -0.70710665, 0.707106948))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.19999993, 0.400000006, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(8.34465027e-007, 0, 3, -8.17520345e-007, -1, 2.68220816e-007, 1, -8.28883913e-007, -2.16275893e-007, 2.21957407e-007, 2.68220674e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.998000026, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 1.60000002, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, 2.92131042, 4.32132721, 1, -1.75202331e-007, 8.17472525e-008, 6.20649274e-008, 0.707106948, 0.70710665, -1.69638383e-007, -0.70710665, 0.707106948))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 0.400000006, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.72131348, 1.52587891e-005, 4.52132416, -7.96248685e-008, -0.707107067, 0.707106531, 1, -1.0280155e-007, 2.68496159e-008, 4.96882677e-008, 0.707106531, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.19999993, 0.400000006, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-2.12132263, 1.52587891e-005, 2.121315, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.19999993, 0.400000006, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-2.12132263, 0, 2.121315, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.779999971, 1.00399995, 0.779999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.19999993, 0.400000006, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(8.34465027e-007, -7.62939453e-006, 3, -8.17520345e-007, -1, 2.68220816e-007, 1, -8.28883913e-007, -2.16275893e-007, 2.21957407e-007, 2.68220674e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.779999971, 1.00399995, 0.779999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999917, 0.200000003, 0.399999917))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(2.93847656, -9.91821289e-005, -1.73847961, -4.14438972e-008, -0.707107246, -0.707106352, 1, -5.89601399e-008, -5.3324416e-009, -2.58680757e-008, -0.707106352, 0.707107306))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999917, 0.200000003, 0.399999917))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.73847961, -0.000129699707, -2.93849945, 3.30619088e-008, -0.707107186, -0.707106411, 1, 1.32102684e-008, 2.78642904e-008, 1.69039538e-009, -0.707106411, 0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 1.00399995, 0.75))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999917, 0.200000003, 0.399999917))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.73847961, -9.15527344e-005, -2.93849945, 3.30619088e-008, -0.707107186, -0.707106411, 1, 1.32102684e-008, 2.78642904e-008, 1.69039538e-009, -0.707106411, 0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999917, 0.200000003, 0.399999917))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(2.93847656, -0.000129699707, -1.73847961, -4.14438972e-008, -0.707107246, -0.707106352, 1, -5.89601399e-008, -5.3324416e-009, -2.58680757e-008, -0.707106352, 0.707107306))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 1.00399995, 0.75))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999917, 0.200000003, 0.399999917))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(2.87991333, -0.000137329102, -2.87993622, -4.14438972e-008, -0.707107246, -0.707106352, 1, -5.89601399e-008, -5.3324416e-009, -2.58680757e-008, -0.707106352, 0.707107306))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 1.00399995, 0.75))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999917, 0.200000003, 0.399999917))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(2.87991333, -9.91821289e-005, -2.87993622, -4.14438972e-008, -0.707107246, -0.707106352, 1, -5.89601399e-008, -5.3324416e-009, -2.58680757e-008, -0.707106352, 0.707107306))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.799999952, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-0.000102996826, -2.33849335, -2.83850098, 1, -1.75202388e-007, 2.60561166e-007, -6.43755129e-008, 0.707107186, 0.707106471, -2.96079065e-007, -0.707106411, 0.707107186))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.799999952, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-0.000106811523, 2.33850098, -2.83849335, 1, 1.2310764e-007, 2.00956563e-007, 4.29951967e-008, 0.70710659, -0.707107067, -2.33165792e-007, 0.707107067, 0.707106531))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.599999964, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-9.15527344e-005, -2.43848419, 1.83848572, 1, -2.11684238e-007, -1.26868997e-007, -4.79209774e-008, -0.70710659, 0.707107008, -2.35375509e-007, -0.707107067, -0.70710659))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.599999964, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-9.53674316e-005, 2.43848419, 1.83849335, 1, 8.66257324e-008, -1.86473642e-007, -6.65851871e-008, -0.707107067, -0.70710659, -2.05162905e-007, 0.70710659, -0.707107067))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.83848572, -9.15527344e-005, -1.83848572, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.83848572, -9.15527344e-005, -1.83848572, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.779999971, 1.00399995, 0.779999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Bright yellow","Part",Vector3.new(0.683773041, 0.683772981, 0.683772981))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-0.00487947464, -6.86695862, -0.788124084, -0.00134025724, -0.999999166, 3.77781362e-010, -0.11690025, 0.000156677488, -0.993143737, 0.993142784, -0.0013310794, -0.11690034))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=366190426",Vector3.new(0, 0, 0),Vector3.new(0.676935315, 0.676935256, 0.676935256))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 5))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(0, 0.100021601, -0.100006104, 1, -4.42883561e-008, 8.17472667e-008, 3.29249588e-008, 1, 0, -7.6065966e-008, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 5))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-7.62939453e-006, -0.0999908447, -0.100006104, 1, -4.42883561e-008, 8.17472667e-008, 3.29249588e-008, 1, 0, -7.6065966e-008, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(7.62939453e-006, -2.02130127, 3.42131042, 1, -3.71378803e-008, 2.21426184e-008, 2.98652765e-008, 0.707107127, -0.707106471, 6.58542376e-009, 0.707106471, 0.707107127))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.799999952, 0.400000006, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-1.72132874, 1.52587891e-005, 4.52131653, -5.63450442e-008, -0.707106948, -0.70710659, 1, -1.11538469e-007, 2.6172529e-008, -8.53239754e-008, -0.70710665, 0.707106948))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00199997, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(1.19999993, 0.400000006, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-2.12132263, -2.28881836e-005, 2.121315, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.540000021, 1.00600004, 0.540000021))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, 4.22131348, -2.82132721, 1, -5.14387608e-008, 8.17472667e-008, -8.21243304e-008, -0.707107127, 0.707106471, 2.54492676e-008, -0.707106471, -0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 1.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, -4.42131805, -2.92131805, 1, -5.7362314e-008, 2.00956563e-007, 1.05554292e-007, -0.70710659, -0.707107008, 1.70606626e-007, 0.707107008, -0.70710665))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, -1.82131195, -3.42131042, 1, -1.84917042e-008, 2.21426131e-008, 6.59936461e-009, -0.707106948, -0.70710665, 1.6680417e-008, 0.70710665, -0.707106948))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.799999952, 0.400000006, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.72131348, 1.52587891e-005, 4.52132416, -7.96248685e-008, -0.707107067, 0.707106531, 1, -1.0280155e-007, 2.68496159e-008, 4.96882677e-008, 0.707106531, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00199997, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 1.60000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, 4.42131805, -2.92131042, 1, -5.14387608e-008, 8.17472667e-008, -8.21243304e-008, -0.707107127, 0.707106471, 2.54492676e-008, -0.707106471, -0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.799999952, 0.400000006, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.8203125, -7.62939453e-006, 4.42233276, -7.96248685e-008, -0.707107067, 0.707106531, 1, -1.0280155e-007, 2.68496159e-008, 4.96882677e-008, 0.707106531, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.360000014, 1.00600004, 0.360000014))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, -1.82130432, 3.42131042, 1, -3.71378803e-008, 2.21426184e-008, 2.98652765e-008, 0.707107127, -0.707106471, 6.58542376e-009, 0.707106471, 0.707107127))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.90734863e-005, -2.02132416, -3.42131805, 1, -2.13717362e-006, 2.00956563e-007, -1.36509493e-006, -0.707106948, -0.70710665, 1.64125504e-006, 0.70710665, -0.707106888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 1.4000001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.52587891e-005, -4.22133636, -2.82131195, 1, -4.30616183e-008, 8.17472667e-008, 3.13728066e-008, -0.707106471, -0.707107067, 7.62007772e-008, 0.707107127, -0.707106471))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.860000014, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(1.19999993, 0.400000006, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-2.12132263, 1.52587891e-005, 2.121315, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00199997, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(1.19999993, 0.400000006, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(8.34465027e-007, -3.81469727e-005, 3, -8.17520345e-007, -1, 2.68220816e-007, 1, -8.28883913e-007, -2.16275893e-007, 2.21957407e-007, 2.68220674e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.540000021, 1.00600004, 0.540000021))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.799999952, 0.400000006, 0.799999952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(4.4223175, 7.62939453e-006, 1.82032013, -7.96248685e-008, -0.707107067, 0.707106531, 1, -1.0280155e-007, 2.68496159e-008, 4.96882677e-008, 0.707106531, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.360000014, 1.00600004, 0.360000014))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(1.19999993, 0.400000006, 1.19999993))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(8.34465027e-007, 0, 3, -8.17520345e-007, -1, 2.68220816e-007, 1, -8.28883913e-007, -2.16275893e-007, 2.21957407e-007, 2.68220674e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00199997, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.600000024, 0.400000006, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.83847046, -9.15527344e-005, -2.03849792, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00600004, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.800000012, 0.400000006, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-2.6000061, -9.91821289e-005, 0, 2.81561853e-007, 0, 1, 1, -2.43037192e-007, -2.75880552e-007, 2.31673781e-007, 1, -5.68434189e-014))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00600004, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.83848572, -9.15527344e-005, -1.83848572, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.00600004, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.600000024, 0.400000006, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.83848572, -9.91821289e-005, -1.63848877, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00600004, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.83848572, -4.57763672e-005, -1.83848572, 3.30619514e-008, -0.707107067, -0.70710659, 1, -7.31267136e-008, 1.1420137e-007, -1.204086e-007, -0.70710659, 0.707107067))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00199997, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.600000024, 0.400000006, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.83848572, -9.15527344e-005, 2.03847504, 3.49213707e-008, 0.707106709, -0.707106829, 1, -4.94104739e-008, 1.70204615e-008, -1.88853875e-008, -0.707106829, -0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00600004, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.800000012, 0.400000006, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.1920929e-007, -7.62939453e-006, -2.6000061, -4.80362132e-008, -1, -5.96046448e-008, 1, -5.93995821e-008, 2.00956563e-007, -1.95275234e-007, -5.96046448e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00600004, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-9.15527344e-005, -1.87385559, 2.50312805, 1, -5.4973583e-008, 2.21426237e-008, -4.24769979e-008, -0.707106471, 0.707107067, -1.91971878e-008, -0.707107067, -0.707106471))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.939999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-9.91821289e-005, -1.80315399, 2.50314331, 1, -5.4973583e-008, 2.21426237e-008, -4.24769979e-008, -0.707106471, 0.707107067, -1.91971878e-008, -0.707107067, -0.707106471))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.939999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.600000024, 0.400000006, 0.200000018))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.83849335, -9.91821289e-005, 1.63847351, 3.49213707e-008, 0.707106709, -0.707106829, 1, -4.94104739e-008, 1.70204615e-008, -1.88853875e-008, -0.707106829, -0.707106709))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1.00600004, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-9.15527344e-005, 1.87384033, 2.50312805, 1, -7.00857896e-008, 8.17472738e-008, 1.22637118e-008, -0.707107186, -0.707106352, 9.53098009e-008, 0.707106411, -0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.939999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(2.87991333, -0.000129699707, -2.77993774, -4.14438972e-008, -0.707107246, -0.707106352, 1, -5.89601399e-008, -5.3324416e-009, -2.58680757e-008, -0.707106352, 0.707107306))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00600004, 0.0599999987))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 0.399999917))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(2.93847656, -0.000129699707, -1.73847961, -4.14438972e-008, -0.707107246, -0.707106352, 1, -5.89601399e-008, -5.3324416e-009, -2.58680757e-008, -0.707106352, 0.707107306))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00199997, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-0.000106811523, 2.87386322, -2.27385712, 1, -3.36030155e-008, 2.21426184e-008, 2.73657292e-008, 0.70710659, -0.707107067, 4.08589074e-009, 0.707107008, 0.70710659))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.939999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-9.91821289e-005, 1.8031311, 2.50313568, 1, -7.00857896e-008, 8.17472738e-008, 1.22637118e-008, -0.707107186, -0.707106352, 9.53098009e-008, 0.707106411, -0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.939999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-0.000106811523, 2.80315399, -2.27384949, 1, -3.36030155e-008, 2.21426184e-008, 2.73657292e-008, 0.70710659, -0.707107067, 4.08589074e-009, 0.707107008, 0.70710659))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.939999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 0.399999917))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(2.87991333, -0.000137329102, -2.87993622, -4.14438972e-008, -0.707107246, -0.707106352, 1, -5.89601399e-008, -5.3324416e-009, -2.58680757e-008, -0.707106352, 0.707107306))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00199997, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-9.91821289e-005, -2.87384033, -2.27384949, 1, -1.84909084e-008, 8.1747288e-008, -4.87468412e-008, 0.707107186, 0.707106352, -5.88267284e-008, -0.707106411, 0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.939999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 1.00000012))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-0.000106811523, -2.8031311, -2.27385712, 1, -1.84909084e-008, 8.1747288e-008, -4.87468412e-008, 0.707107186, 0.707106352, -5.88267284e-008, -0.707106411, 0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.939999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 0.399999917))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(1.73847961, -0.000129699707, -2.93849945, 3.30619088e-008, -0.707107186, -0.707106411, 1, 1.32102684e-008, 2.78642904e-008, 1.69039538e-009, -0.707106411, 0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00199997, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-2.87993622, -0.000137329102, -2.77992249, -7.96248685e-008, -0.707106411, 0.707107246, 1, -1.08422427e-007, 2.12288125e-008, 5.76374362e-008, 0.707107186, 0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00600004, 0.0599999987))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(2.87993622, -0.00012588501, 2.9799118, -9.7821129e-009, 0.707106471, -0.707107186, 1, -9.19525149e-008, -8.87417357e-008, -1.23752272e-007, -0.707107186, -0.707106411))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00600004, 0.0599999987))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(2.87991333, -0.000129699707, -2.97993469, -4.14438972e-008, -0.707107246, -0.707106352, 1, -5.89601399e-008, -5.3324416e-009, -2.58680757e-008, -0.707106352, 0.707107306))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00600004, 0.0599999987))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.40000000596046,0,"New Yeller","Part",Vector3.new(0.683773041, 0.200000003, 2.73509192))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-6.61967468, 0.0208930969, 0.388954163, 1.99454848e-006, -0.500001967, -0.866024256, 1, 5.25948326e-006, -7.3434984e-007, 4.93469815e-006, -0.866024315, 0.500001967))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/sword.mesh",Vector3.new(0, 0, 0),Vector3.new(0.683773041, 0.683772981, 0.683772981))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.40000000596046,0,"New Yeller","Part",Vector3.new(0.683773041, 0.200000003, 2.73509192))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-6.49655151, -0.02085495, 0.328704834, -4.4098274e-006, 0.500002146, -0.866024196, -1, -5.25264568e-006, 2.04716162e-006, -3.53233304e-006, 0.866024196, 0.500002146))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/sword.mesh",Vector3.new(0, 0, 0),Vector3.new(0.683773041, 0.683772981, 0.683772981))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.40000000596046,0,"New Yeller","Part",Vector3.new(0.683773041, 0.200000003, 2.73509192))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-6.47428894, -0.0208587646, -3.10037637, -1.42895101e-006, -3.70694409e-007, -1, -1, -3.60905688e-006, 1.42327121e-006, -3.62042033e-006, 1, -3.70689264e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/sword.mesh",Vector3.new(0, 0, 0),Vector3.new(0.683773041, 0.683772981, 0.683772981))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.40000000596046,0,"New Yeller","Part",Vector3.new(0.683773041, 0.200000003, 2.73509192))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-4.83097839, 0.0208816528, -6.22212982, -3.97769418e-006, 0.500002563, -0.866023958, 1, 5.0941826e-006, -1.63966331e-006, 3.5988478e-006, -0.866023958, -0.500002503))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/sword.mesh",Vector3.new(0, 0, 0),Vector3.new(0.683773041, 0.683772981, 0.683772981))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.40000000596046,0,"New Yeller","Part",Vector3.new(0.683773041, 0.200000003, 2.73509192))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-4.71723938, -0.0208587646, -6.14561462, 1.47300841e-006, -0.500002384, -0.866024017, -1, -5.03130013e-006, 1.20483423e-006, -4.97232941e-006, 0.866024077, -0.500002384))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/sword.mesh",Vector3.new(0, 0, 0),Vector3.new(0.683773041, 0.683772981, 0.683772981))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.40000000596046,0,"New Yeller","Part",Vector3.new(0.683773041, 0.200000003, 2.73509192))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(-6.61105347, 0.0208778381, -3.10975885, -1.42895112e-006, 3.74361605e-007, -1, 1, 3.56889359e-006, -1.4232686e-006, 3.58025613e-006, -1, -3.74366721e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/sword.mesh",Vector3.new(0, 0, 0),Vector3.new(0.683773041, 0.683772981, 0.683772981))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright yellow","Part",Vector3.new(0.399999976, 0.399999976, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, -2.85937688e-007, -2.16275936e-007, 2.21957293e-007, 3.27825603e-007, 1, -2.74574262e-007, -1, 3.2782566e-007),CFrame.new(0, 3.30000305, -1.90734863e-006, -0.744700134, -0.667399347, -5.07537834e-008, 7.83254563e-008, -1.76896435e-008, -1, 0.667399347, -0.744700074, 6.92395261e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1.35000002, 1.35000002, 1.35000002))

function attackone()
attack = true
local con = Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,25,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-2),math.rad(-2),math.rad(80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
end
so("rbxassetid://199145887",Hitbox,1,1)
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*cf(0,0,0)
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
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(100)),.3)
end
attack = false
con:disconnect()
scfr = nil
end

function attacktwo()
attack = true
local con = Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,25,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(-2),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(20)),.3)
end
so("rbxassetid://199145913",Hitbox,1,1)
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*cf(0,0,0)
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
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-2),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, .3) * angles(math.rad(0), math.rad(-10), math.rad(70)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(60)),.3)
end
attack = false
con:disconnect()
scfr = nil
end

function attackthree()
attack = true
local con = Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,25,math.random(5,10),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=153092348",Torso,1,.8)
for i = 0,1,0.1 do 
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-2),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(0), math.rad(130), math.rad(80)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(40)),.3)
Torso.Velocity=Head.CFrame.lookVector*100
end
so("http://roblox.com/asset/?id=199145327",Torso,1,.9)
for i = 0,1,0.1 do 
swait()
local blcf = Hitbox.CFrame*cf(0,0,0)
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),-7*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.3) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
end
attack = false
con:disconnect()
scfr = nil
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

function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function attackfour()
attack = true
Humanoid.WalkSpeed = 0
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.1,-.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(10)),.3)
end
MagniDamage(Hitbox,LeftLeg,20,30,50,math.random(30,40),"Knockdown",true)
so("http://roblox.com/asset/?id=199145264",LeftLeg,1,1.1)	
so("http://roblox.com/asset/?id=200632561",LeftLeg,1,1)	
MagicWave(BrickColor.new("New Yeller"),cf(LeftLeg.Position),.7,.7,.7,.7,.7,.7,.05)
MagicWave(BrickColor.new("Really black"),cf(LeftLeg.Position),.6,.6,.6,.6,.6,.6,.05)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-10)),.3)
end
attack = false
Humanoid.WalkSpeed = 16
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
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

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
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

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
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

local n = 0

function Blast()
n=2
attack = true
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-2),math.rad(-2),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(10)),.3)
end
so("http://roblox.com/asset/?id=160772554",Torso,1,0.6) 
so("http://roblox.com/asset/?id=161006069",Torso,1,0.6) 
local charging=true
for _,c in pairs(workspace:children()) do
if c.className=="Model" then
if c:findFirstChild("Torso")~=nil and c:findFirstChild("Humanoid")~=nil and c.Name~="Vanta" then
print(c)
local Tors=c:findFirstChild("Torso")
coroutine.resume(coroutine.create(function(Part)
local ef=part(3,Character,"SmoothPlastic",0,0.5,BrickColor.new("Really black"),"Laser",vt(0.2,0.2,0.2))
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Head","",vt(0,0,0),vt(1,1,1))
game:GetService("Debris"):AddItem(ef,5)
while charging==true do
wait()
local TheHit=Part.Position
local MouseLook=cf((LeftArm.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(LeftArm.Position,MouseLook.lookVector,999,Character)
local mag=(LeftArm.Position-pos).magnitude 
ef.CFrame=CFrame.new((LeftArm.Position+pos)/2,pos)*euler(1.57,0,0)
emsh.Scale=vt(1,mag*5,1)
end
ef.Parent=nil
local TheHit=Part.Position
local MouseLook=cf((Torso.Position+TheHit)/2,TheHit)
wait()
local hit,pos = rayCast(Torso.Position,MouseLook.lookVector,999,Character)
local mag=(Torso.Position-pos).magnitude 
if hit~=nil then
Damagefunc(hit,hit,20,40,50,"Knockdown",RootPart,0)
MagicCircle(BrickColor.new("Really black"),cf(pos),5,5,5,6,6,6,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),5,5,5,7,7,7,0.02)
MagicCylinder(BrickColor.new("Really black"),CFrame.new((LeftArm.Position+pos)/2,pos)*euler(1.57,0,0),5,mag*5,5,0.5,0,0.5,0.01)
so("http://roblox.com/asset/?id=183763515",hit,1,1) 
so("http://roblox.com/asset/?id=183763512",hit,1,1) 
end
end),Tors)
end
end
end
wait(1)
n=2
--[[for i=0,1,0.2 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.4+0.2*i*n,0,0)
RW.C0=cf(1+0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.4+0.17*i*n,0,-1.2+2.77*i*n)
LW.C0=cf(-1-0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.6-0.03*i*n,0,1.4-2.97*i*n)
n=n-0.2
end]]--
charging=false
wait(1)
n=2
--[[for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i*n,0,1.57-1.37*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i*n,0,-1.57+1.37*i*n)
n=n-0.1
end]]--
attack = false
end

function PlaySound(id, pitch, parent, volume)
if volume == nil then volume=tonumber(1) end
        local epicsound = Instance.new("Sound")
        epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = volume
     epicsound.Pitch = pitch
  epicsound.Looped = false
  epicsound.Parent = parent
	 wait()
	 epicsound:Play()
	game:service'Debris':AddItem(epicsound, 8)
end

Shots = {263609809, 263609836, 263609864, 263609874, 263609898}

Shot = function(part)
local shot=math.random(1, #Shots)
PlaySound(Shots[shot], 1, part)
end

function CelestialStorm()
local n=2
attack = true
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-2),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(10)),.3)
end
for i=1,math.random(5,10) do
wait(.05)
MagicBlock(BrickColor.new("New Yeller"),LeftArm.CFrame*cf(0,-1,0),5,5,5,2,2,2,0.1)
local orb=part(3,Character,"SmoothPlastic",0,0.5,BrickColor.new("New Yeller"),"Orb",vt())
orb.Anchored=true
Shot(orb)
local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(10,10,10))
orb.CFrame=cf(Player:GetMouse().Hit.p+vt(math.random(-10,10),math.random(50,100),math.random(-10,10)))
MagicCircle(BrickColor.new("New Yeller"),orb.CFrame,10,10,10,1,1,1,0.1)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
wait(1)
Part.Parent=nil
local spread=vt((math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16)*(Part.Position-(Part.Position+vt(0,-1,0))).magnitude/100
local TheHit=Part.Position+vt(0,-1,0)
local MouseLook=cf((Part.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(Part.Position,MouseLook.lookVector,999,Character)
local mag=(Part.Position-pos).magnitude 
MagicCylinder(BrickColor.new("New Yeller"),CFrame.new((Part.Position+pos)/2,pos)*angles(1.57,0,0) ,1,mag*5,1,0.5,0,0.5,0.05)
MagicBlock(BrickColor.new("New Yeller"),Part.CFrame,8,8,8,0.5,0.5,0.5,0.1)
MagicBlock(BrickColor.new("New Yeller"),cf(pos),15,15,15,6,6,6,0.1)
MagicRing(BrickColor.new("New Yeller"),cf(pos)*euler(1.57,math.random(-100,100)/100,math.random(-100,100)/100),1,1,1,2,2,2,0.05)
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("New Yeller"),"Effect",vt())
ref.CFrame=cf(pos)
so("http://roblox.com/asset/?id=231917788",ref,1,1.4) 
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Parent=nil
end),ref)
MagniDamage(ref,ref,15,5,10,0,"Normal",RootPart)
if hit~=nil then
Damagefunc(ref,hit,20,40,1,"Knockdown",RootPart,0)
end
end),orb,omsh)
end
wait(0.5)
local n=2
for i=0,1,0.1 do
wait()
--[[Neck.C0=cf(0,1,0)*euler(0.4-0.6*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.14-3.14*i*n,0,0.3*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i*n,0,-0.3)
LW.C1=cf(0,0.5,0)*euler(0,0,0)]]
n=n-0.1
end
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
attacktype = 4
attackthree()
elseif attack == false and attacktype == 4 then
attacktype = 1
attackfour()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == 'q' then
CelestialStorm()
elseif attack == false and k == 'e' then
Blast()
end
end)


local sine = 0
local change = 1
local val = 0
local donum=0

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
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-10)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-2),math.rad(-2),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(10)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15)*math.cos(sine/13), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15)*math.cos(sine/13), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-10)),.3)
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