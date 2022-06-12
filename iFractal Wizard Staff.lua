

--[[
@MADE COMPLETELY BY iFRACTAL
dont take credit nooobs asd

]]--





p = game.Players.LocalPlayer

 

 jum = true

 
yes = true
tra = .1

char = p.Character

slam = true



player = game.Players.LocalPlayer

 

pchar=p.Character

 
pchar.Head.Jumping.SoundId = "http://www.roblox.com/asset/?id=2767090"
 

Lightning = function(Start,End,Times,Offset,Color,Thickness)

    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}

    for i=1,Times do 

  local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  

li.Material = "Neon"

 li:BreakJoints()

li.Transparency = 0 li.BrickColor = Color

        li.formFactor = "Custom" li.CanCollide = false 

li.Size = Vector3.new(Thickness,Thickness,magz/Times) 

local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 

  local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz

        if Times == i then 

            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)

            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)

        else

            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)

        end

        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p Spawn(function() for i=1,10 do wait() 

 

li.Transparency = li.Transparency+tra end li:Destroy() end)

 

    end

end

 

m = p:GetMouse()

 

humanoid = pchar.Humanoid

 

 

 

 

 

 

humanoid.WalkSpeed = 10

humanoid.MaxHealth= 60000

wait()

humanoid.Health= 60000

 

humanoid.JumpPower = 50

 

shoot  = true

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

anglespeed = 3

 

 

 

 

 

RightShoulder = Instance.new("Weld",pchar.Torso)

 

RightShoulder.Part0 = pchar.Torso

 

RightShoulder.Part1 = pchar['Right Arm']

 

RightShoulder.C0 = CFrame.new(1,0.5,0)  

 

RightShoulder.C1 = CFrame.new(-0.5,0.5,0) 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

LeftShoulder = Instance.new("Weld",pchar.Torso)

 

 

 

 

LeftShoulder.Part0 = pchar.Torso

 

 

 

 

LeftShoulder.Part1 = pchar['Left Arm']

 

 

 

 

LeftShoulder.C0 = CFrame.new(-1,0.5,0)  

 

 

 

 

LeftShoulder.C1 = CFrame.new(0.5,0.5,0) 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

as = 0.3

 

 

 

 

 

 

 

 

 

 

 

 

 

-------------------------

 

 

 

 

-- From 0,0,0 to 10,22,3 with lerps

 

 

 

 

 

 

 

 

 

 

 

 

 

deg = math.deg

 

 

 

 

rad = math.rad

 

 

 

 

asin = math.asin

 

 

 

 

atan2 = math.atan2

 

 

 

 

cos = math.cos

 

 

 

 

sin = math.sin

 

 

 

 

rad = math.sin

 

 

 

 

function getAngles(cf) -- this is for later

 

 

 

 

    local sx,sy,sz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()

 

 

 

 

    return atan2(-m12,m22),asin(m02),atan2(-m01,m00)

 

 

 

 

end

 

 

 

 

Lerp = {

 

 

 

 

    Number = function(C1,C2,inc)

 

 

 

 

        return C1 + (C2 - C1) * inc

 

 

 

 

    end;

 

 

 

 

    CFrame = function(a,b,m)

 

 

 

 

  local c,d={a:components()},{b:components()}

 

 

 

 

  table.foreach(c,function(a,b)c[a]=c[a]+(d[a]-c[a])*m end)

 

 

 

 

  return CFrame.new(unpack(c))

 

 

 

 

 end;

 

 

 

 

}

 

 

 

 

-----------

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

rod = Instance.new("Part",char)

 

 

 

 

rod.Size = Vector3. new(0.3,0.3,7)

 

 

 

 

rod.BrickColor = BrickColor.new("Really black")

 

 

 

 

rod.TopSurface = 0

 

 

 

 

rod.CanCollide = false

 

 

 

 

 

 

 

rod:BreakJoints()

 

 

 

 

 

rod.BottomSurface = 0

 

 

 

 

rw = Instance.new("Weld",rod)

 

 

 

 

rw.Part0 = rod

 

 

 

 

rw.Part1 = char["Left Arm"]

 

 

 

 

rw.C0 = CFrame.new(0,1,0)

 

 

 

 

 

 

 

 

 

 

 

 

 

tasselh = Instance.new("Part",char)

 

 

 

 

tasselh.Size = Vector3. new(0.35,0.35,0.5)

 

 

 

 

