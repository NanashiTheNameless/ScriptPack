wait(3)

-- Local Dread (converted by Citrus/Solavenge)
-- Music orb is rip

--[[
	
	why hello there script stealer what are you doing here?	
	
]]--

script.Name = "Dread"
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
ATKZ.Value = "1.3"
local DEFZ = Instance.new("NumberValue",Statz)
DEFZ.Name = "Defense"
DEFZ.Value = "0.5"
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
SPDZ.Value = "1.6000000000000001"

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


local songgui = Instance.new("ScreenGui", script)
songgui.Name = "SongGUI"

local main = Instance.new("Frame", songgui)
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

_G.OrbPresent = false

play.MouseButton1Down:connect(function()
	if _G.OrbPresent == true then
	for i,v in pairs(game.Players.LocalPlayer.Character["Music Orb"]:GetChildren()) do
		if v:IsA("Sound") then
			v:Destroy()
		end
	end
	elseif _G.OrbPresent == false then
	local Orb = Instance.new("Part",game.Players.LocalPlayer.Character)
	Orb.Size = Vector3.new(3,3,3)
	Orb.Material = "Neon"
	Orb.Name = "Music Orb"
	Orb.BrickColor = BrickColor.new("Institutional white")
	Orb.TopSurface = 10
	Orb.RightSurface = 10
	Orb.LeftSurface = 10
	Orb.BottomSurface = 10
	Orb.FrontSurface = 10
	Orb.BackSurface = 10
	Orb.Anchored = false
	Orb.Locked = true
	Orb.CanCollide = false
	Orb.Transparency = 0.5
	local msh = Instance.new("SpecialMesh",Orb)
	msh.MeshType = "Sphere"
	msh.Offset = Vector3.new(0,0,0)
	msh.Scale = Vector3.new(1,1,1)
	local wld = Instance.new("Weld",Orb)
	wld.Part0 = Orb
	wld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
	wld.C0 = CFrame.new(-3,-5,-2)
	_G.OrbPresent = true
	local clone = game.Players.LocalPlayer.Backpack.Dread.OrbSize:Clone()
	clone.Parent = Orb
	clone.Disabled = false
	end
	local so = Instance.new("Sound",game.Players.LocalPlayer.Character["Music Orb"])
	so.Name = "Music"
	so.SoundId = "rbxassetid://"..script.Parent.Parent.ID.Text
	so.Looped = true
	so.Pitch = 1
	so.Volume = 1
	so:Play()
	_G.MusicGUI = false
	script.Parent.Parent.Parent.Parent = game.Players.LocalPlayer.Backpack.Dread
end)

--[[CUSTOMIZATION]]--

Frames = 1 / 60

Base_Speed = 16
Base_Speed_Value = 1.6
Base_Attack_Value = 1.3
Base_Defense_Value = 0.5

Skill1cooldown = 3
Skill2cooldown = 5
Skill3cooldown = 8
Skill4cooldown = 17

Recover_Mana = 1
MaxMana = 150

Recover_Energy = 1
MaxEnergy = 100

ManaInterval = 10
EnergyInterval = 21

Text1 = "[Z] Defiance"
Text2 = "[X] Resistence"
Text3 = "[C] Personality"
Text4 = "[V] Rebellion"

ManaBar_Color = BrickColor.new("Institutional white")
EnergyBar_Color = BrickColor.new("Really black")
Primary_Color = BrickColor.new("Mid gray")
Secondary_Color = BrickColor.new("Institutional white")

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


 Weapon = Instance.new("Model", script)
Weapon.Name = "Weapon"

 Dagger = Instance.new("Model", Weapon)
Dagger.Name = "Dagger"

 wedge_10 = Instance.new("WedgePart", Dagger)
wedge_10.CanCollide = false
wedge_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.Friction = 0.3
wedge_10.Material = Enum.Material.SmoothPlastic
wedge_10.Size = Vector3.new(0.296, 0.2, 0.2)
wedge_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.CFrame = CFrame.new(113.577, 212.349, -204.763) * CFrame.Angles(3.1415109634399, 0.31002363562584, -1.5707743167877)
wedge_10.BrickColor = BrickColor.new("Really black")

 mesh_110 = Instance.new("SpecialMesh", wedge_10)
mesh_110.Scale = Vector3.new(1, 0.475, 0.477)
mesh_110.MeshType = Enum.MeshType.Wedge

 handle = Instance.new("Part", Dagger)
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Material = Enum.Material.SmoothPlastic
handle.Size = Vector3.new(1.55, 0.202, 0.202)
handle.Name = "Handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(114.713, 212.358, -205.204) * CFrame.Angles(1.5708119869232, 0.024731526151299, 5.2612034778576e-005)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BrickColor = BrickColor.new("Black")
handle.Friction = 0.3
handle.Shape = Enum.PartType.Cylinder
handle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 hitbox = Instance.new("Part", Dagger)
hitbox.CanCollide = false
hitbox.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Transparency = 1
hitbox.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Material = Enum.Material.SmoothPlastic
hitbox.Size = Vector3.new(2.556, 0.776, 0.27)
hitbox.Name = "Hitbox"
hitbox.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.CFrame = CFrame.new(112.622, 212.355, -205.013) * CFrame.Angles(1.5707963705063, 0, -0)
hitbox.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BrickColor = BrickColor.new("Really black")
hitbox.Friction = 0.3
hitbox.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("BlockMesh", hitbox)
mesh.Scale = Vector3.new(1, 1, 0.769)

 part = Instance.new("Part", Dagger)
part.FormFactor = Enum.FormFactor.Custom
part.Transparency = 0.75
part.TopSurface = Enum.SurfaceType.Smooth
part.Size = Vector3.new(0.237, 0.237, 0.474)
part.CFrame = CFrame.new(114.036, 212.38, -205.332) * CFrame.Angles(-2.5670239925385, 0.79479748010635, 3.066912651062)
part.BrickColor = BrickColor.new("Toothpaste")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.Smooth

 mesh_2 = Instance.new("SpecialMesh", part)
mesh_2.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_2.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_2.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_2.VertexColor = Vector3.new(0, 0, 0)
mesh_2.MeshType = Enum.MeshType.FileMesh

 part_2 = Instance.new("Part", Dagger)
part_2.CanCollide = false
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Material = Enum.Material.SmoothPlastic
part_2.Size = Vector3.new(0.296, 0.2, 0.527)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(112.662, 212.349, -204.988) * CFrame.Angles(-0.00065306731266901, -1.5344837903976, 1.5702178478241)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Really black")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_3 = Instance.new("BlockMesh", part_2)
mesh_3.Scale = Vector3.new(1, 0.649, 1)

 part_3 = Instance.new("Part", Dagger)
part_3.CanCollide = false
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Material = Enum.Material.SmoothPlastic
part_3.Size = Vector3.new(0.296, 0.2, 0.337)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(112.078, 212.349, -205.071) * CFrame.Angles(-9.7443204140291e-005, -0.81860661506653, 1.5707656145096)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Really black")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_4 = Instance.new("BlockMesh", part_3)
mesh_4.Scale = Vector3.new(1, 0.835, 1)

 part_4 = Instance.new("Part", Dagger)
part_4.CanCollide = false
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Material = Enum.Material.SmoothPlastic
part_4.Size = Vector3.new(0.296, 0.2, 0.2)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(113.866, 212.349, -205.094) * CFrame.Angles(-0.00018592804553919, -1.3836987018585, 1.5706834793091)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Really black")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_5 = Instance.new("BlockMesh", part_4)
mesh_5.Scale = Vector3.new(1, 0.337, 0.652)

 part_5 = Instance.new("Part", Dagger)
part_5.CanCollide = false
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.Material = Enum.Material.SmoothPlastic
part_5.Size = Vector3.new(0.296, 0.2, 0.2)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(113.428, 212.349, -205.035) * CFrame.Angles(3.141529083252, -0.50186461210251, -1.5707724094391)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Really black")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_6 = Instance.new("BlockMesh", part_5)
mesh_6.Scale = Vector3.new(1, 0.68, 0.91)

 part_6 = Instance.new("Part", Dagger)
part_6.CanCollide = false
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.Material = Enum.Material.SmoothPlastic
part_6.Size = Vector3.new(0.296, 0.2, 0.2)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(111.548, 212.349, -205.113) * CFrame.Angles(3.1414999961853, 0.69966548681259, -1.5707688331604)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Black")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_7 = Instance.new("BlockMesh", part_6)
mesh_7.Scale = Vector3.new(1, 0.545, 0.733)

 part_7 = Instance.new("Part", Dagger)
part_7.CanCollide = false
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.Material = Enum.Material.SmoothPlastic
part_7.Size = Vector3.new(0.296, 0.2, 0.2)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(113.374, 212.349, -204.921) * CFrame.Angles(3.1414711475372, 1.1463776826859, -1.5707453489304)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Really black")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_8 = Instance.new("BlockMesh", part_7)
mesh_8.Scale = Vector3.new(1, 0.574, 0.468)

 part_8 = Instance.new("Part", Dagger)
part_8.CanCollide = false
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.Material = Enum.Material.SmoothPlastic
part_8.Size = Vector3.new(0.296, 0.352, 0.2)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(113.073, 212.349, -205.037) * CFrame.Angles(-3.1414668560028, -1.4666543006897, -1.5705943107605)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Really black")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_9 = Instance.new("BlockMesh", part_8)
mesh_9.Scale = Vector3.new(1, 1, 0.212)

 part_9 = Instance.new("Part", Dagger)
part_9.CanCollide = false
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Material = Enum.Material.SmoothPlastic
part_9.Size = Vector3.new(0.296, 0.2, 0.2)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(113.293, 212.349, -204.873) * CFrame.Angles(3.1414873600006, 0.96297669410706, -1.5707595348358)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Really black")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_10 = Instance.new("BlockMesh", part_9)
mesh_10.Scale = Vector3.new(1, 0.578, 0.578)

 part_10 = Instance.new("Part", Dagger)
part_10.CanCollide = false
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.Material = Enum.Material.SmoothPlastic
part_10.Size = Vector3.new(0.296, 0.2, 0.2)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(113.417, 212.349, -204.882) * CFrame.Angles(-8.2131693488918e-005, -0.32738387584686, 1.5707741975784)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Really black")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_11 = Instance.new("BlockMesh", part_10)
mesh_11.Scale = Vector3.new(1, 0.269, 0.273)

 part_11 = Instance.new("Part", Dagger)
part_11.CanCollide = false
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Material = Enum.Material.SmoothPlastic
part_11.Size = Vector3.new(0.296, 0.389, 0.2)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(113.005, 212.349, -205.072) * CFrame.Angles(-8.5660838522017e-005, -0.46975615620613, 1.570772767067)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Really black")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_12 = Instance.new("BlockMesh", part_11)
mesh_12.Scale = Vector3.new(1, 1, 0.805)

 part_12 = Instance.new("Part", Dagger)
part_12.CanCollide = false
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Material = Enum.Material.SmoothPlastic
part_12.Size = Vector3.new(0.296, 0.2, 0.2)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(113.582, 212.349, -204.815) * CFrame.Angles(0.0016983731184155, 1.5589560270309, -1.5725698471069)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Really black")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_13 = Instance.new("BlockMesh", part_12)
mesh_13.Scale = Vector3.new(1, 0.367, 0.266)

 part_13 = Instance.new("Part", Dagger)
part_13.CanCollide = false
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Material = Enum.Material.SmoothPlastic
part_13.Size = Vector3.new(0.296, 0.2, 0.2)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(111.673, 212.349, -205.191) * CFrame.Angles(3.1414878368378, 0.95636254549026, -1.5707598924637)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Black")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("BlockMesh", part_13)
mesh_14.Scale = Vector3.new(1, 0.789, 0.896)

 part_14 = Instance.new("Part", Dagger)
part_14.CanCollide = false
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.Material = Enum.Material.SmoothPlastic
part_14.Size = Vector3.new(0.296, 0.436, 0.2)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(112.98, 212.349, -205.067) * CFrame.Angles(-9.3865128292236e-005, -0.73189699649811, 1.5707681179047)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Really black")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_15 = Instance.new("BlockMesh", part_14)
mesh_15.Scale = Vector3.new(1, 1, 0.737)

 part_15 = Instance.new("Part", Dagger)
part_15.CanCollide = false
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Material = Enum.Material.SmoothPlastic
part_15.Size = Vector3.new(0.296, 0.2, 0.2)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(113.445, 212.349, -204.949) * CFrame.Angles(-0.0001006388629321, -0.88453567028046, 1.5707632303238)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Really black")
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("BlockMesh", part_15)
mesh_16.Scale = Vector3.new(1, 0.506, 0.689)

 part_16 = Instance.new("Part", Dagger)
part_16.CanCollide = false
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.Material = Enum.Material.SmoothPlastic
part_16.Size = Vector3.new(0.296, 0.206, 0.2)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(113.261, 212.349, -205.128) * CFrame.Angles(-3.1412768363953, -1.5171122550964, -1.5704050064087)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Really black")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_17 = Instance.new("BlockMesh", part_16)
mesh_17.Scale = Vector3.new(1, 1, 0.769)

 part_17 = Instance.new("Part", Dagger)
part_17.FormFactor = Enum.FormFactor.Custom
part_17.Transparency = 0.75
part_17.TopSurface = Enum.SurfaceType.Smooth
part_17.Size = Vector3.new(0.237, 0.237, 0.474)
part_17.CFrame = CFrame.new(114.029, 212.433, -205.263) * CFrame.Angles(-1.7433958053589, 0.72802764177322, 3.0059261322021)
part_17.BrickColor = BrickColor.new("Toothpaste")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.Smooth

 mesh_18 = Instance.new("SpecialMesh", part_17)
mesh_18.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_18.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_18.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_18.VertexColor = Vector3.new(0, 0, 0)
mesh_18.MeshType = Enum.MeshType.FileMesh

 part_18 = Instance.new("Part", Dagger)
part_18.CanCollide = false
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.Material = Enum.Material.SmoothPlastic
part_18.Size = Vector3.new(0.296, 0.418, 0.2)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(112.985, 212.349, -205.008) * CFrame.Angles(-8.0238096415997e-005, -0.1114415153861, 1.5707762241364)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Really black")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_19 = Instance.new("BlockMesh", part_18)
mesh_19.Scale = Vector3.new(1, 1, 0.119)

 part_19 = Instance.new("Part", Dagger)
part_19.FormFactor = Enum.FormFactor.Custom
part_19.Transparency = 0.75
part_19.TopSurface = Enum.SurfaceType.Smooth
part_19.Size = Vector3.new(0.237, 0.237, 0.474)
part_19.CFrame = CFrame.new(114.02, 212.422, -205.176) * CFrame.Angles(-0.9757005572319, 0.64977884292603, 3.02765583992)
part_19.BrickColor = BrickColor.new("Toothpaste")
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.Smooth

 mesh_20 = Instance.new("SpecialMesh", part_19)
mesh_20.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_20.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_20.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_20.VertexColor = Vector3.new(0, 0, 0)
mesh_20.MeshType = Enum.MeshType.FileMesh

 part_20 = Instance.new("Part", Dagger)
part_20.CanCollide = false
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.Material = Enum.Material.SmoothPlastic
part_20.Size = Vector3.new(0.296, 0.2, 0.258)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(113.66, 212.349, -204.913) * CFrame.Angles(-8.8182234321721e-005, -0.56055700778961, 1.5707715749741)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("Really black")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_21 = Instance.new("BlockMesh", part_20)
mesh_21.Scale = Vector3.new(1, 0.475, 1)

 part_21 = Instance.new("Part", Dagger)
part_21.CanCollide = false
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Material = Enum.Material.SmoothPlastic
part_21.Size = Vector3.new(0.296, 0.2, 0.2)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(113.328, 212.349, -204.841) * CFrame.Angles(-3.1412250995636, -1.5233858823776, -1.570353269577)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("Really black")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_22 = Instance.new("BlockMesh", part_21)
mesh_22.Scale = Vector3.new(1, 0.269, 0.382)

 part_22 = Instance.new("Part", Dagger)
part_22.CanCollide = false
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.Material = Enum.Material.SmoothPlastic
part_22.Size = Vector3.new(0.296, 0.2, 0.2)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(113.75, 212.349, -205.089) * CFrame.Angles(-9.6044917881954e-005, -0.78646671772003, 1.5707665681839)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Really black")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("BlockMesh", part_22)
mesh_23.Scale = Vector3.new(1, 0.81, 0.802)

 part_23 = Instance.new("Part", Dagger)
part_23.CanCollide = false
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Material = Enum.Material.SmoothPlastic
part_23.Size = Vector3.new(0.296, 0.37, 0.2)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(113.092, 212.349, -205.049) * CFrame.Angles(3.1415476799011, -0.95885586738586, -1.5707597732544)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BrickColor = BrickColor.new("Really black")
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_24 = Instance.new("BlockMesh", part_23)
mesh_24.Scale = Vector3.new(1, 1, 0.586)

 part_24 = Instance.new("Part", Dagger)
part_24.CanCollide = false
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Material = Enum.Material.SmoothPlastic
part_24.Size = Vector3.new(0.296, 0.2, 0.256)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(113.132, 212.349, -205.091) * CFrame.Angles(-0.00015135570720304, -1.3024035692215, 1.5707170963287)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BrickColor = BrickColor.new("Really black")
part_24.Friction = 0.3
part_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_25 = Instance.new("BlockMesh", part_24)
mesh_25.Scale = Vector3.new(1, 0.826, 1)

 part_25 = Instance.new("Part", Dagger)
part_25.CanCollide = false
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.Material = Enum.Material.SmoothPlastic
part_25.Size = Vector3.new(0.296, 0.234, 0.252)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(112.965, 212.349, -205.032) * CFrame.Angles(3.1415700912476, -1.1904069185257, -1.5707397460938)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Really black")
part_25.Friction = 0.3
part_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_26 = Instance.new("Part", Dagger)
part_26.CanCollide = false
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Material = Enum.Material.SmoothPlastic
part_26.Size = Vector3.new(0.296, 0.2, 0.2)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(113.392, 212.349, -205.095) * CFrame.Angles(-3.1414346694946, -1.4809402227402, -1.5705623626709)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Really black")
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("BlockMesh", part_26)
mesh_26.Scale = Vector3.new(1, 0.795, 0.589)

 part_27 = Instance.new("Part", Dagger)
part_27.CanCollide = false
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.Material = Enum.Material.SmoothPlastic
part_27.Size = Vector3.new(0.296, 0.2, 0.207)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(111.827, 212.349, -205.271) * CFrame.Angles(3.1414656639099, 1.1865648031235, -1.5707403421402)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BrickColor = BrickColor.new("Black")
part_27.Friction = 0.3
part_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("BlockMesh", part_27)
mesh_27.Scale = Vector3.new(1, 0.814, 1)

 part_28 = Instance.new("Part", Dagger)
part_28.CanCollide = false
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.Material = Enum.Material.SmoothPlastic
part_28.Size = Vector3.new(0.296, 0.2, 0.2)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(113.269, 212.349, -204.846) * CFrame.Angles(-9.8058786534239e-005, -0.83209264278412, 1.5707651376724)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("Really black")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_28 = Instance.new("BlockMesh", part_28)
mesh_28.Scale = Vector3.new(1, 0.513, 0.525)

 part_29 = Instance.new("Part", Dagger)
part_29.CanCollide = false
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.Material = Enum.Material.SmoothPlastic
part_29.Size = Vector3.new(0.296, 0.843, 0.2)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(112.767, 212.349, -205.061) * CFrame.Angles(-7.3640199843794e-005, 0.06466206163168, 1.570775270462)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("Really black")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("BlockMesh", part_29)
mesh_29.Scale = Vector3.new(1, 1, 0.972)

 part_30 = Instance.new("Part", Dagger)
part_30.CanCollide = false
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Material = Enum.Material.SmoothPlastic
part_30.Size = Vector3.new(0.296, 0.275, 0.242)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(113.574, 212.349, -205.083) * CFrame.Angles(-0.00022954317682888, -1.4357393980026, 1.5706403255463)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BrickColor = BrickColor.new("Really black")
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_31 = Instance.new("Part", Dagger)
part_31.CanCollide = false
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Material = Enum.Material.SmoothPlastic
part_31.Size = Vector3.new(0.296, 0.2, 0.2)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(112.001, 212.349, -205.326) * CFrame.Angles(3.1414062976837, 1.3843650817871, -1.5706830024719)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("Black")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("BlockMesh", part_31)
mesh_30.Scale = Vector3.new(1, 0.783, 0.957)

 part_32 = Instance.new("Part", Dagger)
part_32.CanCollide = false
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Material = Enum.Material.SmoothPlastic
part_32.Size = Vector3.new(0.2, 0.2, 0.2)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(111.999, 212.25, -205.335) * CFrame.Angles(3.1414062976837, 1.3843650817871, -1.5706830024719)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Dark stone grey")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("BlockMesh", part_32)
mesh_31.Scale = Vector3.new(0.599, 0.338, 0.957)

 part_33 = Instance.new("Part", Dagger)
