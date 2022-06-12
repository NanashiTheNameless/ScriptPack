--[=[====================================================================================================================]=]--
local Player = game:GetService("Players").LocalPlayer
local Cam = game:GetService("Workspace").CurrentCamera
function GetBot(name)
        local Orb = Instance.new("Model")
                Orb.Name = name
                Instance.new("Humanoid", Orb).MaxHealth = 0
                Instance.new("ForceField", Orb)
        local Main = Instance.new("Part", Orb)
                Main.Name = "Head"
                Main.FormFactor = "Custom"
                Main.BrickColor = BrickColor.new("Really black")
                Main.Size = Vector3.new(0.5,0.5,0.5)
                Main.TopSurface = "Smooth"
                Main.BottomSurface = "Smooth"
                Instance.new("SpecialMesh", Main).MeshType = "Sphere"
        local BodyPos = Instance.new("BodyPosition", Main)
                BodyPos.position = Vector3.new(0,5,0)
        local BodyGyro = Instance.new("BodyGyro", Main)
                BodyGyro.maxTorque = Vector3.new(100000000000000,100000000000000,100000000000000)
        local Obj1 = Instance.new("Part", Orb)
                Obj1.FormFactor = "Custom"
                Obj1.BrickColor = BrickColor.new("Really red")
                Obj1.Size = Vector3.new(0.6,0.2,0.6)
                Obj1.TopSurface = "Smooth"
                Obj1.BottomSurface = "Smooth"
                Instance.new("CylinderMesh", Obj1).Scale = Vector3.new(1,0.25,1)
        local Obj2 = Instance.new("Part", Orb)
                Obj2.FormFactor = "Custom"
                Obj2.BrickColor = BrickColor.new("Really red")
                Obj2.Size = Vector3.new(0.6,0.2,0.6)
                Obj2.TopSurface = "Smooth"
                Obj2.BottomSurface = "Smooth"
                Instance.new("CylinderMesh", Obj2).Scale = Vector3.new(1,0.25,1)
        local Obj3 = Instance.new("Part", Orb)
                Obj3.FormFactor = "Custom"
                Obj3.BrickColor = BrickColor.new("Really blue")
                Obj3.Size = Vector3.new(0.6,0.2,0.6)
                Obj3.TopSurface = "Smooth"
                Obj3.BottomSurface = "Smooth"
                Instance.new("CylinderMesh", Obj3).Scale = Vector3.new(0.99,0.125,0.99)
        local w1 = Instance.new("Weld", Main)
                w1.Part0 = Main
                w1.Part1 = Obj1
                w1.C0 = CFrame.new(0,-0.0625,0)
        local w2 = Instance.new("Weld", Main)
                w2.Part0 = Main
                w2.Part1 = Obj2
                w2.C0 = CFrame.new(0,0.0625,0)
        local w3 = Instance.new("Weld", Main)
                w3.Part0 = Main
                w3.Part1 = Obj3
                w3.C0 = CFrame.new(0,0.0625,0)
        
        
        coroutine.resume(coroutine.create(function()
                local i = 0
                while wait() do
                        w3.C0 = CFrame.new(Vector3.new(0,math.sin(i) * 0.0625,0))
                        i = i + math.rad(2)
                        
                        if i >= math.pi then
                                i = -math.pi
                        end
                        
                        if Main.Parent == nil then
                                break
                        end
                end
        end))
                
        Orb.Parent = Workspace
        Orb:MoveTo((Cam.CoordinateFrame * CFrame.new(0,0,-10)).p)
        coroutine.resume(coroutine.create(function()
                if Player.Parent == nil then
                        Player.Character = nil
                end
        
                local i = 0
                local x = 0
                while wait() do
                        if Player.Character == nil then
                                BodyPos.position = (Cam.CoordinateFrame * CFrame.new(0,0,-7)).p
                        else
                                local pos = Vector3.new(0,5,0)
                                pcall(function() pos = Player.Character.Torso.Position + Vector3.new(0,3,0) end)
                                BodyPos.position = Vector3.new(math.sin(i)*3, math.sin(x)*1.2, math.cos(i)*3) + pos
                                i = i + 0.05
                                x = x + 0.01
                        end
                        if Main.Parent == nil then
                                break
                        end
                end
        end))
        
        return Orb, Main, Body
