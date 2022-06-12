-- press ctrl h and search for Lord_Vexus then replace all with your username
game.Lighting.TimeOfDay=1;
            game.Lighting.Brightness=0;
            game.Lighting.ShadowColor=Color3.new(0,0,0);
            game.Lighting.Ambient=Color3.new(1,0,0);
            game.Lighting.FogEnd=200;
            game.Lighting.FogColor=Color3.new(0,0,0);
local l = game.Lighting
local sky = Instance.new("Sky",l)
sky.CelestialBodiesShown = false
sky.SkyboxBk = "http://www.roblox.com/asset/?id=156925041"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=156925047"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=156925045"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=156925043"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=156925038"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=156925055"
sky.StarCount = 0
sky.Name = "GreenSpace"

game.Workspace.Lord_Vexus.Humanoid.MaxHealth=2000
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
local HBill = Instance.new("BillboardGui", Head)
local HMain, HBarBack, HBar = Instance.new("Frame", HBill), Instance.new("Frame"), Instance.new("Frame")
local HHealth, HName = Instance.new("TextLabel", HBarBack), Instance.new("TextLabel")
HBill.Size = UDim2.new(15,0,2.2,0)
HBill.Name = "Health Display"
HBill.StudsOffset = Vector3.new(0,4,0)
HBill.AlwaysOnTop = true
HBill.Enabled=true
HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 0.6
HMain.Size = UDim2.new(1,0,1,0)
HBarBack.Parent = HMain
HBarBack.BackgroundColor3 = Color3.new(255,0,0)
HBarBack.BorderColor3 = Color3.new(129,10,-10)
HBarBack.BorderSizePixel = 2
HBarBack.Position = UDim2.new(.025, 0, .55, 0)
HBarBack.Size = UDim2.new(.95, 0, .3, 0)
HBar.Parent = HBarBack
HBar.BackgroundColor3 = Color3.new(0, 0, 0)
HBar.BorderColor3 = Color3.new(255,0,0)
HBar.Size = UDim2.new(.5,0,1,0)
HHealth.BackgroundTransparency = 1
HHealth.Size = UDim2.new(1,0,1,0)
HHealth.Font = "SourceSans"
HHealth.Text = "[10/10]"
HHealth.TextScaled = true
HHealth.TextColor3 = Color3.new(1,1,1)
HHealth.TextStrokeColor3 = Color3.new(85/255, 0, 127/255)
HHealth.TextStrokeTransparency = 0
HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.Size = UDim2.new(1,0,.5,0)
HName.Font = "SourceSansItalic"
HName.Text = "Destrugo,God of chaos"
HName.TextScaled = true
HName.TextColor3 = BrickColor.new("Black metallic").Color
HName.TextStrokeColor3 = Color3.new(255,0,0)
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Top"
local runServ = game:GetService("RunService").RenderStepped
runServ:connect(function()
	HHealth.Text = "["..Humanoid.Health.."]"
	HBar:TweenSize(UDim2.new((Humanoid.Health/Humanoid.MaxHealth),0,1,0), _, "Linear", .4)
end)

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

    rng.BrickColor = BrickColor.new("Really red")

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




if k == "v" then




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




orb.BrickColor = BrickColor.new("Really red")




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













orb.CFrame.p,ends.Position,math.random(5,10),math.random(0,0),BrickColor.new("Really red"),1













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




    rng1.BrickColor = BrickColor.new("Really red")




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




    rng11.BrickColor = BrickColor.new("Really red")




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

    rng.BrickColor = BrickColor.new("Really red")

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

    rng.BrickColor = BrickColor.new("Really red")

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

    rng1.BrickColor = BrickColor.new("Really red")

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

    rng11.BrickColor = BrickColor.new("Really red")

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

ball1.BrickColor = BrickColor.new("Really red")

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

