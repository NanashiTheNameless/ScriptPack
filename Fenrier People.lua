--[[
 
 
 
Person Script made by Fenrier with help from xSoulStealerx.
]] 
maxhealth=80
walkspeed=14
mindamage=1
maxdamage=10
distance=20
CharName="Person"
armcolor="Black"
legcolor="Black"
torsocolor=Color3.new(math.random(),math.random(),math.random())
headcolor="Cool yellow"
function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)
        local p = Instance.new("Part")
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Transparency = Tran
        p.Reflectance = Ref
        p.CanCollide = Coll
        p.Anchored = Anch
        p.BrickColor = BrickColor.new(Col)
        p.formFactor = "Custom"
        p.Size = Vector3.new(X,Y,Z)
        p.Parent = P
        p.Locked = true
        p:BreakJoints()
        return p
end
 
function Weld(P0, P1, X, Y, Z, A, B, C)
        local w = Instance.new("Weld")
        w.Part0 = P0
        w.Part1 = P1
        w.C1 = CN(X, Y, Z) * CA(A, B, C)
        w.Parent = P0
        return w
end
 
CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge
 
Asset = "http://www.roblox.com/asset/?id="
Noob = nil
 
function MakeMotor(torso, p1, c0, c1)
        local mot = Instance.new("Motor6D")
        mot.C0 = c0
        mot.C1 = c1
        mot.Part0 = torso
        mot.Part1 = p1
        mot.Parent = torso
        return mot
end
 
function Set(tab)
        for _,v in pairs(tab) do
                local motor = v[1]
                local vel = v[2]
                local des = v[3]
                motor.MaxVelocity = vel
                motor.DesiredAngle = des
        end
end
 
function Animate(Hum, RSH, LSH, RH, LH)
        local pose = "Standing"
        local function sit()
                pose = "Seated"
        end
        local function jump()
                pose = "Jumping"
        end
        local function died()
                pose = "Dead"
        end
        local function falling()
                pose = "Falling"
        end
        local function climbing()
                pose = "Climbing"
        end
        local function run(speed)
                if speed > 0.5 then
                        pose = "Running"
                else
                        pose = "Standing"
                end
        end
        local function move(tiem)
                local amplitude, frequency
                if pose == "Seated" then
                        Set({{RSH, 0.15, math.pi/2}, {LSH, 0.15, -math.pi/2}, {LH, 0.15, math.pi/2}, {RH, 0.15, -math.pi/2}})
                        return
                end
                if pose == "Jumping" then
                        Set({{RSH, 0.3, math.pi}, {LSH, 0.3, -math.pi}, {LH, 0.3, 0}, {RH, 0.3, 0}})
                        return
                end
                if pose == "Falling" then
                        Set({{RSH, 0.35, math.pi}, {LSH, 0.35, -math.pi}, {LH, 0.35, 0}, {RH, 0.35, 0}})
                        return
                end
                local climb = 0
                if pose == "Running" then
                        RSH.MaxVelocity = 0.15
                        LSH.MaxVelocity = 0.15
                        amplitude = 1
                        frequency = 8
                elseif pose == "Climbing" then
                        RSH.MaxVelocity = 0.3
                        LSH.MaxVelocity = 0.3
                        amplitude = 1
                        frequency = 8
                        climb = math.pi
                else
                        amplitude = 0.1
                        frequency = 1
                end
                des = amplitude * math.sin(tiem*frequency)
                RSH.DesiredAngle = des + climb
                LSH.DesiredAngle = des - climb
                RH.DesiredAngle = -des
                LH.DesiredAngle = -des
        end
        Hum.Jumping:connect(jump)
        Hum.Running:connect(run)
        Hum.Seated:connect(sit)
        Hum.Died:connect(died)
        Hum.FreeFalling:connect(falling)
        Hum.Climbing:connect(climbing)
        coroutine.resume(coroutine.create(function()
                while pose ~= "Dead" do
                        local _, time = wait(0.1)
                        move(time)
                end
        end))
end
 
function MakeNoob(pos, scale)
        torsocolor=Color3.new(math.random(),math.random(),math.random())
        local Nub = Instance.new("Model")
        Nub.Name = CharName
        Noob = Nub
        local Torso = Part(Nub, false, false, 0, 0, torsocolor, 2*scale, 2*scale, 1*scale)
        Torso.Name = "Torso"
        local Head = Part(Nub, false, false, 0, 0, headcolor, 2*scale, 1*scale, 1*scale)
        Head.Name = "Head"
        local Neck = MakeMotor(Torso, Head, CN(0, 1*scale, 0), CN(0, -0.5*scale, 0))
        local HeadMesh = Instance.new("SpecialMesh",Head)
        HeadMesh.Scale = V3(1.25, 1.25, 1.25)
