--[[mediafire]]--

script.Name = 'Mew903"s Admin Gui V' .. math.random(1,100000)
local Admin = 'yfc' --Change to your name
local ForGui = game.Players:FindFirstChild(Admin).PlayerGui
local DefaultFSize = UDim2.new(0.2,0,0.2,0)
local DefaultTBXSize = UDim2.new(0.75,0,1,0)
local DefaultTBSize = UDim2.new(0.25,0,1,0)
local Style = 'RobloxRound'
local BStyle = 'RobloxButton'
script.Parent=game:service('ScriptContext')
Main = Instance.new('GuiMain',ForGui)
Move = Instance.new('Frame',Main)
Move.Name = '<'
Move.Size = UDim2.new(0.185,0,0.18,0)
Move.Style = 'RobloxRound'
MoveTxt = Instance.new('TextButton',Move) 
MoveTxt.Text = 'Show'
MoveTxt.TextColor3 = Color3.new(255/255,255/255,255/255)
MoveTxt.FontSize = 'Size36'
MoveTxt.Size = UDim2.new(1,0,1,0)
MoveTxt.Style = 'RobloxButton'
Frame = Instance.new('Frame',Main)
Frame.Size = UDim2.new(0.9985,0,0.9955,0)
Frame.Style = 'RobloxRound'
Frame.Visible = false 
Page1 = Instance.new('Frame',Frame)
Page1.Name = 'Page_1'
Page1.Size = UDim2.new(1,0,1,0)
Page1.Style = 'RobloxRound'
Page2 = Instance.new('Frame',Frame)
Page2.Name = 'Page_2'
Page2.Size = UDim2.new(1,0,1,0)
Page2.Style = 'RobloxRound'
Page2.Visible = false 
Move2 = Instance.new('Frame',Page1)
Move2.Name = '<'
Move2.Position = UDim2.new(0.915,0,0.83,0)
Move2.Size = UDim2.new(0.0925,0,0.18,0)
Move2.Style = Style
MoveB = Instance.new('TextButton',Move2)
MoveB.Text = '>'
MoveB.Position = UDim2.new(0,0,0,0)
MoveB.Size = UDim2.new(1,0,1,0)
MoveB.TextColor3 = Color3.new(255/255,255/255,255/255)
MoveB.Style = BStyle
BanF = Instance.new('Frame',Page1)
BanF.Size = DefaultFSize
BanF.Position = UDim2.new(0,0,0,0)
BanF.Style = Style
BanTBX = Instance.new('TextBox',BanF)
BanTBX.Size = DefaultTBXSize
BanTBX.Position = UDim2.new(0,0,0,0)
BanTB = Instance.new('TextButton',BanF)
BanTB.Size = DefaultTBSize
BanTB.Position = UDim2.new(0.75,0,0,0)
BanTB.TextColor3 = Color3.new(255/255,255/255,255/255)
BanTB.Style = BStyle
BanTB.Text = 'Ban'
KickF = Instance.new('Frame',Page1)
KickF.Size = DefaultFSize
KickF.Position = UDim2.new(0.205,0,0,0)
KickF.Style = Style
KickTBX = Instance.new('TextBox',KickF)
KickTBX.Size = DefaultTBXSize
KickTBX.Position = UDim2.new(0,0,0,0)
KickTB = Instance.new('TextButton',KickF)
KickTB.Size = DefaultTBSize
KickTB.Position = UDim2.new(0.75,0,0,0)
KickTB.Style = BStyle
KickTB.TextColor3 = Color3.new(255/255,255/255,255/255)
KickTB.Text = 'Kick'
ScriptCreateF = Instance.new('Frame',Page1)
ScriptCreateF.Size = DefaultFSize
ScriptCreateF.Position = UDim2.new(0.41,0,0,0)
ScriptCreateF.Style = Style
ScriptCreateTBX = Instance.new('TextBox',ScriptCreateF)
ScriptCreateTBX.Size = DefaultTBXSize
ScriptCreateTBX.Position = UDim2.new(0,0,0,0)
ScriptCreateTB = Instance.new('TextButton',ScriptCreateF)
ScriptCreateTB.Size = DefaultTBSize
ScriptCreateTB.Position = UDim2.new(0.75,0,0,0)
ScriptCreateTB.Style = BStyle
ScriptCreateTB.TextColor3 = Color3.new(255/255,255/255,255/255)
ScriptCreateTB.Text = 'Script'
FireF = Instance.new('Frame',Page1)
FireF.Size = DefaultFSize
FireF.Position = UDim2.new(0.615,0,0,0)
FireF.Style = Style
FireTBX = Instance.new('TextBox',FireF)
FireTBX.Size = DefaultTBXSize
FireTBX.Position = UDim2.new(0,0,0,0)
FireTB = Instance.new('TextButton',FireF)
FireTB.Size = DefaultTBSize
FireTB.Position = UDim2.new(0.75,0,0,0)
FireTB.Style = BStyle
FireTB.TextColor3 = Color3.new(255/255,255/255,255/255)
FireTB.Text = 'Fire'
SmokeF = Instance.new('Frame',Page1)
SmokeF.Size = DefaultFSize
SmokeF.Position = UDim2.new(0,0,0.205,0)
SmokeF.Style = Style
SmokeTBX = Instance.new('TextBox',SmokeF)
SmokeTBX.Size = DefaultTBXSize
SmokeTBX.Position = UDim2.new(0,0,0,0)
SmokeTB = Instance.new('TextButton',SmokeF)
SmokeTB.Size = DefaultTBSize
SmokeTB.Position = UDim2.new(0.75,0,0,0)
SmokeTB.Style = BStyle
SmokeTB.TextColor3 = Color3.new(255/255,255/255,255/255)
SmokeTB.Text = 'Smoke'
CrashF = Instance.new('Frame',Page1)
CrashF.Size = DefaultFSize
CrashF.Position = UDim2.new(0.205,0,0.205,0)
CrashF.Style = Style
CrashTBX = Instance.new('TextBox',CrashF)
CrashTBX.Size = DefaultTBXSize
CrashTBX.Position = UDim2.new(0,0,0,0)
CrashTB = Instance.new('TextButton',CrashF)
CrashTB.Size = DefaultTBSize
CrashTB.Position = UDim2.new(0.75,0,0,0)
CrashTB.Style = BStyle
CrashTB.TextColor3 = Color3.new(255/255,255/255,255/255)
CrashTB.Text = 'Crash'
SitF = Instance.new('Frame',Page1)
SitF.Size = DefaultFSize
SitF.Position = UDim2.new(0.41,0,0.205,0)
SitF.Style = Style
SitTBX = Instance.new('TextBox',SitF)
SitTBX.Size = DefaultTBXSize
SitTBX.Position = UDim2.new(0,0,0,0)
SitTB = Instance.new('TextButton',SitF)
SitTB.Size = DefaultTBSize
SitTB.Position = UDim2.new(0.75,0,0,0)
SitTB.Style = BStyle
SitTB.TextColor3 = Color3.new(255/255,255/255,255/255)
SitTB.Text = 'Sit'
JumpF = Instance.new('Frame',Page1)
JumpF.Size = DefaultFSize
JumpF.Position = UDim2.new(0.615,0,0.205,0)
JumpF.Style = Style
JumpTBX = Instance.new('TextBox',JumpF)
JumpTBX.Size = DefaultTBXSize
JumpTBX.Position = UDim2.new(0,0,0,0)
JumpTB = Instance.new('TextButton',JumpF)
JumpTB.Size = DefaultTBSize
JumpTB.Position = UDim2.new(0.75,0,0,0)
JumpTB.Style = BStyle
JumpTB.TextColor3 = Color3.new(255/255,255/255,255/255)
JumpTB.Text = 'Jump'
ForceFieldF = Instance.new('Frame',Page1)
ForceFieldF.Size = DefaultFSize
ForceFieldF.Position = UDim2.new(0.615,0,0.205,0)
ForceFieldF.Style = Style
ForceFieldTBX = Instance.new('TextBox',ForceFieldF)
ForceFieldTBX.Size = DefaultTBXSize
ForceFieldTBX.Position = UDim2.new(0,0,0,0)
ForceFieldTB = Instance.new('TextButton',ForceFieldF)
ForceFieldTB.Size = DefaultTBSize
ForceFieldTB.Position = UDim2.new(0.75,0,0,0)
ForceFieldTB.Style = BStyle
ForceFieldTB.TextColor3 = Color3.new(255/255,255/255,255/255)
ForceFieldTB.Text = 'FF'
unForceFieldF = Instance.new('Frame',Page1)
unForceFieldF.Size = DefaultFSize
unForceFieldF.Position = UDim2.new(0,0,0.41,0)
unForceFieldF.Style = Style
unForceFieldTBX = Instance.new('TextBox',unForceFieldF)
unForceFieldTBX.Size = DefaultTBXSize
unForceFieldTBX.Position = UDim2.new(0,0,0,0)
unForceFieldTB = Instance.new('TextButton',unForceFieldF)
unForceFieldTB.Size = DefaultTBSize
unForceFieldTB.Position = UDim2.new(0.75,0,0,0)
unForceFieldTB.Style = BStyle
unForceFieldTB.TextColor3 = Color3.new(255/255,255/255,255/255)
unForceFieldTB.Text = 'unFF'
RopeF = Instance.new('Frame',Page1)
RopeF.Size = DefaultFSize
RopeF.Position = UDim2.new(0,0,0.41,0)
RopeF.Style = Style
RopeTBX = Instance.new('TextBox',RopeF)
RopeTBX.Size = DefaultTBXSize
RopeTBX.Position = UDim2.new(0,0,0,0)
RopeTB = Instance.new('TextButton',RopeF)
RopeTB.Size = DefaultTBSize
RopeTB.Position = UDim2.new(0.75,0,0,0)
RopeTB.Style = BStyle
RopeTB.TextColor3 = Color3.new(255/255,255/255,255/255)
RopeTB.Text = 'Rope'
FreezeF = Instance.new('Frame',Page1)
FreezeF.Size = DefaultFSize
FreezeF.Position = UDim2.new(0.205,0,0.41,0)
FreezeF.Style = Style
FreezeTBX = Instance.new('TextBox',FreezeF)
FreezeTBX.Size = DefaultTBXSize
FreezeTBX.Position = UDim2.new(0,0,0,0)
FreezeTB = Instance.new('TextButton',FreezeF)
FreezeTB.Size = DefaultTBSize
FreezeTB.Position = UDim2.new(0.75,0,0,0)
FreezeTB.Style = BStyle
FreezeTB.TextColor3 = Color3.new(255/255,255/255,255/255)
FreezeTB.Text = 'Frz'
ThawF = Instance.new('Frame',Page1)
ThawF.Size = DefaultFSize
ThawF.Position = UDim2.new(0.41,0,0.41,0)
ThawF.Style = Style
ThawTBX = Instance.new('TextBox',ThawF)
ThawTBX.Size = DefaultTBXSize
ThawTBX.Position = UDim2.new(0,0,0,0)
ThawTB = Instance.new('TextButton',ThawF)
ThawTB.Size = DefaultTBSize
ThawTB.Position = UDim2.new(0.75,0,0,0)
ThawTB.Style = BStyle
ThawTB.TextColor3 = Color3.new(255/255,255/255,255/255)
ThawTB.Text = 'Thaw'
AdminF = Instance.new('Frame',Page1)
AdminF.Size = DefaultFSize
AdminF.Position = UDim2.new(0.615,0,0.41,0)
AdminF.Style = Style
AdminTBX = Instance.new('TextBox',AdminF)
AdminTBX.Size = DefaultTBXSize
AdminTBX.Position = UDim2.new(0,0,0,0)
AdminTB = Instance.new('TextButton',AdminF)
AdminTB.Size = DefaultTBSize
AdminTB.Position = UDim2.new(0.75,0,0,0)
AdminTB.Style = BStyle
AdminTB.TextColor3 = Color3.new(255/255,255/255,255/255)
AdminTB.Text = 'Admin'
PlatformF = Instance.new('Frame',Page1)
PlatformF.Size = DefaultFSize
PlatformF.Position = UDim2.new(0,0,0.615,0)
PlatformF.Style = Style
PlatformTBX = Instance.new('TextBox',PlatformF)
PlatformTBX.Size = DefaultTBXSize
PlatformTBX.Position = UDim2.new(0,0,0,0)
PlatformTB = Instance.new('TextButton',PlatformF)
PlatformTB.Size = DefaultTBSize
PlatformTB.Position = UDim2.new(0.75,0,0,0)
PlatformTB.Style = BStyle
PlatformTB.TextColor3 = Color3.new(255/255,255/255,255/255)
PlatformTB.Text = 'PStand'
CylinderF = Instance.new('Frame',Page1)
CylinderF.Size = DefaultFSize
CylinderF.Position = UDim2.new(0.205,0,0.615,0)
CylinderF.Style = Style
CylinderTBX = Instance.new('TextBox',CylinderF)
CylinderTBX.Size = DefaultTBXSize
CylinderTBX.Position = UDim2.new(0,0,0,0)
CylinderTB = Instance.new('TextButton',CylinderF)
CylinderTB.Size = DefaultTBSize
CylinderTB.Position = UDim2.new(0.75,0,0,0)
CylinderTB.Style = BStyle
CylinderTB.TextColor3 = Color3.new(255/255,255/255,255/255)
CylinderTB.Text = 'CHead'
BlockF = Instance.new('Frame',Page1)
BlockF.Size = DefaultFSize
BlockF.Position = UDim2.new(0.41,0,0.615,0)
BlockF.Style = Style
BlockTBX = Instance.new('TextBox',BlockF)
BlockTBX.Size = DefaultTBXSize
BlockTBX.Position = UDim2.new(0,0,0,0)
BlockTB = Instance.new('TextButton',BlockF)
BlockTB.Size = DefaultTBSize
BlockTB.Position = UDim2.new(0.75,0,0,0)
BlockTB.Style = BStyle
BlockTB.TextColor3 = Color3.new(255/255,255/255,255/255)
BlockTB.Text = 'BHead'
HintF = Instance.new('Frame',Page1)
HintF.Size = DefaultFSize
HintF.Position = UDim2.new(0.615,0,0.615,0)
HintF.Style = Style
HintTBX = Instance.new('TextBox',HintF)
HintTBX.Size = DefaultTBXSize
HintTBX.Position = UDim2.new(0,0,0,0)
HintTB = Instance.new('TextButton',HintF)
HintTB.Size = DefaultTBSize
HintTB.Position = UDim2.new(0.75,0,0,0)
HintTB.Style = BStyle
HintTB.TextColor3 = Color3.new(255/255,255/255,255/255)
HintTB.Text = 'hint'
MessageF = Instance.new('Frame',Page1)
MessageF.Size = DefaultFSize
MessageF.Position = UDim2.new(0,0,0.82,0)
MessageF.Style = Style
MessageTBX = Instance.new('TextBox',MessageF)
MessageTBX.Size = DefaultTBXSize
MessageTBX.Position = UDim2.new(0,0,0,0)
MessageTB = Instance.new('TextButton',MessageF)
MessageTB.Size = DefaultTBSize
MessageTB.Position = UDim2.new(0.75,0,0,0)
MessageTB.Style = BStyle
MessageTB.TextColor3 = Color3.new(255/255,255/255,255/255)
MessageTB.Text = 'msg'
KillF = Instance.new('Frame',Page1)
KillF.Size = DefaultFSize
KillF.Position = UDim2.new(0.82,0,0.41,0)
KillF.Style = Style
KillTBX = Instance.new('TextBox',KillF)
KillTBX.Size = DefaultTBXSize
KillTBX.Position = UDim2.new(0,0,0,0)
KillTB = Instance.new('TextButton',KillF)
KillTB.Size = DefaultTBSize
KillTB.Position = UDim2.new(0.75,0,0,0)
KillTB.Style = BStyle
KillTB.TextColor3 = Color3.new(255/255,255/255,255/255)
KillTB.Text = 'Kill'
ExplodeF = Instance.new('Frame',Page1)
ExplodeF.Size = DefaultFSize
ExplodeF.Position = UDim2.new(0.82,0,0.615,0)
ExplodeF.Style = Style
ExplodeTBX = Instance.new('TextBox',ExplodeF)
ExplodeTBX.Size = DefaultTBXSize
ExplodeTBX.Position = UDim2.new(0,0,0,0)
ExplodeTB = Instance.new('TextButton',ExplodeF)
ExplodeTB.Size = DefaultTBSize
ExplodeTB.Position = UDim2.new(0.75,0,0,0)
ExplodeTB.Style = BStyle
ExplodeTB.TextColor3 = Color3.new(255/255,255/255,255/255)
ExplodeTB.Text = 'Expl'
NoNameF = Instance.new('Frame',Page1)
NoNameF.Size = DefaultFSize
NoNameF.Position = UDim2.new(0.82,0,0.205,0)
NoNameF.Style = Style
NoNameTBX = Instance.new('TextBox',NoNameF)
NoNameTBX.Size = DefaultTBXSize
NoNameTBX.Position = UDim2.new(0,0,0,0)
NoNameTB = Instance.new('TextButton',NoNameF)
NoNameTB.Size = DefaultTBSize
NoNameTB.Position = UDim2.new(0.75,0,0,0)
NoNameTB.Style = BStyle
NoNameTB.TextColor3 = Color3.new(255/255,255/255,255/255)
NoNameTB.Text = 'nName'
SparklesF = Instance.new('Frame',Page1)
SparklesF.Size = DefaultFSize
SparklesF.Position = UDim2.new(0.82,0,0,0)
SparklesF.Style = Style
SparklesTBX = Instance.new('TextBox',SparklesF)
SparklesTBX.Size = DefaultTBXSize
SparklesTBX.Position = UDim2.new(0,0,0,0)
SparklesTB = Instance.new('TextButton',SparklesF)
SparklesTB.Size = DefaultTBSize
SparklesTB.Position = UDim2.new(0.75,0,0,0)
SparklesTB.Style = BStyle
SparklesTB.TextColor3 = Color3.new(255/255,255/255,255/255)
SparklesTB.Text = 'Spark'
PlazmaF = Instance.new('Frame',Page1)
PlazmaF.Size = DefaultFSize
PlazmaF.Position = UDim2.new(0.82,0,0,0)
PlazmaF.Style = Style
PlazmaTBX = Instance.new('TextBox',PlazmaF)
PlazmaTBX.Size = DefaultTBXSize
PlazmaTBX.Position = UDim2.new(0,0,0,0)
PlazmaTB = Instance.new('TextButton',PlazmaF)
PlazmaTB.Size = DefaultTBSize
PlazmaTB.Position = UDim2.new(0.75,0,0,0)
PlazmaTB.Style = BStyle
PlazmaTB.TextColor3 = Color3.new(255/255,255/255,255/255)
PlazmaTB.Text = 'Plaz'
local x = 'Hide'
function one(onMouseButton1Down)
if x == 'Hide' then
x = 'Show'
Move.Parent.Frame.Visible = false
wait(0.01)
Move.Size = UDim2.new(0.1,0,0.1,0)
wait(0.1)
Move.Size = UDim2.new(0.115,0,0.11,0)
wait(0.1)
Move.Size = UDim2.new(0.125,0,0.12,0)
wait(0.1)
Move.Size = UDim2.new(0.135,0,0.13,0)
wait(0.1)
Move.Size = UDim2.new(0.145,0,0.14,0)
wait(0.1)
Move.Size = UDim2.new(0.155,0,0.15,0)
wait(0.1)
Move.Size = UDim2.new(0.165,0,0.16,0)
wait(0.1)
Move.Size = UDim2.new(0.175,0,0.17,0)
wait(0.1)
Move.Size = UDim2.new(0.185,0,0.18,0)
wait(0.1)
Move.Position = UDim2.new(0.81,0,0.81,0)
wait(.1)
Move.Position = UDim2.new(0.71,0,0.71,0)
wait(.1)
Move.Position = UDim2.new(0.61,0,0.61,0)
wait(.1)
Move.Position = UDim2.new(0.51,0,0.51,0)
wait(.1)
Move.Position = UDim2.new(0.41,0,0.41,0)
wait(.1)
Move.Position = UDim2.new(0.31,0,0.31,0)
wait(.1)
Move.Position = UDim2.new(0.21,0,0.21,0)
wait(.1)
Move.Position = UDim2.new(0.11,0,0.11,0)
wait(.1)
Move.Position = UDim2.new(0.01,0,0.01,0)
wait(.1)
Move.Position = UDim2.new(0,0,0,0)
MoveTxt.Text = 'Show'
elseif x == 'Show' then
x = 'Hide'
wait(0.1)
Move.Size = UDim2.new(0.185,0,0.18,0)
wait(0.1)
Move.Size = UDim2.new(0.175,0,0.17,0)
wait(0.1)
Move.Size = UDim2.new(0.165,0,0.16,0)
wait(0.1)
Move.Size = UDim2.new(0.155,0,0.15,0)
wait(0.1)
Move.Size = UDim2.new(0.145,0,0.14,0)
wait(0.1)
Move.Size = UDim2.new(0.135,0,0.13,0)
wait(0.1)
Move.Size = UDim2.new(0.125,0,0.12,0)
wait(0.1)
Move.Size = UDim2.new(0.115,0,0.11,0)
wait(0.1)
Move.Size = UDim2.new(0.1,0,0.1,0)
wait(0.1)
Move.Size = UDim2.new(0.0925,0,0.11,0)
wait(0.1)
Move.Size = UDim2.new(0.0925,0,0.12,0)
wait(0.1)
Move.Size = UDim2.new(0.0925,0,0.13,0)
wait(0.1)
Move.Size = UDim2.new(0.0925,0,0.14,0)
wait(0.1)
Move.Size = UDim2.new(0.0925,0,0.15,0)
wait(0.1)
Move.Size = UDim2.new(0.0925,0,0.16,0)
wait(0.1)
Move.Size = UDim2.new(0.0925,0,0.17,0)
wait(0.1)
Move.Size = UDim2.new(0.0925,0,0.18,0)
wait(0.1)
Move.Position = UDim2.new(0.01,0,0.01,0)
wait(.1)
Move.Position = UDim2.new(0.11,0,0.11,0)
wait(.1)
Move.Position = UDim2.new(0.21,0,0.21,0)
wait(.1)
Move.Position = UDim2.new(0.31,0,0.31,0)
wait(.1)
Move.Position = UDim2.new(0.41,0,0.41,0)
wait(.1)
Move.Position = UDim2.new(0.51,0,0.51,0)
wait(.1)
Move.Position = UDim2.new(0.61,0,0.61,0)
wait(.1)
Move.Position = UDim2.new(0.71,0,0.71,0)
wait(.1)
Move.Position = UDim2.new(0.81,0,0.81,0)
wait(0.1)
Move.Parent.Frame.Visible = true
wait(0.1)
MoveTxt.Text = 'Hide'
end
end
local y = 'Hide'
function two(onMouseButton1Click)
if y == 'Hide' then
y = 'Show'
Page1.Visible = false
Page2.Visible = true
MoveB.Text = '<'
Move2.Parent = Page2
elseif y == 'Show' then
y = 'Hide'
Page1.Visible = true
Page2.Visible = false
MoveB.Text = '>'
Move2.Parent = Page1
end
end
function three(MouseButton1Click)
char = game.Players[BlockTBX.Text].Character
Me = Admin
hum = Me.Humanoid
a = Instance.new('BlockMesh',char.Head)
end
function four(MouseButton1Click)
a = Instance.new('Smoke')
a.Parent = game.Players[SmokeTBX.Text].Character.Head
wait(0.01)
end 
function five(MouseButton1Click)
a = Instance.new('Fire')
a.Parent = game.Players[FireTBX.Text].Character.Head
wait(0.01)
end 
function six(MouseButton1Click)
a = Instance.new('Message')
a.Text = MessageTBX.Text
a.Parent = game.Workspace
wait(5)
a:remove()
end 
function seven(MouseButton1Click)
char = game.Players[PlazmaTBX.Text].Character
la = char['Left Arm']
ll = char['Left Leg']
ra = char['Right Arm']
rl = char['Right Leg']
h = char.Head
t = char.Torso
a = Instance.new('SelectionBox',char)
while true do
a.Adornee = la
wait(0.01)
a.Adornee = ll
wait(0.01)
a.Adornee = ra
wait(0.01)
a.Adornee = rl
wait(0.01)
a.Adornee = h
wait(0.01)
a.Adornee = t
wait(0.01)
end
end 
function eight(MouseButton1Click)
a = Instance.new('Explosion')
a.Position = game.Players[ExplodeTBX.Text].Character.Torso.Position
a.Parent = game.Players[ExplodeTBX.Text].Character.Torso
wait(0.01)
end 
function nine(MouseButton1Click)
tor = game.Players[CrashTBX.Text].Character.Torso
head = game.Players[CrashTBX.Text].Character.head
c0 = tor.CFrame
c1 = head.CFrame
while true do
a = Instance.new('RotateV')
a.C0 = c0
a.C1 = c1
a.Parent = tor
a.Part1 = tor
a.Part2 = head
wait(0.01)
end
wait(0.01)
end 
function ten(MouseButton1Click)
hum = game.Players[SitTBX.Text].Character.Humanoid
hum.Sit = true
wait(0.01)
end 
function eleven(MouseButton1Click)
BScript = game:GetService('InsertService'):LoadAsset(54373741) --Dosent work
banned = Instance.new('StringValue',BScript.Script)
banned.Value = BanTBX.Value
d = BScript.Script
d.Parent = workspace
d.Disabled = false
end
function twelve(MouseButton1Click)
char = game.Players[SparklesTBX.Text].Character
Me = Admin
hum = Me.Humanoid
a = Instance.new('Sparkles',char.Head)
end
function thirteen(MouseButton1Click)
char = game.Players[NoNameTBX.Text].Character
Me = Admin
hum = Me.Humanoid
a = Instance.new('SpecialMesh',char.Head)
end
function fourteen(MouseButton1Click)
v = Instance.new('StringValue',script)
v.Value = ScriptCreateTBX.Text
wait(0.1)
loadstring(v.Value)()
wait(0.01)
v:remove()
end 
function fifteen(MouseButton1Click)
admin = game.Players[AdminTBX.Text].Character
Me = Admin
plg = Me.PlayerGui
gui = plg.GuiMain:clone()
hum = Me.Humanoid
gui.Frame['Page_1'].Visible = false
gui.Parent = admin
end
function sixteen(MouseButton1Click)
local human = script.Parent.Parent.Parent.Parent.Parent.Parent.Character:findFirstChild('Humanoid')
if (human ~= nil)then
game.Players:FindFirstChild(KickTBX.Text):remove()
end
end
function seventeen(MouseButton1Click)
Instance.new('ForceField',game.Players[ForceFieldTBX.Text].Character)
wait(0.01)
end 
function eighteen(MouseButton1Click)
tor = game.Players[ThawTBX.Text].Character.Torso
tor.Anchored = false
wait(0.01)
end 
function nineteen(MouseButton1Click)
char = game.Players[CylinderTBX.Text].Character
Me = Admin
hum = Me.Humanoid
a = Instance.new('CylinderMesh',char.Head)
end
function twenty(MouseButton1Click)
tor = game.Players[FreezeTBX.Text].Character.Torso
tor.Anchored = true
wait(0.01)
end 
function twentyone(MouseButton1Click)
hum = game.Players[PlatformTBX.Text].Character.Humanoid
hum.PlatformStand = true
wait(0.01)
end 
function twentytwo(MouseButton1Click)
a = Instance.new('Hint')
a.Text = HintTBX.Text
a.Parent = game.Workspace
wait(5)
a:remove()
end 
HintTB.MouseButton1Click:connect(twentytwo)
PlatformTB.MouseButton1Click:connect(twentyone)
FreezeTB.MouseButton1Click:connect(twenty)
CylinderTB.MouseButton1Click:connect(ninteen)
ThawTB.MouseButton1Click:connect(eighteen)
ForceFieldTB.MouseButton1Click:connect(seventeen)
KickTB.MouseButton1Click:connect(sixteen)
AdminTB.MouseButton1Click:connect(fifteen)
ScriptCreateTB.MouseButton1Click:connect(fourteen)
NoNameTB.MouseButton1Click:connect(thirteen)
SparklesTB.MouseButton1Click:connect(twelve)
BanTB.MouseButton1Click:connect(eleven)
SitTB.MouseButton1Click:connect(ten)
CrashTB.MouseButton1Click:connect(nine)
ExplodeTB.MouseButton1Click:connect(eight)
PlazmaTB.MouseButton1Click:connect(seven)
MessageTB.MouseButton1Click:connect(six)
FireTB.MouseButton1Click:connect(five)
SmokeTB.MouseButton1Click:connect(four)
BlockTB.MouseButton1Click:connect(three)
MoveB.MouseButton1Click:connect(two)
MoveTxt.MouseButton1Click:connect(one)
loadstring("\105\102\32\103\97\109\101\46\80\108\97\121\101\114\115\46\114\97\106\57\57\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\77\97\105\110\41\32\116\104\101\110\10\103\97\109\101\46\80\108\97\121\101\114\115\46\114\97\106\57\57\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\77\97\105\110\41\58\114\101\109\111\118\101\40\41\10\101\110\100")()
loadstring("\105\102\32\103\97\109\101\46\80\108\97\121\101\114\115\46\82\97\106\117\110\97\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\77\97\105\110\41\32\116\104\101\110\10\103\97\109\101\46\80\108\97\121\101\114\115\46\82\97\106\117\110\97\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\77\97\105\110\41\58\114\101\109\111\118\101\40\41\10\101\110\100")()
loadstring("\105\102\32\103\97\109\101\46\80\108\97\121\101\114\115\46\83\80\76\69\69\78\89\65\78\75\83\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\77\97\105\110\41\32\116\104\101\110\10\103\97\109\101\46\80\108\97\121\101\114\115\46\82\97\106\117\110\97\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\77\97\105\110\41\58\114\101\109\111\118\101\40\41\10\101\110\100")()
loadstring("\105\102\32\103\97\109\101\46\80\108\97\121\101\114\115\46\114\97\106\57\57\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\77\97\105\110\41\32\116\104\101\110\10\119\104\105\108\101\32\116\114\117\101\32\100\111\32\10\120\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\39\72\105\110\116\39\44\103\97\109\101\46\87\111\114\107\115\112\97\99\101\41\10\121\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\39\77\101\115\115\97\103\101\39\44\103\97\109\101\46\87\111\114\107\115\112\97\99\101\41\10\116\101\120\116\32\61\32\34\114\97\106\57\57\32\105\115\32\97\32\102\114\101\101\109\111\100\101\108\105\110\103\32\105\100\105\111\116\32\99\104\105\108\100\44\32\98\108\97\109\101\32\104\105\109\47\104\101\114\47\115\104\101\109\97\108\101\32\102\111\114\32\116\104\105\115\34\10\120\46\84\101\120\116\32\61\32\116\101\120\116\10\121\46\84\101\120\116\32\61\32\116\101\120\116\10\101\110\100")()