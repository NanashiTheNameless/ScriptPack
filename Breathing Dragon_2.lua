----Dragon By tjmax1490609
 
local Shared = nil
if not Shared or game.Players.LocalPlayer.Name == Shared then
wait(1/30)
pcall(function()
    game.Players.LocalPlayer.Character.Animate.Disabled = true
end)
local active = true
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local stats = {
    ["Power"] = 10,
    ["HP"] = math.huge,
    ["HPRegen"] = math.huge,
    ["MP"] = math.huge,
    ["MPRegen"] = 10,
    ["MPCharge"] = 20,
    ["WalkSpeed"] = 16
}
local state = {}
local c0 = {
    ["Neck"] = {Vector3.new(0,1.5,0),CFrame.Angles(math.pi/-2,0,0)},
    ["Right Shoulder"] = {Vector3.new(1.5,0.5,0),CFrame.Angles(0,math.pi/2,0)},
    ["Left Shoulder"] = {Vector3.new(-1.5,0.5,0),CFrame.Angles(0,math.pi/-2,0)},
    ["Right Hip"] = {Vector3.new(0.5,-1,0),CFrame.Angles(0,math.pi/2,0)},
    ["Left Hip"] = {Vector3.new(-0.5,-1,0),CFrame.Angles(0,math.pi/-2,0)}
}
local c1 = {
    ["Neck"] = CFrame.Angles(math.pi/-2,0,0),
    ["Right Shoulder"] = CFrame.new(0,0.5,0)*CFrame.Angles(0,math.pi/2,0),
    ["Left Shoulder"] = CFrame.new(0,0.5,0)*CFrame.Angles(0,math.pi/-2,0),
    ["Right Hip"] = CFrame.new(0,1,0)*CFrame.Angles(0,math.pi/2,0),
    ["Left Hip"] = CFrame.new(0,1,0)*CFrame.Angles(0,math.pi/-2,0)
}
local bodyPart = {}
local limb = {}
local humanoidState = {}
local humanoidCurrentState = "Standing"
for _,v in pairs({"Climbing","FallingDown","FreeFalling","GettingUp","Jumping","Ragdoll","Running","Seated","Strafing","Swimming"}) do
    local number = {"Running","Strafing","Climbing","Swimming"}
    for _,p in pairs(number) do number[p] = true end
    humanoidState[v] = {
    ["Connection"] = nil,
    ["Value"] = number[v] and 0 or false}
