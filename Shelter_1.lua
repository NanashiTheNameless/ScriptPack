--Made by KAITO_KIRO, AureIion_sol.
--Special thanks to iAmAura for the music spectrum.
--Raw paste link for current version : https://gist.githubusercontent.com/anonymous/943de42400f4bf3503daccef2e658f18/raw/5a824d715ff27d8b86c98195345b4e2ca0f48e34/gistfile1.txt
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Character.Head.face.Texture = "rbxassetid://0"
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
char = Character
for i,v in ipairs(Character:children'') do
    if v:IsA("Hat") then
        v:Remove()
    end
	if v.ClassName == 'Hat' then
		v:Remove()
	end
	if v.ClassName == 'Accessory' then
		v:Remove()
	end
	if v:IsA'Accessory' then
		v:Remove()
	end
end
for i,v in pairs(char:children'') do
if v:IsA'Shirt' then
v:Remove()
end
if v:IsA'Pants' then
v:Remove()
end
char:WaitForChild'Body Colors'
char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Really black")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftLegColor = BrickColor.new("Really black")
char["Body Colors"].RightLegColor = BrickColor.new("Really black")
Hat = Instance.new("Model")
Hat.Parent = Character
Hat.Name = "Hat"
rh = Instance.new("Part")
rh.Parent = Hat
rh.BrickColor = BrickColor.new("Really black")
rh.Locked = true
rh.CanCollide = false
mesh = Instance.new("SpecialMesh")
rh.formFactor =  "Symmetric"
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://167549828"
mesh.Parent = rh
local weld = Instance.new("Weld")
weld.Parent = rh
weld.Part0 = rh
weld.Part1 =Character.Head
weld.C0 = CFrame.new(0, -0.35, 0)*CFrame.Angles(0, 0, 0)
mesh.Scale = Vector3.new(1.0,1.0, 1.0)
Hat1 = Instance.new("Model")
Hat1.Parent = Character
Hat1.Name = "Hat"
rh1 = Instance.new("Part")
rh1.Parent = Hat1
rh1.BrickColor = BrickColor.new("Really black")
rh1.Locked = true
rh1.CanCollide = false
mesh1 = Instance.new("SpecialMesh")
rh1.formFactor =  "Symmetric"
mesh1.MeshType = "FileMesh"
mesh1.MeshId = "rbxassetid://167549828"
mesh1.Parent = rh1
local weld1 = Instance.new("Weld")
weld1.Parent = rh1
weld1.Part0 = rh1
weld1.Part1 =Character.Head
weld1.C0 = CFrame.new(0, -0.3, 0)*CFrame.Angles(0, 0, 0)
mesh1.Scale = Vector3.new(1.0,1.0, 1.0)
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
w1.BrickColor = BrickColor.new("White")
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
w2.BrickColor = BrickColor.new("White")
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","HandleHoodie",Vector3.new(0.310000032, 0.200000003, 0.300000042))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(0.97002399, -0.112449646, -0.0639343262, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000453, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Mid gray","Hitbox",Vector3.new(0.75, 6.57999992, 0.200000003))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.0166996717, -4.50009918, -0.00540161133, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.0500000045, 1, 0.450000018))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.49980164, -0.40812397, -0.00491333008, -0.00187699974, -0.167490989, -0.985871851, 0.0110449996, 0.985809922, -0.167501494, 0.999937236, -0.0112033542, -4.27065089e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.0747818947, -1.37517548, -0.00484466553, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000066, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.200000003, 1.09050035, 0.330000013))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-5.96046448e-006, -2.19963837, -0.00484466553, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.950000048, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.390000015, 1.5600003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-4.88758087e-005, -1.89990234, 0.00514221191, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.550000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.330000013))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-5.78761101e-005, -0.804878235, -0.00492095947, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0500000045, 0.800000072, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.271591187, -1.29917908, -0.00495147705, -0.0108060027, -0.964178264, -0.265035063, 0.00296599395, 0.265018493, -0.964238763, 0.999937236, -0.0112056592, -4.04378807e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000066, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.695175171, -1.43777466, -0.00491333008, -0.00966699515, -0.862497568, -0.50596875, 0.00567400036, 0.50593698, -0.862551808, 0.999937236, -0.0112091517, 2.92123309e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.250000089, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.338888168, 1.12273407, -0.00486755371, 0.0105040008, 0.937348127, 0.348236024, -0.00390800135, -0.34821412, 0.937406957, 0.999937236, -0.0112074288, 5.51621315e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.170578, -0.297786713, -0.00492095947, -0.00187699974, -0.167490989, -0.985871851, 0.0110449996, 0.985809922, -0.167501494, 0.999937236, -0.0112033542, -4.27065089e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.46807861, -0.316619873, -0.00495147705, -0.00295399921, -0.263803929, 0.964571774, -0.0108070029, -0.964511275, -0.263820499, 0.999937236, -0.0112034548, -1.76409844e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.650000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.624176025, -1.47100067, -0.00497436523, -0.0105540035, -0.941333354, 0.337313116, -0.00377799966, -0.337291986, -0.941392481, 0.999937236, -0.0112098297, 3.42376143e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.250000089, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.30181885, 0.605491638, -0.00490570068, 0.00564600015, 0.504061997, -0.863649011, 0.00968299713, 0.86359477, 0.504093647, 0.999937236, -0.0112088239, -4.97478322e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000072, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.46491241, -0.482786179, -0.00492858887, -0.00389000098, -0.346705079, 0.937966228, -0.0105110034, -0.937907279, -0.346726865, 0.999937236, -0.0112077333, 4.24194832e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.550000072, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.45322418, -0.0240330696, -0.00489807129, -0.000451999833, -0.0406189859, 0.999174654, -0.0111929988, -0.999111891, -0.0406215005, 0.999937356, -0.0112021221, -3.04984246e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000066, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.33099997))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.0749446154, -1.37520599, -0.00492095947, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000066, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.48498535, 0.115077972, -0.00492858887, 0.00200100034, 0.178939015, -0.983858109, 0.0110300034, 0.983796358, 0.178950205, 0.999937236, -0.0112100393, -5.12103907e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000072, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.626190186, -1.140625, -0.00494384766, -0.0091329962, -0.815072715, -0.579286814, 0.00649200473, 0.579250395, -0.815123856, 0.999937236, -0.0112052551, 1.16453998e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000066, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.390000045, 0.210000321, 0.330000013))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-4.7981739e-005, -1.54994965, -0.00490570068, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.07263184, -0.692550659, -0.00494384766, -0.00553899957, -0.493982941, -0.869453907, 0.00974900275, 0.86939925, -0.494014025, 0.999937236, -0.0112126535, 2.38510097e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.266874313, -1.31082916, 0.00490570068, 0.0108429994, 0.967194855, -0.253803968, -0.00284600025, -0.253787994, -0.967255652, -0.999937236, 0.0112102805, 8.13836039e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000066, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.634695053, -1.47774506, 0.00492858887, 0.0105040008, 0.937348127, 0.348236024, 0.00390800135, 0.34821412, -0.937406957, -0.999937236, 0.0112074288, -5.51621315e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.250000089, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.46351624, -0.0169992447, 0.00492858887, 0.000327999849, 0.0289949868, 0.999579549, 0.0112029975, 0.999516785, -0.028996842, -0.999937236, 0.0112077976, 3.01058731e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000066, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.49613953, 0.109327316, 0.00490570068, -0.00187699974, -0.167490989, -0.985871851, -0.0110449996, -0.985809922, 0.167501494, -0.999937236, 0.0112033542, 4.27065089e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000072, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.31421661, 0.603988647, 0.00489044189, -0.00553899957, -0.493982941, -0.869453907, -0.00974900275, -0.86939925, 0.494014025, -0.999937236, 0.0112126535, -2.38510097e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000072, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.07759094, -0.704029083, 0.00489807129, 0.00564600015, 0.504061997, -0.863649011, -0.00968299713, -0.86359477, -0.504093647, -0.999937236, 0.0112088239, 4.97478322e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.20773315, 0.238894463, -0.00493621826, 0.00187699974, 0.167490989, 0.985871851, -0.0110449996, -0.985809922, 0.167501494, 0.999937236, -0.0112033542, -4.27065089e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.550000072, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.47679138, -0.479194641, 0.0048828125, 0.00376700051, 0.335774034, 0.941935122, 0.0105509991, 0.941875935, -0.335795164, -0.999937236, 0.0112032965, 5.29573617e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.550000072, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.50836945, -0.41729641, 0.00489807129, 0.00200000033, 0.178939015, -0.983858109, -0.0110290041, -0.983796358, -0.178950191, -0.999937236, 0.011208876, 5.92614379e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.17913818, -0.30697155, 0.00497436523, 0.00200000033, 0.178939015, -0.983858109, -0.0110290041, -0.983796358, -0.178950191, -0.999937236, 0.011208876, 5.92614379e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.693664551, -1.45023346, 0.00494384766, 0.00973600149, 0.868322194, -0.495905131, -0.00555100059, -0.495874017, -0.868376732, -0.999937236, 0.0112072863, -7.77313653e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.250000089, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.47976685, -0.311849594, 0.00495910645, 0.00283199991, 0.252568007, 0.967575014, 0.0108430041, 0.967514277, -0.252583891, -0.999937236, 0.0112067368, 1.40442944e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.650000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.625782013, -1.15318298, 0.0048828125, 0.00921000168, 0.821751177, -0.569772124, -0.00638900371, -0.569736302, -0.821802735, -0.999937236, 0.0112090809, 2.89875129e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000066, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.335258484, 1.13473511, 0.00492858887, -0.0105530024, -0.941335261, 0.337308079, 0.00377899874, 0.33728689, 0.941394389, -0.999937236, 0.0112092234, -2.08482766e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000095, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark taupe","Part",Vector3.new(0.200000003, 0.200000003, 0.331))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.21631622, 0.247975349, 0.00493621826, -0.00200100034, -0.178939015, 0.983858109, 0.0110300034, 0.983796358, 0.178950205, -0.999937236, 0.0112100393, 5.12103907e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.550000072, 0.102501623, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(3.93000007, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(4.64488983, 0.00505065918, -0.144644618, -6.60000078e-005, -0.00581800053, 0.999983132, 0.999937356, -0.0112010082, 8.28419559e-007, 0.0112008126, 0.999920368, 0.00581837492))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.550000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 3.93000031, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-5.1856041e-006, -4.64490509, 0.00463867188, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.949999988, 1, 0.349999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 3.76000023, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-5.96046448e-005, -4.77989197, 0.0046005249, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0500000045, 1, 0.450000018))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(3.93000007, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(4.6448822, 0.00508117676, 0.144792438, -6.60000078e-005, -0.00581800053, 0.999983132, 0.999937356, -0.0112010082, 8.28419559e-007, 0.0112008126, 0.999920368, 0.00581837492))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.550000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.430000037, 0.490000337, 0.330000013))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-3.40938568e-005, -1.1999054, -0.00494384766, -0.0112070041, -0.999920368, -0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, 0.999937236, -0.0112072034, 1.81473285e-006))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Dark stone grey","Part",Vector3.new(0.320000023, 0.36500001, 0.320000023))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.0049854517, -1.20753479, -3.05175781e-005, -0.0112070041, -0.999920368, -0.00581600191, -6.69957008e-005, -0.00581561634, 0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.159500003, 0.5, 0.159500003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.594999969))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00507354736, 0.0474830866, -6.31235504, -0.999937356, 0.0112010036, 0, 0.0112008126, 0.999920368, 0.00581600191, 6.51450609e-005, 0.0058156373, -0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.475000054, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.594999969))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.00509643555, 0.0473840833, -6.3123703, 0.999937356, -0.0112010036, 0, -0.0112008126, -0.999920368, -0.00581600191, 6.51450609e-005, 0.0058156373, -0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.475000054, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 1.26499999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.005027771, -0.0972285271, 7.24234772, 0.999937356, -0.0112010036, 0, 0.0112008126, 0.999920368, 0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.975000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.545000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00507354736, -0.284388721, 1.66242218, -0.999937356, 0.0112010036, 0, -0.0112008126, -0.999920368, -0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.545000017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.0051651001, -0.284405589, 1.66241455, 0.999937356, -0.0112010036, 0, 0.0112008126, 0.999920368, 0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.265000015))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.00510406494, -0.28442055, -1.25741577, 0.999937356, -0.0112010036, 0, -0.0112008126, -0.999920368, -0.00581600191, 6.51450609e-005, 0.0058156373, -0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.330000013, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.00492095947, -0.144849539, 1.71743774, -0.999937356, 0.0112010036, 0, -0.0112008126, -0.999920368, -0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.49999994, 0.624999821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 1.26499999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00508117676, -0.0974233747, 7.24232483, -0.999937356, 0.0112010036, 0, -0.0112008126, -0.999920368, -0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.975000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.265000015))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00505828857, -0.28437078, -1.25744629, -0.999937356, 0.0112010036, 0, 0.0112008126, 0.999920368, 0.00581600191, 6.51450609e-005, 0.0058156373, -0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.329999983, 0.200000003, 0.435000002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00485992432, -0.0473880172, 2.96239471, 0.999937356, -0.0112010036, 0, 0.0112008126, 0.999920368, 0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.474999994, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.329999983, 0.200000003, 0.435000002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.00489044189, -0.0475103259, 2.96240997, -0.999937356, 0.0112010036, 0, -0.0112008126, -0.999920368, -0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.474999994, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.330000013, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.00492858887, -0.0448739529, -0.817398071, -0.999937356, 0.0112010036, 0, 0.0112008126, 0.999920368, 0.00581600191, 6.51450609e-005, 0.0058156373, -0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.399999946, 0.674999893))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.330000013, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.00495910645, -0.159652472, -0.922431946, -0.999937356, 0.0112010036, 0, 0.0112008126, 0.999920368, 0.00581600191, 6.51450609e-005, 0.0058156373, -0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.549999952, 0.324999839))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.330000013, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.00489807129, -0.20469892, 1.48241425, -0.999937356, 0.0112010036, 0, -0.0112008126, -0.999920368, -0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.0999999717, 0.374999821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.330000013, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00490570068, -0.204542756, 1.48241425, 0.999937356, -0.0112010036, 0, 0.0112008126, 0.999920368, 0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.0999999717, 0.374999821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.330000013, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00490570068, -0.144648492, 1.71740723, 0.999937356, -0.0112010036, 0, 0.0112008126, 0.999920368, 0.00581600191, -6.51450609e-005, -0.0058156373, 0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.49999997, 0.624999821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.330000013, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00495910645, -0.0450550318, -0.817436218, 0.999937356, -0.0112010036, 0, -0.0112008126, -0.999920368, -0.00581600191, 6.51450609e-005, 0.0058156373, -0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.399999946, 0.674999893))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.330000013, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00494384766, -0.1597929, -0.922409058, 0.999937356, -0.0112010036, 0, -0.0112008126, -0.999920368, -0.00581600191, 6.51450609e-005, 0.0058156373, -0.999983132))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.549999952, 0.324999839))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.33100003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-3.55243683e-005, -0.00493621826, 2.16444397, -0.0112070041, -0.999920368, -0.00581600191, 0.999937236, -0.0112071931, -1.10498133e-009, -6.51799492e-005, -0.00581563683, 0.999983132))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 1, 0.200000018))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.33100003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.00497984886, -0.00492095947, 2.69940948, -0.0112070041, -0.999920368, -0.00581600191, 0.999937236, -0.0112071931, -1.10498133e-009, -6.51799492e-005, -0.00581563683, 0.999983132))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000018, 1, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.33100003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.0648363233, -0.00489807129, 1.73441315, -0.0112070041, -0.999920368, -0.00581600191, 0.999937236, -0.0112071931, -1.10498133e-009, -6.51799492e-005, -0.00581563683, 0.999983132))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000009, 1, 0.100000009))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.33100006, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-4.13060188e-005, -0.00489044189, 1.37493896, -0.0112070041, -0.999920368, -0.00581600191, 0.999937236, -0.0112071931, -1.10498133e-009, -6.51799492e-005, -0.00581563683, 0.999983132))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 1, 0.200000018))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.33100003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.1920929e-005, -0.00492095947, 0.964866638, -0.0112070041, -0.999920368, -0.00581600191, 0.999937236, -0.0112071931, -1.10498133e-009, -6.51799492e-005, -0.00581563683, 0.999983132))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 1, 0.200000018))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.270000041, 0.330000013, 0.270000041))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-6.42538071e-005, -0.00492858887, 0.959884644, -0.0112070041, -0.999920368, -0.00581600191, 0.999937236, -0.0112071931, -1.10498133e-009, -6.51799492e-005, -0.00581563683, 0.999983132))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.33100003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.0649956465, -0.00493621826, 1.73440552, -0.0112070041, -0.999920368, -0.00581600191, 0.999937236, -0.0112071931, -1.10498133e-009, -6.51799492e-005, -0.00581563683, 0.999983132))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000009, 1, 0.100000009))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340000004, 0.200000003, 0.340000063))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.788146973, -1.25549316, 4.57763672e-005, -0.0029529992, -0.263803929, 0.964571774, -0.0108090024, -0.964511275, -0.263820499, 0.999937236, -0.0112051209, -3.25649921e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000036, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.290000051, 0.200000003, 0.280000061))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(3.44514847e-005, -0.124908447, -8.39233398e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.35000053, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.290000051, 0.200000003, 0.280000061))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(2.02655792e-006, 0.125030518, -8.39233398e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.35000053, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.340000004, 0.200000003, 0.320000023))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-0.00495165586, 0.960098267, -3.05175781e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000381, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.320000023, 0.370000035, 0.340000063))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.537696838, -1.25259781, 5.34057617e-005, -0.00564600015, -0.504061997, 0.863649011, -0.00968299713, -0.86359477, -0.504093647, 0.999937236, -0.0112088239, -4.97478322e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340000004, 0.200000003, 0.340000063))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.904251099, -1.25561905, 7.62939453e-005, -0.0029529992, -0.263803929, 0.964571774, -0.0108090024, -0.964511275, -0.263820499, 0.999937236, -0.0112051209, -3.25649921e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000036, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.320000023, 0.949999928, 0.320000052))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.96988678, -5.96046448e-006, 8.39233398e-005, -6.60000078e-005, -0.00581800053, 0.999983132, -0.0112070041, -0.999920368, -0.00581837492, 0.999937236, -0.0112071978, 7.92397316e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340000004, 0.200000003, 0.340000033))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.969909668, -0.513656318, 0, -6.60000078e-005, -0.00581800053, 0.999983132, -0.0112070041, -0.999920368, -0.00581837492, 0.999937236, -0.0112071978, 7.92397316e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.399999231, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.290000051, 0.200000003, 0.280000061))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.2755394e-005, -0.624900818, -3.81469727e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.35000053, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.310000032, 0.240000114, 0.300000042))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-1.66893005e-006, 0.780014038, -3.81469727e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.290000051, 0.200000003, 0.280000061))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(2.95639038e-005, 0.625053406, -6.10351563e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.35000053, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.310000032, 0.200000003, 0.300000042))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(4.91142273e-005, -0.499900818, -6.10351563e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000453, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.290000051, 0.200000003, 0.280000061))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.53183937e-005, 0.375061035, -3.81469727e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.35000053, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.290000051, 0.200000003, 0.280000061))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(3.46302986e-005, -0.374931335, -9.91821289e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.35000053, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.310000032, 0.200000003, 0.300000042))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(-2.49147415e-005, 0.250038147, -9.15527344e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000453, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.310000032, 0.26000008, 0.300000042))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(1.85966492e-005, -0.789901733, -6.86645508e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340000004, 0.200000003, 0.340000033))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.96987915, 0.513498425, 4.57763672e-005, -6.60000078e-005, -0.00581800053, 0.999983132, -0.0112070041, -0.999920368, -0.00581837492, 0.999937236, -0.0112071978, 7.92397316e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.399999231, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.320000023, 0.5, 0.340000063))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.795562744, -0.985153198, 1.52587891e-005, -0.0029529992, -0.263803929, 0.964571774, -0.0108090024, -0.964511275, -0.263820499, 0.999937236, -0.0112051209, -3.25649921e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.310000032, 0.200000003, 0.300000042))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(7.39097595e-006, -0.249954224, 2.28881836e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000453, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.310000032, 0.200000003, 0.300000042))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(7.56978989e-005, 0.500045776, -6.86645508e-005, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000453, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.320000023, 0.370000035, 0.340000063))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.537612915, -1.25212479, -2.28881836e-005, 0.00553899957, 0.493982941, 0.869453907, 0.00974900275, 0.86939925, -0.494014025, -0.999937236, 0.0112126535, -2.38510097e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340000004, 0.200000003, 0.340000063))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.90397644, -1.25537109, -5.34057617e-005, 0.00283199991, 0.252568007, 0.967575014, 0.0108430041, 0.967514277, -0.252583891, -0.999937236, 0.0112067368, 1.40442944e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000036, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340000004, 0.200000003, 0.340000063))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.787818909, -1.25536346, -6.86645508e-005, 0.00283199991, 0.252568007, 0.967575014, 0.0108430041, 0.967514277, -0.252583891, -0.999937236, 0.0112067368, 1.40442944e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000036, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.320000023, 0.5, 0.340000063))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 0.0112070041, 0.999920368, 0.00581600191, 6.69957008e-005, 0.00581561634, -0.999983132, -0.999937236, 0.0112072034, -1.81473285e-006),CFrame.new(0.795379639, -0.984666824, -7.62939453e-005, 0.00283199991, 0.252568007, 0.967575014, 0.0108430041, 0.967514277, -0.252583891, -0.999937236, 0.0112067368, 1.40442944e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

HandleArm=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleArm",Vector3.new(1.04999995, 0.400000006, 1.04999995))
HandleArmweld=weld(m,Character["Right Arm"],HandleArm,CFrame.new(0, 0, 0, 0, 0, -1, 0, 0.999993801, 0, 1, 0, 0),CFrame.new(-0.0193786621, 0.988277435, -0.0015411377, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",HandleArm,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(1.04999995, 0.480000019, 1.04999995))
Hitboxweld=weld(m,HandleArm,Hitbox,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.00234222412, 0.740032196, 0.00495147705, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"White","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
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
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"White","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.435020447, 0.270511627, -0.424991608, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 0.850000024, 0.850000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"White","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.149978638, 0.270496368, -0.425022125, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 0.850000024, 0.850000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"White","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.439987183, 0.270507813, -0.425048828, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 0.850000024, 0.850000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.517841339, -0.199775696, 3.81469727e-005, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?ID=9756362",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.5, -0.799793243, -0.300029755, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.499992371, -0.799812317, -0.300060272, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.500045776, -0.799800873, 2.67028809e-005, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.499992371, -0.799823761, 0.300041199, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.499984741, -0.799808502, -1.90734863e-005, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(7.62939453e-006, -0.199756622, -0.500049591, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.5, -0.799850464, 0.299995422, -1, 0.000116995056, 0.000173001972, 0.000116479503, 1.00000489, -0.00299002789, -0.000173352149, -0.00299000763, -1.00000489))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.500068665, -0.799812317, 0.300010681, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.500019073, -0.799770355, 0.30002594, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(-0.500061035, -0.799808502, -0.299942017, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
Partweld=weld(m,HandleArm,Part,CFrame.new(0, 0, 0, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005),CFrame.new(0.499977112, -0.799823761, -0.299972534, -9.19426748e-005, -0.00299816253, -1.00000489, 0.00014506001, 1.00000489, -0.0029981758, 1, -0.000145333048, -9.15054843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.300000012, 0.300000012, 0.300000012))
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

HandleHoodie=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","HandleHoodie",Vector3.new(0.800999999, 1.39999998, 0.201000005))
HandleHoodieweld=weld(m,Character["Torso"],HandleHoodie,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00750732422, 0.279974461, 0.401000977, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.601000011, 2, 1.00999999))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.699958801, -0.300000429, -0.400093079, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.601000011, 2, 1.00999999))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-0.700019836, -0.299941063, -0.399993896, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.800999999, 2, 0.201000005))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-8.39233398e-005, -0.299940348, -0.800018311, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.800000012))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-0.270521164, -1.09639359, 0.510871887, 0.553595603, 0.826745868, -0.10011597, -0.182960913, 0.238023147, 0.953871548, 0.812439263, -0.509741485, 0.283030361))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.399999976, 1.00999999))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.498023987, 0.795139313, -0.86643219, 0.96592927, 0.258806258, -5.6550416e-005, 0.164087191, -0.612583697, -0.773186624, -0.200140134, 0.746833742, -0.634178698))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.399999976, 1.00999999))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-0.498008728, 0.795150757, -0.86643219, 0.965937078, -0.258777231, 0.000100893376, -0.164033279, -0.612588584, -0.773194134, 0.200146809, 0.746839643, -0.634169579))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.800000012))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-0.357299805, -1.5111618, 0.0340995789, 0.553601563, -0.665902972, 0.500098169, 0.182908967, 0.683077991, 0.707071066, -0.812446833, -0.299962848, 0.499952525))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(2.00099993, 0.300000012, 1.00999999))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(1.52587891e-005, 0.600009441, -0.399986267, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.99000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light blue","Part",Vector3.new(0.400000006, 0.200000003, 0.601999998))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-0.398994446, -0.0108947754, -0.732954025, 1, 5.82439752e-005, 8.27250478e-005, 8.2729166e-005, -7.11692337e-005, -1, -5.82381072e-005, 1, -7.04315171e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.150000006, 1.04999995, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.399999976, 1.00999999))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-0.498031616, -1.47087097, -0.399986267, 0.965941608, -0.258760303, 9.9245568e-005, 0.258760303, 0.965941608, -5.15231586e-005, -8.253329e-005, 7.6191689e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.800000012))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.357570648, -1.51124954, 0.0344924927, 0.553604424, 0.665919662, -0.500072718, -0.182961851, 0.683072448, 0.707062781, 0.812432885, -0.29993853, 0.499989629))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.399999976, 1.00999999))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.498542786, -1.47100449, -0.399971008, 0.9659338, 0.258789301, -5.48517273e-005, -0.258789301, 0.965933859, -6.33935779e-005, 3.65775559e-005, 7.6171571e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Fossil","Part",Vector3.new(0.400999784, 0.700000048, 0.200000003))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(7.62939453e-006, 0.26002121, 0.0050201416, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1.60000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000036, 0.800000012))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.00187683105, -0.325012207, 1.03645325, -1, -1.5030394e-005, -2.29256439e-005, -8.58415297e-006, 0.965920687, -0.25883767, 2.60348024e-005, -0.258838326, -0.965920925))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000036, 0.600000024))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.00188446045, 0.464420319, 1.50968552, -1, -1.50005926e-005, -2.29405487e-005, 5.61492561e-006, 0.707092345, -0.707120836, 2.68283256e-005, -0.707121253, -0.707092762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.400000006, 0.200000003, 0.202000007))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.400993347, -0.0109100342, -0.999987364, 1, 5.82439752e-005, 8.27250478e-005, 8.2729166e-005, -7.11692337e-005, -1, -5.82381072e-005, 1, -7.04315171e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.200999975, 0.600000024, 0.601000011))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-7.62939453e-006, -0.999970913, -0.0999908447, 8.28435441e-005, -6.97089054e-005, -1, -5.74407677e-005, 1, -6.89711524e-005, 1, 5.74465157e-005, 8.2839586e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.400000006, 0.200000003, 0.202000007))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-0.399002075, -0.0109024048, -0.999991894, 1, 5.82439752e-005, 8.27250478e-005, 8.2729166e-005, -7.11692337e-005, -1, -5.82381072e-005, 1, -7.04315171e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light blue","Part",Vector3.new(0.400000006, 0.200000003, 0.801999986))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.400985718, -0.0108795166, -0.632958889, 1, 5.82439752e-005, 8.27250478e-005, 8.2729166e-005, -7.11692337e-005, -1, -5.82381072e-005, 1, -7.04315171e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.150000006, 1.04999995, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.600000024))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.498504639, -1.5112381, 0.228591919, 0.9659338, 0.258789182, -5.45537077e-005, -0.18296428, 0.683065951, 0.707068503, 0.183018938, -0.682970822, 0.707145214))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.600000024))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-0.498046875, -1.51114655, 0.228500366, 0.965941608, -0.258760184, 9.89500695e-005, 0.182911232, 0.683071315, 0.707076907, -0.183030948, -0.682976425, 0.70713675))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Fossil","Part",Vector3.new(0.400000006, 1.60000002, 0.202000007))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.00100708008, -0.0999929905, -1.52587891e-005, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.800000012))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(0.270786285, -1.09629059, 0.510475159, 0.55361563, -0.826729298, 0.100141421, 0.182910204, 0.238028854, 0.953879774, -0.812436819, -0.509765625, 0.282993376))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.200999975, 0.600000024, 0.601000011))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(-1.52587891e-005, -0.999972343, -0.100013733, -8.27392359e-005, 7.12586625e-005, 1, -5.78878098e-005, 1, -7.05209022e-005, -1, -5.78936742e-005, -8.27351469e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1.60099983, 0.700000048, 0.200000003))
Partweld=weld(m,HandleHoodie,Part,CFrame.new(0, 0, 0, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1),CFrame.new(7.62939453e-006, 0.26002121, 0.0050201416, 1, 5.82735956e-005, 8.2680097e-005, -5.82672583e-005, 1, -7.62090931e-005, -8.26845426e-005, 7.69467879e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.5))

