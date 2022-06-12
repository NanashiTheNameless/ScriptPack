Character = game.Players.LocalPlayer.Character
Head = Character.Head

CV="Blue"
	p = game.Players.LocalPlayer
	char = p.Character
	local txt = Instance.new("BillboardGui", char)
	txt.Adornee = char .Head
	txt.Name = "_status"
	txt.Size = UDim2.new(2, 0, 1.2, 0)
	txt.StudsOffset = Vector3.new(-9, 8, 0)
	local text = Instance.new("TextLabel", txt)
	text.Size = UDim2.new(10, 0, 7, 0)
	text.FontSize = "Size24"
	text.TextScaled = true
	text.TextTransparency = 0
	text.BackgroundTransparency = 1 
	text.TextTransparency = 0
	text.TextStrokeTransparency = 0
	text.Font = "Cartoon"
	text.TextStrokeColor3 = Color3.new(0,0,.50)

	v=Instance.new("Part")
	v.Name = "ColorBrick"
	v.Parent=p.Character
	v.FormFactor="Symmetric"
	v.Anchored=true
	v.CanCollide=false
	v.BottomSurface="Smooth"
	v.TopSurface="Smooth"
	v.Size=Vector3.new(10,5,3)
	v.Transparency=1
	v.CFrame=char.Torso.CFrame
	v.BrickColor=BrickColor.new(CV)
	v.Transparency=1
	text.TextColor3 = Color3.new(0,0,.50)
	v.Shape="Block"
	text.Text = "Inferno"

	local s = Instance.new("Sound",char)
	s.Name = "BGMusic"
	s.SoundId = "rbxassetid://792238435"
	s.Pitch = 1
	s.Volume = 10
	s.Looped = true
	s.archivable = false
	s.Parent = char.Head
	wait(0.1)
	s:play()

Instance.new("ForceField", game.Players.LocalPlayer.Character)
print("Inferno Loaded.")
print("Unleash the deadly fire to anyone to destroy.")
p = game.Players.LocalPlayer
char = p.Character
torso = char.Torso
neck = char.Torso.Neck

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
cam=game.Workspace.CurrentCamera
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
bounce=false
cooldown=false
deeznuts=false
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
	

local Player = game.Players.localPlayer
local Character = Player.Character
local red = 255
local green = 255
local blue = 255
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local lim = 0
local st = 0
local necko = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local attacktype = 1
local ZTarget, RocketTarget = nil, nil
local euler = CFrame.fromEulerAnglesXYZ
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
rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local v = game.Players.localPlayer
local torso = v.Character.Torso

plr = game.Players.LocalPlayer
char = game.Players.LocalPlayer.Character
hum = game.Players.LocalPlayer.Character.Humanoid
t = game.Players.LocalPlayer.Character.Torso
h = game.Players.LocalPlayer.Character.Head
ra = game.Players.LocalPlayer.Character["Right Arm"]
la = game.Players.LocalPlayer.Character["Left Arm"]
rl = game.Players.LocalPlayer.Character["Right Leg"]
ll = game.Players.LocalPlayer.Character["Left Leg"]
tors = Character.Torso
lleg = Character["Left Leg"]
root = Character.HumanoidRootPart
hed = Character.Head
rleg = Character["Right Leg"]
rarm = Character["Right Arm"]
larm = Character["Left Arm"]
bsize1 = NumberSequenceKeypoint.new(3,3,3)
bsize2 = NumberSequenceKeypoint.new(10,10,10)
local Effects = {}
attack = false
local attacking = false
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
matr = math.random
local colororg = BrickColor.new("Dark indigo") -- set color u like
local meshtype = "Sphere" -- only for specialmesh
mouse = plr:GetMouse()

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			return Part
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

function chatfunc(text)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "SciFi"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0.15,0.15,1)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "SciFi"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(0.15,0.15,1)
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=565939471", Character, .6, .8)
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(2)
for i = 1, 50 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks3.Rotation = tecks2.Rotation + .8
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
naeeym2:Destroy()
end)
chat()
end
function onChatted(msg)
chatfunc(msg)
end
Player.Chatted:connect(onChatted)


Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
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
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
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
                showDamage(hit.Parent,Damage,3,TorsoColor)
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,3,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
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
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
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
                bodyVelocity.velocity=vt(0,10,0)
                bodyVelocity.P=1000
                bodyVelocity.maxForce=Vector3.new(1e+009, 1e+009, 1e+009)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                swait(5)
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=""
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.Material = "Neon"
        c.BrickColor=bc("Bright red")
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
CV="Hot pink"

