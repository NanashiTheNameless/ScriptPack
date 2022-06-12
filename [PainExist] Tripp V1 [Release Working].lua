-- Objects

local Tripp = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local openclose = Instance.new("TextButton")
local dragbarBACKGROUND = Instance.new("TextLabel")
local dragbarRED = Instance.new("TextLabel")
local dragbarWHITE = Instance.new("TextLabel")
local btnserver = Instance.new("TextButton")
local btnvehicles = Instance.new("TextButton")
local btnplayers = Instance.new("TextButton")
local btnspawning = Instance.new("TextButton")
local btnmods = Instance.new("TextButton")
local modframe = Instance.new("Frame")
local spawningframe = Instance.new("Frame")
local playersframe = Instance.new("Frame")
local vehiclesframe = Instance.new("Frame")
local serverframe = Instance.new("Frame")
local introframe = Instance.new("Frame")
local txtcreatorRED = Instance.new("TextLabel")
local txtcreatorWHITE = Instance.new("TextLabel")
local txtcreator = Instance.new("TextLabel")
local modAimbot = Instance.new("TextButton")
local modC4 = Instance.new("TextButton")
local modCorpse = Instance.new("TextButton")
local modESP = Instance.new("TextButton")
local modESP2 = Instance.new("TextButton")
local modFog = Instance.new("TextButton")
local modGod = Instance.new("TextButton")
local modHunger = Instance.new("TextButton")
local modRecoil = Instance.new("TextButton")
local modStamina = Instance.new("TextButton")
local modTeleport = Instance.new("TextButton")
local modNoclip = Instance.new("TextButton")
local scrollingItems = Instance.new("ScrollingFrame")
local btnSpawn = Instance.new("TextButton")
local spawnFalKit = Instance.new("TextButton")
local spawnNavigation = Instance.new("TextButton")
local txtboxSearch = Instance.new("TextBox")
local scrollingPlayers = Instance.new("ScrollingFrame")
local playerKill = Instance.new("TextButton")
local playerKillAll = Instance.new("TextButton")
local playerSpectate = Instance.new("TextButton")
local playerStealAllG = Instance.new("TextButton")
local playerStealAllI = Instance.new("TextButton")
local playerStealGuns = Instance.new("TextButton")
local playerStealItems = Instance.new("TextButton")
local playerTeleport = Instance.new("TextButton")
local labelSelectedPlayers = Instance.new("TextLabel")
local scrollingVehicles = Instance.new("ScrollingFrame")
local txtboxSpeed = Instance.new("TextBox")
local vehicleDestroy = Instance.new("TextButton")
local vehicleDestroyAll = Instance.new("TextButton")
local vehicleESP = Instance.new("TextButton")
local vehicleSetSpeed = Instance.new("TextButton")
local vehicleTeleport = Instance.new("TextButton")
local labelSelectedVehicle = Instance.new("TextLabel")
local Blue = Instance.new("TextButton")
local Green = Instance.new("TextButton")
local Red = Instance.new("TextButton")
local White = Instance.new("TextButton")
local Yellow = Instance.new("TextButton")
local messageSpam = Instance.new("TextButton")
local messageText = Instance.new("TextBox")
local L_2_ = game.Players.LocalPlayer;

-- Properties

Tripp.Name = "Tripp"
Tripp.Parent = game.CoreGui

mainframe.Name = "mainframe"
mainframe.Parent = Tripp
mainframe.BackgroundColor3 = Color3.new(0, 0, 0)
mainframe.BorderColor3 = Color3.new(0.839216, 0, 0)
mainframe.Position = UDim2.new(0.5, -229, 0.5, 650)
mainframe.Size = UDim2.new(0, 457, 0, 292)

openclose.Name = "openclose"
openclose.Parent = mainframe
openclose.BackgroundColor3 = Color3.new(1, 1, 1)
openclose.BackgroundTransparency = 1
openclose.Position = UDim2.new(0, 414, 0, 0)
openclose.Size = UDim2.new(0, 43, 0, 20)
openclose.AutoButtonColor = false
openclose.Font = Enum.Font.SourceSans
openclose.FontSize = Enum.FontSize.Size96
openclose.Text = "-"
openclose.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
openclose.TextSize = 75

modframe.Name = "modframe"
modframe.Parent = mainframe
modframe.BackgroundColor3 = Color3.new(0, 0, 0)
modframe.BackgroundTransparency = 1
modframe.BorderColor3 = Color3.new(0, 0, 0)
modframe.Position = UDim2.new(0.5, -229, 0.5, -107)
modframe.Size = UDim2.new(0, 457, 0, 253)

spawningframe.Name = "spawningframe"
spawningframe.Parent = mainframe
spawningframe.BackgroundColor3 = Color3.new(0, 0, 0)
spawningframe.BackgroundTransparency = 1
spawningframe.BorderColor3 = Color3.new(0, 0, 0)
spawningframe.Position = UDim2.new(0.5, -229, 0.5, -107)
spawningframe.Size = UDim2.new(0, 457, 0, 253)
spawningframe.Visible = false

playersframe.Name = "playersframe"
playersframe.Parent = mainframe
playersframe.BackgroundColor3 = Color3.new(0, 0, 0)
playersframe.BackgroundTransparency = 1
playersframe.BorderColor3 = Color3.new(0, 0, 0)
playersframe.Position = UDim2.new(0.5, -229, 0.5, -107)
playersframe.Size = UDim2.new(0, 457, 0, 253)
playersframe.Visible = false

vehiclesframe.Name = "vehiclesframe"
vehiclesframe.Parent = mainframe
vehiclesframe.BackgroundColor3 = Color3.new(0, 0, 0)
vehiclesframe.BackgroundTransparency = 1
vehiclesframe.BorderColor3 = Color3.new(0, 0, 0)
vehiclesframe.Position = UDim2.new(0.5, -229, 0.5, -107)
vehiclesframe.Size = UDim2.new(0, 457, 0, 253)
vehiclesframe.Visible = false

serverframe.Name = "serverframe"
serverframe.Parent = mainframe
serverframe.BackgroundColor3 = Color3.new(0, 0, 0)
serverframe.BackgroundTransparency = 1
serverframe.BorderColor3 = Color3.new(0, 0, 0)
serverframe.Position = UDim2.new(0.5, -229, 0.5, -107)
serverframe.Size = UDim2.new(0, 457, 0, 253)
serverframe.Visible = false

btnmods.Name = "btnmods"
btnmods.Parent = mainframe
btnmods.BackgroundColor3 = Color3.new(1, 1, 1)
btnmods.Position = UDim2.new(0, -122, 0, 620)
btnmods.Size = UDim2.new(0, 119, 0, 41)
btnmods.Style = Enum.ButtonStyle.RobloxButton
btnmods.Font = Enum.Font.SourceSans
btnmods.FontSize = Enum.FontSize.Size14
btnmods.Text = "Mods"
btnmods.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
btnmods.TextSize = 14

dragbarBACKGROUND.Name = "dragbarBACKGROUND"
dragbarBACKGROUND.Parent = mainframe
dragbarBACKGROUND.BackgroundColor3 = Color3.new(0, 0, 0)
dragbarBACKGROUND.BackgroundTransparency = 0.64999997615814
dragbarBACKGROUND.BorderColor3 = Color3.new(0.92549, 0, 0.0117647)
dragbarBACKGROUND.Size = UDim2.new(0, 457, 0, 34)
dragbarBACKGROUND.Font = Enum.Font.SourceSans
dragbarBACKGROUND.FontSize = Enum.FontSize.Size14
dragbarBACKGROUND.Text = ""
dragbarBACKGROUND.TextSize = 14

dragbarRED.Name = "dragbarRED"
dragbarRED.Parent = mainframe
dragbarRED.BackgroundColor3 = Color3.new(1, 1, 1)
dragbarRED.BackgroundTransparency = 1
dragbarRED.Size = UDim2.new(0, 457, 0, 19)
dragbarRED.Font = Enum.Font.Antique
dragbarRED.FontSize = Enum.FontSize.Size36
dragbarRED.Text = "Tripp"
dragbarRED.TextColor3 = Color3.new(0.92549, 0, 0.0117647)
dragbarRED.TextSize = 33

dragbarWHITE.Name = "dragbarWHITE"
dragbarWHITE.Parent = mainframe
dragbarWHITE.BackgroundColor3 = Color3.new(1, 1, 1)
dragbarWHITE.BackgroundTransparency = 1
dragbarWHITE.Position = UDim2.new(0, 0, 0, 2)
dragbarWHITE.Size = UDim2.new(0, 457, 0, 19)
dragbarWHITE.Font = Enum.Font.Antique
dragbarWHITE.FontSize = Enum.FontSize.Size32
dragbarWHITE.Text = "Tripp"
dragbarWHITE.TextColor3 = Color3.new(0.92549, 0.92549, 0.92549)
dragbarWHITE.TextSize = 31

btnspawning.Name = "btnspawning"
btnspawning.Parent = mainframe
btnspawning.BackgroundColor3 = Color3.new(1, 1, 1)
btnspawning.Position = UDim2.new(0, -122, 0, 670)
btnspawning.Size = UDim2.new(0, 119, 0, 41)
btnspawning.Style = Enum.ButtonStyle.RobloxButton
btnspawning.Font = Enum.Font.SourceSans
btnspawning.FontSize = Enum.FontSize.Size14
btnspawning.Text = "Spawning"
btnspawning.TextColor3 = Color3.new(0.839216, 0, 0)
btnspawning.TextSize = 14

btnplayers.Name = "btnplayers"
btnplayers.Parent = mainframe
btnplayers.BackgroundColor3 = Color3.new(1, 1, 1)
btnplayers.Position = UDim2.new(0, -122, 0, 720)
btnplayers.Size = UDim2.new(0, 119, 0, 41)
btnplayers.Style = Enum.ButtonStyle.RobloxButton
btnplayers.Font = Enum.Font.SourceSans
btnplayers.FontSize = Enum.FontSize.Size14
btnplayers.Text = "Players"
btnplayers.TextColor3 = Color3.new(0.839216, 0, 0)
btnplayers.TextSize = 14

btnvehicles.Name = "btnvehicles"
btnvehicles.Parent = mainframe
btnvehicles.BackgroundColor3 = Color3.new(1, 1, 1)
btnvehicles.Position = UDim2.new(0, -122, 0, 770)
btnvehicles.Size = UDim2.new(0, 119, 0, 41)
btnvehicles.Style = Enum.ButtonStyle.RobloxButton
btnvehicles.Font = Enum.Font.SourceSans
btnvehicles.FontSize = Enum.FontSize.Size14
btnvehicles.Text = "Vehicles"
btnvehicles.TextColor3 = Color3.new(0.839216, 0, 0)
btnvehicles.TextSize = 14

btnserver.Name = "btnserver"
btnserver.Parent = mainframe
btnserver.BackgroundColor3 = Color3.new(1, 1, 1)
btnserver.Position = UDim2.new(0, -122, 0, 820)
btnserver.Size = UDim2.new(0, 119, 0, 41)
btnserver.Style = Enum.ButtonStyle.RobloxButton
btnserver.Font = Enum.Font.SourceSans
btnserver.FontSize = Enum.FontSize.Size14
btnserver.Text = "Server"
btnserver.TextColor3 = Color3.new(0.839216, 0, 0)
btnserver.TextSize = 14

introframe.Name = "introframe"
introframe.Parent = Tripp
introframe.BackgroundColor3 = Color3.new(0, 0, 0)
introframe.BorderColor3 = Color3.new(0.839216, 0, 0)
introframe.Position = UDim2.new(0, 347, 0, 221)
introframe.Size = UDim2.new(0, 0, 0, 0)