HandleLeg1=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","HandleGlove2",Vector3.new(1, 2, 1))
HandleLeg1weld=weld(m,Character["Left Leg"],HandleLeg1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(0.000116348267, 0.0199642777, -0.00973415375, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",HandleLeg1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1, 1.60000014, 1))
Partweld=weld(m,HandleLeg1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.200037062, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.02499998, 1, 1.02499998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,HandleLeg1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.500080049, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.03499997, 0.5, 1.03499997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,HandleLeg1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.300009072, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.03499997, 0.5, 1.03499997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Grime","Part",Vector3.new(0.200000003, 0.800000012, 1))
Partweld=weld(m,HandleLeg1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.600021362, -0.400018156, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.03499997, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.00000012, 0.400000006, 1))
Partweld=weld(m,HandleLeg1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.799949765, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.02499998, 1.04999995, 1.02499998))

HandleLeg2=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","HandleGlove2",Vector3.new(1, 2, 1))
HandleLeg2weld=weld(m,Character["Right Leg"],HandleLeg2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(0.000116348267, 0.0199642777, -0.00973415375, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",HandleLeg2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1, 1.60000014, 1))
Partweld=weld(m,HandleLeg2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.200037062, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.02499998, 1, 1.02499998))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,HandleLeg2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.500080049, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.03499997, 0.5, 1.03499997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 2))
Partweld=weld(m,HandleLeg2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.190002441, -0.600006104, -0.0999948382, 1.49011612e-008, 1.86855686e-008, -0.999999404, 0.999999762, 4.52335946e-011, 2.98023224e-008, 4.52255733e-011, -0.999999702, -1.86855669e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=20719463",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.699999988, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,HandleLeg2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.300009072, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.03499997, 0.5, 1.03499997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(1.00000012, 0.400000006, 1))
Partweld=weld(m,HandleLeg2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.799949765, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.02499998, 1.04999995, 1.02499998))

