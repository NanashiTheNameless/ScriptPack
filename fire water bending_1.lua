
local player=game.Players.LocalPlayer
local character=player.Character
local head=character["Head"]
local torso=character["Torso"]
local humanoid=character["Humanoid"]
local arm={left=character["Left Arm"], right=character["Right Arm"]}
local add={
part=function(parent,anchored,cancollide,color,shape,t,size,cframe)
        local p=Instance.new("Part")
        p.Parent=parent
        p.TopSurface="Smooth"
        p.BottomSurface="Smooth"
        p.FormFactor="Custom"
        p.Anchored=anchored
        p.CanCollide=cancollide
        p.BrickColor=BrickColor.new(color)
        p.Shape=shape
        p.Transparency=t
        p.Size=size
        p.CFrame=cframe
        return p
end,
weld=function(parent,part1,cframe)
        local w=Instance.new("Weld")
        w.Parent=parent
        w.Part0=parent
        w.Part1=part1
        w.C1=cframe
        return w
end,
mesh=function(ins,parent,scale)
        local m=Instance.new(ins)
        m.Parent=parent
        m.Scale=scale
        return m
end,
sound=function(parent,volume,id)
        local s=Instance.new("Sound")
        s.Parent=parent
        s.Volume=volume
        s.SoundId=id
        return s
end,
model=function(parent,name)
        local m=Instance.new("Model")
        m.Parent=parent
        m.Name=name
        return m
end,
bg=function(parent,cframe)
        local g=Instance.new("BodyGyro")
        g.Parent=parent
        g.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
        g.cframe=cframe
        return g
end,
bav=function(parent,angular)
        local av=Instance.new("BodyAngularVelocity")
        av.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
        av.Parent=parent
        av.angularvelocity=angular
        return av
end,
bp=function(parent,pos)
        local p=Instance.new("BodyPosition")
        p.Parent=parent
        p.maxForce=Vector3.new(0,math.huge,0)
        p.position=pos
        return p
end,
bf=function(parent,force)
        local f=Instance.new("BodyForce")
        f.Parent=parent
        f.force=force
        return f
end,
humanoid=function(parent,maxhealth)
        local h=Instance.new("Humanoid")
        h.Parent=parent
        h.MaxHealth=maxhealth
        return h
end
}
local c=function(f)coroutine.resume(coroutine.create(f))end
local trailDeb=false
local things=add.model(character,"Water Bending and fire")
 
function computePos(pos1,pos2)
        local pos3=Vector3.new(pos2.x,pos1.y,pos2.z)
        return CFrame.new(pos1,pos3)
end
 
local touchDeb=false
function touch(hit)
        local human=hit.Parent:findFirstChild("Humanoid")
        local torso=hit.Parent:findFirstChild("Torso")
        if human and torso and human~=humanoid then
                local damage=math.random(99999,99999)
                c(function()
                        human:TakeDamage(damage)
                        human.PlatformStand=true
                        torso.Velocity=torso.CFrame.lookVector*-150
                        torso.RotVelocity=Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))
                        wait(1)
                        human.PlatformStand=false
                        torso.Velocity=Vector3.new(0,0,0)
                        torso.RotVelocity=Vector3.new(0,0,0)
                end)
        end
end
 
function trail(pos)
        trailDeb=true
        old=pos.Position
        c(function()
                while trailDeb==true do
                        wait()
                        new=pos.Position
                        local magnitude=(old-new).magnitude
                        local line=add.part(things,true,false,"Bright red","Block",0,Vector3.new(8,8,8) ,CFrame.new(old,new)*CFrame.Angles(0,0,-magnitude/2))
                        old=new
                        c(function()
                                for i=.2,1,.2 do
                                        wait()
                                        line.Transparency=i
                                end
                                line:remove()
                        end)
                        line.Touched:connect(touch)
                end
        end)
end
 
local pathDeb=false
local pathPart=nil
local bPosition=10
function path()
        pathDeb=true
        pathPart=add.part(things,true,true,"Bright blue","Ball",0,Vector3.new(4,1.4),CFrame.new())
        local bp=add.bp(torso,torso.Position+Vector3.new(0,bPosition,0))
        while pathDeb==true do
                wait()
                pathPart.CFrame=torso.CFrame*CFrame.new(0,-3,0)
        end
