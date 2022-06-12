paly = game.Players.LocalPlayer
p = game.Players.LocalPlayer
char = paly.Character
local symbolimg = "rbxassetid://301362847"
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
local mouse = paly:GetMouse()
local charge = false
local energy = 100
vt = Vector3.new
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
local maincolor = Color3.new(255/255,85/255,0/255)

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
text.Font = "Cartoon"
text.TextStrokeColor3 = BrickColor.new("Really black").Color

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
text.TextColor3 = BrickColor.new("Bright red").Color
v.Shape="Block"
text.Text = tostring(Dealt).. "!"
  local tick = Instance.new("Sound",c)
  tick.SoundId = "rbxassetid://553325070"
  tick.Volume = 1.25
  tick.Pitch = 0.75
  tick:Play()
        c.formFactor="Plate"
c.Transparency = 0.99
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
local healthgui = gui("TextLabel", basframe, "Energy: ", 1, BrickColor.random().Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, -0.5, 0))
healthgui.TextSize = 24
healthgui.ZIndex = 2

local tick = Instance.new("Sound",tors)
tick.SoundId = "rbxassetid://313108061"
tick.Volume = 2.5
tick.Looped = true
tick.Pitch = 0.85

local tick2 = Instance.new("Sound",tors)
tick2.SoundId = "rbxassetid://272207079"
tick2.Volume = 2.5
tick2.Looped = true
tick2.Pitch = 0.85

local orb = Instance.new("Part")
orb.Parent = char
orb.Size = Vector3.new(0.2, 0.2, 0.2)
orb.Archivable = true
orb.Transparency = 1
orb.Material = "Neon"
orb.CanCollide = false
local weld1 = Instance.new("Weld")
weld1.Parent = tors
weld1.Part0 = tors
weld1.Part1 = orb
weld1.C1 = CFrame.new(0, 0.01, 0)
local pt1 = NumberSequenceKeypoint.new(0,5,0)
local pt1a = NumberSequenceKeypoint.new(0,1,0)
local pt2a = NumberSequenceKeypoint.new(1,1,1)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",orb)
effecto.LightEmission = 1
effecto.Texture = "rbxassetid://296874871"
effecto.Color = ColorSequence.new(maincolor)
effecto.Rate = 0
effecto.Acceleration = Vector3.new(0,25,0)
effecto.Transparency = NumberSequence.new({pt1a,pt2a})
effecto.Lifetime = NumberRange.new(0.75)
effecto.Size = NumberSequence.new({pt1,pt2})
effecto.Speed = NumberRange.new(12.5)
effecto.VelocitySpread = 100000000
effecto.RotSpeed = NumberRange.new(-300,300)

