--[[ 
PROJECT: Horse
STARTDATE: 18/08/13
CREDITS: Penjuin3 and AntiBoomz0r
]]
 
Breeds = {
   
    { 
        fur=BrickColor.new("Brown"),
        mane=BrickColor.new("Really black"),
        saddle=BrickColor.new("Reddish brown"),
        reins=BrickColor.new("Really black"),
        hoof=BrickColor.new("Really black")
    }
}
 
local Breed = Breeds[math.random(1,#Breeds)]
 
local ModelName =  "Horse"
local ModelParent = workspace
--pcall(function() ModelParent[ModelName]:Destroy() end)
 
local ReinsHold = nil
local Height = 6.2
local rHeight = Height
 
local HasHat = true
local HatMeshId = "http://www.roblox.com/asset/?id="
local HatTexId = ""
local HorseColor = Breed.fur
local EyeColor = BrickColor.new("Really black")
local ManeColor = Breed.mane
local SaddleColor = Breed.saddle
local ReinsColor = Breed.reins
local HoofColor = Breed.hoof
local oc = oc or function(...) return ... end
local ModelScale = 1
 
local Speed = 0
local WalkSpeed = 15
local WalkSin = 6
local TrotSpeed = 30
local TrotSin = 4
local GallopSin = 18
local MaxSpeed = 90
local SpeedLimit = 100.5
 
 
local startpos = workspace.anton20.Head.CFrame * CFrame.new(0,Height+1.5,10)--script.Parent:IsA("BasePart") and script.Parent.CFrame * CFrame.new(0,Height,0) or CFrame.new(0,Height+1,20)
 
math.randomseed(tick()+215819240)
math.random() math.random() math.random()
aran = function() return math.random() end
ran = function() return (math.random()-.5)*2 end
 
function Weld(a,b,c,d)
        local w = Instance.new("Weld",a)
        w.Part0 = a
        w.Part1 = b
        w.C0 = c or CFrame.new()
        w.C1 = d or CFrame.new()
        return w
end
 
 
do  -- Ignore my clerp stuff stolen from stravvy
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
 
function lerp(a,b,c)
    return a+(b-a)*c
end
 
function ctlerp(c1,c2,al) -- Older, "worse" clerp if the other one fails..
        local com1 = {c1:components()}
        local com2 = {c2:components()}
        for i,v in pairs(com1) do
                com1[i] = lerp(v,com2[i],al)
        end
        return CFrame.new(unpack(com1))
end
 
 
local Model = Instance.new("Model",ModelParent)
Model.Name = ModelName
 
local BasePart = Instance.new("Part")
BasePart.FormFactor = "Custom"
BasePart.Size = Vector3.new()
BasePart.TopSurface,BasePart.BottomSurface,BasePart.LeftSurface,BasePart.RightSurface,BasePart.FrontSurface,BasePart.BackSurface = 10,10,10,10,10,10
BasePart:BreakJoints()
BasePart.CFrame = startpos
 
function NP()
    local p = BasePart:Clone()
    p.Parent = Model
    return p
end
 
function Sphere(parent,scale)
    local sm = Instance.new("SpecialMesh",parent)
    sm.MeshType = "Sphere"
    sm.Scale = scale or Vector3.new(1,1,1)
    return sm
end
 
BasePart.BrickColor = HorseColor
 
local Main = NP()
Main.Size = Vector3.new(3.5,4.5,8)
Main.CFrame = startpos
 
MainMesh = Sphere(Main)
 
local Neck = NP()
Neck.Size = Vector3.new(2,5,2.5)
local NeckWeld = Weld(Main,Neck,CFrame.new(0,0.5,-3.2)*CFrame.Angles(math.rad(-20),0,0),CFrame.new(0,-1.5,0))
local NeckWeld0 = NeckWeld.C0
Sphere(Neck,Vector3.new(1,1,1))
 
local NeckBonus = NP()
NeckBonus.Size = Vector3.new(1.9,3,2)
Weld(Neck,NeckBonus,CFrame.new(0,-1.1,.5)*CFrame.Angles(-.5,0,0))
Sphere(NeckBonus)
 
local Head = NP()
Head.Size = Vector3.new(2,3,3)
local HeadWeld = Weld(Neck,Head,CFrame.new(0,2.5,-.4),CFrame.new(0,0,1))
local HeadWeld0 = HeadWeld.C0
local HeadMesh = Instance.new("SpecialMesh",Head)
HeadMesh.Scale = Vector3.new(0.7,1,1)*1.6
HeadMesh.MeshId = "http://www.roblox.com/asset/?id=114690930"
 
if HasHat then
        local Hat = NP()
        Hat.Size = Vector3.new()
        Hat.BrickColor = SaddleColor
        local HatWeld = Weld(Head,Hat,CFrame.new(0,1.11,1.3),CFrame.Angles(math.rad(-20),0,0))
        local HatMesh = Instance.new("SpecialMesh",Hat)
        HatMesh.Scale = Vector3.new(1.5,1.5,1.5)
        HatMesh.MeshId = HatMeshId or "rbxassetid://42157240"
        HatMesh.TextureId = HatTexId or ""
end
 
local EyeR = NP()
EyeR.BrickColor = EyeColor 
EyeR.Reflectance = .1
EyeR.Size = Vector3.new(.2,.2,.2)
Weld(Head,EyeR,CFrame.new(.631,.23,.11)*CFrame.Angles(-0.2,0.1,0))
Sphere(EyeR,Vector3.new(.9,2.1,2.1))
 
local EyeL = NP()
EyeL.BrickColor = EyeColor 
EyeL.Reflectance = .1
EyeL.Size = Vector3.new(.2,.2,.2)
Weld(Head,EyeL,CFrame.new(-.631,.23,.11)*CFrame.Angles(-0.2,-0.1,0))
Sphere(EyeL,Vector3.new(.9,2.1,2.1))
 
BasePart.Name = "Reins"
 
local RPart = NP() -- rs1
RPart.BrickColor = ReinsColor
RPart.Size = Vector3.new(.2,.7,.25)
Weld(Head,RPart,CFrame.new(.4,-.5,-1.05)*CFrame.Angles(-.25,0,0))
 
local Cyl = NP() 
Cyl.BrickColor = ReinsColor
Cyl.Size = Vector3.new(.2495,.2,.2)
Instance.new("SpecialMesh",Cyl).MeshType = "Cylinder"
Weld(RPart,Cyl,CFrame.new(0,RPart.Size.Y/2,0)*CFrame.Angles(0,math.pi/2,0))
 
local RPart = NP() -- rs2
RPart.BrickColor = ReinsColor
RPart.Size = Vector3.new(.2,.4,.25)
Weld(Head,RPart,CFrame.new(.4,-.5,-1.05)*CFrame.Angles(-.25,0,0)*CFrame.new(0,-.35,0)*CFrame.Angles(0,0,-.5)*CFrame.new(0,-.2,0))
 
local Cyl = NP() 
Cyl.BrickColor = ReinsColor
Cyl.Size = Vector3.new(.2495,.2,.2)
Instance.new("SpecialMesh",Cyl).MeshType = "Cylinder"
Weld(RPart,Cyl,CFrame.new(0,RPart.Size.Y/2,0)*CFrame.Angles(0,math.pi/2,0))
local ReinAnchorR = Cyl
 
local RPart = NP() -- ls1
RPart.BrickColor = ReinsColor
RPart.Size = Vector3.new(.2,.7,.25)
Weld(Head,RPart,CFrame.new(-.4,-.5,-1.05)*CFrame.Angles(-.25,0,0))
 
local Cyl = NP() 
Cyl.BrickColor = ReinsColor
Cyl.Size = Vector3.new(.2495,.2,.2)
Instance.new("SpecialMesh",Cyl).MeshType = "Cylinder"
Weld(RPart,Cyl,CFrame.new(0,RPart.Size.Y/2,0)*CFrame.Angles(0,math.pi/2,0))
 
local RPart = NP() -- ls2
RPart.BrickColor = ReinsColor
RPart.Size = Vector3.new(.2,.4,.25)
Weld(Head,RPart,CFrame.new(-.4,-.5,-1.05)*CFrame.Angles(-.25,0,0)*CFrame.new(0,-.35,0)*CFrame.Angles(0,0,.5)*CFrame.new(0,-.2,0))
 
local Cyl = NP() 
Cyl.BrickColor = ReinsColor
Cyl.Size = Vector3.new(.2495,.2,.2)
Instance.new("SpecialMesh",Cyl).MeshType = "Cylinder"
Weld(RPart,Cyl,CFrame.new(0,RPart.Size.Y/2,0)*CFrame.Angles(0,math.pi/2,0))
local ReinAnchorL = Cyl
 
local RPart = NP() -- mb
RPart.BrickColor = ReinsColor
RPart.Size = Vector3.new(.5,.2,.249)
Weld(Head,RPart,CFrame.new(0,-.5,-1.05)*CFrame.Angles(-.25,0,0)*CFrame.new(0,-.65,0))
 
local Cyl = NP() 
Cyl.BrickColor = ReinsColor
Cyl.Size = Vector3.new(.2495,.2,.2)
Instance.new("SpecialMesh",Cyl).MeshType = "Cylinder"
Weld(RPart,Cyl,CFrame.new(RPart.Size.X/2,0,0)*CFrame.Angles(0,math.pi/2,0))
 
local Cyl = NP() 
Cyl.BrickColor = ReinsColor
Cyl.Size = Vector3.new(.2495,.2,.2)
Instance.new("SpecialMesh",Cyl).MeshType = "Cylinder"
Weld(RPart,Cyl,CFrame.new(-RPart.Size.X/2,0,0)*CFrame.Angles(0,math.pi/2,0))
 
local RPart = NP() -- mt
RPart.BrickColor = ReinsColor
RPart.Size = Vector3.new(.8,.2,.249)
Weld(Head,RPart,CFrame.new(0,-.5,-1.05)*CFrame.Angles(-.25,0,0)*CFrame.new(0,.35,0))
 
local RPart = NP()
RPart.BrickColor = ReinsColor
local sm = Instance.new("SpecialMesh",RPart)
sm.MeshType = "Sphere"
local ReinSphereL = Weld(Main,RPart,CFrame.new(-1,3,0))
 
local RPart = NP()
RPart.BrickColor = ReinsColor
local sm = Instance.new("SpecialMesh",RPart)
sm.MeshType = "Cylinder"
local ReinLineL = Weld(Main,RPart,CFrame.new(-1,3,-1))
 
local RPart = NP()
RPart.BrickColor = ReinsColor
local sm = Instance.new("SpecialMesh",RPart)
sm.MeshType = "Sphere"
local ReinSphereR = Weld(Main,RPart,CFrame.new(1,3,0))
 
local RPart = NP()
RPart.BrickColor = ReinsColor
local sm = Instance.new("SpecialMesh",RPart)
sm.MeshType = "Cylinder"
local ReinLineR = Weld(Main,RPart,CFrame.new(1,3,-1))
 
local RPart = NP()
RPart.BrickColor = ReinsColor
local sm = Instance.new("SpecialMesh",RPart)
sm.MeshType = "Cylinder"
local ReinLineM = Weld(Main,RPart,CFrame.new(0,3,0))
 
BasePart.Name = "Part"
 
local Tail = NP()
Tail.BrickColor = ManeColor
Tail.CanCollide = false
Tail.Transparency = 1
Tail.Size = Vector3.new(0.8,4.5,0.8)
local TailWeld = Weld(Main,Tail,CFrame.new(0,.88,3.4)*CFrame.Angles(0,math.rad(10),0),CFrame.new(0,-2.3,0)*CFrame.Angles(math.rad(-130),0,0))
local TailWeld0 = TailWeld.C0
local TailHairs = {}
for i=1,8 do
        local t = NP()
        t.CanCollide = false
        t.BrickColor = Tail.BrickColor
        t.Size = Vector3.new(.4+aran()*.2,5.5-i*.1,.4+aran()*.2)
        local tw = Weld(Tail,t,CFrame.new(0,-Tail.Size.Y/2,0)*CFrame.Angles(ran()*.15,ran()*.5,ran()*.15)*CFrame.new(ran()*.1,0,ran()*.1),CFrame.new(0,-t.Size.Y/2+.05,0))
        table.insert(TailHairs,{w=tw,c0=tw.C0})
end
local BackHairs = {}
for i=0,10 do
    if i<1 or i>7 then
        local x = (i/10)
        local m = NP()
        m.CanCollide = false
        m.BrickColor = ManeColor
        m.Size = Vector3.new(.6+aran()*.2+math.sin(x*2.7)*.5,.9+ran()*.1,.9+ran()*.1)
        if i<1 then    m.Size = m.Size*0.7    end
        local tw = Weld(Main,m,CFrame.new(0,.9+math.sin(x*2.8)*1.2,3.4-x*6),CFrame.Angles(ran()*.1,aran()*.1,ran()*.2))
        table.insert(BackHairs,{w=tw,c0=tw.C0})
    end
end
 
 
local NeckHairs = {}
for i=0,6 do
    local x = (i/6)
    local m = NP()
    m.CanCollide = false
    m.BrickColor = ManeColor
    m.Size = Vector3.new(.8+ran()*.2,.7+ran()*.1,.9+ran()*.1)
    local tw = Weld(Neck,m,CFrame.new(0,-1.3+x*3.5,1+math.sin(.55+x*3.7)*.5),CFrame.Angles(ran()*.08,aran()*.15,ran()*.08))
    table.insert(NeckHairs ,{w=tw,c0=tw.C0})
end
 
 
local HeadHairs = {}
for i=0,6 do
        local x = math.min(1,(i/3))
        local m = NP()
        m.CanCollide = false
        m.BrickColor = ManeColor
        if HasHat then        m.Transparency = 1        end
        m.Size = Vector3.new(.95+ran()*.2,1,.4)
        local tw = Weld(Head,m,CFrame.new(0,-.8+x*1.6,2.02-i*.23)*CFrame.Angles(-.2-i*.3,0,0),CFrame.Angles(ran()*.08,aran()*.03,ran()*.08))
        table.insert(HeadHairs ,{w=tw,c0=tw.C0})
end
 
local LHip = NP()
LHip.Size = Vector3.new(1.5,3.7,3.5)
Weld(Main,LHip,CFrame.new(-1,-.5,2.2)*CFrame.Angles(0,.35,0))
Sphere(LHip)
 
local LThigh = NP()
LThigh.CanCollide = false
LThigh.Size = Vector3.new(1.6,4,2.2)
local BL1 = Weld(LHip,LThigh,CFrame.new(-.05,.3,-.5)*CFrame.Angles(0,-.35,0)*CFrame.Angles(0,0,0),CFrame.new(0,1.7,0))
Sphere(LThigh)
 
local LBCannon = NP()
LBCannon.CanCollide = false
LBCannon.Size = Vector3.new(1,2.8,1)
local sm = Instance.new("SpecialMesh",LBCannon)
sm.MeshType = "Head"
local BL2 = Weld(LThigh,LBCannon,CFrame.new(0,-LThigh.Size.Y/2+.4,-.05)*CFrame.Angles(0,0,0),CFrame.new(0,1.3,0))
 
local LBKnee = NP()
LBKnee.CanCollide = false
LBKnee.Size = Vector3.new(1,1,1)
local sm = Instance.new("SpecialMesh",LBKnee)
sm.MeshType = "Sphere"
Weld(LBCannon,LBKnee,CFrame.new(0,LBCannon.Size.Y/2-.1,0))
 
local LBHoof = NP()
LBHoof.BrickColor = HoofColor
LBHoof.CanCollide = false
LBHoof.Size = Vector3.new(1,.7,1)
Instance.new("CylinderMesh",LBHoof)
local BL3 = Weld(LBCannon,LBHoof,CFrame.new(0,-LBCannon.Size.Y/2,0)*CFrame.Angles(0,0,0),CFrame.new(0,.12,.2))
 
local Hoof = NP()
Hoof.BrickColor = HoofColor
Hoof.CanCollide = false
Hoof.Size = Vector3.new(.2,.699,.5)
Weld(LBHoof,Hoof,CFrame.new(.4,0,.25))
local Hoof = NP()
Hoof.BrickColor = HoofColor
Hoof.CanCollide = false
Hoof.Size = Vector3.new(.2,.699,.5)
Weld(LBHoof,Hoof,CFrame.new(-.4,0,.25))
 
local RHip = NP()
RHip.Size = Vector3.new(1.5,3.7,3.5)
Weld(Main,RHip,CFrame.new(1,-.5,2.2)*CFrame.Angles(0,-.35,0))
Sphere(RHip)
 
local RThigh = NP()
RThigh.CanCollide = false
RThigh.Size = Vector3.new(1.6,4,2.2)
local BR1 = Weld(RHip,RThigh,CFrame.new(.05,.3,-.4)*CFrame.Angles(0,.35,0)*CFrame.Angles(0,0,0),CFrame.new(0,1.7,0))
Sphere(RThigh)
 
local RBCannon = NP()
RBCannon.CanCollide = false
RBCannon.Size = Vector3.new(1,2.8,1)
local sm = Instance.new("SpecialMesh",RBCannon)
sm.MeshType = "Head"
local BR2 = Weld(RThigh,RBCannon,CFrame.new(0,-RThigh.Size.Y/2+.4,-.05)*CFrame.Angles(0,0,0),CFrame.new(0,1.3,0))
 
local RBKnee = NP()
RBKnee.CanCollide = false
RBKnee.Size = Vector3.new(1,1,1)
local sm = Instance.new("SpecialMesh",RBKnee)
sm.MeshType = "Sphere"
Weld(RBCannon,RBKnee,CFrame.new(0,RBCannon.Size.Y/2-.1,0))
 
local RBHoof = NP()
RBHoof.BrickColor = HoofColor
RBHoof.CanCollide = false
RBHoof.Size = Vector3.new(1,.7,1)
Instance.new("CylinderMesh",RBHoof)
local BR3 = Weld(RBCannon,RBHoof,CFrame.new(0,-RBCannon.Size.Y/2,0)*CFrame.Angles(0,0,0),CFrame.new(0,.12,.2))
 
local Hoof = NP()
Hoof.BrickColor = HoofColor
Hoof.CanCollide = false
Hoof.Size = Vector3.new(.2,.699,.5)
Weld(RBHoof,Hoof,CFrame.new(.4,0,.25))
local Hoof = NP()
Hoof.BrickColor = HoofColor
Hoof.CanCollide = false
Hoof.Size = Vector3.new(.2,.699,.5)
Weld(RBHoof,Hoof,CFrame.new(-.4,0,.25))
 
local LShoulder = NP()
LShoulder.Size = Vector3.new(1.5,2.5,2)
Weld(Main,LShoulder,CFrame.new(-.9,-.5,-2.4)*CFrame.Angles(0,.15,0))
Sphere(LShoulder)
 
local LForearm = NP()
LForearm.CanCollide = false
LForearm.Size = Vector3.new(1.2,3.5,1.5)
local FL1 = Weld(LShoulder,LForearm,CFrame.new(-.1,.2,.1)*CFrame.Angles(0,0,0),CFrame.new(0,1.45,0))
Sphere(LForearm)
 
local LFCannon = NP()
LFCannon.CanCollide = false
LFCannon.Size = Vector3.new(.8,2.8,.8)
local sm = Instance.new("SpecialMesh",LFCannon)
sm.MeshType = "Head"
local FL2 = Weld(LForearm,LFCannon,CFrame.new(0,-LForearm.Size.Y/2+.4,-.05)*CFrame.Angles(0,0,0),CFrame.new(0,1.3,0))
 
local LFKnee= NP()
LFKnee.CanCollide = false
LFKnee.Size = Vector3.new(.8,.8,.8)
local sm = Instance.new("SpecialMesh",LFKnee)
sm.MeshType = "Sphere"
Weld(LFCannon,LFKnee,CFrame.new(0,LFCannon.Size.Y/2-.1,0))
 
local LFHoof = NP()
LFHoof.BrickColor = HoofColor
LFHoof.CanCollide = false
LFHoof.Size = Vector3.new(.8,.6,.8)
Instance.new("CylinderMesh",LFHoof)
local FL3 = Weld(LFCannon,LFHoof,CFrame.new(0,-LFCannon.Size.Y/2,0)*CFrame.Angles(0,0,0),CFrame.new(0,.12,.2))
 
local Hoof = NP()
Hoof.BrickColor = HoofColor
Hoof.CanCollide = false
Hoof.Size = Vector3.new(.2,.599,.4)
Weld(LFHoof,Hoof,CFrame.new(.3,0,.2))
local Hoof = NP()
Hoof.BrickColor = HoofColor
Hoof.CanCollide = false
Hoof.Size = Vector3.new(.2,.599,.4)
Weld(LFHoof,Hoof,CFrame.new(-.3,0,.2))
 
local RShoulder = NP()
RShoulder.Size = Vector3.new(1.5,2.5,2)
Weld(Main,RShoulder,CFrame.new(.9,-.5,-2.4)*CFrame.Angles(0,-.15,0))
Sphere(RShoulder)
 
local RForearm = NP()
RForearm.CanCollide = false
RForearm.Size = Vector3.new(1.2,3.5,1.5)
local FR1 = Weld(RShoulder,RForearm,CFrame.new(.1,.2,-.1)*CFrame.Angles(0,0,0),CFrame.new(0,1.45,0))
Sphere(RForearm)
 
local RFCannon = NP()
RFCannon.CanCollide = false
RFCannon.Size = Vector3.new(.8,2.8,.8)
local sm = Instance.new("SpecialMesh",RFCannon)
sm.MeshType = "Head"
local FR2 = Weld(RForearm,RFCannon,CFrame.new(0,-RForearm.Size.Y/2+.4,-.05)*CFrame.Angles(0,0,0),CFrame.new(0,1.3,0))
 
local RFKnee= NP()
RFKnee.CanCollide = false
RFKnee.Size = Vector3.new(.8,.8,.8)
local sm = Instance.new("SpecialMesh",RFKnee)
sm.MeshType = "Sphere"
Weld(RFCannon,RFKnee,CFrame.new(0,RFCannon.Size.Y/2-.1,0))
 
local RFHoof = NP()
RFHoof.BrickColor = HoofColor
RFHoof.CanCollide = false
RFHoof.Size = Vector3.new(.8,.6,.8)
Instance.new("CylinderMesh",RFHoof)
local FR3 = Weld(RFCannon,RFHoof,CFrame.new(0,-RFCannon.Size.Y/2,0)*CFrame.Angles(0,0,0),CFrame.new(0,.12,.2))
 
local Hoof = NP()
Hoof.BrickColor = HoofColor
Hoof.CanCollide = false
Hoof.Size = Vector3.new(.2,.599,.4)
Weld(RFHoof,Hoof,CFrame.new(.3,0,.2))
local Hoof = NP()
Hoof.BrickColor = HoofColor
Hoof.CanCollide = false
Hoof.Size = Vector3.new(.2,.599,.4)
Weld(RFHoof,Hoof,CFrame.new(-.3,0,.2))
 
 
 
Seat = Instance.new("VehicleSeat",Model)
Seat.TopSurface,Seat.BottomSurface,Seat.LeftSurface,Seat.RightSurface,Seat.FrontSurface,Seat.BackSurface = 10,10,10,10,10,10
Seat.Size = Vector3.new(2,1.2,.5)
Seat.HeadsUpDisplay = false
Seat.CanCollide = false
Seat:BreakJoints()
Seat.Transparency = 1
Seat.CFrame = Main.CFrame
SeatWeld = Weld(Main,Seat,CFrame.new(0,2.5,-.5),CFrame.new(0,0,0))
local SeatWeld0 = SeatWeld.C0
 
Seat2 = Instance.new("Seat",Model)
Seat2.TopSurface,Seat2.BottomSurface,Seat2.LeftSurface,Seat2.RightSurface,Seat2.FrontSurface,Seat2.BackSurface = 10,10,10,10,10,10
Seat2.Size = Vector3.new(2,1.2,.5)
Seat2.CanCollide = false
Seat2.CFrame = Main.CFrame
Seat2:BreakJoints()
Seat2.Transparency = 1
Weld(Seat2,Seat,CFrame.new(0,0,-1.8))
 
SaddleMain = NP()
SaddleMain.Size = Vector3.new(2,1,3.5)
SaddleMain.BrickColor = SaddleColor
Sphere(SaddleMain)
Weld(Seat,SaddleMain,CFrame.new(0,-0.5,0.6))
 
SaddleFront = NP()
SaddleFront.Size = Vector3.new(1.6,1,0.3)
SaddleFront.BrickColor = SaddleColor
Sphere(SaddleFront)
Weld(SaddleMain,SaddleFront,CFrame.new(0,0.4,-1.4)*CFrame.Angles(math.rad(-30),0,0))
 
SaddleBack = NP()
SaddleBack.Size = Vector3.new(1.6,1,0.5)
SaddleBack.BrickColor = SaddleColor
Sphere(SaddleBack)
Weld(SaddleMain,SaddleBack,CFrame.new(0,0.3,1.4)*CFrame.Angles(math.rad(30),0,0))
 
SaddleFlankR = NP()
SaddleFlankR.Size = Vector3.new(0.3,1.7,1.8)
SaddleFlankR.BrickColor = SaddleColor
Sphere(SaddleFlankR)
Weld(SaddleMain,SaddleFlankR,CFrame.new(1.5,-0.8,0),CFrame.new(0.1,-0.7,0)*CFrame.Angles(0,0,math.rad(-30)))
 
SaddleFlankL = NP()
SaddleFlankL.Size = Vector3.new(0.3,1.7,1.8)
SaddleFlankL.BrickColor = SaddleColor
Sphere(SaddleFlankL)
Weld(SaddleMain,SaddleFlankL,CFrame.new(-1.5,-0.8,0),CFrame.new(-0.1,-0.7,0)*CFrame.Angles(0,0,math.rad(30)))
 
 
 
local sWeld1,sWeld2;
 
Seat.DescendantAdded:connect(function(obj)
    if obj.Name == "SeatWeld" then
        sWeld1 = obj
      torso2 = obj.Part1.Parent.Torso
        local Torso = obj.Part1.Parent.Torso
        obj.C0 = obj.C0*CFrame.new(0,0,-1.5)
        local lhipr = Torso:FindFirstChild("Left Hip")
        local rhipr = Torso:FindFirstChild("Right Hip")
        if not lhipr or not rhipr then game:service'Debris':addItem(obj,.1) return end
        for i,v in pairs(Model:GetChildren()) do
            if v.Name == "Reins" and v:IsA("BasePart") then
                v.Transparency = Main.Transparency
            end
        end
        local lh0,lh1 = lhipr.Part0,lhipr.Part1
        local rh0,rh1 = rhipr.Part0,rhipr.Part1
        lhipr.Part0,lhipr.Part1 = nil,nil
        rhipr.Part0,rhipr.Part1 = nil,nil
        local lhip = lhipr:Clone()
        lhip.Name = "LH"
        lhip.Parent = lhipr.Parent
        lhip.Part0,lhip.Part1 = lh0,lh1
        local rhip = rhipr:Clone()
        rhip.Name = "RH"
        rhip.Parent = rhipr.Parent
        rhip.Part0,rhip.Part1 = rh0,rh1
        lhip.DesiredAngle = 0
        rhip.DesiredAngle = 0
        local lhip0,lhip1,rhip0,rhip1 = lhip.C0,lhip.C1,rhip.C0,rhip.C1
        lhip.C0 = lhip0*CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-40))
        lhip.C1 = lhip1*CFrame.new(0.1,-0.2,0)
        rhip.C0 = rhip0*CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(40))
        rhip.C1 = rhip1*CFrame.new(-0.1,-0.2,0)
        local toolOn = false
        local toolAn = 0
        local toolCon;
        local toolChan;
        local oc0 = obj.C0
        local newChild = function(d)
            local md = d:FindFirstChild("MouseDown")
            if d:IsA("Tool") and md and md:IsA("BoolValue") then
                pcall(function() toolChan:disconnect() end)
                toolOn = false
                toolChan = md.Changed:connect(function()
                    toolOn = md.Value
                    if not toolOn then return end
                    pcall(function() ReinsHold = CFrame.new(0,2,-1.7) end)
                    while toolOn and game:service'RunService'.Stepped:wait() do
                        toolAn = math.min(1,toolAn+.2)
                        obj.C0 = CFrame.new(toolAn*1.8,toolAn*-1.1,0)*CFrame.Angles(0,0,-toolAn*.9)*oc0
                    end
                    while not toolOn and game:service'RunService'.Stepped:wait() do
                        toolAn = math.max(0,toolAn-.2)
                        obj.C0 = CFrame.new(toolAn*1.8,toolAn*-1.1,0)*CFrame.Angles(0,0,-toolAn*.9)*oc0
                        if toolAn == 0 then break end
                    end
                    ReinsHold = nil
                end)
            end
        end
        local ctrlgui;
        if Torso.Parent then 
            toolCon = Torso.Parent.ChildAdded:connect(newChild)
            for i,v in pairs(Torso.Parent:GetChildren()) do
                newChild(v)
            end
            local plr = game.Players:GetPlayerFromCharacter(Torso.Parent)
            if plr then
                ctrlgui = Instance.new("ScreenGui")
                local fr = Instance.new("Frame",ctrlgui)
                fr.Position = UDim2.new(1,0,.9,0)
                fr.Size = UDim2.new(-.07,0,.02,0)
                fr.BackgroundTransparency = 1
                local function nbtn(text,indent)
                    for i,v in pairs(fr:GetChildren()) do
                        v.Position = v.Position - UDim2.new(0,0,1,1)
                    end
                    local tb = Instance.new("TextButton",fr)
                    tb.Size = UDim2.new(-1,4+(indent-1)*3,1,-4)
                    tb.Position = UDim2.new(1,2,0,2)
                    tb.BorderSizePixel = 3
                    tb.BackgroundColor3 = HorseColor.Color
                    tb.BorderColor3 = ManeColor.Color
                    tb.Text = " "..text.."   "
                    tb.TextXAlignment = "Left"
                    tb.TextColor3 = Color3.new(1,1,1)
                    tb.TextStrokeTransparency = .6
                    tb.TextScaled = true
                    tb.ZIndex = 10
                    local il = Instance.new("ImageLabel",tb)
                    il.Size = UDim2.new(-1,2,1,-2)
                    il.Image = "rbxassetid://129465985"
                    il.SizeConstraint = "RelativeYY"
                    il.BackgroundTransparency = 1
                    il.Position = UDim2.new(1,0,0,2)
                    il.ZIndex = 10
                    return tb
                end
                nbtn("| Horse menu",1).AutoButtonColor = false
                nbtn("- Max speed",2).AutoButtonColor = false
                local gal = nbtn("~ Gallop",3)
                local trot = nbtn("~ Trot",3)
                local walk = nbtn("~ Walk",3)
                local tar = (SpeedLimit == MaxSpeed and gal or SpeedLimit == TrotSpeed and trot or walk)
                tar.BackgroundColor3 = Color3.new(0,.7,0)
                gal.MouseButton1Down:connect(function()
                    gal.BackgroundColor3 = Color3.new(0,.7,0)
                    trot.BackgroundColor3 = HorseColor.Color
                    walk.BackgroundColor3 = HorseColor.Color
                    SpeedLimit = MaxSpeed
                end)
                trot.MouseButton1Down:connect(function()
                    gal.BackgroundColor3 = HorseColor.Color
                    trot.BackgroundColor3 = Color3.new(0,.7,0)
                    walk.BackgroundColor3 = HorseColor.Color
                    SpeedLimit = TrotSpeed
                end)
                walk.MouseButton1Down:connect(function()
                    gal.BackgroundColor3 = HorseColor.Color
                    trot.BackgroundColor3 = HorseColor.Color
                    walk.BackgroundColor3 = Color3.new(0,.7,0)
                    SpeedLimit = WalkSpeed
                end)
                pcall(function()
                for i,v in pairs(plr:GetChildren()) do
                    pcall(function()
                    if v:IsA("PlayerGui") then
                        ctrlgui.Parent = v
                    end
                    end)
                end 
                end)
            end
        end
 
        obj.AncestryChanged:connect(function(c,p)
            if c ~= obj or p == Seat then return end
            lhip:Destroy()
            rhip:Destroy()
            lhipr.Part0,lhipr.Part1 = lh0,lh1
            rhipr.Part0,rhipr.Part1 = rh0,rh1
            obj:Destroy()
            ReinsHold = nil
            for i,v in pairs(Model:GetChildren()) do
                if v.Name == "Reins" and v:IsA("BasePart") then
                    v.Transparency = 1
                end
            end
            pcall(function() toolCon:disconnect() end)
            pcall(function() toolChan:disconnect() end)
            pcall(game.Destroy,ctrlgui)
        end)
    end
