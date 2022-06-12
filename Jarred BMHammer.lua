--keys and controls because controls are weird xd
--[5:12:53 PM] jarredbcv: ww
--[5:12:55 PM] jarredbcv: awssd
--[5:12:57 PM] jarredbcv: assd
--[5:13:00 PM] jarredbcv: wasd
--[5:13:02 PM] jarredbcv: and
--[5:13:07 PM] jarredbcv: f
--to equip the hammer press Q 
--Enjoy! --Chromium
lp=game.Players.LocalPlayer
pl=lp.Character
mouse=lp:GetMouse()
mo=Instance.new("Model",pl)
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
bg = Instance.new("BodyGyro")
bg.P = 20e+003
bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
rad=math.rad
ca=CFrame.Angles
cf=CFrame.new
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
return p end
so = function(id,par,lo,pi,tm)
s = Instance.new("Sound",par) s.Looped=lo s.Pitch=pi
s.SoundId = "http://roblox.com/asset/?id="..id s:play() s.Volume=.1 game.Debris:AddItem(s,tm)  end
so2 = function(id,par,lo,pi,tm)
s = Instance.new("Sound",par) s.Looped=lo s.Pitch=pi
s.SoundId = id s:play() s.Volume=.1 game.Debris:AddItem(s,tm)  end
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
return wp end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
local w = Instance.new('Motor',par or p0)w.Part0 = p0 w.Part1 = p1
w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz) return w end
Mesh = function(par,num,x,y,z)
local msh = _
if num == 1 then msh = Instance.new("CylinderMesh",par)
elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
elseif num == 3 then msh = Instance.new("BlockMesh",par)
elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
end msh.Scale = Vector3.new(x,y,z)
return msh end
Tween = function(Weld, Stop, Step,a)
ypcall(function()local func = function()
local Start = Weld.C1 local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
local Stop = Stop local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
Spawn(function()for i = 0, 1, Step or .1 do wait()
Weld.C1 = cf( (Start.p.X * (1 - i)) + (Stop.p.X * i),(Start.p.Y * (1 - i)) + (Stop.p.Y * i),(Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * ca((X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),(Z1 * (1 - i)) + (Z2 * i) )
end Weld.C1 = Stop end) end if a then coroutine.wrap(func)() else func() end end)end

function ani(val)
    if val==true then
        lp = Part(.1,.1,.1,'',1,false,false,mo)
        rp = Part(.1,.1,.1,'',1,false,false,mo)
        hp = Part(.1,.1,.1,'',1,false,false,mo)
        lw = Weld(lp,pl.Torso,-1.5,.5,0,0,0,0,mo)
        rw = Weld(rp,pl.Torso,1.5,.5,0,0,0,0,mo)
        hw = Weld(hp,pl.Torso,0,2,0,0,0,0,mo)        
        Weld(pl['Right Arm'],rp,0,-.5,0,0,0,0,mo)
        Weld(pl['Left Arm'],lp,0,-.5,0,0,0,0,mo)
        Weld(pl.Head,hp,0,-.5,0,0,0,0,mo)
    else
        rp:Destroy()lp:Destroy()hp:Destroy()
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


function trail(pos,tim,col)
    Spawn(function()
        for i=1,tim do
        local oldpos=pos.CFrame.p wait()
        local newpos=pos.CFrame.p
        local mag = (oldpos-newpos).magnitude
        local a= Part(1,1,1,col,0,false,true,mo)
        local m= Mesh(a,1,1,mag,1)
        local hiter=a.Touched:connect(function(hit)
            if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= pl.Name and hitdeb==false then
        	   hitdeb=true
        	   hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-10
        	   so('46153268',hit.Parent,false,math.random(50,100)/100,1)
        	   wait(.1)
        	   hitdeb=false
        	end
	    end)
        gradient(a,a.BrickColor.Color,7,.5,0)
        a.CFrame=cf(oldpos,newpos)*cf(0,0,-mag/2)*ca(pi/2,0,0)
        Spawn(function()
            for i=1,10 do
                wait()
                m.Scale=m.Scale-Vector3.new(.1,0,.1)
            end
                wait(.5)
                hiter:disconnect()
                a:Destroy()
            end)
        end
    end)
end

function mgblock(pa,cfr,tm,col1,col2,sz,wa)
    local cols={col1,col2}
    Spawn(function()
        for i=1,tm do wait(wa)
            local a= Part(1,1,1,cols[math.random(1,2)],0,false,true,mo)
            v1,v2,v3=sz.x,sz.y,sz.z
            local m= Mesh(a,3,v1,v2,v3)
            a.CFrame=pa.CFrame*cfr*ca(math.random(),math.random(),math.random())
			gradient(a,BrickColor.new('Royal purple').Color,10,1,0)
            Spawn(function()
                while wait() do
                    if a.Transparency >= 1 then a:Destroy() break end
                    m.Scale=m.Scale-Vector3.new(.1,0.1,0.1)
                    a.CFrame=a.CFrame+Vector3.new(0,0.1,0)
                    a.Transparency=a.Transparency+0.05
                end
            end)
        end
    end)
end

function explosion(col1,col2,cfr,sz,rng,dmg)
    local a= Part(1,1,1,col1,.5,false,true,mo)
    local a2= Part(1,1,1,col2,.5,false,true,mo)
    local a3= Part(1,1,1,col2,.5,false,true,mo)
    v1,v2,v3=sz.x,sz.y,sz.z
    local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
    local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
    local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
    a.CFrame=cfr
    a2.CFrame=cfr*ca(math.random(),math.random(),math.random())
    a3.CFrame=cfr*ca(math.random(),math.random(),math.random())
    gradient(a,BrickColor.new('Royal purple').Color,20,1,0.05)
    so('2697431',a,false,.2,1)
    for i,v in pairs(workspace:children()) do
        if v:IsA("Model") and v:findFirstChild("Humanoid") then
            if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                if (v:findFirstChild("Torso").Position - a.Position).magnitude < rng and v.Name ~= pl.Name then
                    v.Humanoid.Health=v.Humanoid.Health-dmg
                    mgblock(v.Torso,cf(0,0,0),30,'Really black','Royal purple',Vector3.new(1.5,1.5,1.5),.1)
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

function hit(vl,parent,dmg)
    if vl==true then 
        dodmg=parent.Touched:connect(function(hit)
    	   if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= pl.Name and hitdeb==false then
    	       hitdeb=true
        	   hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-dmg
        	   so('46153268',hit.Parent,false,math.random(50,100)/100,1)
        	   wait(.1)
        	   hitdeb=false
            end
        end)
    else
        dodmg:disconnect()
    end
end

function bam()
    print'Shadow Bombs [Rave]'
    deb=true
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(150)),.1)
    Tween(rw,cf(1.5,.5,0)*ca(rad(120),0,rad(40)),.1)
    Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2+rad(30),pi/2+rad(50),0),.1)
    wait(.35)
    so('28144425',pl.Torso,false,.265,1)
    mgblock(pl['Left Arm'],cf(0,-1,0),5,'Really black','Royal purple',Vector3.new(1.5,1.5,1.5),.1)
    wait(.4)
    Tween(rw,cf(1.5,.5,0)*ca(rad(50),0,-rad(20)),.3)
    Tween(mwl,cf(0,-1,0)*ca(-pi/2-rad(50),pi/2,0),.3)
    Tween(lw,cf(-1.5,.5,0)*ca(rad(30),0,rad(20)),.3)
    wait(.15)
    so('63719813',pl.Torso,false,.525,1)
    local goto=pl.Torso.CFrame
    for i=1,10 do wait(.05)
        explosion('Really black','Royal purple',goto*cf(0,0,-i-i*2),Vector3.new(10,10,10),5,7)
    end
    Tween(rw,cf(1.5,.5,0)*ca(rad(10),rad(30),0),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
    Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2,pi/2,0),.1)
    wait(.35)
    deb=false
