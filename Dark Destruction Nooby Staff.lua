--Made by Noobygamer12s

paly = game.Players.LocalPlayer
local symbolimg = "http://www.roblox.com/asset/?id=402969593"
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
local Effects = {}
attack = false
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
matr = math.random

---weapon model---
local gun = Instance.new("Part")
gun.Parent = Character
gun.Size = Vector3.new(0.35, 0.35, 4.75)
gun.Archivable = true
gun.BrickColor = BrickColor.new("Bright orange")
gun.Material = "Wood"
gun.CanCollide = false
local weld1 = Instance.new("Weld")
weld1.Parent = rarm
weld1.Part0 = rarm
weld1.Part1 = gun
weld1.C1 = CFrame.new(0, 1.125, 0.25)
local colore = Instance.new("Part")
colore.Parent = Character
colore.Size = Vector3.new(0.375, 0.375, 3.95)
colore.Archivable = true
colore.BrickColor = BrickColor.new("Really black")
colore.Material = "Fabric"
colore.CanCollide = false
local weld1 = Instance.new("Weld")
weld1.Parent = rarm
weld1.Part0 = rarm
weld1.Part1 = colore
weld1.C1 = CFrame.new(0, 1.125, 0.25)
local blak = Instance.new("Part")
blak.Parent = Character
blak.Size = Vector3.new(0.365, 0.365, 4.15)
blak.Archivable = true
blak.BrickColor = BrickColor.new("Black")
blak.Material = "Fabric"
blak.CanCollide = false
local weld1 = Instance.new("Weld")
weld1.Parent = rarm
weld1.Part0 = rarm
weld1.Part1 = blak
weld1.C1 = CFrame.new(0, 1.125, 0.25)
local blak2 = Instance.new("Part")
blak2.Parent = Character
blak2.Size = Vector3.new(1.25, 1.25, 0.5)
blak2.Archivable = true
blak2.BrickColor = BrickColor.new("Medium stone grey")
blak2.Material = "Granite"
blak2.CanCollide = false
local weld1 = Instance.new("Weld")
weld1.Parent = rarm
weld1.Part0 = rarm
weld1.Part1 = blak2
weld1.C1 = CFrame.new(0, 1.125, 2.75)
local blak3 = Instance.new("Part")
blak3.Parent = Character
blak3.Size = Vector3.new(1.45, 1.45, 0.45)
blak3.Archivable = true
blak3.BrickColor = BrickColor.new("Really black")
blak3.Material = "Granite"
blak3.CanCollide = false
local sh = Instance.new("SpecialMesh",blak2)
local sh2 = Instance.new("SpecialMesh",blak3)
sh.MeshType = "Sphere"
sh2.MeshType = "Sphere"
local weld1 = Instance.new("Weld")
weld1.Parent = rarm
weld1.Part0 = rarm
weld1.Part1 = blak3
weld1.C1 = CFrame.new(0, 1.125, 2.75)
local blak4 = Instance.new("Part")
blak4.Parent = Character
blak4.Size = Vector3.new(0.545, 0.545, 0.625)
blak4.Archivable = true
blak4.BrickColor = BrickColor.new("Really black")
blak4.Material = "Granite"
blak4.CanCollide = false
local weld1 = Instance.new("Weld")
weld1.Parent = rarm
weld1.Part0 = rarm
weld1.Part1 = blak4
weld1.C1 = CFrame.new(0, 1.125, -2.25)
local gun2 = Instance.new("Part")
gun2.Parent = Character
gun2.Size = Vector3.new(1,1,1)
gun2.Archivable = true
gun2.BrickColor = BrickColor.new("Really black")
gun2.Material = "Neon"
gun2.Shape = "Ball"
gun2.CanCollide = false
local weld1a = Instance.new("Weld")
weld1a.Parent = rarm
weld1a.Part0 = rarm
weld1a.Part1 = gun2
weld1a.C1 = CFrame.new(0, 1.125, 3.5)
suh = Color3.new(0, 0, 0)
local glow = Instance.new("ParticleEmitter")
glow.LightEmission = 0.5
glow.Parent = gun2
glow.Texture = "rbxassetid://284205403"
glow.Color = ColorSequence.new(suh)
glow.Size = NumberSequence.new(1)
glow.Speed = NumberRange.new(0,1)
glow.Transparency = NumberSequence.new(0.95)
glow.Lifetime = NumberRange.new(0.5)
glow.LockedToPart = true
glow.Rate = 250
glow.VelocitySpread = 9001
----

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
text.TextColor3 = BrickColor.new("Black").Color
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

