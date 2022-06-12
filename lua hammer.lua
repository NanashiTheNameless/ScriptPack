local oc = oc or function(...) return ... end

function weld(p0,p1,c0,c1,par)
local w = Instance.new("Weld",p0 or par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

function lerp(a, b, t)
    return a + (b - a)*t
end

do
        local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
         
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
         
        local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

        function clerp(a,b,t)
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z

                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
        end
end
local his = {}

function ctween(tar,prop,c2,t,b)
        local function doIt()
        local now = tick()
        his[tar] = now
        local c1 = tar[prop]
        for i=1,t do
                if his[tar] ~= now then return end
                tar[prop] = clerp(c1,c2,1/t*i)
                wait(1/60)
        end
        end
        if b then coroutine.wrap(doIt)() else doIt() end
end

function tickwave(time,length,offset)
        return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length
end

function playSound(id,parent,volume,pitch)
        local sound = Instance.new("Sound",parent or workspace)
        sound.SoundId = "http://www.roblox.com/asset?id="..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end

local plr = game.Players.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()

local nk = char.Torso.Neck
local nk0 = CFrame.new(0,1,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local ra,la = char["Right Arm"], char["Left Arm"]
ra:BreakJoints()
la:BreakJoints()
local rs = weld(char.Torso,ra,CFrame.new(1.25,.5,0), CFrame.new(-.25,.5,0),stuff)
local ls = weld(char.Torso,la,CFrame.new(-1.25,.5,0), CFrame.new(.25,.5,0),stuff)
ls.Part1.FrontSurface = "Hinge"
rs.Part1.FrontSurface = "Hinge"
local rs0 = rs.C0
local ls0 = ls.C0

local color1 = BrickColor.new("Dark gray")
local color2 = BrickColor.new("Navy blue")

local stuff = Instance.new("Model",char)
pcall(function() char["Hammur"]:Destroy() end)
stuff.Name = "Hammur"
wait(.5)
local handle = Instance.new("Part")
handle.FormFactor = "Custom"
handle.BrickColor = color1
handle.Reflectance = .25
handle.Size = Vector3.new(.5,5,.5)
handle.TopSurface = "Smooth"
handle.BottomSurface = "Smooth"
handle.CanCollide = false
handle.Parent = stuff

local grip = weld(char["Right Arm"],handle,CFrame.new(0,-.95,0)*CFrame.Angles(math.rad(-90),0,0),CFrame.new(0,-1.4,0)) 
local grip0 = grip.C0
local hamend = handle:Clone()
Instance.new("BlockMesh",hamend)
hamend.Parent = stuff
hamend.Size = Vector3.new(2,2,3.5)
local hamwel = weld(handle,hamend,CFrame.new(0,3,0))
local hamsd1 = hamend:Clone()
hamsd1.Mesh.Scale = Vector3.new(1,1,1)
hamsd1.Parent = stuff
hamsd1.Size = Vector3.new(2.3,2.3,.3)
weld(hamend,hamsd1,CFrame.new(0,0,1.75))
local hamsd2 = hamsd1:Clone()
hamsd2.Parent = stuff
weld(hamend,hamsd2,CFrame.new(0,0,-1.75))
local hamp = hamsd1:Clone()
hamp.Parent = stuff
hamp.Size = Vector3.new(.2,.2,3.5)
weld(hamend,hamp,CFrame.new(.95,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,.95,0))
hamp = hamp:Clone()
hamp.BrickColor = color2
hamp.Reflectance = .2
hamp.Size = Vector3.new(.2,.2,2.5)
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,0,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,0,0))
hamp = handle:Clone()
hamp.BrickColor = color2
hamp.Reflectance = .2
hamp.Parent = stuff
hamp.Size = Vector3.new(.4,.2,.4)
Instance.new("CylinderMesh",hamp)
weld(hamend,hamp,CFrame.new(0,-.955,1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,-.955,-1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,.955,1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(0,.955,-1.2))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,0,-1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,0,1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,0,-1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,0,1.2) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.6,.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.6,.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.6,-.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.6,-.955,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,.6,0) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.955,-.6,0) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,.6,0) * CFrame.Angles(0,0,math.rad(90)))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.955,-.6,0) * CFrame.Angles(0,0,math.rad(90)))
local luacyl = hamp:Clone()
luacyl.BrickColor = BrickColor.Blue()
luacyl.Parent = stuff
luacyl.Mesh.Scale = Vector3.new(1,.2,1)
luacyl.Size = Vector3.new(2,.2,2)
weld(hamsd1,luacyl,CFrame.new(0,0,.14) * CFrame.Angles(math.rad(90),0,0))
hamp = luacyl:Clone()
hamp.BrickColor = BrickColor.White()
hamp.Parent = stuff
hamp.Size = Vector3.new(.7,.2,.7)
weld(luacyl,hamp,CFrame.new(.35,.01,-.35))
local luamoon = luacyl:Clone()
luamoon.Parent = stuff
luamoon.Size = Vector3.new(.7,.2,.7)
local mnw = weld(luacyl,luamoon,CFrame.new(1.2,.02,-1.2))
for r = 1,180,10 do
        local r2 = 2 * (math.pi/180*r)
        local l = hamsd1:Clone()
        l.Parent = stuff
        l.BrickColor = luacyl.BrickColor
        l.Size = Vector3.new(.3,.2,.2)
        l.Mesh.Scale = Vector3.new(1,.3,.3)
        weld(luacyl,l,CFrame.new(Vector3.new(math.sin(r2)*1.7,0,math.cos(r2)*1.7),Vector3.new()))