end

function lunge()
    print'Shadow lunge [Rave]'
    deb=true
    so('10209645',pl.Torso,false,1,1)
    Tween(rw,cf(1.5,.5,0)*ca(rad(50),0,-rad(60)),.1)
    Tween(mwl,cf(0,-1,0)*ca(-pi/2-rad(50),pi/2,0),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(rad(50),0,rad(60)),.1)
    wait(.35)
    so('62339698',pl.Torso,false,.3,1)
    Spawn(function()
        for i=1,7 do wait()
            local efx= Part(1,1,1,'Really black',.5,false,true,mo)
            local m= Mesh(efx,'http://www.roblox.com/asset/?id=20329976',3,1,3)
            efx.CFrame=pl.Torso.CFrame*ca(pi/2,0,0)
            Spawn(function()
                for i=1,7 do wait()
                    m.Scale=m.Scale+Vector3.new(.3,.1,.3)
                end
                efx:Destroy()
            end)
        end
    end)
    gradient(pl.Torso,BrickColor.new('Royal purple').Color,10,2,0)
    trail(pl.Torso,16,'Royal purple')
    mgblock(pl.Torso,cf(0,0,0),3,'Really black','Royal purple',Vector3.new(3,3,3),.1)
    local v = Instance.new("BodyVelocity",pl.Torso)
    v.maxForce = Vector3.new(1,1,1)*9e9
    v.P = 2000
    v.velocity = pl.Torso.CFrame.lookVector*60
    Tween(rw,cf(1.5,.5,-1)*ca(rad(50),0,-rad(60)),.2)
    Tween(lw,cf(-1.5,.5,-1)*ca(rad(50),0,rad(60)),.2)
    wait(.25)
    v:Destroy()
    Tween(rw,cf(1.5,.5,0)*ca(rad(50),0,-rad(60)),.2)
    Tween(lw,cf(-1.5,.5,0)*ca(rad(50),0,rad(60)),.2)
    wait(.25)
    Tween(rw,cf(1.5,.5,0)*ca(rad(10),rad(30),0),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
    Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2,pi/2,0),.1)
    wait(.35)
    deb=false