local Face = Instance.new("Decal") 
Face.Name="face"
Face.Parent = Head 
Face.Face="Front"
asset="http://www.roblox.com/asset/?id="
id1="8348827"
id2="34818288"
id3="33950936"
id4="76309089"
dur=math.random(1,4)
if dur==1 then 
Face.Texture = asset .. id1
elseif dur==2 then
Face.Texture = asset .. id2
elseif dur==3 then
Face.Texture = asset .. id3
elseif dur==4 then
Face.Texture = asset .. id4
end 
        local Rarm = Part(Nub, false, false, 0, 0, armcolor, 1*scale, 2*scale, 1*scale)
        Rarm.Name = "Right Arm"
        local Larm = Part(Nub, false, false, 0, 0, armcolor, 1*scale, 2*scale, 1*scale)
        Larm.Name = "Left Arm"
        local Rleg = Part(Nub, false, false, 0, 0, legcolor, 1*scale, 2*scale, 1*scale)
        Rleg.Name = "Right Leg"
        local Lleg = Part(Nub, false, false, 0, 0, legcolor, 1*scale, 2*scale, 1*scale)
        Lleg.Name = "Left Leg"
 
attackdebounce=false
CRIT=false
Damagefunc1=function(hit,lowdamage,highdamage,Knockback)
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        print(c.Value)
                Damage=math.random(lowdamage,highdamage)
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
 
showDamage=function(Char,Dealt,du)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=BrickColor:Red()
        if CRIT==true then
                c.BrickColor=BrickColor.new("Really red")
        end
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1.25,1.5,1.25)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
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
 
local larm = Larm
local rarm = Rarm
 
function findNearestTorso(pos)
        local list = game.Workspace:children()
        local torso = nil
        local dist = distance
        local temp = nil
        local human = nil
        local temp2 = nil
        for x = 1, #list do
                temp2 = list[x]
                if (temp2.className == "Model") and (temp2 ~= Nub) and (temp2.Name~=CharName) then
                        temp = temp2:findFirstChild("Torso")
                        human = temp2:findFirstChild("Humanoid")
                        if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                                if (temp.Position - pos).magnitude < dist then
                                        torso = temp
                                        dist = (temp.Position - pos).magnitude
                                end
                        end
                end
        end
        return torso
end
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
wait(6) 
sou:Remove() 
end))
end
 
        local RSH = MakeMotor(Torso, Rarm, CN(1*scale, 0.5*scale, 0) * CA(0, MR(90), 0), CN(-0.5*scale, 0.5*scale, 0) * CA(0, MR(90), 0))
        RSH.Name="Right Shoulder"
        local LSH = MakeMotor(Torso, Larm, CN(-1*scale, 0.5*scale, 0) * CA(0, MR(-90), 0), CN(0.5*scale, 0.5*scale, 0) * CA(0, MR(-90), 0))
        LSH.Name="Left Shoulder"
        local RH = MakeMotor(Torso, Rleg, CN(0.5*scale, -1*scale, 0) * CA(0, MR(-90), 0), CN(0, 1*scale, 0) * CA(0, MR(-90), 0))
        RH.Name="Right Hip"
        local LH = MakeMotor(Torso, Lleg, CN(-0.5*scale, -1*scale, 0) * CA(0, MR(90), 0), CN(0, 1*scale, 0) * CA(0, MR(90), 0))
        LH.Name="Left Hip"
        local Hum = Instance.new("Humanoid")
        Hum.MaxHealth = maxhealth
        Hum.Health = Hum.MaxHealth
        Hum.WalkSpeed = walkspeed
