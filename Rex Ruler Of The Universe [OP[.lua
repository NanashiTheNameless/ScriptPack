--Made by Noobygames12, edited by RealPieDiePew
--If credit is removed, go die.
paly = game.Players.LocalPlayer
p = game.Players.LocalPlayer
char = paly.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid
Player = game:GetService("Players").LocalPlayer
local mouse = Player:GetMouse()
Character = Player.Character
tors = Character.Torso
lleg = Character["Left Leg"]
root = Character.HumanoidRootPart
hed = Character.Head
rleg = Character["Right Leg"]
rarm = Character["Right Arm"]
larm = Character["Left Arm"]
tors.Material = Enum.Material.Fabric
local root = char.HumanoidRootPart
local rj = root.RootJoint
local deb = false
local shot = 0
local stanceToggle = "Idle1"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local hb = game:GetService("RunService").Heartbeat
local Stepped = game:GetService("RunService").Stepped
math.randomseed(os.time())
ptez = {0.7, 0.8, 0.9, 1}
local BC = Character["Body Colors"]
BC.HeadColor = BrickColor.new("Bright violet")
BC.LeftArmColor = BrickColor.new("Bright violet")
BC.LeftLegColor = BrickColor.new("Bright violet")
BC.RightArmColor = BrickColor.new("Bright violet")
BC.RightLegColor = BrickColor.new("Bright violet")
BC.TorsoColor = BrickColor.new("Really black")
local Effects = {}
hed.face:Destroy()
hum.MaxHealth = 1000000
attack = false
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
matr = math.random
local basiccooldown = math.huge
local ultcooldown = math.huge
local secondcooldown = math.huge
local thirdcooldown = math.huge
local s = Instance.new("Sound",char)
s.Name = "sos"
s.SoundId = "http://www.roblox.com/asset/?id=195900687"
s.Pitch = 1
s.Volume = math.huge
s.Looped = true
s:Play()

local prtrm = Instance.new("Part",Character)
prtrm.Size = vt(2.1,2.1,1.1)
prtrm.CanCollide = false
prtrm.Transparency = 0.5
prtrm.Material = "SmoothPlastic"
prtrm.BrickColor = bc("Really black")
local wldm = Instance.new("Weld",Character)
wldm.Part0 = tors
wldm.Part1 = prtrm

local prtr = Instance.new("Part",Character)
prtr.Size = vt(1.1,2.1,1.1)
prtr.CanCollide = false
prtr.Transparency = 0.5
prtr.Material = "SmoothPlastic"
prtr.BrickColor = bc("Bright violet")
local prtrl = Instance.new("Part",Character)
prtrl.Size = vt(1.1,2.1,1.1)
prtrl.CanCollide = false
prtrl.Transparency = 0.5
prtrl.Material = "SmoothPlastic"
prtrl.BrickColor = bc("Bright violet")
local eff = Instance.new("ParticleEmitter",prtr)
eff.LightEmission = 0
eff.Texture = "rbxassetid://284205403"
eff.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(1,0,1))
eff.Size = NumberSequence.new(0.5,1)
eff.Acceleration = vt(0,25,0)
eff.Speed = NumberRange.new(-5)
eff.LockedToPart = false
eff.Transparency = NumberSequence.new(0.95)
eff.Lifetime = NumberRange.new(0.5)
eff.Rate = 100000
eff.VelocitySpread = 25
local wld = Instance.new("Weld",Character)
wld.Part0 = rarm
wld.Part1 = prtr
local wldl = Instance.new("Weld",Character)
wldl.Part0 = rleg
wldl.Part1 = prtrl

local prtr2 = Instance.new("Part",Character)
prtr2.Size = vt(1.1,2.1,1.1)
prtr2.CanCollide = false
prtr2.Transparency = 0.5
prtr2.Material = "SmoothPlastic"
prtr2.BrickColor = bc("Bright violet")
local prtrl2 = Instance.new("Part",Character)
prtrl2.Size = vt(1.1,2.1,1.1)
prtrl2.CanCollide = false
prtrl2.Transparency = 0.5
prtrl2.Material = "SmoothPlastic"
prtrl2.BrickColor = bc("Bright violet")
local eff2 = Instance.new("ParticleEmitter",prtr2)
eff2.LightEmission = 0
eff2.Texture = "rbxassetid://284205403"
eff2.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(1,0,1))
eff2.Size = NumberSequence.new(0.5,1)
eff2.Acceleration = vt(0,25,0)
eff2.Speed = NumberRange.new(-5)
eff2.LockedToPart = false
eff2.Transparency = NumberSequence.new(0.95)
eff2.Lifetime = NumberRange.new(0.5)
eff2.Rate = 100000
eff2.VelocitySpread = 25
local wld2 = Instance.new("Weld",Character)
wld2.Part0 = larm
wld2.Part1 = prtr2
local wldl2 = Instance.new("Weld",Character)
wldl2.Part0 = lleg
wldl2.Part1 = prtrl2

local lightning = Instance.new("ParticleEmitter",torso)
lightning.Texture = "http://www.roblox.com/asset/?id=348321827"
lightning.LightEmission = 0
lightning.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(1,0,1))
lightning.LockedToPart = true
lightning.Rate = 20
lightning.Lifetime = NumberRange.new(0.1,0.10)
lightning.Rotation = NumberRange.new(0,360)
lightning.Size = NumberSequence.new(3,3,3)
lightning.Transparency = NumberSequence.new(0,0)
lightning.Speed = NumberRange.new(0,0)
lightning.RotSpeed = NumberRange.new(0,0)
lightning.ZOffset = 5
lightning.Enabled = false