end
--Player.Character = nil
--Player.Parent = nil
local cName = "Robot"
local Orb, Main
function GetPlayers(PartialName)
        if PartialName == "all" then
                return game:GetService("Players"):GetChildren()
        end
        
        local Chosen = {}
        for i, a in pairs(game:GetService("Players"):GetChildren()) do
                if string.lower(string.sub(a.Name,1,string.len(PartialName))) == string.lower(PartialName) then
                        table.insert(Chosen,a)
                end
        end
        return Chosen
end
local chatColor = "Green"
local Commands, onBan
onBan = {}
Commands = {
        ["chat"] = function(msg)
                chatColor = msg
        end;
        ["reset"] = function(msg)
                pcall(function() Orb:Destroy() end)
                Orb, Main = GetBot(cName)
        end;
        ["remove"] = function(msg)
                pcall(function() Orb:Destroy() end)
        end;
        ["name"] = function(msg)
                pcall(function()
                        Orb.Name = msg
                        cName = msg
                end)
        end;
        
        ["kill"] = function(msg)
                for _, P in pairs(GetPlayers(msg)) do
                        pcall(function() P.Character:BreakJoints() end)
                end
        end;
        ["kick"] = function(msg)
                for _, P in pairs(GetPlayers(msg)) do
                        pcall(function() P:Destroy() end)
                end
        end;
        ["base"] = function(msg)
                local b = Workspace:FindFirstChild("Base") or Instance.new("Part", Workspace)
                b.Name = "Base"
                b.Anchored = true
                b.CanCollide = true
                b.FormFactor = "Custom"
                b.Size = Vector3.new(500,1,500)
                b.CFrame = CFrame.new()
                b.BrickColor = BrickColor.new("Camo")
        end;
        ["goto"] = function(msg)
                local to = nil
                
                for _, P in pairs(GetPlayers(msg)) do
                        if P.Character ~= nil and P.Character ~= Workspace then
                                to = P.Character
                                break
                        end
                end
                
                if to == nil then return end
                local p = to:FindFirstChild("Head") or to:FindFirstChild("Torso")
                
                Cam.CoordinateFrame = CFrame.new(p.Position + p.CFrame.lookVector * 12)
                Cam.Focus = p.CFrame
                pcall(function() Orb:MoveTo(Cam.CoordinateFrame.p) end)
        end;
        ["qs"] = function(msg)
                local Ran, Error = coroutine.resume(coroutine.create(function()
                        loadstring(msg)()
                end))
                
                if not Ran then
                        pcall(function() game:GetService("Chat"):Chat(Main,Error:match("[^:]+:[^:]+:(.+)"),"Red") end)
                end
        end;
        ["onban"] = function(Com, arg0, arg1)
                table.insert(onBan, function()  coroutine.resume(coroutine.create(function()  Commands[Com](arg0, arg1)  end))  end)
        end;
        ["clearonban"] = function()
                onBan = {}
        end;
        ["command name"] = function(arg0, arg1, arg2)
        end;
}
function onChat(Msg)
        local Commanded = false
        
        for Com, Arg0, Arg1, Arg2 in string.gmatch(Msg,"-(%w+)%;([^%;]*)%;?([^%;]*)%;?([^%;]*)%;?") do
                coroutine.resume(coroutine.create(function()
                        Commands[Com](Arg0, Arg1, Arg2)
                end))
                if Commands[Com] then
                        Commanded = true
                end
        end
        
        if not Commanded then
                pcall(function() game:GetService("Chat"):Chat(Main,Msg,chatColor) end)
        end
end
script.Parent = nil
local connection = Player.Chatted:connect(onChat)
Orb, Main = GetBot(cName)
while wait() do
        if Player.Parent == nil then
                Player.Character = nil
                
                for _, f in pairs(onBan) do
                        pcall(f)
                end
                pcall(function()  connection:disconnect()  end)
                connection = Player.Chatted:connect(onChat)
                break
        end
end
--[ lego mediafire gtfo password]--
