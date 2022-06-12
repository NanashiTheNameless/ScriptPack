function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end


plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
anim = char:findFirstChild("Animate")

humanoid.Animator:Destroy()

local rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra

local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la

local rlegm = Instance.new("Weld", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Weld", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -.5, 0)

rj.C0 = CFrame.new()
rj.C1 = CFrame.new()

local s = Instance.new('Sound', head)
s.Volume = 1
s.SoundId = "rbxassetid://436665328" --EG: Music to my ears
s.Looped = true
s:play()

humanoid.WalkSpeed = 7

rsc0 = rm.C0
lsc0 = lm.C0
neckc0 = neck.C0
rootc0 = rj.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
speed = 0.25
angle = 0
anglespeed = 1

local Hat = Instance.new('Part', char)
Hat.FormFactor = 'Custom'
Hat.Size = Vector3.new(1,1,1)
Hat.CanCollide = false
Hat.Locked = true
Hat.Name = 'Headphones'
Hat:breakJoints()
Hat.TopSurface = 0
Hat.BottomSurface = 0
local Mesh = Instance.new('SpecialMesh', Hat)
Mesh.MeshId = "http://www.roblox.com/asset/?id=1051545"
Mesh.TextureId = "rbxassetid://186142634"

local Weld = Instance.new('Weld', Hat)
Weld.Part0 = Hat
Weld.Part1 = head
Weld.C1 = CFrame.new(0, .2, 0)


local SplashEffect = Instance.new('Part')
Instance.new("CylinderMesh", SplashEffect);
SplashEffect.Size = Vector3.new(.2,.2,.2)
SplashEffect.Anchored = true
SplashEffect.Transparency = 1
SplashEffect.CanCollide = false
SplashEffect.Locked = true
SplashEffect.Material = "Neon"
local surfacegui = Instance.new('SurfaceGui', SplashEffect)
surfacegui.Face = 'Top'
surfacegui.CanvasSize = Vector2.new(800,800)
local SplashEffectImage = Instance.new('ImageLabel', surfacegui)
SplashEffectImage.Size = UDim2.new(1,0,1,0)
SplashEffectImage.Image = "rbxassetid://166139049"
SplashEffectImage.BackgroundTransparency = 1
SplashEffectImage.Name = 'Effect'
SplashEffectImage.ImageColor3 = Color3.new(223/255, 0, 255/255)
local light = Instance.new('PointLight', SplashEffect)

local SplashEffect2 = SplashEffect:clone()
SplashEffect2:ClearAllChildren()
Instance.new("CylinderMesh", SplashEffect2);
local surfacegui2 = Instance.new('SurfaceGui', SplashEffect2)
surfacegui2.Face = 'Top'
surfacegui2.CanvasSize = Vector2.new(800,800)
local SplashEffect2Image = Instance.new('ImageLabel', surfacegui2)
SplashEffect2Image.Size = UDim2.new(1,0,1,0)
SplashEffect2Image.Image = "rbxassetid://166139049"
SplashEffect2Image.BackgroundTransparency = 1
SplashEffect2Image.Name = 'Effect'
SplashEffect2Image.ImageColor3 = Color3.new(223/255, 0, 255/255)
local light2 = Instance.new('PointLight', SplashEffect2)

local Crack = Instance.new('Part')
Crack.Size = Vector3.new(12, .2, 12)
Crack.Anchored = true
Crack.Transparency = 1
Crack.CanCollide = false

Images = {"rbxassetid://109516732", "rbxassetid://185526499"}
local Image = Instance.new('Decal', Crack)
Image.Face = 'Top'


local SplashColors = {Color3.new(223/255, 0, 255/255), Color3.new(223/255, 0, 255/255), Color3.new(226/255, 156/255, 210/255), Color3.new(120/255, 91/255, 169/255), Color3.new(8/255, 146/255, 208/255), Color3.new(0,0,1), Color3.new(127/255, 255/255, 212/255)}
local Splash1cframe
local Splash2cframe

function math_pos(float)
    if float < 0 then float = 0 end
    return float
end
function math_neg(float)
    if float > 0 then float = 0 end
    return float
end
function math_max(float, max)
    if float > max then float = max end
    return float
end
function math_min(float, min)
    if float > min then float = min end
    return float
end

local lasttick
local Action = false

mouse.KeyDown:connect(function(k)
    if k:byte() == 32 then
        if not jumped then
        lasttick = tick()
        end
    end
end)

plr.Chatted:connect(function(msg)
    if msg == "/e dance" or msg == "/emote dance" then
        Action = 'Dancing'
    end
    if msg == "/e dance2" or msg == "/emote dance2" then
        Action = 'Dancing2'
    end
    if msg == "/e dance3" or msg == "/emote dance3" then
        Action = 'Dancing3'
    end
end)

local screengui = Instance.new('ScreenGui', plr.PlayerGui)
screengui.Name = "Vinyl's Effect"
local frame = Instance.new('ImageLabel', screengui)
frame.Size = UDim2.new(1,250,1,250)
frame.Position = UDim2.new(0,-125,0,-125)
frame.Image = "rbxassetid://186263828"
frame.BackgroundTransparency = 1

local parts = Instance.new('Model', char)

local Notes = {}
game:service'RunService'.RenderStepped:connect(function()
    angle = (angle % 100) + anglespeed/10
    local rscf = rsc0
    local lscf = lsc0
    local rjcf = rootc0
    local ncf = neckc0
    local rlcf = rlc0
    local llcf = llc0
    local jumpray = Ray.new(rootpart.Position, Vector3.new(0, -4.1, 0))
    local jumphit, jumppos = workspace:FindPartOnRayWithIgnoreList(jumpray, {char, parts, Crack, SplashEffect, SplashEffect2})
        do --Right leg effect
            local ray = Ray.new(rl.CFrame.p, ((rl.CFrame*CFrame.new(0,-1,0)).p - rl.Position).unit*1)
            local hit,hitz, normal = workspace:FindPartOnRay(ray, char)
            if hit and hit:IsA'BasePart' and hitz then
                if SplashEffect.Parent == nil then
                local COLOR = SplashColors[math.random(1,#SplashColors)];
                    SplashEffect.Parent = parts
                    SplashEffect.Transparency = 0.2
                    SplashEffect.BrickColor = BrickColor.new(COLOR)
                    SplashEffect.Size = Vector3.new(.2,.2,.2)
                    SplashEffectImage.ImageColor3 = COLOR;
                    SplashEffectImage.ImageTransparency = 0
                    SplashEffect.CFrame = CFrame.new(hitz, hitz+normal) * CFrame.Angles(-math.pi/2, 0, 0) * CFrame.new(0, -.575, 0)
                    Splash1cframe = SplashEffect.CFrame
                    light.Color = SplashEffectImage.ImageColor3
                    light.Brightness = 1
                    light.Range = 8
                    for i = 1, math.random(6,10) do
                        local Note = Instance.new('Part', parts)
                        Note.CanCollide = false
                        Note.Material = "Neon"
                        Note.Anchored = true
                        Note.CFrame = SplashEffect.CFrame * CFrame.new(math.random(-4,4), -2, math.random(-4,4)) * CFrame.Angles(math.pi/2+math.random(-50,50)/220,math.random(-50,50)/220,math.random(-50,50)/20)
                        Note.Color = SplashEffectImage.ImageColor3
                        Note.Size = Vector3.new(1,1,1)
                        local mesh = Instance.new('SpecialMesh', Note)
                        mesh.MeshId = "rbxassetid://1088207"
                        mesh.Scale = Vector3.new(.1-math.random()/5,.1-math.random()/5,.1-math.random()/5)
                        table.insert(Notes,Note)
                    end
                    wait(1)
                    SplashEffect.Parent = nil
                    Splash1cframe = nil
                end
            end
        end
        do --Left leg effect
            local ray = Ray.new(ll.CFrame.p, ((ll.CFrame*CFrame.new(0,-1,0)).p - ll.Position).unit*1)
            local hit,hitz, normal = workspace:FindPartOnRay(ray, char)
            if hit and hit:IsA'BasePart' and hitz then
                if SplashEffect2.Parent == nil then
                    local COLOR = SplashColors[math.random(1,#SplashColors)];
                    SplashEffect2.Parent = parts
                    SplashEffect2.Transparency = 0.2

                    SplashEffect2.BrickColor = BrickColor.new(COLOR)
                    SplashEffect2.Size = Vector3.new(.2,.2,.2)
                    SplashEffect2Image.ImageColor3 = COLOR;
                    SplashEffect2Image.ImageTransparency = 0
                    SplashEffect2.CFrame = CFrame.new(hitz, hitz+normal) * CFrame.Angles(-math.pi/2, 0, 0) * CFrame.new(0, -.575, 0)
                    Splash2cframe = SplashEffect2.CFrame
                    light2.Color = SplashEffect2Image.ImageColor3
                    light2.Brightness = 1
                    light2.Range = 8
                    for i = 1, math.random(6,10) do
                        local Note = Instance.new('Part', parts)
                        Note.CanCollide = false
                        Note.Material = "Neon"
                        Note.Anchored = true
                        Note.CFrame = SplashEffect2.CFrame * CFrame.new(math.random(-4,4), -2, math.random(-4,4)) * CFrame.Angles(math.pi/2+math.random(-50,50)/220,math.random(-50,50)/220,math.random(-50,50)/20)
                        Note.Color = SplashEffect2Image.ImageColor3
                        Note.Size = Vector3.new(1,1,1)
                        local mesh = Instance.new('SpecialMesh', Note)
                        mesh.MeshId = "rbxassetid://1088207"
                        mesh.Scale = Vector3.new(.1-math.random()/5,.1-math.random()/5,.1-math.random()/5)
                        table.insert(Notes,Note)
                    end
                    wait(1)
                    SplashEffect2.Parent = nil
                    Splash2cframe = nil
                end
            end
        end
    if Action == 'Dancing' then
        anglespeed = .95
        llcf = llc0 * CFrame.new(0, .2, -math_pos(math.asin(math.sin(angle))*.2)) * CFrame.Angles(math_pos(math.asin(math.sin(angle))*.2)-.12, 0, -.02)
        rlcf = rlc0 * CFrame.new(0, .2, -math_pos(math.asin(math.sin(angle))*.2)) * CFrame.Angles(math_pos(math.asin(math.sin(angle))*.2), 0, .02)
        rscf = rsc0 * CFrame.Angles(math.rad(70) - math.asin(math.sin(angle))*1.5, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.rad(10) - math.asin(math.sin(angle))*.45, 0, -.1)
        rjcf = rootc0 * CFrame.new(0, -.2 + -math_neg(math.asin(math.sin(angle))*2), 0) * CFrame.Angles(-math_pos(math.asin(math.sin(angle))*.2), 0, 0)
        ncf = neckc0 * CFrame.Angles(-math_neg(math.asin(math.sin(angle))*.2), 0, 0)
    elseif Action == 'Dancing2' then
        anglespeed = 1.15
        llcf = llc0 * CFrame.new(0, -math_neg(math.sin((angle+2)*2))*.2, math_neg(math.sin((angle+4)*2)*.6)) * CFrame.Angles(-math.abs(math.asin(math.sin(angle))*.05), 0, -.02)
        rlcf = rlc0 * CFrame.new(0, -math_neg(math.sin(angle*2))*.2, math_neg(math.sin(angle*2)*.6)) * CFrame.Angles(-math.abs(math.asin(math.sin(angle))*.05), 0, .02)
        rscf = rsc0 * CFrame.Angles(math.rad(140) - math.sin(angle*1.5+(math.random()/2))*.65, 0, -.2 + math.abs(math.asin(math.sin(angle)))*.35)
        lscf = lsc0 * CFrame.Angles(math.rad(140) - math.sin(angle*1.5+(math.random()/2))*.65, 0, .2 - math.abs(math.asin(math.sin(angle)))*.35)
        rjcf = rootc0 * CFrame.new(0, -.1 + -math_neg(math.sin(angle*2)*.8), 0) * CFrame.Angles(0, 0, 0)
        ncf = neckc0 * CFrame.Angles(-math_neg(math.sin(angle/2)*.2), 0, math.asin(math.sin(angle))*.2)
    elseif Action == 'Dancing3' then
        anglespeed = .95
        rjcf = rootc0 * CFrame.new(math.asin(math.sin(angle))*.1, 0, 0) * CFrame.Angles(0,math.asin(math.sin(angle))*.05,0)
        rlcf = rlc0 * CFrame.new(0, -.05 + math_pos(-math.asin(math.sin(angle)))*.5, -math_pos(-math.asin(math.sin(angle)))*.5) * CFrame.Angles(-math_pos(-math.asin(math.sin(angle)))*.4,0,.075 + -math.asin(math.sin(angle))*.05)
        llcf = llc0 * CFrame.new(0, -.05 + math_pos(math.asin(math.sin(angle)))*.5, -math_pos(math.asin(math.sin(angle)))*.5) * CFrame.Angles(-math_pos(math.asin(math.sin(angle)))*.4,0,-.075 + -math.asin(math.sin(angle))*.05)
        rscf = rsc0 * CFrame.new(0, 0, math.abs(math.asin(math.sin(angle)))*.15) * CFrame.Angles(math.rad(30) + math.abs(math.asin(math.sin(angle)))*.95, 0, math.asin(math.sin(angle))*.8)
        lscf = lsc0 * CFrame.new(0, 0, math.abs(math.asin(math.sin(angle)))*.15) * CFrame.Angles(math.rad(30) + math.abs(math.asin(math.sin(angle)))*.95, 0, math.asin(math.sin(angle))*.8)
        ncf = neckc0 * CFrame.Angles(0,-math.asin(math.sin(angle))*.5,0)
    elseif Action == false then
        if not jumphit then
            anglespeed = 2
            rlcf = rlc0 * CFrame.new(0, .15, -.15) * CFrame.Angles(-.1 - math.asin(math.sin(angle))*.05, 0, 0)
            llcf = llc0 * CFrame.new(0, .15, -.15) * CFrame.Angles(-.1 + math.asin(math.sin(angle))*.05, 0, 0)
            lscf = lsc0 * CFrame.Angles(math_min(math_max(math.rad(-torso.Velocity.y), -10), 10) - math.asin(math.sin(angle))*.05, 0, 0)
            rscf = rsc0 * CFrame.Angles(math_min(math_max(math.rad(-torso.Velocity.y), -10), 10) + math.asin(math.sin(angle))*.05, 0, 0)
        elseif Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude < 2 then
            anglespeed = .75
            ncf = neckc0 * CFrame.Angles(math.abs(math.asin(math.sin(angle))*.15), math.asin(math.sin(angle))*.15, 0)
            rjcf = rootc0 * CFrame.new(math.asin(math.sin(angle))*.1, 0, 0)
            rlcf = rlc0 * CFrame.new(0, -.05 + math_pos(-math.asin(math.sin(angle)))*.25, -math_pos(-math.asin(math.sin(angle)))*.25) * CFrame.Angles(-math_pos(-math.asin(math.sin(angle)))*.24,0,.075 + -math.asin(math.sin(angle))*.05)
            llcf = llc0 * CFrame.new(0, -.05 + math_pos(math.asin(math.sin(angle)))*.25, -math_pos(math.asin(math.sin(angle)))*.25) * CFrame.Angles(-math_pos(math.asin(math.sin(angle)))*.24,0,-.075 + -math.asin(math.sin(angle))*.05)
            rscf = rsc0 * CFrame.Angles(-math.asin(math.sin(angle))*.25, 0, .015)
            lscf = lsc0 * CFrame.Angles(math.asin(math.sin(angle))*.25, 0, -.015)
        elseif Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude > 2 then
            anglespeed = 1
            rjcf = rootc0 * CFrame.new(math.asin(math.sin(angle))*.025, .05 - math.cos(angle*2)*.025, 0) * CFrame.Angles(-.15 + -math.abs(math.cos(angle)*.025),math.asin(math.sin(angle))*.025,0)
            rlcf = rlc0 * CFrame.new(0, -.05 + math_pos(math.cos(angle - 0.25)*.3), math_neg(-math.asin(math.sin(angle))*.2)) * CFrame.Angles(-.025 + math.asin(math.sin(angle))*.4,0,.025 + -math.asin(math.sin(angle))*.025)
            llcf = llc0 * CFrame.new(0, -.05 + math_pos(-math.cos(angle - 0.25)*.3), math_neg(math.asin(math.sin(angle))*.2)) * CFrame.Angles(-.025 - math.asin(math.sin(angle))*.4,0,-.025 + -math.asin(math.sin(angle))*.025)
            rscf = rsc0 * CFrame.Angles(.5 - math.asin(math.sin(angle))*.9, 0, math.asin(math.sin(angle))*.2)
            lscf = lsc0 * CFrame.Angles(.5 + math.asin(math.sin(angle))*.9, 0, math.asin(math.sin(angle))*.2)
        end
    end
    if SplashEffect.Parent ~= nil then
        if light then
            light.Range = light.Range + 1
            light.Brightness = light.Brightness - .045
        end
        SplashEffect.Size = SplashEffect.Size + Vector3.new(1.25,0,1.25)
        SplashEffectImage.ImageTransparency = SplashEffectImage.ImageTransparency + .045
        SplashEffect.Transparency = SplashEffect.Transparency + .025
        SplashEffect.CFrame = Splash1cframe
    end

    if Crack.Parent ~= nil then
        if Image.Transparency > 1 then Crack.Parent = nil end
        Image.Transparency = Image.Transparency + .045
    end

    if SplashEffect2.Parent ~= nil then
        if light2 then
            light2.Range = light2.Range + 1
            light2.Brightness = light2.Brightness - .045
        end
        SplashEffect2.Size = SplashEffect2.Size + Vector3.new(1.25,0,1.25)
        SplashEffect2Image.ImageTransparency = SplashEffect2Image.ImageTransparency + .045
        SplashEffect2.Transparency = SplashEffect2.Transparency + .025
        SplashEffect2.CFrame = Splash2cframe
    end

    for i,v in pairs(Notes) do
        if v and v:IsA'BasePart' then
            if v.Transparency > 1 then
                v:Destroy()
                table.remove(Notes, i)
            end
            v.CFrame = v.CFrame * CFrame.new(0,0,-.285)
            v.Transparency = v.Transparency + .025
        end
    end

    if Action ~= false then
        if torso.Velocity.magnitude > 2 then
            Action = false
        end
    end

    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
end)

plr.Chatted:connect(function(msg)
    if (msg:sub(1,4) == "snd;") then
        s:stop();
        s.SoundId = "rbxassetid://"..msg:sub(5);
        s:play();
    end
end)


while true do
    for i = 0,140,15 do
        frame.Size = UDim2.new(1,350 - i,1,350 - i)
        frame.Rotation = 0+math.random()
        frame.Position = UDim2.new(0,-frame.Size.X.Offset*.5,0,-frame.Size.Y.Offset*.5)
        game:service'RunService'.RenderStepped:wait()
    end
    for i = 140,5, -15 do
        frame.Size = UDim2.new(1,350 - i,1,350 - i)
        frame.Rotation = 0+math.random(-10,10)/10
        frame.Position = UDim2.new(0,-frame.Size.X.Offset*.5,0,-frame.Size.Y.Offset*.5)
        game:service'RunService'.RenderStepped:wait()
    end
    for i = 5,25,15 do
        frame.Rotation = 0-math.random()
        frame.Size = UDim2.new(1,350 - i,1,350 - i)
        frame.Position = UDim2.new(0,-frame.Size.X.Offset*.5,0,-frame.Size.Y.Offset*.5)
        game:service'RunService'.RenderStepped:wait()
    end
    for i = 25,0,-15 do
        frame.Rotation = 0+math.random()
        frame.Size = UDim2.new(1,350 - i,1,350 - i)
        frame.Position = UDim2.new(0,-frame.Size.X.Offset*.5,0,-frame.Size.Y.Offset*.5)
        game:service'RunService'.RenderStepped:wait()
    end
    for i = 0,75,-15 do
        frame.Rotation = 0-math.random()
        frame.Size = UDim2.new(1,350 - i,1,350 - i)
        frame.Position = UDim2.new(0,-frame.Size.X.Offset*.5,0,-frame.Size.Y.Offset*.5)
        game:service'RunService'.RenderStepped:wait()
    end
    for i = 75,0,-15 do
        frame.Rotation = 0
        frame.Size = UDim2.new(1,350 - i,1,350 - i)
        frame.Position = UDim2.new(0,-frame.Size.X.Offset*.5,0,-frame.Size.Y.Offset*.5)
        game:service'RunService'.RenderStepped:wait()
    end
end