


--[[

    ~~DAROACH~~

    

    

    @Made by iFractal

    

    ]]--

    tra = 0.1

    

Lightning = function(Start,End,Times,Offset,Color,Thickness)













    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}













    for i=1,Times do 













  local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  






li.Name = "lite"






li.Material = "Neon"








































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








































---------

 p= game.Players.LocalPlayer

char = p.Character

pchar = char

char.Humanoid.JumpPower = 0




handle = Instance.new("Part",char)

handle.Size = Vector3.new(0.3,3,0.3)

handle.BrickColor = BrickColor.new("Really black")

handle.TopSurface = 0

handle.BottomSurface = 0




handlew = Instance.new("Weld",handle)

handlew.Part0 = handle
handle.Transparency = 1
handlew.Part1 = char["Right Arm"]

handlew.C0 = CFrame.new(0,0.7,-1)* CFrame.Angles(math.rad(-90),0,0)

handlem = Instance.new("CylinderMesh",handle)

stars = true


top = Instance.new("Part",char)

top.Size = Vector3.new(0.4,0.4,0.4)

top.BrickColor = BrickColor.new("New Yeller")

top.TopSurface = 0

top.BottomSurface = 0

topw = Instance.new("Weld",top)

top.Transparency = 1
topw.Part0 = top

topw.Part1 = handle

topw.C0 = CFrame.new(0,1.5,0)

topm = Instance.new("CylinderMesh",top)

rad = math.rad







top2= Instance.new("Part",char)
top2.Transparency = 1
top2.Size = Vector3.new(0.55,0.05,0.55)

top2.BrickColor = BrickColor.new("New Yeller")

top2.TopSurface = 0

top2.BottomSurface = 0

topw2 = Instance.new("Weld",top2)

topw2.Part0 = top2

topw2.Part1 = top

topw2.C0 = CFrame.new(0,0.3,0) 

topm2 = Instance.new("CylinderMesh",top2)










top3= Instance.new("Part",char)

top3.Size = Vector3.new(0.4,0.02,0.4)
top3.Transparency = 1
top3.BrickColor = BrickColor.new("Really red")

top3.TopSurface = 0

top3.BottomSurface = 0

topw3 = Instance.new("Weld",top3)

topw3.Part0 = top3

topw3.Part1 = top2

topw3.C0 = CFrame.new(0,0.05,0)

topm3 = Instance.new("CylinderMesh",top3)

camp = Instance.new("Part",char)

camp.Transparency = 1

camp.Size = Vector3.new(1,1,1)

campw = Instance.new("Weld",camp)

campw.Part0 = camp

campw.Part1 = char.Torso

campw.C0 = CFrame.new(0,-1,0)

camp.CanCollide = false

Rod = Instance.new("Part",char)

Rod.Size = Vector3.new(0.3,4,0.3)

Rod.BrickColor = BrickColor.new("New Yeller")

Rod.TopSurface = 0

Rod.BottomSurface = 0

Rod.CanCollide = false


Rodw = Instance.new("Weld",Rod)

Rodw.Part0 = Rod
Rod.Transparency = 1
Rodw.Part1 = char["Right Arm"]

Rodw.C0 = CFrame.new(0,0.7,-1)* CFrame.Angles(math.rad(-90),0,0)

Rodm = Instance.new("CylinderMesh",Rod)

tip = Instance.new("Part",char)
tip.CanCollide = false
tip.TopSurface = 0
tip.BottomSurface =0
tip.BrickColor = BrickColor.new("New Yeller")
tip.Size = Vector3.new(1,1,1)
tip.Transparency = 1
tipw = Instance.new("Weld",tip)
tipw.Part0 = tip
tipw.Part1 = Rod
tipw.C0 = CFrame.new(0,2,0)

RobeBack = Instance.new("Part",char)

RobeBack.Size = Vector3.new(2.5,0.6,0.1)

RobeBack.BrickColor = BrickColor.new("Really red")

RobeBack.TopSurface = 0

RobeBack.BottomSurface = 0
Hat = Instance.new("Part",char)
Hat.Size = Vector3.new(1,1,1)
Hat.BrickColor = BrickColor.new("Really red")
Hatm = Instance.new("SpecialMesh",Hat)
Hatm.MeshType = "FileMesh"
Hatm.MeshId = "rbxassetid://442068331"
Hatm.Scale = Vector3.new(.155,.155,.1)
Hatw = Instance.new("Weld",Hat)
Hatw.Part0 = Hat
Hatw.Part1 = char.Head
Hatw.C0 = CFrame.new(0,0,-1) * CFrame.Angles(math.rad(90),0,0)
sin = math.sin

