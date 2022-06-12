--[[Mediafire]]
local ref = {}
ref[1] = Instance.new("ScreenGui")
ref[1].Name = "GuiControl"
	ref[2] = Instance.new("Frame")
	ref[2].Size = UDim2.new(0, 210, 0, 180)
	ref[2].Style = Enum.FrameStyle.RobloxRound
	ref[2].Name = "Main"
	ref[2].Position = UDim2.new(1, -35, 0.5, -90)
	ref[2].Parent = ref[1]
		ref[3] = Instance.new("Frame")
		ref[3].Size = UDim2.new(0, 150, 0, 30)
		ref[3].Style = Enum.FrameStyle.RobloxRound
		ref[3].Name = "PlayerDropDown"
		ref[3].Position = UDim2.new(0.5, -65, 0, 20)
		ref[3].BackgroundTransparency = 1
		ref[3].Parent = ref[2]
		ref[4] = Instance.new("Frame")
		ref[4].Size = UDim2.new(0, 150, 0, 30)
		ref[4].Style = Enum.FrameStyle.RobloxRound
		ref[4].Name = "CommandDropDown"
		ref[4].Position = UDim2.new(0.5, -65, 0, 60)
		ref[4].BackgroundTransparency = 1
		ref[4].Parent = ref[2]
		ref[5] = Instance.new("TextButton")
		ref[5].FontSize = Enum.FontSize.Size14
		ref[5].Name = "Execute"
		ref[5].Text = "Execute"
		ref[5].Size = UDim2.new(0, 160, 0, 50)
		ref[5].TextColor3 = Color3.new(1, 1, 1)
		ref[5].Style = Enum.ButtonStyle.RobloxButton
		ref[5].Position = UDim2.new(0.5, -70, 0, 100)
		ref[5].Parent = ref[2]
		ref[6] = Instance.new("TextButton")
		ref[6].FontSize = Enum.FontSize.Size18
		ref[6].Name = "Toggle"
		ref[6].Text = "<"
		ref[6].Size = UDim2.new(0, 20, 1, 0)
		ref[6].TextColor3 = Color3.new(1, 1, 1)
		ref[6].Font = Enum.Font.ArialBold
		ref[6].Style = Enum.ButtonStyle.RobloxButton
		ref[6].Parent = ref[2]
	ref[7] = Instance.new("Frame")
	ref[7].Visible = false
	ref[7].Size = UDim2.new(0, 250, 0, 150)
	ref[7].Style = Enum.FrameStyle.RobloxRound
	ref[7].Name = "Input"
	ref[7].Position = UDim2.new(0.5, -175, 0.5, -75)
	ref[7].Parent = ref[1]
		ref[8] = Instance.new("TextLabel")
		ref[8].FontSize = Enum.FontSize.Size24
		ref[8].Text = "..."
		ref[8].Size = UDim2.new(1, 0, 0, 30)
		ref[8].TextColor3 = Color3.new(1, 1, 1)
		ref[8].Font = Enum.Font.ArialBold
		ref[8].Name = "Title"
		ref[8].BackgroundTransparency = 1
		ref[8].Parent = ref[7]
		ref[9] = Instance.new("TextLabel")
		ref[9].FontSize = Enum.FontSize.Size18
		ref[9].Text = "..."
		ref[9].Size = UDim2.new(1, 0, 0, 30)
		ref[9].TextColor3 = Color3.new(1, 1, 1)
		ref[9].Font = Enum.Font.ArialBold
		ref[9].Name = "Info"
		ref[9].Position = UDim2.new(0, 0, 0, 30)
		ref[9].BackgroundTransparency = 1
		ref[9].Parent = ref[7]
		ref[10] = Instance.new("Frame")
		ref[10].Size = UDim2.new(1, 0, 0, 30)
		ref[10].Style = Enum.FrameStyle.RobloxRound
		ref[10].Name = "Input"
		ref[10].Position = UDim2.new(0, 0, 0, 60)
		ref[10].Parent = ref[7]
			ref[11] = Instance.new("TextBox")
			ref[11].FontSize = Enum.FontSize.Size14
			ref[11].Text = "Input Here"
			ref[11].Size = UDim2.new(1, 16, 1, 16)
			ref[11].TextColor3 = Color3.new(1, 1, 1)
			ref[11].BackgroundTransparency = 1
			ref[11].Font = Enum.Font.Arial
			ref[11].Name = "Input"
			ref[11].Position = UDim2.new(0, -8, 0, -8)
			ref[11].Parent = ref[10]
		ref[12] = Instance.new("TextButton")
		ref[12].FontSize = Enum.FontSize.Size12
		ref[12].Name = "Confirm"
		ref[12].Text = "Confirm"
		ref[12].Size = UDim2.new(1, 0, 0, 30)
		ref[12].TextColor3 = Color3.new(1, 1, 1)
		ref[12].Style = Enum.ButtonStyle.RobloxButton
		ref[12].Position = UDim2.new(0, 0, 0, 100)
		ref[12].Parent = ref[7]
 
