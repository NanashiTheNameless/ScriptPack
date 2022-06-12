-- Objects
 
local GuiService = Instance.new("ScreenGui")
local Menu = Instance.new("TextButton")
local Chat = Instance.new("Frame")
local MenuBG = Instance.new("ImageLabel")
local Close = Instance.new("TextButton")
local SetBounty = Instance.new("TextButton")
local Namee = Instance.new("TextBox")
local DeleteEnvironment = Instance.new("TextButton")
local FullEXP = Instance.new("TextButton")
local InfiniteAurem = Instance.new("TextButton")
local InfiniteLamina = Instance.new("TextButton")
local Namee_2 = Instance.new("TextBox")
local Legendary = Instance.new("TextButton")
local Namee_3 = Instance.new("TextBox")
local Level = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Namee_4 = Instance.new("TextBox")
local Nowipe = Instance.new("TextButton")
local Regenerate = Instance.new("TextButton")
local SetMagic = Instance.new("TextButton")
local Namee_5 = Instance.new("TextBox")
local SetSecondMagic = Instance.new("TextButton")
local Namee_6 = Instance.new("TextBox")
local SkillPoints = Instance.new("TextButton")
local Namee_7 = Instance.new("TextBox")
local AnimationPack = Instance.new("TextButton")
local Namee_8 = Instance.new("TextBox")
local Namee_9 = Instance.new("TextBox")
 
-- Properties
 
GuiService.Name = "Gui Service"
GuiService.Parent = game.CoreGui
 
Menu.Name = "Menu"
Menu.Parent = GuiService
Menu.BackgroundColor3 = Color3.new(0, 0.188235, 0.27451)
Menu.BackgroundTransparency = 0.5
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0, 323, 0, 0)
Menu.Size = UDim2.new(0, 60, 0, 20)
Menu.Font = Enum.Font.SourceSansLight
Menu.FontSize = Enum.FontSize.Size18
Menu.Text = "Menu"
Menu.TextColor3 = Color3.new(1, 1, 1)
Open = false
 
Chat.Name = "Chat"
Chat.Parent = GuiService
Chat.Active = true
Chat.BackgroundColor3 = Color3.new(1, 1, 1)
Chat.BackgroundTransparency = 1
Chat.Draggable = true
Chat.Position = UDim2.new(0.28, 000, 0.55, 1000)
Chat.Selectable = true
Chat.Size = UDim2.new(0, 537, 0, 56)
Chat.Visible = false
 
MenuBG.Name = "MenuBG"
MenuBG.Parent = Chat
MenuBG.BackgroundColor3 = Color3.new(1, 1, 1)
MenuBG.BackgroundTransparency = 1
MenuBG.Size = UDim2.new(0, 593, 0, 361)
MenuBG.Image = "rbxassetid://491261712"
MenuBG.ImageTransparency = 0.10000000149012
 
Close.Name = "Close"
Close.Parent = Chat
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0, 537, 0, 28)
Close.Size = UDim2.new(0, 40, 0, 28)
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size14
Close.TextTransparency = 1
Close.MouseButton1Down:connect(function(open)
        Chat:TweenPosition(UDim2.new(0.28, 0, 1.0, 1000), "In", "Sine",1,true)
    Open = false
end)
 
Menu.MouseButton1Down:connect(function(open)
    if Open == false then
        Chat.Visible = true
        Chat:TweenPosition(UDim2.new(0.28, 0, 0.55, -250), "Out", "Back",1.5,true)
        Open = true
    elseif Open == true then
        Chat:TweenPosition(UDim2.new(0.28, 0, 1.0, 1000), "In", "Sine",1,true)
        Open = false
    end
end)
 
SetBounty.Name = "Set Bounty"
SetBounty.Parent = Chat
SetBounty.BackgroundColor3 = Color3.new(0, 1, 0.968628)
SetBounty.BackgroundTransparency = 0.60000002384186
SetBounty.BorderSizePixel = 0
SetBounty.Position = UDim2.new(0, 180, 0, 75)
SetBounty.Size = UDim2.new(0, 70, 0, 53)
SetBounty.Font = Enum.Font.SourceSansLight
SetBounty.FontSize = Enum.FontSize.Size18
SetBounty.Text = "Bounty"
SetBounty.TextColor3 = Color3.new(1, 1, 1)
SetBounty.TextStrokeColor3 = Color3.new(1, 1, 1)
 
