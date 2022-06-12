wait(.2)
lp=game.Players.LocalPlayer
pl=lp.Character
tor=pl.Torso
mouse=lp:GetMouse()

rw2=tor['Right Hip']
lw2=tor['Left Hip']


mo=Instance.new("Model",pl)

dednum=math.huge
pi=math.pi
Key={}
sec=5
cleanup=sec*10
a=false
deb=false
hitdeb=false
isblocking=false
swing=1
equi=false
smode='knife'
rad=math.rad
ca=CFrame.Angles
cf=CFrame.new
skull=30
bg = Instance.new("BodyGyro")
bg.P = 20e+003
bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
descro=pl

lwc1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
rwc1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)

Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    p.Locked=true
    p:BreakJoints()
    return p
end

so = function(id,par,lo,pi,tm)
    local s = Instance.new("Sound",par)
    s.Looped=lo
    s.Pitch=pi
    s.SoundId = "http://roblox.com/asset/?id="..id
    s:play()
    s.Volume=.1
    game.Debris:AddItem(s,tm)
    return s
end

so2 = function(id,par,lo,pi,tm)
    s = Instance.new("Sound",par)
    s.Looped=lo
    s.Pitch=pi
    s.SoundId = id
    s:play()
    s.Volume=.1
    game.Debris:AddItem(s,tm) 
end

wPart = function(x,y,z,color,tr,cc,an,parent)
    local wp = Instance.new('WedgePart',parent or Weapon)
    wp.formFactor = 'Custom'
    wp.Size = Vector3.new(x,y,z)
    wp.BrickColor = BrickColor.new(color)
    wp.CanCollide = cc
    wp.Transparency = tr
    wp.Locked=true
    wp.Anchored = an
    wp.TopSurface,wp.BottomSurface = 0,0
    wp:BreakJoints()
    return wp
end

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end

Mesh = function(par,num,x,y,z)
    local msh = nil
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Wedge"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

