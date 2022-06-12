plr = game:GetService("Players").LocalPlayer
char = plr.Character
hum = char:FindFirstChildOfClass'Humanoid'
hum.BodyDepthScale.Value = 1
hum.BodyHeightScale.Value = 1
hum.BodyWidthScale.Value = 1
hum.HeadScale.Value = 1
lclick = false
mouse = plr:GetMouse()
size = 1
rlick = false
human = char.Humanoid
root = char.HumanoidRootPart
head = char.Head
lshold = char["LeftUpperArm"].LeftShoulder
rshold = char["RightUpperArm"].RightShoulder
lelbow = char["LeftLowerArm"].LeftElbow
relbow = char["RightLowerArm"].RightElbow
lelbo = lelbow.C0
relbo = relbow.C0
rsho = rshold.C0
lsho = lshold.C0
jumping = false
chipmesh = ""
rad = math.rad
firec = 'Deep orange'
shield = false
disguise = ""
slam = false
ff=Instance.new('ForceField', char)
ff.Visible = false
numb = Instance.new('NumberValue')
numb.Name = 'IceVal'
dis = false
neck = char.Head.Neck
local ang = -5
local ang2 = -5
local sine = 0
local change = 0.5
arm = 0
if char:FindFirstChild'Animate' then
        char:FindFirstChild'Animate':Destroy()
end
hum.Animator.Parent = nil
nec = neck.C0
punch = false
spikek = false
cooldown = true
random = math.random
mainc = char.Head.BrickColor
chip = false
colr = char.Head.BrickColor
mainf = char.Head.face.Texture
wings = false
face = mainf
lleg = char["LeftUpperLeg"].LeftHip
rleg = char["RightUpperLeg"].RightHip
rle = rleg.C0
lle = lleg.C0
lkk = char['LeftLowerLeg'].LeftKnee
rkk = char['RightLowerLeg'].RightKnee
rootp = char.HumanoidRootPart.CFrame
lk = lkk.C0
rk = rkk.C0
ice = ""
torso = char:FindFirstChild('UpperTorso')
butf = false
previ = ""
jir = false
legslamm = false
waist = torso.Waist
wais = waist.C0
rtorso = char.LowerTorso.Root
rtors = rtorso.C0
float = false
signs = false
fold = Instance.new('Folder', char)
sat = false
asdasd = false
rootpart = root
fly = false
fire = false
canfly = false
pcd = true
stop = false

mode = "None"
firemode = false
icemode = false
bothmode = false
nonemode = true

speed = 50
bend = 35
idle = false

color = 'Baby blue'

tfreeze = {}

slidecolors = {
        'Baby blue',
        'Bright red'
}

freezed = {}
freez = {}
burnt = {}
ices = {}
spike = {}

local Head = char.Head
local plr = game.Players.LocalPlayer
local chr = plr.Character
local RightUpperArm = chr["RightUpperArm"]
local LeftUpperArm = chr["LeftUpperArm"]
local LeftUpperLeg = chr["LeftUpperLeg"]
local RightUpperLeg = chr["RightUpperLeg"]
local UpperTorso = chr["UpperTorso"]
local LowerTorso = chr["LowerTorso"]
local HRP = chr["HumanoidRootPart"]
local RightLowerArm = chr["RightLowerArm"]
local RightLowerLeg = chr["RightLowerLeg"]
local LeftLowerLeg = chr["LeftLowerLeg"]
local LeftLowerArm = chr["LeftLowerArm"]
LN = LeftLowerLeg:FindFirstChild("LeftKnee")
RN = RightLowerLeg:FindFirstChild("RightKnee")
RH = RightUpperLeg:FindFirstChild("RightHip")
LH = LeftUpperLeg:FindFirstChild("LeftHip")
LE = LeftLowerArm:FindFirstChild("LeftElbow")
LS = LeftUpperArm:FindFirstChild("LeftShoulder")
RS = RightUpperArm:FindFirstChild("RightShoulder")
RE = RightLowerArm:FindFirstChild("RightElbow")
Waist = UpperTorso:FindFirstChild("Waist")
local lfoot = char['LeftFoot'].LeftAnkle
local rfoot = char['RightFoot'].RightAnkle
local lf = lfoot.C0
local rf = rfoot.C0
local LeftFoot = chr["LeftFoot"]
RAA = LeftFoot:FindFirstChild("LeftAnkle")
local RightFoot = chr["RightFoot"]
RAA = RightFoot:FindFirstChild("RightAnkle")
local Root = char.LowerTorso.Root
LHc0 = LH.C0
RHc0 = RH.C0
LSc0 = LS.C0
RSc0 = RS.C0
neck0 = neck.C0
Rootc0 = Root.C0
Waistc0 = Waist.C0

--// Sound effects

local s5 = Instance.new('Sound', char.LeftFoot) -- walk (grass)
s5.Volume = 6
s5.SoundId = "rbxassetid://429617891"
s5.Looped = true

local s6 = Instance.new('Sound', char.LeftFoot) -- walk (metals)
s6.Volume = 6
s6.SoundId = "rbxassetid://174216216"
s6.Looped = true

local s7 = Instance.new('Sound', char.LeftFoot) -- walk (sand)
s7.Volume = 6
s7.SoundId = "rbxassetid://336575096"
s7.Looped = true

local s8 = Instance.new('Sound', char.LeftFoot) -- walk (ice)
s8.Volume = 6
s8.SoundId = "rbxassetid://138214900"
s8.Looped = true

local s12 = Instance.new('Sound', char.LeftFoot) -- walk (metal)
s12.Volume = 6
s12.SoundId = "rbxassetid://549006073"
s12.Looped = true

local s13 = Instance.new('Sound', char.LeftFoot) -- walk (bricks and stuff)
s13.Volume = 6
s13.SoundId = "rbxassetid://156659098"
s13.Looped = true

local s14 = Instance.new('Sound', char.LeftFoot) -- walk (carpet)
s14.Volume = 9
s14.SoundId = "rbxassetid://133705377"
s14.Looped = true

--// fly

local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = mouse.Hit.lookVector * 100

local bg = Instance.new("BodyGyro")
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 10000
bg.D = 100

--// Outfit

hum.WalkSpeed = 12

for _, a in pairs(char:children()) do
        if a:IsA('Pants') or a:IsA('Shirt') or a:IsA('CharacterMesh') or a:IsA('Accessory') then
                a:Destroy()
        end
end

bc = char:FindFirstChild('Body Colors')
bc.HeadColor = BrickColor.new('Light orange')
bc.LeftArmColor = BrickColor.new('Light orange')
bc.RightArmColor = BrickColor.new('Light orange')
bc.LeftLegColor = BrickColor.new('Light orange')
bc.RightLegColor = BrickColor.new('Light orange')
bc.TorsoColor = BrickColor.new('Light orange')

local p1 = Instance.new('Part', char)
p1.Anchored = false
p1.CanCollide = false
p1.BrickColor = BrickColor.new('Rust')
local w = Instance.new('Weld', p1)
w.Part0 = p1
w.Part1 = char:FindFirstChild'Head'
w.C0 = CFrame.new(.23,-.4,-0.2) * CFrame.Angles(rad(0),rad(0),rad(0))
local m1 = Instance.new('SpecialMesh', p1)
m1.MeshId = "rbxassetid://62246019"
m1.TextureId = "rbxassetid://56350922"
m1.Scale = Vector3.new(.62,0.7,.85)