end
local humanoid
local bpos
local gyro
local bvel
local ui
local skillName = {
    ["z"] = "Iron Fist",
    ["x"] = "Crushing Fang",
    ["c"] = "Flame Elbow",
    ["v"] = "Claw",
        ["g"] = "FireBreath",
        ["f"] = "Eagle",
    ["b"] = "Roar",
    ["n"] = "Wing Attack",
    ["m"] = "Sword Horn"
}
local skillFunc = {
    ["Iron Fist"] = function()
        local cam = workspace.CurrentCamera
        local target = CFrame.new(bodyPart.Torso.Position,mouse.Hit.p)
        local strength = state.MPCharge*stats.Power
        for i=1,5 do
            wait(1/30)
            gyro.cframe = target*CFrame.Angles(-math.pi/3,-math.pi/4,0)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+target.lookVector*2
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(math.pi/6,0,0),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(0,-math.pi/3,math.pi/2),Vector3.new(),0.75)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/8,-math.pi/1.5),Vector3.new(0.25,0,-0.25),0.75)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,-math.pi/6),Vector3.new(0,0.75,-0.75),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,-math.pi/12),Vector3.new(),0.75)
            flame(CFrame.new((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),state.MP,math.min(5,state.MPCharge))
        end
        for i=1,5 do
            wait(1/30)
            local ratio = i/5
            gyro.cframe = target*CFrame.Angles(-math.pi/3,math.pi/2,0)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+target.lookVector*2*(1-ratio)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/5,math.pi/1.5),Vector3.new(-0.5,0,-0.5),0.75)
            translateLimb("Left Shoulder",Vector3.new(-math.pi/6,0,math.pi/24),Vector3.new(),0.75)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,-math.pi/6),Vector3.new(0,0.5,-0.5),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,math.pi/12),Vector3.new(),0.75)
            AoE((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p,math.max(2,math.min(5,state.MPCharge)),strength/10,target.lookVector*strength/10,true)
            flame(CFrame.new((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),state.MP,math.min(5,state.MPCharge))
        end
    end,
    ["Crushing Fang"] = function()
        local cam = workspace.CurrentCamera
        local target = CFrame.new(bodyPart.Torso.Position,mouse.Hit.p)
        local strength = state.MPCharge*stats.Power
        for i=1,5 do
            wait(1/30)
            local ratio = math.min(1,i/3)
            gyro.cframe = target*CFrame.Angles(math.pi/6*ratio,0,math.pi/3*ratio)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+target.lookVector
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Right Shoulder",Vector3.new(0,-math.pi/3,math.pi/2),Vector3.new(),0.75)
            translateLimb("Left Shoulder",Vector3.new(-math.pi/6,0,math.pi/12),Vector3.new(0.25,0,-0.25),0.75)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,-math.pi/12),Vector3.new(0,0.5,-0.25),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,-math.pi/12),Vector3.new(),0.75)
            flame(CFrame.new((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),state.MP,math.min(5,state.MPCharge))
        end
        for i=1,5 do
            wait(1/30)
            local ratio = math.min(1,i/3)
            gyro.cframe = target*CFrame.Angles(math.pi/6-(math.pi+math.pi/6)*ratio,0,math.pi/3)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+target.lookVector*(1-ratio)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/8,math.pi/2),Vector3.new(),0.75)
            translateLimb("Left Shoulder",Vector3.new(-math.pi/6,0,math.pi/12),Vector3.new(0.25,0,-0.25),0.75)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,-math.pi/12),Vector3.new(0,0.5,-0.25),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,-math.pi/12),Vector3.new(),0.75)
            AoE((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p,math.max(2,math.min(5,state.MPCharge)),strength/50,target.lookVector*strength/500,true)
            flame(CFrame.new((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),state.MP,math.min(5,state.MPCharge))
        end
    end,
    ["Flame Elbow"] = function()
        local cam = workspace.CurrentCamera
        local cf = bodyPart.Torso.CFrame
        local lookXZ = CFrame.new(cf.p,mouse.Hit.p*Vector3.new(1,0,1)+Vector3.new(0,cf.p.y,0))
        local strength = state.MPCharge*stats.Power
        function booster(size)
            local dir = bodyPart["Right Arm"].CFrame
            local maxSize = math.min(10,math.ceil(size/2))
            for i=1,maxSize do
                wait(1/30)
                local ratio = i/maxSize
                local pos = (dir*CFrame.new(0,1+i*math.min(30,math.max(2,size*ratio))/4,0)).p
                flame(CFrame.new(pos)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),9,size*ratio)
                AoE(pos,math.max(2,size*ratio),strength/100,(dir*CFrame.Angles(math.pi/2,0,0)).lookVector*strength/1000)
            end
        end
        for i=1,30 do
            wait(1/30)
            gyro.cframe = lookXZ*CFrame.Angles(0,-math.pi/3,0)
            bodyPart.Torso.CFrame = (bodyPart.Torso.CFrame-bodyPart.Torso.CFrame.p)+cf.p
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(0,0,math.pi/4),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/3,math.pi/2),Vector3.new(-0.25,0,-0.5),0.75)
            translateLimb("Left Shoulder",Vector3.new(-math.pi/6,0,math.pi/12),Vector3.new(),0.75)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,0),Vector3.new(),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,0),Vector3.new(),0.75)
            if i > 3 then
                coroutine.wrap(booster)(i)
            end
        end
        for i=1,5 do
            wait(0.01)
            gyro.cframe = lookXZ*CFrame.Angles(0,math.pi/2,0)
            bodyPart.Torso.CFrame = lookXZ*CFrame.new(0,0,-5*i)*CFrame.Angles(0,math.pi/2,0)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(),Vector3.new(),0.9)
            translateLimb("Right Shoulder",Vector3.new(0,-math.pi/2,math.pi/2),Vector3.new(),0.9)
            translateLimb("Left Shoulder",Vector3.new(-math.pi/6,0,math.pi/12),Vector3.new(),0.9)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,0),Vector3.new(),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,0),Vector3.new(),0.75)
            AoE((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p,2,strength*10,lookXZ.lookVector*strength*100,true)
        end
    end,
    ["Eagle"] = function()
        local cam = workspace.CurrentCamera
        local target = CFrame.new(bodyPart.Torso.Position,mouse.Hit.p)
        local strength = state.MPCharge*stats.Power
        for i=1,5 do
            wait(1/30)
            gyro.cframe = target*CFrame.Angles(-math.pi/3,-math.pi/4,0)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+target.lookVector*2
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(math.pi/6,0,0),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(0,-math.pi/3,math.pi/2),Vector3.new(),0.75)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/8,-math.pi/1.5),Vector3.new(0.25,0,-0.25),0.75)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,-math.pi/6),Vector3.new(0,0.75,-0.75),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,-math.pi/12),Vector3.new(),0.75)
            flame(CFrame.new((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),state.MP,math.min(5,state.MPCharge))
        end
                for i=1,5 do
            wait(1/30)
            gyro.cframe = target*CFrame.Angles(-math.pi/3,-math.pi/4,0)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+target.lookVector*2
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(math.pi/6,0,0),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(0,-math.pi/7,math.pi/1),Vector3.new(),0.75)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/8,-math.pi/3),Vector3.new(0.50,0,-0.30),0.90)
            translateLimb("Right Hip",Vector3.new(-math.pi/6,0,-math.pi/6),Vector3.new(0,0.75,-0.20),0.50)
            translateLimb("Left Hip",Vector3.new(-math.pi/6,0,-math.pi/12),Vector3.new(),0.50)
                        AoE((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p,math.max(2,math.min(5,state.MPCharge)),strength/10,target.lookVector*strength/10,true)
        end
        for i=1,5 do
            wait(1/30)
            local ratio = i/5
            gyro.cframe = target*CFrame.Angles(-math.pi/3,math.pi/2,0)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+target.lookVector*2*(1-ratio)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/5,math.pi/1.5),Vector3.new(-0.5,0,-0.5),0.75)
            translateLimb("Left Shoulder",Vector3.new(-math.pi/6,0,math.pi/24),Vector3.new(),0.75)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,-math.pi/6),Vector3.new(0,0.5,-0.5),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,math.pi/12),Vector3.new(),0.75)
                        explosion((bodyPart["Right Arm"]),5,2,0)
            AoE((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p,math.max(2,math.min(5,state.MPCharge)),strength/10,target.lookVector*strength/10,true)
            flame(CFrame.new((bodyPart["Right Arm"].CFrame*CFrame.new(0,-1,0)).p)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),state.MP,math.min(5,state.MPCharge))
        end
    end,
    ["Claw"] = function()
        local cam = workspace.CurrentCamera
        local target = CFrame.new(bodyPart.Torso.Position,mouse.Hit.p)
        local strength = state.MPCharge*stats.Power
        for i=1,10 do
            wait(1/30)
            local hit,pos = advRay(bodyPart.Torso.Position,target.lookVector*5,{player.Character})
            gyro.cframe = target*CFrame.Angles(0,math.pi/2,math.pi/3)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+target.lookVector*(bodyPart.Torso.Position-pos).magnitude
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(0,math.pi/12,-math.pi/3),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(-math.pi/3,0,0),Vector3.new(),0.75)
            translateLimb("Left Shoulder",Vector3.new(-math.pi/3,0,0),Vector3.new(0.25,0,-0.25),0.75)
            translateLimb("Right Hip",Vector3.new(-math.pi/8,0,0),Vector3.new(),0.75)
            translateLimb("Left Hip",Vector3.new(math.pi/8,0,-math.pi/12),Vector3.new(-0.5,0.5,0),0.75)
            AoE((bodyPart["Right Leg"].CFrame*CFrame.new(0,-1,0)).p,math.max(2,math.min(5,state.MPCharge)),strength/10,target.lookVector*strength/10,true)
            flame(CFrame.new((bodyPart["Right Leg"].CFrame*CFrame.new(0,-1,0)).p)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),state.MP,math.min(5,state.MPCharge))
            if hit then
                bodyPart.Torso.Velocity = bodyPart.Torso.Velocity+Vector3.new(0,60,0)-target.lookVector*20
                break
            end
        end
    end,
            ["FireBreath"] = function()
        local cam = workspace.CurrentCamera
        local mouseHit = mouse.Hit.p
        local cf = bodyPart.Torso.CFrame
        local lookXZ = CFrame.new(cf.p,mouseHit*Vector3.new(1,0,1)+Vector3.new(0,cf.p.y,0))
        local target = (mouseHit-cf.p).unit
        local dir = math.pi/2-math.acos(target.y)
        local strength = state.MPCharge*stats.Power
        for i=1,50 do
            wait(1/30)
            local ratio = math.sin(i/100*math.pi)
            local offset = math.sin(-ratio*math.pi/8)
            gyro.cframe = lookXZ*CFrame.Angles(math.pi/4*ratio,0,0)
            bodyPart.Torso.CFrame = lookXZ*CFrame.new(0,offset,-offset)*CFrame.Angles(math.pi/4*ratio,0,0)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(math.pi/12*ratio,0,0),Vector3.new(),1)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/12,-math.pi/12),Vector3.new(),0.5)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/12,math.pi/12),Vector3.new(),0.5)
            translateLimb("Right Hip",Vector3.new(-math.pi/24,0,-math.pi/4*ratio),Vector3.new(),1)
            translateLimb("Left Hip",Vector3.new(-math.pi/24,0,math.pi/4*ratio),Vector3.new(),1)
        end
        for i=1,5 do
            wait(1/30)
            local ratio = 1-i/5
            local offset = math.sin(i/5*dir)+math.sin(-ratio*math.pi/8)
            local rot = dir*i/5
            gyro.cframe = lookXZ*CFrame.Angles(math.pi/4*ratio+rot,0,0)
            bodyPart.Torso.CFrame = lookXZ*CFrame.new(0,-math.abs(offset),offset)*CFrame.Angles(math.pi/4*ratio+rot,0,0)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(math.pi/12*ratio,0,0),Vector3.new(),1)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/3,math.pi/1.5),Vector3.new(-0.75,0,-0.5),0.5)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/3.5,-math.pi/1.5),Vector3.new(0.75,0,-0.5),0.5)
            translateLimb("Right Hip",Vector3.new(-math.pi/24,0,-math.pi/4*ratio-rot),Vector3.new(),1)
            translateLimb("Left Hip",Vector3.new(-math.pi/24,0,math.pi/4*ratio+rot),Vector3.new(),1)
        end
        --rune(bodyPart.Head.CFrame*CFrame.new(0,0,-3)*CFrame.Angles(math.pi/2,0,0),5,13/3)
        for i=1,50 do
            wait(1/30)
            mouseHit = mouseHit:Lerp(mouse.Hit.p,0.1)
            lookXZ = CFrame.new(cf.p,mouseHit*Vector3.new(1,0,1)+Vector3.new(0,cf.p.y,0))
            target = (mouseHit-cf.p).unit
            dir = math.pi/2-math.acos(target.y)
            local offset = math.sin(dir)
            gyro.cframe = lookXZ*CFrame.Angles(dir,0,0)
            bodyPart.Torso.CFrame = lookXZ*CFrame.new(0,-math.abs(offset),offset)*CFrame.Angles(dir,0,0)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(),Vector3.new(),1)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/3,math.pi/1.5),Vector3.new(-0.75,0,-0.5),0.5)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/3.5,-math.pi/1.5),Vector3.new(0.75,0,-0.5),0.5)
            translateLimb("Right Hip",Vector3.new(-math.pi/24,0,-dir),Vector3.new(),0.5)
            translateLimb("Left Hip",Vector3.new(-math.pi/24,0,dir),Vector3.new(),0.5)
            coroutine.wrap(function()
                local direction = bodyPart.Head.CFrame
                for n=1,10 do
                    wait(1/30)
                    local scale = math.min(30,n*3)
                    flame(CFrame.new((direction*CFrame.new(0,0,-5-n*scale/4)).p)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),9,scale)
                    AoE((direction*CFrame.new(0,0,-5-n*scale/4)).p,scale,strength/100,target*strength/1000,false)
                end
            end)()
        end
    end,
    ["Roar"] = function()
        local cam = workspace.CurrentCamera
        local mouseHit = mouse.Hit.p
        local cf = bodyPart.Torso.CFrame
        local lookXZ = CFrame.new(cf.p,mouseHit*Vector3.new(1,0,1)+Vector3.new(0,cf.p.y,0))
        local target = (mouseHit-cf.p).unit
        local dir = math.pi/2-math.acos(target.y)
        local strength = state.MPCharge*stats.Power
        for i=1,50 do
            wait(1/30)
            local ratio = math.sin(i/100*math.pi)
            local offset = math.sin(-ratio*math.pi/8)
            gyro.cframe = lookXZ*CFrame.Angles(math.pi/4*ratio,0,0)
            bodyPart.Torso.CFrame = lookXZ*CFrame.new(0,offset,-offset)*CFrame.Angles(math.pi/4*ratio,0,0)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(math.pi/12*ratio,0,0),Vector3.new(),1)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/12,-math.pi/12),Vector3.new(),0.5)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/12,math.pi/12),Vector3.new(),0.5)
            translateLimb("Right Hip",Vector3.new(-math.pi/24,0,-math.pi/4*ratio),Vector3.new(),1)
            translateLimb("Left Hip",Vector3.new(-math.pi/24,0,math.pi/4*ratio),Vector3.new(),1)
        end
        for i=1,5 do
            wait(1/30)
            local ratio = 1-i/5
            local offset = math.sin(i/5*dir)+math.sin(-ratio*math.pi/8)
            local rot = dir*i/5
            gyro.cframe = lookXZ*CFrame.Angles(math.pi/4*ratio+rot,0,0)
            bodyPart.Torso.CFrame = lookXZ*CFrame.new(0,-math.abs(offset),offset)*CFrame.Angles(math.pi/4*ratio+rot,0,0)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(math.pi/12*ratio,0,0),Vector3.new(),1)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/3,math.pi/1.5),Vector3.new(-0.75,0,-0.5),0.5)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/3.5,-math.pi/1.5),Vector3.new(0.75,0,-0.5),0.5)
            translateLimb("Right Hip",Vector3.new(-math.pi/24,0,-math.pi/4*ratio-rot),Vector3.new(),1)
            translateLimb("Left Hip",Vector3.new(-math.pi/24,0,math.pi/4*ratio+rot),Vector3.new(),1)
        end
        --rune(bodyPart.Head.CFrame*CFrame.new(0,0,-3)*CFrame.Angles(math.pi/2,0,0),5,13/3)
        for i=1,50 do
            wait(1/30)
            mouseHit = mouseHit:Lerp(mouse.Hit.p,0.1)
            lookXZ = CFrame.new(cf.p,mouseHit*Vector3.new(1,0,1)+Vector3.new(0,cf.p.y,0))
            target = (mouseHit-cf.p).unit
            dir = math.pi/2-math.acos(target.y)
            local offset = math.sin(dir)
            gyro.cframe = lookXZ*CFrame.Angles(dir,0,0)
            bodyPart.Torso.CFrame = lookXZ*CFrame.new(0,-math.abs(offset),offset)*CFrame.Angles(dir,0,0)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(),Vector3.new(),1)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/3,math.pi/1.5),Vector3.new(-0.75,0,-0.5),0.5)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/3.5,-math.pi/1.5),Vector3.new(0.75,0,-0.5),0.5)
            translateLimb("Right Hip",Vector3.new(-math.pi/24,0,-dir),Vector3.new(),0.5)
            translateLimb("Left Hip",Vector3.new(-math.pi/24,0,dir),Vector3.new(),0.5)
            coroutine.wrap(function()
                local direction = bodyPart.Head.CFrame
                for n=1,10 do
                    wait(1/30)
                    local scale = math.min(30,n*3)
                    flame(CFrame.new((direction*CFrame.new(0,0,-5-n*scale/4)).p)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),9,scale)
                    AoE((direction*CFrame.new(0,0,-5-n*scale/4)).p,scale,strength/100,target*strength/1000,false)
                end
            end)()
        end
    end,
    ["Wing Attack"] = function()
        local cam = workspace.CurrentCamera
        local cf = bodyPart.Torso.CFrame
        local lookXZ = CFrame.new(cf.p,mouse.Hit.p*Vector3.new(1,0,1)+Vector3.new(0,cf.p.y,0))
        local target = CFrame.new(cf.p,mouse.Hit.p)
        local strength = state.MPCharge*stats.Power
        for i=1,5 do
            wait(1/30)
            gyro.cframe = lookXZ*CFrame.Angles(-math.pi/6,0,0)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+(lookXZ*CFrame.Angles(math.pi/6,0,0)).lookVector*3
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(math.pi/12,0,0),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/3,math.pi/1.5),Vector3.new(),0.75)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/4,-math.pi/1.5),Vector3.new(),0.75)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,-math.pi/6),Vector3.new(0,0.75,-0.75),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,-math.pi/12),Vector3.new(),0.75)
        end
        function wing()
            local dir1 = bodyPart["Right Arm"].CFrame
            local dir2 = bodyPart["Left Arm"].CFrame
            for n=1,10 do
                wait(1/30)
                if dir1 then
                    local hit,pos = advRay(dir1.p,(dir1*CFrame.new(0,-1-n*5,0)).p-dir1.p,{player.Character})
                    flame(CFrame.new(pos)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),9,10,true)
                    AoE(pos,hit and 20 or 10,strength/(hit and 1 or 10),(dir1*CFrame.Angles(-math.pi,0,0)).lookVector*strength/10,true)
                    if hit then
                        local x = Instance.new("Explosion",workspace)
                        x.Position = pos
                        x.BlastPressure = 0
                        x.BlastRadius = 3
                        dir1 = nil
                    end
                end
                if dir2 then
                    local hit,pos = advRay(dir2.p,(dir2*CFrame.new(0,-1-n*5,0)).p-dir2.p,{player.Character})
                    flame(CFrame.new(pos)*CFrame.Angles((math.random()-0.5)*math.pi/4,0,(math.random()-0.5)*math.pi/4),9,10,true)
                    AoE(pos,hit and 20 or 10,strength/(hit and 1 or 10),(dir2*CFrame.Angles(-math.pi,0,0)).lookVector*strength/(hit and 1 or 10),true)
                    if hit then
                        local x = Instance.new("Explosion",workspace)
                        x.Position = pos
                        x.BlastPressure = 0
                        x.BlastRadius = 3
                        dir2 = nil
                    end
                end
                if not dir1 and not dir2 then break end
            end
        end
        for i=1,10 do
            wait(1/30)
            local ratio = i/10
            gyro.cframe = lookXZ*CFrame.Angles(-math.pi/6+math.pi/3*ratio,0,0)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+(lookXZ*CFrame.Angles(math.pi/6,0,0)).lookVector*3
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(-math.pi/12,0,0),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/12,math.pi*1.25),Vector3.new(),0.5)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/12,-math.pi*1.25),Vector3.new(),0.5)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,-math.pi/12),Vector3.new(),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,math.pi/12),Vector3.new(),0.75)
            if i > 3 then
                coroutine.wrap(wing)()
            end
        end
        for i=1,10 do
            wait(1/30)
            gyro.cframe = lookXZ*CFrame.Angles(math.pi/6-(math.pi/3+math.pi/6)*math.min(1,i/3),0,0)
            bodyPart.Torso.CFrame = bodyPart.Torso.CFrame+(lookXZ*CFrame.Angles(math.pi/6,0,0)).lookVector*3*(1-i/10)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Neck",Vector3.new(math.pi/12,0,0),Vector3.new(),0.75)
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/12,-math.pi/6),Vector3.new(),0.25)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/12,math.pi/6),Vector3.new(),0.25)
            translateLimb("Right Hip",Vector3.new(-math.pi/12,0,-math.pi/12),Vector3.new(),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/12,0,math.pi/12),Vector3.new(),0.75)
            coroutine.wrap(wing)()
        end
        bodyPart.Torso.Velocity = lookXZ.lookVector*20
    end
}
function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(Region3.new(point-Vector3.new(1,1,1)*range/2,point+Vector3.new(1,1,1)*range/2),ignore,100)
end
function getHumanoid(v)
    if v and v.Parent then
        local h = v.Parent:findFirstChild("Humanoid") or v.Parent.Parent:findFirstChild("Humanoid")
        if not h then
            for _,p in ipairs(v.Parent:GetChildren()) do
                if p:isA("Humanoid") then
                    h = p
                end
            end
            if not h and v.Parent.Parent and v.Parent.Parent ~= game and v.Parent.Parent ~= workspace then
                for _,p in ipairs(v.Parent.Parent:GetChildren()) do
                    if p:isA("Humanoid") then
                        h = p
                    end
                end
            end
        end
        return h
    end
