--mediafire
function weld(p0,p1,c0,c1,par)
        local w = Instance.new("Weld",p0 or par)
        w.Part0 = p0
        w.Part1 = p1
        w.C0 = c0 or CFrame.new()
        w.C1 = c1 or CFrame.new()
        return w
end
do -- Credit to Stravant...
        local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
         
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
         
        local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end
        function clerp(a,b,t)
                if not a or not b then print(a,b,"is missing") return end
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z
                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
        end
end
local oc = oc or function(...) return ... end
pcall(function() script.Parent.bScript:Destroy() end)
script.Name = "bScript"
local plr = game:service'Players'.LocalPlayer
local mouse = plr:GetMouse()
local char = plr.Character
animate = char:findFirstChild("Animate")
animate:Destroy()
local tor,ra,la,rl,ll,hd,hum = char.Torso,char["Right Arm"],char["Left Arm"],char["Right Leg"],char["Left Leg"],char.Head,char.Humanoid
local rrs,rls,nk = tor["Right Shoulder"],tor["Left Shoulder"],tor.Neck
local nk0 = nk.C0
local rc0,rc1 = rrs.C0,rrs.C1
local lc0,lc1 = rls.C0,rls.C0
local rs,ls = rrs:Clone(),rls:Clone()
rs.Name,ls.Name = "rs","ls"
rs.DesiredAngle,rs.CurrentAngle = 0,0
ls.DesiredAngle,ls.CurrentAngle = 0,0
local model = Instance.new("Model",char)
pcall(function() char.bModel:Destroy() end)
model.Name = "bModel"
local part = Instance.new("Part")
part.Material = "SmoothPlastic"
part.BrickColor = BrickColor.new("Institutional white")
part.Reflectance = 0.15
part.FormFactor = "Custom"
part.TopSurface = "SmoothNoOutlines"
part.BottomSurface = "SmoothNoOutlines"
part.RightSurface = "SmoothNoOutlines"
part.LeftSurface = "SmoothNoOutlines"
part.TopSurface,part.BottomSurface = 0,0
part.Size = Vector3.new(.2,.2,.2)
part:BreakJoints()
part.CanCollide = false
function clone(t)
        local p = t:Clone()
        p.Parent = t.Parent or model
        return p
end
local han = clone(part)
han.Size = Vector3.new(.3,.5,.3)
han.Transparency = 1
local hold = weld(la,han,CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-90),math.rad(23),0),CFrame.new())
for i=1,14 do
        local gr = clone(part)
        gr.BrickColor = BrickColor.new("Silver")
        gr.Size = Vector3.new(.3,.2,.3)
        local m = Instance.new("SpecialMesh",gr)
        m.MeshType = "Sphere"
        m.Scale = Vector3.new(1,.75,1) * math.max(.85,math.abs(i-7)/5)
        weld(han,gr,CFrame.new(0,-.6+i*.085,0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(23)),CFrame.new())