local eeeffecto = Instance.new("ParticleEmitter",torso)
eeeffecto.Texture = "http://www.roblox.com/asset/?id=305943367"
eeeffecto.LightEmission = 0
eeeffecto.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(1,0,1))
eeeffecto.LockedToPart = true
eeeffecto.Rate = 10
eeeffecto.Lifetime = NumberRange.new(0.1,0.1)
eeeffecto.Rotation = NumberRange.new(0,0)
eeeffecto.Size = NumberSequence.new(9,9,9)
eeeffecto.Transparency = NumberSequence.new(0,0)
eeeffecto.Speed = NumberRange.new(0,0)
eeeffecto.RotSpeed = NumberRange.new(0,0)
eeeffecto.Enabled = false


for i,v in pairs(Character:children()) do
    if v:IsA("Shirt") then
        v:Destroy()
    end
end
for i,v in pairs(Character:children()) do
    if v:IsA("Pants") then
        v:Destroy()
    end
end
for i,v in pairs(char:children()) do
    if v:IsA("Accessory") then
        v:Destroy()
    end
end

CV="Hot pink"

Reaper = Instance.new("Model",Character)
Reaper.Name = "Reaper"
rh = Instance.new("Part")
rh.Name = "rh"
rh.Parent = Reaper
rh.Locked = true
rh.CanCollide = false
mesh = Instance.new("SpecialMesh")
rh.formFactor =  "Symmetric"
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=21057410"
mesh.TextureId = "http://www.roblox.com/asset/?id=250577405"
mesh.Scale = Vector3.new(1.05, 1.05, 1.05)
mesh.Parent = rh
local weld = Instance.new("Weld")
weld.Parent = rh
weld.Part0 = rh
weld.Part1 = Player.Character.Head
weld.C0 = CFrame.new(0, -0.045, -0.028)*CFrame.Angles(0, 0, 0)

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
text.Font = "SciFi"
text.TextStrokeColor3 = BrickColor.new("Really black").Color

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
text.TextColor3 = BrickColor.new("Bright violet").Color
v.Shape="Block"
text.Text = "Rex, Ruler of the Universe:" ..math.floor(hum.Health)

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

local boll = Instance.new("Part",game.Lighting)
boll.Transparency = 0.5
boll.Material = "Neon"
boll.BrickColor = bc("Bright red")
boll.Anchored = true
boll.Size = vt(1,1,1)
boll.Shape = "Ball"
boll.CanCollide = false

local shur = Instance.new("Part",game.Lighting)
shur.Transparency = 0
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.Size = vt(5,0.2,5)
shur.CanCollide = false
local Meshshur = Instance.new("CylinderMesh",shur)

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
                showDamage(hit.Parent,Damage,.5,TorsoColor)
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
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
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.Material = "Neon"
        c.BrickColor=bc("New Yeller")
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
  local tick = Instance.new("Sound",c)
  tick.SoundId = "rbxassetid://12221976"
  tick.Volume = 5
  tick.Pitch = 4
  tick:Play()
        c.formFactor="Plate"
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
p:Destroy()
end