tasselh.BrickColor = BrickColor.new("Magenta")

 

 

 

 

tasselh.TopSurface = 0

 

 

 

 

tasselh.CanCollide = false

 

 

 

tasselh:BreakJoints()

 

 

 

 

 

 

 

 

 

tasselh.BottomSurface = 0

 

 

 

 

thw = Instance.new("Weld",tasselh)

 

 

 

 

thw.Part0 = tasselh

 

 

 

 

thw.Part1 = rod

 

 

 

 

thw.C0 = CFrame.new(0,0,1)

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

tassel = Instance.new("Part",char)

 

 

 

 

tassel.Size = Vector3. new(0.37,0.37,0.15)

 

 

 

 

tassel.BrickColor = BrickColor.new("Really black")

 

 

 

 

tassel.TopSurface = 0

 

 

 

 

tassel.CanCollide = false

 

 

 

 

tassel:BreakJoints()

 

 

 

 

 

 

 

 

tassel.BottomSurface = 0

 

 

 

 

tw = Instance.new("Weld",tassel)

 

 

 

 

tw.Part0 = tassel

 

 

 

 

tw.Part1 = tasselh

 

 

 

 

tw.C0 = CFrame.new(0,0,0)

 

 

 

 

 

 

 

 

 

 

capers={}

 

torso=game.Players.LocalPlayer.Character.Torso

 

 

 

 

local WorldUp = Vector3.new(0,1,0)

 

function look2(Vec1,Vec2)

 

    local Orig = Vec1

 

    Vec1 = Vec1+Vector3.new(0,1,0)

 

    Vec2 = Vec2+Vector3.new(0,1,0)

 

    local Forward = (Vec2-Vec1).unit

 

    local Up = (WorldUp-WorldUp:Dot(Forward)*Forward).unit

 

    local Right = Up:Cross(Forward).unit

 

    Forward = -Forward

 

    Right = -Right

 

    return CFrame.new(Orig.X,Orig.Y,Orig.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)

 

end

 

 

 

 

function look(CFr,Vec2)

 

    local A = Vector3.new(0,0,0)

 

    local B = CFr:inverse()*Vec2

 

    local CF = look2(A,Vector3.new(A.X,B.Y,B.Z))

 

    if B.Z > 0 then

 

        CF = CFr*(CF*CFrame.Angles(0,0,math.pi))

 

    elseif B.Z == 0 then

 

        if B.Y > 0 then

 

            CF = CFr*CFrame.Angles(math.pi/2,0,0)

 

        elseif B.Y < 0 then

 

            CF = CFr*CFrame.Angles(-math.pi/2,0,0)

 

        else

 

            CF = CFr

 

        end

 

    end

 

    local _,_,_,_,X,_,_,Y,_,_,Z,_ = CF:components()

 

    local Up = Vector3.new(X,Y,Z)

 

    local Forward = (Vec2-CFr.p).unit

 

    local Right = Up:Cross(Forward)

 

    Forward = -Forward

 

    Right = -Right

 

    return CFrame.new(CFr.X,CFr.Y,CFr.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)

 

end

 

 

 

 

function simulate(j,d,m,r,t)

 

        local joint = j

 

        for i,v in ipairs(t) do

 

                if v[1]:FindFirstChild("Weld") then

 

                        local stiff = m.CFrame.lookVector*0.03

 

                        if i > 1 then joint = t[i-1][1].CFrame*CFrame.new(0,0,d*.5) end

 

                        local dir = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).unit

 

                        local dis = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).magnitude

 

                        local pos = joint.p+(dir*(d*0.5))

 

                      --if v[1].CFrame.y<=workspace.Base.CFrame.y then pos = joint.p+(dir*(d*.5)) end

 

                        local inv = v[1].Weld.Part0.CFrame

 

                        local rel1 = inv:inverse()*pos

 

                        local rel2 = inv:inverse()*(pos-(dir*dis))

 

                        local cf = look(CFrame.new(rel1),rel2)--CFrame.new(pos,pos-(dir*dis))*CFrame.fromEulerAnglesXYZ(r.x,r.y,r.z)

 

                        v[1].Weld.C0 = cf

 

                        v[2] = inv*cf

 

                        --v[1].CFrame = cf

 

                end

 

        end

 

end

 

for i=1,8 do

 

 local cp = Instance.new("Part",char)

 

 cp.Anchored = false

 

