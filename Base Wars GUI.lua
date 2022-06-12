local Character = game.Players.LocalPlayer.Character

-- Objects

local SkeletalsBWGUI = Instance.new("ScreenGui")
local TopBar = Instance.new("TextLabel")
local Core = Instance.new("Frame")
local YellowBasebtn = Instance.new("TextButton")
local GreenBasebtn = Instance.new("TextButton")
local RiverPassbtn = Instance.new("TextButton")
local MountainStoragebtn = Instance.new("TextButton")
local YellowFrontlineBunkerbtn = Instance.new("TextButton")
local FortifiedIslandbtn = Instance.new("TextButton")
local GreenUndergroundbtn = Instance.new("TextButton")
local GreenFrontlineBunkerbtn = Instance.new("TextButton")
local YellowUndergroundbtn = Instance.new("TextButton")
local PlayerSelect = Instance.new("TextBox")
local TeleportToPlayer = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local Discord = Instance.new("TextLabel")
local Bighead = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local MessageSelect = Instance.new("TextBox")
local Message = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")

-- Properties

SkeletalsBWGUI.Name = "Skeletals BW GUI"
SkeletalsBWGUI.Parent = game.Players.LocalPlayer.PlayerGui

TopBar.Name = "TopBar"
TopBar.Parent = SkeletalsBWGUI
TopBar.Active = true
TopBar.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
TopBar.Draggable = true
TopBar.Position = UDim2.new(0, 150, 0, 250)
TopBar.Size = UDim2.new(0, 400, 0, 25)
TopBar.Font = Enum.Font.Code
TopBar.FontSize = Enum.FontSize.Size18
TopBar.Text = "Skeletal's Base Wars GUI"
TopBar.TextSize = 18

Core.Name = "Core"
Core.Parent = TopBar
Core.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
Core.ClipsDescendants = true
Core.Position = UDim2.new(0, 0, 0, 30)
Core.Size = UDim2.new(0, 400, 0, 250)

YellowBasebtn.Name = "YellowBasebtn"
YellowBasebtn.Parent = Core
YellowBasebtn.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
YellowBasebtn.BorderColor3 = Color3.new(0, 0, 0)
YellowBasebtn.Position = UDim2.new(0, 265, 0, 5)
YellowBasebtn.Size = UDim2.new(0, 125, 0, 30)
YellowBasebtn.Font = Enum.Font.Code
YellowBasebtn.FontSize = Enum.FontSize.Size18
YellowBasebtn.Text = "Yellow Base"
YellowBasebtn.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
YellowBasebtn.TextSize = 18

GreenBasebtn.Name = "GreenBasebtn"
GreenBasebtn.Parent = Core
GreenBasebtn.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
GreenBasebtn.BorderColor3 = Color3.new(0, 0, 0)
GreenBasebtn.Position = UDim2.new(0, 5, 0, 5)
GreenBasebtn.Size = UDim2.new(0, 125, 0, 30)
GreenBasebtn.Font = Enum.Font.Code
GreenBasebtn.FontSize = Enum.FontSize.Size18
GreenBasebtn.Text = "Green Base"
GreenBasebtn.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
GreenBasebtn.TextSize = 18

RiverPassbtn.Name = "RiverPassbtn"
RiverPassbtn.Parent = Core
RiverPassbtn.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
RiverPassbtn.BorderColor3 = Color3.new(0, 0, 0)
RiverPassbtn.Position = UDim2.new(0, 135, 0, 5)
RiverPassbtn.Size = UDim2.new(0, 125, 0, 30)
RiverPassbtn.Font = Enum.Font.Code
RiverPassbtn.FontSize = Enum.FontSize.Size18
RiverPassbtn.Text = "River Pass"
RiverPassbtn.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
RiverPassbtn.TextSize = 18

MountainStoragebtn.Name = "MountainStoragebtn"
MountainStoragebtn.Parent = Core
MountainStoragebtn.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
MountainStoragebtn.BorderColor3 = Color3.new(0, 0, 0)
MountainStoragebtn.Position = UDim2.new(0, 135, 0, 40)
MountainStoragebtn.Size = UDim2.new(0, 125, 0, 30)
MountainStoragebtn.Font = Enum.Font.Code
MountainStoragebtn.FontSize = Enum.FontSize.Size14
MountainStoragebtn.Text = "Mountain Storage"
MountainStoragebtn.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
MountainStoragebtn.TextSize = 14