txtcreatorRED.Name = "txtcreatorRED"
txtcreatorRED.Parent = introframe
txtcreatorRED.BackgroundColor3 = Color3.new(1, 1, 1)
txtcreatorRED.BackgroundTransparency = 1
txtcreatorRED.BorderColor3 = Color3.new(1, 1, 1)
txtcreatorRED.Position = UDim2.new(0, 0, 0, 39)
txtcreatorRED.Size = UDim2.new(0, 189, 0, 50)
txtcreatorRED.Font = Enum.Font.Antique
txtcreatorRED.FontSize = Enum.FontSize.Size96
txtcreatorRED.Text = "Tripp"
txtcreatorRED.TextColor3 = Color3.new(0.92549, 0, 0.0117647)
txtcreatorRED.TextTransparency = 1
txtcreatorRED.TextSize = 100
txtcreatorRED.TextWrapped = true

txtcreatorWHITE.Name = "txtcreatorWHITE"
txtcreatorWHITE.Parent = introframe
txtcreatorWHITE.BackgroundColor3 = Color3.new(1, 1, 1)
txtcreatorWHITE.BackgroundTransparency = 1
txtcreatorWHITE.BorderColor3 = Color3.new(1, 1, 1)
txtcreatorWHITE.Position = UDim2.new(0, 0, 0, 39)
txtcreatorWHITE.Size = UDim2.new(0, 189, 0, 50)
txtcreatorWHITE.Font = Enum.Font.Antique
txtcreatorWHITE.FontSize = Enum.FontSize.Size96
txtcreatorWHITE.Text = "Tripp"
txtcreatorWHITE.TextColor3 = Color3.new(0.92549, 0.92549, 0.92549)
txtcreatorWHITE.TextTransparency = 1
txtcreatorWHITE.TextSize = 87
txtcreatorWHITE.TextWrapped = true

txtcreator.Name = "txtcreator"
txtcreator.Parent = introframe
txtcreator.BackgroundColor3 = Color3.new(1, 1, 1)
txtcreator.BackgroundTransparency = 1
txtcreator.BorderColor3 = Color3.new(1, 1, 1)
txtcreator.Position = UDim2.new(0, 0, 0, 138)
txtcreator.Size = UDim2.new(0, 189, 0, 22)
txtcreator.Font = Enum.Font.SourceSansItalic
txtcreator.FontSize = Enum.FontSize.Size18
txtcreator.Text = "GUI Made by DeepTrip"
txtcreator.TextColor3 = Color3.new(0.839216, 0, 0)
txtcreator.TextTransparency = 1
txtcreator.TextSize = 17
txtcreator.TextWrapped = true

modAimbot.Name = "modAimbot"
modAimbot.Parent = modframe
modAimbot.BackgroundColor3 = Color3.new(1, 1, 1)
modAimbot.BorderColor3 = Color3.new(1, 1, 1)
modAimbot.Position = UDim2.new(0, 178, 0, 68)
modAimbot.Size = UDim2.new(0, 101, 0, 33)
modAimbot.Style = Enum.ButtonStyle.RobloxRoundButton
modAimbot.Font = Enum.Font.SciFi
modAimbot.FontSize = Enum.FontSize.Size14
modAimbot.Text = "Aimbot"
modAimbot.TextColor3 = Color3.new(1, 1, 1)
modAimbot.TextSize = 14

modC4.Name = "modC4"
modC4.Parent = modframe
modC4.BackgroundColor3 = Color3.new(1, 1, 1)
modC4.BorderColor3 = Color3.new(1, 1, 1)
modC4.Position = UDim2.new(0, 304, 0, 210)
modC4.Size = UDim2.new(0, 101, 0, 33)
modC4.Style = Enum.ButtonStyle.RobloxRoundButton
modC4.Font = Enum.Font.SciFi
modC4.FontSize = Enum.FontSize.Size14
modC4.Text = "C4 Walk: OFF"
modC4.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
modC4.TextSize = 14

modCorpse.Name = "modCorpse"
modCorpse.Parent = modframe
modCorpse.BackgroundColor3 = Color3.new(1, 1, 1)
modCorpse.BorderColor3 = Color3.new(1, 1, 1)
modCorpse.Position = UDim2.new(0, 178, 0, 126)
modCorpse.Size = UDim2.new(0, 101, 0, 33)
modCorpse.Style = Enum.ButtonStyle.RobloxRoundButton
modCorpse.Font = Enum.Font.SciFi
modCorpse.FontSize = Enum.FontSize.Size14
modCorpse.Text = "TP Corpse"
modCorpse.TextColor3 = Color3.new(1, 1, 1)
modCorpse.TextSize = 14

modESP.Name = "modESP"
modESP.Parent = modframe
modESP.BackgroundColor3 = Color3.new(1, 1, 1)
modESP.BorderColor3 = Color3.new(1, 1, 1)
modESP.Position = UDim2.new(0, 304, 0, 16)
modESP.Size = UDim2.new(0, 101, 0, 33)
modESP.Style = Enum.ButtonStyle.RobloxRoundButton
modESP.Font = Enum.Font.SciFi
modESP.FontSize = Enum.FontSize.Size14
modESP.Text = "ESP"
modESP.TextColor3 = Color3.new(1, 1, 1)
modESP.TextSize = 14

modESP2.Name = "modESP2"
modESP2.Parent = modframe
modESP2.BackgroundColor3 = Color3.new(1, 1, 1)
modESP2.BorderColor3 = Color3.new(1, 1, 1)
modESP2.Position = UDim2.new(0, 178, 0, 210)
modESP2.Size = UDim2.new(0, 101, 0, 33)
modESP2.Style = Enum.ButtonStyle.RobloxRoundButton
modESP2.Font = Enum.Font.SciFi
modESP2.FontSize = Enum.FontSize.Size14
modESP2.Text = "Name ESP: OFF"
modESP2.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
modESP2.TextSize = 14

modFog.Name = "modFog"
modFog.Parent = modframe
modFog.BackgroundColor3 = Color3.new(1, 1, 1)
modFog.BorderColor3 = Color3.new(1, 1, 1)
modFog.Position = UDim2.new(0, 178, 0, 16)
modFog.Size = UDim2.new(0, 101, 0, 33)
modFog.Style = Enum.ButtonStyle.RobloxRoundButton
modFog.Font = Enum.Font.SciFi
modFog.FontSize = Enum.FontSize.Size14
modFog.Text = "Remove Fog"
modFog.TextColor3 = Color3.new(1, 1, 1)
modFog.TextSize = 14

modGod.Name = "modGod"
modGod.Parent = modframe
modGod.BackgroundColor3 = Color3.new(1, 1, 1)
modGod.BorderColor3 = Color3.new(1, 1, 1)
modGod.Position = UDim2.new(0, 52, 0, 210)
modGod.Size = UDim2.new(0, 101, 0, 33)
modGod.Style = Enum.ButtonStyle.RobloxRoundButton
modGod.Font = Enum.Font.SciFi
modGod.FontSize = Enum.FontSize.Size14
modGod.Text = "Godmode"
modGod.TextColor3 = Color3.new(0.454902, 0, 0.356863)
modGod.TextSize = 14

modHunger.Name = "modHunger"
modHunger.Parent = modframe
modHunger.BackgroundColor3 = Color3.new(1, 1, 1)
modHunger.BorderColor3 = Color3.new(1, 1, 1)
modHunger.Position = UDim2.new(0, 304, 0, 68)
modHunger.Size = UDim2.new(0, 101, 0, 33)
modHunger.Style = Enum.ButtonStyle.RobloxRoundButton
modHunger.Font = Enum.Font.SciFi
modHunger.FontSize = Enum.FontSize.Size14
modHunger.Text = "Hunger/Thirst"
modHunger.TextColor3 = Color3.new(1, 1, 1)
modHunger.TextSize = 14

modRecoil.Name = "modRecoil"
modRecoil.Parent = modframe
modRecoil.BackgroundColor3 = Color3.new(1, 1, 1)
modRecoil.BorderColor3 = Color3.new(1, 1, 1)
modRecoil.Position = UDim2.new(0, 52, 0, 68)
modRecoil.Size = UDim2.new(0, 101, 0, 33)
modRecoil.Style = Enum.ButtonStyle.RobloxRoundButton
modRecoil.Font = Enum.Font.SciFi
modRecoil.FontSize = Enum.FontSize.Size14
modRecoil.Text = "No Recoil"
modRecoil.TextColor3 = Color3.new(1, 1, 1)
modRecoil.TextSize = 14

modStamina.Name = "modStamina"
modStamina.Parent = modframe
modStamina.BackgroundColor3 = Color3.new(1, 1, 1)
modStamina.BorderColor3 = Color3.new(1, 1, 1)
modStamina.Position = UDim2.new(0, 52, 0, 126)
modStamina.Size = UDim2.new(0, 101, 0, 33)
modStamina.Style = Enum.ButtonStyle.RobloxRoundButton
modStamina.Font = Enum.Font.SciFi
modStamina.FontSize = Enum.FontSize.Size14
modStamina.Text = "Unlim. Stamina"
modStamina.TextColor3 = Color3.new(1, 1, 1)
modStamina.TextSize = 14

modTeleport.Name = "modTeleport"
modTeleport.Parent = modframe
modTeleport.BackgroundColor3 = Color3.new(1, 1, 1)
modTeleport.BorderColor3 = Color3.new(1, 1, 1)
modTeleport.Position = UDim2.new(0, 53, 0, 16)
modTeleport.Size = UDim2.new(0, 101, 0, 33)
modTeleport.Style = Enum.ButtonStyle.RobloxRoundButton
modTeleport.Font = Enum.Font.SciFi
modTeleport.FontSize = Enum.FontSize.Size14
modTeleport.Text = "'E' Teleport"
modTeleport.TextColor3 = Color3.new(1, 1, 1)
modTeleport.TextSize = 14

modNoclip.Name = "modNoclip"
modNoclip.Parent = modframe
modNoclip.BackgroundColor3 = Color3.new(1, 1, 1)
modNoclip.BorderColor3 = Color3.new(1, 1, 1)
modNoclip.Position = UDim2.new(0, 304, 0, 126)
modNoclip.Size = UDim2.new(0, 101, 0, 33)
modNoclip.Style = Enum.ButtonStyle.RobloxRoundButton
modNoclip.Font = Enum.Font.SciFi
modNoclip.FontSize = Enum.FontSize.Size14
modNoclip.Text = "Noclip"
modNoclip.TextColor3 = Color3.new(1, 1, 1)
modNoclip.TextSize = 14

scrollingItems.Name = "scrollingItems"
scrollingItems.Parent = spawningframe
scrollingItems.BackgroundColor3 = Color3.new(0.372549, 0.372549, 0.372549)
scrollingItems.BackgroundTransparency = 0.44999998807907
scrollingItems.BorderColor3 = Color3.new(1, 1, 1)
scrollingItems.Position = UDim2.new(0, 23, 0, 55)
scrollingItems.Size = UDim2.new(0, 174, 0, 143)
scrollingItems.Visible = false

btnSpawn.Name = "btnSpawn"
btnSpawn.Parent = spawningframe
btnSpawn.BackgroundColor3 = Color3.new(0, 0.486275, 0.054902)
btnSpawn.BackgroundTransparency = 0.44999998807907
btnSpawn.BorderColor3 = Color3.new(1, 1, 1)
btnSpawn.Position = UDim2.new(0, 23, 0, 210)
btnSpawn.Size = UDim2.new(0, 174, 0, 33)
btnSpawn.Font = Enum.Font.SciFi
btnSpawn.FontSize = Enum.FontSize.Size18
btnSpawn.Text = "Spawn"
btnSpawn.TextColor3 = Color3.new(1, 1, 1)
btnSpawn.TextSize = 16