function MagniDamage(Hit, Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then 
					Damagefunc(Hit, head, mindam, maxdam, knock, Type, RootPart, .2, 1, 3)
				end
			end
		end
	end
end

function ExplodeFast(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
	expld.Visible = false
local plode = Instance.new("Sound",expart)
  plode.SoundId = "rbxassetid://153274423"
  plode.Volume = 2.5
  plode.Pitch = 1
  plode.Looped = false
  plode:Play()
local ploder = Instance.new("Sound",expart)
  ploder.SoundId = "rbxassetid://130972023"
  ploder.Volume = 2.5
  ploder.Pitch = 1
  ploder.Looped = false
  ploder:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Really black")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Bright violet")
	expart2.CFrame = par.CFrame
        local value = 1*rad/6.5
par:Destroy()
	for i = 0, 100 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.035*rad/6.5
                if value < 1 then
                value = 0.25
		expart.Transparency = expart.Transparency + 0.025
		expart2.Transparency = expart2.Transparency + 0.025
                end
		wait()
	end
  plode.Parent = nil
  ploder.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end

function Explode(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
	expld.Visible = false
local plode = Instance.new("Sound",expart)
  plode.SoundId = "rbxassetid://288641686"
  plode.Volume = 2.5
  plode.Pitch = 0.75
  plode.Looped = false
  plode:Play()
local ploder = Instance.new("Sound",expart)
  ploder.SoundId = "rbxassetid://206049428"
  ploder.Volume = 3.25
  ploder.Pitch = 0.5
  ploder.Looped = false
  ploder:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Really black")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Bright violet")
	expart2.CFrame = par.CFrame
        local value = 1*rad/6.5
par:Destroy()
	for i = 0, 100 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.035*rad/6.5
                if value < 1 then
                value = 0.25
		expart.Transparency = expart.Transparency + 0.025
		expart2.Transparency = expart2.Transparency + 0.025
                end
		wait()
	end
  plode.Parent = nil
  ploder.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end

function ExplodeMass(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
	expld.Visible = false
local plode = Instance.new("Sound",workspace)
  plode.SoundId = "rbxassetid://579687077"
  plode.Volume = 1
  plode.Pitch = 0.75
  plode.Looped = false
  plode:Play()
local plodez = Instance.new("Sound",workspace)
  plodez.SoundId = "rbxassetid://288641686"
  plodez.Volume = 1
  plodez.Pitch = 0.625
  plodez.Looped = false
  plodez:Play()
local plodeza = Instance.new("Sound",workspace)
  plodeza.SoundId = "rbxassetid://197161452"
  plodeza.Volume = 0.85
  plodeza.Pitch = 0.5
  plodeza.Looped = false
  plodeza:Play()
local plodezar = Instance.new("Sound",workspace)
  plodezar.SoundId = "rbxassetid://197161452"
  plodezar.Volume = 0.85
  plodezar.Pitch = 0.2
  plodezar.Looped = false
  plodezar:Play()
  local s3 = Instance.new("Sound",workspace)
  s3.SoundId = "rbxassetid://268931189"
  s3.Pitch = 0.875
  s3.Volume = 1
  s3.Looped = false
  s3:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Really black")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Bright violet")
	expart2.CFrame = par.CFrame
        local value = 1*rad/10
        par:Destroy()
	for i = 0, 300 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.0175*rad/10
                if value <= 0 then
		expart.Transparency = expart.Transparency + 0.0125
		expart2.Transparency = expart2.Transparency + 0.0125
                value = 0.25
                end
		wait()
	end
  plode.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end

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
local healthgui = gui("TextLabel", basframe, "Health: " ..basiccooldown, 1, BrickColor.random().Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, -0.5, 0))
local basicgui = gui("TextLabel", basframe, "Basic: " ..basiccooldown, 1, BrickColor.random().Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0.25, 0))
local basic2gui = gui("TextLabel", basframe, "FirstMove: " ..secondcooldown, 1, BrickColor.random().Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1.25, 0))
local basic3gui = gui("TextLabel", basframe, "SecondMove: " ..thirdcooldown, 1, BrickColor.random().Color, UDim2.new(0, 0, 0, 0), UDim2.new(1.15, 0, 0.25, 0))
local basic4gui = gui("TextLabel", basframe, "Ultimate: " ..ultcooldown, 1, BrickColor.random().Color, UDim2.new(0, 0, 0, 0), UDim2.new(1.15, 0, 1.25, 0))
basicgui.ZIndex = 2
healthgui.TextSize = 24
healthgui.ZIndex = 2
basicgui.TextSize = 24
basic4gui.ZIndex = 2
basic4gui.TextSize = 24
basic3gui.ZIndex = 2
basic3gui.TextSize = 24
basic2gui.ZIndex = 2
basic2gui.TextSize = 24


function Blaze()
if ultcooldown >= 30 then
local kolor = Instance.new("ColorCorrectionEffect",game.Lighting)
  local see = Instance.new("Sound",workspace)
  see.SoundId = "rbxassetid://21420962"
  see.Pitch = 1
  see.Volume = 2.75
  see.Looped = false
  see:Play()
kolor.Brightness = -1
kolor.Contrast = -1
kolor.TintColor = BrickColor.new("Bright violet").Color
wait(0.1)
for i = 0, 9 do 
kolor.Brightness = kolor.Brightness + 0.35
kolor.Contrast = kolor.Contrast + 0.35
wait(0.05)
end
for i = 0, 9 do 
kolor.Brightness = kolor.Brightness - 0.35
kolor.Contrast = kolor.Contrast - 0.35
wait(0.05)
end
kolor:Destroy()
local sloc = Instance.new("Part",workspace)
local msh = Instance.new("SpecialMesh",sloc)
msh.MeshType = "Sphere"
sloc.Size = vt(1,1,1)
sloc.Transparency = 1
sloc.BrickColor = bc("Really black")
sloc.Position = hed.Position + vt(0,250,0)
sloc.CanCollide = false
sloc.Shape = "Ball"
sloc.Anchored = true
sloc.Material = "Neon"
  local s = Instance.new("Sound",workspace)
  s.SoundId = "rbxassetid://342793847"
  s.Pitch = 0.75
  s.Volume = 1
  s.Looped = false
  s:Play()
  local s2 = Instance.new("Sound",workspace)
  s2.SoundId = "rbxassetid://137463716"
  s2.Pitch = 0.5
  s2.Volume = 1
  s2.Looped = false
  s2:Play()
local val = 0.65*5
for i = 0 , 150 do
sloc.Transparency = sloc.Transparency - 0.035
msh.Scale = msh.Scale + vt(val,val,val)
val = val - 0.0075*2.5
wait()
end
msh.Scale = msh.Scale - vt(1,1,1)
sloc.Transparency = sloc.Transparency + 0.015
local spart = Instance.new("Part",workspace)
local msh2 = Instance.new("SpecialMesh",spart)
msh2.MeshType = "Sphere"
spart.Size = vt(2,2,2)
spart.Shape = "Ball"
spart.BrickColor = bc("Really black")
spart.Material = "Neon"
spart.Transparency = 0
spart.Anchored = false
msh2.Scale = msh.Scale/2
spart.Rotation = hed.Rotation
spart.CanCollide = false
spart.Position = sloc.Position + vt(math.random(-0,0),math.random(-0,0),math.random(-0,0))
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector * 125
  bv.Parent = spart
  local tick = Instance.new("Sound",workspace)
  tick.SoundId = "rbxassetid://203691467"
  tick.Volume = 2
  tick.Pitch = 0.5
  tick:Play()
