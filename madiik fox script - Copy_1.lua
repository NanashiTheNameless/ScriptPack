--This is just a fun script. Make it local to work, have fun. --
do --CFrame lerp
        local function QuaternionFromCFrame(cf)
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
        local function QuaternionToCFrame(px, py, pz, x, y, z, w)
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
        local function QuaternionSlerp(a, b, t)
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
        function clerp(a,b,t)
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z  
                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
        end
 
end
do --the animating
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
if anim then
anim:Destroy()
end
 
 
local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
 
local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
 
neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)
 
 
rj.C0 = CFrame.new()
rj.C1 = CFrame.new()
 
 
local sound = Instance.new("Sound", head)
sound.SoundId = "http://www.roblox.com/asset/?id=130797915"
sound.Volume = 0.8
sound.Looped = true
 
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
 
 
--look of the fox here
game:service'InsertService':LoadAsset(25930301):children()[1].Parent = char
Instance.new("PointLight", head).Range = 10
 

 
 
local speed = 0.3
local angle = 0
local sitting = false
local humanwalk = false
local anglespeed = 1
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = neck.C0
 
local controllerService = game:GetService("ControllerService")
local controller = controllerService:GetChildren()[1]
 
controller.Parent = nil
 
Instance.new("HumanoidController", game:service'ControllerService')
Instance.new("SkateboardController", game:service'ControllerService')
Instance.new("VehicleController", game:service'ControllerService')
local controller = controllerService:GetChildren()[1]
mouse.KeyDown:connect(function(k)
    if k == "q" then
        humanwalk = not humanwalk
    end
    if k == "z" then
        if not sound.IsPlaying then
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=130802245"
            wait()
            sound:play()
        end
    end
    if k == "x" then
        if not sound.IsPlaying then
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=130797915"
            wait()
            sound:play()
        end
    end
    if k == "c" then
        if not sound.IsPlaying then
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=149713968"
            wait()
            sound:play()
        end
    end
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 34
    end
   
end)
mouse.KeyUp:connect(function(k)
   
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 16
    end
   
end)
 
   
 