Tween = function(Weld, Stop, Step,a)
    ypcall(function()
        local func = function()
            local Start = Weld.C1
            local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
            local Stop = Stop
            local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
            Spawn(function()
                for i = 0, 1, Step or .1 do
                    wait()
                    Weld.C1 = cf( (Start.p.X * (1 - i)) + (Stop.p.X * i),(Start.p.Y * (1 - i)) + (Stop.p.Y * i),(Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * ca((X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),(Z1 * (1 - i)) + (Z2 * i) )
                end
                Weld.C1 = Stop
            end)
        end 
        if a then
            coroutine.wrap(func)()
        else
            func()
        end
    end)
end

Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude
    local curpos = Start
    local trz = {-Offset,Offset}
    Spawn(function()
        for i=1,Times do wait()
    		local li = Instance.new("Part",workspace)
    		li.TopSurface =0
    		li.BottomSurface = 0
    		li.Anchored = true
    		li.Transparency = Transparency or 0.4
    		li.BrickColor = Color
            li.formFactor = "Custom"
            li.CanCollide = false
            li.Size = Vector3.new(1,1,1)
            li.Material="Neon"
            Instance.new('BlockMesh',li).Scale = Vector3.new(Thickness,Thickness,magz/Times)
            local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
    		local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
            if Times == i then 
                local magz2 = (curpos - End).magnitude
                li.Mesh.Scale = Vector3.new(Thickness,Thickness,magz2)
                li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
            else
                li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
            end
            curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
            Spawn(function() for i=1,10 do
                wait()
                li.Transparency = li.Transparency+.1
                end li:Destroy() end)
        end
    end)
end

function ani(val)
    if val==true then
        la = Part(.1,.1,.1,'',0,false,false,mo)
        ra = Part(.1,.1,.1,'',0,false,false,mo)
        hp = Part(.1,.1,.1,'',1,false,false,mo)
        prj = Part(.1,.1,.1,'',1,false,false,mo)
        lw = Weld(la,pl.Torso,-1.5,.5,0,0,0,0,mo)
        rw = Weld(ra,pl.Torso,1.5,.5,0,0,0,0,mo)
        hw = Weld(hp,pl.Torso,0,2,0,0,0,0,mo)
        rj = Weld(prj,pl.HumanoidRootPart,0,0,0,0,0,0,mo)
        Weld(pl['Right Arm'],ra,0,-.5,0,0,0,0,mo)
        Weld(pl['Left Arm'],la,0,-.5,0,0,0,0,mo)
        Weld(pl.Torso,prj,0,0,0,0,0,0,mo)
        Weld(pl.Head,hp,0,-.5,0,0,0,0,mo)
    else
        ra:Destroy()la:Destroy()hp:Destroy()prj:Destroy()rw2.C1=rwc1 lw2.C1=lwc1
    end
end

function gradient(prnt,col,rng,brt,tm)
    local f=Instance.new('PointLight',prnt)
    f.Color=col
    f.Range=rng
    f.Brightness=brt
    Spawn(function()
        while wait(tm) do
            if f.Brightness <= 0 then f:Destroy() break end
            f.Brightness=f.Brightness-0.05
        end
    end)
end

function skul(v)
    if v:findFirstChild("Torso") ~= nil then
        for i=1,30 do
            local prt= Part(1,.2,1,'Black',0,true,false,workspace)
            prt.Material='Concrete'
            prt.CFrame=v.Torso.CFrame*CFrame.new(math.random(-30,30)/10,math.random(-20,30)/10,math.random(-20,20)/10)
            game.Debris:AddItem(prt,math.random(50,70)/10)
        end
        ypcall(function()v.Head.face:Destroy()end)
        local ms= Mesh(v.Head,'http://www.roblox.com/asset/?id=4770583',3.2,3.2,3.2)
        ms.TextureId='http://www.roblox.com/asset/?id=4770560'
        local ded=so('16433289',v.Head,false,1,1)
        ded.Volume=100
        for _,a in pairs(v:GetChildren()) do if a.Name ~= 'Head' and a.Name ~= 'Humanoid' then a:remove() end end
    end
end

function trail(pos,tim,col)
    Spawn(function()
        for i=1,tim do
        local oldpos=pos.CFrame.p wait()
        local newpos=pos.CFrame.p
        local mag = (oldpos-newpos).magnitude
        local a= Part(1,1,1,col,0,false,true,mo)
        local m= Mesh(a,1,.25,mag,.25)
        a.CFrame=cf(oldpos,newpos)*cf(0,0,-mag/2)*ca(pi/2,0,0)
        a.Material="Neon"
        Spawn(function()
            for i=1,10 do
                wait()
                m.Scale=m.Scale-Vector3.new(0.025,0,0.025)
            end
                wait(.5)
                a:Destroy()
            end)
        end
    end)
end

function mgblock(pa,cfr,tm,col1,col2,sz,wa)
    local cols={col1,col2}
    Spawn(function()
        for i=1,tm do
            local a= Part(1,1,1,cols[math.random(1,2)],0,false,true,mo)
            a.Material="Neon"
            curre=a
            v1,v2,v3=sz.x,sz.y,sz.z
            local m= Mesh(a,3,v1,v2,v3)
            a.CFrame=pa.CFrame*cfr*ca(math.random(),math.random(),math.random())
            Spawn(function()
                while wait() do
                    if a.Transparency >= 1 then a:Destroy() break end
                    m.Scale=m.Scale-Vector3.new(.1,0.1,0.1)
                    a.CFrame=a.CFrame+Vector3.new(0,0.1,0)
                    a.Transparency=a.Transparency+0.05
                end
            end)
            wait(wa)
        end
    end)
    return curre
end
function explosion(col1,col2,cfr,sz,rng,dmg)
    local a= Part(1,1,1,col1,.5,false,true,mo)
    local a2= Part(1,1,1,col2,.5,false,true,mo)
    local a3= Part(1,1,1,col2,.5,false,true,mo)
    a.Material="Neon"
    a2.Material="Neon"
    a3.Material="Neon"
    v1,v2,v3=sz.x,sz.y,sz.z
    local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
    local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
    local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
    a.CFrame=cfr
    a2.CFrame=cfr*ca(math.random(),math.random(),math.random())
    a3.CFrame=cfr*ca(math.random(),math.random(),math.random())
    so('219338733',a,false,1,1)
    for i,v in pairs(workspace:children()) do
        if v:IsA("Model") and v:findFirstChild("Humanoid") then
            if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                if (v:findFirstChild("Torso").Position - a.Position).magnitude < rng and v.Name ~= pl.Name then
                    v.Humanoid.Health=v.Humanoid.Health-dmg
                end
            end
        end
    end
    Spawn(function()
        while wait() do
            if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
            m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
            m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
            m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
            a.Transparency=a.Transparency+0.05
            a2.Transparency=a2.Transparency+0.05
            a3.Transparency=a3.Transparency+0.05
        end
    end)
end

function hit(tm,parent,dmg)
    local dodmg=parent.Touched:connect(function(hit)
        if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= pl.Name and hitdeb==false then
    	  hitdeb=true
    	  hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-dmg
    	  so('46153268',hit.Parent,false,math.random(50,100)/100,1)
    	  if hit.Parent.Humanoid.Health<=dednum then skul(hit.Parent) end
    	  wait(.1)
    	  hitdeb=false
    	end
    end)
    Spawn(function()
        wait(tm)
        dodmg:disconnect()
    end)
end

Lightning2 = function(Start,End,Times,Offset,Color,Thickness)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
		local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = 0 li.BrickColor = Color
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) li.Material="Neon"
		local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p Spawn(function() for i=1,10 do wait() li.Transparency = li.Transparency+.1 end li:Destroy() end)
    end
end


function tmdmg(tm,pa,dmg,rng)
        Spawn(function()
        for i=1,tm do wait()
            for i,v in pairs(workspace:children()) do
                if v:IsA("Model") and v:findFirstChild("Humanoid") then
                    if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                        if (v:findFirstChild("Torso").Position - pa.Position).magnitude < rng and v.Name ~= pl.Name then
                            v.Humanoid:TakeDamage(dmg)
                        end
                    end
                end
            end
        end
    end)
end

function stratle()
    Tween(rw,cf(1.5,.75,0)*ca(0,0,rad(120)),.2)
    so('206083107',tor,false,.7,1)
    Spawn(function()
        for i=1,7 do wait(.1)
	        for i=1,math.random(3,7) do
	            mgblock(dmnd,cf(math.random(-3,3),math.random(-3,3),math.random(-3,3)),2,'Lime green','White',Vector3.new(1,1,1),0)
	        end
        end
    end)
    wait(.2)
    mgblock(pl['Right Arm'],cf(0,-1,0),10,'Lime green','White',Vector3.new(1.5,1.5,1.5),0)
    so('200633433',tor,false,1,1)
    wait(1)
    Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(18)),.2)
    for i=1,3 do
        local pa= Part(1,1,1,'Lime green',0,false,true,workspace)
	    pa.Reflectance=1
	    pa.CFrame=dmnd.CFrame*CFrame.Angles(math.random(),math.random(),math.random())
	    local ms=Mesh(pa,'http://www.roblox.com/asset/?id=3270017',2,2,.02)
        Spawn(function()
            for i=1,20 do wait()
                pa.Reflectance=pa.Reflectance-.05
                pa.Transparency=pa.Transparency+.05
                ms.Scale=ms.Scale+Vector3.new(.5,.5,0)
            end
            pa:Destroy()
        end)
    end
    wait(.1)
    local goto=dmnd.Position+Vector3.new(0,1000,0)
    Lightning2(dmnd.Position,goto,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Lime green',2)
    so('219338923',tor,false,1,1)
    so('206083093',tor,false,1,1)
    wait(2)
    for i=1,math.random(4,7) do
        local start=dmnd.Position+Vector3.new(math.random(-50,50),1000,math.random(-50,50))
        local goto=mouse.Hit.p+Vector3.new(math.random(-15,15),1,math.random(-15,15))
        so('219339064',workspace,false,1,1)
        Lightning2(start,goto,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Lime green',.2)
        explosion('Really black','Lime green',CFrame.new(goto),Vector3.new(10,10,10),15,30)
        wait(math.random(1,10)/10)
    end
end


function plc()
    if x then
        Tween(lw,cf(-1,.5,-.5)*ca(rad(120),0,rad(45)),.2)
        Tween(rw,cf(1,.5,-.5)*ca(rad(120),0,-rad(45)),.2)
        so('206083107',tor,false,.7,1)
        wait(.4)
        so('206083107',tor,false,.5,1)
        Tween(lw,cf(-1,.5,-.5)*ca(rad(90),0,rad(45)),.4)
        Tween(rw,cf(1,.5,-.5)*ca(rad(90),0,-rad(45)),.4)
        Tween(rj,cf(0,-1.3,0)*ca(0,0,0),.4)
        Tween(rw2,rwc1*cf(-.75,-1.3,0),.4)
        Tween(lw2,lwc1*cf(0,-.7,0)*ca(0,0,-rad(60)),.4)
        wait(.5)
        mwl:Destroy()
        mpa.Anchored=true
        so('219338674',tor,false,1,1)
        for i=1,3 do
	        for i=1,math.random(3,7) do
	            mgblock(dmnd,cf(math.random(-3,3),math.random(-3,3),math.random(-3,3)),2,'Lime green','White',Vector3.new(1,1,1),0)
	        end
	        local pa= Part(1,1,1,'Lime green',0,false,true,workspace)
	        pa.Reflectance=1
	        pa.CFrame=dmnd.CFrame*CFrame.Angles(math.random(),math.random(),math.random())
	        local ms=Mesh(pa,'http://www.roblox.com/asset/?id=3270017',5,5,.02)
            Spawn(function()
                for i=1,20 do wait()
                    pa.Reflectance=pa.Reflectance-.05
                    pa.Transparency=pa.Transparency+.05
                    ms.Scale=ms.Scale+Vector3.new(.5,.5,0)
                end
                pa:Destroy()
            end)
        end
        wait(.1)
        Tween(mwl2,cf(0,-1,-0.2)*ca(-pi/2,0,0),.5)
        Tween(mowl3,cf(-0.0125,.9+.75,-0.075)*ca(0,0,pi/2),.1)
        Tween(mowl4,cf(0.0125,.9+.75,-0.075)*ca(pi/1,pi/1,pi/2),.1)
        Tween(mowl5,cf(0.0125,.9+.75,0.075)*ca(0,pi/1,pi/2),.1)
        Tween(mowl6,cf(-0.0125,.9+.75,0.075)*ca(pi/1,0,pi/2),.1)
        Tween(mowl7,cf(0,1.4+1.5,0),.1)
        Spawn(function()
            for i=1,5 do wait()
                mom3.Scale=mom3.Scale+Vector3.new(0.3,0,0)
                mom4.Scale=mom4.Scale+Vector3.new(0.3,0,0)
                mom5.Scale=mom5.Scale+Vector3.new(0.3,0,0)
                mom6.Scale=mom6.Scale+Vector3.new(0.3,0,0)
            end
        end)
        smode='sword'
        so('219339134',tor,false,1,1)
        --Tween(mwl,cf(0,-1,0)*ca(-pi/2,pi/2,0),.1)
        Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(18)),.1)
        Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(18)),.1)
        Tween(rj,cf(0,0,0)*ca(0,0,0),.2)
        Tween(rw2,rwc1,.2)
        Tween(lw2,lwc1,.2)
    else
        for i=1,10 do wait()
            for _,v in pairs(mo:GetChildren()) do if v.ClassName=="Part" then v.Reflectance=v.Reflectance-.1 v.Transparency=v.Transparency+.1 end end
        end
        mpa.Anchored=false
        mwl= Weld(mpa,pl['Right Arm'],0,-1,0,-pi/2,0,0,mo)
        for i=1,10 do wait()
            for _,v in pairs(mo:GetChildren()) do if v.ClassName=="Part" then v.Reflectance=v.Reflectance+.1 v.Transparency=v.Transparency-.1 end end
        end
        Tween(mwl2,cf(0,-1,-0.2)*ca(-pi/2,0,0),.5)
        Tween(mowl3,cf(-0.0125,.9,-0.075)*ca(0,0,pi/2),.2)
        Tween(mowl4,cf(0.0125,.9,-0.075)*ca(pi/1,pi/1,pi/2),.2)
        Tween(mowl5,cf(0.0125,.9,0.075)*ca(0,pi/1,pi/2),.2)
        Tween(mowl6,cf(-0.0125,.9,0.075)*ca(pi/1,0,pi/2),.2)
        Tween(mowl7,cf(0,1.4,0),.2)
        Spawn(function()
            for i=1,5 do wait()
                mom3.Scale=mom3.Scale-Vector3.new(0.3,0,0)
                mom4.Scale=mom4.Scale-Vector3.new(0.3,0,0)
                mom5.Scale=mom5.Scale-Vector3.new(0.3,0,0)
                mom6.Scale=mom6.Scale-Vector3.new(0.3,0,0)
            end
        end)
        so('206083252',tor,false,.9,1)
        for i=1,3 do
            for i=1,math.random(3,7) do
                mgblock(tp,cf(math.random(-3,3)/2,math.random(-3,3)/2,math.random(-3,3)/2),2,'Lime green','White',Vector3.new(.1,.1,.1),0)
            end
        end
        Tween(mwl2,cf(0,-1,0.2)*ca(pi/2,0,0),.1)
        smode='knife'
    end