sloc:Destroy()
  wait(0.00001)
  pewdiepie=spart.Touched:connect(function(hit)
  ExplodeMass(125,spart)
  end)
sloc:Destroy()
end
if ultcooldown < 1 then
for i = 0, 29 do
ultcooldown = ultcooldown + 1
wait(1)
end
end
end

function LocateSpot()
  if basiccooldown >= 5 then
  local spart = Instance.new("Part",workspace)
local msh = Instance.new("SpecialMesh",spart)
msh.MeshType = "Sphere"
  local sa2 = Instance.new("Sound",spart)
  sa2.SoundId = "rbxassetid://244578827"
  sa2.Pitch = 1
  sa2.Volume = 2.5
  sa2.Looped = false
  sa2:Play()
  spart.Size = vt(1,1,1)
  spart.BrickColor = BrickColor.new("Bright violet")
  spart.Material = "Neon"
  spart.Transparency = 0.25
  spart.Anchored = true
  spart.CanCollide = false
  spart.CFrame = mouse.Hit
  spart.Rotation = vt(0,0,0)
  local value = 2.75
  for i = 0, 74 do
  value = value - 0.035
  msh.Scale = msh.Scale + vt(value,0,value)
  wait()
  end
  wait(1)
  for i = 0, 24 do
  value = value - 0.2215
  spart.Transparency = spart.Transparency - 0.015
  msh.Scale = msh.Scale + vt(value,500,value)
  wait()
  end
  wait(0.1)
  Explode(42.5,spart)
  end
end

function TeleportSpot()
  if basiccooldown >= 5 then
  local sparta = Instance.new("Part",workspace)
local msher = Instance.new("SpecialMesh",sparta)
msher.MeshType = "Sphere"
msher.Scale = vt(0,0.1,0)
  local sa2 = Instance.new("Sound",sparta)
  sa2.SoundId = "rbxassetid://169380479"
  sa2.Pitch = 0.75
  sa2.Volume = 2
  sa2.Looped = false
  sa2:Play()
  local sa3 = Instance.new("Sound",sparta)
  sa3.SoundId = "rbxassetid://289556450"
  sa3.Pitch = 1
  sa3.Volume = 3
  sa3.Looped = false
  sparta.Size = vt(1,1,1)
  sparta.BrickColor = BrickColor.new("Bright violet")
  sparta.Material = "Neon"
  sparta.Transparency = 0
  sparta.Anchored = true
  sparta.CanCollide = false
  sparta.CFrame = mouse.Hit
  sparta.Rotation = vt(0,0,0)
  local sparte = sparta:Clone()
  sparte.Position = tors.Position + vt(0,-2.75,0)
  sparte.Parent = workspace
  local msher2 = sparte.Mesh
  local value2 = 2.5
  for i = 0, 24 do
  value2 = value2 - 0.065
  msher.Scale = msher.Scale + vt(value2,0,value2)
  msher2.Scale = msher2.Scale + vt(value2,0,value2)
  wait()
  end
  for i = 0, 5 do
  msher.Scale = msher.Scale + vt(0,500,0)
  msher2.Scale = msher2.Scale + vt(0,500,0)
  wait()
  end
  wait(0.1)
  sa3:Play()
  tors.CFrame = sparta.CFrame
  for i = 0, 49 do
  value2 = value2 - 0.5
  sparta.Transparency = sparta.Transparency + 0.1
  msher.Scale = msher.Scale - vt(value2,-500,value2)
  sparte.Transparency = sparte.Transparency + 0.1
  msher2.Scale = msher2.Scale - vt(value2,-500,value2)
  wait()
  end
  sparta:Destroy() 
  sparte:Destroy()
  end
end

mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