end
function advRay(start,point)
    local dis = (start-(start+point)).magnitude
    local dir = ((start+point)-start).unit
    if dis > 999 then
        dis = 999
    end
    point = dis*dir
    hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(start,point),{player.Character})
    if hit and not hit.CanCollide and not getHumanoid(hit) then
        function persistentRay(list)
            hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(start,point),{player.Character,unpack(list)})
            if hit and not hit.CanCollide and not getHumanoid(hit) then
                hit,pos = persistentRay({hit,unpack(list)})
            end
            return hit,pos
        end
        hit,pos = persistentRay({hit})
    end
    return hit,pos
end
function AoE(point,radius,damage,push,trip)
    ypcall(function()
        local push = push or Vector3.new()
        local hit = getRegion(point,radius,{player.Character})
        local humanoidList = {}
        for _,v in pairs(hit) do
            local h = getHumanoid(v)
            if not v.Anchored then
                if h then
                    if not humanoidList[h] then
                        humanoidList[h] = true
                        h:TakeDamage(damage)
                        if h.Parent:findFirstChild("Torso") and h.Parent.Torso:isA("BasePart") then
                            if push.magnitude > 0 then
                                local v = Instance.new("BodyVelocity",h.Parent.Torso)
                                v.maxForce = Vector3.new(1,1,1)*10000000000
                                v.velocity = push/0.1
                                game.Debris:AddItem(v,0.1)
                            end
                            if trip then
                                local v = Instance.new("BodyAngularVelocity",h.Parent.Torso)
                                v.maxTorque = Vector3.new(1,1,1)*10000000000
                                v.angularvelocity = Vector3.new(math.pi,0,math.pi)/0.1
                                game.Debris:AddItem(v,0.1)
                            end
                        end
                    end
                else v:BreakJoints()
                    v.Velocity = v.Velocity+push/v:GetMass()
                end
            end
        end
    end)
