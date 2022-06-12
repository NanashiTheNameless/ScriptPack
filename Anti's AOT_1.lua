pcall(function() script.Parent.aotScript:Destroy() end)
script.Name = "aotScript"
wait()
script:ClearAllChildren()
function lerp(a,b,c)
    return a+(b-a)*c
end
 
function ctlerp(c1,c2,al)
        local com1 = {c1:components()}
        local com2 = {c2:components()}
        for i,v in pairs(com1) do
                com1[i] = lerp(v,com2[i],al)
        end
        return CFrame.new(unpack(com1))
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
 
local MaxGrappleRange = 500
 
 
local plr = game.Players.LocalPlayer
cam = game.Workspace.CurrentCamera
local m = plr:GetMouse()
local char = plr.Character
if not char:FindFirstChild("Body Colors") then wait(3) end
local oc = oc or function(a) return a end
pcall(function() char.Animate:Destroy() end)
local tor = char.Torso
for i,v in pairs(tor:GetChildren()) do
        if v:IsA("BodyMover") then
                v:Destroy()
        end
end
local head = char.Head
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local hum = char["Humanoid"]
 
local runservice = game:service'RunService'
local state = "idle"
local kd = {}
 
local ochar = char:FindFirstChild("")
char.archivable = true
local fchar = char:Clone()
fchar:BreakJoints()
wait()
fchar.Name = ""
char.archivable = false
local hshirt = false
for i,v in pairs(fchar:GetChildren()) do
        pcall(tor.BreakJoints,v)
        if v.Name ~= "Torso" and v.Name ~= "Head" and not v:IsA("CharacterAppearance") and not v.Name:find("Leg") then
                v:Destroy()
        elseif v:IsA("BasePart") then
                v.TopSurface,v.BottomSurface = 0,0
                for i,v in pairs(v:GetChildren()) do
                        if v:IsA("JointInstance") then
                                v.Part0 = nil
                                v:Destroy()
                        end
                end
        elseif v:IsA("Shirt") then
                hshirt = true
        end
end
fchar.Parent = char
wait()
fchar:BreakJoints()
wait()
local ftor = fchar.Torso
ftor.FormFactor = "Custom"
ftor.Size = Vector3.new(2,2,1)
if not hshirt then
        local sm = Instance.new("BlockMesh",ftor)
        sm.Scale = Vector3.new(2,2,1)*5
end
local fhead = fchar.Head
local fll = fchar:FindFirstChild("Left Leg")
local frl = fchar:FindFirstChild("Right Leg")
 
--for i,v in pairs(head:GetChildren()) do
--        if v:IsA("JointInstance") and v.Part1 and v.Part1.Parent and v.Part1.Parent:IsA("Hat") then
--                v.Part0 = fhead
----                v.Part1.CanCollide = false
--        end
--end
 
head.Transparency = math.max(head.Transparency,.98)
tor.Transparency = 1
fhead.Transparency = 0
ftor.Transparency = 0
 
local fhat = Instance.new("Hat")
local p = Instance.new("Part",fhat)
p.Material = "SmoothPlastic"
p.Name = "Handle"
p.CanCollide = false
p.FormFactor = "Custom"
p.Transparency = 1
fhat.Parent = char
char.ChildAdded:connect(function(c)
        if c:IsA("Hat") and c ~= fhat then
                c:Destroy()
        end
end)
char.ChildRemoved:connect(function(c)
        if c == p then
                c.Parent = char
        end
end)
 
if frl and fll then
        rl.Transparency = 1
        ll.Transparency = 1
        frl.Transparency = 0
        fll.Transparency = 0
        rl.CanCollide = true
        ll.CanCollide = true
else
        rl.Transparency = 0
        ll.Transparency = 0
end
 
local c0 = {
        rs = CFrame.new(1,.5,0),
        ls = CFrame.new(-1,.5,0),
        rh = CFrame.new(.5,-1,0),
        lh = CFrame.new(-.5,-1,0),
        nk = CFrame.new(0,1,0),
}
local c1 = {
        rs = CFrame.new(-.5,.5,0),
        ls = CFrame.new(.5,.5,0),
        rh = CFrame.new(0,1,0),
        lh = CFrame.new(0,1,0),
        nk = CFrame.new(0,-.5,0),
}
 
local rs = tor["Right Shoulder"]
local ls = tor["Left Shoulder"]
local rh = tor["Right Hip"]
local lh = tor["Left Hip"]
local nk = tor["Neck"]
for i,v in pairs(tor:GetChildren()) do
        if v:IsA("Motor6D") then
                v.DesiredAngle = 0
                v.MaxVelocity = 0
                v.CurrentAngle = 0
        end
end
rs.C0,rs.C1 = c0.rs,c1.rs
ls.C0,ls.C1 = c0.ls,c1.ls
rh.C0,rh.C1 = c0.rh,c1.rh
lh.C0,lh.C1 = c0.lh,c1.lh
nk.C0,nk.C1 = c0.nk,c1.nk
 
local fnk = nk:Clone()
fnk.Part0,fnk.Part1 = ftor,fhead
fnk.Parent = fchar
local tw = Instance.new("Motor6D",ftor)
tw.Part0,tw.Part1 = tor,ftor
 
local h = Instance.new("Humanoid")
h.MaxHealth = 0
h.PlatformStand = true
h.Parent = fchar
 
rs.Part0 = ftor
ls.Part0 = ftor
if frl and fll then
        rh = rh:Clone()
        lh = lh:Clone()
        rh.Part0 = ftor
        rh.Part1 = frl
        lh.Part0 = ftor
        lh.Part1 = fll
        rh.Parent = ftor
        lh.Parent = ftor
else
        pcall(game.Destroy,frl)
        pcall(game.Destroy,fll)
        rh.Part0 = ftor
        lh.Part0 = ftor
end
 
if ochar then
        for i,v in pairs(ochar:GetChildren()) do
                if v:IsA("Hat") then
                        v.Parent = fchar
                end
        end
        ochar:Destroy()
end
 
for i,v in pairs(char:GetChildren()) do
        if v:IsA("Hat") and v ~= fhat then
                v.Parent = fchar
        end
end
 
nk.C1 = CFrame.new()
 
while false and runservice.Stepped:wait() do
        tw.C0 = CFrame.new(0,-3,0)*CFrame.Angles(math.sin(tick()*2)*1.3,0,0)*CFrame.new(0,3,0)
        nk.C0 = tor.CFrame:toObjectSpace(fhead.CFrame)
end
 
for i,v in pairs(ra:GetChildren()) do
        if v:IsA("JointInstance") then
                v:Destroy()
        end
end
 