end

function eq()
    deb=true
    so('31758934',pl.Torso,false,1,1)
    ani(true)
    Tween(rw,cf(1.5,.5,0)*ca(-rad(60),0,-rad(50)),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(-rad(60),0,rad(50)),.1)
    wait(.4)
    mwl.Part1 = pl['Right Arm']
    Tween(mwl,cf(0,-1,0)*ca(-pi/2,pi/2,0),.1)
    Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(18)),.1)
    mwl2.Part1 = pl['Left Arm']
    Tween(mwl2,cf(0,-1,0.2)*ca(pi/2,0,0),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(18)),.1)
    wait(.4)
    equi=true
    deb=false
end

function dc()
    deb=true
    equi=false
    so('31758934',pl.Torso,false,1,1)
    Tween(rw,cf(1.5,.5,0)*ca(-rad(60),0,-rad(50)),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(-rad(60),0,rad(50)),.1)
    wait(.4)
    mwl.Part1 = tor
    Tween(mwl,cf(0,0,0.5)*ca(0,0,rad(45)),.5)
    Tween(rw,cf(1.5,.5,0)*ca(0,0,0),.1)
    mwl2.Part1 = tor
    Tween(mwl2,cf(-.5,-1,.5)*ca(pi/2,0,-pi/2),.5)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,0),.1)
    wait(.4)
    ani(false)
    deb=false
