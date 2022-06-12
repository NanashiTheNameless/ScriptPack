--[[ Unleashed, converted to LocalScript by Citrus/Solavenge ]]

wait(1/60)

script.Name = "Unleashed"
local Stalenezz = Instance.new("StringValue",script)
Stalenezz.Name = "Staleness"
local ST1 = Instance.new("StringValue",Stalenezz)
ST1.Name = "1"
local ST2 = Instance.new("StringValue",Stalenezz)
ST2.Name = "2"
local ST3 = Instance.new("StringValue",Stalenezz)
ST3.Name = "3"
local ST4 = Instance.new("StringValue",Stalenezz)
ST4.Name = "4"
local ST5 = Instance.new("StringValue",Stalenezz)
ST5.Name = "5"
local ST6 = Instance.new("StringValue",Stalenezz)
ST6.Name = "6"
local ST7 = Instance.new("StringValue",Stalenezz)
ST7.Name = "7"
local ST8 = Instance.new("StringValue",Stalenezz)
ST8.Name = "8"
local ST9 = Instance.new("StringValue",Stalenezz)
ST9.Name = "9"
local StalenezzChk = Instance.new("BoolValue",script)
StalenezzChk.Name = "StalenessChecker"
StalenezzChk.Value = false
local SC1 = Instance.new("BoolValue",StalenezzChk)
SC1.Name = "1"
SC1.Value = false
local SC2 = Instance.new("BoolValue",StalenezzChk)
SC2.Name = "2"
SC2.Value = false
local SC3 = Instance.new("BoolValue",StalenezzChk)
SC3.Name = "3"
SC3.Value = false
local SC4 = Instance.new("BoolValue",StalenezzChk)
SC4.Name = "4"
SC4.Value = false
local SC5 = Instance.new("BoolValue",StalenezzChk)
SC5.Name = "5"
SC5.Value = false
local SC6 = Instance.new("BoolValue",StalenezzChk)
SC6.Name = "6"
SC6.Value = false
local SC7 = Instance.new("BoolValue",StalenezzChk)
SC7.Name = "7"
SC7.Value = false
local SC8 = Instance.new("BoolValue",StalenezzChk)
SC8.Name = "8"
SC8.Value = false
local SC9 = Instance.new("BoolValue",StalenezzChk)
SC9.Name = "9"
SC9.Value = false
local Statz = Instance.new("StringValue",script)
Statz.Name = "Stats"
Statz.Value = "Stats"
local ATKZ = Instance.new("NumberValue",Statz)
ATKZ.Name = "Attack"
ATKZ.Value = "1"
local DEFZ = Instance.new("NumberValue",Statz)
DEFZ.Name = "Defense"
DEFZ.Value = "1"
local ENGZ = Instance.new("NumberValue",Statz)
ENGZ.Name = "Energy"
ENGZ.Value = "100"
local FRZZ = Instance.new("BoolValue",Statz)
FRZZ.Name = "Frozen"
FRZZ.Value = false
local MANZ = Instance.new("NumberValue",Statz)
MANZ.Name = "Mana"
MANZ.Value = "150"
local SPDZ = Instance.new("NumberValue",Statz)
SPDZ.Name = "Speed"
SPDZ.Value = "1"

local HRTBT = Instance.new("BindableEvent",Statz)
HRTBT.Name = "Heartbeat"

local weapongui = Instance.new("ScreenGui", script)
weapongui.Name = "WeaponGUI"

local skill3 = Instance.new("Frame", weapongui)
skill3.Size = UDim2.new(0.26, 0, 0.06, 0)
skill3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
skill3.Name = "Skill3"
skill3.Position = UDim2.new(0.23, 0, 0.925, 0)
skill3.BorderSizePixel = 0
skill3.BackgroundTransparency = 0.7
skill3.BackgroundColor3 = Color3.new(1, 1, 1)

local cover = Instance.new("Frame", skill3)
cover.Size = UDim2.new(1.002, 0, 1, 0)
cover.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
cover.Name = "Cover"
cover.BorderSizePixel = 0
cover.BackgroundTransparency = 0.5
cover.BackgroundColor3 = Color3.new(1, 1, 1)

local label = Instance.new("TextLabel", skill3)
label.TextWrapped = true
label.TextStrokeTransparency = 0
label.BorderSizePixel = 0
label.TextScaled = true
label.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
label.BackgroundTransparency = 1
label.Size = UDim2.new(1, 0, 1, 0)
label.TextColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label.Text = "[C] Skill3"
label.Font = Enum.Font.SourceSansBold
label.Name = "Label"
label.FontSize = Enum.FontSize.Size32

local skill4 = Instance.new("Frame", weapongui)
skill4.Size = UDim2.new(0.26, 0, 0.06, 0)
skill4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
skill4.Name = "Skill4"
skill4.Position = UDim2.new(0.5, 0, 0.925, 0)
skill4.BorderSizePixel = 0
skill4.BackgroundTransparency = 0.7
skill4.BackgroundColor3 = Color3.new(1, 1, 1)

local cover_2 = Instance.new("Frame", skill4)
cover_2.Size = UDim2.new(1.002, 0, 1, 0)
cover_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
cover_2.Name = "Cover"
cover_2.BorderSizePixel = 0
cover_2.BackgroundTransparency = 0.5
cover_2.BackgroundColor3 = Color3.new(1, 1, 1)

local label_2 = Instance.new("TextLabel", skill4)
label_2.TextWrapped = true
label_2.TextStrokeTransparency = 0
label_2.BorderSizePixel = 0
label_2.TextScaled = true
label_2.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
label_2.BackgroundTransparency = 1
label_2.Size = UDim2.new(1, 0, 1, 0)
label_2.TextColor3 = Color3.new(1, 1, 1)
label_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label_2.Text = "[4] Skill4"
label_2.Font = Enum.Font.SourceSansBold
label_2.Name = "Label"
label_2.FontSize = Enum.FontSize.Size32

local skill2 = Instance.new("Frame", weapongui)
skill2.Size = UDim2.new(0.26, 0, 0.06, 0)
skill2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
skill2.Name = "Skill2"
skill2.Position = UDim2.new(0.5, 0, 0.86, 0)
skill2.BorderSizePixel = 0
skill2.BackgroundTransparency = 0.7
skill2.BackgroundColor3 = Color3.new(1, 1, 1)

local cover_3 = Instance.new("Frame", skill2)
cover_3.Size = UDim2.new(1.002, 0, 1, 0)
cover_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
cover_3.Name = "Cover"
cover_3.BorderSizePixel = 0
cover_3.BackgroundTransparency = 0.5
cover_3.BackgroundColor3 = Color3.new(1, 1, 1)

local label_3 = Instance.new("TextLabel", skill2)
label_3.TextWrapped = true
label_3.TextStrokeTransparency = 0
label_3.BorderSizePixel = 0
label_3.TextScaled = true
label_3.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
label_3.BackgroundTransparency = 1
label_3.Size = UDim2.new(1, 0, 1, 0)
label_3.TextColor3 = Color3.new(1, 1, 1)
label_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label_3.Text = "[X] Skill2"
label_3.Font = Enum.Font.SourceSansBold
label_3.Name = "Label"
label_3.FontSize = Enum.FontSize.Size32

local skill1 = Instance.new("Frame", weapongui)
skill1.Size = UDim2.new(0.26, 0, 0.06, 0)
skill1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
skill1.Name = "Skill1"
skill1.Position = UDim2.new(0.23, 0, 0.86, 0)
skill1.BorderSizePixel = 0
skill1.BackgroundTransparency = 0.7
skill1.BackgroundColor3 = Color3.new(1, 1, 1)

local cover_4 = Instance.new("Frame", skill1)
cover_4.Size = UDim2.new(1.002, 0, 1, 0)
cover_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
cover_4.Name = "Cover"
cover_4.BorderSizePixel = 0
cover_4.BackgroundTransparency = 0.5
cover_4.BackgroundColor3 = Color3.new(1, 1, 1)

local label_4 = Instance.new("TextLabel", skill1)
label_4.TextWrapped = true
label_4.TextStrokeTransparency = 0
label_4.BorderSizePixel = 0
label_4.TextScaled = true
label_4.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
label_4.BackgroundTransparency = 1
label_4.Size = UDim2.new(1, 0, 1, 0)
label_4.TextColor3 = Color3.new(1, 1, 1)
label_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label_4.Text = "[Z] Skill1"
label_4.Font = Enum.Font.SourceSansBold
label_4.Name = "Label"
label_4.FontSize = Enum.FontSize.Size32

local bar1 = Instance.new("Frame", weapongui)
bar1.Size = UDim2.new(0.26, 0, 0.05, 0)
bar1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
bar1.Name = "Bar1"
bar1.Position = UDim2.new(0.23, 0, 0.8, 0)
bar1.BorderSizePixel = 0
bar1.BackgroundTransparency = 0.7
bar1.BackgroundColor3 = Color3.new(1, 1, 1)

local cover_5 = Instance.new("Frame", bar1)
cover_5.Size = UDim2.new(1, 0, 1, 0)
cover_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
cover_5.Name = "Cover"
cover_5.BorderSizePixel = 0
cover_5.BackgroundTransparency = 0.5
cover_5.BackgroundColor3 = Color3.new(1, 1, 1)

local label_5 = Instance.new("TextLabel", bar1)
label_5.TextWrapped = true
label_5.TextStrokeTransparency = 0
label_5.BorderSizePixel = 0
label_5.TextScaled = true
label_5.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
label_5.BackgroundTransparency = 1
label_5.Size = UDim2.new(1, 0, 1, 0)
label_5.TextColor3 = Color3.new(1, 1, 1)
label_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label_5.Text = "Mana ~{#}~"
label_5.Font = Enum.Font.SourceSansBold
label_5.Name = "Label"
label_5.FontSize = Enum.FontSize.Size32

local bar2 = Instance.new("Frame", weapongui)
bar2.Size = UDim2.new(0.26, 0, 0.05, 0)
bar2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
bar2.Name = "Bar2"
bar2.Position = UDim2.new(0.5, 0, 0.8, 0)
bar2.BorderSizePixel = 0
bar2.BackgroundTransparency = 0.7
bar2.BackgroundColor3 = Color3.new(1, 1, 1)

local cover_6 = Instance.new("Frame", bar2)
cover_6.Size = UDim2.new(1, 0, 1, 0)
cover_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
cover_6.Name = "Cover"
cover_6.BorderSizePixel = 0
cover_6.BackgroundTransparency = 0.5
cover_6.BackgroundColor3 = Color3.new(1, 1, 1)

local label_6 = Instance.new("TextLabel", bar2)
label_6.TextWrapped = true
label_6.TextStrokeTransparency = 0
label_6.BorderSizePixel = 0
label_6.TextScaled = true
label_6.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
label_6.BackgroundTransparency = 1
label_6.Size = UDim2.new(1, 0, 1, 0)
label_6.TextColor3 = Color3.new(1, 1, 1)
label_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label_6.Text = "Energy ~{#}~"
label_6.Font = Enum.Font.SourceSansBold
label_6.Name = "Label"
label_6.FontSize = Enum.FontSize.Size32

local speed = Instance.new("Frame", weapongui)
speed.Size = UDim2.new(0.15, 0, 0.07, 0)
speed.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
speed.Name = "Speed"
speed.Position = UDim2.new(0.23, 0, 0.72, 0)
speed.BorderSizePixel = 0
speed.BackgroundTransparency = 0.7
speed.BackgroundColor3 = Color3.new(0.87451, 1, 0.313726)

local cover_7 = Instance.new("Frame", speed)
cover_7.Size = UDim2.new(1, 0, 1, 0)
cover_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
cover_7.Name = "Cover"
cover_7.BorderSizePixel = 0
cover_7.BackgroundTransparency = 0.5
cover_7.BackgroundColor3 = Color3.new(0.87451, 1, 0.313726)

local label_7 = Instance.new("TextLabel", speed)
label_7.TextWrapped = true
label_7.TextStrokeTransparency = 0
label_7.BorderSizePixel = 0
label_7.TextScaled = true
label_7.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
label_7.BackgroundTransparency = 1
label_7.Size = UDim2.new(1, 0, 1, 0)
label_7.TextColor3 = Color3.new(1, 1, 1)
label_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label_7.Text = "Speed {#}"
label_7.Font = Enum.Font.SourceSansBold
label_7.Name = "Label"
label_7.FontSize = Enum.FontSize.Size32

local defense = Instance.new("Frame", weapongui)
defense.Size = UDim2.new(0.15, 0, 0.07, 0)
defense.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
defense.Name = "Defense"
defense.Position = UDim2.new(0.61, 0, 0.72, 0)
defense.BorderSizePixel = 0
defense.BackgroundTransparency = 0.7
defense.BackgroundColor3 = Color3.new(0.643137, 0.941177, 1)

local cover_8 = Instance.new("Frame", defense)
cover_8.Size = UDim2.new(1, 0, 1, 0)
cover_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
cover_8.Name = "Cover"
cover_8.BorderSizePixel = 0
cover_8.BackgroundTransparency = 0.5
cover_8.BackgroundColor3 = Color3.new(0.643137, 0.941177, 1)

local label_8 = Instance.new("TextLabel", defense)
label_8.TextWrapped = true
label_8.TextStrokeTransparency = 0
label_8.BorderSizePixel = 0
label_8.TextScaled = true
label_8.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
label_8.BackgroundTransparency = 1
label_8.Size = UDim2.new(1, 0, 1, 0)
label_8.TextColor3 = Color3.new(1, 1, 1)
label_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label_8.Text = "Defense {#}"
label_8.Font = Enum.Font.SourceSansBold
label_8.Name = "Label"
label_8.FontSize = Enum.FontSize.Size32

local attack = Instance.new("Frame", weapongui)
attack.Size = UDim2.new(0.15, 0, 0.07, 0)
attack.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
attack.Name = "Attack"
attack.Position = UDim2.new(0.425, 0, 0.72, 0)
attack.BorderSizePixel = 0
attack.BackgroundTransparency = 0.7
attack.BackgroundColor3 = Color3.new(1, 0.501961, 0.509804)

local cover_9 = Instance.new("Frame", attack)
cover_9.Size = UDim2.new(1, 0, 1, 0)
cover_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
cover_9.Name = "Cover"
cover_9.BorderSizePixel = 0
cover_9.BackgroundTransparency = 0.5
cover_9.BackgroundColor3 = Color3.new(1, 0.501961, 0.509804)

local label_9 = Instance.new("TextLabel", attack)
label_9.TextWrapped = true
label_9.TextStrokeTransparency = 0
label_9.BorderSizePixel = 0
label_9.TextScaled = true
label_9.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
label_9.BackgroundTransparency = 1
label_9.Size = UDim2.new(1, 0, 1, 0)
label_9.TextColor3 = Color3.new(1, 1, 1)
label_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label_9.Text = "Attack {#}"
label_9.Font = Enum.Font.SourceSansBold
label_9.Name = "Label"
label_9.FontSize = Enum.FontSize.Size32

local label = Instance.new("Part", script)
label.CanCollide = false
label.LeftSurface = Enum.SurfaceType.Unjoinable
label.Transparency = 1
label.TopSurface = Enum.SurfaceType.Unjoinable
label.Anchored = true
label.Material = Enum.Material.SmoothPlastic
label.Size = Vector3.new(0.2, 0.2, 0.2)
label.Name = "Label"
label.FrontSurface = Enum.SurfaceType.Unjoinable
label.Locked = true
label.CFrame = CFrame.new(50.66, 12.064, 16.07)
label.RightSurface = Enum.SurfaceType.Unjoinable
label.BackSurface = Enum.SurfaceType.Unjoinable
label.BrickColor = BrickColor.new("Really black")
label.Friction = 0.3
label.BottomSurface = Enum.SurfaceType.Unjoinable

local gui = Instance.new("BillboardGui", label)
gui.Name = "GUI"
gui.Size = UDim2.new(0, 200, 0, 50)

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 100, 0, 100)
main.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
main.Name = "Main"
main.BorderSizePixel = 0
main.BackgroundTransparency = 1
main.BackgroundColor3 = Color3.new(1, 1, 1)

local label_2 = Instance.new("TextLabel", main)
label_2.TextWrapped = true
label_2.TextStrokeTransparency = 0
label_2.BorderSizePixel = 0
label_2.TextScaled = true
label_2.BackgroundColor3 = Color3.new(1, 1, 1)
label_2.BackgroundTransparency = 1
label_2.Size = UDim2.new(1, 0, 1, 0)
label_2.TextColor3 = Color3.new(1, 1, 1)
label_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
label_2.Text = "0"
label_2.Font = Enum.Font.SourceSans
label_2.Name = "Label"
label_2.FontSize = Enum.FontSize.Size14

local SongGUI = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
SongGUI.Name = "SongGUI"
SongGUI.Enabled = false

local main = Instance.new("Frame", SongGUI)
main.Size = UDim2.new(0.25, 0, 0.25, 0)
main.Draggable = true
main.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
main.Name = "Main"
main.Style = Enum.FrameStyle.RobloxRound
main.Position = UDim2.new(0.375, 0, 0.375, 0)
main.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)

local text = Instance.new("TextLabel", main)
text.TextWrapped = true
text.TextStrokeTransparency = 0
text.TextScaled = true
text.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
text.BackgroundTransparency = 1
text.Size = UDim2.new(1, 0, 0.6, 0)
text.TextColor3 = Color3.new(1, 1, 1)
text.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
text.Text = "PLACE SONG ID"
text.Name = "Text"

local id = Instance.new("TextBox", main)
id.TextScaled = true
id.BackgroundColor3 = Color3.new(0, 0, 0)
id.Position = UDim2.new(0, 0, 0.6, 0)
id.Size = UDim2.new(1, 0, 0.2, 0)
id.BackgroundTransparency = 0.5
id.BorderColor3 = Color3.new(1, 1, 1)
id.Text = ""
id.TextColor3 = Color3.new(1, 1, 1)
id.Name = "ID"
id.TextWrapped = true

local play = Instance.new("TextButton", main)
play.FontSize = Enum.FontSize.Size32
play.TextStrokeTransparency = 0
play.BorderSizePixel = 0
play.TextScaled = true
play.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
play.Size = UDim2.new(0.75, 0, 0.2, 0)
play.Position = UDim2.new(0.125, 0, 0.8, 0)
play.Style = Enum.ButtonStyle.RobloxButton
play.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
play.Text = "PLAY"
play.TextColor3 = Color3.new(1, 1, 1)
play.Name = "Play"
play.TextWrapped = true

play.MouseButton1Down:connect(function()
	for i,v in pairs(game.Players.LocalPlayer.Character.Weapon.Cannon.Handle:GetChildren()) do
		if v:IsA("Sound") then
			v:Destroy()
		end
	end
	local so = Instance.new("Sound",game.Players.LocalPlayer.Character.Weapon.Cannon.Handle)
	so.Name = "Music"
	so.SoundId = "rbxassetid://"..id.Text
	so.Looped = true
	so.Pitch = 1
	so.Volume = 1
	so:Play()
	_G.MusicGUI = false
	SongGUI.Enabled = false
end)