part_33.CanCollide = false
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.Material = Enum.Material.SmoothPlastic
part_33.Size = Vector3.new(0.296, 0.547, 0.2)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(112.994, 212.349, -205.121) * CFrame.Angles(-0.00013488260447048, -1.2335106134415, 1.570732831955)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BrickColor = BrickColor.new("Really black")
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_32 = Instance.new("BlockMesh", part_33)
mesh_32.Scale = Vector3.new(1, 1, 0.119)

 part_34 = Instance.new("Part", Dagger)
part_34.CanCollide = false
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Material = Enum.Material.SmoothPlastic
part_34.Size = Vector3.new(0.2, 0.2, 0.2)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(111.562, 212.486, -205.102) * CFrame.Angles(3.1414999961853, 0.69966179132462, -1.5707688331604)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Dark stone grey")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_33 = Instance.new("BlockMesh", part_34)
mesh_33.Scale = Vector3.new(0.166, 0.332, 0.733)

 part_35 = Instance.new("Part", Dagger)
part_35.CanCollide = false
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.Material = Enum.Material.SmoothPlastic
part_35.Size = Vector3.new(0.296, 0.2, 0.2)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(113.238, 212.349, -204.828) * CFrame.Angles(3.1415054798126, 0.52375799417496, -1.5707720518112)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("Really black")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("BlockMesh", part_35)
mesh_34.Scale = Vector3.new(1, 0.513, 0.391)

 part_36 = Instance.new("Part", Dagger)
part_36.CanCollide = false
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Material = Enum.Material.SmoothPlastic
part_36.Size = Vector3.new(0.296, 0.2, 0.2)
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(112.251, 212.349, -205.137) * CFrame.Angles(3.141524553299, -0.31755104660988, -1.5707741975784)
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BrickColor = BrickColor.new("Really black")
part_36.Friction = 0.3
part_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_35 = Instance.new("BlockMesh", part_36)
mesh_35.Scale = Vector3.new(1, 0.649, 0.843)

 part_37 = Instance.new("Part", Dagger)
part_37.CanCollide = false
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.Material = Enum.Material.SmoothPlastic
part_37.Size = Vector3.new(0.296, 0.2, 1.633)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(113.103, 212.349, -205.334) * CFrame.Angles(0.0020092579070479, 1.560730099678, 1.5687119960785)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BrickColor = BrickColor.new("Black")
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("BlockMesh", part_37)
mesh_36.Scale = Vector3.new(1, 0.793, 1)

 part_38 = Instance.new("Part", Dagger)
part_38.CanCollide = false
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Material = Enum.Material.SmoothPlastic
part_38.Size = Vector3.new(0.2, 0.2, 0.2)
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(111.826, 212.25, -205.283) * CFrame.Angles(3.1414656639099, 1.1865648031235, -1.5707403421402)
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BrickColor = BrickColor.new("Dark stone grey")
part_38.Friction = 0.3
part_38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("BlockMesh", part_38)
mesh_37.Scale = Vector3.new(0.599, 0.34, 0.994)

 part_39 = Instance.new("Part", Dagger)
part_39.CanCollide = false
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.Material = Enum.Material.SmoothPlastic
part_39.Size = Vector3.new(0.296, 0.2, 0.207)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(112.184, 212.349, -205.34) * CFrame.Angles(3.1340656280518, 1.568012714386, -1.5633443593979)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BrickColor = BrickColor.new("Black")
part_39.Friction = 0.3
part_39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_38 = Instance.new("BlockMesh", part_39)
mesh_38.Scale = Vector3.new(1, 0.811, 1)

 part_40 = Instance.new("Part", Dagger)
part_40.CanCollide = false
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Material = Enum.Material.SmoothPlastic
part_40.Size = Vector3.new(0.2, 0.2, 0.2)
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(111.47, 212.208, -204.945) * CFrame.Angles(3.1415145397186, 0.43786507844925, -1.5707963705063)
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BrickColor = BrickColor.new("Dark stone grey")
part_40.Friction = 0.3
part_40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_39 = Instance.new("SpecialMesh", part_40)
mesh_39.Scale = Vector3.new(0.166, 0.332, 0.449)
mesh_39.MeshType = Enum.MeshType.Wedge

 part_41 = Instance.new("Part", Dagger)
part_41.CanCollide = false
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.Material = Enum.Material.SmoothPlastic
part_41.Size = Vector3.new(0.2, 0.2, 0.2)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(111.505, 212.208, -205.019) * CFrame.Angles(3.1415145397186, 0.43786507844925, -1.5707963705063)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("Dark stone grey")
part_41.Friction = 0.3
part_41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_40 = Instance.new("BlockMesh", part_41)
mesh_40.Scale = Vector3.new(0.166, 0.332, 0.372)

 part_42 = Instance.new("Part", Dagger)
part_42.CanCollide = false
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.Material = Enum.Material.SmoothPlastic
part_42.Size = Vector3.new(0.2, 0.2, 1.824)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(113, 212.25, -205.355) * CFrame.Angles(3.1340684890747, 1.568012714386, -1.5633469820023)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BrickColor = BrickColor.new("Dark stone grey")
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_41 = Instance.new("BlockMesh", part_42)
mesh_41.Scale = Vector3.new(0.599, 0.337, 1)

 part_43 = Instance.new("Part", Dagger)
part_43.CanCollide = false
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.Material = Enum.Material.SmoothPlastic
part_43.Size = Vector3.new(0.2, 0.2, 1.824)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(113, 212.442, -205.355) * CFrame.Angles(3.1340684890747, 1.568012714386, -1.5633469820023)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("Dark stone grey")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_42 = Instance.new("BlockMesh", part_43)
mesh_42.Scale = Vector3.new(0.599, 0.337, 1)

 part_44 = Instance.new("Part", Dagger)
part_44.FormFactor = Enum.FormFactor.Custom
part_44.Transparency = 0.75
part_44.TopSurface = Enum.SurfaceType.Smooth
part_44.Size = Vector3.new(0.237, 0.237, 0.474)
part_44.CFrame = CFrame.new(114.038, 212.322, -205.348) * CFrame.Angles(-3.1415927410126, 0.81013888120651, -3.1415927410126)
part_44.BrickColor = BrickColor.new("Toothpaste")
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.Smooth

 mesh_43 = Instance.new("SpecialMesh", part_44)
mesh_43.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_43.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_43.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_43.VertexColor = Vector3.new(0, 0, 0)
mesh_43.MeshType = Enum.MeshType.FileMesh

 part_45 = Instance.new("Part", Dagger)
part_45.CanCollide = false
part_45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.Material = Enum.Material.SmoothPlastic
part_45.Size = Vector3.new(0.2, 0.2, 0.2)
part_45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.CFrame = CFrame.new(111.671, 212.25, -205.201) * CFrame.Angles(3.1414878368378, 0.95635890960693, -1.5707598924637)
part_45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BrickColor = BrickColor.new("Dark stone grey")
part_45.Friction = 0.3
part_45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_44 = Instance.new("BlockMesh", part_45)
mesh_44.Scale = Vector3.new(0.599, 0.326, 0.86)

 part_46 = Instance.new("Part", Dagger)
part_46.CanCollide = false
part_46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.Material = Enum.Material.SmoothPlastic
part_46.Size = Vector3.new(0.296, 0.2, 0.398)
part_46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.CFrame = CFrame.new(111.649, 212.349, -205.035) * CFrame.Angles(3.1414878368378, 0.95636254549026, -1.5707598924637)
part_46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BrickColor = BrickColor.new("Really black")
part_46.Friction = 0.3
part_46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_45 = Instance.new("BlockMesh", part_46)
mesh_45.Scale = Vector3.new(1, 0.327, 1)

 part_47 = Instance.new("Part", Dagger)
part_47.CanCollide = false
part_47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.Material = Enum.Material.SmoothPlastic
part_47.Size = Vector3.new(0.2, 0.296, 0.296)
part_47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.CFrame = CFrame.new(115.477, 212.375, -205.204) * CFrame.Angles(3.1415898799896, 0.053808949887753, -3.1415405273438)
part_47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BrickColor = BrickColor.new("Really black")
part_47.Friction = 0.3
part_47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_46 = Instance.new("SpecialMesh", part_47)
mesh_46.Scale = Vector3.new(0.533, 1, 1)
mesh_46.MeshType = Enum.MeshType.Sphere

 part_48 = Instance.new("Part", Dagger)
part_48.FormFactor = Enum.FormFactor.Custom
part_48.Transparency = 0.75
part_48.TopSurface = Enum.SurfaceType.Smooth
part_48.Size = Vector3.new(0.237, 0.237, 0.474)
part_48.CFrame = CFrame.new(114.029, 212.216, -205.262) * CFrame.Angles(1.7603787183762, 0.62704873085022, 0.12500631809235)
part_48.BrickColor = BrickColor.new("Toothpaste")
part_48.Friction = 0.3
part_48.BottomSurface = Enum.SurfaceType.Smooth

 mesh_47 = Instance.new("SpecialMesh", part_48)
mesh_47.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_47.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_47.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_47.VertexColor = Vector3.new(0, 0, 0)
mesh_47.MeshType = Enum.MeshType.FileMesh

 part_49 = Instance.new("Part", Dagger)
part_49.CanCollide = false
part_49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.Material = Enum.Material.SmoothPlastic
part_49.Size = Vector3.new(0.296, 0.2, 0.207)
part_49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.CFrame = CFrame.new(112.185, 212.349, -205.197) * CFrame.Angles(3.1340656280518, 1.568012714386, -1.5633443593979)
part_49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BrickColor = BrickColor.new("Really black")
part_49.Friction = 0.3
part_49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_48 = Instance.new("BlockMesh", part_49)
mesh_48.Scale = Vector3.new(1, 0.639, 1)

 part_50 = Instance.new("Part", Dagger)
part_50.CanCollide = false
part_50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.Material = Enum.Material.SmoothPlastic
part_50.Size = Vector3.new(0.296, 0.231, 0.303)
part_50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.CFrame = CFrame.new(111.857, 212.349, -205.005) * CFrame.Angles(-0.00074549048440531, -1.5394859313965, 1.5701254606247)
part_50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BrickColor = BrickColor.new("Really black")
part_50.Friction = 0.3
part_50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_51 = Instance.new("Part", Dagger)
part_51.CanCollide = false
part_51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.Material = Enum.Material.SmoothPlastic
part_51.Size = Vector3.new(0.2, 0.2, 0.2)
part_51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.CFrame = CFrame.new(111.47, 212.486, -204.945) * CFrame.Angles(3.1415145397186, 0.43786507844925, -1.5707963705063)
part_51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BrickColor = BrickColor.new("Dark stone grey")
part_51.Friction = 0.3
part_51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_49 = Instance.new("SpecialMesh", part_51)
mesh_49.Scale = Vector3.new(0.166, 0.332, 0.449)
mesh_49.MeshType = Enum.MeshType.Wedge

 part_52 = Instance.new("Part", Dagger)
part_52.CanCollide = false
part_52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.Material = Enum.Material.SmoothPlastic
part_52.Size = Vector3.new(0.296, 0.2, 0.2)
part_52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.CFrame = CFrame.new(111.602, 212.349, -205.108) * CFrame.Angles(3.1414723396301, 0.96146392822266, -1.5707263946533)
part_52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BrickColor = BrickColor.new("Black")
part_52.Friction = 0.3
part_52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_50 = Instance.new("BlockMesh", part_52)
mesh_50.Scale = Vector3.new(1, 0.557, 0.793)

 part_53 = Instance.new("Part", Dagger)
part_53.CanCollide = false
part_53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.Material = Enum.Material.SmoothPlastic
part_53.Size = Vector3.new(0.296, 0.2, 0.207)
part_53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.CFrame = CFrame.new(111.89, 212.349, -205.115) * CFrame.Angles(3.1414656639099, 1.1865648031235, -1.5707403421402)
part_53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BrickColor = BrickColor.new("Really black")
part_53.Friction = 0.3
part_53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_51 = Instance.new("BlockMesh", part_53)
mesh_51.Scale = Vector3.new(1, 0.956, 1)

 part_54 = Instance.new("Part", Dagger)
part_54.CanCollide = false
part_54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.Material = Enum.Material.SmoothPlastic
part_54.Size = Vector3.new(0.2, 0.296, 0.296)
part_54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.CFrame = CFrame.new(113.909, 212.355, -205.232) * CFrame.Angles(-3.1415770053864, 0.02473352663219, 5.2611390856327e-005)
part_54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BrickColor = BrickColor.new("Really black")
part_54.Friction = 0.3
part_54.Shape = Enum.PartType.Cylinder
part_54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_52 = Instance.new("SpecialMesh", part_54)
mesh_52.Scale = Vector3.new(0.533, 1, 1)
mesh_52.MeshType = Enum.MeshType.Cylinder

 part_55 = Instance.new("Part", Dagger)
part_55.FormFactor = Enum.FormFactor.Custom
part_55.Transparency = 0.75
part_55.TopSurface = Enum.SurfaceType.Smooth
part_55.Size = Vector3.new(0.237, 0.237, 0.474)
part_55.CFrame = CFrame.new(114.02, 212.227, -205.179) * CFrame.Angles(0.98924738168716, 0.5485537648201, 0.10628721863031)
part_55.BrickColor = BrickColor.new("Toothpaste")
part_55.Friction = 0.3
part_55.BottomSurface = Enum.SurfaceType.Smooth

 mesh_53 = Instance.new("SpecialMesh", part_55)
mesh_53.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_53.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_53.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_53.VertexColor = Vector3.new(0, 0, 0)
mesh_53.MeshType = Enum.MeshType.FileMesh

 part_56 = Instance.new("Part", Dagger)
part_56.CanCollide = false
part_56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.Material = Enum.Material.Neon
part_56.Size = Vector3.new(0.2, 0.225, 0.225)
part_56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.CFrame = CFrame.new(113.98, 212.355, -205.224) * CFrame.Angles(-3.1415770053864, 0.02473352663219, 5.2611390856327e-005)
part_56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BrickColor = BrickColor.new("Fog")
part_56.Friction = 0.3
part_56.Shape = Enum.PartType.Cylinder
part_56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_54 = Instance.new("SpecialMesh", part_56)
mesh_54.Scale = Vector3.new(0.533, 1, 1)
mesh_54.MeshType = Enum.MeshType.Cylinder

 part_57 = Instance.new("Part", Dagger)
part_57.FormFactor = Enum.FormFactor.Custom
part_57.Transparency = 0.75
part_57.TopSurface = Enum.SurfaceType.Smooth
part_57.Size = Vector3.new(0.237, 0.237, 0.474)
part_57.CFrame = CFrame.new(114.023, 212.433, -205.204) * CFrame.Angles(-1.226452589035, 0.67411202192307, 3.0119957923889)
part_57.BrickColor = BrickColor.new("Toothpaste")
part_57.Friction = 0.3
part_57.BottomSurface = Enum.SurfaceType.Smooth

 mesh_55 = Instance.new("SpecialMesh", part_57)
mesh_55.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_55.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_55.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_55.VertexColor = Vector3.new(0, 0, 0)
mesh_55.MeshType = Enum.MeshType.FileMesh

 part_58 = Instance.new("Part", Dagger)
part_58.CanCollide = false
part_58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.Material = Enum.Material.SmoothPlastic
part_58.Size = Vector3.new(0.296, 0.2, 0.2)
part_58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.CFrame = CFrame.new(113.638, 212.349, -204.954) * CFrame.Angles(3.1415109634399, 0.31002363562584, -1.5707743167877)
part_58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BrickColor = BrickColor.new("Really black")
part_58.Friction = 0.3
part_58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_56 = Instance.new("BlockMesh", part_58)
mesh_56.Scale = Vector3.new(1, 0.475, 0.705)

 part_59 = Instance.new("Part", Dagger)
part_59.CanCollide = false
part_59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.Material = Enum.Material.SmoothPlastic
part_59.Size = Vector3.new(0.2, 0.273, 0.273)
part_59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.CFrame = CFrame.new(113.933, 212.355, -205.229) * CFrame.Angles(-3.1415770053864, 0.02473352663219, 5.2611390856327e-005)
part_59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BrickColor = BrickColor.new("Really black")
part_59.Friction = 0.3
part_59.Shape = Enum.PartType.Cylinder
part_59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_57 = Instance.new("SpecialMesh", part_59)
mesh_57.Scale = Vector3.new(0.533, 1, 1)
mesh_57.MeshType = Enum.MeshType.Cylinder

 part_60 = Instance.new("Part", Dagger)
part_60.CanCollide = false
part_60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.Material = Enum.Material.SmoothPlastic
part_60.Size = Vector3.new(0.2, 0.249, 0.249)
part_60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.CFrame = CFrame.new(113.956, 212.355, -205.227) * CFrame.Angles(-3.1415770053864, 0.02473352663219, 5.2611390856327e-005)
part_60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BrickColor = BrickColor.new("Really black")
part_60.Friction = 0.3
part_60.Shape = Enum.PartType.Cylinder
part_60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_58 = Instance.new("SpecialMesh", part_60)
mesh_58.Scale = Vector3.new(0.533, 1, 1)
mesh_58.MeshType = Enum.MeshType.Cylinder

 part_61 = Instance.new("Part", Dagger)
part_61.FormFactor = Enum.FormFactor.Custom
part_61.Transparency = 0.75
part_61.TopSurface = Enum.SurfaceType.Smooth
part_61.Size = Vector3.new(0.237, 0.237, 0.474)
part_61.CFrame = CFrame.new(114.036, 212.265, -205.332) * CFrame.Angles(2.567006111145, 0.79479777812958, -3.0668992996216)
part_61.BrickColor = BrickColor.new("Toothpaste")
part_61.Friction = 0.3
part_61.BottomSurface = Enum.SurfaceType.Smooth

 mesh_59 = Instance.new("SpecialMesh", part_61)
mesh_59.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_59.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_59.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_59.VertexColor = Vector3.new(0, 0, 0)
mesh_59.MeshType = Enum.MeshType.FileMesh

 part_62 = Instance.new("Part", Dagger)
part_62.FormFactor = Enum.FormFactor.Custom
part_62.Transparency = 0.75
part_62.TopSurface = Enum.SurfaceType.Smooth
part_62.Size = Vector3.new(0.237, 0.237, 0.474)
part_62.CFrame = CFrame.new(114.032, 212.422, -205.29) * CFrame.Angles(-2.0113120079041, 0.75404590368271, 3.0170900821686)
part_62.BrickColor = BrickColor.new("Toothpaste")
part_62.Friction = 0.3
part_62.BottomSurface = Enum.SurfaceType.Smooth

 mesh_60 = Instance.new("SpecialMesh", part_62)
mesh_60.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_60.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_60.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_60.VertexColor = Vector3.new(0, 0, 0)
mesh_60.MeshType = Enum.MeshType.FileMesh

 part_63 = Instance.new("Part", Dagger)
part_63.CanCollide = false
part_63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.Material = Enum.Material.SmoothPlastic
part_63.Size = Vector3.new(0.296, 0.2, 0.2)
part_63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.CFrame = CFrame.new(112.046, 212.349, -205.174) * CFrame.Angles(3.1414062976837, 1.3843650817871, -1.5706830024719)
part_63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BrickColor = BrickColor.new("Really black")
part_63.Friction = 0.3
part_63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_61 = Instance.new("BlockMesh", part_63)
mesh_61.Scale = Vector3.new(1, 0.783, 0.791)

 part_64 = Instance.new("Part", Dagger)
part_64.FormFactor = Enum.FormFactor.Custom
part_64.Transparency = 0.75
part_64.TopSurface = Enum.SurfaceType.Smooth
part_64.Size = Vector3.new(0.237, 0.237, 0.474)
part_64.CFrame = CFrame.new(114.015, 212.294, -205.128) * CFrame.Angles(0.24557434022427, 0.50220268964767, 0.03086811862886)
part_64.BrickColor = BrickColor.new("Toothpaste")
part_64.Friction = 0.3
part_64.BottomSurface = Enum.SurfaceType.Smooth

 mesh_62 = Instance.new("SpecialMesh", part_64)
mesh_62.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_62.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_62.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_62.VertexColor = Vector3.new(0, 0, 0)
mesh_62.MeshType = Enum.MeshType.FileMesh

 part_65 = Instance.new("Part", Dagger)
part_65.CanCollide = false
part_65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.Material = Enum.Material.SmoothPlastic
part_65.Size = Vector3.new(0.2, 0.2, 0.2)
part_65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.CFrame = CFrame.new(111.505, 212.486, -205.019) * CFrame.Angles(3.1415145397186, 0.43786507844925, -1.5707963705063)
part_65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BrickColor = BrickColor.new("Dark stone grey")
part_65.Friction = 0.3
part_65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_63 = Instance.new("BlockMesh", part_65)
mesh_63.Scale = Vector3.new(0.166, 0.332, 0.372)

 part_66 = Instance.new("Part", Dagger)
part_66.FormFactor = Enum.FormFactor.Custom
part_66.Transparency = 0.75
part_66.TopSurface = Enum.SurfaceType.Smooth
part_66.Size = Vector3.new(0.237, 0.237, 0.474)
part_66.CFrame = CFrame.new(114.038, 212.352, -205.344) * CFrame.Angles(-2.8529543876648, 0.8062139749527, 3.102507352829)
part_66.BrickColor = BrickColor.new("Toothpaste")
part_66.Friction = 0.3
part_66.BottomSurface = Enum.SurfaceType.Smooth

 mesh_64 = Instance.new("SpecialMesh", part_66)