coroutine.resume(coroutine.create(function() 
for i=1,30 do
wait(0)
Hum.MaxHealth = maxhealth
Hum.Health = maxhealth
end
Hum:TakeDamage(1)
Hum.Health=Hum.MaxHealth
end))
wander=false
coroutine.resume(coroutine.create(function(Humanoid)
wait(1)
Humanoid.Health=Humanoid.MaxHealth
Humanoid:TakeDamage(1)
end),Hum)
        Hum.Parent = Nub
        Nub.Parent = workspace
        Nub:MakeJoints()
        Nub:MoveTo(pos)
        Animate(Hum,RSH,LSH,RH,LH)
        coroutine.resume(coroutine.create(function(Character)
        local con1=nil
        local con2=nil
        while Character.Parent~=nil do
        wait()
        target = findNearestTorso(Character.Torso.Position)
        wander=false
        if target~=nil then
        Character.Humanoid:MoveTo(target.Position, target)
        local targ = target.Position - Torso.Position
        local magni = targ.magnitude 
        if magni<=10 then
        Tors=Character.Torso
        RightArm=Character["Right Arm"]
        LeftArm=Character["Left Arm"]
        RightLeg=Character["Right Leg"]
        LeftLeg=Character["Left Leg"]
        if math.random(1,2)==1 then
        local RSH = Torso["Right Shoulder"] 
        RSH.Parent = nil 
        local RW = Instance.new("Weld") 
        RW.Parent = RightArm 
        RW.Part0 = Torso 
        RW.Part1 = RightArm
        RW.C0 = CFrame.new((1.5)*scale, (0.5)*scale, 0) 
        RW.C1 = CFrame.new(0, (0.5)*scale, 0) 
        con1=RightArm.Touched:connect(function(hit) Damagefunc1(hit,mindamage,maxdamage,3) end) 
        con2=RightLeg.Touched:connect(function(hit) Damagefunc1(hit,mindamage,maxdamage,3) end) 
        so("http://roblox.com/asset/?id=10209640",Tors,0.5,math.random()) 
        for i = 0,1,0.2 do 
        wait() 
        RW.C0 = CFrame.new((1.5-0.5*i)*scale,(0.5)*scale,(-0.5*i)*scale)*CFrame.fromEulerAnglesXYZ(2*i,0,-0.5*i) 
        end 
        for i = 0,1,0.2 do 
        wait() 
        RW.C0 = CFrame.new((1.5-0.5+0.5*i)*scale,(0.5)*scale,(-0.5+0.5*i)*scale)*CFrame.fromEulerAnglesXYZ(2-2*i,0,-0.5+0.5*i) 
        end 
        con1:disconnect()
        con2:disconnect()
        wait(1)
        RW.Parent=nil
        RSH.Parent=Torso
        else
        local LSH = Torso["Left Shoulder"] 
        LSH.Parent = nil 
        local LW = Instance.new("Weld") 
        LW.Parent = LeftArm
        LW.Part0 = Torso 
        LW.Part1 = LeftArm
        LW.C0 = CFrame.new((-1.5)*scale, (0.5)*scale, 0) 
        LW.C1 = CFrame.new(0, (0.5)*scale, 0) 
        con1=LeftArm.Touched:connect(function(hit) Damagefunc1(hit,mindamage,maxdamage,3) end) 
        con2=LeftLeg.Touched:connect(function(hit) Damagefunc1(hit,mindamage,maxdamage,3) end) 
        so("http://roblox.com/asset/?id=10209640",Torso,0.5,math.random()) 
        for i = 0,1,0.2 do 
        wait() 
        LW.C0 = CFrame.new((-1.5+0.5*i)*scale,(0.5)*scale,(-0.5*i)*scale)*CFrame.fromEulerAnglesXYZ(2*i,0,0.5*i) 
        end 
        for i = 0,1,0.2 do 
        wait() 
        LW.C0 = CFrame.new((-1.5+0.5-0.5*i)*scale,(0.5)*scale,(-0.5+0.5*i)*scale)*CFrame.fromEulerAnglesXYZ(2-2*i,0,0.5-0.5*i) 
        end 
        con1:disconnect()
        con2:disconnect()
        LW.Parent = nil 
        LSH.Parent = Torso 
        end
        end
        else
                if wander==false then
                wander=true
                Character.Humanoid:MoveTo(game:GetService("Workspace").Base.Position + Vector3.new(math.random(-game:GetService("Workspace").Base.Size.x, game:GetService("Workspace").Base.Size.x), math.random(-game:GetService("Workspace").Base.Size.y, game:GetService("Workspace").Base.Size.y), math.random(-game:GetService("Workspace").Base.Size.z, game:GetService("Workspace").Base.Size.z)), game:GetService("Workspace").Base) 
--                Humanoid:MoveTo(game:GetService("Workspace").Base.Position, game:GetService("Workspace").Base) 
                for i=0,math.random(100,500) do
                if target==nil then
                wait()
                end
                end
                wander=false
                end
        end
        end
        end),Nub)
        Hum.Died:connect(function()
                wait(6)
                Nub:remove()
                wait(4)
                torsocolor=Color3.new(math.random(),math.random(),math.random())
                MakeNoob(V3(MRA(-300, 300),10,MRA(-300, 300)), scale)
        end)
        return Nub
end
for i = 1, 10 do
local nub = MakeNoob(V3(MRA(-300, 300),10,MRA(-300, 300)), 1)
end
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2013
]] 