end

function bain()
    print'Shadow warp [Bain]'
    deb=true
    bloop=false
    Tween(lw,cf(-1.5,.5,0)*ca(rad(80),0,-rad(30)),.3)
    Tween(rw,cf(1.5,.5,0)*ca(rad(20),rad(30),rad(30)),.3)
    wait(.1)
    mgblock(pl['Left Arm'],cf(0,-1,0),5,'Really black','Royal purple',Vector3.new(1.5,1.5,1.5),.1)
    wait(.5)
    for i,v in pairs(workspace:children()) do
        if v:IsA("Model") and v:findFirstChild("Humanoid") then
            if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                if (v:findFirstChild("Torso").Position - pl.Torso.Position).magnitude < 6 and v.Name ~= pl.Name then
                    bp=Instance.new('BodyPosition',v.Torso)
                    bp.maxForce=Vector3.new(1e1000,1e1000,1e1000)
                    Spawn(function()
                        while wait() do
                            if bloop==true then break end
                            mgblock(v.Torso,cf(0,0,0),1,'Really black','Royal purple',Vector3.new(1.5,1.5,1.5),.1)
                            bp.position=pl.Torso.CFrame.p
                        end
                    end)
                    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(90)),.3)
                    Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(90)),.3)
                    wait(.2)
                    trail(pl['Right Arm'],30,'Royal purple')
                    trail(pl['Left Arm'],30,'Royal purple')
                    Spawn(function()
                        for i=1,20 do wait()
                            local efx= Part(1,1,1,'Really black',.5,false,true,mo)
                            local m= Mesh(efx,'http://www.roblox.com/asset/?id=20329976',3,1,3)
                            efx.CFrame=pl.Torso.CFrame
                            Spawn(function()
                                for i=1,7 do wait()
                                    m.Scale=m.Scale+Vector3.new(1,.2,1)
                                end
                                efx:Destroy()
                            end)
                        end
                    end)
                    local vs = Instance.new("BodyVelocity",pl.Torso)
                    vs.maxForce = Vector3.new(1,1,1)*9e9
                    vs.P = 2000
                    vs.velocity = Vector3.new(0,150,0)
                    local rv = Instance.new("BodyAngularVelocity",pl.Torso)
                    rv.maxTorque = Vector3.new(1,1,1)*9e9
                    rv.P = 5000
                    rv.angularvelocity = Vector3.new(0,200,0)
                    so('69935389',pl.Torso,false,.7,1)
                    wait(1)
                    pl.Torso.Anchored=true
                    wait(.3)
                    Tween(lw,cf(-1.5,.5,0)*ca(rad(90),0,rad(30)),.1)
                    Tween(rw,cf(1.5,.5,0)*ca(rad(90),0,-rad(30)),.1)
                    Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2+rad(90),pi/2,0),.1)
                    wait(.4)
                    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(90)),.3)
                    Tween(rw,cf(1.5,.5,0)*ca(0,0,rad(90)),.3)
                    explosion('Really black','Royal purple',pl.Torso.CFrame,Vector3.new(30,30,30),30,30)
                    wait(.2)
                    bloop=true
                    v.Humanoid.Sit=true
                    vs:Destroy()
                    rv:Destroy()
                    pl.Torso.Anchored=false
					bp:Destroy()
                    Spawn(function() 
                        wait(1.5)
                        v.Humanoid.Jump=true
                    end)
                end
            end
        end
    end
    Tween(rw,cf(1.5,.5,0)*ca(rad(10),rad(30),0),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
    Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2,pi/2,0),.1)
    wait(.35)
    deb=false