end
mo=Instance.new("Model",pl)
mo.Name='s_Celestial'
-- staff
mpa= Part(1,1,1,'Black',0,false,false,mo)
Mesh(mpa,1,.15,4,.15)
mwl= Weld(mpa,tor,0,0,0.5,0,0,rad(45),mo)--0,-1,0,-pi/2,0,0
pa= Part(1,1,1,'New Yeller',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,1,.175,.75,.175)
wl= Weld(pa,mpa,0,0,0,0,0,0,mo)
pa= Part(1,1,1,'New Yeller',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,3,.175,.05,.175)
wl= Weld(pa,mpa,0,.375,0,0,0,0,mo)
pa= Part(1,1,1,'New Yeller',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,3,.175,.05,.175)
wl= Weld(pa,mpa,0,-.375,0,0,0,0,mo)
pa= Part(1,1,1,'Black',0,false,false,mo)
Mesh(pa,'http://www.roblox.com/asset/?id=1778999',.17,.2,.17)
wl= Weld(pa,mpa,0,-1.7,0,0,0,0,mo)
pa= Part(1,1,1,'New Yeller',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,1,.225,.2,.225)
wl= Weld(pa,mpa,0,-1.967,0,0,0,0,mo)
pa= Part(1,1,1,'New Yeller',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/asset/?id=1778999',.17,.2,.17)
wl= Weld(pa,mpa,0,-2.22,0,pi/1,0,0,mo)
pa= Part(1,1,1,'Lime green',0,false,false,mo)
pa.Material='Granite'
Mesh(pa,1,.1,.27,.1)
wl= Weld(pa,mpa,0,-1.967,0,pi/2,0,0,mo)
pa= Part(1,1,1,'Lime green',0,false,false,mo)
pa.Material='Granite'
Mesh(pa,1,.1,.27,.1)
wl= Weld(pa,mpa,0,-1.967,0,pi/2,0,pi/2,mo)
pa= Part(1,1,1,'New Yeller',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/asset/?id=1778999',.17,.2,.17)
wl= Weld(pa,mpa,0,1.7,0,pi/1,0,0,mo)
pa= Part(1,1,1,'New Yeller',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,1,.225,.2,.225)
wl= Weld(pa,mpa,0,1.967,0,0,0,0,mo)
pa= Part(1,1,1,'New Yeller',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/Asset/?id=9756362',.255,.05,.255)
wl= Weld(pa,mpa,0,2.05,0,0,rad(45),0,mo)
dmnd= Part(.25,.25,.25,'Lime green',1,false,false,mo)
dmndwl= Weld(dmnd,mpa,0,2.2,0,0,0,0,mo)
dmndp= Part(.25,.25,.25,'Lime green',0,false,false,mo)
dmndp.Material="Neon"
dmndpwl= Weld(dmndp,dmnd,0,0,0,rad(45),rad(45),rad(90),mo)
pa= Part(1,1,1,'Black',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/asset/?id=3270017',1.5,1.5,.2)
wl= Weld(pa,dmnd,0,0,0,0,0,0,mo)
pa= Part(1,1,1,'Black',0,false,false,mo)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/asset/?id=3270017',1.5,1.5,.2)
wl= Weld(pa,dmnd,0,0,0,0,pi/2,0,mo)
for i=1,3 do
    for i = 1, 360, 24 do
    	local pa= Part(.2,.2,.2,'New Yeller',0.5,false,false,mo)
    	m=Mesh(pa,'http://www.roblox.com/Asset/?id=9756362',.05,.1,.05)
    	pa.Material="Neon"
        pa.Reflectance=.75
    	local weld = Instance.new("Weld")
    	weld.Parent = mo
    	weld.Part0 = dmnd
    	weld.Part1 = pa
    	weld.C0 = CFrame.Angles(0,-rad(i),0) * CFrame.new(0.25*math.cos(rad(i/100)),-0.75,0.25*math.sin(rad(i/100))) * CFrame.Angles(0,0,pi/2)
    	local pa= Part(.2,.2,.2,'New Yeller',0.5,false,false,mo)
    	m=Mesh(pa,'http://www.roblox.com/Asset/?id=9756362',.05,.1,.05)
    	pa.Material="Neon"
        pa.Reflectance=.75
    	local weld = Instance.new("Weld")
    	weld.Parent = mo
    	weld.Part0 = dmnd
    	weld.Part1 = pa
    	weld.C0 = CFrame.Angles(0,0,-math.rad(i)) * CFrame.new(0.25*math.cos(math.rad(i/100)),0.25*math.sin(math.rad(i/100))-0.75,0)
    	local pa= Part(.2,.2,.2,'New Yeller',0.5,false,false,mo)
    	m=Mesh(pa,'http://www.roblox.com/Asset/?id=9756362',.05,.1,.05)
    	pa.Material="Neon"
        pa.Reflectance=.75
    	local weld = Instance.new("Weld")
    	weld.Parent = mo
    	weld.Part0 = dmnd
    	weld.Part1 = pa
    	weld.C0 = CFrame.Angles(0,pi/2,-math.rad(i)) * CFrame.new(0.25*math.cos(math.rad(i/100)),0.25*math.sin(math.rad(i/100))-0.75,0)
    end
end
--knife
mo2=Instance.new('Model',pl)
mo2.Name='k_Celestial'
mpa2= Part(1,1,1,'Black',0,false,false,mo2)
Mesh(mpa2,1,.15,.75,.15)
mwl2= Weld(mpa2,tor,-.5,-1,.5,pi/2,0,-pi/2,mo2)--0,-1,-0.2,-pi/2,0,0
pa= Part(1,1,1,'New Yeller',0,false,false,mo2)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.175,.6,.175)
wl= Weld(pa,mpa2,0,0,0,rad(15),0,0,mo2)
pa= Part(1,1,1,'New Yeller',0,false,false,mo2)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.175,.6,.175)
wl= Weld(pa,mpa2,0,0,0,-rad(15),0,0,mo2)
pa= Part(1,1,1,'New Yeller',0,false,false,mo2)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.175,.6,.175)
wl= Weld(pa,mpa2,0,0,0,rad(15),pi/2,0,mo2)
pa= Part(1,1,1,'New Yeller',0,false,false,mo2)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.175,.6,.175)
wl= Weld(pa,mpa2,0,0,0,-rad(15),pi/2,0,mo2)
pa= Part(1,1,1,'Black',0,false,false,mo2)
Mesh(pa,'http://www.roblox.com/asset/?id=1778999',.17,.2,.17)
wl= Weld(pa,mpa2,0,-.25,0,0,0,0,mo2)
pa= Part(1,1,1,'New Yeller',0,false,false,mo2)
pa.Reflectance=.75
Mesh(pa,1,.225,.2,.225)
wl= Weld(pa,mpa2,0,-.515,0,0,0,0,mo2)
pa= Part(1,1,1,'New Yeller',0,false,false,mo2)
pa.Reflectance=.75
Mesh(pa,'http://www.roblox.com/asset/?id=1778999',.17,.2,.17)
wl= Weld(pa,mpa2,0,-.775,0,pi/1,0,0,mo2)
pa= Part(1,1,1,'Lime green',0,false,false,mo2)
pa.Material='Granite'
Mesh(pa,1,.1,.27,.1)
wl= Weld(pa,mpa2,0,-.515,0,pi/2,0,0,mo2)
pa= Part(1,1,1,'Lime green',0,false,false,mo2)
pa.Material='Granite'
Mesh(pa,1,.1,.27,.1)
wl= Weld(pa,mpa2,0,-.515,0,pi/2,0,pi/2,mo2)
pa= Part(1,1,1,'Black',0,false,false,mo2)
mom1=Mesh(pa,3,.5,.15,.15)
mowl1= Weld(pa,mpa2,0,.5,-0.15,0,pi/2,rad(45),mo2)
pa= Part(1,1,1,'Black',0,false,false,mo2)
mom2=Mesh(pa,3,.5,.15,.15)
mowl2= Weld(pa,mpa2,0,.5,0.15,0,pi/2,-rad(45),mo2)
pa= Part(1,1,1,'Lime green',0,false,false,mo2)
pa.Reflectance=.75
mom3=Mesh(pa,4,1,.025,.15)
mowl3= Weld(pa,mpa2,-0.0125,.9,-0.075,0,0,pi/2,mo2)
pa= Part(1,1,1,'Lime green',0,false,false,mo2)
pa.Reflectance=.75
mom4=Mesh(pa,4,1,.025,.15)
mowl4= Weld(pa,mpa2,0.0125,.9,-0.075,pi/1,pi/1,pi/2,mo2)
pa= Part(1,1,1,'Lime green',0,false,false,mo2)
pa.Reflectance=.75
mom5=Mesh(pa,4,1,.025,.15)
mowl5= Weld(pa,mpa2,0.0125,.9,0.075,0,pi/1,pi/2,mo2)
pa= Part(1,1,1,'Lime green',0,false,false,mo2)
pa.Reflectance=.75
mom6=Mesh(pa,4,1,.025,.15)
mowl6= Weld(pa,mpa2,-0.0125,.9,0.075,pi/1,0,pi/2,mo2)
tp= Part(1,1,1,'Lime green',0,false,false,mo2)
tp.Reflectance=.75
Mesh(tp,'http://www.roblox.com/Asset/?id=9756362',.035,.5,.2)
mowl7= Weld(tp,mpa2,0,1.4,0,0,0,0,mo2)
--pa.Material='Granite'