local txt = Instance.new("BillboardGui", c)
txt.Adornee = c
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
if Dealt < 12 then
text.Font = "Highway"
elseif Dealt < 20 then
text.Font = "SourceSansBold"
elseif Dealt >= 20 then
text.Font = "Fantasy"
end
text.TextStrokeColor3 = BrickColor.new("Really black").Color
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=c
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=c.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
if Dealt < 12 then
text.TextColor3 = BrickColor.new("White").Color
elseif Dealt < 20 then
text.TextColor3 = BrickColor.new("Bright yellow").Color
elseif Dealt >= 20 then
text.TextColor3 = BrickColor.new("Really red").Color
end
v.Shape="Block"
text.Text = tostring(Dealt).. "!"
  local dam = Instance.new("Sound",c)
  local rndm=math.random(1,#hitsounds)
  local r=rndm
  dam.SoundId = "http://www.roblox.com/asset/?id="..hitsounds[r]
  dam.Volume = 1.25
  dam.Pitch = 1
  dam:Play()
        c.formFactor="Plate"
c.Transparency = 1
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
        wait(1)
        for l = 0, 9 do
         text.TextTransparency = text.TextTransparency + 0.1
         text.TextStrokeTransparency = text.TextStrokeTransparency + 0.1
         wait()
        end
end

gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
end
---- GUI set
local basgui = it("GuiMain")
basgui.Parent = Player.PlayerGui
basgui.Name = "CooldownsGUI"
local basframe = it("Frame")
basframe.Parent = basgui
basframe.BackgroundColor3 = Color3.new(255, 255, 255)
basframe.BackgroundTransparency = 1
basframe.BorderColor3 = Color3.new(17, 17, 17)
basframe.Size = UDim2.new(0.2, 0, 0.2, 0)
basframe.Position = UDim2.new(0.8, 0, 0.8, 0)
local basicgui = gui("TextLabel", basframe, "Basic", 0, BrickColor.new("Really blue").Color, UDim2.new(0.35, 0, -0.125, 0), UDim2.new(0.45, 0, 0.35, 0))
basicgui.ZIndex = 2
basicgui.Font = "Highway"
basicgui.BackgroundTransparency = 0.5
basicgui.BorderSizePixel = 0.65
basicgui.TextScaled = true
basicgui.Text = "(F)\nInferno Meteor"
basicgui.TextSize = 24
local basicgui2 = gui("TextLabel", basframe, "Basic", 0, BrickColor.new("Really blue").Color, UDim2.new(-0.15, 0, -0.125, 0), UDim2.new(0.45, 0, 0.35, 0))
basicgui2.ZIndex = 2
basicgui2.Font = "Highway"
basicgui2.BackgroundTransparency = 0.5
basicgui2.BorderSizePixel = 0.65
basicgui2.TextScaled = true
basicgui2.Text = "(E)\nInferno Demise"
basicgui2.TextSize = 24
local basicgui3 = gui("TextLabel", basframe, "Basic", 0, BrickColor.new("Really blue").Color, UDim2.new(-0.15, 0, 0.225, 0), UDim2.new(0.45, 0, 0.35, 0))
basicgui3.ZIndex = 2
basicgui3.Font = "Highway"
basicgui3.BackgroundTransparency = 0.5
basicgui3.BorderSizePixel = 0.65
basicgui3.TextScaled = true
basicgui3.Text = "(Q)\nInferno Comet"
basicgui3.TextSize = 24
local basicgui4 = gui("TextLabel", basframe, "Basic", 0, BrickColor.new("Really blue").Color, UDim2.new(0.35, 0, 0.225, 0), UDim2.new(0.45, 0, 0.35, 0))
basicgui4.ZIndex = 2
basicgui4.Font = "Highway"
basicgui4.BackgroundTransparency = 0.5
basicgui4.BorderSizePixel = 0.65
basicgui4.TextScaled = true
basicgui4.Text = "(R)\nInferno Wrath"
basicgui4.TextSize = 24
local basicgui5 = gui("TextLabel", basframe, "Basic", 0, BrickColor.new("Really blue").Color, UDim2.new(-0.15, 0, -0.475, 0), UDim2.new(0.45, 0, 0.35, 0))
basicgui5.ZIndex = 2
basicgui5.Font = "Highway"
basicgui5.BackgroundTransparency = 0.5
basicgui5.BorderSizePixel = 0.65
basicgui5.TextScaled = true
basicgui5.Text = "(Z)\n???"
basicgui5.TextSize = 24
local basicgui6 = gui("TextLabel", basframe, "Basic", 0, BrickColor.new("Really blue").Color, UDim2.new(0.35, 0, -0.475, 0), UDim2.new(0.45, 0, 0.35, 0))
basicgui6.ZIndex = 2
basicgui6.Font = "Highway"
basicgui6.BackgroundTransparency = 0.5
basicgui6.BorderSizePixel = 0.65
basicgui6.TextScaled = true
basicgui6.Text = "(X)\nInferno Hell"
basicgui6.TextSize = 24

local healthg = gui("TextLabel", basframe, "Basic", 0, BrickColor.new("Really black").Color, UDim2.new(-0.15, 0, 0.675, 0), UDim2.new(0.95, 0, 0.15, 0))
healthg.ZIndex = 2
healthg.Font = "Highway"
healthg.BackgroundTransparency = 0.5
healthg.BorderSizePixel = 0.65
healthg.TextScaled = true
healthg.Text = "health"
healthg.TextSize = 24

char.Humanoid.Animator.Parent = nil

---------------- set a position
local handle = Instance.new("Part")
handle.Parent = Character
handle.Size = Vector3.new(0.2,0.2,0.2)
handle.Archivable = true
handle.Transparency = 1
handle.CanCollide = false
handle.BrickColor = BrickColor.new("White")
handle.Material = "Neon"
local handlmesh = Instance.new("BlockMesh",handle)
handlmesh.Scale = Vector3.new(1,1,1)
local handleweld = Instance.new("Weld")
handleweld.Parent = handle
handleweld.Part0 = rarm
handleweld.Part1 = handle
handleweld.C1 = CFrame.new(0, 1.35, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
		handleweld.Part0 = rarm

---- yeee boi here comes entrance of inferno

hum.WalkSpeed = 0

local dd = Instance.new("ParticleEmitter",handle)
dd.Texture = "http://www.roblox.com/asset/?id=745304849"
dd.LightEmission = 1
dd.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
dd.Rate = 50
dd.Lifetime = NumberRange.new(0.5)
dd.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(1,0,0)})
dd.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
dd.Speed = NumberRange.new(0)
dd.Rotation = NumberRange.new(-500,500)
dd.VelocitySpread = 90000
dd.LockedToPart = true
dd.RotSpeed = NumberRange.new(-500,500)
local bon = Instance.new("ParticleEmitter",handle)
bon.Texture = "rbxassetid://296874871"
bon.LightEmission = 0.75
bon.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
bon.Rate = 0
bon.Lifetime = NumberRange.new(2.5)
bon.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,0,0)})
bon.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
bon.Speed = NumberRange.new(15)
bon.Rotation = NumberRange.new(-500,500)
bon.VelocitySpread = 90000
bon.RotSpeed = NumberRange.new(-500,500)
local bon2 = Instance.new("ParticleEmitter",handle)
bon2.Texture = "rbxassetid://296874871"
bon2.LightEmission = 0.75
bon2.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
bon2.Rate = 0
bon2.Lifetime = NumberRange.new(2.5)
bon2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,10,0)})
bon2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
bon2.Speed = NumberRange.new(25)
bon2.Rotation = NumberRange.new(-500,500)
bon2.VelocitySpread = 90000
bon2.RotSpeed = NumberRange.new(-500,500)
for i = 0,8,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(100)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-7.5 + 2.5 * math.cos(sine / 32))), 0.3)
end
dd.Rate = 0
bon.Rate = 99999
bon2.Rate = 99999

