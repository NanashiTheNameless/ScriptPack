_G.mantisReload = function()
    
local plr = game:service'Players'.LocalPlayer
local pg = plr:WaitForChild("PlayerGui")
local mouse = plr:GetMouse()
local char = plr.Character
local root = char:WaitForChild'HumanoidRootPart'
local head = char:WaitForChild'Head'
local tor = char:WaitForChild'Torso'
local la,ra = char["Left Arm"],char["Right Arm"]
local ll,rl = char["Left Leg"],char["Right Leg"]
tor.CFrame = tor.CFrame + Vector3.new(0,5,0)

local hum = char.Humanoid
local step = game:GetService("RunService").RenderStepped

pcall(function() workspace["vmodel"..plr.Name]:Destroy() end)
pcall(function() pg.bgui:Destroy() end)
if not script:IsA("ModuleScript") then
    pcall(function() script.Parent.vehicularScript:Destroy() end)
    script.Name = "vehicularScript"
end

local sg = Instance.new("ScreenGui",pg)
sg.Name = "bgui"
local p = Instance.new("ImageLabel",sg)
p.Size = UDim2.new(0,6,0,6)
p.Position = UDim2.new(.5,-3,.5,-3)
p.BackgroundColor3 = Color3.new(1,1,1)
p.BackgroundTransparency = .6
local p2 = p:Clone()
p2.Parent = sg
p2.Rotation = 45
local m = Instance.new("Model",workspace)
m.Name = "vmodel"..plr.Name
Instance.new("Humanoid",m).Name = "Shadow"
local hval = Instance.new("NumberValue",m)
hval.Value = 100
hval.Name = "hp"

function weld(a,b,c,d)
    local w = Instance.new("Motor6D",a)
    w.Part0,w.Part1,w.C0,w.C1 = a,b,c or CFrame.new(),d or CFrame.new()
    return w
end

do
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

function lerp(a,b,t)
    return a+(b-a)*t
end

local cancollide = true
local par = m
function Part(Part0,C0,C1,Size,Color,Ref,Trans,Mesh,Material)
    local p = Instance.new("Part",par)
    p.FormFactor = "Custom"
    p.TopSurface,p.BottomSurface,p.BackSurface,p.FrontSurface,p.RightSurface,p.LeftSurface = 10,10,10,10,10,10
    p.Size = Size or Vector3.new()
    p.Material = "SmoothPlastic"
    p.CanCollide = cancollide
    p.Locked = true
    if p.Size ~= Size or Mesh then
        local bm = Mesh or Instance.new("BlockMesh")
        bm.Parent = p
        bm.Scale = Size/p.Size*bm.Scale
        bm.Parent = p
    end
    p.BrickColor = Color or BrickColor.new(1001)
    p.Reflectance = Ref or 0
    p.Transparency = Trans or 0
    p.Material = Material or p.Material
    local w;
    if Part0 then
        w = weld(Part0,p,C0,C1)
    end
    return p,w
end

function Mesh(type,scale,arg1,arg2,arg3,arg4,arg5)
    local m = Instance.new(type)
    m.Scale = scale or Vector3.new(1,1,1)
    if type == "SpecialMesh" then
        m.MeshType = arg1
        if arg1=="FileMesh" then
            m.MeshId = arg2 or m.MeshId
            m.TextureId = arg3 or m.TextureId
            m.Offset = arg4 or m.Offset
            m.VertexColor = arg5 or m.VertexColor
        else
            m.VertexColor = arg3 or m.VertexColor
            m.Offset = arg2 or m.Offset
        end
    else
        m.Offset = arg1 or m.Offset
        m.VertexColor = arg2 or m.VertexColor
    end
    return m
end