end
local p = clone(part)
p.Size = Vector3.new(.45,.2,.32)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,.5,1)
weld(han,p,CFrame.new(0,-.62,.125) * CFrame.Angles(math.rad(10),0,0))
local p = clone(part)
p.Size = Vector3.new(.45,.2,.3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,.5,1)
weld(han,p,CFrame.new(0,-.62,-.125) * CFrame.Angles(math.rad(-10),0,0))
local b1 = clone(part)
b1.Size = Vector3.new(.2,1,.3)
local m = Instance.new("BlockMesh",b1)
m.Scale = Vector3.new(1,1,1)
local bw1 = weld(han,b1,CFrame.new(0,-.6,0) * CFrame.Angles(math.rad(-10),0,0),CFrame.new(0,.5,0))
local b2 = clone(part)
b2.Size = Vector3.new(.2,1,.25)
local m = Instance.new("BlockMesh",b2)
m.Scale = Vector3.new(.9,1,1)
local bw2 = weld(b1,b2,CFrame.new(0,-.5,-.15) * CFrame.Angles(math.rad(-25),0,0),CFrame.new(0,.5,-.125))
local b3 = clone(part)
b3.Size = Vector3.new(.2,1,.2)
local m = Instance.new("BlockMesh",b3)
m.Scale = Vector3.new(.75,1,1)
local bw3 = weld(b2,b3,CFrame.new(0,-.5,-.125) * CFrame.Angles(math.rad(-25),0,0),CFrame.new(0,.5,-.1))
local bt = clone(part)
bt.BrickColor = BrickColor.new("Black")
bt.Size = Vector3.new(.2,.3,.2)
local m = Instance.new("BlockMesh",bt)
m.Scale = Vector3.new(.5,1,1) * .5
local btw = weld(b3,bt,CFrame.new(0,-.5,.1) * CFrame.Angles(math.rad(-25),0,0),CFrame.new(0,0,.05))
local p = clone(part)
p.Size = Vector3.new(.45,.2,.32)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,.5,1)
weld(han,p,CFrame.new(0,.67,.125) * CFrame.Angles(math.rad(15),0,0))
local p = clone(part)
p.Size = Vector3.new(.45,.2,.3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,.5,1)
weld(han,p,CFrame.new(0,.67,-.125) * CFrame.Angles(math.rad(-15),0,0))
local p = clone(part)
p.Size = Vector3.new(.4,.2,.3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,.5,1)
weld(han,p,CFrame.new(0,.75,0) * CFrame.Angles(math.rad(0),0,0))
local p = clone(part)
p.Size = Vector3.new(.2,.3,.35)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,1,1)
weld(han,p,CFrame.new(-.1,.8,0) * CFrame.Angles(math.rad(0),0,0))
local p = clone(part)
p.Size = Vector3.new(.45,.2,.32)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,.5,1)
weld(han,p,CFrame.new(0,1,.125) * CFrame.Angles(math.rad(-5),0,0))
local p = clone(part)
p.Size = Vector3.new(.45,.2,.25)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(1,.5,1)
weld(han,p,CFrame.new(0,1,-.125) * CFrame.Angles(math.rad(5),0,0))
local t1 = clone(part)
t1.Size = Vector3.new(.2,1,.3)
local m = Instance.new("BlockMesh",t1)
m.Scale = Vector3.new(1,1,1)
local tw1 = weld(han,t1,CFrame.new(0,.975,0) * CFrame.Angles(math.rad(10),0,0),CFrame.new(0,-.5,0))
local t2 = clone(part)
t2.Size = Vector3.new(.2,1,.25)
local m = Instance.new("BlockMesh",t2)
m.Scale = Vector3.new(.9,1,1)
local tw2 = weld(t1,t2,CFrame.new(0,.5,-.15) * CFrame.Angles(math.rad(25),0,0),CFrame.new(0,-.5,-.125))
local t3 = clone(part)
t3.Size = Vector3.new(.2,1,.2)
local m = Instance.new("BlockMesh",t3)
m.Scale = Vector3.new(.75,1,1)
local tw3 = weld(t2,t3,CFrame.new(0,.5,-.125) * CFrame.Angles(math.rad(25),0,0),CFrame.new(0,-.5,-.1))
local tt = clone(part)
tt.BrickColor = BrickColor.new("Black")
tt.Size = Vector3.new(.2,.3,.2)
local m = Instance.new("BlockMesh",tt)
m.Scale = Vector3.new(.5,1,1) * .5
local ttw = weld(t3,tt,CFrame.new(0,.5,.1) * CFrame.Angles(math.rad(25),0,0),CFrame.new(0,0,.05))
local W = {bw1,bw2,bw3,tw1,tw2,tw3}
local W0 = {bw1.C0,bw2.C0,bw3.C0,tw1.C0,tw2.C0,tw3.C0}
local l1 = clone(part)
l1.BrickColor = BrickColor.new("Light reddish violet")
l1.Size = Vector3.new(.2,.2,.2)
local m = Instance.new("CylinderMesh",l1)
local l1w = weld(bt,l1)
local l2 = clone(l1)
local l2w = weld(tt,l2)
local amodel = Instance.new("Model")
local arrow = clone(part)
arrow.Parent = amodel
arrow.BrickColor = BrickColor.new("Brown")
arrow.Size = Vector3.new(.2,3,.2)
arrow.Name = "main"
local m = Instance.new("CylinderMesh",arrow)
m.Scale = Vector3.new(.5,1,.5)
local arrw = weld(han,arrow)
local tip = clone(part)
tip.Parent = amodel
tip.BrickColor = BrickColor.new("Cool yellow")
tip.Size = Vector3.new(.2,.4,.2)
tip.Name = "tip"
local m = Instance.new("SpecialMesh",tip)
m.MeshId = "rbxassetid://1033714"
m.Scale = Vector3.new(.1,.45,.1)
weld(arrow,tip,CFrame.new(0,1.6,0))
local walkspeed = 16
local hpos_i = CFrame.new(0,.8,1.3)
local hpos_l = CFrame.new(0,.8,1.55)
local hpos = hpos_i
local keeper = Vector3.new(0.07,0.82,0)
mouse.Button1Up:connect(function()
        mup = true
end)
function ragJoint(hit,r,d)
        Spawn(oc(function()
                d = d or 0
                local rpar,r0,r1 = r.Parent,r.Part0,r.Part1
                if d > 0 then wait(d) end
                local p = hit:Clone()
                p:BreakJoints()
                p:ClearAllChildren()
                p.FormFactor = "Custom"
                p.Size = p.Size/2
                p.Transparency = 1
                p.CanCollide = true
                p.Name = "Colliduh"
                p.Parent = hit
                local w = Instance.new("Weld",p)
                w.Part0 = hit
                w.Part1 = p
                w.C0 = CFrame.new(0,-p.Size.Y/2,0)
                local rot = Instance.new("Rotate",rpar)
                rot.Name = r.Name
                rot.Part0 = r0
                rot.Part1 = r1
                rot.C0 = r.C0
                rot.C1 = r.C1
                r0.Velocity = Vector3.new()
                r1.Velocity = Vector3.new()
                r:Destroy()
        end))
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
function ShootArrow(a,to,spd)
        playSound(154961548,x,1,1)
        Spawn(oc(function()
                local from = a.main.CFrame
                a:Destroy()
                local a = amodel:Clone()
                for i,v in pairs(a:GetChildren()) do
                        if v:IsA("BasePart") then
                                v.Anchored = true
                        end
                end
                a:MakeJoints()
                a.Parent = workspace
                local m = a.main
                --local from = m.CFrame
                local t = {}
                local function move(cf)
                        for i,v in pairs(a:GetChildren()) do
                                if v ~= m and v:IsA("BasePart") then
                                        t[v] = t[v] or m.CFrame:toObjectSpace(v.CFrame)
                                        v.CFrame = cf * t[v]
                                end
                        end
                        m.CFrame = cf
                end
                move(from)
                local velocity = (to.p-from.p).unit * spd * 500
                local con
                local t = tick()
                con = game:GetService("RunService").Stepped:connect(function()
                        if tick()-t > 25 then
                                con:disconnect()
                                a:Destroy()
                                return
                        end
                        velocity = velocity - Vector3.new(0,196.2/30,0)
                        local newcf = clerp(m.CFrame,CFrame.new(m.Position,m.Position+velocity) * CFrame.Angles(-math.pi/2,0,0),.5) + velocity / 30
                        local hit,ray
                        local rayo = Ray.new(m.Position,newcf.p-m.Position)
                        local ign = {a,char}
                        repeat
                                hit,ray = workspace:FindPartOnRayWithIgnoreList(rayo,ign)
                                if not hit then break end
                                if hit.CanCollide or game:GetService("Players"):GetPlayerFromCharacter(hit.Parent) then
                                playSound(154961566,x,1,1)
                                        break
                                else
                                        table.insert(ign,hit)
                                        hit = nil
                                end
                        until false
                        if hit then
                                move(newcf-newcf.p+ray)
                                con:disconnect()
                                game:GetService("Debris"):AddItem(a,300)
                                local char = hit.Parent
                                if not hit.Anchored then
                                        local b = hit.CFrame:toObjectSpace(m.CFrame)
                                        for i,v in pairs(a:GetChildren()) do
                                                pcall(function() v.Anchored = false v.CanCollide = true end)
                                        end
                                        weld(hit,m,b)
                                end
                                if game:service'Players':GetPlayerFromCharacter(char) and char:FindFirstChild("Torso") then
                                        if hit.Name:match("Arm") then
                                                local r = char.Torso:FindFirstChild(hit.Name:gsub("Arm","Shoulder"):gsub("Leg","Hip"))
                                                if r then
                                                        ragJoint(hit,r)
                                                end
                                        elseif hit.Name:match("Head") then
                                                for i,v in pairs(char:GetChildren()) do
                                                        local r = char.Torso:FindFirstChild(v.Name:gsub("Arm","Shoulder"):gsub("Leg","Hip"))
                                                        if v:IsA("BasePart") and r then
                                                                ragJoint(v,r,.1)
                                                        elseif v:IsA("Humanoid") then
                                                                v.PlatformStand = true
                                                                v.Changed:connect(function()
                                                                        v.PlatformStand = true
                                                                end)
                                                        end
                                                end
                                                Delay(8,function()
                                                        char:BreakJoints()
                                                end)
                                        end
                                end
                                return
                        else
                                move(newcf)
                        end
                end)
        end))
