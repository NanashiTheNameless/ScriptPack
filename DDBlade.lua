--Made by KAITO_KIRO
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
w1.BrickColor = BrickColor.new("Institutional white")
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
w2.BrickColor = BrickColor.new("Institutional white")
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","handle",Vector3.new(0.400000006, 0.400000006, 2.20000005))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994874, 0, 0, 0, 1),CFrame.new(-0.758374214, 0.665901423, -0.105019093, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",handle,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.74000001, 0.74000001, 0.959999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Pearl","Part",Vector3.new(0.200000003, 0.200000003, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(1.04904175e-005, 0.0899972916, 6.06000233, -1, -0.000298770639, -1.4152457e-008, 0.000298770639, -1, 1.85732972e-007, -1.42079468e-008, 1.85728723e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.150000006, 0.899999976, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Pearl","Hitbox",Vector3.new(0.200000003, 0.400000006, 4))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, -3.57627869e-007, -3.56000185, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.150000006, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-4.76837158e-007, 9.53674316e-007, 1.08999634, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -0.96999836, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.5, 0.5, 0.959999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.01000118, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.600000024, 0.600000024, 0.50999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-0.170712471, 0.170712471, -1.51000333, 0.707312465, -0.70690316, 2.98023171e-008, -0.70690316, -0.707312465, -7.45063673e-008, 7.37483319e-008, 3.16319202e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.49000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0.170704365, -0.17071104, -1.51000333, 0.707312465, -0.70690316, 2.98023171e-008, -0.70690316, -0.707312465, -7.45063673e-008, 7.37483319e-008, 3.16319202e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.49000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-0.170713425, 0.170711994, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.49000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0.170715332, -0.170710564, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.49000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0.170704365, -0.17071104, -1.51000333, 0.707312465, -0.70690316, 2.98023171e-008, -0.70690316, -0.707312465, -7.45063673e-008, 7.37483319e-008, 3.16319202e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.600000024, 0.495000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-0.170713425, 0.170711994, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.600000024, 0.495000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-0.170712471, 0.170712471, -1.51000333, 0.707312465, -0.70690316, 2.98023171e-008, -0.70690316, -0.707312465, -7.45063673e-008, 7.37483319e-008, 3.16319202e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.600000024, 0.495000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-0.170713425, 0.170711994, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810000002, 0.810000002, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0.170715332, -0.170710564, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810000002, 0.810000002, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0.170704365, -0.17071104, -1.51000333, 0.707312465, -0.70690316, 2.98023171e-008, -0.70690316, -0.707312465, -7.45063673e-008, 7.37483319e-008, 3.16319202e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810000002, 0.810000002, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0.170715332, -0.170710564, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.600000024, 0.495000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-0.170712471, 0.170712471, -1.51000333, 0.707312465, -0.70690316, 2.98023171e-008, -0.70690316, -0.707312465, -7.45063673e-008, 7.37483319e-008, 3.16319202e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810000002, 0.810000002, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810000002, 0.810000002, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.75999999, 0.75999999, 0.959999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-4.76837158e-007, 9.53674316e-007, 0.300003052, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.75999999, 0.75999999, 0.959999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-4.76837158e-007, 9.53674316e-007, 0.900001526, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.75999999, 0.75999999, 0.959999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -0.299998283, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.75999999, 0.75999999, 0.959999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-4.76837158e-007, 9.53674316e-007, 0.599998474, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.75999999, 0.75999999, 0.959999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.50999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.200000003, 0.200000003, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000309, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.0299999993, 0.600000024, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-9.53674316e-007, 1.28000379, 0.131719112, -0.706890166, -0.707325459, -7.00354633e-007, -7.98286237e-007, -1.92352729e-007, 1, -0.707325459, 0.706890166, -4.2867461e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 1.20000005, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-1.90734863e-006, 1.29000783, 0.159997821, 0.99999994, 0.000299277192, -4.03083277e-007, 4.03099023e-007, -5.25620685e-008, 1, 0.000299277221, -1, -5.26827044e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.0299999993, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-3.33786011e-006, 1.28000331, 0.160001755, 0.000298437197, -1, -6.49640924e-007, -4.01389116e-007, -6.49760693e-007, 1, -1, -0.000298437197, -4.01583009e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.0299999993, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-9.53674316e-007, -1.29000759, 0.160004616, 1, 0.000296356593, 1.66819416e-006, 1.66813425e-006, 2.02194087e-007, -1, -0.000296356593, 1, 2.0169972e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.0299999993, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-2.98023224e-008, 0, -1.51000285, 0.259103209, -0.965849638, -2.43478695e-008, -0.965849638, -0.259103209, 1.94292014e-008, -2.50742964e-008, 1.84822131e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.00999999978, 0.699999988, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, -1.1920929e-007, -1.51000333, 1, 0.000298770639, 7.37575547e-008, 0.000298770639, -1, -3.98630178e-008, 7.37456389e-008, 3.98850517e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.0299999993, 0.839999974, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000309, -0.2585302, -0.966003239, 4.52830307e-009, -0.966003299, 0.2585302, 4.66956109e-008, -4.62788172e-008, 7.69787079e-009, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.00999999978, 0.699999988, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000333, 0.500252426, -0.865881324, 6.15431439e-009, -0.865881383, -0.500252545, -1.57115672e-008, 1.6683062e-008, 2.53084376e-009, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.00999999978, 0.620000005, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000333, 0.866171956, -0.499749094, 2.26325767e-008, -0.499749124, -0.866172075, -1.54488635e-008, 2.73242584e-008, 2.07076334e-009, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.00999999978, 0.620000005, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000285, -0.499734759, -0.866180182, 1.43536738e-008, -0.866180301, 0.499734819, 2.20713279e-008, -2.62907758e-008, -1.40305889e-009, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.00999999978, 0.620000005, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000309, -0.865873158, -0.500266671, -8.10240153e-010, -0.500266731, 0.865873098, -6.15434104e-009, 3.7803769e-009, -4.92354246e-009, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.00999999978, 0.620000005, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000309, 0.000298914005, -1, 2.34620079e-009, -1, -0.000298914034, -1.41524428e-008, 1.41531427e-008, -2.34197017e-009, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.0299999993, 0.839999974, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 4.47034836e-008, -1.51000309, -0.965847313, -0.259112269, 4.92315024e-008, -0.259112269, 0.965847313, 3.17988409e-008, -5.57895738e-008, 1.79563369e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.00999999978, 0.699999988, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, -4.76837158e-007, -1.51000309, 0.707312405, -0.706903219, 2.98023153e-008, -0.706903219, -0.707312405, -5.96052061e-008, 6.32146495e-008, 2.10921502e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.0299999993, 0.620000005, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-9.53674316e-007, -1.29000759, 0.160004616, 1, 0.000296356593, 1.66819416e-006, 1.66813425e-006, 2.02194087e-007, -1, -0.000296356593, 1, 2.0169972e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 1.20000005, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-2.50339508e-006, -1.29000783, 0.159993649, 0.000298437197, -1, 4.54213307e-007, 7.38960466e-008, -4.54191252e-007, -1, 1, 0.000298437197, 7.37605035e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 1.20000005, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.51000285, -0.96600318, 0.258530378, 1.0630022e-007, 0.258530378, 0.96600318, 1.78234654e-008, -9.80784449e-008, 4.46993589e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, -0.00200000009),Vector3.new(0.00999999978, 0.699999988, 0.529999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-3.33786011e-006, 1.28000331, 0.160001755, 0.000298437197, -1, -6.49640924e-007, -4.01389116e-007, -6.49760693e-007, 1, -1, -0.000298437197, -4.01583009e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 1.20000005, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-1.90734863e-006, 1.29000783, 0.159997821, 0.99999994, 0.000299277192, -4.03083277e-007, 4.03099023e-007, -5.25620685e-008, 1, 0.000299277221, -1, -5.26827044e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 1.20000005, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(0, 0, -1.01000118, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.50999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-1.00135803e-005, -1.29000735, 0.131716251, 0.707310736, -0.706904888, 1.62422623e-006, 1.29611203e-006, -1.00080945e-006, -1, 0.706904888, 0.707310736, 2.08344062e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 1.20000005, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(6.19888306e-006, -1.29000759, 0.131710052, -0.706890106, -0.707325518, 4.47034779e-007, -2.79956112e-007, -3.52225243e-007, -1, 0.707325518, -0.706890106, 5.09642852e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 1.20000005, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-3.33786011e-006, 1.29000735, 0.131717682, 0.707312644, -0.706902981, -4.91738319e-007, 2.97979739e-007, -3.97473116e-007, 1, -0.706902981, -0.707312644, -7.04947851e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 1.20000005, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-6.67572021e-006, 1.27999997, 0.160003662, -0.706890166, -0.707325459, -7.00354633e-007, -7.98286237e-007, -1.92352644e-007, 1, -0.707325459, 0.706890166, -4.28674724e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.0299999993, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-6.19888306e-006, 1.29000735, 0.160003662, 0.707312644, -0.706902981, -4.91738319e-007, 2.97979739e-007, -3.97473116e-007, 1, -0.706902981, -0.707312644, -7.04947851e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.0299999993, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-3.33786011e-006, -1.29000735, 0.160000324, 0.707310736, -0.706904888, 1.65402855e-006, 1.30139119e-006, -1.03768627e-006, -1, 0.706904888, 0.707310736, 1.85992647e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.0299999993, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(4.76837158e-006, -1.29000759, 0.159996033, -0.706890106, -0.707325518, 4.47034779e-007, -2.79956055e-007, -3.52225271e-007, -1, 0.707325518, -0.706890106, 5.09643705e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.0299999993, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-4.76837158e-007, 9.53674316e-007, 1.08999634, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.600000024, 0.50999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(-2.50339508e-006, -1.29000783, 0.159993649, 0.000298437197, -1, 4.54213307e-007, 7.38960466e-008, -4.54191252e-007, -1, 1, 0.000298437197, 7.37605035e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.0299999993, 0.0299999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-007, 2.26979995, -2.26983905, -1, -0.000298770639, -1.4152457e-008, -0.000211273946, 0.707110763, 0.707102776, -0.000211251521, 0.707102776, -0.707110822))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.0599999987, 1.36000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 1.98695636, -1.98699224, -1, -0.000298770639, -1.4152457e-008, -0.000211273946, 0.707110763, 0.707102776, -0.000211251521, 0.707102776, -0.707110822))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.0599999987, 1.36000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 2.55263519, -2.55267763, -1, -0.000298770639, -1.4152457e-008, -0.000211273946, 0.707110763, 0.707102776, -0.000211251521, 0.707102776, -0.707110822))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.0599999987, 1.36000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 2.12837481, -2.12841225, -1, -0.000298770639, -1.4152457e-008, -0.000211273946, 0.707110763, 0.707102776, -0.000211251521, 0.707102776, -0.707110822))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.0599999987, 1.36000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 2.6940589, -2.69410276, -1, -0.000298770639, -1.4152457e-008, -0.000211273946, 0.707110763, 0.707102776, -0.000211251521, 0.707102776, -0.707110822))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.0599999987, 1.36000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, -9.53674316e-006, -1.61000156, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.910000026, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.80000001192093,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 1.1920929e-006, -2.54999828, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.910000026, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.60000002384186,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 1.1920929e-006, -2.22999287, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.910000026, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 1.1920929e-006, -2.08999348, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.910000026, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.10000002384186,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 1.1920929e-006, -1.71999836, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.910000026, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.89999997615814,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(1.71661377e-005, 1.07288361e-006, -2.739995, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.910000026, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.30000001192093,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 1.1920929e-006, -1.8399992, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.910000026, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 1.1920929e-006, -1.95999622, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.910000026, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.69999998807907,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 1.1920929e-006, -2.3799963, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.910000026, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 3.60000014))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-007, -9.65595245e-006, -3.31000209, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 0.100015044, 5.91000271, -1, -0.000298770639, 1.34186394e-006, 0.000298770639, -1, 9.63269216e-008, 1.34183506e-006, 9.6727824e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 3.11831951, -3.11836815, -1, -0.000298770639, -1.4152457e-008, -0.000211273946, 0.707110763, 0.707102776, -0.000211251521, 0.707102776, -0.707110822))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.0599999987, 1.36000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-007, 2.97690248, -2.97694969, -1, -0.000298770639, -1.4152457e-008, -0.000211273946, 0.707110763, 0.707102776, -0.000211251521, 0.707102776, -0.707110822))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.0599999987, 1.36000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 2.83547997, -2.83552551, -1, -0.000298770639, -1.4152457e-008, -0.000211273946, 0.707110763, 0.707102776, -0.000211251521, 0.707102776, -0.707110822))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.0599999987, 1.36000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 2.41121674, -2.41125751, -1, -0.000298770639, -1.4152457e-008, -0.000211273946, 0.707110763, 0.707102776, -0.000211251521, 0.707102776, -0.707110822))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.0599999987, 1.36000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(5.7220459e-006, -0.0999906063, 4.81000566, -1, -0.000298770639, 1.34186394e-006, 0.000298770639, -1, 9.63269216e-008, 1.34183506e-006, 9.6727824e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(7.62939453e-006, 9.89437103e-006, 5.31000233, -1, -0.000298770639, 1.34186394e-006, 0.000298770639, -1, 9.63269216e-008, 1.34183506e-006, 9.6727824e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 4.20000029))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, -0.100016236, -3.61000133, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 3.00000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(9.53674316e-006, 0.0999947786, -3.01000309, -1, -0.000298770639, -1.4152457e-008, -0.000298770639, 1, -9.63270068e-008, 1.41812357e-008, -9.6322772e-008, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.159999996, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Pearl","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, -0.706889808, -0.707325816, -2.37656984e-016, -0.707325816, 0.706889808, -2.72852357e-035, 1.23851543e-016, 1.23927789e-016, -1),CFrame.new(2.86102295e-006, -0.0899988413, 5.86000156, -1, -0.000298770639, -1.4152457e-008, 0.000298770639, -1, 1.85732972e-007, -1.42079468e-008, 1.85728723e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.150000006, 0.899999976, 1))

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