mesh_64.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_64.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_64.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_64.VertexColor = Vector3.new(0, 0, 0)
mesh_64.MeshType = Enum.MeshType.FileMesh

 part_67 = Instance.new("Part", Dagger)
part_67.FormFactor = Enum.FormFactor.Custom
part_67.Transparency = 0.75
part_67.TopSurface = Enum.SurfaceType.Smooth
part_67.Size = Vector3.new(0.237, 0.237, 0.474)
part_67.CFrame = CFrame.new(114.016, 212.267, -205.138) * CFrame.Angles(0.49181059002876, 0.5120370388031, 0.059987273067236)
part_67.BrickColor = BrickColor.new("Toothpaste")
part_67.Friction = 0.3
part_67.BottomSurface = Enum.SurfaceType.Smooth

 mesh_65 = Instance.new("SpecialMesh", part_67)
mesh_65.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_65.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_65.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_65.VertexColor = Vector3.new(0, 0, 0)
mesh_65.MeshType = Enum.MeshType.FileMesh

 part_68 = Instance.new("Part", Dagger)
part_68.CanCollide = false
part_68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.Material = Enum.Material.SmoothPlastic
part_68.Size = Vector3.new(0.296, 0.2, 1.633)
part_68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.CFrame = CFrame.new(113.102, 212.349, -205.19) * CFrame.Angles(0.0020092579070479, 1.560730099678, 1.5687119960785)
part_68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BrickColor = BrickColor.new("Really black")
part_68.Friction = 0.3
part_68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_66 = Instance.new("BlockMesh", part_68)
mesh_66.Scale = Vector3.new(1, 0.668, 1)

 part_69 = Instance.new("Part", Dagger)
part_69.CanCollide = false
part_69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.Material = Enum.Material.SmoothPlastic
part_69.Size = Vector3.new(0.2, 0.2, 0.2)
part_69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.CFrame = CFrame.new(111.671, 212.442, -205.201) * CFrame.Angles(3.1414878368378, 0.95635890960693, -1.5707598924637)
part_69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BrickColor = BrickColor.new("Dark stone grey")
part_69.Friction = 0.3
part_69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_67 = Instance.new("BlockMesh", part_69)
mesh_67.Scale = Vector3.new(0.599, 0.326, 0.86)

 part_70 = Instance.new("Part", Dagger)
part_70.FormFactor = Enum.FormFactor.Custom
part_70.Transparency = 0.75
part_70.TopSurface = Enum.SurfaceType.Smooth
part_70.Size = Vector3.new(0.237, 0.237, 0.474)
part_70.CFrame = CFrame.new(114.016, 212.377, -205.138) * CFrame.Angles(-0.49179366230965, 0.51203489303589, -0.059996049851179)
part_70.BrickColor = BrickColor.new("Toothpaste")
part_70.Friction = 0.3
part_70.BottomSurface = Enum.SurfaceType.Smooth

 mesh_68 = Instance.new("SpecialMesh", part_70)
mesh_68.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_68.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_68.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_68.VertexColor = Vector3.new(0, 0, 0)
mesh_68.MeshType = Enum.MeshType.FileMesh

 part_71 = Instance.new("Part", Dagger)
part_71.CanCollide = false
part_71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.Material = Enum.Material.SmoothPlastic
part_71.Size = Vector3.new(0.2, 0.2, 0.2)
part_71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.CFrame = CFrame.new(111.562, 212.208, -205.102) * CFrame.Angles(3.1414999961853, 0.69966179132462, -1.5707688331604)
part_71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BrickColor = BrickColor.new("Dark stone grey")
part_71.Friction = 0.3
part_71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_69 = Instance.new("BlockMesh", part_71)
mesh_69.Scale = Vector3.new(0.166, 0.332, 0.733)

 part_72 = Instance.new("Part", Dagger)
part_72.CanCollide = false
part_72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.Material = Enum.Material.SmoothPlastic
part_72.Size = Vector3.new(0.2, 0.2, 0.2)
part_72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.CFrame = CFrame.new(111.826, 212.442, -205.283) * CFrame.Angles(3.1414656639099, 1.1865648031235, -1.5707403421402)
part_72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BrickColor = BrickColor.new("Dark stone grey")
part_72.Friction = 0.3
part_72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_70 = Instance.new("BlockMesh", part_72)
mesh_70.Scale = Vector3.new(0.599, 0.34, 0.994)

 part_73 = Instance.new("Part", Dagger)
part_73.CanCollide = false
part_73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.Material = Enum.Material.SmoothPlastic
part_73.Size = Vector3.new(0.2, 0.2, 0.2)
part_73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.CFrame = CFrame.new(111.999, 212.442, -205.335) * CFrame.Angles(3.1414062976837, 1.3843650817871, -1.5706830024719)
part_73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BrickColor = BrickColor.new("Dark stone grey")
part_73.Friction = 0.3
part_73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_71 = Instance.new("BlockMesh", part_73)
mesh_71.Scale = Vector3.new(0.599, 0.338, 0.957)

 part_74 = Instance.new("Part", Dagger)
part_74.CanCollide = false
part_74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.Material = Enum.Material.SmoothPlastic
part_74.Size = Vector3.new(0.2, 0.237, 0.237)
part_74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.CFrame = CFrame.new(113.968, 212.355, -205.225) * CFrame.Angles(-3.1415770053864, 0.02473352663219, 5.2611390856327e-005)
part_74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BrickColor = BrickColor.new("Really black")
part_74.Friction = 0.3
part_74.Shape = Enum.PartType.Cylinder
part_74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_72 = Instance.new("SpecialMesh", part_74)
mesh_72.Scale = Vector3.new(0.533, 1, 1)
mesh_72.MeshType = Enum.MeshType.Cylinder

 part_75 = Instance.new("Part", Dagger)
part_75.FormFactor = Enum.FormFactor.Custom
part_75.Transparency = 0.75
part_75.TopSurface = Enum.SurfaceType.Smooth
part_75.Size = Vector3.new(0.237, 0.237, 0.474)
part_75.CFrame = CFrame.new(114.026, 212.212, -205.233) * CFrame.Angles(1.4988579750061, 0.59980762004852, 0.12697383761406)
part_75.BrickColor = BrickColor.new("Toothpaste")
part_75.Friction = 0.3
part_75.BottomSurface = Enum.SurfaceType.Smooth

 mesh_73 = Instance.new("SpecialMesh", part_75)
mesh_73.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_73.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_73.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_73.VertexColor = Vector3.new(0, 0, 0)
mesh_73.MeshType = Enum.MeshType.FileMesh

 part_76 = Instance.new("Part", Dagger)
part_76.FormFactor = Enum.FormFactor.Custom
part_76.Transparency = 0.75
part_76.TopSurface = Enum.SurfaceType.Smooth
part_76.Size = Vector3.new(0.237, 0.237, 0.474)
part_76.CFrame = CFrame.new(114.014, 212.322, -205.124) * CFrame.Angles(-0, 0.49885913729668, -0)
part_76.BrickColor = BrickColor.new("Toothpaste")
part_76.Friction = 0.3
part_76.BottomSurface = Enum.SurfaceType.Smooth

 mesh_74 = Instance.new("SpecialMesh", part_76)
mesh_74.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_74.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_74.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_74.VertexColor = Vector3.new(0, 0, 0)
mesh_74.MeshType = Enum.MeshType.FileMesh

 part_77 = Instance.new("Part", Dagger)
part_77.CanCollide = false
part_77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.Material = Enum.Material.SmoothPlastic
part_77.Size = Vector3.new(0.2, 0.249, 0.249)
part_77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.CFrame = CFrame.new(115.377, 212.375, -205.205) * CFrame.Angles(3.141589641571, 0.053808949887753, -3.1415345668793)
part_77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BrickColor = BrickColor.new("Really black")
part_77.Friction = 0.3
part_77.Shape = Enum.PartType.Cylinder
part_77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_75 = Instance.new("SpecialMesh", part_77)
mesh_75.Scale = Vector3.new(0.533, 1, 1)
mesh_75.MeshType = Enum.MeshType.Cylinder

 part_78 = Instance.new("Part", Dagger)
part_78.CanCollide = false
part_78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.Material = Enum.Material.Neon
part_78.Size = Vector3.new(0.2, 0.261, 0.261)
part_78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.CFrame = CFrame.new(113.944, 212.355, -205.228) * CFrame.Angles(-3.1415770053864, 0.02473352663219, 5.2611390856327e-005)
part_78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BrickColor = BrickColor.new("Fog")
part_78.Friction = 0.3
part_78.Shape = Enum.PartType.Cylinder
part_78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_76 = Instance.new("SpecialMesh", part_78)
mesh_76.Scale = Vector3.new(0.533, 1, 1)
mesh_76.MeshType = Enum.MeshType.Cylinder

 part_79 = Instance.new("Part", Dagger)
part_79.FormFactor = Enum.FormFactor.Custom
part_79.Transparency = 0.75
part_79.TopSurface = Enum.SurfaceType.Smooth
part_79.Size = Vector3.new(0.237, 0.237, 0.474)
part_79.CFrame = CFrame.new(114.018, 212.244, -205.156) * CFrame.Angles(0.73943966627121, 0.52779519557953, 0.08565878123045)
part_79.BrickColor = BrickColor.new("Toothpaste")
part_79.Friction = 0.3
part_79.BottomSurface = Enum.SurfaceType.Smooth

 mesh_77 = Instance.new("SpecialMesh", part_79)
mesh_77.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_77.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_77.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_77.VertexColor = Vector3.new(0, 0, 0)
mesh_77.MeshType = Enum.MeshType.FileMesh

 part_80 = Instance.new("Part", Dagger)
part_80.FormFactor = Enum.FormFactor.Custom
part_80.Transparency = 0.75
part_80.TopSurface = Enum.SurfaceType.Smooth
part_80.Size = Vector3.new(0.237, 0.237, 0.474)
part_80.CFrame = CFrame.new(114.035, 212.241, -205.314) * CFrame.Angles(2.2860009670258, 0.77690303325653, -3.0377492904663)
part_80.BrickColor = BrickColor.new("Toothpaste")
part_80.Friction = 0.3
part_80.BottomSurface = Enum.SurfaceType.Smooth

 mesh_78 = Instance.new("SpecialMesh", part_80)
mesh_78.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_78.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_78.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_78.VertexColor = Vector3.new(0, 0, 0)
mesh_78.MeshType = Enum.MeshType.FileMesh

 part_81 = Instance.new("Part", Dagger)
part_81.FormFactor = Enum.FormFactor.Custom
part_81.Transparency = 0.75
part_81.TopSurface = Enum.SurfaceType.Smooth
part_81.Size = Vector3.new(0.237, 0.237, 0.474)
part_81.CFrame = CFrame.new(114.014, 212.322, -205.124) * CFrame.Angles(-0, 0.49885913729668, -0)
part_81.BrickColor = BrickColor.new("Toothpaste")
part_81.Friction = 0.3
part_81.BottomSurface = Enum.SurfaceType.Smooth

 mesh_79 = Instance.new("SpecialMesh", part_81)
mesh_79.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_79.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_79.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_79.VertexColor = Vector3.new(0, 0, 0)
mesh_79.MeshType = Enum.MeshType.FileMesh

 part_82 = Instance.new("Part", Dagger)
part_82.CanCollide = false
part_82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.Material = Enum.Material.SmoothPlastic
part_82.Size = Vector3.new(0.2, 0.225, 0.225)
part_82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.CFrame = CFrame.new(115.353, 212.375, -205.204) * CFrame.Angles(3.141589641571, 0.053808949887753, -3.1415345668793)
part_82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BrickColor = BrickColor.new("Really black")
part_82.Friction = 0.3
part_82.Shape = Enum.PartType.Cylinder
part_82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_80 = Instance.new("SpecialMesh", part_82)
mesh_80.Scale = Vector3.new(0.533, 1, 1)
mesh_80.MeshType = Enum.MeshType.Cylinder

 part_83 = Instance.new("Part", Dagger)
part_83.FormFactor = Enum.FormFactor.Custom
part_83.Transparency = 0.75
part_83.TopSurface = Enum.SurfaceType.Smooth
part_83.Size = Vector3.new(0.237, 0.237, 0.474)
part_83.CFrame = CFrame.new(114.015, 212.351, -205.128) * CFrame.Angles(-0.24555659294128, 0.50219941139221, -0.0308742467314)
part_83.BrickColor = BrickColor.new("Toothpaste")
part_83.Friction = 0.3
part_83.BottomSurface = Enum.SurfaceType.Smooth

 mesh_81 = Instance.new("SpecialMesh", part_83)
mesh_81.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_81.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_81.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_81.VertexColor = Vector3.new(0, 0, 0)
mesh_81.MeshType = Enum.MeshType.FileMesh

 part_84 = Instance.new("Part", Dagger)
part_84.FormFactor = Enum.FormFactor.Custom
part_84.Transparency = 0.75
part_84.TopSurface = Enum.SurfaceType.Smooth
part_84.Size = Vector3.new(0.237, 0.237, 0.474)
part_84.CFrame = CFrame.new(114.018, 212.4, -205.156) * CFrame.Angles(-0.739422082901, 0.52779406309128, -0.085666202008724)
part_84.BrickColor = BrickColor.new("Toothpaste")
part_84.Friction = 0.3
part_84.BottomSurface = Enum.SurfaceType.Smooth

 mesh_82 = Instance.new("SpecialMesh", part_84)
mesh_82.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_82.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_82.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_82.VertexColor = Vector3.new(0, 0, 0)
mesh_82.MeshType = Enum.MeshType.FileMesh

 part_85 = Instance.new("Part", Dagger)
part_85.FormFactor = Enum.FormFactor.Custom
part_85.Transparency = 0.75
part_85.TopSurface = Enum.SurfaceType.Smooth
part_85.Size = Vector3.new(0.237, 0.237, 0.474)
part_85.CFrame = CFrame.new(114.038, 212.322, -205.348) * CFrame.Angles(-3.1415927410126, 0.81013888120651, -3.1415927410126)
part_85.BrickColor = BrickColor.new("Toothpaste")
part_85.Friction = 0.3
part_85.BottomSurface = Enum.SurfaceType.Smooth

 mesh_83 = Instance.new("SpecialMesh", part_85)
mesh_83.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_83.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_83.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_83.VertexColor = Vector3.new(0, 0, 0)
mesh_83.MeshType = Enum.MeshType.FileMesh

 part_86 = Instance.new("Part", Dagger)
part_86.FormFactor = Enum.FormFactor.Custom
part_86.Transparency = 0.75
part_86.TopSurface = Enum.SurfaceType.Smooth
part_86.Size = Vector3.new(0.237, 0.237, 0.474)
part_86.CFrame = CFrame.new(114.034, 212.244, -205.311) * CFrame.Angles(2.2995228767395, 0.67556339502335, 0.094852894544601)
part_86.BrickColor = BrickColor.new("Toothpaste")
part_86.Friction = 0.3
part_86.BottomSurface = Enum.SurfaceType.Smooth

 mesh_84 = Instance.new("SpecialMesh", part_86)
mesh_84.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_84.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_84.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_84.VertexColor = Vector3.new(0, 0, 0)
mesh_84.MeshType = Enum.MeshType.FileMesh

 part_87 = Instance.new("Part", Dagger)
part_87.CanCollide = false
part_87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.Material = Enum.Material.SmoothPlastic
part_87.Size = Vector3.new(0.2, 0.296, 0.296)
part_87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.CFrame = CFrame.new(115.424, 212.375, -205.206) * CFrame.Angles(3.141589641571, 0.053808949887753, -3.1415345668793)
part_87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BrickColor = BrickColor.new("Really black")
part_87.Friction = 0.3
part_87.Shape = Enum.PartType.Cylinder
part_87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_85 = Instance.new("SpecialMesh", part_87)
mesh_85.Scale = Vector3.new(0.533, 1, 1)
mesh_85.MeshType = Enum.MeshType.Cylinder

 part_88 = Instance.new("Part", Dagger)
part_88.FormFactor = Enum.FormFactor.Custom
part_88.Transparency = 0.75
part_88.TopSurface = Enum.SurfaceType.Smooth
part_88.Size = Vector3.new(0.237, 0.237, 0.474)
part_88.CFrame = CFrame.new(114.018, 212.404, -205.152) * CFrame.Angles(-0.72868329286575, 0.62923967838287, 3.0500493049622)
part_88.BrickColor = BrickColor.new("Toothpaste")
part_88.Friction = 0.3
part_88.BottomSurface = Enum.SurfaceType.Smooth

 mesh_86 = Instance.new("SpecialMesh", part_88)
mesh_86.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_86.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_86.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_86.VertexColor = Vector3.new(0, 0, 0)
mesh_86.MeshType = Enum.MeshType.FileMesh

 part_89 = Instance.new("Part", Dagger)
part_89.FormFactor = Enum.FormFactor.Custom
part_89.Transparency = 0.75
part_89.TopSurface = Enum.SurfaceType.Smooth
part_89.Size = Vector3.new(0.237, 0.237, 0.474)
part_89.CFrame = CFrame.new(114.026, 212.437, -205.233) * CFrame.Angles(-1.4820139408112, 0.70076322555542, 3.0044074058533)
part_89.BrickColor = BrickColor.new("Toothpaste")
part_89.Friction = 0.3
part_89.BottomSurface = Enum.SurfaceType.Smooth

 mesh_87 = Instance.new("SpecialMesh", part_89)
mesh_87.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_87.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_87.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_87.VertexColor = Vector3.new(0, 0, 0)
mesh_87.MeshType = Enum.MeshType.FileMesh

 part_90 = Instance.new("Part", Dagger)
part_90.CanCollide = false
part_90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.Material = Enum.Material.SmoothPlastic
part_90.Size = Vector3.new(0.2, 0.213, 0.213)
part_90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.CFrame = CFrame.new(115.342, 212.375, -205.204) * CFrame.Angles(3.1415898799896, 0.053807951509953, -3.1415395736694)
part_90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BrickColor = BrickColor.new("Really black")
part_90.Friction = 0.3
part_90.Shape = Enum.PartType.Cylinder
part_90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_88 = Instance.new("SpecialMesh", part_90)
mesh_88.Scale = Vector3.new(0.533, 1, 1)
mesh_88.MeshType = Enum.MeshType.Cylinder

 part_91 = Instance.new("Part", Dagger)
part_91.CanCollide = false
part_91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.Material = Enum.Material.SmoothPlastic
part_91.Size = Vector3.new(0.2, 0.285, 0.285)
part_91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.CFrame = CFrame.new(113.921, 212.355, -205.23) * CFrame.Angles(-3.1415770053864, 0.02473352663219, 5.2611390856327e-005)
part_91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BrickColor = BrickColor.new("Really black")
part_91.Friction = 0.3
part_91.Shape = Enum.PartType.Cylinder
part_91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_89 = Instance.new("SpecialMesh", part_91)
mesh_89.Scale = Vector3.new(0.533, 1, 1)
mesh_89.MeshType = Enum.MeshType.Cylinder

 part_92 = Instance.new("Part", Dagger)
part_92.CanCollide = false
part_92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.Material = Enum.Material.SmoothPlastic
part_92.Size = Vector3.new(0.2, 0.273, 0.273)
part_92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.CFrame = CFrame.new(115.401, 212.375, -205.206) * CFrame.Angles(3.141589641571, 0.053808949887753, -3.1415345668793)
part_92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BrickColor = BrickColor.new("Really black")
part_92.Friction = 0.3
part_92.Shape = Enum.PartType.Cylinder
part_92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_90 = Instance.new("SpecialMesh", part_92)
mesh_90.Scale = Vector3.new(0.533, 1, 1)
mesh_90.MeshType = Enum.MeshType.Cylinder

 part_93 = Instance.new("Part", Dagger)
part_93.FormFactor = Enum.FormFactor.Custom
part_93.Transparency = 0.75
part_93.TopSurface = Enum.SurfaceType.Smooth
part_93.Size = Vector3.new(0.237, 0.237, 0.474)
part_93.CFrame = CFrame.new(114.023, 212.216, -205.205) * CFrame.Angles(1.242093205452, 0.57306534051895, 0.12044896185398)
part_93.BrickColor = BrickColor.new("Toothpaste")
part_93.Friction = 0.3
part_93.BottomSurface = Enum.SurfaceType.Smooth

 mesh_91 = Instance.new("SpecialMesh", part_93)
mesh_91.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_91.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_91.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_91.VertexColor = Vector3.new(0, 0, 0)
mesh_91.MeshType = Enum.MeshType.FileMesh

 part_94 = Instance.new("Part", Dagger)
part_94.FormFactor = Enum.FormFactor.Custom
part_94.Transparency = 0.75
part_94.TopSurface = Enum.SurfaceType.Smooth
part_94.Size = Vector3.new(0.237, 0.237, 0.474)
part_94.CFrame = CFrame.new(114.038, 212.292, -205.344) * CFrame.Angles(2.8529376983643, 0.80621343851089, -3.1024985313416)
part_94.BrickColor = BrickColor.new("Toothpaste")
part_94.Friction = 0.3
part_94.BottomSurface = Enum.SurfaceType.Smooth

 mesh_92 = Instance.new("SpecialMesh", part_94)