end
 
--Armz
local fakeArm={left=add.part(things,false,false,"White","Block",1,Vector3.new(1,1,1),CFrame.new()), right=add.part(things,false,false,"White","Block",1,Vector3.new(1,1,1),CFrame.new())}
local water={left=add.part(things,false,false,"Bright red","Ball",1,Vector3.new(1,1,1),CFrame.new()), right=add.part(things,false,false,"Bright blue","Ball",1,Vector3.new(1,1,1),CFrame.new())}
--Weldz
local connectArmWeld={left=add.weld(torso,fakeArm.left,CFrame.new(1.5,-.5,0)), right=add.weld(torso,fakeArm.right,CFrame.new(-1.5,-.5,0))}
local armWeld={left=add.weld(fakeArm.left,arm.left,CFrame.new(0,0.5,0)), right=add.weld(fakeArm.right,arm.right,CFrame.new(0,0.5,0))}
local waterWeld={left=add.weld(water.left,arm.left,CFrame.new(0,-2,0)), right=add.weld(water.right,arm.right,CFrame.new(0,-2,0))}
 
local anim={
equip=function()
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,0)
        end
end,
watershoot=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        local waterbull=add.part(things,false,false,"Bright red","Ball",0,Vector3.new(6,6,6),CFrame.new((torso.CFrame+torso.CFrame.lookVector*5).p,mouse.hit.p))
        waterbull.Touched:connect(touch)
        waterbull.Velocity=waterbull.CFrame.lookVector*150
        trail(waterbull)
        local bf=add.bf(waterbull,Vector3.new(0,waterbull:GetMass()*196.2,0))
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        game.Debris:AddItem(waterbull,5)
        trailDeb=false
end,
waterRaise=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-math.random(10,12)*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-math.random(10,12)*i),0)
        end
        trailDeb=false
end,
waterRaise1=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.5,1,.5 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.5 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-math.random(10,12)*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-math.random(10,12)*i),0)
        end
        wait(.2)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,0)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,0)
                waterWeld.left.C1=CFrame.new(0,-2+(-20*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-20*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,0)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,0)
                waterWeld.left.C1=CFrame.new(0,-2+(-20*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-20*i),0)
        end
        trailDeb=false
        wait(.2)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
        end
        for i=1,20 do
                wait()
                local waterblock=add.part(things,false,false,"Bright red","Block",0,Vector3.new(4,4,4),torso.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(45),0,0)+torso.CFrame.lookVector*2*i)
                trail(waterblock)
                game.Debris:AddItem(waterblock,1)
                waterblock.Touched:connect(touch)
        end
        wait(.2)
        torso.Anchored=false
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
        end
        trailDeb=false
        wait(.2)
        trail(water.left)
        trail(water.right)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-15*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-15*i),0)
        end
        trailDeb=false
 
end;        
waterSpin=function()
        trail(water.left)
        trail(water.right)
        local bg=add.bg(torso,torso.CFrame)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-math.random(5,8)*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-math.random(5,8)*i),0)
        end
        local bav=add.bav(torso,Vector3.new(0,75,0))
        wait(3)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-5*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-5*i),0)
        end
        bg:remove()
        bav:remove()
        trailDeb=false
end,
bend=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-15*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-15*i),0)
        end
        trailDeb=false
        
end;
bend1=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(190)*i,0,math.rad(140)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(190)*i,0,-math.rad(150)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(190)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(190)*i,0,-math.rad(45)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-15*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-15*i),0)
        end
        trailDeb=false
        wait(.2)
        trail(water.left)
        trail(water.right)
        local bg=add.bg(torso,torso.CFrame)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-math.random(5,8)*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-math.random(5,8)*i),0)
        end
        local bav=add.bav(torso,Vector3.new(0,75,0))
        wait(3)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-5*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-5*i),0)
        end
        bg:remove()
        bav:remove()
        trailDeb=false
        wait(.2)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,0)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,0)
                waterWeld.left.C1=CFrame.new(0,-2+(-20*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-20*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,0)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,0)
                waterWeld.left.C1=CFrame.new(0,-2+(-20*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-20*i),0)
        end
        trailDeb=false
 