HandleSheathe=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleSheathe",Vector3.new(0.200000003, 0.400000006, 5.4000001))
HandleSheatheweld=weld(m,Character["Torso"],HandleSheathe,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994993, 0, 0, 0, 1),CFrame.new(-0.47948885, 0.0231413841, -0.372282982, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0))
mesh("BlockMesh",HandleSheathe,"","",Vector3.new(0, 0, -0.00100000005),Vector3.new(0.800000012, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 5.4000001))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, 8.10623169e-006, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.64140439, 0.00237417221, 0, 0, 1, -0.521158814, -0.853459716, 0, 0.853459716, -0.521158814, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.300000012, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.55078983, 0.685926437, 0, 0, 1, -0.282514036, -0.959263146, 0, 0.959263146, -0.282514036, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.08000004, 0.400000006, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.86607623, 1.86943388, 0, 0, 1, 0.23497206, -0.972002208, 0, 0.972002208, 0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 0.720000029, 0.720000029))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.28633738, 1.32275629, 0, 0, 1, -0.0246080048, -0.999697208, 0, 0.999697208, -0.0246080048, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.519999981, 0.519999981))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.134349585, 0.289924145, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.629999995, 0.629999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.54857218, 1.70412493, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.629999995, 0.629999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.35057604, 1.19500494, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.629999995, 0.629999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, 0.572748661, -0.417183876, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.629999995, 0.629999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.64348197, 0.487906456, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.629999995, 0.629999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, 0.0636363029, -0.219212532, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.629999995, 0.629999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.841456175, 0.997021198, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.629999995, 0.629999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.2599833, 0.0500040054, 0, 0, -1, -0.521158814, -0.853459716, 0, -0.853459716, 0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.00499999989),Vector3.new(1.01999998, 0.800000012, 0.449999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, 0.770748496, -0.926301956, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.629999995, 0.629999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.25998688, 0.0499887466, 0, 0, 1, -0.521158814, -0.853459716, 0, 0.853459716, -0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.00499999989),Vector3.new(1.01999998, 0.800000012, 0.449999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.400000006, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.21996212, 0.0300107002, 0, 0, -1, -0.521158814, -0.853459716, 0, -0.853459716, 0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.02499998, 0.600000024, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.64140439, 0.00237417221, 0, 0, 1, -0.521158814, -0.853459716, 0, 0.853459716, -0.521158814, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.11000001, 0.300000012, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.400000006, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.21999311, 0.0299911499, 0, 0, 1, -0.521158814, -0.853459716, 0, 0.853459716, -0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.02499998, 0.600000024, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.0299611092, 2.60000229, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.005, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.0300388336, 2.59999752, 0, 0, -1, 0.853464603, -0.521150768, 0, -0.521150768, -0.853464603, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.005, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.0300078392, 2.29998899, 0, 0, -1, -0.853464603, 0.521150768, 0, 0.521150768, 0.853464603, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.005, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.029999733, 2.29998302, 0, 0, 1, 0.853464603, -0.521150768, 0, 0.521150768, 0.853464603, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.005, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.400000006, 4.60000038))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, 1.38282776e-005, 0.199996471, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.005, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 1))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.09672546e-005, -1.79999304, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.141419888, 0.282840252, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.636410832, 0.494980812, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, 0.777803659, -0.919229984, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.55564058, 1.6970582, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.8485291, 0.98994875, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.59999704, -0.100004673, 0, 0, -1, 0.521158814, 0.853459716, 0, 0.853459716, -0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 4.5999999))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.0999894142, 0.200005531, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.3435024, 1.20208311, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, 0.0707153082, -0.2121315, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.59998941, -0.0999932289, 0, 0, 1, 0.521158814, 0.853459716, 0, -0.853459716, 0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, 0.565685391, -0.424254894, 0, 0, 1, -0.23497206, 0.972002208, 0, -0.972002208, -0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 4.5999999))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, 0.100010395, 0.199995995, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.29997611, 0.0500164032, 0, 0, -1, -0.521158814, -0.853459716, 0, -0.853459716, 0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.685966015, -2.55077887, 0, 0, 1, -0.959267616, 0.282498896, 0, -0.282498896, -0.959267616, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.07000005, 0.479999989, 0.479999989))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.00239944458, -2.64140463, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.09000003, 0.379999995, 0.379999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.32278585, -2.28631997, 0, 0, 1, -0.999697506, 0.0245949887, 0, -0.0245949887, -0.999697506, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.600000024, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.86607623, 1.86943388, 0, 0, 1, 0.23497206, -0.972002208, 0, 0.972002208, 0.23497206, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.800000012, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.12187314, -1.0577054, 0, 0, -1, -0.0246080048, -0.999697208, 0, -0.999697208, 0.0246080048, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.200000003, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.40646172, 0.211781502, 0, 0, 1, -0.521158814, -0.853459716, 0, 0.853459716, -0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.200000003, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.03611207, 1.4662714, 0, 0, 1, -0.0246080048, -0.999697208, 0, 0.999697208, -0.0246080048, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.200000003, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.12530613, -1.05176783, 0, 0, 1, -0.878063679, -0.478543818, 0, 0.478543818, -0.878063679, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.200000003, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.40645671, 0.214931965, 0, 0, -1, -0.521158814, -0.853459716, 0, -0.853459716, 0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.200000003, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.03452969, 1.46898675, 0, 0, -1, -0.878063679, -0.478543818, 0, -0.478543818, 0.878063679, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.200000003, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.11445045, 2.42006826, 0, 0, -1, -0.999697506, 0.0245949887, 0, 0.0245949887, 0.999697506, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.200000003, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.11713958, 2.4185133, 0, 0, 1, 0.478539169, -0.878066301, 0, 0.878066301, 0.478539169, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.200000003, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.29999256, 0.049987793, 0, 0, 1, -0.521158814, -0.853459716, 0, 0.853459716, -0.521158814, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.14536762, -0.877007008, 0, 0, -1, -0.0246080048, -0.999697208, 0, -0.999697208, 0.0246080048, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.27534819, 0.91332221, 0, 0, -1, -0.724288762, -0.689496756, 0, -0.689496756, 0.724288762, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.970000029, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.57492399, 2.07987404, 0, 0, -1, -0.971999764, -0.234981939, 0, -0.234981939, 0.971999764, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000018))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.14538002, -0.877015948, 0, 0, 1, -0.878063679, -0.478543818, 0, 0.478543818, -0.878063679, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -2.2753613, 0.913320065, 0, 0, 1, -0.282514036, -0.959263146, 0, 0.959263146, -0.282514036, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.970000029, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -1.57489944, 2.07988501, 0, 0, 1, 0.23497206, -0.972002208, 0, 0.972002208, 0.23497206, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.980000019, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.447159052, 2.77529073, 0, 0, 1, 0.689497352, -0.724288344, 0, 0.724288344, 0.689497352, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.447195053, 2.7752862, 0, 0, -1, -0.959267378, 0.282500088, 0, 0.282500088, 0.959267378, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.0999827385, 2.99998784, 0, 0, 1, 0.853464603, -0.521150768, 0, 0.521150768, 0.853464603, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, 0, 0, 1, -0.853464603, 0.521150768, 0, -0.521150768, -0.853464603, 0),CFrame.new(0, -0.100019932, 2.99999213, 0, 0, -1, -0.853464603, 0.521150768, 0, 0.521150768, 0.853464603, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))