function Explode(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
local plode = Instance.new("Sound",expart)
  plode.SoundId = "rbxassetid://165970126"
  plode.Volume = 2.5
  plode.Pitch = 1
  plode.Looped = false
  plode:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0.5
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Deep orange")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = bc("Bright orange")
	expart2.CFrame = par.CFrame
        local value = 5
        par:Destroy()
	for i = 0, 100 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.225
                if value <= 0 then
		expart.Transparency = expart.Transparency + 0.0125
		expart2.Transparency = expart.Transparency + 0.0125
                value = 0
                end
		wait()
	end
  plode.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end

function BlastStorm()
local ChatService = game:GetService("Chat")
 
ChatService:Chat(hed, "Dark...", "Red")
wait(0)
	local ff = Instance.new("ForceField",char)
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",char)
gahd.SoundId = "rbxassetid://402981977"
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
local value1 = 1*12.5
for i = 0, 50 do
shur.CFrame = tors.CFrame + vt(0,-2.5,0)
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*12.5
	wait(0)
end
local ChatService = game:GetService("Chat")
 
ChatService:Chat(hed, "DESTRUCTION!!!", "Red")
wait(0)
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",char)
tick.SoundId = "rbxassetid://414516914"
tick.Volume = 2.5
tick.Pitch = 0.4
tick:Play()
local tickz = Instance.new("Sound",char)
tickz.SoundId = "rbxassetid://435742675"
tickz.Volume = 1
tickz.Pitch = 1
tickz:Play()
local tickr = Instance.new("Sound",char)
tickr.SoundId = "rbxassetid://435742675"
tickr.Volume = 2.5
tickr.Pitch = 0.5
tickr:Play()
local tickel = Instance.new("Sound",char)
tickel.SoundId = "rbxassetid://2248511"
tickel.Volume = 3
tickel.Pitch = 0.2
tickel:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("Really black")
spart.Transparency = 0.1
spart.Anchored = true
spart.CanCollide = false
spart.CFrame = shur.CFrame + vt(0,2.5,0)
local expld = Instance.new("Explosion", spart)
expld.BlastRadius = 500000
expld.Position = spart.Position
local mesh = Instance.new("SpecialMesh",spart)
mesh.MeshType = "FileMesh"
mesh.Scale = vt(1,0.01,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
local parz = spart:Clone()
local mshe = parz.Mesh
mshe.MeshId = "http://www.roblox.com/asset/?id=1051557"
parz.CFrame = spart.CFrame
parz.Parent = char
local par2 = spart:Clone()
local msh = par2.Mesh
par2.Mesh.MeshType = "Sphere"
par2.Material = "Neon"
par2.CFrame = spart.CFrame
par2.BrickColor = BrickColor.new("Really black")
par2.Parent = char
for i = 0, 200 do
spart.Transparency = spart.Transparency + 0.005
mesh.Scale = mesh.Scale + vt(10,1,10)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.5,0)
par2.Transparency = par2.Transparency + 0.005
msh.Scale = msh.Scale + vt(5/1.25,1000/1.25,5/1.25)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
parz.Transparency = par2.Transparency + 0.005
mshe.Scale = msh.Scale + vt(6,1,6)
parz.Position = parz.Position
parz.CFrame = parz.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
ff:Destroy()
for i = 0, 100 do
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*12.5
	wait(0)
end
shur:Destroy()
par2:Destroy()
spart:Destroy()
tick:Destroy()
tickr:Destroy()
tickz:Destroy()
tickel:Destroy()
end

function Trap()
	local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",shur)
gahd.SoundId = "rbxassetid://163619849"
gahd.Volume = 1.5
gahd.Pitch = 1
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.CFrame = mouse.Hit
shur.Rotation = vt(0,0,0)
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
local value1 = 1*1.45
for i = 0, 50 do
	shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*1.45
	wait(0)
end
for i = 0, 50 do
	shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
	dec.Transparency = dec.Transparency + 0.02
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*1.45
	wait(0)
end
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://514867425"
tick.Volume = 3
tick.Pitch = 1
tick:Play()
local tickel = Instance.new("Sound",spart)
tickel.SoundId = "rbxassetid://138161072"
tickel.Volume = 1
tickel.Pitch = 2
tickel:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("White")
spart.Transparency = 1
spart.Anchored = true
spart.CanCollide = false
spart.CFrame = shur.CFrame
local expld = Instance.new("Explosion", spart)
expld.BlastRadius = 15
expld.Position = spart.Position
local mesh = Instance.new("SpecialMesh",spart)
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
for i = 0, 25 do
	shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
spart.Transparency = spart.Transparency - 0.025
mesh.Scale = mesh.Scale + vt(1.5,2.75,1.5)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.45,0)
wait(0)
end
for i = 0, 50 do
	shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
