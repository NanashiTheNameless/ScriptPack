--Fire Bending
--Human Parts
local player=game.Players.LocalPlayer
local character=player.Character
local humanoid=character["Humanoid"]
local head=character["Head"]
local torso=character["Torso"]
local arm={left=character["Left Arm"], right=character["Right Arm"]}
local leg={left=character["Left Leg"], right=character["Right Leg"]}
 
--FireBendingHopperBin
local bin=Instance.new("HopperBin")
bin.Parent=player.Backpack
bin.Name="Fire Bending"
 
--Add Instance
local add={
part=function(parent,name,anchored,cancollide,color,shape,t,size,cframe)
        local p=Instance.new("Part")
        p.Parent=parent
        p.Name=name
        p.TopSurface="Smooth"
        p.BottomSurface="Smooth"
        p.formFactor="Custom"
        p.Anchored=anchored
        p.CanCollide=cancollide
        p.BrickColor=BrickColor.new(color)
        p.Shape=shape
        p.Transparency=t
        p.Size=size
        p.CFrame=cframe
        return p
end,
weld=function(parent,p1,cframe)
        local w=Instance.new("Weld")
        w.Parent=parent
        w.Part0=parent
        w.Part1=p1
        w.C1=cframe
        return w
end,
mesh=function(i,parent,scale)
        local m=Instance.new(i)
        m.Parent=parent
        m.Scale=scale
        return m
end,
bg=function(parent,cframe)
        local g=Instance.new("BodyGyro")
        g.Parent=parent
        g.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
        g.cframe=cframe
        return g
end,
bp=function(parent,pos)
        local p=Instance.new("BodyPosition")
        p.Parent=parent
        p.maxForce=Vector3.new(0,math.huge,0)
        p.position=pos
        return p
end,
bv=function(parent,velocity)
        local v=Instance.new("BodyVelocity")
        v.Parent=parent
        v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        v.velocity=velocity
        return v
end,
bf=function(parent,force)
        local f=Instance.new("BodyForce")
        f.Parent=parent
        f.force=force
        return f
end,
bav=function(parent,angular)
        local av=Instance.new("BodyAngularVelocity")
        av.Parent=parent
        av.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
        av.angularvelocity=angular
        return av
end,
model=function(parent,name)
        local m=Instance.new("Model")
        m.Parent=parent
        m.Name=name
        return m
end,
humanoid=function(parent,maxhealth)
        local h=Instance.new("Humanoid")
        h.Parent=parent
        h.MaxHealth=maxhealth
        h.Health=maxhealth
        return h
end}
local things=add.model(character,"FireBending")
local c=function(f)coroutine.resume(coroutine.create(f))end
local function computePos(pos1,pos2)
        local pos3=Vector3.new(pos2.x,pos1.y,pos2.z)
        return CFrame.new(pos1,pos3)
end
 
local function getTorso(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
end
 
local touchDeb=false
local function damage(hit)
        local humanoid=hit.Parent:FindFirstChild("Humanoid")
        local torso=hit.Parent:FindFirstChild("Torso")
        if humanoid and torso and humanoid~=character["Humanoid"] and touchDeb==false then
                touchDeb=true
                local dmg=math.random(5,20)
                c(function()
                        humanoid:TakeDamage(dmg)
                        torso.Velocity=Vector3.new(math.random(-15,15),math.random(25,40),math.random(-15,15))*2
                        torso.RotVelocity=Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))*5
                        local model=add.model(Workspace,math.floor(dmg))
                        local h=add.humanoid(model,math.huge)
                        local dmgpart=add.part(model,"Head",false,false,"Bright red","Block",0,Vector3.new(1,.2,1),hit.CFrame)
                        local mesh=add.mesh("CylinderMesh",dmgpart,Vector3.new(1,1,1))
                        local bf=add.bf(dmgpart,Vector3.new(0,dmgpart:GetMass()*200,0))
                        wait(1)
                        model:remove()
                end)
                wait(.1)
                touchDeb=false
        end
end
 
local trailDeb=false
local function trail(pos)
        trailDeb=true
        c(function()
                old=pos.Position
                while trailDeb do
                        wait()
                        new=pos.Position
                        mag=(old-new).magnitude
                        local trail=add.part(things,"Trail",true,false,"Bright red","Block",0,Vector3.new(3,3,3),CFrame.new(old,new)*CFrame.Angles(0,0,-mag/2))
                        old=new
                        trail.Touched:connect(damage)
                        c(function()
                                for i=.2,1,.2 do
                                        wait()
                                        trail.Transparency=i
                                end
                                trail:remove()
                        end)
                end
        end)