spawnFalKit.Name = "spawnFalKit"
spawnFalKit.Parent = spawningframe
spawnFalKit.BackgroundColor3 = Color3.new(1, 1, 1)
spawnFalKit.BorderColor3 = Color3.new(1, 1, 1)
spawnFalKit.Position = UDim2.new(0, 282, 0, 71)
spawnFalKit.Size = UDim2.new(0, 118, 0, 33)
spawnFalKit.Style = Enum.ButtonStyle.RobloxRoundButton
spawnFalKit.Font = Enum.Font.SciFi
spawnFalKit.FontSize = Enum.FontSize.Size14
spawnFalKit.Text = "FAL Kit"
spawnFalKit.TextColor3 = Color3.new(1, 1, 1)
spawnFalKit.TextSize = 14

spawnNavigation.Name = "spawnNavigation"
spawnNavigation.Parent = spawningframe
spawnNavigation.BackgroundColor3 = Color3.new(1, 1, 1)
spawnNavigation.BorderColor3 = Color3.new(1, 1, 1)
spawnNavigation.Position = UDim2.new(0, 282, 0, 126)
spawnNavigation.Size = UDim2.new(0, 118, 0, 33)
spawnNavigation.Style = Enum.ButtonStyle.RobloxRoundButton
spawnNavigation.Font = Enum.Font.SciFi
spawnNavigation.FontSize = Enum.FontSize.Size14
spawnNavigation.Text = "Navigation"
spawnNavigation.TextColor3 = Color3.new(1, 1, 1)
spawnNavigation.TextSize = 14

txtboxSearch.Name = "txtboxSearch"
txtboxSearch.Parent = spawningframe
txtboxSearch.BackgroundColor3 = Color3.new(0.666667, 0.666667, 0.666667)
txtboxSearch.BackgroundTransparency = 0.44999998807907
txtboxSearch.BorderColor3 = Color3.new(1, 1, 1)
txtboxSearch.Position = UDim2.new(0, 23, 0, 15)
txtboxSearch.Size = UDim2.new(0, 174, 0, 26)
txtboxSearch.Font = Enum.Font.SciFi
txtboxSearch.FontSize = Enum.FontSize.Size14
txtboxSearch.Text = "[SEARCH ITEM]"
txtboxSearch.TextColor3 = Color3.new(1, 1, 1)
txtboxSearch.TextSize = 14

scrollingPlayers.Name = "scrollingPlayers"
scrollingPlayers.Parent = playersframe
scrollingPlayers.BackgroundColor3 = Color3.new(0.372549, 0.372549, 0.372549)
scrollingPlayers.BackgroundTransparency = 0.44999998807907
scrollingPlayers.BorderColor3 = Color3.new(1, 1, 1)
scrollingPlayers.Position = UDim2.new(0, 93, 0, 123)
scrollingPlayers.Size = UDim2.new(0, 272, 0, 93)

playerKill.Name = "playerKill"
playerKill.Parent = playersframe
playerKill.BackgroundColor3 = Color3.new(1, 1, 1)
playerKill.BorderColor3 = Color3.new(1, 1, 1)
playerKill.Position = UDim2.new(0, 38, 0, 67)
playerKill.Size = UDim2.new(0, 80, 0, 24)
playerKill.Style = Enum.ButtonStyle.RobloxRoundButton
playerKill.Font = Enum.Font.SciFi
playerKill.FontSize = Enum.FontSize.Size18
playerKill.Text = "Kill"
playerKill.TextColor3 = Color3.new(0.615686, 0, 0.584314)
playerKill.TextSize = 15

playerKillAll.Name = "playerKillAll"
playerKillAll.Parent = playersframe
playerKillAll.BackgroundColor3 = Color3.new(1, 1, 1)
playerKillAll.BorderColor3 = Color3.new(1, 1, 1)
playerKillAll.Position = UDim2.new(0, 22, 0, 15)
playerKillAll.Size = UDim2.new(0, 101, 0, 33)
playerKillAll.Style = Enum.ButtonStyle.RobloxRoundButton
playerKillAll.Font = Enum.Font.SciFi
playerKillAll.FontSize = Enum.FontSize.Size14
playerKillAll.Text = "Kill All"
playerKillAll.TextColor3 = Color3.new(1, 1, 1)
playerKillAll.TextSize = 14

playerSpectate.Name = "playerSpectate"
playerSpectate.Parent = playersframe
playerSpectate.BackgroundColor3 = Color3.new(1, 1, 1)
playerSpectate.BorderColor3 = Color3.new(1, 1, 1)
playerSpectate.Position = UDim2.new(0, 139, 0, 221)
playerSpectate.Size = UDim2.new(0, 179, 0, 29)
playerSpectate.Style = Enum.ButtonStyle.RobloxRoundButton
playerSpectate.Font = Enum.Font.SciFi
playerSpectate.FontSize = Enum.FontSize.Size18
playerSpectate.Text = "Spectate: OFF"
playerSpectate.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
playerSpectate.TextSize = 15

playerStealAllG.Name = "playerStealAllG"
playerStealAllG.Parent = playersframe
playerStealAllG.BackgroundColor3 = Color3.new(1, 1, 1)
playerStealAllG.BorderColor3 = Color3.new(1, 1, 1)
playerStealAllG.Position = UDim2.new(0, 178, 0, 16)
playerStealAllG.Size = UDim2.new(0, 101, 0, 33)
playerStealAllG.Style = Enum.ButtonStyle.RobloxRoundButton
playerStealAllG.Font = Enum.Font.SciFi
playerStealAllG.FontSize = Enum.FontSize.Size14
playerStealAllG.Text = "Steal All Guns"
playerStealAllG.TextColor3 = Color3.new(1, 1, 1)
playerStealAllG.TextSize = 14

playerStealAllI.Name = "playerStealAllI"
playerStealAllI.Parent = playersframe
playerStealAllI.BackgroundColor3 = Color3.new(1, 1, 1)
playerStealAllI.BorderColor3 = Color3.new(1, 1, 1)
playerStealAllI.Position = UDim2.new(0, 337, 0, 15)
playerStealAllI.Size = UDim2.new(0, 101, 0, 33)
playerStealAllI.Style = Enum.ButtonStyle.RobloxRoundButton
playerStealAllI.Font = Enum.Font.SciFi
playerStealAllI.FontSize = Enum.FontSize.Size14
playerStealAllI.Text = "Steal All Items"
playerStealAllI.TextColor3 = Color3.new(1, 1, 1)
playerStealAllI.TextSize = 14

playerStealGuns.Name = "playerStealGuns"
playerStealGuns.Parent = playersframe
playerStealGuns.BackgroundColor3 = Color3.new(1, 1, 1)
playerStealGuns.BorderColor3 = Color3.new(1, 1, 1)
playerStealGuns.Position = UDim2.new(0, 132, 0, 67)
playerStealGuns.Size = UDim2.new(0, 80, 0, 24)
playerStealGuns.Style = Enum.ButtonStyle.RobloxRoundButton
playerStealGuns.Font = Enum.Font.SciFi
playerStealGuns.FontSize = Enum.FontSize.Size18
playerStealGuns.Text = "Steal Guns"
playerStealGuns.TextColor3 = Color3.new(0.615686, 0, 0.584314)
playerStealGuns.TextSize = 15

playerStealItems.Name = "playerStealItems"
playerStealItems.Parent = playersframe
playerStealItems.BackgroundColor3 = Color3.new(1, 1, 1)
playerStealItems.BorderColor3 = Color3.new(1, 1, 1)
playerStealItems.Position = UDim2.new(0, 229, 0, 67)
playerStealItems.Size = UDim2.new(0, 80, 0, 24)
playerStealItems.Style = Enum.ButtonStyle.RobloxRoundButton
playerStealItems.Font = Enum.Font.SciFi
playerStealItems.FontSize = Enum.FontSize.Size18
playerStealItems.Text = "Steal Items"
playerStealItems.TextColor3 = Color3.new(0.615686, 0, 0.584314)
playerStealItems.TextSize = 15

playerTeleport.Name = "playerTeleport"
playerTeleport.Parent = playersframe
playerTeleport.BackgroundColor3 = Color3.new(1, 1, 1)
playerTeleport.BorderColor3 = Color3.new(1, 1, 1)
playerTeleport.Position = UDim2.new(0, 321, 0, 68)
playerTeleport.Size = UDim2.new(0, 80, 0, 24)
playerTeleport.Style = Enum.ButtonStyle.RobloxRoundButton
playerTeleport.Font = Enum.Font.SciFi
playerTeleport.FontSize = Enum.FontSize.Size18
playerTeleport.Text = "Goto"
playerTeleport.TextColor3 = Color3.new(0.615686, 0, 0.584314)
playerTeleport.TextSize = 15

labelSelectedPlayers.Name = "labelSelectedPlayers"
labelSelectedPlayers.Parent = playersframe
labelSelectedPlayers.BackgroundColor3 = Color3.new(1, 1, 1)
labelSelectedPlayers.BackgroundTransparency = 1
labelSelectedPlayers.Position = UDim2.new(0, 93, 0, 100)
labelSelectedPlayers.Size = UDim2.new(0, 270, 0, 22)
labelSelectedPlayers.Font = Enum.Font.SciFi
labelSelectedPlayers.FontSize = Enum.FontSize.Size18
labelSelectedPlayers.Text = "Selected:"
labelSelectedPlayers.TextColor3 = Color3.new(1, 1, 1)
labelSelectedPlayers.TextSize = 15
labelSelectedPlayers.TextStrokeColor3 = Color3.new(1, 1, 1)

scrollingVehicles.Name = "scrollingVehicles"
scrollingVehicles.Parent = vehiclesframe
scrollingVehicles.BackgroundColor3 = Color3.new(0.372549, 0.372549, 0.372549)
scrollingVehicles.BackgroundTransparency = 0.44999998807907
scrollingVehicles.BorderColor3 = Color3.new(1, 1, 1)
scrollingVehicles.Position = UDim2.new(0, 119, 0, 126)
scrollingVehicles.Size = UDim2.new(0, 220, 0, 111)

txtboxSpeed.Name = "txtboxSpeed"
txtboxSpeed.Parent = vehiclesframe
txtboxSpeed.BackgroundColor3 = Color3.new(0.666667, 0.666667, 0.666667)
txtboxSpeed.BackgroundTransparency = 0.44999998807907
txtboxSpeed.BorderColor3 = Color3.new(1, 1, 1)
txtboxSpeed.Position = UDim2.new(0, 354, 0, 126)
txtboxSpeed.Size = UDim2.new(0, 90, 0, 26)
txtboxSpeed.Font = Enum.Font.SciFi
txtboxSpeed.FontSize = Enum.FontSize.Size12
txtboxSpeed.Text = "[SPEED]"
txtboxSpeed.TextColor3 = Color3.new(1, 1, 1)
txtboxSpeed.TextSize = 12

vehicleDestroy.Name = "vehicleDestroy"
vehicleDestroy.Parent = vehiclesframe
vehicleDestroy.BackgroundColor3 = Color3.new(1, 1, 1)
vehicleDestroy.BorderColor3 = Color3.new(1, 1, 1)
vehicleDestroy.Position = UDim2.new(0, 117, 0, 75)
vehicleDestroy.Size = UDim2.new(0, 80, 0, 24)
vehicleDestroy.Style = Enum.ButtonStyle.RobloxRoundButton
vehicleDestroy.Font = Enum.Font.SciFi
vehicleDestroy.FontSize = Enum.FontSize.Size18
vehicleDestroy.Text = "Destroy"
vehicleDestroy.TextColor3 = Color3.new(0.615686, 0, 0.584314)
vehicleDestroy.TextSize = 15

