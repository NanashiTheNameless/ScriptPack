--[[LEGO]]--
--[[SM Commands]]--
local Adminlist={"SergeantSmokey"}
local Banlist={""}
local Commands={}
local IPs={}
--[[Settings]]--
local GuiMessage=true--[[Makes a GUI message instead of lame old messsage]]
local AddLocalPlayer=false--[[You need to run this in local script, it will add the player who is using this script.]]
local IntroGui=true--[[Enables a Introduction GUI]]
local Bubble=false--[[A chat bubble]]
local PrivateServer=false--[[Makes a private server]]
local Version=2.00
--[[Music IDs:
Wind Of Fjords:1015394
]]--
--[[Functions]]--
for i,v in pairs(script:GetChildren()) do
    pcall(function()
        if v.Name=="DSource" then
            v:remove()
        end
    end)
end
model=Instance.new("Model",game.Lighting)
model.Name="People"
model1=Instance.new("Model",model)
model1.Name="AFK"
function AddCommand(Command,Func)
    table.insert(Commands,{Command=Command,Func=Func})
end
function AddIP(player,ip)
        table.insert(IPs,{Name=player,IP=ip})
end
function Music(v)
        music=Instance.new("Sound",game.Workspace)
        music.Name="Sound;Admin"
        music.SoundId="http://www.roblox.com/asset/?id="..v
        music:Play()
end
function FindIP(Text,Speaker)
    for i,v in pairs(IPs) do
        if v.Name:lower():find(Text:lower())==1 then
            local H=Instance.new("Hint",Speaker.PlayerGui)
            H.Text=v.Name .. " - " .. v.IP
            game:service("Debris"):AddItem(H,5)
                        return
        end
    end
        H=Instance.new("Hint",Speaker.PlayerGui)
        H.Text="Could not find user!"
        game:service("Debris"):AddItem(H,2)
end
function SecIP(Text)
    for i,v in pairs(IPs) do
        if v.Name:lower():find(Text:lower())==1 then
            return v.IP
        end
    end
end
function Shutdown()
Instance.new("ManualSurfaceJointInstance",workspace)
end
function Hint(texts)
        coroutine.resume(coroutine.create(function()
                for i,v in pairs(game.Players:GetChildren()) do
                        a=Instance.new("ScreenGui",v.PlayerGui)
                        a.Name="Message"
                        b=Instance.new("Frame",a)
                        b.Size=UDim2.new(1,0,0.07,0)
                        b.BackgroundTransparency=0.5
                        b.BackgroundColor3=Color3.new(0,0,0)
                        c=Instance.new("TextLabel",b)
                        c.FontSize="Size14"
                        c.Position=UDim2.new(0.5,0,0.5,0)
                        c.TextColor3=Color3.new(1,1,1)
                                for tr=1,#texts do
                                        c.Text=texts:sub(1,tr)
                                        wait()
                                end
                        game:service("Debris"):AddItem(a,2)
                end
        end))
end
function PrintPlayers()
        Hint(#game.NetworkServer:GetChildren().." is amount of players")
end
function fWeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f)
        local funcw = Instance.new("Weld") 
        funcw.Name = zName 
        funcw.Parent = zParent 
        funcw.Part0 = zPart0 
        funcw.Part1 = zPart1 
        if (zCoco == true) then 
        funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
        else 
        funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
        end 
        return funcw 
