-- Objects

local ScreenGui = Instance.new("ScreenGui")
local TopGui = Instance.new("Frame")
local MainGui = Instance.new("Frame")
local ServerCommands = Instance.new("TextButton")
local PlayerCommands = Instance.new("TextButton")
local LocalCommands = Instance.new("TextButton")
local LocalForceField = Instance.new("TextButton")
local LocalGaben = Instance.new("TextButton")
local LocalSmallHead = Instance.new("TextButton")
local LocalSparkles = Instance.new("TextButton")
local LocaldNormalHead = Instance.new("TextButton")
local LocalFire = Instance.new("TextButton")
local LocalBigHead = Instance.new("TextButton")
local LocalPepe = Instance.new("TextButton")
local LocalGod = Instance.new("TextButton")
local LocalUnFire = Instance.new("TextButton")
local LocalUnFF = Instance.new("TextButton")
local LocalUnSparkles = Instance.new("TextButton")
local LocalUnFire_2 = Instance.new("TextButton")
local LocalNoclip = Instance.new("TextButton")
local LocalUnSparkles_2 = Instance.new("TextButton")
local LocalUnGod = Instance.new("TextButton")
local LocalSuicide = Instance.new("TextButton")
local LocalRageQuit = Instance.new("TextButton")
local LocalBtools = Instance.new("TextButton")
local LocalSmoke = Instance.new("TextButton")
local LocalWalkspeed = Instance.new("TextButton")
local LocalWalkspeed_2 = Instance.new("TextButton")
local LocalJumPower = Instance.new("TextButton")
local LocalJumPower_2 = Instance.new("TextButton")
local LocalHarambe = Instance.new("TextButton")
local LocalSmokeColor = Instance.new("TextButton")
local LocalSparklesColor = Instance.new("TextButton")
local LocalFireColor = Instance.new("TextButton")
local LocalSwear = Instance.new("TextButton")
local LocalInvisible = Instance.new("TextButton")
local LocalVisibleUnghost = Instance.new("TextButton")
local LocalGhost = Instance.new("TextButton")
local LocalShowName = Instance.new("TextButton")
local LocalHideName = Instance.new("TextButton")
local Button = Instance.new("TextButton")
local border = Instance.new("Frame")

-- Properties

ScreenGui.Parent = game.StarterGui
ScreenGui.ResetOnSpawn = false

TopGui.Name = "TopGui"
TopGui.Parent = ScreenGui
TopGui.Active = true
TopGui.BackgroundColor3 = Color3.new(0.419608, 0.419608, 0.419608)
TopGui.BorderColor3 = Color3.new(0.419608, 0.419608, 0.419608)
TopGui.Draggable = true
TopGui.Position = UDim2.new(0, 700, 0, 150)
TopGui.Size = UDim2.new(0, 530, 0, -25)

MainGui.Name = "MainGui"
MainGui.Parent = TopGui
MainGui.BackgroundColor3 = Color3.new(0, 0, 0.0627451)
MainGui.BackgroundTransparency = 0.15000000596046
MainGui.Position = UDim2.new(0, 0, 0, 27)
MainGui.Size = UDim2.new(0, 530, 0, 200)

ServerCommands.Name = "ServerCommands"
ServerCommands.Parent = MainGui
ServerCommands.BackgroundColor3 = Color3.new(1, 1, 1)
ServerCommands.Position = UDim2.new(0, 110, 0, 5)
ServerCommands.Size = UDim2.new(0, 100, 0, 20)
ServerCommands.Font = Enum.Font.SourceSans
ServerCommands.FontSize = Enum.FontSize.Size14
ServerCommands.Text = "Server"
ServerCommands.TextSize = 14

PlayerCommands.Name = "PlayerCommands"
PlayerCommands.Parent = MainGui
PlayerCommands.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerCommands.Position = UDim2.new(0, 215, 0, 5)
PlayerCommands.Size = UDim2.new(0, 100, 0, 20)
PlayerCommands.Font = Enum.Font.SourceSans
PlayerCommands.FontSize = Enum.FontSize.Size14
PlayerCommands.Text = "Players"
PlayerCommands.TextSize = 14