ref[1].Parent = game.CoreGui
 
Player = game.Players.LocalPlayer
Main = ref[2]
Input = ref[7]
 
local RbxGui = LoadLibrary("RbxGui")
 
function CreateDropDown(Items, Function)
local DropDown = nil
DropDown, UpdateDropDown = RbxGui.CreateDropDownMenu(Items, Function)
DropDown.Size = UDim2.new(0,150,0,30)
DropDown.Position = UDim2.new(0, 0, 0, 0)
DropDown.Name = "DropDownMenu"
return DropDown
end
 
Main.PlayerDropDown.Style = "Custom"
Main.CommandDropDown.Style = "Custom"
 
CPlayer = ""
CFunction = ""
 
CPlayerDrop = nil
PlayerList = {}
NameList = {}
 
function UpdatePlayerDropDown()
CPlayer = ""
PlayerList = {}
NameList = {}
if CurDrop then CurDrop:Destroy() end
PlayerList = game.Players:GetChildren()
for Num, Obj in pairs(PlayerList) do
table.insert(NameList, Obj.Name)
end
table.insert(NameList, "All")
table.insert(NameList, "Other")
Menu = CreateDropDown(NameList, function(Text) CPlayer = Text end)
CPlayerDrop = Menu
Menu.Name = "PlayerDropDown"
Menu.Size = Main.PlayerDropDown.Size
Menu.Parent = Main.PlayerDropDown
end
 
UpdatePlayerDropDown()
 
game.Players.ChildAdded:connect(UpdatePlayerDropDown)
game.Players.ChildRemoved:connect(UpdatePlayerDropDown)
 
Toggle = false
 
function Open()
if Toggle then return end
Toggle = true
Main.Position = UDim2.new(1, -200, 0.5, -90)
Main.Toggle.Text = ">"
end
 
function Close()
if not Toggle then return end
Toggle = false
Main.Position = UDim2.new(1, -35, 0.5, -90)
Main.Toggle.Text = "<"
end
 
function ToggleOpen()
if not Toggle then
Open()
elseif Toggle then
Close()
end
end
 
Main.Toggle.MouseButton1Click:connect(ToggleOpen)
 
 
Commands = {}
 
function AddCommand(Name, Function)
table.insert(Commands, {Name, Function})
end
 
function LoadCommands()
CFunction = ""
CommandList = {}
for Num, Obj in pairs(Commands) do
table.insert(CommandList, Obj[1])
end
Menu = CreateDropDown(CommandList, function(Text) CFunction = Text end)
CPlayerDrop = Menu
Menu.Name = "CommandDropDown"
Menu.Size = Main.CommandDropDown.Size
Menu.Parent = Main.CommandDropDown
end
 
function Execute()
if CPlayer == "" or CFunction == "" then return end
for Num, Obj in pairs(Commands) do
if CFunction == Obj[1] then
if CPlayer == "All" then
for Number, Plyr in pairs(PlayerList) do
Obj[2](Plyr)
end
elseif CPlayer == "Other" then
for Number, Plyr in pairs(PlayerList) do
if Plyr ~= Player then
Obj[2](Plyr)
end
end
else
Obj[2](game.Players[CPlayer])
end
end
end
end
 
Main.Execute.MouseButton1Click:connect(Execute)
 
function RequestInput(Title, Info, Type, New)
Main.Visible = false
Input.Visible = true
Input.Title.Text = Title
Input.Info.Text = Info
if Type == "String" or Type == "Text" then
if New then
Input.Input.Input.Text = "Input Here"
end
Input.Confirm.MouseButton1Click:wait()
Input.Visible = false
Main.Visible = true
if Input.Input.Input.Text ~= "Input Here" then
return Input.Input.Input.Text
else
return ""
end
elseif Type == "Player" then
XPlayer = ""
NList = {}
PList = game.Players:GetChildren()
for Num, Obj in pairs(PList) do
table.insert(NList, Obj.Name)
end
Menu = CreateDropDown(NList, function(Text) XPlayer = Text end)
Menu.Name = "PlayerDropDown"
Menu.Size = Input.Input.Input.Size
Menu.Position = Input.Input.Input.Position
Menu.Parent = Input.Input
Input.Confirm.MouseButton1Click:wait()
Menu:Remove()
Input.Visible = false
Main.Visible = true
if game.Players:findFirstChild(XPlayer) then
return game.Players[XPlayer]
else
return nil
end
elseif Type == "Bool" then
BoolCheck = "No"
Menu = CreateDropDown({"Yes", "No"}, function(Text) BoolCheck = Text end)
Menu.Name = "BoolDropDown"
Menu.Size = Input.Input.Input.Size
Menu.Position = Input.Input.Input.Position
Menu.Parent = Input.Input
Input.Confirm.MouseButton1Click:wait()
Menu:Remove()
Input.Visible = false
Main.Visible = true
if BoolCheck == "No" then
return false
elseif BoolCheck == "Yes" then
return true
end
elseif type(Type) == type({}) then
Current = Type[1]
Menu = CreateDropDown(Type, function(Text) Current = Text end)
Menu.Name = "TestDropDown"
Menu.Size = Input.Input.Input.Size
Menu.Position = Input.Input.Input.Position
Menu.Parent = Input.Input
Input.Confirm.MouseButton1Click:wait()
Menu:Remove()
Input.Visible = false
Main.Visible = true
return Current
end
end
 
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
 