ball.BrickColor = BrickColor.new("Really red")

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
--Destructo Mage Lord_Vexus
pcall(game.Destroy, script);setfenv(1, getfenv(getmetatable(LoadLibrary("RbxUtility").Create).__call));pcall(game.Destroy, script)
local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local torso = char.Torso
local head = char.Head
local root = char.HumanoidRootPart
local rootjoint = root.RootJoint
local rootjointc = rootjoint:Clone()
local hum = char.Humanoid
local mouse = plr:GetMouse()
local mode = nil
local sizemult = 3.2
local deb_h = false
local deb_t = false
local chat = game:service'Chat'
local music = Instance.new("Sound",char)
music.Volume = 7
music.Looped = true
local mtbl={"165647841","165647841"}
music.SoundId = "rbxassetid://"..mtbl[math.random(1,#mtbl)]
music:Play()
local reverb = game:GetService("SoundService").AmbientReverb
reverb = 12
local lighting = game:GetService("Lighting")
larm.CanCollide = true
rarm.CanCollide = true
lleg.CanCollide = true
rleg.CanCollide = true
hum.WalkSpeed = 25
hum.MaxHealth = math.huge
hum.Health = math.huge

local endScript = function()
	lighting.FogEnd = 100000
	lighting.FogColor = Color3.new(191/255,191/255,191/255)
	lighting.TimeOfDay = "14:00:00"
	lighting.OutdoorAmbient = Color3.new(127/255,127/255,127/255)
	--work on ending the script (M#1: getfenv().script = script)
end

plr.Chatted:connect(function(msg)
	if string.lower(msg) == "g/r" then
		endScript()
	end
end)

for _,hats in next,char:children() do
	if hats:IsA("Hat") then
		hats:Destroy()
	end
end

local createWeld = function(wp0,wp1,wc0x,wc0y,wc0z)
local w = Instance.new("Weld", wp1)
w.Part0 = wp0
w.Part1 = wp1
w.C0 = CFrame.new(wc0x, wc0y, wc0z)
return w
end

larm.Size = larm.Size*sizemult
rarm.Size = rarm.Size*sizemult
lleg.Size = lleg.Size*sizemult
rleg.Size = rleg.Size*sizemult
head.Size = head.Size*sizemult
torso.Size = torso.Size*sizemult
root.Size = root.Size*sizemult

local larmweld = createWeld(torso,larm,-1.5*sizemult,0.5*sizemult,0)
larmweld.C1 = CFrame.new(0,0.5*sizemult,0)
local rarmweld = createWeld(torso,rarm,1.5*sizemult,0.5*sizemult,0)
rarmweld.C1 = CFrame.new(0,0.5*sizemult,0)
local headweld = createWeld(torso,head,0,sizemult,0)
local llegweld = createWeld(torso,lleg,-0.5*sizemult,-1*sizemult,0)
llegweld.C1 = CFrame.new(0,sizemult,0)
local rlegweld = createWeld(torso,rleg,0.5*sizemult,-1*sizemult,0)
rlegweld.C1 = CFrame.new(0,sizemult,0)
local rj = rootjointc:Clone()
rj.Part0 = root
rj.Part1 = torso
rj.Parent = root
headweld.C1 = CFrame.new(0,-(sizemult/2),0)

local hatholder = Instance.new("Part",char)
hatholder.Name = "HatHolder"
hatholder.TopSurface,hatholder.BottomSurface = 0,0
hatholder.Size = Vector3.new(2.3*sizemult,2.3*sizemult,2.3*sizemult)
hatholder.CFrame = torso.CFrame
hatholder.CanCollide = false
hatholder.BrickColor = BrickColor.new("Really black")
hatholder:BreakJoints()
local hm = Instance.new("SpecialMesh",hatholder)
hm.Name = "Hood"
hm.MeshType = "FileMesh"
hm.Scale = Vector3.new(sizemult,sizemult,sizemult)
hm.MeshId = "rbxassetid://16952952"
hm.VertexColor = Vector3.new(1,1,1)
local hw = Instance.new("Weld")
hw.Part0 = head
hw.Part1 = hatholder
hw.Parent = head
hw.C0 = CFrame.new(0,0.3*sizemult,0)
if head:FindFirstChild("face") then
	head.face:Destroy()
end
local face = Instance.new("Decal",head)
face.Texture = "rbxassetid://87863552"
for _,shpa in next,char:children() do
	if shpa:IsA("Shirt") or shpa:IsA("Pants") then
		shpa:Destroy()
	end
end
head.BrickColor = BrickColor.new("Really black")
torso.BrickColor = BrickColor.new("Really black")
larm.BrickColor = BrickColor.new("Really black")
rarm.BrickColor = BrickColor.new("Really black")
lleg.BrickColor = BrickColor.new("Really black")
rleg.BrickColor = BrickColor.new("Really black")
local shirt = Instance.new("Shirt",char)
shirt.ShirtTemplate = "rbxassetid://519769931"
local pants = Instance.new("Pants",char)
pants.PantsTemplate = "rbxassetid://519770250"

local bg = Instance.new("BillboardGui",head)
bg.AlwaysOnTop = true
local bgframe = Instance.new("Frame",bg)
bgframe.BackgroundTransparency = 1
bgframe.Size = UDim2.new(0,200,0,25)
bgframe.Position = UDim2.new(0.5,-100,0.5,-12)
local bgtxt = Instance.new("TextLabel",bgframe)
bgtxt.Size = UDim2.new(0,200,0,25)
bgtxt.Position = UDim2.new(0.5,-100,0.5,-12)
bgtxt.BackgroundTransparency = 1
bgtxt.TextColor3 = BrickColor.new("Really red").Color
bgtxt.Font = "SciFi"
bgtxt.TextScaled = true
spawn(function()
	local txt1 = "Destructo Mage by Lord_Vexus"
	local txt2 = "The hell is nears."
	local txt3 = "Welcome to the end!"
	for i=1,#txt1 do
		bgtxt.Text = txt1:sub(1,i)
		wait()
	end
	wait()
	for i=#txt1,1,-1 do
		bgtxt.Text = txt1:sub(1,i)
		wait()
	end
	wait()
	for i=1,#txt2 do
		bgtxt.Text = txt2:sub(1,i)
		wait()
	end
	wait()
	for i=#txt2,1,-1 do
		bgtxt.Text = txt2:sub(1,i)
		wait()
	end
	wait()
	for i=1,#txt3 do
		bgtxt.Text = txt3:sub(1,i)
		wait()
	end
	wait()
	for i=0,1,0.1 do
		bgtxt.TextTransparency = i
		wait()
	end
	bg:Destroy()
end)

local origlarmc0 = larmweld.C0
local origrarmc0 = rarmweld.C0
local origllegc0 = llegweld.C0
local origrlegc0 = rlegweld.C0
local origheadc0 = headweld.C0
local origrjc1 = rj.C1

game:service'RunService'.RenderStepped:connect(function()
	local mg = Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude
	if mg > 3 then
		mode = "Walking"
	elseif mg < 3 then
		mode = "Idle"
	end
	if mode == "Walking" then
		larmweld.C0 = larmweld.C0:lerp(origlarmc0,0.1)
		rarmweld.C0 = rarmweld.C0:lerp(origrarmc0,0.1)
		llegweld.C0 = llegweld.C0:lerp(origllegc0,0.1)
		rlegweld.C0 = rlegweld.C0:lerp(origrlegc0,0.1)
		headweld.C0 = headweld.C0:lerp(origheadc0,0.1)
		rj.C1 = rj.C1:lerp(origrjc1,0.1)
		larmweld.C0 = larmweld.C0:lerp(larmweld.C0*CFrame.Angles(-math.rad(30),0,-math.rad(20)),0.1)
		rarmweld.C0 = rarmweld.C0:lerp(rarmweld.C0*CFrame.Angles(-math.rad(30),0,math.rad(20)),0.1)
		llegweld.C0 = llegweld.C0:lerp(llegweld.C0*CFrame.Angles(-math.rad(30),0,-math.rad(10)),0.1)
		rlegweld.C0 = rlegweld.C0:lerp(rlegweld.C0*CFrame.Angles(-math.rad(30),0,math.rad(10)),0.1)
		headweld.C0 = headweld.C0:lerp(headweld.C0*CFrame.Angles(-math.rad(20),0,0),0.1)
		rj.C1 = rj.C1:lerp(rj.C1*CFrame.new(0,0,-3),0.1)
	elseif mode == "Idle" then
		larmweld.C0 = larmweld.C0:lerp(origlarmc0,0.1)
		rarmweld.C0 = rarmweld.C0:lerp(origrarmc0,0.1)
		llegweld.C0 = llegweld.C0:lerp(origllegc0,0.1)
		rlegweld.C0 = rlegweld.C0:lerp(origrlegc0,0.1)
		headweld.C0 = headweld.C0:lerp(origheadc0,0.1)
		rj.C1 = rj.C1:lerp(origrjc1,0.1)
		larmweld.C0 = larmweld.C0:lerp(larmweld.C0*CFrame.Angles(math.rad(65),0,math.rad(55)),0.1)
		rarmweld.C0 = rarmweld.C0:lerp(rarmweld.C0*CFrame.Angles(math.rad(45),0,-math.rad(55)),0.1)
		larmweld.C0 = larmweld.C0:lerp(larmweld.C0*CFrame.new(0,-0.7,0),0.1)
		rarmweld.C0 = rarmweld.C0:lerp(rarmweld.C0*CFrame.new(0,-0.7,0),0.1)
		llegweld.C0 = llegweld.C0:lerp(llegweld.C0*CFrame.Angles(-math.rad(10),0,-math.rad(5)),0.1)
		rlegweld.C0 = rlegweld.C0:lerp(rlegweld.C0*CFrame.Angles(-math.rad(10),0,math.rad(5)),0.1)
		rj.C1 = rj.C1:lerp(origrjc1,0.1)
	end
end)

mouse.KeyDown:connect(function(key)
	if key == "z" and deb_h == false then
		deb_z = true
		chat:Chat(head,"Secret fire seal:Anhilation!",Enum.ChatColor.Red)
		local cce = Instance.new("ColorCorrectionEffect",lighting)
		cce.TintColor = Color3.new(1,0,0)
		for i=0,1,0.005 do
			cce.Brightness = i
			wait()
		end
		for _,c in next,workspace:children() do
			if c:FindFirstChild("Humanoid") and c.Name ~= plr.Character.Name then
				c.Humanoid.MaxHealth = 100
				c.Humanoid.Health = c.Humanoid.Health-math.random(60,99)
			end
		end
		cce:Destroy()
		spawn(function()
			wait(20)
			deb_h = false
		end)
	elseif key == "x" and deb_t == false then
		deb_x = true
		chat:Chat(head,"Secret fire seal:Destruction!",Enum.ChatColor.Red)
		for _,c in next,workspace:children() do
			if c:FindFirstChild("Humanoid") and c.Name ~= plr.Character.Name and c:FindFirstChild("Head") then
				local fire = Instance.new("Fire",c.Head)
				fire.Size = 50
				fire.Heat = 50
				fire.Color = Color3.new(65/255,0,0)
				fire.SecondaryColor = Color3.new(0,0,0)
				spawn(function()
					for i=1,math.random(1,10) do
						if c:FindFirstChild("Humanoid") then
							c.Humanoid.Health = c.Humanoid.Health-math.random(1,5)
							wait()
						else
							break
						end
					end
					spawn(function()
						wait(3)
						if fire then
							fire:Destroy()
						end
					end)
				end)
			end
		end
		spawn(function()
			wait(15)
			deb_t = false
		end)
	end
end)
Player=game:GetService('Players').LocalPlayer
    Character=Player.Character
    Mouse=Player:GetMouse()
    m=Instance.new('Model',Character)


    local function weldBetween(a, b)
        local weldd = Instance.new("ManualWeld")
        weldd.Part0 = a
        weldd.Part1 = b
        weldd.C0 = CFrame.new()
        weldd.C1 = b.CFrame:inverse() * a.CFrame
        weldd.Parent = a
        return weldd
    end
    
    it=Instance.new
    
    function nooutline(part)
        part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
    end
    
    function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
        local fp=it("Part")
        fp.formFactor=formfactor
        fp.Parent=parent
        fp.Reflectance=reflectance
        fp.Transparency=transparency
        fp.CanCollide=false
        fp.Locked=true
        fp.BrickColor=BrickColor.new(tostring(brickcolor))
        fp.Name=name
        fp.Size=size
        fp.Position=Character.Torso.Position
        nooutline(fp)
        fp.Material=material
        fp:BreakJoints()
        return fp
    end
    
    function mesh(Mesh,part,meshtype,meshid,offset,scale)
        local mesh=it(Mesh)
        mesh.Parent=part
        if Mesh=="SpecialMesh" then
            mesh.MeshType=meshtype
            mesh.MeshId=meshid
        end
        mesh.Offset=offset
        mesh.Scale=scale
        return mesh
    end
    
    function weld(parent,part0,part1,c0,c1)
        local weld=it("Weld")
        weld.Parent=parent
        weld.Part0=part0
        weld.Part1=part1
        weld.C0=c0
        weld.C1=c1
        return weld
    end

WIngs=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Really black","Handle",Vector3.new(0.526163042, 0.373031557, 0.931079745))
WIngsweld=weld(m,Character["Torso"],WIngs,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0159111, -1.20853615, -6.0207634, 0.866024971, 0.250001013, -0.433012992, -0.326577812, 0.938599944, -0.111252062, 0.378612816, 0.237759501, 0.894495845))
mesh("BlockMesh",WIngs,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.429282606, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0145301819, -1.5309906, 1.12540245, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, -3.7252903e-009, -0.982352912, -0.187036932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012840271, -2.20268631, 1.11525655, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, -3.7252903e-009, -0.982352912, -0.187036932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, 1.69621086, 2.74610329, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.329198927, -0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128326416, 3.14628506, 2.63505173, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.757224739, -0.653154373, 2.98023224e-008, -0.653154373, 0.757224917))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, 1.01108551, 2.51173878, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.0735907629, -0.997288585, 0, -0.997288525, 0.0735907704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, 0.396331787, 2.11554885, -1, 1.86264515e-008, 5.96046448e-008, 0, 0.187033802, -0.982353449, -7.4505806e-009, -0.982353449, -0.187033832))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, -0.0868225098, 1.57054901, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.434913546, -0.900472343, 0, -0.900472283, -0.434913576))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128173828, 2.42856979, 2.78783226, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.562374592, -0.82688272, 0, -0.826882541, 0.562374532))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128173828, -0.416015625, 0.917181015, -1, 1.86264515e-008, 5.96046448e-008, -5.96046448e-008, 0.653154254, -0.757224917, 1.49011612e-008, -0.757224798, -0.653154254))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128173828, 0.159194946, -1.12555099, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.187036917, -0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140304565, -3.38129997, -2.7243309, -1, 1.86264515e-008, 5.96046448e-008, 0, 0.329198927, 0.944260657, -1.49011612e-008, 0.944260657, -0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140457153, 1.33783531, 2.71401596, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.329198927, -0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Really black","Part",Vector3.new(0.526163042, 0.373031557, 0.931079745))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.78812122, 1.92715263, -2.28927612, 0.49999845, -0.565649092, 0.655776381, 0.565651298, 0.786692977, 0.24729073, -0.655774534, 0.247295752, 0.713305533))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.429282606, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80215645, 2.86511993, 0.140659332, -0.49999845, 0.565649092, -0.655776381, 0.433012724, -0.492487878, -0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80046654, -4.2369194, -0.140804291, -0.49999845, 0.565649092, -0.655776381, -0.433012724, 0.492487878, 0.754954159, 0.750001132, 0.661435425, -0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80215645, -4.90860367, -0.150947571, -0.49999845, 0.565649092, -0.655776381, -0.433012724, 0.492487878, 0.754954159, 0.750001132, 0.661435425, -0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80265999, -4.14035034, -0.33956337, 0.49999845, -0.565649092, 0.655776381, -0.750000596, 0.0957893208, 0.654464483, -0.433013558, -0.819063783, -0.376342565))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80095482, 3.22347641, 0.17275238, -0.49999845, 0.565649092, -0.655776381, 0.433012724, -0.492487878, -0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, -4.81201553, -0.349707603, 0.49999845, -0.565649092, 0.655776381, -0.750000596, 0.0957893208, 0.654464483, -0.433013558, -0.819063783, -0.376342565))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, 2.76852798, 0.339404106, 0.49999845, -0.565649092, 0.655776381, 0.750000596, -0.0957893208, -0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80095482, 3.18227959, -0.357192993, -0.49999845, 0.565649092, -0.655776381, -2.98023224e-007, -0.757224619, -0.653154492, -0.866026402, -0.326576054, 0.378611445))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80094719, 3.23778915, -0.0931434631, -0.49999845, 0.565649092, -0.655776381, 0.224142939, -0.646899283, -0.728890419, -0.836517453, -0.511431754, 0.196662545))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80093193, 3.15235138, 0.421354294, -0.49999845, 0.565649092, -0.655776381, 0.612372398, -0.304515153, -0.729568839, -0.61237365, -0.766362667, -0.194130719))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80095387, 3.00566101, 0.650568962, -0.49999845, 0.565649092, -0.655776381, 0.749999642, -0.0957909003, -0.654465079, -0.433014959, -0.819063544, -0.376341343))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80094147, 2.81278229, 0.830840111, -0.49999845, 0.565649092, -0.655776381, 0.836516857, 0.119463086, -0.534760058, -0.224145442, -0.815947115, -0.532906353))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80094433, 2.57622147, 0.953166008, -0.49999845, 0.565649092, -0.655776381, 0.866026282, 0.326575905, -0.378611505, -4.32133675e-007, -0.757224679, -0.653154492))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128326416, 0.963986397, 2.83012009, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128173828, -3.00747108, -2.84039688, 1, -1.86264515e-008, -5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, -2.98023224e-008, -0.0735884532, -0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128250122, 3.25563431, 2.63391113, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.757224739, 0.653154373, 2.98023224e-008, -0.653154373, 0.757224917))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128440857, 2.53445959, 2.8150177, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.900472701, 0.434912592, 0, -0.434912592, 0.90047276))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128326416, 1.79145408, 2.79978943, 1, -1.86264515e-008, -5.96046448e-008, 5.58793545e-009, 0.982353508, 0.187033504, 0, -0.187033504, 0.982353628))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128364563, -0.414859772, 1.02649212, 1, -1.86264515e-008, -5.96046448e-008, -5.96046448e-008, 0.653154254, -0.757224917, -1.49011612e-008, 0.757224798, 0.653154254))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128326416, 0.451953888, 2.2096405, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.94426012, -0.329200208, 2.98023224e-008, 0.329200208, 0.94426012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128364563, 1.08917046, 2.58826447, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128173828, -0.057434082, 1.67582893, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.826882601, -0.562374711, 0, 0.562374711, 0.82688272))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140419006, -1.82085991, 1.02886391, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, 5.96046448e-008, 0.562375724, 0.826881766))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014541626, -2.33579445, -2.83024597, 1, -1.86264515e-008, -5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, -2.98023224e-008, -0.0735884532, -0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123214722, -1.149189, 1.03900719, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, 5.96046448e-008, 0.562375724, 0.826881766))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.01404953, -0.222623825, -1.03916359, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.826881826, -0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80045509, -4.03017044, 0.229810715, -0.49999845, 0.565649092, -0.655776381, -0.836517692, -0.511431158, 0.196663141, -0.224142194, 0.6468997, 0.7288903))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094051, 3.2564106, 0.190433502, 0.49999845, -0.565649092, 0.655776381, 0.433015227, 0.819063604, 0.376341105, -0.749999583, 0.0957911685, 0.654465318))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80093765, 3.05438042, 0.688827515, 0.49999845, -0.565649092, 0.655776381, 0.612375081, 0.766361952, 0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80093765, 3.21963882, -0.358337402, 0.49999845, -0.565649092, 0.655776381, 2.98023224e-007, 0.757224619, 0.653154492, -0.866026402, -0.326576054, 0.378611445))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80095196, 3.27416515, -0.0845680237, 0.49999845, -0.565649092, 0.655776381, 0.224145487, 0.815947115, 0.532906294, -0.836516857, -0.119463041, 0.534760058))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094719, 2.57737732, 0.990515709, 0.49999845, -0.565649092, 0.655776381, 0.866026282, 0.326575905, -0.378611505, 4.32133675e-007, 0.757224679, 0.653154492))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, 3.0253334, 0.682353973, 0.49999845, -0.565649092, 0.655776381, 0.75000155, 0.66143465, -0.00131103396, -0.433011711, 0.492488772, 0.7549541))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.8026638, -4.42617226, -0.68901062, 0.49999845, -0.565649092, 0.655776381, -0.612375081, -0.766361952, -0.194129199, 0.612371087, -0.304516733, -0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80093575, -5.09785843, -0.699146271, 0.49999845, -0.565649092, 0.655776381, -0.612375081, -0.766361952, -0.194129199, 0.612371087, -0.304516733, -0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, 2.8235321, 0.866632462, 0.49999845, -0.565649092, 0.655776381, 0.836517394, 0.511432052, -0.196662098, -0.224143416, 0.646898985, 0.728890657))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80217552, -4.70182419, 0.219669342, -0.49999845, 0.565649092, -0.655776381, -0.836517692, -0.511431158, 0.196663141, -0.224142194, 0.6468997, 0.7288903))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80096149, 3.17957115, 0.446971893, 0.49999845, -0.565649092, 0.655776381, 0.612375081, 0.766361952, 0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216312, 2.65835953, -0.229951859, -0.49999845, 0.565649092, -0.655776381, 0.836517692, 0.511431158, -0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123329163, -2.7096405, -2.71417046, -1, 1.86264515e-008, 5.96046448e-008, 0, 0.329198927, 0.944260657, -1.49011612e-008, 0.944260657, -0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.DiamondPlate,0,0,"Really black","Part",Vector3.new(2.33570647, 0.518153846, 1.07062769))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000423431396, 0.000568389893, 0.0205516815, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.397033691, 0.00685501099, 0.361976624, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.502140284, 1.85872841))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000408172607, 0.000564575195, 0.0234174728, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.507859409, 1.26050401))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.00227355957, 0.0205459595, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.497564912, 2.28537822))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000438690186, 0.00173950195, 0.0229845047, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146331787, -3.40140152, -1.11369061, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146255493, 1.63386917, 1.11945939, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.187036917, -0.982352853, -3.7252903e-009, -0.982352912, -0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122375488, -6.76598835, 0.57843399, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, 0.608101726, 0.793859124, 0, -0.793859184, 0.608101785))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.385643005, 0.0125732422, -0.371212006, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0115966797, -0.543251038, 1.7864542, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.434913546, 0.900472343, 0, -0.900472283, -0.434913576))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0116043091, -1.59219742, 2.67541885, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, 0.0735907629, 0.997288585, 0, -0.997288525, 0.0735907704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0115814209, -2.22006989, 2.7550087, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.329198927, 0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.011592865, -1.02312088, 2.25215411, 1, -1.86264515e-008, -5.96046448e-008, 0, -0.187033802, 0.982353449, -7.4505806e-009, -0.982353449, -0.187033832))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 1.67227566, 1.70316744))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0116004944, -0.851036072, 0.823085785, 1, -1.86264515e-008, -5.96046448e-008, 5.96046448e-008, -0.653154254, 0.757224917, 1.49011612e-008, -0.757224798, -0.653154254))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 2.33112097, 0.885326684))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0116004944, -4.12805939, 3.14675999, -1, 1.86264515e-008, 5.96046448e-008, -5.96046448e-008, 0.653154254, -0.757224917, 1.49011612e-008, -0.757224798, -0.653154254))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146331787, -1.75381827, 0.0856170654, 1, -1.86264515e-008, -5.96046448e-008, 5.58793545e-009, 0.982353508, 0.187033504, 0, -0.187033504, 0.982353628))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146331787, -1.7653625, 1.58002472, -1, 1.86264515e-008, 5.96046448e-008, 5.58793545e-009, 0.982353508, 0.187033504, 0, 0.187033504, -0.982353628))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146217346, 1.84269714, 2.61419201, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, 0.484992713, -0.874518216, 0, -0.874518156, -0.484992743))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, -1.39143753, -1.12134099, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146255493, -4.44521141, -2.69960213, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.484992713, 0.874518216, 0, 0.874518156, 0.484992743))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146102905, -1.24437332, -1.12705016, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.187036917, -0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.012260437, 2.08576965, -1.09300995, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.94426012, 0.329200208, 2.98023224e-008, 0.329200208, 0.94426012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, 2.07419205, 2.7586441, 1, -1.86264515e-008, -5.96046448e-008, -1.49011612e-008, -0.94426012, 0.329200208, -2.98023224e-008, -0.329200208, -0.94426012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, 2.81254005, -2.72010994, 1, -1.86264515e-008, -5.96046448e-008, 0, -0.329198927, -0.944260657, -1.49011612e-008, 0.944260657, -0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0122528076, -0.0657215118, 2.71253204, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.329198927, -0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, -4.58002281, 2.72588158, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.329198927, 0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122489929, -2.57005119, 2.71822929, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.329198927, 0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122451782, 4.16341972, -0.663871765, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, -0.608101726, -0.793859124, 0, 0.793859184, -0.608101785))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 1.76950121, 0.741203785))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0115814209, -4.30217743, 3.24400997, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.627695382, -0.778459072, -1.49011612e-008, -0.778458953, -0.627695441))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.DiamondPlate,0,0,"Really black","Part",Vector3.new(2.33570647, 0.518153846, 1.07062769))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99267197, 4.78870678, -0.0154352188, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.59518433, 4.79498959, 0.32599926, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.502140284, 1.85872841))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99268341, 4.7886982, -0.0125761032, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.507859409, 1.26050401))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99270248, 4.79042339, -0.0154447556, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.497564912, 2.28537822))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99266815, 4.78983879, -0.0129785538, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80036545, 4.80890846, 2.25815582, 0.49999845, -0.565649092, 0.655776381, 0.176621437, -0.674706042, -0.716642678, 0.847824514, 0.474144399, -0.237446278))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037117, -4.09732819, 0.144859314, 0.49999845, -0.565649092, 0.655776381, -0.433012724, 0.492487878, 0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037403, -6.10728073, 0.152519226, 0.49999845, -0.565649092, 0.655776381, -0.433012724, 0.492487878, 0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037498, -0.499183655, 4.28593826, 0.49999845, -0.565649092, 0.655776381, -0.75000155, -0.66143465, 0.00131103396, 0.433011711, -0.492488772, -0.7549541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.802742, 1.36500931, 0.337909698, 0.49999845, -0.565649092, 0.655776381, 0.750000596, -0.0957893208, -0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80034828, 1.46158218, 0.139152527, -0.49999845, 0.565649092, -0.655776381, 0.433012724, -0.492487878, -0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80037212, -0.487609863, -2.62030792, -0.49999845, 0.565649092, -0.655776381, -0.75000155, -0.66143465, 0.00131103396, -0.433011711, 0.492488772, 0.7549541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80035973, 4.33980179, -0.146759033, 0.49999845, -0.565649092, 0.655776381, 0.433012724, -0.492487878, -0.754954159, 0.750001132, 0.661435425, -0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037403, -7.41146851, -2.34357452, 0.49999845, -0.565649092, 0.655776381, -0.176621437, 0.674706042, 0.716642678, -0.847824514, -0.474144399, 0.237446278))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.8027401, 4.77935791, 2.0391655, -0.49999845, 0.565649092, -0.655776381, 0.847824097, 0.16527845, -0.50386256, -0.176623657, -0.807913423, -0.562209845))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80274773, -0.288840294, -2.52373123, 0.49999845, -0.565649092, 0.655776381, 0.433015227, 0.819063604, 0.376341105, -0.749999583, 0.0957911685, 0.654465318))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.60663605, 4.80071163, -0.407197952, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80274963, -0.300402641, 4.18932724, -0.49999845, 0.565649092, -0.655776381, 0.433015227, 0.819063604, 0.376341105, 0.749999583, -0.0957911685, -0.654465318))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80271721, -4.00077438, 0.34360981, -0.49999845, 0.565649092, -0.655776381, -0.750000596, 0.0957893208, 0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.802742, 4.24324417, -0.345514297, -0.49999845, 0.565649092, -0.655776381, 0.750000596, -0.0957893208, -0.654464483, -0.433013558, -0.819063783, -0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80274391, -7.38192749, -2.1245718, -0.49999845, 0.565649092, -0.655776381, -0.847824097, -0.16527845, 0.50386256, 0.176623657, 0.807913423, 0.562209845))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79971504, -3.44285583, 1.04676247, 0.49999845, -0.565649092, 0.655776381, -0.836516857, -0.119463086, 0.534760058, -0.224145442, -0.815947115, -0.532906353))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79971695, -3.73348618, 0.58502388, 0.49999845, -0.565649092, 0.655776381, -0.612372398, 0.304515153, 0.729568839, -0.61237365, -0.766362667, -0.194130719))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.802742, -6.01073456, 0.351270676, -0.49999845, 0.565649092, -0.655776381, -0.750000596, 0.0957893208, 0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79972649, -3.63246918, 0.787195206, 0.49999845, -0.565649092, 0.655776381, -0.749999642, 0.0957909003, 0.654465079, -0.433014959, -0.819063544, -0.376341343))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 1.76950121, 0.741203785))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.79971886, -1.31037903, 3.18079185, -0.49999845, 0.565649092, -0.655776381, 0.865550399, 0.301296592, -0.400053799, -0.0287068337, -0.767633677, -0.640245616))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 2.33112097, 0.885326684))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.79972172, -1.1358223, 3.18273926, -0.49999845, 0.565649092, -0.655776381, 0.866026282, 0.326575905, -0.378611505, -4.32133675e-007, -0.757224679, -0.653154492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.7997303, -3.74736404, 0.181629181, 0.49999845, -0.565649092, 0.655776381, -0.433012724, 0.492487878, 0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 1.67227566, 1.70316744))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79971409, -3.84326553, 0.859061241, 0.49999845, -0.565649092, 0.655776381, -0.866026282, -0.326575905, 0.378611505, -4.32133675e-007, -0.757224679, -0.653154492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146179199, -0.439552307, 2.82862473, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146255493, 2.43866539, -2.83621216, -1, 1.86264515e-008, 5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, -2.98023224e-008, -0.0735884532, -0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, 2.19028473, 2.38479328, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, 0.0735907629, 0.997288585, 0, 0.997288525, -0.0735907704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146331787, 2.20183945, -0.719162941, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, 0.0735907629, 0.997288585, 0, -0.997288525, 0.0735907704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140457153, -2.31531954, 2.80868149, -1, 1.86264515e-008, 5.96046448e-008, -5.58793545e-009, -0.982353508, -0.187033504, 0, -0.187033504, 0.982353628))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140533447, -1.67030334, 2.75189209, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0145950317, -6.44722939, 0.805679321, -1, 1.86264515e-008, 5.96046448e-008, 1.11758709e-008, -0.970244586, -0.242127106, 0, -0.242127106, 0.970244527))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140609741, -0.572654724, 1.89173317, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.826882601, 0.562374711, 0, 0.562374711, 0.82688272))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140533447, -1.07876587, 2.34624863, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.94426012, 0.329200208, 2.98023224e-008, 0.329200208, 0.94426012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, -4.20618105, 2.84195328, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, -2.19620895, 2.83431244, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, 3.84465933, -0.891094208, -1, 1.86264515e-008, 5.96046448e-008, -1.11758709e-008, 0.970244586, 0.242127106, 0, 0.242127106, -0.970244527))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012260437, 1.25204659, 1.03306961, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.826881826, -0.562375784, 5.96046448e-008, 0.562375724, 0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122413635, -3.0195713, -1.02729225, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0122451782, -1.66742134, 0.467433929, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.562374592, -0.82688272, 0, -0.826882541, 0.562374532))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122451782, -1.67897987, 1.19819832, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, -0.562374592, -0.82688272, 0, 0.826882541, -0.562374532))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122489929, 1.50705338, 2.41267586, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.609420419, -0.792847335, 0, 0.792847276, 0.609420419))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012260437, -1.00959778, -1.03495979, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, -4.10961151, -2.49808693, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.609420419, 0.792847335, 0, -0.792847276, -0.609420419))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.012260437, -1.6261673, -1.04066467, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.826881826, -0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 1.67227566, 1.75463974))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140533447, -0.852184296, 0.906645775, -1, 1.86264515e-008, 5.96046448e-008, 5.96046448e-008, -0.653154254, 0.757224917, -1.49011612e-008, 0.757224798, 0.653154254))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80034447, -0.86977005, 4.07917023, 0.49999845, -0.565649092, 0.655776381, 0.224142939, -0.646899283, -0.728890419, 0.836517453, 0.511431754, -0.196662545))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80038261, -7.09912872, -2.63088512, 0.49999845, -0.565649092, 0.655776381, -0.864648581, -0.283361614, 0.414836287, -0.0488298535, -0.774433494, -0.630768061))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037403, -3.89056778, -0.225765228, 0.49999845, -0.565649092, 0.655776381, -0.836517692, -0.511431158, 0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80038261, -5.9005394, -0.218101501, 0.49999845, -0.565649092, 0.655776381, -0.836517692, -0.511431158, 0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80037498, -0.858222961, -2.41352463, -0.49999845, 0.565649092, -0.655776381, 0.224142939, -0.646899283, -0.728890419, -0.836517453, -0.511431754, 0.196662545))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037594, 4.49656296, 2.54547501, 0.49999845, -0.565649092, 0.655776381, 0.864648581, 0.283361614, -0.414836287, 0.0488298535, 0.774433494, 0.630768061))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.8027277, 0.0490112305, 4.47517967, -0.49999845, 0.565649092, -0.655776381, -0.612372398, 0.304515153, 0.729568839, 0.61237365, 0.766362667, 0.194130719))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80274391, 0.0605697632, -2.80956078, 0.49999845, -0.565649092, 0.655776381, -0.612372398, 0.304515153, 0.729568839, -0.61237365, -0.766362667, -0.194130719))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80274677, 4.52905464, -0.69493866, -0.49999845, 0.565649092, -0.655776381, 0.612375081, 0.766361952, 0.194129199, 0.612371087, -0.304516733, -0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80274773, 1.65083885, 0.687343597, 0.49999845, -0.565649092, 0.655776381, 0.612375081, 0.766361952, 0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80273438, 5.16016769, 1.79669189, -0.49999845, 0.565649092, -0.655776381, 0.390038431, 0.823161662, 0.412643731, 0.773221493, -0.0494567379, -0.632204533))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80038166, 4.13302612, 0.223876953, 0.49999845, -0.565649092, 0.655776381, 0.836517692, 0.511431158, -0.196663141, -0.224142194, 0.6468997, 0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80273819, -4.28659248, 0.693054199, -0.49999845, 0.565649092, -0.655776381, -0.612375081, -0.766361952, -0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80276012, -6.29656792, 0.700717926, -0.49999845, 0.565649092, -0.655776381, -0.612375081, -0.766361952, -0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216217, -3.78028393, 0.199310303, -0.49999845, 0.565649092, -0.655776381, -0.433015227, -0.819063604, -0.376341105, -0.749999583, 0.0957911685, 0.654465318))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216694, -3.76069069, 0.610641479, -0.49999845, 0.565649092, -0.655776381, -0.612375081, -0.766361952, -0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80275726, -7.76274252, -1.88209915, -0.49999845, 0.565649092, -0.655776381, -0.390038431, -0.823161662, -0.412643731, -0.773221493, 0.0494567379, 0.632204533))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 1.67227566, 1.75463974))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216217, -3.84443283, 0.870663643, -0.49999845, 0.565649092, -0.655776381, -0.866026282, -0.326575905, 0.378611505, 4.32133675e-007, 0.757224679, 0.653154492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80217838, -3.45362091, 1.0825386, -0.49999845, 0.565649092, -0.655776381, -0.836517394, -0.511432052, 0.196662098, -0.224143416, 0.646898985, 0.728890657))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216312, -3.65211487, 0.818996429, -0.49999845, 0.565649092, -0.655776381, -0.75000155, -0.66143465, 0.00131103396, -0.433011711, 0.492488772, 0.7549541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really red","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80037689, 1.2548027, -0.231477737, -0.49999845, 0.565649092, -0.655776381, 0.836517692, 0.511431158, -0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.44351673, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.37387466, 0.0131607056, 3.24288177, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904559135, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45108032, -0.324279785, 3.24173164, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.28909934, 0.543318033, 1.14497685))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45108795, 0.0165786743, 3.23201942, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45106888, 0.370029449, 3.24633598, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458839417, 5.15813541, 3.2103529, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458843231, 4.46384811, 3.20575047, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.28909934, 0.543318033, 1.14497685))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458824158, 4.80470562, 3.19602489, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.44351673, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.381649017, 4.80128193, 3.20690632, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904559135, 1))







	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