function Fireball()
local touched = false
local delay = false
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://304448425"
tick.Volume = 1.5
tick.Pitch = 1.5
tick:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("Deep orange")
spart.Transparency = 1
spart.CanCollide = false
spart.Material = "Neon"
spart.CFrame = hed.CFrame + Vector3.new(0,0.1,0)
local msh = Instance.new("SpecialMesh",spart)
msh.MeshType = "Sphere"
msh.Scale = vt(3,3,3)
local pt1e = NumberSequenceKeypoint.new(0,5,0)
local pt2e = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",spart)
effecto.Texture = "rbxassetid://296874871"
effecto.LightEmission = 1
effecto.Color = ColorSequence.new(maincolor)
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(0.5)
effecto.Size = NumberSequence.new({pt1e,pt2e})
effecto.Transparency = NumberSequence.new({pt1a,pt2a})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(-500,500)
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = mouse.Hit.lookVector * 100
bv.Parent = spart
wait(0.05)
spart.Touched:connect(function(hit)
if touched == false then
touched = true
if hit.Name == "Water" then
local pt1er = NumberSequenceKeypoint.new(0,5,0)
local pt2er = NumberSequenceKeypoint.new(1,0,0)
local smokecolor = Color3.new(0.5,0.5,0.5)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://629468689"
tick.Volume = 1.5
tick.Pitch = 1
tick:Play()
effecto.Rate = 0
local effectoz = Instance.new("ParticleEmitter",spart)
effectoz.Texture = "rbxassetid://296874871"
effectoz.LightEmission = 0.75
effectoz.Color = ColorSequence.new(smokecolor)
effectoz.Lifetime = NumberRange.new(3)
effectoz.Transparency = NumberSequence.new({pt1a,pt2a})
effectoz.Size = NumberSequence.new({pt1er,pt2er})
effectoz.Rotation = NumberRange.new(-300,300)
effectoz.RotSpeed = NumberRange.new(-500,500)
effectoz.Speed = NumberRange.new(10)
effectoz.VelocitySpread = 25
effectoz.Rate = 1000000000000
spart.Anchored = true
wait(1)
effectoz.Rate = 0
wait(2.5)
spart:Destroy()
end
if hit.Name ~= "Water" then
local saveposition = spart.CFrame
spart.Anchored = true
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://304529688"
tick.Volume = 1.5
tick.Pitch = 1.25
tick:Play()
effecto:Destroy()
local pt1er = NumberSequenceKeypoint.new(0,10,0)
local pt2er = NumberSequenceKeypoint.new(1,0,0)
local effectoz = Instance.new("ParticleEmitter",spart)
effectoz.Texture = "rbxassetid://296874871"
effectoz.LightEmission = 1
effectoz.Color = ColorSequence.new(maincolor)
effectoz.Lifetime = NumberRange.new(0.5)
effectoz.Size = NumberSequence.new({pt1er,pt2er})
effectoz.Speed = NumberRange.new(0,0)
effectoz.Rotation = NumberRange.new(-300,300)
effectoz.RotSpeed = NumberRange.new(-500,500)
effectoz.Speed = NumberRange.new(75)
effectoz.VelocitySpread = 10000000
effectoz.Rate = 1000000000000
spart.Size = vt(1,1,1)
spart.Transparency = 1
spart.CFrame = saveposition
Damagefunc(hit,10,15,-20,"Normal",root,.2,1)
wait(0.5)
effectoz.Rate = 0
for i = 0, 10 do
spart.Size = spart.Size + vt(0.5,0.5,0.5)
spart.CFrame = saveposition
wait()
end
spart:Destroy()
end
end
end)
end

function Firestorm()
	local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",char)
char.Humanoid.WalkSpeed = 0
gahd.SoundId = "rbxassetid://313945165"
gahd.Volume = 4.5
gahd.Pitch = 0.595
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.CFrame = tors.CFrame + vt(0,-2.5,0)
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = symbolimg
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
for i = 0, 25 do
shur.CFrame = tors.CFrame + vt(0,-2.95,0)
	Meshshur.Scale = Meshshur.Scale + vt(2.5,0,2.5)
	wait(0)
end
for i = 0, 10 do
larm.Transparency = larm.Transparency + 0.1
rarm.Transparency = rarm.Transparency + 0.1
lleg.Transparency = lleg.Transparency + 0.1
rleg.Transparency = rleg.Transparency + 0.1
tors.Transparency = tors.Transparency + 0.1
hed.Transparency = hed.Transparency + 0.1
wait()
end
local pt1mass = NumberSequenceKeypoint.new(0,15,0)
local effecton = Instance.new("ParticleEmitter",root)
effecton.LightEmission = 1
effecton.Texture = "rbxassetid://296874871"
effecton.Color = ColorSequence.new(maincolor)
effecton.Rate = 1000
effecton.Lifetime = NumberRange.new(0.75)
effecton.Size = NumberSequence.new({pt1mass,pt2})
effecton.Speed = NumberRange.new(5)
effecton.VelocitySpread = 100000000
effecton.RotSpeed = NumberRange.new(-300,300)
local ash = Instance.new("Sound",root)
ash.SoundId = "rbxassetid://181004943"
ash.Volume = 4
ash.Pitch = 0.25
ash:Play()
        local sbs = Instance.new("BodyPosition", root)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(500000, 500000000, 500000)
        sbs.position = root.CFrame.p + Vector3.new(0, 175, 0)
