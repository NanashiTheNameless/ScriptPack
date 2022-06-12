Tool=Instance.new("HopperBin")
Tool.Name="Tank"
PlayerName=game:GetService("Players").LocalPlayer.Name
Player=game.Players:FindFirstChild(PlayerName)
CPlayer=Player.Character
Character=CPlayer
d=true
Throw=function()
        if d==false then return end
 
        Noob=Check()
        if Noob==nil then
                return
        end         
d=false
        coroutine.resume(coroutine.create(function(h) while d==false do Noob.Humanoid.PlatformStand=true wait() end h.PlatformStand=false end),Noob.Humanoid)
        local R=CPlayer.Torso["Right Shoulder"]
        local L=CPlayer.Torso["Left Shoulder"]
        local A=CPlayer.Animate
        A.Disabled=true
        CPlayer.Torso["Right Hip"].DesiredAngle=0
        CPlayer.Torso["Left Hip"].DesiredAngle=0
        R.CurrentAngle=1
        L.CurrentAngle=1
        R.DesiredAngle=1.6
        L.DesiredAngle=-1.6
        R.MaxVelocity=.4
        L.MaxVelocity=.4
        R.DesiredAngle=3.2
        L.DesiredAngle=-3.2
        c=CPlayer.Torso.Position
        vp=Instance.new("BodyPosition")
        vp.P=4500
        vp.D=50
        vp.maxForce=Vector3.new(5000000000,500000000000000,5000000000)
        vp.Parent=Noob.Torso
        g=Instance.new("BodyGyro")
        g.P=5000
        g.maxTorque=Vector3.new(5000000000,5000000000,5000000000)
        g.Parent=Noob.Torso
        g.cframe=CFrame.new(g.Parent.Position,g.Parent.Position-Vector3.new(0,500,0))
        Noob.Humanoid.PlatformStand=true
        click=false
        etick=time()
        ptick=tick()
        p=Instance.new("Sound")
        p.SoundId="http://www.roblox.com/asset/?id="..142539090
        p.Volume=1
        p.Parent=CPlayer.Head
        p:Play()
        diff=0
        while click==false do
                diff=diff+.043        vp.Parent.CFrame=CPlayer.Head.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,math.pi/2)+Vector3.new(0,2,0)
                g.cframe=vp.Parent.CFrame
                vp.position=CPlayer.Head.Position+Vector3.new(0,2,0)
                wait()
        end
        Noob.Humanoid.PlatformStand=false
        p:Remove()
        Lel={142539060,142539082,142539065}
        p=Instance.new("Sound")
        p.SoundId="http://www.roblox.com/asset/?id="..Lel[math.random(1,3)]
        p.Volume=1
        p.Parent=CPlayer.Head
        p:Play()
        game:GetService("Debris"):AddItem(g,4)
        vp:Remove()
        b=Instance.new("BodyVelocity")
        b.P=6000
        b.maxForce=Vector3.new(5000000,5000000,5000000)*50000000000
        b.velocity=(CPlayer.Torso.CFrame.lookVector*(40+diff*5)+Vector3.new(0,4+diff*2,0))
        R.DesiredAngle=.4
        L.DesiredAngle=-.4
        b.Parent=Noob.Torso
        game:GetService("Debris"):AddItem(b,.25)
        Noob.Humanoid:TakeDamage(2)
        A.Disabled=false
        ff=Instance.new("ForceField")
        --ff.Parent=Noob
        cc=Noob.Torso.Touched:connect(function(hit)
                if hit.Parent~=nil then
                boom=Instance.new("Explosion")
                boom.Parent=workspace
                boom.Position=Noob.Torso.Position
                s=Instance.new("Sound")
                s.Parent=Noob.Torso
                s.Pitch=0.6
                s.Volume=10
                s.SoundId="http://www.roblox.com/asset/?id=2101148"
                s:Play()
                        if hit.Parent.Name~=game.Players.LocalPlayer.Name and hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent~=Noob and hit.Parent:FindFirstChild("Torso")~=nil then
                if hit.Parent.Torso:FindFirstChild(":>")==nil then
                game:GetService("Debris"):AddItem(s,1)
                hit.Parent.Humanoid:TakeDamage(diff*20)
                ss=Instance.new("BodyVelocity")
                ss.Parent=hit.Parent.Torso
                ss.velocity=b.velocity/1+Vector3.new(0,5,0)
                ss.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                ss.Name=":>"
                game:GetService("Debris"):AddItem(ss,.33)
 
                sos=1
                if diff<=6 then
                        sos=153092249
                elseif diff>6 and diff<=12 then
                        sos=153092238
                elseif diff>12 and diff<=20 then
                        sos=153092227
                elseif diff>20 then
                        sos=153092217
                end
        p=Instance.new("Sound")
        p.SoundId="http://www.roblox.com/asset/?id="..sos
        p.Volume=1
        p.Pitch=1.1
        p.Parent=hit
        p:Play()
                hit.Parent.Humanoid.PlatformStand=true
                wait(1.5)
                hit.Parent.Humanoid.PlatformStand=false
                end
                end
                end
        end)
        wait(1.8)
        ff.Parent=nil
        cc:disconnect()
        Noob.Humanoid:TakeDamage(diff*5)
        d=true
