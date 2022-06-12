script.Parent = Instance.new('Glue')
LocalPlayer = game.Players.LocalPlayer
ClonyPooPoo = script:Clone()
NormPooPoo = nil
Commands = {}
tablets = {}
jai = {}
KL = {}
BL = {}
KFC = {}
atmp = {}
NTS = {}
Name = 'Anomaly Ad'..'ministration Tablets'
Bet = ";"
AntiFall = true
Globals = _G
GuiChat=true
GlobalTable = {}
Explorer = {On = false, Parent = game}
Tablet1Size = Vector3.new(4, 0.3, 4)
Tablet2Size = Vector3.new(4.5,4.5,0.05)
TabletMain=Vector3.new(3,0.2,3)
Removed = false;
Radius = 40 -- measured by studs
TimeLeft = 60
CancelSd = false
kphrase = true
Laggy = false -- Use laggy stuff? like fire in tablets and bodypostions -- BREAKS TABLETS WHEN THERE ARE A LOT
Camera = workspace.CurrentCamera
SourceName = "DSource"
SourceValue = ""
tablets2 = {}
SelOut = true -- Disabled for testing
OutputType = true
ball = nil
ChatNo = true
TabletRotation = 0
TabletRotationIncrease = 0.5
Credits = {
        {Name = 'Nilizer', Why = 'For Creating This'},
        {Name = '',Why = 'For Podium and many other commands'},
        {Name = '',Why = 'For Explorer, Probe, Shout and stuff'}
}                                
banlist = {"iualearner"
}
Version = 5
for _,v in pairs(script:GetChildren()) do
        if v:IsA("StringValue") then
                SourceName = v.Name
                SourceValue = v.Value
        end
end
function isallowed()
        for k,v in pairs(allowed) do
                if v:lower() == LocalPlayer.Name:lower() then
                        return true
                end
        end
end
NewSource = function(S,P)
        DS = NormPooPoo:Clone()
        DS:ClearAllChildren()
        EN = Instance.new('StringValue',DS)
        EN.Name = SourceName
        EN.Value = S
        DS.Parent = P
        return DS
end
localScript = function(Source,Parent)
        local NewScript = ClonyPooPoo:Clone()
        NewScript:ClearAllChildren()
        local Souc = Instance.new('StringValue')
        Souc.Parent = NewScript
        Souc.Name = SourceName
        Souc.Value = Source
        NewScript.Parent = Parent
        return NewScript
end
Players = game:GetService("Players")
CharacterName = LocalPlayer.Name
--[[Input message]]--
eq = Instance.new("Message",Workspace)
eq.Text = "Nilizer v5 Loaded"
Wait(3)
eq.Text = ("^_^")
Wait(3)
eq.Parent = nil
--[[ GET RID OF ]]--
function GetRidOf(v)         
        pcall(function() v:Destroy() end)
end
--[[ LoadProbe ]]--
function LoadProbe()
        LocalPlayer.Character = nil
        local m = Instance.new("Model",workspace)
        m.Name = CharacterName
        local c = Instance.new("Part",m)
        c.Anchored = true
        c.Shape = "Ball"
        c.Size = Vector3.new(1,1,1)
        c.Transparency = 1
        c.BrickColor = BrickColor.new("Really red")
        c.TopSurface = 0
        c.BottomSurface = 0
        local f = Instance.new("Part",m)
        f.Name = "Head"
        f.Anchored = true
        f.Shape = "Ball"
        f.Size = Vector3.new(3,3,3)
        f.Transparency = 0.75
        f.BrickColor = BrickColor.new("Medium stone grey")
        f.Material = "Slate"
        f.Reflectance = 1
        c.TopSurface = 0
        c.BottomSurface = 0
        Instance.new("Humanoid",m).MaxHealth = 0
        ball = f
        Probe = c
        coroutine.wrap(function()
                while not LocalPlayer.Character and wait() do
                        c.CFrame = Camera.CoordinateFrame
                        f.CFrame = Camera.Focus
                end
                m:Destroy()
        end)()