wait(2.5)
for i = 0, 25 do
local touched = false
local delay = false
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://304448425"
tick.Volume = 1.5
tick.Pitch = 0.85
tick:Play()
spart.Size = vt(2,2,2)
spart.BrickColor = BrickColor.new("Deep orange")
spart.Transparency = 1
spart.CanCollide = false
spart.Material = "Neon"
spart.CFrame = hed.CFrame + Vector3.new(0,0.1,0)
local pt1e = NumberSequenceKeypoint.new(0,15,0)
local pt2e = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",spart)
effecto.Texture = "rbxassetid://296874871"
effecto.LightEmission = 1
effecto.Color = ColorSequence.new(maincolor)
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(0.5)
effecto.Size = NumberSequence.new({pt1e,pt2e})
effecto.Transparency = NumberSequence.new({pt1a,pt2a})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(-500,500)
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = mouse.Hit.lookVector * 150
bv.Parent = spart
wait(0.05)
spart.Touched:connect(function(hit)
if touched == false then
touched = true
if hit.Name == "Water" then
local pt1er = NumberSequenceKeypoint.new(0,15,0)
local pt2er = NumberSequenceKeypoint.new(1,0,0)
local smokecolor = Color3.new(0.5,0.5,0.5)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://629468689"
tick.Volume = 1.5
tick.Pitch = 1
tick:Play()
effecto.Rate = 0
local effectoz = Instance.new("ParticleEmitter",spart)
effectoz.Texture = "rbxassetid://296874871"
effectoz.LightEmission = 0.75
effectoz.Color = ColorSequence.new(smokecolor)
effectoz.Lifetime = NumberRange.new(3)
effectoz.Transparency = NumberSequence.new({pt1a,pt2a})
effectoz.Size = NumberSequence.new({pt1er,pt2er})
effectoz.Rotation = NumberRange.new(-300,300)
effectoz.RotSpeed = NumberRange.new(-500,500)
effectoz.Speed = NumberRange.new(10)
effectoz.VelocitySpread = 75
effectoz.Rate = 1000000000000
spart.Anchored = true
wait(3)
effectoz.Rate = 0
wait(2.5)
spart:Destroy()
end
if hit.Name ~= "Water" then
local saveposition = spart.CFrame
spart.Anchored = true
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://304529688"
tick.Volume = 1.5
tick.Pitch = 0.85
tick:Play()
local tickn = Instance.new("Sound",spart)
tickn.SoundId = "rbxassetid://138186576"
tickn.Volume = 1.5
tickn.Pitch = 1
tickn:Play()
local tick2e = Instance.new("Sound",spart)
tick2e.SoundId = "rbxassetid://272207079"
tick2e.Volume = 2.5
tick2e.Looped = true
tick2e.Pitch = 0.85
tick2e:Play()
effecto:Destroy()
local pt1er = NumberSequenceKeypoint.new(0,15,0)
local pt1er2 = NumberSequenceKeypoint.new(0,25,0)
local pt2er = NumberSequenceKeypoint.new(1,0,0)
local effectoz = Instance.new("ParticleEmitter",spart)
effectoz.Texture = "rbxassetid://296874871"
effectoz.LightEmission = 1
effectoz.Color = ColorSequence.new(maincolor)
effectoz.Lifetime = NumberRange.new(2.5)
effectoz.Size = NumberSequence.new({pt1er,pt2er})
effectoz.Speed = NumberRange.new(0,0)
effectoz.Rotation = NumberRange.new(-300,300)
effectoz.Transparency = NumberSequence.new({pt1a,pt2a})
effectoz.RotSpeed = NumberRange.new(-500,500)
effectoz.Speed = NumberRange.new(10)
effectoz.VelocitySpread = 10000000
effectoz.Rate = 1000000000000
local effectoz2 = Instance.new("ParticleEmitter",spart)
effectoz2.Texture = "rbxassetid://296874871"
effectoz2.LightEmission = 1
effectoz2.Color = ColorSequence.new(maincolor)
effectoz2.Lifetime = NumberRange.new(0.5)
effectoz2.Size = NumberSequence.new({pt1er2,pt2er})
effectoz2.Speed = NumberRange.new(0,0)
effectoz2.Rotation = NumberRange.new(-300,300)
effectoz2.RotSpeed = NumberRange.new(-500,500)
effectoz2.Speed = NumberRange.new(250)
effectoz2.VelocitySpread = 10000000
effectoz2.Rate = 1000000000000
spart.Size = vt(25,25,25)
spart.Transparency = 1
spart.CFrame = saveposition
wait(0.5)
Damagefunc(hit,50,60,-20,"Normal",root,.2,1)
effectoz2.Rate = 0
wait(5)
effectoz.Rate = 0
tick2e:Stop()
wait(2.5)
spart:Destroy()
end
end
end)
wait(0.215)
end
wait(1)
effecton.Rate = 0
for i = 0, 10 do
larm.Transparency = larm.Transparency - 0.1
rarm.Transparency = rarm.Transparency - 0.1
lleg.Transparency = lleg.Transparency - 0.1
rleg.Transparency = rleg.Transparency - 0.1
tors.Transparency = tors.Transparency - 0.1
hed.Transparency = hed.Transparency - 0.1
wait()
end
sbs:Destroy()
char.Humanoid.WalkSpeed = 16
for i = 0, 25 do
shur.CFrame = tors.CFrame + vt(0,-2.95,0)
	Meshshur.Scale = Meshshur.Scale - vt(2.5,0,2.5)
	wait(0)