end
 
local pathDeb=false
local bpPosition=10
local pathpart=nil
local bp=nil
local function paths()
        pathDeb=true
        pathpart=add.part(Workspace,"Path",true,false,"Bright red","Block",0,Vector3.new(4,1,4),CFrame.new())
        bp=add.bp(torso,Vector3.new(0,bpPosition,0))
        while pathDeb==true do
                wait()
                pathpart.CFrame=torso.CFrame*CFrame.new(0,-4,0)
        end
end
 
--FakeArm
local fakeArm={left=add.part(things,"Left Arm",false,false,"White","Block",1,Vector3.new(1,1,1),CFrame.new()),right=add.part(things,"Right Arm",false,false,"White","Block",1,Vector3.new(1,1,1),CFrame.new())}
--local fakeLeg={left=add.part(things,"Left Leg",false,false,"White","Block",1,Vector3.new(1,1,1),CFrame.new()),right=add.part(things,"Right Leg",false,false,"White","Block",1,Vector3.new(1,1,1),CFrame.new())}
local fireHandle={left=add.part(things,"Left Handle",false,false,"White","Block",1,Vector3.new(1,1,1),CFrame.new()),right=add.part(things,"Right Handle",false,false,"White","Block",1,Vector3.new(1,1,1),CFrame.new())}
--Weldz
local connectArm={left=add.weld(torso,fakeArm.left,CFrame.new(-1.5,-.5,0)),right=add.weld(torso,fakeArm.right,CFrame.new(1.5,-.5,0))}
--local connectLeg={left=add.weld(torso,fakeLeg.left,CFrame.new(-.5,1.5,0)),right=add.weld(torso,fakeLeg.right,CFrame.new(.5,1.5,0))}
local armWeld={left=add.weld(fakeArm.left,arm.left,CFrame.new(0,.5,0)),right=add.weld(fakeArm.right,arm.right,CFrame.new(0,.5,0))}
--local legWeld={left=add.weld(fakeLeg.left,arm.left,CFrame.new(0,.5,0)),right=add.weld(fakeLeg.right,arm.right,CFrame.new(0,.5,0))}
local handleWeld={left=add.weld(fireHandle.left,arm.left,CFrame.new(0,-2,0)),right=add.weld(fireHandle.right,arm.right,CFrame.new(0,-2,0))}
 
local anim={
equip=function()
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(15)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(15)*i)
        end
end,
firecrush=function(mouse)
        getTorso(mouse)
        trail(fireHandle.left)
        trail(fireHandle.right)
        local bv=add.bv(torso,torso.CFrame.lookVector*25)
        for i=1,40 do
                wait()
                armWeld.left.C0=CFrame.Angles(-math.rad(36)*i,0,0)
                armWeld.right.C0=CFrame.Angles(-math.rad(36)*i,0,0)
                handleWeld.left.C1=CFrame.new(0,-2,0)
                handleWeld.right.C1=CFrame.new(0,-2,0)
        end
        wait(.2)
        trailDeb=false
        bv:remove()
end,
firebump=function(mouse)
        getTorso(mouse)
        trail(fireHandle.left)
        trail(fireHandle.right)
        local bv=add.bv(torso,torso.CFrame.lookVector*50)
        fireHandle.left.Touched:connect(damage)
        fireHandle.right.Touched:connect(damage)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
        end
        wait(.5)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
        end
        bv:remove()
        trailDeb=false
