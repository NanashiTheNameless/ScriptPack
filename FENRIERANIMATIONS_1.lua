-- v1.9
--[[
 - In This Version:
--]]--
--[[
 - Bugs you might experience:
 - No movement when spawning. (Just reset if this happens)
--]]--
--[[
 - {todo}
 - Climb (Getting up walls near edges).
 - Aerodynamic controls.
 - Wallrun
--]]--
function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
local max_sprint_time = 250
local sprint_time = 250
local rolling = false
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
anim = char:findFirstChild("Animate")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
divingnotallowed = false
do --Gui
    plrgui = game:service'Players'.LocalPlayer:findFirstChild("PlayerGui")
    function cmsg(text)
        coroutine.wrap(function()
        if plrgui then
        local gui = Instance.new("ScreenGui", plrgui)
        local label = Instance.new("TextLabel", gui)
        label.Text = tostring(text)
        label.BackgroundTransparency = 1
        label.FontSize = "Size24"
        label.Size = UDim2.new(1, 0, 0.5, 0)
        label.Position = UDim2.new(0, 0, 0.5, 0)
        label.TextColor3 = Color3.new(1,1,1)
        label.TextStrokeTransparency = 0.75
        for i = 1, 0, -0.25 do
            label.TextTransparency = i
            wait()
        end
        game:service'Debris':AddItem(gui, 2)
        end
        end)()
    end
    
    local statusgui = Instance.new("ScreenGui", plrgui)
    local frame = Instance.new("Frame", statusgui)
    frame.Size = UDim2.new(.55, 0, 0, 40)
    frame.Position = UDim2.new(.225, 0, .84, 0)
    frame.BackgroundColor3 = Color3.new()
    frame.BorderSizePixel = 0
    frame.BackgroundTransparency = 0.25
    frame.Style = 2
    local frame2 = Instance.new("Frame", frame)
    frame2.Size = UDim2.new(.45, 0, 0, 10)
    frame2.Position = UDim2.new(.025, 0, 0, 15)
    frame2.BackgroundColor3 = Color3.new(1,1,1)
    frame2.BorderSizePixel = 0
    frame2.ZIndex = 2
    frame2.ClipsDescendants = true
    game:service'RunService'.Stepped:connect(function()
     frame2.Size = UDim2.new(.45*humanoid.Health/humanoid.MaxHealth, 0, 0, 10)
     end)
        local frame2_1 = Instance.new("Frame", frame)
        frame2_1.Size = UDim2.new(.45, 0, 0, 10)
        frame2_1.Position = UDim2.new(.025, 0, 0, 15)
        frame2_1.BackgroundColor3 = Color3.new(.5,.5,.5)
        frame2_1.BorderSizePixel = 0
        local frame2_2 = Instance.new("TextLabel", frame)
        frame2_2.Size = UDim2.new(.45, 0, 0, 15)
        frame2_2.Position = UDim2.new(.025, 0, 0, 0)
        frame2_2.ZIndex = 2
        frame2_2.BackgroundTransparency = 1
        frame2_2.Text = "Health"
        frame2_2.Font = "SourceSansBold"
        frame2_2.TextXAlignment = "Left"
        frame2_2.TextScaled = true
        frame2_2.TextColor3 = Color3.new(1,1,1)
    local frame3 = Instance.new("Frame", frame)
    frame3.Size = UDim2.new(.45, 0, 0, 10)
    game:service'RunService'.Stepped:connect(function()
     frame3.Size = UDim2.new(.45*sprint_time/250, 0, 0, 10)
    end)
    frame3.Position = UDim2.new(.525, 0, 0, 15)
    frame3.BackgroundColor3 = Color3.new(1,1,1)
    frame3.BorderSizePixel = 0
    frame3.ZIndex = 2
        local frame3_1 = Instance.new("Frame", frame)
        frame3_1.Size = UDim2.new(.45, 0, 0, 10)
        frame3_1.Position = UDim2.new(.525, 0, 0, 15)
        frame3_1.BackgroundColor3 = Color3.new(.5,.5,.5)
        frame3_1.BorderSizePixel = 0
        local frame3_2 = Instance.new("TextLabel", frame)
        frame3_2.Size = UDim2.new(.45, 0, 0, 15)
        frame3_2.Position = UDim2.new(.525, 0, 0, 0)
        frame3_2.ZIndex = 2
        frame3_2.BackgroundTransparency = 1
        frame3_2.Text = "Stamina"
        frame3_2.Font = "SourceSansBold"
        frame3_2.TextXAlignment = "Left"
        frame3_2.TextScaled = true
        frame3_2.TextColor3 = Color3.new(1,1,1)
        
        game:service'StarterGui':SetCoreGuiEnabled(1, false)