YellowFrontlineBunkerbtn.Name = "YellowFrontlineBunkerbtn"
YellowFrontlineBunkerbtn.Parent = Core
YellowFrontlineBunkerbtn.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
YellowFrontlineBunkerbtn.BorderColor3 = Color3.new(0, 0, 0)
YellowFrontlineBunkerbtn.Position = UDim2.new(0, 265, 0, 40)
YellowFrontlineBunkerbtn.Size = UDim2.new(0, 125, 0, 30)
YellowFrontlineBunkerbtn.Font = Enum.Font.Code
YellowFrontlineBunkerbtn.FontSize = Enum.FontSize.Size10
YellowFrontlineBunkerbtn.Text = "Yellow Frontline Bunker"
YellowFrontlineBunkerbtn.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
YellowFrontlineBunkerbtn.TextSize = 10

FortifiedIslandbtn.Name = "FortifiedIslandbtn"
FortifiedIslandbtn.Parent = Core
FortifiedIslandbtn.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
FortifiedIslandbtn.BorderColor3 = Color3.new(0, 0, 0)
FortifiedIslandbtn.Position = UDim2.new(0, 135, 0, 75)
FortifiedIslandbtn.Size = UDim2.new(0, 125, 0, 30)
FortifiedIslandbtn.Font = Enum.Font.Code
FortifiedIslandbtn.FontSize = Enum.FontSize.Size14
FortifiedIslandbtn.Text = "Fortified Island"
FortifiedIslandbtn.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
FortifiedIslandbtn.TextSize = 14

GreenUndergroundbtn.Name = "GreenUndergroundbtn"
GreenUndergroundbtn.Parent = Core
GreenUndergroundbtn.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
GreenUndergroundbtn.BorderColor3 = Color3.new(0, 0, 0)
GreenUndergroundbtn.Position = UDim2.new(0, 5, 0, 75)
GreenUndergroundbtn.Size = UDim2.new(0, 125, 0, 30)
GreenUndergroundbtn.Font = Enum.Font.Code
GreenUndergroundbtn.FontSize = Enum.FontSize.Size14
GreenUndergroundbtn.Text = "Green Underground"
GreenUndergroundbtn.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
GreenUndergroundbtn.TextSize = 14

GreenFrontlineBunkerbtn.Name = "GreenFrontlineBunkerbtn"
GreenFrontlineBunkerbtn.Parent = Core
GreenFrontlineBunkerbtn.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
GreenFrontlineBunkerbtn.BorderColor3 = Color3.new(0, 0, 0)
GreenFrontlineBunkerbtn.Position = UDim2.new(0, 5, 0, 40)
GreenFrontlineBunkerbtn.Size = UDim2.new(0, 125, 0, 30)
GreenFrontlineBunkerbtn.Font = Enum.Font.Code
GreenFrontlineBunkerbtn.FontSize = Enum.FontSize.Size10
GreenFrontlineBunkerbtn.Text = "Green Frontline Bunker"
GreenFrontlineBunkerbtn.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
GreenFrontlineBunkerbtn.TextSize = 10

YellowUndergroundbtn.Name = "YellowUndergroundbtn"
YellowUndergroundbtn.Parent = Core
YellowUndergroundbtn.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
YellowUndergroundbtn.BorderColor3 = Color3.new(0, 0, 0)
YellowUndergroundbtn.Position = UDim2.new(0, 265, 0, 75)
YellowUndergroundbtn.Size = UDim2.new(0, 125, 0, 30)
YellowUndergroundbtn.Font = Enum.Font.Code
YellowUndergroundbtn.FontSize = Enum.FontSize.Size12
YellowUndergroundbtn.Text = "Yellow Underground"
YellowUndergroundbtn.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
YellowUndergroundbtn.TextSize = 12

PlayerSelect.Name = "PlayerSelect"
PlayerSelect.Parent = Core
PlayerSelect.Active = false
PlayerSelect.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
PlayerSelect.BorderColor3 = Color3.new(0, 0, 0)
PlayerSelect.Position = UDim2.new(0, 5, 0, 110)
PlayerSelect.Size = UDim2.new(0, 256, 0, 30)
PlayerSelect.Font = Enum.Font.Code
PlayerSelect.FontSize = Enum.FontSize.Size14
PlayerSelect.Text = "Enter Player Name"
PlayerSelect.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
PlayerSelect.TextSize = 14