DeleteEnvironment.Name = "Delete Environment"
DeleteEnvironment.Parent = Chat
DeleteEnvironment.BackgroundColor3 = Color3.new(0, 1, 0.968628)
DeleteEnvironment.BackgroundTransparency = 0.60000002384186
DeleteEnvironment.BorderSizePixel = 0
DeleteEnvironment.Position = UDim2.new(0, 20, 0, 75)
DeleteEnvironment.Size = UDim2.new(0, 70, 0, 70)
DeleteEnvironment.Font = Enum.Font.SourceSansLight
DeleteEnvironment.FontSize = Enum.FontSize.Size12
DeleteEnvironment.Text = "No Environment"
DeleteEnvironment.TextColor3 = Color3.new(1, 1, 1)
DeleteEnvironment.TextStrokeColor3 = Color3.new(1, 1, 1)
DeleteEnvironment.MouseButton1Down:connect(function(open)
    game.Workspace.Environment:Remove()
end)
 
FullEXP.Name = "Full EXP"
FullEXP.Parent = Chat
FullEXP.BackgroundColor3 = Color3.new(0, 1, 0.968628)
FullEXP.BackgroundTransparency = 0.60000002384186
FullEXP.BorderSizePixel = 0
FullEXP.Position = UDim2.new(0, 100, 0, 75)
FullEXP.Size = UDim2.new(0, 70, 0, 70)
FullEXP.Font = Enum.Font.SourceSansLight
FullEXP.FontSize = Enum.FontSize.Size14
FullEXP.Text = "Full EXP"
FullEXP.TextColor3 = Color3.new(1, 1, 1)
FullEXP.TextStrokeColor3 = Color3.new(1, 1, 1)
FullEXP.MouseButton1Down:connect(function(open)
    while true do
    wait(5)
    game.Workspace.Stats.SetStat:FireServer("EXP", 99999, "math.random() is the best thing ever")
end
end)
 
 
InfiniteAurem.Name = "Infinite Aurem"
InfiniteAurem.Parent = Chat
InfiniteAurem.BackgroundColor3 = Color3.new(0, 1, 0.968628)
InfiniteAurem.BackgroundTransparency = 0.60000002384186
InfiniteAurem.BorderSizePixel = 0
InfiniteAurem.Position = UDim2.new(0, 340, 0, 75)
InfiniteAurem.Size = UDim2.new(0, 70, 0, 70)
InfiniteAurem.Font = Enum.Font.SourceSansLight
InfiniteAurem.FontSize = Enum.FontSize.Size18
InfiniteAurem.Text = "Aurem"
InfiniteAurem.TextColor3 = Color3.new(1, 1, 1)
InfiniteAurem.TextStrokeColor3 = Color3.new(1, 1, 1)
InfiniteAurem.MouseButton1Down:connect(function(open)
    while true do
    wait(0.1)
    game.Workspace.Stats.SetStat:FireServer("Aurem", 300, "math.random() is the best thing ever")
end
end)
 
 
InfiniteLamina.Name = "Infinite Lamina"
InfiniteLamina.Parent = Chat
InfiniteLamina.BackgroundColor3 = Color3.new(0, 1, 0.968628)
InfiniteLamina.BackgroundTransparency = 0.60000002384186
InfiniteLamina.BorderSizePixel = 0
InfiniteLamina.Position = UDim2.new(0, 180, 0, 155)
InfiniteLamina.Size = UDim2.new(0, 70, 0, 53)
InfiniteLamina.Font = Enum.Font.SourceSansLight
InfiniteLamina.FontSize = Enum.FontSize.Size14
InfiniteLamina.Text = "Lamina"
InfiniteLamina.TextColor3 = Color3.new(1, 1, 1)
InfiniteLamina.TextStrokeColor3 = Color3.new(1, 1, 1)
 
Legendary.Name = "Legendary"
Legendary.Parent = Chat
Legendary.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Legendary.BackgroundTransparency = 0.60000002384186
Legendary.BorderSizePixel = 0
Legendary.Position = UDim2.new(0, 260, 0, 75)
Legendary.Size = UDim2.new(0, 70, 0, 53)
Legendary.Font = Enum.Font.SourceSansLight
Legendary.FontSize = Enum.FontSize.Size14
Legendary.Text = "Reputation"
Legendary.TextColor3 = Color3.new(1, 1, 1)
Legendary.TextStrokeColor3 = Color3.new(1, 1, 1)
 