iceblast = true

Welo = Instance.new("Weld",RobeBack)

Welo.Part0 = RobeBack

Welo.Part1 = char.Torso

Welo.C0 = CFrame.new(0,-1.3,0.1) * CFrame.Angles(math.rad(-30),0,0)




capers={}

torso=char.Torso




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

                        local stiff = m.CFrame.lookVector*0.1

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

for i=1,6 do

 local cp = Instance.new("Part",char)

 cp.Anchored = false

cp.BrickColor = BrickColor.new("Really red")

 cp.CanCollide = false

 cp.FormFactor="Custom"

 cp.Material = "SmoothPlastic"

 cp.TopSurface = "SmoothNoOutlines"

 cp.BottomSurface = "SmoothNoOutlines"

 cp.RightSurface = "SmoothNoOutlines"

 cp.LeftSurface = "SmoothNoOutlines"

 cp.FrontSurface = "SmoothNoOutlines"

 cp.BackSurface = "SmoothNoOutlines"




 cp.Size=Vector3.new(2.2,.2,0.2)

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

--workspace.CurrentCamera.CameraSubject = camp

workspace.CurrentCamera.CoordinateFrame = CFrame.new(0,5,0)

torso = char.Torso

mus = Instance.new("Sound",char.Torso)

mus.SoundId = "rbxassetid://290059656"

mus.Volume=1

height = 0

mus.Volume = 1

mus.Looped = true

mus:Play()

m = p:GetMouse()

humanoid = char.Humanoid

m.KeyDown:connect(function(key)

if key == "e" then   

height = height - 1.5

LerpTo.Body = CFrame.new(0,height,0)* CFrame.Angles(math.rad(78),0,0)




elseif key=="q" then

    height = height + 1.5

    LerpTo.Body = CFrame.new(0,height,0) * CFrame.Angles(math.rad(78),0,0)

end

end)
m.KeyDown:connect(function(k)
if k == "f" then

if stars == true then
stars = false
active = true

Rod.Transparency = 0
tip.Transparency = 0
LerpTo.RightLeg = CFrame.new(0.5,-0.6,-0.5) *CFrame.Angles(rad(-30),0,0)




LerpTo.Body = CFrame.new(0,height,0) * CFrame.Angles(rad(98),0,0)
         LerpTo.LeftLeg = CFrame.new(-0.5,-0.2,-.5) * CFrame.Angles(rad(-30),0,0)
LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(5),0,0) * 

CFrame.Angles(0,0,0)











            LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(rad(90),0,rad(-30))
            wait(.3)
            
            LerpTo.Body = CFrame.new(0,height,0) * CFrame.Angles(rad(88),0,0)
            LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(0.5,0,rad(30))
          
             
LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(5),0,0) * 

CFrame.Angles(0,0,0)
end1 = Instance.new("Part",char)
end1.CFrame = m.Hit * CFrame.new(-10,0,0)
end1.Anchored = true
end1.Transparency = 1
end1.CanCollide = false
end2 = Instance.new("Part",char)
end2.CFrame = m.Hit * CFrame.new(10,0,0)
end2.Anchored = true

end2.Transparency = 1
end2.CanCollide = false
local ray = Ray.new(char.Torso.CFrame.p, (m.Hit.p - char.Torso.CFrame.p).unit * 100)
local part, position = workspace:FindPartOnRay(ray, p.Character, false,  true)
star = Instance.new("Part",char)
star.BrickColor = BrickColor.new("New Yeller")
star.CanCollide = false
star.Size = Vector3.new(2,2,2)
stm = Instance.new("SpecialMesh",star)
stm.MeshType = "Sphere"
star.Material = "Neon"
star.CFrame = tip.CFrame
bp = Instance.new("BodyPosition",star)
bp.P = 400
bp.Position = position
bp.D = 100


star2 = Instance.new("Part",char)
star2.BrickColor = BrickColor.new("New Yeller")
star2.Size = Vector3.new(2,2,2)
star2.Material = "Neon"
stm2 = Instance.new("SpecialMesh",star2)
stm2.MeshType = "Sphere"
star2.CanCollide = false
star2.CFrame = tip.CFrame
bp2 = Instance.new("BodyPosition",star2)
bp2.P = 400
bp2.Position = end1.Position
bp2.D = 100



star3 = Instance.new("Part",char)
star3.BrickColor = BrickColor.new("New Yeller")
star3.Size = Vector3.new(2,2,2)
star3.CanCollide = false
star3.Material = "Neon"
stm3 = Instance.new("SpecialMesh",star3)
stm3.MeshType = "Sphere"
star3.CFrame = tip.CFrame
bp3 = Instance.new("BodyPosition",star3)
bp3.P = 400
bp3.Position = end2.Position
bp3.D = 100
wait(0.5)
Rod.Transparency = 1
tip.Transparency = 1
stars = true
active = false