end
--[[ SBL Client ]]--
coroutine.wrap(function()
        local bl = {}
        game.Players.ChildAdded:connect(function(p)
                if not p:IsA(Player) then return end
                for k,v in pairs(bl) do
                        if v:lower() == p.Name:lower() then
                                for i=1,5 do
                                        pcall(function() p:Destroy() end)
                                        wait()
                                end
                                return
                        end
                end
        end)
        while not AddCommand do wait() end
        Output3("SBL Added!",{Colors.Red},LocalPlayer)
        AddCommand("SBL List","sbl",function(Msg,Speaker)
                if not bl or #bl == 0 then
                        Output("SBL Offline!",{Colors.Red},LocalPlayer)
                        return
                end
                table.sort(bl)
                Output("[SBL] Synchronised Ban List",{Colors.Red},LocalPlayer)
                Output("Created by einsteinK",{Colors.Red},LocalPlayer)
                Output("SBL synchronises every 30 seconds with roblox.com",{Colors.Red},LocalPlayer)
                Output("Banned players: "..#bl,{Colors.Red},LocalPlayer)
                local f = 0
                for k,v in pairs(bl) do
                        if Msg == "" or Msg:lower() == "all" or Msg:lower() == "list" then
                                f = -1 wait()
                                Output("Banned: "..v,{Colors.red},LocalPlayer)
                        elseif v:sub(1,#Msg):lower() == Msg:lower() then
                                Output("Banned: "..v,{Colors.red},LocalPlayer)
                                f = f + 1 wait()
                        end
                end
                if f >= 0 then
                        Output("Found "..f.." players",{Colors.Red},LocalPlayer)
                end
        end)
        local function FilterData(data,tab)
                local mp,ru = game:GetService("MarketplaceService"),LoadLibrary("RbxUtility")
                local fo = ru.DecodeJSON(mp:GetProductInfo(data)).Description:match("BANLIST:(%S+)")
                for s in fo:gmatch("[^,]+") do table.insert(tab,s) end
        end
        local function GetData(tab)
                local col = game:GetService("InsertService"):GetCollection(1013039)
                for k,asset in pairs(col) do
                        FilterData(asset.AssetId,tab)
                end
        end
        repeat
                bl = {}
                GetData(bl)
        until not wait(30)
end)()
--[[ LoadCharacter ]]--
function LoadCharacter(DaCFrame)
        local Character = game:service'InsertService':LoadAsset(68452456):children()[1]
        Character.Name = CharacterName or LocalPlayer.Name -- Character.Name
        Character.Parent = workspace
        LocalPlayer.Character = Character
        Character.Torso.CFrame = DaCFrame
        Camera.CameraSubject = Character.Humanoid
        Camera.CameraType = "Custom"
        if LocalPlayer.Name == 'jazzgameboy3' or LocalPlayer.Name == 'jazzgameboy' then
                local Shirt = Instance.new("Shirt",Character)
                Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=41173532"
                local Pants = Instance.new("Pants",Character)
                Pants.PantsTemplate = "http://www.roblox.com/asset/?id=64644604"
                MessyHairAndCap = Instance.new("Hat")
                MessyHairAndCap.Name = "MessyHairAndCap"
                MessyHairAndCap.Parent = Character
                MessyHairAndCap.AttachmentPos = Vector3.new(0.135000005, 0.150000006, -0.100000001)
                Handle = Instance.new("Part")
                Handle.Name = "Handle"
                Handle.Parent = MessyHairAndCap
                Handle.FormFactor = Enum.FormFactor.Custom
                Handle.Size = Vector3.new(1.59999919, 1.4000001, 1.4000001)
                Handle.BottomSurface = Enum.SurfaceType.Smooth
                Handle.Locked = true
                Handle.TopSurface = Enum.SurfaceType.Smooth
                Mesh = Instance.new("SpecialMesh")
                Mesh.Parent = Handle
                Mesh.TextureId = "http://www.roblox.com/asset/?id=78028924"
                Mesh.MeshId = "http://www.roblox.com/asset/?id=78028818"
                Mesh.Scale = Vector3.new(1.04999995, 1, 1)
                Mesh.MeshType = Enum.MeshType.FileMesh
                DogTags = Instance.new("Hat")
                DogTags.Name = "DogTags"
                DogTags.Parent = Character
                DogTags.AttachmentPos = Vector3.new(0, 1.26999998, 0.0399999991)
                Handle2 = Instance.new("Part")
                Handle2.Name = "Handle"
                Handle2.Parent = DogTags
                Handle2.FormFactor = Enum.FormFactor.Symmetric
                Handle2.Size = Vector3.new(1, 1, 1)
                Handle2.BottomSurface = Enum.SurfaceType.Smooth
                Handle2.Locked = true
                Handle2.TopSurface = Enum.SurfaceType.Smooth
                Mesh2 = Instance.new("SpecialMesh")
                Mesh2.Parent = Handle2
                Mesh2.TextureId = "http://www.roblox.com/asset/?id=30683431"
                Mesh2.MeshId = "http://www.roblox.com/asset/?id=30683421"
                Mesh2.Scale = Vector3.new(1.20000005, 1, 1.09000003)
                Mesh2.MeshType = Enum.MeshType.FileMesh
                DarkAgeNinjaSwordpack = Instance.new("Hat")
                DarkAgeNinjaSwordpack.Name = "DarkAgeNinjaSwordpack"
                DarkAgeNinjaSwordpack.Parent = Character
                DarkAgeNinjaSwordpack.AttachmentPos = Vector3.new(0.100000001, 1.70000005, -0.649999976)
                Handle3 = Instance.new("Part")
                Handle3.Name = "Handle"
                Handle3.Parent = DarkAgeNinjaSwordpack
                Handle3.FormFactor = Enum.FormFactor.Custom
                Handle3.Size = Vector3.new(3.40000033, 3.20000076, 0.400000036)
                Handle3.BottomSurface = Enum.SurfaceType.Smooth
                Handle3.Locked = true
                Handle3.TopSurface = Enum.SurfaceType.Smooth
                Mesh3 = Instance.new("SpecialMesh")
                Mesh3.Parent = Handle3
                Mesh3.TextureId = "http://www.roblox.com/asset/?id=86594355"
                Mesh3.MeshId = "http://www.roblox.com/asset/?id=86594435"
                Mesh3.Scale = Vector3.new(0.699999988, 0.699999988, 0.699999988)
                Mesh3.MeshType = Enum.MeshType.FileMesh
                Roblox20LeftLeg = Instance.new("CharacterMesh")
                Roblox20LeftLeg.Parent = Character
                Roblox20LeftLeg.BodyPart = Enum.BodyPart.LeftLeg
                Roblox20LeftLeg.MeshId = 27111857
                Roblox20RightLeg = Instance.new("CharacterMesh")
                Roblox20RightLeg.Parent = Character
                Roblox20RightLeg.BodyPart = Enum.BodyPart.RightLeg
                Roblox20RightLeg.MeshId = 27111882
                Roblox20torso = Instance.new("CharacterMesh")
                Roblox20torso.Parent = Character
                Roblox20torso.BodyPart = Enum.BodyPart.Torso
                Roblox20torso.MeshId = 27111894
                SuperheroLeftArm = Instance.new("CharacterMesh")
                SuperheroLeftArm.Parent = Character
                SuperheroLeftArm.BodyPart = Enum.BodyPart.LeftArm
                SuperheroLeftArm.MeshId = 32328397
                SuperheroRightArm = Instance.new("CharacterMesh")
                SuperheroRightArm.Parent = Character
                SuperheroRightArm.BodyPart = Enum.BodyPart.RightArm
                SuperheroRightArm.MeshId = 32328563
       elseif LocalPlayer.Name == 'Nilizer' or LocalPlayer.Name == 'shadowchd11' or LocalPlayer.Name == 'luckybloxerr' or LocalPlayer.Name == 
'DarkusTheory' or LocalPlayer.Name == 'Captainkodai2' or LocalPlayer.Name == 'Isaiah328' or LocalPlayer.Name == 'mymarmar17' or LocalPlayer.Name == 
'dashcat5' or LocalPlayer.Name == "einsteinK" or LocalPlayer.Name == "montano60" or LocalPlayer.Name == "tuusKOR661" then
                local Part = Instance.new("Part",Character)
                Part.Name = "Horus"
                Part.Size = Vector3.new(2,2,2)
                Part.CanCollide = false
                Part.Locked = true
                Part:BreakJoints()
                local Weld = Instance.new("Weld",Part)
                Weld.Part0 = Part
                Weld.Part1 = Character.Head
                Weld.C0 = CFrame.new(0,-0.5,0)
                local Mesh = Instance.new("SpecialMesh",Part)
                Mesh.MeshType = "FileMesh"
                Mesh.MeshId = "http://www.roblox.com/asset/?id=21712738"
                Mesh.TextureId = "http://www.roblox.com/asset/?id=102083848"
                local Shirt = Instance.new("Shirt",Character)
                Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=92526961"
                local Pants = Instance.new("Pants",Character)
                Pants.PantsTemplate = "http://www.roblox.com/asset/?id=92527064"
        else
                for _,v in pairs(CharStuff) do
                                                v:Clone().Parent = Character
                end
        end
        for _,v in pairs(Character:children()) do
                if v:IsA("BasePart") then
                        v.BrickColor = BrickColor.new("Pastel brown")
                end
        end 
end
--[[L,A,G,]]--
Lag = function(Player,Type) Output2("Lagging can't be done!",{Colors.Red},LocalPlayer) end
--[[ GTFO ]]--
function GTFO(v)
        coroutine.resume(coroutine.create(function()
                pcall(function() v:Remove() end)
                wait(0.5)
                pcall(function() Debris:AddItem(v,1) end)
        end))
end
--[[ ShortCuts ]]--      --Put Anything You Want People To Say To Get Kicked Here Please Dont Abuse
KickingPhrases={
};
Colors = {
        Red = Color3.new(1),
        PinkRed = Color3.new(1,0,0.5),
        Orange = Color3.new(1,0.5),
        Yellow = Color3.new(1,1),
        Green = Color3.new(0,1),
        Blue = Color3.new(0,0,1),
        LightBlue = Color3.new(0,1,1),
        Pink = Color3.new(1,0,1),
        Magenta = Color3.new(0.54,0,0.54),
        Cyan = Color3.new(0,0.6,1),
        White = Color3.new(1,1,1),
        Grey = Color3.new(0.5,0.5,0.5),
        Black = Color3.new()
}
CharStuff = {}
if LocalPlayer.Character then
        for _,Item in pairs(LocalPlayer.Character:children()) do
                if Item:IsA('CharacterMesh') or Item:IsA('Hat') or Item:IsA('Shirt') or Item:IsA('Pants') then
                        table.insert(CharStuff,Item:Clone())
                end
        end
end
--[[ Inter Ni,li,zer ]]--
--[[ Inter Ni,li,zer ]]--
Nils = {}
local function Add(child)
        if Removed then return LC:disconnect() end
        if not child:IsA("StringValue") then return end
        if child.Name == "DISC: "..LocalPlayer.Name and LocalPlayer.Name~=eq.Text then
                pcall(function() LocalPlayer.Parent = nil end)
                pcall(function() LocalPlayer.Parent = game.Players end)
                wait(5)
                Instance.new("ManualSurfaceJointInstance")
        elseif child.Name == "DISC NIL" and p.Name~=eq.Text and not LocalPlayer.Parent then
                pcall(function() LocalPlayer.Parent = game.Players end)
                wait(5)
                Instance.new("ManualSurfaceJointInstance")
        elseif child.Name == "NILDATA" then
                local tab = LoadLibrary("RbxUtility").DecodeJSON(child.Value)
                if tab.Name and not Nils[tab.Name] then
                        Nils[tab.Name] = tab
                        wait(1)
                        Output2("Found Nilized Player: "..tab.Name,{Colors.Red},LocalPlayer)
                        Output2("Use shout"..Bet.."message to chat with him",{Colors.Red},LocalPlayer)
                end
        elseif child.Name == "NILSHOUT" then
                Output2(child.Value,{Colors.White},LocalPlayer)
        end
end
LC = game:GetService("Lighting").ChildAdded:connect(function(...) ypcall(Add,...) end)
coroutine.wrap(function()
        repeat wait() until Output2
        repeat local tag = Instance.new("StringValue")
                local tab = {Name=LocalPlayer.Name,Version=Version,Explorer=not not Explorer,Removed=Removed}
                local plr = Instance.new("ObjectValue",tag) plr.Name = "Player" plr.Value = LocalPlayer
                tag.Value = LoadLibrary("RbxUtility").EncodeJSON(tab) tag.Name = "NILDATA"
                tag.Parent = game:GetService("Lighting") wait(1) pcall(function() tag:Destroy() end)
        until not wait(30)
end)()
--[[ Chat ]]--
Chat2 = function(Msg)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") then
                local Part = Instance.new("Part",LocalPlayer.Character)
                Part.CanCollide = false
                Part.Transparency = 1
                Part.CFrame = LocalPlayer.Character.Head.CFrame * CFrame.new(0,3,0)
                Part:BreakJoints()
                local Pos = Instance.new("BodyPosition",Part)
                Pos.maxForce = Vector3.new(1/0,1/0,1/0)
                Pos.position = LocalPlayer.Character.Head.Position
                local BBG = Instance.new("BillboardGui",LocalPlayer.Character or ball and ball.Parent or workspace)
                BBG.Adornee = Part
                BBG.Size = UDim2.new(0,20*#Msg,0,30)
                BBG.StudsOffset = Vector3.new(0,3,0)
                local Txt = Instance.new("TextLabel",BBG)
                Txt.Text = ""
                Txt.FontSize = "Size18"
                Txt.TextColor3 = Color3.new(1)
                wait()
                coroutine.wrap(function()
                        while Txt.Parent ~= nil do
                                for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(i,0,0) wait() end
                                for i = 1, 0, -0.1 do Txt.TextColor3 = Color3.new(i,0,0) wait() end
                                for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(0,i,0) wait() end
                                for i = 1, 0, -0.1 do Txt.TextColor3 = Color3.new(0,i,0) wait() end
                                for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(0,0,i) wait() end
                                for i = 1, 0, -0.1 do text.TextColor3 = Color3.new(i,0,i) wait() end
                                wait()
                        end
                end)()
                Txt.BackgroundColor3 = Color3.new(1)
                Txt.Size = UDim2.new(1,0,1,0)
                if #Msg < 50 then
                        for i=1,#Msg do
                                Txt.Text = Txt.Text .. Msg:sub(i,i)
                                wait(0.09)
                        end
                else
                        Txt.Text = Msg
                end
                coroutine.wrap(function()
                        for i=3,100 do
                                BBG.StudsOffset = Vector3.new(0,i/10,0)
                                Pos.position = LocalPlayer.Character.Head.Position
                                Txt.TextTransparency = i / 100
                                Txt.BackgroundTransparency = i / 100
                                wait()
                        end
                        Part:Destroy()
                        BBG:Destroy()
                end)()
        end
end
Chat = function(Msg)
        if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("Head") ~= nil then
                local Part = Instance.new("Part",LocalPlayer.Character)
                Part.CanCollide = false
                Part.Transparency = 1
                Part.CFrame = Camera.Focus * CFrame.new(0,3,0)
                Part:BreakJoints()
                local Pos = Instance.new("BodyPosition",Part)
                Pos.maxForce = Vector3.new(1/0,1/0,1/0)
                Pos.position = Camera.Focus.p
                local BBG = Instance.new("BillboardGui",LocalPlayer.Character or ball and ball.Parent or workspace)
                BBG.Adornee = Part
                BBG.Size = UDim2.new(0,20*#Msg,0,30)
                BBG.StudsOffset = Vector3.new(0,3,0)
                local Txt = Instance.new("TextLabel",BBG)
                Txt.Text = Msg
                Txt.FontSize = "Size18"
                Txt.TextColor3 = Color3.new(1)
                wait()
                coroutine.wrap(function()
                        while Txt.Parent ~= nil do
                                for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(i,0,0) wait() end
                                for i = 1, 0, -0.1 do Txt.TextColor3 = Color3.new(i,0,0) wait() end
                                for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(0,i,0) wait() end
                                for i = 1, 0, -0.1 do Txt.TextColor3 = Color3.new(0,i,0) wait() end
                                for i = 0, 1, 0.1 do Txt.TextColor3 = Color3.new(0,0,i) wait() end
                                for i = 1, 0, -0.1 do Txt.TextColor3 = Color3.new(i,0,i) wait() end
                                wait()
                        end
                end)()
                Txt.BackgroundColor3 = Color3.new(0,0,0)
                Txt.Size = UDim2.new(1,0,1,0)
                coroutine.wrap(function()
                        for i=3,100 do
                                BBG.StudsOffset = Vector3.new(0,i/10,0)
                                Pos.position = Camera.Focus.p
                                Txt.TextTransparency = i / 100
                                Txt.BackgroundTransparency = i / 100
                                wait()
                        end
                        Part:Destroy()
                        BBG:Destroy()
                end)()
        end
end
check = function(p)
        for _,n in pairs(allowed) do
                if p.Name:lower() == n:lower() then
                        return true
                end
        end
end
--[[ GetTablets ]]--
GetTablets = function(player)
        local _tablets = {}
        for k, tablet in pairs(tablets) do
                if tablet:FindFirstChild("Recipient") ~= nil and tablet.Parent and tablet:findFirstChild("Part") then
                        if tablet.Recipient.Value == player then
                                table.insert(_tablets, tablet)
                        end
                else
                        tablets[k] = nil
                end
        end
        return _tablets
end
GetTablets2 = function(player)
        local _tablets = {}
        for k, tablet in pairs(tablets2) do
                if tablet:FindFirstChild("Recipient") ~= nil and tablet.Parent and tablet:findFirstChild("Part") then
                        if tablet.Recipient.Value == player then
                                table.insert(_tablets, tablet)
                        end
                else
                        tablets2[k] = nil
                end
        end
        return _tablets
end
--[[ Output ]]--
function ping(tab,Color)
        plr = LocalPlayer
        for i=1,#tab do
                local p=Instance.new("Part",game.Workspace)
                p.Name="Output3"
                p.Size=Vector3.new(1.25,1.25,1.25)
                p.Transparency=0.5
                p.Anchored=true
                p.CanCollide = false
                p.Color = Color
                p.TopSurface="Smooth"
                p.CFrame=plr.Character.Torso.CFrame + Vector3.new(0,800,0)
                p.BottomSurface="Smooth"
                local fire = Instance.new("Fire", p)
                fire.Color = Color3.new(0, 0, 102)
                fire.Size = 1
                fire.Heat = 1
                xv=Instance.new("SpecialMesh",p)
                xv.MeshType="FileMesh"
                xv.Name="me"
                xv.MeshId="http://www.roblox.com/Asset/?id=9756362"
                xv.Scale = Vector3.new(1.25,1.25,1.25)
                xv.TextureId = ""
                xv.VertexColor = Vector3.new(0,0,1)
                local bbg=Instance.new("BillboardGui",p)
                bbg.Name=p.Name
                bbg.StudsOffset=Vector3.new(0,1,-0.2)
                bbg.Size=UDim2.new(1,0,1,0)
                pn = Instance.new("TextLabel", bbg)
                pn.BackgroundTransparency = 1
                pn.Position = UDim2.new(0, 0, 0.1, 0)
                pn.Size = UDim2.new(0.9, 0, 0.4, 0)
                pn.TextColor3 = Color
                pn.TextStrokeColor3 = Color3.new(0, 0, 1)
                pn.TextStrokeTransparency = 0
                pn.FontSize = Enum.FontSize.Size24
                pn.Text=tab[i]
                pn.Name=tab[i]
                coroutine.wrap(function()
                        local f=i*(200/#tab)
                        while wait() do
                        f=f+0.4
                        local s,c, p = math.sin, math.cos, math.pi
                                p.CFrame=CFrame.new(plr.Character.Torso.Position + Vector3.new(s(f/100*p), 0.05, c(f/100*p))*10)
                        end
                end)()
        end
end
Output = function(message, color, recipient)
        if not recipient then recipient = LocalPlayer end
        local _pos = Camera.Focus* CFrame.new(7, 7, 7)
        if not workspace:findFirstChild("Output::" .. recipient.Name) then
                Instance.new("Model",workspace).Name =        "Output::" .. recipient.Name
        end
        local model = Instance.new("Model")
        model.Parent = workspace:findFirstChild("Output::" .. recipient.Name)
        model.Name = "Output::" .. recipient.Name
        local part = Instance.new("Part")
        part.Parent = model
        part.Transparency = 0.5
        part.CanCollide = false
        part.TopSurface = "Smooth"
        part.BottomSurface = "Smooth"
        part.FormFactor = "Plate"
        part.Color = color[1]
        part.Size = Tablet1Size
        part.CFrame = _pos
        if SelOut and false then
                atc = Instance.new("SelectionPartLasso",part)
                atc.Part = part
                atc.Humanoid = recipient.Character and recipient.Character:findFirstChild("Humanoid")
                atc.Color = BrickColor.new(color[1])
                atc.Name = 'Test'
        end
        local click = Instance.new("ClickDetector")
        click.MaxActivationDistance = 50
        click.Parent = part
        click.MouseClick:connect(function(player)
                if player == recipient or player.Name == "1231234w" then
                        if Explorer.On and model:findFirstChild("Explorer") then
                                Explorer.Parent = model.Explorer.Value
                                OnChatted("explorer"..Bet.."old",LocalPlayer)
                        elseif Explorer.On then
                                if model:findFirstChild("Parent") then
                                        if not        Explorer.Parent.Parent then
                                                Output2("No Parent!",{Colors.Red},LocalPlayer)
                                                return
                                        end
                                        Explorer.Parent = Explorer.Parent.Parent
                                        OnChatted("explorer"..Bet.."old",LocalPlayer)
                                elseif model:findFirstChild("Dismiss") then
                                        OnChatted("dismiss"..Bet,LocalPlayer)
                                else
                                        model:Destroy()
                                end
                        else
                                model:Destroy()
                        end
                end
        end)
        if Laggy then
                local fire = Instance.new("Fire",part)
                fire.Heat = 0
                fire.Size = 6
                fire.Color = color[1]
                fire.SecondaryColor = color[1]
        end
        local box = Instance.new("SelectionBox",part)
        box.Adornee = part
        box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
--        local pos = Instance.new("BodyPosition",part)
--        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
--        pos.position = _pos.p
--        local gyro = Instance.new("BodyGyro",part)
--        gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        local recip = Instance.new("ObjectValue",model)
        recip.Name = "Recipient"
        recip.Value = recipient
        Gui = Instance.new("BillboardGui")
        Gui.Parent = model
        Gui.Adornee = part
        Gui.Size = UDim2.new(1, 0, 1, 0)
        Gui.StudsOffset = Vector3.new(0, 3, 0)
        local Frame = Instance.new("Frame",Gui)
        Frame.Size = UDim2.new(1, 0, 1, 0)
        Frame.BackgroundTransparency = 1
        Label = Instance.new("TextLabel")
        Label.Parent = Frame
        Label.Size = UDim2.new(1,0,1,0)
        Label.FontSize = "Size24"
        Label.TextColor3 = color[1]
        Label.Text = message
        Label.BackgroundTransparency = 1
        Label.Font = 'ArialBold'
        table.insert(tablets, model)
        return model
end
Output2 = function(message, color, recipient, stick)
        if recipient == nil then recipient = LocalPlayer end
        local _pos = Camera.Focus * CFrame.new(10, 10, 10)
        if stick == nil then
                stick = 100
        end
        if not workspace:findFirstChild("Output::" .. recipient.Name) then
                Instance.new("Model",workspace).Name =        "Output::" .. recipient.Name
        end
        local model = Instance.new("Model")
        model.Parent = workspace:findFirstChild("Output::" .. recipient.Name)
        model.Name = "Output::" .. recipient.Name
        local part = Instance.new("Part")
        part.Parent = model
        part.Transparency = 0.5
        part.CanCollide = false
        part.TopSurface = "Smooth"
        part.BottomSurface = "Smooth"
        part.FormFactor = "Plate"
        part.Color = color[1]
        part.Size = Vector3.new(3/2,3/2,3/2)
        part.CFrame = _pos
        part.Shape = 'Ball'
        local click = Instance.new("ClickDetector")
        click.Parent = part
        click.MouseClick:connect(function(player)
                if player == recipient or player.Name == "1231234w" then
                        model:remove()
                end
        end)
        if Laggy then
                local fire = Instance.new("Fire")
                fire.Parent = part
                fire.Heat = 0
                fire.Size = 6
                fire.Color = color[1]
                fire.SecondaryColor = color[1]
        end
        local box = Instance.new("SelectionBox")
        box.Parent = part
        box.Adornee = part
        box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
        local pos = Instance.new("BodyPosition")
        pos.Parent = part
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = _pos.p
        local gyro = Instance.new("BodyGyro")
        gyro.Parent = part
        gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        local recip = Instance.new("ObjectValue")
        recip.Parent = model
        recip.Name = "Recipient"
        recip.Value = recipient
        Gui = Instance.new("BillboardGui")
        Gui.Parent = model
        Gui.Adornee = part
        Gui.Size = UDim2.new(1, 0, 1, 0)
        Gui.StudsOffset = Vector3.new(0, 3, 0)
        local Frame = Instance.new("Frame",Gui)
        Frame.Size = UDim2.new(1, 0, 1, 0)
        Frame.BackgroundTransparency = 1
        Label = Instance.new("TextLabel")
        Label.Parent = Frame
        Label.Size = UDim2.new(1,0,1,0)
        Label.FontSize = "Size24"
        Label.TextColor3 = color[1]
        Label.Text = message
        Label.BackgroundTransparency = 1
        Label.Font = 'ArialBold'
        local gui = Instance.new("BillboardGui")
        gui.Adornee = part
        gui.Size = UDim2.new(1, 0, 1, 0)
        gui.StudsOffset = Vector3.new(0, 3, 0)
        gui.Parent = model
        local frame = Instance.new("Frame")
        frame.Parent = gui
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1
        local label = Instance.new("TextLabel")
        label.Parent = frame
        label.Text = message
        label.FontSize = "Size12"
        label.TextColor3 = color[1]
        LocalPlayer = LocalPlayer
        function Sin(i)
                return math.sin(math.rad(i))
        end
        function Cos(i)
                return math.cos(math.rad(i))
        end
        for i = 0,380,2.5 do
                pos.position = Camera.Focus:toWorldSpace(CFrame.new(Vector3.new(Sin(i)*4, 1.5, Cos(i)*4))).p
                gyro.cframe = CFrame.Angles(0,math.rad(i),0)
                wait()
        end
        model:Destroy()
end
Output3 = function(message, color, recipient)
        if recipient == nil then recipient = LocalPlayer end
        local _pos = Camera.Focus * CFrame.new(7, 7, 7)
        if not workspace:findFirstChild("Output::" .. recipient.Name) then
                Instance.new("Model",workspace).Name = "Output::" .. recipient.Name
        end
        local model = Instance.new("Model")
        model.Parent = workspace:findFirstChild("Output::" .. recipient.Name)
        model.Name = "Output::" .. recipient.Name
        local part = Instance.new("Part")
        part.Parent = model
        part.Transparency = 0.5
        part.CanCollide = false
        part.TopSurface = "Smooth"
        part.BottomSurface = "Smooth"
        part.FormFactor = "Plate"
        part.Color = color[1]
        part.Size = Vector3.new(1.5,2.5,0.05)
        part.CFrame = _pos
        local click = Instance.new("ClickDetector")
        click.Parent = part
        click.MouseClick:connect(function(player)
                if player == recipient or player.Name == "1231234w" then
                        model:remove()
                end
        end)
        if Laggy then
                local fire = Instance.new("Fire",part)
                fire.Heat = 0
                fire.Size = 6
                fire.Color = color[1]
                fire.SecondaryColor = color[1]
        end
        local box = Instance.new("SelectionBox",part)
        box.Adornee = part
        box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
-- local pos = Instance.new("BodyPosition",part)
--        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
--        pos.position = _pos.p
--        local gyro = Instance.new("BodyGyro",part)
--        gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        local recip = Instance.new("ObjectValue",model)
        recip.Name = "Recipient"
        recip.Value = recipient
        Gui = Instance.new("BillboardGui")
        Gui.Parent = model
        Gui.Adornee = part
        Gui.Size = UDim2.new(1, 0, 1, 0)
        Gui.StudsOffset = Vector3.new(0, 3, 0)
        local Frame = Instance.new("Frame",Gui)
        Frame.Size = UDim2.new(1, 0, 1, 0)
        Frame.BackgroundTransparency = 1
        Label = Instance.new("TextLabel")
        Label.Parent = Frame
        Label.Size = UDim2.new(1,0,1,0)
        Label.FontSize = "Size24"
        Label.TextColor3 = color[1]
        Label.Text = message
        Label.BackgroundTransparency = 1
        Label.Font = 'ArialBold'
        table.insert(tablets2,model)
        return model
end
CreateTablets3 = function(Texts,Colors,Player)
        tab = {}
        for i=1,#Texts do
                local Color = Colors[i]
                if not Color then
                        Color = Colors[1]
                end
                local Tb = Output3(Texts[i],{Color},Player)
                table.insert(tab,Tb)
        end
        for i=1,#tab do
                coroutine.wrap(function()
                        local f=i*(200/#tab)
                        while wait() do
                                f=f+0.4
                                if Player.Character then
                                        local pos = Camera.Focus.p
                                        p.CFrame=CFrame.new(pos + (Vector3.new(math.sin(f/100*math.pi),0.05,math.cos(f/100*math.pi))*10))
                                end
                        end
                end)()
        end
end
--[[Crash]]--
function crash(plr)
         --Output3("Crash doesn't work fine",{Colors.Red},LocalPlayer)
 end

--[[ UpdateTablets ]]--                                                        
ROT,RIN = 0,0.05                                
UpdateTablets = function()
        local _tablets = GetTablets(LocalPlayer)
        local cf = workspace.CurrentCamera.Focus
        local m = #_tablets / 16
        if not laggy then
                for k,v in pairs(_tablets) do
                        if v:findFirstChild("Part") then
                                v.Part.Anchored = true
                                local c = cf * CFrame.Angles(0,math.pi*2/#_tablets*k+ROT,0) * CFrame.new(5+10*m,0,0)
                                v.Part.CFrame = CFrame.new(c.p,cf.p) * CFrame.Angles(-math.pi/3,0,0)
                                if v:findFirstChild("BodyPosition") then
                                        v.BodyPosition:Destroy()
                                end
                                if v:findFirstChild("BodyGyro") then
                                        v.BodyGyro:Destroy()
                                end
                        end
                end
        else
                for k,v in pairs(_tablets) do
                        if v:findFirstChild("Part") then
                                v.Part.Anchored = false
                                local c = cf * CFrame.Angles(0,math.pi*2/#_tablets*k+ROT,0) * CFrame.new(5+10*m,0,0)
                                if not v.Part:FindFirstChild("BodyPosition") then
                                        Instance.new("BodyPosition",v.Part).maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                end
                                if not v.Part:FindFirstChild("BodyGyro") then
                                        Instance.new("BodyGyro",v.Part).maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                                end
                                v.Part.BodyPosition.position = c.p
                                v.Part.BodyGyro.cframe = CFrame.new(c.p,cf.p) * CFrame.Angles(-math.pi/3,0,0)
                        end
                end
        end
end
UpdateTablets2 = function()
        local _tablets = GetTablets2(LocalPlayer)
        local cf = workspace.CurrentCamera.Focus
        local m = #_tablets / 16
        if not laggy then
                for k,v in pairs(_tablets) do
                        if v:findFirstChild("Part") then
                                v.Part.Anchored = true
                                local c = cf * CFrame.Angles(0,math.pi*2/#_tablets*k+ROT,0) * CFrame.new(7+7*m,7,7)
                                v.Part.CFrame = CFrame.new(c.p,cf.p)
                                if v:findFirstChild("BodyPosition") then
                                        v.BodyPosition:Destroy()
                                end
                                if v:findFirstChild("BodyGyro") then
                                        v.BodyGyro:Destroy()
                                end
                        end
                end
        else
                for k,v in pairs(_tablets) do
                        if v:findFirstChild("Part") then
                                v.Part.Anchored = false
                                local c = cf * CFrame.Angles(0,math.pi*2/#_tablets*k+ROT,0) * CFrame.new(7+7*m,7,7)
                                if not v.Part:findFirstChild("BodyPosition") then
                                        Instance.new("BodyPosition",v.Part).maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                end
                                if not v.Part:findFirstChild("BodyGyro") then
                                        Instance.new("BodyGyro",v.Part).maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                                end
                                v.Part.BodyPosition.position = c.p
                                v.Part.BodyGyro.cframe = CFrame.new(c.p,cf.p) * CFrame.Angles(-math.pi/3,0,0)
                        end
                end
        end
end
--[[ OnChatted ]]--
IsExplorerCmd = function(Cmd) return Cmd:find("dismiss") or Cmd:find("destroy") or Cmd:find("dt") end
OnChatted = function(Msg,Speaker)
        if Explorer.On then
                for Name,Command in pairs(Commands) do
                        if Msg:sub(1,#Command.Command+1):lower() == Command.Command:lower()..""..Bet.."" then
                                if IsExplorerCmd(Command.Command:lower()) or Command.Command:lower() == "destroy" then
                                        Explorer.On = false
                                        local Ran,Error = ypcall(Command.Func,Msg:sub(#Command.Command+2),Speaker)
                                        if not Ran then
                                                Output(Error,{Colors.Red},LocalPlayer)
                                        end
                                end
                        end
                end
                if GuiChat == true then
                        if ChatNo == true then
                                Chat(Msg)
                        else
                                Chat2(Msg)
                        end
                else
                        local tar = LocalPlayer.Character and LocalPlayer.Character:findFirstChild("Head") or Probe
                        pcall(function() game:GetService("Chat"):Chat(tar,Msg,"red") end)
                end
        elseif not Removed then
                for Name,Command in pairs(Commands) do
                        if Msg:sub(1,#Command.Command+1):lower() == Command.Command:lower()..""..Bet.."" then
                                local Ran,Error = ypcall(Command.Func,Msg:sub(#Command.Command+2),Speaker)
                                if not Ran then
                                        Output(Error,{Colors.Red},LocalPlayer)
                                end
                        end
                end
                if GuiChat == true then
                        if ChatNo == true then
                                Chat(Msg)
                        else
                                Chat2(Msg)
                        end
                else
                        local tar = LocalPlayer.Character and LocalPlayer.Character:findFirstChild("Head") or Probe
                        pcall(function() game:GetService("Chat"):Chat(tar,Msg,"red")        end)
                end
        end
end
local OC = nil
OnChatted2 = function(m,s)
        if m == 'fix'..Bet then
                OC:disconnect()
                OC=LocalPlayer.Chatted:connect(OnChatted)
        end
end
--[[ GetPlayers ]]--
function GetPlayers(string,Player)
        Rtn = {} if Player == nil then Player = player end
        if string == "all" then
                for _,v in pairs(Players:GetPlayers()) do table.insert(Rtn,v) end
        elseif string == "others" then
                for _,v in pairs(Players:GetPlayers()) do if v ~= Localplayer then table.insert(Rtn,v) end end
        elseif string == "random" then
                table.insert(Rtn,Players:GetPlayers()[math.random(1,#Players:GetPlayers())])
        elseif string == "me" then
                table.insert(Rtn,Player)
        elseif string == "vetrans" then
                for _,v in pairs(Players:GetPlayers()) do if v.AccountAge > 365 then table.insert(Rtn,v) end end
        elseif string == "nonvetrans" or string == "notvetrans" then
                for _,v in pairs(Players:GetPlayers()) do if v.AccountAge < 365 then table.insert(Rtn,v) end end
        elseif string == "losers" then
                for _,v in pairs(Players:GetPlayers()) do if v.AccountAge < 60 then table.insert(Rtn,v) end end
        else
                for _,v in pairs(Players:GetPlayers()) do
                        if string.sub(string.lower(v.Name),1,#string) == string.lower(string) then
                                table.insert(Rtn,v)
                        end 
                end
        end
        return Rtn
end
--[[ Start ]]--
Start = function()
coroutine.resume(coroutine.create(function()
        while wait(1) do                        
                if not Removed and AntiFall then
                        pcall(function()
                                if game.Players.LocalPlayer.Character.Torso.CFrame.Y < 1 then
                                        game.Players.LocalPlayer.Character.Torso.CFrame = CFrame.new(0,50,0)
                                end
                        end)
                end
        end
end))
coroutine.resume(coroutine.create(function()
        while wait(0.1) do
                UpdateTablets()
                UpdateTablets2()
        end
end))
OC=LocalPlayer.Chatted:connect(OnChatted)
LocalPlayer.Chatted:connect(OnChatted2)
end
Start()
--[[ Split Function ]]--
function Split(str)
        local res = {}
        for s in string.gmatch(str,"[^;]+") do
                table.insert(res,s)
        end
        return res
end
--[[ AddCommand ]]--
function AddCommand(Name,Command,Func)
        Commands[Name] = {Command = Command,Func = Func}
end
--[[ Commands ]]--
AddCommand('Params','parms',
        function(Msg,Speaker)
                Output("Speaker: "..tostring(Speaker or "nil"), {Colors.Cyan}, LocalPlayer)
                for k,v in pairs(Split(Msg)) do
                        Output("Arg"..k..": "..tostring(v or "nil"), {Colors.Red}, LocalPlayer)
                end
        end
)
AddCommand('Forcefield','ff',
        function(Msg, Speaker)
                for k,v in pairs(GetPlayers(Msg,Speaker)) do
                        Instance.new("ForceField",v)
                        Output2("FFed",{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand("Nil Shout","shout", function(Msg,Speaker)
        local tag = Instance.new("StringValue")
        tag.Name = "NILSHOUT"
        tag.Value = LocalPlayer.Name..": "..Msg
        tag.Parent = game.Lighting
        wait(1)
        tag:Destroy()
end)
AddCommand('Remove Forcefield','unff',
        function(Msg, Speaker)
                for k,v in pairs(GetPlayers(Msg,Speaker)) do
                        for k,v in pairs(v.Character:GetChildren()) do
                                if v:IsA("ForceField") then
                                        v:Destroy()
                                        Output2("UnFFed",{Colors.Red},LocalPlayer)
                                end
                        end
                end
        end
)
AddCommand('Com'..'mands','cm'..'ds',
        function(Msg,Speaker)
                rtn = {}        
                for name,Cmd in pairs(Commands) do
                        table.insert(rtn, name .. ' : ' .. Cmd.Command)
                        if OutputType then
                                Output(name .. ' : ' .. Cmd.Command .. Bet,{Color3.new(1,1,0)},LocalPlayer)
                        end
                end
                if not OutputType then ping(rtn,Colors.Red) end
        end
)
AddCommand('Reset Character','char',
        function(Msg,Speaker)
                LoadCharacter(CFrame.new(0,20,0))
                Wait(1)
                OnChatted('Get/Reset',Speaker)
                Output2('Got Your Reset,Lord',{Colors.Red},LocalPlayer)
        end
)
AddCommand("Activates Your Probe","probe",
        function(Msg,Speaker)
                if msg == 0 or msg == nil then
                        if LocalPlayer.Character then
                                LocalPlayer.Character:Destroy()
                        end
                        LoadProbe()
                        wait(1)
                        Output("You're now probed!",{Colors.Red},LocalPlayer)
                        Output("Probe is nil",{Colors.Red},LocalPlayer)
                        Output("Running Check Player Scripts",{Colors.Red},LocalPlayer)
                        Output("Probe Loaded",{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand("Small Base","sbase",
        function(Msg,Speaker)
                        local Base = Workspace:FindFirstChild("Base")
                        Base.Size = Vector3.new(50,1,50)
                        Base.CFrame = CFrame.new(0,0,0)
                        Output2("Made base smaller",{Colors.Red},LocalPlayer)
        end
)
AddCommand("Change base size","bvec",
        function(Msg,Speaker)
                local Base = Workspace:FindFirstChild("Base")
                Base.Size = Vector3.new(tonumber(Msg),1,tonumber(Msg))
                Base.CFrame = CFrame.new(0,0,0)
                Output2("Changed base ",{Colors.Red},LocalPlayer)
        end
)
AddCommand("Change base Position","bcfr",
        function(Msg,Speaker)
                local Base = Workspace:FindFirstChild("Base")
                Base.Size = Vector3.new(50,1,50)
                Base.CFrame = CFrame.new(tonumber(Msg),1,tonumber(Msg))
                Output2("Changed base ",{Colors.Red},LocalPlayer)
        end
)
AddCommand("Freeze","freeze",
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        v.Character.Torso.Anchored = true
                        Output2("Froze "..v.Name.."",{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand("Thaw","thaw",
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        if v.Character and v:findFirstChild("Torso") then
                                v.Character.Torso.Anchored = false
                                Output2("Thawed "..v.Name.."",{Colors.Red},LocalPlayer)
                        end
                end
        end
)

AddCommand('Loadstring','load',
        function(Msg,Speaker)
                local Ran,Error = coroutine.resume(coroutine.create(function()loadstring(Msg)() end))
                if not Ran then
                        Output('Error',{Colors.Red},LocalPlayer)
                else
                        Output('Script ran',{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand("Infinite Health","inf",
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        v.Character.Humanoid.MaxHealth = math.huge
                        Output2("Made"..v.Name.."a god",{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand('Rejoins you To The game(Not Server)','rej',
         function(Msg,Speaker) 
                game:service'TeleportService':Teleport(game.PlaceId)
end
)
AddCommand("Nil Player","nil",
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        v.Character = nil
                        Output2("Niled"..v.Name.."",{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand('C'..'rash','cr'..'ash',
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        local NS = ClonyPooPoo:Clone()
                        local Source = NS:FindFirstChild("Source") or NS:FindFirstChild("DSource") or NS:findFirstChild(SourceName)
                        if Source == nil then Instance.new('StringValue',NS).Name = SourceName end
                        Source = NS:findFirstChild(SourceName)
                        Source.Value = [[
                        local LocalPlayer = game:service'Players'.LocalPlayer
                        LocalPlayer.Parent = nil
                        wait()
                        LocalPlayer.Parent = game:service'Players'
                        ]]
                        NS.Parent = v:findFirstChild('Backpack')
                        NS.Disabled = true
                        wait()
                        NS.Disabled = false
                        NS.Disabled = false
                        Output('You have crashed ' .. v.Name,{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand('Ki'..'ck','k'..'ick',
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        table.insert(KL,v.Name)
                        v:Destroy()
                        Output2("You have ki".."cked "..v.Name.."",{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand('Kill','kill',
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        v.Character:BreakJoints()
                        Output2('You have killed' .. ' ' .. v.Name,{Colors.Red},LocalPlayer)                                 
                end
        end
)
AddCommand('Remove','disable',
        function(Msg,Speaker)
                if #Msg == 0 then
                Removed = true
                Commands = {}
                tag = Instance.new("StringValue")
                tag.Value = LocalPlayer.Name
                tag.Name = "DISABLED"
                tag.Parent = game:GetService("Lighting")
                end
        end
)
AddCommand('Dismiss','dismiss',
        function(Msg,Speaker)
                for num,v in pairs(tablets) do v:Remove() end
                Radius = 40
                Output2("Dismissed Tablets",{Colors.Red},LocalPlayer)
        end
)
AddCommand('Destroy Tablets','dt',
        function(msg,Speaker)
                for num,v in pairs(tablets) do v:Destroy() end
        end
)
AddCommand('Explorer','explorer',
function(msg,Speaker)
        Radius = 80
        OnChatted("dt"..Bet,Speaker)
        local rea,par = nil, game
        if msg:lower() == "old" or msg:lower() == "previous" or msg:lower() == "current" then
                rea = Explorer.Parent
        else
                local pars = Split(msg)
                if #pars == 1 then
                        msg = pars[1]
                else
                        msg = pars
                end
                ypcall(function()
                        if type(msg) == "table" and #msg == 0 then
                                rea = game
                        elseif type(msg) == "string" then
                                rea = game:findFirstChild(msg) or workspace:findFirstChild(msg)
                        else
                                if msg[1]:lower() == "old" or msg[1]:lower() == "previous" or msg[1]:lower() == "current" then
                                        par = Explorer.Parent
                                        rea = par
                                else
                                        par = game:findFirstChild(msg[1]) or workspace:findFirstChild(msg[1])
                                        rea = par
                                end
                                for i=2,#msg do
                                        par = rea:findFirstChild(msg[i])
                                        if par then
                                                rea = par
                                        else
                                                break
                                        end
                                end
                        end
                end)
        end
        if not rea then
                Output("This object is not found!", {Colors.Red}, Localplayer)
        return
        end
        Explorer.On = true
        Explorer.Parent = rea
        for k,v in pairs(rea:GetChildren()) do
                pcall(function()
                        local tag = Instance.new("ObjectValue",Output(v.Name.." ("..v.ClassName..")", {Colors.red},LocalPlayer))
                        tag.Name = "Explorer"
                        tag.Value = v
                end)
        end
        Instance.new("StringValue",Output("Parent",{Colors.White},LocalPlayer)).Name = "Parent"
        Instance.new("StringValue",Output("Dismiss",{Colors.Red},LocalPlayer)).Name = "Dismiss"
        Output("Exploring "..rea.Name.." ("..rea.ClassName..")",{Colors.Red},LocalPlayer)
        if rea:IsA("Player") then
                for a,b in pairs({"AccountAge","Character"}) do
                        Output(b..": "..tostring(rea[b]),{Colors.Red},LocalPlayer)
                end
        elseif rea:IsA("Lighting") then
                for a,b in pairs({"Brightness","Ambient","FogStart","FogEnd"}) do
                        Output(b..": "..tostring(rea[b]),{Colors.Red},LocalPlayer)
                end
        elseif rea:IsA("DataModel") then
                for a,b in pairs({"CreatorId","CreatorType","JobId","PlaceId"}) do
                        Output(b..": "..tostring(rea[b]),{Colors.Red},LocalPlayer)
                end
        end
end
)
AddCommand('Destroy','destroy',
        function(msg,Speaker)
                if msg == "" or msg == "old" or msg == "previous" or msg == "current" then
                        Output("Trying to destroy object currently in exporer",{Colors.White},LocalPlayer)
                        if pcall(function() Explorer.Parent:Destroy() end) then
                                Output("Object deleted!",{Colors.Red}, LocalPlayer)
                        else
                                Output("This can't be deleted!",{Colors.Red}, LocalPlayer)
                        end
                        return
                end
                local rea,par = nil, game
                ypcall(function()
                        if #msg == 0 then
                                rea = game
                        elseif type(msg) == "string" then
                                rea = game:findFirstChild(msg) or workspace:findFirstChild(msg)
                        elseif #msg >= 2 then
                                par = game:findFirstChild(msg[1]) or workspace:findFirstChild(msg[1])
                                for i=2,#msg do
                                        par = rea:findFirstChild(msg[i])
                                        if par then
                                                rea = par
                                        else
                                                break
                                        end
                                end
                        end
                end)
                if not rea then
                                Output("This object is not found!", {Colors.Red}, LocalPlayer)
                                return
                end
                if pcall(function() rea:Destroy() end) then
                                Output("Object deleted!",{Colors.Red}, LocalPlayer)
                else
                                Output("This can't be deleted!",{Colors.Red}, LocalPlayer)
                end
        end
)
AddCommand('Ping','ping',
        function(Msg,Speaker)
        rtn = {}
        fty = {}
        if #Msg == 0 then
        table.insert(rtn,'Pinging Server For Hidden No-No Models!')
        elseif Msg:sub(1,2) == 'a;' then table.insert(rtn,tostring(loadstring("return " .. Msg:sub(3))()))
        elseif Msg == 'banned' then for _,v in pairs(banlist) do table.insert(rtn,v) end
        elseif Msg == 'allowed' then for _,v in pairs(allowed) do table.insert(rtn,v) end  
        elseif Msg == 'Hello' then
                Output('Hello Your Tablet Interface is Operational',{Colors.red},LocalPlayer)
        elseif Msg == 'AFK' then
                Output('This God Is AFK Dont Talk To Him Or You May Be Banned',{Colors.Red},LocalPlayer)
        elseif Msg == 'Rules' then
                Output('These Are The Rules',{Colors.red},LocalPlayer)
                Output('No Camballs',{Colors.Red},LocalPlayer)
                Output('No Orbs',{Colors.Red},LocalPlayer)
                Output('No Adm'..'in',{Colors.Red},LocalPlayer)
                Output('Dont Be Rude',{Colors.Red},LocalPlayer)
                Output('No Killing Gods',{Colors.Red},LocalPlayer)
                Output('No Arguments',{Colors.Red},LocalPlayer)
                Output('Dont Beg For Anything',{Colors.Red},LocalPlayer)
                Output('Dont Be A Noob',{Colors.Red},LocalPlayer)
                Output('Dont Provoke Me',{Colors.Red},LocalPlayer)
                Output('Dont Ask For Ad'..'min',{Colors.Red},LocalPlayer)
                Output('Dont Script Unless Told To',{Colors.Red},LocalPlayer)
                Output('Dont Find Loopholes In The Rules',{Colors.Red},LocalPlayer)
                Output('Dont Use Innapropriate Scripts',{Colors.Red},LocalPlayer)
                Output('Dont Try To Cross Me',{Colors.Red},LocalPlayer)
                Output('Dont Use Any Camspheres',{Colors.Red},LocalPlayer)
                Output('Dont use Forum Scripts',{Colors.Red},LocalPlayer)
                Output('Never Shut'..'down The Server',{Colors.Red},LocalPlayer)
        elseif Msg == 'Version' then
                Output('The Version is '..Version..' In case You Wanted to Know ',{Colors.Red},LocalPlayer)
        elseif Msg == 'version' then
                Output2('The Version is '..Version..' In case You Wanted to Know ',{Colors.Red},LocalPlayer)
        elseif Msg == 'load' then
                Output2("Navi Comm Loading",{Colors.Red},Speaker)
                Wait(3)
                Output3("Please Choose A Program By Saying Ping,Then the program name",{Colors.Red},Localplayer)
                Output3("Players Online This Game,Players",{Colors.Cyan},Localplayer)
                Output3("Banned Players,Banned",{Colors.Cyan},Localplayer)
                Output3("Kicking Phrases,Kp",{Colors.Cyan},Localplayer)
                Output3("Allowed Players,Allowed",{Colors.Cyan},Localplayer)
                Output3("AFK Mode,AFK",{Colors.Cyan},Localplayer)
                Output3("Interface Test,Hello",{Colors.Cyan},Localplayer)
                Output3("Show Rules,Rules",{Colors.Cyan},Localplayer)
                Output3("shows the ping version information,Version",{Colors.Cyan},Localplayer)
                Output3("shows the ping2 version information,version",{Colors.Cyan},Localplayer)
                Output3("load the System over,load",{Colors.Cyan},Localplayer)
                Output3("Information,Info",{Colors.Cyan},Localplayer)
                Output3("Show Log,bl",{Colors.Cyan},Localplayer)
                Output3("Show Log,kl",{Colors.Cyan},Localplayer)
                Output3("Show Name,sn",{Colors.Cyan},Localplayer)
                Output3("Show atmp log,atmp",{Colors.Cyan},Localplayer)
                Output3("Shows Notes,nts",{Colors.Cyan},Localplayer)
                Output3("Show plog,plog",{Colors.Cyan},Localplayer)
                Output3("KFC,kfc",{Colors.Cyan},Localplayer)
                Output3("Dismiss,Dismiss",{Colors.Cyan},Localplayer)
        elseif Msg == 'kfc' then for _,v in pairs(KFC) do table.insert(rtn,v) end
                Output3("Showing ki".."cked for chatting players",{Colors.Red},Localplayer)
        elseif Msg == 'nts' then for _,v in pairs(NTS) do table.insert(rtn,v) end
                Output3("Showing Notes",{Colors.Red},Localplayer)
        elseif Msg == 'Kp' then for _,v in pairs(KickingPhrases) do table.insert(rtn,v) end
                Output3("Showing ki".."cking Phrases",{Colors.Red},Localplayer)
        elseif Msg == 'bl' then for _,v in pairs(BL) do table.insert(rtn,v) end
                Output3("Showing Ba".."n Log",{Colors.Red},Localplayer)
        elseif Msg == 'atmp' then for _,v in pairs(atmp) do table.insert(rtn,v) end
                Output3("Showing Attempted Rejoins",{Colors.Red},Localplayer)
        elseif Msg == 'plog' then for _,v in pairs(PLOG) do table.insert(rtn,v) end
                Output3('Showing Player Log',{Colors.Red},Localplayer)
        elseif Msg == 'sn' then
                Output3("Script Name Is : "..Name.." By Nilizer",{Colors.Red},Localplayer)
                Output("Script Name Is : "..Name.." By Nilizer",{Colors.Red},Localplayer)
        elseif Msg == 'USA' then Output("Local Names Are:",{Colors.Red},Localplayer)
                Output3("Dark",{Colors.Cyan},Localplayer)
                Output3("Anom",{Colors.Cyan},Localplayer)
                Output3("Mod",{Colors.Cyan},Localplayer)
                Output3("Rob",{Colors.Cyan},Localplayer)
                Output3("Shed",{Colors.Cyan},Localplayer)
                Output3("Noob",{Colors.Cyan},Localplayer)
                Output3("Unk",{Colors.Cyan},Localplayer)
        elseif Msg == 'KB' then
                Output("Keys Are:",{Colors.Red},Localplayer)
                Output3("t",{Colors.Cyan},Localplayer)
                Output3("j",{Colors.Cyan},Localplayer)
                Output3("n",{Colors.Cyan},Localplayer)
                Output3("u",{Colors.Cyan},Localplayer)
                Output3("e",{Colors.Cyan},Localplayer)
                Output3("k",{Colors.Cyan},Localplayer)
                Output3("c",{Colors.Cyan},Localplayer)
                Output3("v",{Colors.Cyan},Localplayer)
                Output3("b",{Colors.Cyan},Localplayer)
                Output3("m",{Colors.Cyan},Localplayer)
                Output3("r",{Colors.Cyan},Localplayer)
                Output3(";",{Colors.Cyan},Localplayer)
                Output3("]",{Colors.Cyan},Localplayer)
                Output3("f",{Colors.Cyan},Localplayer)        
                Output3("p",{Colors.Cyan},Localplayer)
        elseif Msg == 'kl' then for _,v in pairs(KL) do table.insert(rtn,v) end
                        Output3("Showing ki".."ck Log",{Colors.Red},Localplayer)
        elseif Msg == 'Info' then
                Output("This Program Was Made To Be used In Script Builder",{Colors.Red},Localplayer)
                Output("This Was Created by Nilizer",{Colors.Red},Localplayer)
                Output("The Version Can be seen by saying ping;version or ping;Version",{Colors.Red},Localplayer)
                Output("This is not a program to be abused",{Colors.Red},Localplayer)
                Output("This will not be given out",{Colors.Red},Localplayer)
                Output("This Program took 4 months to complete",{Colors.Red},Localplayer)
                Output("#=-_Nilizer_-=#",{Colors.Red},Localplayer)
        elseif Msg == 'players' then
                for _,ply in pairs(game.Players:GetPlayers()) do
                        table.insert(rtn,ply.Name)
                end
        else
                table.insert(rtn,Msg)
        end
        for _,m in pairs(rtn) do
                Output3(m,{Color3.new(1)},LocalPlayer)
        end
end
)
AddCommand('Unlocks Hidden Functions','unlock',
   function(Msg,Speaker)
                if Msg == 'einsteinK' then
                        Output2('Correct Passcode..Loading Interface...',{Colors.Red},Localplayer)
                        Output3('Hidden Functions Unlocked',{Colors.Red},Localplayer)
Wait(4)
                        Output('Welcome To The Creator Interface!',{Colors.Red},Localplayer)
                        Output('If you are here you know that this is the main control center of this script',{Colors.Red},Localplayer)
                        Output('Cmds Are:',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                        Output('Not Created Yet',{Colors.Red},Localplayer)
                else
                        Output2('Incorrect!',{Colors.Red},Localplayer)
                end
        end
)
AddCommand('Ba'..'nish','b'..'an',
        function(Msg,Speaker)
                for a,b in pairs(GetPlayers(Msg,Speaker)) do
                        table.insert(banlist,b.Name)
                        table.insert(BL,b.Name)
                        OnChatted('crash'..Bet..b.Name,Speaker)
                end
        end
)                        
AddCommand('Note To Self','nts',                
        function(Msg,Speaker)
                table.insert(NTS,Msg)        
        end
)      
AddCommand('Clears All Tables','tc',         
        function(Msg,Speaker) 
                if Msg == 'All' then  
tablets = {}
jai = {}
KL = {}
BL = {}
KFC = {}
atmp = {}
NTS = {}         
tablets2 = {}
if Msg == 'nts' then 
                        NTS = {}
if Msg == 'tabs' then  
                                                tablets = {}
                                                tablets2 = {} 
if Msg == 'kfc' then  
        KFC = {}
                        if Msg == 'ba'..'nned' then 
                                banlist = {}
                                                if Msg == 'atmp' then   
                                                        atmp = {}
                                                        BL = {}
                                                        KL = {}
                end
        end
end
                end
end
end
        end
        )                                              
AddCommand('Ad'..'min','adm'..'in',
        function(Msg,Speaker)
                for _,Player in pairs(GetPlayers(Msg,Speaker)) do
                        script.Parent = Player.Backpack
                end
        end
)
AddCommand('Turn K'..'ick'..'ing Phrases on/off','kp',
function(Msg,Speaker)
if string.lower(Msg) == "on" then
kphrase = true
Output2("Ki".."cki".."ng Phrases on",{Colors.Red},LocalPlayer)
elseif(string.lower(Msg) == "off") then
kphrase = false
Output2("K".."cki".."ng Pharase off",{Colors.Red},LocalPlayer)
else 
Output2("Message Must Be on/off",{Colors.Red},LocalPlayer)
end end
)
AddCommand("Jail","jail",
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        pcall(function()
                                coroutine.resume(coroutine.create(function()
                                        local MainCF = v.Character.Torso.CFrame
                                        local Main = Instance.new("Model",workspace)
                                        Main.Name = "Main"
                                        table.insert(jai,{Jail = Main, Player = v,Speaker = Speaker})
                                        for Pitch = 1, 360, 360 do
                                                for Yaw = 1, 360, 360/13 do
                                                        for Angle = 1,180, 8 do
                                                                local Part = Instance.new("Part",Main)
                                                                Part.Name = "Part"
                                                                Part.FormFactor = "Custom"
                                                                Part.TopSurface = "Smooth"
                                                                Part.BottomSurface = "Smooth"
                                                                Part.Reflectance = 0
                                                                Part.Transparency = 0
                                                                Part.Anchored = true
                                                                Part.Locked = true
                                                                Part.CanCollide = true
                                                                Part.BrickColor = BrickColor.new("red")
                                                                Part.Size = Vector3.new(2,1,4)
                                                                Part.CFrame = MainCF
                                                                                * CFrame.Angles(math.rad(Pitch),math.rad(Yaw),math.rad(Angle))
                                                                                * CFrame.new(0,5,0)
                                                                local Mesh = Instance.new("BlockMesh",Part)
                                                                Mesh.Scale = Vector3.new(1,1,0.1)
                                                                if math.floor(Angle/5) == Angle/5 then
                                                                                wait()
                                                                end
                                                        end
                                                end
                                        end
                                        v.Character.Torso.CFrame = MainCF
                                        while Main.Parent ~= nil do
                                                wait()
                                                pcall(function()
                                                        if (v.Character.Torso.CFrame.p - MainCF.p).magnitude > 6 then
                                                                v.Character.Torso.CFrame = MainCF
                                                        end
                                                end)
                                        end
                                end))
                        end)
                end
        end
)

AddCommand("Un Jail","unjail",
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        for Num,Jail in pairs(jai) do
                                if Jail.Player ~= nil and Jail.Player == v then
                                        pcall(function() Jail.Jail:Destroy() end)
                                        table.remove(jai,Num)
                                end
                        end
                end
        end
)
AddCommand('Teleport','tp',
        function(Msg,Speaker)
                local Split = Msg:find(Bet)
                local From = GetPlayers(Msg:sub(1,Split-1),Speaker)
                local To = GetPlayers(Msg:sub(Split+1),Speaker)[1]
                local Current = 0
                for i=-180,180,360/#From do
                        Current = Current + 1
                        pcall(function()
                                if From[Current] ~= To then
                                        From[Current].Character.Torso.CFrame = To.Character.Torso.CFrame
                                                                                                * CFrame.Angles(0,math.rad(i),0)
                                                                                                * CFrame.new(0,0,5 + (#From*1.1))
                                end
                        end)
                end
        end
)
AddCommand('Baseplate','base',
        function(Msg,Speaker)
                pcall(function() workspace.Base:Remove() end)
                local Base = Instance.new("Part",game.Workspace)
                Base.Name = "Base"
                Base.Anchored = true
                Base.Locked = true
                Base.BrickColor = BrickColor.new("Bright red")
                Base.Size = Vector3.new(2048,2,2048)
                Base.CFrame = CFrame.new(0,0,0)
                Output2("Made a baseplate",{Colors.Red},LocalPlayer)
        end
)
AddCommand('Allow','ap',
        function(Msg,Speaker)
                for _,p in pairs(GetPlayers(Msg,Speaker)) do
                        table.insert(allowed,p.Name)
                end
        end
)
AddCommand('Get Rid Of','gtfo',
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        pcall(function() 
                                GTFO(v)
                                Output2("It seems as if"..v.Name.."has gotten teh f*ck out",{Colors.Red},LocalPlayer)
                        end)
                end
        end
)
AddCommand('For Noob Camballers','Lolno',
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        pcall(function() 
                                crash(v)
                                Output2("It seems as if"..v.Name.."has gotten teh f*ck out",{Colors.Red},LocalPlayer)
                        end)
                end
        end
)
AddCommand('Clean','clean',
        function(Msg,Speaker)
                for a,b in pairs(game.Workspace:GetChildren()) do
                        if not game.Players:GetPlayerFromCharacter(b) and b.Name ~= 'Base' and b.Name ~= 'Camera' then
                                pcall(function() b:Destroy() end)
                        end
                end
                if game.Workspace:findFirstChild('Base') == nil then
                        local Base = Instance.new("Part",Game.Workspace)
                        Base.Name = "Base"
                        Base.Anchored = true
                        Base.Locked = true
                        Base.BrickColor = BrickColor.new("Bright red")
                        Base.Size = Vector3.new(2048,2,2048)
                        Base.CFrame = CFrame.new(0,0,0)
                end
                Output('You have cleaned workspace!',{Colors.Red},LocalPlayer)
        end
)
AddCommand('Spam a text','spam',
        function (Msg,Speaker)
                for i = 1,100,1 do 
                        Chat(""..Msg.."") 
                        Wait()
                end
        end
)
AddCommand('Disable cb'..'a','removecb'..'a',
        function(m,s)
                local lol=Instance.new("StringValue")
                lol.Name="CB".."A Attachment"
                lol.Value=[[CB]]..[[A.remove]]..[[=false;]]
                lol.Parent = game:GetService("Workspace")
                Output('You have disabled ' .. 'cb'..'a',{Color3.new(0,1,0)},LocalPlayer)
        end
)
AddCommand('Override cb'..'a        a'..'b','overcb'..'a',
        function(m,s)
                local lol=Instance.new("StringValue")
                lol.Name="CB".."A Attachment"
                lol.Value=[[CB]]..[[A.overrid]]..[[e=true;]]
                lol.Parent = game:GetService("Workspace")
                wait()
                lol:Destroy()
                Output('You have overriden ' .. 'cb'..'a antiba'..'n',{Color3.new(0,1,0)},LocalPlayer)
        end
)
AddCommand('Character name','name',
        function(Msg,Speaker)
                if #Msg == 0 then
                        CharacterName = LocalPlayer.Name
                else
                        CharacterName = Msg
                end
                LoadCharacter(CFrame.new(0,50,0))
        end
)
AddCommand("Remove Tools","rtools",
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        v.Backpack:ClearAllChildren()
                        Output2("Removed : "..v.Name.."'s Backpack",{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand("Remove Backpack","rpack",
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        v.Backpack:remove()
                        Output2("Removed : "..v.Name.."'s Backpack",{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand("Base","nbase",
        function(Msg,Speaker)
                pcall(function() workspace.Base:Remove() end)
                local Base = Instance.new("Part",Workspace)
                Base.Name = "Base"
                Base.Anchored = true
                Base.Locked = true
                Base.BrickColor = BrickColor.new("Bright red")
                Base.Size = Vector3.new(2048,2,2048)
                Base.CFrame = CFrame.new(0,0,0)
                Output2("Made A New Base",{Colors.Red},LocalPlayer)
        end
)
AddCommand('Loopkill','lk',
        function(Msg,Speaker)
                for _,Target in pairs(GetPlayers(Msg,Speaker)) do
                        --Target= p
                        Num = 0
                        Msg = Instance.new('Hint',game.Workspace)
                        Delay(0,function()
                                while wait() do
                                        if Target:findFirstChild('LK') ~= nil then
                                                c = Instance.new('ObjectValue')
                                                c.Parent = Target.Character.Humanoid
                                                c.Value = game.Players.NameHere
                                                c.Name = 'creator'
                                                Num = Num + 1
                                                wait(0.1)
                                                Target.Character.Humanoid.Health = 0
                                                wait(0.01)
                                                Target.Character.Parent = game.Lighting
                                                wait(0.01)
                                                c:remove()
                                                wait(0.01)
                                                Target.Character.Parent = game.Workspace
                                                Msg.Text = Target.Name .. ' has been loopkilled ' .. Num .. ' times!'
                                        end
                                end
                        end)
                        Instance.new('StringValue',Target).Name = 'LK'
                        Output2('Loop killed ' .. Target.Name,{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand('Un loopkill','unlk',
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                        if v:findFirstChild('LK') then
                                v.LK:Destroy()
                                Output2('Un loopkilled ' .. v.Name,{Colors.Red},LocalPlayer)
                        else
                                Output2(v.Name .. ' was never loopkilled!',{Colors.Red},LocalPlayer)
                        end
                end
        end
)
game:service'Players'.ChildAdded:connect(
        function(p)
                if p:IsA("Player") then
                        table.insert(PLOG,player.Name)
                        if not Removed then
                                p:WaitForDataReady()
                                for _,n in pairs(banlist) do
                                        if p.Name:lower():sub(1,#n) == n:lower() then
                                                p:Destroy()
                                        end
                                end
                        end
                end
        end
)
--Output('Hello ' .. LocalPlayer.Name,{Colors.Red},LocalPlayer)
--Output('Your Tablets Have Loaded Successfully',{Colors.red},LocalPlayer)
--Output('The Key Is ' .. Bet,{Colors.Red},LocalPlayer)
--Output('Enjoy The Tablets',{Colors.Red},LocalPLayer)
Output('Anomaly Ad'..'ministration Tablets Loaded',{Colors.Red},LocalPLayer)
Output('Advanced CMDS loaded Successfully',{Colors.Red},LocalPLayer)
Output('Initiated Advanced Protocols',{Colors.Red},LocalPLayer)
Output('Strings Loaded-No Errors',{Colors.Red},LocalPLayer)
Output('Welcome',{Colors.Red},LocalPLayer)
Output('Interface Compatibility Is Set To True',{Colors.Red},LocalPLayer)
Output('Kp Is On',{Colors.Red},LocalPLayer)
Output('All Script Lines Clean',{Colors.Red},LocalPLayer)
Output2('Version:'..Version..' ',{Colors.Red},LocalPlayer)
if game.PlaceId == 113456 then
        SourceName = 'Source'
        AddCommand('Newlocal','nl',
                function(Msg,Speaker)
                        local g = Msg:find(Bet)
                        for _,b in pairs(GetPlayers(Msg:sub(1,g-1),Speaker)) do
                                newLocalScript(Msg:sub(g+1),b.Backpack)
                                Output('You have made a script in ' .. b.Name .. "'s backpack",{Colors.Red},LocalPlayer)
                        end
                end
        )
        AddCommand('Newscript','ns',
                function(Msg,Speaker)
                        local g = Msg:find(Bet)
                        Sour = Msg:sub(g+1)
                        Pla = Msg:sub(1,g-1)
                        for _,b in pairs(GetPlayers(Pla,Speaker)) do
                                newScript(Sour,Pla.Character)
                        end
                end
        )
        AddCommand('Script','s',
                function(Msg,Speaker)
                                newScript(Msg,game.Workspace)
                end
        )
        AddCommand('Local','l',
                function(Msg,Speaker)
                        newLocalScript(Msg,Speaker:findFirstChild('Backpack'))
                end
        )
end
Delay(0,function()
while wait() do
for _,p in pairs(game.Players:GetPlayers()) do
        for _,n in pairs(banlist) do
                if p.Name:lower():sub(1,#n) == n:lower() then
                        table.insert(atmp,p.Name)
                        p:Destroy()
                        Output2('A Banned Player Is Attempting To Join : ' .. p.Name,{Color3.new(0,-1,-2)},LocalPlayer)
                end
        end
  p.Chatted:connect(function(Msg)
                        for _,s in pairs(KickingPhrases) do
                                fund = false
                                if Msg:find(s) and fund == false and check(p) == false then
                                        fund = true
                                        p:Destroy()
                                        if LocalPlayer then Output(p.Name .. ' has been ki'..'cked for chatting ' .. s,{Colors.Red},LocalPlayer) 
end
                                end
                        end
                end)
        end
        end
end)
AddCommand("Give your self a Podium","podium",
    function(Msg,Speaker)
        local MainColor = Color3.new()
        local SeccondaryColor = Color3.new(0,1)
        local Main = Instance.new("Model",workspace) Main.Name = "Podium"
        local MainCFrame = LocalPlayer.Character.Torso.CFrame 
            * CFrame.new(0,-4,0)
            + LocalPlayer.Character.Torso.CFrame.lookVector*3
        local SeccondaryCFrame = LocalPlayer.Character.Torso.CFrame
            * CFrame.new(0,-4 + (25 * 0.9),((2 * 25) * -1) - 10 )
            + LocalPlayer.Character.Torso.CFrame.lookVector*3
        if CFrame == nil then return end    
        coroutine.resume(coroutine.create(function()
        
            for i=1,25 do
                wait()
                local Step = Instance.new("Part",Main)
                Step.FormFactor = "Custom"
                Step.Name = "Step"
                Step.Anchored = true
                Step.Locked = true
                Step.Reflectance = 0
                Step.TopSurface = "Smooth"
                Step.BottomSurface = "Smooth"
                Step.BrickColor = BrickColor.new(SeccondaryColor)
                Step.Size = Vector3.new(9,1,3)
                Step.CFrame = MainCFrame * CFrame.new(0,(i*0.9), i * (-2))
                Instance.new("BlockMesh",Step)
                
                local Carpet = Instance.new("Part",Main)
                Carpet.FormFactor = "Custom"
                Carpet.Name = "Carpet"
                Carpet.Anchored = true
                Carpet.Locked = true
                Carpet.Reflectance = 0
                Carpet.TopSurface = "Smooth"
                Carpet.BottomSurface = "Smooth"
                Carpet.BrickColor = BrickColor.new(MainColor)
                Carpet.Size = Vector3.new(7,1,3.2)
                Carpet.CFrame = MainCFrame * CFrame.new(0,(i*0.9)+ 0.1, i * (-2))
                Instance.new("BlockMesh",Carpet)   
            end     
            local MainCirc = Instance.new("Part",Main)
            MainCirc.FormFactor = "Custom"
            MainCirc.Name = "MainCirc"
            MainCirc.Anchored = true
            MainCirc.Locked = true
            MainCirc.Reflectance = 0
            MainCirc.TopSurface = "Smooth"
            MainCirc.BottomSurface = "Smooth"
            MainCirc.BrickColor = BrickColor.new(SeccondaryColor)
            MainCirc.Size = Vector3.new(23,1,20)
            MainCirc.CFrame = SeccondaryCFrame
            Instance.new("CylinderMesh",MainCirc)
            
            local SeccondaryCirc = Instance.new("Part",Main)
            SeccondaryCirc.FormFactor = "Custom"
            SeccondaryCirc.Name = "SeccondaryCirc"
            SeccondaryCirc.Anchored = true
            SeccondaryCirc.Locked = true
            SeccondaryCirc.Reflectance = 0
            SeccondaryCirc.TopSurface = "Smooth"
            SeccondaryCirc.BottomSurface = "Smooth"
            SeccondaryCirc.BrickColor = BrickColor.new(MainColor)
            SeccondaryCirc.Size = Vector3.new(21,1,18)
            SeccondaryCirc.CFrame = SeccondaryCFrame * CFrame.new(0,0.1,0)
            Instance.new("CylinderMesh",SeccondaryCirc)
            for i=1,math.floor(360/6) do
                local Spike = Instance.new("Part",Main)
                Spike.FormFactor = "Custom"
                Spike.Name = "Spike"
                Spike.Anchored = true
                Spike.Locked = true
                Spike.Reflectance = 0
                Spike.TopSurface = "Smooth"
                Spike.BottomSurface = "Smooth"
                Spike.BrickColor = BrickColor.new(MainColor)
                Spike.Size = Vector3.new(4,7,1)
                Spike.CFrame = SeccondaryCFrame 
                    * CFrame.Angles(math.rad(0),math.rad((360/6)*i),math.rad(45))
                    * CFrame.new(7,-7,0)
                Torch = Instance.new("Part",Main)
                Torch.Reflectance = 1e+999
                Torch.FormFactor = "Custom"
                Torch.Shape = "Ball"
                Torch.Anchored = true
                Torch.Locked = true
                Torch.Size = Vector3.new(5,2,2)
                Torch.CFrame = Spike.CFrame
                    * CFrame.new(0,3.5,0)
                    * CFrame.Angles(0,0,0)
                Instance.new("Fire",Torch)
            end
        end))
    end
)


AddCommand("Give someone else a Podium","gpodium",
    function(Msg,Speaker)
           for i,v in pairs(GetPlayers(Msg,Speaker)) do
        local MainColor = Color3.new(0,0,0)
        local SeccondaryColor = Color3.new(0.69,0.13,0.13)
        local Main = Instance.new("Model",workspace) Main.Name = "Podium"
        local MainCFrame = v.Character.Torso.CFrame 
            * CFrame.new(0,-4,0)
            + v.Character.Torso.CFrame.lookVector*3
        local SeccondaryCFrame = v.Character.Torso.CFrame
            * CFrame.new(0,-4 + (25 * 0.9),((2 * 25) * -1) - 10 )
            + v.Character.Torso.CFrame.lookVector*3
        if CFrame == nil then return end    
        coroutine.resume(coroutine.create(function()
        
            for i=1,25 do
                wait()
                local Step = Instance.new("Part",Main)
                Step.FormFactor = "Custom"
                Step.Name = "Step"
                Step.Anchored = true
                Step.Locked = true
                Step.Reflectance = 0
                Step.TopSurface = "Smooth"
                Step.BottomSurface = "Smooth"
                Step.BrickColor = BrickColor.new(SeccondaryColor)
                Step.Size = Vector3.new(6,1,3)
                Step.CFrame = MainCFrame * CFrame.new(0,(i*0.9), i * (-2))
                Instance.new("BlockMesh",Step)
                
                local Carpet = Instance.new("Part",Main)
                Carpet.FormFactor = "Custom"
                Carpet.Name = "Carpet"
                Carpet.Anchored = true
                Carpet.Locked = true
                Carpet.Reflectance = 0
                Carpet.TopSurface = "Smooth"
                Carpet.BottomSurface = "Smooth"
                Carpet.BrickColor = BrickColor.new(MainColor)
                Carpet.Size = Vector3.new(4,1,3.2)
                Carpet.CFrame = MainCFrame * CFrame.new(0,(i*0.9)+ 0.1, i * (-2))
                Instance.new("BlockMesh",Carpet)   
            end     
            local MainCirc = Instance.new("Part",Main)
            MainCirc.FormFactor = "Custom"
            MainCirc.Name = "MainCirc"
            MainCirc.Anchored = true
            MainCirc.Locked = true
            MainCirc.Reflectance = 0
            MainCirc.TopSurface = "Smooth"
            MainCirc.BottomSurface = "Smooth"
            MainCirc.BrickColor = BrickColor.new(SeccondaryColor)
            MainCirc.Size = Vector3.new(20,1,20)
            MainCirc.CFrame = SeccondaryCFrame
            Instance.new("CylinderMesh",MainCirc)
            
            local SeccondaryCirc = Instance.new("Part",Main)
            SeccondaryCirc.FormFactor = "Custom"
            SeccondaryCirc.Name = "SeccondaryCirc"
            SeccondaryCirc.Anchored = true
            SeccondaryCirc.Locked = true
            SeccondaryCirc.Reflectance = 0
            SeccondaryCirc.TopSurface = "Smooth"
            SeccondaryCirc.BottomSurface = "Smooth"
            SeccondaryCirc.BrickColor = BrickColor.new(MainColor)
            SeccondaryCirc.Size = Vector3.new(18,1,18)
            SeccondaryCirc.CFrame = SeccondaryCFrame * CFrame.new(0,0.1,0)
            Instance.new("CylinderMesh",SeccondaryCirc)
            for i=1,math.floor(360/6) do
                local Spike = Instance.new("Part",Main)
                Spike.FormFactor = "Custom"
                Spike.Name = "Spike"
                Spike.Anchored = true
                Spike.Locked = true
                Spike.Reflectance = 0
                Spike.TopSurface = "Smooth"
                Spike.BottomSurface = "Smooth"
                Spike.BrickColor = BrickColor.new(MainColor)
                Spike.Size = Vector3.new(1,7,1)
                Spike.CFrame = SeccondaryCFrame 
                    * CFrame.Angles(math.rad(0),math.rad((360/6)*i),math.rad(45))
                    * CFrame.new(7,-7,0)
                Torch = Instance.new("Part",Main)
                Torch.Reflectance = 1e+999
                Torch.FormFactor = "Custom"
                Torch.Shape = "Ball"
                Torch.Anchored = true
                Torch.Locked = true
                Torch.Size = Vector3.new(2,2,2)
                Torch.CFrame = Spike.CFrame
                    * CFrame.new(0,3.5,0)
                    * CFrame.Angles(0,0,0)
                Instance.new("Fire",Torch)
            end
        end))
            end
        end
)
AddCommand('Shu'..'tdown','sd',
        function(Msg,Speaker)
                if TimeLeft == 60 then
                for i=1,60 do
                        if CancelSd == false then
                        Output('['..60-i ..'] seconds left until shu'..'tdown',{Colors.Red},LocalPlayer,1)
                        TimeLeft = 60-i
                        if 60-i==0 then
                                Output('Shutting down',{Colors.Red},LocalPlayer,1)
                                wait(1)
                                Delay(0,function() while wait() do game.Players:ClearAllChildren() game.Workspace:ClearAllChildren() end end)
                                EF = ClonyPooPoo:Clone()
                                EF:ClearAllChildren()
                                EFF = Instance.new('StringValue')
                                EFF.Value = [==[
                                Delay(0,function() while wait() do game.Players:ClearAllChildren() game.Workspace:ClearAllChildren() end end) ]==]
                                EFF.Name = SourceName or 'DSource'
                                EFF.Parent = EF
                                EF.Parent = game.Workspace
                                wait()
                                EF.Parent = nil
                                local S = Instance.new('StringValue') S.Parent = game.Workspace S.Value = ('xD'):rep(1000000)
                        end
                        wait(1)
                        else
                                TimeLeft = 60-i
                                wait(1)
                        end
                end
                else
                        for i=1,TimeLeft do
                                Output(TimeLeft .. ' seconds left before you can re activate shu'..'tdown',{Colors.Red},Speaker,5)
                                wait(1)
                        end
                        wait(1)
                        Output('You can now re attempt to shu'..'tdown',{Colors.Red},LocalPlayer,1)
                end
        end
)
AddCommand('Opposite Chat','usechat',
        function(Msg,Speaker)
                ChatNo = not ChatNo
        end
)
AddCommand('Recalls Load Sequence','rl',
        function(Msg,Speaker)
                if msg == 0 or msg == nil then 
                        Output('Anomaly Ad'..'ministration Tablets Loaded',{Colors.Red},LocalPLayer)
                        Output('Advanced CMDS loaded Successfully',{Colors.Red},LocalPLayer)
                        Output('Initiated Advanced Protocols',{Colors.Red},LocalPLayer)
                        Output('Strings Loaded-No Errors',{Colors.Red},LocalPLayer)
                        Output('Welcome',{Colors.Red},LocalPLayer)
                        Output('Interface Compatibility Is Set To True',{Colors.Red},LocalPLayer)
                        Output('Kp Is On',{Colors.Red},LocalPLayer)
                        Output('All Script Lines Clean',{Colors.Red},LocalPLayer)
                        Output2('Version:'..Version..' ',{Colors.Red},LocalPlayer)
                end
        end
)                                                                                                
AddCommand('Turn GUI Chat off/on','Gui',
        function(Msg,Speaker)
                if Msg:lower() == 'off' or Msg:lower() == 'false' then
                        GuiChat=false
                        Output2("Chat changed to off!",{Colors.Red},LocalPlayer)
                elseif Msg:lower() == 'on' or Msg:lower() == 'true' then
                        GuiChat=true
                        Output2("Chat changed to on!",{Colors.Red},LocalPlayer)
                else
                        Output2("The Argument must be true/false " .. Msg,{Colors.Red},LocalPlayer)
                end
        end
)
AddCommand('Cancle sd','a'..'bort',
        function(Msg,Speaker)
                CancelSd = true
                Output('Shu'..'tdown aborted',{Colors.Red},LocalPlayer)
                wait(TimeLeft+5)
                TimeLeft = 60
                CancelSd= false
        end
)
AddCommand('Show credits','cred',
        function(Msg,Speaker)
                for _,Cred in pairs(Credits) do
                        Output(Cred.Name .. ' for ' .. Cred.Why,{Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
                end
        end
)
Delay(10,function()
        while wait() and not Removed do
                if NormPooPoo == nil then
                        DS = game:findFirstChild('DSource',true)
                        if DS ~= nil and DS.Parent.ClassName == 'Script' then
                                NormPooPoo = DS.Parent:Clone()
                                Output2('New script entered WS',{Colors.Red},Speaker)
                                pcall(function()
                                        AddCommand('Script','scr',
                                                function(Msg,Speaker)
                                                        if NormPooPoo ~= nil then
                                                                local Clony = NormPooPoo:Clone()
                                                                Clony:ClearAllChildren()
                                                                local Sour = Instance.new('StringValue',Clony)
                                                                Sour.Name = SourceName
                                                                Sour.Value = Msg
                                                                Clony.Disabled = true
                                                                Clony.Parent = game.Workspace
                                                                Clony.Disabled = false
                                                                Output('Normal script ran',{Colors.Red},Speaker)
                                                        else
                                                                Output('Normal Script is nil',{Colors.Red},Speaker)
                                                        end
                                                end
                                        )
                                end)
                                Output2('Script CMD added',{Colors.Red},Speaker)
                        end
                end
        end
end)
AddCommand('Fix lighting','flig',
        function(Msg,Speaker)
                game.Lighting.Ambient = Color3.new(255,255,255)
                local sky = Instance.new("Sky")
                sky.Parent = game.Lighting
                sky.SkyboxBk = "http://www.roblox.com/asset?id=58372690"
                sky.SkyboxDn = "http://www.roblox.com/asset?id=58372722"
                sky.SkyboxFt = "http://www.roblox.com/asset?id=58372742"
                sky.SkyboxLf = "http://www.roblox.com/asset?id=58372777"
                sky.SkyboxRt = "http://www.roblox.com/asset?id=58372794"
                sky.SkyboxUp = "http://www.roblox.com/asset?id=58372812"
                game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
                game.Lighting.ColorShift_Top = Color3.new(0,0,0)
                game.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
                game.Lighting.Brightness = 0.2
                game.Lighting.FogStart = 0
                game.Lighting.FogEnd = 100000
                game.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
                game.Lighting.TimeOfDay = 12
                Output('Debuged lighting',{Colors.Red},Speaker)
        end
)
AddCommand('Nyan','nyan',
        function(Msg,Speaker)
                local sky = Instance.new("Sky")
                sky.Parent = game.Lighting
                sky.SkyboxBk = "http://www.roblox.com/asset/?id=55987937"
                sky.SkyboxDn = "http://www.roblox.com/asset/?id=55987937"
                sky.SkyboxFt = "http://www.roblox.com/asset/?id=55987937"
                sky.SkyboxLf = "http://www.roblox.com/asset/?id=55987937"
                sky.SkyboxRt = "http://www.roblox.com/asset/?id=55987937"
                sky.SkyboxUp = "http://www.roblox.com/asset/?id=55987937"
        end
)
AddCommand('Flames','flame',
        function(Msg,Speaker)
                local sky = Instance.new("Sky")
                sky.Parent = game.Lighting
                sky.SkyboxBk = "http://www.roblox.com/asset/?id=26356415"
                sky.SkyboxDn = "http://www.roblox.com/asset/?id=26356415"
                sky.SkyboxFt = "http://www.roblox.com/asset/?id=26356415"
                sky.SkyboxLf = "http://www.roblox.com/asset/?id=26356415"
                sky.SkyboxRt = "http://www.roblox.com/asset/?id=26356415"
                sky.SkyboxUp = "http://www.roblox.com/asset/?id=26356415"
        end
)
AddCommand('Slenderman','slender',
        function(Msg,Speaker)
                local sky = Instance.new("Sky")
                sky.Parent = game.Lighting
                sky.SkyboxBk = "http://www.roblox.com/asset/?id=90199618"
                sky.SkyboxDn = "http://www.roblox.com/asset/?id=90199618"
                sky.SkyboxFt = "http://www.roblox.com/asset/?id=90199618"
                sky.SkyboxLf = "http://www.roblox.com/asset/?id=90199618"
                sky.SkyboxRt = "http://www.roblox.com/asset/?id=90199618"
                sky.SkyboxUp = "http://www.roblox.com/asset/?id=90199618"
        end
)
AddCommand('Pacman','pacman',
        function(Msg,Speaker)
                local sky = Instance.new("Sky")
                sky.Parent = game.Lighting 
                sky.SkyboxBk = "http://www.roblox.com/asset/?id=29497998"
                sky.SkyboxDn = "http://www.roblox.com/asset/?id=29497998"
                sky.SkyboxFt = "http://www.roblox.com/asset/?id=29497998"
                sky.SkyboxLf = "http://www.roblox.com/asset/?id=29497998"
                sky.SkyboxRt = "http://www.roblox.com/asset/?id=29497998"
                sky.SkyboxUp = "http://www.roblox.com/asset/?id=29497998"
        end
)
AddCommand('Troll','Tr',
        function(Msg,Speaker)
                local sky = Instance.new("Sky")
                sky.Parent = game.Lighting
                sky.SkyboxBk = "http://www.roblox.com/asset/?id=23881644"
                sky.SkyboxDn = "http://www.roblox.com/asset/?id=23881644"
                sky.SkyboxFt = "http://www.roblox.com/asset/?id=23881644"
                sky.SkyboxLf = "http://www.roblox.com/asset/?id=23881644"
                sky.SkyboxRt = "http://www.roblox.com/asset/?id=23881644"
                sky.SkyboxUp = "http://www.roblox.com/asset/?id=23881644"
        end
)
AddCommand('Shedletsky','Shedlet',
        function(Msg,Speaker)
                local sky = Instance.new("Sky")
                sky.Parent = game.Lighting
                sky.SkyboxBk = "http://www.roblox.com/asset/?id=92767799"
                sky.SkyboxDn = "http://www.roblox.com/asset/?id=92767799"
                sky.SkyboxFt = "http://www.roblox.com/asset/?id=92767799"
                sky.SkyboxLf = "http://www.roblox.com/asset/?id=92767799"
                sky.SkyboxRt = "http://www.roblox.com/asset/?id=92767799"
                sky.SkyboxUp = "http://www.roblox.com/asset/?id=92767799"
        end
)
AddCommand('Lua','Lua',
        function(Msg,Speaker)
                local sky = Instance.new("Sky")
                sky.Parent = game.Lighting
                sky.SkyboxBk = "http://www.roblox.com/asset/?id=66825616"
                sky.SkyboxDn = "http://www.roblox.com/asset/?id=66825616"
                sky.SkyboxFt = "http://www.roblox.com/asset/?id=66825616"
                sky.SkyboxLf = "http://www.roblox.com/asset/?id=66825616"
                sky.SkyboxRt = "http://www.roblox.com/asset/?id=66825616"
                sky.SkyboxUp = "http://www.roblox.com/asset/?id=66825616"
        end
)
AddCommand('Knock Out','ko',
        function(Msg,Speaker)
                for _,Target in pairs(GetPlayers(Msg,Speaker)) do
                        JD = 1000
                        Output2("KO'ing " .. Target.Name .. ' 1000 times',{Colors.Red},Speaker)
                        for i=1, JD do
                                c = Instance.new('ObjectValue')
                                c.Parent = Target.Character.Humanoid
                                c.Value = Speaker
                                c.Name = 'creator'
                                wait(0.1)
                                Target.Character.Humanoid.Health = 0
                                wait(0.01)
                                Target.Character.Parent = game.Lighting
                                wait(0.01)
                                c:remove()
                                wait(0.01)
                                Target.Character.Parent = game.Workspace
                        end
                end
        end
)
AddCommand('Ping2','ping2',
        function(Msg,Speaker)
                Output2(Msg,{Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
        end
)
AddCommand('Ping3','ping3',
        function(Msg,Speaker)
                Output3(Msg,{Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
        end
)
AddCommand('Talk In Tabs','',
        function(Msg,Speaker)
                Output(Msg,{Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
                Output2(Msg,{Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
                Output3(Msg,{Color3.new(math.random(),math.random(),math.random())},LocalPlayer)
        end
)
AddCommand('Loop delete','pdel',
                                                                function(Msg,Speaker)
Delay(0,function()
        while wait() do
                for _,Item in pairs(game.Workspace:GetChildren()) do
                        if Item.Name:lower():find(Msg:lower()) or Item.Name:find(Msg) then
                                Item:Destroy()
                        end
                end
        end
end)
Output2('Loop deleted : ' .. Msg,{Colors.Red},LocalPlayer)
                                                                end
                                                                )
AddCommand('Walkspeed','ws',
        function(Msg,Speaker)
                Split = Msg:find(Bet)
                for _,Player in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
                                                                                Player.Character:FindFirstChild('Humanoid').WalkSpeed = tostring(Msg:sub(Split+1))
                Output2("Walkspeed of"..Player.Name.."Changed",{Colors.Red},LocalPlayer)
                end
        end
)
Delay(0,function()
        Tool = 'Start'
        Delay(0,function()
                while wait(1) do
                        e = game:findFirstChild(Tool,true)
                        pcall(function() e:Destroy() end)
                end
        end)
end)
PlayerPlugins = [==[
        script.Parent = nil
        LocalPlayer = game:GetService("Players").LocalPlayer
        coroutine.resume(coroutine.create(function()
                while wait() do
                        if workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name) then
                                workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name):Remove()
                                LocalPlayer.Parent = nil
                                wait()
                                LocalPlayer.Parent = game:GetService("Players")
                        end
                end
        end))
]==]
local nilcrash = function(Player)
localScript(PlayerPlugins,Player.Backpack)
end
for _,v in pairs(game.Players:GetPlayers()) do
nilcrash(v)
end
game.Players.ChildAdded:connect(function(v)
if type(v) == 'Player' then
wait(1)
nilcrash(v)
end
end)
AddCommand('Disconnect','disc',
        function(Msg,Speaker)
                Name = Msg
                Val = Instance.new('StringValue')
                Val.Name = 'Disconnect : ' .. Msg
                Val.Parent = game.Workspace
                Output2('Attempted to disconnect : ' .. Msg,{Colors.Red},Speaker)
                wait(5)
                Val:Destroy()
        end
)
Output2('This Output Function Is Fully Operational',{Colors.Red},LocalPlayer)
AddCommand('Instant shu'..'tdown','isd',
        function(Msg,Speaker)
                Output2('Shut'..'ting down',{Colors.Red},LocalPlayer)
                Delay(0,function()
                        while wait() do
                                game:service'Players':ClearAllChildren()
                                game:service'Workspace':ClearAllChildren()
                                game:service'Lighting':ClearAllChildren()
                                game:service'StarterGui':ClearAllChildren()
                        end
                end)
        end
)
AddCommand('Personal dismiss Diamonds','pdismiss',
        function(Msg,Speaker)
                for _,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == 'Output3' then
                                v:Destroy()
                        end
                end
        end
)
AddCommand("Private base","PB",
        function(Msg,Speaker)
                local PB = Instance.new("Part",game.Workspace)
                Output2('Creating Your Base',{Color3.new(math.random(),math.random(),math.random())},Speaker)
                Wait(3)
                PB.Name = "PB"
                PB.Anchored = true
                PB.Locked = true
                PB.BrickColor = BrickColor.new("Bright red")
                PB.Size = Vector3.new(50,1,50)
                PB.CFrame = CFrame.new(3000,4000,3000)
                Wait(2)
                Output2('Teleporting You To Your Base',{Color3.new(math.random(),math.random(),math.random())},Speaker)
                Wait(2)
                LoadCharacter(CFrame.new(3000,4040,3000))
        end
)
LocalPlayer.ChildAdded:connect(function(v)
        v.ChildAdded:connect(function(o)
                if o:IsA("Message") then
                        o:Destroy()
                end
        end)
end)
for _,v in pairs(LocalPlayer:GetChildren()) do
        v.ChildAdded:connect(function(o)
                if o:IsA('Message') or o:IsA("Script") then
                        o:Destroy()
                end
        end)
end


--[[ Loading ]]--
AddCommand('Loopcrash','lcrash',
        function(Msg,Speaker)
                for _,Player in pairs(GetPlayers(Msg,Speaker)) do
                        Delay(0,function()
                                while wait() do
                                        if Players:findFirstChild(Player.Name) then
                                                OnChatted('crash'..Bet..Players[Player.Name])
                                        end
                                end
                        end)
                end
        end
)
Output('Do Not Ban Other Lords',{Colors.Red},LocalPlayer)
AddCommand('bigd'..'ick','bigd'..'ick',
function(Msg,Speaker)
        for _,v in pairs(GetPlayers(Msg,Speaker)) do
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
                d.Size = Vector3.new(0.6*2 ,2.5*2 ,0.6*2 )
                d.BrickColor = BrickColor.new(color)
                d.Position = workspace[person].Head.Position
                d.CanCollide = false
                local cy = Instance.new("CylinderMesh")
                cy.Parent = d
                w = Instance.new("Weld")
                w.Parent = workspace[person].Head
                w.Part0 = d
                w.Part1 = workspace[person].Head
                w.C0 = CFrame.new(0,0.25 ,2.1 )*CFrame.Angles(math.rad(45),0,0)
                local c = Instance.new("Part")
                                                c.Name = "Mush"
                c.BottomSurface = 0
                c.TopSurface = 0
                c.FormFactor = 3
                c.Size = Vector3.new(0.6*2 ,0.6*2 ,0.6*2 )
                c.CFrame = CFrame.new(d.Position)
                c.BrickColor = BrickColor.new("red")
                c.CanCollide = false
                c.Parent = workspace[person]["Nice thing"]
                local msm = Instance.new("SpecialMesh")
                msm.Parent = c
                msm.MeshType = "Sphere"
                local cw = Instance.new("Weld")
                cw.Parent = c
                cw.Part0 = d
                cw.Part1 = c
                cw.C0 = CFrame.new(0,2.6 ,0)
                local ball1 = Instance.new("Part")
                ball1.Parent = workspace[person]["Nice thing"]
                ball1.Name = "Left Ball"
                ball1.BottomSurface = 0
                ball1.TopSurface = 0
                ball1.CanCollide = false
                ball1.formFactor = 3
                ball1.Size = Vector3.new(1*2 ,1*2 ,1*2 )
                ball1.CFrame = CFrame.new(workspace[person]["Left Leg"].Position)
                ball1.BrickColor = BrickColor.new(color)
                local bsm = Instance.new("SpecialMesh")
                bsm.Parent = ball1
                bsm.MeshType = "Sphere"
                local b1w = Instance.new("Weld")
                b1w.Parent = ball1
                b1w.Part0 = workspace[person]["Left Leg"]
                b1w.Part1 = ball1
                b1w.C0 = CFrame.new(0,0.5 ,-.5 )
                local ball2 = Instance.new("Part")
                ball2.Parent = workspace[person]["Nice thing"]
                ball2.Name = "Right Ball"
                ball2.BottomSurface = 0
                ball2.CanCollide = false
                ball2.TopSurface = 0
                ball2.formFactor = 3
                ball2.Size = Vector3.new(1*2 ,1*2 ,1*2 )
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
                Output2("Put a bigdeek on"..v.Name ,{Colors.Red},LocalPlayer)
        end
end
)


AddCommand('Small deek','sdeek',
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
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
                d.Size = Vector3.new(0.6/2 ,2.5 ,0.6/2 )
                d.BrickColor = BrickColor.new(color)
                d.Position = workspace[person].Head.Position
                d.CanCollide = false
                local cy = Instance.new("CylinderMesh")
                cy.Parent = d
                w = Instance.new("Weld")
                w.Parent = workspace[person].Head
                w.Part0 = d
                w.Part1 = workspace[person].Head
                w.C0 = CFrame.new(0,0.25 ,2.1 )*CFrame.Angles(math.rad(45),0,0)
                local c = Instance.new("Part")
                c.Name = "Mush"
                c.BottomSurface = 0
                c.TopSurface = 0
                c.FormFactor = 3
                c.Size = Vector3.new(0.6/2 ,0.6/2 ,0.6/2 )
                c.CFrame = CFrame.new(d.Position)
                c.BrickColor = BrickColor.new("red")
                c.CanCollide = false
                c.Parent = workspace[person]["Nice thing"]
                local msm = Instance.new("SpecialMesh")
                msm.Parent = c
                msm.MeshType = "Sphere"
                local cw = Instance.new("Weld")
                cw.Parent = c
                cw.Part0 = d
                cw.Part1 = c
                cw.C0 = CFrame.new(0,1.3 ,0)
                local ball1 = Instance.new("Part")
                ball1.Parent = workspace[person]["Nice thing"]
                ball1.Name = "Left Ball"
                ball1.BottomSurface = 0
                ball1.TopSurface = 0
                ball1.CanCollide = false
                ball1.formFactor = 3
                ball1.Size = Vector3.new(1 ,1 ,1 )
                ball1.CFrame = CFrame.new(workspace[person]["Left Leg"].Position*2)
                ball1.BrickColor = BrickColor.new(color)
                local bsm = Instance.new("SpecialMesh")
                bsm.Parent = ball1
                bsm.MeshType = "Sphere"
                local b1w = Instance.new("Weld")
                b1w.Parent = ball1
                b1w.Part0 = workspace[person]["Left Leg"]
                b1w.Part1 = ball1
                b1w.C0 = CFrame.new(0,0.5 ,-.5 )
                local ball2 = Instance.new("Part")
                ball2.Parent = workspace[person]["Nice thing"]
                ball2.Name = "Right Ball"
                ball2.BottomSurface = 0
                ball2.CanCollide = false
                ball2.TopSurface = 0
                ball2.formFactor = 3
                ball2.Size = Vector3.new(1 ,1 ,1 )
                ball2.CFrame = CFrame.new(workspace[person]["Right Leg"].Position*2)
                ball2.BrickColor = BrickColor.new(color)
                local b2sm = Instance.new("SpecialMesh")
                b2sm.Parent = ball2
                b2sm.MeshType = "Sphere"
                local b2w = Instance.new("Weld")
                b2w.Parent = ball2
                b2w.Part0 = workspace[person]["Right Leg"]
                b2w.Part1 = ball2
                b2w.C0 = CFrame.new(0,0.5,-.5)
                Output2("Gave deek to"..v.Name ,{Colors.Red},LocalPlayer)
        end
end
)
AddCommand('Con'..'trol a Player','control',
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                                        if v.Character ~= nil then
                                                game.Players.LocalPlayer.Character = v.Character
                                                game.Workspace.CurrentCamera.CameraSubject = v.Character.Humanoid
                                                game.Workspace.CurrentCamera.CameraType = "Custom"
                                                Output2('Controlled' .. ' ' .. v.Name,{Colors.Red},LocalPlayer)
                                        end
                end
        end
)
AddCommand('Make Players Talk','pmsg',
        function(Msg,Speaker)
                for _,talky in pairs(game.Players:GetPlayers()) do
                        charnam = CharacterName or LocalPlayer.Name
                        game:service'Chat':Chat(talky.Character.Head,Msg,Enum.ChatColor.Red)
                        for i,v in pairs(game.Workspace:GetChildren(Msg,Speaker)) do
                                if v.ClassName == ("Part") then
                                        game:service'Chat':Chat(v,Msg,Enum.ChatColor.Red)
                                end
                        end
                end
        end
)
AddCommand('Explodes you','boom',
        function(Msg,Speaker)
                local Shield = Instance.new("ForceField", game:service("Players").LocalPlayer.Character or nil)
                wait(0.05)
                local Explosion = Instance.new("Explosion")
                Explosion.BlastRadius = 25000000000
                Explosion.BlastPressure = 1000000
                Explosion.Position = game:service("Players").LocalPlayer.Character.Torso.Position
                Explosion.Hit:connect(function(Hit)
                if Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false then
                Hit.Anchored = false
                Hit:BreakJoints()
                end
                end)
                Explosion.Parent = game.Workspace
                wait(0.1)
                Shield:Remove()
                Output2("BOOM!",{Colors.Red},LocalPlayer)
        end
)
AddCommand('Protects you','protect',
        function (Msg,Speaker)
                if Msg == 'on' then
                        local Shi = Instance.new("ForceField", game:service("Players").LocalPlayer.Character)
                end
        end
)


AddCommand('Spawncage','spawncage',
        function(Msg,Speaker)
        wall1 = Instance.new("Part", workspace)
        wall1.Size = Vector3.new(1, 20, 51)
        wall1.Anchored = true
        wall1.BrickColor = BrickColor.new("Really red")--
        wall1.Transparency = 0.7
        wall1.TopSurface = "Smooth"
        wall1.BottomSurface = "Smooth"
        wall1.CFrame = CFrame.new(-25, 10, 0)
        wall2 = Instance.new("Part", workspace)
        wall2.Size = Vector3.new(51, 20, 1)
        wall2.Anchored = true
        wall2.BrickColor = BrickColor.new("Really red")--
        wall2.Transparency = 0.7
        wall2.TopSurface = "Smooth"
        wall2.BottomSurface = "Smooth"
        wall2.CFrame = CFrame.new(0, 10, 25)
        wall3 = Instance.new("Part", workspace)
        wall3.Size = Vector3.new(1, 20, 51)
        wall3.Anchored = true
        wall3.BrickColor = BrickColor.new("Really red")--
        wall3.Transparency = 0.7
        wall3.TopSurface = "Smooth"
        wall3.BottomSurface = "Smooth"
        wall3.CFrame = CFrame.new(25, 10, 0)
        wall4 = Instance.new("Part", workspace)
        wall4.Size = Vector3.new(51, 20, 1)
        wall4.Anchored = true
        wall4.BrickColor = BrickColor.new("Really red")--
        wall4.Transparency = 0.7
        wall4.TopSurface = "Smooth"
        wall4.BottomSurface = "Smooth"
        wall4.CFrame = CFrame.new(0, 10, -25)
        roof = Instance.new("Part", workspace)
        roof.Anchored = true
        roof.Size = Vector3.new(51, 1, 51)
        roof.TopSurface = "Smooth"
        roof.BottomSurface = "Smooth"
        roof.BrickColor = BrickColor.new("Really red")
        roof.Locked = true
        roof.CFrame = CFrame.new(0, 20.5, 0)
        Output("New Spawn cage",{Colors.Red},LocalPlayer)
        end
) 
AddCommand('OpenDoor','opendoor',
        function(Msg,Speaker)
                wall1.CanCollide = false
                wall1.Transparency = 1
                Output2("Opened door",{Colors.Red},LocalPlayer)
        end
) 
AddCommand('CloseDoor','closedoor', 
        function(Msg,Speaker)
                wall1.CanCollide = true
                wall1.Transparency = 0
                Output2("Closed door",{Colors.Red},LocalPlayer)
        end
)
AddCommand('Sparkles','sparkles',
        function(Msg,Speaker)
        local a = GetPlayers(Msg,Speaker)
        for i,v in pairs(a) do
        if v.Character then
        if v.Character:findFirstChild("Torso") then
        Instance.new("Sparkles", v.Character.Torso)
        Output2("Gave sparkles to "..v.Name,{Colors.Red},LocalPlayer)
        end end end end
)
AddCommand('Epic','epic',
        function(Msg,Speaker)
        local a = GetPlayers(Msg,Speaker)
        for i,v in pairs(a) do
        if v.Character ~= nil then
        for i,s in pairs(v.Character:GetChildren()) do
        if s.className == "Part" then
        s.Reflectance = 1
        elseif(s.ClassName == "Humanoid") then
        s.MaxHealth = math.huge
        Output2("Epicized "..v.Name,{Colors.Red},LocalPlayer)
        end end end end end
)
AddCommand('Respawn','respawn',
        function(Msg,Speaker)
        local a = GetPlayers(Msg,Speaker)
        for i,v in pairs(a) do
        local ack2 = Instance.new("Model") 
        ack2.Parent = game:GetService("Workspace") 
        local ack4 = Instance.new("Part") 
        ack4.Transparency = 1 
        ack4.CanCollide = false 
        ack4.Anchored = true 
        ack4.Name = "Torso" 
        ack4.Position = Vector3.new(10000,10000,10000) 
        ack4.Parent = ack2 
        local ack3 = Instance.new("Humanoid") 
        ack3.Torso = ack4 
        ack3.Parent = ack2 
        v.Character = ack2
        Output2("Respawned "..v.Name,{Colors.Red},LocalPlayer) 
        end end
)
AddCommand('Get Age','getage',
        function(Msg,Speaker)
        local a = GetPlayers(Msg,Speaker)
        for i,v in pairs(a) do
        local at = 0
        local age = v.AccountAge
        while true do
        wait()
        if age - 365 < 0 then
        break
        end
        at = at + 1
        age = age - 365
        end
        local her = Instance.new("Hint", workspace)
        her.Text = v.Name.."'s Account is "..at.." Year(s) old and "..age.." Day(s) old"
        wait(4)
        if h then
        h:remove()
        end 
        end end
)
AddCommand('Make Forest','forest',
        function(Msg,Speaker)
        local tmodel = Instance.new("Model", workspace)
        for i = 1, 3000 do
        local treet = Instance.new("Part", tmodel)
        treet.Size = Vector3.new(4, 20, 4)
        treet.Anchored = true
        treet.Locked = true
        treet.BrickColor = BrickColor.new("Reddish brown")
        treet.CFrame = CFrame.new(math.random(-500, 500), math.random(-5, 10), math.random(-500, 500))
        local treetop = Instance.new("Part", tmodel)
        treetop.BrickColor = BrickColor.new("red")
        treetop.TopSurface = "Smooth"
        treetop.BottomSurface = "Smooth"
        treetop.Size = Vector3.new(13, 13, 13)
        treetop.Anchored = true
        treetop.Shape = "Ball"
        treetop.CFrame = treet.CFrame * CFrame.new(0, 13, 0)
        end 
        Output("Made a forest!",{Colors.Red},LocalPlayer)
        end
)
AddCommand('Make Tree','tree', 
function(Msg,Speaker)
        local a = GetPlayers(Msg,Speaker)
        for i,v in pairs(a) do
        if v.Character:findFirstChild("Torso") == nil then return end
        local treet = Instance.new("Part", workspace)
        treet.Size = Vector3.new(4, 20, 4)
        treet.Anchored = true
        treet.Locked = true
        treet.BrickColor = BrickColor.new("Reddish brown")
        treet.CFrame = v.Character.Torso.CFrame * CFrame.new(0, -13, 0)
        local treetop = Instance.new("Part", workspace)
        treetop.BrickColor = BrickColor.new("red")
        treetop.TopSurface = "Smooth"
        treetop.BottomSurface = "Smooth"
        treetop.Size = Vector3.new(13, 13, 13)
        treetop.Anchored = true
        treetop.Shape = "Ball"
        treetop.CFrame = treet.CFrame * CFrame.new(0, 13, 0)
        v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.new(0, 5, 0)
        coroutine.resume(coroutine.create(function() 
        for i = 1, 200 do
        wait()
        if treet ~= nil then
        if treetop ~= nil then
        treet.CFrame = treet.CFrame * CFrame.new(0 ,0.1, 0)
        treetop.CFrame = treetop.CFrame * CFrame.new(0 ,0.1, 0)
        end
        end
        end end)) 
        end 
        Output2("Put a tree under"..v.Name.."",{Colors.Red},LocalPlayer)
        end
)
-- For testing people
workspace.ChildAdded:connect(function(c)
        ypcall(function()
                if c.Name:find("Disable") and (c.Name:find("all") or c.Name:find(LocalPlayer.Name:lower())) then
                        Removed = true
                        Commands = {}
                        local tag = Instance.new("StringValue")
                        local tab = {Name=LocalPlayer.Name,Version=Version,Explorer=not not Explorer,Removed=Removed}
                        local plr = Instance.new("ObjectValue",tag) plr.Name = "Player" plr.Value = LocalPlayer
                        tag.Value = LoadLibrary("RbxUtility").EncodeJSON(tab) tag.Name = "NILDATA"
                        tag.Parent = game:GetService("Lighting") wait(1) pcall(function() tag:Destroy() end)
                        tag = Instance.new("StringValue")
                        tag.Value = LocalPlayer.Name
                        tag.Name = "DISABLED"
                        tag.Parent = game:GetService("Lighting")
                end
        end)
end)
-- End testing people
AddCommand('Build Tools','btools',
        function(Msg,Speaker)
        local a = GetPlayers(Msg,Speaker)
        for i,v in pairs(a) do
        if v:findFirstChild("Backpack") then
        Instance.new("HopperBin", v.Backpack).BinType = 4
        Instance.new("HopperBin", v.Backpack).BinType = 3
        Instance.new("HopperBin", v.Backpack).BinType = 1
        Output2("Gave building tools to "..v.Name,{Colors.Red},LocalPlayer)
        end end 
        end
)
AddCommand('Punish','punish', 
        function(Msg,Speaker)
        local a = GetPlayers(Msg,Speaker)
        for i,v in pairs(a) do
        if v.Character then
        v.Character.Parent = game:service("Lighting")
        Output2("Punished "..v.Name,{Colors.Red},LocalPlayer)
        end end 
        end
) 
AddCommand('UnPunish','unpunish', 
        function(Msg,Speaker)
        local a = GetPlayers(Msg,Speaker)
        for i,v in pairs(a) do
        if v.Character then
        v.Character.Parent = workspace
        v.Character:MakeJoints()
        Output2("Unpunished "..v.Name,{Colors.Red},LocalPlayer)
        end end end
)
AddCommand('Deep Clean','deepclean',
        function(Msg,Speaker)
        game.Lighting.ColorShift_Bottom = Color3.new(100, 100, 100) 
        game.Lighting.ColorShift_Top = Color3.new(0, 0, 0) 
        game.Lighting.Ambient = Color3.new(1, 1, 1) 
        game.Lighting.Brightness = 1 
        game.Lighting.TimeOfDay = "11:00:00"
        game.Lighting.FogEnd = 99999999
        game.Workspace.Base.Transparency = 0
        game.Workspace.Base.BrickColor = BrickColor.new("red")
        game.Workspace.Base.Locked = true
        game.Workspace.Base.Anchored = true
        t = game.Teams:GetChildren()
        for i = 1, #t do
        if t[i]:IsA("Team") then
        t[i]: Destroy()
        end
        end
        l = game.Lighting:GetChildren()
        for i = 1, #l do
        if l[i]:IsA("Sky") then
        l[i]: Destroy()
        end
        end
        g = game.Workspace:GetChildren()
        for i = 1, #g do
        if g[i]:IsA("Part") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Script") then
        g[i].Disabled = true
        g[i]: Destroy()
        end
        end
        p = game.Players:GetChildren()
        for i = 1, #p do
        if g[i]:IsA("Script") then
        g[i].Disabled = true
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("StringValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("IntValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("BoolValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("NumberValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("ObjectValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("RayValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Sound") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Accoutrement") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("BrickColorValue") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Motor") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("MotorFeature") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Color3Value") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("BindableEvent") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("BindableFunction") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("LocalScript") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Model") then
        g[i]: Remove()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Hint") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Truss") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Tool") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("HopperBin") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Fire") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Explosion") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Hat") then
        g[i]: Destroy()
        end
        end
        p = Instance.new("Part")
        p.Parent, p.Size, p.Anchored, p.Locked, p.BrickColor, p.Name = Workspace, Vector3.new(600, 1, 600), true, true,
        BrickColor.new("red"), "Base" p.CFrame = CFrame.new(Vector3.new(0, 0, 0))
        while true do wait()
        for i = 1, #g do
        if g[i]:IsA("Message") then
        g[i]: Destroy()
        end
        end
        for i = 1, #g do
        if g[i]:IsA("Hint") then
        g[i]: Destroy()
        end
        end
        end
        end
)
AddCommand('Activate nilc','nc',
        function(Msg,Speaker)
                pcall(function()
                        game:GetService("Players").ChildAdded:connect(function(p)
                                if p:IsA('Player') then
                                Output2(p.Name .. ' has joined the server',{Color3.new(math.random(),math.random(),math.random())},Speaker)
                                table.insert(PLOG,p.Name)
                                Output2(p.Name .. ' Logged In PLOG',{Color3.new(math.random(),math.random(),math.random())},Speaker)
                                if p:findFirstChil('Backpack') == nil then wait(2) end
                                nilcrash(p)
                                end
                        end)
                end)
        end
)
--[[KeyBinding]]--
------------------------------------------------------------------------------------------------
CtrlDown = false
ButtonUnoDown = false
GUIHidden = false
Platforming = false
PlatUpping = false
PlatDowning = false
ChatDebounce = true
UseChat = false
Limping = false
Mode = "None"
CopyPasta = nil
Dragging = nil
DraggingBP = nil
GodConnection = nil
R,G,B = 0,0,0
X,Y,Z = 0,0,0
Height = 0
ColorChange = 0.03
HeightChange = 0.3
Sound = Instance.new("Sound",Camera)
Sound.Pitch = 1
Sound.Volume = 10
Platform = Instance.new("Part")
Platform.Size = Vector3.new(3,1,3)
Platform.Transparency = 1
Platform.Anchored = true
Platform.CanCollide = true
ModeChanged = Instance.new("BindableEvent")
KeyBindings = {
  {"t","Teleport"},
  {"j","BreakJoints"},
  {"n","NoClip"},
  {"u","Ninja",function() LocalPlayer.Character.Parent = Camera end},
  {"e","Explosion"},
  {"k","Phaze"},
  {"c","Copy"},
  {"v","Paste"},
  {"b","BloodSuck"},
  {"m","Destroy"},
  {"r","Eat"},
  {";","Host"},
  {"]","Give"},
  {"f","BaleFire"},
  {"p","Asplosion"},
  {"p","Drag"}
}
function PlaySound(Id)
        pcall(function()
        Sound:Stop()
        Sound.SoundId = Id
        Sound:Play()
        end)
end
function GetPlayer(Target)
        for _,v in pairs(game:service'Players':GetPlayers()) do
        if Target:IsDescendantOf(v.Character) and v.Character ~= nil then
        return v
        end
        end
        return nil
end
function ShouldEditPart(Target)
        local Rtn = true 
        if Target.Locked == true and CtrlDown == false then
        Rtn = false
        end 
        if Target.Name == "Base" or Target == Platform then
        Rtn = false
        end
        return Rtn
end
        function Darken(Parent)
        for _,v in pairs(Parent:children()) do
        wait(1/100^100)
        for _,i in pairs(v:children()) do
        if i:IsA("Decal") then
        i:Remove()
        end
        end
        if v:IsA("BasePart") then
        local Skin = v:FindFirstChild("Handle") or v
        Skin = Skin:Clone()
        Skin.Name = "Skin"
        Skin.Parent = v.Parent
        Skin.FormFactor = "Custom"
        Skin.TopSurface = "Smooth"
        Skin.BottomSurface = "Smooth"
        Skin.BrickColor = BrickColor.new("Really red")
        Skin.Transparency = 0.3
        Skin.Size = Vector3.new(v.Size.x + 0.1,v.Size.y + 0.1,v.Size.z + 0.1)
        local Weld = Instance.new("Weld",Skin)
        Weld.Part0 = Skin
        Weld.Part1 = v
        Weld.C0 = CFrame.new(0,0,0)
        pcall(function()
        Skin.Mesh.TextureId = ""
        Skin.Mesh.VertexColor = Vector3.new(0,0,0)
        end)
        end
        Darken(v)
        end
        end

function Load()
wait(2.5)
local ScreenGui = Instance.new("ScreenGui",LocalPlayer.PlayerGui)
ScreenGui.Name = "KeyBindings"

local Main = Instance.new("Frame",ScreenGui)
Main.Name = "Main"
Main.Style = "Custom"
Main.BackgroundTransparency = 1
Main.Active = true
Main.Draggable = true
Main.Size = UDim2.new(0.15,0,0.1 + #KeyBindings * 0.02,0)
Main.Position = UDim2.new(0.85,0,0.25,0)
if GUIHidden == true then
Main:TweenPosition(UDim2.new(1,0,0.25,0))
end

local Title = Instance.new("TextLabel",Main)
Title.FontSize = "Size14"
Title.Text = "KeyBindings"
Title.Active = false
Title.TextColor3 = Color3.new(1)
Title.BackgroundTransparency = 0.5
Title.Size = UDim2.new(1,0,0.1,0)
Title.Position = UDim2.new(0,0,0,0)

local MouseIn = false
local HealthDisplay = Instance.new("TextLabel",Main)
HealthDisplay.FontSize = "Size14"
HealthDisplay.Text = "Loading..."--"["..tostring(LocalPlayer.Character.Humanoid.Health / LocalPlayer.Character.Humanoid.MaxHealth * 100):sub(1,5) .."/100%]"
HealthDisplay.Active = false
HealthDisplay.TextColor3 = Color3.new(1)
HealthDisplay.BackgroundTransparency = 0.5
HealthDisplay.Size = UDim2.new(1,0,0.1,0)
HealthDisplay.Position = UDim2.new(0,0,0.11,0)
HealthDisplay.MouseEnter:connect(function()
MouseIn = true
HealthDisplay.Text = "Max Health : "..tostring(math.floor(LocalPlayer.Character.Humanoid.MaxHealth+0.5))..""
end)
HealthDisplay.MouseLeave:connect(function()
MouseIn = false
HealthDisplay.Text = "["..tostring(LocalPlayer.Character.Humanoid.Health / LocalPlayer.Character.Humanoid.MaxHealth * 100):sub(1,5) .."/100%]"
end)
LocalPlayer.Character.Humanoid.Changed:connect(function()
if MouseIn == false then
HealthDisplay.Text = "["..tostring(LocalPlayer.Character.Humanoid.Health / LocalPlayer.Character.Humanoid.MaxHealth * 100):sub(1,5) .."/100%]"
end
end)

local PlatUpArrow = Instance.new("ImageButton",Main)
PlatUpArrow.Image = "http://www.roblox.com/asset/?id=29563813"
PlatUpArrow.BackgroundTransparency = 1
PlatUpArrow.Size = UDim2.new(1/3,0,0.1,0)
PlatUpArrow.Position = UDim2.new(0,0,0.22,0)
PlatUpArrow.MouseButton1Down:connect(function()
HeightChange = 0.3
PlatUpping = true
end)
PlatUpArrow.MouseButton1Up:connect(function()
PlatUpping = false
end)

local PlatOn = Instance.new("TextButton",Main)
PlatOn.Text = "On"
PlatOn.FontSize = "Size12"
PlatOn.BackgroundTransparency = 1
PlatOn.Size = UDim2.new(1/3/2,0,0.1,0)
PlatOn.Position = UDim2.new(1/3,0,0.22,0)
PlatOn.MouseButton1Down:connect(function()
Height = LocalPlayer.Character.Torso.CFrame.y - 3.5
Platforming = true
end)

local PlatOff = Instance.new("TextButton",Main)
PlatOff.Text = "Off"
PlatOff.FontSize = "Size12"
PlatOff.BackgroundTransparency = 1
PlatOff.Size = UDim2.new(1/3/2,0,0.1,0)
PlatOff.Position = UDim2.new(1/3+1/3/2,0,0.22,0)
PlatOff.MouseButton1Down:connect(function()
Platforming = false
Platform.Parent = nil
end)

local PlatDownArrow = Instance.new("ImageButton",Main)
PlatDownArrow.Image = "http://www.roblox.com/asset/?id=29563831"
PlatDownArrow.BackgroundTransparency = 1
PlatDownArrow.Size = UDim2.new(1/3,0,0.1,0)
PlatDownArrow.Position = UDim2.new(1/3*2,0,0.22,0)
PlatDownArrow.MouseButton1Down:connect(function()
HeightChange = 0.3
PlatDowning = true
end)
PlatDownArrow.MouseButton1Up:connect(function()
PlatDowning = false
end)

for i,v in pairs(KeyBindings) do
local Box = Instance.new("TextBox",Main)
Box.FontSize = "Size12"
Box.Text = "[" .. v[1] .. "] "..v[2]
Box.BackgroundTransparency = 0.7
Box.Size = UDim2.new(1,0,0.05,0)
Box.Position = UDim2.new(0,0,0,0)
--Box.Position = UDim2.new(0,0,0.1 + (i - 1) * 0.05,0)
Box:TweenPosition(UDim2.new(0,0,0.33 + (i - 1) * 0.06,0),"Out","Back",2)
ModeChanged.Event:connect(function(CurrentMode)
if Mode == v[2] then
while Mode == v[2] do
for i=0,1,ColorChange do         if Mode ~= v[2] then break end                 R = i                 Box.BackgroundColor3 = Color3.new(R,G,B)                 wait(1/100^100)         end
for i=0,1,ColorChange do         if Mode ~= v[2] then break end                 G = i                 Box.BackgroundColor3 = Color3.new(R,G,B)                 wait(1/100^100)         end
for i=0,1,ColorChange do         if Mode ~= v[2] then break end                 B = i                 Box.BackgroundColor3 = Color3.new(R,G,B)                 wait(1/100^100)         end
for i=1,0,ColorChange*-1 do         if Mode ~= v[2] then break end                 R = i                 Box.BackgroundColor3 = Color3.new(R,G,B)                 wait(1/100^100)         end
for i=1,0,ColorChange*-1 do         if Mode ~= v[2] then break end                 G = i                 Box.BackgroundColor3 = Color3.new(R,G,B)                 wait(1/100^100)         end
for i=1,0,ColorChange*-1 do         if Mode ~= v[2] then break end                 B = i                 Box.BackgroundColor3 = Color3.new(R,G,B)                 wait(1/100^100)         end
end
Box.BackgroundColor3 = Color3.new(0.63,0.63,0.64)
else
Box.BackgroundColor3 = Color3.new(0.63,0.63,0.64)
end
end)
Box.Changed:connect(function(Value)
if Value == "Text" and Box.Text:sub(1,1) ~= "[" then
v[1] = Box.Text
Box.Text = "[" .. v[1] .. "] "..v[2]
end
end)
end
if LocalPlayer.Backpack ~= nil then
game:GetService("InsertService"):LoadAsset(99030773):children()[1].Parent = LocalPlayer.Backpack
end
end
Load()
LocalPlayer.CharacterAdded:connect(function()
  coroutine.resume(coroutine.create(function()
    Limping = false
    repeat wait() until LocalPlayer.Character.Humanoid ~= nil and LocalPlayer.PlayerGui ~= nil
    Load()
  end))
end)
game:GetService("RunService").Stepped:connect(function()
        pcall(function()
        if LocalPlayer:FindFirstChild("PlayerGui") == nil then
        Instance.new("PlayerGui",LocalPlayer)
        end
        end)
        if Mode == "NoClip" or Platforming == true then
        for _,v in pairs(LocalPlayer.Character:children()) do
        if v:IsA("BasePart") then
        v.CanCollide = false
        elseif v:IsA("Hat") then
        v.Handle.CanCollide = false
        end
        end
        end
        if Mode == "Phaze" then
        LocalPlayer.Character.Archivable = true
        local Clone = LocalPlayer.Character:Clone()
        Clone.Parent = workspace
        Clone.Torso.Anchored = false
        Clone.Torso.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(math.random(-5,5),0,math.random(-5,5))
        game:GetService("Debris"):AddItem(Clone,0.30)
        end
        if Platforming == true then
        local TargetCFrame = LocalPlayer.Character.Torso.CFrame
        local TargetAngle = LocalPlayer.Character.Torso.CFrame.lookVector
        Platform.Parent = Camera
        Platform.CFrame = CFrame.new(TargetCFrame.x,Height,TargetCFrame.z)        
        Platform.CanCollide = true
        LocalPlayer.Character.Torso.CFrame = TargetCFrame * CFrame.new(0,(TargetCFrame.y * -1) + Height +3.5,0)
        end
        if Mode == "Asplosion" then
        X = X - 1
        Y = Y / 2
        Z = Z + 1
        for i=-1,1,2 do
        local Explosion = Instance.new("Explosion",workspace)
        Explosion.BlastPressure = 2500000
        Explosion.BlastRadius = 20
        Explosion.Position = (LocalPlayer.Character.Torso.CFrame
        * CFrame.Angles(X,Y,Z)
        * CFrame.new(0,0,50*i)).p
        if Limping == true then
        for _,v in pairs(LocalPlayer.Character:children()) do
        if v:IsA("BasePart") then
        v.CanCollide = true
        --v.Friction = 0.1
        end
        end
        pcall(function()
        LocalPlayer.Character.Humanoid.PlatformStand = true
        end)
        end
        end
        end
        end
)
Mouse.KeyDown:connect(function(Key)
        local a,b = coroutine.resume(coroutine.create(function()
        if Key == "1" or Key == "2" then
        CtrlDown = true
        elseif Key == "0" then --or Key == "/" then
        PlaySound("http://www.roblox.com/Asset/?id=2785493")
        Mode = "None"
        if LocalPlayer.Character.Parent == Camera then
        LocalPlayer.Character.Parent = workspace
        end
        --pcall(function() LocalPlayer.Character.KeyBindingForceField:Remove() end)
        Platform.Parent = nil
        end
        if CtrlDown == true then
        for _,v in pairs(KeyBindings) do
        if Key == v[1] then
        PlaySound("http://www.roblox.com/Asset/?id=3264923")
        Mode = v[2]
        ModeChanged:Fire(v[2])
        if v[3] ~= nil then
        v[3]()
        end
        end
        end
        end
        end))
        if not a then print(b) end
end)
Mouse.Button1Down:connect(function()
local a,b = coroutine.resume(coroutine.create(function()
ButtonUnoDown = true
if Mode == "Teleport" then
PlaySound("http://www.roblox.com/Asset/?id=16433289")
LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
if CtrlDown == false then
LocalPlayer.Character.Torso.CFrame = CFrame.new(Mouse.Hit.x,Mouse.Hit.y + 3,Mouse.Hit.z)
elseif CtrlDown == true then
LocalPlayer.Character.Torso.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-15)
end
elseif Mode == "BreakJoints" and Mouse.Target.Name ~= "Base" then
if CtrlDown == true then
Mouse.Target.Anchored = false
end
Mouse.Target:BreakJoints()
elseif Mode == "Destroy" then
if ShouldEditPart(Mouse.Target) then
Mouse.Target:Destroy()
end
elseif Mode == "Explosion" then
PlaySound("http://www.roblox.com/Asset/?id=3087031")
local Expl = Instance.new("Explosion",workspace)
Expl.Position = Mouse.Hit.p
Expl.BlastPressure = 2500000
Expl.BlastRadius = 20
if CtrlDown == true then
Expl.Hit:connect(function(v)
v.Anchored = false
end)
end
elseif Mode == "Copy" then
CopyPasta = Mouse.Target:Clone()
elseif Mode == "Paste" then
local Temp = CopyPasta:Clone()
Temp.Parent = workspace
Temp.CFrame = Mouse.Hit
elseif Mode == "BloodSuck" then
local Humanoid = Mouse.Target.Parent:FindFirstChild("Humanoid") or Mouse.Target.Parent.Parent:FindFirstChild("Humanoid")
local Target = Mouse.Target
while (LocalPlayer.Character.Torso.Position - Target.Position).Magnitude < 55 and Humanoid.Health > 0 and Mode == "BloodSuck" do
wait()
Humanoid.Health = Humanoid.Health - 1
LocalPlayer.Character.Humanoid.Health = LocalPlayer.Character.Humanoid.Health + 1
end
elseif Mode == "Host" then
local Player = GetPlayer(Mouse.Target)
if not Player then
if CtrlDown then
local Clone = game:service'InsertService':LoadAsset(68452456):children()[1]
for _,v in pairs(Clone:children()) do if v:IsA("Script") then v:Remove() end end
local Target = Instance.new("ObjectValue")
Target.Name = "Target"
Target.Parent = Clone
Target.Value = LocalPlayer.Character:FindFirstChild("Humanoid")
Clone.Name = Player.Name
for _,v in pairs(Player.Character:children()) do
if Clone:FindFirstChild(v.Name) == nil then
v:Clone().Parent = Clone
else
pcall(function()
Clone:FindFirstChild(v.Name).BrickColor = v.BrickColor
end)
end
end
Clone.Humanoid.Torso = Clone.Torso
LocalPlayer.Character = Clone
Clone.Parent = workspace
Clone.Torso.CFrame = Player.Character.Torso.CFrame*CFrame.new(0,0,-5) * CFrame.Angles(0,math.rad(180),0)
elseif CtrlDown == false then
LocalPlayer.Character = Player.Character
end
else
if CtrlDown == false then
LoadCharacter(CFrame.new(Mouse.Hit.x,Mouse.Hit.y,Mouse.Hit.z))
else
LocalPlayer.Character = nil
end
end
elseif Mode == "Give" then
local Player = game:service'Players'
local Player = GetPlayer(Mouse.Target)
if Player ~= nil then
if Player.Backpack ~= nil then
local NS = ClonyPooPoo:Clone()
NS.Parent = Player.Backpack
NS.Disabled = false
end
end
elseif Mode == "BaleFire" then
local FF = Instance.new("ForceField",LocalPlayer.Character)
game:service'Debris':AddItem(FF,1.5)
for i=0,100 do
local Expl = Instance.new("Explosion",workspace)
Expl.BlastPressure = 2500000
Expl.BlastRadius = 7
Expl.Position = (CFrame.new(LocalPlayer.Character.Torso.Position,Mouse.Hit.p)
* CFrame.new(0,0,-i * 15)).p
if CtrlDown == true then
Expl.Hit:connect(function(v)
v.Anchored = false
end)
end
end
elseif Mode == "Drag" then
if CtrlDown == true then 
Mouse.Target:BreakJoints()
Mouse.Target.Anchored = false
end
Dragging = Mouse.Target
DraggingBP = Instance.new("BodyPosition",Dragging)
DraggingBP.maxForce = Vector3.new(1/0,1/0,1/0)
end
end))
if not a then print(b) end
end)
Mouse.Button1Up:connect(function()
        ButtonUnoDown = false
end)
Mouse.Move:connect(function()
        local pos = workspace.CurrentCamera.Focus
        local a,b = coroutine.resume(coroutine.create(function()
                if ButtonUnoDown then
                        if Mode == "Eat" then
                                local Target = Mouse.Target
                                if ShouldEditPart(Target) then
                                        local CF = Target.CFrame
                                        local Volume = math.floor(Target.Size.x * Target.Size.y * Target.Size.z)
                                        Target.Size = Vector3.new(math.random(1,2),math.random(1,2),math.random(1,2))
                                        Target.Anchored = false
                                        Target.CanCollide = false
                                        Target.CFrame = CF
                                        Target:BreakJoints()
                                        local BP = Instance.new("BodyPosition",Target)
                                        BP.maxForce = Vector3.new(1/0,1/0,1/0)
                                        BP.position = LocalPlayer.Character.Head.Position
                                        Target.Touched:connect(function(Hit)
                                                if Hit:IsDescendantOf(LocalPlayer.Character) then        
                                                        Target:Destroy()
                                                        if LocalPlayer.Character.Humanoid.Health >= LocalPlayer.Character.Humanoid.MaxHealth then
                                                                LocalPlayer.Character.Humanoid.MaxHealth = LocalPlayer.Character.Humanoid.MaxHealth+Volume*0.01
                                                                LocalPlayer.Character.Humanoid.Health = LocalPlayer.Character.Humanoid.MaxHealth
                                                        else
                                                                LocalPlayer.Character.Humanoid.Health = LocalPlayer.Character.Humanoid.Health+Volume*0.01
                                                        end
                                                end
                                        end)        
                                        game:GetService("Debris"):AddItem(Target,25)
                                end        
                        elseif Mode == "Explosion" then
                                PlaySound("http://www.roblox.com/Asset/?id=3087031")
                                local Expl = Instance.new("Explosion",workspace)
                                Expl.Position = Mouse.Hit.p
                                Expl.BlastPressure = 2500000
                                Expl.BlastRadius = 20
                                if CtrlDown == true then
                                        Expl.Hit:connect(function(v)
                                        v.Anchored = false
                                end)
                        end
                elseif Mode == "Drag" then
                        if Mouse.Target == nil then
                                DraggingBP.position = (CFrame.new(pos.p,(Mouse.Hit*CFrame.new(0,1e3,0)).p)*CFrame.new(0,0,-20)).p
                        else
                                DraggingBP.position = (CFrame.new(pos.p,(Mouse.Hit*CFrame.new(0,30,0)).p)*CFrame.new(0,0,-15)).p
                        end
                end
        end
        end))
        if not a then print(b) end
end)
Mouse.Button1Up:connect(function()
        pcall(function()
                Dragging = nil
                DraggingBP:Destroy()
                DraggingBP = nil
        end)
end)
Mouse.KeyUp:connect(function(Key)
        Key = Key:lower()
        if Key == "1" or Key == "2" then
                CtrlDown = false
        end
end)