end

function bain2()
    print'Shadow mite [Bain]'
    deb=true
    doo=false
    bloop=false
    Tween(lw,cf(-1.5,.5,0)*ca(rad(80),0,-rad(30)),.3)
    Tween(rw,cf(1.5,.5,0)*ca(rad(20),rad(30),rad(30)),.3)
    wait(.1)
    mgblock(pl['Left Arm'],cf(0,-1,0),5,'Really black','Royal purple',Vector3.new(1.5,1.5,1.5),.1)
    wait(.5)
    for i,v in pairs(workspace:children()) do
        if v:IsA("Model") and v:findFirstChild("Humanoid") then
            if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                if (v:findFirstChild("Torso").Position - pl.Torso.Position).magnitude < 6 and v.Name ~= pl.Name then
                    bp=Instance.new('BodyPosition',v.Torso)
                    bp.maxForce=Vector3.new(1e1000,1e1000,1e1000)
                    pl.Torso.Anchored=true
                    so2('rbxasset://sounds\\swordlunge.wav',pl.Torso,false,.5,1)
                    gotopos=pl.Torso.CFrame*CFrame.new(0,0,-20).p
                    Spawn(function()
                        while wait() do
                            if bloop==true then break end
                            if doo==true then
                                bp.position=pl.Torso.CFrame.p
                                mgblock(v.Torso,cf(0,0,0),1,'Really black','Royal purple',Vector3.new(1.5,1.5,1.5),.1)
                            else
                            mgblock(v.Torso,cf(0,0,0),1,'Really black','Royal purple',Vector3.new(1.5,1.5,1.5),.1)
                            bp.position=gotopos
                            end
                        end
                    end)
                    wait(.5)
                    Tween(rw,cf(1,.5,0)*ca(rad(100),0,-rad(40)),.1)
                    Tween(lw,cf(-1,.5,0)*ca(rad(100),0,rad(40)),.1)
                    Tween(mwl,cf(0,-1,-1.25)*ca(-pi/2-rad(10),pi/2-rad(30),0),.1)
                    wait(.35)
                    hit(true,hitb,20)
                    gradient(hitb,BrickColor.new('Royal purple').Color,10,1,0.05)
                    Spawn(function()
                        for i=1,5 do wait(0.05)
                        local efx= Part(1,1,1,'Black',.5,false,true,mo)
                        local m= Mesh(efx,'http://www.roblox.com/asset/?id=51177741',1,1,1)
                        efx.CFrame=hitb.CFrame*ca(0,-pi/2,0)
                        Spawn(function()
                            for i=1,7 do wait()
                                m.Scale=m.Scale+Vector3.new(.1,.1,.1)
                            end
                            efx:Destroy()
                            end)
                        end
                    end)
                    mgblock(hitb,cf(0,0,0),10,'Really black','Royal purple',Vector3.new(1,1,1),0)
                    so('10209645',pl.Torso,false,.6,1)
                    so('63719813',pl.Torso,false,.525,1)
                    trail(hitb,7,'Royal purple')
                    Tween(rw,cf(1,.5,0)*ca(rad(20),0,-rad(40)),.2)
                    Tween(lw,cf(-1,.5,0)*ca(rad(20),0,rad(40)),.2)
                    wait(.25)
                    hit(false)
                    local efx= Part(1,1,1,'Black',.5,false,false,mo)
                    efx.CFrame=pl.Torso.CFrame
                    local m= Mesh(efx,'http://www.roblox.com/asset/?id=58430372',3,3,3)
                    gradient(efx,BrickColor.new('Royal purple').Color,10,2,0)
                    trail(efx,16,'Royal purple')
                    mgblock(efx,cf(0,0,0),3,'Really black','Royal purple',Vector3.new(3,3,3),.1)
                    local psuh = Instance.new("BodyVelocity",efx)
                    psuh.maxForce = Vector3.new(1,1,1)*9e9
                    psuh.P = 2000
                    psuh.velocity = pl.Torso.CFrame.lookVector*60
                    wait(.25)
                    efx:Destroy()
                    explosion('Really black','Royal purple',v.Torso.CFrame,Vector3.new(15,15,15),20,30)
                    wait(.15)
                    doo=true
                    pl.Torso.Anchored=false
                    mgblock(pl.Torso,cf(0,0,0),30,'Really black','Royal purple',Vector3.new(10,10,10),0)
                    local vs = Instance.new("BodyVelocity",pl.Torso)
                    vs.maxForce = Vector3.new(1,1,1)*9e9
                    vs.P = 2000
                    vs.velocity = pl.Torso.CFrame.lookVector*60+Vector3.new(0,150,0)
                    local rv = Instance.new("BodyAngularVelocity",pl.Torso)
                    rv.maxTorque = Vector3.new(1,1,1)*9e9
                    rv.P = 5000
                    rv.angularvelocity = Vector3.new(0,200,0)
                    so('69935389',pl.Torso,false,.5,1)
                    Spawn(function()
                        for i=1,20 do wait()
                            local efx= Part(1,1,1,'Really black',.5,false,true,mo)
                            local m= Mesh(efx,'http://www.roblox.com/asset/?id=20329976',3,1,3)
                            efx.CFrame=pl.Torso.CFrame
                            Spawn(function()
                                for i=1,7 do wait()
                                    m.Scale=m.Scale+Vector3.new(1,.2,1)
                                end
                                efx:Destroy()
                            end)
                        end
                    end)
                    wait(1)
                    pl.Torso.Anchored=true
                    rv:Destroy()
                    wait(.5)
                    pl.Torso.Anchored=false
                    vs.velocity = Vector3.new(0,-200,0)
                    wait(1.5)
                    explosion('Really black','Royal purple',pl.Torso.CFrame,Vector3.new(100,100,100),50,100)
                    so('10730819',pl.Torso,false,1,1)
                    v:BreakJoints()
                    bloop=true
					vs:Destroy()
					bp:Destroy()
					pl.Torso.CFrame=pl.Torso.CFrame+Vector3.new(0,10,0)
                    for i=1, 30 do
                        local p= Part(math.random(15,35),math.random(15,35),math.random(4,5),workspace.Base.BrickColor.Color,0,true,true,mo)
                        p.Material=workspace.Base.Material
			            p.CFrame=cf(pl.Torso.CFrame.x+math.random(-i,i),0,pl.Torso.CFrame.z+math.random(-i,i))*ca(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)*ca(pi/2,0,0)
						p.TopSurface=workspace.Base.TopSurface
						p.RightSurface=workspace.Base.TopSurface
						p.LeftSurface=workspace.Base.TopSurface
						p.BottomSurface=workspace.Base.TopSurface
						p.FrontSurface=workspace.Base.TopSurface
						p.BackSurface=workspace.Base.TopSurface
			            game:GetService("Debris"):AddItem(p,5+i*.1)
			            if math.random(1,5)==5 then
				            coroutine.resume(coroutine.create(function(p) f=Instance.new("Smoke") f.Parent=p f.Size=15 f.RiseVelocity=0 f.Opacity=.025 wait(.1) f.Enabled=false wait(1) f:Remove() end),p)
			            end
		            end
					for i=1, 30 do wait()
                        local p= Part(math.random(1,5),math.random(1,5),math.random(1,5),workspace.Base.BrickColor.Color,0,true,false,mo)
						p:BreakJoints()
                        p.Material=workspace.Base.Material
			            p.CFrame=cf(pl.Torso.CFrame.x+math.random(-i,i),math.random(6,15),pl.Torso.CFrame.z+math.random(-i,i))*ca(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)*ca(pi/2,0,0)
						p.TopSurface=workspace.Base.TopSurface
						p.RightSurface=workspace.Base.TopSurface
						p.LeftSurface=workspace.Base.TopSurface
						p.BottomSurface=workspace.Base.TopSurface
						p.FrontSurface=workspace.Base.TopSurface
						p.BackSurface=workspace.Base.TopSurface
			            game:GetService("Debris"):AddItem(p,7+i*.1)
			            if math.random(1,5)==5 then
				            coroutine.resume(coroutine.create(function(p) f=Instance.new("Smoke") f.Parent=p f.Size=15 f.RiseVelocity=0 f.Opacity=.025 wait(.1) f.Enabled=false wait(1) f:Remove() end),p)
			            end
		            end
                end
            end
        end
    end
    Tween(rw,cf(1.5,.5,0)*ca(rad(10),rad(30),0),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
    Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2,pi/2,0),.1)
    wait(.35)
    deb=false