repeat
wait() until (star.Position-position).magnitude < 10


for i,v in pairs(workspace:children()) do
                    if v:IsA("Model") and v:findFirstChild("Humanoid") then
                        if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                            if (v:findFirstChild("Torso").Position - star.Position).magnitude < 15 then
if v.Name ~= p.Name then 
                                v.Humanoid:TakeDamage(40)
v.Humanoid.PlatformStand = true
                            end
                        end

               end
                end

end


for i = 5,10,1 do wait()

stm3.Scale = Vector3.new(i,i,i)

star3.Transparency= i/10


stm2.Scale = Vector3.new(i,i,i)

star2.Transparency= i/10

stm.Scale = Vector3.new(i,i,i)

star.Transparency= i/10

end


end
end
end)

m.KeyDown:connect(function(k)

if k == "x" then

if iceblast == true then

iceblast = false

active = true

char.Humanoid.WalkSpeed = 0
handle.Transparency = 0
top.Transparency = 0
top2.Transparency = 0
top3.Transparency  = 0
LerpTo.RightLeg = CFrame.new(0.5,-0.6,-0.5) *CFrame.Angles(rad(-30),0,0)




LerpTo.Body = CFrame.new(0,height,0) * CFrame.Angles(rad(98),0,0)







       













         LerpTo.LeftLeg = CFrame.new(-0.5,-0.2,-.5) * CFrame.Angles(rad(-30),0,0)













LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(5),0,0) * 

CFrame.Angles(0,0,0)













            LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(rad(120),0,rad(0))

            swing = Instance.new("Sound",char.Torso)

            swing.SoundId = "rbxassetid://158037267"

            swing.Volume = 1

            swing.Pitch = 1.4

            swing:Play()

for i = 1,7,1 do wait()

as = 0.4

             LerpTo.Staff = handlew.C0 * CFrame.Angles(math.rad(90),0,0) * CFrame.new(0,0.5,1)

            

             end

LerpTo.Staff = CFrame.new(0,0.7,-1)* CFrame.Angles(math.rad(-90),0,0)

as = 0.2

       













            LerpTo.LeftArm = CFrame.new(-0.9,1.3,-0.7) *

             CFrame.Angles(0,rad(15),rad(90))*CFrame.Angles(rad(10),0,rad(0))

               

                ball = Instance.new("Part",char)

          ball.Size = Vector3.new(0.1,0.1,0.1)

          ball.BrickColor = BrickColor.new("Pastel light blue")

ballw = Instance.new("Weld",ball)

ballw.Part0=ball

ballw.Part1=top3


     ball.TopSurface = 0

     ball.BottomSurface = 0
ball.Material = "Neon"
     ball.CanCollide = false

          ballm = Instance.new("SpecialMesh",ball)

          ballm.MeshType = "Sphere"

          for i = 1,8,0.5 do wait()

      

          ballm.Scale = Vector3.new(i,i,i)

           

             end

             

             

LerpTo.RightLeg = CFrame.new(0.5,-0.4,-0.5) *CFrame.Angles(rad(-30),0,0)




LerpTo.Body = CFrame.new(0,height,0) * CFrame.Angles(rad(78),0,0)







       







             LerpTo.Staff = handlew.C0 * CFrame.Angles(math.rad(90),0,0) * CFrame.new(0,0.5,1)










         LerpTo.LeftLeg = CFrame.new(-0.5,-0.3,-.5) * CFrame.Angles(rad(-30),0,0)













LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(12),0,0) * 

CFrame.Angles(0,0,0)













            LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(rad(110),0,rad(0))







             

             

             

ends = Instance.new("Part",char)

ends.Transparency = 1

ends.Anchored = true

beams = Instance.new("Sound",char.Torso)

beams.SoundId = "rbxassetid://154230112"

beams.Volume = 1

beams.Pitch = 0.9

beams:Play()




effect = Instance.new("Part",char)




effect.Size = Vector3.new(1,1,1)










effect.BrickColor = BrickColor.new("Pastel light blue")

effectm = Instance.new("SpecialMesh",effect)

effectm.MeshType = "FileMesh"

effectm.MeshId = "http://www.roblox.com/asset/?id=20329976"

effect:BreakJoints()