cp.BrickColor = BrickColor.new("Really black")

 

 cp.CanCollide = false

 

 cp.FormFactor="Custom"

 

 cp.Material = "SmoothPlastic"

 

 cp.TopSurface = "SmoothNoOutlines"

 

 cp.BottomSurface = "SmoothNoOutlines"

 

 cp.RightSurface = "SmoothNoOutlines"

 

 cp.LeftSurface = "SmoothNoOutlines"

 

 cp.FrontSurface = "SmoothNoOutlines"

 

 cp.BackSurface = "SmoothNoOutlines"

 

 

 

 

 cp.Size=Vector3.new(2.6,.2,0.2)

 

 cp:BreakJoints() 

 

mesh = Instance.new("BlockMesh",cp)

 

mesh.Scale = Vector3.new(1,1,4)

 

local w = Instance.new("Motor6D",cp)

 

w.Part0 = capers[i-1] and capers[i-1][1] or torso

 

w.Part1 = cp

 

w.Name = "Weld"

 

 --table.insert(capers,cp)

 

capers[i] = {cp,cp.CFrame}

 

 

 

 

end

 

game:service"RunService".Stepped:connect(function()

 

 simulate(torso.CFrame*CFrame.new(0,0.9,.5),.6,torso,Vector3.new(),capers)

 

end)

jum = true



 

funm = false

 

angle = 0

 

 

 

 

 

 

 

 yes = true

 

sin = math.sin

 

function updateanims()

 

    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then

 

        anglespeed = 1/2

 

     

 

            LerpTo.RightArm = CFrame.new(0.7,0.5,0) * CFrame.Angles(-0.8,0,-0.5)

 

       

 

       

 

            

 

 

 

 

    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then



        anglespeed = 2

 

       

 

 

 

 

 

 

 

            LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(-sin(angle)*.6,0,rad(3))

 

       

 

         

 

 

 

 

  

 


end
end

Spawn(function()

    while wait()do

        angle = (angle % 100) + anglespeed/10 

 end 

end)

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

---------

 

 

 

 

LerpTo = { -- this is where your lerp stuff would go if you had more than one arm to lerp

 

 

 

 

 

 

 

 

 

    LeftArm = CFrame.new(-1,0.5,0);

 

 

 

 

 

 

 

  RightArm = CFrame.new(1,0.5,0);

 

 

 

 

 

 

 

 

 

 

 

 

 

Staff = CFrame.new(0,1,0);

 

 

 

 

 

 

 

 

 

 

 

 

 

}

 

 

 

 
function stream(origin,dir,length,size)
        local parts = {}
        for i = 1,length do
                local p = Instance.new("Part",char)
                p.Anchored = true
                p.Transparency = 0
                p.TopSurface = 0
                p.BottomSurface = 0
                p.CanCollide = false
                p.BrickColor = BrickColor.new("Magenta")
                p.Size = Vector3.new(1,1,1) -- for now
                p.CFrame = CFrame.new(origin+dir*i*size)*CFrame.Angles(math.random()*math.pi,math.random()*math.pi,math.random()*math.pi)
                parts[i] = {p,CFrame.Angles(math.random()*math.pi/5,math.random()*math.pi/5,math.random()*math.pi/5)}
                game:GetService("Debris"):AddItem(p,1)
        end
        Spawn(function()
                while parts do
                        for i,v in pairs(parts) do
                                if v[1].Parent == char then
                                        v[1].CFrame = v[1].CFrame*v[2]
                                else
                                        parts = nil
                                        break
                                end
                        end
                        wait(0.02)
                end
        end)
