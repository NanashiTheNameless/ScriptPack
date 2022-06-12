local plr = game.Players.LocalPlayer
local char = plr.Character
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local head = char.Head
local torso = char.Torso

for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end

for i,v in pairs (head:GetChildren()) do
    if v:IsA("Sound") then
        v:Destroy()
    end
end

larm.Transparency = 1
rarm.Transparency = 1
lleg.Transparency = 1
rleg.Transparency = 1
torso.Transparency = 1
head.Transparency = 1
head.face.Transparency = 1

larm.CanCollide = false
rarm.CanCollide = false
lleg.CanCollide = false
rleg.CanCollide = false
head.CanCollide = false
torso.CanCollide = false










--[[
    Shadow V1
    By:LuaLlama
--]]
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:wait()
local Mouse = Player:GetMouse()
local Spread = 20
local Activate = false
local Holder = Instance.new('Model', Character)
local Color = BrickColor.new('Institutional white') -- Institutional white
local run
local wall = false
local fire = false
local Blocks = {}

function Boomeffect()
    local Ball = Instance.new('Part', Holder)
    Ball.Shape = 'Ball'
    Ball.BrickColor = Color
    Ball.Material = Enum.Material.Neon
    Ball.Anchored = true
    Ball.CanCollide =  false
    Ball.CFrame = Character.Torso.CFrame
    coroutine.resume(coroutine.create(function()
        for i=0,10,0.5 do
            Ball.Size = Vector3.new(i,i,i)
            Ball.CFrame = Character.Torso.CFrame
            Ball.Transparency = i/10
            wait()
        end
        Ball:Destroy()
    end))
end

function Unboomeffect()
    local Ball = Instance.new('Part', Holder)
    Ball.Shape = 'Ball'
    Ball.BrickColor = Color
    Ball.Material = Enum.Material.Neon
    Ball.Anchored = true
    Ball.CanCollide =  false
    Ball.CFrame = Character.Torso.CFrame
    coroutine.resume(coroutine.create(function()
        for i=10,0,-0.5 do
            Ball.Size = Vector3.new(i,i,i)
            Ball.CFrame = Character.Torso.CFrame
            Ball.Transparency = i/10
            wait()
        end
        Ball:Destroy()
    end))
end

function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Q then -- Activate
        if Activate then
            --run:disconnect()
            Activate = false
            Character.Humanoid.WalkSpeed = 16
            Character.Humanoid.JumpPower = 50
            Unboomeffect()
        else
            Activate = true
            Character.Humanoid.WalkSpeed = 200
            Character.Humanoid.JumpPower = 200
            Boomeffect()
            wait(0.35)
            --run = game:GetService('RunService').Stepped:connect(function()
            repeat
                wait()
                if fire then repeat wait(0.1) until not fire end
                for i,v in ipairs(Character:GetChildren()) do 
                    local Shadow
                    if v:IsA('BasePart') then
                        Shadow = v:Clone()
                    end
                    if Shadow then
                        Shadow:ClearAllChildren()
                        local BF = Instance.new('BodyVelocity', Shadow)
                        BF.velocity = Vector3.new(math.random(-Spread, Spread), math.random(-Spread, Spread), math.random(-Spread, Spread))
                        BF.Name = 'BF'
                        Shadow.Parent = Holder
                        Shadow.CanCollide = false
                        Shadow.Transparency = 0.5
                        Shadow.Material = 'Neon'
                        Shadow.BrickColor = Color
                        table.insert(Blocks, Shadow)
                        coroutine.resume(coroutine.create(function()
                            for i=0,10,0.5 do
                                Shadow.Transparency = i/10
                                wait()
                            end
                            for i,v in next, Blocks do
                                if v == Shadow then
                                    table.remove(Blocks, i)
                                    break
                                end
                            end
                            Shadow:Destroy()
                        end))
                    end
                end
            until not Activate
            --end)
        end
    end
    
    if inputObject.KeyCode == Enum.KeyCode.L then -- Beam
        if Mouse.Target and Mouse.Hit and Activate then
            local Pos = Mouse.Hit.p
            local Part = Mouse.Target
            local Dist = (Character.Torso.Position - Pos).magnitude
            
            local Beam = Instance.new("Part", Holder)
            Beam.Name = "Beam"
            Beam.BrickColor = Color
            Beam.Transparency = 0.5
            Beam.Anchored  = true
            Beam.CanCollide = false
            Beam.Material = 'Neon'
            Beam.Size = Vector3.new(0, 0, Dist)
            Beam.CFrame = CFrame.new(Character.Torso.Position, Pos) * CFrame.new(0, 0, -Dist/2)
            
            local explo = Instance.new('Explosion', Beam)
            explo.Position = Pos
            -- Damage
            
            if Part.Parent ~= Character then
                local Human
                for i,v in ipairs(Part.Parent:GetChildren()) do
                    if v:IsA('Humanoid') then
                        Human = v
                        break
                    end
                end
                if Human then
                    Human:TakeDamage(25)
                end
            end
            
            
            coroutine.resume(coroutine.create(function()
                for i=0,10,2 do
                    Dist = (Character.Torso.Position - Pos).magnitude
                    Beam.Size = Vector3.new(i/2,i/2,Dist)
                    Beam.CFrame = CFrame.new(Character.Torso.Position, Pos) * CFrame.new(0, 0, -Dist/2)
                    Beam.Transparency = i/10
                    wait()
                end
                Beam:Destroy()
            end))
        end
    end
    
    if inputObject.KeyCode == Enum.KeyCode.R and Activate and not wall then -- Terrain misshap
        wall = true
        local cf = Character.Torso.CFrame
        for i=1,18 do
            wait(0.125)
            local Pos = (cf*CFrame.Angles(0, math.rad(i*20), 0))*CFrame.new(35,0,0)
            local Terrain = Instance.new('Part', game.Workspace)
            Terrain.Material = 'Neon'
            Terrain.BrickColor = Color
            Terrain.Size = Vector3.new(10,0,10)
            Terrain.CFrame = CFrame.new(Pos.p - Vector3.new(0, -3, 0))
            Terrain.Anchored = true
            
            Terrain.Touched:connect(function(Part)
                if Part.Parent ~= Character then
                    local Human
                    for i,v in ipairs(Part.Parent:GetChildren()) do
                        if v:IsA('Humanoid') then
                            Human = v
                            break
                        end
                    end
                    if Human then
                        Human:TakeDamage(25)
                    end
                end
            end)
            
            coroutine.resume(coroutine.create(function()
                for i=0,100,8 do
                    Terrain.Size = Vector3.new(10,i/2,10)
                    Terrain.CFrame = CFrame.new(Pos.p+Vector3.new(0, i/4, 0) + Vector3.new(0, -3, 0)) 
                    --Terrain.Transparency = 1-(i/100)
                    wait()
                end
                wait(1)
                for i=100,0,-16 do
                    Terrain.Size = Vector3.new(10,i/2,10)
                    Terrain.CFrame = CFrame.new(Pos.p+Vector3.new(0, i/4, 0) + Vector3.new(0, -3, 0))
                    wait()
                end
                Terrain:Destroy()
            end))
        end
        wall = false
    end
    
    if inputObject.KeyCode == Enum.KeyCode.T and Activate and not fire then -- Teleport
        if Mouse.Target and Mouse.Hit then
            fire = true
            local Pos = Mouse.Hit.p
            for i,v in next, Blocks do
                if v.Parent then
                    if v:FindFirstChild('BF') then
                        v.BF.Velocity = CFrame.new(Character.Torso.Position, Pos).lookVector *math.random(1,Spread*10)
                    end
                    game:GetService('Debris'):AddItem(v, 2)
                    v.Touched:connect(function(Part)
                        if Part.Parent and Part.Parent ~= Character then
                            local Human
                            for i,v in ipairs(Part.Parent:GetChildren()) do
                                if v:IsA('Humanoid') then
                                    Human = v
                                    break
                                end
                            end
                            if Human then
                                Human:TakeDamage(5)
                                v:Destroy()
                            end
                        end
                    end)
                end
            end
            Blocks = {}
            fire = false
        end
    end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)
local isScriptNil = false

local PlrName = "saud20"
local Plrs = game:GetService("Players")
local RunService = game:GetService("RunService")
local Content = game:GetService("ContentProvider")
local LP = Plrs.LocalPlayer
local Char = LP.Character
local PlrGui = LP.PlayerGui
local Backpack = LP.Backpack
local Mouse = LP:GetMouse()

local Camera = Workspace.CurrentCamera
local LastCamCF = Camera.CoordinateFrame
local AnimJoints = {}
local Cons = {}
local mDown = false
local Multi = false
local Grabbing = false
local Current = {}
local Alpha = 1
local LightNum = 1

Current.Part = nil
Current.BP = nil
Current.BA = nil
Current.Mass = nil

local LastPart = nil

local Head = Char["Head"]
local Torso = Char["Torso"]
local Humanoid = Char["Humanoid"]
local LA = Char["Left Arm"]
local RA = Char["Right Arm"]
local LL = Char["Left Leg"]
local RL = Char["Right Leg"]

local LS, RS;

local OrigLS = Torso["Left Shoulder"]
local OrigRS = Torso["Right Shoulder"]

for _,v in pairs(Char:GetChildren()) do
    if v.Name == ModID then
        v:Destroy()
    end
end

for _,v in pairs(PlrGui:GetChildren()) do
    if v.Name == "PadsGui" then
        v:Destroy()
    end
end

local ModID = "Pads"
local Objects = {}
local Grav = 196.2

local sin=math.sin
local cos=math.cos
local max=math.max
local min=math.min
local atan2=math.atan2
local random=math.random
local tau = 2 * math.pi

local BodyObjects = {
    ["BodyVelocity"] = true;
    ["BodyAngularVelocity"] = true;
    ["BodyForce"] = true;
    ["BodyThrust"] = true;
    ["BodyPosition"] = true;
    ["RocketPropulsion"] = true;
}

