plr=game:service'Players'.LocalPlayer
ch=plr.Character
ch.Humanoid.WalkSpeed=30
torso=ch.Torso
m=plr:GetMouse()
cfn=CFrame.new
mr=math.rad
ang=CFrame.Angles
int=Instance.new

loaded=6
ammo=36

sheath=false


if ch:findFirstChild('Scattergun') then
    ch.Scattergun:Destroy()
end

local shoot=int("Sound",ch.Head)
shoot.SoundId='http://www.roblox.com/asset?id=148358346'
shoot.Volume=1

local click=int("Sound",ch.Head)
click.SoundId='http://www.roblox.com/asset?id=138089340'
click.Volume=1
click.Pitch=1.4

local bonk=int("Sound",ch.Head)
bonk.SoundId='http://www.roblox.com/asset?id=130944130'
bonk.Volume=1

local hedshot=int("Sound",ch.Head)
hedshot.SoundId='http://www.roblox.com/asset?id=147936251'
hedshot.Volume=1

local hit=int("Sound",ch.Head)
hit.SoundId='http://www.roblox.com/asset?id=131864673'
hit.Volume=1

game:service'ContentProvider':Preload(shoot.SoundId)
game:service'ContentProvider':Preload(click.SoundId)
game:service'ContentProvider':Preload(bonk.SoundId)

local tube=Instance.new("Model",ch)
tube.Name='Scattergun'

function weld(p0,p1,c0)--basic weld function
	local w=Instance.new("Weld",p0)
	w.Part0=p0
	w.Part1=p1
	w.C0=c0
	return w
end

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)--recommend to use this with my weld. use this function only with arm lockers.
    p0.Position = p1.Position
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p1
    w.Part1 = p0
    w.C0 = CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(rx or 0,ry or 0,rz or 0)
    w.MaxVelocity = .1
    return w
end


function cp(parent,color,size,anchored,cancollide)--creates a part. automagically returns the part so you can edit it manually.
	local newp=Instance.new("Part",parent)
	newp.TopSurface='Smooth'
	newp.BottomSurface='Smooth'
	newp.FormFactor="Custom"
	newp.BrickColor=BrickColor.new(color)
	newp.Size=size
	newp.Anchored=anchored
	newp.CanCollide=cancollide
	newp:BreakJoints()
	return newp
end

Tween = function(Weld, Stop, Step,a)--epik tween function. simple, no lag, awesome.
ypcall(function()--- TweenWeld function (not made by me)
    local func = function()
        local Start = Weld.C1
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Weld.C1 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Weld.C1 = Stop
    end
        
        if a then coroutine.wrap(func)() else func() end
end)
end

rabr = cp(tube,'White',Vector3.new(1,1,1),false,false) rabr.Transparency = 1 rabr.Name='Locker'
rabr.Position = torso.Position
rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = tube rw.Name = 'rw'
w = Instance.new("Weld",tube)
w.Part0,w.Part1 = ch['Right Arm'],rabr
w.C1 = CFrame.new(0,-.5,0)

labr = cp(tube,'White',Vector3.new(1,1,1),false,false) labr.Transparency = 1 labr.Name='Locker'
labr.Position = torso.Position
lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = tube lw.Name = 'lw'
ww = Instance.new("Weld",tube)
ww.Part0,ww.Part1 = ch['Left Arm'],labr
ww.C1 = CFrame.new(0,-.5,0)


local shaft=cp(tube,"Brown",Vector3.new(1,1,1))
shaft.Material='Wood'
mw=weld(ch['Right Arm'],shaft,CFrame.new(0,-1.9,-1)*ang(mr(-45),mr(-14),0))
local blk=int('BlockMesh',shaft)
blk.Scale=Vector3.new(0.5,0.2,1)

local shaft2=cp(tube,"Brown",Vector3.new(1,1,1))
weld(shaft,shaft2,CFrame.new(0,0,-0.65)*ang(mr(-90),0,0))
shaft2.Material="Wood"
local blk=int('SpecialMesh',shaft2)
blk.MeshType='Wedge'
blk.Scale=Vector3.new(0.5,0.3,0.2)

--[[
local shaft3=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
weld(shaft,shaft3,CFrame.new(0,1,-0.65)*ang(mr(45),0,0)*CFrame.new(0,0,0)*ang(0,mr(30),0))
local blk=int('SpecialMesh',shaft3)
blk.MeshType='Wedge'
blk.Scale=Vector3.new(0.5,0.2,0.2)
]]