end
---
m.KeyDown:connect(function(k)
if k == "p" then
wait(2)
for i = 1,3 do
ends1 = Instance.new("Part",pchar)
ends1:BreakJoints()
ends1.Size = Vector3.new(1,1,1)
ends1.BrickColor = BrickColor.new("Magenta")
endw1 = Instance.new("Weld",ends1)
endw1.Part0 = ends1
endw1.Part1 = pchar.Torso
endm1 = Instance.new("SpecialMesh",ends1)
endm1.MeshType = "FileMesh"
endm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
endm1.Scale = Vector3.new(1,1,1)
endw1.C0 = CFrame.new(0,0,900)
for i = 1,20,1 do wait()
endm1.Scale = Vector3.new(i,i,1)

end
ends1:Remove()
end
end
end)
m.KeyDown:connect(function(k)
if k == "p" then
rng11= Instance.new("Part",rod)
humanoid.WalkSpeed = 0
rng11:BreakJoints()
tra = 0.5
rng11.Size = Vector3.new(1,1,1)

rng11.Anchored = false

rng11:BreakJoints()

rng11.BrickColor = BrickColor.new("Magenta")

 

rngm11 = Instance.new("SpecialMesh",rng11)

rngm11.MeshType = "Sphere"

rng11.Transparency =0

rng11.Material = "Neon"

rngm11.Scale = Vector3.new(1,1,1)

rinw11 = Instance.new("Weld",rng11)

rinw11.Part0 = rng11

rinw11.Part1 = tasselh

rinw11.C0 = CFrame.new(0,0,0)

ends = Instance.new("Part",pchar)
ends:BreakJoints()
ends.Size = Vector3.new(1,1,1)
endw = Instance.new("Weld",ends)
endw.Part0 = ends
endw.Part1 = pchar.Torso

endw.C0 = CFrame.new(0,0,900)
s122 = Instance.new("Sound",rod)
        s122.SoundId = "rbxassetid://181004943"
        s122.Volume = .7
        s122.Pitch = .9
        s122:Play()
        
LerpTo.LeftArm = CFrame.new(-1,0.5,-0.5) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(0))
for i = 0.5,2.5,0.05 do wait()

rngm11.Scale = Vector3.new(i,i,i)

end
damageb = Instance.new("Part",pchar)
damageb.Size = Vector3.new(3,3,200)
damageb.Transparency = 1
damageb:BreakJoints()
damageb.Anchored = true

        s22 = Instance.new("Sound",rod)
        s22.SoundId = "rbxassetid://228343271"
        s22.Volume = .7
        s22.Pitch = 1.4
        s22:Play()
for i = 1,40 do wait()

damageb.CanCollide = false


damageb.CanCollide = true


damageb.CFrame = pchar.Torso.CFrame *CFrame.new(-1,1,-105)
damageb.Touched:connect(function(h)
local x = h.Parent:FindFirstChild("Humanoid")
if x then
if x.Parent.Name == game.Players.LocalPlayer.Name then
safe = true
else safe = false
end
if x then




wait(0.2)
x.Parent.Humanoid:TakeDamage(1)
wait()
safe = true

end
end
end)

Lightning(

tassel.CFrame.p,ends.Position,math.random(5,10),math.random(0,0),BrickColor.new("Magenta"),1

)

LerpTo.LeftArm = CFrame.new(-1,0.5,-1.1) * CFrame.Angles(math.rad(90),math.rad(-40),math.rad(0))

end
safe = true
for i = 3,0,-0.2 do wait()

rngm11.Scale = Vector3.new(i,i,i)

end
damageb:Remove()
ends:Remove()
rng11:Remove()
humanoid.WalkSpeed = 9
LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
end
end)
 

 

m.KeyDown:connect(function(k)

if k == "x" then

lightning = true

tasselh.Material = "Neon"

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(120),0,0)

LerpTo.Staff = CFrame.new(0,1,2) * CFrame.Angles(math.rad(30),0,0)

repeat wait()

s1 = Instance.new("Sound",rod)

s1.SoundId = "rbxassetid://207825136"

s1.Pitch = 0.8

wait() s1:Play()

Lightning(

tasselh.CFrame.p,m.hit.p,math.random(5,10),math.random(-1.5,1.5),BrickColor.new("Magenta"),.2

)

 

 

for i,v in pairs(workspace:children()) do

                    if v:IsA("Model") and v:findFirstChild("Humanoid") then

                        if v:findFirstChild("Head") and v:findFirstChild("Torso") then

                            if (v:findFirstChild("Torso").Position - player:GetMouse().hit.p).magnitude < 4 then

if v.Name ~= p.Name then 

                                v.Humanoid:TakeDamage(40)

v.Humanoid.PlatformStand = true

wait(0.1)

v.Humanoid.PlatformStand = false

                            end

                        end

               end

                end

 

 

 

 

 

end

until lightning == false

end

 

end)

m.KeyUp:connect(function(k)

if k == "x" then

lightning = false

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(90),0,0)

LerpTo.Staff = CFrame.new(0,1,0.5) * CFrame.Angles(math.rad(0),0,0)