LocalCommands.Name = "LocalCommands"
LocalCommands.Parent = MainGui
LocalCommands.BackgroundColor3 = Color3.new(1, 1, 1)
LocalCommands.Position = UDim2.new(0, 5, 0, 5)
LocalCommands.Size = UDim2.new(0, 100, 0, 20)
LocalCommands.Font = Enum.Font.SourceSans
LocalCommands.FontSize = Enum.FontSize.Size14
LocalCommands.Text = "Local"
LocalCommands.TextSize = 14

LocalForceField.Name = "LocalForceField"
LocalForceField.Parent = MainGui
LocalForceField.BackgroundColor3 = Color3.new(1, 1, 1)
LocalForceField.Position = UDim2.new(0, 110, 0, 50)
LocalForceField.Size = UDim2.new(0, 100, 0, 20)
LocalForceField.Font = Enum.Font.SourceSans
LocalForceField.FontSize = Enum.FontSize.Size14
LocalForceField.Text = "ForceField"
LocalForceField.TextSize = 14

LocalGaben.Name = "LocalGaben"
LocalGaben.Parent = MainGui
LocalGaben.BackgroundColor3 = Color3.new(1, 1, 1)
LocalGaben.Position = UDim2.new(0, 5, 0, 100)
LocalGaben.Size = UDim2.new(0, 100, 0, 20)
LocalGaben.Font = Enum.Font.SourceSans
LocalGaben.FontSize = Enum.FontSize.Size14
LocalGaben.Text = "Gaben"
LocalGaben.TextSize = 14

LocalSmallHead.Name = "LocalSmallHead"
LocalSmallHead.Parent = MainGui
LocalSmallHead.BackgroundColor3 = Color3.new(1, 1, 1)
LocalSmallHead.Position = UDim2.new(0, 215, 0, 75)
LocalSmallHead.Size = UDim2.new(0, 100, 0, 20)
LocalSmallHead.Font = Enum.Font.SourceSans
LocalSmallHead.FontSize = Enum.FontSize.Size14
LocalSmallHead.Text = "Small Head"
LocalSmallHead.TextSize = 14

LocalSparkles.Name = "LocalSparkles"
LocalSparkles.Parent = MainGui
LocalSparkles.BackgroundColor3 = Color3.new(1, 1, 1)
LocalSparkles.Position = UDim2.new(0, 5, 0, 50)
LocalSparkles.Size = UDim2.new(0, 100, 0, 20)
LocalSparkles.Font = Enum.Font.SourceSans
LocalSparkles.FontSize = Enum.FontSize.Size14
LocalSparkles.Text = "Sparkles"
LocalSparkles.TextSize = 14

LocaldNormalHead.Name = "LocaldNormalHead"
LocaldNormalHead.Parent = MainGui
LocaldNormalHead.BackgroundColor3 = Color3.new(1, 1, 1)
LocaldNormalHead.Position = UDim2.new(0, 110, 0, 75)
LocaldNormalHead.Size = UDim2.new(0, 100, 0, 20)
LocaldNormalHead.Font = Enum.Font.SourceSans
LocaldNormalHead.FontSize = Enum.FontSize.Size14
LocaldNormalHead.Text = "Normal Head"
LocaldNormalHead.TextSize = 14

LocalFire.Name = "LocalFire"
LocalFire.Parent = MainGui
LocalFire.BackgroundColor3 = Color3.new(1, 1, 1)
LocalFire.Position = UDim2.new(0, 215, 0, 50)
LocalFire.Size = UDim2.new(0, 100, 0, 20)
LocalFire.Font = Enum.Font.SourceSans
LocalFire.FontSize = Enum.FontSize.Size14
LocalFire.Text = "Fire"
LocalFire.TextSize = 14