local p1 = Instance.new('Part', char)
p1.Anchored = false
p1.CanCollide = false
p1.BrickColor = BrickColor.new('Rust')
local w = Instance.new('Weld', p1)
w.Part0 = p1
w.Part1 = char:FindFirstChild'Head'
w.C0 = CFrame.new(-.23,-.4,-0.2) * CFrame.Angles(rad(0),rad(0),rad(0))
local m1 = Instance.new('SpecialMesh', p1)
m1.MeshId = "rbxassetid://62246019"
m1.TextureId = "rbxassetid://267233089"
m1.Scale = Vector3.new(.62,0.7,0.85)

char.Head:FindFirstChild('face').Texture = "rbxassetid://882767153"

local s = Instance.new('Shirt', char)
s.ShirtTemplate = "rbxassetid://941881045"
local p2 = Instance.new('Pants', char)
p2.PantsTemplate = "rbxassetid://982585123"

local HBill = Instance.new("BillboardGui", char.Head)
local HMain, HBarBack, HBar = Instance.new("Frame", HBill), Instance.new("Frame"), Instance.new("Frame")
local HHealth, HName = Instance.new("TextLabel", HBarBack), Instance.new("TextLabel")
HBill.Size = UDim2.new(15,0,2.2,0)
HBill.Name = "Display"
HBill.StudsOffset = Vector3.new(0,3.5,0)
HBill.AlwaysOnTop = false
HBill.MaxDistance = 50
HBill.Enabled = true
HMain.BackgroundColor3 = BrickColor.new("Really black").Color
HMain.BackgroundTransparency = 0.8
HMain.Size = UDim2.new(1,0,1,0)
HBarBack.Parent = HMain
HBarBack.BackgroundColor3 = Color3.new(0,255,0)
HBarBack.BorderColor3 = Color3.new(0,0,0)
HBarBack.BorderSizePixel = .25
HBarBack.BackgroundTransparency = .5
HBarBack.Position = UDim2.new(.025, 0, .55, 0)
HBarBack.Size = UDim2.new(.95, 0, .3, 0)
HHealth.BackgroundTransparency = .7
HHealth.Size = UDim2.new(1,0,1,0)
HHealth.Font = "SourceSansBold"
HHealth.Text = ""
HHealth.TextScaled = true
HHealth.TextColor3 = BrickColor.new("Really black").Color
HHealth.TextStrokeTransparency = 1
HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.Size = UDim2.new(1,0,.7,0)
HName.Font = "SourceSansBold"
HName.Text = "Shouto Todoroki"
HName.TextScaled = true
HName.TextColor3 = BrickColor.new("Cyan").Color
HName.TextStrokeTransparency = 1
HName.TextYAlignment = "Top"

hum.MaxHealth = "inf"
hum.Health = hum.MaxHealth

--// Sfx

local s1 = Instance.new('Sound', lleg.Parent)
s1.SoundId = "rbxassetid://138210320"
s1.Volume = 1

local s2 = Instance.new('Sound', char.Head)
s2.SoundId = "rbxassetid://959349317"
s2.Volume = 0
s2.Looped = true

local s3 = Instance.new('Sound', char.RightHand)
s3.SoundId = "rbxassetid://260433522"
s3.Volume = 1
s3.Looped = false

local s4 = Instance.new('Sound', char.RightHand)
s4.SoundId = "rbxassetid://304448425"
s4.Volume = 1
s4.Looped = false

--// Functions

s2:Stop()

coroutine.resume(coroutine.create(function()
        for i = 1,35 do
                wait()
                s2.Volume = s2.Volume + 0.1
        end
end))

local fire1 = Instance.new("ParticleEmitter", char.LeftHand)
fire1.Texture = "rbxassetid://160041569"
fire1.Rotation = NumberRange.new(4, 9)
fire1.RotSpeed = NumberRange.new(5, 9)
fire1.Speed = NumberRange.new(5, 7)
fire1.Lifetime = NumberRange.new(0.25, .28)
fire1.Color =  ColorSequence.new(BrickColor.new'Deep orange'.Color)
fire1.Rate = 200,300
fire1.Acceleration = Vector3.new( 8, 6, 6 )
fire1.Transparency = NumberSequence.new(0, 0, 0, 0.13253, 0.54375, 0, 0.32092, 0.7375, 0, 0.387733, 0, 0, 0.468784 ,0.725, 0, 0.522453, 0.45625, 0, 0.615553, 0.6375, 0, 0.63965, 0 ,0, 0.744797, 0.525, 0 ,1, 0, 0 )
fire1.LightEmission = 0.860
fire1.Size = NumberSequence.new(1)
fire1.LightInfluence = 0
fire1.SpreadAngle = Vector2.new(28, 28)
fire2 = fire1:Clone()
fire2.Parent = char.LeftUpperArm
fire3 = fire1:Clone()
fire3.Parent = char.LeftLowerArm

fire1.Enabled = false
fire2.Enabled = false
fire3.Enabled = false

local fx = Instance.new("ParticleEmitter", root)
fx.Texture = "http://www.roblox.com/asset/?id=258126401"
fx.Color =  ColorSequence.new(BrickColor.new'Light bluish green'.Color)
fx.Rotation = NumberRange.new(-180, 180)
fx.RotSpeed = NumberRange.new(-50, 50)
fx.Speed = NumberRange.new(0)
fx.Lifetime = NumberRange.new(0.625, 0.75)
fx.Rate = 62.500
fx.Transparency = NumberSequence.new(.5)
fx.LightEmission = .5
fx.Size = NumberSequence.new(0, 0.75, 0, 1, 1.25, 0.25)
fx.LightInfluence = 0
fx.Enabled = false
fx.SpreadAngle = Vector2.new(150)

local ice1 = Instance.new("ParticleEmitter", char.RightHand)
ice1.Texture = "rbxassetid://258128463"
ice1.Color =  ColorSequence.new(Color3.new(0.756863, 0.913725, 0.980392),Color3.new(0.756863, 0.913725, 0.980392))
ice1.Rotation = NumberRange.new(-180, 180)
ice1.RotSpeed = NumberRange.new(-90, 90)
ice1.Speed = NumberRange.new(0)
ice1.Lifetime = NumberRange.new(0.25, 0.40000000596046)
ice1.Rate = 50
ice1.Transparency = NumberSequence.new(.5)
ice1.LightEmission = 0.125
ice1.Size = NumberSequence.new(.7, 1, .7)
ice1.LightInfluence = 0
ice1.SpreadAngle = Vector2.new(150)
ice2 = ice1:Clone()
ice2.Parent = char.RightUpperArm
ice3 = ice1:Clone()
ice3.Parent = char.RightLowerArm

ice1.Enabled = false
ice2.Enabled = false
ice3.Enabled = false

function ice(a)
    local ice1 = Instance.new("ParticleEmitter", a)
    ice1.Texture = "rbxassetid://258128463"
    ice1.Color =  ColorSequence.new(Color3.new(0.756863, 0.913725, 0.980392),Color3.new(0.756863, 0.913725, 0.980392))
    ice1.Rotation = NumberRange.new(-180, 180)
    ice1.RotSpeed = NumberRange.new(-90, 90)
    ice1.Speed = NumberRange.new(0)
    ice1.Lifetime = NumberRange.new(0.25, 0.40000000596046)
    ice1.Rate = 50
    ice1.Transparency = NumberSequence.new(.5)
    ice1.LightEmission = 0.125
    ice1.Size = NumberSequence.new(.7, 1, .7)
    ice1.LightInfluence = 0
    ice1.SpreadAngle = Vector2.new(150)