--[[CUSTOMIZATION]]--

Frames = 1 / 60

Base_Speed = 18
Base_Speed_Value = 0.9
Base_Attack_Value = 1.5
Base_Defense_Value = 0.7

Cannon_Base_Speed_Value = 0.6
Cannon_Base_Attack_Value = 1.1
Cannon_Base_Defense_Value = 1.7

Skill1cooldown = 2.4
Skill2cooldown = 5.7
Skill3cooldown = 10
Skill4cooldown = 14

Recover_Mana = 1
MaxMana = 100

Recover_Energy = 1
MaxEnergy = 75

ManaInterval = 15
EnergyInterval = 22

Text1 = "[Z] Beat Drop"
Text2 = "[X] Max Volume"
Text3 = "[C] Breakout"
Text4 = "[V] Unleash"

CannonText1 = "[Z] Blast"
CannonText2 = "[X] Barrage"
CannonText3 = "[C] Hail"
CannonText4 = "[V] Restrain"

ManaBar_Color = BrickColor.new("Black")
EnergyBar_Color = BrickColor.new("New Yeller")
Primary_Color = BrickColor.new("Really black")
Secondary_Color = BrickColor.new("Really black")

--[[Variables]]--

Rbx = LoadLibrary("RbxUtility")
Create = Rbx.Create

m=Instance.new('Model',game.Players.LocalPlayer.Character)

Arm_Held = game.Players.LocalPlayer.Character["Right Arm"]

Stat = script.Stats
Mana = Stat.Mana
Energy = Stat.Energy
Frozen = Stat.Frozen
Attack = Stat.Attack
Defense = Stat.Defense
Speed = Stat.Speed

GUI = script.WeaponGUI

Bar1 = GUI.Bar1
Bar2 = GUI.Bar2
Skill1 = GUI.Skill1
Skill2 = GUI.Skill2
Skill3 = GUI.Skill3
Skill4 = GUI.Skill4

Bar1Cover = Bar1.Cover
Bar2Cover = Bar2.Cover
Cover1 = Skill1.Cover
Cover2 = Skill2.Cover
Cover3 = Skill3.Cover
Cover4 = Skill4.Cover

Bar1.BackgroundColor3 = ManaBar_Color.Color
Bar1Cover.BackgroundColor3 = ManaBar_Color.Color
Bar2.BackgroundColor3 = EnergyBar_Color.Color
Bar2Cover.BackgroundColor3 = EnergyBar_Color.Color
Skill1.BackgroundColor3 = Primary_Color.Color
Cover1.BackgroundColor3 = Primary_Color.Color
Skill2.BackgroundColor3 = Primary_Color.Color
Cover2.BackgroundColor3 = Primary_Color.Color
Skill3.BackgroundColor3 = Primary_Color.Color
Cover3.BackgroundColor3 = Primary_Color.Color
Skill4.BackgroundColor3 = Primary_Color.Color
Cover4.BackgroundColor3 = Primary_Color.Color

Skill1text = Skill1.Label
Skill2text = Skill2.Label
Skill3text = Skill3.Label
Skill4text = Skill4.Label

Skill1text.Text = Text1
Skill2text.Text = Text2
Skill3text.Text = Text3
Skill4text.Text = Text4

-- BEGIN CANNON --



 Weapon = Instance.new("Model", script)
Weapon.Name = "Weapon"

 Cannon = Instance.new("Model", Weapon)
Cannon.Name = "Cannon"

 speaker2 = Instance.new("Part", Cannon)
speaker2.CanCollide = false
speaker2.TopSurface = Enum.SurfaceType.Smooth
speaker2.Material = Enum.Material.Neon
speaker2.Size = Vector3.new(0.2, 1.295, 1.481)
speaker2.Name = "Speaker2"
speaker2.CFrame = CFrame.new(8.777, 0.804, 116.085) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
speaker2.BrickColor = BrickColor.new("New Yeller")
speaker2.Friction = 0.3
speaker2.Shape = Enum.PartType.Cylinder
speaker2.BottomSurface = Enum.SurfaceType.Smooth

 mesh = Instance.new("SpecialMesh", speaker2)
mesh.Scale = Vector3.new(0.2, 1, 1)
mesh.MeshType = Enum.MeshType.Cylinder

 speaker3 = Instance.new("Part", Cannon)
speaker3.CanCollide = false
speaker3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
speaker3.TopSurface = Enum.SurfaceType.Smooth
speaker3.Material = Enum.Material.Neon
speaker3.Size = Vector3.new(0.2, 1.295, 1.481)
speaker3.Name = "Speaker3"
speaker3.CFrame = CFrame.new(10.408, 0.804, 117.026) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
speaker3.BrickColor = BrickColor.new("New Yeller")
speaker3.Friction = 0.3
speaker3.Shape = Enum.PartType.Cylinder
speaker3.BottomSurface = Enum.SurfaceType.Smooth

 mesh_2 = Instance.new("SpecialMesh", speaker3)
mesh_2.Scale = Vector3.new(0.2, 1, 1)
mesh_2.MeshType = Enum.MeshType.Cylinder

 part = Instance.new("Part", Cannon)
part.CanCollide = false
part.TopSurface = Enum.SurfaceType.Smooth
part.Material = Enum.Material.SmoothPlastic
part.Size = Vector3.new(0.93, 1.132, 1.481)
part.CFrame = CFrame.new(10.189, 0.807, 117.405) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Really black")
part.Friction = 0.3
part.Shape = Enum.PartType.Cylinder
part.BottomSurface = Enum.SurfaceType.Smooth

 speaker1 = Instance.new("Part", Cannon)
speaker1.CanCollide = false
speaker1.TopSurface = Enum.SurfaceType.Smooth
speaker1.Material = Enum.Material.Neon
speaker1.Size = Vector3.new(0.2, 1.295, 1.481)
speaker1.Name = "Speaker1"
speaker1.CFrame = CFrame.new(9.968, 0.804, 117.787) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
speaker1.BrickColor = BrickColor.new("New Yeller")
speaker1.Friction = 0.3
speaker1.Shape = Enum.PartType.Cylinder
speaker1.BottomSurface = Enum.SurfaceType.Smooth

 mesh_3 = Instance.new("SpecialMesh", speaker1)
mesh_3.Scale = Vector3.new(0.2, 1, 1)
mesh_3.MeshType = Enum.MeshType.Cylinder

 part_2 = Instance.new("Part", Cannon)
part_2.CanCollide = false
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.Smooth
part_2.Material = Enum.Material.SmoothPlastic
part_2.Size = Vector3.new(0.93, 1.132, 1.481)
part_2.CFrame = CFrame.new(8.559, 0.807, 116.464) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Really black")
part_2.Friction = 0.3
part_2.Shape = Enum.PartType.Cylinder
part_2.BottomSurface = Enum.SurfaceType.Smooth

 speaker4 = Instance.new("Part", Cannon)
speaker4.CanCollide = false
speaker4.TopSurface = Enum.SurfaceType.Smooth
speaker4.Material = Enum.Material.Neon
speaker4.Size = Vector3.new(0.2, 1.295, 1.481)
speaker4.Name = "Speaker4"
speaker4.CFrame = CFrame.new(8.338, 0.804, 116.846) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
speaker4.BrickColor = BrickColor.new("New Yeller")
speaker4.Friction = 0.3
speaker4.Shape = Enum.PartType.Cylinder
speaker4.BottomSurface = Enum.SurfaceType.Smooth

 mesh_4 = Instance.new("SpecialMesh", speaker4)
mesh_4.Scale = Vector3.new(0.2, 1, 1)
mesh_4.MeshType = Enum.MeshType.Cylinder

 part_3 = Instance.new("Part", Cannon)
part_3.CanCollide = false
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.Smooth
part_3.Material = Enum.Material.Neon
part_3.Size = Vector3.new(0.2, 0.847, 1.037)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(9.498, 0.769, 117.001) * CFrame.Angles(-0, -0.52360081672668, -0)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Lime green")
part_3.Friction = 0.3
part_3.Shape = Enum.PartType.Cylinder
part_3.BottomSurface = Enum.SurfaceType.Smooth

 mesh_5 = Instance.new("SpecialMesh", part_3)
mesh_5.Scale = Vector3.new(0.517, 1, 1)
mesh_5.MeshType = Enum.MeshType.Cylinder

 part_4 = Instance.new("Part", Cannon)
part_4.CanCollide = false
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.Smooth
part_4.Material = Enum.Material.Neon
part_4.Size = Vector3.new(0.2, 0.847, 1.037)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(9.366, 0.769, 116.924) * CFrame.Angles(-0, -0.52360081672668, -0)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Lime green")
part_4.Friction = 0.3
part_4.Shape = Enum.PartType.Cylinder
part_4.BottomSurface = Enum.SurfaceType.Smooth

 mesh_6 = Instance.new("SpecialMesh", part_4)
mesh_6.Scale = Vector3.new(0.517, 1, 1)
mesh_6.MeshType = Enum.MeshType.Cylinder

 part_5 = Instance.new("Part", Cannon)
part_5.CanCollide = false
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.Smooth
part_5.Material = Enum.Material.SmoothPlastic
part_5.Size = Vector3.new(0.376, 0.633, 0.991)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(10.733, 0.785, 117.693) * CFrame.Angles(-0, -0.52360081672668, -0)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Dark stone grey")
part_5.Friction = 0.3
part_5.Shape = Enum.PartType.Cylinder
part_5.BottomSurface = Enum.SurfaceType.Smooth

 handle = Instance.new("Part", Cannon)
handle.CanCollide = false
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.TopSurface = Enum.SurfaceType.Smooth
handle.Material = Enum.Material.SmoothPlastic
handle.Size = Vector3.new(2.755, 0.786, 1.037)
handle.Name = "Handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(9.597, 0.781, 117.057) * CFrame.Angles(-0, -0.52360081672668, -0)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BrickColor = BrickColor.new("Dark stone grey")
handle.Friction = 0.3
handle.Shape = Enum.PartType.Cylinder
handle.BottomSurface = Enum.SurfaceType.Smooth

 part_6 = Instance.new("Part", Cannon)
part_6.CanCollide = false
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.Smooth
part_6.Material = Enum.Material.Neon
part_6.Size = Vector3.new(0.376, 0.633, 0.595)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(10.734, 0.785, 117.698) * CFrame.Angles(-0, -0.52360081672668, -0)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Really blue")
part_6.Friction = 0.3
part_6.Shape = Enum.PartType.Cylinder
part_6.BottomSurface = Enum.SurfaceType.Smooth

 part_7 = Instance.new("Part", Cannon)
part_7.CanCollide = false
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.Smooth
part_7.Material = Enum.Material.Neon
part_7.Size = Vector3.new(0.2, 0.847, 1.037)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(9.246, 0.769, 116.855) * CFrame.Angles(-0, -0.52360081672668, -0)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Lime green")
part_7.Friction = 0.3
part_7.Shape = Enum.PartType.Cylinder
part_7.BottomSurface = Enum.SurfaceType.Smooth

 mesh_7 = Instance.new("SpecialMesh", part_7)
mesh_7.Scale = Vector3.new(0.517, 1, 1)
mesh_7.MeshType = Enum.MeshType.Cylinder

 part_8 = Instance.new("Part", Cannon)
part_8.CanCollide = false
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.Smooth
part_8.Material = Enum.Material.Neon
part_8.Size = Vector3.new(0.2, 0.847, 1.037)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(9.125, 0.769, 116.785) * CFrame.Angles(-0, -0.52360081672668, -0)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Lime green")
part_8.Friction = 0.3
part_8.Shape = Enum.PartType.Cylinder
part_8.BottomSurface = Enum.SurfaceType.Smooth

 mesh_8 = Instance.new("SpecialMesh", part_8)
mesh_8.Scale = Vector3.new(0.517, 1, 1)
mesh_8.MeshType = Enum.MeshType.Cylinder

 part_9 = Instance.new("Part", Cannon)
part_9.CanCollide = false
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Material = Enum.Material.Neon
part_9.Size = Vector3.new(0.2, 0.2, 0.2)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(10.829, 0.914, 117.387) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Dark indigo")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_9 = Instance.new("BlockMesh", part_9)
mesh_9.Scale = Vector3.new(0.2, 0.73, 0.67)

 part_10 = Instance.new("Part", Cannon)
part_10.CanCollide = false
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.Smooth
part_10.Material = Enum.Material.Neon
part_10.Size = Vector3.new(0.2, 0.847, 1.037)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(9.619, 0.769, 117.07) * CFrame.Angles(-0, -0.52360081672668, -0)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Lime green")
part_10.Friction = 0.3
part_10.Shape = Enum.PartType.Cylinder
part_10.BottomSurface = Enum.SurfaceType.Smooth

 mesh_10 = Instance.new("SpecialMesh", part_10)
mesh_10.Scale = Vector3.new(0.517, 1, 1)
mesh_10.MeshType = Enum.MeshType.Cylinder

 part_11 = Instance.new("Part", Cannon)
part_11.CanCollide = false
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Material = Enum.Material.Neon
part_11.Size = Vector3.new(0.2, 0.2, 0.2)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(10.816, 0.646, 117.38) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Dark indigo")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_11 = Instance.new("BlockMesh", part_11)
mesh_11.Scale = Vector3.new(0.2, 0.73, 0.67)

 part_12 = Instance.new("Part", Cannon)
part_12.CanCollide = false
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Material = Enum.Material.Neon
part_12.Size = Vector3.new(0.2, 0.2, 0.2)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(10.483, 0.646, 117.958) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Dark indigo")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_12 = Instance.new("BlockMesh", part_12)
mesh_12.Scale = Vector3.new(0.2, 0.73, 0.67)

 Cannon_2 = Instance.new("Part", Cannon)
Cannon_2.CanCollide = false
Cannon_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Cannon_2.Transparency = 1
Cannon_2.TopSurface = Enum.SurfaceType.Smooth
Cannon_2.Material = Enum.Material.SmoothPlastic
Cannon_2.Size = Vector3.new(0.2, 0.2, 0.2)
Cannon_2.Name = "Cannon"
Cannon_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Cannon_2.CFrame = CFrame.new(10.912, 0.791, 117.778) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
Cannon_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Cannon_2.BrickColor = BrickColor.new("Really blue")
Cannon_2.Friction = 0.3
Cannon_2.Shape = Enum.PartType.Cylinder
Cannon_2.BottomSurface = Enum.SurfaceType.Smooth

 mesh_13 = Instance.new("SpecialMesh", Cannon_2)
mesh_13.Scale = Vector3.new(0.2, 0.2, 0.2)
mesh_13.MeshType = Enum.MeshType.Cylinder

 part_13 = Instance.new("Part", Cannon)
part_13.CanCollide = false
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Material = Enum.Material.SmoothPlastic
part_13.Size = Vector3.new(1.4, 0.2, 1.4)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(9.962, 0.804, 117.798) * CFrame.Angles(3.1415927410126, -1.0472015142441, 1.570796251297)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Really black")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("SpecialMesh", part_13)
mesh_14.Scale = Vector3.new(1, 0.091, 1)
mesh_14.MeshType = Enum.MeshType.Sphere

 part_14 = Instance.new("Part", Cannon)
part_14.CanCollide = false
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.Material = Enum.Material.SmoothPlastic
part_14.Size = Vector3.new(1.4, 0.2, 1.4)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(8.334, 0.804, 116.858) * CFrame.Angles(3.1415927410126, -1.0472015142441, 1.570796251297)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Really black")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_15 = Instance.new("SpecialMesh", part_14)
mesh_15.Scale = Vector3.new(1, 0.091, 1)
mesh_15.MeshType = Enum.MeshType.Sphere

 part_15 = Instance.new("Part", Cannon)
part_15.CanCollide = false
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Material = Enum.Material.SmoothPlastic
part_15.Size = Vector3.new(1.4, 0.2, 1.4)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(10.412, 0.804, 117.018) * CFrame.Angles(3.1415927410126, -1.0472015142441, 1.570796251297)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Really black")
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("SpecialMesh", part_15)
mesh_16.Scale = Vector3.new(1, 0.091, 1)
mesh_16.MeshType = Enum.MeshType.Sphere

 part_16 = Instance.new("Part", Cannon)
part_16.CanCollide = false
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.Material = Enum.Material.SmoothPlastic
part_16.Size = Vector3.new(1.4, 0.2, 1.4)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(8.784, 0.804, 116.078) * CFrame.Angles(3.1415927410126, -1.0472015142441, 1.570796251297)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Really black")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_17 = Instance.new("SpecialMesh", part_16)
mesh_17.Scale = Vector3.new(1, 0.091, 1)
mesh_17.MeshType = Enum.MeshType.Sphere

 flap2 = Instance.new("Model", Weapon)
flap2.Name = "Flap2"

 hitbox = Instance.new("Part", flap2)
hitbox.CanCollide = false
hitbox.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Transparency = 1
hitbox.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Material = Enum.Material.SmoothPlastic
hitbox.Size = Vector3.new(3.458, 1.049, 0.899)
hitbox.Name = "Hitbox"
hitbox.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.CFrame = CFrame.new(9.427, 0.599, 116.971) * CFrame.Angles(-0, -0.52360081672668, -3.1415927410126)
hitbox.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BrickColor = BrickColor.new("Really black")
hitbox.Friction = 0.3
hitbox.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 handle_2 = Instance.new("Part", flap2)
handle_2.CanCollide = false
handle_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.Material = Enum.Material.Neon
handle_2.Size = Vector3.new(3.257, 0.2, 0.2)
handle_2.Name = "Handle"
handle_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.CFrame = CFrame.new(9.422, 0.1, 116.953) * CFrame.Angles(-0, -0.52360081672668, -3.1415927410126)
handle_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.BrickColor = BrickColor.new("New Yeller")
handle_2.Friction = 0.3
handle_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_18 = Instance.new("BlockMesh", handle_2)
mesh_18.Scale = Vector3.new(1, 0.32, 0.5)

 part_17 = Instance.new("Part", flap2)
part_17.CanCollide = false
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.Smooth
part_17.Material = Enum.Material.Neon
part_17.Size = Vector3.new(0.2, 0.206, 0.206)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(8.02, 0.169, 116.143) * CFrame.Angles(-0, 1.0472009181976, -3.1415927410126)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("New Yeller")
part_17.Friction = 0.3
part_17.Shape = Enum.PartType.Cylinder
part_17.BottomSurface = Enum.SurfaceType.Smooth

 mesh_19 = Instance.new("SpecialMesh", part_17)
mesh_19.Scale = Vector3.new(0.5, 1, 1)
mesh_19.MeshType = Enum.MeshType.Cylinder

 part_18 = Instance.new("Part", flap2)
part_18.CanCollide = false
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.Material = Enum.Material.Neon
part_18.Size = Vector3.new(0.2, 0.836, 0.2)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(7.981, 0.576, 116.121) * CFrame.Angles(-0, -0.52360081672668, -3.1415927410126)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("New Yeller")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_20 = Instance.new("BlockMesh", part_18)
mesh_20.Scale = Vector3.new(0.58, 1, 0.5)

 part_19 = Instance.new("Part", flap2)