end,
fireshoot=function(mouse)
        getTorso(mouse)
        trail(fireHandle.left)
        trail(fireHandle.right)
        local bullet=add.part(Workspace,"FirePistol",false,false,"Bright red","Ball",0,Vector3.new(2,2,2),CFrame.new((torso.CFrame+torso.CFrame.lookVector*10).p,mouse.Hit.p))
        bullet.Velocity=bullet.CFrame.lookVector*150
        local bf=add.bf(bullet,Vector3.new(0,bullet:GetMass()*196.2,0))
        bullet.Touched:connect(damage)
        trail(bullet)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                handleWeld.left.C1=CFrame.new(0,-2+-2*i,0)
                handleWeld.right.C1=CFrame.new(0,-2+-2*i,0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                handleWeld.left.C1=CFrame.new(0,-2+-2*i,0)
                handleWeld.right.C1=CFrame.new(0,-2+-2*i,0)
        end
        game.Debris:AddItem(bullet,5)
        trailDeb=false
end,
firerage=function()
        trail(fireHandle.left)
        trail(fireHandle.right)
        torso.Anchored=true
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                handleWeld.left.C1=CFrame.new(0,-2+-2*i,0)
                handleWeld.right.C1=CFrame.new(0,-2+-2*i,0)
        end
        for i=1,40 do
                wait()
                local bullet=add.part(Workspace,"FirePistol",false,false,"Bright red","Ball",0,Vector3.new(2,2,2),torso.CFrame*CFrame.Angles(0,math.rad(9)*i,0))
                bullet.Velocity=bullet.CFrame.lookVector*150
                local bf=add.bf(bullet,Vector3.new(0,bullet:GetMass()*196.2,0))
                bullet.Touched:connect(damage)
                trail(bullet)
                game.Debris:addItem(bullet,5)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                handleWeld.left.C1=CFrame.new(0,-2+-2*i,0)
                handleWeld.right.C1=CFrame.new(0,-2+-2*i,0)
        end
        torso.Anchored=false
        trailDeb=false
end,
firespin=function()
        trail(fireHandle.left)
        trail(fireHandle.right)
        local bg=add.bg(torso,torso.CFrame)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(0,0,math.rad(135)*i)
                armWeld.right.C0=CFrame.Angles(0,0,-math.rad(45)*i)
                handleWeld.left.C1=CFrame.new(0,-2+-2*i,0)
                handleWeld.right.C1=CFrame.new(0,-2+-2*i,0)
        end
        local bav=add.bav(torso,Vector3.new(0,50,0))
        wait(3)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(0,0,math.rad(135)*i)
                armWeld.right.C0=CFrame.Angles(0,0,-math.rad(45)*i)
                handleWeld.left.C1=CFrame.new(0,-2+-2*i,0)
                handleWeld.right.C1=CFrame.new(0,-2+-2*i,0)
        end
        bav:remove()
        bg:remove()
        trailDeb=false
end,
firewave=function(mouse)
        getTorso(mouse)
        trail(fireHandle.left)
        trail(fireHandle.right)
        torso.Anchored=true
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(45)*i)
                handleWeld.left.C1=CFrame.new(0,-2+-2*i,0)
                handleWeld.right.C1=CFrame.new(0,-2+-2*i,0)
        end
        for i=1,15 do
                wait()
                local firepart=add.part(Workspace,"FireBrick",false,false,"Bright red","Block",0,Vector3.new(5,5,5),torso.CFrame*CFrame.Angles(math.rad(45),0,0)+torso.CFrame.lookVector*4*i)
                trail(firepart)
                firepart.Touched:connect(damage)
                game.Debris:addItem(firepart,.5)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(45)*i)
                handleWeld.left.C1=CFrame.new(0,-2+-2*i,0)
                handleWeld.right.C1=CFrame.new(0,-2+-2*i,0)
        end
        torso.Anchored=false
        trailDeb=false
end
}
 
local keyDeb=false
local keyDeb2=false
bin.Selected:connect(function(mouse)
        bin:remove()
        anim.equip()
        mouse.Button1Down:connect(function()
                if keyDeb==false then
                        keyDeb=true
                        anim.fireshoot(mouse)
                        keyDeb=false
                end
        end)
        mouse.KeyDown:connect(function(key)
                if key=="q" and keyDeb==false then
                        keyDeb=true
                        anim.firecrush(mouse)
                        keyDeb=false
                end
                if key=="e" and keyDeb==false then
                        keyDeb=true
                        anim.firebump(mouse)
                        keyDeb=false
                end
                if key=="r" and keyDeb==false then
                        keyDeb=true
                        anim.firespin(mouse)
                        keyDeb=false
                end
                if key=="f" and keyDeb==false then
                        keyDeb=true
                        anim.firerage()
                        keyDeb=false
                end
                if key=="g" and keyDeb==false then
                        keyDeb=true
                        anim.firewave(mouse)
                        keyDeb=false
                end
                if key=="z" and keyDeb2==false then
                        keyDeb2=true
                        paths()
                end
                if key=="z" and keyDeb2==true then
                        keyDeb2=false
                        pathDeb=false
                        pcall(function() pathpart:remove() bp:remove() end)
                end
        end)
end) --mediafire