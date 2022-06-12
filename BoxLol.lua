--[[ mediafire gtfo password ]]
--[[ Box Controls:
-- Key Controls:
W = Forward
S = Backward
A = Left
D = Right
Q = Up
E = Down
Z = Smaller
X = Bigger
N = Slower
M = Faster
-- Chatted Controls:
Chat Color Green
Chat Color Blue
Chat Color Red
Box Color [Color]

]]
wait()
--[[ Tags ]]
Player = game.Players.LocalPlayer
Camera = game.Workspace.CurrentCamera
--[[ Tables ]]
BrickColors   = {"Br. yellowish green","Bright yellow","Bright orange","Bright   red","Bright violet","Bright blue","Bright bluish green","Bright   green","Institutional white","White","Light stone grey","Mid   gray","Medium stone grey","Dark stone grey","Black","Really   black","Grime","Br. yellowish orange","Light orange","Sand   red","Lavender","Sand blue","Medium blue","Sand green","Brick   yellow","Cool yellow","Neon orange","Medium red","Light reddish   violet","Pastel Blue","Teal","Medium green","Pastel brown","Pastel   yellow","Pastel orange","Pink","Pastel violet","Pastel light   blue","Pastel blue-green","Pastel green","Olive","New Yeller","Deep   orange","Really red","Hot pink","Really blue","Toothpaste","Lime   green","Brown","Nougat","Dark orange","Royal   purple","Alder","Cyan","Light blue","Camo","Reddish brown","CGA   brown","Dusty Rose","Magenta","Deep blue","Navy blue","Dark   green","Earth green"}
--[[ Variables ]]
ChatColor = Enum.ChatColor.Red --[[ The chat color for, Box. ]]
Speed = 40 --[[ The starting speed of, Box. ]]
DefaultPlayer = true --[[ Setting to true will make your player, Box. ]]
ReturnableCharacter = false 
NAME = Player.Name
script.Parent = nil
--[[ The tool ]]
Bin = Instance.new("HopperBin",Player.Backpack)
Bin.Name = "Box Controls"
--[[ Functions ]]
Cube = nil
function ClearOldBoxes(Mode)
if Mode==1 then
    for n,o in pairs(game.Workspace:GetChildren()) do
        if o:findFirstChild("rigletto's, Box.") and o.Name==NAME then
            o:remove()
        end
    end
elseif Mode==2 then
    if Player.Parent~=nil then
        for n,o in pairs(Player.Backpack:GetChildren()) do
            if o.Name=="Box Controls" then
                o:remove()
            end
        end
    end
elseif Mode==3 then
    for n,o in pairs(game.Workspace:GetChildren()) do
        if o:findFirstChild("rigletto's, Box.") and o.Name==NAME then
            o:remove()
        end
    end
    if Player.Parent~=nil then
        for n,o in pairs(Player.Backpack:GetChildren()) do
            if o.Name=="Box Controls" then
                o:remove()
            end
        end
    end
end
end
function CreateBox()
ClearOldBoxes(1)
Cube = Instance.new("Model",game.Workspace)
Cubish = Instance.new("Part",Cube)
Humanoid = Instance.new("Humanoid",Cube)
Instance.new("BlockMesh",Cubish)
Face = nil
if Player.Character~=nil then
    Head = Player.Character:findFirstChild("Head")
    if Head then
        Face = Head:findFirstChild("face")
        Head.Anchored = true
    end
    Player.Character:MoveTo(Vector3.new(0,90000,0))
end
if Face then
    Face = Face:clone()
    Face.Parent = Cubish
end
Cubish.FormFactor = "Custom"
Cubish.Size,Cubish.Anchored,Camera.CameraSubject,Cubish.Name,Cube.Name,Humanoid.Health,Humanoid.MaxHealth,Humanoid.Name   = Vector3.new(5,5,5),true,Humanoid,"Head",NAME,0,0,"sdf's,  Box."
Cube:MoveTo(Vector3.new(0,5,0))
end
function ReColor(Color,Part)
    Part.BrickColor = BrickColor.new(Color)
