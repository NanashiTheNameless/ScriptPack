wait(0)
-- Variables

local plr = game.Players.LocalPlayer
pg = plr.PlayerGui
local tmmm = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AM = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Credits4all = Instance.new("TextButton")
local Credits4you = Instance.new("TextButton")
local MVPDoor = Instance.new("TextButton")
local PlayerRevealer = Instance.new("TextButton")
local RipCreds = Instance.new("TextButton")
local RipShop = Instance.new("TextButton")
local FE = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

-- Design

tmmm.Name = "tmmm"
tmmm.Parent = pg

Frame.Parent = tmmm
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.25
Frame.Position = UDim2.new(0.25, 0, 1, 0)
Frame.Size = UDim2.new(0, 400, 0.800000012, 100)

AM.Name = "AM"
AM.Parent = Frame
AM.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
AM.Position = UDim2.new(0, 100, 0, 50)
AM.Size = UDim2.new(0, 200, 0, 50)
AM.Font = Enum.Font.SourceSans
AM.FontSize = Enum.FontSize.Size14
AM.Text = "Always Murderer"
AM.TextColor3 = Color3.new(0.0901961, 0.101961, 1)
AM.TextScaled = true
AM.TextWrapped = true

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.new(1, 0.0784314, 0.878431)
Title.Position = UDim2.new(0, 0, 0, 10)
Title.Size = UDim2.new(0, 400, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.FontSize = Enum.FontSize.Size14
Title.Text = "TM Mod Menu by: Sigma"
Title.TextColor3 = Color3.new(0, 0, 0)
Title.TextScaled = true
Title.TextWrapped = true

Credits4all.Name = "Credits4all"
Credits4all.Parent = Frame
Credits4all.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
Credits4all.Position = UDim2.new(0, 100, 0, 110)
Credits4all.Size = UDim2.new(0, 200, 0, 50)
Credits4all.Font = Enum.Font.SourceSans
Credits4all.FontSize = Enum.FontSize.Size14
Credits4all.Text = "Credits for all players(20k)"
Credits4all.TextColor3 = Color3.new(0.0901961, 0.101961, 1)
Credits4all.TextScaled = true
Credits4all.TextWrapped = true

Credits4you.Name = "Credits4you"
Credits4you.Parent = Frame
Credits4you.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
Credits4you.Position = UDim2.new(0, 100, 0, 170)
Credits4you.Size = UDim2.new(0, 200, 0, 50)
Credits4you.Font = Enum.Font.SourceSans
Credits4you.FontSize = Enum.FontSize.Size14
Credits4you.Text = "Credits for you only(20k)"
Credits4you.TextColor3 = Color3.new(0.0901961, 0.101961, 1)
Credits4you.TextScaled = true
Credits4you.TextWrapped = true

MVPDoor.Name = "MVPDoor"
MVPDoor.Parent = Frame
MVPDoor.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
MVPDoor.Position = UDim2.new(0, 100, 0, 230)
MVPDoor.Size = UDim2.new(0, 200, 0, 50)
MVPDoor.Font = Enum.Font.SourceSans
MVPDoor.FontSize = Enum.FontSize.Size14
MVPDoor.Text = "Remove MVP Door"
MVPDoor.TextColor3 = Color3.new(0.0901961, 0.101961, 1)
MVPDoor.TextScaled = true
MVPDoor.TextWrapped = true

PlayerRevealer.Name = "PlayerRevealer"
PlayerRevealer.Parent = Frame
PlayerRevealer.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
PlayerRevealer.Position = UDim2.new(0, 100, 0, 290)
PlayerRevealer.Size = UDim2.new(0, 200, 0, 50)
PlayerRevealer.Font = Enum.Font.SourceSans
PlayerRevealer.FontSize = Enum.FontSize.Size14
PlayerRevealer.Text = "Player Revealer"
PlayerRevealer.TextColor3 = Color3.new(0.0901961, 0.101961, 1)
PlayerRevealer.TextScaled = true
PlayerRevealer.TextWrapped = true

RipCreds.Name = "RipCreds"
RipCreds.Parent = Frame
RipCreds.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
RipCreds.Position = UDim2.new(0, 100, 0, 350)
RipCreds.Size = UDim2.new(0, 200, 0, 50)
RipCreds.Font = Enum.Font.SourceSans
RipCreds.FontSize = Enum.FontSize.Size14
RipCreds.Text = "Remove Credits(REMOVES ALL ON SERVERS CREDIT INCLUDING YOU)"
RipCreds.TextColor3 = Color3.new(0.0901961, 0.101961, 1)
RipCreds.TextScaled = true
RipCreds.TextWrapped = true

RipShop.Name = "RipShop"
RipShop.Parent = Frame
RipShop.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
RipShop.Position = UDim2.new(0, 100, 0, 410)
RipShop.Size = UDim2.new(0, 200, 0, 50)
RipShop.Font = Enum.Font.SourceSans
RipShop.FontSize = Enum.FontSize.Size14
RipShop.Text = "Unlock everything   (you only)"
RipShop.TextColor3 = Color3.new(0.0901961, 0.101961, 1)
RipShop.TextScaled = true
RipShop.TextWrapped = true

FE.Name = "FE"
FE.Parent = tmmm
FE.BackgroundColor3 = Color3.new(1, 1, 1)
FE.BackgroundTransparency = 1
FE.Position = UDim2.new(0, 0, 0.850000024, 0)
FE.Size = UDim2.new(0, 100, 0, 100)

TextLabel.Parent = FE
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0.25, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Filtering UNDEFINED"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextWrapped = true

TextButton.Parent = tmmm
TextButton.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
TextButton.Position = UDim2.new(0, 0, 0.75, 0)
TextButton.Size = UDim2.new(0, 50, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.FontSize = Enum.FontSize.Size14
TextButton.Text = "OPEN"
TextButton.TextColor3 = Color3.new(0.0901961, 0.101961, 1)
TextButton.TextScaled = true
TextButton.TextWrapped = true

-- Main
-------------------------------------------------------------------------
if game.Workspace.FilteringEnabled == true then
TextLabel.TextColor3 = Color3.new(255,0,0)
TextLabel.Text = ("Filtering Enabled")
else
TextLabel.TextColor3 = Color3.new(0,255,0)
TextLabel.Text = ("Filtering Disabled")
end
-------------------------------------------------------------------------
TextButton.MouseButton1Down:connect(function()
if TextButton.Text == "OPEN" then
Frame:TweenPosition(UDim2.new(0.25,0,0.01,0))
wait(1,65)
TextButton.Text = "CLOSE"
elseif TextButton.Text == "CLOSE" then
Frame:TweenPosition(UDim2.new(0.25, 0, 1, 0))
wait(1,65)	
TextButton.Text = "OPEN"
end
end)
-------------------------------------------------------------------------
AM.MouseButton1Down:connect(function()
while true do
wait(.003)
plr.Chance.Value = 99999
end
end)
-------------------------------------------------------------------------
Credits4all.MouseButton1Down:connect(function()
for _,v in pairs(game.Players:GetChildren()) do
plr=v
plr.DATA.Credits.Value=plr.DATA.Credits.Value+20000
plr.DATA.RealCredits.Value = plr.DATA.Credits.Value + 950000
end
end)
-------------------------------------------------------------------------
Credits4you.MouseButton1Down:connect(function()
plr.DATA.Credits.Value=plr.DATA.Credits.Value+20000
plr.DATA.RealCredits.Value = plr.DATA.Credits.Value + 950000
end)
-------------------------------------------------------------------------
MVPDoor.MouseButton1Down:connect(function()
local Door = game.Workspace.Lobby.MVPDoor
Door.TouchInterest:Remove()
local a=Door.SurfaceGui.Frame
a.bt:Remove''
a.TextLabel.Text = 'Door unlocked by '..plr.Name
a.TextLabel.TextLabel.Text = 'Door unlocked by '..plr.Name
for i,v in pairs(a.TextLabel.TextLabel:children'') do
v.Text = 'MVP Door Unlocked'
end
end)
-------------------------------------------------------------------------
PlayerRevealer.MouseButton1Down:connect(function()
while wait(0.1) do
	local dir = game.CoreGui.RobloxGui.PlayerListContainer.ScrollList
    for i,v in pairs(dir:GetChildren()) do
        if game.Workspace:findFirstChild(v.Name) then
            local role = game.Players[v.Name].Character:findFirstChild("Role")
            if role then
                if role.Value == "Sheriff" then
                    v.BGFrame.PlayerName.TextColor3 = Color3.new(1, 170/255, 0)
                elseif role.Value == "Murderer" then
                    v.BGFrame.PlayerName.TextColor3 = Color3.new(1, 0, 0)
                else
                    v.BGFrame.PlayerName.TextColor3 = Color3.new(0, 1, 0)
                end
            end
        end
    end
    for i,v in pairs(game.Players:GetChildren()) do
        v.CharacterAdded:connect(function()
            v.Character.Role.Value = "Innocent"
        end)
    end
end
end)
-------------------------------------------------------------------------
RipCreds.MouseButton1Down:connect(function()
for _,v in pairs(game.Players:GetChildren()) do
local d=v.DATA.Credits
local d2=v.DATA.RealCredits
d.RobloxLocked = true
d2.RobloxLocked = true
d.Value = 0
d2.Value = 0
end
end)
-------------------------------------------------------------------------
RipShop.MouseButton1Down:connect(function()
local TwistedMurderer = {}
for _, v in pairs(game.ReplicatedStorage.Shop:GetChildren()) do
for _, t in pairs(v:GetChildren()) do
t:Clone().Parent = game.Players.LocalPlayer.DATA.Backpack
end
end
end)
--------------------------------------------------------------------------