end

function debris(a, c)
        for j = 1, c do
                wait()
        local pr = Instance.new("Part")
        pr.Name = ""
        pr.Anchored = true
        pr.BrickColor = BrickColor.new('Light bluish green')
        pr.CanCollide = true
        pr.Material = 'Ice'
        pr.Transparency = 0.25
        pr.Size = Vector3.new(math.random(10, 14), math.random(40,60), math.random(10, 14))
        pr.CFrame = a * CFrame.Angles(0, math.rad(c * j), 0) * CFrame.new(0, -5, math.random(18, 22)) * CFrame.Angles(math.rad(math.random(-30, -15)), math.rad(math.random(0, 1)), math.rad(math.random(0, 1)))
        pr.Parent = workspace
        game.Debris:AddItem(pr, 15)
    end
end

function firer(a)
        local fire1 = Instance.new("ParticleEmitter", a)
        fire1.Texture = "rbxassetid://160041569"
        fire1.Rotation = NumberRange.new(4, 9)
        fire1.RotSpeed = NumberRange.new(5, 9)
        fire1.Speed = NumberRange.new(5, 7)
        fire1.Lifetime = NumberRange.new(0.2,0.6)
        fire1.Color =  ColorSequence.new(BrickColor.new'Deep orange'.Color)
        fire1.Rate = 10000
        fire1.Acceleration = Vector3.new( 8, 6, 6 )
        fire1.Transparency = NumberSequence.new(0, 0, 0, 0.13253, 0.54375, 0, 0.32092, 0.7375, 0, 0.387733, 0, 0, 0.468784 ,0.725, 0, 0.522453, 0.45625, 0, 0.615553, 0.6375, 0, 0.63965, 0 ,0, 0.744797, 0.525, 0 ,1, 0, 0 )
        fire1.LightEmission = 0.860
        fire1.Size = NumberSequence.new(1)
        fire1.LightInfluence = 0
        fire1.SpreadAngle = Vector2.new(28, 28)
end
function fireit(a)
        local fire1 = Instance.new("ParticleEmitter", a)
        fire1.Texture = "rbxassetid://160041569"
        fire1.Rotation = NumberRange.new(5, 10)
        fire1.RotSpeed = NumberRange.new(3, 12)
        fire1.Speed = NumberRange.new(6, 12)
        fire1.Lifetime = NumberRange.new(0.2,0.6)
        fire1.Color =  ColorSequence.new(BrickColor.new('Deep orange').Color)
        fire1.Rate = 100000
        fire1.Acceleration = Vector3.new( 0, 0, 10 )
        fire1.Transparency = NumberSequence.new(0, 0, 0, 0.13253, 0.54375, 0, 0.32092, 0.7375, 0, 0.387733, 0, 0, 0.468784 ,0.725, 0, 0.522453, 0.45625, 0, 0.615553, 0.6375, 0, 0.63965, 0 ,0, 0.744797, 0.525, 0 ,1, 0, 0 )
        fire1.LightEmission = 1
        fire1.Size = NumberSequence.new(1.5)
        fire1.LightInfluence = 0
        fire1.SpreadAngle = Vector2.new(1,1)
        return fireit
end
function ic(a)
        local fire1 = Instance.new("ParticleEmitter", a)
        fire1.Texture = "http://www.roblox.com/asset/?id=258126401"
        fire1.Color =  ColorSequence.new(BrickColor.new'Light bluish green'.Color)
        fire1.Rotation = NumberRange.new(-180, 180)
        fire1.RotSpeed = NumberRange.new(-50, 50)
        fire1.Speed = NumberRange.new(0)
        fire1.Lifetime = NumberRange.new(0.625, 0.75)
        fire1.Rate = 62.500
        fire1.Transparency = NumberSequence.new(.5)
        fire1.LightEmission = .5
        fire1.Size = NumberSequence.new(0, 0.75, 0, 1, 1.25, 0.25)
        fire1.LightInfluence = 0
        fire1.SpreadAngle = Vector2.new(150)
end

local sous = {}
        function scan(p)
                coroutine.resume(coroutine.create(function()
                for _,v in pairs(p:GetChildren()) do
                        if v:IsA("BodyVelocity") or v:IsA('BodyPosition') or v:IsA('BodyGyro') then
                                v:Destroy()
                        end
                scan(v)
                end
        end))
end
        
function tw(string)
coroutine.resume(coroutine.create(function()
if mode == "Fire" then
HHealth.TextColor3 = BrickColor.new("Crimson").Color
elseif mode == "Ice" then
HHealth.TextColor3 = BrickColor.new("Baby blue").Color
else
HHealth.TextColor3 = BrickColor.new("Institutional white").Color
end
local String = string
local Length = string.len(String)

for i=1,Length do
        wait(.05)
        HHealth.Text = string.sub(String,1,i)
end
wait(.3)
HHealth.Text = ""
end))
end

tw('Created by Humans')