end
onEq=function(mouse)
        mouse.Button1Down:connect(function() Throw() end)
        mouse.Button1Up:connect(function() click=true end)
end
Tool.Parent=Player.Backpack
Tool.Selected:connect(onEq)
 
Tool2=Instance.new("HopperBin")
Tool2.Name="632146P"
PlayerName=game:GetService("Players").LocalPlayer.Name
Player=game.Players:FindFirstChild(PlayerName)
CPlayer=Player.Character
Character=CPlayer
Check=function()
        local R=Ray.new(Character.Torso.Position,Character.Torso.CFrame.lookVector*450)
        painis={}
        lel=function(p)
                for i=1, #p do
                        table.insert(painis,p[i])
                        k=p[i]:children()
                        if #k>0 then
                                lel(k)
                        end
                end
        end
        lel(workspace:children())
        sos={}
        for _,v in pairs(painis) do
                if v:IsA("BasePart") then
                        if v.CanCollide==false or v.Parent==game.Players.LocalPlayer.Character then
                                table.insert(sos,v)
                        end
                end
        end
        par,loc=workspace:FindPartOnRayWithIgnoreList(R,sos)
        sos,painis=nil,nil
        if par~=nil then
                if par.Parent:FindFirstChild("Humanoid")~=nil then
                        if par.Parent:FindFirstChild("Torso")~=nil then
                                return par.Parent
                        end
                end
        end
        return nil