end
do --the animating
if anim then
anim:Destroy()
end
local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = "Right Shoulder"
local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = "Left Shoulder"
local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
rlegm.Name = "Right Hip"
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
llegm.Name = "Left Hip"
neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)
rj.C0 = CFrame.new(0, -1, 0)
rj.C1 = CFrame.new(0, -1, 0)
local speed = 0.3
local angle = 0
local sitting = false
local anglespeed = 1
local action = "None"
local lastaction = "None"
local jumptime = 0
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = neck.C0
rootc0 = rj.C0
Personality = "Brave"
--[[
Brave,Shy,Agile
]]
    BodyVelo = Instance.new("BodyVelocity", nil)
    BodyVelo.maxForce = Vector3.new(1,1,1)*math.huge
    BodyGyro = Instance.new("BodyGyro", nil)
    BodyGyro.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
ControllerService = game:GetService("ControllerService")
Controllers = ControllerService:GetChildren()[1]
humanoid.Swimming:connect(function(speed)
    if speed > 0 then
    action = "Swimming"
    BodyGyro.Parent = torso
    else
    action = "None"
    end
end)
humanoid.Climbing:connect(function(speed)
    if speed > 4 then
        action = "Climbing"
        BodyGyro.Parent = torso
        BodyGyro.maxTorque = Vector3.new(0, 4e+005, 0)*math.huge
        humanoid.WalkSpeed = 8
    else
        BodyGyro.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
        humanoid.WalkSpeed = 16
        action = "None"
    end
end)
humanoid.Changed:connect(function()
    if action ~= "None" or ctrl then
    humanoid.Jump = false
    end
end)
local sprinting = false
local jump2 = false
lastjump = 0
thisjumpused = false
mouse.KeyDown:connect(function(k)
    if died then return end
    if string.byte(k) == 48 then
        if ctrl then return end
        if sprint_time <= 30 then return end
        if action == "Sliding" then return end
        humanoid.WalkSpeed = 28
        sprinting = true
        for camerazoom = camera.FieldOfView, 75, 1 do
            camera.FieldOfView = camerazoom
            wait()
        end
        camera.FieldOfView = 75
    end
    if string.byte(k) == 52 then
        if action == "None" then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then
        action = "Sliding"
        end
        end
    end
    if string.byte(k) == 32 then
        if divingnotallowed then return end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
            if not thisjumpused then
                lastjump = tick()
                thisjumpused = true
            else
                if (tick()-lastjump) < .5 then
                    action = "Diving"
                    diving = true
                end
                lastjump = 0
                thisjumpused = false
            end
        end
    end
    if string.byte(k) == 50 then
        ctrl = not ctrl
        if ctrl then
            humanoid.WalkSpeed = 8
        else
            humanoid.WalkSpeed = 16
        end
    end
end)
mouse.KeyUp:connect(function(k)
    if died then return end
    if string.byte(k) == 52 then
        action = "None"
        Controllers.Parent = ControllerService
        if ctrl then
            humanoid.WalkSpeed = 8
        else
            humanoid.WalkSpeed = 16
        end
        if sprinting then
            humanoid.WalkSpeed = 28
        end
    end
    if string.byte(k) == 48 then
        if ctrl then return end
        if action == "Sliding" then return end
        if action == "Jumping" then
            repeat wait() until rayHit == true
        end
        sprinting = false
        humanoid.WalkSpeed = 16
        for camerazoom = camera.FieldOfView, 70, -1 do
            camera.FieldOfView = camerazoom
            wait()
        end
        camera.FieldOfView = 70
    end
end)
game:service'RunService'.Stepped:connect(function()
    if ctrl or action == "Sliding" then
        rootpart.CanCollide = false
    end
end)
function Ragdoll()
    died = true
        wait(1/60)
    if torso then
        torso.CFrame = torso.CFrame * CFrame.new(0, 5, 0)
        local Head = char:FindFirstChild("Head")
        if Head then
            local Neck = Instance.new("Weld")
            Neck.Name = "Neck"
            Neck.Part0 = torso
            Neck.Part1 = Head
            Neck.C0 = CFrame.new(0, 1.5, 0)
            Neck.C1 = CFrame.new()
            Neck.Parent = torso
        end
        local Limb = char:FindFirstChild("Right Arm")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightShoulder"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = char:FindFirstChild("Left Arm")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(-1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftShoulder"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = char:FindFirstChild("Right Leg")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightHip"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = char:FindFirstChild("Left Leg")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(-0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftHip"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        rm:Destroy()
        lm:Destroy()
        llegm:Destroy()
        rlegm:Destroy()
    end
