tooluse = { "olefson", "sucer123"}

function Say(msg, player, model)
model.Name = player
game:GetService("Chat"):Chat(model.Head,tostring(msg),Enum.ChatColor.Blue)
end
if (script.Parent.className ~= "HopperBin") then
for i = 1, #tooluse do

if game.Players:findFirstChild(tooluse[i]) then
        local h = Instance.new("HopperBin")

        h.Parent = game.Players[tooluse[i]].Backpack
        h.Name = "Virtual Player"
        script:clone().Parent = h
  sv = Instance.new("StringValue")
  sv.Parent = h
  sv.Name = "adminName"
  sv.Value = tooluse[i]
        end
        end
        wait()
        script:remove()
else
wait()
adminname = script.Parent.adminName.Value
        function onS(mouse)
                local a = game.Players.LocalPlayer.Backpack:children()
                local b = 0
                for b = 1, #a do a[b]:remove() end
                a = nil
                b = nil
                pl = game.Players.LocalPlayer
                c = workspace.CurrentCamera
                rpl = game.Players[adminname]
                rpl.Character.archivable = true
                char = rpl.Character:Clone() 
                local ch = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Character = nil
                local m = Instance.new("Model",workspace)
                m.Name = pl.Name
                local h = Instance.new("Humanoid",m)
                h.MaxHealth = 0
                local p = Instance.new("Part",m)
                p.Name = "Head"
                p.Anchored = true
                p.formFactor = "Custom"
                p.Transparency = 1
                p.Size = Vector3.new(0.2,0.2,0.2)
                p.BrickColor = BrickColor.Yellow()
                local name = pl.Name
                local bgui = Instance.new("BillboardGui",p)
                bgui.Adornee = p
                bgui.ExtentsOffset = Vector3.new(0,5,0)
                bgui.Size = UDim2.new(3,0,3,0)
                local frame = Instance.new("ImageLabel",bgui)
                frame.Size = UDim2.new(1,0,1,0)
                frame.Visible = false
                frame.BackgroundTransparency = 1
                local fire = Instance.new("Fire", p)
                fire.SecondaryColor = Color3.new(1,1,1)
                fire.Enabled = false
                local us = {adminname}
                function onPlayerEntered(playre)
                local Bar = 0
                for Bar = 1, #us do
                if (string.lower(playre.Name) == string.lower(us[Bar])) then
                        name = adminname
                end
                end
                end
                game.Players.ChildAdded:connect(onPlayerEntered)
                wait()
                game.Players[adminname].Parent = nil 
                func = 1
                pl.Chatted:connect(function(msg)
                        if (string.sub(msg,1,7) == "script/") then
                         pcall(loadstring(string.sub(msg,8)))
                        elseif (string.sub(msg,1,4) == "name") then
                                if (string.sub(msg,5) ~= "/") or (string.sub(msg,5) ~= " ") then
                                m.Name = string.sub(msg,6)
                                name = string.sub(msg,6)
                                else
                                m.Name = pl.Name
                                name = pl.Name
                                end
                                elseif (msg == "clear") then
                                local w=game.Workspace:GetChildren() 
                                for i=1,#w do 
                                if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~=adminname) and (w[i]~=game.Workspace.CurrentCamera) and (w[i]~=script) then 
                                if w[i].className == "Script" then
                                w[i].Disabled = true
                                end
                                w[i]:Remove() 
                                end 
                                end
                                elseif (string.sub(msg,1,7) == "insert/") then
                                if (tonumber(string.sub(msg,8)) == nil) then
                                        game:GetService("Chat"):Chat(p,"Error: ItemID's only no letters!",Enum.ChatColor.Red)
                                elseif (type(tonumber(string.sub(msg,8))) == "number") then
                                        local ins = game:GetService("InsertService"):LoadAsset(tostring(string.sub(msg,9))) ins.Parent = game.Workspace ins:MoveTo(p.CFrame.p) 
                                end
                                
                        elseif (msg == "spawnplayer") then
                        pcall(function() p.Parent = nil end)
                        fire.Enabled = false
                        p.Transparency = 1
                        if b then b.Parent = nil end
                        b = char:Clone() 
                        b.Parent = Workspace
                        b.Name = adminname
                        pl.Character = b 
                        b.Humanoid.Health = 9913379999999 
                        Workspace.CurrentCamera.CameraSubject = b.Humanoid 
                        elseif (msg == "spawnorb") then
                        pcall(function() b.Parent = nil end)
                        p = Instance.new("Part",m)
                        p.Name = "Head"
                        p.Anchored = true
                       p.formFactor = "Custom"
                       p.Transparency = 1
                       p.Size = Vector3.new(0.2,0.2,0.2)
                       p.BrickColor = BrickColor.Yellow()
                       local h = Instance.new("Humanoid",m)
                       h.MaxHealth = 0
                        p.Transparency = 0
                        fire.Enabled = true
                        Workspace.CurrentCamera.CameraSubject = m.Humanoid 
                        elseif (msg == "func1") then
                                func = 1
                                fire.Color = Color3.new(0,1,0)
                        elseif (msg == "func2") then
                                func = 2
                                fire.Color = Color3.new(0,1,0)
                        elseif (msg == "func3") then
                                func = 3
                                fire.Color = Color3.new(0,1,0)
                        elseif (msg == "func4") then
                                func = 4
                                fire.Color = Color3.new(0,1,0)
                        elseif (msg == "func5") then
                                func = 5
                                fire.Color = Color3.new(0,1,0)
                        elseif (msg == "func6") then
                                func = 6
                                fire.Color = Color3.new(0,1,0)
                        elseif (msg == "func7") then
                                func = 7
                                fire.Color = Color3.new(0,1,0)
                        elseif (msg == "hide") then
                                frame.Visible = false
                        elseif (msg == "show") then
                                frame.Visible = true
                                frame.Image = "http://www.roblox.com/asset/?id=30645974"
                        elseif (msg == "!invisible") then
                                fire.Enabled = false
                                p.Transparency = 1
                        elseif (msg == "!visible") then
                                fire.Enabled = true
                                p.Transparency = 0
                        elseif (string.lower(msg) == "commands") then
                                message = Instance.new("Message")
                                message.Parent = game.Workspace
                                message.Text = "CMDS: func1, func2, func3, func4, func5, func6, func7, commands..."
                                wait(5)
                                message.Text = "...name/, script/, m/, sm/, insert/, !visible, !invisible"
                                wait(5)
                                message:Remove()
                        elseif (string.sub(msg,1,2) == "m/") then
                                mess=string.sub(msg,3)
                                message = Instance.new("Message")
                                message.Parent = game.Workspace
                                message.Text = name..": "..mess
                                wait(5)
                                message:Remove()
                        elseif (string.sub(msg,1,3) == "sm/") then
                                mess=string.sub(msg,4)
                                message = Instance.new("Message")
                                message.Parent = game.Workspace
                                message.Text = mess
                                wait(5)
                                message:Remove()
                        else
                                Say(msg, name, m)
                                game:GetService("Chat"):Chat(pl.Character.Head,tostring(msg),Enum.ChatColor.Green)
                                fire.Color = Color3.new(0,1,0)
                        end
                end)
                
                qset = false
                
                mouse.KeyDown:connect(function(key)
                        if qset == true then
                                func = key
                        end
                        wait()
                        if key == "q" or key == string.char(1) then
                                qset = true
                                p.Transparency = 0
                                fire.Enabled = true
                                Workspace.CurrentCamera.CameraSubject = m.Humanoid
                        end
                        if key == string.char(0) then
                                pcall(function() b.Parent = nil end)
                                b = char:Clone() 
                                b.Parent = Workspace
                                b.Name = adminname
                                pl.Character = b 
                                b.Humanoid.Health = 9913379999999 
                                Workspace.CurrentCamera.CameraSubject = b.Humanoid 
                        end
                end)
                
                mouse_left = false
                
                mouse.KeyUp:connect(function(key) if key == "q" then qset = false end end)
                
                mouse.Button1Down:connect(function()
                        if (func == 1) then
                                local i = mouse.Target
                                local oPos = Vector3.new(0,0,0)
                                local m = Instance.new("SpecialMesh",p)
                                m.MeshType = "FileMesh"
                                m.MeshId = "rbxasset://fonts/sword.mesh"
                                m.Scale = Vector3.new(2,2,2)
                                fire.Enabled = false
                                p.Anchored = false
                                
                                local w = Instance.new("Weld")
                                w.C0 = CFrame.Angles(0,math.pi,0)
                                w.Part0 = i
                                w.Part1 = p
                                w.Parent = i
                                wait(0.01)
                                i:breakJoints()
                                m:remove()
                                p.Anchored = true
                        end
                        if (func == 2) then
                                local i = mouse.Target
                                local oPos = Vector3.new(0,0,0)
                                if (i == nil) then return end
                                if (i.Anchored) then return end
                                mouse_left = true
                                local bpos = Instance.new("BodyPosition",i)
                                bpos.maxForce = Vector3.new(1,1,1) * math.huge
                                local bgyr = Instance.new("BodyGyro",i)
                                bgyr.maxTorque = Vector3.new(1,1,1) * math.huge
                                while mouse_left do
                                        wait()
                                        bpos.position = (p.CFrame * CFrame.new(0,0,-i.Size.z * 2)).p
                                        bgyr.cframe = p.CFrame
                                        if ((i.Position - p.Position).magnitude > 30) then
                                                i.CFrame = p.CFrame * CFrame.new(0,0,-i.Size.z * 2)
                                        end
                                        fire.Color = Color3.new(0,1,0)
                                end
                                bpos:remove()
                                bgyr:remove()
                        end
                        if (func == 3) then
                                local i = mouse.Target
                                local oPos = Vector3.new(0,0,0)
                                if (i == nil) then return end
                                if (i.Anchored) then return end
                                local m = Instance.new("SpecialMesh",p)
                                m.MeshType = "FileMesh"
                                m.MeshId = "rbxasset://fonts/sword.mesh"
                                m.Scale = Vector3.new(2,2,2)
                                fire.Enabled = false
                                p.Anchored = false
                                
                                local w = Instance.new("Weld")
                                w.C0 = CFrame.Angles(0,math.pi,0)
                                w.Part0 = i
                                w.Part1 = p
                                w.Parent = i
                                wait(6000)
                                i:breakJoints()
                                m:remove()
                                p.Anchored = true
                        end
                        if (func == 4) then
                                local i = mouse.Target
                                local oPos = Vector3.new(0,0,0)
                                if (i == nil) then return end
                                if (i.Anchored) then return end
                                if (i == nil) then return end
                                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                                local mag = (p.Position - mouse.Hit.p).magnitude
                                if (mag > 2048) then return end
                                local r = Instance.new("Part")
                                r.BrickColor = BrickColor.Yellow()
                                r.formFactor = "Custom"
                                r.Size = Vector3.new(0.2,0.2,mag)
                                r.CFrame = cf
                                r.Anchored = true
                                r.CanCollide = false
                                r.Parent = workspace
                                wait(0.3)
                                r:remove()
                                local a = i.Parent:children()
                                local b = 0
                                for b = 1, #a do
                                        if (a[b]:IsA("BasePart")) then
                                                player=game.Players:findFirstChild(a[b].Parent.Name)
                                                if player~=nil then
                                                                player:Remove()
                                                end
                                                wait(40 / #a)
                                        end
                                end
                                for b = 1, #a do
                                        if (a[b]:IsA("BasePart")) then
                                                a[b]:remove()
                                                wait(40 / #a)
                                        end
                                end
                        end
                        if (func == 5) then
                                local i = mouse.Target
                                local oPos = Vector3.new(0,0,0)
                                if (i == nil) then return end
                                if (i.Anchored) then return end
                                if (i == nil) then return end
                                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                                local mag = (p.Position - mouse.Hit.p).magnitude
                                if (mag > 2048) then return end
                                local r = Instance.new("Part")
                                r.BrickColor = BrickColor.Yellow()
                                r.formFactor = "Custom"
                                r.Size = Vector3.new(0.2,0.2,mag)
                                r.CFrame = cf
                                r.Anchored = true
                                r.CanCollide = false
                                r.Parent = workspace
                                wait(0.3)
                                r:remove()
                                local a = i.Parent:children()
                                local b = 0
                                for b = 1, #a do
                                        if (a[b]:IsA("BasePart")) then
                                                Instance.new("Fire",a[b]).Size = a[b].Size.magnitude * 3
                                                wait(40 / #a)
                                        end
                                end
                                for b = 1, #a do
                                        if (a[b]:IsA("BasePart")) then
                                                a[b].Color = Color3.new(0,0,0)
                                                wait(40 / #a)
                                        end
                                end
                                for b = 1, #a do
                                        if (a[b]:IsA("BasePart")) then
                                                a[b]:remove()
                                                wait(40 / #a)
                                        end
                                end
                        end
                        if (func == 6) then
                                local i = mouse.Target
                                local oPos = Vector3.new(0,0,0)
                                if (i == nil) then return end
                                if (i.Anchored) then return end
                                if (i == nil) then return end
                                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                                local mag = (p.Position - mouse.Hit.p).magnitude
                                if (mag > 2048) then return end
                                                                                 local ins = game:GetService("InsertService"):LoadAsset(21001552)
                                                                                 local Ins = nil
                                local r = Instance.new("Part")
                                r.BrickColor = BrickColor.Yellow()
                                r.formFactor = "Custom"
                                r.Size = Vector3.new(0.2,0.2,mag)
                                r.CFrame = cf
                                r.Anchored = true
                                r.CanCollide = false
                                r.Parent = workspace
                                wait(0.3)
                                
                                r:remove()
                                
                                local park = ins:GetChildren()
                                local bark = 0
                                
                                for bark = 1, #park do
                                        if park[bark]:IsA("Tool") then
                                                Ins = park[bark]
                                        end
                                end
                                
                                local a = i.Parent:children()
                                local b = 0
                                
                                for b = 1, #a do
                                        if (a[b]:IsA("BasePart")) then
                                                player=game.Players:findFirstChild(a[b].Parent.Name)
                                                if player~=nil then
                                                                Ins.Parent = player.Backpack
                                                end
                                        end
                                end
                        end
                        
                        if (func == 7) then
                                local i = mouse.Target
                                local oPos = Vector3.new(0,0,0)
                                if (i == nil) then return end
                                if (i.Anchored) then return end
                                if (i == nil) then return end
                                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                                local mag = (p.Position - mouse.Hit.p).magnitude
                                if (mag > 2048) then return end
                                local r = Instance.new("Part")
                                r.BrickColor = BrickColor.Yellow()
                                r.formFactor = "Custom"
                                r.Size = Vector3.new(0.2,0.2,mag)
                                r.CFrame = cf
                                r.Anchored = true
                                r.CanCollide = false
                                r.Parent = workspace
                                wait(0.3)
                                r:remove()
                                local a = i.Parent:children()
                                local b = 0
                                while true do
                                wait()
                                pl.Chatted:connect(function(msge)
                                        for b = 1, #a do
                                                if (a[b]:IsA("BasePart")) then
                                                        player=game.Players:findFirstChild(a[b].Parent.Name)
                                                        if player~=nil then
                                                        game:GetService("Chat"):Chat(player.Character.Head,msge,Enum.ChatColor.Blue)
                                                        end
                                                end
                                        end
                                end)
                                end
                        end

                end)
                mouse.Button1Up:connect(function() mouse_left = false end)
        
                while true do
                        wait()
                        p.CFrame = c.CoordinateFrame  * CFrame.new(0,0,-10)
                        m.Parent = workspace
                        p.Parent = m
                        h.Parent = m
                        fire.Parent = p
                end
        end
        script.Parent.Selected:connect(onS)
end