mesh_92.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_92.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_92.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_92.VertexColor = Vector3.new(0, 0, 0)
mesh_92.MeshType = Enum.MeshType.FileMesh

 part_95 = Instance.new("Part", Dagger)
part_95.CanCollide = false
part_95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.Material = Enum.Material.SmoothPlastic
part_95.Size = Vector3.new(0.2, 0.261, 0.261)
part_95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.CFrame = CFrame.new(115.389, 212.375, -205.205) * CFrame.Angles(3.141589641571, 0.053808949887753, -3.1415345668793)
part_95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BrickColor = BrickColor.new("Really black")
part_95.Friction = 0.3
part_95.Shape = Enum.PartType.Cylinder
part_95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_93 = Instance.new("SpecialMesh", part_95)
mesh_93.Scale = Vector3.new(0.533, 1, 1)
mesh_93.MeshType = Enum.MeshType.Cylinder

 part_96 = Instance.new("Part", Dagger)
part_96.CanCollide = false
part_96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.Material = Enum.Material.SmoothPlastic
part_96.Size = Vector3.new(0.2, 0.213, 0.213)
part_96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.CFrame = CFrame.new(113.991, 212.355, -205.223) * CFrame.Angles(-3.1415770053864, 0.02473252825439, 5.2612020226661e-005)
part_96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BrickColor = BrickColor.new("Really black")
part_96.Friction = 0.3
part_96.Shape = Enum.PartType.Cylinder
part_96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_94 = Instance.new("SpecialMesh", part_96)
mesh_94.Scale = Vector3.new(0.533, 1, 1)
mesh_94.MeshType = Enum.MeshType.Cylinder

 part_97 = Instance.new("Part", Dagger)
part_97.FormFactor = Enum.FormFactor.Custom
part_97.Transparency = 0.75
part_97.TopSurface = Enum.SurfaceType.Smooth
part_97.Size = Vector3.new(0.237, 0.237, 0.474)
part_97.CFrame = CFrame.new(114.035, 212.404, -205.314) * CFrame.Angles(-2.2860202789307, 0.77690273523331, 3.0377643108368)
part_97.BrickColor = BrickColor.new("Toothpaste")
part_97.Friction = 0.3
part_97.BottomSurface = Enum.SurfaceType.Smooth

 mesh_95 = Instance.new("SpecialMesh", part_97)
mesh_95.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_95.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_95.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_95.VertexColor = Vector3.new(0, 0, 0)
mesh_95.MeshType = Enum.MeshType.FileMesh

 part_98 = Instance.new("Part", Dagger)
part_98.FormFactor = Enum.FormFactor.Custom
part_98.Transparency = 0.75
part_98.TopSurface = Enum.SurfaceType.Smooth
part_98.Size = Vector3.new(0.237, 0.237, 0.474)
part_98.CFrame = CFrame.new(114.035, 212.404, -205.314) * CFrame.Angles(-2.2860202789307, 0.77690273523331, 3.0377643108368)
part_98.BrickColor = BrickColor.new("Toothpaste")
part_98.Friction = 0.3
part_98.BottomSurface = Enum.SurfaceType.Smooth

 mesh_96 = Instance.new("SpecialMesh", part_98)
mesh_96.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_96.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_96.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_96.VertexColor = Vector3.new(0, 0, 0)
mesh_96.MeshType = Enum.MeshType.FileMesh

 part_99 = Instance.new("Part", Dagger)
part_99.FormFactor = Enum.FormFactor.Custom
part_99.Transparency = 0.75
part_99.TopSurface = Enum.SurfaceType.Smooth
part_99.Size = Vector3.new(0.237, 0.237, 0.474)
part_99.CFrame = CFrame.new(114.026, 212.437, -205.233) * CFrame.Angles(-1.4820139408112, 0.70076322555542, 3.0044074058533)
part_99.BrickColor = BrickColor.new("Toothpaste")
part_99.Friction = 0.3
part_99.BottomSurface = Enum.SurfaceType.Smooth

 mesh_97 = Instance.new("SpecialMesh", part_99)
mesh_97.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_97.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_97.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_97.VertexColor = Vector3.new(0, 0, 0)
mesh_97.MeshType = Enum.MeshType.FileMesh

 part_100 = Instance.new("Part", Dagger)
part_100.FormFactor = Enum.FormFactor.Custom
part_100.Transparency = 0.75
part_100.TopSurface = Enum.SurfaceType.Smooth
part_100.Size = Vector3.new(0.237, 0.237, 0.474)
part_100.CFrame = CFrame.new(114.032, 212.227, -205.288) * CFrame.Angles(2.0272088050842, 0.65292751789093, 0.11420700699091)
part_100.BrickColor = BrickColor.new("Toothpaste")
part_100.Friction = 0.3
part_100.BottomSurface = Enum.SurfaceType.Smooth

 mesh_98 = Instance.new("SpecialMesh", part_100)
mesh_98.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_98.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_98.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_98.VertexColor = Vector3.new(0, 0, 0)
mesh_98.MeshType = Enum.MeshType.FileMesh

 part_101 = Instance.new("Part", Dagger)
part_101.CanCollide = false
part_101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.Material = Enum.Material.SmoothPlastic
part_101.Size = Vector3.new(0.2, 0.285, 0.285)
part_101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.CFrame = CFrame.new(115.413, 212.375, -205.206) * CFrame.Angles(3.141589641571, 0.053808949887753, -3.1415345668793)
part_101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BrickColor = BrickColor.new("Really black")
part_101.Friction = 0.3
part_101.Shape = Enum.PartType.Cylinder
part_101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_99 = Instance.new("SpecialMesh", part_101)
mesh_99.Scale = Vector3.new(0.533, 1, 1)
mesh_99.MeshType = Enum.MeshType.Cylinder

 part_102 = Instance.new("Part", Dagger)
part_102.FormFactor = Enum.FormFactor.Custom
part_102.Transparency = 0.75
part_102.TopSurface = Enum.SurfaceType.Smooth
part_102.Size = Vector3.new(0.237, 0.237, 0.474)
part_102.CFrame = CFrame.new(114.026, 212.212, -205.233) * CFrame.Angles(1.4988585710526, 0.59980779886246, 0.12697249650955)
part_102.BrickColor = BrickColor.new("Toothpaste")
part_102.Friction = 0.3
part_102.BottomSurface = Enum.SurfaceType.Smooth

 mesh_100 = Instance.new("SpecialMesh", part_102)
mesh_100.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_100.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_100.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_100.VertexColor = Vector3.new(0, 0, 0)
mesh_100.MeshType = Enum.MeshType.FileMesh

 part_103 = Instance.new("Part", Dagger)
part_103.FormFactor = Enum.FormFactor.Custom
part_103.Transparency = 0.75
part_103.TopSurface = Enum.SurfaceType.Smooth
part_103.Size = Vector3.new(0.237, 0.237, 0.474)
part_103.CFrame = CFrame.new(114.018, 212.244, -205.156) * CFrame.Angles(0.73943966627121, 0.52779519557953, 0.08565878123045)
part_103.BrickColor = BrickColor.new("Toothpaste")
part_103.Friction = 0.3
part_103.BottomSurface = Enum.SurfaceType.Smooth

 mesh_101 = Instance.new("SpecialMesh", part_103)
mesh_101.Scale = Vector3.new(0.948, 0.948, 0.948)
mesh_101.MeshId = "http://www.roblox.com/asset/?id=51684149 "
mesh_101.TextureId = "http://www.roblox.com/asset/?id=157005821"
mesh_101.VertexColor = Vector3.new(0, 0, 0)
mesh_101.MeshType = Enum.MeshType.FileMesh

 part_104 = Instance.new("Part", Dagger)
part_104.CanCollide = false
part_104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.Material = Enum.Material.SmoothPlastic
part_104.Size = Vector3.new(0.2, 0.237, 0.237)
part_104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.CFrame = CFrame.new(115.365, 212.375, -205.205) * CFrame.Angles(3.141589641571, 0.053808949887753, -3.1415345668793)
part_104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BrickColor = BrickColor.new("Really black")
part_104.Friction = 0.3
part_104.Shape = Enum.PartType.Cylinder
part_104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_102 = Instance.new("SpecialMesh", part_104)
mesh_102.Scale = Vector3.new(0.533, 1, 1)
mesh_102.MeshType = Enum.MeshType.Cylinder

 wedge = Instance.new("WedgePart", Dagger)
wedge.CanCollide = false
wedge.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.Friction = 0.3
wedge.Material = Enum.Material.SmoothPlastic
wedge.Size = Vector3.new(0.296, 0.2, 0.2)
wedge.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.CFrame = CFrame.new(113.582, 212.349, -204.815) * CFrame.Angles(0.0016983731184155, 1.5589560270309, -1.5725698471069)
wedge.BrickColor = BrickColor.new("Really black")

 mesh_103 = Instance.new("SpecialMesh", wedge)
mesh_103.Scale = Vector3.new(1, 0.367, 0.497)
mesh_103.MeshType = Enum.MeshType.Wedge

 wedge_2 = Instance.new("WedgePart", Dagger)
wedge_2.CanCollide = false
wedge_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.Friction = 0.3
wedge_2.Material = Enum.Material.SmoothPlastic
wedge_2.Size = Vector3.new(0.296, 0.2, 0.243)
wedge_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.CFrame = CFrame.new(111.469, 212.349, -204.952) * CFrame.Angles(3.1415073871613, 0.4553727209568, -1.5707728862762)
wedge_2.BrickColor = BrickColor.new("Black")

 mesh_104 = Instance.new("SpecialMesh", wedge_2)
mesh_104.Scale = Vector3.new(1, 0.707, 1)
mesh_104.MeshType = Enum.MeshType.Wedge

 wedge_3 = Instance.new("WedgePart", Dagger)
wedge_3.CanCollide = false
wedge_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.Friction = 0.3
wedge_3.Material = Enum.Material.SmoothPlastic
wedge_3.Size = Vector3.new(0.296, 0.215, 0.356)
wedge_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.CFrame = CFrame.new(111.527, 212.349, -204.987) * CFrame.Angles(3.1408472061157, 1.5394859313965, 1.5714671611786)
wedge_3.BrickColor = BrickColor.new("Really black")

 wedge_4 = Instance.new("WedgePart", Dagger)
wedge_4.CanCollide = false
wedge_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.Friction = 0.3
wedge_4.Material = Enum.Material.SmoothPlastic
wedge_4.Size = Vector3.new(0.296, 0.2, 0.306)
wedge_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.CFrame = CFrame.new(112.246, 212.349, -204.973) * CFrame.Angles(3.1409394741058, 1.5344837903976, 1.5713747739792)
wedge_4.BrickColor = BrickColor.new("Really black")

 mesh_105 = Instance.new("SpecialMesh", wedge_4)
mesh_105.Scale = Vector3.new(1, 0.649, 1)
mesh_105.MeshType = Enum.MeshType.Wedge

 wedge_5 = Instance.new("WedgePart", Dagger)
wedge_5.CanCollide = false
wedge_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.Friction = 0.3
wedge_5.Material = Enum.Material.SmoothPlastic
wedge_5.Size = Vector3.new(0.296, 0.2, 0.26)
wedge_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.CFrame = CFrame.new(113.577, 212.349, -204.763) * CFrame.Angles(3.1415109634399, 0.31002363562584, -1.5707743167877)
wedge_5.BrickColor = BrickColor.new("Really black")

 mesh_106 = Instance.new("SpecialMesh", wedge_5)
mesh_106.Scale = Vector3.new(1, 0.475, 1)
mesh_106.MeshType = Enum.MeshType.Wedge

 wedge_6 = Instance.new("WedgePart", Dagger)
wedge_6.CanCollide = false
wedge_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.Friction = 0.3
wedge_6.Material = Enum.Material.SmoothPlastic
wedge_6.Size = Vector3.new(0.296, 0.2, 0.2)
wedge_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.CFrame = CFrame.new(113.396, 212.349, -204.871) * CFrame.Angles(3.1415572166443, -1.0832719802856, -1.5707515478134)
wedge_6.BrickColor = BrickColor.new("Really black")

 mesh_107 = Instance.new("SpecialMesh", wedge_6)
mesh_107.Scale = Vector3.new(1, 0.663, 0.548)
mesh_107.MeshType = Enum.MeshType.Wedge

 wedge_7 = Instance.new("WedgePart", Dagger)
wedge_7.CanCollide = false
wedge_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.Friction = 0.3
wedge_7.Material = Enum.Material.SmoothPlastic
wedge_7.Size = Vector3.new(0.296, 0.239, 0.444)
wedge_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.CFrame = CFrame.new(112.332, 212.349, -204.988) * CFrame.Angles(3.1414988040924, 0.73268502950668, -1.5707681179047)
wedge_7.BrickColor = BrickColor.new("Really black")

 wedge_8 = Instance.new("WedgePart", Dagger)
wedge_8.CanCollide = false
wedge_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.Friction = 0.3
wedge_8.Material = Enum.Material.SmoothPlastic
wedge_8.Size = Vector3.new(0.296, 0.2, 0.2)
wedge_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.CFrame = CFrame.new(113.398, 212.349, -204.826) * CFrame.Angles(3.1415104866028, 0.32738387584686, 1.5708185434341)
wedge_8.BrickColor = BrickColor.new("Really black")

 mesh_108 = Instance.new("SpecialMesh", wedge_8)
mesh_108.Scale = Vector3.new(1, 0.269, 0.316)
mesh_108.MeshType = Enum.MeshType.Wedge

 wedge_9 = Instance.new("WedgePart", Dagger)
wedge_9.CanCollide = false
wedge_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.Friction = 0.3
wedge_9.Material = Enum.Material.SmoothPlastic
wedge_9.Size = Vector3.new(0.296, 0.2, 0.2)
wedge_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.CFrame = CFrame.new(113.188, 212.349, -204.743) * CFrame.Angles(3.1415061950684, 0.52230244874954, -1.5707675218582)
wedge_9.BrickColor = BrickColor.new("Really black")

 mesh_109 = Instance.new("SpecialMesh", wedge_9)
mesh_109.Scale = Vector3.new(1, 0.517, 0.605)
mesh_109.MeshType = Enum.MeshType.Wedge

 Sword = Instance.new("Model", Weapon)
Sword.Name = "Sword"

 handle_2 = Instance.new("Part", Sword)
handle_2.CanCollide = false
handle_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.Material = Enum.Material.Metal
handle_2.Size = Vector3.new(2.367, 0.727, 0.727)
handle_2.Name = "Handle"
handle_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.CFrame = CFrame.new(63.669, 14.693, 34.578) * CFrame.Angles(-1.3509877920151, -1.3967348337173, -1.3323202133179)
handle_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.BrickColor = BrickColor.new("Really black")
handle_2.Friction = 0.3
handle_2.Shape = Enum.PartType.Cylinder
handle_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_111 = Instance.new("SpecialMesh", handle_2)
mesh_111.Scale = Vector3.new(1, 0.226, 0.51)
mesh_111.MeshType = Enum.MeshType.Cylinder

 wedge_11 = Instance.new("WedgePart", Sword)
wedge_11.CanCollide = false
wedge_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.Friction = 0.3
wedge_11.Material = Enum.Material.Metal
wedge_11.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.CFrame = CFrame.new(63.388, 14.747, 23.143) * CFrame.Angles(-3.1259317398071, -0.021023130044341, -3.0434746742249)

 mesh_112 = Instance.new("SpecialMesh", wedge_11)
mesh_112.Scale = Vector3.new(0.47, 0.879, 0.908)
mesh_112.MeshType = Enum.MeshType.Wedge

 wedge_12 = Instance.new("WedgePart", Sword)
wedge_12.CanCollide = false
wedge_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.Friction = 0.3
wedge_12.Material = Enum.Material.Metal
wedge_12.Size = Vector3.new(0.303, 0.303, 1.903)
wedge_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.CFrame = CFrame.new(63.365, 14.764, 22.054) * CFrame.Angles(0.015661004930735, 0.021023130044341, -0.098118022084236)

 mesh_113 = Instance.new("SpecialMesh", wedge_12)
mesh_113.Scale = Vector3.new(0.47, 0.879, 1)
mesh_113.MeshType = Enum.MeshType.Wedge

 wedge_13 = Instance.new("WedgePart", Sword)
wedge_13.CanCollide = false
wedge_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.Friction = 0.3
wedge_13.Material = Enum.Material.Metal
wedge_13.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.CFrame = CFrame.new(63.374, 14.544, 23.276) * CFrame.Angles(-3.1259334087372, -0.021017523482442, 0.10531371086836)

 mesh_114 = Instance.new("SpecialMesh", wedge_13)
mesh_114.Scale = Vector3.new(0.45, 0.448, 0.136)
mesh_114.MeshType = Enum.MeshType.Wedge

 wedge_14 = Instance.new("WedgePart", Sword)
wedge_14.CanCollide = false
wedge_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.Friction = 0.3
wedge_14.Material = Enum.Material.Metal
wedge_14.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.CFrame = CFrame.new(63.65, 15.022, 33.282) * CFrame.Angles(1.9636355638504, -0.1012132242322, -3.1240649223328)

 mesh_115 = Instance.new("SpecialMesh", wedge_14)
mesh_115.Scale = Vector3.new(0.521, 0.055, 0.021)
mesh_115.MeshType = Enum.MeshType.Wedge

 wedge_15 = Instance.new("WedgePart", Sword)
wedge_15.CanCollide = false
wedge_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.Friction = 0.3
wedge_15.Material = Enum.Material.Metal
wedge_15.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.CFrame = CFrame.new(63.575, 14.29, 33.213) * CFrame.Angles(1.7955830097198, -0.10271386057138, -3.1412105560303)

 mesh_116 = Instance.new("SpecialMesh", wedge_15)
mesh_116.Scale = Vector3.new(0.521, 0.079, 0.004)
mesh_116.MeshType = Enum.MeshType.Wedge

 wedge_16 = Instance.new("WedgePart", Sword)
wedge_16.CanCollide = false
wedge_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.Friction = 0.3
wedge_16.Material = Enum.Material.Metal
wedge_16.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.CFrame = CFrame.new(63.625, 14.781, 33.265) * CFrame.Angles(-1.5917938947678, 0.099740244448185, 0.024579931050539)

 mesh_117 = Instance.new("SpecialMesh", wedge_16)
mesh_117.Scale = Vector3.new(0.521, 0.079, 0.006)
mesh_117.MeshType = Enum.MeshType.Wedge

 wedge_17 = Instance.new("WedgePart", Sword)
wedge_17.CanCollide = false
wedge_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.Friction = 0.3
wedge_17.Material = Enum.Material.Metal
wedge_17.Size = Vector3.new(0.303, 0.413, 0.448)
wedge_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.CFrame = CFrame.new(63.353, 14.854, 20.879) * CFrame.Angles(0.015663312748075, 0.02102005854249, 3.0410444736481)

 mesh_118 = Instance.new("SpecialMesh", wedge_17)
mesh_118.Scale = Vector3.new(0.441, 1, 1)
mesh_118.MeshType = Enum.MeshType.Wedge

 wedge_18 = Instance.new("WedgePart", Sword)
wedge_18.CanCollide = false
wedge_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.Friction = 0.3
wedge_18.Material = Enum.Material.Metal
wedge_18.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.CFrame = CFrame.new(63.649, 15.017, 33.279) * CFrame.Angles(-1.1779571771622, 0.1012132242322, -0.017527656629682)

 mesh_119 = Instance.new("SpecialMesh", wedge_18)
mesh_119.Scale = Vector3.new(0.521, 0.055, 0.021)
mesh_119.MeshType = Enum.MeshType.Wedge

 wedge_19 = Instance.new("WedgePart", Sword)
wedge_19.CanCollide = false
wedge_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.Friction = 0.3
wedge_19.Material = Enum.Material.Metal
wedge_19.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.CFrame = CFrame.new(63.574, 14.288, 33.212) * CFrame.Angles(-1.3460097312927, 0.10271386057138, -0.00038213963853195)

 mesh_120 = Instance.new("SpecialMesh", wedge_19)
mesh_120.Scale = Vector3.new(0.521, 0.079, 0.004)
mesh_120.MeshType = Enum.MeshType.Wedge

 wedge_20 = Instance.new("WedgePart", Sword)
wedge_20.CanCollide = false
wedge_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.Friction = 0.3
wedge_20.Material = Enum.Material.Metal
wedge_20.Size = Vector3.new(0.303, 0.303, 4.838)
wedge_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.CFrame = CFrame.new(63.407, 14.299, 25.664) * CFrame.Angles(-3.1160106658936, -0.02001790329814, 0.10398551821709)
wedge_20.BrickColor = BrickColor.new("Black")

 mesh_121 = Instance.new("SpecialMesh", wedge_20)
mesh_121.Scale = Vector3.new(0.217, 0.583, 1)
mesh_121.MeshType = Enum.MeshType.Wedge

 wedge_21 = Instance.new("WedgePart", Sword)