end
plr.Chatted:connect(function(msg)
    if action == "None" then
        if msg == "/e dance" or msg == "/emote dance" then
            action = "Dancing"
        end
        if msg == "/e dance2" or msg == "/emote dance2" then
            action = "Dancing2"
        end
        if msg == "/e dance3" or msg == "/emote dance3" then
            action = "Dancing3"
        end
    end
    if msg == "ragdoll/" then
        Ragdoll()
    end
end)
humanoid.Jumping:connect(function()
    if died then return end
    if action == "Diving" or diving then return end
    action = "Jumping"
    Controllers.Parent = nil
end)
humanoid.Died:connect(function()
    died = true
    deathpos = torso.Position
    WorkModel = Instance.new("Model", workspace)
    WorkModel.Name = " "
        wait(1/60)
        humanoid.Parent = nil
    if torso then
        local Head = char:FindFirstChild("Head")
        if Head then
            local Neck = Instance.new("Weld")
            Neck.Name = "Neck"
            Neck.Part0 = torso
            Neck.Part1 = Head
            Neck.C0 = CFrame.new(0, 1.5, 0)
            Neck.C1 = CFrame.new()
            Neck.Parent = torso
        end
        local Limb = char:FindFirstChild("Right Arm")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightShoulder"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = char:FindFirstChild("Left Arm")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(-1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftShoulder"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = char:FindFirstChild("Right Leg")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightHip"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = char:FindFirstChild("Left Leg")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(-0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftHip"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        for blood = 0, 6 do
            local blood = Instance.new("Part", workspace)
            blood.BrickColor = BrickColor.Red()
            blood.FormFactor = "Custom"
            blood.Size = Vector3.new(.2,.2,.2)
            blood.Anchored = true
            blood.TopSurface = "Smooth"
            blood.BackSurface = "Smooth"
            local bloodmesh = Instance.new("CylinderMesh", blood)
            bloodmesh.Scale = Vector3.new(3, 0, 3)
            local rayzb = Ray.new(torso.Position, Vector3.new(0, -50, 0) + Vector3.new(math.random(-6, 6), 0, math.random(-6, 6)))
            local hitzb, hitposb = workspace:findPartOnRay(rayzb, char)
            if hitzb then
            blood.CFrame = CFrame.new(hitposb.x,hitposb.y,hitposb.z)
            blood.CFrame = blood.CFrame * CFrame.new(0, .05, 0)
                coroutine.wrap(function()
                    for cframe = 0, math.random(16, 34) do
                        bloodmesh.Scale = bloodmesh.Scale + Vector3.new(.45, 0, .45)
                        wait()
                    end
                end)()
            else
            blood:Destroy()
            end
        end
        local BP = Instance.new("BodyPosition", torso)
        BP.maxForce = Vector3.new(1,1,1)/0
        BP.position = deathpos
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then v.Parent = WorkModel end
        end
        wait(.3)
        BP:Destroy()
    end
end)
coroutine.wrap(function()
    while wait() do
        if divingnotallowed then
            wait(.35)
            divingnotallowed = false
        end
    end
end)()
local debounce = false
local tool = false
local dancing1 = false
while game:service'RunService'.Stepped:wait() do
    if died then Controllers.Parent = ControllerService return end
    angle = (angle % 100) + anglespeed/10
    mvmnt = math.pi * math.sin(math.pi*2/100*(angle*20))
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = rootc0
        local ncf = neckc0
        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -3.95, 0))
        local hitz, enz = workspace:findPartOnRay(rayz, char)
        local rayz1 = Ray.new(rootpart.Position, Vector3.new(-.5, -3.95, 0))
        local hitz1, enz1 = workspace:findPartOnRay(rayz1, char)
        local rayz2 = Ray.new(rootpart.Position, Vector3.new(.5, -3.95, 0))
        local hitz2, enz2 = workspace:findPartOnRay(rayz2, char)
        local rayz3 = Ray.new(rootpart.Position, Vector3.new(0, -3.95, -.5))
        local hitz3, enz3 = workspace:findPartOnRay(rayz3, char)
        local rayz4 = Ray.new(rootpart.Position, Vector3.new(0, -3.95, .5))
        local hitz4, enz4 = workspace:findPartOnRay(rayz4, char)
        if hitz or hitz1 or hitz2 or hitz3 or hitz4 and rayHit == false then
            rayHit = true
            Controllers.Parent = ControllerService
        end
        if diving then
            action = "Diving"
        end
        for i,object in pairs(char:children()) do
            if object:IsA("Tool") then
                if not wldunknown then
                wldunknown = Instance.new("Weld", rarm)
                wldunknown.Name = "RightGrip"
                wldunknown.Part0 = rarm
                if object:findFirstChild("Handle") then
                wldunknown.Part1 = object:findFirstChild("Handle")
                end
                end
                tool = true
                if not debounce then
                for x,value in pairs(object:children()) do
                    if value:IsA("StringValue") and value.Name == "toolanim" and value.Value == "Slash" then
                        debounce = true
                        coroutine.wrap(function()
                        slashing = true
                        wait(.25)
                        slashing = false
                        debounce = false
                    end)()
                    value:Destroy()
                    end
                end
                end
            elseif not object:IsA("Tool") then
                if tool then
                    pcall(function()
                        wldunknown:Destroy()
                        wldunknown:Destroy()
                    end)
                end
                tool = false
            end
    end
    if action == "Diving" then
        anglespeed = 4
        speed = 0.175
        BodyGyro.Parent = nil
        Controllers.Parent = nil
        diving = true
                ncf = neckc0 * CFrame.Angles(-math.rad(30) - math.rad(torso.Velocity.y)*1.2, 0, 0)
                rjcf = rootc0 * CFrame.Angles(-math.rad(155), 0, 0)
                rscf = rsc0 * CFrame.Angles(math.pi-math.rad(25), 0, 0)
                lscf = lsc0 * CFrame.Angles(math.pi-math.rad(25), 0, 0)
                rlcf = rlc0 * CFrame.Angles(0, 0, 0)
                llcf = llc0 * CFrame.Angles(0, 0, 0)
        if hitz and hitz1 and hitz2 and hitz3 and hitz4 then
            action = "Rolling"
            diving = false
        end
    elseif action == "Rolling" then
        anglespeed = 3
        speed = 0.2
        BodyGyro.Parent = nil
        Controllers.Parent = nil
        for roll = 165, 360, 30 do
            BodyVelo.Parent = torso
            BodyVelo.velocity = rootpart.CFrame.lookVector * 50
            Controllers.Parent = nil
                ncf = neckc0 * CFrame.Angles(-math.pi/1.85, 0, 0)
                rjcf = rootc0 * CFrame.new(0, -1.8, 0) * CFrame.Angles(-math.rad(roll), 0, 0)
                rscf = rsc0 * CFrame.Angles(math.pi/2.5, 0, -math.rad(30))
                lscf = lsc0 * CFrame.Angles(math.pi/2.5, 0, math.rad(30))
                rlcf = rlc0 * CFrame.new(0, .6, -.75) * CFrame.Angles(-math.pi/2.5, 0, 0)
                llcf = llc0 * CFrame.new(0, .6, -.75) * CFrame.Angles(-math.pi/2.5, 0, 0)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rj.C0 = clerp(rj.C0,rjcf,speed)
                neck.C0 = clerp(neck.C0,ncf,speed)
                rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                llegm.C0 = clerp(llegm.C0,llcf,speed)
                wait()
        end
        BodyVelo.Parent = nil
        action = "None"
        Controllers.Parent = ControllerService
        divingnotallowed = true