Level.Name = "Level"
Level.Parent = Chat
Level.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Level.BackgroundTransparency = 0.60000002384186
Level.BorderSizePixel = 0
Level.Position = UDim2.new(0, 420, 0, 75)
Level.Size = UDim2.new(0, 70, 0, 53)
Level.Font = Enum.Font.SourceSansLight
Level.FontSize = Enum.FontSize.Size18
Level.Text = "Level"
Level.TextColor3 = Color3.new(1, 1, 1)
Level.TextStrokeColor3 = Color3.new(1, 1, 1)
 
TextLabel.Parent = Level
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0, 29)
TextLabel.Size = UDim2.new(0, 70, 0, 24)
TextLabel.ZIndex = 10
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Detectable"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
 
Nowipe.Name = "Nowipe"
Nowipe.Parent = Chat
Nowipe.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Nowipe.BackgroundTransparency = 0.60000002384186
Nowipe.BorderSizePixel = 0
Nowipe.Position = UDim2.new(0, 100, 0, 155)
Nowipe.Size = UDim2.new(0, 70, 0, 70)
Nowipe.Font = Enum.Font.SourceSansLight
Nowipe.FontSize = Enum.FontSize.Size18
Nowipe.Text = "No Wipe"
Nowipe.TextColor3 = Color3.new(1, 1, 1)
Nowipe.TextStrokeColor3 = Color3.new(1, 1, 1)
Nowipe.MouseButton1Down:connect(function(open)
    game.Workspace.Stats.WipeInventory:Remove()
    Instance.new("RemoteEvent", game.Workspace.Stats)
    game.Workspace.Stats.RemoteEvent.Name = "WipeInventory"
end)
 
Regenerate.Name = "Regenerate"
Regenerate.Parent = Chat
Regenerate.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Regenerate.BackgroundTransparency = 0.60000002384186
Regenerate.BorderSizePixel = 0
Regenerate.Position = UDim2.new(0, 20, 0, 155)
Regenerate.Size = UDim2.new(0, 70, 0, 70)
Regenerate.Font = Enum.Font.SourceSansLight
Regenerate.FontSize = Enum.FontSize.Size18
Regenerate.Text = "Regenerate"
Regenerate.TextColor3 = Color3.new(1, 1, 1)
Regenerate.TextStrokeColor3 = Color3.new(1, 1, 1)
Regenerate.MouseButton1Down:connect(function(open)
    while true do
    wait(1)
    game.Players.LocalPlayer.bin.MagicEnergy.Value = 99999
    game.Players.LocalPlayer.bin.Stamina.Value = 99999
    end
end)
 
SetMagic.Name = "Set Magic"
SetMagic.Parent = Chat
SetMagic.BackgroundColor3 = Color3.new(0, 1, 0.968628)
SetMagic.BackgroundTransparency = 0.60000002384186
SetMagic.BorderSizePixel = 0
SetMagic.Position = UDim2.new(0, 500, 0, 75)
SetMagic.Size = UDim2.new(0, 70, 0, 53)
SetMagic.Font = Enum.Font.SourceSansLight
SetMagic.FontSize = Enum.FontSize.Size18
SetMagic.Text = "First Magic"
SetMagic.TextColor3 = Color3.new(1, 1, 1)
SetMagic.TextStrokeColor3 = Color3.new(1, 1, 1)
 
SetSecondMagic.Name = "Set Second Magic"
SetSecondMagic.Parent = Chat
SetSecondMagic.BackgroundColor3 = Color3.new(0, 1, 0.968628)
SetSecondMagic.BackgroundTransparency = 0.60000002384186
SetSecondMagic.BorderSizePixel = 0
SetSecondMagic.Position = UDim2.new(0, 260, 0, 155)
SetSecondMagic.Size = UDim2.new(0, 70, 0, 53)
SetSecondMagic.Font = Enum.Font.SourceSansLight
SetSecondMagic.FontSize = Enum.FontSize.Size14
SetSecondMagic.Text = "Second Magic"
SetSecondMagic.TextColor3 = Color3.new(1, 1, 1)
SetSecondMagic.TextStrokeColor3 = Color3.new(1, 1, 1)
 
