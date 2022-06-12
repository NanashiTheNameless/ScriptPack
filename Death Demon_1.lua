p = game.Players.LocalPlayer
char = p.Character
pchar = p.Character
pchar.Head.Jumping.SoundId = "http://www.roblox.com/asset/?id=2767090"
as=0.3
explode = true
tra = 0.1
blast = true
player = p
humanoid = char.Humanoid
torso = char.Torso
torsoj = char.HumanoidRootPart.RootJoint
original = torsoj.C0
laser = true
active= false
function hum()
humState = humanoid:GetState()
if humState == Enum.HumanoidStateType.Jumping then

local rng = Instance.new("Part", char)

        rng.Anchored = true

    rng.BrickColor = BrickColor.new("Really black")

     rng.CanCollide = false

    rng.FormFactor = 3

        rng.Name = "Ring"

     rng.Size = Vector3.new(1, 1, 1)

        rng.Transparency = 0

     rng.TopSurface = 0

     rng.BottomSurface = 0

  rng.Material = "Neon"

     rng.Position = torso.Position - Vector3.new(0,3,0)

        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

        local rngm = Instance.new("SpecialMesh", rng)

 rngm.MeshId= "http://www.roblox.com/asset/?id=3270017"

        rngm.Scale = Vector3.new(1, 1.3, 2)

        

 

 

        

     

wait(0.1)

          

     coroutine.wrap(function()

        for i = 1, 5, 0.5 do

        rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)

      rng.Transparency = i/4

       

          wait()

        

 

            end

           

              wait()

 

            rng:Destroy()

        

        

  

 

 

 wait()

end)()

 

 

 

 

end










end

Lightning = function(Start,End,Times,Offset,Color,Thickness)




    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}




    for i=1,Times do 




  local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  




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













Lightning2 = function(Start,End,Times,Offset,Color,Thickness)




    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}




    for i=1,Times do 




  local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  




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













li.Transparency = li.Transparency+.5 end li:Destroy() end)




    end




end




m = p:GetMouse()













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







--------------------------------------------------BEAM START




mouse = p:GetMouse()




mouse.KeyDown:connect(function(k)




if k == "x" then




if laser == true then




laser = false

explode = false

active = true

humanoid.WalkSpeed = 0

humanoid.JumpPower = 0

ends = Instance.new("Part",char)

ends.Anchored = true

ends.Transparency = 1

ends:BreakJoints()

ends.CFrame = char.Torso.CFrame * CFrame.new(-20,-3,0)




tra = 1

LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(0,math.rad(90),0)

LerpTo.Body = CFrame.new(0,0,0) * 

CFrame.Angles(math.rad(-90),0,math.rad(-280))

LerpTo.LeftArm = CFrame.new(-1.3,0.2,0) * CFrame.Angles(math.rad(00),0,math.rad(-80))

LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(0,0,math.rad(40))




orb = Instance.new("Part",char)




s122 = Instance.new("Sound",orb)

        s122.SoundId = "rbxassetid://181004943"

        s122.Volume = .7

        s122.Pitch = .9

        s122:Play()




orb.Size = Vector3.new(1,1,1)




orb.Material = "Neon"




orb.BrickColor = BrickColor.new("Really black")




orbm = Instance.new("SpecialMesh",orb)




orbm.MeshType = "Sphere"




orb:BreakJoints()




orbw = Instance.new("Weld",orb)




orbw.Part0 = orb




orbw.Part1 = char["Left Arm"]




orbw.C0 = CFrame.new(0,2,0)










for i = 1,4,0.1 do wait()




orbm.Scale = Vector3.new(i,i,i)




end

s1222 = Instance.new("Sound",orb)

        s1222.SoundId = "rbxassetid://245029978"

        s1222.Volume = 1

        s1222.Pitch = 1

        s1222:Play()

        







        

s1222 = Instance.new("Sound",orb)

        s1222.SoundId = "rbxassetid://245029978"

        s1222.Volume = 1

        s1222.Pitch = 1

        s1222:Play()

        

s1222 = Instance.new("Sound",orb)

        s1222.SoundId = "rbxassetid://245029978"

        s1222.Volume = 1

        s1222.Pitch = 1

        s1222:Play()

        wait(0.2)

for i = 1,30 do wait()




ends.CFrame = char.Torso.CFrame * CFrame.new(-20,-3,0)

Lightning(













orb.CFrame.p,ends.Position,math.random(5,10),math.random(0,0),BrickColor.new("Really black"),1













)




Lightning2(













orb.CFrame.p,ends.Position,math.random(5,10),math.random(2,2),BrickColor.new("Really red"),0.2













)







end













for i = 3,0,-0.3 do wait()




orbm.Scale = Vector3.new(i,i,i)




end




active = false

ends:Remove()

orb:Remove()

LerpTo.Body = original

wait(1)




explode = true







laser = true













tra = 0.1




humanoid.WalkSpeed = 16

humanoid.JumpPower = 50







end




end




end)