tasselh.Material = "Plastic"

end

end)












m.KeyDown:connect(function(k)

if k == "f" then

if slam == true then

s2 = Instance.new("Sound",rod)

s2.Pitch = 1.6

s2.SoundId = "http://www.roblox.com/asset/?id=2101148"

 

 

slam = false

 

tasselh.Material = "Neon"

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(120),0,0)

LerpTo.Staff = CFrame.new(0,1,0.5) * CFrame.Angles(math.rad(30),0,0)

wait(0.5)

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(60),0,0)

LerpTo.Staff = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-30),0,0)

for i,v in pairs(workspace:children()) do

                    if v:IsA("Model") and v:findFirstChild("Humanoid") then

                        if v:findFirstChild("Head") and v:findFirstChild("Torso") then

                            if (v:findFirstChild("Torso").Position - player.Character.Torso.Position).magnitude < 10 then

if v.Name ~= p.Name then 

                                v.Humanoid:TakeDamage(10)

v.Humanoid.PlatformStand = true

 

                            end

                        end

               end

                end



 

 

end

s2:Play()

rng = Instance.new("Part",rod)

rng:BreakJoints()

rng.Size = Vector3.new(1,1,1)

rng.Anchored = true

rng.BrickColor = BrickColor.new("Magenta")

rng.CFrame = rod.CFrame * CFrame.new(0,0,4) * CFrame.Angles(0,0,math.rad(90))

rngm = Instance.new("SpecialMesh",rng)

rngm.MeshType = "FileMesh"

rng.Transparency =1

rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"

rngm.Scale = Vector3.new(1,1,1)

wait(0.2)

rng.Transparency =0

tasselh.Material = "Plastic"

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(90),0,0)

LerpTo.Staff = CFrame.new(0,1,0) * CFrame.Angles(math.rad(0),0,0)

for i = 1,10,1 do wait()

rngm.Scale = Vector3.new(1+i*1.5,1+i*1.5,0.1)

rng.Transparency = i/10

end

rng:Remove()

 

slam = true

end

end

end)

s = Instance.new("Sound",rod)

s.SoundId = "rbxassetid://392838370"

s.Volume = 1

m.KeyDown:connect(function(k)

if k == "r" then

if shoot == true then

shoot = false

wait()

s:Play()

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(160),0,0)

LerpTo.Staff = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-40),0,0)

 

rng1 = Instance.new("Part",rod)

rng1:BreakJoints()

rng1.Size = Vector3.new(1,1,1)

rng1.Anchored = false

rng1:BreakJoints()

rng1.BrickColor = BrickColor.new("Magenta")

 

rngm1 = Instance.new("SpecialMesh",rng1)

rngm1.MeshType = "Sphere"

rng1.Transparency =0

rng1.Material = "Neon"

rngm1.Scale = Vector3.new(1,1,1)

rinw1 = Instance.new("Weld",rng1)

rinw1.Part0 = rng1

rinw1.Part1 = rod

rinw1.C0 = CFrame.new(0,0,5)

 

 

 

rng11= Instance.new("Part",rod)

rng11:BreakJoints()

rng11.Size = Vector3.new(1,1,1)

rng11.Anchored = false

rng11:BreakJoints()

rng11.BrickColor = BrickColor.new("Really black")

 

rngm11 = Instance.new("SpecialMesh",rng11)

rngm11.MeshType = "Sphere"

rng11.Transparency =0.7

rng11.Material = "Neon"

rngm11.Scale = Vector3.new(1,1,1)

rinw11 = Instance.new("Weld",rng11)

rinw11.Part0 = rng11

rinw11.Part1 = rng1

rinw11.C0 = CFrame.new(0,0,0)

for i = 0.5,1,0.2 do wait()

rngm1.Scale = Vector3.new(i,i,i)

end

wait(0.1)

for i = 1,2,0.2 do wait()

rngm1.Scale = Vector3.new(i,i,i)

 

rngm11.Scale = Vector3.new(i*1.5,i*1.5,i*1.5)

 

end

wait(0.2)

 

 

 

 

LerpTo.LeftArm = CFrame.new(-1,0.5,-0.4) * CFrame.Angles(math.rad(90),0,0)

LerpTo.Staff = CFrame.new(0,0,4) * CFrame.Angles(math.rad(90),0,0)

wait(.3)

rinw1:Remove()