LocalBigHead.Name = "LocalBigHead"
LocalBigHead.Parent = MainGui
LocalBigHead.BackgroundColor3 = Color3.new(1, 1, 1)
LocalBigHead.Position = UDim2.new(0, 5, 0, 75)
LocalBigHead.Size = UDim2.new(0, 100, 0, 20)
LocalBigHead.Font = Enum.Font.SourceSans
LocalBigHead.FontSize = Enum.FontSize.Size14
LocalBigHead.Text = "Big Head"
LocalBigHead.TextSize = 14

LocalPepe.Name = "LocalPepe"
LocalPepe.Parent = MainGui
LocalPepe.BackgroundColor3 = Color3.new(1, 1, 1)
LocalPepe.Position = UDim2.new(0, 110, 0, 100)
LocalPepe.Size = UDim2.new(0, 100, 0, 20)
LocalPepe.Font = Enum.Font.SourceSans
LocalPepe.FontSize = Enum.FontSize.Size14
LocalPepe.Text = "Pepe"
LocalPepe.TextSize = 14

LocalGod.Name = "LocalGod"
LocalGod.Parent = MainGui
LocalGod.BackgroundColor3 = Color3.new(1, 1, 1)
LocalGod.Position = UDim2.new(0, 215, 0, 100)
LocalGod.Size = UDim2.new(0, 100, 0, 20)
LocalGod.Font = Enum.Font.SourceSans
LocalGod.FontSize = Enum.FontSize.Size14
LocalGod.Text = "God"
LocalGod.TextSize = 14

LocalUnFire.Name = "LocalUnFire"
LocalUnFire.Parent = MainGui
LocalUnFire.BackgroundColor3 = Color3.new(1, 1, 1)
LocalUnFire.Position = UDim2.new(0, 320, 0, 50)
LocalUnFire.Size = UDim2.new(0, 100, 0, 20)
LocalUnFire.Font = Enum.Font.SourceSans
LocalUnFire.FontSize = Enum.FontSize.Size14
LocalUnFire.Text = "Remove Fire"
LocalUnFire.TextSize = 14

LocalUnFF.Name = "LocalUnFF"
LocalUnFF.Parent = MainGui
LocalUnFF.BackgroundColor3 = Color3.new(1, 1, 1)
LocalUnFF.Position = UDim2.new(0, 425, 0, 50)
LocalUnFF.Size = UDim2.new(0, 100, 0, 20)
LocalUnFF.Font = Enum.Font.SourceSans
LocalUnFF.FontSize = Enum.FontSize.Size14
LocalUnFF.Text = "Remove ForceField"
LocalUnFF.TextSize = 14

LocalUnSparkles.Name = "LocalUnSparkles"
LocalUnSparkles.Parent = MainGui
LocalUnSparkles.BackgroundColor3 = Color3.new(1, 1, 1)
LocalUnSparkles.Position = UDim2.new(0, 320, 0, 75)
LocalUnSparkles.Size = UDim2.new(0, 100, 0, 20)
LocalUnSparkles.Font = Enum.Font.SourceSans
LocalUnSparkles.FontSize = Enum.FontSize.Size14
LocalUnSparkles.Text = "Remove Sparkles"
LocalUnSparkles.TextSize = 14

LocalUnFire_2.Name = "LocalUnFire"
LocalUnFire_2.Parent = MainGui
LocalUnFire_2.BackgroundColor3 = Color3.new(1, 1, 1)
LocalUnFire_2.Position = UDim2.new(0, 320, 0, 50)
LocalUnFire_2.Size = UDim2.new(0, 100, 0, 20)
LocalUnFire_2.Font = Enum.Font.SourceSans
LocalUnFire_2.FontSize = Enum.FontSize.Size14
LocalUnFire_2.Text = "Remove Fire"
LocalUnFire_2.TextSize = 14

LocalNoclip.Name = "LocalNoclip"
LocalNoclip.Parent = MainGui
LocalNoclip.BackgroundColor3 = Color3.new(1, 1, 1)
LocalNoclip.Position = UDim2.new(0, 425, 0, 75)
LocalNoclip.Size = UDim2.new(0, 100, 0, 20)
LocalNoclip.Font = Enum.Font.SourceSans
LocalNoclip.FontSize = Enum.FontSize.Size14
LocalNoclip.Text = "Noclip"
LocalNoclip.TextSize = 14