vehicleDestroyAll.Name = "vehicleDestroyAll"
vehicleDestroyAll.Parent = vehiclesframe
vehicleDestroyAll.BackgroundColor3 = Color3.new(1, 1, 1)
vehicleDestroyAll.BorderColor3 = Color3.new(1, 1, 1)
vehicleDestroyAll.Position = UDim2.new(0, 128, 0, 19)
vehicleDestroyAll.Size = UDim2.new(0, 101, 0, 33)
vehicleDestroyAll.Style = Enum.ButtonStyle.RobloxRoundButton
vehicleDestroyAll.Font = Enum.Font.SciFi
vehicleDestroyAll.FontSize = Enum.FontSize.Size14
vehicleDestroyAll.Text = "Destroy All"
vehicleDestroyAll.TextColor3 = Color3.new(1, 1, 1)
vehicleDestroyAll.TextSize = 14

vehicleESP.Name = "vehicleESP"
vehicleESP.Parent = vehiclesframe
vehicleESP.BackgroundColor3 = Color3.new(1, 1, 1)
vehicleESP.BorderColor3 = Color3.new(1, 1, 1)
vehicleESP.Position = UDim2.new(0, 229, 0, 19)
vehicleESP.Size = UDim2.new(0, 101, 0, 33)
vehicleESP.Style = Enum.ButtonStyle.RobloxRoundButton
vehicleESP.Font = Enum.Font.SciFi
vehicleESP.FontSize = Enum.FontSize.Size14
vehicleESP.Text = "Car ESP: OFF"
vehicleESP.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
vehicleESP.TextSize = 14

vehicleSetSpeed.Name = "vehicleSetSpeed"
vehicleSetSpeed.Parent = vehiclesframe
vehicleSetSpeed.BackgroundColor3 = Color3.new(1, 1, 1)
vehicleSetSpeed.BorderColor3 = Color3.new(1, 1, 1)
vehicleSetSpeed.Position = UDim2.new(0, 349, 0, 165)
vehicleSetSpeed.Size = UDim2.new(0, 100, 0, 29)
vehicleSetSpeed.Style = Enum.ButtonStyle.RobloxRoundButton
vehicleSetSpeed.Font = Enum.Font.SciFi
vehicleSetSpeed.FontSize = Enum.FontSize.Size18
vehicleSetSpeed.Text = "SET"
vehicleSetSpeed.TextColor3 = Color3.new(1, 1, 1)
vehicleSetSpeed.TextSize = 15

vehicleTeleport.Name = "vehicleTeleport"
vehicleTeleport.Parent = vehiclesframe
vehicleTeleport.BackgroundColor3 = Color3.new(1, 1, 1)
vehicleTeleport.BorderColor3 = Color3.new(1, 1, 1)
vehicleTeleport.Position = UDim2.new(0, 262, 0, 72)
vehicleTeleport.Size = UDim2.new(0, 80, 0, 24)
vehicleTeleport.Style = Enum.ButtonStyle.RobloxRoundButton
vehicleTeleport.Font = Enum.Font.SciFi
vehicleTeleport.FontSize = Enum.FontSize.Size18
vehicleTeleport.Text = "Goto"
vehicleTeleport.TextColor3 = Color3.new(0.615686, 0, 0.584314)
vehicleTeleport.TextSize = 15

labelSelectedVehicle.Name = "labelSelectedVehicle"
labelSelectedVehicle.Parent = vehiclesframe
labelSelectedVehicle.BackgroundColor3 = Color3.new(1, 1, 1)
labelSelectedVehicle.BackgroundTransparency = 1
labelSelectedVehicle.Position = UDim2.new(0, 120, 0, 106)
labelSelectedVehicle.Size = UDim2.new(0, 217, 0, 19)
labelSelectedVehicle.Font = Enum.Font.SciFi
labelSelectedVehicle.FontSize = Enum.FontSize.Size18
labelSelectedVehicle.Text = "Selected:"
labelSelectedVehicle.TextColor3 = Color3.new(1, 1, 1)
labelSelectedVehicle.TextSize = 15
labelSelectedVehicle.TextStrokeColor3 = Color3.new(1, 1, 1)

Blue.Name = "Blue"
Blue.Parent = serverframe
Blue.BackgroundColor3 = Color3.new(0.101961, 0, 0.623529)
Blue.Position = UDim2.new(0, 267, 0, 80)
Blue.Size = UDim2.new(0, 45, 0, 26)
Blue.Font = Enum.Font.SourceSans
Blue.FontSize = Enum.FontSize.Size14
Blue.Text = ""
Blue.TextSize = 14

Green.Name = "Green"
Green.Parent = serverframe
Green.BackgroundColor3 = Color3.new(0, 0.623529, 0.176471)
Green.Position = UDim2.new(0, 206, 0, 80)
Green.Size = UDim2.new(0, 45, 0, 26)
Green.Font = Enum.Font.SourceSans
Green.FontSize = Enum.FontSize.Size14
Green.Text = ""
Green.TextSize = 14

Red.Name = "Red"
Red.Parent = serverframe
Red.BackgroundColor3 = Color3.new(0.623529, 0, 0.00784314)
Red.Position = UDim2.new(0, 92, 0, 80)
Red.Size = UDim2.new(0, 45, 0, 26)
Red.Font = Enum.Font.SourceSans
Red.FontSize = Enum.FontSize.Size14
Red.Text = ""
Red.TextSize = 14

White.Name = "White"
White.Parent = serverframe
White.BackgroundColor3 = Color3.new(0.839216, 0.839216, 0.839216)
White.Position = UDim2.new(0, 325, 0, 80)
White.Size = UDim2.new(0, 45, 0, 26)
White.Font = Enum.Font.SourceSans
White.FontSize = Enum.FontSize.Size14
White.Text = ""
White.TextSize = 14

Yellow.Name = "Yellow"
Yellow.Parent = serverframe
Yellow.BackgroundColor3 = Color3.new(0.839216, 0.882353, 0)
Yellow.Position = UDim2.new(0, 149, 0, 80)
Yellow.Size = UDim2.new(0, 45, 0, 26)
Yellow.Font = Enum.Font.SourceSans
Yellow.FontSize = Enum.FontSize.Size14
Yellow.Text = ""
Yellow.TextSize = 14

messageSpam.Name = "messageSpam"
messageSpam.Parent = serverframe
messageSpam.BackgroundColor3 = Color3.new(1, 1, 1)
messageSpam.BorderColor3 = Color3.new(1, 1, 1)
messageSpam.Position = UDim2.new(0, 107, 0, 160)
messageSpam.Size = UDim2.new(0, 242, 0, 54)
messageSpam.Style = Enum.ButtonStyle.RobloxRoundButton
messageSpam.Font = Enum.Font.SciFi
messageSpam.FontSize = Enum.FontSize.Size24
messageSpam.Text = "Chat Spam: OFF"
messageSpam.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
messageSpam.TextSize = 19

messageText.Name = "messageText"
messageText.Parent = serverframe
messageText.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
messageText.BackgroundTransparency = 0.30000001192093
messageText.BorderColor3 = Color3.new(1, 1, 1)
messageText.Position = UDim2.new(0, 103, 0, 32)
messageText.Size = UDim2.new(0, 252, 0, 34)
messageText.Font = Enum.Font.SciFi
messageText.FontSize = Enum.FontSize.Size24
messageText.Text = "{Tripp v1}"
messageText.TextColor3 = Color3.new(0.854902, 0.854902, 0.854902)
messageText.TextSize = 20

local opening = false
local closing = false
local openmem = 1

wait(0.1)
introframe:TweenSize(UDim2.new(0, 190, 0, 160), 'Out', 'Bounce', 1, false)
wait(0.8)
for i = 1,0,-.1 do
wait()
txtcreator.TextTransparency = i
txtcreatorRED.TextTransparency = i
txtcreatorWHITE.TextTransparency = i
end
wait(1.8)
for i = 0,1,.1 do
wait()
txtcreator.TextTransparency = i
txtcreatorRED.TextTransparency = i
txtcreatorWHITE.TextTransparency = i
end
introframe:TweenSize(UDim2.new(0,0,0,0), 'Out', 'Quad', 0.5, false)
introframe.Active = false
wait(.5)
introframe.BackgroundTransparency = 1
wait(.2)
introframe:Destroy()
opening = true
mainframe:TweenPosition(UDim2.new(0.5, -229, 0.5, -146), 'Out', 'Elastic', 1, false)

wait(.4)
btnmods:TweenPosition(UDim2.new(0, -122, 0, 40), 'Out', 'Elastic', 1, false)
wait()
btnspawning:TweenPosition(UDim2.new(0, -122, 0, 90), 'Out', 'Elastic', 1, false)
wait()
btnplayers:TweenPosition(UDim2.new(0, -122, 0, 140), 'Out', 'Elastic', 1, false)
wait()
btnvehicles:TweenPosition(UDim2.new(0, -122, 0, 190), 'Out', 'Elastic', 1, false)
wait()
btnserver:TweenPosition(UDim2.new(0, -122, 0, 240), 'Out', 'Elastic', 1, false)
opening = false

wait(2)
mainframe.Active = true
mainframe.Draggable = true

function open()
	btnmods.Visible = true
	btnspawning.Visible = true
	btnplayers.Visible = true
	btnvehicles.Visible = true
	btnserver.Visible = true

	opening = true
	openclose.TextSize = 75
	openclose.Text = "-"
	mainframe:TweenSize(UDim2.new(0, 457, 0, 292), 'Out', 'Quad', 0.5, false)
	dragbarBACKGROUND:TweenSize(UDim2.new(0, 457, 0, 34), 'Out', 'Quad', 0.5, false)
	dragbarRED:TweenSize(UDim2.new(0, 457, 0, 19), 'Out', 'Quad', 0.5, false)
	dragbarWHITE:TweenSize(UDim2.new(0, 457, 0, 19), 'Out', 'Quad', 0.5, false)
	openclose:TweenPosition(UDim2.new(0, 414, 0, 0), 'Out', 'Quad', 0.5, false)
	
	btnmods:TweenPosition(UDim2.new(0, -122, 0, 40), 'Out', 'Quad', 0.8, false)
	wait()
	btnspawning:TweenPosition(UDim2.new(0, -122, 0, 90), 'Out', 'Quad', 0.8, false)
	wait()
	btnplayers:TweenPosition(UDim2.new(0, -122, 0, 140), 'Out', 'Quad', 0.8, false)
	wait()
	btnvehicles:TweenPosition(UDim2.new(0, -122, 0, 190), 'Out', 'Quad', 0.8, false)
	wait()
	btnserver:TweenPosition(UDim2.new(0, -122, 0, 240), 'Out', 'Quad', 0.8, false)
	wait()

	if openmem == 1 then
		modframe.Visible = true
	elseif openmem == 2 then
		spawningframe.Visible = true
	elseif openmem == 3 then
		playersframe.Visible = true
	elseif openmem == 4 then
		vehiclesframe.Visible = true
	elseif openmem == 5 then
		serverframe.Visible = true
	end	
	opening = false
end