mouse.KeyDown:connect(function(k)

if k == "x" then

wait(2)




for i = 1,5 do wait()




for i,v in pairs(workspace:children()) do




                    if v:IsA("Model") and v:findFirstChild("Humanoid") then




                        if v:findFirstChild("Head") and v:findFirstChild("Torso") then




                            if (v:findFirstChild("Torso").Position - ends.Position).magnitude < 10 then




if v.Name ~= p.Name then 




                                v.Humanoid:TakeDamage(20)




v.Humanoid.PlatformStand = true




wait(0.1)




v.Humanoid.PlatformStand = false




                            end




                        end




               end




                end

















































end




end




end

end)




mouse.KeyDown:connect(function(k)




if k == "x" then




if laser == true then













wait(1.3)




for i = 1,30 do wait()






















local rng = Instance.new("Part", char)




--[[sound = Instance.new("Sound",rng)




 




sound.SoundId="http://www.roblox.com/asset/?id= 165970126"




wait()




sound:Play()]]--




        rng.Anchored = true




    rng.BrickColor = BrickColor.new("Really black")




     rng.CanCollide = false




    rng.FormFactor = 3




    rng:BreakJoints()




        rng.Name = "Ring"




     rng.Size = Vector3.new(1, 1, 1)




        rng.Transparency = 0




     rng.TopSurface = 0




     rng.BottomSurface = 0




  rng.Material = "Neon"




     rng.Position = torso.Position - Vector3.new(0,2,0)




        rng.CFrame = ends.CFrame*




        CFrame.Angles(math.random(),math.random(),math.random())




        local rngm = Instance.new("BlockMesh", rng)













        rngm.Scale = Vector3.new(1, 1.3, 2)




        




 




 




        local rng1 = Instance.new("Part", char)




     

        rng1.Anchored = true




    rng1.BrickColor = BrickColor.new("Really black")




     rng1.CanCollide = false




    rng1.FormFactor = 3




    rng1:BreakJoints()




        rng1.Name = "Ring"




     rng1.Size = Vector3.new(1, 1, 1)




        rng1.Transparency = 0




     rng1.TopSurface = 0




     rng1.BottomSurface = 0




  rng1.Material = "Neon"




     rng1.Position = torso.Position - Vector3.new(0,2,0)




        rng1.CFrame = ends.CFrame*




        CFrame.Angles(math.random(),math.random(),math.random())




        local rngm1 = Instance.new("SpecialMesh", rng1)







rngm1.MeshType = "Sphere"




        rngm1.Scale = Vector3.new(1, 1.3, 2)
















    local rng11 = Instance.new("Part", char)




     

        rng11.Anchored = true




    rng11.BrickColor = BrickColor.new("Really black")




     rng11.CanCollide = false




    rng11.FormFactor = 3




    rng11:BreakJoints()




        rng11.Name = "Ring"




     rng11.Size = Vector3.new(1, 1, 1)




        rng11.Transparency = 0




     rng11.TopSurface = 0




     rng11.BottomSurface = 0




  rng11.Material = "Neon"




     




        rng11.CFrame = ends.CFrame*        CFrame.Angles(math.rad(90),0,math.rad(0))




        local rngm11 = Instance.new("SpecialMesh", rng11)







rngm11.MeshId =  "http://www.roblox.com/asset/?id=3270017"




        rngm11.Scale = Vector3.new(1, 1.3, 2)







          




     coroutine.wrap(function()




        for i = 1, 5, 0.4 do 




        rngm.Scale = Vector3.new(i,i,i)




      rng.Transparency = 0

rngm1.Scale = Vector3.new(i*4,i*4,i*4)




      rng1.Transparency = i/5

       

rngm11.Scale = Vector3.new(1+i*5,1+i*5,1)




      rng11.Transparency = i/5




          wait()




        




 




            end




           




              wait()




 




            rng:Destroy()




            rng1:Destroy()

   rng11:Destroy()

        




  




 




 




 wait()




end)()




 




 




 




 end

end

end

end)







