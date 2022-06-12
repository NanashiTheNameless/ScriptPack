do --CFrame lerp (stravant, clerp by AntiBoomz0r)
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
        function clerp(a,b,t) 
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)} 
                local ax, ay, az = a.x, a.y, a.z 
                local bx, by, bz = b.x, b.y, b.z  
                local _t = 1-t 
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
        end 
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
animate = char:findFirstChild("Animate")
if animate then
animate:Destroy()
end
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera

gun = Instance.new("Model", char)
gun.Name = "GunModel"

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
rlegm.Name = "Right Hip"

local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
llegm.Name = "Left Hip"

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)

rj.C0 = CFrame.new(0, -1.5, 0)
rj.C1 = CFrame.new(0, -1.5, 0)

--[[local hydrotankbase = Instance.new("Part", gun)
hydrotankbase.BrickColor = BrickColor.Black()
hydrotankbase.FormFactor = 'Custom'
hydrotankbase.CanCollide = false
hydrotankbase.Material = 'SmoothPlastic'
hydrotankbase.TopSurface = 'SmoothNoOutlines'
hydrotankbase.BottomSurface = 'SmoothNoOutlines'
hydrotankbase.LeftSurface = 'SmoothNoOutlines'
hydrotankbase.RightSurface = 'SmoothNoOutlines'
hydrotankbase.BackSurface = 'SmoothNoOutlines'
hydrotankbase.FrontSurface = 'SmoothNoOutlines'
hydrotankbase.Size = Vector3.new(1.2, .2, 1.2)
Instance.new("CylinderMesh", hydrotankbase)
local weld = Instance.new("Weld", hydrotankbase)
weld.C0 = CFrame.new(torso.Size.x/2 - hydrotankbase.Size.x/2, .45, -torso.Size.z/2 - (hydrotankbase.Size.z/3))
weld.Part0 = hydrotankbase
weld.Part1 = torso
local hydrotankbase2 = hydrotankbase:clone()
hydrotankbase2.Parent = gun
local weld = Instance.new("Weld", hydrotankbase)
weld.C0 = CFrame.new(-torso.Size.x/2 + hydrotankbase2.Size.x/2, .45, -torso.Size.z/2 - (hydrotankbase2.Size.z/3))
weld.Part0 = hydrotankbase2
weld.Part1 = torso
local hydroglass = hydrotankbase:clone()
hydroglass.Parent = gun
hydroglass.Size = Vector3.new(1.1, 1.5, 1.1)
hydroglass.BrickColor = BrickColor.White()
hydroglass.Transparency = .2
local weld = Instance.new("Weld", hydroglass)
weld.C0 = CFrame.new(0, -hydrotankbase.Size.y/2 - hydroglass.Size.y/2, 0)
weld.Part0 = hydroglass
weld.Part1 = hydrotankbase
local hydroglass2 = hydroglass:clone()
hydroglass2.Parent = gun
local weld = Instance.new("Weld", hydrotankbase)
weld.C0 = CFrame.new(0, -hydrotankbase.Size.y/2 - hydroglass2.Size.y/2, 0)
weld.Part0 = hydroglass2
weld.Part1 = hydrotankbase2
local hydrotanktop = hydrotankbase:clone()
hydrotanktop.Parent = gun
local weld = Instance.new("Weld", hydrotankbase)
weld.C0 = CFrame.new(0,- hydroglass2.Size.y/2 - hydrotanktop.Size.y/2,0)
weld.Part0 = hydrotanktop
weld.Part1 = hydroglass
local hydrotanktop2 = hydrotankbase:clone()
hydrotanktop2.Parent = gun
local weld = Instance.new("Weld", hydrotankbase)
weld.C0 = CFrame.new(0,- hydroglass2.Size.y/2 - hydrotanktop2.Size.y/2,0)
weld.Part0 = hydrotanktop2
weld.Part1 = hydroglass2

local hydrogen = hydrotankbase:clone()
hydrogen.Parent = gun
hydrogen.Material = 'Pebble'
hydrogen.Size = Vector3.new(1, 1.5, 1)
hydrogen.BrickColor = BrickColor.Blue()
local weld = Instance.new("Weld", hydrogen)
weld.C0 = CFrame.new(0, -hydrotankbase.Size.y/2 - hydroglass.Size.y/2, 0)
weld.Part0 = hydrogen
weld.Part1 = hydrotankbase
local hydrogen2 = hydrogen:clone()
hydrogen2.Parent = gun
local weld = Instance.new("Weld", hydrogen2)
weld.C0 = CFrame.new(0, -hydrotankbase.Size.y/2 - hydroglass2.Size.y/2, 0)
weld.Part0 = hydrogen2
weld.Part1 = hydrotankbase2]]--