TeleportToPlayer.Name = "TeleportToPlayer"
TeleportToPlayer.Parent = Core
TeleportToPlayer.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
TeleportToPlayer.BorderColor3 = Color3.new(0, 0, 0)
TeleportToPlayer.Position = UDim2.new(0, 265, 0, 110)
TeleportToPlayer.Size = UDim2.new(0, 125, 0, 30)
TeleportToPlayer.Font = Enum.Font.Code
TeleportToPlayer.FontSize = Enum.FontSize.Size12
TeleportToPlayer.Text = "Teleport To Player"
TeleportToPlayer.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
TeleportToPlayer.TextSize = 12

Credits.Name = "Credits"
Credits.Parent = Core
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.BackgroundTransparency = 1
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 100, 0, 215)
Credits.Size = UDim2.new(0, 200, 0, 50)
Credits.Font = Enum.Font.Code
Credits.FontSize = Enum.FontSize.Size10
Credits.Text = "Credits to BlackLotus for helping me out, aswell as ma44, zFILMZ, and K1LL0X."
Credits.TextSize = 10

Discord.Name = "Discord"
Discord.Parent = Core
Discord.BackgroundColor3 = Color3.new(1, 1, 1)
Discord.BackgroundTransparency = 1
Discord.BorderSizePixel = 0
Discord.Position = UDim2.new(0, 100, 0, 200)
Discord.Size = UDim2.new(0, 200, 0, 50)
Discord.Font = Enum.Font.Code
Discord.FontSize = Enum.FontSize.Size14
Discord.Text = "My Discord: Skeletal#7065"
Discord.TextSize = 14

Bighead.Name = "Bighead"
Bighead.Parent = Core
Bighead.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
Bighead.BorderColor3 = Color3.new(0, 0, 0)
Bighead.Position = UDim2.new(0, 135, 0, 180)
Bighead.Size = UDim2.new(0, 125, 0, 30)
Bighead.Font = Enum.Font.Code
Bighead.FontSize = Enum.FontSize.Size24
Bighead.Text = "Bighead"
Bighead.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Bighead.TextSize = 24
Bighead.TextWrapped = true

ESP.Name = "ESP"
ESP.Parent = Core
ESP.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
ESP.BorderColor3 = Color3.new(0, 0, 0)
ESP.Position = UDim2.new(0, 265, 0, 180)
ESP.Size = UDim2.new(0, 125, 0, 30)
ESP.Font = Enum.Font.Code
ESP.FontSize = Enum.FontSize.Size24
ESP.Text = "ESP"
ESP.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
ESP.TextSize = 24
ESP.TextWrapped = true

MessageSelect.Name = "MessageSelect"
MessageSelect.Parent = Core
MessageSelect.Active = false
MessageSelect.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
MessageSelect.BorderColor3 = Color3.new(0, 0, 0)
MessageSelect.Position = UDim2.new(0, 5, 0, 145)
MessageSelect.Size = UDim2.new(0, 256, 0, 30)
MessageSelect.Font = Enum.Font.Code
MessageSelect.FontSize = Enum.FontSize.Size14
MessageSelect.Text = "Enter Message"
MessageSelect.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
MessageSelect.TextSize = 14

Message.Name = "Message"
Message.Parent = Core
Message.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
Message.BorderColor3 = Color3.new(0, 0, 0)
Message.Position = UDim2.new(0, 265, 0, 145)
Message.Size = UDim2.new(0, 125, 0, 30)
Message.Font = Enum.Font.Code
Message.FontSize = Enum.FontSize.Size12
Message.Text = "Message"
Message.TextColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Message.TextSize = 12

Minimize.Name = "Minimize"
Minimize.Parent = TopBar
Minimize.BackgroundColor3 = Color3.new(0.745098, 0, 0.0117647)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0, 375, 0, 0)
Minimize.Size = UDim2.new(0, 25, 1, 0)
Minimize.Font = Enum.Font.SourceSans
Minimize.FontSize = Enum.FontSize.Size18
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(1, 1, 1)
Minimize.TextSize = 18

local YellowBase = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1019.84, 260.938, 38.3488)
end
YellowBasebtn.MouseButton1Down:connect(YellowBase)

local GreenBase = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1019.99, 260.824, 7.91543)
end
GreenBasebtn.MouseButton1Down:connect(GreenBase)