end)
 
Seat2.DescendantAdded:connect(function(obj)
    if obj.Name == "SeatWeld" then
        sWeld2 = obj
        local Torso = obj.Part1.Parent.Torso
        obj.C0 = obj.C0*CFrame.new(0,.5,-1.5)
        local lhipr = Torso:FindFirstChild("Left Hip")
        local rhipr = Torso:FindFirstChild("Right Hip")
        if not lhipr or not rhipr then game:service'Debris':addItem(obj,.1) return end
        local lh0,lh1 = lhipr.Part0,lhipr.Part1
        local rh0,rh1 = rhipr.Part0,rhipr.Part1
        lhipr.Part0,lhipr.Part1 = nil,nil
        rhipr.Part0,rhipr.Part1 = nil,nil
        local lhip = lhipr:Clone()
        lhip.Name = "LH"
        lhip.Parent = lhipr.Parent
        lhip.Part0,lhip.Part1 = lh0,lh1
        local rhip = rhipr:Clone()
        rhip.Name = "RH"
        rhip.Parent = rhipr.Parent
        rhip.Part0,rhip.Part1 = rh0,rh1
        lhip.DesiredAngle = 0
        rhip.DesiredAngle = 0
        local lhip0,lhip1,rhip0,rhip1 = lhip.C0,lhip.C1,rhip.C0,rhip.C1
        lhip.C0 = lhip0*CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-40))
        lhip.C1 = lhip1*CFrame.new(0.1,-0.2,0)
        rhip.C0 = rhip0*CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(40))
        rhip.C1 = rhip1*CFrame.new(-0.1,-0.2,0)
        local toolOn = false
        local toolAn = 0
        local toolCon;
        local toolChan;
        local oc0 = obj.C0
        local newChild = function(d)
            local md = d:FindFirstChild("MouseDown")
            if d:IsA("Tool") and md and md:IsA("BoolValue") then
                pcall(function() toolChan:disconnect() end)
                toolOn = false
                toolChan = md.Changed:connect(function()
                    toolOn = md.Value
                    if not toolOn then return end
                    while toolOn and game:service'RunService'.Stepped:wait() do
                        toolAn = math.min(1,toolAn+.2)
                        obj.C0 = CFrame.new(toolAn*1.8,toolAn*-1.1,0)*CFrame.Angles(0,0,-toolAn*.9)*oc0
                    end
                    while not toolOn and game:service'RunService'.Stepped:wait() do
                        toolAn = math.max(0,toolAn-.2)
                        obj.C0 = CFrame.new(toolAn*1.8,toolAn*-1.1,0)*CFrame.Angles(0,0,-toolAn*.9)*oc0
                        if toolAn == 0 then break end
                    end
                end)
            end
        end
        toolCon = Torso.Parent.ChildAdded:connect(newChild)
        for i,v in pairs(Torso.Parent:GetChildren()) do
            newChild(v)
        end
        obj.AncestryChanged:connect(function(c,p)
            if c ~= obj or p == Seat2 then return end
            lhip:Destroy()
            rhip:Destroy()
            lhipr.Part0,lhipr.Part1 = lh0,lh1
            rhipr.Part0,rhipr.Part1 = rh0,rh1
            obj:Destroy()
        end)
    end