function firestream()
for i = 1,40 do
       for i = 1,30 do
            neck.C0 = neck.C0:lerp(CFrame.new(0,0.8,0)*CFrame.Angles(rad(0),rad(6.646),rad(0)),.03)
 LS.C0 = LS.C0:lerp(CFrame.new(-0.9,0.5,.05)*CFrame.Angles(rad(90.126),rad(0),rad(0)),.03)
       LE.C0 = LE.C0:lerp(CFrame.new(-0,-0.3,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.03)
       RS.C0 = RS.C0:lerp(CFrame.new(0.9,0.5,.05)*CFrame.Angles(rad(-2.693),rad(-27.617),rad(85.313)),.03)
       RE.C0 = RE.C0:lerp(CFrame.new(-0,-0.3,0)*CFrame.Angles(rad(90.699),rad(1.49),rad(0)),.03)
      Waist.C0 = Waist.C0:lerp(CFrame.new(-0,0.6,0)*CFrame.Angles(rad(0),rad(-4.526),rad(0)),.03)
            LH.C0 = LH.C0:lerp(CFrame.new(0, -0.275, 0.046)*CFrame.Angles(rad(80.501),rad(0),rad(0)),0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(0.082, -0.038, 0.23)*CFrame.Angles(rad(-20.798),rad(9.339),rad(22.231)),0.1)
    LN.C0 = LN.C0:lerp(CFrame.new(0,-0.35,0)*CFrame.Angles(rad(-82.506),rad(0),rad(0)),0.1)
    RN.C0 = RN.C0:lerp(CFrame.new(0,-0.35,0)*CFrame.Angles(rad(-27.617),rad(0),rad(0)),0.1)
     LowerTorso.Root.C0 = LowerTorso.Root.C0:lerp(CFrame.new(0, -0.094, 0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.05)
          end
          end
          wait(1)
    fireit(char["LeftUpperArm"])
    wait(1)
    fireit(char["LeftLowerArm"])
    wait(1)
    fireit(char["LeftHand"])
    local s = .05
    for i=1, 30 do
        local flame = Instance.new("Part", char)
        flame.Name = "StreamOfFlames"
        flame.Touched:connect(function(hit)
            if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent.Name ~= plr.Name then
                hit.Parent:BreakJoints()
                firer(hit)
            end
        end)
        flame.Transparency = 1
        flame.Size = Vector3.new(5, 5, 5)
        flame.CanCollide = true
        flame.CFrame = char["LeftHand"].CFrame + Vector3.new(0,1,0)
        flame.Anchored = false
        fireit(flame)
        flame.ParticleEmitter.Size = NumberSequence.new(10, 14, 10, 16, 18)
        local bv = Instance.new("BodyVelocity", flame)
        bv.Velocity = plr:GetMouse().Hit.lookVector * 50
        bv.MaxForce = Vector3.new(1e8, 7.5, 1e8)
        wait(.2)
    end
    wait(1)
    for i,v in pairs(char:GetChildren())do
        if v.Name == "LeftHand" or v.Name == "LeftUpperArm" or v.Name == "LeftLowerArm" then
            for i,a in pairs(v:GetChildren())do
                if a:IsA("ParticleEmitter") then
                    if a.LightEmission == 1 then
                    a:Destroy()
                    end
                end
            end
        end
        if v.Name == "StreamOfFlames" then
            v:Destroy()
        end
    end
end

function firemove()
        fire1.Enabled = true
        fire2.Enabled = true
        fire3.Enabled = true
        wait(.6)
        for i = 0,1,0.1 do
                wait()
                lshold.C0 = lshold.C0:lerp(lsho*CFrame.new(0.036, -0.178, -0.051) * CFrame.Angles(math.rad(78), 0, math.rad(25)),i)
                rshold.C0 = rshold.C0:lerp(rsho*CFrame.new(-0.143, -0.209, -0.185) * CFrame.Angles(math.rad(78), math.rad(-3), math.rad(-25)),i)
                lelbow.C0 = lelbow.C0:lerp(lelbo*CFrame.Angles(0, 0, math.rad(26)),i)
                relbow.C0 = relbow.C0:lerp(relbo*CFrame.Angles(0, 0, math.rad(-26)),i)
        end
        local fball = Instance.new('Part', char)
        firer(fball)
        fball.Touched:connect(function(hit)
                if hit.Parent and hit and hit.Parent.Name ~= plr.Name and hit.Parent:FindFirstChildOfClass'Humanoid' then
                        local targ = hit.Parent
                        local humtarg = targ:FindFirstChildOfClass'Humanoid'
                        targ:BreakJoints()
                        local _t = 0
                        repeat
                            wait(.3)
                            local _p = fball:Clone()
                            if _p:FindFirstChild("BodyVelocity") then
                                 _p.BodyVelocity.Velocity = Vector3.new(math.random(-360, 360),math.random(-360, 360),math.random(-360, 360))
                            end
                            if _p:FindFirstChildOfClass("ParticleEmitter") then
                                _p:FindFirstChildOfClass("ParticleEmitter").Size = NumberSequence.new(.1)
                            end
                            _p.Size = (_p.Size/3)
                            _p.Transparency = .5
                        until _t == 20
                end
        end)
        fball.Name = 'fireball'
        fball.Size = Vector3.new(0.1,0.1,0.1)
        fball.Shape = 'Ball'
        fball.BrickColor = BrickColor.new'Crimson'
        fball.TopSurface = 0
        fball.BottomSurface = 0
        fball.Anchored = false
        fball.CanCollide = false
        fball.Material = 'Slate'
        local w = Instance.new('Weld', char)
        w.Name = 'itsjustaweldbro'
        w.Part0 = fball
        w.Part1 = char.LeftHand
        w.C0 = CFrame.new(0,-0.5,0)
        for i = 1,25 do
                fball.Size = fball.Size + Vector3.new(.0225,.0225,.0225)
                local w = Instance.new('Weld', char)
                w.Name = 'itsjustaweldbro'
                w.Part0 = fball
                w.Part1 = char.LeftHand
                w.C0 = CFrame.new(0,1.25,0)
                wait()
        end
        wait(.8)
        s4:Play()
        for _, a in pairs(char:children()) do
                if a:IsA('Weld') then
                        a:Destroy()
                end
        end
        local siz = 1
        local bv = Instance.new("BodyVelocity")
          bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
          bv.velocity = mouse.Hit.lookVector * 50
          bv.Parent = fball
        wait(1)
        for i = 1,25 do
                wait()
                fball:FindFirstChildOfClass'ParticleEmitter'.Size = NumberSequence.new(siz)
                fball.Size = fball.Size + Vector3.new(2,2,2)
                bv.velocity = mouse.Hit.lookVector * 50
                siz = siz + 1
        end
        fire1.Enabled = false
        fire2.Enabled = false
        fire3.Enabled = false
end

function fmove()
        local fire1 = Instance.new("ParticleEmitter", char.LeftHand)
        fire1.Texture = "rbxassetid://160041569"
        fire1.Rotation = NumberRange.new(4, 9)
        fire1.RotSpeed = NumberRange.new(5, 9)
        fire1.Speed = NumberRange.new(5, 7)
        fire1.Lifetime = NumberRange.new(0.2,2)
        fire1.Color =  ColorSequence.new(BrickColor.new'Deep orange'.Color)
        fire1.Rate = 10000
        fire1.Acceleration = Vector3.new( 8, 6, 6 )
        fire1.Transparency = NumberSequence.new(0, 0, 0, 0.13253, 0.54375, 0, 0.32092, 0.7375, 0, 0.387733, 0, 0, 0.468784 ,0.725, 0, 0.522453, 0.45625, 0, 0.615553, 0.6375, 0, 0.63965, 0 ,0, 0.744797, 0.525, 0 ,1, 0, 0 )
        fire1.LightEmission = 0.860
        fire1.Size = NumberSequence.new(5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100)
        fire1.LightInfluence = 0
        fire1.SpreadAngle = Vector2.new(0)
end

function hit(b)
        for _,v in pairs(workspace:children()) do
                if v:IsA('Model') and v.Name ~= plr.Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChildOfClass("Humanoid") then
                        if (v.HumanoidRootPart.Position-ice.Position).magnitude <=b then
                                if not hit.Parent:FindFirstChild'IceVal' then
                                        local targ = v
                                        table.insert(freezed,v)
                                        local b = numb:Clone()
                                        b.Parent = targ
                                        local humtarg = targ:FindFirstChildOfClass'Humanoid'
                                        humtarg.WalkSpeed = 0
                                        humtarg.JumpPower = 0
                                        local a = p:Clone()
                                        game:service'Debris':AddItem(a,7)
                                        a.Parent = char
                                        a.Shape = 'Block'
                                        a.Size = Vector3.new(2.56, 1, 2)
                                        if targ:FindFirstChild'Torso' then
                                        a.CFrame = targ.Torso.CFrame * CFrame.new(0,-2.5,0)
                                elseif targ:FindFirstChild'UpperTorso' then
                                        a.CFrame = targ.HumanoidRootPart.CFrame * CFrame.new(0,-2.5,0)
                                        end
                                end
                        end
                end
        end
end

function freeze()
        ice1.Enabled = true
        ice2.Enabled = true
        ice3.Enabled = true
        hum.WalkSpeed = 0
        hum.JumpPower = 0
        local p = Instance.new('Part', char)
        ice(p)
        p.Touched:connect(function(hit)
                if hit.Parent and hit.Parent:FindFirstChildOfClass'Humanoid' and hit.Parent.Name ~= plr.Name then
                        if not hit.Parent:FindFirstChild'IceVal' then
                                local targ = hit.Parent
                                table.insert(freezed,targ)
                                local b = numb:Clone()
                                b.Parent = targ
                                local humtarg = targ:FindFirstChildOfClass'Humanoid'
                                humtarg.WalkSpeed = 0
                                humtarg.JumpPower = 0
                                local a = p:Clone()
                                game:service'Debris':AddItem(a,7)
                                a.Parent = char
                                a.Shape = 'Block'
                                a.Size = Vector3.new(2.56, 1, 2)
                                if targ:FindFirstChild'Torso' then
                                        a.CFrame = targ.Torso.CFrame * CFrame.new(0,-2.5,0)
                                elseif targ:FindFirstChild'UpperTorso' then
                                        a.CFrame = targ.HumanoidRootPart.CFrame * CFrame.new(0,-2.5,0)
                                end
                        end
                end
        end)
        game:service'Debris':AddItem(p,9)
        p.Anchored = true
        p.CanCollide = false
        p.Shape = 'Cylinder'
        p.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0,-2.3,0) * CFrame.Angles(0,0,rad(-90))
        p.Size = Vector3.new(0.2,0,0.2)
        p.BrickColor = BrickColor.new('Light bluish green')
        p.Material = 'Ice'
        for i = 0,1,0.1 do
                wait()
                rtorso.C0 = rtorso.C0:lerp(rtors*CFrame.new(0, -0.887, 0.2) * CFrame.Angles(math.rad(-9.74), 0, 0),i)
                waist.C0 = waist.C0:lerp(wais*CFrame.new(0, -0.118, -0.201) * CFrame.Angles(math.rad(-55.634), 0, 0),i)
                lshold.C0 = lshold.C0:lerp(lsho*CFrame.new(0, -0.11, -0.375) * CFrame.Angles(math.rad(73.625), 0, 0),i)
                rshold.C0 = rshold.C0:lerp(rsho*CFrame.new(0, -0.308, -0.164) * CFrame.Angles(math.rad(69.5), 0, 0),i)
                neck.C0 = neck.C0:lerp(nec*CFrame.Angles(math.rad(57.124), 0, 0),i)
                lleg.C0 = lleg.C0:lerp(lle*CFrame.Angles(math.rad(17.991), 0, 0),i)
                rleg.C0 = rleg.C0:lerp(rle*CFrame.Angles(math.rad(3.094), 0, 0),i)
                lkk.C0 = lkk.C0:lerp(lk*CFrame.Angles(math.rad(-108.977), 0, 0),i)
                rkk.C0 = rkk.C0:lerp(rk*CFrame.new(0, -0.02, -0.057) * CFrame.Angles(math.rad(-104.622), 0, 0),i)
        end
        for i = 1,150 do
                wait()
                p.Size = p.Size + Vector3.new(0,3,3)
                p.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0,-2.3,0) * CFrame.Angles(0,0,rad(-90))
        end
        for i = 0,1,0.08 do
                wait()
                rtorso.C0 = rtorso.C0:lerp(rtors,i)
                waist.C0 = waist.C0:lerp(wais,i)
                lshold.C0 = lshold.C0:lerp(lsho,i)
                rshold.C0 = rshold.C0:lerp(rsho,i)
                neck.C0 = neck.C0:lerp(nec,i)
                lleg.C0 = lleg.C0:lerp(lle,i)
                rleg.C0 = rleg.C0:lerp(rle,i)
                lkk.C0 = lkk.C0:lerp(lk,i)
                rkk.C0 = rkk.C0:lerp(rk,i)
        end
        for _, a in pairs(freezed) do
                wait(.05)
                if a:FindFirstChildOfClass'NumberValue' then
                    a:FindFirstChildOfClass'NumberValue':Destroy()
                end
                a:FindFirstChildOfClass'Humanoid'.WalkSpeed = 16
                a:FindFirstChildOfClass'Humanoid'.JumpPower = 56
        end
        hum.WalkSpeed = 12
        hum.JumpPower = 50
    wait(4)
        for _, a in pairs(freezed) do
                wait(.05)
                if a:FindFirstChildOfClass'NumberValue' then
                    a:FindFirstChildOfClass'NumberValue':Destroy()
                end
                a:FindFirstChildOfClass'Humanoid'.WalkSpeed = 16
                a:FindFirstChildOfClass'Humanoid'.JumpPower = 56
        end