function Kill(P)
if P.Character then
P.Character:BreakJoints()
end
end
 
function TeleportToMe(P)
if P ~= Player then
if Player.Character and P.Character then
P.Character.Torso.CFrame = Player.Character.Torso.CFrame * CFrame.new(0, 5, 0)
elseif not Player.Character and P.Character then
P.Character.Torso.CFrame = game.Workspace.CurrentCamera.Focus
end
end
end
 
function TeleportPTo(P)
P2 = RequestInput("Teleport", "Select Second Player", "Player", true)
if P2 then
if P2.Character and P.Character then
P.Character.Torso.CFrame = P2.Character.Torso.CFrame * CFrame.new(0, 5, 0)
elseif P2 == Player and P.Character and not Player.Character then
P.Character.Torso.CFrame = game.Workspace.CurrentCamera.Focus
end
end
end
 
function TeleportMeTo(P)
if P ~= Player then
if Player.Character and P.Character then
Player.Character.Torso.CFrame = P.Character.Torso.CFrame * CFrame.new(0, 5, 0)
elseif not Player.Character and P.Character then
game.Workspace.CurrentCamera.Focus = P.Character.Torso.CFrame
--game.Workspace.CurrentCamera.CoordinateFrame = P.Character.Torso.CFrame
end
end
end
 
function Kick(P)
P:Remove()
end
 
function Freeze(P)
if P.Character then
P.Character.Head.Anchored = true
end
end
 
function Unfreeze(P)
if P.Character then
P.Character.Head.Anchored = false
end
end
 
function Reset(P)
--P:LoadCharacter(true)
M = Instance.new("Model")
M.Name = P.Name
P1 = Instance.new("Part")
P1.Name = "Head"
P1.Transparency = 1
P1.Anchored = true
P1.Parent = M
P2 = Instance.new("Part")
P2.Name = "Torso"
P2.Transparency = 1
P2.Anchored = true
P2.Parent = M
H = Instance.new("Humanoid")
H.Parent = M
H.Health = 0
M.Parent = game.Workspace
P.Character = M
end
 
CurInhab = nil
function Inhabit(P)
if P.Character then
if not CurInhab then
Player.Character = P.Character
CurInhab = P
elseif CurInhab then
OldInhab = CurInhab
Player.Character = P.Character
CurInhab = P
Reset(OldInhab)
end
end
end
 
function Blind(P)
S = Instance.new("ScreenGui")
S.Name = "BlindGui"
S.Parent = P.PlayerGui
F = Instance.new("Frame")
F.Parent = S
F.BorderColor3 = Color3.new(0, 0, 0)
F.BackgroundColor3 = Color3.new(0, 0, 0)
F.Size = UDim2.new(1, 0, 1, 0)
F.Name = "Fade"
F.ZIndex = 0
end
 
function Unblind(P)
if P.PlayerGui:findFirstChild("BlindGui") then
P.PlayerGui.BlindGui:Remove()
end
end
 
function Hypno(P)
S = Instance.new("ScreenGui")
S.Name = "HypnoGui"
S.Parent = P.PlayerGui
F = Instance.new("Frame")
F.Parent = S
F.BorderColor3 = Color3.new(0, 0, 0)
F.BackgroundColor3 = Color3.new(0, 0, 0)
F.Size = UDim2.new(1, 0, 1, 0)
F.Name = "Fade"
F.ZIndex = 0
Sc = Instance.new("LocalScript")
Sc.Source = "\r\
	F = script.Parent \r\
	x=1 \r\
	while true do \r\
	wait() \r\
	C = BrickColor.random() \r\
	F.BackgroundColor3 = C.Color \r\
	end \r\
	"
Sc.Parent = F
end
 
function Dehypno(P)
if P.PlayerGui:findFirstChild("HypnoGui") then
P.PlayerGui.HypnoGui:Remove()
end
end
 
function FF(P)
if P.Character then
F = Instance.new("ForceField")
F.Parent = P.Character
end
end
 