rsc0 = rm.C0
lsc0 = lm.C0
neckc0 = neck.C0
rootc0 = rj.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
speed = 0.25
angle = 0
mvmnt = 0
anglespeed = 1
humanoid.WalkSpeed = 8
ctrl = false
stopsprint = false
action = false
sprinting = false
mouse.KeyDown:connect(function(k)
    repeat wait() until action == false
    if not action then
    if k:byte() == 48 then
        sprinting = true
        humanoid.WalkSpeed = 16
    end
    if k == '2' then
        ctrl = true
        humanoid.WalkSpeed = 5
    end
    end
end)

mouse.KeyUp:connect(function(k)
    repeat wait() until action == false
    if not action then
        repeat wait() until action == false
    if k:byte() == 48 then
        sprinting = false
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 10 and hitz then
        action = 'StopSprinting'
        end
        humanoid.WalkSpeed = 8
        if ctrl then
            humanoid.WalkSpeed = 5
        end
    end
    if k == '2' then
        ctrl = false
        humanoid.WalkSpeed = 8
    end
    end
end)

Controls = game:service'ControllerService':children()[1]

local fakehead = head:clone()
fakehead.Parent = head
head.Transparency = 1
for i,v in pairs(fakehead:children()) do
    if v:IsA'Sound' or v:IsA'Sound' then
        v:Destroy()
    end
end

waitingloop = false

local fakeweld = Instance.new("Weld", head)
fakeweld.Part0 = head
fakeweld.Part1 = fakehead

humanoid.Jumping:connect(function()
    if not action then
        action = 'Jumping'
    end
end)

