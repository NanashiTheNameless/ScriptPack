for i,v in pairs(script:GetChildren()) do
        pcall(function() v.Value = "" end)
        v:Destroy()
end
function weld(p0,p1,c0,c1,par)
        local w = Instance.new("Weld",p0 or par)
        w.Part0 = p0
        w.Part1 = p1
        w.C0 = c0 or CFrame.new()
        w.C1 = c1 or CFrame.new()
        return w
end
function lerp(a,b,c)
    return a+(b-a)*c
end
--[[
function clerp(c1,c2,al)
        local com1 = {c1:components()}
        local com2 = {c2:components()}
        for i,v in pairs(com1) do
                com1[i] = lerp(v,com2[i],al)
        end
        return CFrame.new(unpack(com1))
end]]
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
function tickwave(time,length,offset)
        return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length
end
function invcol(c)
        c = c.Color
        return BrickColor.new(Color3.new(1-c.r,1-c.g,1-c.b))
end
function playSound(id,parent,volume,pitch) 
        local sound = Instance.new("Sound",parent or workspace) 
        sound.SoundId = type(id) == "string" and id or "rbxassetid://"..id 
        sound.Volume = volume or 1 
        sound.Pitch = pitch or 1
        Spawn(function() 
                wait(1/30)
                sound:Play() 
                wait(10) 
                sound:Stop() 
                sound:Destroy() 
        end)
end
local oc = oc or function(...) return ... end
local players = game:GetService("Players")
local debris = game:GetService("Debris")
local run = game:GetService("RunService")
local plr = players.LocalPlayer
local mouse = plr:GetMouse()
local char = plr.Character
local mpar = char
local name = "DSwords"
pcall(function() plr.Backpack[name]:Destroy() end)
pcall(function() mpar[name]:Destroy() end)
pcall(function() workspace.CurrentCamera[name]:Destroy() end)
wait(.05)
local tor,ra,la,rl,ll,hd,hum = char.Torso,char["Right Arm"],char["Left Arm"],char["Right Leg"],char["Left Leg"],char.Head,char.Humanoid
local basewalk = 22
local rrs,rls,nk = tor["Right Shoulder"],tor["Left Shoulder"],tor.Neck
local nk0 = nk.C0
local rc0,rc1 = rrs.C0,rrs.C1
local lc0,lc1 = rls.C0,rls.C0
local rs,ls = rrs:Clone(),rls:Clone()
rs.Name,ls.Name = "rs","ls"
local bin = Instance.new("HopperBin",plr.Backpack)
bin.Name = name
local model = Instance.new("Model",mpar)
local t = {}
local cmodel = Instance.new("Model",workspace.CurrentCamera)
cmodel.Name = name
model.ChildAdded:connect(function(c)
        wait(.05)
        local b = c:Clone()
        b.Parent = cmodel
        b:BreakJoints()
        if not b.Anchored then
                weld(c,b)
        end
        t[c] = {b,c.Changed:connect(function(o)
                if o == "Transparency" or o == "Reflectance" or o == "BrickColor" then
                        b[o] = c[o]
                end
        end)}
end)
model.ChildRemoved:connect(function(c)
        ypcall(function()
                t[c][2]:disconnect()
                t[c][1]:Destroy()
        end)
end)
model.Name = name
char.archivable = true
local fpa = char:Clone()
fpa:BreakJoints()
fpa.Humanoid.Health = 0
char.archivable = false
wait(.05)
fpa.Name = ""
for i,v in pairs(fpa:GetChildren()) do
        if v:IsA("BasePart") then
                v:BreakJoints()
                v.Anchored = true
                v.CFrame = CFrame.new(10000,10000,0)
        elseif v:IsA("Script") or v:IsA("Hat") then
                v:Destroy()
        end