elseif action == "Dancing" then
    if not dancing1 == true then
        dancing1 = true
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then action = "None" end
        anglespeed = 4
        speed = 0.3
        BodyGyro.Parent = nil
        for waiting = 0, 35, 1 do
            if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then action = "None" return end
            local angle = (angle % 100) + anglespeed/10
                ncf = neckc0 * CFrame.Angles(math.pi/24.85, 0, 0)
                rjcf = rootc0 * CFrame.Angles(0, math.rad(45), 0)
                rscf = rsc0 * CFrame.Angles(math.pi/2.5+math.sin(waiting)*.5, 0, math.rad(2))
                lscf = lsc0 * CFrame.Angles(math.pi/2.5+math.sin(waiting)*.5, 0, -math.rad(2))
                rlcf = rlc0 * CFrame.Angles(math.pi/18, 0, math.rad(5))
                llcf = llc0 * CFrame.Angles(-math.pi/14, 0, -math.rad(5))
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rj.C0 = clerp(rj.C0,rjcf,speed)
                neck.C0 = clerp(neck.C0,ncf,speed)
                rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                llegm.C0 = clerp(llegm.C0,llcf,speed)
                wait()
        end
        for waiting = 0, 35, 1 do
            if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then action = "None" return end
            local angle = (angle % 100) + anglespeed/10
                ncf = neckc0 * CFrame.Angles(math.pi/24.85, 0, 0)
                rjcf = rootc0 * CFrame.Angles(0, -math.rad(45), 0)
                rscf = rsc0 * CFrame.Angles(math.pi/2.5+math.sin(waiting)*.5, 0, math.rad(2))
                lscf = lsc0 * CFrame.Angles(math.pi/2.5+math.sin(waiting)*.5, 0, -math.rad(2))
                rlcf = rlc0 * CFrame.Angles(math.pi/18, 0, math.rad(5))
                llcf = llc0 * CFrame.Angles(-math.pi/14, 0, -math.rad(5))
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rj.C0 = clerp(rj.C0,rjcf,speed)
                neck.C0 = clerp(neck.C0,ncf,speed)
                rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                llegm.C0 = clerp(llegm.C0,llcf,speed)
                wait()
        end
        for jumping = 0, 5, 1 do
            if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then action = "None" return end
            local angle = (angle % 100) + anglespeed/10
            ncf = neckc0 * CFrame.Angles(math.pi/24.85, 0, 0)
                rjcf = rootc0 *CFrame.new(0, 2, 0) *  CFrame.Angles(0, 0, 0)
                rscf = rsc0 * CFrame.Angles(math.pi/1, 0, -math.rad(10))
                lscf = lsc0 * CFrame.Angles(math.pi/1, 0, math.rad(10))
                rlcf = rlc0 * CFrame.new(0, .25, -.15) * CFrame.Angles(-math.pi/22, 0, -math.rad(5))
                llcf = llc0 * CFrame.Angles(math.pi/22, 0, -math.rad(5))
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rj.C0 = clerp(rj.C0,rjcf,speed)
                neck.C0 = clerp(neck.C0,ncf,speed)
                rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                llegm.C0 = clerp(llegm.C0,llcf,speed)
                wait()
        end
        dancing1 = false
    end
        elseif action == "Dancing2" then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then 
            camera.CameraType = 5
            action = "None"
        end
        anglespeed = 1
        speed = 0.2
        BodyGyro.Parent = nil
        camera.CameraType = 6
        camera:SetRoll(math.sin(angle)*.1)
                ncf = neckc0 * CFrame.Angles(math.pi/24.85, 0, 0)
                rjcf = rootc0 * CFrame.new(0, 0.75 + -math.abs(math.sin(angle)), 0) * CFrame.Angles(0, 0, math.sin(angle)*.1)
                rscf = rsc0 * CFrame.Angles(math.pi-math.abs(math.sin(angle))*.5, 0, math.rad(2))
                lscf = lsc0 * CFrame.Angles(math.pi-math.abs(math.sin(angle))*.5, 0, -math.rad(2))
                rlcf = rlc0 * CFrame.Angles(math.sin(angle)*.25, 0, math.rad(5))
                llcf = llc0 * CFrame.Angles(-math.sin(angle)*.25, 0, -math.rad(5))
            if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then 
            camera.CameraType = 5
        end
        elseif action == "Dancing3" then
            if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then action = "None" end
            anglespeed = .9
            BodyGyro.Parent = nil
            speed = 0.2
            ncf = neckc0 * CFrame.Angles(0, 0, 0)
                rjcf = rootc0 * CFrame.Angles(math.pi, angle*3.6/2, 0)
                rscf = rsc0 * CFrame.Angles(math.sin(angle)*.5, 0, math.rad(65))
                lscf = lsc0 * CFrame.Angles(math.sin(angle)*.5, 0, -math.rad(65))
                rlcf = rlc0 * CFrame.Angles(math.sin(angle)*.25, 0, math.rad(15))
                llcf = llc0 * CFrame.Angles(-math.sin(angle)*.25, 0, -math.rad(15))
    elseif action == "Jumping" then
        if diving then action = "Diving" end
        anglespeed = 1
        speed = 0.175
        BodyGyro.Parent = nil
        rayHit = false
        for waiting = 0, 8 do
                rjcf = rootc0 * CFrame.Angles(0, 0, 0)
                rscf = rsc0 * CFrame.Angles(-math.pi/10, 0, 0)
                lscf = lsc0 * CFrame.Angles(-math.pi/10, 0, 0)
                rlcf = rlc0 * CFrame.new(0, 0.7, -0.5) * CFrame.Angles(-math.pi/14, 0, 0)
                llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)
                rm.C0 = clerp(rm.C0,rscf,speed)
                lm.C0 = clerp(lm.C0,lscf,speed)
                rj.C0 = clerp(rj.C0,rjcf,speed)
                neck.C0 = clerp(neck.C0,ncf,speed)
                rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                llegm.C0 = clerp(llegm.C0,llcf,speed)
                wait()
        end
        action = "None"
    elseif action == "Climbing" then
        anglespeed = 4
        speed = 0.1
        BodyGyro.cframe = torso.CFrame
        ncf = neckc0 * CFrame.Angles(math.pi/3, 0, 0)
        rjcf = rootc0
        rscf = rsc0 * CFrame.new(0, -0.2 + -mvmnt*0.2, 0.45) * CFrame.Angles(math.pi/1.5, 0, -math.abs(mvmnt)*0.025)
        lscf = lsc0 * CFrame.new(0, -0.2 + mvmnt*0.2, 0.45) * CFrame.Angles(math.pi/1.5, 0, math.abs(mvmnt)*0.025)
        rlcf = rlc0 * CFrame.new(0, 0.3 + mvmnt*0.2, 0) * CFrame.Angles(math.pi/14, 0, 0)
        llcf = llc0 * CFrame.new(0, 0.3 + -mvmnt*0.2, 0) * CFrame.Angles(math.pi/14, 0, 0)
    elseif action == "Sliding" then
        Controllers.Parent = nil
        BodyGyro.Parent = nil
        speed = 0.1
        humanoid.WalkSpeed = humanoid.WalkSpeed - 0.4
        ncf = neckc0 * CFrame.Angles(-math.pi/7, 0, 0)
        rjcf = rootc0 * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.pi/2.35, math.rad(10), 0)
        rscf = rsc0 * CFrame.Angles(-math.pi/2.5, 0, math.rad(5))
        lscf = lsc0 * CFrame.Angles(-math.pi/1.25, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.Angles(-math.pi/25.5, 0, -math.rad(10))
        llcf = llc0 * CFrame.new(0, .3, -.35) * CFrame.Angles(-math.pi/24.5, 0, 0)
        if humanoid.WalkSpeed <= 1 then 
            action = "None" 
            if ctrl then 
                humanoid.WalkSpeed = 8 
            elseif not ctrl then 
                humanoid.WalkSpeed = 16 
            end
            if sprinting then 
                humanoid.WalkSpeed = 28
            end
            Controllers.Parent = ControllerService
        end
    elseif action == "Swimming" then
        anglespeed = 1/6
        speed = 0.1
        
        local rotpos = Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)
        BodyGyro.cframe = CFrame.new(torso.Position,rotpos) * CFrame.Angles(math.pi/2.7, math.pi, 0)
        ncf = neckc0 * CFrame.Angles(math.pi/2.7, 0, 0)
        rjcf = rootc0
        rscf = rsc0 * CFrame.Angles(math.pi, 0, math.abs(mvmnt)*0.25)
        lscf = lsc0 * CFrame.Angles(math.pi, 0, -math.abs(mvmnt)*0.25)
        rlcf = rlc0 * CFrame.new(0, 0.3-math.abs(mvmnt)*0.075, 0) * CFrame.Angles(-math.sin(angle)*0.25, 0, 0)
        llcf = llc0 * CFrame.new(0, 0.3-math.abs(-mvmnt)*0.075, 0) * CFrame.Angles(math.sin(angle)*0.25, 0, 0)
    elseif not hitz and not hitz1 and not hitz2 and not hitz3 and not hitz4 then
        if action == "None" then
        rayHit = false
        BodyGyro.Parent = nil
        Controllers.Parent = nil
        speed = 0.1
        anglespeed = 1/2
        rjcf = rootc0 * CFrame.Angles(math.pi/18, 0, 0)
        rscf = rsc0 * CFrame.Angles(0, 0, math.rad(165))
        lscf = lsc0 * CFrame.Angles(0, 0, -math.rad(165))
        rlcf = rlc0 * CFrame.new(0, 0.4, -0.3) * CFrame.Angles(-math.pi/14, 0, 0)
        llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)
        end