end
mouse.Button1Down:connect(oc(function()
        playSound(154961529,x,1,1)
        if mb then return end
        mb = true
        mup = false
        rls.Part0,rls.Part1 = nil,nil
        ls.Part0,ls.Part1 = tor,la
        ls.Parent = tor
        ls.C0 = ls.C0 * CFrame.Angles(0,0,rls.CurrentAngle)
        rrs.Part0,rrs.Part1 = nil,nil
        rs.Part0,rs.Part1 = tor,ra
        rs.Parent = tor
        rs.C0 = rs.C0 * CFrame.Angles(0,0,rrs.CurrentAngle)
        local hc0 = hold.C0
        local bg = Instance.new("BodyGyro",tor)
        bg.maxTorque = Vector3.new(1,1,1)*9e7
        local ltar = 0
        local rtar = rrs.C0 * CFrame.Angles(0,0,math.rad(90)) * CFrame.Angles(math.rad(70),0,0) + Vector3.new(-.65,.25,-.25)
        local ntar = nk0 * CFrame.Angles(0,0,math.rad(70))
        local htar = hc0 * CFrame.Angles(0,math.rad(10),0)
        local t = tick()
        local iam = 0
        local ham = .3
        local lend = false
        local ended
        local arr = amodel:Clone()
        arr.Parent = model
        arr:MakeJoints()
        hum.WalkSpeed = walkspeed/1.5
        local aw = weld(ra,arr.main,CFrame.new(0,-1,0)*CFrame.Angles(-math.pi/2,0,0),CFrame.new(0,-1.5,0))
        func = function()
                local a = (mouse.Hit.p-tor.CFrame:toWorldSpace(ls.C0).p).unit
                bg.cframe = CFrame.new(tor.Position,mouse.Hit.p*Vector3.new(1,0,1)+tor.Position*Vector3.new(0,1,0)) * CFrame.Angles(0,math.rad(-75),0)
                local b = math.min(.7,math.max(-.7,a.Y))
                ls.C0 = clerp(ls.C0,rls.C0 * CFrame.Angles(math.rad(-90),math.rad(90),math.rad(b*-90)) * CFrame.Angles(math.rad(40),math.rad(0),0) + Vector3.new(math.abs(b)*0,-.25,-.6),.3)
                local c = tor.CFrame:toObjectSpace(han.CFrame*hpos) * CFrame.new(0,0,0)
                local d = Vector3.new(1,.6,0)
                rs.C1 = CFrame.new()
                rs.C0 = clerp(rs.C0,CFrame.new(d,c.p) * CFrame.new(0,0,-(c.p-d).magnitude+.95) * CFrame.Angles(math.pi/2,math.pi/2,0),.3)
                nk.C0 = clerp(nk.C0,ntar * CFrame.Angles(math.rad(math.floor(b*-90)),0,0),.3)
                hold.C0 = clerp(hold.C0,htar,.3)
                for i,v in pairs(W) do
                        -- v.C0 = clerp(v.C0,W0[i] * CFrame.Angles((not mup and (i>3 and 1 or -1)*iam or 0)*.1,0,0),.6)
                        v.C0 = clerp(v.C0,W0[i] * CFrame.Angles((not mup and (i>3 and 1 or -1)*iam or 0)*.1,0,0),.6)
                end
                if not mup then
                        hpos = clerp(hpos,hpos_l * CFrame.new(0,0,iam),.2)
                        if aw then aw.C0 = CFrame.new(Vector3.new(0,-1,0),ra.CFrame:toObjectSpace(han.CFrame*CFrame.new(keeper)).p) * CFrame.Angles(-math.pi/2,0,0) end
                        if tick()-t > .5 and iam < 1 then
                                iam = iam + math.max(0.003,.03-(tick()-t-.5)/70)
                                ham = iam
                                if aw then
                                        aw:Destroy()
                                        arrw.Parent = han
                                        arrw.Part0 = han
                                        arrw.Part1 = arr.main
                                        aw = nil
                                end
                        end
                else
                        hpos = clerp(hpos,hpos_l,ham/math.max(0.01,(hpos.p-hpos_l.p).magnitude))
                        ham = ham * .7
                        if not ended then
                                ended = true
                                if iam > 0 then
                                        arrw.Part1 = nil
                                        ShootArrow(arr,mouse.Hit,iam)
                                        iam = iam + .2                        
                                        wait(.5)
                                        lend = true
                                else
                                        wait(.1)
                                        arr:Destroy()
                                        lend = true
                                end
                        end
                end
        end
        repeat wait() until lend or tick()-t > 45
        mup = nil
        func = nil
        hum.WalkSpeed = walkspeed
        ls.Part0,ls.Part1 = nil,nil
        ls.Parent = nil
        rls.Part0,rls.Part1 = tor,la
        ls.C0 = rls.C0
        rs.Part0,rs.Part1 = nil,nil
        rs.Parent = nil
        rrs.Part0,rrs.Part1 = tor,ra
        rs.C0 = rrs.C0
        nk.C0 = nk0
        bg:Destroy()
        hold.C0 = hc0
        hpos = hpos_i
        mb = false
end))
rcon = game:GetService("RunService").Stepped:connect(oc(function()
        if not model:IsDescendantOf(workspace) then rcon:disconnect() error() return end
        --local tc = bt.CFrame:toObjectSpace(tt.CFrame)
        --local bc = tt.CFrame:toObjectSpace(bt.CFrame)
        local bm = bt.CFrame:toObjectSpace(han.CFrame*hpos)
        local tm = tt.CFrame:toObjectSpace(han.CFrame*hpos)
        l1w.C0 = CFrame.new(bm.p/2,bm.p) * CFrame.Angles(math.pi/2,0,0)
        l1.Mesh.Scale = Vector3.new(.2,bm.p.magnitude*5,.2)
        l2w.C0 = CFrame.new(tm.p/2,tm.p) * CFrame.Angles(math.pi/2,0,0)
        l2.Mesh.Scale = Vector3.new(.2,tm.p.magnitude*5,.2)
        arrw.C0 = CFrame.new(hpos.p,keeper)*CFrame.new(0,0,-arrow.Size.Y/2) * CFrame.Angles(-math.pi/2,0,0)
        if func then
                func()
        end
end))