local b = BrickColor.new
local cols = {b(21),b(23),b(141),b(104),b(106),b(24),b(9),b(5)}
function gcol(plr)
    if teamColorsEnabled and pcall(function() assert(plr.AccountAge ~= nil) end) and not plr.Neutral then
        return plr.TeamColor.Color
    else
        local v=0;
        local n=tostring(plr);
        local a=#n;
        for i in n:gmatch(".") do
            v = v + ((a+(#n%2==1 and -1 or 0))%4 > 1 and -1 or 1)*i:byte()
            a = a - 1
        end
        return cols[(v%8)+1].Color
    end
end


local body = BrickColor.new("Really black")
local body2 = BrickColor.new("Institutional white")
local body3 = BrickColor.new("Really black")
local bodyref = .2
local body2ref = .2
local body3ref = .5

local pipe = BrickColor.new("Dark stone grey")
local pipe2 = body2--BrickColor.new("Institutional white")
local pipe3 = body--BrickColor.new("Really black")
local piperef = .25
local pipe2ref = .2
local pipe3ref = .25

hum.Sit = true


local fc = Instance.new("Model",m)
par = fc
local tr = Part(tor,CFrame.new(),CFrame.new(),Vector3.new(),BrickColor.new(),0,1)
tr.Name = "Torso"
Part(tr,CFrame.new(),CFrame.new(),Vector3.new(),BrickColor.new(),0,1).Name = "Head"
Part(ra,CFrame.new(),CFrame.new(),Vector3.new(),ra.BrickColor,0,0).Name = "Right Arm"
Part(la,CFrame.new(),CFrame.new(),Vector3.new(),la.BrickColor,0,0).Name = "Left Arm"
Part(rl,CFrame.new(),CFrame.new(),Vector3.new(),rl.BrickColor,0,0).Name = "Right Leg"
Part(ll,CFrame.new(),CFrame.new(),Vector3.new(),ll.BrickColor,0,0).Name = "Left Leg"
local hm = Instance.new("Humanoid",fc)
hm.MaxHealth = math.huge
hm.PlatformStand = true
for i,v in pairs(char:GetChildren()) do
    if v:IsA("Clothing") or v:IsA("CharacterMesh") then
        v:Clone().Parent = fc
        if v:IsA("Shirt") then
            pcall(game.Destroy,tr:FindFirstChild("Mesh"))
            pcall(game.Destroy,fc["Right Arm"]:FindFirstChild("Mesh"))
            pcall(game.Destroy,fc["Left Arm"]:FindFirstChild("Mesh"))
        elseif v:IsA("Pants") then
            pcall(game.Destroy,tr:FindFirstChild("Mesh"))
            pcall(game.Destroy,fc["Right Leg"]:FindFirstChild("Mesh"))
            pcall(game.Destroy,fc["Left Leg"]:FindFirstChild("Mesh"))
        end
    end
end
local h = Instance.new("Hat",fc)
par = h
Part(tr,CFrame.new(),CFrame.new(),Vector3.new(),BrickColor.new(),0,1).Name = "Handle"
par = m

local main,mainweld = Part(tor,CFrame.new(0,-2.25,0)*CFrame.Angles(0,0,0),CFrame.new(0,0,0),Vector3.new(3,1,2),body,bodyref,0)
Part(main,CFrame.new(0,.5,-.4),CFrame.new(),Vector3.new(2.3,.2,1.3),body2,0,0)
local p = Part(main,CFrame.new(0,-.5,1)*CFrame.Angles(-1.4,0,0)*CFrame.new(0,.5,1.25),CFrame.new(),Vector3.new(2.3,.75,2.5),body,bodyref)
Part(p,CFrame.new(0,.375,0),CFrame.new(),Vector3.new(2.2,.2,1.4),body2,0,0)
p = Part(p,CFrame.new(0,-.375,1.25)*CFrame.Angles(-.15,0,0)*CFrame.new(0,.375,.8),CFrame.new(),Vector3.new(2.3,.75,1.6),body,bodyref)
p.CanCollide = false
Part(p,CFrame.new(0,.375,0),CFrame.new(),Vector3.new(2.2,.2,1.2),body2,0,0).CanCollide = false
local back = Part(main,CFrame.new(0,1.4,1)*CFrame.Angles(.15,math.pi,0),CFrame.new(),Vector3.new(2,2,3),body,bodyref,0,Mesh("SpecialMesh",Vector3.new(3,3.8,6.5),"FileMesh","rbxassetid://9944765"))
Part(main,CFrame.new(0,-.5,1.75)*CFrame.Angles(-1.1,0,0)*CFrame.new(0,.5,1.25),CFrame.new(),Vector3.new(1.75,1.5,2.25),body,bodyref)
Part(main,CFrame.new(0,0,1.25),CFrame.new(),Vector3.new(1.75,1.1,1.5),body,bodyref)
local p = Part(main,CFrame.new(0,.5,-1)*CFrame.Angles(-.2,0,0)*CFrame.new(0,-.375,-.5),CFrame.new(),Vector3.new(2.75,.75,1),body,bodyref)
Part(p,CFrame.new(0,.375,.05),CFrame.new(),Vector3.new(2.3,.2,.95),body2,0,0)
Part(p,CFrame.new(0,.8,-.45),CFrame.new(),Vector3.new(2.3,1,.3),body2,0,0)
Part(p,CFrame.new(0,1.5,-.4)*CFrame.Angles(.2,0,0),CFrame.new(),Vector3.new(2.3,.5,.3),body2,0,0)
local p = Part(main,CFrame.new(0,2.1,-2.9)*CFrame.Angles(.9,0,0),CFrame.new(),Vector3.new(1.5,2.5,1),body,bodyref,0)
local p = Part(p,CFrame.new(0,1.25,.5)*CFrame.Angles(-.9,0,0)*CFrame.new(0,.5,-.7),CFrame.new(),Vector3.new(1.501,1,1.4),body,bodyref,0)
local h = Part(p,CFrame.new(.4,-.2,.7)*CFrame.Angles(0,1.425,0)*CFrame.new(.175,0,.9),CFrame.new(),Vector3.new(.35,.35,1.8),body,bodyref,0)
Part(h,CFrame.new(0,0,.225),CFrame.new(),Vector3.new(.4,.4,1.3),body2,body2ref,0)
Part(h,CFrame.new(0,0,.9),CFrame.new(),Vector3.new(.45,.45,.1),body3,body3ref,0)
Part(h,CFrame.new(0,0,-.45),CFrame.new(),Vector3.new(.425,.425,.1),body3,body3ref,0)
Part(h,CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,.6),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,.45),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,.3),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,.15),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,0),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,-.15),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,-.3),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
local h = Part(p,CFrame.new(-.4,-.2,.7)*CFrame.Angles(0,-1.425,0)*CFrame.new(-.175,0,.9),CFrame.new(),Vector3.new(.35,.35,1.8),body,bodyref,0)
Part(h,CFrame.new(0,0,.225),CFrame.new(),Vector3.new(.4,.4,1.3),body2,body2ref,0)
Part(h,CFrame.new(0,0,.9),CFrame.new(),Vector3.new(.45,.45,.1),body3,body3ref,0)
Part(h,CFrame.new(0,0,-.45),CFrame.new(),Vector3.new(.425,.425,.1),body3,body3ref,0)
Part(h,CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,.6),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,.45),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,.3),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,.15),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,0),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,-.15),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)
Part(h,CFrame.new(0,0,-.3),CFrame.new(),Vector3.new(.415,.415,.025),body3,body3ref,0)