wedge_21.CanCollide = false
wedge_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.Friction = 0.3
wedge_21.Material = Enum.Material.Metal
wedge_21.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.CFrame = CFrame.new(63.537, 14.095, 32.425) * CFrame.Angles(0.95978397130966, -0.069295510649681, -0.075879104435444)

 mesh_122 = Instance.new("SpecialMesh", wedge_21)
mesh_122.Scale = Vector3.new(0.404, 0.055, 0.213)
mesh_122.MeshType = Enum.MeshType.Wedge

 wedge_22 = Instance.new("WedgePart", Sword)
wedge_22.CanCollide = false
wedge_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.Friction = 0.3
wedge_22.Material = Enum.Material.Metal
wedge_22.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.CFrame = CFrame.new(63.357, 14.363, 23.176) * CFrame.Angles(0.025581957772374, 0.02001790329814, 3.0376071929932)
wedge_22.BrickColor = BrickColor.new("Black")

 mesh_123 = Instance.new("SpecialMesh", wedge_22)
mesh_123.Scale = Vector3.new(0.217, 0.583, 0.468)
mesh_123.MeshType = Enum.MeshType.Wedge

 wedge_23 = Instance.new("WedgePart", Sword)
wedge_23.CanCollide = false
wedge_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.Friction = 0.3
wedge_23.Material = Enum.Material.Metal
wedge_23.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.CFrame = CFrame.new(63.529, 14.031, 32.349) * CFrame.Angles(0.95978397130966, -0.069295510649681, 3.0657136440277)

 mesh_124 = Instance.new("SpecialMesh", wedge_23)
mesh_124.Scale = Vector3.new(0.404, 0.598, 0.275)
mesh_124.MeshType = Enum.MeshType.Wedge

 wedge_24 = Instance.new("WedgePart", Sword)
wedge_24.CanCollide = false
wedge_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.Friction = 0.3
wedge_24.Material = Enum.Material.Metal
wedge_24.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.CFrame = CFrame.new(63.524, 13.973, 32.39) * CFrame.Angles(-2.1818087100983, 0.069295510649681, 0.075879104435444)

 mesh_125 = Instance.new("SpecialMesh", wedge_24)
mesh_125.Scale = Vector3.new(0.404, 0.598, 0.195)
mesh_125.MeshType = Enum.MeshType.Wedge

 wedge_25 = Instance.new("WedgePart", Sword)
wedge_25.CanCollide = false
wedge_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.Friction = 0.3
wedge_25.Material = Enum.Material.Metal
wedge_25.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.CFrame = CFrame.new(63.682, 15.336, 33.31) * CFrame.Angles(2.2218067646027, -0.093423120677471, -3.098840713501)

 mesh_126 = Instance.new("SpecialMesh", wedge_25)
mesh_126.Scale = Vector3.new(0.521, 0.221, 0.64)
mesh_126.MeshType = Enum.MeshType.Wedge

 wedge_26 = Instance.new("WedgePart", Sword)
wedge_26.CanCollide = false
wedge_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.Friction = 0.3
wedge_26.Material = Enum.Material.Metal
wedge_26.Size = Vector3.new(0.492, 0.303, 0.303)
wedge_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.CFrame = CFrame.new(63.393, 14.721, 23.273) * CFrame.Angles(-3.0696909427643, 0.046253442764282, -1.4690351486206)
wedge_26.BrickColor = BrickColor.new("Dark stone grey")

 mesh_127 = Instance.new("SpecialMesh", wedge_26)
mesh_127.Scale = Vector3.new(1, 0.435, 0.027)
mesh_127.MeshType = Enum.MeshType.Wedge

 wedge_27 = Instance.new("WedgePart", Sword)
wedge_27.CanCollide = false
wedge_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.Friction = 0.3
wedge_27.Material = Enum.Material.Metal
wedge_27.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.CFrame = CFrame.new(63.598, 14.51, 33.25) * CFrame.Angles(-1.4596884250641, 0.10209864377975, 0.011251341551542)

 mesh_128 = Instance.new("SpecialMesh", wedge_27)
mesh_128.Scale = Vector3.new(0.521, 0.079, 0.005)
mesh_128.MeshType = Enum.MeshType.Wedge

 wedge_28 = Instance.new("WedgePart", Sword)
wedge_28.CanCollide = false
wedge_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_28.Friction = 0.3
wedge_28.Material = Enum.Material.Metal
wedge_28.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_28.CFrame = CFrame.new(63.685, 15.354, 33.337) * CFrame.Angles(2.8860437870026, -0.047253403812647, 0.091233752667904)

 mesh_129 = Instance.new("SpecialMesh", wedge_28)
mesh_129.Scale = Vector3.new(0.521, 0.151, 0.437)
mesh_129.MeshType = Enum.MeshType.Wedge

 wedge_29 = Instance.new("WedgePart", Sword)
wedge_29.CanCollide = false
wedge_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_29.Friction = 0.3
wedge_29.Material = Enum.Material.Metal
wedge_29.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_29.CFrame = CFrame.new(63.598, 14.511, 33.25) * CFrame.Angles(1.6819041967392, -0.10209864377975, 3.1303412914276)

 mesh_130 = Instance.new("SpecialMesh", wedge_29)
mesh_130.Scale = Vector3.new(0.521, 0.079, 0.005)
mesh_130.MeshType = Enum.MeshType.Wedge

 wedge_30 = Instance.new("WedgePart", Sword)
wedge_30.CanCollide = false
wedge_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_30.Friction = 0.3
wedge_30.Material = Enum.Material.Metal
wedge_30.Size = Vector3.new(0.303, 0.303, 0.729)
wedge_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_30.CFrame = CFrame.new(63.441, 14.054, 28.262) * CFrame.Angles(-0.70024573802948, 0.081906281411648, -0.062050472944975)
wedge_30.BrickColor = BrickColor.new("Black")

 mesh_131 = Instance.new("SpecialMesh", wedge_30)
mesh_131.Scale = Vector3.new(0.215, 0.272, 1)
mesh_131.MeshType = Enum.MeshType.Wedge

 wedge_31 = Instance.new("WedgePart", Sword)
wedge_31.CanCollide = false
wedge_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_31.Friction = 0.3
wedge_31.Material = Enum.Material.Metal
wedge_31.Size = Vector3.new(0.303, 0.303, 1.041)
wedge_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_31.CFrame = CFrame.new(63.455, 14.167, 28.369) * CFrame.Angles(-0.9254047870636, 0.093660973012447, 3.0993657112122)
wedge_31.BrickColor = BrickColor.new("Black")

 mesh_132 = Instance.new("SpecialMesh", wedge_31)
mesh_132.Scale = Vector3.new(0.215, 0.388, 1)
mesh_132.MeshType = Enum.MeshType.Wedge

 wedge_32 = Instance.new("WedgePart", Sword)
wedge_32.CanCollide = false
wedge_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_32.Friction = 0.3
wedge_32.Material = Enum.Material.Metal
wedge_32.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_32.CFrame = CFrame.new(63.524, 13.973, 32.39) * CFrame.Angles(0.065133534371853, 0.016006033867598, -0.10146413743496)

 mesh_133 = Instance.new("SpecialMesh", wedge_32)
mesh_133.Scale = Vector3.new(0.404, 0.22, 0.589)
mesh_133.MeshType = Enum.MeshType.Wedge

 wedge_33 = Instance.new("WedgePart", Sword)
wedge_33.CanCollide = false
wedge_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_33.Friction = 0.3
wedge_33.Material = Enum.Material.Metal
wedge_33.Size = Vector3.new(0.303, 0.303, 2.156)
wedge_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_33.CFrame = CFrame.new(63.351, 14.562, 22.177) * CFrame.Angles(0.015659935772419, 0.021020909771323, 3.0363111495972)

 mesh_134 = Instance.new("SpecialMesh", wedge_33)
mesh_134.Scale = Vector3.new(0.45, 0.451, 1)
mesh_134.MeshType = Enum.MeshType.Wedge

 wedge_34 = Instance.new("WedgePart", Sword)
wedge_34.CanCollide = false
wedge_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_34.Friction = 0.3
wedge_34.Material = Enum.Material.Metal
wedge_34.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_34.CFrame = CFrame.new(63.532, 14.036, 32.466) * CFrame.Angles(-2.1818087100983, 0.069295510649681, -3.0657136440277)

 mesh_135 = Instance.new("SpecialMesh", wedge_34)
mesh_135.Scale = Vector3.new(0.404, 0.055, 0.257)
mesh_135.MeshType = Enum.MeshType.Wedge

 wedge_35 = Instance.new("WedgePart", Sword)
wedge_35.CanCollide = false
wedge_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_35.Friction = 0.3
wedge_35.Material = Enum.Material.Metal
wedge_35.Size = Vector3.new(0.303, 0.303, 0.303)
wedge_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_35.CFrame = CFrame.new(63.625, 14.782, 33.265) * CFrame.Angles(1.5497987270355, -0.099740244448185, 3.1170127391815)

 mesh_136 = Instance.new("SpecialMesh", wedge_35)
mesh_136.Scale = Vector3.new(0.521, 0.079, 0.006)
mesh_136.MeshType = Enum.MeshType.Wedge

 wedge_36 = Instance.new("WedgePart", Sword)
wedge_36.CanCollide = false
wedge_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_36.Friction = 0.3
wedge_36.Material = Enum.Material.Metal
wedge_36.Size = Vector3.new(0.392, 0.303, 0.303)
wedge_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_36.CFrame = CFrame.new(63.369, 14.468, 23.242) * CFrame.Angles(-0.008023533038795, 0.050385277718306, -1.6708530187607)
wedge_36.BrickColor = BrickColor.new("Black")

 mesh_137 = Instance.new("SpecialMesh", wedge_36)
mesh_137.Scale = Vector3.new(1, 0.213, 0.011)
mesh_137.MeshType = Enum.MeshType.Wedge

 part_105 = Instance.new("Part", Sword)
part_105.CanCollide = false
part_105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.Material = Enum.Material.Neon
part_105.Size = Vector3.new(0.727, 0.727, 0.727)
part_105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.CFrame = CFrame.new(63.833, 14.69, 35.88) * CFrame.Angles(3.1264097690582, -0.040936648845673, -1.3142932653427)
part_105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BrickColor = BrickColor.new("Institutional white")
part_105.Friction = 0.3
part_105.Shape = Enum.PartType.Ball
part_105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_138 = Instance.new("SpecialMesh", part_105)
mesh_138.Scale = Vector3.new(0.13, 0.13, 0.13)
mesh_138.MeshType = Enum.MeshType.Sphere

 part_106 = Instance.new("Part", Sword)
part_106.CanCollide = false
part_106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.Material = Enum.Material.Metal
part_106.Size = Vector3.new(0.727, 0.727, 0.727)
part_106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.CFrame = CFrame.new(63.66, 14.698, 34.448) * CFrame.Angles(-1.9455527067184, 0.14466516673565, -1.4736169576645)
part_106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.Friction = 0.3
part_106.Shape = Enum.PartType.Cylinder
part_106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_139 = Instance.new("SpecialMesh", part_106)
mesh_139.Scale = Vector3.new(0.053, 0.32, 0.51)
mesh_139.MeshType = Enum.MeshType.Cylinder

 part_107 = Instance.new("Part", Sword)
part_107.CanCollide = false
part_107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.Material = Enum.Material.Metal
part_107.Size = Vector3.new(0.727, 0.727, 0.727)
part_107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.CFrame = CFrame.new(63.664, 14.693, 34.217) * CFrame.Angles(-1.2393612861633, 0.2028362005949, 1.6335287094116)
part_107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.Friction = 0.3
part_107.Shape = Enum.PartType.Cylinder
part_107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_140 = Instance.new("SpecialMesh", part_107)
mesh_140.Scale = Vector3.new(0.053, 0.32, 0.51)
mesh_140.MeshType = Enum.MeshType.Cylinder

 part_108 = Instance.new("Part", Sword)
part_108.CanCollide = false
part_108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.Material = Enum.Material.Metal
part_108.Size = Vector3.new(0.727, 0.727, 0.727)
part_108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.CFrame = CFrame.new(63.712, 14.712, 35.744) * CFrame.Angles(-1.5929688215256, 0.16908670961857, -1.5292754173279)
part_108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.Friction = 0.3
part_108.Shape = Enum.PartType.Cylinder
part_108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_141 = Instance.new("SpecialMesh", part_108)
mesh_141.Scale = Vector3.new(0.183, 0.32, 0.51)
mesh_141.MeshType = Enum.MeshType.Cylinder

 part_109 = Instance.new("Part", Sword)
part_109.CanCollide = false
part_109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.Material = Enum.Material.Metal
part_109.Size = Vector3.new(0.727, 0.727, 0.727)
part_109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.CFrame = CFrame.new(63.68, 14.704, 34.902) * CFrame.Angles(-1.2393612861633, 0.2028362005949, 1.6335287094116)
part_109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.Friction = 0.3
part_109.Shape = Enum.PartType.Cylinder
part_109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_142 = Instance.new("SpecialMesh", part_109)
mesh_142.Scale = Vector3.new(0.053, 0.32, 0.51)
mesh_142.MeshType = Enum.MeshType.Cylinder

 part_110 = Instance.new("Part", Sword)
part_110.CanCollide = false
part_110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.Material = Enum.Material.Metal
part_110.Size = Vector3.new(0.727, 0.727, 0.727)
part_110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.CFrame = CFrame.new(63.638, 14.69, 33.895) * CFrame.Angles(-1.1501603126526, 0.17065201699734, -1.6053490638733)
part_110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.Friction = 0.3
part_110.Shape = Enum.PartType.Cylinder
part_110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_143 = Instance.new("SpecialMesh", part_110)
mesh_143.Scale = Vector3.new(0.053, 0.32, 0.51)
mesh_143.MeshType = Enum.MeshType.Cylinder

 part_111 = Instance.new("Part", Sword)
part_111.CanCollide = false
part_111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.Material = Enum.Material.Neon
part_111.Size = Vector3.new(0.727, 0.727, 0.727)
part_111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.CFrame = CFrame.new(63.604, 14.73, 35.889) * CFrame.Angles(3.1264097690582, -0.040936648845673, -1.3142932653427)
part_111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BrickColor = BrickColor.new("Institutional white")
part_111.Friction = 0.3
part_111.Shape = Enum.PartType.Ball
part_111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_144 = Instance.new("SpecialMesh", part_111)
mesh_144.Scale = Vector3.new(0.13, 0.13, 0.13)
mesh_144.MeshType = Enum.MeshType.Sphere

 part_112 = Instance.new("Part", Sword)
part_112.CanCollide = false
part_112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.Material = Enum.Material.Metal
part_112.Size = Vector3.new(0.303, 0.303, 0.303)
part_112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.CFrame = CFrame.new(63.345, 14.524, 21.922) * CFrame.Angles(2.0630445480347, -0.098985612392426, -3.1141226291656)
part_112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BrickColor = BrickColor.new("Black")
part_112.Friction = 0.3
part_112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_145 = Instance.new("BlockMesh", part_112)
mesh_145.Scale = Vector3.new(0.213, 0.506, 0.569)

 part_113 = Instance.new("Part", Sword)
part_113.CanCollide = false
part_113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.Material = Enum.Material.Metal
part_113.Size = Vector3.new(0.727, 0.727, 0.727)
part_113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.CFrame = CFrame.new(63.619, 14.673, 33.667) * CFrame.Angles(-2.0277314186096, 0.099197536706924, 1.7586872577667)
part_113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.Friction = 0.3
part_113.Shape = Enum.PartType.Cylinder
part_113.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_146 = Instance.new("SpecialMesh", part_113)
mesh_146.Scale = Vector3.new(0.053, 0.32, 0.51)
mesh_146.MeshType = Enum.MeshType.Cylinder

 part_114 = Instance.new("Part", Sword)
part_114.CanCollide = false
part_114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.Material = Enum.Material.Metal
part_114.Size = Vector3.new(0.398, 0.398, 0.398)
part_114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.CFrame = CFrame.new(63.619, 14.69, 33.294) * CFrame.Angles(3.0849335193634, -0.047966111451387, -1.316134095192)
part_114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.Friction = 0.3
part_114.Shape = Enum.PartType.Ball
part_114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_147 = Instance.new("SpecialMesh", part_114)
mesh_147.Scale = Vector3.new(0.424, 0.424, 0.424)
mesh_147.MeshType = Enum.MeshType.Sphere

 part_115 = Instance.new("Part", Sword)
part_115.CanCollide = false
part_115.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.Material = Enum.Material.Metal
part_115.Size = Vector3.new(0.303, 0.309, 0.303)
part_115.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.CFrame = CFrame.new(63.343, 14.594, 21.511) * CFrame.Angles(-2.9457802772522, -0.0026021369267255, -3.0389108657837)
part_115.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BrickColor = BrickColor.new("Black")
part_115.Friction = 0.3
part_115.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_148 = Instance.new("BlockMesh", part_115)
mesh_148.Scale = Vector3.new(0.213, 1, 0.863)

 part_116 = Instance.new("Part", Sword)
part_116.CanCollide = false
part_116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.Material = Enum.Material.Metal
part_116.Size = Vector3.new(0.727, 0.727, 0.727)
part_116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.CFrame = CFrame.new(63.706, 14.712, 35.443) * CFrame.Angles(-2.0277314186096, 0.099197536706924, 1.7586872577667)
part_116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.Friction = 0.3
part_116.Shape = Enum.PartType.Cylinder
part_116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_149 = Instance.new("SpecialMesh", part_116)
mesh_149.Scale = Vector3.new(0.053, 0.32, 0.51)
mesh_149.MeshType = Enum.MeshType.Cylinder

 part_117 = Instance.new("Part", Sword)
part_117.CanCollide = false
part_117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.Material = Enum.Material.Metal
part_117.Size = Vector3.new(0.303, 0.51, 0.452)
part_117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.CFrame = CFrame.new(63.632, 14.983, 32.65) * CFrame.Angles(3.0612745285034, -0.030587529763579, -3.0435228347778)
part_117.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.Friction = 0.3
part_117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_150 = Instance.new("BlockMesh", part_117)
mesh_150.Scale = Vector3.new(0.436, 1, 1)

 part_118 = Instance.new("Part", Sword)
part_118.CanCollide = false
part_118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.Material = Enum.Material.Metal
part_118.Size = Vector3.new(0.727, 0.727, 0.727)
part_118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.CFrame = CFrame.new(63.615, 14.676, 33.369) * CFrame.Angles(-1.5929688215256, 0.16908670961857, -1.5292754173279)
part_118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.Friction = 0.3
part_118.Shape = Enum.PartType.Cylinder
part_118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_151 = Instance.new("SpecialMesh", part_118)
mesh_151.Scale = Vector3.new(0.183, 0.32, 0.51)
mesh_151.MeshType = Enum.MeshType.Cylinder

 part_119 = Instance.new("Part", Sword)
part_119.CanCollide = false
part_119.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.Material = Enum.Material.Metal
part_119.Size = Vector3.new(0.303, 0.303, 0.303)
part_119.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.CFrame = CFrame.new(63.345, 14.658, 21.309) * CFrame.Angles(-2.6052606105804, 0.031950872391462, -3.043957233429)
part_119.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.BrickColor = BrickColor.new("Black")
part_119.Friction = 0.3
part_119.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_152 = Instance.new("BlockMesh", part_119)
mesh_152.Scale = Vector3.new(0.213, 0.935, 0.893)

 part_120 = Instance.new("Part", Sword)
part_120.CanCollide = false
part_120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.Material = Enum.Material.Metal
part_120.Size = Vector3.new(0.303, 0.303, 0.303)
part_120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.CFrame = CFrame.new(63.557, 14.248, 32.616) * CFrame.Angles(-0.82188665866852, 0.088813416659832, 3.0899255275726)
part_120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.Friction = 0.3
part_120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_153 = Instance.new("BlockMesh", part_120)
mesh_153.Scale = Vector3.new(0.404, 0.22, 0.43)

 part_121 = Instance.new("Part", Sword)
part_121.CanCollide = false
part_121.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.Material = Enum.Material.Metal
part_121.Size = Vector3.new(0.303, 0.303, 0.303)
part_121.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.CFrame = CFrame.new(63.337, 14.265, 22.705) * CFrame.Angles(1.3906718492508, -0.09460961073637, 3.101541519165)
part_121.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.BrickColor = BrickColor.new("Black")
part_121.Friction = 0.3
part_121.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_154 = Instance.new("BlockMesh", part_121)
mesh_154.Scale = Vector3.new(0.213, 0.506, 0.441)

 part_122 = Instance.new("Part", Sword)
part_122.CanCollide = false
part_122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.Material = Enum.Material.Metal
part_122.Size = Vector3.new(0.303, 0.303, 3.174)
part_122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.CFrame = CFrame.new(63.378, 14.639, 22.846) * CFrame.Angles(-3.0428419113159, -0.012575204484165, -3.0396480560303)
part_122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.BrickColor = BrickColor.new("Black")
part_122.Friction = 0.3
part_122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_155 = Instance.new("BlockMesh", part_122)
mesh_155.Scale = Vector3.new(0.213, 0.892, 1)

 part_123 = Instance.new("Part", Sword)