end
function preloadCharacter()
    humanoid = player.Character.Humanoid
    state = {
        ["Move"] = "Iron Fist",
        ["CD"] = 0,
        ["MP"] = 0,
        ["MPCharge"] = 0,
        ["LastCharge"] = 0,
        ["Falling"] = false,
        ["W"] = 0,
        ["A"] = 0,
        ["S"] = 0,
        ["D"] = 0,
        ["J"] = 0,
        ["Sprint"] = false,
        ["Charge"] = false,
        ["Skill"] = false
    }
    for _,v in pairs({"Head","Torso","Right Arm","Left Arm","Right Leg","Left Leg"}) do
        bodyPart[v] = player.Character:findFirstChild(v)
    end
    for _,v in pairs({"Neck","Right Shoulder","Left Shoulder","Right Hip","Left Hip"}) do
        if bodyPart.Torso:findFirstChild(v) then
            limb[v] = {
                ["Weld"] = bodyPart.Torso[v],
                ["Rotation"] = Vector3.new(),
                ["Offset"] = Vector3.new(),
                ["C0"] = c0[v],
                ["C1"] = c1[v]
            }
            bodyPart.Torso[v].DesiredAngle = 0
        end
    end
    for n,v in pairs(humanoidState) do
        pcall(function() v.Connection:disconnect() end)
        v.Connection = humanoid[n]:connect(function(p)
            local running = nil
            if string.match("RunningStrafingClimbingSwimming",n) then
                if p > 0.1 then
                    running = n == "Climbing" and n or "Running"
                else running = "Standing"
                end
            end
            local falling = string.match("JumpingGettingUpFreeFallingFallingDown",n) and "Falling"
            humanoidCurrentState = running or falling or n
            v.Value = p
        end)
    end
    bpos = Instance.new("BodyPosition",bodyPart.Torso)
    bpos.D = 200
    bpos.maxForce = Vector3.new(0,99999,0)
    bpos.position = bodyPart.Torso.Position
    gyro = Instance.new("BodyGyro",bodyPart.Torso)
    gyro.D = 100
    gyro.maxTorque = Vector3.new(1,1,1)*99999
    gyro.cframe = bodyPart.Torso.CFrame
    bvel = Instance.new("BodyVelocity",bodyPart.Torso)
    bvel.maxForce = Vector3.new(1,0,1)*9999
    bvel.velocity = Vector3.new()
    ui = Instance.new("ScreenGui",player.PlayerGui)
    local txt = Instance.new("TextLabel",ui)
    txt.Name = "MP"
    txt.BackgroundTransparency = 1
    txt.Position = UDim2.new(0,210,1,-60)
    txt.Font = "ArialBold"
    txt.FontSize = "Size18"
    txt.Text = "Magic Power: 0"
    txt.TextColor3 = Color3.new(1,1,1)
    txt.TextStrokeTransparency = 0.9
    txt.TextXAlignment = "Left"
    txt.TextYAlignment = "Bottom"
    local txt = txt:Clone()
    txt.Name = "Charge"
    txt.Text = "Charge: 0"
    txt.Position = UDim2.new(0,210,1,-80)
    txt.Parent = ui
    local txt = txt:Clone()
    txt.Name = "Move"
    txt.Text = "Move: Iron Fist"
    txt.Position = UDim2.new(0,210,1,-100)
    txt.Parent = ui