LocalUnSparkles_2.Name = "LocalUnSparkles"
LocalUnSparkles_2.Parent = MainGui
LocalUnSparkles_2.BackgroundColor3 = Color3.new(1, 1, 1)
LocalUnSparkles_2.Position = UDim2.new(0, 320, 0, 75)
LocalUnSparkles_2.Size = UDim2.new(0, 100, 0, 20)
LocalUnSparkles_2.Font = Enum.Font.SourceSans
LocalUnSparkles_2.FontSize = Enum.FontSize.Size14
LocalUnSparkles_2.Text = "Remove Sparkles"
LocalUnSparkles_2.TextSize = 14

LocalUnGod.Name = "LocalUnGod"
LocalUnGod.Parent = MainGui
LocalUnGod.BackgroundColor3 = Color3.new(1, 1, 1)
LocalUnGod.Position = UDim2.new(0, 320, 0, 100)
LocalUnGod.Size = UDim2.new(0, 100, 0, 20)
LocalUnGod.Font = Enum.Font.SourceSans
LocalUnGod.FontSize = Enum.FontSize.Size14
LocalUnGod.Text = "UnGod"
LocalUnGod.TextSize = 14

LocalSuicide.Name = "LocalSuicide "
LocalSuicide.Parent = MainGui
LocalSuicide.BackgroundColor3 = Color3.new(1, 1, 1)
LocalSuicide.Position = UDim2.new(0, 320, 0, 100)
LocalSuicide.Size = UDim2.new(0, 100, 0, 20)
LocalSuicide.Font = Enum.Font.SourceSans
LocalSuicide.FontSize = Enum.FontSize.Size14
LocalSuicide.Text = "Suicide (Kills you)"
LocalSuicide.TextSize = 14

LocalRageQuit.Name = "LocalRageQuit "
LocalRageQuit.Parent = MainGui
LocalRageQuit.BackgroundColor3 = Color3.new(1, 1, 1)
LocalRageQuit.Position = UDim2.new(0, 425, 0, 100)
LocalRageQuit.Size = UDim2.new(0, 100, 0, 20)
LocalRageQuit.Font = Enum.Font.SourceSans
LocalRageQuit.FontSize = Enum.FontSize.Size12
LocalRageQuit.Text = "Rage Quit (Kicks you)"
LocalRageQuit.TextSize = 12

LocalBtools.Name = "LocalBtools"
LocalBtools.Parent = MainGui
LocalBtools.BackgroundColor3 = Color3.new(1, 1, 1)
LocalBtools.Position = UDim2.new(0, 5, 0, 125)
LocalBtools.Size = UDim2.new(0, 100, 0, 20)
LocalBtools.Font = Enum.Font.SourceSans
LocalBtools.FontSize = Enum.FontSize.Size14
LocalBtools.Text = "Btools"
LocalBtools.TextSize = 14

LocalSmoke.Name = "LocalSmoke"
LocalSmoke.Parent = MainGui
LocalSmoke.BackgroundColor3 = Color3.new(1, 1, 1)
LocalSmoke.Position = UDim2.new(0, 110, 0, 125)
LocalSmoke.Size = UDim2.new(0, 100, 0, 20)
LocalSmoke.Font = Enum.Font.SourceSans
LocalSmoke.FontSize = Enum.FontSize.Size14
LocalSmoke.Text = "Smoke"
LocalSmoke.TextSize = 14

LocalWalkspeed.Name = "LocalWalkspeed+"
LocalWalkspeed.Parent = MainGui
LocalWalkspeed.BackgroundColor3 = Color3.new(1, 1, 1)
LocalWalkspeed.Position = UDim2.new(0, 110, 0, 125)
LocalWalkspeed.Size = UDim2.new(0, 100, 0, 20)
LocalWalkspeed.Font = Enum.Font.SourceSans
LocalWalkspeed.FontSize = Enum.FontSize.Size14
LocalWalkspeed.Text = "Walkspeed +5"
LocalWalkspeed.TextSize = 14