function onKeyDown(key)
    key = key:lower()
    if deb==true then return end
    if key == "q" then a=not a
        if a then eq()else dc()end
    elseif key == "x" then
        if equi==false then return end
        x=not x
        plc()
    elseif key == "c" then
        if equi==false or smode=='knife' then return end
        c=c
        stratle()
    end
end

--so('62777105',tor,false,1)
function onClicked()
    if equi==false or deb==true then return end
    if smode=='knife' then deb=true
        Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(90)),.2)
        wait(.3)
        trail(tp,7,'White')
        tmdmg(10,tp,4,2)
        so('206083107',tor,false,.9,1)
        Tween(lw,cf(-1.5,.5,0)*ca(0,-rad(90),-rad(90)),.2)
        Tween(rj,cf(0,0,0)*ca(0,-rad(90),0),.2)
        Tween(hw,cf(0,2,0)*ca(0,rad(90),0),.2)
        wait(.3)
        Tween(mwl2,cf(0,-1,-0.2)*ca(-pi/2,0,0),.5)
        wait(.05)
        tmdmg(10,tp,4,2)
        so('206083107',tor,false,.7,1)
        Tween(lw,cf(-1.5,.5,0)*ca(0,rad(30),-rad(90)),.2)
        wait(.001)
        trail(tp,7,'White')
        wait(.3)
        so('206083107',tor,false,.5,1)
        Tween(rj,cf(0,0,0)*ca(0,rad(90),0),.2)
        Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(90)),.2)
        Tween(mwl,cf(0,-1,0)*ca(-pi/1,pi/2,0),.2)
        Tween(hw,cf(0,2,0)*ca(0,-rad(90),0),.2)
        wait(.3)
        for i=1,5 do
        so('206083293',tor,false,1,100)
        end
        for i,v in pairs(workspace:children()) do
            if v:IsA("Model") and v:findFirstChild("Humanoid") then
                if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                    if (v:findFirstChild("Torso").Position - dmnd.Position).magnitude < 8 and v.Name ~= pl.Name then
                        for i=1,5 do wait()
                            local goto=v.Torso.Position+Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
                            Lightning(dmnd.Position,goto,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Lime green',.1)
                        v.Humanoid:TakeDamage(4)
                        end
                    end
                end
            end
        end
        Tween(mwl,cf(0,-1,0)*ca(-pi/2,pi/2,0),.1)
        Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(18)),.1)
        Tween(mwl2,cf(0,-1,0.2)*ca(pi/2,0,0),.1)
        Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(18)),.1)
        Tween(rj,cf(0,0,0)*ca(0,0,0),.2)
        Tween(hw,cf(0,2,0)*ca(0,0,0),.2)
        wait(.3)
        deb=false
    elseif smode=='sword' then
        deb=true
        Tween(lw,cf(-1.5,.5,0)*ca(rad(120),0,-rad(40)),.3)
        Tween(rw,cf(1.5,.5,0)*ca(rad(20),0,rad(20)),.3)
        wait(.18)
        so('206083107',pl.Torso,false,.6,1)
        trail(tp,7,'White')
        tmdmg(10,tp,4,2)
        Tween(lw,cf(-1.5,.5,0)*ca(rad(15),0,rad(30)),.3)
        Tween(rw,cf(1.5,.5,0)*ca(-rad(20),0,rad(20)),.3)
        wait(.18)
        Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(18)),.3)
        Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(18)),.3)
        wait(.18)
        Tween(lw,cf(-1.5,.5,0)*ca(rad(120),0,rad(40)),.3)
        Tween(rw,cf(1.5,.5,0)*ca(rad(20),0,rad(20)),.3)
        wait(.18)
        so('206083107',pl.Torso,false,.45,1)
        trail(tp,7,'White')
        tmdmg(10,tp,4,2)
        Tween(lw,cf(-1.5,.5,0)*ca(rad(15),0,-rad(30)),.3)
        Tween(rw,cf(1.5,.5,0)*ca(-rad(20),0,rad(20)),.3)
        wait(.18)
        Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(18)),.3)
        Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(18)),.3)
        wait(.18)
        Tween(rw,cf(1.5,.5,0)*ca(0,-rad(30),rad(90)),.3)
        its=so('219338993',pl.Torso,false,1,3)
        for i=1,15 do wait(.1)
            local goto=mgblock(pl['Right Arm'],cf(0,-1,0),2,'Lime green','White',Vector3.new(1.5,1.5,1.5),0)
            Lightning2(dmnd.Position,goto.Position,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Lime green',.2)
        end
        mgblock(pl['Right Arm'],cf(0,-1,0),7,'Lime green','White',Vector3.new(1.5,1.5,1.5),0)
        Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(90)),.3)
        Tween(rj,cf(0,0,0)*ca(0,rad(90),0),.3)
        Tween(hw,cf(0,2,0)*ca(0,-rad(90),0),.3)
        wait(.3)
        its:Stop()
        explosion('Really black','Lime green',pl['Right Arm'].CFrame*CFrame.new(0,-2,0),Vector3.new(5,5,5),10,20)
        Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(18)),.1)
        Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(18)),.1)
        Tween(rj,cf(0,0,0)*ca(0,0,0),.2)
        Tween(hw,cf(0,2,0)*ca(0,0,0),.2)
        wait(.3)
        deb=false
    end
end

mouse.Button1Down:connect(function() onClicked(mouse) end)
mouse.KeyDown:connect(onKeyDown)