end
effecton:Destroy()
shur:Destroy()
end


function SplashFire()
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",char)
char.Humanoid.WalkSpeed = 0
gahd.SoundId = "rbxassetid://313945165"
gahd.Volume = 2.5
gahd.Pitch = 0.625
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.CFrame = tors.CFrame + vt(0,-2.5,0)
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = symbolimg
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
for i = 0, 25 do
shur.CFrame = tors.CFrame + vt(0,-2.95,0)
	Meshshur.Scale = Meshshur.Scale + vt(1,0,1)
	wait(0)
end
for i = 0, 10 do
larm.Transparency = larm.Transparency + 0.1
rarm.Transparency = rarm.Transparency + 0.1
lleg.Transparency = lleg.Transparency + 0.1
rleg.Transparency = rleg.Transparency + 0.1
tors.Transparency = tors.Transparency + 0.1
hed.Transparency = hed.Transparency + 0.1
wait()
end
local pt1mass = NumberSequenceKeypoint.new(0,15,0)
local effecton = Instance.new("ParticleEmitter",root)
effecton.LightEmission = 1
effecton.Texture = "rbxassetid://296874871"
effecton.Color = ColorSequence.new(maincolor)
effecton.Rate = 1000
effecton.Lifetime = NumberRange.new(0.75)
effecton.Size = NumberSequence.new({pt1mass,pt2})
effecton.Speed = NumberRange.new(5)
effecton.VelocitySpread = 100000000
effecton.RotSpeed = NumberRange.new(-300,300)
local ash = Instance.new("Sound",root)
ash.SoundId = "rbxassetid://181004943"
ash.Volume = 4
ash.Pitch = 0.5
ash:Play()
        local sbs = Instance.new("BodyPosition", root)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(500000, 500000000, 500000)
        sbs.position = root.CFrame.p + Vector3.new(0, 200, 0)
wait(1)
        sbs.position = root.CFrame.p - Vector3.new(0, 500, 0)
wait(0.1)
sbs:Destroy()
wait(0.15)
effecton.Rate = 0
local spart = Instance.new("Part",char)
spart.Size = vt(2,2,2)
spart.BrickColor = BrickColor.new("Deep orange")
spart.Transparency = 1
spart.CanCollide = false
spart.Material = "Neon"
spart.Anchored = true
spart.CFrame = root.CFrame + Vector3.new(0,0.1,0)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://304529688"
tick.Volume = 1.5
tick.Pitch = 0.85
tick:Play()
local tickn = Instance.new("Sound",spart)
tickn.SoundId = "rbxassetid://138186576"
tickn.Volume = 1.5
tickn.Pitch = 1
tickn:Play()
local tick2e = Instance.new("Sound",spart)
tick2e.SoundId = "rbxassetid://272207079"
tick2e.Volume = 2.5
tick2e.Looped = true
tick2e.Pitch = 0.85
tick2e:Play()
local pt1er = NumberSequenceKeypoint.new(0,10,0)
local pt1er2 = NumberSequenceKeypoint.new(0,20,0)
local pt2er = NumberSequenceKeypoint.new(1,0,0)
local effectoz = Instance.new("ParticleEmitter",spart)
effectoz.Texture = "rbxassetid://296874871"
effectoz.LightEmission = 1
effectoz.Color = ColorSequence.new(maincolor)
effectoz.Lifetime = NumberRange.new(2.5)
effectoz.Size = NumberSequence.new({pt1er,pt2er})
effectoz.Speed = NumberRange.new(0,0)
effectoz.Rotation = NumberRange.new(-300,300)
effectoz.Transparency = NumberSequence.new({pt1a,pt2a})
effectoz.RotSpeed = NumberRange.new(-500,500)
effectoz.Speed = NumberRange.new(5)
effectoz.VelocitySpread = 10000000
effectoz.Rate = 1000000000000
local effectoz2 = Instance.new("ParticleEmitter",spart)
effectoz2.Texture = "rbxassetid://296874871"
effectoz2.LightEmission = 1
effectoz2.Color = ColorSequence.new(maincolor)
effectoz2.Lifetime = NumberRange.new(0.5)
effectoz2.Size = NumberSequence.new({pt1er2,pt2er})
effectoz2.Speed = NumberRange.new(0,0)
effectoz2.Rotation = NumberRange.new(-300,300)
effectoz2.RotSpeed = NumberRange.new(-500,500)
effectoz2.Speed = NumberRange.new(100)
effectoz2.VelocitySpread = 10000000
effectoz2.Rate = 1000000000000
spart.Size = vt(35,5,35)
spart.Transparency = 1
spart.CFrame = root.CFrame
wait(0.5)
spart.Touched:connect(function(hit)
Damagefunc(hit,25,30,-20,"Normal",root,.2,1)
end)
ash:Destroy()
effectoz2.Rate = 0
wait(5)
effecton:Destroy()
effectoz.Rate = 0
tick2e:Stop()
wait(2.5)
spart:Destroy()
wait(1)
for i = 0, 10 do
larm.Transparency = larm.Transparency - 0.1
rarm.Transparency = rarm.Transparency - 0.1
lleg.Transparency = lleg.Transparency - 0.1
rleg.Transparency = rleg.Transparency - 0.1
tors.Transparency = tors.Transparency - 0.1
hed.Transparency = hed.Transparency - 0.1
wait()
end
sbs:Destroy()
char.Humanoid.WalkSpeed = 16
for i = 0, 25 do
shur.CFrame = tors.CFrame + vt(0,-2.95,0)
	Meshshur.Scale = Meshshur.Scale - vt(1,0,1)
	wait(0)