function close()
	openclose.TextSize = 55
	openclose.Text = "+"
	mainframe:TweenSize(UDim2.new(0, 139, 0, 33), 'Out', 'Quad', 0.5, false)
	dragbarBACKGROUND:TweenSize(UDim2.new(0, 139, 0, 34), 'Out', 'Quad', 0.5, false)
	dragbarRED:TweenSize(UDim2.new(0, 139, 0, 19), 'Out', 'Quad', 0.5, false)
	dragbarWHITE:TweenSize(UDim2.new(0, 139, 0, 19), 'Out', 'Quad', 0.5, false)
	openclose:TweenPosition(UDim2.new(0, 96, 0, 3), 'Out', 'Quad', 0.5, false)
	
	modframe.Visible = false
	spawningframe.Visible = false
	playersframe.Visible = false
	vehiclesframe.Visible = false
	serverframe.Visible = false
	
	btnmods:TweenPosition(UDim2.new(0, -2000, 0, 40), 'Out', 'Quad', 0.8, false)
	wait()
	btnspawning:TweenPosition(UDim2.new(0, -2000, 0, 90), 'Out', 'Quad', 0.8, false)
	wait()
	btnplayers:TweenPosition(UDim2.new(0, -2000, 0, 140), 'Out', 'Quad', 0.8, false)
	wait()
	btnvehicles:TweenPosition(UDim2.new(0, -2000, 0, 190), 'Out', 'Quad', 0.8, false)
	wait()
	btnserver:TweenPosition(UDim2.new(0, -2000, 0, 240), 'Out', 'Quad', 0.8, false)
	wait(1)
	btnmods.Visible = false
	btnspawning.Visible = false
	btnplayers.Visible = false
	btnvehicles.Visible = false
	btnserver.Visible = false
	closing = false
end

openclose.MouseButton1Click:connect(function()
	if openclose.Text == "-" and opening ~= true then
		closing = true
		close()
	elseif openclose.Text == "+" and closing ~= true then
		opening = true
		open()
	end
end)

btnmods.MouseButton1Click:connect(function()
	openmem = 1
	btnmods.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
	btnspawning.TextColor3 = Color3.new(0.839216, 0, 0)
	btnplayers.TextColor3 = Color3.new(0.839216, 0, 0)
	btnvehicles.TextColor3 = Color3.new(0.839216, 0, 0)
	btnserver.TextColor3 = Color3.new(0.839216, 0, 0)
	modframe.Visible = true
	spawningframe.Visible = false
	playersframe.Visible = false
	vehiclesframe.Visible = false
	serverframe.Visible = false
end)

btnspawning.MouseButton1Click:connect(function()
	openmem = 2
	btnmods.TextColor3 = Color3.new(0.839216, 0, 0)
	btnspawning.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
	btnplayers.TextColor3 = Color3.new(0.839216, 0, 0)
	btnvehicles.TextColor3 = Color3.new(0.839216, 0, 0)
	btnserver.TextColor3 = Color3.new(0.839216, 0, 0)
	modframe.Visible = false
	spawningframe.Visible = true
	playersframe.Visible = false
	vehiclesframe.Visible = false
	serverframe.Visible = false
end)

btnplayers.MouseButton1Click:connect(function()
	openmem = 3
	btnmods.TextColor3 = Color3.new(0.839216, 0, 0)
	btnspawning.TextColor3 = Color3.new(0.839216, 0, 0)
	btnplayers.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
	btnvehicles.TextColor3 = Color3.new(0.839216, 0, 0)
	btnserver.TextColor3 = Color3.new(0.839216, 0, 0)
	modframe.Visible = false
	spawningframe.Visible = false
	playersframe.Visible = true
	vehiclesframe.Visible = false
	serverframe.Visible = false
end)

btnvehicles.MouseButton1Click:connect(function()
	openmem = 4
	btnmods.TextColor3 = Color3.new(0.839216, 0, 0)
	btnspawning.TextColor3 = Color3.new(0.839216, 0, 0)
	btnplayers.TextColor3 = Color3.new(0.839216, 0, 0)
	btnvehicles.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
	btnserver.TextColor3 = Color3.new(0.839216, 0, 0)
	modframe.Visible = false
	spawningframe.Visible = false
	playersframe.Visible = false
	vehiclesframe.Visible = true
	serverframe.Visible = false
end)

btnserver.MouseButton1Click:connect(function()
	openmem = 5
	btnmods.TextColor3 = Color3.new(0.839216, 0, 0)
	btnspawning.TextColor3 = Color3.new(0.839216, 0, 0)
	btnplayers.TextColor3 = Color3.new(0.839216, 0, 0)
	btnvehicles.TextColor3 = Color3.new(0.839216, 0, 0)
	btnserver.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
	modframe.Visible = false
	spawningframe.Visible = false
	playersframe.Visible = false
	vehiclesframe.Visible = false
	serverframe.Visible = true
end)

--Maddness Begins
function getNextOpenSlot()
	for L_96_forvar1 = 1, 20 do
		if not L_2_.playerstats.slots["slot"..L_96_forvar1]:FindFirstChild("ObjectID") then
			return L_96_forvar1
		end
	end
end;

function getItemID(L_97_arg1)
	if game.Lighting:FindFirstChild(L_97_arg1) then
		local L_98_ = game.Lighting:FindFirstChild(L_97_arg1).ObjectID.Value;
		return L_98_
	else
		return nil
	end
end;

function findItemFromPlayer(L_99_arg1)
	if getItemID(L_99_arg1) then
		for L_100_forvar1, L_101_forvar2 in pairs(game.Players:GetPlayers()) do
			for L_102_forvar1 = 1, 20 do
				local L_103_ = L_101_forvar2.playerstats.slots["slot"..L_102_forvar1]
				if L_103_:FindFirstChild("ObjectID") then
					if L_103_.ObjectID.Value == getItemID(L_99_arg1) then
						return L_103_
					end
				end;
				local L_104_ = L_2_.playerstats.slots.slotprimary;
				local L_105_ = L_2_.playerstats.slots.slotsecondary;
				if L_104_:FindFirstChild("ObjectID") and L_104_.ObjectID == getItemID(L_99_arg1) then
					return L_104_
				elseif L_105_:FindFirstChild("ObjectID") and L_105_.ObjectID == getItemID(L_99_arg1) then
					return L_105_
				else
					return nil
				end
			end
		end
	end
end;

--Mods

ItemCodes = {
["AK-104"] = 1037, ["WindscreenGlass"] = 184, ["WaterBottle"] = 209, ["Watch"] = 3001, ["VehicleJack"] = 3016,
["Vegetables"] = 214, ["VS50"] = 256, ["Uzi"] = 2015, ["Ushanka"] = 7014, ["USP45Ammo"] = 26, ["USP45"] = 2007,
["Twinkies"] = 212, ["Tuna"] = 4, ["TrinityBeret"] = 7015, ["TomatoSoup"] = 215, ["TM46"] = 257,
["TEC9Ammo32"] = 57, ["TEC9Ammo20"] = 56, ["TEC9Ammo"] = 20, ["TEC-9"] = 2005, ["SurvivalPackTan"] = 4009,
["SurvivalPackGrey"] = 4010, ["SurvivalPackGreen"] = 4011, ["SurvivalPackBrown"] = 4012, ["Suppressor9"] = 9007,
["Suppressor762"] = 9010, ["Suppressor556"] = 9009, ["Suppressor545"] = 9011, ["Suppressor45"] = 9008,
["Spam"] = 6, ["SodaSprite"] = 205, ["SodaRoot"] = 207, ["SodaPepsi"] = 7, ["SodaPepper"] = 9,
["SodaMoxie"] = 208, ["SodaDew"] = 202, ["SodaCrush"] = 201, ["SodaCoke"] = 8, ["ShotgunAmmo"] = 18,
["Shotgun"] = 1002, ["ShadesGrey"] = 8005, ["ShadesBlack"] = 8001, ["ScrapMetal"] = 183, ["Sabre"] = 3014,
["SUSAT"] = 9014, ["STANAGAmmo50"] = 52, ["STANAGAmmo30"] = 51, ["STANAGAmmo100"] = 53, ["SKSAmmo"] = 45,
["SKS"] = 1018, ["SCAR-L"] = 1022, ["RoadFlare"] = 251, ["RevolverAmmo"] = 25, ["Revolver"] = 2006,
["ReinforcedWheel"] = 189, ["Reflex"] = 9003, ["RedChemlight"] = 3020, ["RedBeret"] = 7013, ["RawMeat"] = 220,
["Ranger"] = 7003, ["RamboClothingTop"] = 5003, ["RamboClothingBottom"] = 6003, ["Radio"] = 3018,
["RPK"] = 1034, ["Pringles"] = 204, ["PilotGreen"] = 7010, ["PilotBlack"] = 7009, ["Pasta"] = 5,
["Painkillers"] = 12, ["PaddedClothingTop"] = 5002, ["PaddedClothingBottom"] = 6002, ["PPSHAmmo"] = 46,
["PPSH"] = 1019, ["PP19Ammo64"] = 58, ["SmallCrate"] = 38, ["OmniLight"] = 3015, ["OTs-14"] = 1036,
["NagantAmmo"] = 17, ["Mosin-Nagant"] = 1001, ["Model459Ammo14"] = 59, ["Model 459"] = 2013, ["Mk48Ammo"] = 23,
["Mk 48"] = 1005, ["Mk 23"] = 2018, ["Mk 17"] = 1031, ["MilitaryPackGrime"] = 4013, ["MilitaryPackGrey"] = 4015,
["MilitaryPackGreen"] = 4014, ["MilitaryPackBlack"] = 4016, ["MaverickAmmo"] = 27, ["Maverick"] = 1010,
["Material6"] = 36, ["Material5"] = 35, ["Material4"] = 34, ["Material3"] = 33, ["Material2"] = 32,
["Material1"] = 31, ["Matches"] = 3005, ["MaskSpecOps"] = 8009, ["MaskPhantom"] = 8013, ["MaskMime"] = 8008,
["MaskMercenary"] = 8007, ["MaskHockey"] = 8012, ["Map"] = 3003, ["MakarovAmmo"] = 16, ["Makarov"] = 2003,
["MRE"] = 10, ["MP5Ammo"] = 29, ["MP5"] = 1012, ["M9Ammo32"] = 55, ["M9Ammo17"] = 54, ["M9Ammo"] = 19,
["M93R"] = 2016, ["M9"] = 2004, ["M870Ammo"] = 28, ["M870"] = 1011, ["M4A1"] = 1004, -- ["M4A1Ammo"] = 22,
["M3Ammo30"] = 60, ["M3"] = 1028, ["M249Ammo100"] = 61, ["M249"] = 1024, ["M1911Ammo"] = 15, ["M1911"] = 2002,
["M14"] = 1016, ["M1014"] = 1027, ["M14Ammo50"] = 64, ["M14Ammo30"] = 63, ["M14Ammo20"] = 62, 
["M1 Garand"] = 1006, ["Lemonade"] = 206, ["Laser"] = 9006, ["Kobra"] = 9004, ["Knife"] = 3013,
["KethArmorTop"] = 5011, ["KethArmorBottom"] = 6011, ["JerryCanEmpty"] = 186, ["JerryCan"] = 185,
["HornRimmed"] = 8006, ["Holo"] = 9002, ["HikingPackWhite"] = 4006, ["HikingPackOrange"] = 4005,
["HikingPackBrown"] = 4008, ["HikingPackBlue"] = 4007, ["Hatchet"] = 3011, ["HK417"] = 1033, ["HK21"] = 1032,
["GusArmorTop"] = 5010, ["GusArmorBottom"] = 6010, ["Grip"] = 9005, ["GreenChemlight"] = 3021,
["GarandAmmo"] = 24, ["GPS"] = 3006, ["G37"] = 2017, ["G36K"] = 1023, ["G3"] = 1030, -- ["G18Ammo"] = 41,
["G18"] = 2011, ["FuelTank"] = 182, ["Floodlight"] = 37, ["FlashlightSurvival"] = 3009,
["FlashlightOld"] = 3008, ["FlashlightMilitary"] = 3010, ["FlashlightAttachment"] = 9012, ["Firewood"] = 250,
["Firefighter"] = 8004, ["FedorovAmmo"] = 44, ["Fedorov"] = 1017, ["Fedora"] = 7004, ["FannyPackWhite"] = 4002,
["FannyPackTan"] = 4001, ["FannyPackPurple"] = 4004, ["FannyPackBlue"] = 4003, ["FAL"] = 1029,
["Eyepatch"] = 8003, ["Entrencher"] = 3004, ["EngineParts"] = 181, ["EnfieldAmmo"] = 42, ["Enfield"] = 1015,
["Detonator"] = 3017, ["Crowbar"] = 3012, ["CowlGreen"] = 7002, ["CowlBlack"] = 7001, ["Cowboy"] = 7012,
["CookedMeat"] = 221, ["Compass"] = 3002, ["ClothingTopFalse"] = 5000, ["ClothingBottomFalse"] = 6000,
["CivilianClothingTop"] = 5001, ["CivilianClothingBottom"] = 6001, ["ChocolateBar"] = 211, ["ChipsAhoy"] = 213,
["ChickenSoup"] = 216, ["CheezIts"] = 203, ["CarWheel"] = 180, ["CamoWoodlandsTop"] = 5007,
["CamoWoodlandsBottom"] = 6007, ["CamoUrbanTop"] = 5005, ["CamoUrbanBottom"] = 6005, ["CamoSpecialTop"] = 5009,
["CamoSpecialBottom"] = 6009, ["CamoSnowTop"] = 5008, ["CamoSnowBottom"] = 6008, ["CamoJungleTop"] = 5006,
["CamoJungleBottom"] = 6006, ["CamoDesertTop"] = 5004, ["CamoDesertBottom"] = 6004, ["CZ75Ammo"] = 40,
["CZ75"] = 2010, ["CCO"] = 9001, ["CBJ-MS"] = 2014, ["C4"] = 255, ["BrimmedBrown"] = 7007,
["BrimmedBlack"] = 7008, ["Bowler"] = 7005, ["BlueChemlight"] = 3022, ["BloodBag"] = 11, ["Binoculars"] = 3007,
["Biker"] = 7006, ["BeefStew"] = 217, ["BeefJerky"] = 210, ["Beans"] = 3, ["Beanie"] = 7011,
["BandanaSkull"] = 8014, ["BandanaRenegade"] = 8011, ["BandanaRed"] = 8010, ["BandanaBlack"] = 8002,
["BallisticUrban"] = 7018, ["BallisticSpecOps"] = 7019, ["BallisticJungle"] = 7017, ["BallisticGlass"] = 187,
["BallisticDesert"] = 7016, ["Auto-5"] = 1025, ["ArmorPlates"] = 188, ["AN-94"] = 1040, ["AKS-74U"] = 1041,
["AKM"] = 1038, ["AKAmmo75"] = 67, ["AKAmmo45"] = 66, ["AKAmmo30"] = 65, ["AK47Ammo75"] = 50,
["AK47Ammo40"] = 49, ["AK47Ammo30"] = 48, ["AK-74"] = 1039, ["AK-47"] = 1003, ["AK-12"] = 1035,
["ACOG"] = 9013, ["LargeCrate"] = 39, ["PP-19"] = 1026
}