effectw = Instance.new("Weld",effect)
placeholder = Instance.new("Part",char)
placeholder.Size = Vector3.new(1,1,1)
placeholderw = Instance.new("Weld",placeholder)
placeholderw.Part0 = placeholder
placeholderw.Part1 = ball
placeholder.Transparency = 1
placeholderw.C0 = CFrame.new(0,3,0)
effectw.Part0 = effect

effectw.Part1 = top3

effectw.C0 = CFrame.new(0,-1,0)* CFrame.Angles(math.rad(0),0,0)
wait(0.2)
for i = 1,7,0.2 do wait()

ends.CFrame = char.Head.CFrame * CFrame.new(0,0,-100)

effectm.Scale = Vector3.new(i,i,i)

effect.Transparency = i/4



 

--[[Lightning(

top3.CFrame.p,ends.Position,math.random(5,10),math.random(0,0),BrickColor.new("Pastel light blue"),2

)]]--

local ray = Ray.new(placeholder.CFrame.p, (ends.CFrame.p - placeholder.CFrame.p).unit * 100)
local part, position = workspace:FindPartOnRay(ray, p.Character, false,  true)

            

 local  beam = Instance.new("Part", workspace)
                beam.BrickColor = BrickColor.new("Pastel light blue")
                beam.FormFactor = "Custom"
                beam.Material = "Neon"
                beam.Transparency = 0.25
                beam.Anchored = true
                beam.Locked = true
                beam.CanCollide = false
 
                local distance = (top3.CFrame.p - position).magnitude
                beam.Size = Vector3.new(1.2,1.2, distance)
                beam.CFrame = CFrame.new(top3.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
 
                game:GetService("Debris"):AddItem(beam, 0.5)
 
            
        
game:GetService("Debris"):AddItem(pww, 0.3)

if part then

                        local humanoid = part.Parent:FindFirstChild("Humanoid")

 

                        if not humanoid then

                                humanoid = part.Parent.Parent:FindFirstChild("Humanoid")

                        end

 

                        if humanoid then

                       

                                humanoid:TakeDamage(2)

                        end

                end

        end

        wait(0.5)

        humanoid.WalkSpeed = 20

        active = false

        ball:Remove()

        effect:Remove()

        wait()

        LerpTo.Staff = CFrame.new(0,0.7,-1)* CFrame.Angles(math.rad(-90),0,0)
handle.Transparency = 1
top.Transparency = 1
top2.Transparency = 1
top3.Transparency  = 1
placeholder:Remove()
        wait(0.5)

        iceblast = true

end

end

end)

torsoj = char.HumanoidRootPart.RootJoint




original = torsoj.C0




as = 0.2




active = false







anglespeed = 1/2
















RightShoulder = Instance.new("Weld",pchar.Torso)













RightShoulder.Part0 = pchar.Torso













RightShoulder.Part1 = pchar['Right Arm']













RightShoulder.C0 = CFrame.new(1,0.5,0)  













RightShoulder.C1 = CFrame.new(-0.5,0.5,0) 








































Torso2 = pchar.HumanoidRootPart.RootJoint



































































LeftShoulder = Instance.new("Weld",pchar.Torso)













LeftShoulder.Part0 = pchar.Torso













LeftShoulder.Part1 = pchar['Left Arm']













LeftShoulder.C0 = CFrame.new(-1,0.5,0)  













LeftShoulder.C1 = CFrame.new(0.5,0.5,0) 






























































































RightHip = Instance.new("Weld",pchar.Torso)













RightHip.Part0 = pchar.Torso













RightHip.Part1 = pchar['Right Leg']













RightHip.C0 = CFrame.new(0.5,-2,0)  













RightHip.C1 = CFrame.new(0,1.5,0) 

























































































































LeftHip = Instance.new("Weld",pchar.Torso)













LeftHip.Part0 = pchar.Torso













LeftHip.Part1 = pchar['Left Leg']













LeftHip.C0 = CFrame.new(-0.5,-2,0)  













LeftHip.C1 = CFrame.new(0,1.5,0) 






























































































Neck = Instance.new("Weld",pchar.Torso)













Neck.Part0 = pchar.Torso













Neck.Part1 = pchar['Head']













Neck.C0 = CFrame.new(0,1.5,0)














































function height11()




if height > 7 then 

height = 7

end

if height < 0 then 

height = 0

end




end



















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













local Jumping = false













humanoid.Jumping:connect(function()













if Jumping then return end













print'asd im jumping'













Jumping = true













repeat wait() until Vector3.new(0, torso.Velocity.y, 0).magnitude < 3













print'asd jump over'













Jumping = false













end)













local Falling= false













humanoid.FreeFalling:connect(function()













if Jumping then return end













print'asd im fallin'













Falling = true








































repeat wait() until Vector3.new(0, torso.Velocity.y, 0).magnitude < 100













print'hit ground!'













Falling = false













end)