end

function block1()
    deb=true
    so('28257433',pl.Torso,false,.5,1)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(130)),.1)
    Tween(rw,cf(1.5,.5,0)*ca(rad(20),rad(30),rad(30)),.1)
    Tween(hw,cf(0,2,0)*ca(0,rad(90),0),.1)
    wait(.35)
    bg.Parent = pl.Torso
    isblocking=true
    pl.Humanoid.Name="God"
    local ff=Instance.new('ForceField',pl)
    last=ff
    Spawn(function()
        while true do
            if isblocking==false then break end
            pl.God.Health=100000000000
            pl.God.MaxHealth=100000000000
            last:Destroy()
            local ff=Instance.new('ForceField',pl)
            last=ff
            bg.cframe = CFrame.new(pl.Torso.Position,Vector3.new(mouse.Hit.p.x,pl.Torso.CFrame.p.y,mouse.Hit.p.z))*CFrame.Angles(0,-rad(90),0)
            local efx= Part(1,1,1,'Royal purple',.5,false,true,mo)
            local m= Mesh(efx,'http://www.roblox.com/asset/?id=176248871 ',1,1,1)
            efx.CFrame=pl['Left Arm'].CFrame*ca(pi/2,pi/1,-pi/2)*cf(0,0,-1)*ca(-rad(40),0,0)
            Spawn(function()
                for i=1,7 do wait()
                    m.Scale=m.Scale+Vector3.new(.2,.2,.2)
                end
                efx:Destroy()
            end)
            mgblock(pl['Left Arm'],cf(0,-1,0),1,'Really black','Royal purple',Vector3.new(1.6,1.6,1.6),.1)
            wait()
        end
    end)
    wait(.3)
    isblocking=true