local tran = Instance.new("ParticleEmitter",handle)
tran.Texture = "rbxassetid://296874871"
tran.LightEmission = 0.75
tran.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
tran.Rate = 99999
tran.Lifetime = NumberRange.new(0.25)
tran.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.5,0),NumberSequenceKeypoint.new(1,0,0)})
tran.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.25,0)})
tran.Speed = NumberRange.new(0)
tran.Rotation = NumberRange.new(-500,500)
tran.VelocitySpread = 90000
tran.LockedToPart = true
tran.RotSpeed = NumberRange.new(-500,500)
local tran2 = Instance.new("ParticleEmitter",handle)
tran2.Texture = "http://www.roblox.com/asset/?id=745304849"
tran2.LightEmission = 1
tran2.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
tran2.Rate = 50
tran2.Lifetime = NumberRange.new(0.5)
tran2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.5,0),NumberSequenceKeypoint.new(1,0,0)})
tran2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
tran2.Speed = NumberRange.new(0)
tran2.Rotation = NumberRange.new(-500,500)
tran2.VelocitySpread = 90000
tran2.LockedToPart = true
tran2.RotSpeed = NumberRange.new(-500,500)
wait(0.5)
bon.Rate = 0
bon2.Rate = 0
wait(3.25)
bon:Destroy()
bon:Destroy()
dd:Destroy()
hum.WalkSpeed = 16
-----------

function InfernoComet()
	attack = true
chatfunc("Inferno Comet!!")
		handleweld.Part0 = rarm
local tra = Instance.new("ParticleEmitter",handle)
tra.Texture = "rbxassetid://296874871"
tra.LightEmission = 0.75
tra.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
tra.Rate = 99999
tra.Lifetime = NumberRange.new(0.25)
tra.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,0,0)})
tra.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.25,0)})
tra.Speed = NumberRange.new(0)
tra.Rotation = NumberRange.new(-500,500)
tra.VelocitySpread = 90000
tra.LockedToPart = true
tra.RotSpeed = NumberRange.new(-500,500)
local tra2 = Instance.new("ParticleEmitter",handle)
tra2.Texture = "http://www.roblox.com/asset/?id=745304849"
tra2.LightEmission = 1
tra2.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
tra2.Rate = 50
tra2.Lifetime = NumberRange.new(0.5)
tra2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5.5,0),NumberSequenceKeypoint.new(1,0,0)})
tra2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.5,0)})
tra2.Speed = NumberRange.new(0)
tra2.Rotation = NumberRange.new(-500,500)
tra2.VelocitySpread = 90000
tra2.LockedToPart = true
tra2.RotSpeed = NumberRange.new(-500,500)
		for i = 0,4,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25 + 2.5 * math.cos(sine / 32))), 0.3)
		end
		local sa = Instance.new("Sound",handle)
sa.SoundId = "rbxassetid://304448425"
sa.Volume = 1
sa.Pitch = 1
sa:Play()
		tra.Rate = 0
		tra2.Rate = 0
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Bright blue").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = handle.CFrame
     lb.Anchored = true
     lb.Transparency = 1
     lb.Size = vt(1,1,1)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = meshtype
local hitted = false
lb.Anchored = false
local trail = Instance.new("ParticleEmitter",lb)
trail.Texture = "rbxassetid://296874871"
trail.LightEmission = 1
trail.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
trail.Rate = 9999
trail.Lifetime = NumberRange.new(1.5)
trail.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(1,0,0)})
trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
trail.Speed = NumberRange.new(0,0)
trail.Rotation = NumberRange.new(-500,500)
trail.RotSpeed = NumberRange.new(-500,500)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *75
  bv.Parent = lb
wait(0.05)
lb.Touched:connect(function(hit)
if hitted == false then
hitted = true
trail.Rate = 0
lb.Anchored = true
local aa = Instance.new("Part")
local val = 1*3.5
  aa.Parent = lb
		local exsound = Instance.new("Sound",aa)
exsound.SoundId = "rbxassetid://402347142"
exsound.Volume = 3.5
exsound.Pitch = 1
exsound:Play()
   aa.Material = "Neon"
    aa.Color = BrickColor.new("Bright blue").Color
     aa.CanCollide = false
     aa.Shape = "Ball"
     aa.CFrame = lb.CFrame
     aa.Anchored = true
     aa.Transparency = 0
     aa.Size = vt(1,1,1)
     local thinger = Instance.new("SpecialMesh",aa)
     thinger.MeshType = meshtype
thinger.Scale = vt(15,15,15)
local explosion = Instance.new("Explosion",aa)
explosion.Position = aa.Position
explosion.BlastRadius = 22.5
explosion.BlastPressure = 100
local exp = Instance.new("ParticleEmitter",aa)
exp.Texture = "rbxassetid://296874871"
exp.LightEmission = 1
exp.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
exp.Rate = 9000000000
exp.Lifetime = NumberRange.new(1)
exp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Speed = NumberRange.new(100)
exp.VelocitySpread = 9000000
exp.Rotation = NumberRange.new(-500,500)
exp.RotSpeed = NumberRange.new(-500,500)
local expa = Instance.new("ParticleEmitter",aa)
expa.Texture = "rbxassetid://296874871"
expa.LightEmission = 1
expa.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
expa.Rate = 9000000000
expa.Lifetime = NumberRange.new(2.75)
expa.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,75,0)})
expa.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
expa.Speed = NumberRange.new(100)
expa.VelocitySpread = 9000000
expa.Rotation = NumberRange.new(-500,500)
expa.RotSpeed = NumberRange.new(-500,500)
local exp2 = exp:Clone()
exp2.Parent = aa
local exp3 = exp:Clone()
exp3.Parent = aa
local exp4 = exp:Clone()
exp4.Parent = aa
local exp5 = exp:Clone()
exp5.Parent = aa
local exp6 = exp:Clone()
exp6.Parent = aa
local exp7 = exp:Clone()
exp7.Parent = aa
local expa2 = expa:Clone()
expa2.Parent = aa
local expa3 = expa:Clone()
expa3.Parent = aa
local expa4 = expa:Clone()
expa4.Parent = aa
local expa5 = expa:Clone()
expa5.Parent = aa
local expa6 = expa:Clone()
expa6.Parent = aa
local expa7 = expa:Clone()
expa7.Parent = aa
     for i = 0, 1 do
     val = val - 0.025*3.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     exp.Rate = 0
     exp2.Rate = 0
     exp3.Rate = 0
     exp4.Rate = 0
     exp5.Rate = 0
     exp6.Rate = 0
     exp7.Rate = 0
     for i = 0, 1 do
     val = val - 0.025*3.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     expa.Rate = 0
     expa2.Rate = 0
     expa3.Rate = 0
     expa4.Rate = 0
     expa5.Rate = 0
     expa6.Rate = 0
     expa7.Rate = 0
     for i = 0, 21 do
     val = val - 0.025*3.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     for i = 0, 74 do
     val = val - 0.0145
     aa.Transparency = aa.Transparency + 0.0145
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
end
end)
	attack = false
        wait(30)
        sa:Destroy()
        tra:Destroy()
        tra2:Destroy()
        lb:Destroy()