part_123.CanCollide = false
part_123.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.Material = Enum.Material.Metal
part_123.Size = Vector3.new(0.303, 0.303, 0.303)
part_123.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.CFrame = CFrame.new(63.669, 15.238, 33.154) * CFrame.Angles(-1.5962126255035, 0.099631182849407, -3.1165728569031)
part_123.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.Friction = 0.3
part_123.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_156 = Instance.new("BlockMesh", part_123)
mesh_156.Scale = Vector3.new(0.521, 0.396, 0.513)

 part_124 = Instance.new("Part", Sword)
part_124.CanCollide = false
part_124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.Material = Enum.Material.Metal
part_124.Size = Vector3.new(0.303, 0.461, 0.472)
part_124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.CFrame = CFrame.new(63.546, 14.371, 31.51) * CFrame.Angles(2.5775489807129, -0.072736628353596, -3.0690050125122)
part_124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.BrickColor = BrickColor.new("Black")
part_124.Friction = 0.3
part_124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_157 = Instance.new("BlockMesh", part_124)
mesh_157.Scale = Vector3.new(0.213, 1, 1)

 part_125 = Instance.new("Part", Sword)
part_125.CanCollide = false
part_125.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.Material = Enum.Material.Metal
part_125.Size = Vector3.new(0.303, 0.303, 0.303)
part_125.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.CFrame = CFrame.new(63.323, 14.223, 22.286) * CFrame.Angles(-0.95551949739456, 0.094885244965553, 3.1022007465363)
part_125.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.BrickColor = BrickColor.new("Black")
part_125.Friction = 0.3
part_125.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_158 = Instance.new("BlockMesh", part_125)
mesh_158.Scale = Vector3.new(0.213, 0.506, 0.836)

 part_126 = Instance.new("Part", Sword)
part_126.CanCollide = false
part_126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.Material = Enum.Material.Metal
part_126.Size = Vector3.new(0.303, 0.303, 0.336)
part_126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.CFrame = CFrame.new(63.363, 14.424, 23.139) * CFrame.Angles(-1.7493387460709, 0.094672590494156, -3.1016910076141)
part_126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.BrickColor = BrickColor.new("Black")
part_126.Friction = 0.3
part_126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_159 = Instance.new("BlockMesh", part_126)
mesh_159.Scale = Vector3.new(0.213, 0.506, 1)

 part_127 = Instance.new("Part", Sword)
part_127.CanCollide = false
part_127.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.Material = Enum.Material.Metal
part_127.Size = Vector3.new(0.303, 0.465, 0.303)
part_127.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.CFrame = CFrame.new(63.362, 14.567, 22.476) * CFrame.Angles(-2.0158488750458, 0.080865748226643, -3.0781908035278)
part_127.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.BrickColor = BrickColor.new("Black")
part_127.Friction = 0.3
part_127.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_160 = Instance.new("BlockMesh", part_127)
mesh_160.Scale = Vector3.new(0.213, 1, 0.71)

 part_128 = Instance.new("Part", Sword)
part_128.CanCollide = false
part_128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.Material = Enum.Material.Metal
part_128.Size = Vector3.new(0.303, 0.303, 0.303)
part_128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.CFrame = CFrame.new(63.364, 14.64, 22.232) * CFrame.Angles(-2.814168214798, 0.01094270311296, -3.0394606590271)
part_128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.BrickColor = BrickColor.new("Black")
part_128.Friction = 0.3
part_128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_161 = Instance.new("BlockMesh", part_128)
mesh_161.Scale = Vector3.new(0.213, 0.807, 0.806)

 part_129 = Instance.new("Part", Sword)
part_129.CanCollide = false
part_129.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.Material = Enum.Material.Metal
part_129.Size = Vector3.new(0.303, 0.303, 0.34)
part_129.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.CFrame = CFrame.new(63.346, 14.563, 21.781) * CFrame.Angles(-3.127934217453, -0.021222246810794, -3.0410869121552)
part_129.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.BrickColor = BrickColor.new("Black")
part_129.Friction = 0.3
part_129.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_162 = Instance.new("BlockMesh", part_129)
mesh_162.Scale = Vector3.new(0.213, 0.978, 1)

 part_130 = Instance.new("Part", Sword)
part_130.CanCollide = false
part_130.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.Material = Enum.Material.Metal
part_130.Size = Vector3.new(0.303, 0.303, 0.303)
part_130.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.CFrame = CFrame.new(63.326, 14.146, 22.754) * CFrame.Angles(1.0294275283813, -0.074403889477253, 3.0707151889801)
part_130.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.BrickColor = BrickColor.new("Black")
part_130.Friction = 0.3
part_130.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_163 = Instance.new("BlockMesh", part_130)
mesh_163.Scale = Vector3.new(0.213, 0.506, 0.609)

 part_131 = Instance.new("Part", Sword)
part_131.CanCollide = false
part_131.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.Material = Enum.Material.Metal
part_131.Size = Vector3.new(0.303, 0.4, 0.405)
part_131.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.CFrame = CFrame.new(63.353, 14.471, 22.504) * CFrame.Angles(-1.3902201652527, 0.10263100266457, -3.1374428272247)
part_131.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.BrickColor = BrickColor.new("Black")
part_131.Friction = 0.3
part_131.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_164 = Instance.new("BlockMesh", part_131)
mesh_164.Scale = Vector3.new(0.213, 1, 1)

 part_132 = Instance.new("Part", Sword)
part_132.CanCollide = false
part_132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.Material = Enum.Material.Metal
part_132.Size = Vector3.new(0.303, 0.303, 0.303)
part_132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.CFrame = CFrame.new(63.35, 14.393, 22.728) * CFrame.Angles(1.9344571828842, -0.10167918354273, -3.1270201206207)
part_132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.BrickColor = BrickColor.new("Black")
part_132.Friction = 0.3
part_132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_165 = Instance.new("BlockMesh", part_132)
mesh_165.Scale = Vector3.new(0.213, 0.506, 0.73)

 part_133 = Instance.new("Part", Sword)
part_133.CanCollide = false
part_133.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.Material = Enum.Material.Metal
part_133.Size = Vector3.new(0.303, 0.774, 0.513)
part_133.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.CFrame = CFrame.new(63.547, 14.479, 31.049) * CFrame.Angles(-2.6420307159424, 0.028330028057098, -3.0428490638733)
part_133.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.BrickColor = BrickColor.new("Black")
part_133.Friction = 0.3
part_133.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_166 = Instance.new("BlockMesh", part_133)
mesh_166.Scale = Vector3.new(0.213, 1, 1)

 part_134 = Instance.new("Part", Sword)
part_134.CanCollide = false
part_134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.Material = Enum.Material.Metal
part_134.Size = Vector3.new(0.303, 0.303, 0.393)
part_134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.CFrame = CFrame.new(63.643, 14.971, 33.186) * CFrame.Angles(-1.6663320064545, 0.097642980515957, -3.1096649169922)
part_134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_134.Friction = 0.3
part_134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_167 = Instance.new("BlockMesh", part_134)
mesh_167.Scale = Vector3.new(0.521, 0.475, 1)

 part_135 = Instance.new("Part", Sword)
part_135.CanCollide = false
part_135.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_135.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_135.Material = Enum.Material.Metal
part_135.Size = Vector3.new(0.303, 0.303, 0.5)
part_135.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_135.CFrame = CFrame.new(63.309, 14.005, 22.627) * CFrame.Angles(2.442058801651, -0.081862181425095, -3.0794839859009)
part_135.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_135.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_135.BrickColor = BrickColor.new("Black")
part_135.Friction = 0.3
part_135.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_168 = Instance.new("BlockMesh", part_135)
mesh_168.Scale = Vector3.new(0.213, 0.506, 1)

 part_136 = Instance.new("Part", Sword)
part_136.CanCollide = false
part_136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_136.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_136.Material = Enum.Material.Metal
part_136.Size = Vector3.new(0.303, 0.303, 0.303)
part_136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_136.CFrame = CFrame.new(63.657, 15.104, 33.224) * CFrame.Angles(1.5942920446396, -0.10073015093803, 3.1214656829834)
part_136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_136.Friction = 0.3
part_136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_169 = Instance.new("BlockMesh", part_136)
mesh_169.Scale = Vector3.new(0.521, 0.455, 0.531)

 part_137 = Instance.new("Part", Sword)
part_137.CanCollide = false
part_137.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_137.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_137.Material = Enum.Material.Metal
part_137.Size = Vector3.new(0.303, 0.303, 0.303)
part_137.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_137.CFrame = CFrame.new(63.533, 14.031, 32.528) * CFrame.Angles(-3.0764591693878, -0.016006033867598, -3.0401284694672)
part_137.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_137.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_137.Friction = 0.3
part_137.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_170 = Instance.new("BlockMesh", part_137)
mesh_170.Scale = Vector3.new(0.404, 0.669, 0.614)

 part_138 = Instance.new("Part", Sword)
part_138.CanCollide = false
part_138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_138.Material = Enum.Material.Metal
part_138.Size = Vector3.new(0.303, 0.322, 0.303)
part_138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_138.CFrame = CFrame.new(63.357, 14.81, 21.177) * CFrame.Angles(-2.1668639183044, 0.0704210922122, -3.0667567253113)
part_138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_138.BrickColor = BrickColor.new("Black")
part_138.Friction = 0.3
part_138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_171 = Instance.new("BlockMesh", part_138)
mesh_171.Scale = Vector3.new(0.213, 1, 0.91)

 part_139 = Instance.new("Part", Sword)
part_139.CanCollide = false
part_139.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_139.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_139.Material = Enum.Material.Metal
part_139.Size = Vector3.new(0.303, 0.439, 0.506)
part_139.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_139.CFrame = CFrame.new(63.317, 14.119, 22.483) * CFrame.Angles(-2.2962853908539, 0.060174610465765, -3.0583000183105)
part_139.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_139.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_139.BrickColor = BrickColor.new("Black")
part_139.Friction = 0.3
part_139.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_172 = Instance.new("BlockMesh", part_139)
mesh_172.Scale = Vector3.new(0.213, 1, 1)

 part_140 = Instance.new("Part", Sword)
part_140.CanCollide = false
part_140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_140.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_140.Material = Enum.Material.Metal
part_140.Size = Vector3.new(0.303, 0.454, 1.124)
part_140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_140.CFrame = CFrame.new(63.554, 14.441, 31.533) * CFrame.Angles(2.841055393219, -0.051314774900675, -3.0525755882263)
part_140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_140.BrickColor = BrickColor.new("Black")
part_140.Friction = 0.3
part_140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_173 = Instance.new("BlockMesh", part_140)
mesh_173.Scale = Vector3.new(0.213, 1, 1)

 part_141 = Instance.new("Part", Sword)
part_141.CanCollide = false
part_141.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_141.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_141.Material = Enum.Material.Metal
part_141.Size = Vector3.new(0.303, 0.303, 0.303)
part_141.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_141.CFrame = CFrame.new(63.358, 14.63, 22.024) * CFrame.Angles(2.8404235839844, -0.051371075212955, -3.0526080131531)
part_141.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_141.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_141.BrickColor = BrickColor.new("Black")
part_141.Friction = 0.3
part_141.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_174 = Instance.new("BlockMesh", part_141)
mesh_174.Scale = Vector3.new(0.213, 0.721, 0.801)

 part_142 = Instance.new("Part", Sword)
part_142.CanCollide = false
part_142.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.Material = Enum.Material.Metal
part_142.Size = Vector3.new(0.303, 0.412, 2.178)
part_142.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.CFrame = CFrame.new(63.38, 14.834, 22.192) * CFrame.Angles(0.015663312748075, 0.02102005854249, 3.0410444736481)
part_142.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_142.Friction = 0.3
part_142.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_175 = Instance.new("BlockMesh", part_142)
mesh_175.Scale = Vector3.new(0.439, 1, 1)

 part_143 = Instance.new("Part", Sword)
part_143.CanCollide = false
part_143.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_143.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_143.Material = Enum.Material.Metal
part_143.Size = Vector3.new(0.303, 0.303, 0.413)
part_143.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_143.CFrame = CFrame.new(63.528, 14.249, 31.23) * CFrame.Angles(2.7713613510132, -0.057395614683628, -3.0563635826111)
part_143.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_143.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_143.BrickColor = BrickColor.new("Black")
part_143.Friction = 0.3
part_143.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_176 = Instance.new("BlockMesh", part_143)
mesh_176.Scale = Vector3.new(0.213, 0.905, 1)

 part_144 = Instance.new("Part", Sword)
part_144.CanCollide = false
part_144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.Material = Enum.Material.Metal
part_144.Size = Vector3.new(0.303, 0.303, 0.303)
part_144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.CFrame = CFrame.new(63.554, 14.171, 32.847) * CFrame.Angles(2.4643354415894, -0.080461204051971, -3.0776779651642)
part_144.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_144.Friction = 0.3
part_144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_177 = Instance.new("BlockMesh", part_144)
mesh_177.Scale = Vector3.new(0.404, 0.22, 0.453)

 part_145 = Instance.new("Part", Sword)
part_145.CanCollide = false
part_145.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_145.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_145.Material = Enum.Material.Metal
part_145.Size = Vector3.new(0.303, 0.303, 0.303)
part_145.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_145.CFrame = CFrame.new(63.664, 15.166, 33.286) * CFrame.Angles(2.2125146389008, -0.093814857304096, -3.0997095108032)
part_145.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_145.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_145.Friction = 0.3
part_145.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_178 = Instance.new("BlockMesh", part_145)
mesh_178.Scale = Vector3.new(0.521, 0.396, 0.09)

 part_146 = Instance.new("Part", Sword)
part_146.CanCollide = false
part_146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_146.Material = Enum.Material.Metal
part_146.Size = Vector3.new(0.303, 0.322, 0.303)
part_146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_146.CFrame = CFrame.new(63.372, 14.593, 22.8) * CFrame.Angles(2.6100764274597, -0.070339307188988, -3.0666799545288)
part_146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_146.BrickColor = BrickColor.new("Black")
part_146.Friction = 0.3
part_146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_179 = Instance.new("BlockMesh", part_146)
mesh_179.Scale = Vector3.new(0.213, 1, 0.833)

 part_147 = Instance.new("Part", Sword)
part_147.CanCollide = false
part_147.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_147.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_147.Material = Enum.Material.Metal
part_147.Size = Vector3.new(0.303, 0.303, 0.303)
part_147.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_147.CFrame = CFrame.new(63.537, 14.096, 32.427) * CFrame.Angles(-0.85808050632477, 0.090619176626205, 3.0931687355042)
part_147.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_147.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_147.Friction = 0.3
part_147.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_180 = Instance.new("BlockMesh", part_147)
mesh_180.Scale = Vector3.new(0.404, 0.22, 0.016)

 part_148 = Instance.new("Part", Sword)
part_148.CanCollide = false
part_148.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.Material = Enum.Material.Metal
part_148.Size = Vector3.new(0.303, 0.303, 0.303)
part_148.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.CFrame = CFrame.new(63.585, 14.41, 33.172) * CFrame.Angles(-1.4020534753799, 0.10257502645254, -3.1362307071686)
part_148.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_148.Friction = 0.3
part_148.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_181 = Instance.new("BlockMesh", part_148)
mesh_181.Scale = Vector3.new(0.521, 0.475, 0.741)

 part_149 = Instance.new("Part", Sword)
part_149.CanCollide = false
part_149.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_149.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_149.Material = Enum.Material.Metal
part_149.Size = Vector3.new(0.303, 0.303, 0.303)
part_149.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_149.CFrame = CFrame.new(63.662, 15.153, 33.241) * CFrame.Angles(2.7974200248718, -0.055153474211693, -3.0548977851868)
part_149.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_149.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_149.Friction = 0.3
part_149.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_182 = Instance.new("BlockMesh", part_149)
mesh_182.Scale = Vector3.new(0.521, 0.396, 0.45)

 part_150 = Instance.new("Part", Sword)
part_150.CanCollide = false
part_150.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_150.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_150.Material = Enum.Material.Metal
part_150.Size = Vector3.new(0.303, 0.303, 0.303)
part_150.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_150.CFrame = CFrame.new(63.553, 14.303, 32.207) * CFrame.Angles(-0.3502291738987, 0.055678021162748, 3.0552332401276)
part_150.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_150.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_150.Friction = 0.3
part_150.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_183 = Instance.new("BlockMesh", part_150)
mesh_183.Scale = Vector3.new(0.404, 0.935, 0.528)

 part_151 = Instance.new("Part", Sword)
part_151.CanCollide = false
part_151.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_151.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_151.Material = Enum.Material.Metal
part_151.Size = Vector3.new(0.303, 0.303, 0.303)
part_151.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_151.CFrame = CFrame.new(63.517, 14.122, 31.308) * CFrame.Angles(-2.5300061702728, 0.03921889513731, -3.0466358661652)
part_151.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_151.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_151.BrickColor = BrickColor.new("Black")
part_151.Friction = 0.3
part_151.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_184 = Instance.new("BlockMesh", part_151)
mesh_184.Scale = Vector3.new(0.213, 0.506, 0.955)

 part_152 = Instance.new("Part", Sword)
part_152.CanCollide = false
part_152.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.Material = Enum.Material.Metal
part_152.Size = Vector3.new(0.303, 0.303, 0.303)
part_152.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.CFrame = CFrame.new(63.508, 13.883, 32.08) * CFrame.Angles(3.0553798675537, -0.031166670843959, -3.0437047481537)
part_152.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_152.Friction = 0.3
part_152.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_185 = Instance.new("BlockMesh", part_152)
mesh_185.Scale = Vector3.new(0.404, 0.22, 0.656)

 part_153 = Instance.new("Part", Sword)
part_153.CanCollide = false
part_153.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_153.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_153.Material = Enum.Material.Metal
part_153.Size = Vector3.new(0.303, 0.303, 0.469)
part_153.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_153.CFrame = CFrame.new(63.566, 14.297, 32.81) * CFrame.Angles(2.2533931732178, -0.0920315310359, -3.0959157943726)
part_153.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_153.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_153.Friction = 0.3
part_153.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_186 = Instance.new("BlockMesh", part_153)
mesh_186.Scale = Vector3.new(0.404, 0.851, 1)

 part_154 = Instance.new("Part", Sword)
part_154.CanCollide = false
part_154.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_154.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_154.Material = Enum.Material.Metal
part_154.Size = Vector3.new(0.303, 0.386, 0.313)
part_154.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_154.CFrame = CFrame.new(63.581, 14.41, 32.964) * CFrame.Angles(2.7471992969513, -0.05943938344717, -3.0577743053436)
part_154.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_154.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_154.Friction = 0.3
part_154.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_187 = Instance.new("BlockMesh", part_154)
mesh_187.Scale = Vector3.new(0.404, 1, 1)

 part_155 = Instance.new("Part", Sword)
part_155.CanCollide = false
part_155.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_155.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_155.Material = Enum.Material.Metal
part_155.Size = Vector3.new(0.303, 0.562, 2.398)
part_155.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_155.CFrame = CFrame.new(63.519, 14.513, 29.672) * CFrame.Angles(-3.1386535167694, -0.02230173163116, -3.0413200855255)
part_155.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_155.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_155.BrickColor = BrickColor.new("Black")
part_155.Friction = 0.3
part_155.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_188 = Instance.new("BlockMesh", part_155)
mesh_188.Scale = Vector3.new(0.213, 1, 1)

 part_156 = Instance.new("Part", Sword)
part_156.CanCollide = false
part_156.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_156.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_156.Material = Enum.Material.Metal
part_156.Size = Vector3.new(0.303, 0.303, 0.303)
part_156.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_156.CFrame = CFrame.new(63.482, 13.678, 31.84) * CFrame.Angles(2.1586346626282, -0.095926053822041, -3.1048145294189)
part_156.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_156.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_156.Friction = 0.3
part_156.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_189 = Instance.new("BlockMesh", part_156)
mesh_189.Scale = Vector3.new(0.404, 0.22, 0.515)

 part_157 = Instance.new("Part", Sword)
part_157.CanCollide = false
part_157.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_157.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_157.Material = Enum.Material.Metal
part_157.Size = Vector3.new(0.303, 0.305, 0.303)
part_157.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_157.CFrame = CFrame.new(63.543, 14.228, 32.11) * CFrame.Angles(-0.7290363907814, 0.083654768764973, 3.0819230079651)
part_157.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_157.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_157.Friction = 0.3
part_157.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_190 = Instance.new("BlockMesh", part_157)
mesh_190.Scale = Vector3.new(0.404, 1, 0.671)

 part_158 = Instance.new("Part", Sword)
part_158.CanCollide = false
part_158.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_158.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_158.Material = Enum.Material.Metal
part_158.Size = Vector3.new(0.303, 0.406, 0.406)
part_158.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_158.CFrame = CFrame.new(63.49, 14.561, 28.15) * CFrame.Angles(2.5976932048798, -0.071260958909988, -3.0675559043884)
part_158.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_158.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_158.BrickColor = BrickColor.new("Black")
part_158.Friction = 0.3
part_158.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_191 = Instance.new("BlockMesh", part_158)
mesh_191.Scale = Vector3.new(0.215, 1, 1)

 part_159 = Instance.new("Part", Sword)