function table_invert(t)
  local s={}
  for k,v in pairs(t) do
    s[v]=k
  end
  return s
end

local lol = table_invert(ItemCodes)

ZeroNums = {"a", "B", "i", "P", "Y", "S"}
ActualNums = {"A", "C", "d", "g", "L", "p", "s", "T", "Z"}
function FindMultipiler(Letter)
for z = 1, #ActualNums do
if ActualNums[z] == Letter then
return z
end
end
return "0"
end

function Deobfuscate(String)
local newval = ""
for d = 1, 10 do
local mult = FindMultipiler(string.sub(String, d, d))
newval = newval .. mult
end
newval = tonumber(newval)
return newval
end

modTeleport.MouseButton1Click:connect(function()
	local plr = game.Players.LocalPlayer
	hum = plr.Character.HumanoidRootPart
	mouse = plr:GetMouse()
	mouse.KeyDown:connect(function(key)
	if key == "e" then
	if mouse.Target then
	hum.CFrame = mouse.Hit+Vector3.new(0,5,0)
	end
	end
	end)
end)

modFog.MouseButton1Click:connect(function()
	game.Lighting.FogEnd = 100000
	game.Lighting.FogStart = 100000
end)

local L_54_ = Instance.new("BoolValue", Tripp)
L_54_.Name = "ESPOn"
L_54_.Value = false

modESP.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        if v ~= game.Players.LocalPlayer.Character.Torso then    

    local base = Instance.new('BillboardGui', workspace.Camera)
    local esP = Instance.new('Frame', base)
    base.AlwaysOnTop = true
    base.Enabled = true
    base.Size = UDim2.new(4.5,0,6,0)
    base.Name = 'ESP'
    base.Adornee = v.Character.Torso
    base.StudsOffset = Vector3.new(0, -0.6, 0)
    esP.BackgroundColor3 = Color3.new(75, 0, 0)
    esP.BackgroundTransparency = 0.8
    esP.BorderColor3 = Color3.new(0,0,0)
    esP.BorderSizePixel = 1
    esP.Size = UDim2.new(1,0,1,0)
    local name = Instance.new('TextLabel',base)
    name.Size = UDim2.new(1,0,1,0)
    name.BackgroundTransparency = 1
    name.Position = UDim2.new(0,0,0,0)
    name.Text = v.Name
    name.TextScaled = true
        name.TextColor3 = Color3.new(255,255,255)
    name.TextXAlignment = 'Center'
    name.TextYAlignment = 'Top'
        name.Font = 'Highway'
        name.Position = UDim2.new(0,0,0,-100)
end        
    end
end
end)

modCorpse.MouseButton1Click:connect(function()
	for _, corpse in pairs(workspace:GetChildren()) do
		if corpse.Name == "Corpse" then
		corpse:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
		end
	end
end)

modRecoil.MouseButton1Click:connect(function()
	local prim = game.Players.LocalPlayer.playerstats.slots.slotprimary.ObjectID.Value
	local primid = Deobfuscate(prim)
	local itemname = lol[primid]
	game.Players.LocalPlayer.Backpack[itemname].Stats.Recoil.Value = "aaaaaaaaaA"
end)

modAimbot.MouseButton1Click:connect(function()
	ENABLED = false
PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera
_G.FREE_FOR_ALL = true
_G.BIND = 50
_G.AIM_AT = 'Head' 
local player = game.Players.LocalPlayer
local track = false
		
function GetNearestPlayerToMouse()
local PLAYERS      = {}
local PLAYER_HOLD  = {}
local DISTANCES    = {}
for i, v in pairs(game.Players:GetPlayers()) do
if v ~= PLAYER then
table.insert(PLAYERS, v)
end
end
for i, v in pairs(PLAYERS) do
if _G.FREE_FOR_ALL == false then
if v and (v.Character) ~= nil and v.TeamColor ~= PLAYER.TeamColor then
local AIM = v.Character:FindFirstChild(_G.AIM_AT)
if AIM ~= nil then
local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
local DIFF                     = math.floor((POS - AIM.Position).magnitude)
PLAYER_HOLD[v.Name .. i]       = {}
PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
PLAYER_HOLD[v.Name .. i].plr   = v
PLAYER_HOLD[v.Name .. i].diff  = DIFF
table.insert(DISTANCES, DIFF)
end
end
elseif _G.FREE_FOR_ALL == true then
local AIM = v.Character:FindFirstChild(_G.AIM_AT)
if AIM ~= nil then
local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
local DIFF                     = math.floor((POS - AIM.Position).magnitude)
PLAYER_HOLD[v.Name .. i]       = {}
PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
PLAYER_HOLD[v.Name .. i].plr   = v
PLAYER_HOLD[v.Name .. i].diff  = DIFF
table.insert(DISTANCES, DIFF)
end
end
end
	
if unpack(DISTANCES) == nil then
return false
end
	
local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
if L_DISTANCE > 20 then
return false
end
	
for i, v in pairs(PLAYER_HOLD) do
if v.diff == L_DISTANCE then
return v.plr
end
	end
	return false
	end
	
	local TRACK = false
	
	
MOUSE.KeyDown:connect(function(KEY)
KEY = KEY:lower():byte()
if KEY == _G.BIND then
ENABLED = true
end
end)
MOUSE.KeyUp:connect(function(KEY)
KEY = KEY:lower():byte()
if KEY == _G.BIND then
ENABLED = false
end
end)
	
game:GetService('RunService').RenderStepped:connect(function()
if ENABLED then
local TARGET = GetNearestPlayerToMouse()
if TARGET.Name == "rsxk20" then
else

if (TARGET ~= false) then
local AIM = TARGET.Character:FindFirstChild(_G.AIM_AT)
if AIM then
CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
end
end
end
end
end)
end)

local C4On = false
local Plr = game.Players.LocalPlayer
local material = game.Lighting.Materials.C4Placed
modC4.MouseButton1Click:connect(function()
	local pos = Plr.Character.Torso.Position
if C4On == false then
C4On = true
modC4.Text = "C4 Walk: ON"
modC4.TextColor3 = Color3.new(0, 0.486275, 0.054902)
repeat
game.Workspace.Remote.PlaceC4:FireServer(material, pos, true)
wait()
until C4On == false
elseif C4On == true then
C4On = false
modC4.Text = "C4 Walk: OFF"
modC4.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
end
end)

local Stamina = true
modStamina.MouseButton1Click:connect(function()
	Stamina = true
	while wait() do
		if Stamina == true then
			game.Players.LocalPlayer.Backpack.GlobalFunctions.Stamina.Value = 100
		end
	end
end)

modHunger.MouseButton1Click:connect(function()
plr = game.Players.LocalPlayer.playerstats
game.Players.LocalPlayer.playerstats.Thirst.Value = math.huge
game.Players.LocalPlayer.playerstats.Hunger.Value = math.huge
end)

modGod.MouseButton1Click:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
end)

local PlayerSelect = Instance.new("TextBox")

local esp = false
local player = game.Players.LocalPlayer
modESP2.MouseButton1Click:connect(function()
	if esp == false then -- forgot esp lol
esp = true
modESP2.Text = "Name ESP: ON"
modESP2.TextColor3 = Color3.new(0, 0.486275, 0.054902)
for get,nplayer in ipairs(game.Players:GetPlayers()) do
if nplayer.Name == player.Name then
else
local BGUI = Instance.new('BillboardGui', workspace.CurrentCamera)
BGUI.Name = 'BGui'
local BGUIFrame = Instance.new('Frame', BGUI)
BGUIFrame.Name = 'BGUIFrame'
local BGUIName = Instance.new('TextLabel', BGUIFrame)
BGUIName.Name = 'BGUIName'
BGUI.AlwaysOnTop = true
BGUI.Enabled = true
BGUI.Size = UDim2.new(0,60,0,15)
BGUI.Adornee = nplayer.Character.Head
BGUIFrame.BackgroundTransparency = 1
BGUIFrame.Size = UDim2.new(1,0,1,0)
BGUIName.Size = UDim2.new(1,0,1,0)
BGUIName.BackgroundColor3 = Color3.new(0, 0.666667, 1)
BGUIName.Text = nplayer.Name
BGUIName.TextColor3 = Color3.new(255, 255,255)
BGUIName.TextStrokeColor3 = Color3.new(0, 0, 0)
BGUIName.TextStrokeTransparency = 0
BGUIName.Font = "Cartoon"
BGUIName.TextScaled = true
BGUIName.TextWrapped = true
BGUIName.MouseEnter:connect(function()
PlayerSelect.Text = game.Players.LocalPlayer.Name
BGUIName.MouseLeave:connect(function()
PlayerSelect.Text = ""
end)
end)
end
local nvGUI = Instance.new('ScreenGui', player.PlayerGui)
nvGUI.Name = "NVG"
local nvMAIN = Instance.new('TextLabel', nvGUI)
nvMAIN.Name = "Main"
nvMAIN.BackgroundTransparency = 1
for i,v in pairs(game.Players:GetChildren()) do
if v and v.Character and not (v.Name == '' .. player.Name) then
for i,v in pairs(v.Character:GetChildren()) do
if v:IsA('BasePart') then
local nvBox = Instance.new('SelectionBox', nvMAIN)
nvBox.Adornee = v
nvBox.Color = BrickColor.new('Blue')
end
end
end
end
end
elseif esp == true then
esp = false
modESP2.Text = "Name ESP: OFF"
modESP2.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
for i,v in ipairs(game.Workspace.CurrentCamera:GetChildren()) do
if v.Name == 'BGui' then
v:Destroy()
end
end
for i,v in pairs(player.PlayerGui:GetChildren()) do
if v.Name == "NVG" and v:IsA('ScreenGui') then
v:Destroy()
end
end
end
end)