end,
watershoot2=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=1,40 do
                local waterbull=add.part(things,false,false,"Bright blue","Ball",0,Vector3.new(8,8,8),torso.CFrame*CFrame.Angles(0,math.rad(9)*i,0))
                waterbull.Velocity=waterbull.CFrame.lookVector*100
                trail(waterbull)
                local bf=add.bf(waterbull,Vector3.new(0,waterbull:GetMass()*196.2,0))
                game.Debris:AddItem(waterbull,5)
                waterbull.Touched:connect(touch)
        end
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        trailDeb=false
end,
lol=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=1,40 do
                local waterbull=add.part(things,false,false,"Bright blue","Block",0,Vector3.new(10,10,10),torso.CFrame*CFrame.Angles(0,math.rad(9)*i,0))
                waterbull.Velocity=waterbull.CFrame.lookVector*100
                trail(waterbull)
                local bf=add.bf(waterbull,Vector3.new(0,waterbull:GetMass()*196.2,0))
                game.Debris:AddItem(waterbull,5)
                waterbull.Touched:connect(touch)
        end
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        trailDeb=false
end,
waterBack=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,0)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,0)
                waterWeld.left.C1=CFrame.new(0,-2+(-20*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-20*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,0)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,0)
                waterWeld.left.C1=CFrame.new(0,-2+(-20*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-20*i),0)
        end
        trailDeb=false
end,
 
ultimatemove=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        torso.Anchored=true
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
        end
        for i=1,20 do
                wait()
                local waterblock=add.part(things,false,false,"Bright blue","Ball",0,Vector3.new(12,12,12),torso.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(45),0,0)+torso.CFrame.lookVector*2*i)
                trail(waterblock)
                game.Debris:AddItem(waterblock,1)
                waterblock.Touched:connect(touch)
        end
        wait(.2)
        torso.Anchored=false
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
        end
        trailDeb=false
        wait(.2)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(190)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(190)*i,0,math.rad(5)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(190)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(190)*i,0,math.rad(5)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-math.random(10,12)*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-math.random(10,12)*i),0)
        end
        trailDeb=false
 
end; 
waterForward=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        torso.Anchored=true
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
        end
        for i=1,20 do
                wait()
                local waterblock=add.part(things,false,false,"Bright red","Block",0,Vector3.new(4,4,4),torso.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(45),0,0)+torso.CFrame.lookVector*2*i)
                trail(waterblock)
                game.Debris:AddItem(waterblock,1)
                waterblock.Touched:connect(touch)
        end
        wait(.2)
        torso.Anchored=false
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
        end
        trailDeb=false
end
}
 
function getTouched()
        for i,v in pairs(things:GetChildren()) do
                v.Touched:connect(touch)
        end
end
 
local deb=false
local buttonDeb=false
local bin=Instance.new("HopperBin")
bin.Parent=player.Backpack
bin.Name="Water Bending"
bin.Selected:connect(function(mouse)
        bin:remove()
        anim.equip()
        mouse.Button1Down:connect(function()
                if deb==false then
                        deb=true
                        getTouched()
                        anim.watershoot(mouse)
                        anim.equip()
                        deb=false
                end
        end)
        mouse.KeyDown:connect(function(key)
                if key=="q" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterRaise(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="p" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterRaise1(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="e" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterSpin()
                        anim.equip()
                        deb=false
                end
                if key=="r" and deb==false then
                        deb=true
                        getTouched()
                        anim.bend(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="m" and deb==false then
                        deb=true
                        getTouched()
                        anim.bend1(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="f" and deb==false then
                        deb=true
                        getTouched()
                        anim.watershoot2(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="t" and deb==false then
                        deb=true
                        getTouched()
                        anim.lol(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="g" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterBack(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="h" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterForward(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="n" and deb==false then
                        deb=true
                        getTouched()
                        anim.ultimatemove(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="z" and buttonDeb==false then
                        buttonDeb=true
                        getTouched()
                        path()
                end
                if key=="z" and buttonDeb==true then
                        buttonDeb=false
                        pathPart:remove() torso["BodyPosition"]:remove()
                end
        end)
end)