rng1.Velocity = CFrame.new(rng1.Position,rod.Position).lookVector * -500

ypcall(function()

rng1.Touched:connect(function(h)

x = h.Parent.Humanoid

 

 

if x:IsA("Humanoid") then

if x then

if x.Parent.Name == game.Players.LocalPlayer.Name then

return

else

x:TakeDamage(40)

 

end

end

end

for i = 1,10,2 do

rngm1.Scale = Vector3.new(i,i,i)

rng1.Transparency = i/10

end

rng1:Remove()

rng11:Remove()

end)

end)

local bodyforc = Instance.new("BodyForce", rng1)

 

bodyforc.force = Vector3.new(0, rng1:GetMass() * 90, 0)

wait(0.5)

 

 

 

 

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(90),0,0)

LerpTo.Staff = CFrame.new(0,1,0) * CFrame.Angles(math.rad(0),0,0)

shoot = true

 

 

end

end

end)

m.KeyDown:connect(function(k)

if k == "q" then

 

lightning2 = true

 

 

l1 = Instance.new("Part",pchar)

l1.Size = Vector3.new(1,1,1)

l1.Transparency = 1

l1.CanCollide = false
l1:BreakJoints()

wait()
l1w = Instance.new("Weld",l1)

l1w.Part0 = l1

l1w.Part1 = char.Torso

l1w.C0 = CFrame.new(0,3,-7)

 

 

 

top = Instance.new("Part",pchar)

top.Transparency = 0

top.Material = "Neon"

top.CanCollide = false

top.Size = Vector3.new(1,1,1)

top.BrickColor = BrickColor.new("Magenta")

top.TopSurface = 0

top.BottomSurface = 0
top:BreakJoints()

wait()
topw = Instance.new("Weld",top)

topw.Part0 = top

topw.Part1 = char.Torso

topw.C0 = CFrame.new(0,-7,0)

topm = Instance.new("SpecialMesh",top)

topm.MeshType = "Sphere"

 

 

 

 

l2 = Instance.new("Part",pchar)

l2.Size = Vector3.new(1,1,1)

l2.Transparency = 1

l2.CanCollide = false
l2:BreakJoints()

wait()
l2w = Instance.new("Weld",l2)

l2w.Part0 = l2

l2w.Part1 = char.Torso

l2w.C0 = CFrame.new(0,3,7)

 
l2:BreakJoints()
 

 

 

 

l3 = Instance.new("Part",pchar)

l3.Size = Vector3.new(1,1,1)

l3.Transparency = 1

l3.CanCollide = false
l3:BreakJoints()

wait()
l3w = Instance.new("Weld",l3)



l3w.Part0 = l3

l3w.Part1 = char.Torso

l3w.C0 = CFrame.new(-7,3,0)

 

 

l4 = Instance.new("Part",pchar)

l4.Transparency = 1

l4.CanCollide = false

l4.Size = Vector3.new(1,1,1)
l4:BreakJoints()

wait()
l4w = Instance.new("Weld",l4)

l4w.Part0 = l4

l4w.Part1 = char.Torso

l4w.C0 = CFrame.new(7,3,0)

 

 

 

 

l5 = Instance.new("Part",pchar)

l5.Size = Vector3.new(1,1,1)

l5.Transparency = 1

l5.CanCollide = false
 l5:BreakJoints()
 
wait()
l5w = Instance.new("Weld",l5)

l5w.Part0 = l5

l5w.Part1 = char.Torso

l5w.C0 = CFrame.new(0,2,-7)



 

 

 

 

l6 = Instance.new("Part",pchar)

l6.Size = Vector3.new(1,1,1)

l6.Transparency = 1

l6.CanCollide = false

 l6:BreakJoints()
 
wait()
l6w = Instance.new("Weld",l6)

l6w.Part0 = l6

l6w.Part1 = char.Torso

l6w.C0 = CFrame.new(0,2,7)


 

 

 

 

l7 = Instance.new("Part",pchar)

l7.Size = Vector3.new(1,1,1)




l7.Transparency = 1

l7.CanCollide = false
l7:BreakJoints()
wait()
l7w = Instance.new("Weld",l7)
l7w.Part0 = l7

l7w.Part1 = char.Torso

l7w.C0 = CFrame.new(-7,2,0)

 



l8 = Instance.new("Part",pchar)

l8.Transparency = 1

l8.CanCollide = false

l8.Size = Vector3.new(1,1,1)
l8:BreakJoints()

wait()
l8w = Instance.new("Weld",l8)

l8w.Part0 = l8

l8w.Part1 = char.Torso

l8w.C0 = CFrame.new(7,2,0)

repeat wait()

for i,v in pairs(workspace:children()) do

                    if v:IsA("Model") and v:findFirstChild("Humanoid") then

                        if v:findFirstChild("Head") and v:findFirstChild("Torso") then

                            if (v:findFirstChild("Torso").Position - player.Character.Torso.Position).magnitude < 9 then

if v.Name ~= p.Name then 

                                v.Humanoid:TakeDamage(10)

v.Humanoid.PlatformStand = true

 

                            end

                        end

               end

                end

 

 

 

 

 

end

s1 = Instance.new("Sound",rod)

s1.SoundId = "rbxassetid://207825136"

s1.Pitch = 0.4

wait() s1:Play()

Lightning(

top.CFrame.p,l5.CFrame.p,math.random(5,10),math.random(-1,1),BrickColor.new("Magenta"),.2

)

Lightning(

top.CFrame.p,l6.CFrame.p,math.random(5,10),math.random(-1,1),BrickColor.new("Magenta"),.2

)

Lightning(

top.CFrame.p,l7.CFrame.p,math.random(5,10),math.random(-1,1),BrickColor.new("Magenta"),.2

)

Lightning(

top.CFrame.p,l8.CFrame.p,math.random(5,10),math.random(-1,1),BrickColor.new("Magenta"),.2

)

 

 

 

Lightning(

l5.CFrame.p,l1.CFrame.p,math.random(5,10),math.random(-1,1),BrickColor.new("Magenta"),.2

)

Lightning(

l6.CFrame.p,l2.CFrame.p,math.random(5,10),math.random(-1,1),BrickColor.new("Magenta"),.2

)

Lightning(

l7.CFrame.p,l3.CFrame.p,math.random(5,10),math.random(-1,1),BrickColor.new("Magenta"),.2

)

Lightning(

l8.CFrame.p,l4.CFrame.p,math.random(5,10),math.random(-1,1),BrickColor.new("Magenta"),.2

)

until lightning2 == false

end

 

end)