function damage(hit,damage,cooldown)
for i,v in pairs(hit:GetChildren()) do 
if v:IsA("Humanoid") and hit.Name ~= char.Name then
local find = v:FindFirstChild("Hitz")
if not find then
if v.Parent:findFirstChild("Head") then
local BillG = Instance.new("BillboardGui",v.Parent.Head)BillG.Size = UDim2.new(1,0,1,0)
BillG.Adornee = v.Parent.Head BillG.StudsOffset = Vector3.new(math.random(-3,3),math.random(3,5),math.random(-3,3))
local TL = Instance.new("TextLabel",BillG)TL.Size = UDim2.new(1,0,1,0)
TL.BackgroundTransparency = 1 TL.Text = tostring(damage).."-"
TL.TextColor3 = BrickColor.new("Dark stone grey").Color TL.TextStrokeColor3 = BrickColor.new("Silver").Color
TL.TextStrokeTransparency = 0 TL.TextXAlignment = Enum.TextXAlignment.Center
TL.TextYAlignment = Enum.TextYAlignment.Center TL.FontSize = Enum.FontSize.Size18
TL.Font = "ArialBold"
coroutine.resume(coroutine.create(function()
wait(1)
for i = 0,1,.1 do wait(.1) BillG.StudsOffset = BillG.StudsOffset+Vector3.new(0,.1,0) end
BillG:Destroy()
end))
end
v.Health = v.Health - damage local bool = Instance.new("BoolValue",v)bool.Name = 'Hitz'game:GetService("Debris"):AddItem(bool,cooldown)
end
end
end
end
 
function weld(a,b,c,d)
        local w = Instance.new("Weld",a)
        w.Part0 = a
        w.Part1 = b
        w.C0 = c or CFrame.new()
        w.C1 = d or CFrame.new()
        return w
end
 
 
 
pcall(game.Destroy,char:FindFirstChild("AoT"))
local model = Instance.new("Model",char)
model.Name = "AoT"
 
local BasePart = Instance.new("Part")
BasePart.Material = "SmoothPlastic"
BasePart.CanCollide = false
BasePart.FormFactor = "Custom"
BasePart.Size = Vector3.new()
BasePart.TopSurface,BasePart.BottomSurface,BasePart.LeftSurface,BasePart.RightSurface,BasePart.FrontSurface,BasePart.BackSurface = 10,10,10,10,10,10
BasePart:BreakJoints()
 
function NP(par)
    local p = BasePart:Clone()
    p.Parent = par or model
    return p
end
 
local bllen = 11*.3
function createBlade(a,b,c)
        local sm = Instance.new("Model",model)
        sm.Name = "Blade"
        local cc = BasePart.CanCollide
        BasePart.CanCollide = false
        local han = NP(sm)
        han.Size = Vector3.new(.2,.2,.25)
        han.BrickColor = BrickColor.new("Light grey")
        han.Name = "Handle"
        Instance.new("BlockMesh",han).Scale = Vector3.new(.2,.75,1)
        local hanw = weld(a,han,b,c)
        hanw.Parent = han
        local p = NP(sm)
        p.Size = Vector3.new(.2,.2,.2)
        p.BrickColor = BrickColor.new("Light grey")
        Instance.new("BlockMesh",p).Scale = Vector3.new(.2,.6,.25)
        weld(han,p,CFrame.new(0,-.125,.05))
        local p = NP(sm)
        p.Size = Vector3.new(.2,.2,.2)
        p.BrickColor = BrickColor.new("Light grey")
        Instance.new("BlockMesh",p).Scale = Vector3.new(.2,.6,.25)
        weld(han,p,CFrame.new(0,-.125,-.05))
        local p = NP(sm)
        p.Size = Vector3.new(.2,.2,.27)
        p.BrickColor = BrickColor.new("Light grey")
        Instance.new("BlockMesh",p).Scale = Vector3.new(.225,.25,1)
        weld(han,p,CFrame.new(0,-.05,0))
 
        local p = NP(sm)
        p.Size = Vector3.new(.2,bllen,.2)
        p.BrickColor = BrickColor.new("White")
        Instance.new("BlockMesh",p).Scale = Vector3.new(.1,1,1)
        weld(han,p,CFrame.new(0,bllen/2+.075,0.02))
        local hs1 = Instance.new("Sound",ra)
        hs1.SoundId = "rbxassetid://10209583"
 
        p.Touched:connect(function(hit)
                pcall(function() 
                        if attacktype and hit.Name == "Vulnerable" and hit.Parent.Alive.Value then 
                                hit.Parent.Alive.Value = false 
                                hs1.Pitch = 1
                                hs1:Play()
                        end 
                end)
        end)
 
        local f = p:Clone()
        f.Parent = p.Parent
        f.Size = f.Size * f.Mesh.Scale
        f.Mesh:Destroy()
        f.CanCollide = false
        f.Transparency = 1
        weld(p,f,CFrame.new(.088,-.05,0))
        local Var = f.Touched:connect(function(Hit) damage(Hit.Parent,math.random(30,45),1) end)
        local t = Instance.new("Texture",f)
        t.StudsPerTileU = .3
        t.StudsPerTileV = .3
        t.Transparency = .5
        t.Texture = "rbxassetid://5752880"
        t.Face = "Left"
 
        local f = p:Clone()
        f.Parent = p.Parent
        f.Size = f.Size * f.Mesh.Scale
        f.Mesh:Destroy()
        f.CanCollide = false
        f.Transparency = 1
        weld(p,f,CFrame.new(-.088,.05,0))
        local t = Instance.new("Texture",f)
        t.StudsPerTileU = .3
        t.StudsPerTileV = .3
        t.Transparency = .5
        t.Texture = "rbxassetid://5752880"
        t.Face = "Right"
 
        lp = p
 
        for i=0,(bllen/.3)-1 do
                local p = NP(sm)
                p.Transparency = .6
                p.BrickColor = BrickColor.new("Really black")
                p.Size = Vector3.new(.2,.2,.2)
                Instance.new("BlockMesh",p).Scale = Vector3.new(.102,.1,.01)
                weld(lp,p,CFrame.new(0,-bllen/2+.05+i*.3,.1))
        end
 
        local p = NP(sm)
        p.Size = Vector3.new(.2,.2,.2)
        p.BrickColor = BrickColor.new("White")
        local mesh = Instance.new("SpecialMesh",p)
        mesh.MeshType = "Wedge"
        mesh.Scale = Vector3.new(.1,1,1)
        weld(lp,p,CFrame.new(0,bllen/2+.1,0)*CFrame.Angles(0,math.pi,0))
 
        local md = Vector3.new(0,.1,-.14)
        local b = NP(sm)
        b.Size = Vector3.new(.2,bllen+.2,.2)
        b.BrickColor = BrickColor.new("White")
        b.Reflectance = .5
        Instance.new("BlockMesh",b).Scale = Vector3.new(0,1,math.sqrt(.01^2+.04^2)*5)
        weld(lp,b,CFrame.new(Vector3.new(.01,.1,-.1):Lerp(md,.5),md))
 
        local b = NP(sm)
        b.Size = Vector3.new(.2,bllen+.2,.2)
        b.BrickColor = BrickColor.new("White")
        b.Reflectance = .5
        Instance.new("BlockMesh",b).Scale = Vector3.new(0,1,math.sqrt(.01^2+.04^2)*5)
        weld(lp,b,CFrame.new(Vector3.new(-.01,.1,-.1):Lerp(md,.5),md))
        BasePart.CanCollide = cc
        return sm,hanw