end

function block2()
    so('28257433',pl.Torso,false,.5,1)
    bg.Parent = nil 
    isblocking=false
    last:Destroy()
    ypcall(function() pl.God.Name="Humanoid" end)
    pl.Humanoid.Health=100
    pl.Humanoid.MaxHealth=100
    Tween(rw,cf(1.5,.5,0)*ca(rad(10),rad(30),0),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
    Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2,pi/2,0),.1)
    Tween(hw,cf(0,2,0)*ca(0,0,0),.1)
    wait(.35)
    deb=false
end

function eq()
    deb=true
    so('31758934',pl.Torso,false,1,1)
    ani(true)
    Tween(rw,cf(1.5,.5,0)*ca(-rad(60),0,-rad(50)),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
    wait(.4)
    mwl.Part1 = pl['Right Arm']
    Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2,pi/2,0),.1)
    Tween(rw,cf(1.5,.5,0)*ca(rad(10),rad(30),0),.1)
    wait(.4)
    equi=true
    deb=false
end

function dc()
    deb=true
    equi=false
    so('31758934',pl.Torso,false,1,1)
    Tween(rw,cf(1.5,.5,0)*ca(-rad(60),0,-rad(50)),.1)
    Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
    wait(.3)
    Tween(mwl,cf(0,.5,.5)*ca(0,0,pi/3.5),.1)
    Tween(lw,cf(-1.5,.5,0),.1)
    Tween(rw,cf(1.5,.5,0),.1)
    wait(.3)
    mwl.Part1 = pl.Torso
    ani(false)
    deb=false
end