function Slam()
    local part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2.8,-1.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    local part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-2.4,-1.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new("Plum")
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    x = Instance.new("Sound",larm)
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Pitch = ptez[math.random(1,#ptez)]
    x.Volume = 1
    wait(.1)
    x1 = Instance.new("Sound",larm)
    x1.SoundId = "http://www.roblox.com/asset/?id=206082327"
    x1.Pitch = ptez[math.random(1,#ptez)]
    x1.Volume = 1
    wait(.1)
	x:Play()
    x1:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(99,99))
        end
    end
    coroutine.resume(coroutine.create(function() 
        for i=0,0.62,0.13 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
        x:Destroy()
    end))
end

game.StarterGui:SetCore("ChatMakeSystemMessage", {
	Text = "Made by Noobygames12, Edited by RealPieDiePew.";
	Color = Color3.new(0, 1, 1);
	Font = Enum.Font.Code;
	FontSize = Enum.FontSize.Size24;
})
wait()
game.StarterGui:SetCore("ChatMakeSystemMessage", {
	Text = "RealPieDiePew#4968 and dont remove credits.";
	Color = Color3.new(0, 1, 1);
	Font = Enum.Font.Code;
	FontSize = Enum.FontSize.Size24;
})

Reap = function()
	
	rarm.Touched:connect(function(ht1)
		
		hit1 = ht1.Parent
		if ht1 and hit1:IsA("Model") and hit1:FindFirstChild("Humanoid") and hit1.Name ~= Player.Name and Debounces.Reaping == true and Debounces.Reaped == false then
			Debounces.Reaped = true
			h = hit1:FindFirstChild("Humanoid")
			if h ~= nil then
				hum.MaxHealth = hum.MaxHealth + h.MaxHealth
				hum.Health = hum.MaxHealth
				e = Instance.new("Part")
				e.TopSurface = 0
				e.BottomSurface = 0
				e.Reflectance = 0.05
				e.formFactor = "Symmetric"
				e.Size = Vector3.new(1, 1, 1)
				e.Anchored = true
				e.CanCollide = false
				e.BrickColor = BrickColor.new("Really blue")
				e.CFrame = CFrame.new(ht1.Position)
				e.Parent = hit1
				Instance.new("BlockMesh", e)
				coroutine.resume(coroutine.create(function(par)
			
			for i = 1, 13 do
				par.CFrame = par.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-20, 20) / 50, math.random(-20, 20) / 50, math.random(-20, 20) / 50)
				par.Transparency = i / 13
				par.Mesh.Scale = par.Mesh.Scale + Vector3.new(0.4, 0.4, 0.4)
				wait()
			end
			par.Parent = nil
		end
), e)
				for _,v in pairs(hit1:children()) do
					if v.className == "Part" then
						v.BrickColor = BrickColor.new("Really black")
						v.RotVelocity = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) * 3
						v:BreakJoints()
						f = Instance.new("BodyVelocity")
						f.P = 3000
						f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
						f.velocity = Vector3.new(math.random(-30, 30) / 10, math.random(-30, 30) / 10, math.random(-30, 30) / 10)
						f.Parent = v
						v.CanCollide = false
						coroutine.resume(coroutine.create(function(par)
			
			for i = 1, 30 do
				par.Transparency = i / 30
				wait()
			end
			par.Parent = nil
		end
), v)
					else
						if v.className == "Hat" then
							v.Handle.BrickColor = BrickColor.new("Really black")
							v.Handle.RotVelocity = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) * 3
							v.Handle:BreakJoints()
							f = Instance.new("BodyVelocity")
							f.P = 3000
							f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
							f.velocity = Vector3.new(math.random(-30, 30) / 10, math.random(-30, 30) / 10, math.random(-30, 30) / 10)
							f.Parent = v.Handle
							v.Handle.CanCollide = false
							coroutine.resume(coroutine.create(function(par)
			
			for i = 1, 30 do
				par.Transparency = i / 30
				wait()
			end
			par.Parent = nil
		end
), v.Handle)
							if h == nil then
								wait()
							end
						end
					end
				end
			end
		end
	end
)
	Debounces.Reaped = false
end

mouse.KeyDown:connect(function(key)
	
	if key == "e" and Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.NoIdl = true
		Debounces.on = true
		Debounces.Reaping = true
		for i = 1, 35 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0.4) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(70)), .4)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-30)), 0.4)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(70), 0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-10)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(7), math.rad(-20), math.rad(10)), 0.4)
			if Debounces.on == false then
				break
			end
			lightning.Enabled = true
			eeeffecto.Enabled = true
			fat.Event:wait()
		end
		do
			wait(1)
			Reap()
			for i = 1, 10 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, -0.2) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(70)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0.2) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(-70), 0), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.7)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-20), math.rad(-10)), 0.7)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(10)), 0.7)
				if Debounces.on == false then
					break
				end
				lightning.Enabled = false
				eeeffecto.Enabled = false
				fat.Event:wait()
			end
			do
				if Debounces.CanAttack == false then
					Debounces.CanAttack = true
					Debounces.NoIdl = false
					Debounces.on = false
					Debounces.Reaping = false
				end
			end
		end
	end
end
)

function ExplosiveLightBall()
  if basiccooldown >= 5 then
  local spart = Instance.new("Part",workspace)
local msh = Instance.new("SpecialMesh",spart)
msh.MeshType = "Sphere"
  local sa = Instance.new("Sound",hed)
  sa.SoundId = "rbxassetid://203691467"
  sa.Pitch = 0.775
  sa.Volume = 1
  sa.Looped = false
  local sa1 = Instance.new("Sound",hed)
  sa1.SoundId = "rbxassetid://200633529"
  sa1.Pitch = 0.75
  sa1.Volume = 1
  sa1.Looped = false
  sa1:Play()
  local sans1 = Instance.new("Sound",hed)
  sans1.SoundId = "rbxassetid://200633529"
  sans1.Pitch = 0.725
  sans1.Volume = 1
  sans1.Looped = false
  sans1:Play()
  spart.Size = vt(1,1,1)
  spart.BrickColor = BrickColor.new("Bright violet")
  spart.Material = "Neon"
  spart.Transparency = 1
  spart.Anchored = true
  spart.CanCollide = false
  spart.Position = hed.Position + vt(0,20,0) 
  local value = 2.5
  for i = 0, 24 do
  spart.Transparency = spart.Transparency - 0.05
  value = value - 0.05
  msh.Scale = msh.Scale + vt(value,value,value)
  wait()
  end
  sa:Play()
  spart.Anchored = false
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *125
  bv.Parent = spart
  wait(0.1)
  pewdiepie=spart.Touched:connect(function(hit) Explode(20,spart) end)
  end
end

function ExplosiveLightBalls()
  if basiccooldown >= 5 then
  local spart = Instance.new("Part",workspace)
local msh = Instance.new("SpecialMesh",spart)
msh.MeshType = "Sphere"
  spart.Size = vt(1,1,1)
  spart.BrickColor = BrickColor.new("Bright violet")
  spart.Material = "Neon"
  spart.Transparency = 0.65
  spart.Anchored = true
  spart.CanCollide = false
  spart.CFrame = mouse.Hit
  spart.Rotation = vt(0,0,0)
  msh.Scale = vt(15,15,15)*2
  wait(0.35)
  ExplodeFast(15,spart)
  end