end
 
local holdylen = 3.5
 
lH = NP()
lH.Size = Vector3.new(.3,.8,holdylen)
lH.BrickColor = BrickColor.new("Light grey")
lHw = weld(fll,lH,CFrame.new(-.6,.2,.6)*CFrame.Angles(.2,.05,0))
 
leg = NP()
leg.Size = Vector3.new(1.05,.25,1.05)
leg.BrickColor = BrickColor.new("Black")
weld(fll,leg,CFrame.new(0,.55,0))
 
leg = NP()
leg.Size = Vector3.new(1.05,.25,1.05)
leg.BrickColor = BrickColor.new("Black")
weld(fll,leg,CFrame.new(0,.2,0))
 
p = NP()
p.Size = Vector3.new(.2,.7,.2)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.05)
weld(lH,p,CFrame.new(.065,0,-holdylen/2))
 
p = NP()
p.Size = Vector3.new(.2,.7,.2)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.05)
weld(lH,p,CFrame.new(-.065,0,-holdylen/2))
 
lH2 = NP()
lH2.Size = Vector3.new(.3,.8,holdylen)
lH2.BrickColor = BrickColor.new("Light grey")
weld(lH,lH2,CFrame.new(-.304,0,0))
 
p = NP()
p.Size = Vector3.new(.2,.7,.2)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.05)
weld(lH2,p,CFrame.new(.065,0,-holdylen/2))
 
p = NP()
p.Size = Vector3.new(.2,.7,.2)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.05)
weld(lH2,p,CFrame.new(-.065,0,-holdylen/2))
 
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.5,1,.5)
weld(lH,p,CFrame.new(-.152,.5,-1.5))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(.5,1.5,.5)
weld(lp,p,CFrame.new(0,.1,0)*CFrame.Angles(math.pi/2,0,math.pi/2))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(.5,1.5,.5)
weld(lp,p,CFrame.new(0,.075,.125)*CFrame.Angles(math.pi/2,0,0))
p = NP()
p.Reflectance = .3
p.Size = Vector3.new(.5,2.75,.5)
p.BrickColor = BrickColor.new("White")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,1,1)
weld(lH,p,CFrame.new(-.152,.6,.1)*CFrame.Angles(-math.pi/2,0,0))
s = NP()
s.Reflectance = .3
s.Size = Vector3.new(.5,.5,.5)
s.BrickColor = BrickColor.new("White")
mesh = Instance.new("SpecialMesh",s)
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1,.35,1)
weld(p,s,CFrame.new(0,-p.Size.Y/2,0)*CFrame.Angles(0,0,0))
s = NP()
s.Reflectance = .3
s.Size = Vector3.new(.5,.5,.5)
s.BrickColor = BrickColor.new("White")
mesh = Instance.new("SpecialMesh",s)
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1,.35,1)
weld(p,s,CFrame.new(0,p.Size.Y/2,0)*CFrame.Angles(0,0,0))
lp = p
p = NP()
p.Size = Vector3.new(.65,.35,1.3)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,1,1)
weld(lp,p,CFrame.new(0,.8,-0.375))
p = NP()
p.Size = Vector3.new(.65,.35,1.3)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,1,1)
weld(lp,p,CFrame.new(0,0,-0.375))
p = NP()
p.Size = Vector3.new(.65,.35,1.3)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,1,1)
weld(lp,p,CFrame.new(0,-.8,-0.375))
 
 
rH = NP()
rH.Size = Vector3.new(.3,.8,holdylen)
rH.BrickColor = BrickColor.new("Light grey")
rHw = weld(frl,rH,CFrame.new(.6,.2,.6)*CFrame.Angles(.2,-.05,0))
 
leg = NP()
leg.Size = Vector3.new(1.05,.25,1.05)
leg.BrickColor = BrickColor.new("Black")
weld(frl,leg,CFrame.new(0,.55,0))
 
leg = NP()
leg.Size = Vector3.new(1.05,.25,1.05)
leg.BrickColor = BrickColor.new("Black")
weld(frl,leg,CFrame.new(0,.2,0))
 
p = NP()
p.Size = Vector3.new(.2,.7,.2)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.05)
weld(rH,p,CFrame.new(.065,0,-holdylen/2))
 
p = NP()
p.Size = Vector3.new(.2,.7,.2)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.05)
weld(rH,p,CFrame.new(-.065,0,-holdylen/2))
 
rH2 = NP()
rH2.Size = Vector3.new(.3,.8,holdylen)
rH2.BrickColor = BrickColor.new("Light grey")
weld(rH,rH2,CFrame.new(.304,0,0))
 
p = NP()
p.Size = Vector3.new(.2,.7,.2)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.05)
weld(rH2,p,CFrame.new(.065,0,-holdylen/2))
 
p = NP()
p.Size = Vector3.new(.2,.7,.2)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.05)
weld(rH2,p,CFrame.new(-.065,0,-holdylen/2))
 
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.5,1,.5)
weld(rH,p,CFrame.new(.152,.5,-1.5))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(.5,1.5,.5)
weld(lp,p,CFrame.new(0,.1,0)*CFrame.Angles(math.pi/2,0,math.pi/2))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(.5,1.5,.5)
weld(lp,p,CFrame.new(0,.075,.125)*CFrame.Angles(math.pi/2,0,0))
p = NP()
p.Size = Vector3.new(.5,2.75,.5)
p.Reflectance = .3
p.BrickColor = BrickColor.new("White")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,1,1)
weld(rH,p,CFrame.new(.152,.6,.1)*CFrame.Angles(-math.pi/2,0,0))
s = NP()
s.Size = Vector3.new(.5,.5,.5)
s.Reflectance = .3
s.BrickColor = BrickColor.new("White")
mesh = Instance.new("SpecialMesh",s)
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1,.35,1)
weld(p,s,CFrame.new(0,-p.Size.Y/2,0)*CFrame.Angles(0,0,0))
s = NP()
s.Size = Vector3.new(.5,.5,.5)
s.Reflectance = .3
s.BrickColor = BrickColor.new("White")
mesh = Instance.new("SpecialMesh",s)
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1,.35,1)
weld(p,s,CFrame.new(0,p.Size.Y/2,0)*CFrame.Angles(0,0,0))
s,mesh = nil,nil
lp = p
p = NP()
p.Size = Vector3.new(.65,.35,1.3)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,1,1)
weld(lp,p,CFrame.new(0,.8,-0.375))
p = NP()
p.Size = Vector3.new(.65,.35,1.3)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,1,1)
weld(lp,p,CFrame.new(0,0,-0.375))
p = NP()
p.Size = Vector3.new(.65,.35,1.3)
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,1,1)
weld(lp,p,CFrame.new(0,-.8,-0.375))
 
 
rhan = NP()
rhan.Size = Vector3.new(.26,1.1,.2)
rhan.BrickColor = BrickColor.new("Black")
Instance.new("BlockMesh",rhan).Scale = Vector3.new(.5,1,1)
rhanw = weld(ra,rhan,CFrame.new(0,-.95,0)*CFrame.Angles(-math.pi/2,0,0))
 