LocalWalkspeed_2.Name = "LocalWalkspeed-"
LocalWalkspeed_2.Parent = MainGui
LocalWalkspeed_2.BackgroundColor3 = Color3.new(1, 1, 1)
LocalWalkspeed_2.Position = UDim2.new(0, 215, 0, 125)
LocalWalkspeed_2.Size = UDim2.new(0, 100, 0, 20)
LocalWalkspeed_2.Font = Enum.Font.SourceSans
LocalWalkspeed_2.FontSize = Enum.FontSize.Size14
LocalWalkspeed_2.Text = "Walkspeed -5"
LocalWalkspeed_2.TextSize = 14

LocalJumPower.Name = "LocalJumPower+"
LocalJumPower.Parent = MainGui
LocalJumPower.BackgroundColor3 = Color3.new(1, 1, 1)
LocalJumPower.Position = UDim2.new(0, 320, 0, 125)
LocalJumPower.Size = UDim2.new(0, 100, 0, 20)
LocalJumPower.Font = Enum.Font.SourceSans
LocalJumPower.FontSize = Enum.FontSize.Size14
LocalJumPower.Text = "JumpPower +5"
LocalJumPower.TextSize = 14

LocalJumPower_2.Name = "LocalJumPower-"
LocalJumPower_2.Parent = MainGui
LocalJumPower_2.BackgroundColor3 = Color3.new(1, 1, 1)
LocalJumPower_2.Position = UDim2.new(0, 425, 0, 125)
LocalJumPower_2.Size = UDim2.new(0, 100, 0, 20)
LocalJumPower_2.Font = Enum.Font.SourceSans
LocalJumPower_2.FontSize = Enum.FontSize.Size14
LocalJumPower_2.Text = "JumpPower -5"
LocalJumPower_2.TextSize = 14

LocalHarambe.Name = "LocalHarambe"
LocalHarambe.Parent = MainGui
LocalHarambe.BackgroundColor3 = Color3.new(1, 1, 1)
LocalHarambe.Position = UDim2.new(0, 5, 0, 150)
LocalHarambe.Size = UDim2.new(0, 100, 0, 20)
LocalHarambe.Font = Enum.Font.SourceSans
LocalHarambe.FontSize = Enum.FontSize.Size14
LocalHarambe.Text = "Harambe"
LocalHarambe.TextSize = 14

LocalSmokeColor.Name = "LocalSmokeColor"
LocalSmokeColor.Parent = MainGui
LocalSmokeColor.BackgroundColor3 = Color3.new(1, 1, 1)
LocalSmokeColor.Position = UDim2.new(0, 110, 0, 175)
LocalSmokeColor.Size = UDim2.new(0, 100, 0, 20)
LocalSmokeColor.Font = Enum.Font.SourceSans
LocalSmokeColor.FontSize = Enum.FontSize.Size14
LocalSmokeColor.Text = "Smoke Color"
LocalSmokeColor.TextSize = 14

LocalSparklesColor.Name = "LocalSparklesColor"
LocalSparklesColor.Parent = MainGui
LocalSparklesColor.BackgroundColor3 = Color3.new(1, 1, 1)
LocalSparklesColor.Position = UDim2.new(0, 215, 0, 175)
LocalSparklesColor.Size = UDim2.new(0, 100, 0, 20)
LocalSparklesColor.Font = Enum.Font.SourceSans
LocalSparklesColor.FontSize = Enum.FontSize.Size14
LocalSparklesColor.Text = "Sparkles Color"
LocalSparklesColor.TextSize = 14

LocalFireColor.Name = "LocalFireColor"
LocalFireColor.Parent = MainGui
LocalFireColor.BackgroundColor3 = Color3.new(1, 1, 1)
LocalFireColor.Position = UDim2.new(0, 5, 0, 175)
LocalFireColor.Size = UDim2.new(0, 100, 0, 20)
LocalFireColor.Font = Enum.Font.SourceSans
LocalFireColor.FontSize = Enum.FontSize.Size14
LocalFireColor.Text = "Fire Color"
LocalFireColor.TextSize = 14