end
hamp = hamend:Clone()
hamp.BrickColor = color2
hamp.Reflectance = .2
hamp.Size = Vector3.new(.2,.2,3.5)
hamp.Mesh.Scale = Vector3.new(.25,.25,1)
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-1.05,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,1.05,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(1.05,.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,1.05,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(1.05,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(.95,-1.05,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-1.05,-.95,0))
hamp = hamp:Clone()
hamp.Parent = stuff
weld(hamend,hamp,CFrame.new(-.95,-1.05,0))
for x = -1,1 do
for y = -1,1 do
hamp = hamp:Clone()
hamp.Mesh.Scale = Vector3.new(1,1,1)
hamp.Size = Vector3.new(.5,.5,.2)
hamp.Parent = stuff
weld(hamsd2,hamp,CFrame.new(x*.7,y*.7,-.1))
end
end

rs.C0 = rs0 * CFrame.Angles(math.rad(70),math.rad(50),math.rad(-20))
ls.C0 = ls0 * CFrame.new(.4,.2,-.3) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(00)) * CFrame.Angles(0,math.rad(60),0)

function endScript()
        pcall(function() runcon:disconnect() end)
        pcall(function() kdcon:disconnect() end)
        pcall(function() kucon:disconnect() end)
        pcall(game.Destroy,stuff)
        pcall(game.Destroy,bg)
        pcall(game.Destroy,bv)
end

local spintime = 3
local idling = true

runcon = game:GetService("RunService").Stepped:connect(oc(function()
        if not stuff:IsDescendantOf(workspace) then
                endScript()
        end
        local an = (tick()%spintime)*360/spintime
        mnw.C0 = CFrame.Angles(0,math.rad(an),0) * CFrame.new(0,.04,1.7)
        if idling then
                rs.C0 = clerp(rs.C0,rs0 * CFrame.Angles(math.rad(70+tickwave(3,5)),math.rad(50),math.rad(-20)),.4)
                ls.C0 = clerp(ls.C0,ls0 * CFrame.new(.4,.2,-.3) * CFrame.Angles(math.rad(115+tickwave(3,5)),math.rad(0),math.rad(-5)) * CFrame.Angles(0,math.rad(60),0),.4)
                nk.C0 = clerp(nk.C0,nk0 * CFrame.Angles(tickwave(4,-.1),0,0),.4)
                grip.C0 = clerp(grip.C0,grip0,.4)
        end
end))

function cfot(tar,cf,t)
        coroutine.wrap(function()
                for i=1,t do
                        tar.CFrame = tar.CFrame * cf
                        wait(1/30)
                end
        end)()
end

function DoDamage(hum,dmg)
        if hum.Health == 0 then return end
        local a,b = ypcall(function()
                --hum:TakeDamage(dmg)
                hum.Health = hum.Health - dmg
                if not hum.Parent:FindFirstChild("Torso") then return end
                local m = Instance.new("Model",workspace)
                m.Name = -dmg
                local h = Instance.new("Humanoid",m)
                h.MaxHealth = 0
                local p = Instance.new("Part",m)
                p.Name = "Head"
                p.FormFactor = "Custom"
                p.Size = Vector3.new(.2,.2,.2)
                p.Transparency = 0.97
                p.CanCollide = false
                p.Anchored = true
                p:BreakJoints()
                game.Debris:AddItem(m,5)
                p.CFrame = CFrame.new(hum.Parent.Torso.Position) * CFrame.new(math.random(-2,2),2.5,math.random(-2,2))
                local rAm = math.random(3,6)/100
                coroutine.wrap(function()
                for i=1,300 do 
                p.CFrame = p.CFrame * CFrame.new(0,rAm,0) 
                wait()
                end 
                p:Destroy()
                end)()
        end)
        if not a then print(b) end
end