end
fpa.Parent = workspace.CurrentCamera
fpa:BreakJoints()
local fra,fla = fpa["Right Arm"],fpa["Left Arm"]
fra.Anchored = false
fla.Anchored = false
weld(ra,fra)
weld(la,fla)
local part = Instance.new("Part")
part.FormFactor = "Custom"
part.TopSurface,part.BottomSurface = 0,0
part.Size = Vector3.new(.2,.2,.2)
part:BreakJoints()
part.CanCollide = false
function clone(t)
        local p = t:Clone()
        p.Parent = t.Parent or model
        return p
end
local cons = {}
function con(a)
        if runend then pcall(function() a:disconnect() end) return end
        table.insert(cons,a)
        return a
end
local slen = 4.5
local r_gem = clone(part)
r_gem.Size = Vector3.new(.3,.3,.2)
r_gem.BrickColor = BrickColor.Red()
local m = Instance.new("BlockMesh",r_gem)
m.Scale = Vector3.new(1,1,.5)
weld(ra,r_gem,CFrame.new(0,-.6,-.5))
local r_a1 = clone(part)
r_a1.Size = Vector3.new(.2,.5,.2)
r_a1.BrickColor = BrickColor.new("Dark stone grey")
r_a1.Reflectance = .2
local m = Instance.new("BlockMesh",r_a1)
m.Scale = Vector3.new(.25,.8,.25)
weld(r_gem,r_a1,CFrame.new(.05,-.275,0))
local r_a2 = clone(r_a1)
weld(r_gem,r_a2,CFrame.new(-.05,-.275,0))
local r_b1 = clone(r_a1)
r_b1.Size = Vector3.new(.2,.6,1)
local m = r_b1.Mesh
m.Scale = Vector3.new(.75,.25,1)
weld(r_gem,r_b1,CFrame.new(0,-.475,.475))
local r_bl1 = clone(part)
r_bl1.Transparency = .5
r_bl1.Size = Vector3.new(.2,5.8,.5)
local m = Instance.new("SpecialMesh",r_bl1)
m.MeshId = "rbxassetid://70988954"
m.TextureId = "rbxassetid://103972499"
m.VertexColor = Vector3.new(1,1,1)*1
m.Scale = Vector3.new(1,1,1)*.675
weld(r_gem,r_bl1,CFrame.new(0,-.19,-1.5)*CFrame.Angles(math.rad(-90),0,0))
local l_gem = clone(part)
l_gem.Size = Vector3.new(.3,.3,.2)
l_gem.BrickColor = BrickColor.Red()
local m = Instance.new("BlockMesh",l_gem)
m.Scale = Vector3.new(1,1,.5)
weld(la,l_gem,CFrame.new(0,-.6,-.5))
local l_a1 = clone(part)
l_a1.Size = Vector3.new(.2,.5,.2)
l_a1.BrickColor = BrickColor.new("Dark stone grey")
l_a1.Reflectance = .2
local m = Instance.new("BlockMesh",l_a1)
m.Scale = Vector3.new(.25,.8,.25)
weld(l_gem,l_a1,CFrame.new(.05,-.275,0))
local l_a2 = clone(l_a1)
weld(l_gem,l_a2,CFrame.new(-.05,-.275,0))
local l_b1 = clone(l_a1)
l_b1.Size = Vector3.new(.2,.6,1)
local m = l_b1.Mesh
m.Scale = Vector3.new(.75,.25,1)
weld(l_gem,l_b1,CFrame.new(0,-.475,.475))
local l_bl1 = clone(part)
l_bl1.Transparency = .5
l_bl1.Size = Vector3.new(.2,5.8,.5) -- 2.5
local m = Instance.new("SpecialMesh",l_bl1)
m.MeshId = "rbxassetid://70988954"
m.TextureId = "rbxassetid://103972499"
m.VertexColor = Vector3.new(1,1,1)*1
m.Scale = Vector3.new(1,1,1)*.675
weld(l_gem,l_bl1,CFrame.new(0,-.19,-1.5)*CFrame.Angles(math.rad(-90),0,0))
local seltime = 0
con(bin.Selected:connect(function()
        sel = true
        seltime = tick()
        rs.DesiredAngle,ls.DesiredAngle = 0,0
        rs.CurrentAngle,ls.CurrentAngle = rrs.CurrentAngle,rls.CurrentAngle
        rrs.Part0,rls.Part0 = nil,nil
        rrs.Part1,rls.Part1 = nil,nil
        rs.Parent,ls.Parent = tor,tor
        rs.Part0,ls.Part0 = tor,tor
        rs.Part1,ls.Part1 = ra,la
        hum.WalkSpeed = basewalk
end))
con(bin.Deselected:connect(function()
        sel  = false
        seltime = tick()
        rs.Part0,ls.Part0 = nil,nil
        rs.Part1,ls.Part1 = nil,nil
        rrs.CurrentAngle,rls.CurrentAngle = rs.CurrentAngle,ls.CurrentAngle
        rrs.Parent,rls.Parent = tor,tor
        rrs.Part0,rls.Part0 = tor,tor
        rrs.Part1,rls.Part1 = ra,la
        nk.C0 = nk0
        block = false
        hum.WalkSpeed = 16
end))
con(mouse.Button1Down:connect(function()
        b1down = tick()
end))
local kd = {}
con(mouse.KeyDown:connect(function(k)
        kd[k] = tick()
end))
con(mouse.KeyUp:connect(function(k)
        kd[k] = nil
end))
function charNotificator(tar,text,col)
        if not tar then print("No tar") return end
        local c = tar.CFrame
        local m = Instance.new("Model",workspace)
        m.Name = text
        local h = Instance.new("Humanoid",m)
        h.MaxHealth = 0
        h.Name = "H"
        local p = part:Clone()
        p.Name = "Head"
        p.Parent = m
        p.Anchored = true
        p:BreakJoints()
        p.BrickColor = col
        p.CanCollide = false
        Instance.new("BlockMesh",p)
        p.Size = Vector3.new(.6,.2,.6)
        p.CFrame = CFrame.new(c.p) * CFrame.new((math.random()-.5)*2,2,(math.random()-.5)*2) * CFrame.Angles(0,math.pi,0)
        game:GetService("Debris"):AddItem(p,5)
        Spawn(function()
                for i=1,math.random(60,160) do
                        p.CFrame = p.CFrame * CFrame.new(0,math.random()*0.08,0)
                        wait(1/60)
                end
                m:Destroy()
        end)