end

function InfernoHell()
	attack = true
chatfunc("INFERNO...")
		handleweld.Part0 = rarm
local aura = Instance.new("ParticleEmitter",tors)
aura.Texture = "rbxassetid://305563617"
aura.LightEmission = 1
aura.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
aura.Rate = 25
aura.Lifetime = NumberRange.new(0.75)
aura.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,8.5,0),NumberSequenceKeypoint.new(1,0,0)})
aura.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
aura.Speed = NumberRange.new(15)
aura.VelocitySpread = 50
local aura2 = Instance.new("ParticleEmitter",tors)
aura2.Texture = "rbxassetid://296874871"
aura2.LightEmission = 1
aura2.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
aura2.Rate = 99999
aura2.Lifetime = NumberRange.new(1.5)
aura2.Acceleration = vt(0,45,0)
aura2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,3,0),NumberSequenceKeypoint.new(1,0,0)})
aura2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
aura2.Speed = NumberRange.new(-25)
aura2.Rotation = NumberRange.new(-500,500)
aura2.VelocitySpread = 45
aura2.RotSpeed = NumberRange.new(-500,500)
local auran = Instance.new("ParticleEmitter",tors)
auran.Texture = "rbxassetid://296874871"
auran.LightEmission = 1
auran.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
auran.Rate = 0
auran.Lifetime = NumberRange.new(5)
auran.Acceleration = vt(0,-45,0)
auran.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,25,0),NumberSequenceKeypoint.new(1,0,0)})
auran.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
auran.Speed = NumberRange.new(65)
auran.Rotation = NumberRange.new(-500,500)
auran.VelocitySpread = 100
auran.RotSpeed = NumberRange.new(-500,500)
		local sa = Instance.new("Sound",handle)
sa.SoundId = "rbxassetid://431105970"
sa.Volume = 5
sa.Pitch = 1
sa:Play()
		for i = 0,2,0.1 do
		swait()
	            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
             RH.C0=clerp(RH.C0,cf(1,-0.5,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.3)
             LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
		    end
for i = 0, 5 do
auran.Rate = 99999
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Bright blue").Color
     lb.CanCollide = false
     lb.Size = vt(1,1,1)
     lb.CFrame = tors.CFrame
     lb.Rotation = vt(0,0,0)
     lb.Anchored = true
     lb.Transparency = 0
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "FileMesh"
     thing.MeshId = "http://www.roblox.com/asset/?id=20329976"
     thing.Scale = vt(0,15,0)
     local chancerot = math.random(1,2)
     for z = 0, 4 do
     if chancerot == 1 then
     lb.CFrame = lb.CFrame*CFrame.Angles(0,0.1,0)
     elseif chancerot == 2 then
     lb.CFrame = lb.CFrame*CFrame.Angles(0,-0.1,0)
     end
     lb.Transparency = lb.Transparency + 0.1
     thing.Scale = thing.Scale + vt(15,0,15)
     wait()
     end
     auran.Rate = 0
     for z = 0, 4 do
     if chancerot == 1 then
     lb.CFrame = lb.CFrame*CFrame.Angles(0,0.1,0)
     elseif chancerot == 2 then
     lb.CFrame = lb.CFrame*CFrame.Angles(0,-0.1,0)
     end
     lb.Transparency = lb.Transparency + 0.1
     thing.Scale = thing.Scale + vt(15,0,15)
     wait()
     end
lb:Destroy()
end
chatfunc("HELL!!!")
		local sa = Instance.new("Sound",handle)
sa.SoundId = "rbxassetid://416328540"
sa.Volume = 10
sa.Pitch = 0.75
sa:Play()

        local sbs = Instance.new("BodyPosition", root)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(500000, 500000000, 500000)
        sbs.position = RootPart.CFrame.p + Vector3.new(0, 1000, 0)
		for i = 0,24,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(180)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25 + 2.5 * math.cos(sine / 32))), 0.3)
		end
			local shur = Instance.new("Part",char)
		local gahde = Instance.new("Sound",char)
gahde.SoundId = "rbxassetid://402981977"
gahde.Volume = 5
gahde.Pitch = 0.6
gahde:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.CFrame = tors.CFrame + vt(0,10,0)
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = "http://www.roblox.com/asset/?id=840391577"
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
for i = 0, 39 do
wait()
Meshshur.Scale = Meshshur.Scale + vt(15,0,15)
end
		local sa = Instance.new("Sound",char)
sa.SoundId = "rbxassetid://428027602"
sa.Volume = 2.5
sa.Pitch = 0.5
sa:Play()
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Bright blue").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = handle.CFrame
     lb.Anchored = true
     lb.Transparency = 0
     lb.Size = vt(1,1,1)
     lb.CFrame = handle.CFrame
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = meshtype
     thing.Scale = vt(0,0,0)