HandleGlove2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","HandleGlove2",Vector3.new(1, 0.200000003, 1))
HandleGlove2weld=weld(m,Character["Right Arm"],HandleGlove2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(0.000104904175, 0.719071865, -0.00973415375, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",HandleGlove2,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.00999999, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.800000012, 0.200000003, 0.800000012))
Partweld=weld(m,HandleGlove2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100002289, 0.20014596, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.00999999, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld=weld(m,HandleGlove2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.200016022, 0.20014596, 0.399993896, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.00999999, 1.04999995))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light orange","Part",Vector3.new(1, 2, 1))
Partweld=weld(m,HandleGlove2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.700212955, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1, 1.4000001, 1))
Partweld=weld(m,HandleGlove2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.00029683, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.04999995, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,HandleGlove2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.400226831, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.07500005, 1.17499995, 1.07500005))

HandleGlove1=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","HandleGlove2",Vector3.new(1, 0.200000003, 1))
HandleGlove1weld=weld(m,Character["Left Arm"],HandleGlove1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(-0.000131607056, 0.719071865, 0.00973415375, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("BlockMesh",HandleGlove1,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.00999999, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,HandleGlove1,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),CFrame.new(0, -0.400226831, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.07500005, 1.17499995, 1.07500005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.800000012, 0.200000003, 0.800000012))
Partweld=weld(m,HandleGlove1,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),CFrame.new(-0.100006104, 0.20014596, 0.100006104, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.00999999, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld=weld(m,HandleGlove1,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),CFrame.new(-0.200012207, 0.20014596, -0.399993896, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.00999999, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1, 1.4000001, 1))
Partweld=weld(m,HandleGlove1,Part,CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),CFrame.new(0, -1.00029683, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.04999995, 1.04999995))