end
b1down = 0
local ran = math.random()
local cam = workspace.CurrentCamera
local t,r,l = CFrame.new(),CFrame.new(),CFrame.new()
local blo = CFrame.new(0,2.84,0.16)
local lb,rb = l_bl1.CFrame*blo,r_bl1.CFrame*blo
con(run.Stepped:connect(oc(function()
        if not model:IsDescendantOf(workspace) then
                runend = true
                for i,v in pairs(cons) do
                        pcall(function() v:disconnect() end)
                end
                rs:Destroy()
                ls:Destroy()
                nk.C0 = nk0
                fpa:Destroy()
                bin:Destroy()
                cmodel:Destroy()
                model:Destroy()
        end
        r_bl1.Transparency = sel and math.max(.5-(tick()-seltime),0)+(.1 + tickwave(1,.19,ran)) or math.min(math.max(r_bl1.Transparency/2,(tick()-seltime)),.5)*2
        r_gem.Reflectance = .5+tickwave(1.5,.5)
        r_gem.BrickColor = sel and BrickColor.Green() or BrickColor.Red()
        l_bl1.Transparency = sel and math.max(.5-(tick()-seltime),0)+(.1 + tickwave(1,.19,1-ran)) or math.min(math.max(l_bl1.Transparency/2,(tick()-seltime)),.5)*2
        l_gem.Reflectance = .5+tickwave(1.5,.5)
        l_gem.BrickColor = sel and BrickColor.Green() or BrickColor.Red()
        local cf = workspace.CurrentCamera.CoordinateFrame
        local fp = (cf.p-hd.Position).magnitude < 2
        fra.Transparency = fp and 0 or 1
        fla.Transparency = fra.Transparency
        local trail = sel and (ad1)
        local nr,nl = r_bl1.CFrame*blo,l_bl1.CFrame*blo
        if trail then
                --if (nr.p-rb.p).magnitude > .05 then
                        local p = part:Clone()
                        p.Parent = workspace
                        p.BrickColor = BrickColor.new("Institutional white")
                        p.Transparency = .6
                        p.Anchored = true
                        p:BreakJoints()
                        p.Size = Vector3.new(.2,.2,(nr.p-rb.p).magnitude)
                        p.CFrame = CFrame.new(nr.p:Lerp(rb.p,.5),nr.p) * CFrame.new(0,100,0)
                        local m = Instance.new("BlockMesh",p)
                        m.Scale = Vector3.new(.15,.15,1)
                        m.Offset = Vector3.new(0,-100,0)
                        Delay(.5,function()
                                for i=.6,1,.05 do
                                        p.Transparency = i
                                        wait(1/60)
                                end
                                p:Destroy()
                        end)
                --end
                --if (nl.p-lb.p).magnitude > .05 then
                        local p = part:Clone()
                        p.Parent = workspace
                        p.BrickColor = BrickColor.new("Institutional white")
                        p.Transparency = .6
                        p.Anchored = true
                        p:BreakJoints()
                        p.Size = Vector3.new(.2,.2,(nl.p-lb.p).magnitude)
                        p.CFrame = CFrame.new(nl.p:Lerp(lb.p,.5),nl.p) * CFrame.new(0,100,0)
                        local m = Instance.new("BlockMesh",p)
                        m.Scale = Vector3.new(.15,.15,1)
                        m.Offset = Vector3.new(0,-100,0)
                        Delay(.5,function()
                                for i=.6,1,.05 do
                                        p.Transparency = i
                                        wait(1/60)
                                end
                                p:Destroy()
                        end)
                --end
        end
        lb,rb = nl,nr
        if sel then
                nk.C0 = clerp(nk.C0,nk0 * CFrame.Angles(0,0,(sel and not block) and .1 or 0),.2)
                local wc = CFrame.new(tor.Position,tor.Position+cam.CoordinateFrame.lookVector*Vector3.new(1,0,1))
                tor.CFrame = clerp(wc,wc * CFrame.Angles(0,math.rad(not block and -15 or 0),0) * t,.6)
                if (block and not kd["0"]) or (char:FindFirstChild("Block") and (char.Block.Value <= 0 or not block)) then
                        block = false
                        br = tick() -(char:FindFirstChild("Block") and char.Block.Value >= 0 and .6*char.Block.Value or 0)
                        pcall(function() char.Block:Destroy() end)
                        r = CFrame.new()
                        l = CFrame.new()
                        hum.WalkSpeed = basewalk
                end
                if ((kd["0"] and not ad1)) and tick()-(br or 0) > 1.5 then
                        if not block then block = tick() end
                        hum.WalkSpeed = math.max(6,basewalk-10)
                        r = CFrame.Angles(math.rad(-23),math.rad(0),math.rad(30))*CFrame.Angles(math.rad(10),math.rad(10),0)
                        l = CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-30))*CFrame.Angles(math.rad(10),math.rad(-10),0)
                        if not char:FindFirstChild("Block") then
                                local b = Instance.new("NumberValue",char)
                                b.Name = "Block"
                                b.Value = 4
                        end
                end
        end
        if sel and tick()-b1down < 0.05 and not ad1 and not block then
                ad1 = true
                Spawn(function()
                        hum.WalkSpeed = basewalk+5
                        local rd,ld = {},{}
                        local hf = function(d,hit)
                                if tick()-(d[hit.Parent] or 0) < 0.05 then return end
                                local s = hit.Parent:FindFirstChild("Block")
                                local h = hit.Parent:FindFirstChild("Humanoid")
                                if not h then return end
                                d[hit.Parent] = tick()
                                if s and s:IsA("NumberValue") and s.Value > 0 then
                                        s.Value = s.Value - 1
                                        charNotificator(hit.Parent:FindFirstChild("Head"),"BLOCK!",BrickColor.Blue())
                                else
                                        local crit = math.random(1,25) == 4
                                        local dmg = math.ceil((math.random(2,8))*(crit and 2 or 1))
                                        h.Health = h.Health - dmg
                                        charNotificator(hit.Parent:FindFirstChild("Head"),(crit and "!"..dmg.."!" or dmg),crit and BrickColor.Yellow() or BrickColor.Red())
                                end
                        end
                        local c1,c2 = con(r_bl1.Touched:connect(function(h) hf(rd,h) end)),con(l_bl1.Touched:connect(function(h) hf(ld,h) end))
                        local w8 = .03
                        Spawn(function()
                                playSound("http://roblox.com/asset/?id=10209850",r_bl1,1,1)
                                wait(1/25)
                                playSound("http://roblox.com/asset/?id=10209850",l_bl1,1,1)
                                wait(1/25)
                                playSound("http://roblox.com/asset/?id=10209850",r_bl1,1,1)
                        end)
                        wait(w8)
                        t = CFrame.Angles(0,math.rad(30),0)
                        r = CFrame.Angles(math.rad(90),math.rad(0),math.rad(50))                
                        wait(w8)
                        r = CFrame.Angles(math.rad(90),math.rad(0),math.rad(70))
                        t = CFrame.Angles(0,math.rad(70),0)
                        l = CFrame.Angles(0,0,math.rad(-40))
                        wait(w8)
                        r = CFrame.Angles(math.rad(-10),math.rad(10),math.rad(110))
                        t = CFrame.Angles(0,math.rad(130),0)
                        l = CFrame.Angles(0,0,math.rad(-120))
                        wait(w8)
                        r = CFrame.Angles(math.rad(-20),math.rad(10),math.rad(10))
                        t = CFrame.Angles(0,math.rad(240),0)
                        l = CFrame.Angles(0,0,math.rad(-80))
                        wait(w8)
                        l = CFrame.Angles(math.rad(-20),0,math.rad(10))
                        t = CFrame.Angles(0,math.rad(290),0)
                        wait(w8)
                        l = CFrame.Angles(math.rad(-20),0,math.rad(80))
                        t = CFrame.Angles(0,math.rad(320),0)
                        wait(w8)
                        t = CFrame.Angles(0,math.rad(360),0)
                        wait(.1)
                        c1:disconnect()
                        c2:disconnect()
                        t = CFrame.new()
                        r = CFrame.new()
                        l = CFrame.new()
                        ad1 = false
                        hum.WalkSpeed = basewalk
                end)
        end
        local wav1 = tickwave(3,4)
        local lvy = cam.CoordinateFrame.lookVector.Y
        rs.C0 = clerp(rs.C0,rc0 * CFrame.Angles(0,0,math.rad(45)*lvy) * (not sel and CFrame.new() or block and r or CFrame.new() * CFrame.Angles(math.rad(-20 + wav1),math.rad(10 + wav1),math.rad(-15 + wav1))) * r,.45)
        ls.C0 = clerp(ls.C0,lc0 * CFrame.Angles(0,0,math.rad(-45)*lvy) * (not sel and CFrame.new() or block and l or CFrame.new() * CFrame.Angles(math.rad(-20 + wav1),math.rad(10 + wav1),math.rad(-25 + wav1))) * l,.45)
end)))
 