end

function legslam()
        legslamm = true
        for i = 0,1,0.1 do
                wait()
                neck.C0 = neck.C0:lerp(nec*CFrame.Angles(rad(12), 0, 0),i)
                rleg.C0 = rleg.C0:lerp(rle*CFrame.new(0, 0.57, -0.725) * CFrame.Angles(math.rad(11.23), 0, 0),i)
        end
        for i = 0,1,0.1 do
                wait()
                neck.C0 = neck.C0:lerp(nec*CFrame.Angles(math.rad(-20), 0, 0),i)
                rleg.C0 = rleg.C0:lerp(rle*CFrame.new(0, 0.134, -0.71),i)
        end
        s1:Play()
        wait(.5)
        for i = 0,1,0.1 do
                wait()
                neck.C0 = neck.C0:lerp(nec,i)
                rleg.C0 = rleg.C0:lerp(rle,i)
        end
        legslamm=false
end

function icemove()
        debris(char:FindFirstChild('HumanoidRootPart').CFrame,15)
end

function spikes()
        local a = 10
        local face = ""
        local b = .2
        local c = 8
        legslam()
        wait(0.2)
        for i = 1,12 do
                local p = Instance.new('Part', char)
                ice(p)
                p.Name = 'Spike'
                table.insert(spike,p)
                local m = Instance.new('SpecialMesh', p)
                m.MeshId = 'rbxassetid://1033714'
                m.Scale = Vector3.new(5, 54, 5)
                p.BrickColor = BrickColor.new('Light bluish green')
                p.Material = 'Ice'
                p.Anchored = true
                p.CanCollide = false
                p.Size = Vector3.new(5,20,5)
                p.Position = char.HumanoidRootPart.Position + char.HumanoidRootPart.CFrame.lookVector * a
                p.Position = p.Position + Vector3.new(0,-27,0)
                p.Touched:connect(function(hit)
                        if hit.Parent and hit.Parent:FindFirstChildOfClass'Humanoid' then
                                hit.Parent:Destroy()
                        end
                end)
                a = a + 10
        for i = 1,8 do
                        wait()
                        p.Position = p.Position + Vector3.new(0,b,0)
                        b = b + .03
                end
        end
        b = .2
        wait(4)
        for _, a in pairs(spike) do
                for i = 1,20 do
                        wait(.05)
                        a.CFrame = a.CFrame * CFrame.new(0,-b,0)
                        b = b + .08
                end
        end
        spike = {}
        b = .2
        for _, a in pairs(char:children()) do
                if a.Name == 'Spike' and a:IsA'Part' then
                        a:Destroy()
                end
        end
        