end 
function Rpe(v,s,w,sp) 
        for i,v in pairs(sp(w[2])) do
                for c,b in pairs(sp(w[3])) do
                n1 = v.Name
                n2 = b.Name
                t1 = game.Players[n1].Character.Torso 
                t2 = game.Players[n2].Character.Torso 
                t2.Parent.Humanoid.PlatformStand = true 
                t1["Left Shoulder"]:Remove() 
                ls1 = Instance.new("Weld") 
                ls1.Parent = t1 
                ls1.Part0 = t1 
                ls1.Part1 = t1.Parent["Left Arm"] 
                ls1.C0 = CFrame.new(-1.5,0,0) 
                ls1.Name = "Left Shoulder" 
                t1["Right Shoulder"]:Remove() 
                rs1 = Instance.new("Weld")
                rs1.Parent = t1 
                rs1.Part0 = t1 
                rs1.Part1 = t1.Parent["Right Arm"] 
                rs1.C0 = CFrame.new(1.5,0,0) 
                rs1.Name = "Right Shoulder"
                --[[ t1["Left Hip"]:Remove() 
                lh1 = Instance.new("Weld") 
                lh1.Parent = t1 
                lh1.Part0 = t1 
                lh1.Part1 = t1.Parent["Left Leg"] 
                lh1.C0 = CFrame.new(-0.5,-2,0) 
                lh1.Name = "Left Hip" t1["Right Hip"]:Remove() 
                rh1 = Instance.new("Weld") rh1.Parent = t1 
                rh1.Part0 = t1 
                rh1.Part1 = t1.Parent["Right Leg"] 
                rh1.C0 = CFrame.new(0.5,-2,0) 
                rh1.Name = "Right Hip"]] 
                t2["Left Shoulder"]:Remove() 
                ls2 = Instance.new("Weld") 
                ls2.Parent = t2 
                ls2.Part0 = t2 
                ls2.Part1 = t2.Parent["Left Arm"] 
                ls2.C0 = CFrame.new(-1.5,0,0) 
                ls2.Name = "Left Shoulder" 
                t2["Right Shoulder"]:Remove() 
                rs2 = Instance.new("Weld") 
                rs2.Parent = t2 
                rs2.Part0 = t2 
                rs2.Part1 = t2.Parent["Right Arm"] 
                rs2.C0 = CFrame.new(1.5,0,0) 
                rs2.Name = "Right Shoulder" 
                t2["Left Hip"]:Remove() 
                lh2 = Instance.new("Weld") 
                lh2.Parent = t2 
                lh2.Part0 = t2 
                lh2.Part1 = t2.Parent["Left Leg"] 
                lh2.C0 = CFrame.new(-0.5,-2,0) 
                lh2.Name = "Left Hip" 
                t2["Right Hip"]:Remove() 
                rh2 = Instance.new("Weld") 
                rh2.Parent = t2 
                rh2.Part0 = t2 
                rh2.Part1 = t2.Parent["Right Leg"] 
                rh2.C0 = CFrame.new(0.5,-2,0) 
                rh2.Name = "Right Hip" 
                local d = Instance.new("Part") 
                d.TopSurface = 0 
                d.BottomSurface = 0 
                d.CanCollide = false 
                d.BrickColor = BrickColor.new("Medium stone grey") 
                d.Shape = "Ball" d.Parent = t1 
                d.Size = Vector3.new(1,1,1) 
                local dm = Instance.new("SpecialMesh") 
                dm.MeshType = "Sphere" 
                dm.Parent = d 
                dm.Scale = Vector3.new(0.4,0.4,0.4) 
                fWeld("weld",t1,t1,d,true,-0.2,-1.3,-0.6,0,0,0) 
                d2 = d:Clone() 
                d2.Parent = t1 
                fWeld("weld",t1,t1,d2,true,0.2,-1.3,-0.6,0,0,0) 
                local c = Instance.new("Part") 
                c.TopSurface = 0 c.BottomSurface = 0 
                c.CanCollide = false 
                c.BrickColor = BrickColor.new("Pastel brown") 
                c.Parent = t1 
                c.formFactor = "Custom" 
                c.Size = Vector3.new(0.4,1.3,0.4) 
                cm = Instance.new("CylinderMesh") 
                cm.Parent = c 
                a = fWeld("weld",t1,t1,c,true,0,-1,-0.52+(-c.Size.y/2),math.rad(-80),0,0) 
                c2 = d:Clone() 
                c2.BrickColor = BrickColor.new("Medium stone grey") 
                c2.Mesh.Scale = Vector3.new(0.4,0.62,0.4) 
                c2.Parent = t1 
                fWeld("weld",c,c,c2,true,0,0+(c.Size.y/2),0,math.rad(-10),0,0) 
                local bl = Instance.new("Part")
                bl.TopSurface = 0 
                bl.BottomSurface = 0 
                bl.CanCollide = false 
                bl.BrickColor = BrickColor.new("Pastel brown") 
                bl.Shape = "Ball" 
                bl.Parent = t2 
                bl.Size = Vector3.new(1,1,1) 
                local dm = Instance.new("SpecialMesh") 
                dm.MeshType = "Sphere" 
                dm.Parent = bl 
                dm.Scale = Vector3.new(1.2,1.2,1.2) 
                fWeld("weld",t2,t2,bl,true,-0.5,0.5,-0.6,0,0,0) 
                local br = Instance.new("Part") 
                br.TopSurface = 0 
                br.BottomSurface = 0 
                br.CanCollide = false 
                br.BrickColor = BrickColor.new("Pastel brown") 
                br.Shape = "Ball" 
                br.Parent = t2 
                br.Size = Vector3.new(1,1,1) 
                local dm = Instance.new("SpecialMesh") 
                dm.MeshType = "Sphere" 
                dm.Parent = br 
                dm.Scale = Vector3.new(1.2,1.2,1.2) 
                fWeld("weld",t2,t2,br,true,0.5,0.5,-0.6,0,0,0) 
                local bln = Instance.new("Part") 
                bln.TopSurface = 0 
                bln.BottomSurface = 0 
                bln.CanCollide = false 
                bln.Shape = "Ball" 
                bln.Parent = t2 
                bln.Size = Vector3.new(1,1,1) 
                local dm = Instance.new("SpecialMesh") 
                dm.MeshType = "Sphere" 
                dm.Parent = bln 
                dm.Scale = Vector3.new(0.2,0.2,0.2) 
                fWeld("weld",t2,t2,bln,true,-0.5,0.5,-1.2,0,0,0) 
                local brn = Instance.new("Part") 
                brn.TopSurface = 0 
                brn.BottomSurface = 0 
                brn.CanCollide = false
                brn.Shape = "Ball" 
                brn.Parent = t2 
                brn.Size = Vector3.new(1,1,1) 
                local dm = Instance.new("SpecialMesh") 
                dm.MeshType = "Sphere" 
                dm.Parent = brn 
                dm.Scale = Vector3.new(0.2,0.2,0.2) 
                fWeld("weld",t2,t2,brn,true,0.5,0.5,-1.2,0,0,0) 
                lh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,-0.4,0) 
                rh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,0.4,0) 
                ls2.C1 = CFrame.new(-0.5,-1.3,-0.5) *CFrame.Angles(0.9,-0.4,0) 
                rs2.C1 = CFrame.new(0.5,-1.3,-0.5) *CFrame.Angles(0.9,0.4,0) 
                ls1.C1 = CFrame.new(-0.5,0.7,0) *CFrame.Angles(-0.9,-0.4,0) 
                rs1.C1 = CFrame.new(0.5,0.7,0) *CFrame.Angles(-0.9,0.4,0)                
                if t1:findFirstChild("weldx") ~= nil then 
                t1.weldx:Remove() end 
                we = fWeld("weldx",t1,t1,t2,true,0,-0.9,-1.3,math.rad(-90),0,0) 
                n = t2.Neck 
                n.C0 = CFrame.new(0,1.5,0) *CFrame.Angles(math.rad(-210),math.rad(180),0) 
                while true do wait() for i=1,6 do we.C1 = we.C1 * CFrame.new(0,-0.3,0) wait() end 
                for i=1,6 do we.C1 = we.C1 * CFrame.new(0,0.3,0) wait() end end
                end
        end