---------------------------------------------EXPLODE---------------------------------------










mouse.KeyDown:connect(function(k)

if k == "f" then

if explode == true then

explode = false

laser = false

active = true

humanoid.WalkSpeed = 0

humanoid.JumpPower = 0

LerpTo.Body = original * CFrame.new(0,0,5)

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(90),0,math.rad(60))

LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(math.rad(90),0,math.rad(-60))

LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(-10),0,0)

LerpTo.LeftLeg = CFrame.new(-0.5,0.7,-1) * CFrame.Angles(rad(-20),0,0)

LerpTo.RightLeg = CFrame.new(0.5,0.7,-1) * CFrame.Angles(rad(-20),0,0)

for i = 1,10 do

local rng = Instance.new("Part", char)

        rng.Anchored = true

    rng.BrickColor = BrickColor.new("Really black")

     rng.CanCollide = false

    rng.FormFactor = 3

        rng.Name = "Ring"

     rng.Size = Vector3.new(1, 1, 1)

        rng.Transparency = 1

     rng.TopSurface = 0

     rng.BottomSurface = 0

  rng.Material = "Neon"

     rng.Position = torso.Position - Vector3.new(0,8,0)

        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

        local rngm = Instance.new("SpecialMesh", rng)

 rngm.MeshId= "http://www.roblox.com/asset/?id=3270017"

        rngm.Scale = Vector3.new(1, 1.3, 2)

        

 

 

        

     

wait(0.1)

          

     coroutine.wrap(function()

        for i = 1, 10, 0.2 do

        rngm.Scale = Vector3.new(2 + i*4, 2 + i*4, 1)

      rng.Transparency = i/4

       

          wait()

        

 

            end

           

              wait()

 

            rng:Destroy()

        

        

  

 

 

 wait()

end)()

 

 

 

 

end




LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(-10),0,math.rad(-20))

LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(math.rad(-10),0,math.rad(20))

LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(20),0,0)

LerpTo.LeftLeg = CFrame.new(-0.5,-0.5,0) * CFrame.Angles(rad(-10),0,rad(-20))

LerpTo.RightLeg = CFrame.new(0.5,-0.5,0) * CFrame.Angles(rad(-10),0,rad(20))

for i = 1,1 do

local rng = Instance.new("Part", char)

        rng.Anchored = true

    rng.BrickColor = BrickColor.new("Really black")

     rng.CanCollide = false

    rng.FormFactor = 3

        rng.Name = "Ring"

     rng.Size = Vector3.new(1, 1, 1)

        rng.Transparency = 0

     rng.TopSurface = 0

     rng.BottomSurface = 0

  rng.Material = "Neon"

     rng.Position = torso.Position 

        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

        local rngm = Instance.new("SpecialMesh", rng)

 rngm.MeshType = "Sphere"

        rngm.Scale = Vector3.new(1, 1.3, 2)

        

        

for i,v in pairs(workspace:children()) do




                    if v:IsA("Model") and v:findFirstChild("Humanoid") then




                        if v:findFirstChild("Head") and v:findFirstChild("Torso") then




                            if (v:findFirstChild("Torso").Position - char.Torso.Position).magnitude < 30 then




if v.Name ~= p.Name then 




                                v.Humanoid:TakeDamage(40)




v.Humanoid.PlatformStand = true
















                            end




                        end




               end




                end

















