HandleSheathe=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","HandleSheathe",Vector3.new(0.355113864, 0.458988994, 5.29751778))
HandleSheatheweld=weld(m,Character["Torso"],HandleSheathe,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999998927, 0, 0, 0, 1),CFrame.new(-0.434928894, 0.0603027344, -0.12845993, -0.00960100349, 0.00576700177, 0.999937356, -0.854420841, 0.519460857, -0.0111997295, -0.519492865, -0.854474843, -5.98986517e-005))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.385113865, 0.222962931, 0.222962931))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(0.015127182, -0.438583374, -2.7062149, 0.00958700199, -0.00579600129, -0.999937236, -0.854421198, 0.519460142, -0.0112028327, 0.519492507, 0.854474962, 2.78390507e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.428872705, 0.514649093))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.325113863, 0.222962931, 0.222962931))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(0.0149669647, -0.303909302, 2.97821808, -0.00960100349, 0.00576700177, 0.999937356, -0.854420841, 0.519460857, -0.0111997295, -0.519492865, -0.854474843, -5.98986517e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.781195462, 0.89628309))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.370000005, 0.222962931, 0.222962931))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(-0.00747871399, -0.453826904, -2.70616531, -0.00960100349, 0.00576700177, 0.999937356, 0.854420841, -0.519460857, 0.0111997295, 0.519492865, 0.854474843, 5.98986517e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.428872705, 0.514649093))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.375113845, 0.222962931, 0.222962931))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(0.0100440979, -0.453842163, 2.82097244, 0.00960100349, -0.00576700177, -0.999937356, 0.854420841, -0.519460857, 0.0111997295, -0.519492865, -0.854474843, -5.98986517e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.428872705, 0.514649093))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.355113864, 0.222962931, 1.60646737))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(-4.00543213e-005, -0.124313354, 3.4520607, 0.00960100349, -0.00576700177, -0.999937356, -0.854420841, 0.519460857, -0.0111997295, 0.519492865, 0.854474843, 5.98986517e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.94352001, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.324875206, 0.222962931, 0.554613769))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(-0.0147743225, -0.304618835, -2.37171936, 0.00959500205, -0.0057840012, -0.999937236, -0.854421198, 0.519460142, -0.0112034352, 0.519492388, 0.854475141, 4.22480443e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.771970809, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.355113894, 0.24861905, 1.60646737))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(3.6239624e-005, -0.105186462, 3.45211792, -0.00960100349, 0.00576700177, 0.999937356, 0.854420841, -0.519460857, 0.0111997295, 0.519492865, 0.854474843, 5.98986517e-005))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.375113845, 0.222962931, 0.222962931))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(-0.0100326538, -2.97826004, 0.312530518, -0.00960100349, 0.00576700177, 0.999937356, 0.519492865, 0.854474843, 5.98985025e-005, -0.8544209, 0.519460857, -0.0111997314))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.896402597, 0.846648455))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.375113875, 0.222962931, 0.222962931))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(-0.0101318359, -0.43862915, 2.820961, -0.00958600361, 0.00579500198, 0.999937356, -0.854420841, 0.519460857, -0.011201459, -0.519493163, -0.854474664, -2.81830635e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.428872705, 0.514649093))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.325113863, 0.222962931, 0.535489142))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(0.0149383545, -0.310386658, -2.38103485, -0.00959400367, 0.00578300189, 0.999937356, 0.854420841, -0.519460857, 0.0112020615, 0.519493043, 0.854474723, 4.25915787e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.857745409, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.375113845, 0.79677403, 0.229495347))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(-0.0100383759, 0.00759887695, 2.76353455, -0.00960100349, 0.00576700177, 0.999937356, -0.854420841, 0.519460857, -0.0111997295, -0.519492865, -0.854474843, -5.98986517e-005))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Pine Cone","Part",Vector3.new(0.200000003, 2.82868099, 0.877077281))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(-0.0813369751, -0.0992736816, 0.58121109, 0.865089893, -0.501616955, 0, 0.501616955, 0.865089893, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Pine Cone","Part",Vector3.new(0.5, 0.828999996, 0.620000005))
Partweld=weld(m,HandleSheathe,Part,CFrame.new(0, 0, 0, -0.00960100349, 0.00576698966, 0.999937356, -0.854420841, 0.519459784, -0.0111997295, -0.519492865, -0.854473054, -5.98986517e-005),CFrame.new(0.0516910553, -0.603843689, 0.0957794189, -0.00974400342, 0.00550700165, 0.999937356, 0.496315986, 0.868142009, 5.52486781e-005, -0.868087292, 0.496285409, -0.0111923916))