end
function slide()
                for i = 0,1,0.1 do
                        wait()
                        neck.C0 = neck.C0:lerp(CFrame.new(0,0.8,0)*CFrame.Angles(rad(0),rad(11.287),rad(0)),i)
                         LS.C0 = LS.C0:lerp(CFrame.new(-1.2,0.5,.05)*CFrame.Angles(rad(76.375),rad(4.412),rad(-19.939)),i)
                       LE.C0 = LE.C0:lerp(CFrame.new(-0,-0.3,0)*CFrame.Angles(rad(12.605),rad(0),rad(0)),i)
                      RS.C0 = RS.C0:lerp(CFrame.new(1.2,0.5,.05)*CFrame.Angles(rad(-43.602),rad(-26.814),rad(46.696)),i)
                      RE.C0 = RE.C0:lerp(CFrame.new(-0,-0.3,0)*CFrame.Angles(rad(84.454),rad(0),rad(0)),i)
                      Waist.C0 = Waist.C0:lerp(CFrame.new(-0,0.6,0)*CFrame.Angles(rad(0),rad(-8.881),rad(0)),i)
                LH.C0 = LH.C0:lerp(CFrame.new(-0.5,-0.35,0)*CFrame.Angles(rad(14.553),rad(35.294),rad(-6.016)),i)
                        RH.C0 = RH.C0:lerp(CFrame.new(0.5,-0.35,0)*CFrame.Angles(rad(0),rad(-8.193),rad(13.178)),i)
                        LN.C0 = LN.C0:lerp(CFrame.new(0,-0.35,0)*CFrame.Angles(rad(-11.86),rad(0),rad(0)),i)
                        RN.C0 = RN.C0:lerp(CFrame.new(0,-0.35,0)*CFrame.Angles(rad(-20.111),rad(0),rad(0)),i)
                     LowerTorso.Root.C0 = LowerTorso.Root.C0:lerp(CFrame.new(-0,0,0)*CFrame.Angles(rad(0),rad(-19.824),rad(0)),i)
                end
                hum.WalkSpeed = 0
        for i = 1,65 do
                wait(.05)
                                local ap = Instance.new('Part', char)
                                ap.Anchored = true
                                ap.CanCollide = false
                                ap.Size = Vector3.new(0.2,0.2,0.2)
                                ap.Transparency = 1
                                ap.Position = rootpart.Position + rootpart.CFrame.lookVector * 2
                                rootpart.CFrame = ap.CFrame
                local spart = Instance.new('Part', char)
                                table.insert(ices,spart)
                                spart.Touched:connect(function(hit)
                                        if hit and mode == "Ice" and hit.Parent.Name ~= plr.Name and hit.Parent and hit.Parent:FindFirstChildOfClass'Humanoid' then
                                                local targ = hit.Parent
                                                table.insert(tfreeze,targ)
                                                local humtarg = targ:FindFirstChildOfClass'Humanoid'
                                                humtarg.WalkSpeed = humtarg.WalkSpeed/2
                                        end
                                end)
                spart.Name = 'IceSlide'
                spart.CanCollide = false
                spart.Material = 'Neon'
                spart.Anchored = true
                spart.Size = Vector3.new(5, 0.05, 5)
                spart.BrickColor = BrickColor.new(color)
                spart.CFrame = rootpart.CFrame * CFrame.new(0,-2.3,0) * CFrame.Angles(0,math.random(1,500),0)
                if mode == "Both" then
                    local s = Instance.new("Smoke", spart)
                    s.Opacity = .8
                    s.Size = 2.5
                end
        end
                hum.WalkSpeed = 12
                for i = 1,25 do
                        wait()
                        for _, a in pairs(ices) do
                                a.Transparency = a.Transparency + 0.1
                        end
                end
        for _, a in pairs(ices) do
                a:Destroy()
        end
        for _, a in pairs(tfreeze) do
              a:FindFirstChildOfClass'Humanoid'.WalkSpeed = 16
        end
        tfreeze = {}
        bg.Parent = script
end

function flyy()
        fire1.Enabled = true
        fire2.Enabled = false
        fire3.Enabled = false
        ice1.Enabled = true
        ice2.Enabled = true
        ice3.Enabled = true
        bg.Parent = root
        bv.Parent = root
        hum.Sit = true
end

function unfly()
        fire1.Enabled = false
        fire2.Enabled = false
        fire3.Enabled = false
        ice1.Enabled = true
        ice2.Enabled = true
        ice3.Enabled = true
        fly = false
        for i = 0,1,0.1 do
                wait()
                rtorso.C0 = rtorso.C0:lerp(rtors, 0.1)
        end
        bg.Parent = script
        bv.Parent = script
        hum.Sit = false
end

--// Keys

mouse.Button2Down:connect(function()
        rclick = true
end)

mouse.Button2Down:connect(function()
        rclick = false
end)

mouse.Button1Down:connect(function()
        if mouse.Target and cooldown and mouse.Target.Parent and mouse.Target.Parent:FindFirstChildOfClass'Humanoid' then
                if mode == 'Ice' or mode == 'Both' then
                if not mouse.Target:FindFirstChild'Id' then
                local targ = mouse.Target
                table.insert(freez,targ.Parent)
                local a = Instance.new('NumberValue', targ.Parent)
                a.Name = 'Id'
                tw('FREEZE!')
                fire = true
                cooldown = false
                for i = 0,1,0.1 do
                        wait()
                        rshold.C0 = rshold.C0:lerp(rsho*CFrame.Angles(math.rad(100), math.rad(0.63), math.rad(2.063)), 0.1)
                end
                wait(0.3)
                local p = Instance.new('Part', char)
                s3:Play()
                ice(p)
                p.Anchored = false
                p.CanCollide = false
                p.Size = targ.Size + Vector3.new(0.1,0.1,0.1)
                p.Transparency = 0.5
                p.BrickColor = BrickColor.new'Light bluish green'
                p.Material = 'Ice'
                local w = Instance.new('Weld', p)
                w.Part0 = p
                w.Part1 = targ
                if targ.Parent:FindFirstChildOfClass'Humanoid' then
                        targ.Parent:FindFirstChildOfClass'Humanoid'.WalkSpeed = 0
                        targ.Parent:FindFirstChildOfClass'Humanoid'.JumpPower = 0
                end
                HHealth.Text = ""
                for i = 0,1,0.1 do
                        wait()
                        rshold.C0 = rshold.C0:lerp(rsho, 0.1)
                end
                cooldown = true
                fire = false
                end
                end
        end
end)

mouse.Button1Down:connect(function()
        if mouse.Target and cooldown and mouse.Target.Parent and mouse.Target.Parent:FindFirstChildOfClass'Humanoid' then
                if mode == 'Fire' then
                if not mouse.Target:FindFirstChild'Id' then
                local targ = mouse.Target
                table.insert(burnt,targ.Parent)
                if targ.Parent:FindFirstChildOfClass'NumberValue' then
                      targ.Parent:FindFirstChildOfClass'NumberValue':Destroy()
                end
                targ.Parent:FindFirstChildOfClass'Humanoid'.WalkSpeed = 16
                targ.Parent:FindFirstChildOfClass'Humanoid'.JumpPower = 50
                tw('BURN!')
                fire = true
                cooldown = false
                local p = Instance.new('Part', char)
                p.Anchored = false
                p.CanCollide = false
                p.Size = targ.Size + Vector3.new(0.1,0.1,0.1)
                p.Transparency = 1
                p.BrickColor = BrickColor.new'Light bluish green'
                p.Material = 'Ice'
                local w = Instance.new('Weld', p)
                w.Part0 = p
                w.Part1 = targ
                for i = 0,1,0.1 do
                        wait()
                        lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(100), math.rad(-0.63), math.rad(-2.063)), 0.1)
                end
                wait(0.3)
                firer(p)
                wait(.3)
                p:FindFirstChildOfClass'ParticleEmitter'.Enabled = false
                targ:Destroy()
                HHealth.Text = ""
                for i = 0,1,0.1 do
                        wait()
                        lshold.C0 =lshold.C0:lerp(lsho, 0.1)
                end
                cooldown = true
                fire = false
                end
                end
        end