spart.Transparency = spart.Transparency + 0.015
mesh.Scale = mesh.Scale - vt(0.5,-2.75,0.5)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.45,0)
wait(0)
end
shur:Destroy()
spart:Destroy()
end

function LastTornado()
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",shur)
gahd.SoundId = "rbxassetid://163619849"
gahd.Volume = 5
gahd.Pitch = 0.25
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.CFrame = tors.CFrame + vt(0,250,0)
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
local value1 = 1*6.5
		local shur2 = Instance.new("Part",char)
shur2.Transparency = 1
shur2.Material = "Neon"
shur2.BrickColor = bc("Bright red")
shur2.Anchored = true
shur2.CFrame = shur.CFrame
shur2.Size = vt(1,0.2,1)
shur2.CanCollide = false
local dece = Instance.new("Decal",shur2)
dece.Texture = symbolimg
dece.Face = "Top"
local dece2 = dec:Clone()
dece2.Parent = shur2
dece2.Face = "Bottom"
local Meshshur2 = Instance.new("CylinderMesh",shur2)
Meshshur2.Scale = vt(0,1,0)
local value2 = 1*15
for i = 0, 50 do
	shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*6.5
	shur2.CFrame = shur2.CFrame*CFrame.Angles(0,-0.05,0)
	Meshshur2.Scale = Meshshur2.Scale + vt(value2,0,value2)
	value2 = value2 - 0.015*12
wait()
end
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://224339308"
tick.Volume = 7.5
tick.Pitch = 0.45
tick.Looped = true
tick:Play()
local tickel = Instance.new("Sound",spart)
tickel.SoundId = "rbxassetid://138161072"
tickel.Volume = 7.5
tickel.Pitch = 0.65
tickel.Looped = true
tickel:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("White")
spart.Transparency = 1
spart.Anchored = true
spart.CanCollide = false
spart.CFrame = shur.CFrame - vt(0,125,0)
local mesh = Instance.new("SpecialMesh",spart)
mesh.MeshType = "FileMesh"
mesh.Scale = vt(1,0.01,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
local par2 = spart:Clone()
local msh = par2.Mesh
par2.CFrame = spart.CFrame
par2.Parent = char
for i = 0, 25 do
	shur2.CFrame = shur2.CFrame*CFrame.Angles(0,-0.05,0)
		shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
spart.Transparency = spart.Transparency - 0.025
mesh.Scale = mesh.Scale + vt(7,4,7)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.5,0)
par2.Transparency = par2.Transparency - 0.025
msh.Scale = msh.Scale + vt(7.5/1.25,4,7.5/1.25)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
local part = Instance.new("Part",char)
part.Anchored = true
part.CanCollide = false
part.Transparency = 1
part.Size = vt(115,1000,5)
part.Position = spart.Position
part.Touched:connect(function(hit)
Damagefunc(hit,20,32,-5,"Normal",root,.2,1)
end)
for i = 0, 1000 do
	shur2.CFrame = shur2.CFrame*CFrame.Angles(0,-0.05,0)
		shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
part.CFrame = spart.CFrame*CFrame.Angles(0,0.25,0)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.75,0)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
tick.Looped = false
tickel.Looped = false
part:Destroy()
for i = 0, 25 do
	shur2.CFrame = shur2.CFrame*CFrame.Angles(0,-0.05,0)
		shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
spart.Transparency = spart.Transparency + 0.025
mesh.Scale = mesh.Scale - vt(5,4,5)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.5,0)
par2.Transparency = par2.Transparency + 0.025
msh.Scale = msh.Scale - vt(7.5/1.25,4,7.5/1.25)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
for i = 0, 100 do
	shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*6.5
	dece.Transparency = dec.Transparency + 0.015
		dece2.Transparency = dec.Transparency
	shur2.CFrame = shur2.CFrame*CFrame.Angles(0,-0.05,0)
	Meshshur2.Scale = Meshshur2.Scale + vt(value2,0,value2)
	value2 = value2 - 0.015*12
	wait(0)
end
shur:Destroy()
par2:Destroy()
spart:Destroy()
end

function WindFloor()
	local ff = Instance.new("ForceField",char)
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",shur)
gahd.SoundId = "rbxassetid://402981977"
gahd.Volume = 5
gahd.Pitch = 0.75
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
local value1 = 1*2.5
for i = 0, 50 do
shur.CFrame = tors.CFrame + vt(0,-2.5,0)
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.5
	wait(0)