end)
 
for i,v in pairs(Model:GetChildren()) do
    if v.Name == "Reins" and v:IsA("BasePart") then
        v.Transparency = 1
    end
end
 
local Filler = NP()
Filler.Size = Vector3.new(3,4,7)
Filler.Transparency = 1
Weld(Main,Filler,CFrame.new(0,-2,0))
 
local BallB = NP()
BallB.CanCollide = true
BallB.Shape = "Ball"
BallB.Size = Vector3.new(3,3,3)
BallB.Transparency = 1
local BBW = Weld(Main,BallB,CFrame.new(0,-Height+BallB.Size.Y/2,3))
BBW0 = BBW.C0
 
local BallF = NP()
BallF.CanCollide = true
BallF.Shape = "Ball"
BallF.Size = Vector3.new(3,3,3)
BallF.Transparency = 1
local FBW = Weld(Main,BallF,CFrame.new(0,-Height+BallB.Size.Y/2,-3))
FBW0 = FBW.C0
 
local BG = Instance.new("BodyGyro",Main)
BG.cframe = Main.CFrame
local bgcf = BG.cframe
BG.maxTorque = Vector3.new(1,1,1)*4e6
 
local BF = Instance.new("BodyForce",Main)
BF.force = Vector3.new(0,10000,0)
 