local cyla=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
Instance.new("CylinderMesh",cyla).Scale=Vector3.new(0.71,0.5,0.71)
cyla.Reflectance=0.2
weld(shaft,cyla,CFrame.new(0,0.094,0.59)*ang(mr(90),0,0))
local bh=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
weld(cyla,bh,CFrame.new(0,0.5,0))
bh.Reflectance=0.2
local blk=int('BlockMesh',bh)
blk.Scale=Vector3.new(0.23,0.5,0.32)
local bh2=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
weld(bh,bh2,CFrame.new(0,0.27,0.02)*ang(mr(16),0,0))
bh2.Reflectance=0.2
local blk=int('BlockMesh',bh2)
blk.Scale=Vector3.new(0.23,0.2,0.32)
local bh3=cp(tube,"Brown",Vector3.new(1,1,1))
bh3.Material='Wood'
weld(bh,bh3,CFrame.new(0,0.5,0.1)*ang(mr(20),0,0))
local blk=int('BlockMesh',bh3)
blk.Scale=Vector3.new(0.23,0.4,0.32)
local bh4=cp(tube,"Black",Vector3.new(1,1,1))
weld(bh,bh4,CFrame.new(0,-0.1,0.27)*ang(0,0,0))
local blk=int('BlockMesh',bh4)
blk.Scale=Vector3.new(0.1,0.1,0.2)
local bh5=cp(tube,"Black",Vector3.new(1,1,1))
weld(bh4,bh5,CFrame.new(0,0.06,0.06)*ang(0,0,0))
local blk=int('BlockMesh',bh5)
blk.Scale=Vector3.new(0.1,0.2,0.1)
local bh5=cp(tube,"Black",Vector3.new(1,1,1))
weld(bh4,bh5,CFrame.new(0,0.3,0)*ang(mr(-20),0,0))
local blk=int('BlockMesh',bh5)
blk.Scale=Vector3.new(0.1,0.4,0.1)




local cyl=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
Instance.new("CylinderMesh",cyl).Scale=Vector3.new(0.25,1.46,0.25)
cyl.Reflectance=0.2
weld(shaft,cyl,CFrame.new(-0.12,0.21,-0.37)*ang(mr(90),0,0))
local cyl=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
Instance.new("CylinderMesh",cyl).Scale=Vector3.new(0.25,1.46,0.25)
cyl.Reflectance=0.2
weld(shaft,cyl,CFrame.new(0.12,0.21,-0.37)*ang(mr(90),0,0))

local cyl=cp(tube,"Really black",Vector3.new(1,1,1))
Instance.new("CylinderMesh",cyl).Scale=Vector3.new(0.18,1.48,0.18)
cyl.Reflectance=0.2
weld(shaft,cyl,CFrame.new(-0.12,0.21,-0.37)*ang(mr(90),0,0))
local cyl=cp(tube,"Really black",Vector3.new(1,1,1))
Instance.new("CylinderMesh",cyl).Scale=Vector3.new(0.18,1.48,0.18)
cyl.Reflectance=0.2
weld(shaft,cyl,CFrame.new(0.12,0.21,-0.37)*ang(mr(90),0,0))

local cyl1=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
Instance.new("BlockMesh",cyl1).Scale=Vector3.new(0.18,1.48,0.1)
cyl.Reflectance=0.2
weld(shaft,cyl1,CFrame.new(0,0.31,-0.37)*ang(mr(90),0,0))

local cylz=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
Instance.new("BlockMesh",cylz).Scale=Vector3.new(0.09,0.14,0.1)
cylz.Reflectance=0.2
weld(shaft,cylz,CFrame.new(0,0.37,-0.97)*ang(0,0,0))

local cyl=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
Instance.new("BlockMesh",cyl).Scale=Vector3.new(0.05,0.14,0.1)
cyl.Reflectance=0.2
weld(shaft,cyl,CFrame.new(0.06,0.37,0.135)*ang(0,0,0))
local cyl=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
Instance.new("BlockMesh",cyl).Scale=Vector3.new(0.05,0.14,0.1)
cyl.Reflectance=0.2
weld(shaft,cyl,CFrame.new(-0.06,0.37,0.135)*ang(0,0,0))

local hn=cp(tube,"Dark stone grey",Vector3.new(0.2,0.7,0.2))
hw=weld(torso,hn,CFrame.new(0.4,0.8,0.8)*ang(0,0,mr(135)))
Instance.new("CylinderMesh",hn)