function checkbind()
    if #Key==2 and Key[1]==1 and Key[2]==1 then print(unpack(Key)) lunge() print'clean up' Key={} cleanup=sec*10 Spawn(function() wait() print'GO' end) end
    if #Key==4 and Key[1]==2 and Key[2]==3 and Key[3]==4 and Key[4]==1 then print(unpack(Key)) bam() print'clean up' Key={} cleanup=sec*10 Spawn(function() wait() print'GO' end) end
    if #Key==4 and Key[1]==2 and Key[2]==3 and Key[3]==3 and Key[4]==4 then print(unpack(Key)) bain() print'clean up' Key={} cleanup=sec*10 Spawn(function() wait() print'GO' end) end
    if #Key==5 and Key[1]==2 and Key[2]==1 and Key[3]==3 and Key[4]==3 and Key[5]==4 then print(unpack(Key)) bain2() print'clean up' Key={} cleanup=sec*10 Spawn(function() wait() print'GO' end) end
end

mpa= Part(.25,3,.25,'Really black',0,false,false,mo)
mwl= Weld(mpa,pl.Torso,0,.5,.5,0,0,pi/3.5,mo)
pa= Part(.4,1,.4,'Royal purple',0,false,false,mo)
wl= Weld(pa,mpa,0,-1,0,0,0,0,mo)
m= Mesh(pa,1,1,1,1)
pa= Part(.4,.5,.4,'Royal purple',0,false,false,mo)
wl= Weld(pa,mpa,0,1.25,0,0,0,0,mo)
m= Mesh(pa,1,1,1,1)
pa= Part(.5,.5,.5,'Royal purple',0,false,false,mo)
wl= Weld(pa,mpa,0,-1.5,0,pi/10,pi/4,0,mo)
pa= Part(.5,.5,.5,'Royal purple',0,false,false,mo)
wl= Weld(pa,mpa,0,-1.5,0,pi/5,pi/8,0,mo)
pa= Part(.4,.4,.4,'Royal purple',0,false,false,mo)
wl= Weld(pa,mpa,0,1.5,0,pi/10,pi/4,0,mo)
pa= Part(.4,.4,.4,'Royal purple',0,false,false,mo)
wl= Weld(pa,mpa,0,1.5,0,pi/5,pi/8,0,mo)
hitb= Part(.75,.76,.75,'Dark stone grey',0,false,false,mo)
wl= Weld(hitb,mpa,0,1.9,0,0,0,0,mo)
pa= Part(.75,.25,.75,'Royal purple',0,false,false,mo)
wl= Weld(pa,mpa,-.5,1.9,0,0,0,pi/2,mo)m= Mesh(pa,4,1,1,1)
pa= Part(.75,.5,.75,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,-.5,1.9,0,pi/2,0,pi/2,mo)m= Mesh(pa,4,1,1,1)
pa= wPart(.75,.2,.4,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,.2,2.375,0,0,pi/2,0,mo)
pa= wPart(.75,.2,.4,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,.2,1.9,.475,pi/2,pi/2,0,mo)
pa= wPart(.75,.2,.4,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,.2,1.9,-.475,-pi/2,pi/2,0,mo)
pa= wPart(.75,.2,.4,'Really black',0,false,false,mo)
wl= Weld(pa,mpa,.2,1.425,0,pi/1,pi/2,0,mo)
asd= Part(.1,1.13,1.13,'Royal purple',0,false,false,mo)
wl= Weld(asd,mpa,.5,1.9,0,0,0,0,mo)

function onKeyDown(key)
    key = key:lower()
    if deb==true then return end
    if key == "q" then a=not a
        if a then eq()else dc()end
    end
    if equi==true then
        if key == "w" then print'1' table.insert(Key,1) end
        if key == "a" then print'2' table.insert(Key,2) end
        if key == "s" then print'3' table.insert(Key,3) end
        if key == "d" then print'4' table.insert(Key,4) end
        if key == "f" then print'block' block1() end
    end
end
function onKeyUp(key)
    key = key:lower()
    if equi==true then
        if isblocking==true then
            if key == "f" then block2() end
        end
    end
end