end
preloadCharacter()
function translateLimb(v,rot,pos,alpha)
    rot = rot or limb[v].Rotation
    pos = pos or limb[v].Offset
    limb[v].Rotation = limb[v].Rotation:Lerp(rot,alpha)
    limb[v].Offset = limb[v].Offset:Lerp(pos,alpha)
end
function rune(cf,size,lifespan)
    coroutine.wrap(function()
        local p = Instance.new("Part")
        plight = Instance.new("PointLight",p)
        plight.Color = BrickColor.new("Bright red").Color
        p.formFactor = 0
        p.Size = Vector3.new()
        p.BrickColor = BrickColor.new("Bright red")
        p.Anchored = true
        p.Locked = true
        p.CanCollide = false
        p.CFrame = cf*CFrame.Angles(math.pi/2,0,0)
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Parent = player.Character
        local m = Instance.new("SpecialMesh",p)
        local wave = p:Clone()
        wave.CFrame = cf
        wave.Parent = player.Character
        wave.Mesh.MeshType = Enum.MeshType.Sphere
        wave.Mesh.Scale = Vector3.new(0,size/10,0)
        m.MeshId = "http://www.roblox.com/asset/?id=47260990"
        m.Scale = Vector3.new(size,size,size/10)
        p.Transparency = 1
        game.Debris:AddItem(p)
        game.Debris:AddItem(wave)
        for i=1,5 do
            p.Transparency = 1-math.sin(i/10*math.pi)*0.75
            p.CFrame = p.CFrame*CFrame.Angles(0,0,(i/5)*math.pi/12)
            wave.Mesh.Scale = Vector3.new(size*i,size/10,size*i)/2
            wave.Transparency = i/5
            wait(1/30)
        end
        wave:Remove()
        delay(lifespan,function()
            for i=1,20 do
                local ratio = math.sin(i/40*math.pi)*0.75
                p.Transparency = 0.25+ratio
                wait(1/30)
            end
            p:Remove()
        end)
    end)()