part_159.CanCollide = false
part_159.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_159.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_159.Material = Enum.Material.Metal
part_159.Size = Vector3.new(0.303, 0.303, 0.303)
part_159.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_159.CFrame = CFrame.new(63.563, 14.355, 32.426) * CFrame.Angles(2.7834451198578, -0.056360702961683, -3.0556764602661)
part_159.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_159.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_159.Friction = 0.3
part_159.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_192 = Instance.new("BlockMesh", part_159)
mesh_192.Scale = Vector3.new(0.404, 0.998, 0.827)

 part_160 = Instance.new("Part", Sword)
part_160.CanCollide = false
part_160.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_160.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_160.Material = Enum.Material.Metal
part_160.Size = Vector3.new(0.303, 0.303, 0.303)
part_160.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_160.CFrame = CFrame.new(63.672, 15.241, 33.271) * CFrame.Angles(1.6147215366364, -0.1011183783412, 3.1235241889954)
part_160.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_160.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_160.Friction = 0.3
part_160.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_193 = Instance.new("BlockMesh", part_160)
mesh_193.Scale = Vector3.new(0.521, 0.495, 0.643)

 part_161 = Instance.new("Part", Sword)
part_161.CanCollide = false
part_161.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_161.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_161.Material = Enum.Material.Metal
part_161.Size = Vector3.new(0.303, 0.303, 0.303)
part_161.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_161.CFrame = CFrame.new(63.479, 13.672, 31.737) * CFrame.Angles(-2.7119631767273, 0.021340044215322, -3.0411117076874)
part_161.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_161.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_161.Friction = 0.3
part_161.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_194 = Instance.new("BlockMesh", part_161)
mesh_194.Scale = Vector3.new(0.404, 0.22, 0.743)

 part_162 = Instance.new("Part", Sword)
part_162.CanCollide = false
part_162.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_162.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_162.Material = Enum.Material.Metal
part_162.Size = Vector3.new(0.303, 0.303, 0.303)
part_162.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_162.CFrame = CFrame.new(63.499, 13.816, 31.953) * CFrame.Angles(2.3228480815887, -0.08865112811327, -3.0896470546722)
part_162.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_162.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_162.Friction = 0.3
part_162.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_195 = Instance.new("BlockMesh", part_162)
mesh_195.Scale = Vector3.new(0.404, 0.22, 0.754)

 part_163 = Instance.new("Part", Sword)
part_163.CanCollide = false
part_163.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_163.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_163.Material = Enum.Material.Metal
part_163.Size = Vector3.new(0.303, 0.303, 0.303)
part_163.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_163.CFrame = CFrame.new(63.489, 13.762, 31.747) * CFrame.Angles(-1.4456503391266, 0.10224576294422, -3.1317732334137)
part_163.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_163.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_163.Friction = 0.3
part_163.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_196 = Instance.new("BlockMesh", part_163)
mesh_196.Scale = Vector3.new(0.404, 0.769, 0.591)

 part_164 = Instance.new("Part", Sword)
part_164.CanCollide = false
part_164.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_164.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_164.Material = Enum.Material.Metal
part_164.Size = Vector3.new(0.303, 0.303, 0.303)
part_164.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_164.CFrame = CFrame.new(63.51, 14.104, 31.061) * CFrame.Angles(2.2702674865723, -0.09125043451786, -3.0943715572357)
part_164.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_164.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_164.BrickColor = BrickColor.new("Black")
part_164.Friction = 0.3
part_164.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_197 = Instance.new("BlockMesh", part_164)
mesh_197.Scale = Vector3.new(0.213, 0.506, 0.316)

 part_165 = Instance.new("Part", Sword)
part_165.CanCollide = false
part_165.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_165.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_165.Material = Enum.Material.Metal
part_165.Size = Vector3.new(0.303, 0.303, 0.303)
part_165.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_165.CFrame = CFrame.new(63.541, 14.087, 32.608) * CFrame.Angles(2.5038962364197, -0.077874854207039, -3.0745487213135)
part_165.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_165.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_165.Friction = 0.3
part_165.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_198 = Instance.new("BlockMesh", part_165)
mesh_198.Scale = Vector3.new(0.404, 0.89, 0.613)

 part_166 = Instance.new("Part", Sword)
part_166.CanCollide = false
part_166.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_166.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_166.Material = Enum.Material.Metal
part_166.Size = Vector3.new(0.303, 0.303, 0.303)
part_166.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_166.CFrame = CFrame.new(63.677, 15.315, 33.186) * CFrame.Angles(-0.25554886460304, 0.047253403812647, 3.0503590106964)
part_166.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_166.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_166.Friction = 0.3
part_166.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_199 = Instance.new("BlockMesh", part_166)
mesh_199.Scale = Vector3.new(0.521, 0.151, 0.598)

 part_167 = Instance.new("Part", Sword)
part_167.CanCollide = false
part_167.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_167.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_167.Material = Enum.Material.Metal
part_167.Size = Vector3.new(0.303, 0.303, 0.303)
part_167.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_167.CFrame = CFrame.new(63.571, 14.372, 32.672) * CFrame.Angles(2.8538596630096, -0.050169218331575, -3.0519261360168)
part_167.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_167.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_167.Friction = 0.3
part_167.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_200 = Instance.new("BlockMesh", part_167)
mesh_200.Scale = Vector3.new(0.404, 0.584, 0.748)

 part_168 = Instance.new("Part", Sword)
part_168.CanCollide = false
part_168.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_168.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_168.Material = Enum.Material.Metal
part_168.Size = Vector3.new(0.303, 0.303, 0.303)
part_168.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_168.CFrame = CFrame.new(63.569, 14.269, 33.066) * CFrame.Angles(2.9761970043182, -0.03883108496666, -3.0464770793915)
part_168.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_168.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_168.Friction = 0.3
part_168.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_201 = Instance.new("BlockMesh", part_168)
mesh_201.Scale = Vector3.new(0.404, 0.22, 0.348)

 part_169 = Instance.new("Part", Sword)
part_169.CanCollide = false
part_169.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_169.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_169.Material = Enum.Material.Metal
part_169.Size = Vector3.new(0.303, 0.303, 0.303)
part_169.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_169.CFrame = CFrame.new(63.562, 14.182, 33.12) * CFrame.Angles(-1.2899345159531, 0.10253223776817, 3.1354644298553)
part_169.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_169.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_169.Friction = 0.3
part_169.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_202 = Instance.new("BlockMesh", part_169)
mesh_202.Scale = Vector3.new(0.521, 0.475, 0.846)

 part_170 = Instance.new("Part", Sword)
part_170.CanCollide = false
part_170.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_170.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_170.Material = Enum.Material.Metal
part_170.Size = Vector3.new(0.303, 0.391, 0.463)
part_170.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_170.CFrame = CFrame.new(63.384, 14.618, 23.186) * CFrame.Angles(2.2752254009247, -0.091016001999378, -3.0939202308655)
part_170.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_170.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_170.BrickColor = BrickColor.new("Black")
part_170.Friction = 0.3
part_170.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_203 = Instance.new("BlockMesh", part_170)
mesh_203.Scale = Vector3.new(0.215, 1, 1)

 part_171 = Instance.new("Part", Sword)
part_171.CanCollide = false
part_171.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_171.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_171.Material = Enum.Material.Metal
part_171.Size = Vector3.new(0.303, 0.303, 0.303)
part_171.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_171.CFrame = CFrame.new(63.669, 15.256, 33.108) * CFrame.Angles(2.8342747688293, -0.051917966455221, -3.0529253482819)
part_171.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_171.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_171.Friction = 0.3
part_171.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_204 = Instance.new("BlockMesh", part_171)
mesh_204.Scale = Vector3.new(0.436, 0.396, 0.325)

 part_172 = Instance.new("Part", Sword)
part_172.CanCollide = false
part_172.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_172.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_172.Material = Enum.Material.Metal
part_172.Size = Vector3.new(0.303, 0.303, 0.303)
part_172.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_172.CFrame = CFrame.new(63.545, 14.152, 32.503) * CFrame.Angles(-0.6309814453125, 0.077423587441444, 3.0740277767181)
part_172.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_172.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_172.Friction = 0.3
part_172.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_205 = Instance.new("BlockMesh", part_172)
mesh_205.Scale = Vector3.new(0.404, 0.22, 0.658)

 part_173 = Instance.new("Part", Sword)
part_173.CanCollide = false
part_173.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_173.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_173.Material = Enum.Material.Metal
part_173.Size = Vector3.new(0.303, 0.448, 0.383)
part_173.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_173.CFrame = CFrame.new(63.534, 14.27, 31.389) * CFrame.Angles(2.4596583843231, -0.080758683383465, -3.0780544281006)
part_173.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_173.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_173.BrickColor = BrickColor.new("Black")
part_173.Friction = 0.3
part_173.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_206 = Instance.new("BlockMesh", part_173)
mesh_206.Scale = Vector3.new(0.213, 1, 1)

 part_174 = Instance.new("Part", Sword)
part_174.CanCollide = false
part_174.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_174.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_174.Material = Enum.Material.Metal
part_174.Size = Vector3.new(0.303, 0.303, 0.303)
part_174.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_174.CFrame = CFrame.new(63.61, 14.649, 33.198) * CFrame.Angles(-1.5173035860062, 0.10128578543663, -3.124490737915)
part_174.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_174.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_174.Friction = 0.3
part_174.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_207 = Instance.new("BlockMesh", part_174)
mesh_207.Scale = Vector3.new(0.521, 0.475, 0.896)

 part_175 = Instance.new("Part", Sword)
part_175.CanCollide = false
part_175.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_175.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_175.Material = Enum.Material.Metal
part_175.Size = Vector3.new(0.303, 0.303, 0.303)
part_175.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_175.CFrame = CFrame.new(63.65, 15.038, 33.218) * CFrame.Angles(2.3325216770172, -0.08814599364996, -3.0887930393219)
part_175.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_175.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_175.Friction = 0.3
part_175.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_208 = Instance.new("BlockMesh", part_175)
mesh_208.Scale = Vector3.new(0.521, 0.455, 0.175)

 part_176 = Instance.new("Part", Sword)
part_176.CanCollide = false
part_176.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_176.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_176.Material = Enum.Material.Metal
part_176.Size = Vector3.new(0.303, 0.48, 0.9)
part_176.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_176.CFrame = CFrame.new(63.631, 14.972, 32.691) * CFrame.Angles(2.9131581783295, -0.044758222997189, -3.0491118431091)
part_176.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_176.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_176.Friction = 0.3
part_176.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_209 = Instance.new("BlockMesh", part_176)
mesh_209.Scale = Vector3.new(0.436, 1, 1)

 part_177 = Instance.new("Part", Sword)
part_177.CanCollide = false
part_177.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_177.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_177.Material = Enum.Material.Metal
part_177.Size = Vector3.new(0.303, 0.391, 0.463)
part_177.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_177.CFrame = CFrame.new(63.386, 14.699, 22.944) * CFrame.Angles(1.5880308151245, -0.10060279071331, 3.1208364963531)
part_177.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_177.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_177.BrickColor = BrickColor.new("Black")
part_177.Friction = 0.3
part_177.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_210 = Instance.new("BlockMesh", part_177)
mesh_210.Scale = Vector3.new(0.215, 1, 1)

 part_178 = Instance.new("Part", Sword)
part_178.CanCollide = false
part_178.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_178.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_178.Material = Enum.Material.Metal
part_178.Size = Vector3.new(0.303, 0.348, 0.308)
part_178.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_178.CFrame = CFrame.new(63.521, 14.043, 31.959) * CFrame.Angles(-0.83859711885452, 0.089661717414856, 3.0914149284363)
part_178.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_178.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_178.Friction = 0.3
part_178.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_211 = Instance.new("BlockMesh", part_178)
mesh_211.Scale = Vector3.new(0.404, 1, 1)

 part_179 = Instance.new("Part", Sword)
part_179.CanCollide = false
part_179.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_179.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_179.Material = Enum.Material.Metal
part_179.Size = Vector3.new(0.303, 0.332, 0.303)
part_179.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_179.CFrame = CFrame.new(63.525, 14.048, 32.079) * CFrame.Angles(1.9482569694519, -0.10146950930357, -3.12562084198)
part_179.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_179.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_179.Friction = 0.3
part_179.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_212 = Instance.new("BlockMesh", part_179)
mesh_212.Scale = Vector3.new(0.404, 1, 0.92)

 part_180 = Instance.new("Part", Sword)
part_180.CanCollide = false
part_180.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_180.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_180.Material = Enum.Material.Metal
part_180.Size = Vector3.new(0.303, 0.391, 0.463)
part_180.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_180.CFrame = CFrame.new(63.496, 14.573, 28.372) * CFrame.Angles(2.5976932048798, -0.071260958909988, -3.0675559043884)
part_180.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_180.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_180.BrickColor = BrickColor.new("Black")
part_180.Friction = 0.3
part_180.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_213 = Instance.new("BlockMesh", part_180)
mesh_213.Scale = Vector3.new(0.215, 1, 1)

 part_181 = Instance.new("Part", Sword)
part_181.CanCollide = false
part_181.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_181.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_181.Material = Enum.Material.Metal
part_181.Size = Vector3.new(0.303, 0.406, 4.979)
part_181.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_181.CFrame = CFrame.new(63.435, 14.59, 25.6) * CFrame.Angles(-3.1160063743591, -0.020018139854074, -3.0408408641815)
part_181.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_181.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_181.BrickColor = BrickColor.new("Black")
part_181.Friction = 0.3
part_181.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_214 = Instance.new("BlockMesh", part_181)
mesh_214.Scale = Vector3.new(0.215, 1, 1)

 part_182 = Instance.new("Part", Sword)
part_182.CanCollide = false
part_182.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_182.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_182.Material = Enum.Material.Metal
part_182.Size = Vector3.new(0.303, 0.303, 0.436)
part_182.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_182.CFrame = CFrame.new(63.55, 14.329, 32.156) * CFrame.Angles(-1.2589954137802, 0.10229492932558, 3.1323013305664)
part_182.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_182.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_182.Friction = 0.3
part_182.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_215 = Instance.new("BlockMesh", part_182)
mesh_215.Scale = Vector3.new(0.428, 0.937, 1)

 part_183 = Instance.new("Part", Sword)
part_183.CanCollide = false
part_183.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_183.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_183.Material = Enum.Material.Neon
part_183.Size = Vector3.new(0.62, 0.303, 0.423)
part_183.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_183.CFrame = CFrame.new(63.658, 14.649, 32.066) * CFrame.Angles(-1.6355401277542, 0.16720366477966, -1.5221428871155)
part_183.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_183.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_183.BrickColor = BrickColor.new("Institutional white")
part_183.Friction = 0.3
part_183.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_216 = Instance.new("SpecialMesh", part_183)
mesh_216.Scale = Vector3.new(1, 0.202, 0.543)
mesh_216.MeshType = Enum.MeshType.Sphere

 part_184 = Instance.new("Part", Sword)
part_184.CanCollide = false
part_184.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_184.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_184.Material = Enum.Material.Metal
part_184.Size = Vector3.new(0.303, 0.303, 0.303)
part_184.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_184.CFrame = CFrame.new(63.503, 13.897, 31.809) * CFrame.Angles(-1.1325868368149, 0.10031870752573, 3.1195001602173)
part_184.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_184.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_184.Friction = 0.3
part_184.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_217 = Instance.new("BlockMesh", part_184)
mesh_217.Scale = Vector3.new(0.404, 0.907, 0.658)

 part_185 = Instance.new("Part", Sword)
part_185.CanCollide = false
part_185.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_185.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_185.Material = Enum.Material.Metal
part_185.Size = Vector3.new(0.303, 0.303, 0.34)
part_185.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_185.CFrame = CFrame.new(63.553, 14.286, 32.293) * CFrame.Angles(2.4534614086151, -0.081150114536285, -3.0785555839539)
part_185.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_185.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_185.Friction = 0.3
part_185.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_218 = Instance.new("BlockMesh", part_185)
mesh_218.Scale = Vector3.new(0.404, 0.92, 1)

 part_186 = Instance.new("Part", Sword)
part_186.CanCollide = false
part_186.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_186.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_186.Material = Enum.Material.Neon
part_186.Size = Vector3.new(0.62, 0.303, 0.423)
part_186.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_186.CFrame = CFrame.new(63.498, 14.666, 32.069) * CFrame.Angles(-1.6355401277542, 0.16720366477966, -1.5221428871155)
part_186.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_186.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_186.BrickColor = BrickColor.new("Institutional white")
part_186.Friction = 0.3
part_186.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_219 = Instance.new("SpecialMesh", part_186)
mesh_219.Scale = Vector3.new(1, 0.202, 0.543)
mesh_219.MeshType = Enum.MeshType.Sphere

 part_187 = Instance.new("Part", Sword)
part_187.CanCollide = false
part_187.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_187.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_187.Material = Enum.Material.Metal
part_187.Size = Vector3.new(0.303, 0.303, 0.436)
part_187.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_187.CFrame = CFrame.new(63.537, 14.217, 32.07) * CFrame.Angles(-0.90837234258652, 0.092930935323238, 3.0977787971497)
part_187.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_187.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_187.Friction = 0.3
part_187.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_220 = Instance.new("BlockMesh", part_187)
mesh_220.Scale = Vector3.new(0.428, 0.937, 1)

 part_188 = Instance.new("Part", Sword)
part_188.CanCollide = false
part_188.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_188.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_188.Material = Enum.Material.Metal
part_188.Size = Vector3.new(0.303, 0.469, 1.106)
part_188.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_188.CFrame = CFrame.new(63.589, 14.617, 32.592) * CFrame.Angles(3.1051542758942, -0.026243845000863, -3.0422759056091)
part_188.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_188.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_188.Friction = 0.3
part_188.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_221 = Instance.new("BlockMesh", part_188)
mesh_221.Scale = Vector3.new(0.428, 1, 1)

 part_189 = Instance.new("Part", Sword)
part_189.CanCollide = false
part_189.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_189.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_189.Material = Enum.Material.Neon
part_189.Size = Vector3.new(0.742, 0.303, 0.486)
part_189.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_189.CFrame = CFrame.new(63.689, 14.678, 32.761) * CFrame.Angles(-1.6355401277542, 0.16720366477966, -1.5221428871155)
part_189.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_189.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_189.BrickColor = BrickColor.new("Institutional white")
part_189.Friction = 0.3
part_189.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_222 = Instance.new("SpecialMesh", part_189)
mesh_222.Scale = Vector3.new(1, 0.22, 0.543)
mesh_222.MeshType = Enum.MeshType.Sphere

 part_190 = Instance.new("Part", Sword)
part_190.CanCollide = false
part_190.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_190.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_190.Material = Enum.Material.Neon
part_190.Size = Vector3.new(0.742, 0.303, 0.486)
part_190.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_190.CFrame = CFrame.new(63.529, 14.694, 32.765) * CFrame.Angles(-1.6355401277542, 0.16720366477966, -1.5221428871155)
part_190.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_190.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_190.BrickColor = BrickColor.new("Institutional white")
part_190.Friction = 0.3
part_190.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_223 = Instance.new("SpecialMesh", part_190)
mesh_223.Scale = Vector3.new(1, 0.22, 0.543)
mesh_223.MeshType = Enum.MeshType.Sphere

 part = Instance.new("Part", Sword)
part.CanCollide = false
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Material = Enum.Material.Metal
part.Size = Vector3.new(0.303, 0.603, 10.136)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(63.525, 14.884, 28.126) * CFrame.Angles(3.1203694343567, -0.024731315672398, -3.0418820381165)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("BlockMesh", part)
mesh.Scale = Vector3.new(0.428, 0.937, 1)

 part_2 = Instance.new("Part", Sword)
part_2.Material = Enum.Material.SmoothPlastic
part_2.Size = Vector3.new(0.297, 0.308, 0.307)
part_2.CFrame = CFrame.new(63.717, 14.709, 35.862) * CFrame.Angles(0, 1.5707963705063, 0)
part_2.Friction = 0.3

 mesh_2 = Instance.new("SpecialMesh", part_2)
mesh_2.MeshType = Enum.MeshType.Sphere

hitbox = Instance.new("Part", Sword)
hitbox.CanCollide = false
hitbox.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Transparency = 1
hitbox.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Material = Enum.Material.Metal
hitbox.Size = Vector3.new(0.2, 1.779, 12.774)
hitbox.Name = "Hitbox"
hitbox.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.CFrame = CFrame.new(63.45, 14.453, 26.957) * CFrame.Angles(3.1307723522186, -0.023683475330472, -3.0416369438171)
hitbox.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Friction = 0.3
hitbox.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_3 = Instance.new("BlockMesh", hitbox)
mesh_3.Scale = Vector3.new(0.436, 1, 1)

--DavidAguirre--

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

WeldIt(Sword)
WeldIt(Dagger)

daggerhandle = Weapon.Dagger.Handle
HitboxB = Weapon.Dagger.Hitbox
Handle = Weapon.Sword.Handle
HitboxA = Weapon.Sword.Hitbox

Speed.Value = Base_Speed_Value
Attack.Value = Base_Attack_Value
Defense.Value = Base_Defense_Value

Weapon.Parent = game.Players.LocalPlayer.Character

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
	
for i,v in pairs(Weapon:GetChildren()) do
	for c,b in pairs(v:GetChildren()) do
		if b.className == "UnionOperation" or b.className == "Part" or b.className == "BasePart" or b.className == "WedgePart" then
			b.Locked = true
			b.CanCollide = false
			b.Anchored = false
		end
	end