local BV = Instance.new("BodyVelocity",Main)
BV.maxForce = Vector3.new(1,1,1)*4e6
BV.velocity = Vector3.new()
local bvvel = Vector3.new()
 
local Legs = {
    FR1,FR2,FR3,
    FL1,FL2,FL3,
    BR1,BR2,BR3,
    BL1,BL2,BL3,
}
local Legs0 = {}
for i,v in pairs(Legs) do
    Legs0[i] = v.C0
end
 
function RayCast(Ray,Ignore)
    local hit,p = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
    if not hit or hit.CanCollide then
        return hit,p
    elseif hit then
        table.insert(Ignore,hit)
        return RayCast(Ray,Ignore)
    end
end
 
 
--Model:MoveTo(startpos.p)
 
local climbangle = 0
local blinktimer = 0
 
--while game:GetService("RunService").Stepped:wait() do
local connection
connection = game:GetService("RunService").Stepped:connect(oc(function()
    if not Model:IsDescendantOf(workspace) then
        pcall(game.Destroy,Model)
        pcall(game.Destroy,script)
        connection:disconnect()
    end
    local th = Seat.Throttle
    local st = Seat.Steer
    local TailSin = math.sin(tick()*(th==1 and .5+Speed/MaxSpeed*6 or 2))
    local BreathSin = math.sin(tick()*(th==1 and (Speed<=WalkSpeed and WalkSin/2 or Speed<=TrotSpeed and TrotSin/2 or GallopSin/2) or 2))
    TailWeld.C0 = clerp(TailWeld.C0,TailWeld0 * CFrame.Angles(math.rad(th == 1 and 20+math.min(1,Speed/MaxSpeed)*(-50+TailSin*10) or th==-1 and 25 or 20),0,TailSin*.3),.15)
 
    local d,un = 10;
    if th == 0 and st == 0 then 
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            pcall(function()
                local dis = v:DistanceFromCharacter(Head.Position)
                if dis < d then
                    local u = Main.CFrame:vectorToObjectSpace((v.Character.Head.Position-Head.Position).unit)
                    if u.Z < 0 then
                        d,un = dis,u
                    end
                end
            end)
        end
    end
 
    if math.random(1,150) == 1 then
        blinktimer = 4
    end
    if blinktimer > 0 then
        EyeR.BrickColor = HorseColor
        EyeL.BrickColor = HorseColor
        blinktimer = blinktimer - 1
    else
        EyeR.BrickColor = EyeColor
        EyeL.BrickColor = EyeColor
    end
    NeckWeld.C0 = clerp(NeckWeld.C0,CFrame.Angles(0,-st*.1-(un and math.sin(un.X)/2 or 0),-st*.1) *NeckWeld0 * CFrame.Angles(math.rad(BreathSin*2+(th==1 and -math.min(1,math.max(0,Speed-10)/(MaxSpeed-10))*45 or th == -1 and 10 or 0))+(un and math.sin(un.Y)/2 or 0),0,0),.15)
    HeadWeld.C0 = clerp(HeadWeld.C0,CFrame.Angles(0,-st*.3-(un and math.sin(un.X)/2 or 0),-st*.1) *HeadWeld0 * CFrame.Angles(math.rad(BreathSin*-4+(th==1 and 10 or th == -1 and -30 or 0))+(un and math.sin(un.Y)/2 or 0),0,0),.15)
    MainMesh.Scale = Vector3.new(1,1+(BreathSin*.025),1)
    SeatWeld.C0 = SeatWeld0 + Vector3.new(0,BreathSin*.05,0)
    bgcf = bgcf * CFrame.Angles(0,-st*.05,0)
    BG.cframe = clerp(bgcf,bgcf * CFrame.Angles(0,0,th==1 and -st*(.1+Speed/MaxSpeed*.1) or 0),.1)*CFrame.Angles(climbangle,0,-st*.25*(Speed/MaxSpeed)) 
    Speed = math.max(th==-1 and -WalkSpeed or th==1 and math.min(SpeedLimit,10) or 0,math.min(SpeedLimit,Speed+(th==1 and .25 or -3)))
    updown = th==1 and Speed > TrotSpeed and math.abs(math.sin((tick()-.1)*3)) or math.max(0,(updown or 0)-.1)
 
    local front = Main.CFrame*CFrame.new(0,0,-3)
    local back = Main.CFrame*CFrame.new(0,0,3)
 
 
    local fHit,fP = RayCast(Ray.new(front.p,front:vectorToWorldSpace(Vector3.new(0,-Height*6,0))),{Model})
 
    local fDiff = (front.p-fP).magnitude
    if fDiff > Height*2 then
        fHit = nil
    end
    local fY = math.max(fP.Y,front.Y-Height)
 
    local bHit,bP = RayCast(Ray.new(back.p,back:vectorToWorldSpace(Vector3.new(0,-Height*6,0))),{Model})
    local bDiff = (back.p-bP).magnitude
    if bDiff > Height*2 then
        bHit = nil
    end
    local bY = math.max(bP.Y,back.Y-Height)
 
    local diffY = (fY+bY)/2-(Main.Position.Y-Height)
    
    climbangle = fHit and bHit and math.asin((fP-bP).unit.Y) or climbangle*.5
 
    bvvel = Main.CFrame.lookVector.unit * Speed
    BV.velocity = (fP-bP).unit*Speed + Vector3.new(0,-(math.min(fDiff-Height,bDiff-Height)+updown*.8)*3,0)
    BV.maxForce = Vector3.new(1,1,1)*4e6
    BBW.C0 = BBW0 + Vector3.new(0,updown*.8,-1.4)
    FBW.C0 = FBW0 + Vector3.new(0,updown*.8,1.4)
 
    for i=1,#Legs,3 do
        local ang = 0;
        local ang2 = 0;
        local ang3 = 0;
        local time = tick()
        if i < #Legs/2 then -- front
            if i%6 == 1 then -- Right
                if th == 1 then
                    if Speed <= WalkSpeed then -- walky
                        ang = math.sin(time*WalkSin)*.15 + .05
                        ang2 = -math.abs(math.cos(time*WalkSin/2))*.4
                    elseif Speed <= TrotSpeed then
                        ang = math.sin(time*TrotSin)*.5 + .4
                        ang2 = -math.abs(math.cos(time*TrotSin/2))*1.7
                    else
                        ang = math.sin(time*6)*.8 + .35
                        ang2 = -math.abs(math.cos(time*3))*1.8
                    end
                elseif th == -1 then
                    ang = math.sin(time*6)*.3 +.25
                    time = time -.1
                    ang2 = -math.abs(math.sin(time*3))*1.3 +.2
                else
                    ang = math.sin(tick()*2)*.5 + .5
                    ang2 = -math.abs(math.cos(tick()*1) )*1.5
                    ang3 = ang2
                end
            else -- left
                if th == 1 then
                    if Speed <= WalkSpeed then -- walky
                        time = time + math.pi/WalkSin
                        ang = math.sin(time*WalkSin)*.15 + .05
                        ang2 = -math.abs(math.cos(time*WalkSin/2))*.4
                    elseif Speed <= TrotSpeed then
                        time = time + math.pi/TrotSin
                        ang = math.sin(time*TrotSin)*.5 + .4
                        ang2 = -math.abs(math.cos(time*TrotSin/2))*1.7
                    else
                        time = time + .15
                        ang = math.sin(time*6)*.8 + .35
                        ang2 = -math.abs(math.cos(time*3))*1.8
                    end
                elseif th == -1 then
                    time = time + math.pi/2
                    ang = math.sin(time*6)*.3 +.25
                    time = time -.1
                    ang2 = -math.abs(math.sin(time*3))*1.3 +.2
                else
                end
            end
        else -- back
            if i%6 == 1 then -- Right
                if th == 1 then
                    if Speed <= WalkSpeed then -- walky
                        ang = math.sin(time*WalkSin)*.1 - .6
                        ang2 = math.abs(math.cos(time*WalkSin/2))*.5 + .4
                    elseif Speed <= TrotSpeed then
                        ang = math.sin(time*TrotSin)*.5 - .8
                        ang2 = math.abs(math.cos(time*TrotSin/2))*1.4 - .1
                        ang3 = ang2-1
                    else
                        time = time + math.pi/2
                        ang = math.sin(time*6)*.5 - .8
                        ang2 = math.abs(math.cos(time*3))*1.4 - .1
                        ang3 = ang2-1
                    end
                elseif th == -1 then
                    ang = math.sin(time*6)*.2 - .6
                    time = time -.5
                    ang2 = math.abs(math.cos(time*3))*1.4 - .1
                    ang3 = math.sin(time*6)*.2
                else
                    ang = -.5
                    ang2 = .65
                    ang3 = -.15
                end
            else -- left
                if th == 1 then
                    if Speed <= WalkSpeed then -- walky
                        time = time + math.pi/WalkSin
                        ang = math.sin(time*WalkSin)*.1 - .7
                        ang2 = math.abs(math.cos(time*WalkSin/2))*.5 + .4
                    elseif Speed <= TrotSpeed then
                        time = time - math.pi/TrotSin
                        ang = math.sin(time*TrotSin)*.5 - .8
                        ang2 = math.abs(math.cos(time*TrotSin/2))*1.4 - .1
                        ang3 = ang2-1
                    else
                        time = time + math.pi/2 - .15
                        ang = math.sin(time*6)*.5 - .8
                        ang2 = math.abs(math.cos(time*3))*1.4 - .1
                        ang3 = ang2-1
                    end
                elseif th == -1 then
                    time = time + math.pi/2
                    ang = math.sin(time*6)*.2 - .6
                    time = time -.5
                    ang2 = math.abs(math.cos(time*3))*1.4 - .1
                    ang3 = math.sin(time*6)*.2
                else
                    ang = -.55
                    ang2 = .65
                    ang3 = -.1
                end
            end
        end
        Legs[i].C0 = clerp(Legs[i].C0,Legs0[i] * CFrame.Angles(ang,0,0), .2)
        Legs[i+1].C0 =clerp(Legs[i+1].C0, Legs0[i+1] * CFrame.Angles(ang2,0,0), .2)
        Legs[i+2].C0 = clerp(Legs[i+2].C0, Legs0[i+2] * CFrame.Angles(ang3,0,0), .2)
    end
    
    -- Reins
    if ReinLineM and ReinLineM.Part1 and ReinLineM.Part1.Transparency < 1 then
        local rHold = ReinsHold or CFrame.new(0,3.5,-2)
        ReinSphereL.C0 = rHold*CFrame.new(-1.8,0,0) + Vector3.new(0,BreathSin*.05,0)
        ReinSphereR.C0 = rHold*CFrame.new(1.8,0,0) + Vector3.new(0,BreathSin*.05,0)
        local lp1 = Main.CFrame:pointToObjectSpace(ReinAnchorL.Position) + Vector3.new(-0.05,0,0)
        local lp2 = ReinSphereL.C0.p
        ReinLineL.C0 = CFrame.new(lp1:Lerp(lp2,.5),lp2)*CFrame.Angles(0,math.pi/2,0)
        ReinLineL.Part1.Mesh.Scale = Vector3.new((lp2-lp1).magnitude/ReinLineL.Part1.Size.X,1,1)
        local rp1 = Main.CFrame:pointToObjectSpace(ReinAnchorR.Position) + Vector3.new(0.05,0,0)
        local rp2 = ReinSphereR.C0.p
        ReinLineR.C0 = CFrame.new(rp1:Lerp(rp2,.5),rp2)*CFrame.Angles(0,math.pi/2,0)
        ReinLineR.Part1.Mesh.Scale = Vector3.new((rp2-rp1).magnitude/ReinLineR.Part1.Size.X,1,1)
        ReinLineM.C0 = CFrame.new(lp2:Lerp(rp2,.5),rp2)*CFrame.Angles(0,math.pi/2,0)
        ReinLineM.Part1.Mesh.Scale = Vector3.new((rp2-lp2).magnitude/ReinLineM.Part1.Size.X,1,1)
    end
    for i,v in pairs(BackHairs) do
        v.w.C0 = v.c0 * CFrame.Angles(math.sin(BreathSin+i)*.05,math.sin(BreathSin+i^2)*.05,math.sin(BreathSin+i^3)*.05) + Vector3.new(0,BreathSin*.05,0)
    end
 
    for i,v in pairs(TailHairs) do
        v.w.C0 = v.c0 * CFrame.Angles(math.sin(TailSin+i)*.05,math.sin(TailSin+i^2)*.05,math.sin(TailSin+i^3)*.05)
    end
    for i,v in pairs(NeckHairs) do
        v.w.C0 = v.c0 * CFrame.Angles(math.sin(BreathSin+i)*.05,math.sin(BreathSin+i^2)*.05,math.sin(BreathSin+i^3)*.05)
    end
    for i,v in pairs(HeadHairs) do
        v.w.C0 = v.c0 * CFrame.Angles(math.sin(BreathSin+i)*.08,math.sin(BreathSin+i^2)*.08,math.sin(BreathSin+i^3)*.08)
    end
end))
 
 