if LP.Name == PlrName and isScriptNil then
    script.Parent = nil
end

LP.CameraMode = "Classic"

local Assets = {
}

local LS0, LS1 = OrigLS.C0, OrigLS.C1
local RS0, RS1 = OrigRS.C0, OrigRS.C1

for i,v in pairs(Assets) do
    local ID = tostring(Assets[i])
    Assets[i] = "http://www.roblox.com/asset/?id=" .. ID
    Content:Preload("http://www.roblox.com/asset/?id=" .. ID)
end

function QuaternionFromCFrame(cf)
    local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components();
    local trace = m00 + m11 + m22 if trace > 0 then 
        local s = math.sqrt(1 + trace);
        local recip = 0.5/s;
        return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5;
    else 
        local i = 0;
        if m11 > m00 then 
            i = 1;
        end;
        if m22 > (i == 0 and m00 or m11) then
            i = 2 end if i == 0 then
            local s = math.sqrt(m00-m11-m22+1);
            local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip; 
        elseif i == 1 then
            local s = math.sqrt(m11-m22-m00+1);
            local recip = 0.5/s;
            return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip ;
        elseif i == 2 then
            local s = math.sqrt(m22-m00-m11+1);
            local recip = 0.5/s;
            return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip;
        end;
    end; 
end;

function QuaternionToCFrame(px, py, pz, x, y, z, w)
    local xs, ys, zs = x + x, y + y, z + z;
    local wx, wy, wz = w*xs, w*ys, w*zs;
    local xx = x*xs;
    local xy = x*ys;
    local xz = x*zs;
    local yy = y*ys;
    local yz = y*zs;
    local zz = z*zs;
    return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end;

function QuaternionSlerp(a, b, t)
    local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4];
    local startInterp, finishInterp; 
    if cosTheta >= 0.0001 then
        if (1 - cosTheta) > 0.0001 then
            local theta = math.acos(cosTheta);
            local invSinTheta = 1/math.sin(theta);
            startInterp = math.sin((1-t)*theta)*invSinTheta;
            finishInterp = math.sin(t*theta)*invSinTheta;
        else
            startInterp = 1-t finishInterp = t;
        end;
    else 
        if (1+cosTheta) > 0.0001 then
            local theta = math.acos(-cosTheta);
            local invSinTheta = 1/math.sin(theta);
            startInterp = math.sin((t-1)*theta)*invSinTheta;
            finishInterp = math.sin(t*theta)*invSinTheta;
        else startInterp = t-1 finishInterp = t;
        end;
    end;
    return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp;
end;

function CLerp(a,b,t)
    local qa={QuaternionFromCFrame(a)};
    local qb={QuaternionFromCFrame(b)};
    local ax,ay,az=a.x,a.y,a.z;
    local bx,by,bz=b.x,b.y,b.z;
    local _t=1-t;
    return QuaternionToCFrame(_t*ax+t*bx,_t*ay+t*by,_t*az+t*bz,QuaternionSlerp(qa, qb, t));
end

function GetWeld(weld) 
    local obj 
    for i, v in pairs(AnimJoints) do 
        if v[1] == weld then 
            obj = v 
            break 
        end 
    end 
    if not obj then 
        obj = {weld,NV} 
        table.insert(AnimJoints,obj) 
    end 
    return weld.C0.p, obj[2] 
end 