function onClicked()
    if deb==true or equi==false then return end
    if swing==1 then deb=true
        Tween(rw,cf(1.5,.5,0)*ca(rad(120),0,rad(40)),.1)
        Tween(lw,cf(-1.5,.5,0)*ca(rad(20),0,rad(20)),.1)
        Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2+rad(30),pi/2+rad(50),0),.1)
        wait(.35)
        hit(true,hitb,15)
        so('10209645',pl.Torso,false,1,1)
        trail(hitb,7,'Royal purple')
        Tween(rw,cf(1.5,.5,0)*ca(rad(15),0,-rad(30)),.2)
        Tween(lw,cf(-1.5,.5,0)*ca(-rad(20),0,-rad(20)),.2)
        Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2-rad(10),pi/2+rad(20),0),.2)
        wait(.25)
        hit(false)
        Tween(rw,cf(1.5,.5,0)*ca(rad(10),rad(30),0),.1)
        Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
        Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2,pi/2,0),.1)
        wait(.35)
        swing=swing+1
        deb=false
        return
    elseif swing==2 then deb=true
        Tween(rw,cf(1.5,.5,0)*ca(rad(120),0,-rad(40)),.1)
        Tween(lw,cf(-1.5,.5,0)*ca(rad(20),0,rad(20)),.1)
        Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2+rad(30),pi/2-rad(50),0),.1)
        wait(.35)
        hit(true,hitb,15)
        so('10209645',pl.Torso,false,.9,1)
        trail(hitb,7,'Royal purple')
        Tween(rw,cf(1.5,.5,0)*ca(rad(15),0,rad(30)),.2)
        Tween(lw,cf(-1.5,.5,0)*ca(-rad(20),0,-rad(20)),.2)
        Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2-rad(10),pi/2-rad(20),0),.2)
        wait(.25)
        hit(false)
        Tween(rw,cf(1.5,.5,0)*ca(rad(10),rad(30),0),.1)
        Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
        Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2,pi/2,0),.1)
        wait(.35)
        swing=swing+1
        deb=false
        return
    elseif swing==3 then deb=true
        Tween(rw,cf(1,.5,0)*ca(rad(100),0,-rad(40)),.1)
        Tween(lw,cf(-1,.5,0)*ca(rad(100),0,rad(40)),.1)
        Tween(mwl,cf(0,-1,-1.25)*ca(-pi/2-rad(10),pi/2-rad(30),0),.1)
        wait(.35)
        hit(true,hitb,20)
        gradient(hitb,BrickColor.new('Royal purple').Color,10,1,0.05)
        Spawn(function()
            for i=1,5 do wait(0.05)
                local efx= Part(1,1,1,'Black',.5,false,true,mo)
                local m= Mesh(efx,'http://www.roblox.com/asset/?id=51177741',1,1,1)
                efx.CFrame=hitb.CFrame*ca(0,-pi/2,0)
                Spawn(function()
                    for i=1,7 do wait()
                        m.Scale=m.Scale+Vector3.new(.1,.1,.1)
                    end
                    efx:Destroy()
                end)
            end
        end)
        mgblock(hitb,cf(0,0,0),10,'Really black','Royal purple',Vector3.new(1,1,1),0)
        so('10209645',pl.Torso,false,.6,1)
        so('63719813',pl.Torso,false,.525,1)
        trail(hitb,7,'Royal purple')
        Tween(rw,cf(1,.5,0)*ca(rad(20),0,-rad(40)),.2)
        Tween(lw,cf(-1,.5,0)*ca(rad(20),0,rad(40)),.2)
        wait(.25)
        hit(false)
        Tween(rw,cf(1.5,.5,0)*ca(rad(10),rad(30),0),.1)
        Tween(lw,cf(-1.5,.5,0)*ca(0,0,-rad(20)),.1)
        Tween(mwl,cf(0,-1,-0.5)*ca(-pi/2,pi/2,0),.1)
        wait(.35)
        swing=1
        deb=false
        return
    end
end

mouse.Button1Down:connect(function() onClicked(mouse) end)
mouse.KeyDown:connect(onKeyDown)
mouse.KeyUp:connect(onKeyUp)


Spawn(function()
    while wait(0) do
        checkbind()
        if equi==true then
            if cleanup > 0 then
                cleanup=cleanup-1
                if cleanup==0 then
                    print'clean up'
                    Key={}
                    cleanup=sec*10
                    Spawn(function()
                        wait()
                        print'GO'
                    end)
                end
            end
        end
    end
end)