end
local ChatService = game:GetService("Chat")
 
ChatService:Chat(hed, "Dark Blast!", "Red")
wait(0)
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://414516914"
tick.Volume = 2.5
tick.Pitch = 0.45
tick:Play()
local tickel = Instance.new("Sound",spart)
tickel.SoundId = "rbxassetid://2248511"
tickel.Volume = 1.5
tickel.Pitch = 0.3
tickel:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("Really black")
spart.Transparency = 0.1
spart.Anchored = true
spart.CanCollide = false
spart.CFrame = shur.CFrame + vt(0,2.5,0)
local expld = Instance.new("Explosion", spart)
expld.BlastRadius = 32
expld.Position = spart.Position
local mesh = Instance.new("SpecialMesh",spart)
mesh.MeshType = "FileMesh"
mesh.Scale = vt(1,0.01,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
local parz = spart:Clone()
local mshe = parz.Mesh
parz.CFrame = spart.CFrame
parz.Parent = char
local par2 = spart:Clone()
local msh = par2.Mesh
par2.Mesh.MeshType = "Sphere"
par2.Material = "Neon"
par2.CFrame = spart.CFrame
par2.BrickColor = BrickColor.new("Really black")
par2.Parent = char
for i = 0, 150 do
spart.Transparency = spart.Transparency + 0.01
mesh.Scale = mesh.Scale + vt(2.75,0.5,2.75)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.5,0)
par2.Transparency = par2.Transparency + 0.01
msh.Scale = msh.Scale + vt(2.75/1.25,2.75/1.25,2.75/1.25)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
parz.Transparency = par2.Transparency + 0.01
mshe.Scale = msh.Scale + vt(3,1,3)
parz.Position = parz.Position
parz.CFrame = parz.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
ff:Destroy()
for i = 0, 100 do
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.5
	wait(0)
end
shur:Destroy()
par2:Destroy()
spart:Destroy()
end


function Saved()
local spart = Instance.new("Part",workspace)
  spart.Size = vt(1,1,1)
  spart.Shape = "Ball"
  spart.BrickColor = BrickColor.new("Deep orange")
  spart.Material = "Neon"
  spart.Transparency = 0
  spart.Anchored = false
  spart.Rotation = hed.Rotation
  spart.CanCollide = false
  spart.Position = tors.Position + vt(0,0,0) .Hit.lookVector * math.random(10,100)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector * 125
  bv.Parent = spart
  local tick = Instance.new("Sound",tors)
  tick.SoundId = "rbxassetid://88517571"
  tick.Volume = 2
  tick.Pitch = 6.5
  tick:Play()
  wait(0.1)
  pewdiepie=spart.Touched:connect(function(hit) Damagefunc(hit,5,6,0,"Normal",root,.2,1) spart:Destroy() end)
  local value = 0
end

function WindFloor2()
local ChatService = game:GetService("Chat")
 
ChatService:Chat(hed, "Shadow Burst!", "Red")
wait(0)
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",shur)
gahd.SoundId = "rbxassetid://402981977"
gahd.Volume = 5
gahd.Pitch = 0.75
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.CFrame = mouse.Hit
shur.Rotation = vt(0,math.random(-500,500),0)
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
local value1 = 1*2.25
for i = 0, 50 do
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.25
	wait(0)
end
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://414516914"
tick.Volume = 2.5
tick.Pitch = 0.45
tick:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("Really black")
spart.Transparency = 0.1
spart.Anchored = true
spart.CanCollide = false
spart.CFrame = shur.CFrame + vt(0,2.5,0)
local expld = Instance.new("Explosion", spart)
expld.BlastRadius = 27.5
expld.Position = spart.Position
local mesh = Instance.new("SpecialMesh",spart)
mesh.MeshType = "FileMesh"
mesh.Scale = vt(1,0.01,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
local parz = spart:Clone()
local mshe = parz.Mesh
mshe.MeshId = "http://www.roblox.com/asset/?id=1051557"
parz.CFrame = spart.CFrame
parz.Parent = char
local par2 = spart:Clone()
local msh = par2.Mesh
par2.Mesh.MeshType = "Sphere"
par2.Material = "Neon"
par2.CFrame = spart.CFrame
par2.BrickColor = BrickColor.new("Really black")
par2.Parent = char
local par3 = spart:Clone()
local msh3 = par2.Mesh
msh3.Scale = vt(15,0,15)
par3.Mesh.MeshType = "Sphere"
par3.Material = "Neon"
par3.CFrame = spart.CFrame
par3.BrickColor = BrickColor.new("Really black")
par3.Parent = char
for i = 0, 150 do
spart.Transparency = spart.Transparency + 0.01
mesh.Scale = mesh.Scale + vt(2.25,0.15,2.25)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.5,0)
par2.Transparency = par2.Transparency + 0.01
msh.Scale = msh.Scale + vt(1.5/1.25,1.5/1.25,1.5/1.25)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
par3.Transparency = par2.Transparency + 0.05
msh3.Scale = msh3.Scale + vt(-0.5,50/1.25,-0.5)
par3.Position = par2.Position
par3.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
parz.Transparency = par2.Transparency + 0.01
mshe.Scale = msh.Scale + vt(4,1,4)
parz.Position = parz.Position
parz.CFrame = parz.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
for i = 0, 100 do
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.25
	wait(0)