local RiverPass = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.43478, 214.428, -67.4713)
end
RiverPassbtn.MouseButton1Down:connect(RiverPass)

local MountainStorage = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4.76334, 191.438, 421.142)
end
MountainStoragebtn.MouseButton1Down:connect(MountainStorage)

local YellowFrontlineBunker = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(668.267, 221.844, 104.438)
end
YellowFrontlineBunkerbtn.MouseButton1Down:connect(YellowFrontlineBunker)

local FortifiedIsland = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.386523, 241.438, -1368.63)
end
FortifiedIslandbtn.MouseButton1Down:connect(FortifiedIsland)

local GreenUnderground = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1038.49, 193.232, 8.87813)
end
GreenUndergroundbtn.MouseButton1Down:connect(GreenUnderground)

local GreenFrontlineBunker = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-625.969,  222.242, 92.3934)
end
GreenFrontlineBunkerbtn.MouseButton1Down:connect(GreenFrontlineBunker)

local YellowUnderground = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1039.24, 193.278, 38.5407)
end
YellowUndergroundbtn.MouseButton1Down:connect(YellowUnderground)

local TeleportToPlayer1 = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace[PlayerSelect.Text].Torso.Position)
end
TeleportToPlayer.MouseButton1Down:connect(TeleportToPlayer1)

local ESP1 = function()
   function Create(base, team)
   local bb = Instance.new('BillboardGui', game.CoreGui)
   bb.Adornee = base
   bb.ExtentsOffset = Vector3.new(0,1,0)
   bb.AlwaysOnTop = true
   bb.Size = UDim2.new(0,5,0,5)
   bb.StudsOffset = Vector3.new(0,1,0)
   bb.Name = 'tracker'
   local frame = Instance.new('Frame',bb)
   frame.ZIndex = 10
   frame.BackgroundTransparency = 0.3
   frame.Size = UDim2.new(1,0,1,0)
   local txtlbl = Instance.new('TextLabel',bb)
   txtlbl.ZIndex = 10
   txtlbl.BackgroundTransparency = 1
   txtlbl.Position = UDim2.new(0,0,0,-35)
   txtlbl.Size = UDim2.new(1,0,10,0)
   txtlbl.Font = 'ArialBold'
   txtlbl.FontSize = 'Size12'
   txtlbl.Text = base.Parent.Name:upper()
   txtlbl.TextStrokeTransparency = 0.5
   if team then
       txtlbl.TextColor3 = Color3.new(0,1,1)
       frame.BackgroundColor3 = Color3.new(0,1,1)
   else
       txtlbl.TextColor3 = Color3.new(1,0,0)
       frame.BackgroundColor3 = Color3.new(1,0,0)
   end
end

function Clear()
   for _,v in pairs(game.CoreGui:children()) do
       if v.Name == 'tracker' and v:isA('BillboardGui') then
           v:Destroy()
       end
   end
end

function Find()
   Clear()
   track = true
   spawn(function()
       while wait(1) do
           if track then
               Clear()
               for _,v in pairs(game.Players:players()) do
                   if v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                       if v.Character and v.Character.Head then
                           Create(v.Character.Head, false)
                       end
                   end
               end
           end
           wait(1)
       end
   end)
end

Find()
end
ESP.MouseButton1Down:connect(ESP1)

local Bighead1 = function()
--Run Second
_G.HeadSize = 50
_G.HeadOffset = 25
_G.FEnabled = true
game:service'RunService'.Stepped:connect(function()
    if _G.FEnabled then
        for i,v in pairs(game:service'Players':GetPlayers()) do
            if v.TeamColor ~= game:service'Players'.LocalPlayer.TeamColor then
            --if v.Name ~= game:service'Players'.LocalPlayer.Name then
                pcall(function()
                    pcall(function()v.Character.Head.Mesh:Destroy() end)
                    v.Character.Head.CanCollide = false
                    v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                    v.Character.Head.CFrame = v.Character.Torso.CFrame * CFrame.new(0,_G.HeadOffset,0)
                end)
            --end
            end
        end
    end
end)

end
Bighead.MouseButton1Down:connect(Bighead1)

local Message1 = function()
    GameMessageSet = MessageSelect.Text
    game.ReplicatedStorage.EventHandlers.RequestGameMessage:FireServer(MessageSelect.Text)
end

Message.MouseButton1Down:connect(Message1)