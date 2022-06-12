plr=game.Players.LocalPlayer
char=plr.Character
color="Cyan"
BaseColor="Bright blue"
FireRate=.5
sound=Instance.new("Sound",char.Head)
sound.Pitch=1
sound.Volume=.3
sound.SoundId="http://www.roblox.com/asset/?id=2920959"
sound2=Instance.new("Sound",char.Head)
sound2.Pitch=1.8
sound2.Volume=.2
sound2.SoundId="http://www.roblox.com/asset?id=2248511"
mode="Normal"
Speed=80
pcall(function() char["Parts>Etc"]:Remove() end)
function makepart(parent,name,t,r,anc,can,s1,s2,s3,col)
    p=Instance.new("Part",parent)
    p.formFactor="Custom"
    p.TopSurface="Smooth"
    p.BottomSurface="Smooth"
    p.Name=name
    p.Transparency=t
    p.Reflectance=r
    p.Anchored=anc
    p.BrickColor=BrickColor.new(col)
    p.CanCollide=can
    p.Size=Vector3.new(s1,s2,s3)
    return p
end
--[[Parts]]--
main=Instance.new("Model",char)
main.Name="Parts>Etc"
mpart=makepart(main,"MainPart",0,0,false,false,1,1,1,BaseColor)
smesh=Instance.new("SpecialMesh",mpart)
smesh.MeshType="Sphere"
smesh.Scale=Vector3.new(1.5,1.4,1)
w1=Instance.new("Weld",mpart)
w1.Part0=mpart
w1.Part1=char.Torso
w1.C1=CFrame.new(0,0.2,.6)
w1.C0=CFrame.new(0,0,0)
part2=makepart(main,"P2",0,0,false,false,1,1,1,color)
smesh2=Instance.new("SpecialMesh",part2)
smesh2.MeshType="Sphere"
smesh2.Scale=Vector3.new(1,1,1)
w2=Instance.new("Weld",mpart)
w2.Part0=part2
w2.Part1=mpart
w2.C1=CFrame.new(0,0,.2)
w2.C0=CFrame.new(0,0,0)
part3=makepart(main,"P3",0,0,false,false,1,1,1,BaseColor)
cmesh=Instance.new("CylinderMesh",part3)
cmesh.Scale=Vector3.new(.2,2,.2)
w3=Instance.new("Weld",mpart)
w3.Part0=part3
w3.Part1=mpart
w3.C1=CFrame.Angles(0,0,-0.8)
w3.C0=CFrame.new(0,-1,0)
part4=makepart(main,"P4",0,0,false,false,1,1,1,BaseColor)
cmesh=Instance.new("CylinderMesh",part4)
cmesh.Scale=Vector3.new(.2,2,.2)
w4=Instance.new("Weld",mpart)
w4.Part0=part4
w4.Part1=mpart
w4.C1=CFrame.Angles(0,0,0.8)
w4.C0=CFrame.new(0,-1,0)
part5=makepart(main,"P5",0,0,false,false,1,1,1,color)
smesh5=Instance.new("SpecialMesh",part5)
smesh5.MeshType="Sphere"
smesh5.Scale=Vector3.new(.5,.5,.5)
w5=Instance.new("Weld",mpart)
w5.Part0=part5
w5.Part1=part4
w5.C1=CFrame.new(0,1,0)
w5.C0=CFrame.Angles(0,0,0)
part6=makepart(main,"P6",0,0,false,false,1,1,1,color)
smesh6=Instance.new("SpecialMesh",part6)
smesh6.MeshType="Sphere"
smesh6.Scale=Vector3.new(.5,.5,.5)
w6=Instance.new("Weld",mpart)
w6.Part0=part6
w6.Part1=part3
w6.C1=CFrame.new(0,1.2,0)
w6.C0=CFrame.Angles(0,0,0)
part7=makepart(main,"P7",0,0,false,false,1,1,1,BaseColor)
smesh7=Instance.new("CylinderMesh",part7)
smesh7.Scale=Vector3.new(.2,1,.2)
w7=Instance.new("Weld",mpart)
w7.Part0=part7
w7.Part1=part6
w7.C1=CFrame.new(0,0,-0.5)
w7.C0=CFrame.Angles(1.5,0,1)
part8=makepart(main,"P8",0,0,false,false,1,1,1,BaseColor)
smesh8=Instance.new("CylinderMesh",part8)
smesh8.Scale=Vector3.new(.2,1,.2)
w8=Instance.new("Weld",mpart)
w8.Part0=part8
w8.Part1=part5
w8.C1=CFrame.new(0,0,-0.5)
w8.C0=CFrame.Angles(1.5,0,1)
part9=makepart(main,"P9",0,0,false,false,1,1,1,"Really black")
smesh9=Instance.new("CylinderMesh",part9)
smesh9.Scale=Vector3.new(.17,.05,.17)
w9=Instance.new("Weld",mpart)
w9.Part0=part9
w9.Part1=part8
w9.C1=CFrame.new(0,0.5,0)
w9.C0=CFrame.Angles(0,0,0)
part10=makepart(main,"P10",0,0,false,false,1,1,1,"Really black")
smesh10=Instance.new("CylinderMesh",part10)
smesh10.Scale=Vector3.new(.16,.05,.16)
w10=Instance.new("Weld",mpart)
w10.Part0=part10
w10.Part1=part7
w10.C1=CFrame.new(0,.5,0)
w10.C0=CFrame.Angles(0,0,0)
part11=makepart(main,"P11",0,0,false,false,1,1,1,BaseColor)
smesh11=Instance.new("CylinderMesh",part11)
smesh11.Scale=Vector3.new(.8,.6,1.1)
w11=Instance.new("Weld",mpart)
w11.Part0=part11
w11.Part1=mpart
w11.C1=CFrame.new(0,-.8,0)
w11.C0=CFrame.Angles(0,0,0)
--[[Tools/Mouse]]--
bin=Instance.new("HopperBin",plr.Backpack)
bin.Name="Gun Turret"
script.Parent=bin
hold=false
effects=false
bin.Selected:connect(function(mouse)
    print("Selected")
mouse.Button1Down:connect(function()
if mode=="Normal" then
    hold=true
    while hold do
        local ray = Ray.new(part10.CFrame.p, (mouse.Hit.p - part10.CFrame.p).unit*300)
        local hit, position = game.Workspace:FindPartOnRay(ray, char)
        local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
        if humanoid then
            humanoid:TakeDamage(math.random(5,10))
        end
        local distance = (position - part10.CFrame.p).magnitude
        local rayPart = Instance.new("Part", char)
        rayPart.Name          = "RayPart"
        rayPart.BrickColor    = BrickColor.new(color)
        rayPart.Transparency  = 0
        rayPart.Anchored      = true
        rayPart.CanCollide    = false
        rayPart.TopSurface    = Enum.SurfaceType.Smooth
        rayPart.BottomSurface = Enum.SurfaceType.Smooth
        rayPart.formFactor    = Enum.FormFactor.Custom
        rayPart.Size          = Vector3.new(0.1, 0.1, distance)
        rayPart.CFrame        = CFrame.new(position, part10.CFrame.p) * CFrame.new(0, 0, -distance/2)
        bm=Instance.new("BlockMesh",rayPart)
        bm.Scale=Vector3.new(0.2,0.2,1)
        game.Debris:AddItem(rayPart, 0.1)
        local ray2 = Ray.new(part9.CFrame.p, (mouse.Hit.p - part9.CFrame.p).unit*300)
        local hit2, position2 = game.Workspace:FindPartOnRay(ray2, char)
        local humanoid2 = hit2 and hit2.Parent and hit2.Parent:FindFirstChild("Humanoid")
        if humanoid2 then
            humanoid2:TakeDamage(math.random(5,10))
        end
        local distance2 = (position2 - part9.CFrame.p).magnitude
        local rayPart2 = Instance.new("Part", char)
        rayPart2.Name          = "RayPart"
        rayPart2.BrickColor    = BrickColor.new(color)
        rayPart2.Transparency  = 0
        rayPart2.Anchored      = true
        rayPart2.CanCollide    = false
        rayPart2.TopSurface    = Enum.SurfaceType.Smooth
        rayPart2.BottomSurface = Enum.SurfaceType.Smooth
        rayPart2.formFactor    = Enum.FormFactor.Custom
        rayPart2.Size          = Vector3.new(0.1, 0.1, distance2)
        rayPart2.CFrame        = CFrame.new(position2, part9.CFrame.p) * CFrame.new(0, 0, -distance2/2)
        bm2=Instance.new("BlockMesh",rayPart2)
        bm2.Scale=Vector3.new(0.2,0.2,1)
        game.Debris:AddItem(rayPart2, 0.1)
        sound:Play()
        wait(FireRate)
        end
    end
    if mode=="Fly" then
        hold=true
            pcall(function() char.Head.BV:Destroy() end)
            pcall(function() char.Torso.BG:Destroy() end)
            local bv = Instance.new("BodyVelocity")
            bv.Parent = char.Head
            bv.Name="BV"
            bv.maxForce = Vector3.new(1e+010, 1e+010, 1e+010)
            bg = Instance.new("BodyGyro")
            bg.maxTorque = Vector3.new(0,0,0)
            bg.Parent = char.Torso
            bg.Name="BG"
            bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
            char.Torso["Right Shoulder"].DesiredAngle = -6
            char.Torso["Left Shoulder"].DesiredAngle = -6
            for i=1,5 do
            fire=Instance.new("Fire",part11)
            fire.Heat=50
            fire.Size=3
            fire.Color=BrickColor.new(color).Color
            fire.SecondaryColor=BrickColor.new(color).Color
            fire.Name="F"
            end
            effects=true
        while hold do
            wait()
            bg.cframe = CFrame.new(char.Torso.Position,mouse.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)                
            bv.velocity = (char.Head.Position - mouse.Hit.p).unit * -Speed
            bg.cframe = CFrame.new(char.Torso.Position,mouse.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
        end
        end
    if mode=="Explode" then
        hold=true
        while hold do
            wait()
        local ray = Ray.new(part10.CFrame.p, (mouse.Hit.p - part10.CFrame.p).unit*300)
        local hit, position = game.Workspace:FindPartOnRay(ray, char)
        local distance = (position - part10.CFrame.p).magnitude
        local rayPart = Instance.new("Part", char)
        rayPart.Name          = "RayPart"
        rayPart.BrickColor    = BrickColor.new("Bright yellow")
        rayPart.Transparency  = 0
        rayPart.Anchored      = true
        rayPart.CanCollide    = false
        rayPart.TopSurface    = Enum.SurfaceType.Smooth
        rayPart.BottomSurface = Enum.SurfaceType.Smooth
        rayPart.formFactor    = Enum.FormFactor.Custom
        rayPart.Size          = Vector3.new(0.4, 0.4, distance)
        rayPart.CFrame        = CFrame.new(position, part10.CFrame.p) * CFrame.new(0, 0, -distance/2)
        bm=Instance.new("BlockMesh",rayPart)
        bm.Scale=Vector3.new(0.2,0.2,1)
        game.Debris:AddItem(rayPart, 0.1)
        local ray2 = Ray.new(part9.CFrame.p, (mouse.Hit.p - part9.CFrame.p).unit*300)
        local hit2, position2 = game.Workspace:FindPartOnRay(ray2, char)
        local distance2 = (position2 - part9.CFrame.p).magnitude
        local rayPart2 = Instance.new("Part", char)
        rayPart2.Name          = "RayPart"
        rayPart2.BrickColor    = BrickColor.new("Bright yellow")
        rayPart2.Transparency  = 0
        rayPart2.Anchored      = true
        rayPart2.CanCollide    = false
        rayPart2.TopSurface    = Enum.SurfaceType.Smooth
        rayPart2.BottomSurface = Enum.SurfaceType.Smooth
        rayPart2.formFactor    = Enum.FormFactor.Custom
        rayPart2.Size          = Vector3.new(0.4, 0.4, distance2)
        rayPart2.CFrame        = CFrame.new(position2, part9.CFrame.p) * CFrame.new(0, 0, -distance2/2)
        bm2=Instance.new("BlockMesh",rayPart2)
        bm2.Scale=Vector3.new(0.2,0.2,1)
        ex=Instance.new("Explosion",workspace)
        ex.Position=position
        sound2:Play()
        game.Debris:AddItem(rayPart2, 0.1)
        wait(1)
        end
    end
end)
mouse.KeyDown:connect(function(key)
if key=="q" then
bin.Name="Gun Turret"
mode="Normal"
elseif key=="e" then
bin.Name="Fly"
mode="Fly"
elseif key=="r" then
bin.Name="Gun Turret[E]"
mode="Explode"
end
end)
mouse.Button1Up:connect(function()
    hold=false
    effects=false
    for i=1,10 do
    pcall(function() char.Head.BV:Destroy() end)
    pcall(function() char.Torso.BG:Destroy() end)
    pcall(function() part11.F:Remove() end)
    end
end)
end)
plr=game.Players.NoobMaster936
char=plr.Character
rarm=char["Right Arm"]
Acol="Navy blue"
function weld(name,parent,p1,p0,c1,c0)
    we=Instance.new("Weld",parent) 
    we.Part1=p1 
    we.Part0=p0 
    we.C1=c1 
    we.C0=c0
end
function bm(parent)
    b=Instance.new("BlockMesh",parent)
end
function me(parent,type,sc1,sc2,sc3)
    m=Instance.new("SpecialMesh",parent)
    m.MeshType=type
    m.Scale=vec(sc1,sc2,sc3)
end
eff=Instance.new("Part",plr.Character)
eff.formFactor="Custom"
eff.BrickColor=BrickColor.new(Acol)
eff.Name="Eff"
eff.Size=Vector3.new(0.01,1.2,0.15)
eff.Anchored=false
eff.CanCollide=false
eff:BreakJoints()
bm(eff)
eff4=Instance.new("Part",plr.Character)
eff4.formFactor="Custom"
eff4.BrickColor=BrickColor.new(Acol)
eff4.Name="Eff4"
eff4.Size=Vector3.new(0.01,1.2,0.15)
eff4.Anchored=false
eff4.CanCollide=false
eff4:BreakJoints()
bm(eff4)
eff3=Instance.new("Part",plr.Character)
eff3.formFactor="Custom"
eff3.BrickColor=BrickColor.new(Acol)
eff3.Name="Eff3"
eff3.Size=Vector3.new(0.01,0.20,0.99)
eff3.Anchored=false
eff3.CanCollide=false
eff3:BreakJoints()
bm(eff3)
weld("EFF1",rarm,eff,rarm,CFrame.Angles(0,0,0),CFrame.new(0.46,0.14,0.29))
weld("EFF2",rarm,eff4,rarm,CFrame.Angles(0,0,0),CFrame.new(0.46,0.14,-0.29))
weld("EFF2",rarm,eff3,rarm,CFrame.Angles(0.99,0,0),CFrame.new(0.46,0,-0.02))