local atdeb = false
local basiccombo = 0
local basiccombotimer = 0
bg = Instance.new("BodyGyro",char.Torso)
bg.maxTorque = Vector3.new(1,0,1)*9e10
bg.P = 10000
bg.D = 500
bv = Instance.new("BodyVelocity",char.Torso)
bv.maxForce = Vector3.new()
bv.P = 50000

kucon = mouse.KeyUp:connect(oc(function(k)
        if k == "0" and sprint then
                pcall(function() char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed / 1.5 end)
                sprint = false
        end
end))

kdcon = mouse.KeyDown:connect(oc(function(k)
        if k == "0" and not sprint then
                pcall(function() char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed * 1.5 end)
                sprint = true
        end
        if k == "f" then
                if atdeb then return end
                atdeb = true
                idling = false
                playSound(105374058,hamend,1,1)
             ---   bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
               -- ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-20),0,0),7,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(-90)),7)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(30)),13,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-35),0,0),13,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(60)),13)
                playSound(92597296,hamend,1,1.07)
                local s = playSound(96626016,hamend)
                s.Volume = 0
                local hitcon
                hitcon = hamend.Touched:connect(function(hit)
                        s.Volume = 1
                        if not hit.Anchored then
                                hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*-20
                        end
                        local hum = hit.Parent:FindFirstChild("Humanoid")
                        if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,30)
                                hum.PlatformStand = true
                                wait(.6)
                                hum.PlatformStand = false
                        end
                end)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(35),math.rad(0),math.rad(30)),4,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(35),0,0),4,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(35),math.rad(0),math.rad(-30)),4)
                if workspace:FindPartOnRay(Ray.new(hamend.Position,hamend.CFrame.lookVector*3),char) then
                        s.Volume = 1
                end
                wait(.2)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                hitcon:disconnect()
                atdeb = false
                idling = true
        end
        if k == "q" then
                if atdeb then return end
                atdeb = true
                idling = false
                playSound(105374058,hamend,1,1)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
                ctween(grip,"C0",grip0*CFrame.Angles(math.rad(-30),math.rad(-25),math.rad(-15)),9,true)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(30)),7,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-20),0,0),7,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(-30)),7)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(30)),13,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-35),0,0),13,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(-30)),13)
                playSound(92597296,hamend,1,1.07)
                local s = playSound(96626016,hamend)
                s.Volume = 0
                local hitcon
                hitcon = hamend.Touched:connect(function(hit)
                        s.Volume = 1
                        if not hit.Anchored then
                                hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*-20
                        end
                        local hum = hit.Parent:FindFirstChild("Humanoid")
                        if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,30)
                                hum.PlatformStand = true
                                wait(.6)
                                hum.PlatformStand = false
                        end
                end)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
                wait(.05)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(-20),0,0)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(55),math.rad(5),math.rad(50)),7,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(5),0,0),4,true)
                ctween(rs,"C0",rs0*CFrame.new(-.9,0,-.9) * CFrame.Angles(math.rad(50),math.rad(5),math.rad(-50)),7)
                if workspace:FindPartOnRay(Ray.new(hamend.Position,hamend.CFrame.lookVector*3),char) then
                        s.Volume = 1
                end
                wait(.2)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                hitcon:disconnect()
                atdeb = false
                idling = true
        end
        if k == "r" then
                if atdeb then return end
                atdeb = true
                idling = false
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(70),math.rad(0),math.rad(30)),7,true)
                ctween(grip,"C0",grip0*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-60))*CFrame.Angles(0,math.rad(180),0),9,true)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                bg.cframe = char.Torso.CFrame
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(70),math.rad(0),math.rad(-30)),7,true)
                local s = playSound(92597296,hamend,1,1.07)
                s.Looped = true
                local sndmd = {}
                local hitcon
                hitcon = hamend.Touched:connect(function(hit)
                        if not sndmd[hit] then sndmd[hit] = playSound(10730819,hamend) end
                        
                        if not hit.Anchored then
                                hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*60
                        end
                        local hum = hit.Parent:FindFirstChild("Humanoid")
                        if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,math.random(4,6))
                                hum.Sit = true
                                wait(2)
                                hum.Sit = false
                        end
                end)
                for i=1,20 do
                        bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(-1440/20),0)
                        wait(.1)
                end
                hitcon:disconnect()
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                s:Stop()
                s:Destroy()
                atdeb = false
                idling = true
        end
        if k == "e" then
                if atdeb then return end
                basiccombo = (tick()-basiccombotimer > .5 or basiccombo == 2) and 1 or basiccombo + 1
                idling = false
                atdeb = true
                if basiccombo == 1 then
                        ctween(ls,"C0",ls0 * CFrame.new(.2,.2,-.1) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(5)) * CFrame.Angles(0,math.rad(60),0),7,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,-.3) * CFrame.Angles(math.rad(120),math.rad(70),math.rad(-30)),7)
                        bg.maxTorque = Vector3.new(1,1,1)*9e10
                        bg.cframe = char.Torso.CFrame * CFrame.Angles(0,math.rad(-40),0)
                        playSound(92597296,hamend,1,1.2)
                        local ac
                        local hitcon
                        hitcon = hamend.Touched:connect(function(hit)
                                if not ac then ac = playSound(10730819,hamend,1,1) end
                                if not hit.Anchored then
                                        hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*50
                                end
                                local hum = hit.Parent:FindFirstChild("Humanoid")
                                if hum and not hum:IsDescendantOf(char) then
                                        DoDamage(hum,10)
                                end
                        end)
                        ctween(ls,"C0",ls0 * CFrame.new(1,.2,-1) * CFrame.Angles(math.rad(115),math.rad(0),math.rad(40)) * CFrame.Angles(0,math.rad(60),0),6,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,-.3) * CFrame.Angles(math.rad(120),math.rad(80),math.rad(-30))* CFrame.Angles(math.rad(-50),0,0),6,true)
                        wait(.1)
                        bg.cframe = char.Torso.CFrame * CFrame.Angles(0,math.rad(40),0)
                        hitcon:disconnect()
                elseif basiccombo == 2 then
                        ctween(ls,"C0",ls0*CFrame.new(1,0,-1) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(70)),10,true)
                        ctween(grip,"C0",grip0*CFrame.Angles(math.rad(10),0,0),12,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),10,true)
                        wait(.2)
                        playSound(92597296,hamend,1,.7)
                        wait(.1)
                        bg.maxTorque = Vector3.new(1,1,1)*9e10
                        bg.cframe = char.Torso.CFrame
                        bv.maxForce = Vector3.new(1,0,1)*9e5
                        bv.velocity = bg.cframe.lookVector * 70
                        coroutine.wrap(function() for i=1,25 do bv.velocity = bv.velocity*.9 wait(1/30) end bv.maxForce = Vector3.new() end)()
                        local thrustcon
                        thrustcon = hamend.Touched:connect(function(hit)
                                if not hit.Anchored then
                                        hit.Velocity = hit.Velocity + hamend.CFrame.lookVector*-40
                                end
                                local hum = hit.Parent:FindFirstChild("Humanoid")
                                if hum and not hum:IsDescendantOf(char) then
                                        DoDamage(hum,5)
                                        --thrustcon:disconnect()
                                        hum.Sit = true
                                        ctween(grip,"C0",grip0*CFrame.Angles(math.rad(30),0,0),5,true)
                                        if not ac then ac = playSound(92597296,hamend,1,1.15) end
                                        local tor = hum.Parent:FindFirstChild("Torso")
                                        if tor and not tor:FindFirstChild("torv") then
                                                --tor.Velocity = bg.cframe.lookVector*30 + Vector3.new(0,100,0)
                                                local torv = Instance.new("BodyVelocity",tor)
                                                torv.maxForce = Vector3.new(1,1,1)*9e9
                                                torv.P = 2000
                                                torv.velocity = bg.cframe.lookVector*20 + Vector3.new(0,120,0)
                                                torv.Name = "torv"
                                                local torav = Instance.new("BodyAngularVelocity",tor)
                                                torav.maxTorque = Vector3.new(1,1,1)*9e9
                                                torav.P = 5000
                                                torav.angularvelocity = Vector3.new(math.random()-.5,math.random()-.5,math.random()-.5)*2
                                                coroutine.wrap(function() 
                                                        for i=1,torv.velocity.Y/196.22*30 do
                                                                hum.Sit = true
                                                                torv.velocity = torv.velocity - Vector3.new(0,196.22/30,0) 
                                                                wait(1/30) 
                                                        end 
                                                        torv:Destroy() 
                                                        torav:Destroy()
                                                        tor.Velocity = Vector3.new()
                                                end)()
                                        end
                                end
                        end)
                        ctween(ls,"C0",ls0*CFrame.new(1,0,-1) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(50)),12,true)
                        ctween(grip,"C0",grip0*CFrame.Angles(math.rad(-70),0,0),12,true)
                        ctween(rs,"C0",rs0*CFrame.new(-.6,0,-.7) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-10)),12,true)
                        Delay(.3,function() thrustcon:disconnect() end)
                        
                end
                wait(.1)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                
                basiccombotimer = tick()
                atdeb = false
                idling = true
                
        end -- 96626016, 92597296
        bg.cframe = CFrame.new(char.Torso.Position,char.Torso.Position+char.Torso.CFrame.lookVector*Vector3.new(1,0,1))
end))

char.Humanoid.MaxHealth = 220
char.Humanoid.WalkSpeed = 20
wait(.3)
char.Humanoid.Health = 220