p = NP()
p.Size = Vector3.new(.25,1.3,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.5,1,1)
weld(rhan,p,CFrame.new(0,0,.09-.1))
lp = p
p = NP()
p.Size = Vector3.new(.25,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.52,1,1)
weld(lp,p,CFrame.new(0,-.675,-.02)*CFrame.Angles(.1,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.513,.25,1)
weld(lp,p,CFrame.new(0,.55,-.1))
p = NP()
p.Size = Vector3.new(.2,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.51,.25,1)
weld(lp,p,CFrame.new(0,.4,-.085))
p = NP()
p.Size = Vector3.new(.2,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.513,.25,1)
weld(lp,p,CFrame.new(0,.25,-.07))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.515,1,.25)
weld(lp,p,CFrame.new(0,.324,-.195)*CFrame.Angles(-.1,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.514,1,.25)
weld(lp,p,CFrame.new(0,.5185,-.2044)*CFrame.Angles(0,0,0))
 
p = NP()
p.Size = Vector3.new(.25,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.4,1)
weld(lp,p,CFrame.new(0,.605,-.125)*CFrame.Angles(0,0,0))
 
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.75,.5,1)
weld(lp,p,CFrame.new(0,.675,-.05)*CFrame.Angles(0,0,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.Reflectance = .1
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.752,.1,1.02)
weld(lp,p,CFrame.new(0,.025,0)*CFrame.Angles(0,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.Reflectance = .1
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.752,.1,1.02)
weld(lp,p,CFrame.new(0,-.025,0)*CFrame.Angles(0,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3,0.05,.95)
weld(lp,p,CFrame.new(0,.05,0)*CFrame.Angles(0,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.2)
weld(lp,p,CFrame.new(0,-.1,-.175)*CFrame.Angles(.45,0,0),CFrame.new(0,.1,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3505,1,.2)
weld(lp,p,CFrame.new(0,-.1,-.02)*CFrame.Angles(-.65,0,0)*CFrame.new(0,0,.02),CFrame.new(0,.1,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3505,1,.2)
weld(lp,p,CFrame.new(0,-.1,.02)*CFrame.Angles(.25,0,0)*CFrame.new(0,0,-.02),CFrame.new(0,.1,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3505,1,.2)
weld(lp,p,CFrame.new(0,-.1,.02)*CFrame.Angles(.05,0,0)*CFrame.new(0,0,-.02),CFrame.new(0,.1,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3505,1,.2)
weld(lp,p,CFrame.new(0,-.1,.02)*CFrame.Angles(.15,0,0)*CFrame.new(0,0,-.02),CFrame.new(0,.1,0))
 
 
 
lhan = NP()
lhan.Size = Vector3.new(.26,1.1,.2)
lhan.BrickColor = BrickColor.new("Black")
Instance.new("BlockMesh",lhan).Scale = Vector3.new(.5,1,1)
lhanw = weld(la,lhan,CFrame.new(0,-.95,0)*CFrame.Angles(-math.pi/2,0,0))
 
p = NP()
p.Size = Vector3.new(.25,1.3,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.5,1,1)
weld(lhan,p,CFrame.new(0,0,.09-.1))
lp = p
p = NP()
p.Size = Vector3.new(.25,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.52,1,1)
weld(lp,p,CFrame.new(0,-.675,-.02)*CFrame.Angles(.1,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.513,.25,1)
weld(lp,p,CFrame.new(0,.55,-.1))
p = NP()
p.Size = Vector3.new(.2,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.51,.25,1)
weld(lp,p,CFrame.new(0,.4,-.085))
p = NP()
p.Size = Vector3.new(.2,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.513,.25,1)
weld(lp,p,CFrame.new(0,.25,-.07))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.515,1,.25)
weld(lp,p,CFrame.new(0,.324,-.195)*CFrame.Angles(-.1,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.514,1,.25)
weld(lp,p,CFrame.new(0,.5185,-.2044)*CFrame.Angles(0,0,0))
 
p = NP()
p.Size = Vector3.new(.25,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.4,1)
weld(lp,p,CFrame.new(0,.605,-.125)*CFrame.Angles(0,0,0))
 
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.75,.5,1)
weld(lp,p,CFrame.new(0,.675,-.05)*CFrame.Angles(0,0,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.Reflectance = .1
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.752,.1,1.02)
weld(lp,p,CFrame.new(0,.025,0)*CFrame.Angles(0,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.Reflectance = .1
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.752,.1,1.02)
weld(lp,p,CFrame.new(0,-.025,0)*CFrame.Angles(0,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3,0.05,.95)
weld(lp,p,CFrame.new(0,.05,0)*CFrame.Angles(0,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.35,1,.2)
weld(lp,p,CFrame.new(0,-.1,-.175)*CFrame.Angles(.45,0,0),CFrame.new(0,.1,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3505,1,.2)
weld(lp,p,CFrame.new(0,-.1,-.02)*CFrame.Angles(-.65,0,0)*CFrame.new(0,0,.02),CFrame.new(0,.1,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3505,1,.2)
weld(lp,p,CFrame.new(0,-.1,.02)*CFrame.Angles(.25,0,0)*CFrame.new(0,0,-.02),CFrame.new(0,.1,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3505,1,.2)
weld(lp,p,CFrame.new(0,-.1,.02)*CFrame.Angles(.05,0,0)*CFrame.new(0,0,-.02),CFrame.new(0,.1,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3505,1,.2)
weld(lp,p,CFrame.new(0,-.1,.02)*CFrame.Angles(.15,0,0)*CFrame.new(0,0,-.02),CFrame.new(0,.1,0))
 
p = NP()
p.Size = Vector3.new(.25,1.3,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.5,1,1)
weld(lhan,p,CFrame.new(0,0,.09-.1))
lp = p
p = NP()
p.Size = Vector3.new(.25,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.52,1,1)
weld(lp,p,CFrame.new(0,-.675,-.02)*CFrame.Angles(.1,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.513,.25,1)
weld(lp,p,CFrame.new(0,.55,-.1))
p = NP()
p.Size = Vector3.new(.2,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.51,.25,1)
weld(lp,p,CFrame.new(0,.4,-.085))
p = NP()
p.Size = Vector3.new(.2,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.513,.25,1)
weld(lp,p,CFrame.new(0,.25,-.07))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.515,1,.25)
weld(lp,p,CFrame.new(0,.324,-.195)*CFrame.Angles(-.1,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.514,1,.25)
weld(lp,p,CFrame.new(0,.5185,-.2044)*CFrame.Angles(0,0,0))
 
p = NP()
p.Size = Vector3.new(.25,.2,.25)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.4,1)
weld(lp,p,CFrame.new(0,.605,-.125)*CFrame.Angles(0,0,0))
 
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.Reflectance = .2
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.75,.5,1)
weld(lp,p,CFrame.new(0,.675,-.05)*CFrame.Angles(0,0,0))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.Reflectance = .1
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.752,.1,1.02)
weld(lp,p,CFrame.new(0,.025,0)*CFrame.Angles(0,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.Reflectance = .1
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.752,.1,1.02)
weld(lp,p,CFrame.new(0,-.025,0)*CFrame.Angles(0,0,0))
p = NP()
p.Size = Vector3.new(.2,.2,.3)
p.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",p).Scale = Vector3.new(.3,0.05,.95)
weld(lp,p,CFrame.new(0,.05,0)*CFrame.Angles(0,0,0))
 
belt = NP()
belt.Size = Vector3.new(2.05,.4,1.05)
belt.BrickColor = BrickColor.new("Black")
Instance.new("BlockMesh",belt).Scale = Vector3.new(1,1,1)
weld(ftor,belt,CFrame.new(0,-.75,0)*CFrame.Angles(0,0,0))
 
lSM = Instance.new("Model",model)
lSH = Instance.new("Humanoid",lSM)
lSH.PlatformStand = true
lSH.MaxHealth = 0
lSL = Instance.new("SelectionPointLasso",lSH)
lSL.Humanoid = lSH
lSL.Color = BrickColor.new("Really black")
lSL.Visible = false
lS = NP()
lS.Size = Vector3.new(.25,.3,1.5)
lS.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",lS).Scale = Vector3.new(1,1,1)
weld(belt,lS,CFrame.new(-1.05,0,0)*CFrame.Angles(.2,0,0)+Vector3.new(0,.05,0))
p = NP()
p.Size = Vector3.new(lS.Size.X,lS.Size.Z,lS.Size.X)
p.BrickColor = BrickColor.new("Really black")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,1,1)
weld(lS,p,CFrame.new(0,lS.Size.Y/2,0)*CFrame.Angles(-math.pi/2,0,0))
 
p = NP()
p.Size = Vector3.new(.28,.32,.2)
p.Reflectance = .8
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,1,.5)
weld(lS,p,CFrame.new(0,0,-.65))
lp = p
p = NP(lSM)
p.Name = "Torso"
wait(.5)
p.Size = Vector3.new(lp.Size.X,lp.Size.Z,lp.Size.X)
p.Reflectance = .8
p.BrickColor = BrickColor.new("Light grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.5,1)
weld(lp,p,CFrame.new(0,lp.Size.Y/2,0)*CFrame.Angles(-math.pi/2,0,0))
 
rSM = Instance.new("Model",model)
rSH = Instance.new("Humanoid",rSM)
rSH.PlatformStand = true
rSH.MaxHealth = 0
rSL = Instance.new("SelectionPointLasso",rSH)
rSL.Color = BrickColor.new("Really black")
rSL.Humanoid = rSH
rSL.Visible = false
rS = NP(rSM)
rS.Size = Vector3.new(.25,.3,1.5)
rS.BrickColor = BrickColor.new("Really black")
Instance.new("BlockMesh",rS).Scale = Vector3.new(1,1,1)
weld(belt,rS,CFrame.new(1.05,0,0)*CFrame.Angles(.2,0,0)+Vector3.new(0,.05,0))
p = NP()
p.Size = Vector3.new(rS.Size.X,rS.Size.Z,rS.Size.X)
p.BrickColor = BrickColor.new("Really black")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,1,1)
weld(rS,p,CFrame.new(0,rS.Size.Y/2,0)*CFrame.Angles(-math.pi/2,0,0))
 
p = NP()
p.Size = Vector3.new(.28,.32,.2)
p.Reflectance = .8
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,1,.5)
weld(rS,p,CFrame.new(0,0,-.65))
lp = p
p = NP(rSM)
p.Name = "Torso"
wait(.5)
p.Size = Vector3.new(lp.Size.X,lp.Size.Z,lp.Size.X)
p.Reflectance = .8
p.BrickColor = BrickColor.new("Light grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.5,1)
weld(lp,p,CFrame.new(0,lp.Size.Y/2,0)*CFrame.Angles(-math.pi/2,0,0))
 
p = NP()
p.Size = Vector3.new(.65,.2,.65)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,1,1)
btw = weld(belt,p,CFrame.new(0,.2,.8)*CFrame.Angles(.45,0,0))
lb = p
lp = p
p = NP()
p.Size = Vector3.new(.4,.45,.4)
p.BrickColor = BrickColor.new("Black")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,1,1)
weld(lp,p,CFrame.new(0,-.2,-.225)*CFrame.Angles(.45,0,0))
 
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1,.5,1)
weld(lp,p,CFrame.new(0,.025,.3)*CFrame.Angles(.15,0,0))
 
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1.75,.25,1.75)
weld(lp,p,CFrame.new(0,-.025,.4)*CFrame.Angles(.25,0,0))
 
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1.1,.2,2)
weld(lp,p,CFrame.new(.35,-.125,.15)*CFrame.Angles(0,1.4,0)*CFrame.Angles(.7,0,0))
lp = p
 
p = NP()
p.Size = Vector3.new(.2,.4,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(.7,1,.7)
weld(lp,p,CFrame.new(0,.2,.1))
lp = p
 
p = NP()
p.Size = Vector3.new(.8,.2,.8)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.75,1)
weld(lp,p,CFrame.new(0,.2,0))
lp = p
p = NP()
p.Size = Vector3.new(.4,.2,.4)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.05,1)
weld(lp,p,CFrame.new(0,.075,0))
 
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.75,.1,1)
weld(lp,p,CFrame.Angles(0,-2.8,0)*CFrame.new(0,.075,-.45))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.75,.5,.1)
weld(lp,p,CFrame.new(0,-.05,-.1+.01))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.75,.1,.3)
weld(lp,p,CFrame.new(0,-.1+.01,-.1+.03))
 
 
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(1.1,.2,2)
weld(lb,p,CFrame.new(-.35,-.125,.15)*CFrame.Angles(0,-1.4,0)*CFrame.Angles(.7,0,0))
lp = p
 
p = NP()
p.Size = Vector3.new(.2,.4,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(.7,1,.7)
weld(lp,p,CFrame.new(0,.2,.1))
lp = p
 
p = NP()
p.Size = Vector3.new(.8,.2,.8)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Medium stone grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.75,1)
weld(lp,p,CFrame.new(0,.2,0))
lp = p
p = NP()
p.Size = Vector3.new(.4,.2,.4)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.05,1)
weld(lp,p,CFrame.new(0,.075,0))
 
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.75,.1,1)
weld(lp,p,CFrame.Angles(0,-2.8,0)*CFrame.new(0,.075,-.45))
lp = p
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.75,.5,.1)
weld(lp,p,CFrame.new(0,-.05,-.1+.01))
p = NP()
p.Size = Vector3.new(.2,.2,.2)
p.Reflectance = .3
p.BrickColor = BrickColor.new("Light grey")
Instance.new("BlockMesh",p).Scale = Vector3.new(.75,.1,.3)
weld(lp,p,CFrame.new(0,-.1+.01,-.1+.03))
 
 
rLine = NP()
rLine.Size = Vector3.new(.2,.2,.2)
rLine.Anchored = true
rLine.CanCollide = false
rLine.BrickColor = BrickColor.new("Really black")
rLineM = Instance.new("SpecialMesh",rLine)
rLineM.MeshType = "Cylinder"
rLineM.Scale = Vector3.new(.5,.5,1)
rLine0 = CFrame.new(0,rS.Size.Y/2,-rS.Size.Z/2)
 
lLine = NP()
lLine.Size = Vector3.new(.2,.2,.2)
lLine.Anchored = true
lLine.CanCollide = false
lLine.BrickColor = BrickColor.new("Really black")
lLineM = Instance.new("SpecialMesh",lLine)
lLineM.MeshType = "Cylinder"
lLineM.Scale = Vector3.new(.5,.5,1)
lLine0 = CFrame.new(0,lS.Size.Y/2,-lS.Size.Z/2)
 
local rTar,rTarP;
local lTar,lTarP;
 
 
local rbld,rbldw = createBlade(rhan,CFrame.new(0,.775,-.061))
 
local lbld,lbldw = createBlade(lhan,CFrame.new(0,.775,-.061))
 
 
 
local sdist = -holdylen/2-.2
local bBlades = {
        createBlade(lH2,CFrame.new(.065,0,sdist)*CFrame.Angles(math.pi/2,math.pi,0)),
        createBlade(rH2,CFrame.new(-.065,0,sdist)*CFrame.Angles(math.pi/2,math.pi,0)),
        createBlade(lH,CFrame.new(-.065,0,sdist)*CFrame.Angles(math.pi/2,math.pi,0)),
        createBlade(rH,CFrame.new(.065,0,sdist)*CFrame.Angles(math.pi/2,math.pi,0)),
        createBlade(lH,CFrame.new(.065,0,sdist)*CFrame.Angles(math.pi/2,math.pi,0)),
        createBlade(rH,CFrame.new(-.065,0,sdist)*CFrame.Angles(math.pi/2,math.pi,0)),
}
 
 
local ss1 = Instance.new("Sound",lS)
ss1.SoundId = "rbxassetid://101064941"
ss1.Pitch = 2
local ss2 = Instance.new("Sound",lS)
ss2.SoundId = "rbxassetid://130849509"
ss2.Pitch = 5
 
local gs1 = Instance.new("Sound",tor)
gs1.SoundId = "rbxassetid://130849509"
gs1.Pitch = 3
 
m.KeyDown:connect(oc(function(k)
        local now = tick()
        kd[k] = now
        if k == "0" then
                running = not running
        end
        if k == "e" and not rInAir then
                rInAir = true
                coroutine.wrap(function()
                        ss2.Parent = rS
                        wait(.05)
                        ss2.Pitch = 5
                        ss2:Play()
                end)()
                local p = (rS.CFrame*rLine0).p
                local rang = 0
                local dir = (m.Hit.p-p).unit
                local one = MaxGrappleRange/15
                local hit;
                while rang < MaxGrappleRange and kd[k] do
                        dir = dir - Vector3.new(0,0.002,0)
                        hit,rTarP = workspace:FindPartOnRayWithIgnoreList(Ray.new(p,dir.unit*math.min(one,MaxGrappleRange-rang)),{char})
                        rang = rang + one
                        if hit and hit.CanCollide then
                                rTar,rTarP = hit,hit.CFrame:toObjectSpace(CFrame.new(rTarP))
                                ss1.Parent = rS
                                ss1.Pitch = 2
                                ss1:Play()
                                break
                        end
                        p = rTarP
                        wait(-1)
                end
                rInAir = false
                while rTar and kd[k] and wait() do
                end
                rTar,rTarP = nil,nil
        end
        if k == " " and state ~= "inair" then
                kd[k] = nil
        elseif k == " " and state == "inair" and (lTar or rTar) then
                gs1:Play()
                --tor.Velocity = Vector3.new(tor.Velocity.X,math.max(80,tor.Velocity.Y),tor.Velocity.Z)
        end
        if k == "q" and not lInAir then
                lInAir = true
                coroutine.wrap(function()
                        ss2.Parent = lS
                        wait(.05)
                        ss2.Pitch = 5
                        ss2:Play()
                end)()
                local p = (lS.CFrame*lLine0).p
                local rang = 0
                local dir = (m.Hit.p-p).unit
                local one = MaxGrappleRange/15
                local hit;
                while rang < MaxGrappleRange and kd[k] do
                        dir = dir - Vector3.new(0,0.002,0)
                        hit,lTarP = workspace:FindPartOnRayWithIgnoreList(Ray.new(p,dir.unit*math.min(one,MaxGrappleRange-rang)),{char})
                        rang = rang + one
                        if hit and hit.CanCollide then
                                lTar,lTarP = hit,hit.CFrame:toObjectSpace(CFrame.new(lTarP))
                                ss1.Parent = lS
                                ss1.Pitch = 2
                                ss1:Play()
                                break
                        end
                        p = lTarP
                        wait(-1)
                end
                lInAir = false
                while lTar and kd[k] and wait() do
                end
                lTar,lTarP = nil,nil
        end
end))
m.KeyUp:connect(oc(function(k)
        kd[k] = nil
end))
 
m.Button2Down:connect(oc(function()
        kd.m2 = tick()
end))
 
m.Button2Up:connect(oc(function()
        kd.m2 = nil
end))
 
local as1 = Instance.new("Sound",ra)
as1.SoundId = "rbxassetid://54587039"
local as2 = Instance.new("Sound",la)
as2.SoundId = "rbxassetid://54587039"
 
m.Button1Down:connect(oc(function()
        kd.m1 = tick()
        local now = time()
        if now-(lastattack or 0) < .3 then return end
        lastattack = now
        attacktype = attacktype and attacktype%2+1 or 1
        coroutine.wrap(function()
                wait(.05)
                as1.Pitch = 1.1+math.random()*.2
                as1:Play()
                wait(.04)
                as2.Pitch = 1.3+math.random()*.2
                as2:Play()
                game:service'Debris':AddItem(s,2)
        end)()
        wait(.6)
        if lastattack == now then
                attacktype = nil
        end
end))
 
m.Button1Up:connect(oc(function()
        kd.m1 = nil
end))
 
local humspd = 0
 
hum.Running:connect(function(spd)
        humspd = spd
        state = spd > 0 and "walk" or "idle"
end)
 
hum.Changed:connect(function()
        if state == "inair" or tick()-(lastair or 0) < .2 then
                hum.Jump = false
        end
end)
 
hum.FreeFalling:connect(function()
        state = "inair"
end)
hum.FallingDown:connect(function()
        state = "inair"
end)
 
m.TargetFilter = nil
 
 
if game.PlaceId ~= 21053234 and false then
        pcall(function() workspace.testModel:Destroy() end)
        local tm = Instance.new("Model",workspace)
        tm.Name = "testModel"
        local p = NP(tm)
        p.CanCollide = true
        p.Anchored = true
        p.Size = Vector3.new(7,10,7)
        p.CFrame = CFrame.new(100,135,0)
        local p = NP(tm)
        p.Name = "Vulnerable"
        p.CanCollide = true
        p.BrickColor = BrickColor.Red()
        p.Anchored = true
        p.Size = Vector3.new(5,4,3)
        p.CFrame = CFrame.new(100,131,2.05)
 
 
        local v = Instance.new("BoolValue",tm)
        v.Name = "Alive"
        v.Value = true
        v.Changed:connect(function(s)
                if s == "Value" or s == false then
                        v.Parent.Vulnerable.Transparency = 1
                        local b = p.Parent.Body
                        local t = b.CFrame
                        b.Growl:Play()
                        b.Yell:Play()
                        local i = 0
                        local pl = false
                        while i < 1 do
                                i = math.min(1,i+(math.abs(i-.3) < .1 and .005 or i<.5 and .01 or .06))
                                b.CFrame = t * CFrame.new(0,-b.Size.Y/2,-b.Size.Z/2) * CFrame.Angles(-i*math.pi/2,0,0) * CFrame.new(0,b.Size.Y/2,b.Size.Z/2)
                                if not pl and i > .95 then
                                        b.Parent.Boom:Play()
                                        print("Played")
                                        pl = true
                                end
                                wait()
                        end
                        wait(6)
                        v.Value = true
                        b.CFrame = t
                        v.Parent.Vulnerable.Transparency = 0
                end
        end)
        local p = NP(tm)
        p.Name = "Body"
        p.CanCollide = true
        p.Anchored = true
        p.Size = Vector3.new(16,130,8)
        p.CFrame = CFrame.new(100,65,0)
        local d1 = Instance.new("Sound",p.Parent)
        d1.Name = "Boom"
        d1.Pitch = .8
        d1.SoundId = "rbxassetid://11984254"
        d1:Play()
        local ms1 = Instance.new("Sound",p)
        ms1.SoundId = "rbxassetid://36431384"
        ms1.Name = "Growl"
        ms1.Pitch = .7
        local ms2 = Instance.new("Sound",p)
        ms2.SoundId = "rbxassetid://105374058"
        ms2.Name = "Yell"
        ms2.Pitch  =.3
 
        local p = NP(tm)
        p.CanCollide = true
        p.Anchored = true
        p.Size = Vector3.new(1000,2,150)
        p.CFrame = CFrame.new(400+500,100,0)
 
end
 
tar = NP()
tar.Anchored = true
tar.CanCollide = false
tar.Size = Vector3.new(1,1,1)
tar.Transparency = 1
tar.BrickColor = BrickColor.Yellow()
tar:BreakJoints()
 
tor.Touched:connect(function(hit)
        if hit and hit:GetMass() > tor:GetMass()*2 then
                --tor.Velocity = tor.Velocity*.5
        end
end)
 
 
 
local t = tick()
while true do
        local delta = wait(-1)
        h.PlatformStand = true
        local p = {}
        if (lTar or lInAir) and lTarP then
                local p1 = lTar and (lTar.CFrame*lTarP).p or lTarP
                lSL.Visible = true
                lSL.Point = p1
                if lTar then
                        table.insert(p,p1)
                end
        else
                lSL.Visible = false
        end
        if (rTar or rInAir) and rTarP then
                local p1 = rTar and (rTar.CFrame*rTarP).p or rTarP
                rSL.Visible = true
                rSL.Point = p1
                if rTar then
                        table.insert(p,p1)
                end
        else
                rSL.Visible = false
        end
 
 
        --+math.min(0,tor.Velocity.Y*delta*.6)
        local hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3+math.min(0,tor.Velocity.Y*delta),0)),{char})
        if hit and #p == 0 and tor.Velocity.Y < .5 then
                if state == "inair" then
                        state = humspd > 0 and "walk" or "idle"
                        tor.Velocity = Vector3.new()
                end
        end
 
        if state == "inair" then
                lastair = tick()
                if not rotater and not rp then
                        rotater = Instance.new("BodyGyro",tor)
                        rotater.D = 250
                        rotater.maxTorque = Vector3.new(1,1,1)*4e5
                        rotater.cframe = tor.CFrame
                elseif rotater and rp then
                        rotater:Destroy()
                        rotater = nil
                end
                hum.PlatformStand = true
                local clv = workspace.CurrentCamera.CoordinateFrame.lookVector
 
                local vel = tor.Velocity
                if vel.magnitude < .5 then
                        vel = tor.CFrame.lookVector
                end
                if rotater then
                        local p = tor.Position
                        local hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(p,Vector3.new(0,-50+math.min(0,vel.y)*delta,0)),{char})
                        if hit then
                                if (vel*Vector3.new(1,0,1)).magnitude < .5 then
                                        vel = tor.CFrame.lookVector
                                end
                                rotater.cframe = ctlerp(rotater.cframe,CFrame.new(p,p+vel*Vector3.new(1,0,1)),.2)
                        else
                                rotater.cframe = ctlerp(rotater.cframe,CFrame.new(p,p+vel),.05)
                        end
                        local dir = workspace.CurrentCamera.CoordinateFrame:vectorToWorldSpace(Vector3.new((kd.a and -1 or 0)+(kd.d and 1 or 0),0,(kd.w and -1 or 0)+(kd.s and 1 or 0))) * Vector3.new(1,0,1)
                        if dir.magnitude > 0 then
                                tor.Velocity = tor.Velocity + dir.unit*delta*5
                        end
                end
        else
                lastpos = nil
                if rotater then
                        rotater:Destroy()
                        rotater = nil
                end
                if hum.PlatformStand then
                        tor.Velocity = Vector3.new()
                end
                hum.PlatformStand = false
        end
 
        if state == "inair" and #p > 0 then
                local f = Vector3.new()
                for i,v in pairs(p) do
                        local dif = (v-tor.Position)
                        f = f + dif
                end
                f = f / #p
                tar.CFrame = CFrame.new(tor.Position+f)
                if not rp then
                        rp = Instance.new("RocketPropulsion",tor)
                end
                if rotater then
                        rotater:Destroy()
                        rotater = nil
                end
                rp.MaxSpeed = 600
                rp.MaxThrust = 1e5
                rp.CartoonFactor = 0.2
                rp.ThrustP = 40
                rp.ThrustD = 2
                rp.MaxTorque = Vector3.new(1,1,1)*20000
                rp.TurnD = 30
                rp.TurnP = 250
                rp.Target = tar
                rp.TargetOffset = Vector3.new(0,-2,0)
                rp.TargetRadius = 1
                if tar.CFrame == lasttarcf then
                        rp:Abort()
                        rp:Fire()
                end
                lasttarcf = tar.CFrame
        else
                bvel = nil
                mdist = nil
                if rp then
                        rp:Destroy()
                        rp = nil
                end
        end
        
        if tor.Velocity.magnitude > 200 then
                tor.Velocity = tor.Velocity.unit * 200
        end
        if state == "idle" then
                local breathing = math.sin(tick()*2)
                local alpha = .2
                local tilt = 0
                tw.C0 = clerp(tw.C0,CFrame.Angles(.02+breathing*.03,0,0),alpha)
                rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-.01-breathing*.03,-.2-breathing*.03,.15),alpha)
                lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-.01-breathing*.03,.2+breathing*.03,-.15),alpha)
                fnk.C0 = clerp(fnk.C0,c0.nk*CFrame.Angles(breathing*.05-.03,0,0),alpha)
                btw.C1 = clerp(btw.C1,CFrame.Angles(tilt,0,0),alpha/2)
                if attacktype == 1 then
                        local since = time()-lastattack
                        local a = since < .1 and since/.1 or 0
                        local b = since > .1 and math.min(1,(since-.1)/.2) or 0
                        alpha = .6
                        rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+1.2,math.pi/2,0)*CFrame.Angles(.5-2.3*b,0,0),alpha)
                        ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+1.5,-math.pi/2,0)*CFrame.Angles(.5+-2.3*b,0,0),alpha)
                elseif attacktype == 2 then
                        local since = time()-lastattack
                        local a = since < .1 and since/.1 or 0
                        local b = since > .1 and math.min(1,(since-.1)/.2) or 0
                        alpha = .6
                        rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+.7,.35,0)*CFrame.Angles(1.8-2.9*b,0,0),alpha)
                        ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+.7,-.35,0)*CFrame.Angles(1.6+-2.7*b,0,0),alpha)
                else
                        rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-.03-breathing*.1,-.35,.25),alpha)
                        ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-.03-breathing*.1,.35,-.25),alpha)
                end
        elseif state == "walk" then
                if running then
                        hum.WalkSpeed = 45
                        local breathing = math.sin(tick()*3)
                        local move = math.cos(tick()*12.5)
                        local move2 = math.cos(tick()*25)
                        local alpha = .4
                        local tilt = .02+breathing*.03+move2*-.25-.6
                        tw.C0 = clerp(tw.C0,CFrame.Angles(tilt,move*.05,0)+Vector3.new(0,-.2,0),alpha)
                        rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt+move*.6-.2,-.05-breathing*.03,.05),alpha)
                        lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt+-move*.6-.2,.05+breathing*.03,-.05),alpha)
                        fnk.C0 = clerp(fnk.C0,c0.nk*CFrame.Angles(-tilt+move2*.03-.3,0,0),alpha)
                        btw.C1 = clerp(btw.C1,CFrame.Angles(tilt,0,0),alpha/2)
                        if attacktype == 1 then
                                local since = time()-lastattack
                                local a = since < .1 and since/.1 or 0
                                local b = since > .1 and math.min(1,(since-.1)/.2) or 0
                                alpha = .6
                                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+1.2,math.pi/2,0)*CFrame.Angles(.5-2.3*b,0,0),alpha)
                                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+1.5,-math.pi/2,0)*CFrame.Angles(.5+-2.3*b,0,0),alpha)
                        elseif attacktype == 2 then
                                local since = time()-lastattack
                                local a = since < .1 and since/.1 or 0
                                local b = since > .1 and math.min(1,(since-.1)/.2) or 0
                                alpha = .6
                                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+.7,.35,0)*CFrame.Angles(1.8-2.9*b,0,0),alpha)
                                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+.7,-.35,0)*CFrame.Angles(1.6+-2.7*b,0,0),alpha)
                        else
                                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+-move*.05-1.2,-.75-move*.05,.35),alpha)
                                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+move*.05-1.2,.75-move*.05,-.35),alpha)
                        end
                else
                        hum.WalkSpeed = 16
                        local breathing = math.sin(tick()*2)
                        local move = math.cos(tick()*hum.WalkSpeed/2)
                        local move2 = math.cos(tick()*hum.WalkSpeed)
                        local alpha = .4
                        local tilt = .02+breathing*.03+move2*-.05-.05
                        tw.C0 = clerp(tw.C0,CFrame.Angles(tilt,move*.05,0),alpha)
                        rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt+move*.3,-.05-breathing*.03,.05),alpha)
                        lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt+-move*.3,.05+breathing*.03,-.05),alpha)
                        fnk.C0 = clerp(fnk.C0,c0.nk*CFrame.Angles(move2*.03,0,0),alpha)
                        btw.C1 = clerp(btw.C1,CFrame.Angles(tilt,0,0),alpha/2)
                        if attacktype == 1 then
                                local since = time()-lastattack
                                local a = since < .1 and since/.1 or 0
                                local b = since > .1 and math.min(1,(since-.1)/.2) or 0
                                alpha = .6
                                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+1.2,math.pi/2,0)*CFrame.Angles(.5-2.3*b,0,0),alpha)
                                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+1.5,-math.pi/2,0)*CFrame.Angles(.5+-2.3*b,0,0),alpha)
                        elseif attacktype == 2 then
                                local since = time()-lastattack
                                local a = since < .1 and since/.1 or 0
                                local b = since > .1 and math.min(1,(since-.1)/.2) or 0
                                alpha = .6
                                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+.7,.35,0)*CFrame.Angles(1.8-2.9*b,0,0),alpha)
                                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+.7,-.35,0)*CFrame.Angles(1.6+-2.7*b,0,0),alpha)
                        else
                                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+-move*.4,-.05-move*.05,.25),alpha)
                                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+move*.4,.05-move*.05,-.25),alpha)
                        end
                end
        elseif state == "inair" then
                local breathing = math.sin(tick()*3)
                local alpha = .1
                local tilt = .02+breathing*.03+.3
                tw.C0 = clerp(tw.C0,CFrame.Angles(tilt,0,0)+Vector3.new(0,0,0),alpha)
                rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt-.3,-.05-breathing*.03,.05),alpha)
                lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt-.4,.05+breathing*.03,-.05),alpha)
                fnk.C0 = clerp(fnk.C0,c0.nk*CFrame.Angles(-tilt*.8,0,0),alpha)
                btw.C1 = clerp(btw.C1,CFrame.Angles(tilt,0,0),alpha/2)
                if attacktype == 1 then
                        local since = time()-lastattack
                        local a = since < .1 and since/.1 or 0
                        local b = since > .1 and math.min(1,(since-.1)/.2) or 0
                        alpha = .6
                        rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+1.2,math.pi/2,0)*CFrame.Angles(.5-2.3*b,0,0),alpha)
                        ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+1.5,-math.pi/2,0)*CFrame.Angles(.5+-2.3*b,0,0),alpha)
                elseif attacktype == 2 then
                        local since = time()-lastattack
                        local a = since < .1 and since/.1 or 0
                        local b = since > .1 and math.min(1,(since-.1)/.2) or 0
                        alpha = .6
                        rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+.7,.35,0)*CFrame.Angles(1.8-2.9*b,0,0),alpha)
                        ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+.7,-.35,0)*CFrame.Angles(1.6+-2.7*b,0,0),alpha)
                else
                        rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+2.8,.45,.25),alpha)
                        ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+2.7,-.45,-.25),alpha)
                end
        end
        nk.C0 = tor.CFrame:toObjectSpace(fhead.CFrame)
end