SkillPoints.Name = "Skill Points"
SkillPoints.Parent = Chat
SkillPoints.BackgroundColor3 = Color3.new(0, 1, 0.968628)
SkillPoints.BackgroundTransparency = 0.60000002384186
SkillPoints.BorderSizePixel = 0
SkillPoints.Position = UDim2.new(0, 340, 0, 155)
SkillPoints.Size = UDim2.new(0, 70, 0, 53)
SkillPoints.Font = Enum.Font.SourceSansLight
SkillPoints.FontSize = Enum.FontSize.Size18
SkillPoints.Text = "Skill Points"
SkillPoints.TextColor3 = Color3.new(1, 1, 1)
SkillPoints.TextStrokeColor3 = Color3.new(1, 1, 1)
 
AnimationPack.Name = "AnimationPack"
AnimationPack.Parent = Chat
AnimationPack.BackgroundColor3 = Color3.new(0, 1, 0.968628)
AnimationPack.BackgroundTransparency = 0.60000002384186
AnimationPack.BorderSizePixel = 0
AnimationPack.Position = UDim2.new(0, 420, 0, 155)
AnimationPack.Size = UDim2.new(0, 70, 0, 53)
AnimationPack.Font = Enum.Font.SourceSansLight
AnimationPack.FontSize = Enum.FontSize.Size12
AnimationPack.Text = "Animation Pack"
AnimationPack.TextColor3 = Color3.new(1, 1, 1)
AnimationPack.TextStrokeColor3 = Color3.new(1, 1, 1)
 
Namee.Name = "Namee"
Namee.Parent = SetBounty
Namee.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Namee.BackgroundTransparency = 0.60000002384186
Namee.Position = UDim2.new(0, 0, 0, 55)
Namee.Size = UDim2.new(0, 70, 0, 15)
Namee.Font = Enum.Font.SourceSansLight
Namee.FontSize = Enum.FontSize.Size14
Namee.Text = "[Amount]"
Namee.TextColor3 = Color3.new(1, 1, 1)
BountyA = Namee.Text
SetBounty.MouseButton1Down:connect(function(open)
    BountyA = Namee.Text
    game.Workspace.Stats.SetStat:FireServer("Bounty", tonumber(BountyA) + 0, "math.random() is the best thing ever")
end)
 
Namee_2.Name = "Namee"
Namee_2.Parent = InfiniteLamina
Namee_2.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Namee_2.BackgroundTransparency = 0.60000002384186
Namee_2.BorderSizePixel = 0
Namee_2.Position = UDim2.new(0, 0, 0, 55)
Namee_2.Size = UDim2.new(0, 70, 0, 15)
Namee_2.Font = Enum.Font.SourceSansLight
Namee_2.FontSize = Enum.FontSize.Size14
Namee_2.Text = "[Amount]"
Namee_2.TextColor3 = Color3.new(1, 1, 1)
LaminaA = Namee_2.Text
InfiniteLamina.MouseButton1Down:connect(function(open)
    LaminaA = Namee_2.Text
    game.Workspace.Stats.SetStat:FireServer("Lamina", tonumber(LaminaA) + 0, "math.random() is the best thing ever")
end)
 
Namee_3.Name = "Namee"
Namee_3.Parent = Legendary
Namee_3.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Namee_3.BackgroundTransparency = 0.60000002384186
Namee_3.BorderSizePixel = 0
Namee_3.Position = UDim2.new(0, 0, 0, 55)
Namee_3.Size = UDim2.new(0, 70, 0, 15)
Namee_3.Font = Enum.Font.SourceSansLight
Namee_3.FontSize = Enum.FontSize.Size14
Namee_3.Text = "[Amount]"
Namee_3.TextColor3 = Color3.new(1, 1, 1)
LegendaryA = Namee_3.Text
Legendary.MouseButton1Down:connect(function(open)
    LegendaryA = Namee_3.Text
    game.Workspace.Stats.SetStat:FireServer("Reputation", tonumber(LegendaryA) + 0, "math.random() is the best thing ever")
end)
 
 
Namee_4.Name = "Namee"
Namee_4.Parent = Level
Namee_4.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Namee_4.BackgroundTransparency = 0.60000002384186
Namee_4.BorderSizePixel = 0
Namee_4.Position = UDim2.new(0, 0, 0, 55)
Namee_4.Size = UDim2.new(0, 70, 0, 15)
Namee_4.Font = Enum.Font.SourceSansLight
Namee_4.FontSize = Enum.FontSize.Size14
Namee_4.Text = "[Amount]"
Namee_4.TextColor3 = Color3.new(1, 1, 1)
LevelA = Namee_4.Text
Level.MouseButton1Down:connect(function(open)
    LevelA = Namee_4.Text
    game.Workspace.Stats.SetStat:FireServer("Level", tonumber(LevelA) + 0, "math.random() is the best thing ever")
end)
 