part_19.CanCollide = false
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.Smooth
part_19.Material = Enum.Material.Neon
part_19.Size = Vector3.new(0.2, 0.206, 0.206)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(10.83, 0.169, 117.766) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -0)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BrickColor = BrickColor.new("New Yeller")
part_19.Friction = 0.3
part_19.Shape = Enum.PartType.Cylinder
part_19.BottomSurface = Enum.SurfaceType.Smooth

 mesh_21 = Instance.new("SpecialMesh", part_19)
mesh_21.Scale = Vector3.new(0.5, 1, 1)
mesh_21.MeshType = Enum.MeshType.Cylinder

 part_20 = Instance.new("Part", flap2)
part_20.CanCollide = false
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.Material = Enum.Material.Neon
part_20.Size = Vector3.new(0.2, 0.836, 0.2)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(10.868, 0.576, 117.788) * CFrame.Angles(-0, -0.52360081672668, -3.1415927410126)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("New Yeller")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_22 = Instance.new("BlockMesh", part_20)
mesh_22.Scale = Vector3.new(0.58, 1, 0.51)

 part_21 = Instance.new("Part", flap2)
part_21.CanCollide = false
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Material = Enum.Material.SmoothPlastic
part_21.Size = Vector3.new(3.278, 0.566, 0.899)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(9.425, 0.354, 116.97) * CFrame.Angles(-0, -0.52360081672668, -3.1415927410126)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("Black")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 wedge = Instance.new("WedgePart", flap2)
wedge.CanCollide = false
wedge.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.Friction = 0.3
wedge.Material = Enum.Material.SmoothPlastic
wedge.Size = Vector3.new(0.892, 0.48, 0.4)
wedge.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.CFrame = CFrame.new(9.976, 0.877, 117.28) * CFrame.Angles(-0, 1.0472009181976, -0)
wedge.BrickColor = BrickColor.new("Black")

 wedge_2 = Instance.new("WedgePart", flap2)
wedge_2.CanCollide = false
wedge_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.Friction = 0.3
wedge_2.Material = Enum.Material.SmoothPlastic
wedge_2.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.CFrame = CFrame.new(8.181, 0.877, 116.244) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
wedge_2.BrickColor = BrickColor.new("Black")

 wedge_3 = Instance.new("WedgePart", flap2)
wedge_3.CanCollide = false
wedge_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.Friction = 0.3
wedge_3.Material = Enum.Material.SmoothPlastic
wedge_3.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.CFrame = CFrame.new(8.562, 0.877, 116.464) * CFrame.Angles(-0, 1.0472009181976, -0)
wedge_3.BrickColor = BrickColor.new("Black")

 wedge_4 = Instance.new("WedgePart", flap2)
wedge_4.CanCollide = false
wedge_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.Friction = 0.3
wedge_4.Material = Enum.Material.SmoothPlastic
wedge_4.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.CFrame = CFrame.new(10.674, 0.877, 117.684) * CFrame.Angles(-0, 1.0472009181976, -0)
wedge_4.BrickColor = BrickColor.new("Black")

 wedge_5 = Instance.new("WedgePart", flap2)
wedge_5.CanCollide = false
wedge_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.Friction = 0.3
wedge_5.Material = Enum.Material.SmoothPlastic
wedge_5.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.CFrame = CFrame.new(10.323, 0.877, 117.481) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
wedge_5.BrickColor = BrickColor.new("Black")

 wedge_6 = Instance.new("WedgePart", flap2)
wedge_6.CanCollide = false
wedge_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.Friction = 0.3
wedge_6.Material = Enum.Material.SmoothPlastic
wedge_6.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.CFrame = CFrame.new(9.624, 0.877, 117.077) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
wedge_6.BrickColor = BrickColor.new("Black")

 wedge_7 = Instance.new("WedgePart", flap2)
wedge_7.CanCollide = false
wedge_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.Friction = 0.3
wedge_7.Material = Enum.Material.SmoothPlastic
wedge_7.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.CFrame = CFrame.new(8.909, 0.877, 116.664) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
wedge_7.BrickColor = BrickColor.new("Black")

 wedge_8 = Instance.new("WedgePart", flap2)
wedge_8.CanCollide = false
wedge_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.Friction = 0.3
wedge_8.Material = Enum.Material.SmoothPlastic
wedge_8.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.CFrame = CFrame.new(9.278, 0.877, 116.877) * CFrame.Angles(-0, 1.0472009181976, -0)
wedge_8.BrickColor = BrickColor.new("Black")

 part_22 = Instance.new("Part", flap2)
part_22.CanCollide = false
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.Smooth
part_22.Material = Enum.Material.SmoothPlastic
part_22.Size = Vector3.new(0.896, 0.2, 0.2)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(8.012, 0.169, 116.156) * CFrame.Angles(-0, 1.0472009181976, -3.1415927410126)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Black")
part_22.Friction = 0.3
part_22.Shape = Enum.PartType.Cylinder
part_22.BottomSurface = Enum.SurfaceType.Smooth

 part_23 = Instance.new("Part", flap2)
part_23.CanCollide = false
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Material = Enum.Material.SmoothPlastic
part_23.Size = Vector3.new(0.2, 0.835, 0.899)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(10.861, 0.576, 117.799) * CFrame.Angles(-0, -0.52360081672668, -3.1415927410126)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BrickColor = BrickColor.new("Black")
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("BlockMesh", part_23)
mesh_23.Scale = Vector3.new(0.57, 1, 1)

 part_24 = Instance.new("Part", flap2)
part_24.CanCollide = false
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.Smooth
part_24.Material = Enum.Material.SmoothPlastic
part_24.Size = Vector3.new(0.896, 0.2, 0.2)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(10.823, 0.169, 117.779) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -0)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BrickColor = BrickColor.new("Black")
part_24.Friction = 0.3
part_24.Shape = Enum.PartType.Cylinder
part_24.BottomSurface = Enum.SurfaceType.Smooth

 part_25 = Instance.new("Part", flap2)
part_25.CanCollide = false
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.Material = Enum.Material.SmoothPlastic
part_25.Size = Vector3.new(0.2, 0.835, 0.899)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(7.975, 0.576, 116.133) * CFrame.Angles(-0, -0.52360081672668, -3.1415927410126)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Black")
part_25.Friction = 0.3
part_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_24 = Instance.new("BlockMesh", part_25)
mesh_24.Scale = Vector3.new(0.57, 1, 1)

 decal = Instance.new("Part", flap2)
decal.CanCollide = false
decal.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
decal.TopSurface = Enum.SurfaceType.SmoothNoOutlines
decal.Material = Enum.Material.SmoothPlastic
decal.Size = Vector3.new(0.556, 0.504, 0.2)
decal.Name = "Decal"
decal.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
decal.CFrame = CFrame.new(9.576, 0.354, 116.569) * CFrame.Angles(-0, -0.52360081672668, -0)
decal.RightSurface = Enum.SurfaceType.SmoothNoOutlines
decal.BackSurface = Enum.SurfaceType.SmoothNoOutlines
decal.BrickColor = BrickColor.new("Really black")
decal.Friction = 0.3
decal.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 decal_2 = Instance.new("Decal", decal)
decal_2.Texture = "http://www.roblox.com/asset/?id=543124451"

 mesh_25 = Instance.new("BlockMesh", decal)
mesh_25.Scale = Vector3.new(1, 1, 0.381)

 flap1 = Instance.new("Model", Weapon)
flap1.Name = "Flap1"

 wedge_9 = Instance.new("WedgePart", flap1)
wedge_9.CanCollide = false
wedge_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.Friction = 0.3
wedge_9.Material = Enum.Material.SmoothPlastic
wedge_9.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.CFrame = CFrame.new(9.635, 0.813, 117.083) * CFrame.Angles(-0, 1.0472009181976, -3.1415927410126)
wedge_9.BrickColor = BrickColor.new("Black")

 wedge_10 = Instance.new("WedgePart", flap1)
wedge_10.CanCollide = false
wedge_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.Friction = 0.3
wedge_10.Material = Enum.Material.SmoothPlastic
wedge_10.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.CFrame = CFrame.new(8.538, 0.813, 116.45) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -0)
wedge_10.BrickColor = BrickColor.new("Black")

 wedge_11 = Instance.new("WedgePart", flap1)
wedge_11.CanCollide = false
wedge_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.Friction = 0.3
wedge_11.Material = Enum.Material.SmoothPlastic
wedge_11.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.CFrame = CFrame.new(8.191, 0.813, 116.25) * CFrame.Angles(-0, 1.0472009181976, -3.1415927410126)
wedge_11.BrickColor = BrickColor.new("Black")

 wedge_12 = Instance.new("WedgePart", flap1)
wedge_12.CanCollide = false
wedge_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.Friction = 0.3
wedge_12.Material = Enum.Material.SmoothPlastic
wedge_12.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.CFrame = CFrame.new(10.333, 0.813, 117.486) * CFrame.Angles(-0, 1.0472009181976, -3.1415927410126)
wedge_12.BrickColor = BrickColor.new("Black")

 wedge_13 = Instance.new("WedgePart", flap1)
wedge_13.CanCollide = false
wedge_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.Friction = 0.3
wedge_13.Material = Enum.Material.SmoothPlastic
wedge_13.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.CFrame = CFrame.new(9.266, 0.813, 116.87) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -0)
wedge_13.BrickColor = BrickColor.new("Black")

 wedge_14 = Instance.new("WedgePart", flap1)
wedge_14.CanCollide = false
wedge_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.Friction = 0.3
wedge_14.Material = Enum.Material.SmoothPlastic
wedge_14.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.CFrame = CFrame.new(10.68, 0.813, 117.687) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -0)
wedge_14.BrickColor = BrickColor.new("Black")

 wedge_15 = Instance.new("WedgePart", flap1)
wedge_15.CanCollide = false
wedge_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.Friction = 0.3
wedge_15.Material = Enum.Material.SmoothPlastic
wedge_15.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.CFrame = CFrame.new(9.982, 0.813, 117.283) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -0)
wedge_15.BrickColor = BrickColor.new("Black")

 wedge_16 = Instance.new("WedgePart", flap1)
wedge_16.CanCollide = false
wedge_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.Friction = 0.3
wedge_16.Material = Enum.Material.SmoothPlastic
wedge_16.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.CFrame = CFrame.new(8.919, 0.813, 116.67) * CFrame.Angles(-0, 1.0472009181976, -3.1415927410126)
wedge_16.BrickColor = BrickColor.new("Black")

 part_26 = Instance.new("Part", flap1)
part_26.CanCollide = false
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Material = Enum.Material.SmoothPlastic
part_26.Size = Vector3.new(0.2, 0.2, 0.2)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(9.607, 1.281, 116.547) * CFrame.Angles(3.1415920257568, -1.0472010374069, 3.0041179656982)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Fossil")
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("BlockMesh", part_26)
mesh_26.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_27 = Instance.new("Part", flap1)
part_27.CanCollide = false
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.Material = Enum.Material.SmoothPlastic
part_27.Size = Vector3.new(0.2, 0.592, 0.899)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(7.98, 1.223, 116.136) * CFrame.Angles(-0, -0.52360081672668, -0)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BrickColor = BrickColor.new("Black")
part_27.Friction = 0.3
part_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("BlockMesh", part_27)
mesh_27.Scale = Vector3.new(0.57, 1, 1)

 hitbox_2 = Instance.new("Part", flap1)
hitbox_2.CanCollide = false
hitbox_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.Transparency = 1
hitbox_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.Material = Enum.Material.SmoothPlastic
hitbox_2.Size = Vector3.new(3.458, 1.043, 0.899)
hitbox_2.Name = "Hitbox"
hitbox_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.CFrame = CFrame.new(9.427, 1.098, 116.971) * CFrame.Angles(-0, -0.52360081672668, -3.1415927410126)
hitbox_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.BrickColor = BrickColor.new("Really black")
hitbox_2.Friction = 0.3
hitbox_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_28 = Instance.new("Part", flap1)
part_28.CanCollide = false
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.Material = Enum.Material.Neon
part_28.Size = Vector3.new(0.2, 0.6, 0.2)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(10.866, 1.235, 117.787) * CFrame.Angles(-0, -0.52360081672668, -0)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("New Yeller")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_28 = Instance.new("BlockMesh", part_28)
mesh_28.Scale = Vector3.new(0.6, 1, 0.5)

 part_29 = Instance.new("Part", flap1)
part_29.CanCollide = false
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.Material = Enum.Material.Neon
part_29.Size = Vector3.new(0.2, 0.6, 0.2)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(7.988, 1.235, 116.125) * CFrame.Angles(-0, -0.52360081672668, -0)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("New Yeller")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("BlockMesh", part_29)
mesh_29.Scale = Vector3.new(0.6, 1, 0.5)

 part_30 = Instance.new("Part", flap1)
part_30.CanCollide = false
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Material = Enum.Material.Neon
part_30.Size = Vector3.new(0.216, 0.2, 0.2)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(10.394, 1.138, 117.52) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BrickColor = BrickColor.new("Really blue")
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("BlockMesh", part_30)
mesh_30.Scale = Vector3.new(1, 0.57, 0.67)

 part_31 = Instance.new("Part", flap1)
part_31.CanCollide = false
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Material = Enum.Material.Neon
part_31.Size = Vector3.new(0.2, 0.2, 0.2)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(10.495, 0.914, 117.965) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("Dark indigo")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("BlockMesh", part_31)
mesh_31.Scale = Vector3.new(0.2, 0.73, 0.67)

 part_32 = Instance.new("Part", flap1)
part_32.CanCollide = false
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Material = Enum.Material.Neon
part_32.Size = Vector3.new(0.216, 0.2, 0.2)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(10.526, 1.138, 117.596) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Really blue")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_32 = Instance.new("BlockMesh", part_32)
mesh_32.Scale = Vector3.new(1, 0.57, 0.67)

 part_33 = Instance.new("Part", flap1)
part_33.CanCollide = false
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.Material = Enum.Material.Neon
part_33.Size = Vector3.new(0.216, 0.2, 0.2)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(10.663, 1.138, 117.675) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BrickColor = BrickColor.new("Really blue")
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_33 = Instance.new("BlockMesh", part_33)
mesh_33.Scale = Vector3.new(1, 0.57, 0.67)

 part_34 = Instance.new("Part", flap1)
part_34.CanCollide = false
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Material = Enum.Material.SmoothPlastic
part_34.Size = Vector3.new(0.2, 0.2, 0.2)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(9.431, 1.281, 117.5) * CFrame.Angles(-3.1415920257568, -1.0472010374069, -3.0041179656982)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Fossil")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("BlockMesh", part_34)
mesh_34.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_35 = Instance.new("Part", flap1)
part_35.CanCollide = false
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.Material = Enum.Material.SmoothPlastic
part_35.Size = Vector3.new(0.2, 0.2, 0.2)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(9.305, 1.281, 117.427) * CFrame.Angles(-3.1415920257568, -1.0472010374069, -3.0041179656982)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("Fossil")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_35 = Instance.new("BlockMesh", part_35)
mesh_35.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_36 = Instance.new("Part", flap1)
part_36.CanCollide = false
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Material = Enum.Material.SmoothPlastic
part_36.Size = Vector3.new(0.2, 0.2, 0.2)
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(9.151, 1.281, 117.338) * CFrame.Angles(-3.1415920257568, -1.0472010374069, -3.0041179656982)
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BrickColor = BrickColor.new("Fossil")
part_36.Friction = 0.3
part_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("BlockMesh", part_36)
mesh_36.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_37 = Instance.new("Part", flap1)
part_37.CanCollide = false
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.Material = Enum.Material.SmoothPlastic
part_37.Size = Vector3.new(0.2, 0.2, 0.2)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(9.005, 1.281, 117.254) * CFrame.Angles(-3.1415920257568, -1.0472010374069, -3.0041179656982)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BrickColor = BrickColor.new("Fossil")
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("BlockMesh", part_37)
mesh_37.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_38 = Instance.new("Part", flap1)
part_38.CanCollide = false
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Material = Enum.Material.SmoothPlastic
part_38.Size = Vector3.new(0.2, 0.2, 0.2)
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(8.866, 1.281, 117.174) * CFrame.Angles(-3.1415920257568, -1.0472010374069, -3.0041179656982)
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BrickColor = BrickColor.new("Fossil")
part_38.Friction = 0.3
part_38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_38 = Instance.new("BlockMesh", part_38)
mesh_38.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_39 = Instance.new("Part", flap1)
part_39.CanCollide = false
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.TopSurface = Enum.SurfaceType.Smooth
part_39.Material = Enum.Material.Neon
part_39.Size = Vector3.new(0.2, 0.206, 0.206)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(10.829, 1.521, 117.765) * CFrame.Angles(-0, 1.0472009181976, -0)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BrickColor = BrickColor.new("New Yeller")
part_39.Friction = 0.3
part_39.Shape = Enum.PartType.Cylinder
part_39.BottomSurface = Enum.SurfaceType.Smooth

 mesh_39 = Instance.new("SpecialMesh", part_39)
mesh_39.Scale = Vector3.new(0.5, 1, 1)
mesh_39.MeshType = Enum.MeshType.Cylinder

 handle_3 = Instance.new("Part", flap1)
handle_3.CanCollide = false
handle_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.Material = Enum.Material.Neon
handle_3.Size = Vector3.new(0.2, 0.2, 3.269)
handle_3.Name = "Handle"
handle_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.CFrame = CFrame.new(9.435, 1.594, 116.959) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
handle_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.BrickColor = BrickColor.new("New Yeller")
handle_3.Friction = 0.3
handle_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_40 = Instance.new("BlockMesh", handle_3)
mesh_40.Scale = Vector3.new(0.5, 0.28, 1)

 part_40 = Instance.new("Part", flap1)
part_40.CanCollide = false
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Material = Enum.Material.SmoothPlastic
part_40.Size = Vector3.new(3.278, 0.566, 0.899)
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(9.425, 1.336, 116.97) * CFrame.Angles(-0, -0.52360081672668, -0)
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BrickColor = BrickColor.new("Black")
part_40.Friction = 0.3
part_40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_41 = Instance.new("Part", flap1)
part_41.CanCollide = false
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.Smooth
part_41.Material = Enum.Material.SmoothPlastic
part_41.Size = Vector3.new(0.896, 0.2, 0.2)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(8.015, 1.521, 116.157) * CFrame.Angles(-0, 1.0472009181976, -0)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("Black")
part_41.Friction = 0.3
part_41.Shape = Enum.PartType.Cylinder
part_41.BottomSurface = Enum.SurfaceType.Smooth

 part_42 = Instance.new("Part", flap1)