end)

mouse.KeyDown:connect(function(h)
        if h == 'c' and cooldown and canfly == false then
                cooldown = false
                if mode == "None" then
                        mode = "Fire"
                        tw('FIRE MODE!')
                        fx.Enabled = false
                        ice1.Enabled = false
                        ice2.Enabled = false                
                        ice3.Enabled = false
                        HHealth.Text = ''
                elseif mode == "Ice" then
                        mode = "Both"
                        tw('FIRE AND ICE MODE!')
                        fx.Enabled = true
                        ice1.Enabled = true
                        ice2.Enabled = true                
                        ice3.Enabled = true
                        HHealth.Text = ''
                elseif mode == "Fire" then
                        mode = "Ice"
                        tw('ICE MODE!')
                        HName.TextColor3 = BrickColor.new("Cyan").Color
                        fx.Enabled = true
                        ice1.Enabled = true
                        ice2.Enabled = true                
                        ice3.Enabled = true
                        HHealth.Text = ''
                elseif mode == "Both" then
                        mode = "None"
                        tw("I shouldn't waste my energy..")
                        fx.Enabled = false
                        ice1.Enabled = false
                        ice2.Enabled = false
                        ice3.Enabled = false
                        HHealth.Text = ''
                end
                wait(.2)
                cooldown = true
        end
        if h == 'm' and cooldown and canfly == false then
                if mode == "Ice" or mode == "Fire" or mode == "Both" then
                        fire = true
                        cooldown = false
                        slide()
                        fire = false
                        cooldown = true
                end
        end
        if h == 'q' and cooldown then
                if mode == "Ice" or mode == "Both" then
                        cooldown = false
                        fire = true
                        tw('FREEZE!')
                        freeze()
                        HHealth.Text = ""
                        fire = false
                        cooldown = true
                end
        end
        if h == 'f' and cooldown then
                if mode == "Fire" or mode == "Both" then
                        cooldown = false
                        fire = true
                        tw('FIRE BALL!')
                        firemove()
                        HHealth.Text = ""
                        fire = false
                        cooldown = true
                end
        end
        if h == 'e' and cooldown then
                if mode == "Ice" or mode == "Both" then
                        cooldown = false
                        fire = true
                        tw('ICE SHIELD!')
                        icemove()
                        HHealth.Text = ""
                        fire = false
                        cooldown = true
                elseif mode == "Fire" then
                        cooldown = false
                        fire = true
                        tw('FIRE STREAM!')
                        firestream()
                        wait()
                        HHealth.Text = ""
                        fire = false
                        cooldown = true
                end
        end
        if h == 'r' and cooldown then
                if canfly == false and mode == "Both" then
                        canfly = true
                        cooldown = false
                        flyy()
                        cooldown = true
                elseif canfly and cooldown then
                        canfly = false
                        cooldown = false
                        unfly()
                        for i = 0,1,0.1 do
                                wait()
                                rtorso.C0 = rtorso.C0:lerp(rtors, 0.1)
                        end
                        cooldown = true
                end
        end
end)

--// Nothing

fire = false
legslamm = false
fly = false

--// Walk fx

game:GetService('RunService').RenderStepped:connect(function()
        if mode == "None" then
                fire1.Enabled = false
                fire2.Enabled = false
                fire3.Enabled = false
                fx.Enabled = false
                
                nonemode = true
                icemode = false
                bothmode = false
                firemode = false
        elseif mode == "Fire" then
                fire1.Enabled = true
                fire2.Enabled = true
                fire3.Enabled = true
                
                firemode = true
                icemode = false
                bothmode = false
                nonemode = false
        elseif mode == "Ice" then
                fire1.Enabled = false
                fire2.Enabled = false
                fire3.Enabled = false
                
                icemode = true
                bothmode = false
                firemode = false
                nonemode = false
        elseif mode == "Both" then
                fire1.Enabled = true
                fire2.Enabled = true
                fire3.Enabled = true
                
                bothmode = true
                icemode = false
                firemode = false
                nonemode = false
        end
end)

game:GetService('RunService').RenderStepped:connect(function()
        if canfly == true then
                fly = true
        elseif canfly == false then
                fly = false
        end
end)

game:GetService('RunService').RenderStepped:connect(function()
        if fly and idle == false and stop == false then
               hum.Sit = true
            bv.velocity = mouse.Hit.lookVector * 76
            bg.cframe = CFrame.new(rootpart.Position,mouse.Hit.p*Vector3.new(1,0,1)+rootpart.Position*Vector3.new(0,1,0))
                rtorso.C0 = rtorso.C0:lerp(rtors * CFrame.Angles(math.rad(-75), 0, 0), 0.1)
                waist.C0 = waist.C0:lerp(wais * CFrame.new(0, -0.102, 0.033) * CFrame.Angles(math.rad(13.866), 0, 0), 0.1)
                lshold.C0 = lshold.C0:lerp(lsho * CFrame.Angles(math.rad(-27.044), math.rad(12.319), math.rad(-23.319)), 0.1)
                rshold.C0 = rshold.C0:lerp(rsho * CFrame.Angles(math.rad(-27.044), math.rad(-12.319), math.rad(23.319)), 0.1)
                lleg.C0 = lleg.C0:lerp(lle * CFrame.Angles(math.rad(-13.808), 0, math.rad(-4.698)), 0.1)
                neck.C0 = neck.C0:lerp(nec * CFrame.Angles(math.rad(11.574), 0, 0), 0.1)
                rleg.C0 = rleg.C0:lerp(rle * CFrame.Angles(math.rad(-15.241), 0, math.rad(3.38)), 0.1)
        end
end)

game:GetService('RunService').RenderStepped:connect(function()
        for _, a in pairs(freez) do
                if a:FindFirstChildOfClass'NumberValue' then
                        a:FindFirstChildOfClass'Humanoid'.WalkSpeed = 0
                end
        end
end)

game:GetService('RunService').RenderStepped:connect(function()
        for _, a in pairs(freezed) do
                if a:FindFirstChildOfClass'NumberValue' then
                        a:FindFirstChildOfClass'Humanoid'.WalkSpeed = 0
                end
        end
end)