for i = 0, 89 do
thing.Scale = thing.Scale + vt(2.5,2.5,2.5)
lb.CFrame = lb.CFrame + Vector3.new(0,1.425,0)
wait()
end
wait(1)
for i = 0, 39 do
wait()
Meshshur.Scale = Meshshur.Scale - vt(15,0,15)
end
local sa = Instance.new("Sound",char)
sa.SoundId = "rbxassetid://565538688"
sa.Volume = 1
sa.Pitch = 0.95
sa:Play()
wait(0.5)
shur:Destroy()
sbs:Destroy()
		local sa = Instance.new("Sound",char)
sa.SoundId = "rbxassetid://416328540"
sa.Volume = 1.5
sa.Pitch = 0.5
sa:Play()
		local sa = Instance.new("Sound",char)
sa.SoundId = "rbxassetid://466493476"
sa.Volume = 1.5
sa.Pitch = 0.5
sa:Play()
aura.Rate = 0
aura2.Rate = 0
local hitted = false
lb.Anchored = false
local trail = Instance.new("ParticleEmitter",lb)
trail.Texture = "rbxassetid://296874871"
trail.LightEmission = 1
trail.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
trail.Rate = 9999
trail.Lifetime = NumberRange.new(2.5)
trail.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,150,0),NumberSequenceKeypoint.new(1,5,0)})
trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
trail.Speed = NumberRange.new(100)
trail.VelocitySpread = 9000000
trail.Rotation = NumberRange.new(-500,500)
trail.RotSpeed = NumberRange.new(-500,500)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *75
  bv.Parent = lb
wait(0.05)
lb.Touched:connect(function(hit)
if hitted == false then
hitted = true
trail.Rate = 0
lb.Anchored = true
local aa = Instance.new("Part")
for i = 0, 9 do
lb.Transparency = lb.Transparency + 0.1
local val = 1*3.5
  aa.Parent = lb
		local exsound = Instance.new("Sound",aa)
exsound.SoundId = "rbxassetid://412831137"
exsound.Volume = 10
exsound.Pitch = 0.5
exsound:Play()
		local exsound = Instance.new("Sound",aa)
exsound.SoundId = "rbxassetid://439342426"
exsound.Volume = 10
exsound.Pitch = 0.75
exsound:Play()
		local exsound = Instance.new("Sound",aa)
exsound.SoundId = "rbxassetid://439342426"
exsound.Volume = 10
exsound.Pitch = 0.5
exsound:Play()
		local exsound = Instance.new("Sound",aa)
exsound.SoundId = "rbxassetid://439342426"
exsound.Volume = 10
exsound.Pitch = 0.35
exsound:Play()
		local exsound = Instance.new("Sound",aa)
exsound.SoundId = "rbxassetid://439342426"
exsound.Volume = 10
exsound.Pitch = 0.25
exsound:Play()
		local exsound = Instance.new("Sound",aa)
exsound.SoundId = "rbxassetid://439342426"
exsound.Volume = 10
exsound.Pitch = 0.2
exsound:Play()
   aa.Material = "Neon"
    aa.Color = BrickColor.new("Bright blue").Color
     aa.CanCollide = false
     aa.Shape = "Ball"
     aa.CFrame = lb.CFrame
     aa.Anchored = true
     aa.Transparency = 0
     aa.Size = vt(1,1,1)
     local thinger = Instance.new("SpecialMesh",aa)
     thinger.MeshType = meshtype
thinger.Scale = vt(225,225,225)
local explosion = Instance.new("Explosion",aa)
explosion.Position = aa.Position
explosion.BlastRadius = 500
explosion.BlastPressure = 100
local exp = Instance.new("ParticleEmitter",aa)
exp.Texture = "rbxassetid://296874871"
exp.LightEmission = 1
exp.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
exp.Rate = 9000000000
exp.Lifetime = NumberRange.new(1)
exp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,175,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Speed = NumberRange.new(100)
exp.VelocitySpread = 9000000
exp.Rotation = NumberRange.new(-500,500)
exp.RotSpeed = NumberRange.new(-500,500)
local expa = Instance.new("ParticleEmitter",aa)
expa.Texture = "rbxassetid://296874871"
expa.LightEmission = 1
expa.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
expa.Rate = 9000000000
expa.Lifetime = NumberRange.new(2.75)
expa.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,150,0)})
expa.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
expa.Speed = NumberRange.new(100)
expa.VelocitySpread = 9000000
expa.Rotation = NumberRange.new(-500,500)
expa.RotSpeed = NumberRange.new(-500,500)
local exp2 = exp:Clone()
exp2.Parent = aa
local exp3 = exp:Clone()
exp3.Parent = aa
local exp4 = exp:Clone()
exp4.Parent = aa
local exp5 = exp:Clone()
exp5.Parent = aa
local exp6 = exp:Clone()
exp6.Parent = aa
local exp7 = exp:Clone()
exp7.Parent = aa
local expa2 = expa:Clone()
expa2.Parent = aa
local expa3 = expa:Clone()
expa3.Parent = aa
local expa4 = expa:Clone()
expa4.Parent = aa
local expa5 = expa:Clone()
expa5.Parent = aa
local expa6 = expa:Clone()
expa6.Parent = aa
local expa7 = expa:Clone()
expa7.Parent = aa
     for i = 0, 1 do
     val = val - 0.025*3.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     exp.Rate = 0
     exp2.Rate = 0
     exp3.Rate = 0
     exp4.Rate = 0
     exp5.Rate = 0
     exp6.Rate = 0
     exp7.Rate = 0
     for i = 0, 1 do
     val = val - 0.025*3.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     expa.Rate = 0
     expa2.Rate = 0
     expa3.Rate = 0
     expa4.Rate = 0
     expa5.Rate = 0
     expa6.Rate = 0
     expa7.Rate = 0
     for i = 0, 21 do
     val = val - 0.025*3.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     for i = 0, 4 do
     val = val - 0.05
     aa.Transparency = aa.Transparency + 0.065*4.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
end
end
end)
		for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25 + 2.5 * math.cos(sine / 32))), 0.3)
		end
	attack = false
        wait(60)
        sa:Destroy()
        sa:Destroy()
        sa:Destroy()
        sa:Destroy()
        sa:Destroy()
        aura:Destroy()
        aura2:Destroy()
        lb:Destroy()
end


function InfernoMeteor()
	attack = true