local Lite = it("PointLight",Torso)
Lite.Color = Color3.new(255, 255, 0)
Lite.Range = 8
Lite.Brightness = 10
Lite.Shadows = true

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part("Custom",workspace,"Neon",0,0,"Institutional white","Effect",vt(0.5,0.5,0.5))
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
--BreakEffect(BrickColor.new("Institutional white"),Hitbox.CFrame,0.5,math.random(5,20),0.5)

function attackone()
        attack=true
        local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,120,120,math.random(10,20),"Normal",RootPart,.2,1) end) 
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
        so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,1) 
        so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,1) 
        hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=220833976',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("Institutional white"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
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
        attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,120,120,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(120), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.5) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-5),math.rad(60),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-.8,-1,-.5)*angles(math.rad(0),math.rad(-140),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0 = clerp(handleweld.C0,cf(0,0,0)* angles(math.rad(4),math.rad(0),math.rad(0)),.3)
end
so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,1)
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
handleweld.C0 = clerp(handleweld.C0,cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*50
end
Humanoid.Jump = true
for i=0,0.6,.5 do
swait()
so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,1) 
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
handleweld.C0 = clerp(handleweld.C0,cf(0,0,0)* angles(math.rad(50),math.rad(0),math.rad(0)),.3)
end
end
attack = false
scfr = nil
con:disconnect()
end