part_42.CanCollide = false
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.Material = Enum.Material.SmoothPlastic
part_42.Size = Vector3.new(0.906, 0.2, 1.024)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(9.379, 1.464, 116.946) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BrickColor = BrickColor.new("Really black")
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_43 = Instance.new("Part", flap1)
part_43.CanCollide = false
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.Material = Enum.Material.SmoothPlastic
part_43.Size = Vector3.new(0.2, 0.2, 0.2)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(9.323, 1.281, 116.383) * CFrame.Angles(3.1415920257568, -1.0472010374069, 3.0041179656982)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("Fossil")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_41 = Instance.new("BlockMesh", part_43)
mesh_41.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_44 = Instance.new("Part", flap1)
part_44.CanCollide = false
part_44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.Material = Enum.Material.SmoothPlastic
part_44.Size = Vector3.new(0.2, 0.2, 0.2)
part_44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.CFrame = CFrame.new(9.761, 1.281, 116.636) * CFrame.Angles(3.1415920257568, -1.0472010374069, 3.0041179656982)
part_44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BrickColor = BrickColor.new("Fossil")
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_42 = Instance.new("BlockMesh", part_44)
mesh_42.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_45 = Instance.new("Part", flap1)
part_45.CanCollide = false
part_45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.Material = Enum.Material.SmoothPlastic
part_45.Size = Vector3.new(0.2, 0.592, 0.899)
part_45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.CFrame = CFrame.new(10.859, 1.235, 117.798) * CFrame.Angles(-0, -0.52360081672668, -0)
part_45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BrickColor = BrickColor.new("Black")
part_45.Friction = 0.3
part_45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_43 = Instance.new("BlockMesh", part_45)
mesh_43.Scale = Vector3.new(0.57, 1, 1)

 part_46 = Instance.new("Part", flap1)
part_46.CanCollide = false
part_46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.TopSurface = Enum.SurfaceType.Smooth
part_46.Material = Enum.Material.Neon
part_46.Size = Vector3.new(0.2, 0.202, 0.202)
part_46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.CFrame = CFrame.new(8.022, 1.521, 116.145) * CFrame.Angles(-0, 1.0472009181976, -0)
part_46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BrickColor = BrickColor.new("New Yeller")
part_46.Friction = 0.3
part_46.Shape = Enum.PartType.Cylinder
part_46.BottomSurface = Enum.SurfaceType.Smooth

 mesh_44 = Instance.new("SpecialMesh", part_46)
mesh_44.Scale = Vector3.new(0.5, 1, 1)
mesh_44.MeshType = Enum.MeshType.Cylinder

 part_47 = Instance.new("Part", flap1)
part_47.CanCollide = false
part_47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.Material = Enum.Material.SmoothPlastic
part_47.Size = Vector3.new(0.2, 0.2, 0.2)
part_47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.CFrame = CFrame.new(9.888, 1.281, 116.709) * CFrame.Angles(3.1415920257568, -1.0472010374069, 3.0041179656982)
part_47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BrickColor = BrickColor.new("Fossil")
part_47.Friction = 0.3
part_47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_45 = Instance.new("BlockMesh", part_47)
mesh_45.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_48 = Instance.new("Part", flap1)
part_48.CanCollide = false
part_48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.TopSurface = Enum.SurfaceType.Smooth
part_48.Material = Enum.Material.SmoothPlastic
part_48.Size = Vector3.new(0.898, 0.2, 0.2)
part_48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.CFrame = CFrame.new(10.821, 1.521, 117.778) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BrickColor = BrickColor.new("Black")
part_48.Friction = 0.3
part_48.Shape = Enum.PartType.Cylinder
part_48.BottomSurface = Enum.SurfaceType.Smooth

 part_49 = Instance.new("Part", flap1)
part_49.CanCollide = false
part_49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.Material = Enum.Material.SmoothPlastic
part_49.Size = Vector3.new(0.2, 0.2, 0.2)
part_49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.CFrame = CFrame.new(9.461, 1.281, 116.463) * CFrame.Angles(3.1415920257568, -1.0472010374069, 3.0041179656982)
part_49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BrickColor = BrickColor.new("Fossil")
part_49.Friction = 0.3
part_49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_46 = Instance.new("BlockMesh", part_49)
mesh_46.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_50 = Instance.new("Part", flap1)
part_50.CanCollide = false
part_50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.Material = Enum.Material.SmoothPlastic
part_50.Size = Vector3.new(0.302, 0.592, 0.2)
part_50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.CFrame = CFrame.new(10.436, 1.916, 117.538) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BrickColor = BrickColor.new("Really black")
part_50.Friction = 0.3
part_50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_47 = Instance.new("BlockMesh", part_50)
mesh_47.Scale = Vector3.new(1, 1, 0.89)

 part_51 = Instance.new("Part", flap1)
part_51.CanCollide = false
part_51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.Material = Enum.Material.SmoothPlastic
part_51.Size = Vector3.new(0.302, 0.2, 0.2)
part_51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.CFrame = CFrame.new(10.436, 2.216, 117.538) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BrickColor = BrickColor.new("Really black")
part_51.Friction = 0.3
part_51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_48 = Instance.new("SpecialMesh", part_51)
mesh_48.Scale = Vector3.new(1, 0.96, 0.89)
mesh_48.MeshType = Enum.MeshType.Cylinder

 part_52 = Instance.new("Part", flap1)
part_52.CanCollide = false
part_52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.Material = Enum.Material.Neon
part_52.Size = Vector3.new(0.2, 0.6, 0.2)
part_52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.CFrame = CFrame.new(8.34, 1.916, 116.327) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BrickColor = BrickColor.new("New Yeller")
part_52.Friction = 0.3
part_52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_49 = Instance.new("BlockMesh", part_52)
mesh_49.Scale = Vector3.new(0.5, 1, 0.9)

 part_53 = Instance.new("Part", flap1)
part_53.CanCollide = false
part_53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.Material = Enum.Material.SmoothPlastic
part_53.Size = Vector3.new(0.302, 0.592, 0.2)
part_53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.CFrame = CFrame.new(8.34, 1.919, 116.327) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BrickColor = BrickColor.new("Really black")
part_53.Friction = 0.3
part_53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_50 = Instance.new("BlockMesh", part_53)
mesh_50.Scale = Vector3.new(1, 1, 0.89)

 part_54 = Instance.new("Part", flap1)
part_54.CanCollide = false
part_54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.Material = Enum.Material.Neon
part_54.Size = Vector3.new(0.2, 0.2, 2.417)
part_54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.CFrame = CFrame.new(9.381, 2.212, 116.928) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BrickColor = BrickColor.new("New Yeller")
part_54.Friction = 0.3
part_54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_51 = Instance.new("SpecialMesh", part_54)
mesh_51.Scale = Vector3.new(0.5, 0.93, 1)
mesh_51.MeshType = Enum.MeshType.Brick

 part_55 = Instance.new("Part", flap1)
part_55.CanCollide = false
part_55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.Material = Enum.Material.SmoothPlastic
part_55.Size = Vector3.new(0.302, 0.2, 0.2)
part_55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.CFrame = CFrame.new(8.34, 2.216, 116.327) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BrickColor = BrickColor.new("Really black")
part_55.Friction = 0.3
part_55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_52 = Instance.new("SpecialMesh", part_55)
mesh_52.Scale = Vector3.new(1, 0.96, 0.89)
mesh_52.MeshType = Enum.MeshType.Cylinder

 part_56 = Instance.new("Part", flap1)
part_56.CanCollide = false
part_56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.Material = Enum.Material.Neon
part_56.Size = Vector3.new(0.2, 0.2, 0.2)
part_56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.CFrame = CFrame.new(8.34, 2.216, 116.327) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BrickColor = BrickColor.new("New Yeller")
part_56.Friction = 0.3
part_56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_53 = Instance.new("SpecialMesh", part_56)
mesh_53.Scale = Vector3.new(0.5, 0.97, 0.9)
mesh_53.MeshType = Enum.MeshType.Cylinder

 part_57 = Instance.new("Part", flap1)
part_57.CanCollide = false
part_57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.Material = Enum.Material.Neon
part_57.Size = Vector3.new(0.2, 0.6, 0.2)
part_57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.CFrame = CFrame.new(10.436, 1.916, 117.538) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BrickColor = BrickColor.new("New Yeller")
part_57.Friction = 0.3
part_57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_54 = Instance.new("BlockMesh", part_57)
mesh_54.Scale = Vector3.new(0.5, 1, 0.9)

 part_58 = Instance.new("Part", flap1)
part_58.CanCollide = false
part_58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.Material = Enum.Material.Neon
part_58.Size = Vector3.new(0.2, 0.2, 0.2)
part_58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.CFrame = CFrame.new(10.436, 2.216, 117.538) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
part_58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BrickColor = BrickColor.new("New Yeller")
part_58.Friction = 0.3
part_58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_55 = Instance.new("SpecialMesh", part_58)
mesh_55.Scale = Vector3.new(0.5, 0.97, 0.9)
mesh_55.MeshType = Enum.MeshType.Cylinder

 handle_4 = Instance.new("Part", flap1)
handle_4.CanCollide = false
handle_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.Material = Enum.Material.SmoothPlastic
handle_4.Size = Vector3.new(0.302, 0.2, 2.415)
handle_4.Name = "Handle"
handle_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.CFrame = CFrame.new(9.381, 2.212, 116.928) * CFrame.Angles(-3.1415927410126, -1.0472009181976, -3.1415927410126)
handle_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.BrickColor = BrickColor.new("Really black")
handle_4.Friction = 0.3
handle_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_56 = Instance.new("SpecialMesh", handle_4)
mesh_56.Scale = Vector3.new(1, 0.92, 1)
mesh_56.MeshType = Enum.MeshType.Brick

--DavidAguirre weld script--

function createCFrameCache(part1)
 local f = Instance.new("Folder",part1)
 f.Name = "CFrameCache"
 
 local c0 = Instance.new("CFrameValue",f)
 c0.Name = "C0"
 c0.Value = handle.CFrame:inverse()
 
 local c1 = Instance.new("CFrameValue",f)
 c1.Name = "C1"
 c1.Value = part1.CFrame:inverse()
end

function WeldIt(toolz)
wait()

tool = toolz
handle = tool.Handle

for i,v in pairs(handle:GetChildren()) do
 if v:IsA("JointInstance") then
  v:Destroy()
 end
end

for i,v in pairs(tool:GetChildren()) do
 if v ~= handle then
  if v.className == "UnionOperation" or v.className == "Part" or v.className == "WedgePart" then
  if v:FindFirstChild("CFrameCache") == nil then
   createCFrameCache(v)
  end
  local w = Instance.new("Weld",handle)
  w.Part0 = handle
  w.Part1 = v 
  w.C0 = v.CFrameCache.C0.Value
  w.C1 = v.CFrameCache.C1.Value
 end
end
end
end

WeldIt(Cannon)
WeldIt(flap1)
WeldIt(flap2)

-- END CANNON -- 

Cannon = Weapon.Cannon
CannonA = Cannon.Cannon
Flap1 = Weapon.Flap1
Flap2 = Weapon.Flap2
Flap1Handle = Flap1.Handle
Flap2Handle = Flap2.Handle
HitboxA = Weapon.Flap1.Hitbox
HitboxB = Weapon.Flap2.Hitbox

Speed.Value = Base_Speed_Value
Attack.Value = Base_Attack_Value
Defense.Value = Base_Defense_Value

Weapon.Parent = game.Players.LocalPlayer.Character



-- BEGIN BOOMBOX -- 

 Boombox = Instance.new("Model", script)
Boombox.Name = "Boombox"

 part = Instance.new("Part", Boombox)
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Material = Enum.Material.Neon
part.Size = Vector3.new(0.216, 0.2, 0.2)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(7.719, 1.138, 123.253) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Really blue")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("BlockMesh", part)
mesh.Scale = Vector3.new(1, 0.57, 0.67)

 part_2 = Instance.new("Part", Boombox)
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Material = Enum.Material.SmoothPlastic
part_2.Size = Vector3.new(0.556, 0.504, 0.2)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(6.901, 0.354, 122.302) * CFrame.Angles(-0, -0.52360057830811, -0)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Really black")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 decal = Instance.new("Decal", part_2)
decal.Texture = "http://www.roblox.com/asset/?id=543124451"

 mesh_2 = Instance.new("BlockMesh", part_2)
mesh_2.Scale = Vector3.new(1, 1, 0.381)

 part_3 = Instance.new("Part", Boombox)
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Material = Enum.Material.SmoothPlastic
part_3.Size = Vector3.new(0.2, 0.2, 0.2)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(6.63, 1.281, 123.16) * CFrame.Angles(-3.1415920257568, -1.0472015142441, -3.0041179656982)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Fossil")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_3 = Instance.new("BlockMesh", part_3)
mesh_3.Scale = Vector3.new(0.2, 0.66, 0.62)

 speaker2 = Instance.new("Part", Boombox)
speaker2.TopSurface = Enum.SurfaceType.Smooth
speaker2.Material = Enum.Material.Neon
speaker2.Size = Vector3.new(0.2, 1.295, 1.481)
speaker2.Name = "Speaker2"
speaker2.CFrame = CFrame.new(6.102, 0.804, 121.818) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
speaker2.BrickColor = BrickColor.new("New Yeller")
speaker2.Friction = 0.3
speaker2.Shape = Enum.PartType.Cylinder
speaker2.BottomSurface = Enum.SurfaceType.Smooth

 mesh_4 = Instance.new("SpecialMesh", speaker2)
mesh_4.Scale = Vector3.new(0.2, 1, 1)
mesh_4.MeshType = Enum.MeshType.Cylinder

 cannon = Instance.new("Part", Boombox)
cannon.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
cannon.Transparency = 1
cannon.TopSurface = Enum.SurfaceType.Smooth
cannon.Material = Enum.Material.SmoothPlastic
cannon.Size = Vector3.new(0.2, 0.2, 0.2)
cannon.Name = "Cannon"
cannon.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
cannon.CFrame = CFrame.new(8.237, 0.791, 123.511) * CFrame.Angles(-0, -0.52360057830811, -0)
cannon.RightSurface = Enum.SurfaceType.SmoothNoOutlines
cannon.BrickColor = BrickColor.new("Really blue")
cannon.Friction = 0.3
cannon.Shape = Enum.PartType.Cylinder
cannon.BottomSurface = Enum.SurfaceType.Smooth

 mesh_5 = Instance.new("SpecialMesh", cannon)
mesh_5.Scale = Vector3.new(0.2, 0.2, 0.2)
mesh_5.MeshType = Enum.MeshType.Cylinder

 part_4 = Instance.new("Part", Boombox)
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Material = Enum.Material.Neon
part_4.Size = Vector3.new(0.216, 0.2, 0.2)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(7.851, 1.138, 123.329) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Really blue")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_6 = Instance.new("BlockMesh", part_4)
mesh_6.Scale = Vector3.new(1, 0.57, 0.67)

 speaker3 = Instance.new("Part", Boombox)
speaker3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
speaker3.TopSurface = Enum.SurfaceType.Smooth
speaker3.Material = Enum.Material.Neon
speaker3.Size = Vector3.new(0.2, 1.295, 1.481)
speaker3.Name = "Speaker3"
speaker3.CFrame = CFrame.new(7.733, 0.804, 122.76) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
speaker3.BrickColor = BrickColor.new("New Yeller")
speaker3.Friction = 0.3
speaker3.Shape = Enum.PartType.Cylinder
speaker3.BottomSurface = Enum.SurfaceType.Smooth

 mesh_7 = Instance.new("SpecialMesh", speaker3)
mesh_7.Scale = Vector3.new(0.2, 1, 1)
mesh_7.MeshType = Enum.MeshType.Cylinder

 part_5 = Instance.new("Part", Boombox)
part_5.TopSurface = Enum.SurfaceType.Smooth
part_5.Material = Enum.Material.SmoothPlastic
part_5.Size = Vector3.new(0.93, 1.132, 1.481)
part_5.CFrame = CFrame.new(7.514, 0.807, 123.138) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Really black")
part_5.Friction = 0.3
part_5.Shape = Enum.PartType.Cylinder
part_5.BottomSurface = Enum.SurfaceType.Smooth

 speaker1 = Instance.new("Part", Boombox)
speaker1.TopSurface = Enum.SurfaceType.Smooth
speaker1.Material = Enum.Material.Neon
speaker1.Size = Vector3.new(0.2, 1.295, 1.481)
speaker1.Name = "Speaker1"
speaker1.CFrame = CFrame.new(7.293, 0.804, 123.52) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
speaker1.BrickColor = BrickColor.new("New Yeller")
speaker1.Friction = 0.3
speaker1.Shape = Enum.PartType.Cylinder
speaker1.BottomSurface = Enum.SurfaceType.Smooth

 mesh_8 = Instance.new("SpecialMesh", speaker1)
mesh_8.Scale = Vector3.new(0.2, 1, 1)
mesh_8.MeshType = Enum.MeshType.Cylinder

 part_6 = Instance.new("Part", Boombox)
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.Smooth
part_6.Material = Enum.Material.SmoothPlastic
part_6.Size = Vector3.new(0.93, 1.132, 1.481)
part_6.CFrame = CFrame.new(5.884, 0.807, 122.197) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Really black")
part_6.Friction = 0.3
part_6.Shape = Enum.PartType.Cylinder
part_6.BottomSurface = Enum.SurfaceType.Smooth

 speaker4 = Instance.new("Part", Boombox)
speaker4.TopSurface = Enum.SurfaceType.Smooth
speaker4.Material = Enum.Material.Neon
speaker4.Size = Vector3.new(0.2, 1.295, 1.481)
speaker4.Name = "Speaker4"
speaker4.CFrame = CFrame.new(5.663, 0.804, 122.579) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
speaker4.BrickColor = BrickColor.new("New Yeller")
speaker4.Friction = 0.3
speaker4.Shape = Enum.PartType.Cylinder
speaker4.BottomSurface = Enum.SurfaceType.Smooth

 mesh_9 = Instance.new("SpecialMesh", speaker4)
mesh_9.Scale = Vector3.new(0.2, 1, 1)
mesh_9.MeshType = Enum.MeshType.Cylinder

 part_7 = Instance.new("Part", Boombox)
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.Smooth
part_7.Material = Enum.Material.Neon
part_7.Size = Vector3.new(0.2, 0.847, 1.037)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(6.823, 0.769, 122.734) * CFrame.Angles(-0, -0.52360057830811, -0)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Lime green")
part_7.Friction = 0.3
part_7.Shape = Enum.PartType.Cylinder
part_7.BottomSurface = Enum.SurfaceType.Smooth

 mesh_10 = Instance.new("SpecialMesh", part_7)
mesh_10.Scale = Vector3.new(0.517, 1, 1)
mesh_10.MeshType = Enum.MeshType.Cylinder

 part_8 = Instance.new("Part", Boombox)
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.Smooth
part_8.Material = Enum.Material.Neon
part_8.Size = Vector3.new(0.2, 0.847, 1.037)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(6.691, 0.769, 122.657) * CFrame.Angles(-0, -0.52360057830811, -0)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Lime green")
part_8.Friction = 0.3
part_8.Shape = Enum.PartType.Cylinder
part_8.BottomSurface = Enum.SurfaceType.Smooth

 mesh_11 = Instance.new("SpecialMesh", part_8)