chatfunc("Inferno...")
		handleweld.Part0 = rarm
local tra = Instance.new("ParticleEmitter",handle)
tra.Texture = "rbxassetid://296874871"
tra.LightEmission = 0.75
tra.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
tra.Rate = 99999
tra.Lifetime = NumberRange.new(0.25)
tra.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,0,0)})
tra.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.25,0)})
tra.Speed = NumberRange.new(0)
tra.Rotation = NumberRange.new(-500,500)
tra.VelocitySpread = 90000
tra.LockedToPart = true
tra.RotSpeed = NumberRange.new(-500,500)
local tra2 = Instance.new("ParticleEmitter",handle)
tra2.Texture = "http://www.roblox.com/asset/?id=745304849"
tra2.LightEmission = 1
tra2.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
tra2.Rate = 50
tra2.Lifetime = NumberRange.new(0.5)
tra2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(1,0,0)})
tra2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.5,0)})
tra2.Speed = NumberRange.new(0)
tra2.Rotation = NumberRange.new(-500,500)
tra2.VelocitySpread = 90000
tra2.LockedToPart = true
tra2.RotSpeed = NumberRange.new(-500,500)
		local sa = Instance.new("Sound",handle)
sa.SoundId = "rbxassetid://565538688"
sa.Volume = 1.5
sa.Pitch = 0.975
sa:Play()
		for i = 0,4,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25 + 2.5 * math.cos(sine / 32))), 0.3)
		end
chatfunc("Meteor!!")
		local sa = Instance.new("Sound",handle)
sa.SoundId = "rbxassetid://304529688"
sa.Volume = 1.5
sa.Pitch = 0.85
sa:Play()
		tra.Rate = 0
		tra2.Rate = 0
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Bright blue").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = handle.CFrame
     lb.Anchored = true
     lb.Transparency = 1
     lb.Size = vt(1,1,1)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = meshtype
local hitted = false
lb.Anchored = false
local trail = Instance.new("ParticleEmitter",lb)
trail.Texture = "rbxassetid://296874871"
trail.LightEmission = 1
trail.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
trail.Rate = 9999
trail.Lifetime = NumberRange.new(1.5)
trail.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,25,0),NumberSequenceKeypoint.new(1,0,0)})
trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
trail.Speed = NumberRange.new(0,0)
trail.Rotation = NumberRange.new(-500,500)
trail.RotSpeed = NumberRange.new(-500,500)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *95
  bv.Parent = lb
wait(0.05)
lb.Touched:connect(function(hit)
if hitted == false then
hitted = true
trail.Rate = 0
lb.Anchored = true
local aa = Instance.new("Part")
local val = 1*8
  aa.Parent = lb
		local exsound = Instance.new("Sound",aa)
exsound.SoundId = "rbxassetid://402347142"
exsound.Volume = 10
exsound.Pitch = 0.945
exsound:Play()
   aa.Material = "Neon"
    aa.Color = BrickColor.new("Bright blue").Color
     aa.CanCollide = false
     aa.Shape = "Ball"
     aa.CFrame = lb.CFrame
     aa.Anchored = true
     aa.Transparency = 0
     aa.Size = vt(1,1,1)
     local thinger = Instance.new("SpecialMesh",aa)
     thinger.MeshType = meshtype
thinger.Scale = vt(15,15,15)
local explosion = Instance.new("Explosion",aa)
explosion.Position = aa.Position
explosion.BlastRadius = 65
explosion.BlastPressure = 100
local exp = Instance.new("ParticleEmitter",aa)
exp.Texture = "rbxassetid://296874871"
exp.LightEmission = 1
exp.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
exp.Rate = 9000000000
exp.Lifetime = NumberRange.new(1)
exp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,100,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Speed = NumberRange.new(200)
exp.VelocitySpread = 9000000
exp.Rotation = NumberRange.new(-500,500)
exp.RotSpeed = NumberRange.new(-500,500)
local expa = Instance.new("ParticleEmitter",aa)
expa.Texture = "rbxassetid://296874871"
expa.LightEmission = 1
expa.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
expa.Rate = 9000000000
expa.Lifetime = NumberRange.new(2.75)
expa.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,125,0)})
expa.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
expa.Speed = NumberRange.new(200)
expa.VelocitySpread = 9000000
expa.Rotation = NumberRange.new(-500,500)
expa.RotSpeed = NumberRange.new(-500,500)
local exp2 = exp:Clone()
exp2.Parent = aa
local exp3 = exp:Clone()
exp3.Parent = aa
local exp4 = exp:Clone()
exp4.Parent = aa
local exp5 = exp:Clone()
exp5.Parent = aa
local exp6 = exp:Clone()
exp6.Parent = aa
local exp7 = exp:Clone()
exp7.Parent = aa
local expa2 = expa:Clone()
expa2.Parent = aa
local expa3 = expa:Clone()
expa3.Parent = aa
local expa4 = expa:Clone()
expa4.Parent = aa
local expa5 = expa:Clone()
expa5.Parent = aa
local expa6 = expa:Clone()
expa6.Parent = aa
local expa7 = expa:Clone()
expa7.Parent = aa
     for i = 0, 1 do
     val = val - 0.025*8
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     exp.Rate = 0
     exp2.Rate = 0
     exp3.Rate = 0
     exp4.Rate = 0
     exp5.Rate = 0
     exp6.Rate = 0
     exp7.Rate = 0
     for i = 0, 1 do
     val = val - 0.025*8
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     expa.Rate = 0
     expa2.Rate = 0
     expa3.Rate = 0
     expa4.Rate = 0
     expa5.Rate = 0
     expa6.Rate = 0
     expa7.Rate = 0
     for i = 0, 21 do
     val = val - 0.025*8
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     for i = 0, 74 do
     val = val - 0.0145
     aa.Transparency = aa.Transparency + 0.0145
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
end
end)
	attack = false
        wait(30)
        sa:Destroy()
        tra:Destroy()
        tra2:Destroy()
        lb:Destroy()
end


function InfernoWrath()
attack = true
chatfunc("Inferno Wrath!!")
		for i = 0,4,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		end