end
shur:Destroy()
end

function MassiveFireBall()
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",char)
char.Humanoid.WalkSpeed = 0
gahd.SoundId = "rbxassetid://313945165"
gahd.Volume = 2.5
gahd.Pitch = 0.6
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.CFrame = tors.CFrame + vt(0,-2.5,0)
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = symbolimg
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
for i = 0, 25 do
shur.CFrame = tors.CFrame + vt(0,-2.95,0)
	Meshshur.Scale = Meshshur.Scale + vt(1.25,0,1.25)
	wait(0)
end
local touched = false
local delay = false
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://304448425"
tick.Volume = 1.5
tick.Pitch = 0.85
tick:Play()
spart.Size = vt(2,2,2)
spart.BrickColor = BrickColor.new("Deep orange")
spart.Transparency = 1
spart.CanCollide = false
spart.Material = "Neon"
spart.CFrame = hed.CFrame + Vector3.new(0,0.1,0)
local pt1e = NumberSequenceKeypoint.new(0,15,0)
local pt2e = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",spart)
effecto.Texture = "rbxassetid://296874871"
effecto.LightEmission = 1
effecto.Color = ColorSequence.new(maincolor)
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(0.5)
effecto.Size = NumberSequence.new({pt1e,pt2e})
effecto.Transparency = NumberSequence.new({pt1a,pt2a})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(-500,500)
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = mouse.Hit.lookVector * 150
bv.Parent = spart
wait(0.05)
spart.Touched:connect(function(hit)
if touched == false then
touched = true
if hit.Name == "Water" then
local pt1er = NumberSequenceKeypoint.new(0,15,0)
local pt2er = NumberSequenceKeypoint.new(1,0,0)
local smokecolor = Color3.new(0.5,0.5,0.5)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://629468689"
tick.Volume = 1.5
tick.Pitch = 1
tick:Play()
effecto.Rate = 0
local effectoz = Instance.new("ParticleEmitter",spart)
effectoz.Texture = "rbxassetid://296874871"
effectoz.LightEmission = 0.75
effectoz.Color = ColorSequence.new(smokecolor)
effectoz.Lifetime = NumberRange.new(3)
effectoz.Transparency = NumberSequence.new({pt1a,pt2a})
effectoz.Size = NumberSequence.new({pt1er,pt2er})
effectoz.Rotation = NumberRange.new(-300,300)
effectoz.RotSpeed = NumberRange.new(-500,500)
effectoz.Speed = NumberRange.new(10)
effectoz.VelocitySpread = 75
effectoz.Rate = 1000000000000
spart.Anchored = true
wait(3)
effectoz.Rate = 0
wait(2.5)
spart:Destroy()
end
if hit.Name ~= "Water" then
local saveposition = spart.CFrame
spart.Anchored = true
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://304529688"
tick.Volume = 1.5
tick.Pitch = 0.85
tick:Play()
local tickn = Instance.new("Sound",spart)
tickn.SoundId = "rbxassetid://138186576"
tickn.Volume = 1.5
tickn.Pitch = 1
tickn:Play()
local tick2e = Instance.new("Sound",spart)
tick2e.SoundId = "rbxassetid://272207079"
tick2e.Volume = 2.5
tick2e.Looped = true
tick2e.Pitch = 0.85
tick2e:Play()
effecto:Destroy()
local pt1er = NumberSequenceKeypoint.new(0,15,0)
local pt1er2 = NumberSequenceKeypoint.new(0,25,0)
local pt2er = NumberSequenceKeypoint.new(1,0,0)
local effectoz = Instance.new("ParticleEmitter",spart)
effectoz.Texture = "rbxassetid://296874871"
effectoz.LightEmission = 1
effectoz.Color = ColorSequence.new(maincolor)
effectoz.Lifetime = NumberRange.new(2.5)
effectoz.Size = NumberSequence.new({pt1er,pt2er})
effectoz.Speed = NumberRange.new(0,0)
effectoz.Rotation = NumberRange.new(-300,300)
effectoz.Transparency = NumberSequence.new({pt1a,pt2a})
effectoz.RotSpeed = NumberRange.new(-500,500)
effectoz.Speed = NumberRange.new(10)
effectoz.VelocitySpread = 10000000
effectoz.Rate = 1000000000000
local effectoz2 = Instance.new("ParticleEmitter",spart)
effectoz2.Texture = "rbxassetid://296874871"
effectoz2.LightEmission = 1
effectoz2.Color = ColorSequence.new(maincolor)
effectoz2.Lifetime = NumberRange.new(0.5)
effectoz2.Size = NumberSequence.new({pt1er2,pt2er})
effectoz2.Speed = NumberRange.new(0,0)
effectoz2.Rotation = NumberRange.new(-300,300)
effectoz2.RotSpeed = NumberRange.new(-500,500)
effectoz2.Speed = NumberRange.new(250)
effectoz2.VelocitySpread = 10000000
effectoz2.Rate = 1000000000000
spart.Size = vt(25,25,25)
spart.Transparency = 1
spart.CFrame = saveposition
wait(0.5)
Damagefunc(hit,50,60,-20,"Normal",root,.2,1)
effectoz2.Rate = 0
wait(5)
effectoz.Rate = 0
tick2e:Stop()
wait(2.5)
spart:Destroy()
end
end
end)
char.Humanoid.WalkSpeed = 16
wait(1)
for i = 0, 25 do
shur.CFrame = tors.CFrame + vt(0,-2.95,0)
	Meshshur.Scale = Meshshur.Scale - vt(1.25,0,1.25)
	wait(0)