modNoclip.MouseButton1Click:connect(function()
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "j" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end)

local vehiclepos = L_2_.Character.HumanoidRootPart.Position
vehicleTeleport.MouseButton1Click:connect(function()
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vehiclepos+Vector3.new(0,15,0))
end)

--Spawning
function spawnItem(L_106_, amount)
	for xvar1 = 1, amount do 
		local L_108_ = game.Lighting.LootDrops:FindFirstChild(L_106_)
		local L_109_ = L_108_:Clone()
		L_109_.Parent = workspace;
		L_109_:SetPrimaryPartCFrame(CFrame.new(L_2_.Character.Head.Position + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5))))
	end
end

spawnFalKit.MouseButton1Click:connect(function()
	spawnItem("FAL", 1)
	spawnItem("M14Ammo50", 5)
	spawnItem("ACOG", 1)
	spawnItem("Suppressor762", 1)
	spawnItem("Grip", 1)
	spawnItem("MilitaryPackBlack", 1)
end)

spawnNavigation.MouseButton1Click:connect(function()
	spawnItem("Map", 1)
	spawnItem("GPS", 1)
	spawnItem("Compass", 1)
end)

btnSpawn.MouseButton1Click:connect(function()
	local L_106_ = txtboxSearch.Text;
	if workspace.SpawnLoot:FindFirstChild(L_106_) then
		workspace.Remote.GrabItem:FireServer(L_2_.playerstats.slots["slot"..getNextOpenSlot()], workspace.SpawnLoot:FindFirstChild(L_106_), workspace.SpawnLoot:FindFirstChild(L_106_).ObjectID)
	elseif workspace.DropLoot:FindFirstChild(L_106_) then
		workspace.Remote.GrabItem:FireServer(L_2_.playerstats.slots["slot"..getNextOpenSlot()], workspace.DropLoot:FindFirstChild(L_106_), workspace.DropLoot:FindFirstChild(L_106_).ObjectID)
	elseif findItemFromPlayer(L_106_) then
		local L_107_ = findItemFromPlayer(L_106_)
		workspace.Remote.DropItem(L_107_, L_107_.ObjectID.Value)
	else
		local L_108_ = game.Lighting.LootDrops:FindFirstChild(L_106_)
		if not L_108_ then
			btnSpawn.Text = "Error"
			wait(2)
			btnSpawn.Text = "Spawn"
			return
		end;
		local L_109_ = L_108_:Clone()
		L_109_.Parent = workspace;
		L_109_:SetPrimaryPartCFrame(CFrame.new(L_2_.Character.Head.Position + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5))))
	end
end)

function alphabetize(L_110_arg1, L_111_arg2)
	local L_112_ = L_110_arg1.Name:lower()
	local L_113_ = L_112_:sub(1, 1):byte()
	local L_114_ = L_111_arg2.Name:lower()
	local L_115_ = L_114_:sub(1, 1):byte()
	if L_113_ < L_115_ then
		return true
	else
		return false
	end
end;

local L_56_ = game.Lighting.LootDrops:GetChildren()
local L_57_ = {}
for L_84_forvar1 = 1, #L_56_ do
	if L_56_[L_84_forvar1]:IsA("Model") then
		table.insert(L_57_, L_56_[L_84_forvar1].Name)
	end
end;

function getMatches(L_85_arg1)
	local L_86_ = {}
	for L_87_forvar1 = 1, #L_56_ do
		local L_88_ = L_56_[L_87_forvar1].Name:lower()
		if L_88_:find(L_85_arg1:lower()) then
			table.insert(L_86_, L_56_[L_87_forvar1])
		end
	end;
	table.sort(L_86_, alphabetize)
	return L_86_
end;

txtboxSearch.Changed:connect(function()
	for L_91_forvar1, L_92_forvar2 in ipairs(scrollingItems:GetChildren()) do
		L_92_forvar2:Destroy()
	end;
	local L_89_ = txtboxSearch.Text;
	local L_90_ = getMatches(L_89_)
	if L_90_ then
		scrollingItems.Visible = true
		scrollingItems.CanvasSize = UDim2.new(0, 225, 0, (#L_90_ * 25) - 25)
		for L_93_forvar1 = 1, #L_90_ do
			local L_94_ = L_90_[L_93_forvar1].Name;
			local L_95_ = Instance.new("TextButton", scrollingItems)
			L_95_.Font = Enum.Font.ArialBold;
			L_95_.FontSize = Enum.FontSize.Size14;
			L_95_.Style = Enum.ButtonStyle.RobloxRoundButton;
			L_95_.Text = L_94_;
			L_95_.TextColor3 = Color3.new(255, 255, 255)
			L_95_.TextXAlignment = Enum.TextXAlignment.Left;
			L_95_.Name = L_94_;
			L_95_.Position = UDim2.new(0, 0, 0, (L_93_forvar1 * 25) - 25)
			L_95_.Size = UDim2.new(0, 210, 0, 25)
			L_95_.MouseButton1Click:connect(function()
				txtboxSearch.Text = L_95_.Text
			end)
		end
	end;
	if not L_90_ then
		scrollingItems.Visible = false
	end
end)

wait(1)
txtboxSearch.Text = "{SEARCH ITEM}"

--Players
local globalplr = "nil"
local spec = false

local L_58_ = Instance.new("ObjectValue", frmPlayers)
L_58_.Name = "SelectedPlayer"
local L_59_ = game.Players:GetPlayers()
table.sort(L_59_, alphabetize)
for L_116_forvar1 = 1, #L_59_ do
	local L_117_ = L_59_[L_116_forvar1]
	local L_118_ = Instance.new("TextButton", scrollingPlayers)
	L_118_.Name = L_117_.Name;
	L_118_.Text = L_117_.Name;
	L_118_.Size = UDim2.new(0, 285, 0, 25)
	L_118_.Font = Enum.Font.ArialBold;
	L_118_.FontSize = Enum.FontSize.Size14;
	L_118_.TextColor3 = Color3.new(255, 255, 255)
	L_118_.Style = Enum.ButtonStyle.RobloxRoundButton;
	L_118_.Position = UDim2.new(0, 0, 0, (L_116_forvar1 * 25) - 25)
	scrollingPlayers.CanvasSize = UDim2.new(0, 0, 0, (#L_59_ * 25) - 25)
	L_118_.MouseButton1Click:connect(function()
		L_58_.Value = L_117_;
		labelSelectedPlayers.Text = "Selected: "..L_117_.Name
		globalplr = L_117_.Name
	if spec == true then
		print(globalplr)
		game.Workspace.CurrentCamera.CameraSubject = game.Players[globalplr].Character.Humanoid
	else
		
	end
	end)
end;

function update()
	for L_120_forvar1, L_121_forvar2 in ipairs(scrollingPlayers:GetChildren()) do
		if L_121_forvar2:IsA("TextButton") then
			L_121_forvar2:Destroy()
		end
	end;
	local L_119_ = game.Players:GetPlayers()
	table.sort(L_119_, alphabetize)
	for L_122_forvar1 = 1, #L_119_ do
		local L_123_ = L_119_[L_122_forvar1]
		local L_124_ = Instance.new("TextButton", scrollingPlayers)
		L_124_.Text = L_123_.Name;
		L_124_.Size = UDim2.new(0, 285, 0, 25)
		L_124_.Font = Enum.Font.ArialBold;
		L_124_.FontSize = Enum.FontSize.Size14;
		L_124_.TextColor3 = Color3.new(255, 255, 255)
		L_124_.Style = Enum.ButtonStyle.RobloxRoundButton;
		L_124_.Position = UDim2.new(0, 0, 0, (L_122_forvar1 * 25) - 25)
		scrollingPlayers.CanvasSize = UDim2.new(0, 0, 0, (#L_119_ * 25) - 25)
		L_124_.MouseButton1Click:connect(function()
			L_58_.Value = L_123_;
			labelSelectedPlayers.Text = "Selected: "..L_123_.Name
			globalplr = L_123_.Name
	if spec == true then
		print(globalplr)
		game.Workspace.CurrentCamera.CameraSubject = game.Players[globalplr].Character.Humanoid
	else
		
	end
		end)
	end
end;

function getGun()
	local L_66_ = L_2_.Backpack:GetChildren()
	for L_67_forvar1 = 1, #L_66_ do
		if L_66_[L_67_forvar1]:IsA("Model") and L_66_[L_67_forvar1]:FindFirstChild("Shooter") then
			return L_66_[L_67_forvar1]
		end
	end;
	return nil
end;

playerKillAll.MouseButton1Click:connect(function()
	local L_68_ = getGun()
	if not L_68_ then
		playerKillAll.Text = "Error"
		wait()
		playerKillAll.Text = "Kill All"
		return
	end;
	for L_69_forvar1, L_70_forvar2 in ipairs(game.Players:GetPlayers()) do
		if L_68_ and L_70_forvar2.Character and L_70_forvar2 ~= L_2_ then
			for L_71_forvar1 = 1, 6 do
				workspace.Remote.DoHitLogic:FireServer(L_68_, L_70_forvar2.Character.Head)
			end
		end
	end
end)

playerStealAllG.MouseButton1Click:connect(function()
	local L_77_ = game.Players:GetPlayers()
	for L_78_forvar1 = 1, #L_77_ do
		local L_79_ = L_77_[L_78_forvar1]
		if L_79_.playerstats.slots.slotprimary:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_79_.playerstats.slots.slotprimary, L_79_.playerstats.slots.slotprimary.ObjectID)
		end;
		if L_79_.playerstats.slots.slotsecondary:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_79_.playerstats.slots.slotsecondary, L_79_.playerstats.slots.slotsecondary.ObjectID)
		end
	end
end)

playerStealAllI.MouseButton1Click:connect(function()
	local L_72_ = game.Players:GetPlayers()
	for L_73_forvar1 = 1, #L_72_ do
		local L_74_ = L_72_[L_73_forvar1]
		if L_74_ ~= L_2_ then
			for L_75_forvar1 = 1, 20 do
				if L_74_.playerstats.slots:FindFirstChild("slot"..L_75_forvar1):FindFirstChild("ObjectID") then
					workspace.Remote.DropItem:FireServer(L_74_.playerstats.slots:FindFirstChild("slot"..L_75_forvar1), L_74_.playerstats.slots:FindFirstChild("slot"..L_75_forvar1).ObjectID)
				end
			end;
			if L_74_.playerstats.slots.slotprimary:FindFirstChild("ObjectID") then
				workspace.Remote.DropItem:FireServer(L_74_.playerstats.slots.slotprimary, L_74_.playerstats.slots.slotprimary.ObjectID)
			end;
			if L_74_.playerstats.slots.slotsecondary:FindFirstChild("ObjectID") then
				workspace.Remote.DropItem:FireServer(L_74_.playerstats.slots.slotsecondary, L_74_.playerstats.slots.slotsecondary.ObjectID)
			end;
			for L_76_forvar1 = 1, 7 do
				if L_74_.playerstats.utilityslots["slot"..L_76_forvar1]:FindFirstChild("ObjectID") then
					workspace.Remote.DropItem:FireServer(L_74_.playerstats.utilityslots["slot"..L_76_forvar1], L_74_.playerstats.utilityslots["slot"..L_76_forvar1].ObjectID)
				end
			end
		end
	end
end)

game.Players.PlayerAdded:connect(update)
game.Players.PlayerRemoving:connect(update)

playerKill.MouseButton1Click:connect(function()
	local L_125_ = getGun()
	if not L_125_ or not L_58_.Value then
		playerKill.Text = "Error"
		wait(2)
		playerKill.Text = "Kill"
		return
	end;
	for L_126_forvar1 = 1, 10 do
		workspace.Remote.DoHitLogic:FireServer(L_125_, L_58_.Value.Character.Head)
	end
end)

playerStealGuns.MouseButton1Click:connect(function()
	local L_130_ = L_58_.Value;
	if not L_58_.Value then
		playerStealGuns.Text = "Error"
		wait(2)
		playerStealGuns.Text = "Steal Guns"
		return
	end;
	if L_130_.playerstats.slots.slotprimary:FindFirstChild("ObjectID") then
		workspace.Remote.DropItem:FireServer(L_130_.playerstats.slots.slotprimary, L_130_.playerstats.slots.slotprimary.ObjectID)
	end;
	if L_130_.playerstats.slots.slotsecondary:FindFirstChild("ObjectID") then
		workspace.Remote.DropItem:FireServer(L_130_.playerstats.slots.slotsecondary, L_130_.playerstats.slots.slotsecondary.ObjectID)
	end
end)

playerStealItems.MouseButton1Click:connect(function()
	local L_127_ = L_58_.Value;
	if not L_58_.Value then
		playerStealItems.Text = "Error"
		wait(2)
		playerStealItems.Text = "Steal Items"
		return
	end;
	for L_128_forvar1 = 1, 20 do
		if L_127_.playerstats.slots:FindFirstChild("slot"..L_128_forvar1):FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_127_.playerstats.slots:FindFirstChild("slot"..L_128_forvar1), L_127_.playerstats.slots:FindFirstChild("slot"..L_128_forvar1).ObjectID)
		end;
		if L_127_.playerstats.slots.slotprimary:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_127_.playerstats.slots.slotprimary, L_127_.playerstats.slots.slotprimary.ObjectID)
		end;
		if L_127_.playerstats.slots.slotsecondary:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_127_.playerstats.slots.slotsecondary, L_127_.playerstats.slots.slotsecondary.ObjectID)
		end
	end;
	for L_129_forvar1 = 1, 7 do
		if L_127_.playerstats.utilityslots["slot"..L_129_forvar1]:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_127_.playerstats.utilityslots["slot"..L_129_forvar1], L_127_.playerstats.utilityslots["slot"..L_129_forvar1].ObjectID)
		end
	end
end)