local e = Part(main,CFrame.new(0,1,-4.6)*CFrame.Angles(-.2,-math.pi/2,0)*CFrame.new(0,-.2,0),CFrame.new(),Vector3.new(5,5,5),body,bodyref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
p = Part(e,CFrame.new(-2.25,2.25,0)*CFrame.Angles(0,-math.pi/2,0)*CFrame.Angles(-.05,0,0),CFrame.new(),Vector3.new(2,2,3),body,bodyref,0,Mesh("SpecialMesh",Vector3.new(2,1.75,9.5),"FileMesh","rbxassetid://9944765"))
p = Part(p,CFrame.new(0,-.2,.4)*CFrame.Angles(0,0,0)*CFrame.Angles(-.175,0,0),CFrame.new(),Vector3.new(1,1,1),body2,body2ref,0,Mesh("SpecialMesh",Vector3.new(2.3,2.3,2),"FileMesh","rbxassetid://9944765"))

p = Part(e,CFrame.new(2,.25,2)*CFrame.Angles(1.35,math.pi/2,0)*CFrame.Angles(0,0,0),CFrame.new(),Vector3.new(2,2,3),body,bodyref,0,Mesh("SpecialMesh",Vector3.new(2.5,2.5,9.5),"FileMesh","rbxassetid://9944765"))
p = Part(p,CFrame.new(0,.2,-4.55)*CFrame.Angles(0,math.pi,-.1),CFrame.new(),Vector3.new(1,1,1),body,bodyref,0,Mesh("SpecialMesh",Vector3.new(1.6,1.1,9),"FileMesh","rbxassetid://9944765"))

p = Part(e,CFrame.new(2,.25,-2)*CFrame.Angles(-1.35,math.pi/2,0)*CFrame.Angles(0,0,0),CFrame.new(),Vector3.new(2,2,3),body,bodyref,0,Mesh("SpecialMesh",Vector3.new(2.5,2.5,9.5),"FileMesh","rbxassetid://9944765"))
p = Part(p,CFrame.new(0,.2,-4.55)*CFrame.Angles(0,math.pi,-.1),CFrame.new(),Vector3.new(1,1,1),body,bodyref,0,Mesh("SpecialMesh",Vector3.new(1.6,1.1,9),"FileMesh","rbxassetid://9944765"))



local e2 = Part(e,CFrame.new(-2.5,0,0)*CFrame.Angles(0,math.pi/2,0),CFrame.new(),Vector3.new(5,5,1),body,bodyref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Sphere"))
local et = Part(e2,CFrame.new(0,.05,-.6)*CFrame.Angles(-math.pi/2+.05,0,0),CFrame.new(),Vector3.new(5,5,1),body,bodyref,0,Mesh("SpecialMesh",Vector3.new(3.45,5,3.45),"FileMesh","rbxassetid://16659502"))
local g1 = Part(et,CFrame.new(0,-.5,0)*CFrame.Angles(math.pi/2,0,0),CFrame.new(),Vector3.new(2.5,2.5,2.5),body2,body2ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Sphere"))
local g2 = Part(g1,CFrame.new(0,0,-1)*CFrame.Angles(.15,math.pi/2,0),CFrame.new(),Vector3.new(.75,.6,.6),body2,body2ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
local t1 = Part(g2,CFrame.new(.9,.05,0)*CFrame.Angles(0,0,0),CFrame.new(),Vector3.new(1,.4,.4),body3,body3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
local t1s = Instance.new("Sound",t1)
t1s.SoundId = "rbxassetid://78498351"
t1s.Volume = 0.5
t1s.Pitch = 1.5

Part(t1,CFrame.Angles(.75,0,0)*CFrame.new(.3,.2,0)*CFrame.Angles(0,0,math.pi/2),CFrame.new(),Vector3.new(.025,.15,.15),BrickColor.new(1003),0,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(t1,CFrame.Angles(.75,0,0)*CFrame.new(0,.2,0)*CFrame.Angles(0,0,math.pi/2),CFrame.new(),Vector3.new(.025,.15,.15),BrickColor.new(1003),0,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(t1,CFrame.Angles(.75,0,0)*CFrame.new(-.3,.2,0)*CFrame.Angles(0,0,math.pi/2),CFrame.new(),Vector3.new(.025,.15,.15),BrickColor.new(1003),0,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(t1,CFrame.Angles(-.75,0,0)*CFrame.new(.3,.2,0)*CFrame.Angles(0,0,math.pi/2),CFrame.new(),Vector3.new(.025,.15,.15),BrickColor.new(1003),0,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(t1,CFrame.Angles(-.75,0,0)*CFrame.new(0,.2,0)*CFrame.Angles(0,0,math.pi/2),CFrame.new(),Vector3.new(.025,.15,.15),BrickColor.new(1003),0,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(t1,CFrame.Angles(-.75,0,0)*CFrame.new(-.3,.2,0)*CFrame.Angles(0,0,math.pi/2),CFrame.new(),Vector3.new(.025,.15,.15),BrickColor.new(1003),0,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(t1,CFrame.new(.5,0,0),CFrame.new(),Vector3.new(.01,.225,.225),BrickColor.new(1003),0,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))

local b = Part(main,CFrame.new(0,-.65,-2.9),CFrame.new(),Vector3.new(2.8,2,7.9),body,bodyref,0)
local b2 = Part(b,CFrame.new(0,-.5,-2.5),CFrame.new(),Vector3.new(7,1,2),body,bodyref,0)

local w = Part(b2,CFrame.new(-3.5,0,0),CFrame.new(),Vector3.new(1.2,1.05,2),body,bodyref,0)
local w = Part(w,CFrame.new(.6,0,-1)*CFrame.Angles(0,.5,0)*CFrame.new(-.6,0,-1),CFrame.new(),Vector3.new(1.2,1.049,2),body,bodyref,0)
Part(w,CFrame.new(.6,0,0),CFrame.new(),Vector3.new(.5,1.1,2.07),body2,body2ref,0)
local w = Part(w,CFrame.new(.6,0,-1)*CFrame.Angles(0,.5,0)*CFrame.new(-.6,0,-.95),CFrame.new(),Vector3.new(1.2,1.05,1.9),body,bodyref,0)
Part(w,CFrame.new(.6,0,0),CFrame.new(),Vector3.new(.5,1.095,2.05),body2,body2ref,0)
local w = Part(w,CFrame.new(.6,0,-.95)*CFrame.Angles(0,.57,0)*CFrame.new(-.65,0,-1.2),CFrame.new(),Vector3.new(1.3,1.049,2.4),body,bodyref,0)
Part(w,CFrame.new(.65,0,.8),CFrame.new(),Vector3.new(.5,1.1,.95),body2,body2ref,0)
local w = Part(w,CFrame.new(-.6,0,-1.2)*CFrame.Angles(0,-1.57,0)*CFrame.new(.8,0,-1.25),CFrame.new(),Vector3.new(1.6,1.05,2.5),body,bodyref,0)
local w = Part(w,CFrame.new(-.8,0,-1.25)*CFrame.Angles(0,-.4,0)*CFrame.new(.7,0,1.25),CFrame.new(),Vector3.new(1.4,1.049,2.5),body,bodyref,0)
local w = Part(w,CFrame.new(.7,0,1.25)*CFrame.Angles(0,-.45,0)*CFrame.new(-.7,0,1),CFrame.new(),Vector3.new(1.4,1.05,2),body,bodyref,0)
local w = Part(w,CFrame.new(-.7,0,1)*CFrame.Angles(0,.6,0)*CFrame.new(.7,0,1),CFrame.new(),Vector3.new(1.4,1.049,2),body,bodyref,0)
local w = Part(w,CFrame.new(-.7,0,1)*CFrame.Angles(0,.55,0)*CFrame.new(.7,0,1),CFrame.new(),Vector3.new(1.4,1.05,2),body,bodyref,0)
local w = Part(w,CFrame.new(-.7,0,1)*CFrame.Angles(0,.5,0)*CFrame.new(.7,0,1),CFrame.new(),Vector3.new(1.4,1.049,2),body,bodyref,0)
local w = Part(w,CFrame.new(-.7,0,1)*CFrame.Angles(0,.45,0)*CFrame.new(.6,0,.5),CFrame.new(),Vector3.new(1.5,1.05,1),body,bodyref,0)
local w = Part(w,CFrame.new(-.75,0,.5)*CFrame.Angles(0,.325,0)*CFrame.new(.5,0,1.3),CFrame.new(),Vector3.new(1.6,1.049,2.6),body,bodyref,0)
local w = Part(w,CFrame.new(-.2,0,1.3)*CFrame.Angles(0,.65,0)*CFrame.new(.5,0,.8),CFrame.new(),Vector3.new(1,1.05,1.6),body,bodyref,0)
local w = Part(w,CFrame.new(-.5,0,.8)*CFrame.Angles(0,.45,0)*CFrame.new(.5,0,1),CFrame.new(),Vector3.new(1,1.05,2),body,bodyref,0)


cancollide = false
Part(b2,CFrame.new(-3.5-3,.125,0)*CFrame.Angles(-math.pi/2,0,0),CFrame.new(),Vector3.new(3,3,1),body2,body2ref,0,Mesh("SpecialMesh",Vector3.new(5,5,6),"FileMesh","rbxassetid://3270017"),"DiamondPlate")
Part(b2,CFrame.new(-3.5-3,-.125,0)*CFrame.Angles(-math.pi/2,0,0),CFrame.new(),Vector3.new(3,3,1),body2,body2ref,0,Mesh("SpecialMesh",Vector3.new(5,5,6),"FileMesh","rbxassetid://3270017"))
cancollide = true

local propl,proplw = Part(b2,CFrame.new(-6.5,0,0),CFrame.new(),Vector3.new(.4,.75,.4),body2,body2ref,0,Mesh("CylinderMesh",Vector3.new(1,1,1)),"DiamondPlate")
Part(propl,CFrame.new(0,.35,0),CFrame.new(),Vector3.new(.6,.25,.6),body3,body3ref,0,Mesh("CylinderMesh",Vector3.new(1,1,1)),"DiamondPlate")
Part(propl,CFrame.new(0,-.35,0),CFrame.new(),Vector3.new(.5,.15,.5),body3,body3ref,0,Mesh("CylinderMesh",Vector3.new(1,1,1)),"DiamondPlate")
Part(propl,CFrame.Angles(0,0*math.pi*2/3,0)*CFrame.new(0,0,.3),CFrame.new(),Vector3.new(.15,.65,.3),body3,body3ref,0,nil,"DiamondPlate")
Part(propl,CFrame.Angles(0,1*math.pi*2/3,0)*CFrame.new(0,0,.3),CFrame.new(),Vector3.new(.15,.65,.3),body3,body3ref,0,nil,"DiamondPlate")
Part(propl,CFrame.Angles(0,2*math.pi*2/3,0)*CFrame.new(0,0,.3),CFrame.new(),Vector3.new(.15,.65,.3),body3,body3ref,0,nil,"DiamondPlate")
propl.Name = "SoundPlayer1"
local ps2 = Instance.new("Sound",propl)
ps2.SoundId = "rbxassetid://134145308"
ps2.Pitch = 2
ps2.Volume = 1
ps2.Looped = true
ps2:Play()


local p = Part(propl,CFrame.Angles(0,0*math.pi*2/3,0)*CFrame.new(0,0,.35+.8)*CFrame.Angles(0,0,-1.3),CFrame.new(),Vector3.new(.05,.5,1.7),body2,body2ref,0,nil,"Plastic")
Part(p,CFrame.Angles(0,0,1.3)*CFrame.new(-.125,0,.85),CFrame.new(),Vector3.new(.7,.25,.05),body2,body2ref,0,nil,"Plastic")
local p = Part(propl,CFrame.Angles(0,1*math.pi*2/3,0)*CFrame.new(0,0,.35+.8)*CFrame.Angles(0,0,-1.3),CFrame.new(),Vector3.new(.05,.5,1.7),body2,body2ref,0,nil,"Plastic")
Part(p,CFrame.Angles(0,0,1.3)*CFrame.new(-.125,0,.85),CFrame.new(),Vector3.new(.7,.25,.05),body2,body2ref,0,nil,"Plastic")
local p = Part(propl,CFrame.Angles(0,2*math.pi*2/3,0)*CFrame.new(0,0,.35+.8)*CFrame.Angles(0,0,-1.3),CFrame.new(),Vector3.new(.05,.5,1.7),body2,body2ref,0,nil,"Plastic")
Part(p,CFrame.Angles(0,0,1.3)*CFrame.new(-.125,0,.85),CFrame.new(),Vector3.new(.7,.25,.05),body2,body2ref,0,nil,"Plastic")


local w = Part(b2,CFrame.new(3.5,0,0),CFrame.new(),Vector3.new(1.2,1.05,2),body,bodyref,0)
local w = Part(w,CFrame.new(-.6,0,-1)*CFrame.Angles(0,-.5,0)*CFrame.new(.6,0,-1),CFrame.new(),Vector3.new(1.2,1.049,2),body,bodyref,0)
Part(w,CFrame.new(-.6,0,0),CFrame.new(),Vector3.new(.5,1.1,2.07),body2,body2ref,0)
local w = Part(w,CFrame.new(-.6,0,-1)*CFrame.Angles(0,-.5,0)*CFrame.new(.6,0,-.95),CFrame.new(),Vector3.new(1.2,1.05,1.9),body,bodyref,0)
Part(w,CFrame.new(-.6,0,0),CFrame.new(),Vector3.new(.5,1.095,2.05),body2,body2ref,0)
local w = Part(w,CFrame.new(-.6,0,-.95)*CFrame.Angles(0,-.57,0)*CFrame.new(.65,0,-1.2),CFrame.new(),Vector3.new(1.3,1.049,2.4),body,bodyref,0)
Part(w,CFrame.new(-.65,0,.8),CFrame.new(),Vector3.new(.5,1.1,.95),body2,body2ref,0)
local w = Part(w,CFrame.new(.6,0,-1.2)*CFrame.Angles(0,1.57,0)*CFrame.new(-.8,0,-1.25),CFrame.new(),Vector3.new(1.6,1.05,2.5),body,bodyref,0)
local w = Part(w,CFrame.new(.8,0,-1.25)*CFrame.Angles(0,.4,0)*CFrame.new(-.7,0,1.25),CFrame.new(),Vector3.new(1.4,1.049,2.5),body,bodyref,0)
local w = Part(w,CFrame.new(-.7,0,1.25)*CFrame.Angles(0,.45,0)*CFrame.new(.7,0,1),CFrame.new(),Vector3.new(1.4,1.05,2),body,bodyref,0)
local w = Part(w,CFrame.new(.7,0,1)*CFrame.Angles(0,-.6,0)*CFrame.new(-.7,0,1),CFrame.new(),Vector3.new(1.4,1.049,2),body,bodyref,0)
local w = Part(w,CFrame.new(.7,0,1)*CFrame.Angles(0,-.55,0)*CFrame.new(-.7,0,1),CFrame.new(),Vector3.new(1.4,1.05,2),body,bodyref,0)
local w = Part(w,CFrame.new(.7,0,1)*CFrame.Angles(0,-.5,0)*CFrame.new(-.7,0,1),CFrame.new(),Vector3.new(1.4,1.049,2),body,bodyref,0)
local w = Part(w,CFrame.new(.7,0,1)*CFrame.Angles(0,-.45,0)*CFrame.new(-.6,0,.5),CFrame.new(),Vector3.new(1.5,1.05,1),body,bodyref,0)
local w = Part(w,CFrame.new(.75,0,.5)*CFrame.Angles(0,-.325,0)*CFrame.new(-.5,0,1.3),CFrame.new(),Vector3.new(1.6,1.049,2.6),body,bodyref,0)
local w = Part(w,CFrame.new(.2,0,1.3)*CFrame.Angles(0,-.65,0)*CFrame.new(-.5,0,.8),CFrame.new(),Vector3.new(1,1.05,1.6),body,bodyref,0)
local w = Part(w,CFrame.new(.5,0,.8)*CFrame.Angles(0,-.45,0)*CFrame.new(-.5,0,1),CFrame.new(),Vector3.new(1,1.05,2),body,bodyref,0)


cancollide = false
Part(b2,CFrame.new(3.5+3,.125,0)*CFrame.Angles(-math.pi/2,0,0),CFrame.new(),Vector3.new(3,3,1),body2,body2ref,0,Mesh("SpecialMesh",Vector3.new(5,5,6),"FileMesh","rbxassetid://3270017"),"DiamondPlate")
Part(b2,CFrame.new(3.5+3,-.125,0)*CFrame.Angles(-math.pi/2,0,0),CFrame.new(),Vector3.new(3,3,1),body2,body2ref,0,Mesh("SpecialMesh",Vector3.new(5,5,6),"FileMesh","rbxassetid://3270017"))
cancollide = true

local propr,proprw = Part(b2,CFrame.new(6.5,0,0),CFrame.new(),Vector3.new(.4,.75,.4),body2,body2ref,0,Mesh("CylinderMesh",Vector3.new(1,1,1)),"DiamondPlate")
Part(propr,CFrame.new(0,.35,0),CFrame.new(),Vector3.new(.6,.25,.6),body3,body3ref,0,Mesh("CylinderMesh",Vector3.new(1,1,1)),"DiamondPlate")
Part(propr,CFrame.new(0,-.35,0),CFrame.new(),Vector3.new(.5,.15,.5),body3,body3ref,0,Mesh("CylinderMesh",Vector3.new(1,1,1)),"DiamondPlate")
Part(propr,CFrame.Angles(0,0*math.pi*2/3,0)*CFrame.new(0,0,.3),CFrame.new(),Vector3.new(.15,.65,.3),body3,body3ref,0,nil,"DiamondPlate")
Part(propr,CFrame.Angles(0,1*math.pi*2/3,0)*CFrame.new(0,0,.3),CFrame.new(),Vector3.new(.15,.65,.3),body3,body3ref,0,nil,"DiamondPlate")
Part(propr,CFrame.Angles(0,2*math.pi*2/3,0)*CFrame.new(0,0,.3),CFrame.new(),Vector3.new(.15,.65,.3),body3,body3ref,0,nil,"DiamondPlate")
propr.Name = "SoundPlayer2"
local ps = Instance.new("Sound",propr)
ps.SoundId = "rbxassetid://134145308"
ps.Pitch = 2
ps.Volume = 1
ps.Looped = true
ps:Play()

local p = Part(propr,CFrame.Angles(0,0*math.pi*2/3,0)*CFrame.new(0,0,.35+.8)*CFrame.Angles(0,0,1.3),CFrame.new(),Vector3.new(.05,.5,1.7),body2,body2ref,0,nil,"Plastic")
Part(p,CFrame.Angles(0,0,-1.3)*CFrame.new(.125,0,.85),CFrame.new(),Vector3.new(.7,.25,.05),body2,body2ref,0,nil,"Plastic")
local p = Part(propr,CFrame.Angles(0,1*math.pi*2/3,0)*CFrame.new(0,0,.35+.8)*CFrame.Angles(0,0,1.3),CFrame.new(),Vector3.new(.05,.5,1.7),body2,body2ref,0,nil,"Plastic")
Part(p,CFrame.Angles(0,0,-1.3)*CFrame.new(.125,0,.85),CFrame.new(),Vector3.new(.7,.25,.05),body2,body2ref,0,nil,"Plastic")
local p = Part(propr,CFrame.Angles(0,2*math.pi*2/3,0)*CFrame.new(0,0,.35+.8)*CFrame.Angles(0,0,1.3),CFrame.new(),Vector3.new(.05,.5,1.7),body2,body2ref,0,nil,"Plastic")
Part(p,CFrame.Angles(0,0,-1.3)*CFrame.new(.125,0,.85),CFrame.new(),Vector3.new(.7,.25,.05),body2,body2ref,0,nil,"Plastic")



local p1 = Part(main,CFrame.new(-1.85,.35,-1.1)*CFrame.Angles(0,math.pi/2,0),CFrame.new(),Vector3.new(1.25,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p1,CFrame.new(.5,0,.025),CFrame.new(),Vector3.new(1.5,1,1),pipe2,pipe2ref,0,Mesh("SpecialMesh",Vector3.new(.7,.85,.85),"Cylinder"),"DiamondPlate")
Part(p1,CFrame.new(-.625,0,0),CFrame.new(),Vector3.new(.7,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Sphere"))
local p1 = Part(p1,CFrame.new(-.625,0,0)*CFrame.Angles(0,0,-1)*CFrame.new(-.95,0,0),CFrame.new(),Vector3.new(1.9,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p1,CFrame.new(-.95,0,0),CFrame.new(),Vector3.new(.7,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Sphere"))
local p1 = Part(p1,CFrame.new(-.95,0,0)*CFrame.Angles(0,0,1)*CFrame.new(-1.25,0,0),CFrame.new(),Vector3.new(2.5,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
local p = Part(p1,CFrame.new(-.3,0,.01),CFrame.new(),Vector3.new(1.5,1,1),pipe2,pipe2ref,0,Mesh("SpecialMesh",Vector3.new(1,.8,.8),"Cylinder"),"DiamondPlate")
Part(p,CFrame.new(.6,0,0),CFrame.new(),Vector3.new(.15,.9,.9),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p,CFrame.new(-.6,0,0),CFrame.new(),Vector3.new(.15,.9,.9),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p,CFrame.new(0,0,.65),CFrame.new(),Vector3.new(1.3,.3,.5),pipe3,pipe3ref,0)
Part(p1,CFrame.new(-1.25,0,0),CFrame.new(),Vector3.new(.15,.65,.65),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
local p = Part(p1,CFrame.new(-1.35,0,0)*CFrame.Angles(math.pi/2,0,math.pi/2),CFrame.new(),Vector3.new(1,1,1),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(.5,2,.5),"FileMesh","rbxassetid://16659502"))
local firel = Instance.new("Fire",p)
local lightl = Instance.new("PointLight",p)

local p1 = Part(main,CFrame.new(1.85,.35,-1.1)*CFrame.Angles(0,math.pi/2,0),CFrame.new(),Vector3.new(1.25,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p1,CFrame.new(.5,0,-.025),CFrame.new(),Vector3.new(1.5,1,1),pipe2,pipe2ref,0,Mesh("SpecialMesh",Vector3.new(.7,.85,.85),"Cylinder"),"DiamondPlate")
Part(p1,CFrame.new(-.625,0,0),CFrame.new(),Vector3.new(.7,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Sphere"))
local p1 = Part(p1,CFrame.new(-.625,0,0)*CFrame.Angles(0,0,-1)*CFrame.new(-.95,0,0),CFrame.new(),Vector3.new(1.9,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p1,CFrame.new(-.95,0,0),CFrame.new(),Vector3.new(.7,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Sphere"))
local p1 = Part(p1,CFrame.new(-.95,0,0)*CFrame.Angles(0,0,1)*CFrame.new(-1.25,0,0),CFrame.new(),Vector3.new(2.5,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
local p = Part(p1,CFrame.new(-.3,0,-.01),CFrame.new(),Vector3.new(1.5,1,1),pipe2,pipe2ref,0,Mesh("SpecialMesh",Vector3.new(1,.8,.8),"Cylinder"),"DiamondPlate")
Part(p,CFrame.new(.6,0,0),CFrame.new(),Vector3.new(.15,.9,.9),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p,CFrame.new(-.6,0,0),CFrame.new(),Vector3.new(.15,.9,.9),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p,CFrame.new(0,0,-.65),CFrame.new(),Vector3.new(1.3,.3,.5),pipe3,pipe3ref,0)
Part(p1,CFrame.new(-1.25,0,0),CFrame.new(),Vector3.new(.15,.65,.65),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
local p = Part(p1,CFrame.new(-1.35,0,0)*CFrame.Angles(math.pi/2,0,math.pi/2),CFrame.new(),Vector3.new(1,1,1),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(.5,2,.5),"FileMesh","rbxassetid://16659502"))
local firer = Instance.new("Fire",p)
local lightr = Instance.new("PointLight",p)

cancollide = false
local s = Part(main,CFrame.new(1.05,3,-2.7)*CFrame.Angles(-.5,0,0)*CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.3,.3,1.5),body,bodyref,0)
local s = Part(s,CFrame.new(0,.15,.75)*CFrame.Angles(.55,0,0)*CFrame.new(0,-.15,1.5),CFrame.new(),Vector3.new(.299,.3,3),body,bodyref,0)
local s = Part(s,CFrame.new(0,.15,1.5)*CFrame.Angles(1.05,0,0)*CFrame.new(0,-.15,1),CFrame.new(),Vector3.new(.3,.3,2),body,bodyref,0)
Part(s,CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.4,.4,.4),pipe3,pipe3ref,0)

local s = Part(main,CFrame.new(-1.05,3,-2.7)*CFrame.Angles(-.5,0,0)*CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.3,.3,1.5),body,bodyref,0)
local s = Part(s,CFrame.new(0,.15,.75)*CFrame.Angles(.55,0,0)*CFrame.new(0,-.15,1.5),CFrame.new(),Vector3.new(.299,.3,3),body,bodyref,0)
local s = Part(s,CFrame.new(0,.15,1.5)*CFrame.Angles(1.05,0,0)*CFrame.new(0,-.15,1),CFrame.new(),Vector3.new(.3,.3,2),body,bodyref,0)
Part(s,CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.4,.4,.4),pipe3,pipe3ref,0)
cancollide = true

local hp = Instance.new("Part",m)
hp.Anchored = true
hp.TopSurface,hp.BottomSurface =0,0
hp.BrickColor = BrickColor.new("Dark red")
hp.FormFactor = "Custom"
hp.CanCollide = false
hp.Size = Vector3.new(8,1.5,.5)

local hptop = hp:Clone()
hptop.Parent = m
hptop.BrickColor = BrickColor.new("Dark green")

firer.Size = .01
firer.Heat = 1000
firel.Size = .01
firel.Heat = 1000

local hm = Instance.new("Sound",sg)
hm.SoundId = "rbxassetid://131864673"
hm.Pitch = .8

--[[coroutine.wrap(function()
    wait(.2)
    while wait(.6) do
        ps.Pitch = -ps.Pitch
        ps2.Pitch = -ps2.Pitch
    end
end)()]]

local bvel = Instance.new("BodyVelocity",main)
bvel.maxForce = Vector3.new()
bvel.velocity = Vector3.new()
bvel.P = 5000

local bgyro = Instance.new("BodyGyro",main)
bgyro.maxTorque = Vector3.new()
bgyro.cframe = main.CFrame
bgyro.D = 800

do
    local vecs = {}
    for i,v in pairs(Enum.NormalId:GetEnumItems()) do
        table.insert(vecs,Vector3.FromNormalId(v))
    end
    function getSide(h,r)
        
        local ob = h.CFrame:pointToObjectSpace(r)
        if h:IsA("Part") and h.Shape == Enum.PartType.Ball then
            return (r-h.Position).unit
        elseif h:IsA("Part") and h.Shape == Enum.PartType.Cylinder then
            if isClose(math.abs(ob.y),h.Size.Y/2) then -- top
                return h.CFrame:vectorToWorldSpace((ob*Vector3.new(0,1,0)).unit)
            else
                return h.CFrame:vectorToWorldSpace(CFrame.new(Vector3.new(),ob*Vector3.new(1,0,1)).lookVector)
            end
        elseif h:IsA("WedgePart") then
            vecs = {Vector3.new(0,-1,0),Vector3.new(1,0,0),Vector3.new(-1,0,0),Vector3.new(0,0,1)}
        end
        for i,v in pairs(vecs) do
            if (ob*v/(h.Size/2)*v):isClose(v) then
                return h.CFrame:vectorToWorldSpace(v)
            end
        end
        if h:IsA("WedgePart") then
            return h.CFrame:vectorToWorldSpace(Vector3.new(0,h.Size.Z,h.Size.Y).unit)
        end
    end
end

local function Raycast(ray,ign)
    local ign = ign or {m,char}
    local h,p = workspace:FindPartOnRayWithIgnoreList(ray,ign)
    if h and not h.CanCollide then
        table.insert(ign,h)
        return Raycast(ray,ign)
    else
        return h,p
    end
end

local cam = workspace.CurrentCamera
local vehicleOn = true
local lastVehicleOn = false
local acc = 0
local maxSpeed = 180
local spd = 0
local jump = false

local kd = {}
local function isDown(k)
    return kd[k:byte()] and 1 or 0
end
mouse.KeyDown:connect(function(k)
    kd[k:byte()] = true
    if k == "f" then
        vehicleOn = not vehicleOn
    elseif k == "r" then
    --    hval.Value = 0
    end
end)
mouse.KeyUp:connect(function(k)
    kd[k:byte()] = false
end)

mouse.Button1Down:connect(function()
    b1d = true
end)
mouse.Button1Up:connect(function()
    b1d = false
end)
mouse.Button2Down:connect(function()
    b2d = true
end)
mouse.Button2Up:connect(function()
    b2d = false
end)


hum.Changed:connect(function()
    if hum.Jump then
        jump = true
        hum.Jump = false
        hum.Sit = true
    end
end)

local fire = {}

mouse.TargetFilter = m

local t,delta = tick(),0
local smokers = {}

local guntimer = 0
local scon;
local lastjump = 0
scon = step:connect(function()

    local now = tick()
    delta,t = now-t,now

    if hval.Value <= 0 then
        game:service'Debris':AddItem(m,5)
        coroutine.wrap(function()
            bvel:Destroy()
            local parts = {}
            local function a(b)
                for i,v in pairs(b:GetChildren()) do
                    if v:IsA("BasePart") then
                        table.insert(parts,v)
                    end
                    a(v)
                end
            end
            a(m)
            bvel:Destroy()
            bgyro:Destroy()
            local aTouched = false
            for i,v in pairs(parts) do
                v.Touched:connect(function()
                    if aTouched then return end
                    aTouched = true
                    local exp = Instance.new("Explosion",workspace)
                    exp.Position = v.Position
                    exp.BlastRadius = 0
                    exp.BlastPressure = .5
                    m:BreakJoints()
                    char:BreakJoints()
                    for i,x in pairs(m:GetChildren()) do
                        if x:IsA("BasePart") and v ~= x then
                            local diff = (x.Position-v.Position)
                            x.Velocity = x.Velocity + diff.unit * diff.magnitude/0.25/v:GetMass()
                        end
                    end
                    script.Disabled = true
                end)
            end
            wait(5)
            script.Disabled = true
        end)()
        scon:disconnect()
        return
    else
        hp.Transparency = hval.Value == 100 and math.min(1,hp.Transparency+.05) or math.max(0,hp.Transparency-.05)
        hptop.Transparency = hp.Transparency
        hp.CFrame = CFrame.new(head.Position+Vector3.new(0,9,0))*CFrame.Angles(0,(tick()/2)%(math.pi*2),0)
        hptop.Size = Vector3.new(hval.Value/100*(hp.Size.X+.05),hp.Size.Y+.1,hp.Size.Z+.1)
        hptop.CFrame = hp.CFrame * CFrame.new(-hp.Size.X/2-.025+hptop.Size.X/2,0,0)
    end

    if b1d and vehicleOn then
        guntimer = guntimer + delta
        if guntimer > .1 then
            t1s:Play()
            t1s.Pitch = 1.5 + (math.random()-.5)*.1
            guntimer = guntimer - .1
            local b = Instance.new("Part",m)
            b.Anchored = true
            b.FormFactor = "Custom"
            b.TopSurface,b.BottomSurface = 0,0
            b.CanCollide = false
            b.BrickColor = BrickColor.new("Bright yellow")
            b.Size = Vector3.new(.2,.2,.8)
            local sm = Instance.new("SpecialMesh",b)
            sm.MeshId = "rbxassetid://2697549"
            sm.Scale = Vector3.new(.5,.5,.25)
            local orig = t1.CFrame*CFrame.new(.5,0,0)*CFrame.Angles(0,-math.pi/2,0)
            local vel = (mouse.Hit.p-orig.p).unit*250 + main.Velocity*delta
            b.CFrame = orig
            coroutine.wrap(function()
                local t = tick()
                while true do
                    step:wait()
                    local n = tick()
                    local d,t = n-t,n
                    local ocf = b.CFrame
                    local h,r = Raycast(Ray.new(ocf.p,vel*d),{char,m})
                    if h then
                        b:Destroy()
                        local hit = false
                        local hp = h.Parent:FindFirstChild("hp") or h.Parent.Parent:FindFirstChild("hp")
                        if hp and hp:IsA("NumberValue") then
                            hp.Value = hp.Value - 3
                            hit = "rbxassetid://142082170"
                        end
                        local hp = h.Parent:FindFirstChild("Humanoid") or h.Parent.Parent:FindFirstChild("Humanoid")
                        if hp and hp:IsA("Humanoid") then
                            hp.Health = hp.Health - 3
                            hit = "rbxassetid://133758570"
                        end
                        if hit then
                            hm:Play()
                            local sp = Instance.new("Part",m)
                            sp.FormFactor = "Custom"
                            sp.Size = Vector3.new()
                            sp.Transparency = 1
                            sp.Anchored = true
                            sp.CanCollide = false
                            sp.CFrame = CFrame.new(r)
                            local s = Instance.new("Sound",sp)
                            s.SoundId = hit
                            s.Volume = 1
                            s.Pitch = 1.1+math.random()*.2
                            wait()
                            s:Play()
                            game:service'Debris':AddItem(sp,5)
                        end
                        break
                    end
                    b.CFrame = CFrame.new(ocf.p+vel*d,ocf.p+vel*d*2)
                    sm.Scale = Vector3.new(.5-vel.magnitude*d/100,.5-vel.magnitude*d/100,vel.magnitude*d/3)
                    vel = vel - Vector3.new(0,4*d,0)
                    if ocf.Y < -100 then
                        b:Destroy()
                        break
                    end
                end
            end)()
        end
    else
        guntimer = 0
    end

    local mcfr = main.CFrame
    local mpos = mcfr.p

    local raydir = Vector3.new(0,-100,0)--mcfr:vectorToWorldSpace(Vector3.new(0,-100,0))

    local dhit,dray = Raycast(Ray.new(mpos,raydir),{char,m})
    local diff = dray-mpos

    local rays = {
        tip = Ray.new((mcfr*CFrame.new(0,0,-11.5)).p,raydir),
        Ray.new((mcfr*CFrame.new(7,0,-11)).p,raydir),
        Ray.new((mcfr*CFrame.new(-7,0,-11)).p,raydir),
        Ray.new((mcfr*CFrame.new(1,0,-10.5)).p,raydir),
        Ray.new((mcfr*CFrame.new(-1,0,-10.5)).p,raydir),
        Ray.new((mcfr*CFrame.new(2.5,0,-6)).p,raydir),
        Ray.new((mcfr*CFrame.new(-2.5,0,-6)).p,raydir),
        rtip = Ray.new((mcfr*CFrame.new(10.5,0,-3)).p,raydir),
        ltip = Ray.new((mcfr*CFrame.new(-10.5,0,-3)).p,raydir),
        rprop = Ray.new((mcfr*CFrame.new(6.5,0,-3)).p,raydir),
        lprop = Ray.new((mcfr*CFrame.new(-6.5,0,-3)).p,raydir),
        Ray.new((mcfr*CFrame.new(2.5,0,-3)).p,raydir),
        Ray.new((mcfr*CFrame.new(-2.5,0,-3)).p,raydir),
        Ray.new((mcfr*CFrame.new(6.5,0,-1)).p,raydir),
        Ray.new((mcfr*CFrame.new(-6.5,0,-1)).p,raydir),
        Ray.new((mcfr*CFrame.new(2.5,0,4)).p,raydir),
        Ray.new((mcfr*CFrame.new(-2.5,0,4)).p,raydir),
        Ray.new((mcfr*CFrame.new(2.5,0,2)).p,raydir),
        Ray.new((mcfr*CFrame.new(-2.5,0,2)).p,raydir),
    }
    for i,v in pairs(rays) do
        local h,r = Raycast(v,{char,m})
        local df = r-v.Origin
        if df.Y > diff.Y then
            diff = df
        end
        rays[i] = {r=r,d=df,h=h}
    end
    
    local moving = false
    local movdir = Vector3.new()
    local hoverHeight = 7 + math.sin(now)/2
    local vel = Vector3.new(0,(hoverHeight+diff.Y)*3,0)
    if isDown'w'+isDown's'+isDown'd'+isDown'a' > 0 then
        moving = true
        movdir = Vector3.new(isDown'd'-isDown'a',0,isDown's'-isDown'w')
        if movdir.magnitude < .001 then
            moving = false
        else
            movdir = movdir.unit
        end
    end
    bgyro.maxTorque = Vector3.new(1,1,1)*1e5

    if vehicleOn then
        if not lastVehicleOn or not lastDown then
            lastDown = tick()
        end
        if not lastVehicleOn then
            local ray = rays.rprop
            for a,ray in pairs({rays.rprop,rays.lprop}) do
                if ray.h and -ray.d.Y < 5 then
                    local x = a==1 and 1 or -1
                    local am = 0
                    for i=math.pi/4*x,x*(-math.pi-math.pi/4),x*-math.pi/8 do
                        local p = Instance.new("Part",m)
                        p.Anchored = true
                        p.Transparency = 1
                        p.CanCollide = false
                        p.FormFactor = "Custom"
                        p.Size = Vector3.new()
                        local smoke = Instance.new("Smoke",p)
                        smoke.Color = Color3.new(.5,.5,.5)--Color3.new(lerp(.5,ray.h.Color.r,.8),lerp(.5,ray.h.Color.g,.8),lerp(.5,ray.h.Color.b,.8))
                        smoke.Size = .1
                        smoke.Opacity = .04
                        smoke.RiseVelocity = 10
                        p.CFrame = CFrame.new(ray.r,ray.r+mcfr.lookVector*Vector3.new(1,0,1))*CFrame.Angles(math.pi/2,0,i+.2*x)*CFrame.new(0,2.5,0)
                        local add = am/13
                        if add > .5 then
                            add = 1-add
                        end 
                        am = am + 1
                        game.Debris:AddItem(p,.75+add*14)
                    end
                end
            end
        end
        local ovel = main.CFrame:vectorToObjectSpace(main.Velocity)
        
        local xrot = math.max(-1,math.min(1,ovel.Z/maxSpeed*2))*.25
        local zrot = math.max(-1,math.min(1,-ovel.X/maxSpeed*2))*.25
        local xadd,zadd = 0,0
        if rays.tip.h and dhit and (-rays.tip.d.Y < hoverHeight+10 or -diff.Y < hoverHeight+10) then
            local ydiff = rays.tip.r.Y-dray.Y
            --print(ydiff)
            xadd = math.max(-.75,math.min(.75,math.asin(ydiff/11.5)))
            xrot = xrot*math.cos(xadd) + xadd
            --print("x",movdir,xadd)
            movdir = CFrame.Angles(xadd,0,0)*movdir
            --print("x2",movdir)
        end

        if rays.lprop.h and rays.rprop.h and rays.lprop.h == rays.rprop.h and (-rays.lprop.d.Y < hoverHeight+10 or -rays.rprop.d.Y < hoverHeight+10) then
            local xdiff = rays.rprop.r.Y-rays.lprop.r.Y
            zadd = math.max(-.75,math.min(.75,math.asin(xdiff/22)))
            zrot = zrot*math.cos(zadd) + zadd
            --print("z",movdir,zadd)
            movdir = CFrame.Angles(0,0,zadd)*movdir
            --print("z2",movdir)
        end
        --[[
        if movdir.magnitude > .001 then
            local p = Instance.new("Part",m)
            p.Anchored = true
            p.FormFactor = "Custom"
            p.CanCollide = false
            p.FrontSurface = "Hinge"
            p.Size = Vector3.new(1,1,3)
            p.CFrame = CFrame.new(head.Position+Vector3.new(0,5,0),head.Position+Vector3.new(0,5,0)+CFrame.new(cam.CoordinateFrame.p,cam.CoordinateFrame.p+cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)):vectorToWorldSpace(movdir))
            game.Debris:AddItem(p,.1)
        end
        ]]
        local windup = math.min(1,(tick()-lastDown))

        if windup < .25 then
            moving = false
        elseif windup < 1 then
            bgyro.maxTorque = Vector3.new(1,1,1)*50000
        end
        local ldir = windup >= .25 and cam.CoordinateFrame.lookVector*Vector3.new(1,0,1) or main.CFrame.lookVector*Vector3.new(1,0,1)
        bgyro.cframe = CFrame.new(main.CFrame.p,main.CFrame.p+ldir)*CFrame.Angles(xrot,0,zrot)
        proplw.C1 = proplw.C1 * CFrame.Angles(0,windup*-(.8+main.Velocity.magnitude/maxSpeed*.75)*(moving and 1.5 or 1)+math.random()*.05,0)
        proprw.C1 = proprw.C1 * CFrame.Angles(0,windup*(.8+main.Velocity.magnitude/maxSpeed*.75)*(moving and 1.5 or 1)+math.random()*.05,0)

        local odir = main.CFrame:vectorToObjectSpace(bgyro.cframe.lookVector)
        firer.Enabled = ovel.Z < -1 or odir.X < -.1
        firel.Enabled = ovel.Z < -1 or odir.X > .1
        bvel.maxForce = Vector3.new(70000,-diff.Y < hoverHeight+1+math.max(0,-main.Velocity.Y*delta*40) and 400000 or 40000,70000)

        windup = windup + main.Velocity.magnitude/maxSpeed*.35*(moving and 1.5 or 1)
        ps.Volume = windup*.07
        ps2.Volume = ps.Volume
        ps.Pitch = ps.Pitch
        ps2.Pitch = ps2.Pitch
    else
        if lastVehicleOn or not lastUp then
            lastUp = tick()
        end
        firel.Enabled,firer.Enabled = false,false
        bvel.maxForce = Vector3.new(40000,-diff.Y > 1 and 1e5 or 0,40000)
        vel = Vector3.new(0,-100-((tick()-lastUp)*9.81*10)^2,0)
        bgyro.cframe = clerp(bgyro.cframe,CFrame.new(mpos,mpos+mcfr.lookVector*Vector3.new(1,0,1)),.2)

        local windup = 1-math.min(1,(tick()-lastUp)/5)
        vel = Vector3.new(0,(1-windup)*-25,0)
        proplw.C1 = proplw.C1 * CFrame.Angles(0,-.8*windup,0)
        proprw.C1 = proprw.C1 * CFrame.Angles(0,.8*windup,0)
        ps.Volume = windup*.07
        ps2.Volume = ps.Volume
        ps.Pitch = ps.Pitch
        ps2.Pitch = ps2.Pitch

        moving = false

        if tick()-lastUp > 2 then
            hval.Value = math.min(100,hval.Value + .1)
        end
    end  

    if moving then
        local od = movdir
        movdir = CFrame.new(cam.CoordinateFrame.p,cam.CoordinateFrame.p+cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)):vectorToWorldSpace(movdir*Vector3.new(1,.25,1))
        
        if movdir.magnitude < 0.001 or tostring(movdir):lower():find("nan") then
            moving = false
            --print(od)
        else
            movdir = movdir.unit
            acc = acc + delta*70
            spd = math.min(maxSpeed,spd + acc)
            vel = vel + movdir*spd
        end
    end
    if not moving then
        spd = 0
        acc = 0
    end

    bvel.velocity = vel
    if jump  then
        if vehicleOn and -diff.Y < hoverHeight + 1 and tick()-lastjump > 2 then
            tor.Velocity = tor.Velocity + Vector3.new(0,110,0)
            lastjump = tick()
        end
        jump = false
    end
    lightr.Range = 5+math.sin(tick()*50)
    lightl.Range = 5+math.cos(tick()*50)

    lightr.Color = firer.Color
    lightl.Color = firel.Color

    lightr.Enabled = firer.Enabled
    lightl.Enabled = firel.Enabled
    lastVehicleOn = vehicleOn
end)

char.AncestryChanged:connect(function()
    m:Destroy()
    scon:disconnect()
end)

end
return _G.mantisReload()