end
shur:Destroy()
end


mouse.KeyDown:connect(function(k)
  
k = k:lower()
if k == "q" and attacking == false then
if energy >= 10 then
energy = energy - 10
attacking = true
Fireball()
attacking = false
end
end
if k == "r" and attacking == false then
if energy >= 50 then
energy = energy - 50
attacking = true
MassiveFireBall()
attacking = false
end
end
if k == "f" and attacking == false then
if energy >= 100 then
energy = energy - 100
attacking = true
Firestorm()
attacking = false
end
end
if k == "e" and attacking == false then
if energy >= 25 then
energy = energy - 25
attacking = true
SplashFire()
attacking = false
end
end
if k == "0" and attacking == false then
  if charge == false then
    tick:Resume()
    tick2:Resume()
  charge = true
  attacking = true
  if charge == true then
  effecto.Rate = 10000
end
end
end
end)
mouse.KeyUp:connect(function(k)
  
k = k:lower()
if k == "0" then
  charge = false
  tick:Pause()
  tick2:Pause()
  attacking = false
  effecto.Rate = 0
end
end)

while wait() do
healthgui.Text = "Energy: " ..math.floor(energy).. "/100"
if charge == true then
while true do
healthgui.Text = "Energy: " ..math.floor(energy).. "/100"
energy = energy + 0.75
wait()
if energy > 100 then
energy = 100
end
if charge == false then
break
end
end
end

if energy > 100 then
energy = 100
end
end