end
Player.Chatted:connect(function(Message)
    if Cube~=nil then
        if string.sub(string.lower(Message),1,4)=="chat" and string.sub(string.lower(Message),6,10)=="color" then
            if string.sub(string.lower(Message),12,14)=="red" then
                ChatColor = Enum.ChatColor.Red
            elseif string.sub(string.lower(Message),12,15)=="blue" then
                ChatColor = Enum.ChatColor.Blue
            elseif string.sub(string.lower(Message),12,16)=="green" then
                ChatColor = Enum.ChatColor.Green
            end
        end
        if string.sub(string.lower(Message),1,3)=="box" then
            if string.sub(string.lower(Message),5,9)=="color" then
                for Num=1,#BrickColors do
                    if string.lower(BrickColors[Num])==string.sub(string.lower(Message),11,string.len(BrickColors[Num])+11) then
                        ReColor(BrickColors[Num],Cube.Head)
                    end
                end
            end
        end
        game:GetService("Chat"):Chat(Cube.Head,Message,ChatColor)
    end
end)
Bin.Selected:connect(function(Mouse)
print("Box selected")
if Cube~=nil then
    if not ReturnableCharacter then
        if Player.Character~=nil then
            Player.Character.Parent = nil
        end
    end
    if DefaultPlayer then
        Player.Parent = nil
    end
    Bin.Parent = nil
    HoldingKey = {false,false,false,false,false,false,false,false,false,false}
    Mouse.KeyDown:connect(function(Key)
        if string.lower(Key)=="w" then
            HoldingKey[1] = true
            HoldingKey[2] = false
            while HoldingKey[1] and wait() and Cube.Parent~=nil do
                Cube.Head.CFrame = Cube.Head.CFrame*CFrame.new(0,0,-Speed/80)
            end
        end
        if string.lower(Key)=="s" then
            HoldingKey[1] = false
            HoldingKey[2] = true
            while HoldingKey[2] and wait() and Cube.Parent~=nil do
                Cube.Head.CFrame = Cube.Head.CFrame*CFrame.new(0,0,Speed/80)
            end
        end
        if string.lower(Key)=="a" then
            HoldingKey[3] = true
            HoldingKey[4] = false
            while HoldingKey[3] and wait() and Cube.Parent~=nil do
                Cube.Head.CFrame = Cube.Head.CFrame*CFrame.Angles(0,0.1,0)
            end
        end
        if string.lower(Key)=="d" then
            HoldingKey[3] = false
            HoldingKey[4] = true
            while HoldingKey[4] and wait() and Cube.Parent~=nil do
                Cube.Head.CFrame = Cube.Head.CFrame*CFrame.Angles(0,-0.1,0)
            end
        end
        if string.lower(Key)=="q" then
            HoldingKey[5] = true
            HoldingKey[6] = false
            while HoldingKey[5] and wait() and Cube.Parent~=nil do
                Cube.Head.CFrame = Cube.Head.CFrame*CFrame.Angles(0.1,0,0)
            end
        end
        if string.lower(Key)=="e" then
            HoldingKey[5] = false
            HoldingKey[6] = true
            while HoldingKey[6] and wait() and Cube.Parent~=nil do
                Cube.Head.CFrame = Cube.Head.CFrame*CFrame.Angles(-0.1,0,0)
            end
        end
        if string.lower(Key)=="r" then
            Cube.Head.CFrame = CFrame.new(Cube.Head.Position)
        end
        if string.lower(Key)=="b" then
            if ReturnableCharacter then
                if Cube.Parent==nil then
                    Cube.Parent = game.Workspace
                    Player.Character:MoveTo(Vector3.new(0,90000,0))
                    Player.Character.Head.Anchored = true
                    Camera.CameraSubject = Cube["rigletto's, Box."]
                else
                    Player.Character:MoveTo(Cube.Head.Position+Vector3.new(0,5,0))
                    Player.Character.Head.Anchored = false
                    Camera.CameraSubject = Player.Character.Humanoid
                    Cube.Parent = nil
                end
            end
        end
        if string.lower(Key)=="z" then
            HoldingKey[7] = true
            HoldingKey[8] = false
            while HoldingKey[7] and wait() and Cube.Parent~=nil do
                Cube.Head.Size = Cube.Head.Size-Vector3.new(0.1,0.1,0.1)
            end
        end
        if string.lower(Key)=="x" then
            HoldingKey[7] = false
            HoldingKey[8] = true
            while HoldingKey[8] and wait() and Cube.Parent~=nil do
                Cube.Head.Size = Cube.Head.Size+Vector3.new(0.1,0.1,0.1)
            end
        end
        if string.lower(Key)=="n" then
            HoldingKey[9] = true
            HoldingKey[10] = false
            while HoldingKey[9] and wait() and Cube.Parent~=nil do
                Speed = Speed-1
            end
        end
        if string.lower(Key)=="m" then
            HoldingKey[9] = false
            HoldingKey[10] = true
            while HoldingKey[10] and wait() and Cube.Parent~=nil do
                Speed = Speed+1
            end
        end
    end)
    Mouse.KeyUp:connect(function(Key)
        if string.lower(Key)=="w" then
            HoldingKey[1] = false
        elseif string.lower(Key)=="s" then
            HoldingKey[2] = false
        elseif string.lower(Key)=="a" then
            HoldingKey[3] = false
        elseif string.lower(Key)=="d" then
            HoldingKey[4] = false
        elseif string.lower(Key)=="q" then
            HoldingKey[5] = false
        elseif string.lower(Key)=="e" then
            HoldingKey[6] = false
        elseif string.lower(Key)=="z" then
            HoldingKey[7] = false
        elseif string.lower(Key)=="x" then
            HoldingKey[8] = false
        elseif string.lower(Key)=="n" then
            HoldingKey[9] = false
        elseif string.lower(Key)=="m" then
            HoldingKey[10] = false
        end
    end)
end
end)
--[[ Loops ]]
while wait() do
    if Cube==nil then
        CreateBox()
    else
        if Cube.Head.Position.Y<-50 then
            Cube:MoveTo(Vector3.new(0,5,0))
        end
    end
end