end

        

        

        local rng1 = Instance.new("Part", char)

        rng1.Anchored = true

    rng1.BrickColor = BrickColor.new("Really black")

     rng1.CanCollide = false

    rng1.FormFactor = 3

        rng1.Name = "Ring"

     rng1.Size = Vector3.new(1, 1, 1)

        rng1.Transparency = 0

     rng1.TopSurface = 0

     rng1.BottomSurface = 0

  rng1.Material = "Neon"

     rng1.Position = torso.Position - Vector3.new(0,7,0)

        rng1.CFrame = rng1.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

        local rngm1 = Instance.new("SpecialMesh", rng1)

 rngm1.MeshId= "http://www.roblox.com/asset/?id=20329976"

        rngm1.Scale = Vector3.new(1, 1.3, 2)

        

 

 

 

 

    local rng11 = Instance.new("Part", char)

        rng11.Anchored = true

    rng11.BrickColor = BrickColor.new("Really black")

     rng11.CanCollide = false

    rng11.FormFactor = 3

        rng11.Name = "Ring"

     rng11.Size = Vector3.new(1, 1, 1)

        rng11.Transparency = 0

     rng11.TopSurface = 0

     rng11.BottomSurface = 0

  rng11.Material = "Neon"

     rng11.Position = torso.Position

        rng11.CFrame = rng11.CFrame * 

        CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

        local rngm11 = Instance.new("SpecialMesh", rng11)

 rngm11.MeshId="http://www.roblox.com/asset/?id=3270017"

        rngm11.Scale = Vector3.new(1, 1.3, 2)

        sound = Instance.new("Sound",char.Torso)

        sound.Pitch = 1

 sound.SoundId="http://www.roblox.com/asset/?id=165970126"

wait()

sound:Play()




        

     

wait(0.1)

          

     coroutine.wrap(function()

        for i = 1, 5, 0.2 do

        rngm.Scale = Vector3.new(2 + i*6, 2 + i*6, 2+i*6)

      rng.Transparency = i/5

       rngm1.Scale = Vector3.new(2 + i*6, 2 + i*6, 2 + i*6)

      rng1.Transparency = i/5

      rngm11.Scale = Vector3.new(2 + i*6, 2 + i*6, 0.5)

      rng11.Transparency = i/5

          wait()

        

 

            end

           

              wait()

 

            rng:Destroy()

        

              rng1:Destroy()

                    rng11:Destroy()

  

 

 

 wait()

end)()

 

 

 

 

end

wait(1)

humanoid.WalkSpeed = 16

humanoid.JumpPower = 50

LerpTo.Body = original

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(0),0,math.rad(0))

LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(math.rad(0),0,math.rad(0))

LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(0),0,0)

LerpTo.LeftLeg = CFrame.new(-0.5,-0.5,0) * CFrame.Angles(rad(0),0,rad(0))

LerpTo.RightLeg = CFrame.new(0.5,-0.5,0) * CFrame.Angles(rad(0),0,rad(0))

wait(1)

laser = true

explode = true

active = false




end

end

end)



















-----------------------------------------------------







m.KeyDown:connect(function(k)

if k == "h" then

if blast == true then

blast = false

active = true

laser = false

explode = false







LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(0,0,math.rad(40))

LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(rad(-10),0,0)

wait(0.2)




ball1 = Instance.new("Part",char)




ball1.Size = Vector3.new(0.1,0.1,0.1)

ball1.BrickColor = BrickColor.new("Really black")

ball1:BreakJoints()

ball1.Transparency = 1

ball1w = Instance.new("Weld",ball1)

ball1w.Part0 = ball1

ball1.Material = "Neon"

ball1w.Part1 = char["Right Arm"]

ball1w.C0 = CFrame.new(0,1.5,0)

ball1m = Instance.new("SpecialMesh",ball1)

ball1m.MeshType = "Sphere"













ball = Instance.new("Part",char)




ball.Size = Vector3.new(0.1,0.1,0.1)

ball.BrickColor = BrickColor.new("Really black")

ball:BreakJoints()

ballw = Instance.new("Weld",ball)

ballw.Part0 = ball

ball.Material = "Neon"

ballw.Part1 = char["Right Arm"]

ballw.C0 = CFrame.new(0,1.5,0)

ballm = Instance.new("SpecialMesh",ball)

ballm.MeshType = "Sphere"

for i = 1,5.5,.2 do wait()

ballm.Scale = Vector3.new(i,i,i)

end

wait(0.5)

LerpTo.Body = original * CFrame.Angles(0,0,rad(-60))

LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(rad(70),0,math.rad(10))

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(85),0,math.rad(0))

LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(0,rad(70),0)

wait(0.1)

LerpTo.Body = original * CFrame.Angles(0,0,rad(-270))

LerpTo.RightArm = CFrame.new(1,0.5,-0.5) * CFrame.Angles(rad(90),0,math.rad(90))

LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(math.rad(0),0,math.rad(-20))

LerpTo.Head = CFrame.new(0,1.5,0) * CFrame.Angles(0,rad(-90),0)

wait()

ballw:Remove()

local ry = Ray.new(

   ball.CFrame.p,                           

    (mouse.Hit.p - ball1.CFrame.p).unit * 500

) 