end
 	
mouse.KeyDown:connect(function(k)
  
k = k:lower()
if k == "z" then
  ExplosiveLightBall()
end
if k == "x" then
  LocateSpot()
end
if k == "c" then
  ExplosiveLightBalls()
end
if k == "v" then
  TeleportSpot()
end
if k == "b" then
  Blaze()
end
end)

----------------------------------------------------
fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)
----------------------------------------------------
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
ks = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
	return a + (b - a)*t
end
 
function slerp(a, b, t) --Spherical interpolation
	dot = a:Dot(b)
	if dot > 0.99999 or dot < -0.99999 then
		return t <= 0.5 and a or b
	else
		r = math.acos(dot)
		return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
	end
end
 
function matrixInterpolate(a, b, t)
	local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
	local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
	local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
	local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
	local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
	local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
	local t = v1:Dot(v2)
	if not (t < 0 or t == 0 or t > 0) then 	-- Failsafe
		return CFrame.new()
	end
	return CFrame.new(
	v0.x, v0.y, v0.z,
	v1.x, v1.y, v1.z,
	v2.x, v2.y, v2.z,
	v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
hats={}
Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
	p:BreakJoints()
    return p
end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end
Mesh = function(par,num,x,y,z)
    local msh = nil
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 'Wedge'
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

function addh(id,txt,s1,s2,s3,x,y,z)
    local hat=Part(1,1,1,'',0,false,false,char)
    table.insert(hats,hat)
    Weld(char.Head,hat,x,y,z,0,0,0,p)
    m=Mesh(hat,'http://www.roblox.com/asset/?id='..id,s1,s2,s3)
    m.TextureId='http://www.roblox.com/asset/?id='..txt
    return m
end

addh('11380070','11380053',1,1,1,0,-.75,0)
----------------------------------------------------
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
----------------------------------------------------
local animpose = "Idle1"
local lastanimpose = "Idle1"
local grab = false
local Smooth = 1
local sine = 0
local change = 1
local val = 0
local ffing = false
----------------------------------------------------
jump = false
rs:connect(function()
	if char.Humanoid.Jump == true then
		jump = true
	else
		jump = false
	end
	char.Humanoid.FreeFalling:connect(function(f)
		if f then
			ffing = true
		else
			ffing = false
		end
	end)
	sine = sine + change
	if jump == true then
		animpose = "Jumping"
	elseif ffing == true then
		animpose = "Freefalling"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
		animpose = "Idle"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
		animpose = "Walking"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
		animpose = "Running"
	end
	RightLeg = CFrame.new(0.5,-1,0)
	LeftLeg = CFrame.new(-0.5,-1,0)

	lefth = (torso.CFrame*LeftLeg)
	righth = (torso.CFrame*RightLeg)

	speed = Vector3.new(torso.Velocity.X,0,torso.Velocity.Z)

	TiltOnAxis = (torso.CFrame-torso.CFrame.p):vectorToObjectSpace(speed/100)

	local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
	local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
	if animpose ~= lastanimpose then
		sine = 0
		if Debounces.NoIdl == false then
			if stanceToggle == "Idle1" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-12-4*math.cos(sine/22)),math.rad(-12-2*math.cos(sine/22)),math.rad(12+2*math.cos(sine/22))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-0.2)*CFrame.Angles(math.rad(20+4*math.cos(sine/22)),math.rad(-22-2*math.cos(sine/22)),math.rad(-15-2*math.cos(sine/22))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-12+2.5*math.cos(sine/22)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
			end
			fat.Event:wait()
		end
		else
	end
	lastanimpose = animpose
	if Debounces.NoIdl == false then
		if animpose == "Idle" then
			change = 0.5
			if stanceToggle == "Idle1" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.57 - 0.1 * math.sin(sine / 10), 0.1 - 0.1 * math.sin(sine / 10)) * CFrame.Angles(math.rad(-3 + 6 * math.sin(sine / 10)), math.rad(-15 - 10 * math.cos(sine / 10)), math.rad(13 + 6 * math.cos(sine / 10))), 0.4)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.4)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.57 - 0.1 * math.sin(sine / 10), 0.1 - 0.1 * math.sin(sine / 10)) * CFrame.Angles(math.rad(-4 - 6 * math.sin(sine / 10)), math.rad(15 + 10 * math.cos(sine / 10)), math.rad(-13 - 6 * math.cos(sine / 10))), 0.4)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0.1 - 0.05 * math.cos(sine / 10)) * CFrame.Angles(math.rad(14 - 5 * math.cos(sine / 10)), math.rad(20), 0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2 - 0.16 * math.cos(sine / 10), 0) * CFrame.Angles(0, math.rad(20), math.rad(0)), 0.05)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10 + 3 * math.cos(sine / 10)), math.rad(0), math.rad(0)), 0.05)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.05 - 0.05 * math.sin(sine / 10), 0) * CFrame.Angles(math.rad(-12 + 5 * math.sin(sine / 10)), math.rad(20 + 6 * math.sin(sine / 10)), math.rad(-12 - 2 * math.sin(sine / 10))), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.6 - 0.1 * math.sin(sine / 10), -0.5) * CFrame.Angles(math.rad(-9 + 5 * math.sin(sine / 10)), math.rad(-9 - 6 * math.sin(sine / 10)), math.rad(4 + 3 * math.sin(sine / 10))), 0.4)
			end
			elseif animpose == "Walking" then
				change = 1
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-20) + root.RotVelocity.Y / 20, math.rad(16) - root.RotVelocity.Y / 20, math.rad(-10 - 2 * math.cos(sine / 14)) + root.RotVelocity.Y / 20), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-14), 0, 0), 0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20) - root.RotVelocity.Y / 10, 0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2 - 0.17 * math.cos(sine / 14), 0) * CFrame.Angles(math.rad(-16), math.rad(0), root.RotVelocity.Y / 10), 0.05)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-20) + root.RotVelocity.Y / 10, 0), 0.05)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1.05 - 0.05 * math.sin(sine / 10), 0) * CFrame.Angles(math.rad(-13 + 3 * math.sin(sine / 10)), math.rad(-20) + root.RotVelocity.Y / 15, math.rad(-8) - root.RotVelocity.Y / 20), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -0.5 - 0.1 * math.sin(sine / 14), -0.7) * CFrame.Angles(math.rad(-16 + 3 * math.sin(sine / 10)), math.rad(-20) + root.RotVelocity.Y / 15, math.rad(8) - root.RotVelocity.Y / 20), 0.4)
		elseif animpose == "Running" then
			change = 1.5
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/10), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
		end
	end