local ff = Instance.new("ForceField",char)
hum.WalkSpeed = 0
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Bright blue").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = torso.CFrame
     lb.Anchored = true
     lb.Transparency = 1
     lb.Size = vt(1,1,1)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = meshtype
for i = 0, 4 do
	 local lbr = Instance.new("Part")
  lbr.Parent = char
   lbr.Material = "Neon"
    lbr.Color = BrickColor.new("Bright blue").Color
     lbr.CanCollide = false
     lbr.Shape = "Ball"
     lbr.CFrame = lb.CFrame
     lbr.Anchored = true
     lbr.Transparency = 1
     lbr.Size = vt(1,1,1)
     local thinga = Instance.new("SpecialMesh",lbr)
     thinga.MeshType = meshtype
     thinga.Scale = vt(20*6,20*6,20*6)
for z = 0, 19 do
wait(0.025)
lbr.Transparency = lbr.Transparency - 0.05
thinga.Scale = thinga.Scale - vt(1*6,1*6,1*6)
end
lbr:Destroy()
end
local aa = Instance.new("Part")
local val = 1*7.5
  aa.Parent = lb
		local exsound = Instance.new("Sound",handle)
exsound.SoundId = "rbxassetid://402347142"
exsound.Volume = 10
exsound.Pitch = 1
exsound:Play()
   aa.Material = "Neon"
    aa.Color = BrickColor.new("Bright blue").Color
     aa.CanCollide = false
     aa.Shape = "Ball"
     aa.CFrame = lb.CFrame
     aa.Anchored = true
     aa.Transparency = 0
     aa.Size = vt(1,1,1)
     local thinger = Instance.new("SpecialMesh",aa)
     thinger.MeshType = meshtype
thinger.Scale = vt(15*1.5,15*1.5,15*1.5)
local explosion = Instance.new("Explosion",aa)
explosion.Position = aa.Position
explosion.BlastRadius = 50
explosion.BlastPressure = 100
local exp = Instance.new("ParticleEmitter",aa)
exp.Texture = "rbxassetid://296874871"
exp.LightEmission = 1
exp.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
exp.Rate = 9000000000
exp.Lifetime = NumberRange.new(1)
exp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Speed = NumberRange.new(115)
exp.VelocitySpread = 9000000
exp.Rotation = NumberRange.new(-500,500)
exp.RotSpeed = NumberRange.new(-500,500)
local expa = Instance.new("ParticleEmitter",aa)
expa.Texture = "rbxassetid://296874871"
expa.LightEmission = 1
expa.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
expa.Rate = 9000000000
expa.Lifetime = NumberRange.new(2.75)
expa.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,75,0)})
expa.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
expa.Speed = NumberRange.new(115)
expa.VelocitySpread = 9000000
expa.Rotation = NumberRange.new(-500,500)
expa.RotSpeed = NumberRange.new(-500,500)
local exp2 = exp:Clone()
exp2.Parent = aa
local exp3 = exp:Clone()
exp3.Parent = aa
local exp4 = exp:Clone()
exp4.Parent = aa
local exp5 = exp:Clone()
exp5.Parent = aa
local exp6 = exp:Clone()
exp6.Parent = aa
local exp7 = exp:Clone()
exp7.Parent = aa
local expa2 = expa:Clone()
expa2.Parent = aa
local expa3 = expa:Clone()
expa3.Parent = aa
local expa4 = expa:Clone()
expa4.Parent = aa
local expa5 = expa:Clone()
expa5.Parent = aa
local expa6 = expa:Clone()
expa6.Parent = aa
local expa7 = expa:Clone()
expa7.Parent = aa
     for i = 0, 1 do
     val = val - 0.025*7.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     exp.Rate = 0
     exp2.Rate = 0
     exp3.Rate = 0
     exp4.Rate = 0
     exp5.Rate = 0
     exp6.Rate = 0
     exp7.Rate = 0
     for i = 0, 1 do
     val = val - 0.025*7.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
ff:Destroy()
hum.WalkSpeed = 16
attack = false
     expa.Rate = 0
     expa2.Rate = 0
     expa3.Rate = 0
     expa4.Rate = 0
     expa5.Rate = 0
     expa6.Rate = 0
     expa7.Rate = 0
     for i = 0, 21 do
     val = val - 0.025*7.5
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     for i = 0, 74 do
     val = val - 0.0145
     aa.Transparency = aa.Transparency + 0.0145
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
wait(5)
lb:Destroy()
end

function InfernoDemise()
attack = true
chatfunc("Inferno Demise!!")
local tra = Instance.new("ParticleEmitter",handle)
tra.Texture = "rbxassetid://296874871"
tra.LightEmission = 0.75
tra.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
tra.Rate = 99999
tra.Lifetime = NumberRange.new(0.25)
tra.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,0,0)})
tra.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.25,0)})
tra.Speed = NumberRange.new(0)
tra.Rotation = NumberRange.new(-500,500)
tra.VelocitySpread = 90000
tra.LockedToPart = true
tra.RotSpeed = NumberRange.new(-500,500)
local tra2 = Instance.new("ParticleEmitter",handle)
tra2.Texture = "http://www.roblox.com/asset/?id=745304849"
tra2.LightEmission = 1
tra2.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
tra2.Rate = 50
tra2.Lifetime = NumberRange.new(0.5)
tra2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5.5,0),NumberSequenceKeypoint.new(1,0,0)})
tra2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.5,0)})
tra2.Speed = NumberRange.new(0)
tra2.Rotation = NumberRange.new(-500,500)
tra2.VelocitySpread = 90000
tra2.LockedToPart = true
tra2.RotSpeed = NumberRange.new(-500,500)
		for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(180)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25 + 2.5 * math.cos(sine / 32))), 0.3)
		end
tra.Rate = 0
tra2.Rate = 0
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Bright blue").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = mouse.Hit
     lb.Anchored = true
     lb.Transparency = 1
     lb.Size = vt(1,1,1)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = meshtype