m.KeyUp:connect(function(k)

if k == "q" then

lightning2 = false

 

 

l1:Remove()

l2:Remove()

l3:Remove()

l4:Remove()

top:Remove()

l5:Remove()

l6:Remove()

l7:Remove()

l8:Remove()

 

 

end

end)

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(90),0,0)

 

 
function hum()


humState = humanoid:GetState()
if humState == Enum.HumanoidStateType.Jumping then
		if jum == true then
		jum = false
		yes = false
 rng = Instance.new("Part",pchar)

rng:BreakJoints()

rng.Size = Vector3.new(1,1,1)

rng.Anchored = true
rng.CanCollide = false

rng.BrickColor = BrickColor.new("Magenta")

rng.CFrame = rod.CFrame * CFrame.new(2,2,4) * CFrame.Angles(0,0,math.rad(90))

rngm = Instance.new("SpecialMesh",rng)

rngm.MeshType = "FileMesh"

rng.Transparency =0

rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"

rngm.Scale = Vector3.new(1,1,1)






for i = 1,10,1 do wait()

rngm.Scale = Vector3.new(1+i*1.5,1+i*1.5,0.1)

rng.Transparency = i/10


end

end
else
if jum == false
then

jum = true
end
end
 end

 

 

RunService = game:service'RunService'

 

 

 

 

RunService.RenderStepped:connect(function()

 

hum()

 

 

updateanims()

 

 

 

 

 

 

 

    

 

 

 

 

    LeftShoulder.C0 = Lerp.CFrame(LeftShoulder.C0,LerpTo.LeftArm,as)

 

 

 

 

  RightShoulder.C0 = Lerp.CFrame(RightShoulder.C0,LerpTo.RightArm,as)

 

 

 

 

 

 

 

rw.C0 = Lerp.CFrame(rw.C0,LerpTo.Staff,as)

 

 

 

 

 

 

 

 

 

 

 

 

 

end) 

 

 

 

 

-----------

 

 

 

 

 

 

 

 

 

 

 

 

 

  

 

 

 

 

----------

 

 

 

 

 

 

 

 

 

 
 