end	
	
handleweld = weld(m,Arm_Held,Handle,CFrame.new(0,0,0),CFrame.new(0,0,0))	
daggerweld = weld(m,RootPart,daggerhandle,CFrame.new(0,0,0),CFrame.new(0,0,0))	
	
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
		if blocked == false then
--                h:TakeDamage(Damage)
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), math.floor(-Damage), 1.5, Secondary_Color.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), math.floor(-Damage), 1.5, Part.BrickColor.Color)
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

function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type,Suck,Property)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
if Suck == false or Suck == nil then
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,"rbxassetid://169380525",1)
elseif Suck == true then
Damagefunc(Hit,head,mindam,maxdam,knock,Type,Property,.2,"rbxassetid://169380525",1)
end
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

-- Dread, converted to a LocalScript by Solavenge/Citrus

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

function Laser(Part,Color1,Color2,LaserSize1,LaserSize2,Size1,Size2,Magnitude,Mindam,Maxdam,Knock,Type)
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
so("rbxassetid://263610152",Part,1,1.5) 
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
MagniDamage(hit.Parent.Torso,hit.Parent.Torso,Magnitude,Mindam,Maxdam,Knock,Type)
end 
end 
end 
end 

--[[Left Click Combo]]--

function attackone()
attack = true
CurrentMove = "Attack one"
local con = HitboxA.Touched:connect(function(hit)
Damagefunc(HitboxA,hit,7,11,5,"Knockdown",RootPart,0.2,"rbxassetid://169380525",1,true,0.05,true,0.05,true,0.05)
end)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(76), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-2, 4, 3) * CFrame.Angles(math.rad(-7.5), math.rad(-90), math.rad(0)), 0.3)
end
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(100),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-2, 4, 3) * angles(math.rad(-15), math.rad(-90), math.rad(0)), 0.3)
end
local Rune = part(3,workspace,"SmoothPlastic",0,1,"Really black","Rune",Vector3.new(4.5,0.2,4.5))
Rune.Anchored = true
Rune.Locked = true
Rune.CanCollide = false
Rune.CFrame = daggerhandle.CFrame * CFrame.new(-5,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
local Minimize = mesh("SpecialMesh",Rune,"Brick","",Vector3.new(0,0,0),Vector3.new(1,0.01,1))
local SmallRune = part(3,workspace,"SmoothPlastic",0,1,"Really black","Rune",Vector3.new(3,0.2,3))
SmallRune.Anchored = true
SmallRune.Locked = true
SmallRune.CanCollide = false
SmallRune.CFrame = daggerhandle.CFrame * CFrame.new(-6,0,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(90))
local MinimizeSMALL = mesh("SpecialMesh",SmallRune,"Brick","",Vector3.new(0,0,0),Vector3.new(1,0.01,1))
local Decal1 = Create("Decal"){
	Texture = "http://www.roblox.com/asset/?id=360397994",
	Face = "Top",
	Name = "Picture",
	Parent = Rune,
	Transparency = 0.2
}
local Decal2 = Create("Decal"){
	Texture = "http://www.roblox.com/asset/?id=360397994",
	Face = "Bottom",
	Name = "Picture",
	Parent = Rune,
	Transparency = 0.2
}
local SMALLDecal1 = Create("Decal"){
	Texture = "http://www.roblox.com/asset/?id=360397994",
	Face = "Top",
	Name = "Picture",
	Parent = SmallRune,
	Transparency = 0.2
}
local SMALLDecal2 = Create("Decal"){
	Texture = "http://www.roblox.com/asset/?id=360397994",
	Face = "Bottom",
	Name = "Picture",
	Parent = SmallRune,
	Transparency = 0.2
}
game:GetService("Debris"):AddItem(Rune,2)
game:GetService("Debris"):AddItem(SmallRune,2)
swait(2)
local ref = part(3,workspace,"SmoothPlastic",0,1,"Really black","Reference",Vector3.new(0.2,0.2,0.2))
ref.Anchored = true
ref.CanCollide = false
ref.Locked = true
ref.CFrame = LeftArm.CFrame*CFrame.new(0,-1,0)
game:GetService("Debris"):AddItem(ref,0.5)
OpenHandEffect("Really black",LeftArm.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(-90)),2,2,2,2,2,2,0.05)
MagicCircle("Institutional white",LeftArm.CFrame * CFrame.new(0,-14,0),1.5,1.5,1.5,1.5,1.5,1.5,0.05)
for i=3,1,-1 do
MagicRing("Really black",LeftArm.CFrame * CFrame.new(0,-14,0) * CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,1,0.1,1,1,0.1,0.05)
end
MagniDamage(ref,ref,15,5,7,0,"Snare")
swait(30)
local ref = part(3,workspace,"SmoothPlastic",0,1,"Really black","Reference",Vector3.new(0.2,0.2,0.2))
ref.Anchored = true
ref.CanCollide = false
ref.Locked = true
ref.CFrame = daggerhandle.CFrame*CFrame.new(-6.05,0,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
Laser(ref,"Really black","Institutional white",0.15,0.7,1,1,4,4,5,0,"Normal")
swait(5)
Laser(ref,"Institutional white","Really black",0.15,0.7,1,1,4,4,5,0,"Normal")
swait(5)
ref:Destroy()
con:disconnect()
attack = false
end

function attacktwo()
attack = true
CurrentMove = "Attack two"
local con = HitboxA.Touched:connect(function(hit)
Damagefunc(HitboxA,hit,9,15,5,"Knockdown",RootPart,0.2,"rbxassetid://169380525",1,false,0,false,0,true,0.05)
end)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-45), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(76), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-2, 4, 3) * CFrame.Angles(math.rad(-7.5), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
end
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(76), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-2, 4, 3) * CFrame.Angles(math.rad(-7.5), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(90)), 0.3)
end
for i=0,5 do
local ref = part(3,workspace,"SmoothPlastic",0,1,"Really black","Reference",Vector3.new(0.2,0.2,0.2))
ref.Anchored = true
ref.CanCollide = false
ref.Locked = true
ref.CFrame = HitboxA.CFrame * CFrame.new(0,0,(i*6)+7)
MagicCircle("Institutional white",ref.CFrame,1,1,1,1,1,1,0.05)
WaveEffect("Really black",ref.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(180),math.rad(0)),0.5,1,0.5,0.25,0.5,0.25,0.05)
MagicBlock("Really black",ref.CFrame,1,1,1,1,1,1,0.05)
MagicBlock("Really black",ref.CFrame,1,1,1,1,1,1,0.05)
MagicBlock("Really black",ref.CFrame,1,1,1,1,1,1,0.05)
so("rbxassetid://263623156",ref,1,0.5)
game:GetService("Debris"):AddItem(ref,0.5)
MagniDamage(ref,ref,10,11,13,0,"Knockdown",true,ref)
swait()
end
con:disconnect()
attack = false
end

function attackthree()
attack = true
CurrentMove = "Attack three"
local con = HitboxA.Touched:connect(function(hit)
Damagefunc(HitboxA,hit,7,11,5,"Knockdown",RootPart,0.2,"rbxassetid://169380525",1,false,0,false,0,true,0.05)
end)
local dag = HitboxB.Touched:connect(function(hit)
Damagefunc(HitboxB,hit,2,3,0,"Snare",RootPart,0.2,"rbxassetid://169380525",1,false,0,false,0,false,0)
end)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(76), math.rad(0), math.rad(-5)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-2, 4, 3) * CFrame.Angles(math.rad(-7.5), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
WaveEffect("Institutional white",daggerhandle.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)),0.25,0.1,0.25,0.25,0.1,0.25,0.05)
for i = 0,1,0.05 do
swait()
MagicRing("Really black",daggerhandle.CFrame*CFrame.Angles(math.rad(90),math.rad(90),0),0.2,0.2,0.1,0.2,0.2,0.1,0.05)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(76), math.rad(0), math.rad(-15)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(0, -2.4, -5) * CFrame.Angles(math.rad(-25), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(1, -1, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.3)
end
swait()
dag:disconnect()
MagicBlock("Really black",HitboxB.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),6,6,6,6,6,6,0.05)
so("rbxassetid://263623156",HitboxB,1,2)
MagniDamage(HitboxB,HitboxB,20,7,13,-15,"Knockdown",true,HitboxB)
wait(1)
con:disconnect()
attack = false
end

--[[Skills]]--

function Z()
attack = true
CurrentMove = "Z"
local con = HitboxA.Touched:connect(function(hit)
Damagefunc(HitboxA,hit,7,11,5,"Normal",RootPart,0.2,"rbxassetid://169380525",1,false,0,false,0,false,0)
end)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.5) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0) * RHCF * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
LH.C0=clerp(LH.C0,cf(-1,-0.5,-1) * LHCF * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-2, 4, 3) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(-0.4, -1, 0.5) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 0.3)
end
swait()
for i = 0,1,0.02 do
swait()
Torso.Velocity = RootPart.CFrame.lookVector * 100
MagicBlock("Institutional white",RootPart.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),3,3,3,3,3,3,0.05)
so("rbxassetid://263623156",RootPart,1,1)
MagniDamage(RootPart,RootPart,5,1,2,-5,"Normal",true,RootPart)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0) * RHCF * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-25)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0) * LHCF * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-25)),.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-2, 4, 3) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 0.3)
end
con:disconnect()
attack = false
end

function X()
attack = true
CurrentMove = "X"
local con = HitboxA.Touched:connect(function(hit)
Damagefunc(HitboxA,hit,9,13,5,"Snare",RootPart,0.2,"rbxassetid://169380525",1,true,0.15,false,0,true,0.05)
end)
for i = 0,1,0.05 do
swait()
MagicBlock("Institutional white",RightArm.CFrame*CFrame.new(0,-1,0),0.75,0.75,0.75,0.75,0.75,0.75,0.05)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(0), math.rad(130), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
Energy.Value = Energy.Value - 10
SlashEffect(BrickColor.new("Institutional white"),RootPart.CFrame*CFrame.new(0, 0.5, -2.5)*CFrame.Angles(math.rad(90),1.3,0),0.001,0.02,0.015,0.001,0.02,0.015,0.05)
so("http://roblox.com/asset/?id=199145264",HitboxA,1,.7)	
so("http://roblox.com/asset/?id=200632875",HitboxA,1,.7)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
con:disconnect()
attack = false
end

local Charge = false
local Chargenum = 0
function C()
attack = true
CurrentMove = "C"
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(76), math.rad(0), math.rad(-15)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-2, 4, 3) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(1, -1, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.3)
end
Chargenum = 0
repeat
swait(25)
MagicBlock("Really black",HitboxA.CFrame*CFrame.new(0,0,6.5),1.5,1.5,1.5,1.5,1.5,1.5,0.05)
MagicCircle("Institutional white",HitboxA.CFrame*CFrame.new(0,0,6.5),1.5,1.5,1.5,1.5,1.5,1.5,0.05)
so("rbxassetid://557322360",HitboxA,1,0.5)
Chargenum = Chargenum + 0.5
Energy.Value = Energy.Value - 4
if Charge == false or Energy.Value <= 0 then
break
end
until Chargenum >= 15
local RtCF = RootPart.CFrame
OpenHandEffect("Really black",HitboxA.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(180)),2,2,2,2,2,2,0.05)
for i=0,Chargenum*2 do
swait()
local ref = part(3,workspace,"SmoothPlastic",0,1,"Really black","Reference",Vector3.new(0.2,0.2,0.2))
ref.Anchored = true
ref.CanCollide = false
ref.Locked = true
ref.CFrame = RtCF * CFrame.new(0,0,(-i*6)-7)
game:GetService("Debris"):AddItem(ref,0.5)
MagicBlock("Really black",ref.CFrame,3,3,3,3,3,3,0.05)
SpecialEffect("Institutional white",ref.CFrame,1,1,1,1,1,1,0.05)
MagniDamage(ref,ref,15,Chargenum,Chargenum * 1.5,-10,"Knockdown",true,ref)
so("rbxassetid://557322360",ref,1,1)
end
local ref = part(3,workspace,"SmoothPlastic",0,1,"Really black","Reference",Vector3.new(0.2,0.2,0.2))
ref.Anchored = true
ref.CanCollide = false
ref.Locked = true
ref.CFrame = RtCF * CFrame.new(0,0,(-Chargenum*6)-21)
game:GetService("Debris"):AddItem(ref,0.5)
MagicCircle("Really black",ref.CFrame,5,5,5,5,5,5,0.05)
MagicRing("Institutional white",ref.CFrame*CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(9),math.rad(0),math.rad(0)),2,2,0.01,2,2,0.01,0.05)
so("rbxassetid://557322397",ref,1,1)
so("rbxassetid://557322438",ref,1,1)
so("rbxassetid://557322473",ref,1,1)
Mana.Value = Mana.Value - 40
MagniDamage(ref,ref,45,Chargenum * 1.5,Chargenum * 2,-10,"Knockdown",true,ref)
attack = false
end

function V()
attack = true
CurrentMove = "V"
Humanoid.WalkSpeed = 0
Humanoid.MaxHealth = Humanoid.MaxHealth + 750
Humanoid.Health = Humanoid.Health + 750
local MainPos=HitboxA.Position
local MainPosSecond=HitboxA.Position
local MainPos2=mouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
local MouseLookSecond=cf((MainPosSecond+MainPos2)/2,MainPos2)
local Target = RootPart
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,Target.Parent)
local hit2,pos2 = rayCast(MainPos2,MouseLookSecond.lookVector,10,Target.Parent)
for i=0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(-45)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*RHCF*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*LHCF*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(90)),.3)
end
for i=0,1,0.05 do
swait()
handleweld.C0=clerp(handleweld.C0,cf(0,-10,0)*angles(math.rad(0),math.rad(-90),math.rad(90)),.3)
end
Mana.Value = Mana.Value - 20
for i=25,1,-1 do
swait()
MagicRing("Really black",Handle.CFrame*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),0.25,0.25,0.1,0.25,0.25,0.1,0.05)
MagicRing("Really black",Handle.CFrame*CFrame.new(-12,0,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),0.25,0.25,0.1,0.25,0.25,0.1,0.05)
MagicRing("Really black",Handle.CFrame*CFrame.new(-3,0,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),0.3,0.3,0.1,0.3,0.3,0.1,0.05)
MagicRing("Really black",Handle.CFrame*CFrame.new(-9,0,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),0.3,0.3,0.1,0.3,0.3,0.1,0.05)
MagicRing("Really black",Handle.CFrame*CFrame.new(-6,0,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),0.5,0.5,0.1,0.5,0.5,0.1,0.05)
local ref = part(3,workspace,"SmoothPlastic",0,1,"Really black","Reference",Vector3.new(0.2,0.2,0.2))
ref.Anchored = true
ref.CanCollide = false
ref.Locked = true
ref.CFrame = mouse.Hit
game:GetService("Debris"):AddItem(ref,0.5)
MagicBlock(BrickColor.new("Really black"),mouse.Hit,10,10,10,5,5,5,0.05)
MagicBlock(BrickColor.new("Institutional white"),mouse.Hit,10,10,10,5,5,5,0.05)
MagniDamage(ref,ref,15,4,6,-5,"Knockdown",true,ref)
Energy.Value = Energy.Value - 5
so("rbxassetid://110284742",ref,1,5)
if Energy.Value <= 0 then
break
end 
for i=0,1,0.05 do
swait()
handleweld.C0=clerp(handleweld.C0,cf(0,-10,0)*angles(math.rad(0),-i*6,math.rad(90)),.3)
end
end
Humanoid.MaxHealth = Humanoid.MaxHealth - 750
Humanoid.WalkSpeed = Base_Speed * Speed.Value
attack = false
end

--[[Key Functions]]--

local cd1 = false
local cd2 = false
local cd3 = false
local cd4 = false
local Music = false
_G.MusicGUI = false

mouse.Button1Down:connect(function()
	if attack == true then return end
	if attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attacktype == 3 then
		attacktype = 1
		attackthree()
	end
end)

mouse.KeyDown:connect(function(key)
	key = key:lower()
	if attack == true then return end
	if Sheathed == false then
		if key == "z" and cd1 == false and Mana.Value >= 15 then
			cd1 = true
			Cover1.Size = UDim2.new(0,0,1,0)
			Mana.Value = Mana.Value - 15
			Z()
			Cover1:TweenSize(UDim2.new(1,0,1,0),'Out','Linear',Skill1cooldown)
			repeat wait() until Cover1.Size == UDim2.new(1,0,1,0)
			cd1 = false
		elseif key == "x" and cd2 == false and Mana.Value >= 25 and Energy.Value >= 10 then
			cd2 = true
			Cover2.Size = UDim2.new(0,0,1,0)
			Mana.Value = Mana.Value - 25
			X()
			Cover2:TweenSize(UDim2.new(1,0,1,0),'Out','Linear',Skill2cooldown)
			repeat wait() until Cover2.Size == UDim2.new(1,0,1,0)
			cd2 = false
		elseif key == "c" and cd3 == false and Mana.Value >= 40 and Energy.Value >= 4 then
			cd3 = true
			Cover3.Size = UDim2.new(0,0,1,0)
			Charge = true
			C()
			repeat wait() until Charge == false
			Cover3:TweenSize(UDim2.new(1,0,1,0),'Out','Linear',Chargenum)
			repeat wait() until Cover3.Size == UDim2.new(1,0,1,0)
			cd3 = false
		elseif key == "v" and cd4 == false and Mana.Value >= 20 and Energy.Value >= 5 then
			cd4 = true
			Cover4.Size = UDim2.new(0,0,1,0)
			V()
			Cover4:TweenSize(UDim2.new(1,0,1,0),'Out','Linear',Skill4cooldown)
			repeat wait() until Cover4.Size == UDim2.new(1,0,1,0)
			cd4 = false
		elseif key == "e" then
			 if _G.MusicGUI == true then
				if PlayerGui:FindFirstChild("SongGUI") then
					PlayerGui.SongGUI:Destroy()
				end
				_G.MusicGUI = false
			elseif _G.MusicGUI == false then
				script.SongGUI.Parent = PlayerGui
				_G.MusicGUI = true
			end
		end
	elseif Sheathed == true then
		
	end
end)

mouse.KeyUp:connect(function(key)
	key = key:lower()
	if key == "c" then
		Charge = false
	end
end)

--[[Engine]]--

local sine = 0
local change = 1
local val = 0
local Mananum = 0
local Energynum = 0
local idle = 0
local Blastnum = 0

LHCF = CFrame.Angles(0, math.rad(-90), 0)
RHCF = CFrame.Angles(0, math.rad(90), 0)

Humanoid.WalkSpeed = Base_Speed * Speed.Value

while true do
swait()
if attack == false and Floor ~= nil then
Blastnum = Blastnum + 1
if Blastnum >= 250 then
Blastnum = 0
WaveEffect("Really black",RootPart.CFrame*CFrame.new(0,-2.8,0),0.25,0.1,0.25,0.25,0.1,0.25,0.05)
MagicRing("Institutional white",RootPart.CFrame*CFrame.new(0,-2.8,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),0.7,0.7,0.1,0.7,0.7,0.1,0.05)
end
end
if attack == false and Frozen == false then
Humanoid.WalkSpeed = Base_Speed * Speed.Value
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
Bar1.Label.Text = "Mana ~{"..Mana.Value.."}~"
Bar2.Label.Text = "Energy ~{"..Energy.Value.."}~"
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
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0) ,math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-1.85, 3+0.2*math.cos(sine/19), 2) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
end
elseif RootPart.Velocity.y < -1 and Floor == nil then 
Anim = "Fall"
if attack == false and Lag == false then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0) ,math.rad(13)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-13)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-1.85, 3+0.2*math.cos(sine/19), 2) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
end
elseif torvel < 1 and Floor ~= nil then
Anim = "Idle"
if attack == false and Lag == false then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0+0.1*math.cos(sine/15)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5+0.05*math.cos(sine/15), 0.2) * CFrame.Angles(math.rad(0), math.rad(-20) ,math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+0.05*math.cos(sine/15), 0) * CFrame.Angles(math.rad(165), math.rad(0), math.rad(-16)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1-0.1*math.cos(sine/15), 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1-0.1*math.cos(sine/15), 0) * LHCF * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-1.85, 3+0.2*math.cos(sine/19), 2) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
end
elseif torvel > 2 and Floor ~= nil then
Anim = "Walk"
if attack == false and Lag == false then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-15), math.rad(0) ,math.rad(7)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(-7)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(-1.85, 3+0.2*math.cos(sine/19), 2) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
end
elseif Floor ~= nil then
Anim = "Lag"
if attack == true and Lag == true then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0) ,math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
daggerweld.C0 = clerp(daggerweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
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

coroutine.resume(coroutine.create(function()
while true do
	wait(1/60)
	if script.FindFirstChild("Music") then
		if script:FindFirstChild("Mesh") then
			script.Mesh.Scale = Vector3.new(0.1,0.1,0.1) + Vector3.new(script.Parent.Music.PlaybackLoudness/250,script.Parent.Music.PlaybackLoudness/250,script.Parent.Music.PlaybackLoudness/250)
		end
	end
end
end))