mesh_11.Scale = Vector3.new(0.517, 1, 1)
mesh_11.MeshType = Enum.MeshType.Cylinder

 part_9 = Instance.new("Part", Boombox)
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.Smooth
part_9.Material = Enum.Material.SmoothPlastic
part_9.Size = Vector3.new(0.376, 0.633, 0.991)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(8.058, 0.785, 123.426) * CFrame.Angles(-0, -0.52360057830811, -0)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Dark stone grey")
part_9.Friction = 0.3
part_9.Shape = Enum.PartType.Cylinder
part_9.BottomSurface = Enum.SurfaceType.Smooth

 handle = Instance.new("Part", Boombox)
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.TopSurface = Enum.SurfaceType.Smooth
handle.Material = Enum.Material.SmoothPlastic
handle.Size = Vector3.new(2.755, 0.786, 1.037)
handle.Name = "Handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(6.922, 0.781, 122.791) * CFrame.Angles(-0, -0.52360057830811, -0)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BrickColor = BrickColor.new("Dark stone grey")
handle.Friction = 0.3
handle.Shape = Enum.PartType.Cylinder
handle.BottomSurface = Enum.SurfaceType.Smooth

 part_10 = Instance.new("Part", Boombox)
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.Smooth
part_10.Material = Enum.Material.Neon
part_10.Size = Vector3.new(0.376, 0.633, 0.595)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(8.059, 0.785, 123.432) * CFrame.Angles(-0, -0.52360057830811, -0)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Really blue")
part_10.Friction = 0.3
part_10.Shape = Enum.PartType.Cylinder
part_10.BottomSurface = Enum.SurfaceType.Smooth

 part_11 = Instance.new("Part", Boombox)
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.Smooth
part_11.Material = Enum.Material.Neon
part_11.Size = Vector3.new(0.2, 0.847, 1.037)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(6.571, 0.769, 122.588) * CFrame.Angles(-0, -0.52360057830811, -0)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Lime green")
part_11.Friction = 0.3
part_11.Shape = Enum.PartType.Cylinder
part_11.BottomSurface = Enum.SurfaceType.Smooth

 mesh_12 = Instance.new("SpecialMesh", part_11)
mesh_12.Scale = Vector3.new(0.517, 1, 1)
mesh_12.MeshType = Enum.MeshType.Cylinder

 part_12 = Instance.new("Part", Boombox)
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.Smooth
part_12.Material = Enum.Material.Neon
part_12.Size = Vector3.new(0.2, 0.847, 1.037)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(6.45, 0.769, 122.518) * CFrame.Angles(-0, -0.52360057830811, -0)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Lime green")
part_12.Friction = 0.3
part_12.Shape = Enum.PartType.Cylinder
part_12.BottomSurface = Enum.SurfaceType.Smooth

 mesh_13 = Instance.new("SpecialMesh", part_12)
mesh_13.Scale = Vector3.new(0.517, 1, 1)
mesh_13.MeshType = Enum.MeshType.Cylinder

 part_13 = Instance.new("Part", Boombox)
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Material = Enum.Material.Neon
part_13.Size = Vector3.new(0.2, 0.2, 0.2)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(8.154, 0.914, 123.12) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Dark indigo")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("BlockMesh", part_13)
mesh_14.Scale = Vector3.new(0.2, 0.73, 0.67)

 part_14 = Instance.new("Part", Boombox)
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.Smooth
part_14.Material = Enum.Material.Neon
part_14.Size = Vector3.new(0.2, 0.847, 1.037)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(6.944, 0.769, 122.803) * CFrame.Angles(-0, -0.52360057830811, -0)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Lime green")
part_14.Friction = 0.3
part_14.Shape = Enum.PartType.Cylinder
part_14.BottomSurface = Enum.SurfaceType.Smooth

 mesh_15 = Instance.new("SpecialMesh", part_14)
mesh_15.Scale = Vector3.new(0.517, 1, 1)
mesh_15.MeshType = Enum.MeshType.Cylinder

 part_15 = Instance.new("Part", Boombox)
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Material = Enum.Material.Neon
part_15.Size = Vector3.new(0.2, 0.2, 0.2)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(8.141, 0.646, 123.113) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Dark indigo")
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("BlockMesh", part_15)
mesh_16.Scale = Vector3.new(0.2, 0.73, 0.67)

 part_16 = Instance.new("Part", Boombox)
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.Material = Enum.Material.Neon
part_16.Size = Vector3.new(0.2, 0.2, 0.2)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(7.808, 0.646, 123.691) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Dark indigo")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_17 = Instance.new("BlockMesh", part_16)
mesh_17.Scale = Vector3.new(0.2, 0.73, 0.67)

 part_17 = Instance.new("Part", Boombox)
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.Material = Enum.Material.Neon
part_17.Size = Vector3.new(0.2, 0.6, 0.2)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(5.312, 1.235, 121.858) * CFrame.Angles(-0, -0.52360057830811, -0)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("New Yeller")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_18 = Instance.new("BlockMesh", part_17)
mesh_18.Scale = Vector3.new(0.6, 1, 0.5)

 part_18 = Instance.new("Part", Boombox)
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.Material = Enum.Material.Neon
part_18.Size = Vector3.new(0.2, 0.2, 0.2)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(7.82, 0.914, 123.698) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Dark indigo")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_19 = Instance.new("BlockMesh", part_18)
mesh_19.Scale = Vector3.new(0.2, 0.73, 0.67)

 hitbox = Instance.new("Part", Boombox)
hitbox.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Transparency = 1
hitbox.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Material = Enum.Material.SmoothPlastic
hitbox.Size = Vector3.new(3.458, 1.049, 0.899)
hitbox.Name = "Hitbox"
hitbox.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.CFrame = CFrame.new(6.752, 0.599, 122.704) * CFrame.Angles(-0, -0.52360057830811, -3.1415927410126)
hitbox.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BrickColor = BrickColor.new("Really black")
hitbox.Friction = 0.3
hitbox.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_19 = Instance.new("Part", Boombox)
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.Material = Enum.Material.SmoothPlastic
part_19.Size = Vector3.new(0.2, 0.2, 0.2)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(6.756, 1.281, 123.233) * CFrame.Angles(-3.1415920257568, -1.0472015142441, -3.0041179656982)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BrickColor = BrickColor.new("Fossil")
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_20 = Instance.new("BlockMesh", part_19)
mesh_20.Scale = Vector3.new(0.2, 0.66, 0.62)

 handle_2 = Instance.new("Part", Boombox)
handle_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.Material = Enum.Material.Neon
handle_2.Size = Vector3.new(3.257, 0.2, 0.2)
handle_2.Name = "Handle"
handle_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.CFrame = CFrame.new(6.747, 0.1, 122.686) * CFrame.Angles(-0, -0.52360057830811, -3.1415927410126)
handle_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.BrickColor = BrickColor.new("New Yeller")
handle_2.Friction = 0.3
handle_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_21 = Instance.new("BlockMesh", handle_2)
mesh_21.Scale = Vector3.new(1, 0.32, 0.5)

 part_20 = Instance.new("Part", Boombox)
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.Smooth
part_20.Material = Enum.Material.Neon
part_20.Size = Vector3.new(0.2, 0.206, 0.206)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(5.345, 0.169, 121.877) * CFrame.Angles(-0, 1.0472013950348, -3.1415927410126)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("New Yeller")
part_20.Friction = 0.3
part_20.Shape = Enum.PartType.Cylinder
part_20.BottomSurface = Enum.SurfaceType.Smooth

 mesh_22 = Instance.new("SpecialMesh", part_20)
mesh_22.Scale = Vector3.new(0.5, 1, 1)
mesh_22.MeshType = Enum.MeshType.Cylinder

 part_21 = Instance.new("Part", Boombox)
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Material = Enum.Material.Neon
part_21.Size = Vector3.new(0.2, 0.836, 0.2)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(5.306, 0.576, 121.855) * CFrame.Angles(-0, -0.52360057830811, -3.1415927410126)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("New Yeller")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("BlockMesh", part_21)
mesh_23.Scale = Vector3.new(0.58, 1, 0.5)

 part_22 = Instance.new("Part", Boombox)
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.Smooth
part_22.Material = Enum.Material.Neon
part_22.Size = Vector3.new(0.2, 0.206, 0.206)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(8.155, 0.169, 123.499) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -0)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("New Yeller")
part_22.Friction = 0.3
part_22.Shape = Enum.PartType.Cylinder
part_22.BottomSurface = Enum.SurfaceType.Smooth

 mesh_24 = Instance.new("SpecialMesh", part_22)
mesh_24.Scale = Vector3.new(0.5, 1, 1)
mesh_24.MeshType = Enum.MeshType.Cylinder

 part_23 = Instance.new("Part", Boombox)
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Material = Enum.Material.Neon
part_23.Size = Vector3.new(0.2, 0.836, 0.2)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(8.193, 0.576, 123.521) * CFrame.Angles(-0, -0.52360057830811, -3.1415927410126)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BrickColor = BrickColor.new("New Yeller")
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_25 = Instance.new("BlockMesh", part_23)
mesh_25.Scale = Vector3.new(0.58, 1, 0.51)

 part_24 = Instance.new("Part", Boombox)
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Material = Enum.Material.SmoothPlastic
part_24.Size = Vector3.new(3.278, 0.566, 0.899)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(6.75, 0.354, 122.703) * CFrame.Angles(-0, -0.52360057830811, -3.1415927410126)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BrickColor = BrickColor.new("Black")
part_24.Friction = 0.3
part_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 wedge = Instance.new("WedgePart", Boombox)
wedge.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.Friction = 0.3
wedge.Material = Enum.Material.SmoothPlastic
wedge.Size = Vector3.new(0.892, 0.48, 0.4)
wedge.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.CFrame = CFrame.new(7.301, 0.877, 123.014) * CFrame.Angles(-0, 1.0472013950348, -0)
wedge.BrickColor = BrickColor.new("Black")

 wedge_2 = Instance.new("WedgePart", Boombox)
wedge_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.Friction = 0.3
wedge_2.Material = Enum.Material.SmoothPlastic
wedge_2.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.CFrame = CFrame.new(5.506, 0.877, 121.977) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
wedge_2.BrickColor = BrickColor.new("Black")

 wedge_3 = Instance.new("WedgePart", Boombox)
wedge_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.Friction = 0.3
wedge_3.Material = Enum.Material.SmoothPlastic
wedge_3.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.CFrame = CFrame.new(5.887, 0.877, 122.197) * CFrame.Angles(-0, 1.0472013950348, -0)
wedge_3.BrickColor = BrickColor.new("Black")

 wedge_4 = Instance.new("WedgePart", Boombox)
wedge_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.Friction = 0.3
wedge_4.Material = Enum.Material.SmoothPlastic
wedge_4.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.CFrame = CFrame.new(7.999, 0.877, 123.417) * CFrame.Angles(-0, 1.0472013950348, -0)
wedge_4.BrickColor = BrickColor.new("Black")

 wedge_5 = Instance.new("WedgePart", Boombox)
wedge_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.Friction = 0.3
wedge_5.Material = Enum.Material.SmoothPlastic
wedge_5.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.CFrame = CFrame.new(7.648, 0.877, 123.214) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
wedge_5.BrickColor = BrickColor.new("Black")

 wedge_6 = Instance.new("WedgePart", Boombox)
wedge_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.Friction = 0.3
wedge_6.Material = Enum.Material.SmoothPlastic
wedge_6.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.CFrame = CFrame.new(6.949, 0.877, 122.811) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
wedge_6.BrickColor = BrickColor.new("Black")

 wedge_7 = Instance.new("WedgePart", Boombox)
wedge_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.Friction = 0.3
wedge_7.Material = Enum.Material.SmoothPlastic
wedge_7.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.CFrame = CFrame.new(6.234, 0.877, 122.397) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
wedge_7.BrickColor = BrickColor.new("Black")

 wedge_8 = Instance.new("WedgePart", Boombox)
wedge_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.Friction = 0.3
wedge_8.Material = Enum.Material.SmoothPlastic
wedge_8.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.CFrame = CFrame.new(6.603, 0.877, 122.611) * CFrame.Angles(-0, 1.0472013950348, -0)
wedge_8.BrickColor = BrickColor.new("Black")

 part_25 = Instance.new("Part", Boombox)
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.Smooth
part_25.Material = Enum.Material.SmoothPlastic
part_25.Size = Vector3.new(0.896, 0.2, 0.2)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(5.337, 0.169, 121.889) * CFrame.Angles(-0, 1.0472013950348, -3.1415927410126)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Black")
part_25.Friction = 0.3
part_25.Shape = Enum.PartType.Cylinder
part_25.BottomSurface = Enum.SurfaceType.Smooth

 part_26 = Instance.new("Part", Boombox)
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Material = Enum.Material.SmoothPlastic
part_26.Size = Vector3.new(0.2, 0.835, 0.899)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(8.186, 0.576, 123.532) * CFrame.Angles(-0, -0.52360057830811, -3.1415927410126)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Black")
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("BlockMesh", part_26)
mesh_26.Scale = Vector3.new(0.57, 1, 1)

 part_27 = Instance.new("Part", Boombox)
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.Smooth
part_27.Material = Enum.Material.SmoothPlastic
part_27.Size = Vector3.new(0.896, 0.2, 0.2)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(8.148, 0.169, 123.512) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -0)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BrickColor = BrickColor.new("Black")
part_27.Friction = 0.3
part_27.Shape = Enum.PartType.Cylinder
part_27.BottomSurface = Enum.SurfaceType.Smooth

 part_28 = Instance.new("Part", Boombox)
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.Material = Enum.Material.SmoothPlastic
part_28.Size = Vector3.new(0.2, 0.835, 0.899)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(5.3, 0.576, 121.866) * CFrame.Angles(-0, -0.52360057830811, -3.1415927410126)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("Black")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("BlockMesh", part_28)
mesh_27.Scale = Vector3.new(0.57, 1, 1)

 wedge_9 = Instance.new("WedgePart", Boombox)
wedge_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.Friction = 0.3
wedge_9.Material = Enum.Material.SmoothPlastic
wedge_9.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.CFrame = CFrame.new(6.96, 0.813, 122.817) * CFrame.Angles(-0, 1.0472013950348, -3.1415927410126)
wedge_9.BrickColor = BrickColor.new("Black")

 handle_3 = Instance.new("Part", Boombox)
handle_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.Material = Enum.Material.SmoothPlastic
handle_3.Size = Vector3.new(0.302, 0.2, 2.415)
handle_3.Name = "Handle"
handle_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.CFrame = CFrame.new(6.706, 2.212, 122.662) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
handle_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle_3.BrickColor = BrickColor.new("Really black")
handle_3.Friction = 0.3
handle_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_28 = Instance.new("SpecialMesh", handle_3)
mesh_28.Scale = Vector3.new(1, 0.92, 1)
mesh_28.MeshType = Enum.MeshType.Brick

 part_29 = Instance.new("Part", Boombox)
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.Material = Enum.Material.Neon
part_29.Size = Vector3.new(0.2, 0.2, 0.2)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(7.761, 2.216, 123.271) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("New Yeller")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("SpecialMesh", part_29)
mesh_29.Scale = Vector3.new(0.5, 0.97, 0.9)
mesh_29.MeshType = Enum.MeshType.Cylinder

 part_30 = Instance.new("Part", Boombox)
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Material = Enum.Material.Neon
part_30.Size = Vector3.new(0.2, 0.6, 0.2)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(7.761, 1.916, 123.271) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BrickColor = BrickColor.new("New Yeller")
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("BlockMesh", part_30)
mesh_30.Scale = Vector3.new(0.5, 1, 0.9)

 part_31 = Instance.new("Part", Boombox)
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Material = Enum.Material.Neon
part_31.Size = Vector3.new(0.2, 0.2, 0.2)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(5.665, 2.216, 122.06) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("New Yeller")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("SpecialMesh", part_31)
mesh_31.Scale = Vector3.new(0.5, 0.97, 0.9)
mesh_31.MeshType = Enum.MeshType.Cylinder

 part_32 = Instance.new("Part", Boombox)
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Material = Enum.Material.SmoothPlastic
part_32.Size = Vector3.new(0.302, 0.2, 0.2)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(5.665, 2.216, 122.06) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Really black")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_32 = Instance.new("SpecialMesh", part_32)
mesh_32.Scale = Vector3.new(1, 0.96, 0.89)
mesh_32.MeshType = Enum.MeshType.Cylinder

 part_33 = Instance.new("Part", Boombox)
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.Material = Enum.Material.Neon
part_33.Size = Vector3.new(0.2, 0.2, 2.417)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(6.706, 2.212, 122.662) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BrickColor = BrickColor.new("New Yeller")
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_33 = Instance.new("SpecialMesh", part_33)
mesh_33.Scale = Vector3.new(0.5, 0.93, 1)
mesh_33.MeshType = Enum.MeshType.Brick

 part_34 = Instance.new("Part", Boombox)
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Material = Enum.Material.SmoothPlastic
part_34.Size = Vector3.new(0.302, 0.592, 0.2)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(5.665, 1.919, 122.06) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Really black")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("BlockMesh", part_34)
mesh_34.Scale = Vector3.new(1, 1, 0.89)

 part_35 = Instance.new("Part", Boombox)
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.Material = Enum.Material.Neon
part_35.Size = Vector3.new(0.2, 0.6, 0.2)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(5.665, 1.916, 122.06) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("New Yeller")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_35 = Instance.new("BlockMesh", part_35)
mesh_35.Scale = Vector3.new(0.5, 1, 0.9)

 part_36 = Instance.new("Part", Boombox)
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Material = Enum.Material.SmoothPlastic
part_36.Size = Vector3.new(0.302, 0.2, 0.2)
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(7.761, 2.216, 123.271) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BrickColor = BrickColor.new("Really black")
part_36.Friction = 0.3
part_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("SpecialMesh", part_36)
mesh_36.Scale = Vector3.new(1, 0.96, 0.89)
mesh_36.MeshType = Enum.MeshType.Cylinder

 part_37 = Instance.new("Part", Boombox)
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.Material = Enum.Material.SmoothPlastic
part_37.Size = Vector3.new(0.302, 0.592, 0.2)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(7.761, 1.916, 123.271) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BrickColor = BrickColor.new("Really black")
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("BlockMesh", part_37)
mesh_37.Scale = Vector3.new(1, 1, 0.89)

 part_38 = Instance.new("Part", Boombox)
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Material = Enum.Material.SmoothPlastic
part_38.Size = Vector3.new(0.2, 0.2, 0.2)
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(6.786, 1.281, 122.196) * CFrame.Angles(3.1415920257568, -1.0472015142441, 3.0041179656982)
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BrickColor = BrickColor.new("Fossil")
part_38.Friction = 0.3
part_38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_38 = Instance.new("BlockMesh", part_38)
mesh_38.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_39 = Instance.new("Part", Boombox)
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.TopSurface = Enum.SurfaceType.Smooth
part_39.Material = Enum.Material.SmoothPlastic
part_39.Size = Vector3.new(0.898, 0.2, 0.2)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(8.146, 1.521, 123.511) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BrickColor = BrickColor.new("Black")
part_39.Friction = 0.3
part_39.Shape = Enum.PartType.Cylinder
part_39.BottomSurface = Enum.SurfaceType.Smooth

 part_40 = Instance.new("Part", Boombox)
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Material = Enum.Material.SmoothPlastic
part_40.Size = Vector3.new(0.2, 0.2, 0.2)
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(7.213, 1.281, 122.442) * CFrame.Angles(3.1415920257568, -1.0472015142441, 3.0041179656982)
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BrickColor = BrickColor.new("Fossil")
part_40.Friction = 0.3
part_40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_39 = Instance.new("BlockMesh", part_40)
mesh_39.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_41 = Instance.new("Part", Boombox)
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.Smooth
part_41.Material = Enum.Material.Neon
part_41.Size = Vector3.new(0.2, 0.202, 0.202)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(5.347, 1.521, 121.878) * CFrame.Angles(-0, 1.0472013950348, -0)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("New Yeller")
part_41.Friction = 0.3
part_41.Shape = Enum.PartType.Cylinder
part_41.BottomSurface = Enum.SurfaceType.Smooth

 mesh_40 = Instance.new("SpecialMesh", part_41)