local rng=cp(tube,"Really black",Vector3.new(0.3,0.2,0.3))
Instance.new("CylinderMesh",rng).Scale=Vector3.new(0.72,0.4,0.72)
weld(hn,rng,CFrame.new(0,0.3,0))
local rng=cp(tube,"Really black",Vector3.new(0.3,0.2,0.3))
Instance.new("CylinderMesh",rng).Scale=Vector3.new(0.72,0.4,0.72)
weld(hn,rng,CFrame.new(0,0.2,0))
local rng=cp(tube,"Really black",Vector3.new(0.3,0.2,0.3))
Instance.new("CylinderMesh",rng).Scale=Vector3.new(0.72,0.4,0.72)
weld(hn,rng,CFrame.new(0,0.1,0))
local rng=cp(tube,"Really black",Vector3.new(0.3,0.2,0.3))
Instance.new("CylinderMesh",rng).Scale=Vector3.new(0.72,0.4,0.72)
weld(hn,rng,CFrame.new(0,0,0))
local rng=cp(tube,"Really black",Vector3.new(0.3,0.2,0.3))
Instance.new("CylinderMesh",rng).Scale=Vector3.new(0.72,0.4,0.72)
weld(hn,rng,CFrame.new(0,-0.1,0))
local rng=cp(tube,"Really black",Vector3.new(0.3,0.2,0.3))
Instance.new("CylinderMesh",rng).Scale=Vector3.new(0.72,0.4,0.72)
weld(hn,rng,CFrame.new(0,-0.2,0))
local rng=cp(tube,"Really black",Vector3.new(0.3,0.2,0.3))
Instance.new("CylinderMesh",rng).Scale=Vector3.new(0.72,0.4,0.72)
weld(hn,rng,CFrame.new(0,-0.3,0))

local sph=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
sph.Reflectance=0.5
local ball=int("SpecialMesh",sph)
ball.MeshType='Sphere'
ball.Scale=Vector3.new(0.3,0.3,0.3)
weld(hn,sph,CFrame.new(0,-0.4,0))

local sph2=cp(tube,"Really blue",Vector3.new(1,1,1))
local ball=int("CylinderMesh",sph2)
ball.Scale=Vector3.new(0.31,0.07,0.31)
weld(sph,sph2,CFrame.new(0,0,0))

local c1=cp(tube,"Really blue",Vector3.new(1,1,1))
local ball=int("CylinderMesh",c1)
ball.Scale=Vector3.new(0.38,0.07,0.38)
weld(hn,c1,CFrame.new(0,0.4,0))

local c2=cp(tube,"Dark stone grey",Vector3.new(1,1.9,1))
c2.Reflectance=0.5
local ball=int("CylinderMesh",c2)
ball.Scale=Vector3.new(0.31,1,0.31)
weld(c1,c2,CFrame.new(0,1,0))
local c3=cp(tube,"Dark stone grey",Vector3.new(1,1,1))
c3.Reflectance=0.5
local ball=int("SpecialMesh",c3)
ball.MeshType='Sphere'
ball.Scale=Vector3.new(0.31,0.31,0.31)
weld(c2,c3,CFrame.new(0,1,0))





Tween(rw,cfn(0,0,0)*ang(mr(-45),mr(-30),0),0.3)
Tween(lw,cfn(-0.2,0.7,0.7)*ang(mr(-45),mr(30),0),0.3)

attacking=false
hds=false
createBullet=function()
    local radz=math.random(math.random(8,11),math.random(12,15))
    local asd=m.Hit.lookVector
    local vel=Vector3.new(math.random(2,radz),math.random(1,radz),math.random(1,radz))+asd*350
    print'sn'
    local b=cp(tube,"Black",Vector3.new(0.4,0.4,0.4))
    b.Name='bs'
    print'sn'
    local sp=int("SpecialMesh",b)
    sp.MeshType='Sphere'
    b.CFrame=cylz.CFrame
    b.Velocity=vel
    b.Touched:connect(function(p)
        if p.Name~='bs' and p.Parent~=tube then
            hit:Play()
        end
        if p.Name=='Head' then
            print'headshot'
            hedshot:Play()
            p.Parent.Humanoid:TakeDamage(14)
        end
        if p.Parent:findFirstChild("Humanoid") and p.Parent~=ch then
            p.Parent.Humanoid:TakeDamage(6)
            b:Destroy()
        elseif p.Parent:findFirstChild("Humanoid")==nil and p.Parent~=ch then
            if p.Name~='Base' and p.Name~='bs' and p:GetMass()<30 and p.Parent~=tube then
                p:Destroy()
                b:Destroy()
            end
        end
    end)
end

loadBullet=function()
    Tween(lw,cfn(0,0.6,0)*ang(mr(-68),mr(60),0),0.2)
        click:Play()
        loaded=loaded+1
        ammo=ammo-1
    Tween(lw,cfn(0,0.6,0)*ang(mr(-60),mr(60),0),0.2)