Namee_5.Name = "Namee"
Namee_5.Parent = SetMagic
Namee_5.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Namee_5.BackgroundTransparency = 0.60000002384186
Namee_5.BorderSizePixel = 0
Namee_5.Position = UDim2.new(0, 0, 0, 55)
Namee_5.Size = UDim2.new(0, 70, 0, 15)
Namee_5.Font = Enum.Font.SourceSansLight
Namee_5.FontSize = Enum.FontSize.Size14
Namee_5.Text = "[Magic]"
Namee_5.TextColor3 = Color3.new(1, 1, 1)
MagicA = Namee_5.Text
SetMagic.MouseButton1Down:connect(function(open)
    MagicA = Namee_5.Text
    game.Workspace.Stats.SetStat:FireServer("Magic", tostring(MagicA), "math.random() is the best thing ever")
end)
 
Namee_6.Name = "Namee"
Namee_6.Parent = SetSecondMagic
Namee_6.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Namee_6.BackgroundTransparency = 0.60000002384186
Namee_6.BorderSizePixel = 0
Namee_6.Position = UDim2.new(0, 0, 0, 55)
Namee_6.Size = UDim2.new(0, 70, 0, 15)
Namee_6.Font = Enum.Font.SourceSansLight
Namee_6.FontSize = Enum.FontSize.Size14
Namee_6.Text = "[Magic]"
Namee_6.TextColor3 = Color3.new(1, 1, 1)
MagicA2 = Namee_6.Text
SetSecondMagic.MouseButton1Down:connect(function(open)
    MagicA2 = Namee_6.Text
    game.Workspace.Stats.SetStat:FireServer("Magic2", tostring(MagicA2), "math.random() is the best thing ever")
end)
 
Namee_7.Name = "Namee"
Namee_7.Parent = SkillPoints
Namee_7.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Namee_7.BackgroundTransparency = 0.60000002384186
Namee_7.BorderSizePixel = 0
Namee_7.Position = UDim2.new(0, 0, 0, 55)
Namee_7.Size = UDim2.new(0, 70, 0, 15)
Namee_7.Font = Enum.Font.SourceSansLight
Namee_7.FontSize = Enum.FontSize.Size14
Namee_7.Text = "[Amount]"
Namee_7.TextColor3 = Color3.new(1, 1, 1)
 
Namee_8.Name = "Namee"
Namee_8.Parent = AnimationPack
Namee_8.BackgroundColor3 = Color3.new(0, 1, 0.968628)
Namee_8.BackgroundTransparency = 0.60000002384186
Namee_8.BorderSizePixel = 0
Namee_8.Position = UDim2.new(0, 0, 0, 55)
Namee_8.Size = UDim2.new(0, 70, 0, 15)
Namee_8.Font = Enum.Font.SourceSansLight
Namee_8.FontSize = Enum.FontSize.Size14
Namee_8.Text = "[Pack]"
Namee_8.TextColor3 = Color3.new(1, 1, 1)
AP = Level.Namee_8.Text
AnimationPack.MouseButton1Down:connect(function(open)
    AP = Level.Namee_8.Text
    game.Workspace.Stats.SetStat:FireServer("Current Pack", tostring(AP), "math.random() is the best thing ever")
end)
 
SPA = Level.Namee_7.Text
SkillPoints.MouseButton1Down:connect(function(open)
    SPA = Level.Namee_7.Text
    game.Workspace.Stats.SetStat:FireServer("SP", tonumber(SPA) + 0, "math.random() is the best thing ever")
end)
 
 
-------