end
shur:Destroy()
par2:Destroy()
spart:Destroy()
end


function Saved()
local spart = Instance.new("Part",workspace)
  spart.Size = vt(1,1,1)
  spart.Shape = "Ball"
  spart.BrickColor = BrickColor.new("Deep orange")
  spart.Material = "Neon"
  spart.Transparency = 0
  spart.Anchored = false
  spart.Rotation = hed.Rotation
  spart.CanCollide = false
  spart.Position = tors.Position + vt(0,0,0) .Hit.lookVector * math.random(10,100)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector * 125
  bv.Parent = spart
  local tick = Instance.new("Sound",tors)
  tick.SoundId = "rbxassetid://88517571"
  tick.Volume = 2
  tick.Pitch = 6.5
  tick:Play()
  wait(0.1)
  pewdiepie=spart.Touched:connect(function(hit) Damagefunc(hit,5,6,0,"Normal",root,.2,1) spart:Destroy() end)
  local value = 0
end

function WindShot()
local touched = false
local delay = false
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://203691467"
tick.Volume = 1.5
tick.Pitch = 0.85
tick:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("Really black")
spart.Transparency = 0
spart.CanCollide = false
spart.Material = "Neon"
spart.CFrame = hed.CFrame + Vector3.new(0,0.1,0)
local msh = Instance.new("SpecialMesh",spart)
msh.MeshType = "Sphere"
msh.Scale = vt(3,3,3)
local pt1 = NumberSequenceKeypoint.new(0,1,0)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",spart)
effecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecto.Color = ColorSequence.new(Color3.new(0,0,0))
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(1)
effecto.Size = NumberSequence.new({pt1,pt2})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(100,100)
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = mouse.Hit.lookVector * 100
bv.Parent = spart
wait(0.05)
spart.Touched:connect(function(hit)
if touched == false then
touched = true
spart.Anchored = true
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://414516914"
tick.Volume = 1.5
tick.Pitch = 0.75
tick:Play()
effecto:Destroy()
local pt1 = NumberSequenceKeypoint.new(0,10,0)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local effectoz = Instance.new("ParticleEmitter",spart)
effectoz.Texture = "rbxasset://textures/particles/smoke_main.dds"
effectoz.Color = ColorSequence.new(Color3.new(0,0,0))
effectoz.Lifetime = NumberRange.new(3)
effectoz.Size = NumberSequence.new({pt1,pt2})
effectoz.Speed = NumberRange.new(0,0)
effectoz.RotSpeed = NumberRange.new(100,100)
effectoz.Speed = NumberRange.new(25)
effectoz.VelocitySpread = 10000000
effectoz.Rate = 1000000000000
wait(0.05)
effectoz.Rate = 0
Damagefunc(hit,10,15,-20,"Normal",root,.2,1)
for i = 0, 50 do
msh.Scale = msh.Scale + vt(1.5,1.5,1.5)
spart.Transparency = spart.Transparency + 0.025
wait(0)
end
spart:Destroy()
end
end)
wait(10)
delay = false
if delay == true then
spart:Destroy()
end
end
 	
mouse.Button1Down:connect(function()
  WindShot()
end)
mouse.KeyDown:connect(function(k)
  
k = k:lower()
if k == "f" then
  BlastStorm()
end
if k == "e" then
  WindFloor2()
end
if k == "r" then
  WindFloor()
end
end)

while wait() do
for i = 0, 20 do
gun2.Transparency = gun2.Transparency + 0.05
wait()
end
for i = 0, 20 do
gun2.Transparency = gun2.Transparency - 0.05
wait()
end
end