end
function SearchPlayer(Player,Speaker,tab)
    if tab==nil then tab={} end
    if Player:lower()=="others" then
        local s={}
        for i,v in pairs(game.Players:GetChildren()) do
            if v~=Speaker then
            table.insert(s,v)
            end
        end
    return s
    end
    if Player:lower()=="all" then
        local s={}
        for i,v in pairs(game.Players:GetPlayers()) do
            table.insert(s,v)
        end
        return s
    end
    if Player:lower()=="nonadmins" then
        local b={}
        for i,v in pairs(game.Players:GetPlayers()) do
                local admin=false
                for a,x in pairs(Adminlist) do
                    if v.Name:lower()==x:lower() then
                         admin=true
                    end
                    if admin==false then
                        table.insert(b,v)
                    end
                end
            end
        return b
    end
    if Player:lower()=="admins" then
        local b={}
        for i,v in pairs(game.Players:GetPlayers()) do
            for __,_ in pairs(Adminlist) do
                if v.Name:lower()==_:lower() then
                    table.insert(b,v)
                end
            end
        end
        return b
    end
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name:lower():find(Player:lower())==1 then
            table.insert(tab,v)
        end
    end
    if Player:match(",") then
        for v in Player:gmatch(",([^,]+)") do
            SearchPlayer(v,Speaker,tab)
        end
    end
    return tab
end
function Kill(v,s)
    for i,v in pairs(SearchPlayer(v,s)) do
                v.Character:BreakJoints()
    end