LocalSwear.Name = "LocalSwear"
LocalSwear.Parent = MainGui
LocalSwear.BackgroundColor3 = Color3.new(1, 1, 1)
LocalSwear.Position = UDim2.new(0, 110, 0, 150)
LocalSwear.Size = UDim2.new(0, 100, 0, 20)
LocalSwear.Font = Enum.Font.SourceSans
LocalSwear.FontSize = Enum.FontSize.Size14
LocalSwear.Text = "Swear"
LocalSwear.TextSize = 14

LocalInvisible.Name = "LocalInvisible"
LocalInvisible.Parent = MainGui
LocalInvisible.BackgroundColor3 = Color3.new(1, 1, 1)
LocalInvisible.Position = UDim2.new(0, 215, 0, 150)
LocalInvisible.Size = UDim2.new(0, 100, 0, 20)
LocalInvisible.Font = Enum.Font.SourceSans
LocalInvisible.FontSize = Enum.FontSize.Size14
LocalInvisible.Text = "Invisible"
LocalInvisible.TextSize = 14

LocalVisibleUnghost.Name = "LocalVisibleUnghost"
LocalVisibleUnghost.Parent = MainGui
LocalVisibleUnghost.BackgroundColor3 = Color3.new(1, 1, 1)
LocalVisibleUnghost.Position = UDim2.new(0, 320, 0, 150)
LocalVisibleUnghost.Size = UDim2.new(0, 100, 0, 20)
LocalVisibleUnghost.Font = Enum.Font.SourceSans
LocalVisibleUnghost.FontSize = Enum.FontSize.Size14
LocalVisibleUnghost.Text = "Visible/Unghost"
LocalVisibleUnghost.TextSize = 14

LocalGhost.Name = "LocalGhost"
LocalGhost.Parent = MainGui
LocalGhost.BackgroundColor3 = Color3.new(1, 1, 1)
LocalGhost.Position = UDim2.new(0, 425, 0, 150)
LocalGhost.Size = UDim2.new(0, 100, 0, 20)
LocalGhost.Font = Enum.Font.SourceSans
LocalGhost.FontSize = Enum.FontSize.Size14
LocalGhost.Text = "Ghost"
LocalGhost.TextSize = 14

LocalShowName.Name = "LocalShowName"
LocalShowName.Parent = MainGui
LocalShowName.BackgroundColor3 = Color3.new(1, 1, 1)
LocalShowName.Position = UDim2.new(0, 425, 0, 175)
LocalShowName.Size = UDim2.new(0, 100, 0, 20)
LocalShowName.Font = Enum.Font.SourceSans
LocalShowName.FontSize = Enum.FontSize.Size14
LocalShowName.Text = "Show Name"
LocalShowName.TextSize = 14

LocalHideName.Name = "LocalHideName"
LocalHideName.Parent = MainGui
LocalHideName.BackgroundColor3 = Color3.new(1, 1, 1)
LocalHideName.Position = UDim2.new(0, 320, 0, 175)
LocalHideName.Size = UDim2.new(0, 100, 0, 20)
LocalHideName.Font = Enum.Font.SourceSans
LocalHideName.FontSize = Enum.FontSize.Size14
LocalHideName.Text = "Hide Name"
LocalHideName.TextSize = 14

border.Name = "border"
border.Parent = TopGui
border.Active = true
border.BackgroundColor3 = Color3.new(0.419608, 0.419608, 0.419608)
border.BorderColor3 = Color3.new(0.419608, 0.419608, 0.419608)
border.Draggable = true
border.Position = UDim2.new(0, 0, 0, 57)
border.Selectable = true
border.Size = UDim2.new(0, 530, 0, 5)



--FUNCTIONS

LocalForceField.MouseButton1Click:connect(function()
	 game.Players.LocalPlayer.Character = Instance.new("ForceField")
end)