while wait() do
    angle = (angle % 100) + anglespeed/10
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = CFrame.new()
        local ncf = neckc0
        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
            local hitz, enz = workspace:findPartOnRay(rayz, char)
            if not hitz then
        if sound.IsPlaying then
            sound:stop()
        end
       
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
       
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, 0)
        rjcf = CFrame.new() * CFrame.Angles(-math.pi/5, math.sin(angle)*0.05, 0)
        rscf = rsc0 * CFrame.Angles(math.pi/1.7+math.sin(angle)*0.1, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.pi/1.7+math.sin(-angle)*0.1, 0, 0)
        rlcf = rlc0 * CFrame.Angles(-math.pi/10+math.sin(-angle)*0.3, 0, 0)
        llcf = llc0 * CFrame.Angles(-math.pi/10+math.sin(angle)*0.3, 0, 0)
       
        else
       
        ncf = neckc0 * CFrame.Angles(math.pi/14, 0, 0)
        rjcf = CFrame.new() * CFrame.Angles(-math.pi/18, math.sin(angle)*0.05, 0)
        rscf = rsc0 * CFrame.Angles(-math.pi/10+math.sin(angle)*0.2, 0, 0)
        lscf = lsc0 * CFrame.Angles(-math.pi/10+math.sin(-angle)*0.2, 0, 0)
        rlcf = rlc0 * CFrame.new(0, 0.7, -0.5) CFrame.Angles(-math.pi/14, 0, 0)
        llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)
       
        end
    elseif humanoid.Sit then
        if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130797915" then
        anglespeed = 6
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.sin(angle)*0.1, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=135570347" then
        anglespeed = 4
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.abs(math.sin(angle))*0.3, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149713968" then
        anglespeed = 2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        else
        anglespeed = 1/2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
        if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130797915" then
        anglespeed = 6
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.sin(angle)*0.07, 0, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/10, math.sin(angle)*0.001, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/1+math.sin(angle)*0.5, 0, 0)
            lscf = lsc0 * CFrame.Angles(math.pi/1+math.sin(angle)*0.5, 0, 0)
            rlcf = rlc0 * CFrame.Angles(math.pi/10, math.sin(angle)*0.08, math.rad(6.5))
            llcf = llc0 * CFrame.Angles(math.pi/10, -math.sin(angle)*0.08, -math.rad(6.5))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149713968" then
            anglespeed = 2
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.3, 0, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/20, math.sin(angle)*0.001, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/2+math.abs(math.sin(angle)*1), 0, 0)
            lscf = lsc0 * CFrame.Angles(math.pi/2+math.abs(math.sin(angle)*1), 0, 0)
            rlcf = rlc0 * CFrame.Angles(math.pi/20, math.sin(angle)*0.08, math.rad(2.5))
            llcf = llc0 * CFrame.Angles(math.pi/20, -math.sin(angle)*0.08, -math.rad(2.5))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130802245" then
        anglespeed = 3
        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.07, math.rad(30), 0)
        rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*0.001, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.05, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)
        rlcf = rlc0 * CFrame.new(0, -0.1 + math.abs(mvmnt)*0.1, -0.1) * CFrame.Angles(0, math.rad(5), math.rad(5))
        llcf = llc0 * CFrame.Angles(0, math.rad(2.5), math.rad(1))
        else
            if humanwalk then
                        anglespeed = 1/4
        ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
        rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*0.001, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.1, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.1, 0, 0)
        rlcf = rlc0 * CFrame.Angles(0, math.sin(angle)*0.08, math.rad(2.5))
        llcf = llc0 * CFrame.Angles(0, -math.sin(angle)*0.08, -math.rad(2.5))
                else
        anglespeed = 1/2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -2, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
            end
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 20 then
        if sound.IsPlaying then
            sound:stop()
        end
        if humanwalk then
                                anglespeed = 4
        ncf = neckc0 * CFrame.Angles(math.pi/24, mvmnt*.02, 0)
        rjcf = CFrame.new(0, math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/24, -mvmnt*.02, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*1.25, 0, -math.abs(mvmnt)*0.02)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*1.25, 0, math.abs(mvmnt)*0.02)
        rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*1, 0, math.rad(.5))
        llcf = llc0 * CFrame.Angles(math.sin(angle)*1, 0, -math.rad(.5))
                else
        anglespeed = 4
        ncf = neckc0 * CFrame.new(0, 0, .2) * CFrame.Angles(math.pi/1.9, 0, 0)
        rjcf = CFrame.new(0, -1.5+math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/1.9, math.sin(mvmnt/2)*0.05, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.4+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(angle)*0.7, 0, math.rad(5))
        lscf = lsc0 * CFrame.new(.45, 0.2, .1-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(-angle)*0.7, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*0.6, 0, math.abs(mvmnt)*0.025)
        llcf = llc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(angle)*.6, 0, -math.abs(mvmnt)*0.025)
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
        if sound.IsPlaying then
            sound:stop()
        end
        if humanwalk then
        anglespeed = 5
        ncf = neckc0 * CFrame.Angles(math.pi/20, math.sin(angle)*.04, 0)
        rjcf = CFrame.new(0, -.4 + math.abs(mvmnt)*0.25, 0) * CFrame.Angles(-math.pi/20, -math.sin(angle)*.08, 0)
        rscf = rsc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) *  CFrame.Angles(math.pi/18+math.sin(angle)*1.5, 0, -math.abs(mvmnt)*0.02)
        lscf = lsc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/18+math.sin(-angle)*1.5, 0, math.abs(mvmnt)*0.02)
        rlcf = rlc0 * CFrame.new(0, 0, -.6+math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
        llcf = llc0 * CFrame.new(0, 0, -math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
        else
        anglespeed = 5.5
        ncf = neckc0 * CFrame.new(0, 0, .2) * CFrame.Angles(math.pi/1.9+math.sin(mvmnt/2)*0.05, 0, 0)
        rjcf = CFrame.new(0, -1.3+math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/1.9+math.abs(mvmnt/2)*0.1, 0, 0)
        rscf = rsc0 * CFrame.new(-1, 0.2, -.5) * CFrame.Angles(math.pi/2+math.sin(angle)*1.8, 0, math.rad(5))
        lscf = lsc0 * CFrame.new(1, 0.2, -.5) * CFrame.Angles(math.pi/2+math.sin(angle)*1.8, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.new(0, .3-math.abs(mvmnt)*0.125, -.3+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*1.4, 0, math.abs(mvmnt)*0.025)
        llcf = llc0 * CFrame.new(0, .3-math.abs(mvmnt)*0.125, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*1.4, 0, -math.abs(mvmnt)*0.025)
        end
    end
       
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
end
 
 
end