function DeFF(P)
if P.Character then
if P.Character:findFirstChild("ForceField") then
P.Character.ForceField:Destroy()
end
end
end
 
function Invisi(P)
if P.Character then
C = P.Character
for Num, Obj in pairs(C:GetChildren()) do
if Obj:IsA("BasePart") then
Obj.Transparency = 1
end
end
if C.Head:findFirstChild("face") then
C.Head.face:Remove()
end
end
end
 
function Visi(P)
if P.Character then
C = P.Character
for Num, Obj in pairs(C:GetChildren()) do
if Obj:IsA("BasePart") then
Obj.Transparency = 0
end
end
end
end
 
function Whisper(P)
Mess = RequestInput("Whisper Chat", "Type A Message To "..P.Name, "Text", true)
if Mess ~= "" then
game.Players:WhisperChat(Mess, P)
end
end
 
function DeHover(P)
if P.Character then
if P.Character.Torso:findFirstChild("BodyPosition") then
P.Character.Torso.BodyPosition:Destroy()
end
end
end
 
function Hover(P)
Height = RequestInput("Hover Height", "Enter "..P.Name.."'s Height To Hover", "Text", false)
if P.Character and tostring(tonumber(Height)) == Height then
DeHover(P)
B = Instance.new("BodyPosition")
B.maxForce = Vector3.new(0, math.huge, 0)
B.position = Vector3.new(0, tonumber(Height), 0)
B.Parent = P.Character.Torso
end
end
 
function Walkspeed(P)
Speed = RequestInput("Walkspeed", "Please Select "..P.Name.."'s Walkspeed", "Text", false)
if P.Character and tostring(tonumber(Speed)) == Speed then
P.Character.Humanoid.WalkSpeed = Speed
end
end
 
BanList = {}
function Ban(P)
Sure = RequestInput("Ban", "Are You Sure You Want To Ban "..P.Name.."?", "Bool", true)
if Sure then
table.insert(BanList, P.Name)
P:Remove()
end
end
game.Players.PlayerAdded:connect(function(Plyr)
for Num, Obj in pairs(BanList) do
if Obj == Plyr.Name then
Plyr:Remove()
end
end
end)
 
function Mute(P)
P:SetSuperSafeChat(true)
end
 
function Unmute(P)
P:SetSuperSafeChat(false)
end
 
function StatChange(P)
if P:findFirstChild("leaderstats") then
if #P.leaderstats:GetChildren() > 0 then
Stats = {}
for Num, Obj in pairs(P.leaderstats:GetChildren()) do
table.insert(Stats, Obj.Name)
end
SelectStat = RequestInput("Stat Changer", "Select A Stat To Change", Stats, true)
ValueStat = RequestInput("Stats Changer", "Enter A value for stat", "Text", true)
if P.leaderstats:findFirstChild(SelectStat) then
if tostring(tonumber(ValueStat)) == ValueStat then
P.leaderstats[SelectStat].Value = tostring(ValueStat)
end
end
end
elseif P:findFirstChild("Stats") then
if #P.Stats:GetChildren() > 0 then
Stats = {}
for Num, Obj in pairs(P.Stats:GetChildren()) do
table.insert(Stats, Obj.Name)
end
SelectStat = RequestInput("Stat Changer", "Select A Stat To Change", Stats, true)
ValueStat = RequestInput("Stats Changer", "Enter A value for stat", "Text", true)
if P.Stats:findFirstChild(SelectStat) then
if tostring(tonumber(ValueStat)) == ValueStat then
P.Stats[SelectStat].Value = tostring(ValueStat)
end
end
end
end
end
 
AddCommand("Kill", Kill)
AddCommand("Tele Player", TeleportToMe)
AddCommand("Tele Me", TeleportMeTo)
AddCommand("P To P Tele", TeleportPTo)
AddCommand("Kick", Kick)
AddCommand("Ban", Ban)
AddCommand("Freeze", Freeze)
AddCommand("Unfreeze", Unfreeze)
AddCommand("Inhabit", Inhabit)
AddCommand("Reset", Reset)
--[[AddCommand("Blind", Blind)
AddCommand("Unblind", Unblind)
AddCommand("Hypno", Hypno)
AddCommand("De-hypno", Dehypno)]]
AddCommand("ForceField", FF)
AddCommand("De-ForceField", DeFF)
AddCommand("Invisible", Invisi)
AddCommand("Visible", Visi)
AddCommand("Whisper", Whisper)
AddCommand("Hover", Hover)
AddCommand("De-Hover", DeHover)
AddCommand("Walkspeed", Walkspeed)
AddCommand("Mute", Mute)
AddCommand("Unmute", Unmute)
AddCommand("Change Stat", StatChange)
 
LoadCommands()