game:service'RunService'.RenderStepped:connect(function()
    if not loopedaction then
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = rootc0
        local ncf = neckc0
        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -4.1, 0))
        local hitz, enz = workspace:findPartOnRay(rayz, char)
        angle = (angle % 100) + anglespeed/10
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        if action ~= false then
            if action == 'StopSprinting' then
                Controls.Parent = nil
                local bodyvelocity = Instance.new("BodyVelocity", rootpart)
                bodyvelocity.maxForce = Vector3.new(1/0,0,1/0)
                bodyvelocity.velocity = rootpart.CFrame.lookVector * 16
                ncf = neckc0 * CFrame.Angles(math.rad(-15), -math.rad(65), 0)
                rscf = rsc0 * CFrame.Angles(math.rad(-22), 0, math.rad(20.5))
                lscf = lsc0 * CFrame.Angles(math.rad(-54.5), 0, -math.rad(18.5))
                rjcf = rootc0 * CFrame.new(0, -.35, 0) * CFrame.Angles(math.rad(35), math.rad(70), 0)
                llcf = llc0 * CFrame.new(0, .25, -.25) * CFrame.Angles(0, 0, -math.rad(58))
                rlcf = rlcf * CFrame.new(0, -.25, -.15) * CFrame.Angles(0, 0, math.rad(10))
                loopedaction = true
                for i = 0, 25 do
                    bodyvelocity.velocity = rootpart.CFrame.lookVector * (16 - i/2)
                    rm.C0 = clerp(rm.C0,rscf,speed)
                    lm.C0 = clerp(lm.C0,lscf,speed)
                    rj.C0 = clerp(rj.C0,rjcf,speed)
                    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                    llegm.C0 = clerp(llegm.C0,llcf,speed)
                    neck.C0 = clerp(neck.C0,ncf,speed)
                    wait()
                end
                bodyvelocity:Destroy()
                loopedaction = false
                stopsprint = false
                action = false
                Controls.Parent = game:service'ControllerService'
                humanoid.WalkSpeed = 8
                if ctrl then
                    humanoid.WalkSpeed = 5
                end
            end
            if action == 'Jumping' then
                loopedaction = true
                ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
                rjcf = rootc0 * CFrame.Angles(math.sin(angle)*0.025, 0, 0)
                rscf = rsc0 * CFrame.Angles(-math.pi/16, -math.sin(angle)*0.08, 0)
                lscf = lsc0 * CFrame.Angles(-math.pi/17, math.sin(angle)*0.08, 0)
                rlcf = rlc0 * CFrame.Angles(-math.pi/16+-math.sin(angle)*0.125, -math.sin(angle)*0.08, math.rad(2.5))
                llcf = llc0 * CFrame.Angles(-math.pi/17+-math.sin(angle)*0.125, math.sin(angle)*0.08, -math.rad(2.5))
                for i = 0, 12 do
                    rm.C0 = clerp(rm.C0,rscf,speed)
                    lm.C0 = clerp(lm.C0,lscf,speed)
                    rj.C0 = clerp(rj.C0,rjcf,speed)
                    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                    llegm.C0 = clerp(llegm.C0,llcf,speed)
                    neck.C0 = clerp(neck.C0,ncf,speed)
                    wait()
                end
                loopedaction = false
                action = false
            end
        end
        if goinup and torso.Velocity.y <= 2 then 
            goinup = false
            if ctrl then 
                humanoid.WalkSpeed = 5
            elseif sprinting then 
                humanoid.WalkSpeed = 16 
            elseif not sprinting and not ctrl then
                humanoid.WalkSpeed = 8
            end
        end
        if not action then
        if not hitz then
            anglespeed = 1
            if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 15 then
                    if not waitingloop then 
                    waitingloop = true
                        coroutine.wrap(function()
                            repeat wait() until hitz
                            action = 'StopSprinting'
                        end)()
                    end
            end
            ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
            rjcf = rootc0 * CFrame.Angles(math.sin(angle)*0.025, 0, 0)
            rscf = rsc0 * CFrame.Angles(-math.pi/19, -math.sin(angle)*0.08, math.rad(20.5))
            lscf = lsc0 * CFrame.Angles(-math.pi/24, math.sin(angle)*0.08, -math.rad(20.5))
            rlcf = rlc0 * CFrame.Angles(math.pi/24+-math.sin(angle)*0.025, -math.sin(angle)*0.08, math.rad(2.5))
            llcf = llc0 * CFrame.Angles(math.pi/24+-math.sin(angle)*0.025, math.sin(angle)*0.08, -math.rad(2.5))
        elseif torso.Velocity.y >= 2 and hitz then
            anglespeed = 1.75
            goinup = true
            humanoid.WalkSpeed = 5
            rjcf = rootc0 * CFrame.Angles(-math.pi/64, 0, 0)
            rscf = rsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(angle)*.5, 0, -math.abs(mvmnt)*0.02)
            lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(-angle)*.5, 0, math.abs(mvmnt)*0.02)
            rlcf = rlc0 * CFrame.new(0, .45+math.abs(math.sin(angle))*.4, -.25+math.sin(angle)*0.2) * CFrame.Angles(math.sin(-angle)*.45, 0, math.rad(.5))
            llcf = llc0 * CFrame.new(0, .85-math.abs(math.sin(angle))*.4, -.25-math.sin(angle)*0.2) * CFrame.Angles(math.sin(angle)*.45, 0, -math.rad(.5))
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
        if not goinup then
            if stopsprint then
                action = 'StopSprinting'
            end
            anglespeed = 0.15
            if ctrl then
            ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
            rscf = rsc0 * CFrame.Angles(0, -math.sin(angle)*0.08, 0)
            lscf = lsc0 * CFrame.Angles(0, math.sin(angle)*0.08, 0)
            rjcf = rootc0 * CFrame.new(0, -1.25, 0)
            llcf = llc0 * CFrame.new(0, 0, -.45) * CFrame.Angles(-math.pi/2.2, 0, 0)
            rlcf = rlcf * CFrame.new(0, 1.25, -.85)
            elseif not ctrl then
            ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
            rjcf = rootc0 * CFrame.Angles(math.sin(angle)*0.025, 0, 0)
            rscf = rsc0 * CFrame.Angles(0, -math.sin(angle)*0.08, 0)
            lscf = lsc0 * CFrame.Angles(0, math.sin(angle)*0.08, 0)
            rlcf = rlc0 * CFrame.Angles(-math.sin(angle)*0.025, -math.sin(angle)*0.08, math.rad(2.5))
            llcf = llc0 * CFrame.Angles(-math.sin(angle)*0.025, math.sin(angle)*0.08, -math.rad(2.5))
            end
        end
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 10 then
        if not goinup then
            if stopsprint then
                action = 'StopSprinting'
            end
            anglespeed = 1.5
            if ctrl then
            rscf = rsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(angle)*.5, 0, -math.abs(mvmnt)*0.02)
            lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(-angle)*.5, 0, math.abs(mvmnt)*0.02)
            rjcf = rootc0 * CFrame.new(0, -.7, 0) * CFrame.Angles(-math.pi/32, 0, 0)
            llcf = llc0 * CFrame.new(0, .65, -.5 + (-.4+math.sin(angle)*0.25)) * CFrame.Angles(math.pi/18 + -math.pi/10 - math.sin(angle)*.45, 0, 0)
            rlcf = rlcf * CFrame.new(0, .65, -.5 + (-.25-math.sin(angle)*0.25)) * CFrame.Angles(math.pi/18 + -math.pi/10 + math.sin(angle)*.45, 0, 0)
            else
            rjcf = rootc0 * CFrame.Angles(-math.pi/64, 0, 0)
            rscf = rsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(angle)*.5, 0, -math.abs(mvmnt)*0.02)
            lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(-angle)*.5, 0, math.abs(mvmnt)*0.02)
            rlcf = rlc0 * CFrame.new(0, 0, -.15+math.sin(angle)*0.1) * CFrame.Angles(math.sin(-angle)*.45, 0, math.rad(.5))
            llcf = llc0 * CFrame.new(0, 0, -.15-math.sin(angle)*0.1) * CFrame.Angles(math.sin(angle)*.45, 0, -math.rad(.5))
            end
        end
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 15 then
        if not goinup then
            stopsprint = true --when released
            anglespeed = 2
            local RotVelocityZ = torso.RotVelocity.Y
            if RotVelocityZ >= 15 then
                RotVelocityZ = 15
            elseif RotVelocityZ <= -15 then
                RotVelocityZ = -15
            end
            ncf = neckc0 * CFrame.Angles(0, -math.sin(angle)*.1, 0)
            rscf = rsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(angle)*1.1, 0, -math.abs(mvmnt)*0.02)
            lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(-angle)*1.1, 0, math.abs(mvmnt)*0.02)
            rjcf = rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/18, math.sin(angle)*.1, math.sin(angle)*.045 + math.rad(RotVelocityZ)*2.5)
            rlcf = rlc0 * CFrame.new(0, 0, -.6+math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
            llcf = llc0 * CFrame.new(0, 0, -math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
        end
        end
        end
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
    end
end)