mesh_40.Scale = Vector3.new(0.5, 1, 1)
mesh_40.MeshType = Enum.MeshType.Cylinder

 part_42 = Instance.new("Part", Boombox)
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.Material = Enum.Material.SmoothPlastic
part_42.Size = Vector3.new(0.2, 0.592, 0.899)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(8.184, 1.235, 123.531) * CFrame.Angles(-0, -0.52360057830811, -0)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BrickColor = BrickColor.new("Black")
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_41 = Instance.new("BlockMesh", part_42)
mesh_41.Scale = Vector3.new(0.57, 1, 1)

 part_43 = Instance.new("Part", Boombox)
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.Material = Enum.Material.SmoothPlastic
part_43.Size = Vector3.new(0.2, 0.2, 0.2)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(7.086, 1.281, 122.369) * CFrame.Angles(3.1415920257568, -1.0472015142441, 3.0041179656982)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("Fossil")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_42 = Instance.new("BlockMesh", part_43)
mesh_42.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_44 = Instance.new("Part", Boombox)
part_44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.Material = Enum.Material.SmoothPlastic
part_44.Size = Vector3.new(0.2, 0.2, 0.2)
part_44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.CFrame = CFrame.new(6.648, 1.281, 122.116) * CFrame.Angles(3.1415920257568, -1.0472015142441, 3.0041179656982)
part_44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BrickColor = BrickColor.new("Fossil")
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_43 = Instance.new("BlockMesh", part_44)
mesh_43.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_45 = Instance.new("Part", Boombox)
part_45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.Material = Enum.Material.SmoothPlastic
part_45.Size = Vector3.new(0.906, 0.2, 1.024)
part_45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.CFrame = CFrame.new(6.704, 1.464, 122.679) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BrickColor = BrickColor.new("Really black")
part_45.Friction = 0.3
part_45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_46 = Instance.new("Part", Boombox)
part_46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.TopSurface = Enum.SurfaceType.Smooth
part_46.Material = Enum.Material.SmoothPlastic
part_46.Size = Vector3.new(0.896, 0.2, 0.2)
part_46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.CFrame = CFrame.new(5.34, 1.521, 121.89) * CFrame.Angles(-0, 1.0472013950348, -0)
part_46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BrickColor = BrickColor.new("Black")
part_46.Friction = 0.3
part_46.Shape = Enum.PartType.Cylinder
part_46.BottomSurface = Enum.SurfaceType.Smooth

 part_47 = Instance.new("Part", Boombox)
part_47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.Material = Enum.Material.SmoothPlastic
part_47.Size = Vector3.new(3.278, 0.566, 0.899)
part_47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.CFrame = CFrame.new(6.75, 1.336, 122.703) * CFrame.Angles(-0, -0.52360057830811, -0)
part_47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BrickColor = BrickColor.new("Black")
part_47.Friction = 0.3
part_47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 handle_4 = Instance.new("Part", Boombox)
handle_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.Material = Enum.Material.Neon
handle_4.Size = Vector3.new(0.2, 0.2, 3.269)
handle_4.Name = "Handle"
handle_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.CFrame = CFrame.new(6.76, 1.594, 122.693) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
handle_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle_4.BrickColor = BrickColor.new("New Yeller")
handle_4.Friction = 0.3
handle_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_44 = Instance.new("BlockMesh", handle_4)
mesh_44.Scale = Vector3.new(0.5, 0.28, 1)

 part_48 = Instance.new("Part", Boombox)
part_48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.TopSurface = Enum.SurfaceType.Smooth
part_48.Material = Enum.Material.Neon
part_48.Size = Vector3.new(0.2, 0.206, 0.206)
part_48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.CFrame = CFrame.new(8.154, 1.521, 123.499) * CFrame.Angles(-0, 1.0472013950348, -0)
part_48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BrickColor = BrickColor.new("New Yeller")
part_48.Friction = 0.3
part_48.Shape = Enum.PartType.Cylinder
part_48.BottomSurface = Enum.SurfaceType.Smooth

 mesh_45 = Instance.new("SpecialMesh", part_48)
mesh_45.Scale = Vector3.new(0.5, 1, 1)
mesh_45.MeshType = Enum.MeshType.Cylinder

 part_49 = Instance.new("Part", Boombox)
part_49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.Material = Enum.Material.SmoothPlastic
part_49.Size = Vector3.new(0.2, 0.2, 0.2)
part_49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.CFrame = CFrame.new(6.191, 1.281, 122.907) * CFrame.Angles(-3.1415920257568, -1.0472015142441, -3.0041179656982)
part_49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BrickColor = BrickColor.new("Fossil")
part_49.Friction = 0.3
part_49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_46 = Instance.new("BlockMesh", part_49)
mesh_46.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_50 = Instance.new("Part", Boombox)
part_50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.Material = Enum.Material.SmoothPlastic
part_50.Size = Vector3.new(0.2, 0.2, 0.2)
part_50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.CFrame = CFrame.new(6.33, 1.281, 122.987) * CFrame.Angles(-3.1415920257568, -1.0472015142441, -3.0041179656982)
part_50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BrickColor = BrickColor.new("Fossil")
part_50.Friction = 0.3
part_50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_47 = Instance.new("BlockMesh", part_50)
mesh_47.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_51 = Instance.new("Part", Boombox)
part_51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.Material = Enum.Material.SmoothPlastic
part_51.Size = Vector3.new(0.2, 0.2, 0.2)
part_51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.CFrame = CFrame.new(6.476, 1.281, 123.071) * CFrame.Angles(-3.1415920257568, -1.0472015142441, -3.0041179656982)
part_51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BrickColor = BrickColor.new("Fossil")
part_51.Friction = 0.3
part_51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_48 = Instance.new("BlockMesh", part_51)
mesh_48.Scale = Vector3.new(0.2, 0.66, 0.62)

 wedge_10 = Instance.new("WedgePart", Boombox)
wedge_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.Friction = 0.3
wedge_10.Material = Enum.Material.SmoothPlastic
wedge_10.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.CFrame = CFrame.new(5.863, 0.813, 122.183) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -0)
wedge_10.BrickColor = BrickColor.new("Black")

 wedge_11 = Instance.new("WedgePart", Boombox)
wedge_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.Friction = 0.3
wedge_11.Material = Enum.Material.SmoothPlastic
wedge_11.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.CFrame = CFrame.new(5.516, 0.813, 121.983) * CFrame.Angles(-0, 1.0472013950348, -3.1415927410126)
wedge_11.BrickColor = BrickColor.new("Black")

 wedge_12 = Instance.new("WedgePart", Boombox)
wedge_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.Friction = 0.3
wedge_12.Material = Enum.Material.SmoothPlastic
wedge_12.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.CFrame = CFrame.new(7.658, 0.813, 123.22) * CFrame.Angles(-0, 1.0472013950348, -3.1415927410126)
wedge_12.BrickColor = BrickColor.new("Black")

 wedge_13 = Instance.new("WedgePart", Boombox)
wedge_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.Friction = 0.3
wedge_13.Material = Enum.Material.SmoothPlastic
wedge_13.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.CFrame = CFrame.new(6.591, 0.813, 122.604) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -0)
wedge_13.BrickColor = BrickColor.new("Black")

 wedge_14 = Instance.new("WedgePart", Boombox)
wedge_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.Friction = 0.3
wedge_14.Material = Enum.Material.SmoothPlastic
wedge_14.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.CFrame = CFrame.new(8.005, 0.813, 123.42) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -0)
wedge_14.BrickColor = BrickColor.new("Black")

 wedge_15 = Instance.new("WedgePart", Boombox)
wedge_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.Friction = 0.3
wedge_15.Material = Enum.Material.SmoothPlastic
wedge_15.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.CFrame = CFrame.new(7.307, 0.813, 123.017) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -0)
wedge_15.BrickColor = BrickColor.new("Black")

 wedge_16 = Instance.new("WedgePart", Boombox)
wedge_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.Friction = 0.3
wedge_16.Material = Enum.Material.SmoothPlastic
wedge_16.Size = Vector3.new(0.892, 0.48, 0.4)
wedge_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.CFrame = CFrame.new(6.244, 0.813, 122.403) * CFrame.Angles(-0, 1.0472013950348, -3.1415927410126)
wedge_16.BrickColor = BrickColor.new("Black")

 part_52 = Instance.new("Part", Boombox)
part_52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.Material = Enum.Material.SmoothPlastic
part_52.Size = Vector3.new(0.2, 0.2, 0.2)
part_52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.CFrame = CFrame.new(6.932, 1.281, 122.28) * CFrame.Angles(3.1415920257568, -1.0472015142441, 3.0041179656982)
part_52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BrickColor = BrickColor.new("Fossil")
part_52.Friction = 0.3
part_52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_49 = Instance.new("BlockMesh", part_52)
mesh_49.Scale = Vector3.new(0.2, 0.66, 0.62)

 part_53 = Instance.new("Part", Boombox)
part_53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.Material = Enum.Material.SmoothPlastic
part_53.Size = Vector3.new(0.2, 0.592, 0.899)
part_53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.CFrame = CFrame.new(5.305, 1.223, 121.869) * CFrame.Angles(-0, -0.52360057830811, -0)
part_53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BrickColor = BrickColor.new("Black")
part_53.Friction = 0.3
part_53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_50 = Instance.new("BlockMesh", part_53)
mesh_50.Scale = Vector3.new(0.57, 1, 1)

 part_54 = Instance.new("Part", Boombox)
part_54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.Material = Enum.Material.Neon
part_54.Size = Vector3.new(0.216, 0.2, 0.2)
part_54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.CFrame = CFrame.new(7.988, 1.138, 123.408) * CFrame.Angles(-3.1415927410126, -1.0472013950348, -3.1415927410126)
part_54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BrickColor = BrickColor.new("Really blue")
part_54.Friction = 0.3
part_54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_51 = Instance.new("BlockMesh", part_54)
mesh_51.Scale = Vector3.new(1, 0.57, 0.67)

 hitbox_2 = Instance.new("Part", Boombox)
hitbox_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.Transparency = 1
hitbox_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.Material = Enum.Material.SmoothPlastic
hitbox_2.Size = Vector3.new(3.458, 1.043, 0.899)
hitbox_2.Name = "Hitbox"
hitbox_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.CFrame = CFrame.new(6.752, 1.098, 122.704) * CFrame.Angles(-0, -0.52360057830811, -3.1415927410126)
hitbox_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox_2.BrickColor = BrickColor.new("Really black")
hitbox_2.Friction = 0.3
hitbox_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_55 = Instance.new("Part", Boombox)
part_55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.Material = Enum.Material.Neon
part_55.Size = Vector3.new(0.2, 0.6, 0.2)
part_55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.CFrame = CFrame.new(8.191, 1.235, 123.52) * CFrame.Angles(-0, -0.52360057830811, -0)
part_55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BrickColor = BrickColor.new("New Yeller")
part_55.Friction = 0.3
part_55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_52 = Instance.new("BlockMesh", part_55)
mesh_52.Scale = Vector3.new(0.6, 1, 0.5)

 part_56 = Instance.new("Part", Boombox)
part_56.CanCollide = false
part_56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.Material = Enum.Material.SmoothPlastic
part_56.Size = Vector3.new(1.4, 0.2, 1.4)
part_56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.CFrame = CFrame.new(7.28, 0.804, 123.529) * CFrame.Angles(3.141592502594, -1.0472015142441, 1.5707963705063)
part_56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BrickColor = BrickColor.new("Really black")
part_56.Friction = 0.3
part_56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_53 = Instance.new("SpecialMesh", part_56)
mesh_53.Scale = Vector3.new(1, 0.091, 1)
mesh_53.MeshType = Enum.MeshType.Sphere

 part_57 = Instance.new("Part", Boombox)
part_57.CanCollide = false
part_57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.Material = Enum.Material.SmoothPlastic
part_57.Size = Vector3.new(1.4, 0.2, 1.4)
part_57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.CFrame = CFrame.new(5.652, 0.804, 122.589) * CFrame.Angles(3.141592502594, -1.0472015142441, 1.5707963705063)
part_57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BrickColor = BrickColor.new("Really black")
part_57.Friction = 0.3
part_57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_54 = Instance.new("SpecialMesh", part_57)
mesh_54.Scale = Vector3.new(1, 0.091, 1)
mesh_54.MeshType = Enum.MeshType.Sphere

 part_58 = Instance.new("Part", Boombox)
part_58.CanCollide = false
part_58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.Material = Enum.Material.SmoothPlastic
part_58.Size = Vector3.new(1.4, 0.2, 1.4)
part_58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.CFrame = CFrame.new(7.732, 0.804, 122.745) * CFrame.Angles(3.141592502594, -1.0472015142441, 1.5707963705063)
part_58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BrickColor = BrickColor.new("Really black")
part_58.Friction = 0.3
part_58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_55 = Instance.new("SpecialMesh", part_58)
mesh_55.Scale = Vector3.new(1, 0.091, 1)
mesh_55.MeshType = Enum.MeshType.Sphere

 part_59 = Instance.new("Part", Boombox)
part_59.CanCollide = false
part_59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.Material = Enum.Material.SmoothPlastic
part_59.Size = Vector3.new(1.4, 0.2, 1.4)
part_59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.CFrame = CFrame.new(6.104, 0.804, 121.805) * CFrame.Angles(3.141592502594, -1.0472015142441, 1.5707963705063)
part_59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BrickColor = BrickColor.new("Really black")
part_59.Friction = 0.3
part_59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

mesh_56 = Instance.new("SpecialMesh", part_59)
mesh_56.Scale = Vector3.new(1, 0.091, 1)
mesh_56.MeshType = Enum.MeshType.Sphere


--DavidAguirre weld script--

function createCFrameCache(part1)
 local f = Instance.new("Folder",part1)
 f.Name = "CFrameCache"
 
 local c0 = Instance.new("CFrameValue",f)
 c0.Name = "C0"
 c0.Value = handle.CFrame:inverse()
 
 local c1 = Instance.new("CFrameValue",f)
 c1.Name = "C1"
 c1.Value = part1.CFrame:inverse()
end

function WeldIt(toolz)
wait()

tool = toolz
handle = tool.Handle

for i,v in pairs(handle:GetChildren()) do
 if v:IsA("JointInstance") then
  v:Destroy()
 end
end

for i,v in pairs(tool:GetChildren()) do
 if v ~= handle then
  if v.className == "UnionOperation" or v.className == "Part" or v.className == "WedgePart" then
  if v:FindFirstChild("CFrameCache") == nil then
   createCFrameCache(v)
  end
  local w = Instance.new("Weld",handle)
  w.Part0 = handle
  w.Part1 = v 
  w.C0 = v.CFrameCache.C0.Value
  w.C1 = v.CFrameCache.C1.Value
 end
end
end
end

WeldIt(Boombox)

-- END BOOMBOX -- 


Staleness = script.Staleness
Stale1 = Staleness["1"]
Stale2 = Staleness["2"]
Stale3 = Staleness["3"]
Stale4 = Staleness["4"]
Stale5 = Staleness["5"]
Stale6 = Staleness["6"]
Stale7 = Staleness["7"]
Stale8 = Staleness["8"]
Stale9 = Staleness["9"]

StaleCheck = script.StalenessChecker
StaleCheck1 = StaleCheck["1"]
StaleCheck2 = StaleCheck["2"]
StaleCheck3 = StaleCheck["3"]
StaleCheck4 = StaleCheck["4"]
StaleCheck5 = StaleCheck["5"]
StaleCheck6 = StaleCheck["6"]
StaleCheck7 = StaleCheck["7"]
StaleCheck8 = StaleCheck["8"]
StaleCheck9 = StaleCheck["9"]

Lag = false
Buffed = false
_G.MusicGUI = false
CurrentMode = "Boombox"
Player = game.Players.LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"]
Character = Player.Character 
PlayerGui = Player.PlayerGui
GUI.Parent = PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
Sheathed = false
necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false 
equipped = true
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local CurrentMove = "[BLANK]"
mouse = Player:GetMouse()
RSH, LSH = nil, nil 
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"] 
StaledNum = 0
 
RSH.Parent = nil 
LSH.Parent = nil 

RW = Create("Weld"){
	Name = "Right Shoulder",
	Part0 = Torso ,
	C0 = cf(1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0), 
	Part1 = RightArm ,
	Parent = Torso ,
}

LW = Create("Weld"){
	Name = "Left Shoulder",
	Part0 = Torso ,
	C0 = cf(-1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0) ,
	Part1 = LeftArm ,
	Parent = Torso ,
}

--[[Functions]]--

function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function nooutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
	local fp = Create("Part"){
		formFactor = formfactor,
		Parent = parent,
		Reflectance = reflectance,
		Transparency = transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(brickcolor)),
		Name = name,
		Size = size,
		Position = Character.Torso.Position,
		Material = material,
	}
	nooutline(fp)
	return fp
end
	
function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local Msh = Create(Mesh){
		Parent = part,
		Offset = offset,
		Scale = scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = meshtype
		Msh.MeshId = meshid
	end
	return Msh
end
	
function weld(parent, part0, part1, c0, c1)
	local Weld = Create("Weld"){
		Parent = parent,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return Weld
end
	
handleweld = weld(m,Arm_Held,Flap1Handle,CFrame.new(0,0,0),CFrame.new(0,0,0))	
Flapweld = weld(m,Flap1Handle,Flap2Handle,CFrame.new(0,0,0),CFrame.new(0,0,0))	
Cannonweld = weld(m,Flap1Handle,Cannon.Handle,CFrame.new(0,0,0),CFrame.new(0,0,0))	
	
local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
	local edg1 = (c - a):Dot((b - a).unit)
	local edg2 = (a - b):Dot((c - b).unit)
	local edg3 = (b - c):Dot((a - c).unit)
	if edg1 <= (b - a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
	elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else
		assert(false, "unreachable")
	end
 
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
 
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
 
	local list = {}

	local Color = BrickColor.new("Dark stone grey")
 
	if len1 > 0.01 then
		local w1 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w1, 5)
		NoOutline(w1)
		local sz = Vector3.new(0.2, width, len1)
		w1.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w1,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w1.Size,
		}
		w1:BreakJoints()
		table.insert(Effects, {
			w1,
			"Disappear",
			.03
		})
		w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
		table.insert(list, w1)
	end
	if len2 > 0.01 then
		local w2 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w2, 5)
		NoOutline(w2)
		local sz = Vector3.new(0.2, width, len2)
		w2.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w2,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w2.Size,
		}
		w2:BreakJoints()
		table.insert(Effects, {
			w2,
			"Disappear",
			.03
		})
		w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
		table.insert(list, w2)
	end
	return unpack(list)