game:GetService('RunService').RenderStepped:connect(function()
        sine = change+sine
        ang = ang+0.08
        ang2 = ang2+0.01
        rad = math.rad
        sin = math.sin
        arm = arm + 0.06

        if fly == false and legslamm == false and fire == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
                lleg.C0 = lleg.C0:lerp(lle * CFrame.Angles(-1, 0, 0), 0.1)
                rleg.C0 = rleg.C0:lerp(rle * CFrame.Angles(-1, 0, 0), 0.1)
                lshold.C0 = lshold.C0:lerp(CFrame.new(0,0,0) * lsho * CFrame.Angles(0, 0, math.rad(-13.579)), 0.1)
                rshold.C0 = rshold.C0:lerp(CFrame.new(0,0,0) * rsho * CFrame.Angles(0, 0, math.rad(15.355)), 0.1)
        end
        
        if fly == false and legslamm == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
                lleg.C0 = lleg.C0:lerp(CFrame.new(-0.53,-0.15+0.1*-math.cos(tick()*4),0.2*math.sin(tick()*4))*CFrame.Angles(math.rad(25*-math.sin(tick()*8)),   rad(-1), rad(0)), 1.5) * CFrame.Angles(-0.1, 0, 0)
                rleg.C0 = rleg.C0:lerp(CFrame.new(0.53,-0.15+0.1*math.cos(tick()*4),0.2*-math.sin(tick()*4))*CFrame.Angles(math.rad(25*math.sin(tick()*8)), rad(10), rad(0)), 1.5) * CFrame.Angles(-0.1, 0, 0)
                
                lleg.C0 = lleg.C0:lerp(lle * CFrame.Angles(-0.4, 0, 0), 0.1)
                rleg.C0 = rleg.C0:lerp(rle * CFrame.Angles(0.4, 0, 0), 0.1)
        
        elseif fly == false and legslamm == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude < 2 then
                lleg.C0 = lleg.C0:lerp(lle,0.1)
                rleg.C0 = rleg.C0:lerp(rle,0.1)
        end
        
        if fly == false and fire == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
                lshold.C0 = lshold.C0:lerp(lsho*CFrame.Angles(math.rad(-25*-math.sin(tick()*8)),   rad(-1), rad(0)), 1.5) * CFrame.Angles(0.1, 0, 0)
                rshold.C0 = rshold.C0:lerp(rsho*CFrame.Angles(math.rad(25*-math.sin(tick()*8)),   rad(-1), rad(0)), 1.5) * CFrame.Angles(0.1, 0, 0)
                
                lshold.C0 = lshold.C0:lerp(CFrame.new(0,0,0) * lsho * CFrame.Angles(0, 0, math.rad(-13.579)), 0.1)
                rshold.C0 = rshold.C0:lerp(CFrame.new(0,0,0) * rsho * CFrame.Angles(0, 0, math.rad(15.355)), 0.1)
        end
        
        if idle == false and fly == false and legslamm == false and fire == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude < 2 then
                lshold.C0 = lshold.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * lsho * CFrame.Angles(-0.1, 0, 0), 0.1)
                rshold.C0 = rshold.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * rsho * CFrame.Angles(-0.1, 0, 0), 0.1)
                neck.C0 = neck.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * nec * CFrame.Angles(-0.1, 0, 0), 0.1)
        end
        
        if fly == false and legslamm == false and fire == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude > 2 then
                rkk.C0 = rkk.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * rk * CFrame.Angles(-0.1, 0, 0), 0.1)
                lkk.C0 = lkk.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * lk * CFrame.Angles(-0.1, 0, 0), 0.1)
                lfoot.C0 = lfoot.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * lf * CFrame.Angles(-0.1, 0, 0), 0.1)
                rfoot.C0 = rfoot.C0:lerp(CFrame.new(0,-0.001+0.03*math.sin(tick()*5),0) * rf * CFrame.Angles(-0.1, 0, 0), 0.1)
        end
        
        if fly == false and legslamm == false and fire == false and Vector3.new(root.Velocity.X,0,root.Velocity.Z).magnitude < 2 then
                idle = true
            head.Neck.C0 = head.Neck.C0:lerp(CFrame.new(0,0.8,0)*CFrame.Angles(rad(-2.922),rad(0),rad(0)),.03)
             LS.C0 = LS.C0:lerp(CFrame.new(-1.2,0.5,.05)*CFrame.Angles(rad(-25.096),rad(-15.871),rad(-50.702)),.03)
        LE.C0 = LE.C0:lerp(CFrame.new(-0,-0.35,0)*CFrame.Angles(rad(14.954),rad(0),rad(0)),.03)
        RS.C0 = RS.C0:lerp(CFrame.new(0.9,0.5,.05)*CFrame.Angles(rad(-6.704),rad(-19.022),rad(50.036)),.03)
        RE.C0 = RE.C0:lerp(CFrame.new(0,-0.35,0)*CFrame.Angles(rad(31.341),rad(0),rad(0)),.03)
            Waist.C0 = Waist.C0:lerp(CFrame.new(0,-0.0001+0.03*math.sin(tick()*5),0) * Waistc0 * CFrame.Angles(0, math.rad(0), 0), 0.1)
        LH.C0 = LH.C0:lerp(CFrame.new(-0.5,-0.35,0)*CFrame.Angles(rad(0),rad(40),rad(0)),0.1)
            RH.C0 = RH.C0:lerp(CFrame.new(0.5,-0.35,0)*CFrame.Angles(rad(0),rad(-40),rad(0)),0.1)
                LN.C0 = LN.C0:lerp(CFrame.new(0,-0.35,0)*CFrame.Angles(rad(-57.85),rad(0),rad(0)),0.1)
                RN.C0 = RN.C0:lerp(CFrame.new(0,-0.35,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)
        LowerTorso.Root.C0 = LowerTorso.Root.C0:lerp(CFrame.new(-0,0.069,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.05)
        LeftFoot.LeftAnkle.C0 = LeftFoot.LeftAnkle.C0:lerp(CFrame.new(0, -0.6, -0.343)*CFrame.Angles(rad(14.095),rad(0),rad(0)),.2)
            RightFoot.RightAnkle.C0 = RightFoot.RightAnkle.C0:lerp(CFrame.new(-0,-0.5,0)*CFrame.Angles(rad(-48.759),rad(0),rad(0)),.2)
        else
                idle = false
        end
end)

game:GetService('RunService').RenderStepped:connect(function()
        bg.cframe = CFrame.new(rootpart.Position,mouse.Hit.p*Vector3.new(1,0,1)+rootpart.Position*Vector3.new(0,1,0))
end)

local waiting = false
game:GetService('RunService').RenderStepped:connect(function()
    if waiting == false then
    waiting = true
            if mode == "Ice" then
                  HName.TextColor3 = BrickColor.new("Cyan").Color
            elseif mode == "Fire" then
                  HName.TextColor3 = BrickColor.new("Deep orange").Color
            elseif mode == "Both" then
                  HName.TextColor3 = BrickColor.new(slidecolors[math.random(1,#slidecolors)]).Color
            elseif mode == "None" then
                  HName.TextColor3 = BrickColor.new('Institutional white').Color
            end
            wait(.5)
            waiting = false
        end
end)

while wait() do
        if mode == "Ice" then
                color = slidecolors[1]
                HName.TextColor3 = BrickColor.new("Cyan").Color
        elseif mode == "Fire" then
                color = slidecolors[2]
                HName.TextColor3 = BrickColor.new("Deep orange").Color
        elseif mode == "Both" then
                color = slidecolors[math.random(1,#slidecolors)]
               HName.TextColor3 = BrickColor.new(slidecolors[math.random(1,#slidecolors)]).Color
        end
end