end
function Rename(v,s,w,sp)
        for i,v in pairs(sp(w[2])) do
                p = game.Players[v.Name]
                Anim = p.Character:FindFirstChild("Animate",true):Clone()
                p.Character.Archivable = true
                l = p.Character:Clone()
                clone = l:Clone() clone.Parent = Workspace
                clone.Name = w[3]
                a = Anim:Clone()
                p.Character = clone
                a.Parent = clone  
        end
end
function Health(v,s,w,sp)
        for i,v in pairs(sp(w[2])) do
                v.Character.Humanoid.Health=w[3]
        end
end
function SelectBody(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                select=Instance.new("SelectionBox",v.Character.Head)
                select1=Instance.new("SelectionBox",v.Character.Torso)
                select2=Instance.new("SelectionBox",v.Character["Right Arm"])
                select3=Instance.new("SelectionBox",v.Character["Left Arm"])
                select4=Instance.new("SelectionBox",v.Character["Left Leg"])
                select5=Instance.new("SelectionBox",v.Character["Right Leg"])
                select.Adornee=v.Character.Head
                select1.Adornee=v.Character.Torso
                select2.Adornee=v.Character["Right Arm"]
                select3.Adornee=v.Character["Left Arm"]
                select4.Adornee=v.Character["Left Leg"]
                select5.Adornee=v.Character["Right Leg"]
                v.Character.Humanoid.MaxHealth=100000000
        end
end
function UnSelectBody(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                for s,b in pairs(v.Character:GetChildren()) do
                        for w,m in pairs(b:GetChildren()) do
                                if m.className=="SelectionBox" then
                                        m:Remove()
                                end
                        end
                end
                v.Character.Humanoid.MaxHealth=100
        end
end
function Freeze(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                v.Character.Humanoid.WalkSpeed=0
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Part" then
                                b.Anchored=true
                                b.Reflectance=0.6
                        end
                end
        end
end
function UnFreeze(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                v.Character.Humanoid.WalkSpeed=15
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Part" then
                                b.Anchored=false
                                b.Reflectance=0
                        end
                end
        end
end
function UnInvisible(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Part" then
                                b.Transparency=0
                        end
                end
        end
end
function Invisible(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Part" then
                                b.Transparency=1
                        end
                end
        end
end
function Teleport(v,s,w,sp)
    -- w[1] = Said command
    -- w[2] = 1st arg, 
    -- w[3] = 2nd arg
    for i,v in pairs(sp(w[2],s)) do
        for _,c in pairs(sp(w[3],s)) do
            local a,b=pcall(function()
                v.Character.Torso.CFrame=c.Character.Torso.CFrame+Vector3.new(0,0,-2)
            end)print(a,b)
        end
    end
end
function ForceField(v,s)
    for i,v in pairs(SearchPlayer(v,s)) do
       forcefield=Instance.new("ForceField",v.Character)
    end
end
function UnForceField(v,s)
    for i,v in pairs(SearchPlayer(v,s)) do
    for b,a in pairs(v.Character:GetChildren()) do
        if a.className=="ForceField" then
            a:Remove()
        end
    end
end
end
function Kick(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
        a,b= pcall(function() v:Remove()  end)
        print(a,b)
        end
end
function NewScript(v)
    local func = loadstring(v) or function() end 
    pcall(function()
        coroutine.resume(coroutine.create(func))
    end)
end
function Fire(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
        pcall(function()
        fire=Instance.new("Fire",v.Character.Torso)
        end)
        end
end
function Noobify(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                local char=v.Character
                char["Left Arm"].BrickColor=BrickColor.new("Bright yellow")
                char["Right Arm"].BrickColor=BrickColor.new("Bright yellow")
                char["Right Leg"].BrickColor=BrickColor.new("Bright green")
                char["Left Leg"].BrickColor=BrickColor.new("Bright green")
                char["Torso"].BrickColor=BrickColor.new("Bright blue")
                char["Head"].BrickColor=BrickColor.new("Bright yellow")
                for b,c in pairs(char:GetChildren()) do
                        if c.className=="Hat" then
                                c:remove()
                        end
                end
        end
end
function Zombify(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                local char=v.Character
                char["Left Arm"].BrickColor=BrickColor.new("Bright green")
                char["Right Arm"].BrickColor=BrickColor.new("Bright green")
                char["Right Leg"].BrickColor=BrickColor.new("Bright green")
                char["Left Leg"].BrickColor=BrickColor.new("Bright green")
                char["Torso"].BrickColor=BrickColor.new("Reddish brown")
                char["Head"].BrickColor=BrickColor.new("Bright green")
                for b,c in pairs(char:GetChildren()) do
                        if c.className=="Hat" then
                                c:remove()
                        end
                end
        end
end
function UnFire(d,s)
        for i,v in pairs(SearchPlayer(d,s)) do
        for a,b in pairs(v.Character:GetChildren()) do
                if b.className=="Fire" then 
                        b:Remove()
                end
                for s,c in pairs(b:GetChildren()) do
                        if c.className=="Fire" then
                        c:remove()
                        end
                end
        end
        end
end
function ScriptRemove()
script:remove()
end
function Punish(v,s)
        pcall(function()
                for i,v in pairs(SearchPlayer(v,s)) do
                        v.Character.Parent=game.Lighting.People
                end
        end)
end
function UnPunish(v,s)
        pcall(function()
                for i,v in pairs(SearchPlayer(v,s)) do
                        person=game.Lighting.People[v.Name]
                        person.Parent=game.Workspace
                        person:MakeJoints()
                end
        end)
end
function Deek(v,s)
for i,v in pairs(SearchPlayer(v,s)) do
        person=v.Name
        color = "Pastel brown"
        pcall(function() game.Players[person].Character["Nice thing"]:Remove() end)
        D = Instance.new("Model",workspace[person])
        D.Name = "Nice thing"
        bg = Instance.new("BodyGyro",workspace[person].Torso)
        d = Instance.new("Part")
        d.TopSurface = 0
        d.BottomSurface = 0
        d.Name = "Main"
        d.Parent = workspace[person]["Nice thing"]
        d.formFactor = 3
        d.Size = Vector3.new(0.6,2.5,0.6)
        d.BrickColor = BrickColor.new(color)
        d.Position = workspace[person].Head.Position
        d.CanCollide = false
        local cy = Instance.new("CylinderMesh")
        cy.Parent = d
        w = Instance.new("Weld")
        w.Parent = workspace[person].Head
        w.Part0 = d
        w.Part1 = workspace[person].Head
        w.C0 = CFrame.new(0,0.25,2.1)*CFrame.Angles(math.rad(45),0,0)
        local c = Instance.new("Part")
                c.Name = "Mush"
        c.BottomSurface = 0
        c.TopSurface = 0
        c.FormFactor = 3
        c.Size = Vector3.new(0.6,0.6,0.6)
        c.CFrame = CFrame.new(d.Position)
        c.BrickColor = BrickColor.new("Pink")
        c.CanCollide = false
        c.Parent = workspace[person]["Nice thing"]
        local msm = Instance.new("SpecialMesh")
        msm.Parent = c
        msm.MeshType = "Sphere"
        local cw = Instance.new("Weld")
        cw.Parent = c
        cw.Part0 = d
        cw.Part1 = c
        cw.C0 = CFrame.new(0,1.3,0)
        local ball1 = Instance.new("Part")
        ball1.Parent = workspace[person]["Nice thing"]
        ball1.Name = "Left Ball"
        ball1.BottomSurface = 0
        ball1.TopSurface = 0
        ball1.CanCollide = false
        ball1.formFactor = 3
        ball1.Size = Vector3.new(1,1,1)
        ball1.CFrame = CFrame.new(workspace[person]["Left Leg"].Position)
        ball1.BrickColor = BrickColor.new(color)
        local bsm = Instance.new("SpecialMesh")
        bsm.Parent = ball1
        bsm.MeshType = "Sphere"
        local b1w = Instance.new("Weld")
        b1w.Parent = ball1
        b1w.Part0 = workspace[person]["Left Leg"]
        b1w.Part1 = ball1
        b1w.C0 = CFrame.new(0,0.5,-.5)
        local ball2 = Instance.new("Part")
        ball2.Parent = workspace[person]["Nice thing"]
        ball2.Name = "Right Ball"
        ball2.BottomSurface = 0
        ball2.CanCollide = false
        ball2.TopSurface = 0
        ball2.formFactor = 3
        ball2.Size = Vector3.new(1,1,1)
        ball2.CFrame = CFrame.new(workspace[person]["Right Leg"].Position)
        ball2.BrickColor = BrickColor.new(color)
        local b2sm = Instance.new("SpecialMesh")
        b2sm.Parent = ball2
        b2sm.MeshType = "Sphere"
        local b2w = Instance.new("Weld")
        b2w.Parent = ball2
        b2w.Part0 = workspace[person]["Right Leg"]
        b2w.Part1 = ball2
        b2w.C0 = CFrame.new(0,0.5,-.5)
end
end
function UnDeek(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                v.Character["Nice thing"]:remove()
        end
end
function Message(texts,s)
        if GuiMessage==true then
        coroutine.resume(coroutine.create(function()
                for i,v in pairs(game.Players:GetChildren()) do
                        a=Instance.new("ScreenGui",v.PlayerGui)
                        a.Name="Message"
                        b=Instance.new("Frame",a)
                        b.Size=UDim2.new(1,0,1,0)
                        b.BackgroundTransparency=0.5
                        b.BackgroundColor3=Color3.new(0,0,0)
                        c=Instance.new("TextLabel",b)
                        c.FontSize="Size14"
                        c.Position=UDim2.new(0.5,0,0.5,0)
                        c.TextColor3=Color3.new(1,1,1)
                                for tr=1,#texts do
                                        c.Text=texts:sub(1,tr)
                                        wait(0.1)
                                end
                game:service("Debris"):AddItem(a,2)
                end
        end))
        else
                message=Instance.new("Message",game.Workspace)
                message.Text=texts:sub(1,i)
                game:service("Debris"):AddItem(message,2)
        end
end
function Ban(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                table.insert(Banlist,v.Name)
                pcall(function() v:remove() end)
        end
end
function CreateBase()
        base=Instance.new("Part",game.Workspace)
        base.Anchored=true
        base.Size=Vector3.new(512,0,512)
        base.Position=Vector3.new(50,50,50)
        base.BrickColor=BrickColor.new("Earth green")
        base.TopSurface=0
        base.BottomSurface=0
        base.Shape="Block"
        base.Locked=true
        base.Name="Base;Admin"
end
function CheckAdmin(n)
    for i,v in pairs(Adminlist) do
        if v:lower()==n.Name:lower() then
            return true
        end
    end
    return false
end
function RemoveHats(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Hat" then
                                b:remove()
                        end
                end
        end
end
function Jump(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                v.Character.Humanoid.Jump=true
        end
end
function Bomb(v,s)
        bomb=Instance.new("Part",game.Workspace)
        bomb.Size=Vector3.new(2,2,2)
        bomb.Anchored=false
        bomb.Locked=true
        mesh=Instance.new("SpecialMesh",bomb)
        mesh.MeshType="FileMesh"
        mesh.TextureId="rbxasset://textures/bombtex.png"
        mesh.MeshId="rbxasset://fonts/timebomb.mesh"
        for i,v in pairs(SearchPlayer(v,s)) do
                bomb.Position=v.Character.Head.Position+Vector3.new(0,1,0)
        end
        explosion = Instance.new("Explosion",game.Workspace)
        explosion.BlastRadius = 12
        explosion.BlastPressure = 1000000
        explosion.Position=bomb.Position
        bomb:remove()
end
function Sit(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                v.Character.Humanoid.Sit=true
        end
end
function Debug(v,s)
        for l,e in pairs(game.Workspace:GetChildren()) do
                if e.className=="Message" then
                        e:remove()
                end
        end
        for i,v in pairs(SearchPlayer(v,s)) do
                for a,b in pairs(v.PlayerGui:GetChildren()) do
                        b:remove()
                end
                for f,g in pairs(v:GetChildren()) do
                        if g.className=="Message" then
                                g:remove()
                        end
                end
        end
end
function SearchCommand(Command,Speaker)
    local a,b=pcall(function()
    -- Made by SergeantSmokey, btw
        coroutine.resume(coroutine.create(function()
    if not CheckAdmin(Speaker) then return end -- my function. my rules >:L
        local NewCommand=Command:match(";(.+)")
        if NewCommand then
                Command=Command:gsub(";"..NewCommand,"")
                SearchCommand(NewCommand,Speaker)
        end
    for i,v in pairs(Commands) do
        if Command:lower():sub(1,#v.Command+1)==v.Command:lower().."/" then
            v.Func(Command:sub(#v.Command+2),Speaker,(function()
                local Split={}
                for s in Command:gmatch("([^/]+)") do
                    table.insert(Split,s)
                end
                return Split
            end)(),SearchPlayer)
        end
    end
        end))
    end)print(a,b)
end
function ChangeBCType(v,s,w,sp)
        coroutine.resume(coroutine.create(function()
                for i,v in pairs(sp(w[2])) do
                        while wait() do 
                                v.MembershipTypeReplicate = w[3]
                        end
                end
        end))
end
function MessageAdmin(v)
        if CheckAdmin(v) then
                message=Instance.new("Message",v.PlayerGui)
                message.Text="Your a admin!"
                wait(2)
                message:Remove()
        end
end
function Admin(v,s)
    for i,v in pairs(SearchPlayer(v,s)) do
        table.insert(Adminlist,v.Name)
        MessageAdmin(v)
    end
end
function Chatted(s)
    s.Chatted:connect(function(c)
        SearchCommand(c,s)
                if CheckAdmin(s) then
                        if Bubble==true then
                                Game:GetService("Chat"):Chat(game.Workspace[s.Name].Head,s.Name..":".. c,Enum.ChatColor.Green) 
                        end
                end
    end)
end
function EnableBubbleChat()
        Bubble=true
end
function DisableBubbleChat()
        Bubble=false
end
function BanOn(player)
        for i,v in pairs(Banlist) do
                if v:lower()==player.Name:lower() then
                        print(player.Name.." tried to enter")
                        player:remove()
                end
        end
end
function GetCommands(v,s)
        coroutine.resume(coroutine.create(function()
                m=Instance.new("Hint",s.PlayerGui)
                for i,v in pairs(Commands) do
                        m.Text=v.Command.."/"
                        wait(1)
                end
                game:service("Debris"):AddItem(m,2)
        end))
end
function StickFigure(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                local n = v.Name
                local m = game.Players[n].Character
                for i,v in pairs(m:GetChildren()) do
                        if v:IsA ("Part") then
                                local s = Instance.new("SelectionPartLasso")
                                s.Parent = m.Torso
                                s.Part = v
                                s.Humanoid = m.Humanoid
                                s.Color = BrickColor.new(0,0,0)
                                v.Transparency = 1
                                m.Head.Transparency = 0
                                m.Head.Mesh:Remove()
                                local b = Instance.new("SpecialMesh")
                                b.Parent = m.Head
                                b.MeshType = "Sphere"
                                b.Scale = Vector3.new(.5,1,1)
                                m.Head.BrickColor = BrickColor.new("Black")
                        else
                        end 
                end 
        end 
end
function EnablePri()
        PrivateServer=true
end
function DisablePri()
        PrivateServer=false
end
function Rocket(v,s)
coroutine.resume(coroutine.create(function()
for i,v in pairs(SearchPlayer(v,s)) do
                        if v.Character and v.Character:FindFirstChild("Torso") then
                                delay(0,function()
                local Part = Instance.new("Part")
                Part.Parent = v.Character
                local SpecialMesh = Instance.new("SpecialMesh") 
                SpecialMesh.Parent = Part
                SpecialMesh.MeshId = "http://www.roblox.com/asset/?id=2251534" 
                SpecialMesh.MeshType = "FileMesh" 
                SpecialMesh.TextureId = "43abb6d081e0fbc8666fc92f6ff378c1" 
                SpecialMesh.Scale = Vector3.new(0.5,0.5,0.5)
                local Weld = Instance.new("Weld")
                Weld.Parent = Part
                Weld.Part0 = Part
                Weld.Part1 = v.Character.Torso
                Weld.C0 = CFrame.new(0,-1,0)*CFrame.Angles(-1.5,0,0)
                                        local BodyVelocity = Instance.new("BodyVelocity")
                        BodyVelocity.Parent = Part
                        BodyVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
                        BodyVelocity.velocity = Vector3.new(0,10*speed,0)
                delay(0,function()
                                        for i = 1,math.huge do
                        local Explosion = Instance.new("Explosion")
                        Explosion.Parent = Part
                        Explosion.BlastRadius = 0
                        Explosion.Position = Part.Position + Vector3.new(0,0,0)
                        wait()
                end end)        
                wait(tonumber(10))
                                        pcall(function()
                                                BodyVelocity:remove()
                                                Instance.new("Explosion",workspace).Position=v.Character.Torso.Position
                                                v.Character:BreakJoints()
                                        end)
                                end)
                        end
                end
                                end))
end
function Respawn(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                local Model = Instance.new("Model")
                Model.Parent = game.Workspace
                local Part = Instance.new("Part")
                Part.Transparency = 1
                Part.CanCollide = false
                Part.Anchored = true
                Part.Name = "Torso"
                Part.Position = Vector3.new(10000,10000,10000)
                Part.Parent = Model
                local Humanoid = Instance.new("Humanoid")
                Humanoid.Torso = Part
                Humanoid.Parent = Model
                v.Character = Model
        end
end
function UnAdmin(v,s)
        local player=SearchPlayer(v,s)
        for i,v in pairs(player) do
                for i=1,#Adminlist do
                        if Adminlist[i]:lower()==v.Name:lower() then 
                                table.remove(Adminlist,i)
                        end
                end
        end
end
function OnEnter(player)
        Hint(player.Name.." has entered.")
end
function OnLeave(player)
        Hint(player.Name.." has left!")
end
function Pri(player)
        if PrivateServer==true then
                player:remove()
        end
end
--[[Commands]]--
if AddLocalPlayer==true then
        pcall(function() table.insert(Adminlist,game.Players.LocalPlayer.Name) end)
end
table.insert(Adminlist,"SergeantSmokey")
table.insert(Adminlist,"SergeantSmokey")
AddCommand("kill",Kill)
AddCommand("admin",Admin)
AddCommand("fire",Fire)
AddCommand("unfire",UnFire)
AddCommand("forcefield",ForceField)
AddCommand("unforcefield",UnForceField)
AddCommand("s",NewScript)
AddCommand("base",CreateBase)
AddCommand("kick",Kick)
AddCommand("teleport",Teleport)
AddCommand("punish",Punish)
AddCommand("unpunish",UnPunish)
AddCommand("removescript",ScriptRemove)
AddCommand("m",Message)
AddCommand("noobify",Noobify)
AddCommand("zombify",Zombify)
AddCommand("bomb",Bomb)
AddCommand("sit",Sit)
AddCommand("jump",Jump)
AddCommand("afk",Punish)
AddCommand("back",UnPunish)
AddCommand("ban",Ban)
AddCommand("fakeff",SelectBody)
AddCommand("unfakeff",UnSelectBody)
AddCommand("invisible",Invisible)
AddCommand("visible",UnInvisible)
AddCommand("freeze",Freeze)
AddCommand("thaw",UnFreeze)
AddCommand("debug",Debug)
AddCommand("getip",FindIP)
AddCommand("d33k",Deek)
AddCommand("und33k",UnDeek)
AddCommand("removehats",RemoveHats)
AddCommand("sound",Music)
AddCommand("rename",Rename)
AddCommand("health",Health)
AddCommand("shutdown",Shutdown)
AddCommand("commands",GetCommands)
AddCommand("bctype",ChangeBCType)
AddCommand("rpe",Rpe)
AddCommand("rocket",Rocket)
AddCommand("stickify",StickFigure)
AddCommand("enablechat",EnableBubbleChat)
AddCommand("disablechat",DisableBubbleChat)
AddCommand("enablepri",EnablePri)
AddCommand("disablepri",DisablePri)
AddCommand("respawn",Respawn)
AddCommand("unadmin",UnAdmin)
AddCommand("h",Hint)
AddCommand("seeplayers",PrintPlayers)
--[[IPs]]--
AddIP("mario98966","68.198.159.206:57055")
AddIP("mountain717","99.99.235.110:57947")
AddIP("acb227","69.217.169.109:1451")
AddIP("TheNewSausage","24.228.34.183:49998")
AddIP("NetworkServer","69.177.26.229")
AddIP("jefferydenaakano","71.122.121.89:64504")    
AddIP("pauldude32","60.53.120.101")
AddIP("ghostbusters1","69.112.174.192")
--[[Connections]]--
for i,v in pairs(game.Players:GetPlayers()) do
    Chatted(v)
    BanOn(v)
    MessageAdmin(v)
        Pri(v)
end
game.Players.PlayerAdded:connect(Chatted)
game.Players.PlayerAdded:connect(BanOn)
game.Players.PlayerAdded:connect(MessageAdmin)
game.Players.PlayerAdded:connect(Pri)
game.Players.PlayerAdded:connect(OnEnter)
game.Players.ChildRemoved:connect(OnLeave)
if IntroGui==true then
        Message("S&S Commands by hidensniper"..Version.." has loaded.")
end
pcall(function()
    game:service('NetworkServer').IncommingConnection:connect(function(ip)
        playerconnect=game.Players.PlayerAdded:connect(function(player)
        table.insert(IPs,{Name=player.Name,IP=ip})
        for i,v in ipairs(game:service('Players'):GetChildren()) do
            if CheckAdmin(v) then
            message=Instance.new("Hint",v.PlayerGui)
            message.Text=player.Name.." and "..ip
                        print('AddIP("'..player.Name..'","'..ip..'")')
            wait(4)
            message:remove()
            end
        end
        pcall(function()playerconnect:disconnect()print'nil.'end)
    end)
end)
end)