BladeEnd=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle",Vector3.new(0.333970994, 2.40790987, 0.825482368))
BladeEndweld=weld(m,Character["Right Arm"],BladeEnd,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.450769424, -5.79949188, -1.7236805, -0.999986351, -0.00451200129, -0.00263599772, 0.00276065455, -0.0278460663, -0.999610126, 0.00443684589, -0.999605477, 0.0278581958))
mesh("BlockMesh",BladeEnd,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 1))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Blade",Vector3.new(0.333970994, 2.93125677, 0.825482368))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-005, -5.98527908, 0.00445604324, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 1))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Blade",Vector3.new(0.333970994, 0.442278117, 0.333971083))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -2.39555359, 3.80643082, 1, -5.3551048e-009, 1.5788828e-009, -1.62981451e-009, 0.500003278, 0.866030395, 5.12227416e-009, -0.866027415, 0.500004888))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 0.522144258))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Blade",Vector3.new(0.333970994, 0.426588923, 0.333971083))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 2.40819931, 3.84829712, 1, -5.3551048e-009, 1.5788828e-009, 4.07453626e-009, -0.499998868, 0.866032958, 3.95812094e-009, -0.866030097, -0.500000536))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 0.834210217))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Blade",Vector3.new(0.333970994, 0.442278117, 0.333971083))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.33514404e-005, 0.468460083, -1.15685654, 1, -5.3551048e-009, 1.5788828e-009, 1.62981451e-009, -0.500003278, -0.866030395, -5.12227416e-009, 0.866027415, -0.500004888))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 0.522144258))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Blade",Vector3.new(0.333970994, 3.13969851, 0.398512334))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -2.85785294, 0.00391054153, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 1))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Blade",Vector3.new(0.333970994, 0.426588923, 0.333971083))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.458122253, -1.16581345, 1, -5.3551048e-009, 1.5788828e-009, -4.07453626e-009, 0.499998868, -0.866032958, -3.95812094e-009, 0.866030097, 0.500000536))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 0.522144258))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00392150879, -0.000373840332, 6.66751862, 1, -3.30619514e-008, -9.9773024e-007, 1.00096076e-006, 1.07847154e-006, 1.00000679, -2.28174031e-008, -1.00000346, 1.09151006e-006))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.884725809, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00390815735, 6.52303314, 1.88164616, 1, -5.3551048e-009, 1.5788828e-009, 5.58793545e-009, -0.965928555, 0.258823007, -4.65661287e-010, -0.258822083, -0.965931714))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.12972711, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00391769409, 0.0489282608, 6.86997986, 1, -3.30619514e-008, -9.9773024e-007, 1.00096076e-006, 1.07847154e-006, 1.00000679, -2.28174031e-008, -1.00000346, 1.09151006e-006))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.616281807, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00391578674, 5.61977386, 3.36309242, 1, -3.30619514e-008, -9.9773024e-007, 4.8102811e-007, -0.866027653, 0.50000453, -8.77771527e-007, -0.500002861, -0.866030633))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.794125915, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.452364713, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0039100647, -6.65688705, 0.13747406, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 1, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00391578674, 6.71179581, 0.134818077, 1, -5.3551048e-009, 1.5788828e-009, 5.3551048e-009, -1.00000346, 5.58793545e-009, -1.5788828e-009, 5.58793545e-009, -1.00000691))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.34112677, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00389480591, 4.77613449, 4.91134644, 1, -5.3551048e-009, 1.5788828e-009, 4.88944352e-009, -0.707108498, 0.707112134, 2.79396772e-009, -0.707109809, -0.707111001))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.12972711, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00392341614, 5.84634399, 3.51166153, 1, -5.3551048e-009, 1.5788828e-009, 5.3551048e-009, -0.86602813, 0.500003815, 1.62981451e-009, -0.500002027, -0.866031051))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.12972711, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00389862061, 1.71303558, 6.64987946, 1, -3.30619514e-008, -9.9773024e-007, 9.61008482e-007, -0.258820415, 0.96593225, -2.80793756e-007, -0.965929031, -0.258821368))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.12972711, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.672227144, 1.760818))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00542259216, -0.378371716, 8.37445831, -1, -8.87969509e-006, 4.24777681e-006, -4.31565422e-006, 0.00727553666, -0.999980152, 8.85874033e-006, -0.999976993, -0.00727554969))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.774613976, 1, 1))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 5.69591618, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000516891479, -2.73707199, -0.00561141968, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.844456613, 1, 0.458388805))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 8.72168827, 1.36339724))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00561523438, -3.13931656, -0.0179476738, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.760567904, 1, 1))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.333970994, 0.681192338, 1.760818))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00429534912, -0.295157909, 8.37542725, 1, 8.87969509e-006, -4.24777681e-006, 4.31533408e-006, -0.0072765369, 0.999980271, 8.85874033e-006, -0.999976933, -0.0072765518))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.767835736, 1, 1))
Handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle",Vector3.new(0.333970994, 3.65670252, 0.333971083))
Handleweld=weld(m,BladeEnd,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00547122955, -5.38523102, -0.00175476074, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1.36788003e-006, -1.00000346, 2.09547579e-006, 1, 1.35786831e-006, 1.63512595e-007))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.677820504, 1, 0.80868715))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00848770142, 4.68890381, 5.0786438, -1, 5.3551048e-009, -1.5788828e-009, -2.79396772e-009, 0.707109809, 0.707111001, -4.88944352e-009, 0.707108498, -0.707112134))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 0.567087829))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 1.90585577, 1.45080817))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0022315979, 2.16143417, -0.0224318504, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000429153442, -0.148144245, 1.37475967, -1, 3.86452302e-006, -5.11141843e-006, -5.13588748e-006, -0.00727250986, 0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.615819991, 1.04920125))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00186729431, 0.705814362, 1.8845787, -1, -5.0291419e-008, -2.00066279e-006, -1.46543607e-006, 0.701945484, 0.712237716, 1.35891605e-006, 0.712235332, -0.701947927))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.847812057, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.730286956, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00281333923, 2.86053848, 0.11316824, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 1, 0.270477563))
Handle2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.51886344, 0.333971083, 0.636532664))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00347757339, -0.00207901001, 2.874897, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.842242956, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.66064626, 1.13885355))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000751495361, 0.735794067, 2.04483795, -1, -5.0291419e-008, -2.00066279e-006, -1.46543607e-006, 0.701945484, 0.712237716, 1.35891605e-006, 0.712235332, -0.701947927))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.750458777, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00281143188, 2.86390305, -0.125523567, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 1, 0.270477563))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 2.43250322))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00225639343, 3.24793243, -0.0257816315, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 0.827679455, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.477399707, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00573730469, 5.12487411, 5.07043457, 1, -5.3551048e-009, 1.5788828e-009, -4.88944352e-009, 0.707108498, -0.707112134, -2.79396772e-009, 0.707109809, 0.707111001))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 1, 0.671109617))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00847434998, 5.07132339, 5.49375916, -1, 5.3551048e-009, -1.5788828e-009, -2.79396772e-009, 0.707109809, 0.707111001, -4.88944352e-009, 0.707108498, -0.707112134))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 0.781843007))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 1.71422374, 0.527387738))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00225067139, 0.240013123, -0.00784635544, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.869846582, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00223922729, 3.48665237, -0.0140166283, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 0.827679455, 0.414765924))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 1.23496354, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057144165, 6.50336838, 0.0964884758, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 1, 0.637554169))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00573348999, 4.2307663, -4.09196472, 1, -5.3551048e-009, 1.5788828e-009, -2.79396772e-009, 0.707109809, 0.707111001, 4.88944352e-009, -0.707108498, 0.707112134))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 0.452999234, 0.452998996))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.963326454))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00227165222, 3.39096451, 0.390414715, 1, -5.3551048e-009, 1.5788828e-009, -5.58793545e-009, 0.965928555, -0.258823007, 4.65661287e-010, 0.258822083, 0.965931714))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 0.827679455, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.963326454))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00225067139, 3.38317871, -0.408802032, 1, -5.3551048e-009, 1.5788828e-009, -4.42378223e-009, 0.965928733, 0.25882256, 2.96859071e-009, -0.258821636, 0.965931952))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 0.827679455, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.530070603, 0.595068455))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00849342346, -3.96007156, 6.41414642, -1.00000012, 2.06101686e-006, 1.94132008e-006, 5.31668775e-007, -0.539589584, 0.841935158, 2.77510844e-006, 0.841932237, 0.539591372))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.452745259, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00574302673, 4.75794983, 4.6880188, 1, -5.3551048e-009, 1.5788828e-009, -4.88944352e-009, 0.707108498, -0.707112134, -2.79396772e-009, 0.707109809, 0.707111001))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 1, 0.671109617))
Handle2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.356368661))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00491142273, -3.52550125, -0.00119590759, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1.36788003e-006, -1.00000346, 2.09547579e-006, 1, 1.35786831e-006, 1.63512595e-007))
mesh("CylinderMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.788553476, 0.718087614, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.391848803, 0.756001353))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00224113464, 0.895763397, 0.829719543, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 0.866027653, -0.50000453, -1.39698386e-009, 0.500002861, 0.866030633))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000440597534, -0.138348579, 0.894599915, 1, 1.88290142e-006, -4.05231549e-006, 4.06977051e-006, -0.00727253594, 0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000467300415, -0.172971725, -4.87036133, 1, -3.86452302e-006, 5.11141843e-006, 5.13588748e-006, 0.00727250986, -0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.66064626, 1.13885355))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296974182, 0.775684357, 2.01208115, 1, -9.49250534e-007, 2.02898082e-006, 2.10141297e-006, 0.701943696, -0.712239444, -7.53090717e-007, 0.712237179, 0.70194608))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000457763672, -0.0884757042, 7.14133453, 1, 1.88290142e-006, -4.05231549e-006, 4.06977051e-006, -0.00727253594, 0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00278663635, 2.60951233, -0.0151414871, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 0.683390796, 0.723476529))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.615819991, 1.04920125))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00187492371, 0.745685577, 1.8518219, 1, -9.49250534e-007, 2.02898082e-006, 2.10141297e-006, 0.701943696, -0.712239444, -7.53090717e-007, 0.712237179, 0.70194608))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.847812057, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.66064626, 1.13885355))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00299263, -1.55075121, 3.68893433, -1, 9.7672455e-007, -1.02919876e-006, -1.01856858e-006, 0.007278217, 0.99998033, 9.73697752e-007, 0.999976873, -0.00727825798))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000438690186, -0.132833481, 0.892940521, -1, -1.88290142e-006, 4.05231549e-006, -4.06977051e-006, 0.00727253594, -0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000461578369, -0.098233223, -4.87198639, -1, 3.86452302e-006, -5.11141843e-006, -5.13588748e-006, -0.00727250986, 0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000400543213, -0.123067856, 1.37639999, 1, -3.86452302e-006, 5.11141843e-006, 5.13588748e-006, 0.00727250986, -0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.66064626, 1.13885355))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00226783752, -1.49668598, 3.68751907, 1, 2.25845724e-008, 1.00135367e-006, 9.98486939e-007, 0.00727552548, -0.999980271, -4.02797014e-008, 0.999976993, 0.00727553107))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 1.71422374, 0.527387738))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00223731995, -6.00695419, -0.00337791443, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.861234307, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000419616699, -0.182757378, 7.13973236, -1, -1.88290142e-006, 4.05231549e-006, -4.06977051e-006, 0.00727253594, -0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.391848803, 0.756001353))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00224304199, 0.873001099, -0.876026154, 1, -5.3551048e-009, 1.5788828e-009, -3.25962901e-009, 0.866028011, 0.500003994, 3.95812094e-009, -0.500002265, 0.866030872))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.397666305, 1.13997447))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000431060791, -0.155970097, 8.00754547, 1, 1.88290142e-006, -4.05231549e-006, 4.06977051e-006, -0.00727253594, 0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.798337698, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.435768574, 1.13997447))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00150680542, -0.259859562, 8.01216888, -1, -8.87969509e-006, 4.24777681e-006, -4.31565422e-006, 0.00727553666, -0.999980152, 8.85874033e-006, -0.999976993, -0.00727554969))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.805115938, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.477399707, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00572776794, 3.31259918, 1.56507874, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 0.86602813, -0.500003815, -1.62981451e-009, 0.500002027, 0.866031051))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 1, 0.671109617))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00847244263, 1.56596184, 3.68146133, -1, 5.3551048e-009, -1.5788828e-009, -1.62981451e-009, 0.500003278, 0.866030395, -5.12227416e-009, 0.866027415, -0.500004888))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 0.781843007))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00846862793, -0.113676071, -3.98678207, -1, 5.3551048e-009, -1.5788828e-009, -6.54836185e-010, -0.114217885, -0.993462563, 5.3551048e-009, -0.993459225, 0.11421828))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 0.563732326))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.652221978))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00847244263, 2.12783813, 4.00239944, 1, 5.0291419e-008, 2.00066279e-006, 1.7893035e-006, 0.418343931, -0.908295453, -8.91042873e-007, 0.908292413, 0.418345362))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.523465693, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle2",Vector3.new(0.333970994, 0.333971083, 0.534553051))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00848197937, -0.114953518, 4.34464645, 1, -5.3551048e-009, 1.5788828e-009, -6.54836185e-010, -0.114217885, -0.993462563, -5.3551048e-009, 0.993459165, -0.114218257))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 1.76913583, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00280761719, 2.54881287, -0.00673675537, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.851167679, 1, 0.444966584))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.615819991, 1.04920125))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00242233276, 0.781448364, 1.95035934, 1, -9.49250534e-007, 2.02898082e-006, 2.10141297e-006, 0.701943696, -0.712239444, -7.53090717e-007, 0.712237179, 0.70194608))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 1, 1))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.11886787, -0.00262260437, 3.30176163, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.832176328, 0.80868715))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.36180529, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00124740601, -0.197305202, 1.52207947, -1, 3.86452302e-006, -5.11141843e-006, -5.13588748e-006, -0.00727250986, 0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.12582397, -0.00260162354, 3.30752563, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.832176328, 0.80868715))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.360684603, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00125694275, -0.156280041, 1.52334595, 1, -3.86452302e-006, 5.11141843e-006, 5.13573468e-006, 0.00727050938, -0.999980271, 3.81702557e-006, 0.999976993, 0.00727053359))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.403703302))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00126838684, 2.85546875, 0.447472572, 1, 2.25845724e-008, 1.00135367e-006, -4.02797014e-008, 0.999976933, 0.00727766939, -9.98494215e-007, -0.00727765262, 0.999980211))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.526321769, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00126075745, 1.30287552, 1.671875, -1, 3.86452302e-006, -5.11141843e-006, -9.32952389e-007, 0.701947451, 0.712235808, 6.33043237e-006, 0.712233365, -0.701949954))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.190766811, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.403703302))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00127220154, 2.8675766, 0.511937141, -1, 3.86452302e-006, -5.11141843e-006, 3.81679274e-006, 0.999976873, 0.00727466121, 5.1354582e-006, 0.00727464817, -0.999980271))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.526321769, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.615819991, 1.04920125))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00128173828, 0.741531372, 1.98311234, -1, -5.0291419e-008, -2.00066279e-006, -1.46543607e-006, 0.701945484, 0.712237716, 1.35891605e-006, 0.712235332, -0.701947927))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00129127502, 2.06131363, -1.58065796, -1, 3.86452302e-006, -5.11141843e-006, 6.3306652e-006, 0.712233424, -0.701949954, 9.32952389e-007, -0.701947451, -0.712235808))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.526321769, 0.873242319))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.65778923, -0.00261688232, 3.554142, 9.13976692e-007, -0.298402101, 0.954447031, 1, 2.66823918e-007, -8.68145435e-007, -4.42378223e-009, 0.954443753, 0.298403084))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.832176328, 0.80868715))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.071811676, -0.00623512268, 6.19100571, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.761709809, 0.80868715))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0718102455, -0.00624275208, 6.83526611, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.761709809, 0.80868715))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0718164444, -0.00625419617, 6.99786377, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.761709809, 0.80868715))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0718173981, -0.00625228882, 6.02839279, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.761709809, 0.80868715))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.633004189, 1.13885355))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00294113159, -1.51745224, 3.69674301, 1, 2.25845724e-008, 1.00135367e-006, 9.98486939e-007, 0.00727552548, -0.999980271, -4.02797014e-008, 0.999976993, 0.00727553107))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.790433347, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.36180529, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00124549866, -0.169769287, 1.02795029, -1, -1.88290142e-006, 4.05231549e-006, -4.06977051e-006, 0.00727253594, -0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.36180529, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00121879578, -0.147402763, -4.72467804, -1, 3.86452302e-006, -5.11141843e-006, -5.13588748e-006, -0.00727250986, 0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00126075745, 2.0196228, -1.61859512, 1, 2.25845724e-008, 1.00135367e-006, -7.34464265e-007, 0.70194453, 0.712238789, -6.76838681e-007, -0.712236404, 0.701947033))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.526321769, 0.940353274))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00123596191, 1.31023407, 1.65644073, 1, 4.13204543e-006, 4.88809019e-006, 5.71715645e-007, 0.701945722, -0.712237537, -6.37990888e-006, 0.712235212, 0.701948166))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.190766811, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 2.02464533, 0.704451442))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00224876404, -5.9966774, -0.00673389435, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.834389985, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.360684603, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00121307373, -0.206172466, -4.72341537, 1, -3.86452302e-006, 5.11141843e-006, 5.13573468e-006, 0.00727050938, -0.999980271, 3.81702557e-006, 0.999976993, 0.00727053359))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.36180529, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00122642517, -0.219696999, 7.27475739, -1, -1.88290142e-006, 4.05231549e-006, -4.06977051e-006, 0.00727253594, -0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709104538, 0.00263023376, 3.57127762, 5.24742063e-007, -0.298404753, -0.954446197, -1, 1.02631748e-006, -8.71201337e-007, 1.22864731e-006, 0.954442978, -0.298405796))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.832176328, 0.80868715))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.360684603, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00124359131, -0.133904457, 7.27602386, 1, 1.88290142e-006, -4.05231549e-006, 4.06897016e-006, -0.00727054104, 0.99998033, 1.86357647e-006, -0.999976873, -0.00727054477))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 2.02464533, 0.704451442))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0022354126, 0.250286102, -0.011218071, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.834389985, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.360684603, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00124740601, -0.18379879, 1.0292511, 1, 1.88290142e-006, -4.05231549e-006, 4.06897016e-006, -0.00727054104, 0.99998033, 1.86357647e-006, -0.999976873, -0.00727054477))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0027923584, 2.42457581, -2.43035126, 1, -5.3551048e-009, 1.5788828e-009, -2.79396772e-009, 0.707109809, 0.707111001, 4.88944352e-009, -0.707108498, 0.707112134))
mesh("BlockMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.851167679, 0.317635983, 0.314100146))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.620843053, 0.333971083, 0.636532664))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00516605377, -0.00261116028, 2.88111496, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.832176328, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Neon",Vector3.new(0.333970994, 0.633004189, 1.13885355))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00233078003, -1.57151031, 3.69814682, -1, 9.7672455e-007, -1.02919876e-006, -1.01856858e-006, 0.007278217, 0.99998033, 9.73697752e-007, 0.999976873, -0.00727825798))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.790433347, 1, 1))

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