-----------













angle = 0













sin = math.sin













rad = math.rad































function updateanims()













if active == false then













    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 and not Jumping then













        anglespeed = 1/2












































































LerpTo.RightLeg = CFrame.new(0.5,-0.5,-0.5) *CFrame.Angles(rad(-30),0,0)*

CFrame.Angles(-sin(angle)*.1,0,0)




LerpTo.Body = CFrame.new(0,height+sin(angle)*0.4,0) * CFrame.Angles(rad(80),0,0)







       













         LerpTo.LeftLeg = CFrame.new(-0.5,-0.1,-.7) * CFrame.Angles(rad(-20),0,0)

* CFrame.new(0,sin(angle)*0.07,0)










LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(10),0,0) * 

CFrame.Angles(sin(angle)*0.1,0,0)













            LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(rad(-30),0,rad(0))




* CFrame.Angles(sin(angle)*0.2,0,0)







       













            LerpTo.LeftArm = CFrame.new(-1.7,0.8,-0.5) *

             CFrame.Angles(sin(angle)*0.1,rad(15),rad(170))*CFrame.Angles(rad(5),0,rad(0))













            













       








































    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 and not Jumping then













        anglespeed = 3













 













LerpTo.RightLeg = CFrame.new(0.5,-0.5,-0.5) *CFrame.Angles(rad(-30),0,0)*

CFrame.Angles(-sin(angle)*.1,0,0)




LerpTo.Body = CFrame.new(0,height+sin(angle)*0.15,0) * CFrame.Angles(rad(78),0,0)







       













         LerpTo.LeftLeg = CFrame.new(-0.5,-0.1,-.5) * CFrame.Angles(rad(-30),0,0)

* CFrame.new(0,sin(angle)*0.1,0)










LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(10),0,0) * 

CFrame.Angles(0,0,0)













            LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(rad(-30,0),0,rad(0))




* CFrame.Angles(sin(angle)*0.2,0,0)







       













            LerpTo.LeftArm = CFrame.new(-0.9,1.3,-0.7) *

             CFrame.Angles(0,rad(15),rad(90))*CFrame.Angles(rad(10),0,rad(0))













            













       





















































































  elseif Falling then













LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(0,0,-rad(20))













LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(0,0,rad(20))


LerpTo.LeftLeg = CFrame.new(-0.5,-0.2,-0.3) * CFrame.Angles(0,rad(5),0)




LerpTo.RightLeg = CFrame.new(0.5,-0.5,0) * CFrame.Angles(0,rad(-0.1),0)







LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(-10),0,0)





    elseif Jumping and not Falling then


    print'asd this is seeing the jump!'




LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(0,0,-rad(20))













LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(0,0,rad(20))













LerpTo.LeftLeg = CFrame.new(-0.5,-0.2,-0.3) * CFrame.Angles(0,rad(5),0)





LerpTo.RightLeg = CFrame.new(0.5,-0.5,0) * CFrame.Angles(0,rad(-0.1),0)


LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(10),0,0)

end

end

end

Spawn(function()


    while wait()do


        angle = (angle % 100) + anglespeed/10 


        end 
end)

---------













LerpTo = { -- this is where your lerp stuff would go if you had more than one arm to lerp













    RightArm = CFrame.new(1,0.5,0);













    LeftArm = CFrame.new(-1,0.5,0);







Staff = handlew.C0;




LeftLeg = CFrame.new(-0.5,-0.5,0);













RightLeg = CFrame.new(0.5,-0.5,0);






















Body = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),0,math.rad(0));













Head = CFrame.new(0,1.5,0);













}













---








































RunService = game:service'RunService'













RunService.RenderStepped:connect(function()







if humanoid.PlatformStand == true then
humanoid.PlatformStand = false
end


updateanims()







height11()























































    RightShoulder.C0 = Lerp.CFrame(RightShoulder.C0,LerpTo.RightArm,as)













    LeftShoulder.C0 = Lerp.CFrame(LeftShoulder.C0,LerpTo.LeftArm,as)













RightHip.C0 = Lerp.CFrame(RightHip.C0,LerpTo.RightLeg,as)













    LeftHip.C0 = Lerp.CFrame(LeftHip.C0,LerpTo.LeftLeg,as)













 Neck.C0 = Lerp.CFrame(Neck.C0,LerpTo.Head,as)













torsoj.C0 = Lerp.CFrame(torsoj.C0,LerpTo.Body,as)







handlew.C0 = Lerp.CFrame(handlew.C0,LerpTo.Staff,as)








































end) 















