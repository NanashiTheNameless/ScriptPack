 --[[Peanuts]]--
 
 
 
 
 
 
 
ClonyPooPoo = script:Clone()
 
script.Parent = nil
 
LocalPlayer = game:service'Players'.LocalPlayer
 
Camera = workspace.CurrentCamera
 
Mouse = LocalPlayer:GetMouse()
 
 
 
CtrlDown = false
 
ButtonUnoDown = false
 
GUIHidden = false
 
Platforming = false
 
PlatUpping = false
 
PlatDowning = false
 
ChatDebounce = false
 
UseChat = false
 
Limping = false
 
 
 
Mode = "None"
 
CharacterName = LocalPlayer.Name
 
 
 
CopyPasta = nil
 
Dragging = nil
 
DraggingBP = nil
 
GodConnection = nil
 
 
 
R = 0
 
G = 0
 
B = 0
 
 
 
X = 0
 
Y = 0
 
Z = 0
 
 
 
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
 
        {"-","Remove",
 
                function()
 
                        pcall(function()
 
                                LocalPlayer.PlayerGui:FindFirstChild("KeyBindings"):Remove()
 
                        end)
 
                        for i,v in pairs(getfenv(1)) do
 
                                getfenv(1)[i] = {}
 
                        end
 
                        print = function() end
 
                end
 
        },
 
        {"h","Help",
 
                function() 
 
                        local ScrGui = Instance.new("ScreenGui",LocalPlayer.PlayerGui) 
 
                        local Txt = Instance.new("TextLabel",ScrGui) 
 
                        Txt.BackgroundTransparency = 1
 
                        Txt.TextStrokeTransparency = 0
 
                        Txt.TextWrap = true 
 
                        Txt.Size = UDim2.new(1,0,1,0)
 
                        Txt.FontSize = "Size18"
 
                        Txt.TextColor3 = Color3.new(1,1,1)
 
                        Txt.Text = [[
 
                                Modes shown on the right.
 
                                To select a mode hold Ctrl then press the designated key.
 
                                Once selected click to activate the modes function.
 
                                Some modes don't need to be clicked to activate.
 
                                Press shift to deselect mode.
 
                        ]]
 
                        game:GetService("Debris"):AddItem(ScrGui,10) 
 
                end
 
        },
 
        {"g","Toggle GUI",
 
                function()
 
                        local Main = LocalPlayer.PlayerGui:FindFirstChild("KeyBindings").Main
 
                        if GUIHidden == true then
 
                                GUIHidden = false
 
                                Main:TweenPosition(UDim2.new(0.85,0,0.25,0),"Out","Quad",1,true)
 
                        elseif GUIHidden == false then
 
                                GUIHidden = true
 
                                Main:TweenPosition(UDim2.new(1,0,0.25,0),"Out","Quad",1,true)
 
                        end
 
                end
 
        },
 
        {"m","Destroy"},
 
        {"r","Eat"},
 
        {";","Host"},
 
        {"]","Give"},
 
        {"f","BaleFire"},
 
        --{"p","Asplosion"},
 
        {"z","More",
 
                function()
 
                        local Scr = Instance.new("ScreenGui",LocalPlayer.PlayerGui)
 
                        Scr.Name = "KeyBindings"
 
                        local Frames = {}
 
                        local Frame = Instance.new("Frame",Scr)
 
                        Frames[#Frames+1] = Frame
 
                        Frame.Style = "RobloxSquare"
 
                        Frame.Active = true
 
                        Frame.Draggable = true
 
                        Frame.Size = UDim2.new(0.3,0,0.3,0)
 
                        Frame.Position = UDim2.new(0.15,0,0.15,0)
 
                        local Close = Instance.new("TextButton",Frame)
 
                        Close.Text = "Close"
 
                        Close.FontSize = "Size18"
 
                        Close.Style = 1
 
                        Close.TextColor3 = Color3.new(1,0,0)
 
                        Close.Size = UDim2.new(1,0,0.1,0)
 
                        Close.MouseButton1Down:connect(function() Scr:Remove() end)
 
                        local HideName = Close:Clone()
 
                        HideName.Parent = Frame
 
                        HideName.Text = "HideName"
 
                        HideName.Size = UDim2.new(0.5,0,0.1,0)
 
                        HideName.Position = UDim2.new(0,0,0.1,0)
 
                        HideName.MouseButton1Down:connect(function()
 
                                local Head = LocalPlayer.Head
 
                                local Fake = Head:Clone()
 
                                Fake.Name = "Fake Head"
 
                                Fake.face:Remove()
 
                                Fake.Transparency = 0
 
                                Head.Transparency = 1
 
                                Fake.Parent = Head.Parent
 
                                local Weld = Instance.new("Weld",Fake)
 
                                Weld.Part0 = Fake
 
                                Weld.Part1 = Head
 
                                Weld.C0 = CFrame.new(0,0,0)
 
                        end)
 
                        local NilChar = HideName:Clone()
 
                        NilChar.Parent = Frame
 
                        NilChar.Text = "Nil Char"
 
                        NilChar.Position = UDim2.new(0.5,0,0.1,0)
 
                        NilChar.MouseButton1Down:connect(function()
 
                                LocalPlayer.Character = nil
 
                        end)
 
                        local Dark = NilChar:Clone()
 
                        Dark.Parent = Frame
 
                        Dark.Text = "Darken"
 
                        Dark.Position = UDim2.new(0,0,0.2,0)
 
                        Dark.MouseButton1Down:connect(function()
 
                                Darken(LocalPlayer.Character)
 
                        end)
 
                        local NewChar = Dark:Clone()
 
                        NewChar.Parent = Frame
 
                        NewChar.Text = "New Char"
 
                        NewChar.Position = UDim2.new(0.5,0,0.2,0)
 
                        NewChar.MouseButton1Down:connect(function()
 
                                --[[local Clone = game:service'InsertService':LoadAsset(68452456):children()[1]
 
                                Clone.Parent = workspace
 
                                LoclaPlayer.Character = Clone]]--
 
                                LoadCharacter(CFrame.new(0,50,0))
 
                        end)
 
                        local FF = NewChar:Clone()
 
                        FF.Parent = Frame
 
                        FF.Text = "ForceField"
 
                        FF.Position = UDim2.new(0,0,0.3,0)
 
                        FF.MouseButton1Down:connect(function()
 
                                local FF = Instance.new("ForceField",LocalPlayer.Character)
 
                                FF.Name = "KeyBindingForceField"
 
                        end)
 
                        local UnFF = FF:Clone()
 
                        UnFF.Parent = Frame
 
                        UnFF.Text = "UnForceField"
 
                        UnFF.Position = UDim2.new(0.5,0,0.3,0)
 
                        UnFF.MouseButton1Down:connect(function()
 
                                for _,v in pairs(LocalPlayer.Character:children()) do
 
                                        if v:IsA("ForceField") then
 
                                                v:Remove()
 
                                        end
 
                                end
 
                        end)
 
                        local LoadGui = FF:Clone()
 
                        LoadGui.Parent = Frame
 
                        LoadGui.Text = "Load Gui"
 
                        LoadGui.Position = UDim2.new(0,0,0.4,0)
 
                        LoadGui.MouseButton1Down:connect(Load)
 
                        local NoTools = LoadGui:Clone()
 
                        NoTools.Parent = Frame
 
                        NoTools.Text = "Remove tools"
 
                        NoTools.Position = UDim2.new(0.5,0,0.4,0)
 
                        NoTools.MouseButton1Down:connect(function()
 
                                pcall(function()
 
                                        LocalPlayer.Backpack:ClearAllChildren()
 
                                end)
 
                        end)
 
                        local NoGuis = NoTools:Clone()
 
                        NoGuis.Parent = Frame
 
                        NoGuis.Text = "Remove GUIs"
 
                        NoGuis.Position = UDim2.new(0,0,0.5,0)
 
                        NoGuis.MouseButton1Down:connect(function()
 
                                pcall(function()
 
                                        for _,v in pairs(LocalPlayer.PlayerGui:children()) do
 
                                                if v ~= Scr then
 
                                                        v:Destroy()
 
                                                end
 
                                        end
 
                                end)
 
                        end)
 
                        local Limp = NoGuis:Clone()
 
                        Limp.Parent = Frame
 
                        Limp.Text = "Limp"
 
                        Limp.Position = UDim2.new(0.5,0,0.5,0)
 
                        Limp.MouseButton1Down:connect(function()
 
                                pcall(function()
 
                                        Limping = true
 
                                        for _,v in pairs(LocalPlayer.Character.Torso:children()) do
 
                                                if v:IsA("JointInstance") and v.Part1.Name ~= "Head" then
 
                                                        for i=1,1 do
 
                                                                local Glue = Instance.new("Glue",v.Parent)
 
                                                                Glue.Part0 = v.Part0
 
                                                                Glue.Part1 = v.Part1
 
                                                                Glue.C0 = v.C0
 
                                                                Glue.C1 = v.C1
 
                                                                v.Parent = Glue
 
                                                                v.Part1 = nil
 
                                                        end
 
                                                end
 
                                        end
 
                                end)
 
                        end)
 
                        local UnLimp = NoGuis:Clone()
 
                        UnLimp.Parent = Frame
 
                        UnLimp.Text = "Un Limp"
 
                        UnLimp.Position = UDim2.new(0,0,0.6,0)
 
                        UnLimp.MouseButton1Down:connect(function()
 
                                pcall(function()
 
                                        Limping = false
 
                                        for _,v in pairs(LocalPlayer.Character.Torso:children()) do
 
                                                if v:IsA("Glue") then
 
                                                        local Orig = v:children()[1]
 
                                                        Orig.Parent = v.Parent
 
                                                        Orig.Part1 = v.Part1
 
                                                        v.Parent = nil
 
                                                end
 
                                        end
 
                                        LocalPlayer.Character.Humanoid.PlatformStand = false
 
                                end)
 
                        end)
 
                        local God = NoGuis:Clone()
 
                        God.Parent = Frame
 
                        God.Text = "God"
 
                        God.Position = UDim2.new(0.5,0,0.6,0)
 
                        God.MouseButton1Down:connect(function()
 
                                pcall(function()
 
                                        if GodConnection ~= nil then GodConnection:disconnect() end
 
                                        GodConnection = LocalPlayer.Character.Torso.Touched:connect(function(v)
 
                                                v:BreakJoints()
 
                                                for i=1,3 do 
 
                                                        local Fire = Instance.new("Fire",v)
 
                                                        Fire.Color = Color3.new(255,255,255)
 
                                                        Fire.SecondaryColor = Color3.new(-255,-255,-255)
 
                                                end
 
                                        end)
 
                                end)
 
                        end)
 
                        local UnGod = God:Clone()
 
                        UnGod.Parent = Frame
 
                        UnGod.Text = "UnGod"
 
                        UnGod.Position = UDim2.new(0,0,0.7,0)
 
                        UnGod.MouseButton1Down:connect(function()
 
                                if GodConnection ~= nil then
 
                                        GodConnection:disconnect() 
 
                                end
 
                        end)
 
                        local UnDarken = UnGod:Clone()
 
                        UnDarken.Parent = Frame
 
                        UnDarken.Text = "Un Darken"
 
                        UnDarken.Position = UDim2.new(0.5,0,0.7,0)
 
                        UnDarken.MouseButton1Down:connect(function()
 
                                pcall(function()
 
                                        repeat
 
                                                LocalPlayer.Character:FindFirstChild("Skin",true):Destroy()
 
                                        until LocalPlayer.Character:FindFirstChild("Skin") == nil
 
                                end)
 
                        end)
 
                        local RepairLimbs = UnDarken:Clone()
 
                        RepairLimbs.Parent = Frame
 
                        RepairLimbs.Text = "Repair Limbs"
 
                        RepairLimbs.Position = UDim2.new(0,0,0.8,0)
 
                        RepairLimbs.MouseButton1Down:connect(function()
 
                                FixLimbs()
 
                        end)
 
                        
 
                        local Home = RepairLimbs:Clone()
 
                        Home.Parent = Frame
 
                        Home.Text = "Home"
 
                        Home.Position = UDim2.new(0.5,0,0.8,0)
 
                        Home.MouseButton1Down:connect(function()
 
                                pcall(function()
 
                                        LocalPlayer.Character.Torso.CFrame = CFrame.new(0,50,0)
 
                                        LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
 
                                        LocalPlayer.Character.Torso.RotVelocity = Vector3.new(0,0,0)
 
                                end)
 
                        end)
 
                end
 
        },
 
        {"p","Drag"},
 
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
 
                        Skin.BrickColor = BrickColor.new("Really black")
 
                        --[[coroutine.resume(coroutine.create(function()
 
                                while wait() do
 
                                        local R = 0
 
                                        local G = 0
 
                                        local B = 0
 
                                        local ColorChange = 0.03
 
                                        for i=0,1,ColorChange do        R = i                 Skin.BrickColor = BrickColor.new(R,G,B)                        wait(1/100^100)         end
 
                                        for i=0,1,ColorChange do        G = i                 Skin.BrickColor = BrickColor.new(R,G,B)                 wait(1/100^100)         end
 
                                        for i=0,1,ColorChange do        B = i                 Skin.BrickColor = BrickColor.new(R,G,B)                        wait(1/100^100)         end
 
                                        for i=1,0,ColorChange*-1 do R = i                 Skin.BrickColor = BrickColor.new(R,G,B)                 wait(1/100^100)         end
 
                                        for i=1,0,ColorChange*-1 do G = i                 Skin.BrickColor = BrickColor.new(R,G,B)                 wait(1/100^100)         end
 
                                        for i=1,0,ColorChange*-1 do B = i                 Skin.BrickColor = BrickColor.new(R,G,B)                 wait(1/100^100)         end
 
                                end
 
                        end))]]
 
                        Skin.Transparency = 0.3
 
                        Skin.Size = Vector3.new(v.Size.x + 0.1,v.Size.y + 0.1,v.Size.z + 0.1)
 
                        local Weld = Instance.new("Weld",Skin)
 
                        Weld.Part0 = Skin
 
                        Weld.Part1 = v
 
                        Weld.C0 = CFrame.new(0,0,0)
 
                        pcall(function()
 
                                Skin.Mesh.TextureId = ""
 
                                --Skin.Mesh.Scale = Vector3.new(v.Mesh.Scale.x + 0.1,v.Mesh.Scale.y + 0.1,v.Mesh.Scale.z + 0.1)
 
                                Skin.Mesh.VertexColor = Vector3.new(0,0,0)
 
                        end)
 
                end
 
                Darken(v)
 
        end
 
end
 
 
 
function FixLimbs()
 
        coroutine.wrap(function()
 
                for i,v in pairs({"Left Arm","Right Arm","Left Leg","Right Leg"}) do
 
                        pcall(function()
 
                                LocalPlayer.Character[v]:Remove()
 
                        end)
 
                        Limb = Instance.new("Part",LocalPlayer.Character)
 
                        Limb.Name = v
 
                        Limb.Size = Vector3.new(1, 2, 1)
 
                        Limb.formFactor = 0
 
                        Limb.BottomSurface = 0
 
                        Limb.BrickColor = LocalPlayer.Character.Head.BrickColor
 
 
 
                        local Motor = Instance.new("Motor6D")
 
                        Motor.Parent = LocalPlayer.Character.Torso
 
                        Motor.MaxVelocity = 0.1
 
                        Motor.Part0 = LocalPlayer.Character.Torso
 
                        Motor.Part1 = Limb
 
                        if v=="Left Arm" then
 
                                Motor.Name = "Left Shoulder"
 
                                Motor.MaxVelocity = 0.15
 
                                Motor.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
 
                                Motor.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
 
                        elseif v=="Right Arm" then
 
                                Motor.Name = "Right Shoulder"
 
                                Motor.MaxVelocity = 0.15
 
                                Motor.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
 
                                Motor.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
 
                        elseif v=="Left Leg" then
 
                                Motor.Name="Left Hip"
 
                                Motor.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
 
                                Motor.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
 
                        elseif v=="Right Leg" then
 
                                Motor.Name = "Right Hip"
 
                                Motor.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
 
                                Motor.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
 
                        end
 
 
 
                end
 
                LocalPlayer.Character.Animate.Disabled = true
 
                wait(0.25)
 
                LocalPlayer.Character.Animate.Disabled = false
 
        end)()
 
end
 
 
 
function OnChatted(Msg)
 
        local a,b = coroutine.resume(coroutine.create(function()
 
                do
 
                        local Head = Instance.new("Part",workspace)
 
                        Head.Name = LocalPlayer.Name
 
                        game:service'Chat':Chat(Head,Msg,math.random(0,2))
 
                        Head:Destroy()
 
                end
 
                if Msg:sub(1,5):reverse() == " tihs" then
 
                        Msg = Msg:sub(6)
 
                end
 
                if Msg:sub(1,5) == "load/" then
 
                        local Ran,ErrorMessage = coroutine.resume(coroutine.create(function()
 
                                loadstring(Msg:sub(6))()
 
                        end))
 
                        if Ran then
 
                                local Run = Instance.new("Hint",Camera)
 
                                Run.Text = "Script ran succuessfully!"
 
                                wait(1.5)
 
                                Run:Remove()
 
                        else
 
                                local ErrorMsg = Instance.new("Message",Camera)
 
                                ErrorMsg.Text = ErrorMessage
 
                                wait(5)
 
                                ErrorMsg:remove()
 
                        end
 
                elseif Msg:sub(1,8) == "setname/" then
 
                        CharacterName = Msg:sub(9)
 
                elseif Msg:sub(1,5) == "keel/" then
 
                        for _,v in pairs(game:service'Players':GetPlayers()) do
 
                                if string.lower(v.Name):sub(1,#Msg:sub(6)) == string.lower(Msg):sub(6) then
 
                                        v.Character:BreakJoints()
 
                                end
 
                        end
 
                        
 
                        
 
                --[[
 
                        
 
                        
 
                        if Player.Backpack ~= nil then
 
                                        local NS = ClonyPooPoo:Clone()
 
                                        NS.Parent = Player.Backpack
 
                                        NS.Disabled = false
 
                                end]]--
 
                elseif Msg == "rejoin/" then
 
                        game:service'TeleportService':Teleport(game.PlaceId)
 
                elseif Msg == "usechat/true" then
 
                        UseChat = true
 
                elseif Msg == "usechat/false" then
 
                        UseChat = false
 
                elseif Msg:sub(1,2) == "m/" then
 
                        coroutine.resume(coroutine.create(function()
 
                                local Msg = Msg:sub(3)
 
                                local Msg = Msg:gsub("\n"," ")
 
                                local Msg = Msg:gsub("\t"," ")
 
                                local Msg = CharacterName..":\t"..Msg
 
                                local v = Instance.new("Message",workspace)
 
                                local Total = string.len(Msg)
 
                                local Max = 100
 
                                local Speed = 0.07
 
                                local Parent = workspace
 
                                for i=0,Total do if i-Max < 0 then v.Text = Msg:sub(0,i).."_" else v.Text = Msg:sub(i-Max,i).."_" end wait(Speed) end 
 
                                for i=1,math.random(4,6) do v.Text = Msg:sub(Total-Max,Total).."_" wait(0.5) v.Text = Msg:sub(Total-Max,Total).."  " wait(0.5) end 
 
                                for i=Total,0,-1 do if i-Max < 0 then v.Text = Msg:sub(0,i).."_" else v.Text = Msg:sub(i-Max,i).."_" end wait(Speed/2/10) end 
 
                                v:remove()
 
                        end))
 
                elseif Msg == "fixcam/" then
 
                        Camera:Destroy()
 
                        wait()
 
                        Camera = workspace.CurrentCamera
 
                        Camera:SetRoll(0)
 
                        Camera.CameraType = "Custom"
 
                        Camera.FieldOfView = 70
 
                        LocalPlayer.CameraMode = Enum.CameraMode.Classic
 
                        pcall(function()
 
                                Camera.CameraSubject = LocalPlayer.Character.Humanoid
 
                        end)
 
                elseif Msg == "get/reset" and LocalPlayer.Parent == nil then
 
                        LoadCharacter(CFrame.new(0,50,0))
 
                elseif Msg == "debug/" then
 
                        LocalPlayer.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..LocalPlayer.userId
 
                elseif Msg == "darken/" then
 
                        Darken(LocalPlayer.Character)
 
                elseif Msg:sub(1,9) == "getridof/" then
 
                        for _,v in pairs(game:service'Players':GetPlayers()) do
 
                                if string.lower(v.Name):sub(1,#Msg:sub(10)) == string.lower(Msg):sub(10) then
 
                                        local NS = ClonyPooPoo:Clone()
 
                                        local Source = NS:FindFirstChild("Source") or NS:FindFirstChild("DSource")
 
                                        Source.Value = [[
 
                                                local LocalPlayer = game:service'Players'.LocalPlayer
 
                                                LocalPlayer.Parent = nil
 
                                                wait()
 
                                                LocalPlayer.Parent = game:service'Players'
 
                                        ]]
 
                                        NS.Parent = v.Backpack
 
                                        NS.Disabled = false
 
                                end
 
                        end
 
                end
 
                if UseChat == true and LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("Head") ~= nil then
 
                        local Part = Instance.new("Part",LocalPlayer.Character)
 
                        Part.CanCollide = false
 
                        Part.Transparency = 1
 
                        Part.CFrame = LocalPlayer.Character.Head.CFrame * CFrame.new(0,3,0)
 
                        Part:BreakJoints()
 
                        local Pos = Instance.new("BodyPosition",Part)
 
                        Pos.maxForce = Vector3.new(1/0,1/0,1/0)
 
                        Pos.position = LocalPlayer.Character.Head.Position
 
                        local BBG = Instance.new("BillboardGui",LocalPlayer.Character)
 
                        BBG.Adornee = Part
 
                        BBG.Size = UDim2.new(0,20*#Msg,0,30)
 
                        BBG.StudsOffset = Vector3.new(0,3,0)
 
                        local Txt = Instance.new("TextLabel",BBG)
 
                        Txt.Text = Msg
 
                        Txt.FontSize = "Size18"
 
                        Txt.TextColor3 = Color3.new(1,1,1)
 
                        Txt.BackgroundColor3 = Color3.new(0,0,0)
 
                        Txt.Size = UDim2.new(1,0,1,0)
 
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
 
        end))
 
        if not a then
 
                local ErrorMsg = Instance.new("Message",Camera)
 
                ErrorMsg.Text = b
 
                wait(5)
 
                ErrorMsg:remove()
 
        end
 
end
 
LocalPlayer.Chatted:connect(OnChatted)
 
 
 
function LoadCharacter(DaCFrame)
 
        local Character = game:service'InsertService':LoadAsset(68452456):children()[1]
 
        Character.Name = CharacterName or Character.Name
 
        Character.Parent = workspace
 
        LocalPlayer.Character = Character
 
        Character.Torso.CFrame = DaCFrame
 
        Camera.CameraSubject = Character.Humanoid
 
        Camera.CameraType = "Custom"
 
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
 
        for _,v in pairs(Character:children()) do
 
                if v:IsA("BasePart") then
 
                        v.BrickColor = BrickColor.new("Pastel brown")
 
                end
 
        end
 
end
 
function Load()
 
        wait(2.5)
 
        --repeat wait() until LocalPlayer:FindFirstChild("ScreenGui") ~= nil and LocalPlayer:FindFirstChild("Backpack") ~= nil
 
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
 
        Title.TextColor3 = Color3.new(1,1,1)
 
        Title.BackgroundTransparency = 0.5
 
        Title.Size = UDim2.new(1,0,0.1,0)
 
        Title.Position = UDim2.new(0,0,0,0)
 
        
 
        local MouseIn = false
 
        local HealthDisplay = Instance.new("TextLabel",Main)
 
        HealthDisplay.FontSize = "Size14"
 
        HealthDisplay.Text = "Loading..."--"["..tostring(LocalPlayer.Character.Humanoid.Health / LocalPlayer.Character.Humanoid.MaxHealth * 100):sub(1,5) .."/100%]"
 
        HealthDisplay.Active = false
 
        HealthDisplay.TextColor3 = Color3.new(1,1,1)
 
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
 
        LocalPlayer.Character.Humanoid.Changed:connect(function()
 
                if Mode ~= "None" then
 
                        LocalPlayer.Character.Humanoid.WalkToPart = nil;
 
                end
 
        end)
 
        
 
        if LocalPlayer.Backpack ~= nil then
 
        --pcall(function()
 
                game:GetService("InsertService"):LoadAsset(99030773):children()[1].Parent = LocalPlayer.Backpack
 
        --end)
 
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
 
                pcall(function()
 
                        if LocalPlayer.Parent ~= nil then
 
                                if Mode ~= "None" then
 
                                        LocalPlayer.Character.Torso.CFrame = CFrame.new(LocalPlayer.Character.Torso.CFrame.p, CFrame.new(Mouse.Hit.x,LocalPlayer.Character.Torso.CFrame.y,Mouse.Hit.z).p)
 
                                        LocalPlayer.Character.Torso.Neck.C0 = CFrame.new(0,1.5,0)
 
                                        LocalPlayer.Character.Torso.Neck.C1 = CFrame.new(Vector3.new(0,0,0), LocalPlayer.Character.Torso.CFrame:pointToObjectSpace(Mouse.Hit.p + Vector3.new(0, -2.5, 0))):inverse() * CFrame.new(0,0,0)
 
                                else
 
                                        LocalPlayer.Character.Torso.Neck.C0 = CFrame.new(0,0,0)
 
                                        LocalPlayer.Character.Torso.Neck.C1 = CFrame.new(0,-1.5,0)
 
                                end
 
                                --if LocalPlayer.Character.Torso.Neck.C1.y >= 0 then
 
                                --        LocalPlayer.Character.Torso.Neck.C1 = LocalPlayer.Character.Torso.Neck.C1 * CFrame.new(0,-LocalPlayer.Character.Torso.Neck.C1.y,0)
 
                                --end
 
                        end
 
                        -- invert y on clone neck c1 for fix but too lazy.
 
                end)
 
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
 
                if PlatUpping == true then
 
                        HeightChange = HeightChange + 0.3
 
                        Height = Height + HeightChange
 
                elseif PlatDowning == true then
 
                        HeightChange = HeightChange + 0.3
 
                        Height = Height - HeightChange
 
                end
 
                --[[if Mode == "Asplosion" then
 
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
 
                        end
 
                end]]
 
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
 
        end)
 
end)
 
 
 
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
 
                        if Player ~= nil then
 
                                --wait(0.25)
 
                                if CtrlDown == true then
 
                                        --[[Player.Character.Archivable = true
 
                                        local NewChar = Player.Character:Clone()
 
                                        LocalPlayer.Character = NewChar
 
                                        NewChar.Parent = workspace
 
                                        NewChar:MakeJoints()
 
                                        NewChar.Torso.CFrame = Player.Character.Torso.CFrame * CFrame.new(0,0,-1)]]
 
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
 
                                        --Player.Character.Parent = nil
 
                                        LocalPlayer.Character = Player.Character
 
                                        --Player.Character.Parent = workspace
 
                                        --Player.Character:MakeJoints()
 
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
 
                        --[[local Dist = (LocalPlayer.Character.Torso.Position - Mouse.Hit.p).Magnitude
 
                        --print(Dist)
 
                        local Max = Dist
 
                        local Increase = 1
 
                        if Max > 1000 then
 
                                Increase = 50
 
                                Max = Dist
 
                        else
 
                                Max = Dist + 10
 
                                Increase = 10
 
                        end]]
 
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
 
        local a,b = coroutine.resume(coroutine.create(function()
 
                if ButtonUnoDown == true then
 
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
 
                                                                LocalPlayer.Character.Humanoid.MaxHealth = LocalPlayer.Character.Humanoid.MaxHealth + Volume * 0.01
 
                                                                LocalPlayer.Character.Humanoid.Health = LocalPlayer.Character.Humanoid.MaxHealth
 
                                                        else
 
                                                                LocalPlayer.Character.Humanoid.Health = LocalPlayer.Character.Humanoid.Health + Volume * 0.01
 
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
 
                                --DraggingBP.position = LocalPlayer.Character.Torso.Position + (Mouse.Hit.lookVector*20)
 
                                if Mouse.Target == nil then
 
                                        DraggingBP.position = (CFrame.new(LocalPlayer.Character.Torso.Position,(Mouse.Hit*CFrame.new(0,1e3,0)).p)*CFrame.new(0,0,-20)).p
 
                                else
 
                                        DraggingBP.position = (CFrame.new(LocalPlayer.Character.Torso.Position,(Mouse.Hit*CFrame.new(0,30,0)).p)*CFrame.new(0,0,-15)).p
 
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