end
function explosion(where,heat,size,pres)
        a = Instance.new("Explosion",Workspace)
        a.BlastRadius = size
        a.BlastPressure = pres
        a.Position = where.Position
    local f = Instance.new("Fire",p)
    f.Size = size
    f.Heat = heat
        f:Remove()
end
function flame(cf,heat,size,instant)
    local p = Instance.new("Part")
    p.formFactor = 3
    p.Anchored = true
    p.CanCollide = false
    p.Locked = true
    p.Transparency = 1
    p.Size = Vector3.new()
    p.CFrame = cf
    p.Parent = player.Character
    local f = Instance.new("Fire",p)
    f.Size = size
    f.Heat = heat
    game.Debris:AddItem(p,1.1)
    delay(0.1,function()
        f.Enabled = false
        if instant then
            p:Destroy()
        end
    end)
end
mouse.KeyDown:connect(function(key)
    state.W = key == "w" and 1 or state.W
    state.A = key == "a" and 1 or state.A
    state.S = key == "s" and 1 or state.S
    state.D = key == "d" and 1 or state.D
    state.J = key == " " and 1 or state.J
    state.Sprint = key == "q" or state.Sprint
    if skillName[key] and not state.Skill then
        state.Move = skillName[key]
        ui.Move.Text = "Move: "..skillName[key]
        if state.CD > 0 and not state.Charge and state.MP > 0 then
            state.MPCharge = math.min(state.MP,state.LastCharge)
            ui.Charge.Text = "Charge: "..state.MPCharge
            state.Skill = true
            ypcall(function()
                skillFunc[state.Move]()
            end)
            state.Skill = false
            state.CD = state.MP > 0 and 0.2 or 0
            state.MP = math.max(0,state.MP-state.MPCharge)
            state.LastCharge = state.MPCharge
            state.MPCharge = 0
            ui.Charge.Text = "Charge: 0"
        end
    end
end)
mouse.KeyUp:connect(function(key)
    state.W = key == "w" and 0 or state.W
    state.A = key == "a" and 0 or state.A
    state.S = key == "s" and 0 or state.S
    state.D = key == "d" and 0 or state.D
    state.J = key == " " and 0 or state.J
    if key == "q" then
        state.Sprint = false
    end
end)
mouse.Button1Down:connect(function()
    if not state.Skill then
        state.Charge = true
    end
end)
mouse.Button1Up:connect(function()
    if not state.Skill and state.Charge then
        state.Charge = false
        state.Skill = true
        delay(1/30,function()
            rune(bodyPart.Torso.CFrame-Vector3.new(0,2.5,0),20,1)
        end)
        local pos = bodyPart.Torso.Position
        for i=1,10 do
            wait(1/30)
            bodyPart.Torso.CFrame = CFrame.new(pos,pos+bodyPart.Torso.CFrame.lookVector)
            bodyPart.Torso.Velocity = Vector3.new()
            translateLimb("Right Shoulder",Vector3.new(0,math.pi/2.5+(math.random()-0.5)*math.pi/48,math.pi/2+(math.random()-0.5)*math.pi/48),Vector3.new(-0.25,0,-0.75),0.9)
            translateLimb("Left Shoulder",Vector3.new(0,-math.pi/2.5+(math.random()-0.5)*math.pi/48,-math.pi/2+(math.random()-0.5)*math.pi/48),Vector3.new(0.25,0,-0.75),0.9)
            translateLimb("Right Hip",Vector3.new(-math.pi/48,0,0),Vector3.new(),0.75)
            translateLimb("Left Hip",Vector3.new(-math.pi/48,0,0),Vector3.new(),0.75)
        end
        ypcall(function()
            skillFunc[state.Move]()
        end)
        state.Skill = false
        state.CD = 0.2
        state.MP = math.max(0,state.MP-state.MPCharge)
        state.LastCharge = state.MPCharge
        state.MPCharge = 0
        ui.Charge.Text = "Charge: 0"
    end
end)
while active do
    local t = wait(1/30)
    state.CD = math.max(0,state.CD-t)
    humanoid.PlatformStand = true
    local cam = workspace.CurrentCamera
    local pos = bodyPart.Torso.Position
    local camXZ = CFrame.new(pos,pos+cam.CoordinateFrame.lookVector*Vector3.new(1,0,1))
    local platform,pos = advRay(bodyPart.Torso.Position,Vector3.new(0,state.Falling and ((bodyPart.Torso.Velocity.y*t))-4.5 or -4.5,0))
    --local platform,pos = advRay(bodyPart.Torso.Position,Vector3.new(0,-4.5,0))
    local moveZ = (not state.Charge and not state.Skill) and state.W-state.S or 0
    local moveX = (not state.Charge and not state.Skill) and state.A-state.D or 0
    local jump = (not state.Charge and not state.Skill) and state.J or 0
    state.Falling = not platform
    bpos.maxForce = Vector3.new(0,(state.Falling and 0 or 1)*(1-jump),0)*99999*(state.Skill and 0 or 1)
    bpos.position = Vector3.new(0,pos.y+3,0)
    bvel.maxForce = Vector3.new(1,state.J*10,1)*9999*(state.Falling and 0 or 1)
    bvel.velocity = ((moveZ == 0 and moveX == 0) and Vector3.new() or (camXZ.lookVector*moveZ+(camXZ*CFrame.Angles(0,math.pi/2,0)).lookVector*moveX).unit*stats.WalkSpeed)+Vector3.new(0,jump*40,0)
    local pos = bodyPart.Torso.Position
    if not state.Skill then
        gyro.cframe = camXZ
        if state.CD <= 0 then
            state.MP = math.min(stats.MP,state.MP+stats.MPRegen*t)
        end
        if state.Charge then
            state.MPCharge = math.min(state.MP,state.MPCharge+stats.MPCharge*t)
            ui.Charge.Text = "Charge: "..state.MPCharge
            translateLimb("Right Shoulder",Vector3.new(0,-math.pi/4+(math.random()-0.5)*math.pi/48,math.pi/2+(math.random()-0.5)*math.pi/48),Vector3.new(),0.5)
            translateLimb("Left Shoulder",Vector3.new(0,math.pi/4+(math.random()-0.5)*math.pi/48,-math.pi/2+(math.random()-0.5)*math.pi/48),Vector3.new(),0.5)
            translateLimb("Right Hip",Vector3.new(-math.pi/48,0,0),Vector3.new(),0.5)
            translateLimb("Left Hip",Vector3.new(-math.pi/48,0,0),Vector3.new(),0.5)
        else translateLimb("Neck",Vector3.new(),Vector3.new(),0.25)
            if state.Falling then
                translateLimb("Right Shoulder",Vector3.new(-math.pi/12,0,0),Vector3.new(),0.5)
                translateLimb("Left Shoulder",Vector3.new(-math.pi/12,0,0),Vector3.new(),0.5)
                translateLimb("Right Hip",Vector3.new(0,0,math.pi/24),Vector3.new(0,0.25,-0.25),0.5)
                translateLimb("Left Hip",Vector3.new(0,0,math.pi/24),Vector3.new(),0.5)
            elseif moveZ > 0 then
                if state.Sprint then
                    bvel.velocity = bvel.velocity*Vector3.new(3,1,3)
                    local ratio = math.sin(tick()*math.pi*5)
                    local swing = math.pi/2
                    gyro.cframe = gyro.cframe*CFrame.Angles(-math.pi/3,ratio*swing/4,0)
                    translateLimb("Right Shoulder",Vector3.new(0,math.max(0,ratio*swing/1.5),math.pi/6+ratio*swing*2),Vector3.new(),0.25)
                    translateLimb("Left Shoulder",Vector3.new(0,math.min(0,ratio*swing/1.5),-math.pi/6+ratio*swing*2),Vector3.new(),0.25)
                    translateLimb("Right Hip",Vector3.new(0,0,math.pi/6-ratio*swing*1.5),Vector3.new(),0.25)
                    translateLimb("Left Hip",Vector3.new(0,0,-math.pi/6-ratio*swing*1.5),Vector3.new(),0.25)
                else local ratio = math.sin(tick()*math.pi*3)
                    local swing = math.pi/4
                    gyro.cframe = gyro.cframe*CFrame.Angles(0,ratio*swing/12,0)
                    translateLimb("Right Shoulder",Vector3.new(0,math.max(0,ratio*swing/3),ratio*swing),Vector3.new(),0.25)
                    translateLimb("Left Shoulder",Vector3.new(0,math.min(0,ratio*swing/3),ratio*swing),Vector3.new(),0.25)
                    translateLimb("Right Hip",Vector3.new(0,0,-ratio*swing),Vector3.new(),0.25)
                    translateLimb("Left Hip",Vector3.new(0,0,-ratio*swing),Vector3.new(),0.25)
                end
            elseif moveZ < 0 then
                local ratio = math.sin(-tick()*math.pi*3)
                local swing = math.pi/4
                gyro.cframe = gyro.cframe*CFrame.Angles(math.pi/24,ratio*swing/12,0)
                translateLimb("Right Shoulder",Vector3.new(0,math.max(0,ratio*swing/3),ratio*swing),Vector3.new(),0.25)
                translateLimb("Left Shoulder",Vector3.new(0,math.min(0,ratio*swing/3),ratio*swing),Vector3.new(),0.25)
                translateLimb("Right Hip",Vector3.new(0,0,-ratio*swing),Vector3.new(),0.25)
                translateLimb("Left Hip",Vector3.new(0,0,-ratio*swing),Vector3.new(),0.25)
            elseif moveX ~= 0 then
                local ratio = math.sin(tick()*math.pi*3)*moveX
                local swing = math.pi/6
                gyro.cframe = gyro.cframe*CFrame.Angles(0,ratio*swing/12,0)
                translateLimb("Right Shoulder",Vector3.new(-math.pi/12,0,0),Vector3.new(),0.25)
                translateLimb("Left Shoulder",Vector3.new(-math.pi/12,0,0),Vector3.new(),0.25)
                translateLimb("Right Hip",Vector3.new(ratio*swing,0,math.max(0,ratio*swing/2)),Vector3.new(),0.25)
                translateLimb("Left Hip",Vector3.new(ratio*swing,0,math.max(0,ratio*swing/2)),Vector3.new(),0.25)
            else local ratio = math.sin(tick()*math.pi/2)
                local swing = math.pi/48
                translateLimb("Right Shoulder",Vector3.new(-swing+ratio*swing,0,0),Vector3.new(),0.125)
                translateLimb("Left Shoulder",Vector3.new(-swing+ratio*swing,0,0),Vector3.new(),0.125)
                translateLimb("Right Hip",Vector3.new(),Vector3.new(),0.125)
                translateLimb("Left Hip",Vector3.new(),Vector3.new(),0.125)
            end
        end
    end
    ui.MP.Text = "Magic Power: "..state.MP
    for _,v in pairs(limb) do
        v.Weld.C0 = CFrame.new(v.C0[1]+v.Offset)*v.C0[2]*CFrame.Angles(v.Rotation.x,v.Rotation.y,v.Rotation.z)
        v.Weld.C1 = v.C1
    end
end
else script:Clone().Parent = game.Players[Shared].Character
end