function SetWeld(weld, i, loops, origpos, origangle, nextpos, nextangle, override, overrideLower, smooth) 
    smooth = smooth or 1 
    local obj 
    for i, v in pairs(AnimJoints) do 
        if v[1] == weld then 
            obj = v 
            break 
        end 
    end 
    if not obj then 
        obj = {weld,NV} 
        table.insert(AnimJoints,obj) 
    end 
    
    local perc = (smooth == 1 and math.sin((math.pi/2)/loops*i)) or i/loops 
    
    local tox,toy,toz = 0,0,0 
    tox = math.abs(origangle.x - nextangle.x) *perc 
    toy = math.abs(origangle.y - nextangle.y) *perc 
    toz = math.abs(origangle.z - nextangle.z) *perc 
    tox = ((origangle.x > nextangle.x and -tox) or tox)
    toy = ((origangle.y > nextangle.y and -toy) or toy)
    toz = ((origangle.z > nextangle.z and -toz) or toz)
    
    local tox2,toy2,toz2 = 0,0,0 
    tox2 = math.abs(origpos.x - nextpos.x) *perc 
    toy2 = math.abs(origpos.y - nextpos.y) *perc 
    toz2 = math.abs(origpos.z - nextpos.z) *perc 
    tox2 = (origpos.x > nextpos.x and -tox2) or tox2 
    toy2 = (origpos.y > nextpos.y and -toy2) or toy2 
    toz2 = (origpos.z > nextpos.z and -toz2) or toz2 
    
    obj[2] = Vector3.new(origangle.x + tox, origangle.y + toy, origangle.z + toz) 
    weld.C0 = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2) * CFrame.Angles(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 

function RotateCamera(x, y)
    Camera.CoordinateFrame = CFrame.new(Camera.Focus.p) * (Camera.CoordinateFrame - Camera.CoordinateFrame.p) * CFrame.Angles(x, y, 0) * CFrame.new(0, 0, (Camera.CoordinateFrame.p - Camera.Focus.p).magnitude)
end

function GetAngles(cf)
    local lv = cf.lookVector
    return -math.asin(lv.y), math.atan2(lv.x, -lv.z)
end

local LastCamCF = Camera.CoordinateFrame

function Look()
    if AlphaOn == true then
        local x, y = GetAngles(LastCamCF:toObjectSpace(Camera.CoordinateFrame))
        Camera.CoordinateFrame = LastCamCF
        RotateCamera(x * -(Alpha), y * -(Alpha))
        LastCamCF = Camera.CoordinateFrame
    end
end

function Cor(Func)
    local Ok, Err = coroutine.resume(coroutine.create(Func))
    if not Ok then
        print(Err)
    end
end

function Cor2(Func)
    local Ok, Err = ypcall(Func)
    if not Ok then
        print(Err)
    end
end

function MakePads()
    -- 1 - VTelekinesis
    P1 = Instance.new("Model")
    P1.Name = ModID

    -- 2 - RBase
    P2              = Instance.new("Part")
    P2.CFrame       = CFrame.new(Vector3.new(21.100008, 1.95000589, 11.899971)) * CFrame.Angles(-0, 0, -0)
    P2.FormFactor   = Enum.FormFactor.Custom
    P2.Size         = Vector3.new(0.799999952, 0.200000003, 0.800000012)
    P2.Anchored     = true
    P2.BrickColor   = BrickColor.new("White")
    P2.Friction     = 0.30000001192093
    P2.Shape        = Enum.PartType.Block
    P2.Name         = "RBase"
    P2.Parent       = P1
    P2.Transparency = 1

    -- 3 - Mesh
    P3        = Instance.new("CylinderMesh")
    P3.Scale  = Vector3.new(1, 0.5, 1)
    P3.Parent = P2

    -- 4 - LBase
    P4              = Instance.new("Part")
    P4.CFrame       = CFrame.new(Vector3.new(18.100008, 1.95000589, 11.899971)) * CFrame.Angles(-0, 0, -0)
    P4.FormFactor   = Enum.FormFactor.Custom
    P4.Size         = Vector3.new(0.799999952, 0.200000003, 0.800000012)
    P4.Anchored     = true
    P4.BrickColor   = BrickColor.new("White")
    P4.Friction     = 0.30000001192093
    P4.Shape        = Enum.PartType.Block
    P4.Name         = "LBase"
    P4.Parent       = P1
    P4.Transparency = 1

    -- 5 - Mesh
    P5              = Instance.new("CylinderMesh")
    P5.Scale        = Vector3.new(1, 0.5, 1)
    P5.Parent       = P4
    

    -- 6 - RP1
    P6              = Instance.new("Part")
    P6.CFrame       = CFrame.new(Vector3.new(20.8999996, 1.8499999, 12.0499992)) * CFrame.Angles(-0, 0, -0)
    P6.FormFactor   = Enum.FormFactor.Custom
    P6.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P6.Anchored     = true
    P6.BrickColor   = BrickColor.new("White")
    P6.Friction     = 0.30000001192093
    P6.Shape        = Enum.PartType.Block
    P6.Name         = "RP1"
    P6.Parent       = P2
    P6.Transparency = 1
    -- 7 - Mesh
    P7              = Instance.new("CylinderMesh")
    P7.Scale        = Vector3.new(1, 0.5, 1)
    P7.Parent       = P6
    

    -- 8 - RP2
    P8              = Instance.new("Part")
    P8.CFrame       = CFrame.new(Vector3.new(21.1000004, 1.8499999, 11.6999998)) * CFrame.Angles(-0, 0, -0)
    P8.FormFactor   = Enum.FormFactor.Custom
    P8.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P8.Anchored     = true
    P8.BrickColor   = BrickColor.new("White")
    P8.Friction     = 0.30000001192093
    P8.Shape        = Enum.PartType.Block
    P8.Name         = "RP2"
    P8.Parent       = P2
    P8.Transparency = 1

    -- 9 - Mesh
    P9 = Instance.new("CylinderMesh")
    P9.Scale = Vector3.new(1, 0.5, 1)
    P9.Parent = P8

    -- 10 - RP3
    P10              = Instance.new("Part")
    P10.CFrame       = CFrame.new(Vector3.new(21.3000011, 1.8499999, 12.0499992)) * CFrame.Angles(-0, 0, -0)
    P10.FormFactor   = Enum.FormFactor.Custom
    P10.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P10.Anchored     = true
    P10.BrickColor   = BrickColor.new("White")
    P10.Friction     = 0.30000001192093
    P10.Shape        = Enum.PartType.Block
    P10.Name         = "RP3"
    P10.Parent       = P2
    P10.Transparency = 1

    -- 11 - Mesh
    P11              = Instance.new("CylinderMesh")
    P11.Scale        = Vector3.new(1, 0.5, 1)
    P11.Parent       = P10


    -- 12 - LP1
    P12              = Instance.new("Part")
    P12.CFrame       = CFrame.new(Vector3.new(17.8999996, 1.8499999, 12.0499992)) * CFrame.Angles(-0, 0, -0)
    P12.FormFactor   = Enum.FormFactor.Custom
    P12.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P12.Anchored     = true
    P12.BrickColor   = BrickColor.new("White")
    P12.Friction     = 0.30000001192093
    P12.Shape        = Enum.PartType.Block
    P12.Name         = "LP1"
    P12.Parent       = P4
    P12.Transparency = 1

    -- 13 - Mesh
    P13        = Instance.new("CylinderMesh")
    P13.Scale  = Vector3.new(1, 0.5, 1)
    P13.Parent = P12

    -- 14 - LP2
    P14              = Instance.new("Part")
    P14.CFrame       = CFrame.new(Vector3.new(18.1000004, 1.8499999, 11.6999998)) * CFrame.Angles(-0, 0, -0)
    P14.FormFactor   = Enum.FormFactor.Custom
    P14.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P14.Anchored     = true
    P14.BrickColor   = BrickColor.new("White")
    P14.Friction     = 0.30000001192093
    P14.Shape        = Enum.PartType.Block
    P14.Name         = "LP2"
    P14.Parent       = P4
    P14.Transparency = 1

    -- 15 - Mesh
    P15              = Instance.new("CylinderMesh")
    P15.Scale        = Vector3.new(1, 0.5, 1)
    P15.Parent       = P14


    -- 16 - LP3
    P16              = Instance.new("Part")
    P16.CFrame       = CFrame.new(Vector3.new(18.3000011, 1.8499999, 12.0499992)) * CFrame.Angles(-0, 0, -0)
    P16.FormFactor   = Enum.FormFactor.Custom
    P16.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P16.Anchored     = true
    P16.BrickColor   = BrickColor.new("White")
    P16.Friction     = 0.30000001192093
    P16.Shape        = Enum.PartType.Block
    P16.Name         = "LP3"
    P16.Parent       = P4
    P16.Transparency = 1

    -- 17 - Mesh
    P17              = Instance.new("CylinderMesh")
    P17.Scale        = Vector3.new(1, 0.5, 1)
    P17.Parent       = P16

    P1.Parent = LP.Character
    P1:MakeJoints()
    return P1
end

weldModel = function(model, unanchor, rooty)
    local parts = {}
    local function recurse(object)
        if object:IsA("BasePart") then
            table.insert(parts, object)
        end
        for _,child in pairs(object:GetChildren()) do
            recurse(child)
        end
    end
    recurse(model)
    
    local rootPart = rooty or parts[1]
    for _, part in pairs(parts) do
        local cframe = rootPart.CFrame:toObjectSpace(part.CFrame)
        local weld = Instance.new("Weld")
        weld.Part0 = rootPart
        weld.Part1 = part
        weld.C0 = cframe
        weld.Parent = rootPart
    end
    
    if unanchor then
        for _, part in pairs(parts) do
            part.Anchored = false
            part.CanCollide = false
        end
    end
end

weldItem = function(rootPart, Item, TheC0, unanchor, ParentItem)
    local cframe = TheC0 or rootPart.CFrame:toObjectSpace(Item.CFrame)
    local weld = Instance.new("Weld")
    weld.Name = "Weld"
    weld.Part0 = rootPart
    weld.Part1 = Item
    weld.C0 = cframe
    weld.Parent = ParentItem and Item or rootPart
    
    if unanchor then
        Item.Anchored = false
    end
    return weld, cframe
end

scaleModel = function(model, scale)
    local parts = {}
    local function recurse(object)
        if object:IsA("BasePart") then
            table.insert(parts, object)
        end
        for _,child in pairs(object:GetChildren()) do
            recurse(child)
        end
    end
    recurse(model)
    
    local top, bottom, left, right, back, front
    for _, part in pairs(parts) do
        if top == nil or top < part.Position.y then         top = part.Position.y end
        if bottom == nil or bottom > part.Position.y then   bottom = part.Position.y end
        if left == nil or left > part.Position.x then       left = part.Position.x end
        if right == nil or right < part.Position.x then     right = part.Position.x end
        if back == nil or back > part.Position.z then       back = part.Position.z end
        if front == nil or front < part.Position.z then     front = part.Position.z end
    end
    
    local middle = Vector3.new( left+right, top+bottom, back+front )/2
    local minSize = Vector3.new(0.2, 0.2, 0.2)
    
    for _, part in pairs(parts) do
        local foo = part.CFrame.p - middle
        local rotation = part.CFrame - part.CFrame.p
        local newSize = part.Size*scale
        part.FormFactor = "Custom"
        part.Size = newSize
        part.CFrame = CFrame.new( middle + foo*scale ) * rotation
        
        if newSize.x < minSize.x or newSize.y < minSize.y or newSize.z < minSize.z then
            local mesh
            for _, child in pairs(part:GetChildren()) do
                if child:IsA("DataModelMesh") then
                    mesh = child
                    break
                end
            end
            
            if mesh == nil then
                mesh = Instance.new("BlockMesh", part)
            end
            
            local oScale = mesh.Scale
            local newScale = newSize/minSize * oScale
            if 0.2 < newSize.x then newScale = Vector3.new(1 * oScale.x, newScale.y, newScale.z) end
            if 0.2 < newSize.y then newScale = Vector3.new(newScale.x, 1 * oScale.y, newScale.z) end
            if 0.2 < newSize.z then newScale = Vector3.new(newScale.x, newScale.y, 1 * oScale.z) end
            
            mesh.Scale = newScale
        end
    end
end

function getMass(Obj, Total)
    local newTotal = Total
    local returnTotal = 0
    
    if Obj:IsA("BasePart") then
        newTotal = newTotal + Objects[Obj]
    elseif BodyObjects[Obj.ClassName] then
        Obj:Destroy()
    end
    
    if Obj:GetChildren() and #Obj:GetChildren() > 0 then
        for _,v in pairs(Obj:GetChildren()) do
            returnTotal = returnTotal + getMass(v, newTotal)
        end
    else
        returnTotal = newTotal
    end
    
    return returnTotal
end

function getTargFromCurrent()
    local Current = Current.Part
    if Current:IsA("BasePart") then
        return Current
    elseif Current:findFirstChild("Torso") then
        return Current.Torso
    else
        for _,v in pairs(Current:GetChildren()) do
            if v:IsA("BasePart") then
                return v
            end
        end
    end
end

function Fire(Part, Vec, Inv)
    pcall(function()
        Current.BP:Destroy()
        Current.BP = nil
    end)
    pcall(function()
        Current.BA:Destroy()
        Current.BA = nil
    end)
    pcall(function()
        if Inv then
            Part.Velocity = -((Vec - Torso.Position).unit * Grav * 1.1)
        else
            Part.Velocity = ((Vec - Camera.CoordinateFrame.p).unit * Grav * 1.1)
        end
        Current.Mass = nil
    end)
    Reset()
end

function Reset()
    LS.Parent = nil
    RS.Parent = nil
    
    OrigLS.Parent = Torso
    OrigRS.Parent = Torso
    
    OrigLS.C0 = LS0
    OrigRS.C0 = RS0
end

function Start()
    Cor(function()
        repeat wait(1/30) until LP.Character and LP.Character.Parent == Workspace and LP.Character:findFirstChild("Torso")
        Char = LP.Character
        PlrGui = LP.PlayerGui
        Backpack = LP.Backpack
        Mouse = LP:GetMouse()
        
        for _,v in pairs(Cons) do
            v:disconnect()
        end
        Cons = {}

        Camera = Workspace.CurrentCamera
        LastCamCF = Camera.CoordinateFrame
        AnimJoints = {}
        mDown = false
        Multi = false
        Grabbing = false
        Current = {}
        Alpha = 1

        Head = Char["Head"]
        Torso = Char["Torso"]
        Humanoid = Char["Humanoid"]
        LA = Char["Left Arm"]
        RA = Char["Right Arm"]
        LL = Char["Left Leg"]
        RL = Char["Right Leg"]
        
        OrigLS = Torso["Left Shoulder"]
        OrigRS = Torso["Right Shoulder"]

        for _,v in pairs(Char:GetChildren()) do
            if v.Name == ModID then
                v:Destroy()
            end
        end

        for _,v in pairs(PlrGui:GetChildren()) do
            if v.Name == "PadsGui" then
                v:Destroy()
            end
        end
        
        LS = Instance.new("Weld")
        RS = Instance.new("Weld")

        LS.Name = OrigLS.Name
        LS.Part0 = Torso
        LS.Part1 = LA
        LS.C0 = LS0
        LS.C1 = CFrame.new(0, 0.5, 0,  1, 0, 0,  0, 0, 1,  0, -1, 0)

        RS.Name = OrigRS.Name
        RS.Part0 = Torso
        RS.Part1 = RA
        RS.C0 = RS0
        RS.C1 = CFrame.new(0, 0.5, 0,  1, 0, 0,  0, 0, 1,  0, -1, 0)

        local Pads = MakePads()
        local LPad = Pads.LBase
        local RPad = Pads.RBase

        weldModel(LPad, true, LPad)
        weldModel(RPad, true, RPad)

        local GripWeldL = Instance.new("Weld")
        GripWeldL.Name = "GripWeldL"
        GripWeldL.Part0 = LA
        GripWeldL.Part1 = LPad
        GripWeldL.C0 = CFrame.new(0, -1.05, 0) * CFrame.Angles(0, math.rad(180), 0)
        GripWeldL.Parent = LA

        local GripWeldR = Instance.new("Weld")
        GripWeldR.Name = "GripWeldR"
        GripWeldR.Part0 = RA
        GripWeldR.Part1 = RPad
        GripWeldR.C0 = CFrame.new(0, -1.05, 0) * CFrame.Angles(0, math.rad(180), 0)
        GripWeldR.Parent = RA
        
        local isParts = false

        table.insert(Cons, Mouse.KeyDown:connect(function(Key)
            Key = Key:lower()
            if Key == "z" then
                --Stuff
            elseif Key == "f" then
                local Current = Current.Part
                if Current and Current.Parent ~= nil and not Multi then
                    Current:BreakJoints()
                end
            elseif Key == "q" then
                if isParts then
                    isParts = false
                    for _,v in pairs(Workspace:GetChildren()) do
                        if v.Name == "MyPartV" and v:IsA("BasePart") then
                            v:Destroy()
                        end
                    end
                else
                    isParts = true
                    for i = 1, 50 do
                        local Part         = Instance.new("Part")
                        Part.Color         = Color3.new(math.random(), math.random(), math.random())
                        Part.Transparency  = 1
                        Part.Size          = Vector3.new(math.random(1, 3), math.random(1, 3), math.random(1, 3))
                        Part.Archivable    = true
                        Part.CanCollide    = false
                        Part.Material      = "Plastic"
                        Part.Locked        = false
                        Part.CFrame        = Torso.CFrame * CFrame.new(math.random(-15, 15), -1, math.random(-15, 15))
                        Part.Anchored      = true
                        Part.Name          = "MyPartV"
                        Part.TopSurface    = "Smooth"
                        Part.BottomSurface = "Smooth"
                        Part.Parent        = Workspace
                    end
                end
            elseif Key == "e" then
                local Targ;
                if Current.Part and Current.Part ~= nil then
                    Targ = getTargFromCurrent()
                else
                    Targ = LastPart
                end
                if Targ and Targ.Parent ~= nil and not Multi then
                    local Ex = Instance.new("Explosion", Workspace)
                    Ex.Position = Targ.CFrame.p
                    Ex.BlastRadius = 16
                    Ex.DestroyJointRadiusPercent = 0.5
                end
            elseif Key == "c" then
                if Current.Part and Current.Part.Parent ~= nil and not Multi then
                    local Part = getTargFromCurrent()
                    if Part then
                        Grabbing = false
                        if Mouse.Hit then
                            local TargPos = CFrame.new(Camera.CoordinateFrame.p, Mouse.Hit.p) * CFrame.new(0, 0, -1000)
                            Fire(Part, TargPos.p)
                        else
                            Fire(Part, Mouse.Origin.p + Mouse.UnitRay.Direction, true)
                        end
                    end
                end
            end
        end))

        table.insert(Cons, Mouse.Button1Up:connect(function()
            mDown = false
            if Grabbing == true and Multi == false then
                Grabbing = false
                Reset()
            end
            if Current.Part ~= nil then
                LastPart = getTargFromCurrent()
                Current = {}
            end
        end))

        local function makeLightning(Par, Start, End, Width, Length, RandomScale, ArcScale, Num1)
            local oldParts = {}
            for _,v in pairs(Par:GetChildren()) do
                v.CFrame = CFrame.new(5e5, 5e5, 5e5)
                table.insert(oldParts, v)
            end
            local Distance = (Start-End).Magnitude
            local ArcScale = ArcScale or 1
            local RandomScale = RandomScale or 0
            local Last = Start
            local IterNum = 0

            while Par.Parent do
                IterNum = IterNum + 1
                local New = nil
                if (Last-End).Magnitude < Length then
                    New = CFrame.new(End)
                else
                    if (End-Last).Magnitude < Length*2 then
                        RandomScale = RandomScale*0.5
                        ArcScale = ArcScale*0.5
                    end
                    local Direct = CFrame.new(Last,End)
                    New = Direct*CFrame.Angles(math.rad(math.random(-RandomScale/4,RandomScale*ArcScale)),math.rad(math.random(-RandomScale,RandomScale)),math.rad(math.random(-RandomScale,RandomScale)))
                    New = New*CFrame.new(0,0,-Length)
                end
                local Trail = nil
                if oldParts[IterNum] then
                    Trail            = oldParts[IterNum]
                    Trail.BrickColor = ((Num1 % 2 == 0) and BrickColor.new("White")) or BrickColor.new("White")
                    Trail.Size       = Vector3.new(Width, (Last-New.p).Magnitude, Width)
                    Trail.CFrame     = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
                    oldParts[IterNum] = nil
                else
                    Trail               = Instance.new("Part")
                    Trail.Name          = "Part"
                    Trail.FormFactor    = "Custom"
                    Trail.BrickColor    = ((Num1 % 2 == 0) and BrickColor.new("White")) or BrickColor.new("White")
                    Trail.Transparency  = 1
                    Trail.Anchored      = true
                    Trail.CanCollide    = false
                    Trail.Locked        = true
                    Trail.BackSurface   = "SmoothNoOutlines"
                    Trail.BottomSurface = "SmoothNoOutlines"
                    Trail.FrontSurface  = "SmoothNoOutlines"
                    Trail.LeftSurface   = "SmoothNoOutlines"
                    Trail.RightSurface  = "SmoothNoOutlines"
                    Trail.TopSurface    = "SmoothNoOutlines"
                    Trail.Material      = "Neon"
                    Trail.Size          = Vector3.new(Width, (Last-New.p).Magnitude, Width)
                    Trail.CFrame        = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
                    Trail.Parent        = Par
                end
                Last = New.p
                if (Last-End).Magnitude < 1 then
                    break
                end
            end
            for _,v in pairs(oldParts) do
                v:Destroy()
            end
        end

        table.insert(Cons, Mouse.Button1Down:connect(function()
            mDown = true
            local Targ = Mouse.Target
            Cor(function()
                if Targ and Objects[Targ] and not Multi then
                    Grabbing = true
                    Current.Part = Targ
                    local Mass = Objects[Targ]
                    local ForceNum = 0
                    local Hum = nil
                    
                    for _,v in pairs(Targ:GetChildren()) do
                        if BodyObjects[v.ClassName] then
                            v:Destroy()
                        end
                    end
                    
                    for _,v in pairs(Workspace:GetChildren()) do
                        if v:findFirstChild("Humanoid") and v:IsAncestorOf(Targ) then
                            Hum = v.Humanoid
                            Mass = getMass(v, 0)
                            Current.Part = v
                            break
                        end
                    end
                    
                    Current.Mass = Mass
                    
                    if not Hum then
                        Targ:BreakJoints()
                    end
                    
                    ForceNum = Mass * Grav
                    Targ.CanCollide = true
                    Targ.Anchored = false
                    
                    local BP = Instance.new("BodyPosition")
                    BP.maxForce = Vector3.new(3 * ForceNum, 3 * ForceNum, 3 * ForceNum)
                    BP.Parent = Targ
                    
                    local Ang = Instance.new("BodyAngularVelocity")
                    Ang.Parent = Targ
                    
                    Current.BP = BP
                    Current.BA = Ang
                    
                    OrigLS.Parent = nil
                    OrigRS.Parent = nil
                    
                    LS.Parent = Torso
                    RS.Parent = Torso
                    
                    LS.C0 = LS0
                    RS.C0 = RS0
                    
                    local DirDot = Mouse.UnitRay.Direction:Dot(Targ.Position - Mouse.Origin.p)
                    local BPPos = Vector3.new(0, 0, 0)
                    local Vel = Vector3.new(0, 0, 0)
                    local Vlev = random() * math.pi
                    local RPos = Vector3.new(random() * 2 - 1, cos(Vlev), random() * 2 - 1)
                    
                    local Ball        = Instance.new("Part")
                    Ball.Name         = "Ball"
                    Ball.FormFactor   = "Custom"
                    Ball.Color        = Color3.new(0, 0, 0)
                    Ball.Transparency = 1
                    Ball.Anchored     = true
                    Ball.CanCollide   = false
                    Ball.Locked       = true
                    Ball.BottomSurface, Ball.TopSurface = "Smooth", "Smooth"
                    Ball.Size = Vector3.new(0.5, 0.5, 0.5)
                    Ball.CFrame = Torso.CFrame * CFrame.new(0, 1, -3)
                    Ball.Parent = Char

                    if Targ.Name == "MyPartV" then
                        Targ.Name = "MyPartF"
                    end

                    local LightMod = Instance.new("Model", Char)
                        
                    local Mesh = Instance.new("SpecialMesh")
                    Mesh.MeshType = "Sphere"
                    Mesh.Parent = Ball
                    
                    local Size = 1
                    local Rise = true
                    
                    while Grabbing and BP and Ang and Targ.Parent ~= nil do
                        local BPPos = Mouse.Origin.p + Mouse.UnitRay.Direction * DirDot
                        Ang.angularvelocity = Vel
                        BP.position = BPPos + RPos
                        RPos = Vector3.new(max(-1, min(RPos.x + random() * 0.02 - 0.01, 1)), cos(Vlev), max(-1, min(RPos.z + random() * 0.02 - 0.01, 1)))
                        Vel = Vector3.new(max(-1, min(Vel.x + random() * 0.2 - 0.1, 1)), max(-1, min(Vel.y + random() * 0.2 - 0.1, 1)), max(-1, min(Vel.z + random() * 0.2 - 0.1, 1)))
                        Vlev = (Vlev + 0.05) % tau
                        
                        if Hum then
                            Hum.Sit = true
                        end
                        
                        if LA.Parent ~= nil and RA.Parent ~= nil then
                            local LPos = (LA.CFrame * CFrame.new(0, -1, 0)).p
                            local RPos = (RA.CFrame * CFrame.new(0, -1, 0)).p
                            if Rise == true then
                                if Size < 0.6 then
                                    Size = Size + 0.05
                                else
                                    Size = Size + 0.1
                                end
                                if Size >= 2.2 then
                                    Rise = false
                                end
                            else
                                if Size > 2.1 then
                                    Size = Size - 0.05
                                else
                                    Size = Size - 0.1
                                end
                                if Size <= 0.5 then
                                    Rise = true
                                end
                            end
                            Ball.Size = Vector3.new(Size, Size, Size)
                            Ball.CFrame = CFrame.new(LPos:Lerp(RPos, 0.5), Targ.Position) * CFrame.new(0, 0, -2.2)
                            LightNum = LightNum + 1
                            makeLightning(LightMod, Ball.Position, Targ.Position, 0.2, 4, 50, 1, LightNum)
                        elseif Ball.Parent ~= nil then
                            Ball:Destroy()
                        end
                        
                        if LS and LS.Parent == Torso then
                            LS.C0 = CFrame.new(Vector3.new(-1.5, 0.5, 0), Torso.CFrame:pointToObjectSpace((Targ.CFrame or Torso.CFrame * CFrame.new(-1.5, 0.5, 1)).p))
                        end
                        if RS and RS.Parent == Torso then
                            RS.C0 = CFrame.new(Vector3.new(1.5, 0.5, 0), Torso.CFrame:pointToObjectSpace((Targ.CFrame or Torso.CFrame * CFrame.new(1.5, 0.5, 1)).p))
                        end
                        RunService.Heartbeat:wait()
                    end

                    coroutine.resume(coroutine.create(function()
                        for i = 0.5, 1, 0.1 do
                            for i2,v in pairs(LightMod:GetChildren()) do
                                --v.Light.Range = 6-(i*5)
                                v.Transparency = 1
                            end
                            wait(1/30)
                        end
                        LightMod:Destroy()
                    end))
                    
                    if BP and BP.Parent ~= nil then
                        BP:Destroy()
                    end
                    
                    if Ang and Ang.Parent ~= nil then
                        Ang:Destroy()
                    end
                    
                    pcall(function() Ball:Destroy() end)
                end
            end)
        end))
    end)
end

function Add(Obj)
    if Obj:IsA("BasePart") and not Objects[Obj] and not (Obj.Name == "Base" and Obj.ClassName == "Part") then
        Objects[Obj] = Obj:GetMass()
        Obj.Changed:connect(function(P)
            if P:lower() == "size" and Objects[Obj] and Obj.Parent ~= nil then
                Objects[Obj] = Obj:GetMass()
            end
        end)
    end
end

function Rem(Obj)
    if Objects[Obj] then
        Objects[Obj] = nil
    end
end

function Recursion(Obj)
    ypcall(function()
        Add(Obj)
        if #Obj:GetChildren() > 0 then
            for _,v in pairs(Obj:GetChildren()) do 
                Recursion(v)
            end
        end
    end)
end

Workspace.DescendantAdded:connect(function(Obj)
    Add(Obj)
end)

Workspace.DescendantRemoving:connect(function(Obj)
    Rem(Obj)
end)

for _,v in pairs(Workspace:GetChildren()) do
    Recursion(v)
end
local isScriptNil = false

local PlrName = "saud20"
local Plrs = game:GetService("Players")
local RunService = game:GetService("RunService")
local Content = game:GetService("ContentProvider")
local LP = Plrs.LocalPlayer
local Char = LP.Character
local PlrGui = LP.PlayerGui
local Backpack = LP.Backpack
local Mouse = LP:GetMouse()

local Camera = Workspace.CurrentCamera
local LastCamCF = Camera.CoordinateFrame
local AnimJoints = {}
local Cons = {}
local mDown = false
local Multi = false
local Grabbing = false
local Current = {}
local Alpha = 1
local LightNum = 1

Current.Part = nil
Current.BP = nil
Current.BA = nil
Current.Mass = nil

local LastPart = nil

local Head = Char["Head"]
local Torso = Char["Torso"]
local Humanoid = Char["Humanoid"]
local LA = Char["Left Arm"]
local RA = Char["Right Arm"]
local LL = Char["Left Leg"]
local RL = Char["Right Leg"]

local LS, RS;

local OrigLS = Torso["Left Shoulder"]
local OrigRS = Torso["Right Shoulder"]

for _,v in pairs(Char:GetChildren()) do
    if v.Name == ModID then
        v:Destroy()
    end
end

for _,v in pairs(PlrGui:GetChildren()) do
    if v.Name == "PadsGui" then
        v:Destroy()
    end
end

local ModID = "Pads"
local Objects = {}
local Grav = 196.2

local sin=math.sin
local cos=math.cos
local max=math.max
local min=math.min
local atan2=math.atan2
local random=math.random
local tau = 2 * math.pi

local BodyObjects = {
    ["BodyVelocity"] = true;
    ["BodyAngularVelocity"] = true;
    ["BodyForce"] = true;
    ["BodyThrust"] = true;
    ["BodyPosition"] = true;
    ["RocketPropulsion"] = true;
}

if LP.Name == PlrName and isScriptNil then
    script.Parent = nil
end

LP.CameraMode = "Classic"

local Assets = {
}

local LS0, LS1 = OrigLS.C0, OrigLS.C1
local RS0, RS1 = OrigRS.C0, OrigRS.C1

for i,v in pairs(Assets) do
    local ID = tostring(Assets[i])
    Assets[i] = "http://www.roblox.com/asset/?id=" .. ID
    Content:Preload("http://www.roblox.com/asset/?id=" .. ID)
end

function QuaternionFromCFrame(cf)
    local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components();
    local trace = m00 + m11 + m22 if trace > 0 then 
        local s = math.sqrt(1 + trace);
        local recip = 0.5/s;
        return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5;
    else 
        local i = 0;
        if m11 > m00 then 
            i = 1;
        end;
        if m22 > (i == 0 and m00 or m11) then
            i = 2 end if i == 0 then
            local s = math.sqrt(m00-m11-m22+1);
            local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip; 
        elseif i == 1 then
            local s = math.sqrt(m11-m22-m00+1);
            local recip = 0.5/s;
            return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip ;
        elseif i == 2 then
            local s = math.sqrt(m22-m00-m11+1);
            local recip = 0.5/s;
            return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip;
        end;
    end; 
end;

function QuaternionToCFrame(px, py, pz, x, y, z, w)
    local xs, ys, zs = x + x, y + y, z + z;
    local wx, wy, wz = w*xs, w*ys, w*zs;
    local xx = x*xs;
    local xy = x*ys;
    local xz = x*zs;
    local yy = y*ys;
    local yz = y*zs;
    local zz = z*zs;
    return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end;

function QuaternionSlerp(a, b, t)
    local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4];
    local startInterp, finishInterp; 
    if cosTheta >= 0.0001 then
        if (1 - cosTheta) > 0.0001 then
            local theta = math.acos(cosTheta);
            local invSinTheta = 1/math.sin(theta);
            startInterp = math.sin((1-t)*theta)*invSinTheta;
            finishInterp = math.sin(t*theta)*invSinTheta;
        else
            startInterp = 1-t finishInterp = t;
        end;
    else 
        if (1+cosTheta) > 0.0001 then
            local theta = math.acos(-cosTheta);
            local invSinTheta = 1/math.sin(theta);
            startInterp = math.sin((t-1)*theta)*invSinTheta;
            finishInterp = math.sin(t*theta)*invSinTheta;
        else startInterp = t-1 finishInterp = t;
        end;
    end;
    return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp;