end

m.Button1Down:connect(function()
    if attacking==false and sheath==false and loaded>0 and sheath==false then
        loaded=loaded-1
        attacking=true
        Spawn(function()
            Tween(lw,cfn(-0.2,0.7,0.7)*ang(mr(-55),mr(30),0),0.4)
        end)
        Tween(rw,cfn(0,0,0)*ang(mr(-55),mr(-30),0),0.4)
        for i=1,4 do
            createBullet()
        end
        local shell=cp(workspace,"Really red",Vector3.new(0.2,0.2,0.4))
        shell.Position=cyla.Position
        shoot:Play()
        Spawn(function()
            Tween(lw,cfn(-0.2,0.7,0.7)*ang(mr(-45),mr(30),0),0.4)
        end)
        Tween(rw,cfn(0,0,0)*ang(mr(-45),mr(-30),0),0.4)
        wait(0.1)
        attacking=false
    elseif attacking==false and sheath==false and loaded<=0 and sheath==false then
        attacking=true
        Tween(rw,cfn()*ang(mr(-65),mr(-30),0),0.4)
        Tween(lw,cfn(0,0.6,0)*ang(mr(-60),mr(60),0),0.4)
        for i=1,6 do
            loadBullet()
        end
        Tween(rw,cfn(0,0,0)*ang(mr(-45),mr(-30),0),0.3)
        Tween(lw,cfn(-0.2,0.7,0.7)*ang(mr(-45),mr(30),0),0.3)
        attacking=false

    elseif attacking==false and sheath==true then
        attacking=true
        Tween(rw,cfn()*ang(mr(-146),mr(-45),mr(-45)),0.2)
        Tween(rw,cfn()*ang(mr(-26),mr(20),mr(-45)),0.2)
        Tween(rw,cfn()*ang(mr(-80),mr(-30),mr(-10)),0.1)
        attacking=false

    end


end)

deb=false

c2.Touched:connect(function(p)
    if sheath==true and attacking==true and deb==false then
        deb=true
        print'bonk'
        if p.Parent:findFirstChild('Humanoid') then
            p.Parent.Humanoid:TakeDamage(30)
            bonk:Play()
        end
        wait(1)
        deb=false
    end
end)

m.KeyDown:connect(function(k)
    if k=='r' and attacking==false then
        attacking=true
        Tween(rw,cfn()*ang(mr(-65),mr(-30),0),0.4)
        Tween(lw,cfn(0,0.6,0)*ang(mr(-60),mr(60),0),0.4)
        for i=1,6-loaded do
            loadBullet()
        end
        Tween(rw,cfn(0,0,0)*ang(mr(-45),mr(-30),0),0.3)
        Tween(lw,cfn(-0.2,0.7,0.7)*ang(mr(-45),mr(30),0),0.3)
        attacking=false
    elseif k=='q' and attacking==false and sheath==false then
        attacking=true
        Tween(lw,cfn(),0.2)
        Tween(rw,cfn()*ang(mr(30),mr(-30),0),0.1)
        mw:Destroy()
        mw=weld(ch.Torso,shaft,CFrame.new(0,-1,0.9)*ang(0,mr(90),0)*CFrame.new()*ang(mr(-30),0,0))
        Tween(rw,cfn()*ang(mr(-179),0,0),0.1)
        hw:Destroy()
        hw=weld(ch['Right Arm'],hn,CFrame.new(0,-0.9,-0.4)*ang(mr(-80),0,0))
        Tween(rw,cfn()*ang(mr(-80),mr(-30),mr(-10)),0.1)
        attacking=false
        sheath=true
    elseif k=='q' and attacking==false and sheath==true then
        attacking=true
        Tween(lw,cfn(),0.2)

        Tween(rw,cfn()*ang(mr(-179),0,0),0.1)
        hw:Destroy()
        hw=weld(torso,hn,CFrame.new(0.4,0.8,0.8)*ang(0,0,mr(135)))
        Tween(rw,cfn()*ang(mr(30),mr(-30),0),0.1)

        mw:Destroy()
        mw=weld(ch['Right Arm'],shaft,CFrame.new(0,-1.9,-1)*ang(mr(-45),mr(-14),0))
        
        Tween(rw,cfn(0,0,0)*ang(mr(-45),mr(-30),0),0.3)
        Tween(lw,cfn(-0.2,0.7,0.7)*ang(mr(-45),mr(30),0),0.3)
        attacking=false
        sheath=false
    end
end)