local ig = game.Players.LocalPlayer.Character

 

local hit,position = Workspace:FindPartOnRay(ry, ig)




if hit then




bp = Instance.new("BodyPosition",ball)

bp.MaxForce = Vector3.new(100,100,100)

bp.Position = position

bp.P  = 400

bp.D = 100

        

else

ball:Remove()

LerpTo.RightArm = CFrame.new(1,0.5,0)

active = false

    laser = true

    blast = true

    explode = true

    LerpTo.LeftArm = CFrame.new(-1,0.5,0)

    LerpTo.Body = original

    LerpTo.Head = CFrame.new(0,1.5,0)

end




wait() 




LerpTo.RightArm = CFrame.new(1,0.5,-0.5) * CFrame.Angles(rad(90),0,math.rad(0))

repeat 




--bp.Position = position

wait() until (ball.Position-position).magnitude < 6

sound = Instance.new("Sound",char.Torso)

        sound.Pitch = 1

 sound.SoundId="http://www.roblox.com/asset/?id=165970126"

wait()

sound:Play()

for i,v in pairs(workspace:children()) do




                    if v:IsA("Model") and v:findFirstChild("Humanoid") then




                        if v:findFirstChild("Head") and v:findFirstChild("Torso") then




                            if (v:findFirstChild("Torso").Position - ball.Position).magnitude < 15 then




if v.Name ~= p.Name then 




                                v.Humanoid:TakeDamage(40)




v.Humanoid.PlatformStand = true
















                            end




                        end




               end




                end

















































end

for i = 5,100,10 do wait()

ballm.Scale = Vector3.new(i,i,i)

ball.Transparency= i/100

end

ball:Remove()




wait(0.5)

LerpTo.RightArm = CFrame.new(1,0.5,0)




    LerpTo.LeftArm = CFrame.new(-1,0.5,0)

    LerpTo.Body = original

    LerpTo.Head = CFrame.new(0,1.5,0)

    active = false

    laser = true

    blast = true

    explode = true

end

end

end)






































































function updateanims()




if active == false then




    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 and not Jumping then




        anglespeed = 1/2






















LerpTo.RightLeg = CFrame.new(0.5,-0.5,0) * CFrame.Angles(-sin(angle)*.1,0,0)




       




         LerpTo.LeftLeg = CFrame.new(-0.5,-0.5,0) * CFrame.Angles(sin(angle)*.1,0,0)




LerpTo.Head = CFrame.new(0,1.5,0)




            LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(sin(angle)*0.3,0,rad(0.1))




       




            LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(sin(angle)*0.3,0,rad(-0.1))




            




       













    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 and not Jumping then




        anglespeed = 3




 




LerpTo.RightLeg = CFrame.new(0.5,-0.65,0) * CFrame.Angles(-sin(angle*1)*0.8,0,0)




       




         LerpTo.LeftLeg = CFrame.new(-0.5,-0.65,0) * CFrame.Angles(sin(angle*1)*0.8,0,0)













LerpTo.Head = CFrame.new(0,1.5,0)













            LerpTo.RightArm = CFrame.new(1,0.5,0) * CFrame.Angles(-sin(angle)*.8,0,rad(3))




       




         LerpTo.LeftArm = CFrame.new(-1,0.5,0) * CFrame.Angles(sin(angle)*.8,0,rad(-3))






















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




LeftLeg = CFrame.new(-0.5,-0.5,0);




RightLeg = CFrame.new(0.5,-0.5,0);







Body = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),0,math.rad(0));




Head = CFrame.new(0,1.5,0);




}




---













RunService = game:service'RunService'




RunService.RenderStepped:connect(function()




updateanims()




hum()
















    RightShoulder.C0 = Lerp.CFrame(RightShoulder.C0,LerpTo.RightArm,as)




    LeftShoulder.C0 = Lerp.CFrame(LeftShoulder.C0,LerpTo.LeftArm,as)




RightHip.C0 = Lerp.CFrame(RightHip.C0,LerpTo.RightLeg,as)




    LeftHip.C0 = Lerp.CFrame(LeftHip.C0,LerpTo.LeftLeg,as)




 Neck.C0 = Lerp.CFrame(Neck.C0,LerpTo.Head,as)




torsoj.C0 = Lerp.CFrame(torsoj.C0,LerpTo.Body,as)
















end) 
