end)

paly = game.Players.LocalPlayer
p = game.Players.LocalPlayer
char = paly.Character
vt = Vector3.new
rleg = char["Right Leg"]
lleg = char["Left Leg"]
local maincolor = BrickColor.new("Plum")

local orb = Instance.new("Part")
orb.Parent = char
orb.Size = Vector3.new(0.2, 0.2, 0.2)
orb.Archivable = true
orb.Transparency = 1
orb.BrickColor = maincolor
orb.Material = "Neon"
orb.CanCollide = false
local weld1 = Instance.new("Weld")
weld1.Parent = rleg
weld1.Part0 = rleg
weld1.Part1 = orb
weld1.C1 = CFrame.new(0, 1.125, 0)
local pt1 = NumberSequenceKeypoint.new(0,0.85,0)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",orb)
effecto.ZOffset = 1
effecto.LightEmission = 1
effecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecto.Color = ColorSequence.new(maincolor.Color)
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(1)
effecto.Size = NumberSequence.new({pt1,pt2})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(100,100)

local orbz = Instance.new("Part")
orbz.Parent = char
orbz.Size = Vector3.new(0.2, 0.2, 0.2)
orbz.Archivable = true
orbz.Transparency = 1
orbz.BrickColor = maincolor
orbz.Material = "Neon"
orbz.CanCollide = false
local weldz1 = Instance.new("Weld")
weldz1.Parent = lleg
weldz1.Part0 = lleg
weldz1.Part1 = orbz
weldz1.C1 = CFrame.new(0, 1.125, 0)
local effecton = Instance.new("ParticleEmitter",orbz)
effecton.ZOffset = 1
effecton.LightEmission = 1
effecton.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecton.Color = ColorSequence.new(maincolor.Color)
effecton.Rate = 10000
effecton.Lifetime = NumberRange.new(1)
effecton.Size = NumberSequence.new({pt1,pt2})
effecton.Speed = NumberRange.new(0,0)
effecton.RotSpeed = NumberRange.new(100,100)

local runServ = game:GetService("RunService").RenderStepped

runServ:connect(function()
text.Text = "Rex, Ruler of the Universe: " ..math.floor(hum.Health)
end)

Charging = false
chargewait = false	
mouse.KeyDown:connect(function(key)
	if key == "h" then
		if Charging == false and chargewait == false then
			Charging = true
			chargewait = true
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
				Debounces.on = true

			

				
				for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)

					if Debounces.on == false then break end
					rs:wait()
				end
pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.Material = "Neon"
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.BrickColor = BrickColor.new("Really black")
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6


msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)


msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}

bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"


bl.Anchored = true
bl.Material = "Neon"
bl.CanCollide = false
bl.BrickColor = BrickColor.new("Dark indigo")
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)



			
	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
			if Charging == true then
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(0.5, 0.5, 0.5)
				bl.Transparency = bl.Transparency + 0.05
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(0.05,0,0.05)
				msh2.Scale = msh2.Scale + Vector3.new(0.05,0,0.05)
				elseif Charging == false then break
			end
		end
    end))


repeat
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)

    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = "Neon"
    p.Transparency = 1
    p.BrickColor = BrickColor.new("Dark indigo")
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	Spawn(function()
		while rs:wait() do
			if Charging == true then
				rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
				larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
				hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
				torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
				lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
				rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))
			elseif Charging == false then break
			end
		end
	end)
	Spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)




local Transforming = true
hum.WalkSpeed = 0
local fx = Instance.new("Part",torso)
wit = torso.BrickColor.Color
wit2 = Color3.new(0,0,0)
local glowz = Instance.new("ParticleEmitter",fx)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(0,0,0))
glowz.Size = NumberSequence.new(5)
glowz.Speed = NumberRange.new(25,50)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",fx)
glowz2.LightEmission = 0.5
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(0,0,0))
glowz2.Size = NumberSequence.new(5)
glowz2.Speed = NumberRange.new(25,50)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://93724183"
sa2.Pitch = 0.5
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local value = 1
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        value = value - 0.05
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value,value,value)
        rs:wait()