end
		
function so(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par)
		sou.Volume = vol
		sou.Pitch = pit
		sou.SoundId = id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 7)
	end))
end
 
function clerp(a, b, t)
	return a:lerp(b, t)
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= Frames then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / Frames) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - Frames * math.floor(tf / Frames)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Asset = "http://www.roblox.com/asset/?id="

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch,DefenseHexCheck,DefenseHex,SpeedHexCheck,SpeedHex,AttackHexCheck,AttackHex)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		if h.MaxHealth >= math.huge then
			hit:BreakJoints()
		end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			so(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.floor((math.random(minim, maxim))*Attack.Value)
		local hitpar = game.Players:FindFirstChild(hit.Parent.Name)
		if hitpar ~= nil then
			if hitpar:FindFirstChild("Backpack") ~= nil then
				for i,v in pairs(hitpar:GetChildren()) do
					if v.className == "LocalScript" then
						for c,b in pairs(v:GetChildren()) do
							if b.Name == "Stats" then
								if b.Stats:FindFirstChild("Defense") then
									def = b.Stats.Defense
									Damage = Damage / def.Value
									if DefenseHexCheck == true then
										def.Value = def.Value - DefenseHex
										ShowStat((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Secondary_Color.BrickColor.Color, "-", "Defense["..DefenseHex.."]")
									end
								end
								if b.Stats:FindFirstChild("Attack") then
									if AttackHexCheck == true then
										b.Stats.Attack.Value = b.Stats.Attack.Value - AttackHex
										ShowStat((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Secondary_Color.BrickColor.Color, "-", "Attack["..AttackHex.."]")
									end
								end
								if b.Stats:FindFirstChild("Speed") then
									if SpeedHexCheck == true then
										b.Stats.Speed.Value = b.Stats.Speed.Value - SpeedHex
										ShowStat((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Secondary_Color.BrickColor.Color, "-", "Speed["..SpeedHex.."]")
									end
								end
							end
						end
					end
				end
			end
		end
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		local Stalenum = 1
		if Stale1.Value == CurrentMove then
			StaleCheck1.Value = true
			Stalenum = Stalenum + 1
		end
		if Stale2.Value == CurrentMove then
			StaleCheck2.Value = true
			Stalenum = Stalenum + 1
		end
		if Stale3.Value  == CurrentMove then
			StaleCheck3.Value = true
			Stalenum = Stalenum + 1
		end
		if Stale4.Value  == CurrentMove then
			StaleCheck4.Value = true
			Stalenum = Stalenum + 1
		end
		if Stale5.Value  == CurrentMove then
			StaleCheck5.Value = true
			Stalenum = Stalenum + 1
		end
		if Stale6.Value == CurrentMove then
			StaleCheck6.Value = true
			Stalenum = Stalenum + 1
		end
		if Stale7.Value  == CurrentMove then
			StaleCheck7.Value = true
			Stalenum = Stalenum + 1
		end
		if Stale8.Value  == CurrentMove then
			StaleCheck8.Value = true
			Stalenum = Stalenum + 1
		end
		if Stale9.Value  == CurrentMove then
			StaleCheck9.Value = true
			Stalenum = Stalenum + 1
		end
		if StaledNum >= 9 then
			StaledNum = 0
		end
		StaledNum = StaledNum + 1
		if StaledNum == 1 then
			Stale1.Value = CurrentMove
		elseif StaledNum == 2 then
			Stale2.Value = CurrentMove
		elseif StaledNum == 3 then
			Stale3.Value = CurrentMove
		elseif StaledNum == 4 then
			Stale4.Value = CurrentMove
		elseif StaledNum == 5 then
			Stale5.Value = CurrentMove
		elseif StaledNum == 6 then
			Stale6.Value = CurrentMove
		elseif StaledNum == 7 then
			Stale7.Value = CurrentMove
		elseif StaledNum == 8 then
			Stale8.Value = CurrentMove
		elseif StaledNum == 9 then
			Stale9.Value = CurrentMove
		end
		Damage = Damage - (Stalenum/5)
		if Buffed == true then
			Damage = Damage + math.random(3,5)
		end
		if blocked == false then
--                h:TakeDamage(Damage)
			h.Health = h.Health - Damage
			ShowDamage((hit.CFrame * CFrame.new(0, 0, (hit.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), math.floor(-Damage), 1.5, Secondary_Color.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((hit.CFrame * CFrame.new(0, 0, (hit.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), math.floor(-Damage), 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * (knockback - (StaledNum/5)),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				--wait(0.010100110110111101101100011000010111011001100101011011100110011101100101)
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			if hitpar ~= nil then
				if hitpar:FindFirstChild("Backpack") ~= nil then
					for i,v in pairs(hitpar:GetChildren()) do
						if v.className == "LocalScript" then
							for c,b in pairs(v:GetChildren()) do
								if b.Name == "Stats" then
									if b.Stats:FindFirstChild("Frozen") then
										b.Stats.Frozen.Value = true
										coroutine.resume(coroutine.create(function()
											wait(1.5)
											b.Stats.Frozen.Value = false
										end))
									end
								end
							end
						end
					end
				end
			end
			local clo = script.Freeze:Clone()
			clo.Parent = hit.Parent
			clo.Disabled = false
		elseif Type == "Stun" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = script.Label:Clone()
	local TextLabel = EffectPart.GUI.Main.Label
	TextLabel.Text = Text
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

function ShowStat(Pos, Text, Time, Color, Check, StatChange)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = script.Label:Clone()
	local TextLabel = EffectPart.GUI.Main.Label
	TextLabel.Text = Check..StatChange
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type,DefenseHexCheck,DefenseHex,SpeedHexCheck,SpeedHex,AttackHexCheck,AttackHex)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,"Hit1",1)
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,"Hit1",1,DefenseHexCheck,DefenseHex,SpeedHexCheck,SpeedHex,AttackHexCheck,AttackHex)
end
end
end
end
end

function AerialLag(Delay,Time)
if Lag == false then
	if Floor == nil then
		if Anim == "Fall" then
			swait(Delay)
			HitFloor = false
			coroutine.resume(coroutine.create(function()
				while true do
					wait(0.05)
					if Floor ~= nil then
						HitFloor = true
						break
					end
				end
			end))
			if HitFloor == true then
				Lag = true
				attack = true
				local wat = Speed.Value
				Speed.Value = 0
				swait(Time)
				Speed.Value = wat
				Lag = false
				attack = false
			end
		end
	end
end
end

--[[Effect Functions]]--

effect = Create("Model"){
	Parent = Character
}
Effects = {}

CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  NoOutline(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

SlashEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=448386996", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end

SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

function ExplosionEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://15170610", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt,"Block1",delay,x3,y3,z3,msh})
end

function OpenHandEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://73031750", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt,"Cylinder",delay,x3,y3,z3,msh})
end

function CloseHandEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://90718752", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt,"Cylinder",delay,x3,y3,z3,msh})
end

function HeadEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt,"Cylinder",delay,x3,y3,z3,msh})
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt,"Shatter",num,prt.CFrame,math.random() - math.random(),0,math.random(50, 100) / 100})
end


CloudEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://1095708", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
end

function MagicCylinder2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
end

function MagicHead(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CanCollide = false
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicNote(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1088207",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block3",delay,x3,y3,z3,msh,cf(math.random(-25,25)/25,math.random(-25,25)/25,math.random(-25,-2.5)/25)})
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

function Laser(Part,Color1,Color2,LaserSize1,LaserSize2,Size1,Size2,Magnitude,Mindam,Maxdam,Knock,Type,DefenseHexCheck,DefenseHex,SpeedHexCheck,SpeedHex,AttackHexCheck,AttackHex)
sp = Part.Position 
dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0) 
local hit,pos = rayCast(sp,dirr.lookVector,100,Character) 
local las=Instance.new("Part",Character) 
las.Material = "SmoothPlastic"
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
rootlook=RootPart.CFrame
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new(Color1) 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
so("rbxassetid://231917788",Part,1,1.4) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(LaserSize1,LaserSize2,LaserSize1) 
end 
Part.Parent = nil 
end),las,msh) 
if pos ~= nil then 
RingEffect(BrickColor.new(Color1),cf(pos)*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),Size1,Size1,Size1,Size1,Size1,Size1,.07)
ExplosionEffect(BrickColor.new(Color2),cf(pos),Size2,Size2,Size2,Size2,Size2,Size2,.07)
end 
if hit ~= nil and pos ~= nil then 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Torso") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
MagniDamage(hit.Parent.Torso,hit.Parent.Torso,Magnitude,Mindam,Maxdam,Knock,Type,DefenseHexCheck,DefenseHex,SpeedHexCheck,SpeedHex,AttackHexCheck,AttackHex)
end 
end 
end 
end 

RocketTarget = RootPart
function ShootCannon(asd)
so("rbxassetid://263623156",asd,.5,1) 
so("rbxassetid://263610152",asd,.5,1) 
so("rbxassetid://263623139",asd,.5,1) 
local MainPos=asd.Position
local MainPos2=mouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
--[[local mag=(MainPos-pos).magnitude 
MagicCylinder(BrickColor.new("Bright blue"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,0.5,0,0.5,0.05)]]
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,RocketTarget.Parent)
local mag=(MainPos-pos).magnitude 
MagicCylinder2(BrickColor.new("New Yeller"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("New Yeller"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagniDamage(ref,hit,1,10,12,0,"Normal")
so("rbxassetid://263610039",ref,1,1) 
so("rbxassetid://263610111",ref,1,1) 
MagicBlock(BrickColor.new("New Yeller"),cf(pos),20,20,20,5,5,5,0.05)
game:GetService("Debris"):AddItem(ref,1)
MagniDamage(ref,ref,10,10,12,0,"Normal")
end
until num<=0
end))
end

function Trap(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,"SmoothPlastic",0,0.5,BrickColor.new("New Yeller"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
local spread=vt((math.random(-1,0)+math.random())*1,(math.random(-1,0)+math.random())*1,(math.random(-1,0)+math.random())*1)*(Prt.Position-mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if hit~=nil then
num=0
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("New Yeller"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
so("rbxassetid://263610039",ref,1,1)  
MagicBlock(BrickColor.new("New Yeller"),cf(pos),20,20,20,5,5,5,0.05)
game:GetService("Debris"):AddItem(ref,1)
end
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("New Yeller"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("New Yeller"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
for i=150,1,-1 do
local Area = MagicBlock(BrickColor.new("New Yeller"),cf(pos),20,20,20,5,5,5,0.05)
MagniDamage(ref,ref,30,1,3,-4,"Normal")
swait()
end
end),efprt,efmsh,spread)
end

function LaserBarrage(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,"SmoothPlastic",0,0.5,BrickColor.new("Really black"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
local spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Prt.Position-mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Really black"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
MagniDamage(efprt,hit,20,2,4,8,"Normal")
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really black"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function ShockwaveShot(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,"SmoothPlastic",0,0.5,BrickColor.new("New Yeller"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
local spread=vt((math.random(-1,0)+math.random())*3.5,(math.random(-1,0)+math.random())*3.5,(math.random(-1,0)+math.random())*3.5)*(Prt.Position-mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if hit~=nil then
num=0
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("New Yeller"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
so("rbxassetid://263610039",ref,1,1)  
MagicBlock(BrickColor.new("New Yeller"),cf(pos),10,10,10,2.5,2.5,2.5,0.05)
game:GetService("Debris"):AddItem(ref,1)
MagniDamage(ref,ref,10,9,10,10,"Float")
end
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("New Yeller"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function Shoot(asd, spread1, spread2, Color)
local MainPos = asd.Position
local MainPos2 = mouse.Hit.p
local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2 + spread)
num = 50
coroutine.resume(coroutine.create(function(Spreaded)
repeat
swait()
local hit, pos = rayCast(MainPos, MouseLook.lookVector, 50, RootPart.Parent)
local TheHit = mouse.Hit.p
local mag = (MainPos - pos).magnitude
CylinderEffect(BrickColor.new(Color), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, 0.5, 0, 1.5, 0.1)
MainPos = MainPos + MouseLook.lookVector * 50
num = num - 1
if hit ~= nil then
num = 0
Damagefunc(hit, hit, 4, 6, 0, "Normal", RootPart, 0, "rbxassetid://231917788", 0.8)
end
until num <= 0
end))
end

--[[Left Click Combo]]--

function attackone()
attack = true
if CurrentMode == "Boombox" then
CurrentMove = "Attack One (Boombox)"
local Hit1 = HitboxA.Touched:connect(function(hit)
Damagefunc(HitboxA,hit,5,7,5,"Knockdown",RootPart,0.2,"Hit1",1,false,0,false,0,false,0)
end)
local Hit2 = HitboxB.Touched:connect(function(hit)
Damagefunc(HitboxB,hit,5,7,5,"Knockdown",RootPart,0.2,"Hit1",1,false,0,false,0,false,0)
end)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(15),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(205), math.rad(0), math.rad(0)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
so("http://roblox.com/asset/?id=199145095",Cannon.Handle,1,1)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(45), math.rad(0), math.rad(0)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(30)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
Hit1:disconnect()
Hit2:disconnect()
elseif CurrentMode == "Cannon" then
CurrentMove = "Attack One (Cannon)"
Laser(CannonA,"Really black","New Yeller",0.15,0.7,1,1,15,6,8,0,"Normal",false,0,false,0,false,0)
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(30),math.rad(40),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(10),math.rad(-140),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(30), math.rad(-90), math.rad(0)), 0.3)
end
end
attack = false
end

function attacktwo()
attack = true
if CurrentMode == "Boombox" then
CurrentMove = "Attack Two (Boombox)"
local Hit1 = HitboxA.Touched:connect(function(hit)
Damagefunc(HitboxA,hit,6,8,5,"Float",RootPart,0.2,"Hit1",1,false,0,false,0,false,0)
end)
local Hit2 = HitboxB.Touched:connect(function(hit)
Damagefunc(HitboxB,hit,6,8,5,"Float",RootPart,0.2,"Hit1",1,false,0,false,0,false,0)
end)
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.3)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.7,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1.1,-1,-.5)*angles(math.rad(0),math.rad(-90),math.rad(40)),.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
so("http://roblox.com/asset/?id=199145095",Cannon.Handle,1,1)
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(-20), math.rad(90), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-20),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(23), math.rad(0), math.rad(0)), 0.3)
end
Hit1:disconnect()
Hit2:disconnect()
elseif CurrentMode == "Cannon" then
CurrentMove = "Attack Two (Cannon)"
Laser(CannonA,"New Yeller","Really black",0.15,0.7,1,1,15,6,8,0,"Normal",false,0,false,0,false,0)
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(30),math.rad(40),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(10),math.rad(-140),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
end
attack = false
end

function attackthree()
attack = true
if CurrentMode == "Boombox" then
CurrentMove = "Attack Three (Boombox)"
local Hit1 = HitboxA.Touched:connect(function(hit)
Damagefunc(HitboxA,hit,7,9,9,"Normal",RootPart,0.2,"Hit1",1,false,0,false,0,false,0)
end)
local Hit2 = HitboxB.Touched:connect(function(hit)
Damagefunc(HitboxB,hit,7,9,9,"Normal",RootPart,0.2,"Hit1",1,false,0,false,0,false,0)
end)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(-2),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1.6,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199145095",Cannon.Handle,1,1)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-2),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, .3) * angles(math.rad(0), math.rad(-10), math.rad(70)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1.6,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
Hit1:disconnect()
Hit2:disconnect()
elseif CurrentMode == "Cannon" then
CurrentMove = "Attack Three (Cannon)"
Laser(CannonA,"Really black","Really black",0.15,0.7,1,1,15,6,8,0,"Normal",true,0.05,false,0,false,0)
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(30),math.rad(40),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(10),math.rad(-140),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(7), math.rad(-90), math.rad(0)), 0.3)
end
end
attack = false
end