playerSpectate.MouseButton1Click:connect(function()
if spec == false then
	spec = true
	playerSpectate.Text = "Spectate: ON"
	playerSpectate.TextColor3 = Color3.new(0, 0.486275, 0.054902)
elseif globalplr == "nil" then
else
	spec = false
	playerSpectate.Text = "Spectate: OFF"
	playerSpectate.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
	game.Workspace.CurrentCamera.CameraSubject = L_2_.Character.Humanoid
end
end)

playerTeleport.MouseButton1Click:connect(function()
if spec == true then
	spec = false
	playerSpectate.Text = "Spectate: OFF"
	playerSpectate.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
	game.Workspace.CurrentCamera.CameraSubject = L_2_.Character.Humanoid
end

o = globalplr
game.Workspace.Remote.AddDamageSelf:FireServer(game.Players.LocalPlayer.Character.Humanoid, math.huge)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[o].Character.HumanoidRootPart.Position)
end)

--Vehicles

local L_60_ = Instance.new("ObjectValue", Tripp)
L_60_.Name = "SelectedVehicle"
function getVehicles()
	local L_163_ = game.Workspace.Vehicles:GetChildren()
	local L_164_ = {}
	for L_165_forvar1 = 1, #L_163_ do
		if L_163_[L_165_forvar1].Name ~= "Holder" and L_163_[L_165_forvar1].Name ~= "VehicleWreck" then
			table.insert(L_164_, L_163_[L_165_forvar1])
		end
	end;
	table.sort(L_164_, alphabetize)
	return L_164_
end;

local L_61_ = getVehicles()
for L_166_forvar1 = 1, #L_61_ do
	local L_167_ = L_61_[L_166_forvar1]
	local L_168_ = Instance.new("TextButton", scrollingVehicles)
	L_168_.Name = L_167_.Name;
	L_168_.Text = L_167_.Name;
	L_168_.Size = UDim2.new(0, 210, 0, 25)
	L_168_.Font = Enum.Font.ArialBold;
	L_168_.FontSize = Enum.FontSize.Size14;
	L_168_.TextColor3 = Color3.new(255, 255, 255)
	L_168_.Style = Enum.ButtonStyle.RobloxRoundButton;
	L_168_.Position = UDim2.new(0, 0, 0, (L_166_forvar1 * 25) - 25)
	scrollingVehicles.CanvasSize = UDim2.new(0, 0, 0, (#L_61_ * 25))
	L_168_.MouseButton1Click:connect(function()
		L_60_.Value = L_167_;
		labelSelectedVehicle.Text = "Selected: "..L_167_.Name
		vehiclepos = L_167_.PrimaryPart.Position
	end)
end;
function updateV()
	for L_170_forvar1, L_171_forvar2 in pairs(scrollingVehicles:GetChildren()) do
		L_171_forvar2:Destroy()
	end;
	local L_169_ = getVehicles()
	for L_172_forvar1 = 1, #L_169_ do
		local L_173_ = L_169_[L_172_forvar1]
		local L_174_ = Instance.new("TextButton", scrollingVehicles)
		L_174_.Name = L_173_.Name;
		L_174_.Text = L_173_.Name;
		L_174_.Size = UDim2.new(0, 210, 0, 25)
		L_174_.Font = Enum.Font.ArialBold;
		L_174_.FontSize = Enum.FontSize.Size14;
		L_174_.TextColor3 = Color3.new(255, 255, 255)
		L_174_.Style = Enum.ButtonStyle.RobloxRoundButton;
		L_174_.Position = UDim2.new(0, 0, 0, (L_172_forvar1 * 25) - 25)
		scrollingVehicles.CanvasSize = UDim2.new(0, 0, 0, (#L_169_ * 25))
		L_174_.MouseButton1Click:connect(function()
			L_60_.Value = L_173_;
			labelSelectedVehicle.Text = "Selected: "..L_173_.Name
			vehiclepos = L_173_.PrimaryPart.Position
		end)
	end
end;

vehicleDestroyAll.MouseButton1Click:connect(function()
	local L_176_ = getVehicles()
	for L_177_forvar1 = 1, #L_176_ do
		local L_178_ = L_60_.Value;
		if L_178_ and L_178_:FindFirstChild("Stats") and L_178_.Name ~= "Bicycle" then
			L_178_.Stats.Engine.Value = 0
		end
	end
end)

vehicleDestroy.MouseButton1Click:connect(function()
	local L_175_ = L_60_.Value;
	if L_175_ and L_175_:FindFirstChild("Stats") and L_175_.Name ~= "Bicycle" then
		L_175_.Stats.Engine.Value = 0
	else
		vehicleDestroy.Text = "Error"
		wait(2)
		vehicleDestroy.Text = "Destroy"
	end
end)

vehicleSetSpeed.MouseButton1Click:connect(function()
	local L_179_ = L_60_.Value;
	if L_179_ and L_179_:FindFirstChild("Stats") and tonumber(txtboxSpeed.Text) then
		L_179_.Stats.MaxSpeed.Value = txtboxSpeed.Text;
		L_179_.Stats.MaxSpeed.Offroad.Value = txtboxSpeed.Text
	else
		vehicleSetSpeed.Text = "Error"
		wait(2)
		vehicleSetSpeed.Text = "SetSpeed"
	end
end)

vehicleESP.MouseButton1Click:connect(function()
		if not L_54_.Value then
		L_54_.Value = true
		vehicleESP.Text = "Car ESP: ON"
		vehicleESP.TextColor3 = Color3.new(0, 0.486275, 0.054902)
		local function L_141_func(L_146_arg1)
			local L_147_ = Instance.new("BillboardGui", L_2_.PlayerGui)
			L_147_.Adornee = L_146_arg1.PrimaryPart;
			L_147_.AlwaysOnTop = true
			L_147_.Enabled = true
			L_147_.Active = false
			L_147_.Size = UDim2.new(0, 25, 0, 12.5)
			local L_148_ = Instance.new("TextLabel", L_147_)
			L_148_.Size = UDim2.new(0, 25, 0, 12.5)
			L_148_.BackgroundColor3 = Color3.new(0, 255, 0)
			L_148_.BackgroundTransparency = 0.7
			L_148_.TextScaled = true
			spawn(function()
				while true do
					for L_149_forvar1 = 1, 30 do
						wait(0.1)
						L_148_.Text = math.floor((L_2_.Character.Head.Position - L_146_arg1.PrimaryPart.Position).magnitude).." m"
					end;
					L_148_.Text = L_146_arg1.Name;
					wait(3)
					if not L_54_.Value then
						break
					end
				end
			end)
		end;
		for L_152_forvar1, L_153_forvar2 in pairs(getVehicles()) do
			if L_153_forvar2 then
				L_141_func(L_153_forvar2)
			end
		end;
	else
		for L_155_forvar1, L_156_forvar2 in ipairs(L_2_.PlayerGui:GetChildren()) do
			if L_156_forvar2:IsA("BillboardGui") then
				L_156_forvar2:Destroy()
			end
		end;
		L_54_.Value = false
		vehicleESP.Text = "Car ESP: OFF"
		vehicleESP.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
	end
end)

--Server
tspamBool = false
messageSpam.MouseButton1Click:connect(function()
    if tspamBool == false then
		tspamBool = true
		messageSpam.Text = "Chat Spam: ON"
		messageSpam.TextColor3 = Color3.new(0, 0.486275, 0.054902)
    words = {tostring(messageText.Text), messageText.Text..'.'}
while tspamBool do
wait()
game.workspace.Remote.Chat:FireServer("Global", words[math.random(#words)])
end
    else
        tspamBool = false
		messageSpam.Text = "Chat Spam: OFF"
		messageSpam.TextColor3 = Color3.new(0.721569, 0, 0.0117647)
    end
        
end)

Red.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'Red', messageText.Text)
end
end)

Yellow.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'Yellow', messageText.Text)
end
end)

Green.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'Green', messageText.Text)
end
end)

Blue.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'Blue', messageText.Text)
end
end)

White.MouseButton1Down:connect(function()
for i,v in pairs(game.Players:GetChildren())do
workspace.Remote.SendMessage:FireServer(game.Players[v.Name], 'White', messageText.Text)
end
end)