end
----------------------------------------------------
GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"White", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(50, 50, 1 + i*50)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------
GroundWave = function()
        if Transforming == true then
                local value = 5
                local value2 = 10
                local value3 = 20
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://413682983"
sa2.Pitch = 1
sa2.Volume = 10
sa2.Looped = false
sa2:Play()
                local wave = Instance.new("Part", torso)
local glowz = Instance.new("ParticleEmitter",wave)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(0,0,0))
glowz.Size = NumberSequence.new(30)
glowz.Speed = NumberRange.new(25,100)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",wave)
glowz2.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(0,0,0))
glowz2.Size = NumberSequence.new(30)
glowz2.Speed = NumberRange.new(25,100)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
                wave.BrickColor = BrickColor.new("Dark indigo")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", torso)
                wave2.BrickColor = BrickColor.new("Dark indigo")
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = fx.CFrame
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0.35
                wave3.CFrame = fx.CFrame
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                value = value - 0.5
                value2 = value2 - 0.75*1.5
                value3 = value3 - 0.475*1.5
                wm.Scale = wm.Scale + Vector3.new(value*3.5,value*3.5,value*3.5)
                wm2.Scale = wm.Scale + Vector3.new(value2*3.5,value2*3.5,0.5)
                wm3.Scale = wm.Scale + Vector3.new(value3*3.5,value3*3.5,0.25)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = fx.CFrame
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = fx.CFrame
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                glowz.Rate = 0
                glowz2.Rate = 0
                end
                wait()
                wave:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = torso.CFrame
end

Spawn(function()
	while wait(1) do
		GroundWave()
	end
end)

wait(4)

Transforming = false

local value2 = 1
for i = 1, 20 do rs:wait()
        value2 = value2 - 0.05
        glowz.Rate = 0
        glowz2.Rate = 0
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value2,value2,value2)
        rs:wait()
end
glowz:Destroy()
glowz2:Destroy()

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local valuer = 5
        local valuer2 = 10
        local valuer3 = 15
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://130972023"
sa2.Pitch = 1
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local sar2 = Instance.new("Sound",torso)
sar2.SoundId = "rbxassetid://153274423"
sar2.Pitch = 1
sar2.Volume = 5
sar2.Looped = false
sar2:Play()
        local wave = Instance.new("Part", torso)
        wave.BrickColor = BrickColor.new("Dark indigo")
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        local wave2 = Instance.new("Part", torso)
        wave2.BrickColor = BrickColor.new("Really black")
        wave2.Anchored = true
        wave2.CanCollide = false
        wave2.Locked = true
        wave2.Size = Vector3.new(1, 1, 1)
        wave2.TopSurface = "Smooth"
        wave2.BottomSurface = "Smooth"
        wave2.Transparency = 0.35
        wave2.CFrame = HandCF
        wm2 = Instance.new("SpecialMesh", wave2)
        wm2.MeshId = "rbxassetid://3270017"
        local wave3 = Instance.new("Part", torso)
        wave3.BrickColor = BrickColor.new("Dark indigo")
        wave3.Anchored = true
        wave3.CanCollide = false
        wave3.Locked = true
        wave3.Size = Vector3.new(1, 1, 1)
        wave3.TopSurface = "Smooth"
        wave3.BottomSurface = "Smooth"
        wave3.Transparency = 0.35
        wave3.CFrame = HandCF
        wm3 = Instance.new("SpecialMesh", wave3)
        wm3.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        valuer = valuer - 0.35
        valuer2 = valuer - 0.45
        valuer3 = valuer3 - 0.475
        wm.Scale = wm.Scale + Vector3.new(valuer*2.5,valuer*2.5, 1 + i*200)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wm2.Scale = wm2.Scale + Vector3.new(valuer2*2.5,valuer2*2.5, 0 + i*10)
        wave2.Size = wm2.Scale
        wave2.CFrame = HandCF
        wave2.Transparency = i/14
        wm3.Scale = wm3.Scale + Vector3.new(valuer3*2.5,valuer3*2.5, 1)
        wave3.Size = wm2.Scale
        wave3.CFrame = HandCF
        wave3.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
        wave2:Destroy()
end)()
hum.WalkSpeed = 17

 

until Charging == false
			end
		end
	end
end)


----------------------------------------------------
mouse.KeyUp:connect(function(key)
	if key == "h" then
		if Charging == true and chargewait == true then
			chargewait = false
			wait(1)
			Charging = false
			
			local runServ = game:GetService("RunService").RenderStepped


--[[for i,v in pairs (torso:GetChildren()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end]]


			--so("http://roblox.com/asset/?id=160867463",torso,1,0.7)

				pt:Destroy()
				pt2:Destroy()
				bl:Destroy()
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
				Debounces.grab = false

			end
		end
	end
end)

while wait() do
healthgui.Text = "[Z]\nUniverse Bullet"
basicgui.Text = "[X]\nUniversal Strike"
basic2gui.Text = "[C]\nKarma"
basic3gui.Text = "[V]\nWarp"
basic4gui.Text = "[B]\nPlanet Destroyer"
hed.BrickColor = BrickColor.new("Bright violet")
tors.BrickColor = BrickColor.new("Really black")
rleg.BrickColor = BrickColor.new("Bright violet")
rarm.BrickColor = BrickColor.new("Bright violet")
larm.BrickColor = BrickColor.new("Bright violet")
lleg.BrickColor = BrickColor.new("Bright violet")
end