for i = 0, 4 do
	 local lbr = Instance.new("Part")
  lbr.Parent = char
   lbr.Material = "Neon"
    lbr.Color = BrickColor.new("Bright blue").Color
     lbr.CanCollide = false
     lbr.Shape = "Ball"
     lbr.CFrame = lb.CFrame
     lbr.Anchored = true
     lbr.Transparency = 1
     lbr.Size = vt(1,1,1)
     local thinga = Instance.new("SpecialMesh",lbr)
     thinga.MeshType = meshtype
     thinga.Scale = vt(20*4.5,20*4.5,20*4.5)
for z = 0, 19 do
wait(0.025)
lbr.Transparency = lbr.Transparency - 0.05
thinga.Scale = thinga.Scale - vt(1*4.5,1*4.5,1*4.5)
end
lbr:Destroy()
end
local aa = Instance.new("Part")
local val = 1*6.25
  aa.Parent = lb
		local exsound = Instance.new("Sound",aa)
exsound.SoundId = "rbxassetid://402347142"
exsound.Volume = 4.5
exsound.Pitch = 1
exsound:Play()
   aa.Material = "Neon"
    aa.Color = BrickColor.new("Bright blue").Color
     aa.CanCollide = false
     aa.Shape = "Ball"
     aa.CFrame = lb.CFrame
     aa.Anchored = true
     aa.Transparency = 0
     aa.Size = vt(1,1,1)
     local thinger = Instance.new("SpecialMesh",aa)
     thinger.MeshType = meshtype
thinger.Scale = vt(15*1.15,15*1.15,15*1.15)
local explosion = Instance.new("Explosion",aa)
explosion.Position = aa.Position
explosion.BlastRadius = 35
explosion.BlastPressure = 100
local exp = Instance.new("ParticleEmitter",aa)
exp.Texture = "rbxassetid://296874871"
exp.LightEmission = 1
exp.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
exp.Rate = 9000000000
exp.Lifetime = NumberRange.new(1)
exp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
exp.Speed = NumberRange.new(105)
exp.VelocitySpread = 9000000
exp.Rotation = NumberRange.new(-500,500)
exp.RotSpeed = NumberRange.new(-500,500)
local expa = Instance.new("ParticleEmitter",aa)
expa.Texture = "rbxassetid://296874871"
expa.LightEmission = 1
expa.Color = ColorSequence.new(Color3.new(0,25/255,255/255))
expa.Rate = 9000000000
expa.Lifetime = NumberRange.new(2.75)
expa.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,75,0)})
expa.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
expa.Speed = NumberRange.new(105)
expa.VelocitySpread = 9000000
expa.Rotation = NumberRange.new(-500,500)
expa.RotSpeed = NumberRange.new(-500,500)
local exp2 = exp:Clone()
exp2.Parent = aa
local exp3 = exp:Clone()
exp3.Parent = aa
local exp4 = exp:Clone()
exp4.Parent = aa
local exp5 = exp:Clone()
exp5.Parent = aa
local exp6 = exp:Clone()
exp6.Parent = aa
local exp7 = exp:Clone()
exp7.Parent = aa
local expa2 = expa:Clone()
expa2.Parent = aa
local expa3 = expa:Clone()
expa3.Parent = aa
local expa4 = expa:Clone()
expa4.Parent = aa
local expa5 = expa:Clone()
expa5.Parent = aa
local expa6 = expa:Clone()
expa6.Parent = aa
local expa7 = expa:Clone()
expa7.Parent = aa
     for i = 0, 1 do
     val = val - 0.025*6.25
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     exp.Rate = 0
     exp2.Rate = 0
     exp3.Rate = 0
     exp4.Rate = 0
     exp5.Rate = 0
     exp6.Rate = 0
     exp7.Rate = 0
     for i = 0, 1 do
     val = val - 0.025*6.25
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
attack = false
     expa.Rate = 0
     expa2.Rate = 0
     expa3.Rate = 0
     expa4.Rate = 0
     expa5.Rate = 0
     expa6.Rate = 0
     expa7.Rate = 0
     for i = 0, 21 do
     val = val - 0.025*6.25
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
     for i = 0, 74 do
     val = val - 0.0145
     aa.Transparency = aa.Transparency + 0.0145
     thinger.Scale = thinger.Scale + vt(val,val,val)
     wait()
     end
wait(5)
lb:Destroy()
tra:Destroy()
tra2:Destroy()
end

mouse.KeyDown:connect(function(key)
if key == "q" and attack == false then
InfernoComet()
end
if key == "e" and attack == false then
InfernoDemise()
end
if key == "r" and attack == false then
InfernoWrath()
end
if key == "f" and attack == false then
InfernoMeteor()
end
if key == "x" and attack == false then
InfernoHell()
end
end)

game:GetService("RunService").Stepped:connect(function()
  Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
	healthg.Text = math.floor(hum.Health).. "/" ..math.floor(hum.MaxHealth)
    if RootPart.Velocity.y > 1 and hit == nil then
      Anim = "Jump"
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
      if attack == false then
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(2.5),math.rad(0),math.rad(0)),.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.65, 0) * angles(math.rad(-10), math.rad(0), math.rad(50)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.65, 0) * angles(math.rad(-10), math.rad(0), math.rad(-50)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        if attack == false then
			RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(2.5),math.rad(0),math.rad(0)),.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.65, 0) * angles(math.rad(-10), math.rad(0), math.rad(90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.65, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.3)
end
      else
        if Torsovelocity < 1 and hit ~= nil then
          Anim = "Idle"
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(-10),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(10),math.rad(0)),.3)
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 32))* angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(20)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1, 0.35, -0.25) * angles(math.rad(20 + 1.5 * math.cos(sine / 32)), math.rad(-30), math.rad(-90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10 + 1.5 * math.cos(sine / 32))), 0.3)
          end
        else
          if Torsovelocity > 2 and hit ~= nil then
            Anim = "Walk"
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(-25),math.rad(0 + 50 * math.cos(sine / 6))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(-25),math.rad(0 + 50 * math.cos(sine / 6))),.3)
            if attack == false then
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 32))* angles(math.rad(15),math.rad(0),math.rad(25)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-25)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1, 0.35, -0.5) * angles(math.rad(20), math.rad(-30), math.rad(-90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0 - 45 * math.cos(sine / 5)), math.rad(0), math.rad(-10)), 0.3)
            end
          end
        end
      end
    end
  end
end)