end
d=true
Throwe=function()
        if d==false then return end
 
        Noob=Check()
        if Noob==nil then
                return
        end         
        d=false
        coroutine.resume(coroutine.create(function(h) while d==false do Noob.Humanoid.PlatformStand=true wait() end h.PlatformStand=false end),Noob.Humanoid)
        local R=CPlayer.Torso["Right Shoulder"]
        local L=CPlayer.Torso["Left Shoulder"]
        local A=CPlayer.Animate
        A.Disabled=true
        CPlayer.Torso["Right Hip"].DesiredAngle=0
        CPlayer.Torso["Left Hip"].DesiredAngle=0
        R.CurrentAngle=1.3
        L.CurrentAngle=1.3
        R.DesiredAngle=1.6
        L.DesiredAngle=-1.6
        R.MaxVelocity=.4
        L.MaxVelocity=.4
        
        p=Instance.new("Sound")
        p.SoundId="http://www.roblox.com/asset/?id=166053356"
        p.Volume=1
        p.Pitch=.98
        p.Parent=CPlayer.Head
        p:Play()
        game:GetService("Debris"):AddItem(p,5)
        
        --body movers
        p1=Instance.new("BodyPosition")
        p1.P=5000
        p1.maxForce=Vector3.new(5000000000,500000000000000000,5000000000)
        p1.Parent=CPlayer.Torso
        p1.position=p1.Parent.Position
        g1=Instance.new("BodyGyro")
        g1.P=5000
        g1.D=100
        g1.maxTorque=Vector3.new(500000000,5000000000,5000000000)
        g1.Parent=CPlayer.Torso
        g1.cframe=CPlayer.Torso.CFrame
        
        p2=Instance.new("BodyPosition")
        p2.P=8000
        p2.D=200
        p2.maxForce=Vector3.new(50000000,500000000,50000000)
        p2.Parent=Noob.Torso
        p2.position=CPlayer.Head.Position+Vector3.new(0,1.5,0)
        g2=Instance.new("BodyGyro")
        g2.P=8000
        g2.D=100
        g2.maxTorque=Vector3.new(50000000000,50000000000,50000000000)
        g2.Parent=Noob.Torso
        g2.cframe=CPlayer.Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,math.pi/2)
        
        wait(.25)
        
        R.DesiredAngle=3.2
        L.DesiredAngle=-3.2
        spos=CPlayer.Torso.CFrame
 
        ids={166053373,166053380,166053392}
        p=Instance.new("Sound")
        p.SoundId="http://www.roblox.com/asset/?id="..ids[math.random(1,3)]
        p.Volume=1
        p.Pitch=1
        p.Parent=CPlayer.Head
        p:Play()
        game:GetService("Debris"):AddItem(p,5)
        
        wait(.25)
        
        didrun=false
        runtime=0
        expected=12
        CPlayer.Humanoid.PlatformStand=true
        cc=game:GetService("RunService").Stepped:connect(function()
                runtime=runtime+1
                p1.position=p1.position+Vector3.new(0,5,0)
                CPlayer.Torso.CFrame=CPlayer.Torso.CFrame+Vector3.new(0,5,0)
                p2.position=p2.position+Vector3.new(0,5,0)
                Noob.Torso.CFrame=CPlayer.Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,math.pi/2)+Vector3.new(0,7,0)
                bl=Instance.new("Part")
                bl.TopSurface=0 bl.BottomSurface=0
                bl.CanCollide=false
                bl.formFactor="Symmetric"
                m=Instance.new("SpecialMesh")
                m.MeshType="Brick"
                m.Scale=Vector3.new(.5,.5,.5)
                m.Parent=bl
                bl.Size=Vector3.new(1,1,1)
                bl.Anchored=false
                bl.Name="c"
                bl.CFrame=CPlayer.Torso.CFrame
                bl.BrickColor=BrickColor.new("Bright orange")
                bl.Parent=CPlayer
                coroutine.resume(coroutine.create(function(p) for i=1, 10 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.3,.3,.3) p.Transparency=.25+i*.075 wait() end p:Remove() end),bl)
                w=Instance.new("Weld")
                w.Part0=CPlayer["Left Arm"]
                w.Part1=bl
                w.C0=CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                w.Parent=w.Part1
                bl2=Instance.new("Part")
                bl2.TopSurface=0 bl2.BottomSurface=0
                bl2.CanCollide=false
                bl2.formFactor="Symmetric"
                m=Instance.new("SpecialMesh")
                m.MeshType="Brick"
                m.Scale=Vector3.new(.5,.5,.5)
                m.Parent=bl2
                bl2.Size=Vector3.new(1,1,1)
                bl2.Anchored=false
                bl2.Name="c"
                bl2.CFrame=CPlayer.Torso.CFrame
                bl2.BrickColor=BrickColor.new("Bright orange")
                bl2.Parent=CPlayer
                coroutine.resume(coroutine.create(function(p) for i=1, 10 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.3,.3,.3) p.Transparency=.25+i*.075 wait() end p:Remove() end),bl2)
                w=Instance.new("Weld")
                w.Part0=CPlayer["Right Arm"]
                w.Part1=bl2
                w.C0=CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                w.Parent=w.Part1
                if runtime>=expected then
                        didrun=true
                        cc:disconnect()
                end
        end)
        while didrun==false do
                wait()
        end
        
        didrun=false
        runtime=0
        expected=24
        CPlayer.Humanoid.PlatformStand=true
        cc=game:GetService("RunService").Stepped:connect(function()
                runtime=runtime+1
                p1.position=p1.position+Vector3.new(0,5-runtime*.6,0)
                CPlayer.Torso.CFrame=CPlayer.Torso.CFrame+Vector3.new(0,5-runtime*.6,0)
                p2.position=p2.position+Vector3.new(0,5-runtime*.6,0)
                Noob.Torso.CFrame=CPlayer.Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,math.pi/2)+Vector3.new(0,2,0)
                bl=Instance.new("Part")
                bl.TopSurface=0 bl.BottomSurface=0
                bl.CanCollide=false
                bl.formFactor="Symmetric"
                m=Instance.new("SpecialMesh")
                m.MeshType="Brick"
                m.Scale=Vector3.new(.5,.5,.5)
                m.Parent=bl
                bl.Size=Vector3.new(1,1,1)
                bl.Anchored=false
                bl.Name="c"
                bl.CFrame=CPlayer.Torso.CFrame
                bl.BrickColor=BrickColor.new("Bright orange")
                bl.Parent=CPlayer
                coroutine.resume(coroutine.create(function(p) for i=1, 10 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.3,.3,.3) p.Transparency=.25+i*.075 wait() end p:Remove() end),bl)
                w=Instance.new("Weld")
                w.Part0=CPlayer["Left Arm"]
                w.Part1=bl
                w.C0=CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                w.Parent=w.Part1
                bl2=Instance.new("Part")
                bl2.TopSurface=0 bl2.BottomSurface=0
                bl2.CanCollide=false
                bl2.formFactor="Symmetric"
                m=Instance.new("SpecialMesh")
                m.MeshType="Brick"
                m.Scale=Vector3.new(.5,.5,.5)
                m.Parent=bl2
                bl2.Size=Vector3.new(1,1,1)
                bl2.Anchored=false
                bl2.Name="c"
                bl2.CFrame=CPlayer.Torso.CFrame
                bl2.BrickColor=BrickColor.new("Bright orange")
                bl2.Parent=CPlayer
                coroutine.resume(coroutine.create(function(p) for i=1, 10 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.3,.3,.3) p.Transparency=.25+i*.075 wait() end p:Remove() end),bl2)
                w=Instance.new("Weld")
                w.Part0=CPlayer["Right Arm"]
                w.Part1=bl2
                w.C0=CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                w.Parent=w.Part1
                if runtime>=expected then
                        didrun=true
                        cc:disconnect()
                end
        end)
        while didrun==false do
                wait()
        end
        
        Noob.Humanoid:TakeDamage(66)
                bl2=Instance.new("Part")
                bl2.TopSurface=0 bl2.BottomSurface=0
                bl2.CanCollide=false
                bl2.formFactor="Symmetric"
                m=Instance.new("SpecialMesh")
                m.MeshId="http://www.roblox.com/asset/?id=20329976"
                m.Scale=Vector3.new(1,1,1)
                m.Parent=bl2
                bl2.Size=Vector3.new(1,1,1)
                bl2.Anchored=false
                bl2.Name="c"
                bl2.CFrame=CPlayer.Torso.CFrame-Vector3.new(0,2,0)
                bl2.BrickColor=BrickColor.new("White")
                bl2.Parent=CPlayer
                coroutine.resume(coroutine.create(function(p) for i=1, 10 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(8,0,8) p.Transparency=.25+i*.075 p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(5),0) wait() end p:Remove() end),bl2)
                bl2.Anchored=true
                
                bl2=Instance.new("Part")
                bl2.TopSurface=0 bl2.BottomSurface=0
                bl2.CanCollide=false
                bl2.formFactor="Symmetric"
                m=Instance.new("SpecialMesh")
                m.MeshId="http://www.roblox.com/asset/?id=20329976"
                m.Scale=Vector3.new(1,9,1)
                m.Parent=bl2
                bl2.Size=Vector3.new(1,1,1)
                bl2.Anchored=false
                bl2.Name="c"
                bl2.CFrame=CPlayer.Torso.CFrame+Vector3.new(0,2,0)
                bl2.BrickColor=BrickColor.new("White")
                bl2.Parent=CPlayer
                coroutine.resume(coroutine.create(function(p) for i=1, 18 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(1,-.5,1) p.Transparency=i/16 p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(5),0)-Vector3.new(0,.5,0) wait() end p:Remove() end),bl2)
                bl2.Anchored=true
        
        
        wait(.4)
        
        R.DesiredAngle=0
        L.DesiredAngle=0
                
        p1:Remove()
        g1:Remove()
        p2:Remove()
        game:GetService("Debris"):AddItem(g2,3)
        
        CPlayer.Humanoid.Jump=true
        CPlayer.Humanoid.PlatformStand=false
                
        b=Instance.new("BodyVelocity")
        b.P=4000
        b.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        --b.velocity=CPlayer.Torso.CFrame.lookVector*30+Vector3.new(0,5,0)
        b.velocity=CPlayer.Torso.CFrame.lookVector*1+Vector3.new(0,5000000,0)
        b.Parent=Noob.Torso
        game:GetService("Debris"):AddItem(b,.33)
        
        A.Disabled=false
        wait(1)
        Noob.Humanoid.PlatformStand=true
        d=true
end
onEq2=function(mouse)
        mouse.Button1Down:connect(function() Throwe() end)
end
Tool2.Parent=Player.Backpack
Tool2.Selected:connect(onEq2)