end;

function CLerp(a,b,t)
    local qa={QuaternionFromCFrame(a)};
    local qb={QuaternionFromCFrame(b)};
    local ax,ay,az=a.x,a.y,a.z;
    local bx,by,bz=b.x,b.y,b.z;
    local _t=1-t;
    return QuaternionToCFrame(_t*ax+t*bx,_t*ay+t*by,_t*az+t*bz,QuaternionSlerp(qa, qb, t));
end

function GetWeld(weld) 
    local obj 
    for i, v in pairs(AnimJoints) do 
        if v[1] == weld then 
            obj = v 
            break 
        end 
    end 
    if not obj then 
        obj = {weld,NV} 
        table.insert(AnimJoints,obj) 
    end 
    return weld.C0.p, obj[2] 
end 

function SetWeld(weld, i, loops, origpos, origangle, nextpos, nextangle, override, overrideLower, smooth) 
    smooth = smooth or 1 
    local obj 
    for i, v in pairs(AnimJoints) do 
        if v[1] == weld then 
            obj = v 
            break 
        end 
    end 
    if not obj then 
        obj = {weld,NV} 
        table.insert(AnimJoints,obj) 
    end 
    
    local perc = (smooth == 1 and math.sin((math.pi/2)/loops*i)) or i/loops 
    
    local tox,toy,toz = 0,0,0 
    tox = math.abs(origangle.x - nextangle.x) *perc 
    toy = math.abs(origangle.y - nextangle.y) *perc 
    toz = math.abs(origangle.z - nextangle.z) *perc 
    tox = ((origangle.x > nextangle.x and -tox) or tox)
    toy = ((origangle.y > nextangle.y and -toy) or toy)
    toz = ((origangle.z > nextangle.z and -toz) or toz)
    
    local tox2,toy2,toz2 = 0,0,0 
    tox2 = math.abs(origpos.x - nextpos.x) *perc 
    toy2 = math.abs(origpos.y - nextpos.y) *perc 
    toz2 = math.abs(origpos.z - nextpos.z) *perc 
    tox2 = (origpos.x > nextpos.x and -tox2) or tox2 
    toy2 = (origpos.y > nextpos.y and -toy2) or toy2 
    toz2 = (origpos.z > nextpos.z and -toz2) or toz2 
    
    obj[2] = Vector3.new(origangle.x + tox, origangle.y + toy, origangle.z + toz) 
    weld.C0 = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2) * CFrame.Angles(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 

function RotateCamera(x, y)
    Camera.CoordinateFrame = CFrame.new(Camera.Focus.p) * (Camera.CoordinateFrame - Camera.CoordinateFrame.p) * CFrame.Angles(x, y, 0) * CFrame.new(0, 0, (Camera.CoordinateFrame.p - Camera.Focus.p).magnitude)
end

function GetAngles(cf)
    local lv = cf.lookVector
    return -math.asin(lv.y), math.atan2(lv.x, -lv.z)
end

local LastCamCF = Camera.CoordinateFrame

function Look()
    if AlphaOn == true then
        local x, y = GetAngles(LastCamCF:toObjectSpace(Camera.CoordinateFrame))
        Camera.CoordinateFrame = LastCamCF
        RotateCamera(x * -(Alpha), y * -(Alpha))
        LastCamCF = Camera.CoordinateFrame
    end
end

function Cor(Func)
    local Ok, Err = coroutine.resume(coroutine.create(Func))
    if not Ok then
        print(Err)
    end
end

function Cor2(Func)
    local Ok, Err = ypcall(Func)
    if not Ok then
        print(Err)
    end
end

function MakePads()
    -- 1 - VTelekinesis
    P1 = Instance.new("Model")
    P1.Name = ModID

    -- 2 - RBase
    P2              = Instance.new("Part")
    P2.CFrame       = CFrame.new(Vector3.new(21.100008, 1.95000589, 11.899971)) * CFrame.Angles(-0, 0, -0)
    P2.FormFactor   = Enum.FormFactor.Custom
    P2.Size         = Vector3.new(0.799999952, 0.200000003, 0.800000012)
    P2.Anchored     = true
    P2.BrickColor   = BrickColor.new("White")
    P2.Friction     = 0.30000001192093
    P2.Shape        = Enum.PartType.Block
    P2.Name         = "RBase"
    P2.Parent       = P1
    P2.Transparency = 1

    -- 3 - Mesh
    P3        = Instance.new("CylinderMesh")
    P3.Scale  = Vector3.new(1, 0.5, 1)
    P3.Parent = P2

    -- 4 - LBase
    P4              = Instance.new("Part")
    P4.CFrame       = CFrame.new(Vector3.new(18.100008, 1.95000589, 11.899971)) * CFrame.Angles(-0, 0, -0)
    P4.FormFactor   = Enum.FormFactor.Custom
    P4.Size         = Vector3.new(0.799999952, 0.200000003, 0.800000012)
    P4.Anchored     = true
    P4.BrickColor   = BrickColor.new("White")
    P4.Friction     = 0.30000001192093
    P4.Shape        = Enum.PartType.Block
    P4.Name         = "LBase"
    P4.Parent       = P1
    P4.Transparency = 1

    -- 5 - Mesh
    P5              = Instance.new("CylinderMesh")
    P5.Scale        = Vector3.new(1, 0.5, 1)
    P5.Parent       = P4
    

    -- 6 - RP1
    P6              = Instance.new("Part")
    P6.CFrame       = CFrame.new(Vector3.new(20.8999996, 1.8499999, 12.0499992)) * CFrame.Angles(-0, 0, -0)
    P6.FormFactor   = Enum.FormFactor.Custom
    P6.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P6.Anchored     = true
    P6.BrickColor   = BrickColor.new("White")
    P6.Friction     = 0.30000001192093
    P6.Shape        = Enum.PartType.Block
    P6.Name         = "RP1"
    P6.Parent       = P2
    P6.Transparency = 1
    -- 7 - Mesh
    P7              = Instance.new("CylinderMesh")
    P7.Scale        = Vector3.new(1, 0.5, 1)
    P7.Parent       = P6
    

    -- 8 - RP2
    P8              = Instance.new("Part")
    P8.CFrame       = CFrame.new(Vector3.new(21.1000004, 1.8499999, 11.6999998)) * CFrame.Angles(-0, 0, -0)
    P8.FormFactor   = Enum.FormFactor.Custom
    P8.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P8.Anchored     = true
    P8.BrickColor   = BrickColor.new("White")
    P8.Friction     = 0.30000001192093
    P8.Shape        = Enum.PartType.Block
    P8.Name         = "RP2"
    P8.Parent       = P2
    P8.Transparency = 1

    -- 9 - Mesh
    P9 = Instance.new("CylinderMesh")
    P9.Scale = Vector3.new(1, 0.5, 1)
    P9.Parent = P8

    -- 10 - RP3
    P10              = Instance.new("Part")
    P10.CFrame       = CFrame.new(Vector3.new(21.3000011, 1.8499999, 12.0499992)) * CFrame.Angles(-0, 0, -0)
    P10.FormFactor   = Enum.FormFactor.Custom
    P10.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P10.Anchored     = true
    P10.BrickColor   = BrickColor.new("White")
    P10.Friction     = 0.30000001192093
    P10.Shape        = Enum.PartType.Block
    P10.Name         = "RP3"
    P10.Parent       = P2
    P10.Transparency = 1

    -- 11 - Mesh
    P11              = Instance.new("CylinderMesh")
    P11.Scale        = Vector3.new(1, 0.5, 1)
    P11.Parent       = P10


    -- 12 - LP1
    P12              = Instance.new("Part")
    P12.CFrame       = CFrame.new(Vector3.new(17.8999996, 1.8499999, 12.0499992)) * CFrame.Angles(-0, 0, -0)
    P12.FormFactor   = Enum.FormFactor.Custom
    P12.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P12.Anchored     = true
    P12.BrickColor   = BrickColor.new("White")
    P12.Friction     = 0.30000001192093
    P12.Shape        = Enum.PartType.Block
    P12.Name         = "LP1"
    P12.Parent       = P4
    P12.Transparency = 1

    -- 13 - Mesh
    P13        = Instance.new("CylinderMesh")
    P13.Scale  = Vector3.new(1, 0.5, 1)
    P13.Parent = P12

    -- 14 - LP2
    P14              = Instance.new("Part")
    P14.CFrame       = CFrame.new(Vector3.new(18.1000004, 1.8499999, 11.6999998)) * CFrame.Angles(-0, 0, -0)
    P14.FormFactor   = Enum.FormFactor.Custom
    P14.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P14.Anchored     = true
    P14.BrickColor   = BrickColor.new("White")
    P14.Friction     = 0.30000001192093
    P14.Shape        = Enum.PartType.Block
    P14.Name         = "LP2"
    P14.Parent       = P4
    P14.Transparency = 1

    -- 15 - Mesh
    P15              = Instance.new("CylinderMesh")
    P15.Scale        = Vector3.new(1, 0.5, 1)
    P15.Parent       = P14


    -- 16 - LP3
    P16              = Instance.new("Part")
    P16.CFrame       = CFrame.new(Vector3.new(18.3000011, 1.8499999, 12.0499992)) * CFrame.Angles(-0, 0, -0)
    P16.FormFactor   = Enum.FormFactor.Custom
    P16.Size         = Vector3.new(0.200000003, 0.200000003, 0.200000003)
    P16.Anchored     = true
    P16.BrickColor   = BrickColor.new("White")
    P16.Friction     = 0.30000001192093
    P16.Shape        = Enum.PartType.Block
    P16.Name         = "LP3"
    P16.Parent       = P4
    P16.Transparency = 1

    -- 17 - Mesh
    P17              = Instance.new("CylinderMesh")
    P17.Scale        = Vector3.new(1, 0.5, 1)
    P17.Parent       = P16

    P1.Parent = LP.Character
    P1:MakeJoints()
    return P1
end

weldModel = function(model, unanchor, rooty)
    local parts = {}
    local function recurse(object)
        if object:IsA("BasePart") then
            table.insert(parts, object)
        end
        for _,child in pairs(object:GetChildren()) do
            recurse(child)
        end
    end
    recurse(model)
    
    local rootPart = rooty or parts[1]
    for _, part in pairs(parts) do
        local cframe = rootPart.CFrame:toObjectSpace(part.CFrame)
        local weld = Instance.new("Weld")
        weld.Part0 = rootPart
        weld.Part1 = part
        weld.C0 = cframe
        weld.Parent = rootPart
    end
    
    if unanchor then
        for _, part in pairs(parts) do
            part.Anchored = false
            part.CanCollide = false
        end
    end
end

weldItem = function(rootPart, Item, TheC0, unanchor, ParentItem)
    local cframe = TheC0 or rootPart.CFrame:toObjectSpace(Item.CFrame)
    local weld = Instance.new("Weld")
    weld.Name = "Weld"
    weld.Part0 = rootPart
    weld.Part1 = Item
    weld.C0 = cframe
    weld.Parent = ParentItem and Item or rootPart
    
    if unanchor then
        Item.Anchored = false
    end
    return weld, cframe
end

scaleModel = function(model, scale)
    local parts = {}
    local function recurse(object)
        if object:IsA("BasePart") then
            table.insert(parts, object)
        end
        for _,child in pairs(object:GetChildren()) do
            recurse(child)
        end
    end
    recurse(model)
    
    local top, bottom, left, right, back, front
    for _, part in pairs(parts) do
        if top == nil or top < part.Position.y then         top = part.Position.y end
        if bottom == nil or bottom > part.Position.y then   bottom = part.Position.y end
        if left == nil or left > part.Position.x then       left = part.Position.x end
        if right == nil or right < part.Position.x then     right = part.Position.x end
        if back == nil or back > part.Position.z then       back = part.Position.z end
        if front == nil or front < part.Position.z then     front = part.Position.z end
    end
    
    local middle = Vector3.new( left+right, top+bottom, back+front )/2
    local minSize = Vector3.new(0.2, 0.2, 0.2)
    
    for _, part in pairs(parts) do
        local foo = part.CFrame.p - middle
        local rotation = part.CFrame - part.CFrame.p
        local newSize = part.Size*scale
        part.FormFactor = "Custom"
        part.Size = newSize
        part.CFrame = CFrame.new( middle + foo*scale ) * rotation
        
        if newSize.x < minSize.x or newSize.y < minSize.y or newSize.z < minSize.z then
            local mesh
            for _, child in pairs(part:GetChildren()) do
                if child:IsA("DataModelMesh") then
                    mesh = child
                    break
                end
            end
            
            if mesh == nil then
                mesh = Instance.new("BlockMesh", part)
            end
            
            local oScale = mesh.Scale
            local newScale = newSize/minSize * oScale
            if 0.2 < newSize.x then newScale = Vector3.new(1 * oScale.x, newScale.y, newScale.z) end
            if 0.2 < newSize.y then newScale = Vector3.new(newScale.x, 1 * oScale.y, newScale.z) end
            if 0.2 < newSize.z then newScale = Vector3.new(newScale.x, newScale.y, 1 * oScale.z) end
            
            mesh.Scale = newScale
        end
    end
end

function getMass(Obj, Total)
    local newTotal = Total
    local returnTotal = 0
    
    if Obj:IsA("BasePart") then
        newTotal = newTotal + Objects[Obj]
    elseif BodyObjects[Obj.ClassName] then
        Obj:Destroy()
    end
    
    if Obj:GetChildren() and #Obj:GetChildren() > 0 then
        for _,v in pairs(Obj:GetChildren()) do
            returnTotal = returnTotal + getMass(v, newTotal)
        end
    else
        returnTotal = newTotal
    end
    
    return returnTotal
end

function getTargFromCurrent()
    local Current = Current.Part
    if Current:IsA("BasePart") then
        return Current
    elseif Current:findFirstChild("Torso") then
        return Current.Torso
    else
        for _,v in pairs(Current:GetChildren()) do
            if v:IsA("BasePart") then
                return v
            end
        end
    end
end

function Fire(Part, Vec, Inv)
    pcall(function()
        Current.BP:Destroy()
        Current.BP = nil
    end)
    pcall(function()
        Current.BA:Destroy()
        Current.BA = nil
    end)
    pcall(function()
        if Inv then
            Part.Velocity = -((Vec - Torso.Position).unit * Grav * 1.1)
        else
            Part.Velocity = ((Vec - Camera.CoordinateFrame.p).unit * Grav * 1.1)
        end
        Current.Mass = nil
    end)
    Reset()
end

function Reset()
    LS.Parent = nil
    RS.Parent = nil
    
    OrigLS.Parent = Torso
    OrigRS.Parent = Torso
    
    OrigLS.C0 = LS0
    OrigRS.C0 = RS0
end

function Start()
    Cor(function()
        repeat wait(1/30) until LP.Character and LP.Character.Parent == Workspace and LP.Character:findFirstChild("Torso")
        Char = LP.Character
        PlrGui = LP.PlayerGui
        Backpack = LP.Backpack
        Mouse = LP:GetMouse()
        
        for _,v in pairs(Cons) do
            v:disconnect()
        end
        Cons = {}

        Camera = Workspace.CurrentCamera
        LastCamCF = Camera.CoordinateFrame
        AnimJoints = {}
        mDown = false
        Multi = false
        Grabbing = false
        Current = {}
        Alpha = 1

        Head = Char["Head"]
        Torso = Char["Torso"]
        Humanoid = Char["Humanoid"]
        LA = Char["Left Arm"]
        RA = Char["Right Arm"]
        LL = Char["Left Leg"]
        RL = Char["Right Leg"]
        
        OrigLS = Torso["Left Shoulder"]
        OrigRS = Torso["Right Shoulder"]

        for _,v in pairs(Char:GetChildren()) do
            if v.Name == ModID then
                v:Destroy()
            end
        end

        for _,v in pairs(PlrGui:GetChildren()) do
            if v.Name == "PadsGui" then
                v:Destroy()
            end
        end
        
        LS = Instance.new("Weld")
        RS = Instance.new("Weld")

        LS.Name = OrigLS.Name
        LS.Part0 = Torso
        LS.Part1 = LA
        LS.C0 = LS0
        LS.C1 = CFrame.new(0, 0.5, 0,  1, 0, 0,  0, 0, 1,  0, -1, 0)

        RS.Name = OrigRS.Name
        RS.Part0 = Torso
        RS.Part1 = RA
        RS.C0 = RS0
        RS.C1 = CFrame.new(0, 0.5, 0,  1, 0, 0,  0, 0, 1,  0, -1, 0)

        local Pads = MakePads()
        local LPad = Pads.LBase
        local RPad = Pads.RBase

        weldModel(LPad, true, LPad)
        weldModel(RPad, true, RPad)

        local GripWeldL = Instance.new("Weld")
        GripWeldL.Name = "GripWeldL"
        GripWeldL.Part0 = LA
        GripWeldL.Part1 = LPad
        GripWeldL.C0 = CFrame.new(0, -1.05, 0) * CFrame.Angles(0, math.rad(180), 0)
        GripWeldL.Parent = LA

        local GripWeldR = Instance.new("Weld")
        GripWeldR.Name = "GripWeldR"
        GripWeldR.Part0 = RA
        GripWeldR.Part1 = RPad
        GripWeldR.C0 = CFrame.new(0, -1.05, 0) * CFrame.Angles(0, math.rad(180), 0)
        GripWeldR.Parent = RA
        
        local isParts = false

        table.insert(Cons, Mouse.KeyDown:connect(function(Key)
            Key = Key:lower()
            if Key == "z" then
                --Stuff
            elseif Key == "f" then
                local Current = Current.Part
                if Current and Current.Parent ~= nil and not Multi then
                    Current:BreakJoints()
                end
            elseif Key == "q" then
                if isParts then
                    isParts = false
                    for _,v in pairs(Workspace:GetChildren()) do
                        if v.Name == "MyPartV" and v:IsA("BasePart") then
                            v:Destroy()
                        end
                    end
                else
                    isParts = true
                    for i = 1, 50 do
                        local Part         = Instance.new("Part")
                        Part.Color         = Color3.new(math.random(), math.random(), math.random())
                        Part.Transparency  = 1
                        Part.Size          = Vector3.new(math.random(1, 3), math.random(1, 3), math.random(1, 3))
                        Part.Archivable    = true
                        Part.CanCollide    = false
                        Part.Material      = "Plastic"
                        Part.Locked        = false
                        Part.CFrame        = Torso.CFrame * CFrame.new(math.random(-15, 15), -1, math.random(-15, 15))
                        Part.Anchored      = true
                        Part.Name          = "MyPartV"
                        Part.TopSurface    = "Smooth"
                        Part.BottomSurface = "Smooth"
                        Part.Parent        = Workspace
                    end
                end
            elseif Key == "e" then
                local Targ;
                if Current.Part and Current.Part ~= nil then
                    Targ = getTargFromCurrent()
                else
                    Targ = LastPart
                end
                if Targ and Targ.Parent ~= nil and not Multi then
                    local Ex = Instance.new("Explosion", Workspace)
                    Ex.Position = Targ.CFrame.p
                    Ex.BlastRadius = 16
                    Ex.DestroyJointRadiusPercent = 0.5
                end
            elseif Key == "c" then
                if Current.Part and Current.Part.Parent ~= nil and not Multi then
                    local Part = getTargFromCurrent()
                    if Part then
                        Grabbing = false
                        if Mouse.Hit then
                            local TargPos = CFrame.new(Camera.CoordinateFrame.p, Mouse.Hit.p) * CFrame.new(0, 0, -1000)
                            Fire(Part, TargPos.p)
                        else
                            Fire(Part, Mouse.Origin.p + Mouse.UnitRay.Direction, true)
                        end
                    end
                end
            end
        end))

        table.insert(Cons, Mouse.Button1Up:connect(function()
            mDown = false
            if Grabbing == true and Multi == false then
                Grabbing = false
                Reset()
            end
            if Current.Part ~= nil then
                LastPart = getTargFromCurrent()
                Current = {}
            end
        end))

        local function makeLightning(Par, Start, End, Width, Length, RandomScale, ArcScale, Num1)
            local oldParts = {}
            for _,v in pairs(Par:GetChildren()) do
                v.CFrame = CFrame.new(5e5, 5e5, 5e5)
                table.insert(oldParts, v)
            end
            local Distance = (Start-End).Magnitude
            local ArcScale = ArcScale or 1
            local RandomScale = RandomScale or 0
            local Last = Start
            local IterNum = 0

            while Par.Parent do
                IterNum = IterNum + 1
                local New = nil
                if (Last-End).Magnitude < Length then
                    New = CFrame.new(End)
                else
                    if (End-Last).Magnitude < Length*2 then
                        RandomScale = RandomScale*0.5
                        ArcScale = ArcScale*0.5
                    end
                    local Direct = CFrame.new(Last,End)
                    New = Direct*CFrame.Angles(math.rad(math.random(-RandomScale/4,RandomScale*ArcScale)),math.rad(math.random(-RandomScale,RandomScale)),math.rad(math.random(-RandomScale,RandomScale)))
                    New = New*CFrame.new(0,0,-Length)
                end
                local Trail = nil
                if oldParts[IterNum] then
                    Trail            = oldParts[IterNum]
                    Trail.BrickColor = ((Num1 % 2 == 0) and BrickColor.new("White")) or BrickColor.new("White")
                    Trail.Size       = Vector3.new(Width, (Last-New.p).Magnitude, Width)
                    Trail.CFrame     = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
                    oldParts[IterNum] = nil
                else
                    Trail               = Instance.new("Part")
                    Trail.Name          = "Part"
                    Trail.FormFactor    = "Custom"
                    Trail.BrickColor    = ((Num1 % 2 == 0) and BrickColor.new("White")) or BrickColor.new("White")
                    Trail.Transparency  = 1
                    Trail.Anchored      = true
                    Trail.CanCollide    = false
                    Trail.Locked        = true
                    Trail.BackSurface   = "SmoothNoOutlines"
                    Trail.BottomSurface = "SmoothNoOutlines"
                    Trail.FrontSurface  = "SmoothNoOutlines"
                    Trail.LeftSurface   = "SmoothNoOutlines"
                    Trail.RightSurface  = "SmoothNoOutlines"
                    Trail.TopSurface    = "SmoothNoOutlines"
                    Trail.Material      = "Neon"
                    Trail.Size          = Vector3.new(Width, (Last-New.p).Magnitude, Width)
                    Trail.CFrame        = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
                    Trail.Parent        = Par
                end
                Last = New.p
                if (Last-End).Magnitude < 1 then
                    break
                end
            end
            for _,v in pairs(oldParts) do
                v:Destroy()
            end
        end

        table.insert(Cons, Mouse.Button1Down:connect(function()
            mDown = true
            local Targ = Mouse.Target
            Cor(function()
                if Targ and Objects[Targ] and not Multi then
                    Grabbing = true
                    Current.Part = Targ
                    local Mass = Objects[Targ]
                    local ForceNum = 0
                    local Hum = nil
                    
                    for _,v in pairs(Targ:GetChildren()) do
                        if BodyObjects[v.ClassName] then
                            v:Destroy()
                        end
                    end
                    
                    for _,v in pairs(Workspace:GetChildren()) do
                        if v:findFirstChild("Humanoid") and v:IsAncestorOf(Targ) then
                            Hum = v.Humanoid
                            Mass = getMass(v, 0)
                            Current.Part = v
                            break
                        end
                    end
                    
                    Current.Mass = Mass
                    
                    if not Hum then
                        Targ:BreakJoints()
                    end
                    
                    ForceNum = Mass * Grav
                    Targ.CanCollide = true
                    Targ.Anchored = false
                    
                    local BP = Instance.new("BodyPosition")
                    BP.maxForce = Vector3.new(3 * ForceNum, 3 * ForceNum, 3 * ForceNum)
                    BP.Parent = Targ
                    
                    local Ang = Instance.new("BodyAngularVelocity")
                    Ang.Parent = Targ
                    
                    Current.BP = BP
                    Current.BA = Ang
                    
                    OrigLS.Parent = nil
                    OrigRS.Parent = nil
                    
                    LS.Parent = Torso
                    RS.Parent = Torso
                    
                    LS.C0 = LS0
                    RS.C0 = RS0
                    
                    local DirDot = Mouse.UnitRay.Direction:Dot(Targ.Position - Mouse.Origin.p)
                    local BPPos = Vector3.new(0, 0, 0)
                    local Vel = Vector3.new(0, 0, 0)
                    local Vlev = random() * math.pi
                    local RPos = Vector3.new(random() * 2 - 1, cos(Vlev), random() * 2 - 1)
                    
                    local Ball        = Instance.new("Part")
                    Ball.Name         = "Ball"
                    Ball.FormFactor   = "Custom"
                    Ball.Color        = Color3.new(0, 0, 0)
                    Ball.Transparency = 1
                    Ball.Anchored     = true
                    Ball.CanCollide   = false
                    Ball.Locked       = true
                    Ball.BottomSurface, Ball.TopSurface = "Smooth", "Smooth"
                    Ball.Size = Vector3.new(0.5, 0.5, 0.5)
                    Ball.CFrame = Torso.CFrame * CFrame.new(0, 1, -3)
                    Ball.Parent = Char

                    if Targ.Name == "MyPartV" then
                        Targ.Name = "MyPartF"
                    end

                    local LightMod = Instance.new("Model", Char)
                        
                    local Mesh = Instance.new("SpecialMesh")
                    Mesh.MeshType = "Sphere"
                    Mesh.Parent = Ball
                    
                    local Size = 1
                    local Rise = true
                    
                    while Grabbing and BP and Ang and Targ.Parent ~= nil do
                        local BPPos = Mouse.Origin.p + Mouse.UnitRay.Direction * DirDot
                        Ang.angularvelocity = Vel
                        BP.position = BPPos + RPos
                        RPos = Vector3.new(max(-1, min(RPos.x + random() * 0.02 - 0.01, 1)), cos(Vlev), max(-1, min(RPos.z + random() * 0.02 - 0.01, 1)))
                        Vel = Vector3.new(max(-1, min(Vel.x + random() * 0.2 - 0.1, 1)), max(-1, min(Vel.y + random() * 0.2 - 0.1, 1)), max(-1, min(Vel.z + random() * 0.2 - 0.1, 1)))
                        Vlev = (Vlev + 0.05) % tau
                        
                        if Hum then
                            Hum.Sit = true
                        end
                        
                        if LA.Parent ~= nil and RA.Parent ~= nil then
                            local LPos = (LA.CFrame * CFrame.new(0, -1, 0)).p
                            local RPos = (RA.CFrame * CFrame.new(0, -1, 0)).p
                            if Rise == true then
                                if Size < 0.6 then
                                    Size = Size + 0.05
                                else
                                    Size = Size + 0.1
                                end
                                if Size >= 2.2 then
                                    Rise = false
                                end
                            else
                                if Size > 2.1 then
                                    Size = Size - 0.05
                                else
                                    Size = Size - 0.1
                                end
                                if Size <= 0.5 then
                                    Rise = true
                                end
                            end
                            Ball.Size = Vector3.new(Size, Size, Size)
                            Ball.CFrame = CFrame.new(LPos:Lerp(RPos, 0.5), Targ.Position) * CFrame.new(0, 0, -2.2)
                            LightNum = LightNum + 1
                            makeLightning(LightMod, Ball.Position, Targ.Position, 0.2, 4, 50, 1, LightNum)
                        elseif Ball.Parent ~= nil then
                            Ball:Destroy()
                        end
                        
                        if LS and LS.Parent == Torso then
                            LS.C0 = CFrame.new(Vector3.new(-1.5, 0.5, 0), Torso.CFrame:pointToObjectSpace((Targ.CFrame or Torso.CFrame * CFrame.new(-1.5, 0.5, 1)).p))
                        end
                        if RS and RS.Parent == Torso then
                            RS.C0 = CFrame.new(Vector3.new(1.5, 0.5, 0), Torso.CFrame:pointToObjectSpace((Targ.CFrame or Torso.CFrame * CFrame.new(1.5, 0.5, 1)).p))
                        end
                        RunService.Heartbeat:wait()
                    end

                    coroutine.resume(coroutine.create(function()
                        for i = 0.5, 1, 0.1 do
                            for i2,v in pairs(LightMod:GetChildren()) do
                                --v.Light.Range = 6-(i*5)
                                v.Transparency = 1
                            end
                            wait(1/30)
                        end
                        LightMod:Destroy()
                    end))
                    
                    if BP and BP.Parent ~= nil then
                        BP:Destroy()
                    end
                    
                    if Ang and Ang.Parent ~= nil then
                        Ang:Destroy()
                    end
                    
                    pcall(function() Ball:Destroy() end)
                end
            end)
        end))
    end)
end

function Add(Obj)
    if Obj:IsA("BasePart") and not Objects[Obj] and not (Obj.Name == "Base" and Obj.ClassName == "Part") then
        Objects[Obj] = Obj:GetMass()
        Obj.Changed:connect(function(P)
            if P:lower() == "size" and Objects[Obj] and Obj.Parent ~= nil then
                Objects[Obj] = Obj:GetMass()
            end
        end)
    end
end

function Rem(Obj)
    if Objects[Obj] then
        Objects[Obj] = nil
    end
end

function Recursion(Obj)
    ypcall(function()
        Add(Obj)
        if #Obj:GetChildren() > 0 then
            for _,v in pairs(Obj:GetChildren()) do 
                Recursion(v)
            end
        end
    end)
end

Workspace.DescendantAdded:connect(function(Obj)
    Add(Obj)
end)

Workspace.DescendantRemoving:connect(function(Obj)
    Rem(Obj)
end)

for _,v in pairs(Workspace:GetChildren()) do
    Recursion(v)
end

Start()

if LP.Name == PlrName then
    LP.CharacterAdded:connect(Start)
end
Char.Humanoid.MaxHealth = 50000
    Char.Humanoid.Health = 50000
    --Responsible for regening a player's humanoid's health

-- declarations
local Figure = script.Parent
local Head = Figure:WaitForChild("Head")
local Humanoid = Figure:WaitForChild("Humanoid")
local regening = false

-- regeneration
function regenHealth()
    if regening then return end
    regening = true
    
    while Humanoid.Health < Humanoid.MaxHealth do
        local s      = wait(0.1)
        local health = Humanoid.Health
        if health > 0 and health < Humanoid.MaxHealth then
            local newHealthDelta = 0.1 * s * Humanoid.MaxHealth
            health               = health + newHealthDelta
            Humanoid.Health      = math.min(health,Humanoid.MaxHealth)
        end
    end
    
    if Humanoid.Health > Humanoid.MaxHealth then
        Humanoid.Health = Humanoid.MaxHealth
    end
    
    regening = false
end

Humanoid.HealthChanged:connect(regenHealth)
Me = game.Players.LocalPlayer
char = Me.Character
larm = char["Left Arm"]
rarm = char["Right Arm"]
lleg = char["Left Leg"]
rleg = char["Right Leg"]
torso = char.Torso



--------------------------

--[[ High Quality Sound Script
--Immune to g/c g/nol/all g/nos/all, and sound doesn't lag --You can also paste your script there and put this in the end.
--- full credits to saud20 --Also, edit friendly so you can place this in your script for a weapon song or somethin
]]
Effects         = {} --sound effects, for advanced players.
local Player    = game.Players.localPlayer
local Character = Player.Character
local Humanoid  = Character.Humanoid
z               = Instance.new("Sound", Character)
z.SoundId       = "rbxassetid://152201694"--
z.Looped        = true --False for a one-time song.
z.Pitch         = 1.3
z.Volume        = 1.3
wait(.1)
z:Play()
------------------------Paste your script here if you want to add a song to your script. VVVVVVV