elseif humanoid.Sit then
    speed = 0.1
        ncf = neckc0 * CFrame.Angles(0, 0, 0)
        rjcf = rootc0 * CFrame.new(0, -.2, 0)
        rscf = rsc0 * CFrame.Angles(math.pi/2, 0, math.rad(5))
        lscf = lsc0 * CFrame.Angles(math.pi/2, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.Angles(math.pi/2, 0, math.rad(7.5))
        llcf = llc0 * CFrame.Angles(math.pi/2, 0, -math.rad(7.5))
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
        if action == "None" then
        BodyGyro.Parent = nil
        speed = 0.3
        anglespeed = .15
        if ctrl then
        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.075, 0, 0)
        rjcf = rootc0 * CFrame.new(0, -1.25, 0)
        rscf = rsc0 * CFrame.Angles(-math.pi/24+math.sin(-angle)*0.05, 0, math.rad(5))
        lscf = lsc0 * CFrame.Angles(-math.pi/24+math.sin(-angle)*0.05, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.new(0, 1.25, -.85) * CFrame.Angles(0, 0, math.rad(2.5))
        llcf = llc0 * CFrame.new(0, -.25, -.45) * CFrame.Angles(-math.pi/2, 0, -math.rad(2.5))
        else
        if Personality == "Agile" then
        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.075, 0, 0)
        rjcf = rootc0
        rscf = rsc0 * CFrame.Angles(-math.pi/24+math.sin(-angle)*0.05, 0, math.rad(5))
        lscf = lsc0 * CFrame.Angles(-math.pi/24+math.sin(-angle)*0.05, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.Angles(-math.rad(2.5), 0, math.rad(2.5))
        llcf = llc0 * CFrame.Angles(math.rad(4.5), 0, -math.rad(2.5))
        elseif Personality == "Shy" then
        ncf = neckc0 * CFrame.Angles(-math.rad(10)+math.sin(angle)*0.075, 0, 0)
        rjcf = rootc0 * CFrame.Angles(0, math.rad(10), 0)
        rscf = rsc0 * CFrame.Angles(math.sin(-angle)*0.1, 0, -math.rad(2.5))
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.1, 0, math.rad(2.5))
        rlcf = rlc0 * CFrame.Angles(-math.rad(2.5), 0, 0)
        llcf = llc0 * CFrame.Angles(math.rad(4.5), 0, 0)
        elseif Personality == "Brave" then
        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.075, 0, 0)
        rjcf = rootc0 * CFrame.new(0, -0.2, 0)
        rscf = rsc0 * CFrame.Angles(-math.pi/24+math.sin(-angle)*0.05, 0, math.rad(5))
        lscf = lsc0 * CFrame.Angles(-math.pi/24+math.sin(-angle)*0.05, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.Angles(-math.rad(15), 0, math.rad(2.5))
        llcf = llc0 * CFrame.Angles(math.rad(15), 0, -math.rad(2.5))
        end
        end
        if is_running then
                coroutine.wrap(function()
                    is_running = false
                    for camerazoom = camera.FieldOfView, 70, -1 do
                        camera.FieldOfView = camerazoom
                        wait()
                    end
                    camera.FieldOfView = 70
                end)()
        end
        if sprint_time <= 125 and not ctrl then
        ncf = neckc0 * CFrame.Angles(0, 0, 0)
        rjcf = rootc0 * CFrame.new(0, -1.9, 0) * CFrame.Angles(math.rad(10), 0, 0)
        rscf = rsc0 * CFrame.Angles(-math.rad(10), 0, math.rad(5))
        lscf = lsc0 * CFrame.Angles(-math.rad(10), 0, -math.rad(5))
        rlcf = rlc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2-math.rad(10), 0, math.rad(5.5))
        llcf = llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2-math.rad(10), 0, -math.rad(5.5))
        end
        if tool then
        if Personality == "Shy" then
        rscf = rsc0 * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, math.rad(10))
        else
        rscf = rsc0 * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, 0)
        end
        end
        if slashing then
        rscf = rsc0 * CFrame.Angles(0, 0, 0)
        end
    end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 then
        if action == "None" then
        BodyGyro.Parent = nil
        speed = 0.2
        anglespeed = 4
        if ctrl then
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, 0)
        rjcf = rootc0 * CFrame.new(0, -.55, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/12, 0, math.rad(2))
        lscf = lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/12, 0, -math.rad(2))
        llcf = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(math.pi/5 - math.sin(angle)*.45, 0, 0)
        rlcf = rlcf * CFrame.new(0, .5, -.65) * CFrame.Angles(math.pi/5 + math.sin(angle)*.45, 0, 0)
        elseif not ctrl then
        ncf = neckc0 * CFrame.Angles(0, 0, 0)
        rjcf = rootc0
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*1.3, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*1.3, 0, 0)
        rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*1, 0, math.rad(.5))
        llcf = llc0 * CFrame.Angles(math.sin(angle)*1, 0, -math.rad(.5))
        end
            if is_running then
                coroutine.wrap(function()
                    is_running = false
                    for camerazoom = camera.FieldOfView, 70, -1 do
                        camera.FieldOfView = camerazoom
                        wait()
                    end
                    camera.FieldOfView = 70
                end)()
            end
        if tool then
        rscf = rsc0 * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, 0)
        end
        if slashing then
        rscf = rsc0 * CFrame.Angles(0, 0, 0)
        end
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
    if action == "Dancing" then action = "None" end
        if action == "None" then
        BodyGyro.Parent = nil
        if sprint_time > 1 then
            sprint_time = sprint_time - .5
        else
            humanoid.WalkSpeed = 16
            cmsg("No stamina left!")
        end
        speed = 0.3
        anglespeed = 5
        ncf = neckc0 * CFrame.Angles(0, 0, 0)
        rjcf = rootc0 * CFrame.new(0, math.abs(mvmnt*.1), 0) * CFrame.Angles(-math.pi/12, math.sin(angle)*.1, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*2, 0, -math.sin(angle)*0.15 + math.rad(.5))
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*2, 0, -math.sin(angle)*0.15 + -math.rad(.5))
        rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*1.8, 0, math.rad(.5))
        llcf = llc0 * CFrame.Angles(math.sin(angle)*1.8, 0, -math.rad(.5))
        is_running = true
        if tool then
        rscf = rsc0 * CFrame.Angles(-math.pi/2.75, 0, 0)
        end
        end
        end
        if action == "None" and Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
            if sprint_time >= max_sprint_time-.8 then sprint_time = max_sprint_time else
            sprint_time = sprint_time + .5
            end
        elseif action == "None" and Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 then
            if sprint_time >= max_sprint_time-.9 then sprint_time = max_sprint_time else
            sprint_time = sprint_time + .25
        end
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 150 then
    if action == "Dancing" then action = "None" end
        if action == "None" then
        BodyGyro.Parent = nil
        if sprint_time > 30 then
            sprint_time = sprint_time - 2
        else
            humanoid.WalkSpeed = 28
            cmsg("TOO HOT!")
        end
        local expl = Instance.new("Part", workspace)
        expl.Size = Vector3.new(0.2, 2, 0.2)
        expl.Anchored = true
        expl.Transparency = 0.25
        expl.TopSurface = 0
        expl.BottomSurface = 0
        expl.Locked = true
        expl.CanCollide = false
        Instance.new("PointLight", expl).Color = expl.BrickColor.Color
        expl.CFrame = torso.CFrame * CFrame.new(0, -2, 0) * CFrame.Angles(math.pi/math.random(1, 8),math.pi/math.random(1, 8),math.pi/math.random(1, 8))
        expl.BrickColor = BrickColor.new("Bright orange")
        local mesh = Instance.new("SpecialMesh", expl)
        mesh.MeshType = "Sphere"
        coroutine.wrap(function()
            for _ = 0, 15 do
                mesh.Scale = mesh.Scale + Vector3.new(.15, .15, .15)
                expl.Transparency = expl.Transparency + 0.075
                wait()
            end
            expl:Destroy()
        end)()
        speed = 0.3
        anglespeed = 7
        ncf = neckc0 * CFrame.Angles(0, 0, 0)
        rjcf = rootc0 * CFrame.Angles(-math.pi/12, math.sin(angle)*.1, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*2, 0, -math.sin(angle)*0.15 + math.rad(.5))
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*2, 0, -math.sin(angle)*0.15 + -math.rad(.5))
        rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*1.8, 0, math.rad(.5))
        llcf = llc0 * CFrame.Angles(math.sin(angle)*1.8, 0, -math.rad(.5))
        is_running = true
        if tool then
        rscf = rsc0 * CFrame.Angles(-math.pi/2.75, 0, 0)
        end
        end
        end
    
        if action == "None" and Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
            if sprint_time >= max_sprint_time-.8 then sprint_time = 250 else
            sprint_time = sprint_time + .15
            end
        elseif action == "None" and Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 then
            if sprint_time >= max_sprint_time-.9 then sprint_time = 250 else
            sprint_time = sprint_time + .05
            end
        end
    
    neck.C0 = clerp(neck.C0,ncf,speed)
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
    lastaction = action
end
end