function attackfour()
attack = true
if CurrentMode == "Boombox" then
CurrentMove = "Attack Four (Boombox)"
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(5),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
so("http://www.roblox.com/asset/?id=14863866",HitboxA,10,1)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(5),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -0.5) * angles(math.rad(45), math.rad(0), math.rad(30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
Energy.Value = Energy.Value - 13
so("http://roblox.com/asset/?id=199145264",Cannon.Handle,1,.9)	
so("http://roblox.com/asset/?id=200632875",Cannon.Handle,1,.9)
MagicCircle("New Yeller",Cannon.Handle.CFrame,3,3,3,3,3,3,0.05)
MagniDamage(Cannon.Handle,Cannon.Handle,15,6,8,7,"Normal",true,0.05,false,0,false,0)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(5),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
elseif CurrentMode == "Cannon" then
CurrentMove = "Attack Four (Cannon)"
Laser(CannonA,"New Yeller","New Yeller",0.15,0.7,1,1,15,6,8,0,"Normal",false,0,true,0.05,false,0)
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(30),math.rad(40),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(10),math.rad(-140),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
end
attack = false
end

--[[Skills]]--

function Z()
attack = true
if CurrentMode == "Boombox" then
CurrentMove = "Boombox Z"
local Hit1 = HitboxA.Touched:connect(function(hit)
Damagefunc(HitboxA,hit,9,12,5,"Knockdown",RootPart,0.2,"Hit1",1,false,0,false,0,false,0)
end)
local Hit2 = HitboxB.Touched:connect(function(hit)
Damagefunc(HitboxB,hit,9,12,5,"Knockdown",RootPart,0.2,"Hit1",1,false,0,false,0,false,0)
end)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(15),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(205), math.rad(0), math.rad(0)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
so("http://www.roblox.com/asset/?id=203691447",Weapon.Cannon.Handle,1,1)
for i = 0,1,0.05 do
swait()
MagicBlock("New Yeller",Cannon.Handle.CFrame*CFrame.new(2,0,0)*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),0.5,0.5,0.5,0.5,0.5,0.5,0.05)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(45), math.rad(0), math.rad(0)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(30)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
swait()
so("http://roblox.com/asset/?id=199145264",Cannon.Handle,1,.9)	
so("http://roblox.com/asset/?id=200632875",Cannon.Handle,1,.9)
Energy.Value = Energy.Value - 19
MagicBlock("New Yeller",Cannon.Handle.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),4,4,4,4,4,4,0.05)
MagicBlock("New Yeller",Cannon.Handle.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),4,4,4,4,4,4,0.05)
MagicRing("Medium stone grey",Cannon.Handle.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),math.rad(32),math.rad(0)),1.5,1.5,0.1,1.5,1.5,0.1,0.05)
MagicRing("Medium stone grey",Cannon.Handle.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),math.rad(32),math.rad(0)),3,3,0.1,3,3,0.1,0.05)
MagicNote(BrickColor.Random(),Cannon.Speaker1.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
MagicNote(BrickColor.Random(),Cannon.Speaker2.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
MagicNote(BrickColor.Random(),Cannon.Speaker3.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
MagicNote(BrickColor.Random(),Cannon.Speaker4.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
MagniDamage(Cannon.Handle,Cannon.Handle,35,10,18,5,"Knockdown",true,0.1,false,0,false,0)
MagniDamage(Cannon.Handle,Cannon.Handle,45,5,7,8,"Normal",false,0,false,0,false,0)
Hit1:disconnect()
Hit2:disconnect()
elseif CurrentMode == "Cannon" then
CurrentMove = "Cannon Z"
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(30),math.rad(40),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(10),math.rad(-140),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(30), math.rad(-90), math.rad(0)), 0.3)
end
ShockwaveShot(CannonA)
end
attack = false
end

function X()
attack = true
if CurrentMode == "Boombox" then
CurrentMove = "Boombox X"
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(25),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-25),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(60), math.rad(0), math.rad(0)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
swait(2)
for i,v in pairs(Weapon:GetChildren()) do
	if v:IsA("Model") then
		for c,b in pairs(v:GetChildren()) do
			if b.className == "UnionOperation" or b.className == "WedgePart" or b.className == "Part" then
				if b.Name ~= "Hitbox" then
					b.Transparency = 1
				end
			end
		end
	end
end
local Dec = Weapon.Flap2.Decal.Decal
Dec.Parent = nil
local clone = script.Boombox:Clone()
for i,v in pairs(clone:GetChildren()) do
	if v:IsA("Model") then
		for c,b in pairs(v:GetChildren()) do
			if b.className == "UnionOperation" or b.className == "WedgePart" or b.className == "Part" then
				b.Locked = true
				b.Anchored = false
				b.CanCollide = true
			end
		end
	end
end
for i,v in pairs(Cannon.Handle:GetChildren()) do
	if v:IsA("Sound") then
		v.Parent = clone.Handle
	end
end
clone.Parent = workspace
clone:MoveTo(Weapon.Flap1.Handle.Position)
swait(4)
coroutine.resume(coroutine.create(function()
	TrapSet = true
	for i=8,1,-1 do
		swait(45)
		MagicCircle("Really black",clone.Handle.CFrame,7.5,7.5,7.5,7.5,7.5,7.5,0.05)
		MagicRing("Really black",clone.Handle.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),0,0),5,5,0.1,5,5,0.1,0.05)
		MagicRing("Really black",clone.Handle.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),5,5,0.1,5,5,0.1,0.05)
		MagicRing("Really black",clone.Handle.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),5,5,0.1,5,5,0.1,0.05)
		MagicNote(BrickColor.Random(),clone.Speaker1.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		MagicNote(BrickColor.Random(),clone.Speaker2.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		MagicNote(BrickColor.Random(),clone.Speaker3.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		MagicNote(BrickColor.Random(),clone.Speaker4.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		so("http://www.roblox.com/asset/?id=192410077", RootPart, 1, 1)
		MagniDamage(clone.Handle,clone.Handle,50,1,3,-5,"Normal",false,0,false,0,false,0)
		swait(45)
		MagicCircle("New Yeller",clone.Handle.CFrame,7.5,7.5,7.5,7.5,7.5,7.5,0.05)
		MagicRing("Really black",clone.Handle.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),5,5,0.1,5,5,0.1,0.05)
		MagicRing("Really black",clone.Handle.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),5,5,0.1,5,5,0.1,0.05)
		MagicRing("Really black",clone.Handle.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),5,5,0.1,5,5,0.1,0.05)
		MagicNote(BrickColor.Random(),clone.Speaker1.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		MagicNote(BrickColor.Random(),clone.Speaker2.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		MagicNote(BrickColor.Random(),clone.Speaker3.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		MagicNote(BrickColor.Random(),clone.Speaker4.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		so("http://www.roblox.com/asset/?id=192410077", RootPart, 1, 1)
		MagniDamage(clone.Handle,clone.Handle,42,1,3,-5,"Normal",false,0,true,0.05,false,0)
	end
	for i,v in pairs(clone.Handle:GetChildren()) do
		if v:IsA("Sound") then
			v.Parent = Cannon.Handle
		end
	end
	clone:Destroy()
	TrapSet = false
	for i,v in pairs(Weapon:GetChildren()) do
		if v:IsA("Model") then
			for c,b in pairs(v:GetChildren()) do
				if b.className == "UnionOperation" or b.className == "WedgePart" or b.className == "Part" then
					if b.Name ~= "Hitbox" then
						b.Transparency = 0
					end
				end
			end
		end
	end
	Dec.Parent = Weapon.Flap2.Decal
end))
elseif CurrentMode == "Cannon" then
CurrentMove = "Cannon X"
local num = 0
for i=5,1,-1 do
swait()
so("rbxassetid://263623156",CannonA,.5,1) 
so("rbxassetid://263610152",CannonA,.5,1) 
so("rbxassetid://263623139",CannonA,.5,1) 
num = num + 1
if num == 1 or num == 3 or num == 5 then
Shoot(CannonA, 2, 2, "Really black")
Shoot(CannonA, 2, 2, "New Yeller")
Shoot(CannonA, 2, 2, "Really black")
elseif num == 2 or num == 4 then
Shoot(CannonA, 2, 2, "New Yeller")
Shoot(CannonA, 2, 2, "New Yeller")
Shoot(CannonA, 2, 2, "Really black")
end
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(30),math.rad(40),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(10),math.rad(-140),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(20),math.rad(50),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(0),math.rad(-130),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
end
end
attack = false
end

function C()
attack = true
if CurrentMode == "Boombox" then
CurrentMove = "Boombox C"
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(15),math.rad(5),math.rad(-45)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(60), math.rad(0), math.rad(0)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(5),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
so("http://www.roblox.com/asset/?id=14863866",HitboxA,10,1)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(5),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -0.5) * angles(math.rad(45), math.rad(0), math.rad(30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(5),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(45), math.rad(0), math.rad(-45)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
coroutine.resume(coroutine.create(function()
	Buffed = true
	for i=10,1,-1 do
		wait(6)
		MagicCircle("New Yeller",Cannon.Handle.CFrame,2,2,2,2,2,2,0.05)
		MagicNote(BrickColor.Random(),Cannon.Speaker1.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		MagicNote(BrickColor.Random(),Cannon.Speaker2.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		MagicNote(BrickColor.Random(),Cannon.Speaker3.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
		MagicNote(BrickColor.Random(),Cannon.Speaker4.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
	end
	Buffed = false
end))
elseif CurrentMode == "Cannon" then
CurrentMove = "Cannon C"
so("rbxassetid://263623156",CannonA,.5,1) 
so("rbxassetid://263610152",CannonA,.5,1) 
so("rbxassetid://263623139",CannonA,.5,1) 
for i=5,1,-1 do
LaserBarrage(CannonA)
end
Trap(CannonA)
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(30),math.rad(40),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(10),math.rad(-140),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(20),math.rad(50),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(0),math.rad(-130),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
end
attack = false
end

function V()
attack = true
if CurrentMode == "Boombox" then
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*CFrame.new(0,0,0) * angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-17),math.rad(5),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.3) * angles(math.rad(135), math.rad(0), math.rad(-45)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -0.5) * angles(math.rad(80), math.rad(0), math.rad(30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(15)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
swait(3)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5,-0.5) * angles(math.rad(20),math.rad(50),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4,-0.6) * angles(math.rad(0),math.rad(-130),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9,0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9,0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-160), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
Skill1text.Text = CannonText1
Skill2text.Text = CannonText2
Skill3text.Text = CannonText3
Skill4text.Text = CannonText4
Speed.Value = Cannon_Base_Speed_Value
Attack.Value = Cannon_Base_Attack_Value
Defense.Value = Cannon_Base_Defense_Value
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = math.floor(Base_Speed * Speed.Value)
CurrentMode = "Cannon"
elseif CurrentMode == "Cannon" then
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*CFrame.new(0,0,0) * angles(math.rad(-15),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-17),math.rad(5),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.3) * angles(math.rad(135), math.rad(0), math.rad(-45)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -0.5) * angles(math.rad(80), math.rad(0), math.rad(30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(15)),.2)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
end
Skill1text.Text = Text1
Skill2text.Text = Text2
Skill3text.Text = Text3
Skill4text.Text = Text4
Speed.Value = Base_Speed_Value
Attack.Value = Base_Attack_Value
Defense.Value = Base_Defense_Value
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = math.floor(Base_Speed * Speed.Value)
CurrentMode = "Boombox"
end
attack = false
end

--[[Key Functions]]--

local cd1 = false
local cd2 = false
local cd3 = false
local Decorative_Notes = false

mouse.Button1Down:connect(function()
	if attack == true then return end
	if TrapSet == true then return end
	if attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attacktype == 3 then
		attacktype = 4
		attackthree()
	elseif attacktype == 4 then
		attacktype = 1
		if CurrentMode == "Boombox" then
		if Energy.Value >= 13 then
		attackfour()
		else
		attackone()
		attacktype = 2
		end
		elseif CurrentMode == "Cannon" then
		attackfour()
		end
	end
end)

mouse.KeyDown:connect(function(key)
	key = key:lower()
	if attack == true then return end
	if TrapSet == true then return end
	if key == "z" and cd1 == false and Mana.Value >= 17 and Energy.Value >= 19 then
		cd1 = true
		Cover1.Size = UDim2.new(0,0,1,0)
		Mana.Value = Mana.Value - 17
		Z()
		Cover1:TweenSize(UDim2.new(1,0,1,0),'Out','Linear',Skill1cooldown)
		repeat wait() until Cover1.Size == UDim2.new(1,0,1,0)
		cd1 = false
	elseif key == "x" and cd2 == false then
		cd2 = true
		Cover2.Size = UDim2.new(0,0,1,0)
		X()
		if CurrentMode == "Boombox" then
		repeat wait() until TrapSet == false
		end
		Cover2:TweenSize(UDim2.new(1,0,1,0),'Out','Linear',Skill2cooldown)
		repeat wait() until Cover2.Size == UDim2.new(1,0,1,0)
		cd2 = false
	elseif key == "c" and cd3 == false then
		cd3 = true
		Cover3.Size = UDim2.new(0,0,1,0)
		C()
		repeat wait() until Buffed == false
		Cover3:TweenSize(UDim2.new(1,0,1,0),'Out','Linear',Skill3cooldown)
		repeat wait() until Cover3.Size == UDim2.new(1,0,1,0)
		cd3 = false
	elseif key == "v" then
		V()
	elseif key == "e" and CurrentMode == "Boombox" then
		if _G.MusicGUI == false then
			_G.MusicGUI = true
			SongGUI.Enabled = true
		else
			if PlayerGui:FindFirstChild("SongGUI") then
				_G.MusicGUI = false
				SongGUI.Enabled = false
			end
		end
	elseif key == "q" and CurrentMode == "Boombox" then
		if Decorative_Notes == false then
			Decorative_Notes = true
		else
			Decorative_Notes = false
		end
	end
end)

--[[mouse.KeyUp:connect(function(key)
	key = key:lower()
	if key == "" then
		
	end
end)]]--

--[[Engine]]--

local sine = 0
local change = 1
local val = 0
local Mananum = 0
local Energynum = 0
local idle = 0
local donum = 0
local num = 0

LHCF = CFrame.Angles(0, math.rad(-90), 0)
RHCF = CFrame.Angles(0, math.rad(90), 0)

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = math.floor(Base_Speed * Speed.Value)

while true do
swait()
if Decorative_Notes == true then
num = num + 1
end
if Decorative_Notes == true and num >= 120 then
for i=2,1,-1 do
MagicNote(BrickColor.Random(),Cannon.Speaker1.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
MagicNote(BrickColor.Random(),Cannon.Speaker2.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
MagicNote(BrickColor.Random(),Cannon.Speaker3.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
MagicNote(BrickColor.Random(),Cannon.Speaker4.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
end
num = 0
end
if Mana.Value >= MaxMana then
Mana.Value = MaxMana
else
if Mananum <= ManaInterval then
Mananum = Mananum + 1
else
Mananum = 0
Mana.Value = math.floor(Mana.Value) + Recover_Mana
end
end
if Energy.Value >= MaxEnergy then
Energy.Value = MaxEnergy
else
if Energynum <= EnergyInterval then
Energynum = Energynum + 1
else
Energynum = 0
Energy.Value = math.floor(Energy.Value) + Recover_Energy
end
end
if donum >= 0.5 then
handidle = true
else
if donum <= 0 then
handidle = false
end
end
if handidle == false then
donum = donum + 0.003
else
donum = donum - 0.003
end
Bar1.Label.Text = "Mana ~{"..Mana.Value.."}~"
Bar2.Label.Text = "Data ~{"..Energy.Value.."}~"
Bar1Cover:TweenSize(UDim2.new(1 * (Mana.Value / MaxMana), 0, 1, 0), "Out", "Linear", 0.5)
Bar2Cover:TweenSize(UDim2.new(1 * (Energy.Value / MaxEnergy), 0, 1, 0), "Out", "Linear", 0.5)
GUI.Speed.Label.Text = "Speed {"..Speed.Value.."}"
GUI.Attack.Label.Text = "Attack {"..Attack.Value.."}"
GUI.Defense.Label.Text = "Defense {"..Defense.Value.."}"
sine = sine + change
local torvel = (RootPart.Velocity * Vector3.new(1,0,1)).magnitude 
local velderp = RootPart.Velocity.y
Floor,FloorPosition = rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped == true or equipped == false then
if attack == false then
idle = idle + 1
else
idle = 0
end
if RootPart.Velocity.y > 1 and Floor == nil then 
Anim = "Jump"
if attack == false and Lag == false then
if CurrentMode == "Boombox" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0) ,math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -0.8, -0.2) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
elseif CurrentMode == "Cannon" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0) ,math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
end
elseif RootPart.Velocity.y < -1 and Floor == nil then 
Anim = "Fall"
if attack == false and Lag == false then
if CurrentMode == "Boombox" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0) ,math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -0.8, -0.2) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
elseif CurrentMode == "Cannon" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0) ,math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
end
elseif torvel < 1 and Floor ~= nil then
Anim = "Idle"
if attack == false and Lag == false then
if CurrentMode == "Boombox" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0+0.1*math.cos(sine/15)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(2), math.rad(0), math.rad(-30)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5+0.05*math.cos(sine/15), 0) * CFrame.Angles(math.rad(0), math.rad(0) ,math.rad(2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+0.05*math.cos(sine/15), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1-0.1*math.cos(sine/15), 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1-0.1*math.cos(sine/15), 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(10), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -0.8, -0.2) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
elseif CurrentMode == "Cannon" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1+0.1*math.cos(sine/15)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5+0.05*math.cos(sine/15),-0.5) * angles(math.rad(20),math.rad(50),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4+0.05*math.cos(sine/15),-0.6) * angles(math.rad(0),math.rad(-130),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9-0.1*math.cos(sine/15),0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9-0.1*math.cos(sine/15),0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
end
elseif torvel > 2 and Floor ~= nil then
Anim = "Walk"
if attack == false and Lag == false then
if CurrentMode == "Boombox" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0+0.1*math.cos(sine/15)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5+0.05*math.cos(sine/15), 0) * CFrame.Angles(math.rad(-10), math.rad(0) ,math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+0.1*math.cos(sine/15), 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1-0.1*math.cos(sine/15), 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1-0.1*math.cos(sine/15), 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -0.8, -0.2) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
elseif CurrentMode == "Cannon" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF*CFrame.new(0,0,-0.1+0.1*math.cos(sine/15)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(1),math.rad(1),math.rad(50)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3,0.5+0.05*math.cos(sine/15),-0.5) * angles(math.rad(20),math.rad(50),math.rad(-2)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1,0.4+0.05*math.cos(sine/15),-0.6) * angles(math.rad(0),math.rad(-130),math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1,-0.9-0.1*math.cos(sine/15),0) * RHCF * angles(math.rad(-3),math.rad(30),math.rad(-3)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1,-0.9-0.1*math.cos(sine/15),0) * LHCF * angles(math.rad(-3),math.rad(30),math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, -0.8) * CFrame.Angles(math.rad(12), math.rad(-180), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -2.1, -0.7) * CFrame.Angles(math.rad(33), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(15), math.rad(-90), math.rad(0)), 0.3)
end
end
elseif Floor ~= nil then
Anim = "Lag"
if attack == true and Lag == true then
if CurrentMode == "Boombox" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0) ,math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -0.8, -0.2) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
elseif CurrentMode == "Cannon" then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0) ,math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Flapweld.C0 = clerp(Flapweld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(180)), 0.3)
Cannonweld.C0 = clerp(Cannonweld.C0, CFrame.new(0, -0.8, -0.2) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
end
end
end
end
if #Effects > 0 then
for e=1,#Effects do
if Effects[e] ~= nil then
local Effect = Effects[e]
if Effect ~= nil then
local Part = Effect[1]
local Mode = Effect[2]
local Delay = Effect[3]
local IncX = Effect[4]
local IncY = Effect[5]
local IncZ = Effect[6]
if Effect[1].Transparency<=1 then
if Effect[2] == "Block1" then
Effect[1].CFrame = Effect[1].CFrame * euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh = Effect[1].Mesh
Mesh.Scale = Mesh.Scale + vt(Effect[4],Effect[5],Effect[6])
Effect[1].Transparency = Effect[1].Transparency + Effect[3]
elseif Effect[2]=="Block3" then
Effect[1].CFrame=Effect[1].CFrame*Effect[8]
Mesh=Effect[7]
Mesh.Scale=Mesh.Scale+vt(Effect[4],Effect[5],Effect[6])
Effect[1].Transparency=Effect[1].Transparency+Effect[3]
elseif Effect[2] == "Cylinder" then
Mesh = Effect[1].Mesh
Mesh.Scale = Mesh.Scale + vt(Effect[4],Effect[5],Effect[6])
Effect[1].Transparency = Effect[1].Transparency + Effect[3]
elseif Effect[2] == "Blood" then
Mesh = Effect[7]
Effect[1].CFrame = Effect[1].CFrame*cf(0,.5,0)
Mesh.Scale = Mesh.Scale + vt(Effect[4],Effect[5],Effect[6])
Effect[1].Transparency = Effect[1].Transparency + Effect[3]
elseif Effect[2] == "Elec" then
Mesh = Effect[1].Mesh
Mesh.Scale = Mesh.Scale + vt(Effect[7],Effect[8],Effect[9])
Effect[1].Transparency = Effect[1].Transparency + Effect[3]
elseif Effect[2] == "Disappear" then
Effect[1].Transparency = Effect[1].Transparency + Effect[3]
elseif Effect[2] == "Shatter" then
Effect[1].Transparency = Effect[1].Transparency + Effect[3]
Effect[4] = Effect[4] * CFrame.new(0, Effect[7], 0)
Effect[1].CFrame = Effect[4] * CFrame.fromEulerAnglesXYZ(Effect[6], 0, 0)
Effect[6] = Effect[6] + Effect[5]
end
end
else
Part.Parent = nil
table.remove(Effects,e)
end
end
end
end
end