HandlePet2=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really black","HandlePet2",Vector3.new(0.720000029, 0.300000012, 0.209999993))
HandlePet2weld=weld(m,Character["Head"],HandlePet2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999992132, 0, 0, 0, 1),CFrame.new(1.13534546, -5.77979279, -2.20617676, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764))
mesh("SpecialMesh",HandlePet2,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0.30000001192093,0.5,"Really black","Part",Vector3.new(2.20000005, 0.800000012, 1.20000017))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.929176331, -0.2304039, -0.495742798, -8.49999706e-005, -0.328891873, -0.944367647, 1.2999998e-005, -0.944367647, 0.328891903, -1, 1.56790211e-005, 8.45468021e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.720000029, 0.300000012, 0.209999993))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.584487915, 0.218208313, 0.769832611, 0.582706869, -0.292106926, -0.758370817, 0.224107683, 0.954744279, -0.195548579, 0.781171262, -0.0560092144, 0.621799469))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.800000012, 0.400000036, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(7.62939453e-005, -0.0013923645, 0.0578308105, -0.600738287, -0.29334873, -0.74368, -0.299304605, 0.945117712, -0.131031305, 0.741303086, 0.143871397, -0.655569017))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.800000012, 0.400000036, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.584213257, 0.229740143, 0.719974518, 0.582706869, -0.292106926, -0.758370817, 0.224107668, 0.95474422, -0.195548594, 0.781171203, -0.056009233, 0.621799409))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(-1.19508362, -0.230371475, -0.829162598, -0.999995232, 0, 6.89996741e-005, 2.26945922e-005, -0.944362342, 0.328907132, 6.51606897e-005, 0.328905553, 0.944357812))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.600000024, 0.200000003, 0.400000006))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(1.22916412, 1.19509888, -0.230369568, -6.51610026e-005, -0.328907073, -0.944362342, 1, -1.86962072e-013, -6.90000015e-005, 2.26945886e-005, -0.944362342, 0.328907073))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.400000036, 1, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.0327949524, 0.892177582, -0.234695435, 5.59803266e-005, 0.900335252, 0.435197026, -0.258899093, 0.420371801, -0.869631469, -0.965904474, -0.112623431, 0.233119518))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.400000036, 1, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.0327949524, 1.14883423, -0.723075867, 5.73393918e-005, 0.900332987, 0.435201854, 0.258736849, 0.420368999, -0.86968112, -0.965948045, 0.112652637, -0.232925206))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.400000036, 1, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(-0.532897949, 1.64347076, -0.383506775, 5.73393918e-005, 0.900332987, 0.435201854, 0.258736849, 0.420368999, -0.86968112, -0.965948045, 0.112652637, -0.232925206))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.400000036, 1, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(-0.532901764, 1.38682175, -0.574295044, 5.59803266e-005, 0.900335252, 0.435197026, -0.258899093, 0.420371801, -0.869631469, -0.965904474, -0.112623431, 0.233119518))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(2.5999999, 1.60000002, 1.60000002))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.929016113, -0.23043251, -0.495773315, -9.9375844e-005, -0.328916311, -0.944359004, 2.18451023e-005, -0.944359183, 0.328916281, -1.00000012, 1.20326877e-005, 0.000100925565))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.204330444, -0.0695495605, 1.32424927, -1, -3.6334086e-008, 9.20768944e-005, -3.0323743e-005, 0.94434458, -0.328958005, -8.69403666e-005, -0.328958005, -0.94434458))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.30000001192093,0,"Really black","Part",Vector3.new(0.230000004, 0.200000003, 0.719999969))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(-0.204269409, -0.500398636, 1.29953766, 1, -3.10208321e-008, -9.21796673e-005, 3.02939206e-005, -0.944344699, 0.328957766, -8.70595686e-005, -0.328957766, -0.944344699))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.30000001192093,0,"Really black","Part",Vector3.new(0.899999857, 0.230000004, 0.719999969))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.94380188, -0.20425415, -0.230461121, -8.69999712e-005, -0.328957886, -0.94434464, 1, -3.95619892e-008, -9.21135725e-005, 3.02641256e-005, -0.94434464, 0.328957886))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.30000001192093,0,"Really black","Part",Vector3.new(0.719999909, 0.229999989, 0.360000014))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(1.29953003, -0.204238892, -0.230438232, -8.69999712e-005, -0.328957886, -0.94434464, 1, -3.95640427e-008, -9.21135725e-005, 3.02641238e-005, -0.94434464, 0.328957886))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.899999976, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.799999952, 0.200000003, 0.400000036))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(1.3243866, -0.204269409, -0.230438232, -8.69999712e-005, -0.328957886, -0.94434464, 1, -3.95618898e-008, -9.21135725e-005, 3.02641256e-005, -0.94434464, 0.328957886))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.30000001192093,0,"Really black","Part",Vector3.new(0.230000004, 0.200000003, 0.719999969))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.204299927, -0.0395488739, 1.29947662, -1.00000477, -3.63365693e-008, 9.20773309e-005, -3.03237466e-005, 0.94434458, -0.328958005, -8.69407813e-005, -0.328959584, -0.94434911))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(-0.204299927, -0.5303936, 1.3243103, 1, -3.10217274e-008, -9.21796673e-005, 3.02939206e-005, -0.944344699, 0.328957766, -8.70595686e-005, -0.328957766, -0.944344699))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.999999881, 0.200000003, 0.800000012))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.929046631, -0.204284668, -0.230461121, -8.70002477e-005, -0.328958958, -0.94434768, 1.00000322, -3.95621171e-008, -9.21138708e-005, 3.02641256e-005, -0.94434464, 0.328957886))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.204879761, -0.230371475, -0.828964233, -0.999995232, 0, 6.89996741e-005, 2.26945922e-005, -0.944362342, 0.328907132, 6.51606897e-005, 0.328905553, 0.944357812))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.600000024, 0.200000003, 0.400000006))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(1.22896576, -0.204879761, -0.230371475, -6.51610026e-005, -0.328907073, -0.944362342, 1, -1.86962072e-013, -6.90000015e-005, 2.26945886e-005, -0.944362342, 0.328907073))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(-1.19561768, -0.0695724487, 1.32424164, -1, -3.6334086e-008, 9.20768944e-005, -3.0323743e-005, 0.94434458, -0.328958005, -8.69403666e-005, -0.328958005, -0.94434458))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.999999881, 0.200000003, 0.800000012))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.929039001, 1.19567871, -0.230438232, -8.70002477e-005, -0.328958958, -0.94434768, 1.00000322, -3.95621171e-008, -9.21138708e-005, 3.02641256e-005, -0.94434464, 0.328957886))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.799999952, 0.200000003, 0.400000036))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(1.32437897, 1.19567871, -0.230415344, -8.69999712e-005, -0.328957886, -0.94434464, 1, -3.95618898e-008, -9.21135725e-005, 3.02641256e-005, -0.94434464, 0.328957886))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(1.19564819, -0.530370712, 1.3243103, 1, -3.10217274e-008, -9.21796673e-005, 3.02939206e-005, -0.944344699, 0.328957766, -8.70595686e-005, -0.328957766, -0.944344699))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.30000001192093,0,"Really black","Part",Vector3.new(0.230000004, 0.200000003, 0.719999969))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(1.19567871, -0.500375748, 1.29953003, 1, -3.10208321e-008, -9.21796673e-005, 3.02939206e-005, -0.944344699, 0.328957766, -8.70595686e-005, -0.328957766, -0.944344699))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.30000001192093,0,"Really black","Part",Vector3.new(0.899999857, 0.230000004, 0.719999969))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.94379425, 1.19569397, -0.230438232, -8.69999712e-005, -0.328957886, -0.94434464, 1, -3.95619892e-008, -9.21135725e-005, 3.02641256e-005, -0.94434464, 0.328957886))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.30000001192093,0,"Really black","Part",Vector3.new(0.719999909, 0.229999989, 0.360000014))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(1.2995224, 1.19570923, -0.230417252, -8.69999712e-005, -0.328957886, -0.94434464, 1, -3.95640427e-008, -9.21135725e-005, 3.02641238e-005, -0.94434464, 0.328957886))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.899999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.30000001192093,0,"Really black","Part",Vector3.new(0.230000004, 0.200000003, 0.719999969))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(-1.19566345, -0.0395736694, 1.29946899, -1.00000477, -3.63365693e-008, 9.20773309e-005, -3.03237466e-005, 0.94434458, -0.328958005, -8.69407813e-005, -0.328959584, -0.94434911))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.400000036, 1, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.25428772, 0.614953995, -0.160369873, -8.89404182e-005, 0.435169071, -0.900348902, -0.258838594, -0.869675577, -0.420317948, -0.965920568, 0.233007655, 0.112715855))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(0.400000036, 1, 0.200000003))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.254295349, 0.871566772, -0.797325134, -8.76002377e-005, 0.43517381, -0.900346518, 0.258797228, -0.869663477, -0.420368433, -0.965931773, -0.233044088, -0.112545617))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0.30000001192093,0,"Institutional white","Part",Vector3.new(2.59999967, 1.59999979, 1.59999979))
Partweld=weld(m,HandlePet2,Part,CFrame.new(0, 0, 0, -0.600704908, -0.293308944, -0.743722796, -0.299319774, 0.945120692, -0.130975559, 0.741324067, 0.143933266, -0.655531764),CFrame.new(0.929077148, 0.230449677, 0.495742798, -8.00788403e-005, -0.328945756, -0.944348812, -4.73707914e-005, 0.944348931, -0.328945845, 0.99999994, 1.84476376e-005, -9.11578536e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

local Lite = it("PointLight",Torso)
Lite.Color = Color3.new(255, 255, 0)
Lite.Range = 5
Lite.Brightness = 5
Lite.Shadows = true

asd = Instance.new("Sound", HandlePet2)
asd.Name = 'asd'
asd.SoundId = "rbxassetid://525721279"
asd.Looped = true
asd.Volume = 0.5
wait(.1)
asd:Play()

local plr=game.Players.LocalPlayer
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o1.Name = "Soundbar"
o1.Parent = mas
o2 = Instance.new("Part")
o2.Name = "0"
o2.Parent = o1
o2.Position = Vector3.new(9.5, 0.200000018, 0)
o2.Anchored = true
o2.CFrame = CFrame.new(9.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o2.CanCollide = false
o2.Size = Vector3.new(0.5, 0.200000003, 0.5)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o3 = Instance.new("SpecialMesh")
o3.Parent = o2
o3.MeshId = "rbxassetid://9856898"
o3.Scale = Vector3.new(1, 0.400000006, 1)
o3.TextureId = "rbxassetid://2114473"
o3.MeshType = Enum.MeshType.FileMesh
o4 = Instance.new("Part")
o4.Name = "1"
o4.Parent = o1
o4.Position = Vector3.new(5, 0.200000018, 0)
o4.Anchored = true
o4.CFrame = CFrame.new(5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o4.CanCollide = false
o4.Size = Vector3.new(0.5, 0.200000003, 0.5)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o5 = Instance.new("SpecialMesh")
o5.Parent = o4
o5.MeshId = "rbxassetid://9856898"
o5.Scale = Vector3.new(1, 0.400000006, 1)
o5.TextureId = "rbxassetid://2114473"
o5.MeshType = Enum.MeshType.FileMesh
o6 = Instance.new("Part")
o6.Name = "2"
o6.Parent = o1
o6.Position = Vector3.new(4.5, 0.200000018, 0)
o6.Anchored = true
o6.CFrame = CFrame.new(4.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o6.CanCollide = false
o6.Size = Vector3.new(0.5, 0.200000003, 0.5)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o7 = Instance.new("SpecialMesh")
o7.Parent = o6
o7.MeshId = "rbxassetid://9856898"
o7.Scale = Vector3.new(1, 0.400000006, 1)
o7.TextureId = "rbxassetid://2114473"
o7.MeshType = Enum.MeshType.FileMesh
o8 = Instance.new("Part")
o8.Name = "3"
o8.Parent = o1
o8.Position = Vector3.new(4, 0.200000018, 0)
o8.Anchored = true
o8.CFrame = CFrame.new(4, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o8.CanCollide = false
o8.Size = Vector3.new(0.5, 0.200000003, 0.5)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o9 = Instance.new("SpecialMesh")
o9.Parent = o8
o9.MeshId = "rbxassetid://9856898"
o9.Scale = Vector3.new(1, 0.400000006, 1)
o9.TextureId = "rbxassetid://2114473"
o9.MeshType = Enum.MeshType.FileMesh
o10 = Instance.new("Part")
o10.Name = "4"
o10.Parent = o1
o10.Position = Vector3.new(3.5, 0.200000018, 0)
o10.Anchored = true
o10.CFrame = CFrame.new(3.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o10.CanCollide = false
o10.Size = Vector3.new(0.5, 0.200000003, 0.5)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o11 = Instance.new("SpecialMesh")
o11.Parent = o10
o11.MeshId = "rbxassetid://9856898"
o11.Scale = Vector3.new(1, 0.400000006, 1)
o11.TextureId = "rbxassetid://2114473"
o11.MeshType = Enum.MeshType.FileMesh
o12 = Instance.new("Part")
o12.Name = "5"
o12.Parent = o1
o12.Position = Vector3.new(3, 0.200000018, 0)
o12.Anchored = true
o12.CFrame = CFrame.new(3, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o12.CanCollide = false
o12.Size = Vector3.new(0.5, 0.200000003, 0.5)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o13 = Instance.new("SpecialMesh")
o13.Parent = o12
o13.MeshId = "rbxassetid://9856898"
o13.Scale = Vector3.new(1, 0.400000006, 1)
o13.TextureId = "rbxassetid://2114473"
o13.MeshType = Enum.MeshType.FileMesh
o14 = Instance.new("Part")
o14.Name = "6"
o14.Parent = o1
o14.Position = Vector3.new(9, 0.200000018, 0)
o14.Anchored = true
o14.CFrame = CFrame.new(9, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o14.CanCollide = false
o14.Size = Vector3.new(0.5, 0.200000003, 0.5)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o15 = Instance.new("SpecialMesh")
o15.Parent = o14
o15.MeshId = "rbxassetid://9856898"
o15.Scale = Vector3.new(1, 0.400000006, 1)
o15.TextureId = "rbxassetid://2114473"
o15.MeshType = Enum.MeshType.FileMesh
o16 = Instance.new("Part")
o16.Name = "7"
o16.Parent = o1
o16.Position = Vector3.new(0, 0.200000018, 0)
o16.Anchored = true
o16.CFrame = CFrame.new(0, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o16.CanCollide = false
o16.Size = Vector3.new(0.5, 0.200000003, 0.5)
o16.BottomSurface = Enum.SurfaceType.Smooth
o16.TopSurface = Enum.SurfaceType.Smooth
o17 = Instance.new("SpecialMesh")
o17.Parent = o16
o17.MeshId = "rbxassetid://9856898"
o17.Scale = Vector3.new(1, 0.400000006, 1)
o17.TextureId = "rbxassetid://2114473"
o17.MeshType = Enum.MeshType.FileMesh
o18 = Instance.new("Part")
o18.Name = "8"
o18.Parent = o1
o18.Position = Vector3.new(-0.5, 0.200000018, 0)
o18.Anchored = true
o18.CFrame = CFrame.new(-0.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o18.CanCollide = false
o18.Size = Vector3.new(0.5, 0.200000003, 0.5)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o19 = Instance.new("SpecialMesh")
o19.Parent = o18
o19.MeshId = "rbxassetid://9856898"
o19.Scale = Vector3.new(1, 0.400000006, 1)
o19.TextureId = "rbxassetid://2114473"
o19.MeshType = Enum.MeshType.FileMesh
o20 = Instance.new("Part")
o20.Name = "9"
o20.Parent = o1
o20.Position = Vector3.new(-1, 0.200000018, 0)
o20.Anchored = true
o20.CFrame = CFrame.new(-1, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o20.CanCollide = false
o20.Size = Vector3.new(0.5, 0.200000003, 0.5)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o21 = Instance.new("SpecialMesh")
o21.Parent = o20
o21.MeshId = "rbxassetid://9856898"
o21.Scale = Vector3.new(1, 0.400000006, 1)
o21.TextureId = "rbxassetid://2114473"
o21.MeshType = Enum.MeshType.FileMesh
o22 = Instance.new("Part")
o22.Name = "10"
o22.Parent = o1
o22.Position = Vector3.new(-1.5, 0.200000018, 0)
o22.Anchored = true
o22.CFrame = CFrame.new(-1.5, 0.200000018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o22.CanCollide = false
o22.Size = Vector3.new(0.5, 0.200000003, 0.5)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o23 = Instance.new("SpecialMesh")
o23.Parent = o22
o23.MeshId = "rbxassetid://9856898"
o23.Scale = Vector3.new(1, 0.400000006, 1)
o23.TextureId = "rbxassetid://2114473"
o23.MeshType = Enum.MeshType.FileMesh


mas.Parent = plr.Character
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = plr.Character
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

local Height=10 -- Max height of the bars


local Soundbar=plr.Character.Soundbar
local Sound=asd
local Bars={}	for i,v in next,Soundbar:children() do
					if v:IsA'BasePart' then
						table.insert(Bars,v)
					end
				end Height=Height*2
local nBars,Tweens=#Bars-1,{}

-- EASING FUNCTIONS --
local function quadIn(t,b,c,d) t=t/d; return c*t*t+b; end;
local function quadOut(t,b,c,d) t=t/d; return -c*t*(t-2)+b; end;
local function Quad(obj,val,ease,d)
	local t,f,con,nt,st,sd=tick()
	Tweens[obj]=t -- Set identifier
	st=obj.Scale.Y -- Start Value
	sd=val-st -- Change in Value
	f=ease=='In' and quadIn or quadOut -- Choose between Out/In
	con=game:GetService'RunService'.RenderStepped:connect(function() nt=tick()-t
		if Tweens[obj]~=t then -- Check for override
			con:disconnect()
			return
		end
		local nv=math.max(.2,f(math.min(d,nt),st,sd,d)) -- New Value
		obj.Scale=Vector3.new(.9,nv,.9)
		obj.Offset=Vector3.new(0,nv/4,0)
		obj.VertexColor=Vector3.new(0,0,0):lerp(Vector3.new(1,1,1),nv/Height)
		if nt>d then -- Easing done?
			con:disconnect()
			if ease~='In' then
				Quad(obj,.2,'In',.3) -- Drop the bar
			end
		end
	end)
end

-- BAR MANIPULATION --
local function CheckSet(N,S,D) -- Number, Scale, Direction
	local nS=Soundbar[tostring(N)].Mesh.Scale.Y
	if S>nS then
		Set(N,nS+(S-nS)/3,D)
	end
end

function Set(N,S,D) -- Number, Scale, Direction
	Quad(Soundbar[tostring(N)].Mesh,S,'Out',.1) -- Grabs the bar and tweens
	if N>0 and D~=1 then -- Checks left for smaller bars to manipulate
		CheckSet(N-1,S,-1)
	end
	if N<nBars and D~=-1 then -- Checks right...
		CheckSet(N+1,S,1)
	end
end

-- RENDER LOOP --
local MPL,PL,curr=0 curr=Sound.SoundId
spawn(function()
game:service'RunService'.RenderStepped:connect(function()
	PL=Sound.PlaybackLoudness
	if Sound.IsPlaying and PL==PL then -- Sound is playing & PlaybackLoudness is not undefined
		if curr~=Sound.SoundId then MPL=0 -- Reset the relative Max PlaybackLoudness on song change
			curr=Sound.SoundId
		end
		MPL=math.max(PL,MPL) PL=PL/MPL -- Normalize PL based on relative Max PlaybackLoudness
		if PL==PL then
			Set(math.floor(PL*nBars),PL*Height) -- Modify bar relative to PlaybackLoudness
		end
	end
end)
end)

local Locked


local CRot = 1
local Rotation = {0,Event=nil}
local Y = 0;
local Z = 0;
Y = math.sin(Rotation[1] * 300);
local rad,sin,ceil=math.rad,math.sin,math.ceil

	
Sound:Play()

local Parts = {}
for Index,v in pairs(o1:children'') do
	if v:IsA'Part' then
		table.insert(Parts,v)
	end
end

	spawn(function()
game:service'RunService'.RenderStepped:connect(function()
	CRot = CRot + .003
	for Index,v in pairs(o1:children'') do
		if v:IsA'Part' then
v.CFrame = CFrame.new(plr.Character.Torso.Position+Vector3.new(0,7,0))
								*CFrame.Angles(0, ((((360)/(#Parts))*(Index))+(Rotation[1]/2*ceil(Index*#Parts)))+CRot, 0)
								*CFrame.new(8 +(Index)+(#Parts*0), Y, 0)
								*CFrame.Angles(0,90+CRot,0)
								*CFrame.Angles(sin(tick()/2), sin(tick()/2), sin(tick()/2))
							end
				end
		end)
end)

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part("Custom",workspace,"Neon",0,0,"White","Effect",vt(0.5,0.5,0.5))
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
--BreakEffect(BrickColor.new("White"),Hitbox.CFrame,0.5,math.random(5,20),0.5)

function attackone()
        attack=true
        local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,15,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(120),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,.4)*angles(math.rad(70),math.rad(-10),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,0)*angles(math.rad(-60),math.rad(-10),math.rad(0)),.3)
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
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,25,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(120), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.5) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-5),math.rad(60),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-.8,-1,-.5)*angles(math.rad(0),math.rad(-140),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0 = clerp(HandleWeld.C0,cf(0,0,0)* angles(math.rad(4),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0 = clerp(HandleWeld.C0,cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
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
HandleWeld.C0 = clerp(HandleWeld.C0,cf(0,0,0)* angles(math.rad(50),math.rad(0),math.rad(0)),.3)
end
end
attack = false
scfr = nil
con:disconnect()
end

function Stab()
attack=true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,50,75,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(20),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-20),math.rad(-90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*angles(math.rad(0),math.rad(-60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-.9,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=220833976',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("White"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
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
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end)
hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=220833976',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("White"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(30)),1)
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
        local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=220833976',Hitbox,1,1)
                        for i = 1,10 do
                        BreakEffect(BrickColor.new("White"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,.4)*angles(math.rad(70),math.rad(-10),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,0)*angles(math.rad(-60),math.rad(-10),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0),math.rad(0),math.rad(-50)),.3)
        end
        for i=0,1,0.2 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(-20),math.rad(-50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,0)*angles(math.rad(-30),math.rad(-10),math.rad(0)),.3)
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,0)*angles(math.rad(-50),math.rad(10),math.rad(0)),.3)
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
HandleWeld.Part0 = Torso
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(-20)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(190),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(20),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
attack = false
end

function Unsheathe()
attack = true
CurrentMode = "Unsheathed"
so("http://www.roblox.com/asset/?id=130785407",Hitbox,1,.9) 
for i = 0,1,0.1 do
swait()
HandleWeld.Part0 = RightArm
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(200),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(-30),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
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
                        Character.Animate.Disabled = false
                elseif k=='f' then
                if attack==false and Sit == false and CurrentMode == "Sheathed" then
                        Unsheathe()
                        Character.Animate.Disabled = true
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
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(-10),math.rad(0)),.3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.2)*angles(math.rad(0),math.rad(90),math.rad(5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and Sit == false and CurrentMode == "Unsheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-5),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-40),math.rad(5),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-1)*angles(math.rad(-20),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(-10),math.rad(0)),.3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and Sit == false and CurrentMode == "Unsheathed" then
change = 2
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.1 + .1 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 40)), math.rad(5), math.rad(30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(10 + 3 * math.cos(sine / 40))), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-8 - 2 * math.cos(sine / 40))), .3)
				RH.C0 = clerp(RH.C0, cn(1, -.9 - .1 * math.cos(sine / 40), 0) * RHCF * angles(math.rad(-3.5 - 1 * math.cos(sine / 40)), math.rad(20), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -.9 - .1 * math.cos(sine / 40), 0) * LHCF * angles(math.rad(-3.5 - 1 * math.cos(sine / 40)), math.rad(20), math.rad(0)), .3)
				HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(13)), .3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-5)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
end
if attack==false and Sit == true and CurrentMode == "Sheathed" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-10),math.rad(0),math.rad(5)),.3)
LW.C0=clerp(LW.C0,cf(-1.3,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(30)),.3)
LH.C0=clerp(LH.C0,cf(-1,.7,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(70))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
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
HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(23), math.rad(-20), math.rad(0)), 0.3)
end
if attack==false and Sit == false and CurrentMode == "Sheathed" then
idleanim=-1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0.4,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-35),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(35),math.rad(-45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0.5,-1.57,0)*euler(0,0,0),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(3,3,0.5)*angles(math.rad(90),math.rad(150),math.rad(90)),.3)
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
end