function Stab()
attack=true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,120,120,math.random(10,20),"Normal",RootPart,.2,1) end) 
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
                        so('http://roblox.com/asset/?id=220833976',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("Institutional white"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                        hitconasdf:disconnect()
                end
        end)
so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,.9)
so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,.9) 
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
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,120,120,math.random(10,20),"Normal",RootPart,.2,1) end)
hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=220833976',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("Institutional white"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                        hitconasdf:disconnect()
                end
        end) 
for i=0,1,1 do
so("http://roblox.com/asset/?id=260433850",Hitbox,1,1)
so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,1) 
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
        local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,120,120,math.random(10,20),"Normal",RootPart,.2,1) end) 
        hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=220833976',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("Institutional white"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
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
        so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,1) 
        so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,1) 
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
        so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,.9) 
        so("http://www.roblox.com/asset/?id=260433850",Hitbox,1,.9) 
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
so("http://www.roblox.com/asset/?id=130785407",Hitbox,1,.9) 
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
so("http://www.roblox.com/asset/?id=130785407",Hitbox,1,.9) 
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


mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=='q' then
                if attack==false and CurrentMode == "Unsheathed" then
                        Stab()
                end
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
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
local cn = CFrame.new
local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)

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
if attack==false and Sit == false and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and Sit == false and CurrentMode == "Unsheathed" then
--[[Neck.C0=clerp(Neck.C0,necko*angles(math.rad(-10),0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*angles(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(15),0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(0,0,0.1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),0,math.rad(45)),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(15),math.rad(90),0),.3)
RH.C1=clerp(RH.C1,RHC1,.3)
LH.C0=clerp(LH.C0,cf(1,-.5,0)*angles(math.rad(15),math.rad(-90),0),.3)
LH.C1=clerp(LH.C1,LHC1,.3)]]
idleanim=.4
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5-idleanim)*euler(0.4+(idleanim/2),0,-0.4),.3)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-idleanim/2,0,0.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-25),math.rad(-35),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-idleanim)*euler(-0.2-(idleanim/2),1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5+idleanim,0)*euler(0.5+(idleanim/2),-1.2,0)*euler(-.2,0,0),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-5)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
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
change=2
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(2 * math.cos((sine) / 7))), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.cos((sine) / 23)), math.rad(0), math.rad(-2 * math.cos((sine) / 7))), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(0), math.rad(110), math.rad(205)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30 * math.cos((sine) / 10)), math.rad(0), math.rad(-5)), 0.3)
RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos((sine) / 8) / 2, -0.03 + math.sin((sine) / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin((sine) / 8)), 0.3)
LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos((sine) / 8) / 2, -0.03 - math.sin((sine) / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin((sine) / 8)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(23), math.rad(-20), math.rad(0)), 0.3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
idleanim=-1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0.4,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-35),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(35),math.rad(-45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0.5,-1.57,0)*euler(0,0,0),.3)
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