Face=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really red","Handle",Vector3.new(2.39999938, 2.39999938, 2.39999938))
Face.Shape = "Ball"
Faceweld=weld(m,Character["Head"],Face,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0199375153, 0.150016785, -0.590007782, -1, 0, 0, 0, 1, 0, 0, 0, -1))


	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

Back=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really red","Handle",Vector3.new(4.37000132, 3.20000124, 1.59000123))
Backweld=weld(m,Character["Torso"],Back,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0149364471, -0.464990616, 1.0450058, -1, 0, 0, 0, 1, 0, 0, 0, -1))

local size = 40,40,40


----------------------------------------------------
	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

F3=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.5,"Really red","Handle",Vector3.new(30.6000023, 30.6000023, 30.6000023))
F3weld=weld(m,Character["Torso"],F3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.35006237, -0.479990005, 1.62999344, -1, 0, 0, 0, 1, 0, 0, 0, -1))
F3.Name = "F3"
F3.Shape = "Ball"
F3.CanCollide = false
F3.Size = Vector3.new(size)
F3.Transparency = 0.7
F3.Material = "Neon"
F3.Anchored = true
F3.BrickColor = BrickColor.new(0,0,0)
F3.Locked = true
F3.Archivable = false



local p = F3
local me = game.Players.LocalPlayer.Character
 game.Workspace.Lord_Vexus.Humanoid.JumpPower = 100


p.Shape = "Ball"

game:GetService('RunService').Stepped:connect(function()
	p.CFrame = me.Torso.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
end)


wait(0.1)

F3.CanCollide = false
F3.CanCollide = false


F3.Transparency = 0.9

game.Workspace.Lord_Vexus.Humanoid.MaxHealth=3000