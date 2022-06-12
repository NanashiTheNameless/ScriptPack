local GUI=Instance.new('ScreenGui',Game.CoreGui);
GUI.Name='Execute';
local TBS=Instance.new('TextBox',GUI);
TBS.Text='';
TBS.TextColor3=Color3.new(1,1,1)
TBS.Font='Legacy'
TBS.FontSize='Size24'
TBS.BackgroundColor3=Color3.new(0,0,1)
TBS.BackgroundTransparency='.7'
TBS.BorderColor3=Color3.new(0,0,0)
TBS.Size=UDim2.new(0,250,0,25)
TBS.Position=UDim2.new(0,1,0.174999997,0)
TBS.Draggable=true;
TBS.TextXAlignment='Left'
TBS.FocusLost:connect(function(wot) if wot then
ypcall(function()loadstring(TBS.Text)() end);
TBS.Text=''
end;
end);

Version = 9.60

s = Instance.new("ScreenGui", game.CoreGui)

PluginGui = Instance.new("TextButton")
PluginGui.Parent = s
PluginGui.Size = UDim2.new(0.1,0,0,25)
PluginGui.Position = UDim2.new(0,0,0.7,0)
PluginGui.Text="3XPL1OT M3NU"
PluginGui.BackgroundTransparency = 0.3
PluginGui.TextColor = BrickColor.new("White")
PluginGui.BackgroundColor = BrickColor.new("Really Black")
PluginGui.BorderColor = BrickColor.new("Black")
PluginGui.Font = "ArialBold"
PluginGui.FontSize = "Size14"
PluginGui.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
PluginGui.TextStrokeTransparency = 0.3
PluginGui.BorderSizePixel = 1
PluginGui.BorderColor = BrickColor.new("White")


PluginGui.MouseButton1Down:connect(function()
local screengui = Instance.new("ScreenGui")
screengui.Parent = game:GetService("CoreGui")
screengui.Name = "CommandBar"
local textlabel = Instance.new("TextLabel")
textlabel.Parent = screengui
textlabel.Name = "Title"
textlabel.Active = true
textlabel.BackgroundColor = BrickColor.new("Really black")
textlabel.BorderSizePixel = 0
textlabel.Draggable = true
textlabel.Font = "ArialBold"
textlabel.FontSize = "Size14"
textlabel.Position = UDim2.new(0.33,0,0.2,0)
textlabel.Size = UDim2.new(0.65,0,0.05,0)
textlabel.Text = "unrealskill GUI BETA V"..Version..""
textlabel.TextColor3 = Color3.new(255/255,255/255,255/255)

local textbox = Instance.new("TextBox")
textbox.Parent = textlabel
textbox.BackgroundColor = BrickColor.new("Really black")
textbox.BackgroundTransparency = 0.3
textbox.Position = UDim2.new(0,0,1,0)
textbox.Size = UDim2.new(1,0,9,0)
textbox.Text = ""
textbox.TextColor3 = Color3.new(255/255,255/255,255/255)
textbox.TextXAlignment = "Left"
textbox.TextYAlignment = "Top"
textbox.BorderSizePixel = 0
textbox.Font = "ArialBold"
textbox.FontSize = "Size14"
textbox.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textbox.TextStrokeTransparency = 0.3
textbox.ClearTextOnFocus = false
textbox.Draggable = false
textbox.MultiLine = true
textbox.TextWrap = true

local fpaaff = Instance.new("TextButton")
fpaaff.Parent = textbox
fpaaff.Position = UDim2.new(-0.47,0,-0.02,0)
fpaaff.Size = UDim2.new(0.47,0,1,0)
fpaaff.BackgroundColor = BrickColor.new("Really black")
fpaaff.Font = "ArialBold"
fpaaff.FontSize = "Size14"
fpaaff.TextColor3 = Color3.new(255/255,255/255,255/255)
fpaaff.BorderSizePixel = 0
fpaaff.BackgroundTransparency = 0.3
fpaaff.Text = ""

local textbo = Instance.new("TextBox")
textbo.Parent = textlabel
textbo.BackgroundColor = BrickColor.new("Really black")
textbo.BackgroundTransparency = 0.3
textbo.Position = UDim2.new(0,0,-1,0)
textbo.Size = UDim2.new(1,0,1,0)
textbo.Text = ""
textbo.TextColor3 = Color3.new(255/255,255/255,255/255)
textbo.TextXAlignment = "Left"
textbo.TextYAlignment = "Top"
textbo.BorderSizePixel = 0
textbo.Font = "ArialBold"
textbo.FontSize = "Size14"
textbo.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textbo.TextStrokeTransparency = 0.3
textbo.ClearTextOnFocus = false
textbo.Draggable = false
textbo.MultiLine = true
textbo.TextWrap = true

local textbxn = Instance.new("TextBox")
textbxn.Parent = textlabel
textbxn.BackgroundColor = BrickColor.new("Really black")
textbxn.BackgroundTransparency = 0.3
textbxn.Position = UDim2.new(0,0, 13,0)
textbxn.Size = UDim2.new(0.4,0,1,0)
textbxn.Text = "PLAYA "
textbxn.TextColor3 = Color3.new(255/255,255/255,255/255)
textbxn.TextXAlignment = "Left"
textbxn.TextYAlignment = "Top"
textbxn.BorderSizePixel = 0
textbxn.Font = "ArialBold"
textbxn.FontSize = "Size14"
textbxn.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textbxn.TextStrokeTransparency = 0.3
textbxn.ClearTextOnFocus = false
textbxn.Draggable = false
textbxn.MultiLine = true
textbxn.TextWrap = true

local textbxxe = Instance.new("TextLabel")
textbxxe.Parent = textlabel
textbxxe.BackgroundColor = BrickColor.new("Really black")
textbxxe.BackgroundTransparency = 0
textbxxe.Position = UDim2.new(0.4,0, 13,0)
textbxxe.Size = UDim2.new(0.4,0,1,0)
textbxxe.Text = "Player Name"
textbxxe.TextColor3 = Color3.new(255/255,255/255,255/255)
textbxxe.TextXAlignment = "Center"
textbxxe.TextYAlignment = "Center"
textbxxe.BorderSizePixel = 0
textbxxe.Font = "ArialBold"
textbxxe.FontSize = "Size14"
textbxxe.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textbxxe.TextStrokeTransparency = 0.3
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
local redddde = Instance.new("TextButton")
redddde.Parent = textbox
redddde.Position = UDim2.new(-0.46,0,-0.13,0)
redddde.Size = UDim2.new(0.1,0,0,25)
redddde.BackgroundColor = BrickColor.new("Really black")
redddde.Font = "ArialBold"
redddde.FontSize = "Size14"
redddde.TextColor3 = Color3.new(255/255,255/255,255/255)
redddde.BorderSizePixel = 0
redddde.Text = "SeccondPage"
redddde.MouseButton1Down:connect(function()
screengui:remove()
sss = Instance.new("ScreenGui", game.CoreGui)

local textbox = Instance.new("TextBox")
textbox.Parent = sss
textbox.BackgroundColor = BrickColor.new("Really black")
textbox.BackgroundTransparency = 0.3
textbox.Position = UDim2.new(0,0,1,0)
textbox.Size = UDim2.new(1,0,9,0)
textbox.Text = ""
textbox.TextColor3 = Color3.new(255/255,255/255,255/255)
textbox.TextXAlignment = "Left"
textbox.TextYAlignment = "Top"
textbox.BorderSizePixel = 0
textbox.Font = "ArialBold"
textbox.FontSize = "Size14"
textbox.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textbox.TextStrokeTransparency = 0.3
textbox.ClearTextOnFocus = false
textbox.Draggable = false
textbox.MultiLine = true
textbox.TextWrap = true

local texm = Instance.new("TextLabel")
texm.Parent = sss
texm.BackgroundColor = BrickColor.new("Really black")
texm.BackgroundTransparency = 0.5
texm.Position = UDim2.new(0,0,0,0)
texm.Size = UDim2.new(1,0,1,0)
texm.Text = ""
texm.TextColor3 = Color3.new(255/255,255/255,255/255)
texm.TextXAlignment = "Center"
texm.TextYAlignment = "Center"
texm.BorderSizePixel = 0
texm.Font = "ArialBold"
texm.FontSize = "Size14"
texm.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
texm.TextStrokeTransparency = 0.3

local textbxnn = Instance.new("TextBox")
textbxnn.Parent = texm
textbxnn.BackgroundColor = BrickColor.new("Really black")
textbxnn.BackgroundTransparency = 0.3
textbxnn.Position = UDim2.new(0.45,0,0.05,0)
textbxnn.Size = UDim2.new(0.4,0,0.05,0)
textbxnn.Text = "Insert Player's Name and Values"
textbxnn.TextColor3 = Color3.new(255/255,255/255,255/255)
textbxnn.TextXAlignment = "Left"
textbxnn.TextYAlignment = "Top"
textbxnn.BorderSizePixel = 0
textbxnn.Font = "ArialBold"
textbxnn.FontSize = "Size14"
textbxnn.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textbxnn.TextStrokeTransparency = 0.3
textbxnn.ClearTextOnFocus = false
textbxnn.Draggable = false
textbxnn.MultiLine = true
textbxnn.TextWrap = true

local rainbow = Instance.new("TextButton")
rainbow.Parent = texm
rainbow.Position = UDim2.new(0.2,0,0.2,0)
rainbow.Size = UDim2.new(0.1,0,0,25)
rainbow.BackgroundColor = BrickColor.new("Really black")
rainbow.Font = "ArialBold"
rainbow.FontSize = "Size14"
rainbow.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow.BorderSizePixel = 0
rainbow.Text = "MiniGun"
rainbow.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://140634024")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local rainbow3 = Instance.new("TextButton")
rainbow3.Parent = texm
rainbow3.Position = UDim2.new(0.2,0,0.25,0)
rainbow3.Size = UDim2.new(0.1,0,0,25)
rainbow3.BackgroundColor = BrickColor.new("Really black")
rainbow3.Font = "ArialBold"
rainbow3.FontSize = "Size14"
rainbow3.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow3.BorderSizePixel = 0
rainbow3.Text = "Flood"
rainbow3.MouseButton1Down:connect(function()
Game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")
end)

local rainbow3 = Instance.new("TextButton")
rainbow3.Parent = texm
rainbow3.Position = UDim2.new(0.2,0,0.3,0)
rainbow3.Size = UDim2.new(0.1,0,0,25)
rainbow3.BackgroundColor = BrickColor.new("Really black")
rainbow3.Font = "ArialBold"
rainbow3.FontSize = "Size14"
rainbow3.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow3.BorderSizePixel = 0
rainbow3.Text = "DONTPRESS"
rainbow3.MouseButton1Down:connect(function()
game.Players.LocalPlayer:remove()
end)

local rainbow3 = Instance.new("TextButton")
rainbow3.Parent = texm
rainbow3.Position = UDim2.new(0.2,0,0.1,0)
rainbow3.Size = UDim2.new(0.1,0,0,25)
rainbow3.BackgroundColor = BrickColor.new("Really black")
rainbow3.Font = "ArialBold"
rainbow3.FontSize = "Size14"
rainbow3.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow3.BorderSizePixel = 0
rainbow3.Text = "Exit"
rainbow3.MouseButton1Down:connect(function()
sss:Remove()
end)

local rainbow3 = Instance.new("TextButton")
rainbow3.Parent = texm
rainbow3.Position = UDim2.new(0.2,0,0.35,0)
rainbow3.Size = UDim2.new(0.1,0,0,25)
rainbow3.BackgroundColor = BrickColor.new("Really black")
rainbow3.Font = "ArialBold"
rainbow3.FontSize = "Size14"
rainbow3.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow3.BorderSizePixel = 0
rainbow3.Text = "LOL"
rainbow3.MouseButton1Down:connect(function()
game.Workspace:remove()
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.2,0,0.4,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "InsertTool"
rainbow4.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://73504704")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.2,0,0.45,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "Executer"
rainbow4.MouseButton1Down:connect(function()
loadstring(game:GetObjects("rbxassetid://138660278")[1].Source)()
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.2,0,0.5,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "Khols"
rainbow4.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://141905501")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.2,0,0.55,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "EyeLaser"
rainbow4.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://142007482")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.2,0,0.6,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "SpinHead"
rainbow4.MouseButton1Down:connect(function()
b = game.Players.LocalPlayer.Character
for X = 1, math.huge, 0.1 do
wait()
b.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), X)
b.Torso.Neck.C1 = CFrame.new(0,0,0)
end
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.2,0,0.65,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "CBA"
rainbow4.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://142128830")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.2,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "BIGHEAD"
rainbow4.MouseButton1Down:connect(function()
while true do
n=game.Players.LocalPlayer.Character.Head:findFirstChild("Mesh")
n.Scale = Vector3.new(2,2,2)
wait(0.2)
n.Scale = Vector3.new(4,4,4)
wait(0.2)
n.Scale = Vector3.new(2,2,2)
wait(0.2)
n.Scale = Vector3.new(1.25,1.25,1.25)
wait(0.2)
end
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.25,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "Fast"
rainbow4.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.3,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "OldDays"
rainbow4.MouseButton1Down:connect(function()
game.Workspace:FindFirstChild(textbxnn.Text).Animate:remove()
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.35,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "God"
rainbow4.MouseButton1Down:connect(function()
L = game.Players.LocalPlayer.Character
L.Humanoid.RobloxLocked = true
L.Humanoid.Health = math.Huge
L.Humanoid.MaxHealth = math.Huge
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.4,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "StamperTools"
rainbow4.MouseButton1Down:connect(function()
x = game:GetService("InsertService"):LoadAsset(73089166) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089204) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089190) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(58880579) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(60791062) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089239) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.45,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "GravityCoil"
rainbow4.MouseButton1Down:connect(function()
x = game:GetService("InsertService"):LoadAsset(16688968) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.5,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "Sword"
rainbow4.MouseButton1Down:connect(function()
x = game:GetService("InsertService"):LoadAsset(47433) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.55,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "AirStrike"
rainbow4.MouseButton1Down:connect(function()
x = game:GetService("InsertService"):LoadAsset(88885539) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.6,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "GreenAmb"
rainbow4.MouseButton1Down:connect(function()
game.Lighting.Ambient = Color3.new(0,(textbxnn.Text),0)
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.32,0,0.65,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "BlueAmb"
rainbow4.MouseButton1Down:connect(function()
game.Lighting.Ambient = Color3.new(0,0,(textbxnn.Text))
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.44,0,0.2,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "LOL"
rainbow4.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid:remove()
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.44,0,0.25,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "Genocide"
rainbow4.MouseButton1Down:connect(function()
p= game.Players:FirstFindChild(textbxnn.Text)
p.Character.Torso.Neck:remove()
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.44,0,0.3,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "L0L"
rainbow4.MouseButton1Down:connect(function()
for _, v in pairs(game.Workspace:GetChildren()) do
if v:isA("Part") then
v.Velocity = Vector3.new(1000000,0,0)
end
end
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.44,0,0.35,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "Clean"
rainbow4.MouseButton1Down:connect(function()
local c=game.Workspace:GetChildren()
for i=1, #c do
if c[i].Name~=Exeption then
if c[i].className=="Part" or c[i].className=="WedgePart" or c[i].className=="TrussPart" or c[i].className=="Seat" or c[i].className=="VehicleSeat" or c[i].className=="Model" then
c[i]:Destroy()
end
end
end
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.44,0,0.4,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "BlackHole"
rainbow4.MouseButton1Down:connect(function()
p= game.Players:GetChildren()
for i= 1, #p do
if p[i].Name ~= game.Players.LocalPlayer.Name.."" then
b = Instance.new("BodyPosition")	 b.Parent = p[i].Character.Torso	b.maxForce = Vector3.new(6000000,60000000,60000000)
b.position = Vector3.new(100,10,0)
end
end
end)

local rainbow4 = Instance.new("TextButton")
rainbow4.Parent = texm
rainbow4.Position = UDim2.new(0.44,0,0.45,0)
rainbow4.Size = UDim2.new(0.1,0,0,25)
rainbow4.BackgroundColor = BrickColor.new("Really black")
rainbow4.Font = "ArialBold"
rainbow4.FontSize = "Size14"
rainbow4.TextColor3 = Color3.new(255/255,255/255,255/255)
rainbow4.BorderSizePixel = 0
rainbow4.Text = "HpTaker"
rainbow4.MouseButton1Down:connect(function()
function onTouched(hit)
if (hit.Parent:findFirstChild("Humanoid")~= nil) then hit.Parent.Humanoid:remove() wait(5) h = Instance.new("Humanoid") h.Parent = hit.Parent end
end
c = game.Players.LocalPlayer.Character:GetChildren()
for i = 1, #c do
if (c[i].className == "Part") then c[i].Touched:connect(onTouched) end
end
end)

end)
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
local textb = Instance.new("TextLabel")
textb.Parent = textlabel
textb.BackgroundColor = BrickColor.new("Really black")
textb.BackgroundTransparency = 0
textb.Position = UDim2.new(0,0,-2,0)
textb.Size = UDim2.new(1,0,1,0)
textb.Text = "Value"
textb.TextColor3 = Color3.new(255/255,255/255,255/255)
textb.TextXAlignment = "Center"
textb.TextYAlignment = "Center"
textb.BorderSizePixel = 0
textb.Font = "ArialBold"
textb.FontSize = "Size14"
textb.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textb.TextStrokeTransparency = 0.3

local ff = Instance.new("TextButton")
ff.Parent = textbox
ff.Position = UDim2.new(0,0,1.1,0)
ff.Size = UDim2.new(1,0,0.1,0)
ff.BackgroundColor = BrickColor.new("Really black")
ff.Font = "ArialBold"
ff.FontSize = "Size14"
ff.TextColor3 = Color3.new(255/255,255/255,255/255)
ff.BorderSizePixel = 0
ff.Text = "Hide"
ff.MouseButton1Down:connect(function()
screengui:remove()
end)

local fff = Instance.new("TextButton")
fff.Parent = textbox
fff.Position = UDim2.new(0,0,1.2,0)
fff.Size = UDim2.new(1,0,0.1,0)
fff.BackgroundColor = BrickColor.new("Really black")
fff.Font = "ArialBold"
fff.FontSize = "Size14"
fff.TextColor3 = Color3.new(255/255,255/255,255/255)
fff.BorderSizePixel = 0
fff.Text = "ClearScripter"
fff.MouseButton1Down:connect(function()
textbox.Text = "."
end)

local fffm = Instance.new("TextButton")
fffm.Parent = textbox
fffm.Position = UDim2.new(-0.34,0,0,0)
fffm.Size = UDim2.new(0.1,0,0,25)
fffm.BackgroundColor = BrickColor.new("Really black")
fffm.Font = "ArialBold"
fffm.FontSize = "Size11"
fffm.TextColor3 = Color3.new(255/255,255/255,255/255)
fffm.BorderSizePixel = 0
fffm.Text = "H4xor"
fffm.MouseButton1Down:connect(function()
local scr=Instance.new("ScreenGui",game.StarterGui)
scr.Name="TROLOL"
local IL=Instance.new("TextLabel",scr)
IL.BackgroundColor3=BrickColor.new("Really black").Color
IL.BorderColor3=BrickColor.new("White").Color
IL.Position = UDim2.new(0,0,0,0)
IL.Size = UDim2.new(1,0,1,0)
IL.Text="Sh1tted on by "..game.Players.LocalPlayer.Name
IL.TextColor3 = Color3.new(455/355,235/134,255/255)
IL.FontSize="Size48"
IL.BackgroundTransparency=0.5
IL.TextWrap = true
local trolll=game.Players:GetPlayers()
for i=1,#trolll do
trolll[i].Character:BreakJoints()
end
end)

local fffmm = Instance.new("TextButton")
fffmm.Parent = textbox
fffmm.Position = UDim2.new(-0.34,0,0.12,0)
fffmm.Size = UDim2.new(0.1,0,0,25)
fffmm.BackgroundColor = BrickColor.new("Really black")
fffmm.Font = "ArialBold"
fffmm.FontSize = "Size14"
fffmm.TextColor3 = Color3.new(255/255,255/255,255/255)
fffmm.BorderSizePixel = 0
fffmm.Text = "Nuke"
local debounce=false
fffmm.MouseButton1Down:connect(function()
if debounce==false then
debounce=true
for i=500,0,-1 do
game:SetMessage("WARNING TACTICAL NUKE INCOMING! "..i)
wait()
end
local ex=Instance.new("Explosion",workspace)
ex.BlastPressure=100000
ex.BlastRadius=1000000
local grab=workspace:GetChildren()
for i=1,#grab do
if grab[i].className=="Model" then
grab[i]:BreakJoints()
end
end
for i=100,0,-1 do
game:SetMessage("Nuke recharging "..i)
wait()
end
debounce=false
game:ClearMessage()
end
end)

local fffmme = Instance.new("TextButton")
fffmme.Parent = textbox
fffmme.Position = UDim2.new(-0.34,0,0.24,0)
fffmme.Size = UDim2.new(0.1,0,0,25)
fffmme.BackgroundColor = BrickColor.new("Really black")
fffmme.Font = "ArialBold"
fffmme.FontSize = "Size14"
fffmme.TextColor3 = Color3.new(255/255,255/255,255/255)
fffmme.BorderSizePixel = 0
fffmme.Text = "Destroy World"
fffmme.MouseButton1Down:connect(function()
while wait(1) do function search(obj) if obj:IsA("BasePart") and not obj:IsA("Terrain") then obj.Locked = false obj.Anchored = false end for _,i in pairs(obj:GetChildren()) do search(i) end end search(Workspace) end
end)

local fp = Instance.new("TextButton")
fp.Parent = textbox
fp.Position = UDim2.new(-0.34,0,0.36,0)
fp.Size = UDim2.new(0.1,0,0,25)
fp.BackgroundColor = BrickColor.new("Really black")
fp.Font = "ArialBold"
fp.FontSize = "Size14"
fp.TextColor3 = Color3.new(255/255,255/255,255/255)
fp.BorderSizePixel = 0
fp.Text = "Fencing"
fp.MouseButton1Down:connect(function()
str_srce = "123116009" loadstring(game:GetObjects("rbxassetid://"..str_srce)[1].Source)()
end)

local fpa = Instance.new("TextButton")
fpa.Parent = textbox
fpa.Position = UDim2.new(-0.34,0,0.48,0)
fpa.Size = UDim2.new(0.1,0,0,25)
fpa.BackgroundColor = BrickColor.new("Really black")
fpa.Font = "ArialBold"
fpa.FontSize = "Size14"
fpa.TextColor3 = Color3.new(255/255,255/255,255/255)
fpa.BorderSizePixel = 0
fpa.Text = "Atlas"
fpa.MouseButton1Down:connect(function()
i = game:GetObjects("http://www.roblox.com/asset/?id=140585662")[1] i.Parent = game.Players.LocalPlayer.Backpack
end)

local fpaa = Instance.new("TextButton")
fpaa.Parent = textbox
fpaa.Position = UDim2.new(-0.34,0,0.60,0)
fpaa.Size = UDim2.new(0.1,0,0,25)
fpaa.BackgroundColor = BrickColor.new("Really black")
fpaa.Font = "ArialBold"
fpaa.FontSize = "Size14"
fpaa.TextColor3 = Color3.new(255/255,255/255,255/255)
fpaa.BorderSizePixel = 0
fpaa.Text = "Nilizer"
fpaa.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://128636145")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local fpaaf = Instance.new("TextButton")
fpaaf.Parent = textbox
fpaaf.Position = UDim2.new(-0.34,0,0.72,0)
fpaaf.Size = UDim2.new(0.1,0,0,25)
fpaaf.BackgroundColor = BrickColor.new("Really black")
fpaaf.Font = "ArialBold"
fpaaf.FontSize = "Size14"
fpaaf.TextColor3 = Color3.new(255/255,255/255,255/255)
fpaaf.BorderSizePixel = 0
fpaaf.Text = "MotorCycle"
fpaaf.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://132789698")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local fpaaff = Instance.new("TextButton")
fpaaff.Parent = textbox
fpaaff.Position = UDim2.new(-0.46,0,0,0)
fpaaff.Size = UDim2.new(0.1,0,0,25)
fpaaff.BackgroundColor = BrickColor.new("Really black")
fpaaff.Font = "ArialBold"
fpaaff.FontSize = "Size14"
fpaaff.TextColor3 = Color3.new(255/255,255/255,255/255)
fpaaff.BorderSizePixel = 0
fpaaff.Text = "DiscoFog"
fpaaff.MouseButton1Down:connect(function()
game.Lighting.RobloxLocked = true
wait(0.6)
game.Lighting.FogEnd = 50
while true do
wait(0.5)
game.Lighting.FogColor= Color3.new(math.random(), math.random(), math.random())
end
end)

local exl = Instance.new("TextButton")
exl.Parent = textbox
exl.Position = UDim2.new(-0.46,0,0.12,0)
exl.Size = UDim2.new(0.1,0,0,25)
exl.BackgroundColor = BrickColor.new("Really black")
exl.Font = "ArialBold"
exl.FontSize = "Size14"
exl.TextColor3 = Color3.new(255/255,255/255,255/255)
exl.BorderSizePixel = 0
exl.Text = "SeccondGUI"
exl.MouseButton1Down:connect(function()
me = game.Players.LocalPlayer
NamePlr = me.Name

local edb1 = Instance.new("ScreenGui",game.CoreGui)
edb1.Name = ("Main")
local edb2 = Instance.new("Frame",game.CoreGui.Main)
edb2.Name = ("GuiButtons")
edb2.Visible = false
edb2.BackgroundTransparency = 1
edb2.Position = UDim2.new(0, 50, 0, 69)

local edb3 = Instance.new("Frame",game.CoreGui.Main)
edb3.Name = ("GuiButtons2")
edb3.Visible = false
edb3.BackgroundTransparency = 1
edb3.Position = UDim2.new(0, 50, 0, 69)


--End Creation

--Page one
local edb = Instance.new("TextButton")
edb.Name = ("Insert")
edb.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
edb.Position = UDim2.new(0, 5, 0.5, 295);
edb.TextColor3 = Color3.new(1, 1, 1)
edb.MouseButton1Click:connect(function()
insrt = game:GetService("InsertService"):LoadAsset(58901335)
insrt2 = game:GetService("InsertService"):LoadAsset(16190677)
pcall(function()
for _, v in pairs(insrt:GetChildren()) do
v:Clone().Parent = me.Backpack
end
for _, v in pairs(insrt2:GetChildren()) do
v:Clone().Parent = me.Backpack
end
end)
end)

edb.Text = "Insert"
edb.Parent = game.CoreGui.Main.GuiButtons
edb.Style = "RobloxButtonDefault"
edb.Draggable = false

local pb = Instance.new("TextButton")
pb.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
pb.Name = ("MakePart")
pb.Position = UDim2.new(0, 5, 0.5, 316);
pb.Draggable = false
pb.TextColor3 = Color3.new(1, 1, 1)
pb.MouseButton1Click:connect(function()
local p=Instance.new("Part");
p.Name = "RAWR"
p.BrickColor = BrickColor.Random()
p.Material = ((math.random(1, 2) == 1) and "Ice") or "Wood";
p.CFrame = CFrame.new(math.random(-60, 60), (game.PlaceId == 41324860 and 350 or 60), math.random(-60, 60));
p.formFactor = "Custom"
p.Size = Vector3.new(0.5, math.random(2, 40)/10, 0.5)
p.Parent = workspace
end)
pb.Text = "Make part"
pb.Style = "RobloxButtonDefault"
pb.Parent = game.CoreGui.Main.GuiButtons


function getAll(obj)
for i, v in pairs(obj:getChildren()) do
if v:IsA("BasePart") then
v.Anchored = false
v.Transparency = 0.7
v.BrickColor = BrickColor.new("Really Black")
v.TopSurface = ("Smooth")
v.BottomSurface = ("Smooth")
v.BackSurface = ("Smooth")
v.FrontSurface = ("Smooth")
v.RightSurface = ("Smooth")
v.LeftSurface = ("Smooth")
bv = Instance.new("BodyVelocity")
bv.Parent = v
bv.maxForce = Vector3.new(100000000,100000000,100000000)
end
getAll(v)
end
end


function exPro(root)
for _, v in pairs(root:GetChildren()) do
if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=155738508" then
v.Parent = nil
elseif v:IsA("BasePart") then
v.Material = "Plastic"
v.Transparency = 0
One = Instance.new("Decal", v)
Two = Instance.new("Decal", v)
Three = Instance.new("Decal", v)
Four = Instance.new("Decal", v)
Five = Instance.new("Decal", v)
Six = Instance.new("Decal", v)
One.Texture = "http://www.roblox.com/asset/?id=155738508"
Two.Texture = "http://www.roblox.com/asset/?id=155738508"
Three.Texture = "http://www.roblox.com/asset/?id=155738508"
Four.Texture = "http://www.roblox.com/asset/?id=155738508"
Five.Texture = "http://www.roblox.com/asset/?id=155738508"
Six.Texture = "http://www.roblox.com/asset/?id=155738508"
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"
end
exPro(v)
end
end


local DoD = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
DoD.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
DoD.Name = ("DoD")
DoD.Position = UDim2.new(0, 5, 0.5, 337);
DoD.Text = "DoD"
DoD.TextColor3 = Color3.new(1, 1, 1)
DoD.Style = "RobloxButtonDefault"
DoD.Draggable = false

DoD.MouseButton1Click:connect(function()
game.Lighting.FogEnd = 230
game.Lighting.FogColor = Color3.new(0, 0, 0)
getAll(workspace)
game.Lighting.TimeOfDay = "07:00:00"
game.Lighting.Ambient = Color3.new(0,0,0)
sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=122579628"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=122579628"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=122579628"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=122579628"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=122579628"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=122579628"
end)
local ToggleFrame = Instance.new("Frame", game.CoreGui.Main)
ToggleFrame.Name = ("ToggleFrame")
ToggleFrame.Position = UDim2.new(0.207000002, 0, 0.700000048, 0);
ToggleFrame.BackgroundTransparency = 1


ToggleOn = Instance.new("TextButton", game.CoreGui.Main.ToggleFrame)
ToggleOn.Size = UDim2.new(0, 150, 0, 50)
ToggleOn.Name = ("ToggleOn")
ToggleOn.Position = UDim2.new(0.100000001, 0, 0.700000048, 0)
ToggleOn.Text = "Click To Toggle"
ToggleOn.TextColor3 = Color3.new(1, 1, 1)
ToggleOn.Style = "RobloxButton"
ToggleOn.Draggable = false
ToggleOn.Font = "ArialBold"
ToggleOn.FontSize = "Size14"



ToggleOn.MouseButton1Click:connect(function()
game.CoreGui.RobloxGui.ChatFrame.Position = UDim2.new(0,300,0,0)
game.CoreGui.Main.GuiButtons.Visible = true
game.CoreGui.Main.GuiButtons2.Visible = false
game.CoreGui.Main.ToggleFrame.ToggleOn.Visible = false
game.CoreGui.Main.ToggleFrame.ToggleOff.Visible = true
p1.Visible = true
p2.Visible = true
end)

ToggleOff = Instance.new("TextButton", game.CoreGui.Main.ToggleFrame)
ToggleOff.Size = UDim2.new(0, 150, 0, 50)
ToggleOff.Name = ("ToggleOff")
ToggleOff.Position = UDim2.new(0.100000001, 0, 0.700000048, 0)
ToggleOff.Text = "Click To Hide"
ToggleOff.TextColor3 = Color3.new(1, 1, 1)
ToggleOff.Style = "RobloxButton"
ToggleOff.Draggable = false
ToggleOff.Font = "ArialBold"
ToggleOff.FontSize = "Size14"
ToggleOff.Selected = true
ToggleOff.Visible = false

ToggleOff.MouseButton1Click:connect(function()
game.CoreGui.RobloxGui.ChatFrame.Position = UDim2.new(0,0,0,0)
game.CoreGui.Main.GuiButtons.Visible = false
game.CoreGui.Main.GuiButtons2.Visible = false
game.CoreGui.Main.ToggleFrame.ToggleOn.Visible = true
game.CoreGui.Main.ToggleFrame.ToggleOff.Visible = false
p1.Visible = false
p2.Visible = false
end)

Close = Instance.new("TextButton", game.CoreGui.Main.ToggleFrame)
Close.Size = UDim2.new(0, 17, 0, 46)
Close.Name = ("Close")
Close.Position = UDim2.new(0.103000008, 146, 0.700000048, 2)
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.Style = "RobloxButton"
Close.Draggable = false
Close.Font = "ArialBold"
Close.FontSize = "Size14"
Close.Selected = true

Close.MouseButton1Click:connect(function()
game.CoreGui.Main:Remove()
gg:Remove()
game.CoreGui.RobloxGui.ChatFrame.Position = UDim2.new(0,0,0,0)
end)

Shutdown = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Shutdown.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
Shutdown.Name = ("Shutdown")
Shutdown.Position = UDim2.new(0, 5, 0.5, 358)
Shutdown.Text = "Shutdown"
Shutdown.TextColor3 = Color3.new(1, 1, 1)
Shutdown.Style = "RobloxButtonDefault"
Shutdown.Draggable = false

Shutdown.MouseButton1Click:connect(function()
coroutine.resume(coroutine.create(function()
while wait() do
for _, v in pairs(game.Players:GetPlayers()) do
v.Parent = nil
end
end
end))
end)


SetHealthText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons)
SetHealthText.BackgroundColor3 = Color3.new(1, 1, 1)
SetHealthText.Name = ("HealthText")
SetHealthText.ClearTextOnFocus = true
SetHealthText.Font = "ArialBold"
SetHealthText.FontSize = "Size11"
SetHealthText.Position = UDim2.new(0.129999891, 72, 0.826999605, 228)
SetHealthText.Size = UDim2.new(0.0500000007, 77, 0.0500000007, 19)
SetHealthText.Text = "Health"
SetHealthText.ClipsDescendants = true
SetHealthText.BackgroundTransparency = ("0.5")

SetHealth = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
SetHealth.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
SetHealth.Name = ("SetHealth")
SetHealth.Position = UDim2.new(0.0599999242, 5, 0.772999704, 228)
SetHealth.Text = "SetHealth"
SetHealth.TextColor3 = Color3.new(1, 1, 1)
SetHealth.Style = "RobloxButtonDefault"
SetHealth.Draggable = false

SetHealth.MouseButton1Click:connect(function()
set = game.CoreGui.Main.GuiButtons.SetHealthText.Text
me.Character.Humanoid.MaxHealth = set
end)

LookText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons)
LookText.BackgroundColor3 = Color3.new(1, 1, 1)
LookText.Name = ("LookText")
LookText.ClearTextOnFocus = true
LookText.Font = "ArialBold"
LookText.FontSize = "Size11"
LookText.Position = UDim2.new(0.129999936, 72, 0.779999852, 205)
LookText.Size = UDim2.new(0.0500000007, 77, 0.0500000007, 19)
LookText.Text = "Look"
LookText.ClipsDescendants = true
LookText.BackgroundTransparency = ("0.5")

Look = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Look.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
Look.Name = ("Look")
Look.Position = UDim2.new(0.0599999502, 5, 0.772999823, 205)
Look.Text = ("Player Look")
Look.TextColor3 = Color3.new(1, 1, 1)
Look.Style = "RobloxButtonDefault"
Look.Draggable = false

Look.MouseButton1Click:connect(function()
me.CharacterAppearance = ("http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..game.CoreGui.Main.GuiButtons.LookText.Text)

end)



KillText= Instance.new("TextBox", game.CoreGui.Main.GuiButtons)
KillText.BackgroundColor3 = Color3.new(1, 1, 1)
KillText.Name = ("KillText")
KillText.ClearTextOnFocus = true
KillText.Font = "ArialBold"
KillText.FontSize = "Size11"
KillText.Position = UDim2.new(0.129999936, 72, 0.669999838, 252)
KillText.Size = UDim2.new(0.0500000007, 125, 0.0500000007, 17)
KillText.Text = "Kill Player"
KillText.ClipsDescendants = true
KillText.BackgroundTransparency = ("0.5")

Kill = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Kill.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
Kill.Name = ("Kill")
Kill.Position = UDim2.new(0.0599999502, 5, 0.5, 251)
Kill.Text = ("Kill")
Kill.TextColor3 = Color3.new(1, 1, 1)
Kill.Style = "RobloxButtonDefault"
Kill.Draggable = false

Kill.MouseButton1Click:connect(function()
	lul2 = KillText.Text
ownerzz = game.Players[lul2]
ownerzz.Character.Humanoid.Health = ("0")
end)

NameText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons)
NameText.BackgroundColor3 = Color3.new(1, 1, 1)
NameText.Name = ("NameText")
NameText.ClearTextOnFocus = true
NameText.Font = "ArialBold"
NameText.FontSize = "Size11"
NameText.Position = UDim2.new(0.129999936, 88, 0.615999818, 274)
NameText.Size = UDim2.new(0.0500000007, 125, 0.0500000007, 17)
NameText.Text = "New Name"
NameText.ClipsDescendants = true
NameText.BackgroundTransparency = ("0.5")

Name = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Name.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
Name.Name = ("Name")
Name.Position = UDim2.new(0.0599999502, 5, 0.5, 273)
Name.Text = ("Change Name")
Name.TextColor3 = Color3.new(1, 1, 1)
Name.Style = "RobloxButtonDefault"
Name.Draggable = false

Name.MouseButton1Click:connect(function()
local You = me.Name local head = workspace[You].Head:Clone() local model = Instance.new("Model",workspace) local humanoid = Instance.new("Humanoid",model) head.Parent
= model model.Name = (game.CoreGui.Main.GuiButtons.NameText.Text) humanoid.MaxHealth = 100 local w = Instance.new("Weld",model) w.Part0,w.Part1 = workspace[You].Head,head
me.Character.Head.Transparency = 1
end)

HatText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons)
HatText.BackgroundColor3 = Color3.new(1, 1, 1)
HatText.Name = ("HatText")
HatText.ClearTextOnFocus = true
HatText.Font = "ArialBold"
HatText.FontSize = "Size11"
HatText.Position = UDim2.new(0.129999936, 72, 0.561999798, 159)
HatText.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
HatText.Text = "Hat ID"
HatText.ClipsDescendants = true
HatText.BackgroundTransparency = ("0.5")

Hat = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Hat.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
Hat.Name = ("Hat")
Hat.Position = UDim2.new(0.0599999502, 5, 0.5, 159)
Hat.Text = ("Give Hat")
Hat.TextColor3 = Color3.new(1, 1, 1)
Hat.Style = "RobloxButtonDefault"
Hat.Draggable = false

Hat.MouseButton1Click:connect(function()
local obj = game:service("InsertService"):LoadAsset(game.CoreGui.Main.GuiButtons.HatText.Text)
for a,hat in pairs(obj:children()) do if hat:IsA("Hat") then hat.Parent = me.Character end end
obj:Destroy()
end)

GlowText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons)
GlowText.BackgroundColor3 = Color3.new(1, 1, 1)
GlowText.ClearTextOnFocus = true
GlowText.Name = ("GlowText")
GlowText.Font = "ArialBold"
GlowText.FontSize = "Size11"
GlowText.Position = UDim2.new(0.129999936, 72, 0.561999798, 136)
GlowText.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
GlowText.Text = "Color"
GlowText.ClipsDescendants = true
GlowText.BackgroundTransparency = ("0.5")

Glow = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Glow.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
Glow.Name = ("Glow")
Glow.Position = UDim2.new(0.0599999502, 5, 0.5, 136)
Glow.Text = ("Glow")
Glow.TextColor3 = Color3.new(1, 1, 1)
Glow.Style = "RobloxButtonDefault"
Glow.Draggable = false

Glow.MouseButton1Click:connect(function()
function MakeHologram(object)
for i,v in pairs(object:GetChildren()) do
if v:IsA("Part") then
if v:FindFirstChild("Hologram") == nil then
local hologram = Instance.new("SelectionBox")
hologram.Parent = v
hologram.Adornee = v
hologram.Name = "Hologram"
hologram.Color = BrickColor.new(game.CoreGui.Main.GuiButtons.GlowText.Text)
elseif v:FindFirstChild("Hologram") ~= nil then
v.Hologram.Color = BrickColor.new(game.CoreGui.Main.GuiButtons.GlowText.Text)
end
end
MakeHologram(v)
end
end
MakeHologram(Workspace)
end)

OwnText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons)
OwnText.BackgroundColor3 = Color3.new(1, 1, 1)
OwnText.ClearTextOnFocus = true
OwnText.Name = ("OwnText")
OwnText.Font = "ArialBold"
OwnText.FontSize = "Size11"
OwnText.Position = UDim2.new(0.129999936, 71, 0.561999798, 113)
OwnText.Size = UDim2.new(0.0500000007, 145, 0.0500000007, 19)
OwnText.Text = "Name of Admin Or Owner"
OwnText.ClipsDescendants = true
OwnText.BackgroundTransparency = ("0.5")


Own = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Own.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
Own.Name = ("Own")
Own.Position = UDim2.new(0.0599999502, 5, 0.5, 113)
Own.Text = ("Own")
Own.TextColor3 = Color3.new(1, 1, 1)
Own.Style = "RobloxButtonDefault"
Own.Draggable = false
Own.MouseButton1Click:connect(function()
	lul = OwnText.Text
ownerz = game.Players[lul]
for _, v in pairs(ownerz.Backpack:GetChildren()) do
v:Clone().Parent = me.Backpack
end
end)

SpeedText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons)
SpeedText.BackgroundColor3 = Color3.new(1, 1, 1)
SpeedText.ClearTextOnFocus = true
SpeedText.Name = ("SpeedText")
SpeedText.Font = "ArialBold"
SpeedText.FontSize = "Size11"
SpeedText.Position = UDim2.new(0.129999936, 71, 0.561999798, -24)
SpeedText.Size = UDim2.new(0.0500000007, 70, 0.0500000007, 17)
SpeedText.Text = "Walk Speed"
SpeedText.ClipsDescendants = true
SpeedText.BackgroundTransparency = ("0.5")


Speed = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Speed.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
Speed.Name = ("Speed")
Speed.Position = UDim2.new(0.0599999502, 5, 0.5, -25)
Speed.Text = ("Set Speed")
Speed.TextColor3 = Color3.new(1, 1, 1)
Speed.Style = "RobloxButtonDefault"
Speed.Draggable = false
Speed.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedText.Text
WalkNum.Text = SpeedText.Text
while true do
wait()
WalkNum.Text = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
end
end)

AntiBan= Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
AntiBan.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
AntiBan.Name = ("AntiBan")
AntiBan.Position = UDim2.new(0.0599999502, 5, 0.5, 67)
AntiBan.Text = "Anti Ban"
AntiBan.TextColor3 = Color3.new(1, 1, 1)
AntiBan.Style = "RobloxButtonDefault"
AntiBan.Draggable = false
AntiBan.Visible = true

AntiBan.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.RobloxLocked = true
game.Players.LocalPlayer.PlayerGui.RobloxLocked = true
game.Players.LocalPlayer.Backpack.RobloxLocked = true
game.Players.LocalPlayer.RobloxLocked = true

end)

WalkNum=Instance.new("TextLabel", game.CoreGui.Main.GuiButtons)
WalkNum.Name = ("WalkNum")
WalkNum.Text = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
WalkNum.Position = UDim2.new(0.00800000038, 100, 0, 40)
WalkNum.TextColor3 = Color3.new(1, 1, 1)
WalkNum.Visible = true
WalkNum.BackgroundTransparency = 1
WalkNum.Font = "ArialBold"
WalkNum.FontSize = "Size12"

WalkSub= Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
WalkSub.Size = UDim2.new(0.0500000007, 75, 0.0500000007, 19)
WalkSub.Name = ("WalkSub")
WalkSub.Position = UDim2.new(0.0599999502, 5, 0.5, 44)
WalkSub.Text = "Walkspeed -1"
WalkSub.TextColor3 = Color3.new(1, 1, 1)
WalkSub.Style = "RobloxButtonDefault"
WalkSub.Draggable = false
WalkSub.Visible = true

WalkSub.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed-1
WalkNum.Text = WalkNum.Text-1
while true do
wait()
WalkNum.Text = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
end
end)



WalkAdd= Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
WalkAdd.Size = UDim2.new(0.0500000007, 75, 0.0500000007, 19)
WalkAdd.Name = ("WalkAdd")
WalkAdd.Position = UDim2.new(0.0599999502, 5, 0.5, 21)
WalkAdd.Text = "Walkspeed +1"
WalkAdd.TextColor3 = Color3.new(1, 1, 1)
WalkAdd.Style = "RobloxButtonDefault"
WalkAdd.Draggable = false
WalkAdd.Visible = true

WalkAdd.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed+1
WalkNum.Text = WalkNum.Text+1
while true do
wait()
WalkNum.Text = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
end
end)



BreakControls= Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
BreakControls.Size = UDim2.new(0.0500000007, 90, 0.0500000007, 19)
BreakControls.Name = ("BreakControls")
BreakControls.Position = UDim2.new(0.0599999502, 5, 0.5, -2)
BreakControls.Text = "Reverse Controls"
BreakControls.TextColor3 = Color3.new(1, 1, 1)
BreakControls.Style = "RobloxButtonDefault"
BreakControls.Draggable = false
BreakControls.Visible = true

BreakControls.MouseButton1Click:connect(function()
for _, v in pairs(game.Players:GetPlayers()) do
v.Character.Humanoid.WalkSpeed = -16
WalkNum.Text = ("-16")
game.CoreGui.Main.GuiButtons.BreakControls.Visible = false
game.CoreGui.Main.GuiButtons.FixControls.Visible = true
end
end)


BreakControls2= Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
BreakControls2.Size = UDim2.new(0.0500000007, 90, 0.0500000007, 19)
BreakControls2.Name = ("FixControls")
BreakControls2.Position = UDim2.new(0.0599999502, 5, 0.5, -2)
BreakControls2.Text = "Fix Controls"
BreakControls2.TextColor3 = Color3.new(1, 1, 1)
BreakControls2.Style = "RobloxButtonDefault"
BreakControls2.Draggable = false
BreakControls2.Visible = false

BreakControls2.MouseButton1Click:connect(function()
for _, v in pairs(game.Players:GetPlayers()) do
v.Character.Humanoid.WalkSpeed = 16
WalkNum.Text = ("16")
game.CoreGui.Main.GuiButtons.BreakControls.Visible = true
game.CoreGui.Main.GuiButtons.FixControls.Visible = false
end
end)



VISIBLE= Instance.new("TextButton", game.CoreGui.Main.ToggleFrame)
VISIBLE.Size = UDim2.new(0, 148, 0, 20)
VISIBLE.Name = ("VISIBLE1")
VISIBLE.Position = UDim2.new(0.162000075, 1, 1.83800018, 64)
VISIBLE.Text = "Visible"
VISIBLE.TextColor3 = Color3.new(1, 1, 1)
VISIBLE.Style = "RobloxButton"
VISIBLE.Draggable = false
VISIBLE.Visible = true

VISIBLE.MouseButton1Click:connect(function()
game.CoreGui.Main.ToggleFrame.INVISIBLE1.Visible = true
game.CoreGui.Main.ToggleFrame.VISIBLE1.Visible = false
for a, obj in pairs(game.Players.LocalPlayer.Character:children()) do
if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0
end
end
end)

INVISIBLE= Instance.new("TextButton", game.CoreGui.Main.ToggleFrame)
INVISIBLE.Size = UDim2.new(0, 148, 0, 20)
INVISIBLE.Name = ("INVISIBLE1")
INVISIBLE.Position = UDim2.new(0.162000075, 1, 1.83800018, 64)
INVISIBLE.Text = "Invisible"
INVISIBLE.TextColor3 = Color3.new(1, 1, 1)
INVISIBLE.Style = "RobloxButton"
INVISIBLE.Draggable = false
INVISIBLE.Visible = true

INVISIBLE.MouseButton1Click:connect(function()
game.CoreGui.Main.ToggleFrame.INVISIBLE1.Visible = false
game.CoreGui.Main.ToggleFrame.VISIBLE1.Visible = true

for a, obj in pairs(game.Players.LocalPlayer.Character:children()) do

if obj:IsA("ForceField") then obj:Remove() end if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1
end
end
end)

UNGOD = Instance.new("TextButton", game.CoreGui.Main.ToggleFrame)
UNGOD.Size = UDim2.new(0, 75, 0, 20)
UNGOD.Name = ("UNGOD")
UNGOD.Position = UDim2.new(0.0970000401, 1, 1.9380002, 47)
UNGOD.Text = "UNGOD"
UNGOD.TextColor3 = Color3.new(1, 1, 1)
UNGOD.Style = "RobloxButton"
UNGOD.Draggable = false
UNGOD.Visible = false
UNGOD.Selected = true

UNGOD.MouseButton1Click:connect(function()
me.Character.Humanoid.MaxHealth = ("100")
game.CoreGui.Main.ToggleFrame.GOD.Visible = true
game.CoreGui.Main.ToggleFrame.UNGOD.Visible = false
end)

GOD = Instance.new("TextButton", game.CoreGui.Main.ToggleFrame)
GOD.Size = UDim2.new(0, 75, 0, 20)
GOD.Name = ("GOD")
GOD.Position = UDim2.new(0.0970000401, 1, 1.9380002, 47)
GOD.Text = "GOD"
GOD.TextColor3 = Color3.new(1, 1, 1)
GOD.Style = "RobloxButton"
GOD.Draggable = false

GOD.MouseButton1Click:connect(function()
me.Character.Humanoid.MaxHealth = math.huge
game.CoreGui.Main.ToggleFrame.GOD.Visible = false
game.CoreGui.Main.ToggleFrame.UNGOD.Visible = true
end)

UNFF = Instance.new("TextButton", game.CoreGui.Main.ToggleFrame)
UNFF.Size = UDim2.new(0, 76, 0, 20)
UNFF.Name = ("UNFF")
UNFF.Position = UDim2.new(0.162000075, 73, 1.83800018, 47)
UNFF.Text = "UNFF"
UNFF.TextColor3 = Color3.new(1, 1, 1)
UNFF.Style = "RobloxButton"
UNFF.Draggable = false
UNFF.Visible = false
UNFF.Selected = true

UNFF.MouseButton1Click:connect(function()
me.Character.ForceField:Remove()
game.CoreGui.Main.ToggleFrame.FF.Visible = true
game.CoreGui.Main.ToggleFrame.UNFF.Visible = false
end)

FF = Instance.new("TextButton", game.CoreGui.Main.ToggleFrame)
FF.Size = UDim2.new(0, 76, 0, 20)
FF.Name = ("FF")
FF.Position = UDim2.new(0.162000075, 73, 1.83800018, 47)
FF.Text = "FF"
FF.TextColor3 = Color3.new(1, 1, 1)
FF.Style = "RobloxButton"
FF.Draggable = false

FF.MouseButton1Click:connect(function()
Instance.new("ForceField", me.Character)
game.CoreGui.Main.ToggleFrame.FF.Visible = false
game.CoreGui.Main.ToggleFrame.UNFF.Visible = true
end)

local ColorChat1 = Instance.new("Frame",edb2)
ColorChat1.Name = ("Blue")
ColorChat1.Position = UDim2.new(0.0599999242, 305, 0.772999704, 90)
ColorChat1.Size = UDim2.new(0.0500000007, 19, 0.0500000007, 19)
ColorChat1.Style = "ChatBlue"
local ColorChat2 = Instance.new("Frame",edb2)
ColorChat2.Name = ("Green")
ColorChat2.Position = UDim2.new(0.0599999242, 326, 0.772999704, 90)
ColorChat2.Size = UDim2.new(0.0500000007, 19, 0.0500000007, 19)
ColorChat2.Style = "ChatGreen"
local ColorChat3 = Instance.new("Frame",edb2)
ColorChat3.Name = ("Red")
ColorChat3.Position = UDim2.new(0.0599999242, 347, 0.772999704, 90)
ColorChat3.Size = UDim2.new(0.0500000007, 19, 0.0500000007, 19)
ColorChat3.Style = "ChatRed"
local SetColor = Instance.new("StringValue",edb2)
SetColor.Name = ("SetColor")
SetColor.Value = ("Blue")

SetChat = Instance.new("TextBox", edb2)
SetChat.BackgroundColor3 = Color3.new(1, 1, 1)
SetChat.Name = ("ChatText")
SetChat.ClearTextOnFocus = true
SetChat.Font = "ArialBold"
SetChat.FontSize = "Size11"
SetChat.Position = UDim2.new(0.129999891, 72, 0.826999605, 90)
SetChat.Size = UDim2.new(0.0500000007, 232, 0.0500000007, 19)
SetChat.Text = "Text"
SetChat.ClipsDescendants = true
SetChat.BackgroundTransparency = ("0.5")

Chat = Instance.new("TextButton", edb2)
Chat.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
Chat.Name = ("Chat")
Chat.Position = UDim2.new(0.0599999242, 5, 0.772999704, 90)
Chat.Text = "Chat"
Chat.TextColor3 = Color3.new(1, 1, 1)
Chat.Style = "RobloxButtonDefault"
Chat.Draggable = false

Chat.MouseButton1Click:connect(function()
game:GetService("Chat"):Chat(game.Players.LocalPlayer.Character.Head, edb2.ChatText.Text, edb2.SetColor.Value)

end)

SetBlue = Instance.new("TextButton", edb2)
SetBlue.Size = UDim2.new(0.0500000007, 19, 0.0500000007, 19)
SetBlue.Name = ("SetBlue")
SetBlue.Position = UDim2.new(0.0599999242, 305, 0.772999704, 90)
SetBlue.Text = ""
SetBlue.TextColor3 = Color3.new(1, 1, 1)
SetBlue.Style = "Custom"
SetBlue.Draggable = false
SetBlue.BackgroundTransparency = 0.9

SetBlue.MouseButton1Click:connect(function()
edb2.SetColor.Value = ("Blue")
end)
SetGreen = Instance.new("TextButton", edb2)
SetGreen.Size = UDim2.new(0.0500000007, 19, 0.0500000007, 19)
SetGreen.Name = ("SetGreen")
SetGreen.Position = UDim2.new(0.0599999242, 326, 0.772999704, 90)
SetGreen.Text = ""
SetGreen.TextColor3 = Color3.new(1, 1, 1)
SetGreen.Style = "Custom"
SetGreen.Draggable = false
SetGreen.BackgroundTransparency = 0.9

SetGreen.MouseButton1Click:connect(function()
edb2.SetColor.Value = ("Green")
end)
SetRed = Instance.new("TextButton", edb2)
SetRed.Size = UDim2.new(0.0500000007, 19, 0.0500000007, 19)
SetRed.Name = ("SetRed")
SetRed.Position = UDim2.new(0.0599999242, 347, 0.772999704, 90)
SetRed.Text = ""
SetRed.TextColor3 = Color3.new(1, 1, 1)
SetRed.Style = "Custom"
SetRed.Draggable = false
SetRed.BackgroundTransparency = 0.9

SetRed.MouseButton1Click:connect(function()
edb2.SetColor.Value = ("Red")
end)


ToolBox = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
ToolBox.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
ToolBox.Name = ("ToolBox")
ToolBox.Position = UDim2.new(0, 5, 0.5, 400)
ToolBox.Text = "ToolBox"
ToolBox.TextColor3 = Color3.new(1, 1, 1)
ToolBox.Style = "RobloxButtonDefault"
ToolBox.Draggable = false

ToolBox.MouseButton1Click:connect(function()
Game:GetService("TestService"):DoCommand("ToggleToolbox")
end)

Btools = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Btools.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
Btools.Name = ("Btools")
Btools.Position = UDim2.new(0, 5, 0.5, 420)
Btools.Text = "Btools"
Btools.TextColor3 = Color3.new(1, 1, 1)
Btools.Style = "RobloxButtonDefault"
Btools.Draggable = false

Btools.MouseButton1Click:connect(function()
local clone = Instance.new("HopperBin")
clone.BinType = "Clone"
clone.Parent = me.Backpack
local delete = Instance.new("HopperBin")
delete.BinType = "Hammer"
delete.Parent = me.Backpack
local drag = Instance.new("HopperBin")
drag.BinType = "GameTool"
drag.Parent = me.Backpack
local drag2 = Instance.new("HopperBin")
drag2.BinType = "Grab"
drag2.Parent = me.Backpack
game:GetObjects("rbxassetid://122694024")[1].Parent=game.Players.LocalPlayer.Backpack
game:GetObjects("rbxassetid://10947742")[1].Parent=game.Players.LocalPlayer.Backpack
game:GetObjects("rbxassetid://2248549")[1].Parent=game.Players.LocalPlayer.Backpack
game:GetObjects("rbxassetid://45876303")[1].Parent=game.Players.LocalPlayer.Backpack
end)


Terrain = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
Terrain.Size = UDim2.new(0.0500000007, 77, 0.0500000007, 19)
Terrain.Name = ("ClearTerrain")
Terrain.Position = UDim2.new(0, 5, 0.5, 440)
Terrain.Text = "Clear Terrain"
Terrain.TextColor3 = Color3.new(1, 1, 1)
Terrain.Style = "RobloxButtonDefault"
Terrain.Draggable = false

Terrain.MouseButton1Click:connect(function()
game.Workspace.Terrain:Clear()

end)


ExPro = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
ExPro.Name = ("expro")
ExPro.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
ExPro.Position = UDim2.new(0, 5, 0.5, 379)
ExPro.Text = "V3rm"
ExPro.TextColor3 = Color3.new(1, 1, 1)
ExPro.Style = "RobloxButtonDefault"
ExPro.Draggable = false

ExPro.MouseButton1Click:connect(function()
exPro(workspace)
end)

StealText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons)
StealText.BackgroundColor3 = Color3.new(1, 1, 1)
StealText.Name = ("StealText")
StealText.ClearTextOnFocus = false
StealText.Font = "ArialBold"
StealText.FontSize = "Size11"
StealText.Transparency = 0.5
StealText.Position = UDim2.new(0, 72, 0.879999995, 183)
StealText.Size = UDim2.new(0.0500000007, 125, 0.0500000007, 17)
StealText.Text = "Place ID to save to"

StealButton = Instance.new("TextButton", game.CoreGui.Main.GuiButtons)
StealButton.Name = ("StealButton")
StealButton.Font = "ArialBold"
StealButton.FontSize = "Size12"
StealButton.Text = "Steal"
StealButton.Position = UDim2.new(0.100000001, 5, 0.879999995, 182)
StealButton.Size = UDim2.new(0.0500000007, 62, 0.0500000007, 19)
StealButton.TextColor3 = Color3.new(1, 1, 1)
StealButton.Style = "RobloxButtonDefault"

StealButton.MouseButton1Click:connect(function()
pcall(function()
game:service("Visit"):SetUploadUrl("http://www.roblox.com/Data/Upload.ashx?assetid=" .. StealText.Text);
game.CoreGui.Main.GuiButtons.ControlFrame.SaveDialogShield.Visible = true
end)
end)

coroutine.resume(coroutine.create(function()
while wait() do
game:ClearMessage()
end
end))
------------------------------------------------------------------------------------------------------------END PAGE 1
--PAGE 2

p1 = Instance.new("TextButton")
	p1.Name = "p1."
	p1.Parent = ToggleFrame
	p1.Position = UDim2.new(0.10100000351667, 1, 0.70000004768372, -17)
	p1.Size = UDim2.new(0, 22, 0, 20)
	p1.Style = Enum.ButtonStyle.RobloxButton
	p1.Selected = true
	p1.Font = Enum.Font.ArialBold
	p1.FontSize = Enum.FontSize.Size10
	p1.Text = "P1."
	p1.TextColor = BrickColor.new("Institutional white")
	p1.Visible = false
p1.MouseButton1Click:connect(function()
edb2.Visible = true
edb3.Visible = false
end)

p2 = Instance.new("TextButton")
	p2.Name = "p2."
	p2.Parent = ToggleFrame
	p2.Position = UDim2.new(0.10100000351667, 21, 0.70000004768372, -17)
	p2.Size = UDim2.new(0, 22, 0, 20)
	p2.Style = Enum.ButtonStyle.RobloxButton
	p2.Selected = true
	p2.Font = Enum.Font.ArialBold
	p2.FontSize = Enum.FontSize.Size10
	p2.Text = "P2."
	p2.TextColor = BrickColor.new("Institutional white")
	p2.Visible = false
p2.MouseButton1Click:connect(function()
edb2.Visible = false
edb3.Visible = true
end)



ExecuteFrame = Instance.new("Frame", game.CoreGui.Main.GuiButtons2)
	ExecuteFrame.Name = "ExecuteFrame"
	ExecuteFrame.Position = UDim2.new(0, 144, 0, 94)
	ExecuteFrame.Size = UDim2.new(0, 205, 0, 143)
	ExecuteFrame.BackgroundColor3 = Color3.new(0,0,0)
	ExecuteFrame.BackgroundTransparency = 0.5
	ExecuteFrame.Transparency = 0.5
	ExecuteFrame.Visible = false
	ExecuteFrame.Draggable = true
	ExecuteFrame.Active = true

ScriptBox = Instance.new("TextBox", ExecuteFrame)
	ScriptBox.Name = "ScriptBox"
	ScriptBox.Position = UDim2.new(0, 5, 0, 5)
	ScriptBox.Size = UDim2.new(0, 195, 0, 85)
	ScriptBox.BackgroundColor3 = Color3.new(0,0,0)
	ScriptBox.BackgroundTransparency = 0.5
	ScriptBox.Text = ""
	ScriptBox.TextColor = BrickColor.new("Institutional white")
	ScriptBox.TextXAlignment = "Left"
	ScriptBox.TextYAlignment = "Top"
	ScriptBox.ClearTextOnFocus = false
	ScriptBox.MultiLine = true
	ScriptBox.Transparency = 0.5
	ScriptBox.TextWrapped = true

RunSc = Instance.new("TextButton", ExecuteFrame)
	RunSc.Name = "RunScript"
	RunSc.Position = UDim2.new(0, -1, 0, 92)
	RunSc.Size = UDim2.new(0.050000000745058, 196, 0.050000000745058, 19)
	RunSc.Style = "RobloxButtonDefault"
	RunSc.Text = "Run Script"
	RunSc.TextColor = BrickColor.new("Institutional white")
	RunSc.TextTransparency = 0
		RunSc.MouseButton1Click:connect(function()
	delay(0.1,function()assert(loadstring(ScriptBox.Text))()end)
	end)
ClearScript = Instance.new("TextButton", ExecuteFrame)
	ClearScript.Name = "ClearScript"
	ClearScript.Position = UDim2.new(0, -1, 0, 117)
	ClearScript.Size = UDim2.new(0.050000000745058, 196, 0.050000000745058, 19)
	ClearScript.Style = "RobloxButtonDefault"
	ClearScript.Text = "Clear Script"
	ClearScript.TextColor = BrickColor.new("Institutional white")
		ClearScript.MouseButton1Click:connect(function()
	ScriptBox.Text = ("")
	end)



Exc = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Exc.Size = UDim2.new(0.0500000007, 72, 0.0500000007, 19)
Exc.Name = ("OpenScript")
Exc.Position = UDim2.new(0.0599999502, 5, 0.5, 384)
Exc.Text = ("Open Scripter")
Exc.TextColor3 = Color3.new(1, 1, 1)
Exc.Style = "RobloxButtonDefault"
Exc.Draggable = false
Exc.MouseButton1Click:connect(function()
game.CoreGui.Main.GuiButtons2.ExecuteFrame.Visible = true
Exc2.Visible = true
Exc.Visible = false
end)

Exc2 = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Exc2.Size = UDim2.new(0.0500000007, 72, 0.0500000007, 19)
Exc2.Name = ("CloseScript")
Exc2.Position = UDim2.new(0.0599999502, 5, 0.5, 384)
Exc2.Text = ("Close Scripter")
Exc2.TextColor3 = Color3.new(1, 1, 1)
Exc2.Style = "RobloxButtonDefault"
Exc2.Draggable = false
Exc2.Visible = false
Exc2.MouseButton1Click:connect(function()
game.CoreGui.Main.GuiButtons2.ExecuteFrame.Visible = false
Exc2.Visible = false
Exc.Visible = true
end)



MemeFrame = Instance.new("Frame")
	MemeFrame.Name = "MemeFrame"
	MemeFrame.Parent = game.CoreGui.Main
	MemeFrame.Position = UDim2.new(0, 379, 0, 88)
	MemeFrame.Size = UDim2.new(0, 496, 0, 217)
	MemeFrame.Style = Enum.FrameStyle.RobloxRound
	MemeFrame.Visible = false
	MemeFrame.Active = true
	MemeFrame.Draggable = true
	m = Instance.new("StringValue", game.CoreGui.Main)
m.Name = ("Meme")

function Party(root)
for _, v in pairs(root:GetChildren()) do
if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id="..game.CoreGui.Main.Meme.Value then
v.Parent = nil
elseif v:IsA("BasePart") then
v.Material = "Plastic"
v.Transparency = 0
One = Instance.new("Decal", v)
Two = Instance.new("Decal", v)
Three = Instance.new("Decal", v)
Four = Instance.new("Decal", v)
Five = Instance.new("Decal", v)
Six = Instance.new("Decal", v)
One.Texture = "http://www.roblox.com/asset/?id="..game.CoreGui.Main.Meme.Value
Two.Texture = "http://www.roblox.com/asset/?id="..game.CoreGui.Main.Meme.Value
Three.Texture = "http://www.roblox.com/asset/?id="..game.CoreGui.Main.Meme.Value
Four.Texture = "http://www.roblox.com/asset/?id="..game.CoreGui.Main.Meme.Value
Five.Texture = "http://www.roblox.com/asset/?id="..game.CoreGui.Main.Meme.Value
Six.Texture = "http://www.roblox.com/asset/?id="..game.CoreGui.Main.Meme.Value
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"
end
Party(v)
end
end


Row1 = Instance.new("ImageButton")
	Row1.Name = "Row1"
	Row1.Parent = MemeFrame
	Row1.Size = UDim2.new(0, 60, 0, 60)
	Row1.BackgroundColor = BrickColor.new("Really black")
	Row1.BackgroundTransparency = 0.5
	Row1.Image = "http://www.roblox.com/asset/?id=60890285"
	Row1.Transparency = 0.5

Row12 = Instance.new("ImageButton")
	Row12.Name = "Row1"
	Row12.Parent = MemeFrame
	Row12.Position = UDim2.new(0, 70, 0, 0)
	Row12.Size = UDim2.new(0, 60, 0, 60)
	Row12.BackgroundColor = BrickColor.new("Really black")
	Row12.BackgroundTransparency = 0.5
	Row12.Image = "http://www.roblox.com/asset/?id=56257168"
	Row12.Transparency = 0.5

Row13 = Instance.new("ImageButton")
	Row13.Name = "Row1"
	Row13.Parent = MemeFrame
	Row13.Position = UDim2.new(0, 140, 0, 0)
	Row13.Size = UDim2.new(0, 60, 0, 60)
	Row13.BackgroundColor = BrickColor.new("Really black")
	Row13.BackgroundTransparency = 0.5
	Row13.Image = "http://www.roblox.com/asset/?id=38353935"
	Row13.Transparency = 0.5

Row14 = Instance.new("ImageButton")
	Row14.Name = "Row1"
	Row14.Parent = MemeFrame
	Row14.Position = UDim2.new(0, 210, 0, 0)
	Row14.Size = UDim2.new(0, 60, 0, 60)
	Row14.BackgroundColor = BrickColor.new("Really black")
	Row14.BackgroundTransparency = 0.5
	Row14.Image = "http://www.roblox.com/asset/?id=41739431"
	Row14.Transparency = 0.5

Row15 = Instance.new("ImageButton")
	Row15.Name = "Row1"
	Row15.Parent = MemeFrame
	Row15.Position = UDim2.new(0, 280, 0, 0)
	Row15.Size = UDim2.new(0, 60, 0, 60)
	Row15.BackgroundColor = BrickColor.new("Really black")
	Row15.BackgroundTransparency = 0.5
	Row15.Image = "http://www.roblox.com/asset/?id=73504134"
	Row15.Transparency = 0.5

Row16 = Instance.new("ImageButton")
	Row16.Name = "Row1"
	Row16.Parent = MemeFrame
	Row16.Position = UDim2.new(0, 350, 0, 0)
	Row16.Size = UDim2.new(0, 60, 0, 60)
	Row16.BackgroundColor = BrickColor.new("Really black")
	Row16.BackgroundTransparency = 0.5
	Row16.Image = "http://www.roblox.com/asset/?id=76871429"
	Row16.Transparency = 0.5

Row17 = Instance.new("ImageButton")
	Row17.Name = "Row1"
	Row17.Parent = MemeFrame
	Row17.Position = UDim2.new(0, 420, 0, 0)
	Row17.Size = UDim2.new(0, 60, 0, 60)
	Row17.BackgroundColor = BrickColor.new("Really black")
	Row17.BackgroundTransparency = 0.5
	Row17.Image = "http://www.roblox.com/asset/?id=76871472"
	Row17.Transparency = 0.5

Row2 = Instance.new("ImageButton")
	Row2.Name = "Row2"
	Row2.Parent = MemeFrame
	Row2.Position = UDim2.new(0, 0, 0, 70)
	Row2.Size = UDim2.new(0, 60, 0, 60)
	Row2.BackgroundColor = BrickColor.new("Really black")
	Row2.BackgroundTransparency = 0.5
	Row2.Image = "http://www.roblox.com/asset/?id=76871551"
	Row2.Transparency = 0.5

Row22 = Instance.new("ImageButton")
	Row22.Name = "Row2"
	Row22.Parent = MemeFrame
	Row22.Position = UDim2.new(0, 70, 0, 70)
	Row22.Size = UDim2.new(0, 60, 0, 60)
	Row22.BackgroundColor = BrickColor.new("Really black")
	Row22.BackgroundTransparency = 0.5
	Row22.Image = "http://www.roblox.com/asset/?id=76871388"
	Row22.Transparency = 0.5

Row23 = Instance.new("ImageButton")
	Row23.Name = "Row2"
	Row23.Parent = MemeFrame
	Row23.Position = UDim2.new(0, 140, 0, 70)
	Row23.Size = UDim2.new(0, 60, 0, 60)
	Row23.BackgroundColor = BrickColor.new("Really black")
	Row23.BackgroundTransparency = 0.5
	Row23.Image = "http://www.roblox.com/asset/?id=76871415"
	Row23.Transparency = 0.5

Row24 = Instance.new("ImageButton")
	Row24.Name = "Row2"
	Row24.Parent = MemeFrame
	Row24.Position = UDim2.new(0, 210, 0, 70)
	Row24.Size = UDim2.new(0, 60, 0, 60)
	Row24.BackgroundColor = BrickColor.new("Really black")
	Row24.BackgroundTransparency = 0.5
	Row24.Image = "http://www.roblox.com/asset/?id=76870237"
	Row24.Transparency = 0.5

Row25 = Instance.new("ImageButton")
	Row25.Name = "Row2"
	Row25.Parent = MemeFrame
	Row25.Position = UDim2.new(0, 280, 0, 70)
	Row25.Size = UDim2.new(0, 60, 0, 60)
	Row25.BackgroundColor = BrickColor.new("Really black")
	Row25.BackgroundTransparency = 0.5
	Row25.Image = "http://www.roblox.com/asset/?id=65512002"
	Row25.Transparency = 0.5

Row26 = Instance.new("ImageButton")
	Row26.Name = "Row2"
	Row26.Parent = MemeFrame
	Row26.Position = UDim2.new(0, 350, 0, 70)
	Row26.Size = UDim2.new(0, 60, 0, 60)
	Row26.BackgroundColor = BrickColor.new("Really black")
	Row26.BackgroundTransparency = 0.5
	Row26.Image = "http://www.roblox.com/asset/?id=65511995"
	Row26.Transparency = 0.5

Row3 = Instance.new("ImageButton")
	Row3.Name = "Row3"
	Row3.Parent = MemeFrame
	Row3.Position = UDim2.new(0, 70, 0, 140)
	Row3.Size = UDim2.new(0, 60, 0, 60)
	Row3.BackgroundColor = BrickColor.new("Really black")
	Row3.BackgroundTransparency = 0.5
	Row3.Image = "http://www.roblox.com/asset/?id=76868523"
	Row3.Transparency = 0.5

Row32 = Instance.new("ImageButton")
	Row32.Name = "Row3"
	Row32.Parent = MemeFrame
	Row32.Position = UDim2.new(0, 280, 0, 140)
	Row32.Size = UDim2.new(0, 60, 0, 60)
	Row32.BackgroundColor = BrickColor.new("Really black")
	Row32.BackgroundTransparency = 0.5
	Row32.Image = "http://www.roblox.com/asset/?id=84688073"
	Row32.Transparency = 0.5

Row33 = Instance.new("ImageButton")
	Row33.Name = "Row3"
	Row33.Parent = MemeFrame
	Row33.Position = UDim2.new(0, 425, 0, 145)
	Row33.Size = UDim2.new(0, 50, 0, 50)
	Row33.BackgroundColor = BrickColor.new("Really black")
	Row33.BackgroundTransparency = 0.5
	Row33.Transparency = 0.5

TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = Row33
	TextLabel.Position = UDim2.new(0, 25, 0, 25)
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.FontSize = Enum.FontSize.Size14
	TextLabel.Text = "Clear"
	TextLabel.TextColor = BrickColor.new("Institutional white")

Row34 = Instance.new("ImageButton")
	Row34.Name = "Row3"
	Row34.Parent = MemeFrame
	Row34.Position = UDim2.new(0, 350, 0, 140)
	Row34.Size = UDim2.new(0, 60, 0, 60)
	Row34.BackgroundColor = BrickColor.new("Really black")
	Row34.BackgroundTransparency = 0.5
	Row34.Image = "http://www.roblox.com/asset/?id=108377196"
	Row34.Transparency = 0.5

Row35 = Instance.new("ImageButton")
	Row35.Name = "Row3"
	Row35.Parent = MemeFrame
	Row35.Position = UDim2.new(0, 0, 0, 140)
	Row35.Size = UDim2.new(0, 60, 0, 60)
	Row35.BackgroundColor = BrickColor.new("Really black")
	Row35.BackgroundTransparency = 0.5
	Row35.Image = "http://www.roblox.com/asset/?id=76870257"
	Row35.Transparency = 0.5

Row36 = Instance.new("ImageButton")
	Row36.Name = "Row3"
	Row36.Parent = MemeFrame
	Row36.Position = UDim2.new(0, 210, 0, 140)
	Row36.Size = UDim2.new(0, 60, 0, 60)
	Row36.BackgroundColor = BrickColor.new("Really black")
	Row36.BackgroundTransparency = 0.5
	Row36.Image = "http://www.roblox.com/asset/?id=65512006"
	Row36.Transparency = 0.5

Row37 = Instance.new("ImageButton")
	Row37.Name = "Row3"
	Row37.Parent = MemeFrame
	Row37.Position = UDim2.new(0, 140, 0, 140)
	Row37.Size = UDim2.new(0, 60, 0, 60)
	Row37.BackgroundColor = BrickColor.new("Really black")
	Row37.BackgroundTransparency = 0.5
	Row37.Image = "http://www.roblox.com/asset/?id=96074154"
	Row37.Transparency = 0.5

Row27 = Instance.new("ImageButton")
	Row27.Name = "Row2"
	Row27.Parent = MemeFrame
	Row27.Position = UDim2.new(0, 420, 0, 70)
	Row27.Size = UDim2.new(0, 60, 0, 60)
	Row27.BackgroundColor = BrickColor.new("Really black")
	Row27.BackgroundTransparency = 0.5
	Row27.Image = "http://www.roblox.com/asset/?id=76870098"
	Row27.Transparency = 0.5

Face1 = Instance.new("TextButton")
	Face1.Name = "Face"
	Face1.Parent = MemeFrame
	Face1.Position = UDim2.new(0, -2, 0.0010000000474975, 209)
	Face1.Size = UDim2.new(0, 135, 0, 18)
	Face1.BackgroundColor3 = Color3.new(0,0,0)
	Face1.BackgroundTransparency = 0.30000001192093
	Face1.BorderSizePixel = 0
	Face1.Text = "Add to face"
	Face1.TextColor = BrickColor.new("Institutional white")
	Face1.Transparency = 0.30000001192093
	Face1.FontSize = "Size11"
	Face1.Font = "ArialBold"
Parts = Instance.new("TextButton")
	Parts.Name = "Parts"
	Parts.Parent = MemeFrame
	Parts.Position = UDim2.new(0, 347, 0.0010000000474975, 209)
	Parts.Size = UDim2.new(0, 135, 0, 18)
	Parts.BackgroundColor3 = Color3.new(0,0,0)
	Parts.BackgroundTransparency = 0.30000001192093
	Parts.BorderSizePixel = 0
	Parts.Text = "Add to all Parts"
	Parts.TextColor = BrickColor.new("Institutional white")
	Parts.Transparency = 0.30000001192093
	Parts.FontSize = "Size11"
	Parts.Font = "ArialBold"
--Row 1
Row1.MouseButton1Click:connect(function()
m.Value = ("60890285")
end)
Row12.MouseButton1Click:connect(function()
m.Value = ("56257168")
end)
Row13.MouseButton1Click:connect(function()
m.Value = ("38353935")
end)
Row14.MouseButton1Click:connect(function()
m.Value = ("41739431")
end)
Row15.MouseButton1Click:connect(function()
m.Value = ("73504134")
end)
Row16.MouseButton1Click:connect(function()
m.Value = ("76871429")
end)
Row17.MouseButton1Click:connect(function()
m.Value = ("76871472")
end)
--Row 2
Row2.MouseButton1Click:connect(function()
m.Value = ("76871551")
end)
Row22.MouseButton1Click:connect(function()
m.Value = ("84688073")
end)
Row23.MouseButton1Click:connect(function()
m.Value = ("76871415")
end)
Row24.MouseButton1Click:connect(function()
m.Value = ("76870237")
end)
Row25.MouseButton1Click:connect(function()
m.Value = ("65512002")
end)
Row26.MouseButton1Click:connect(function()
m.Value = ("65511995")
end)
Row27.MouseButton1Click:connect(function()
m.Value = ("76870098")
end)
--Row 3
Row3.MouseButton1Click:connect(function()
m.Value = ("76868523")
end)
Row32.MouseButton1Click:connect(function()
m.Value = ("84688073")
end)
Row33.MouseButton1Click:connect(function()--Clear Button
m.Value = ("")
end)
Row34.MouseButton1Click:connect(function()
m.Value = ("108377196")
end)
Row35.MouseButton1Click:connect(function()
m.Value = ("76870257")
end)
Row36.MouseButton1Click:connect(function()
m.Value = ("65512006")
end)
Row37.MouseButton1Click:connect(function()
m.Value = ("96074154")
end)
--Buttons!
Parts.MouseButton1Click:connect(function()
Party(workspace)
end)
Face1.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id="..m.Value
end)


	MeMe = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
MeMe.Size = UDim2.new(0.0500000007, 72, 0.0500000007, 19)
MeMe.Name = ("OpenMeme")
MeMe.Position = UDim2.new(0.0599999502, 5, 0.5, 361)
MeMe.Text = ("Open Memes")
MeMe.TextColor3 = Color3.new(1, 1, 1)
MeMe.Style = "RobloxButtonDefault"
MeMe.Draggable = false
MeMe.MouseButton1Click:connect(function()
MemeFrame.Visible = true
MeMe.Visible = false
MeMe2.Visible = true
end)

	MeMe2 = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
MeMe2.Size = UDim2.new(0.0500000007, 72, 0.0500000007, 19)
MeMe2.Name = ("CloseMeme")
MeMe2.Position = UDim2.new(0.0599999502, 5, 0.5, 361)
MeMe2.Text = ("Close Memes")
MeMe2.TextColor3 = Color3.new(1, 1, 1)
MeMe2.Style = "RobloxButtonDefault"
MeMe2.Draggable = false
MeMe2.Visible = false
MeMe2.MouseButton1Click:connect(function()
MemeFrame.Visible = false
MeMe.Visible = true
MeMe2.Visible = false
end)


KickText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons2)
KickText.BackgroundColor3 = Color3.new(1, 1, 1)
KickText.Name = ("KickText")
KickText.ClearTextOnFocus = true
KickText.Font = "ArialBold"
KickText.FontSize = "Size11"
KickText.Position = UDim2.new(0.129999936, 88, 0.615999818, 338)
KickText.Size = UDim2.new(0.0500000007, 125, 0.0500000007, 17)
KickText.Text = "Player Name"
KickText.ClipsDescendants = true
KickText.BackgroundTransparency = ("0.5")

Kick = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Kick.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
Kick.Name = ("Kick")
Kick.Position = UDim2.new(0.0599999502, 5, 0.5, 338)
Kick.Text = ("Kick")
Kick.TextColor3 = Color3.new(1, 1, 1)
Kick.Style = "RobloxButtonDefault"
Kick.Draggable = false

Kick.MouseButton1Click:connect(function()
plrt = KickText.Text
game.Players[plrt]:Remove()
end)


BanText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons2)
BanText.BackgroundColor3 = Color3.new(1, 1, 1)
BanText.Name = ("BanText")
BanText.ClearTextOnFocus = true
BanText.Font = "ArialBold"
BanText.FontSize = "Size11"
BanText.Position = UDim2.new(0.129999936, 88, 0.615999818, 315)
BanText.Size = UDim2.new(0.0500000007, 125, 0.0500000007, 17)
BanText.Text = "Player Name"
BanText.ClipsDescendants = true
BanText.BackgroundTransparency = ("0.5")

Ban = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Ban.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
Ban.Name = ("Ban")
Ban.Position = UDim2.new(0.0599999502, 5, 0.5, 315)
Ban.Text = ("Ban")
Ban.TextColor3 = Color3.new(1, 1, 1)
Ban.Style = "RobloxButtonDefault"
Ban.Draggable = false

Ban.MouseButton1Click:connect(function()
plrg = BanText.Text
while true do
wait()
game.Players[plrg]:Remove()
end
end)

TripText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons2)
TripText.BackgroundColor3 = Color3.new(1, 1, 1)
TripText.Name = ("TripText")
TripText.ClearTextOnFocus = true
TripText.Font = "ArialBold"
TripText.FontSize = "Size11"
TripText.Position = UDim2.new(0.129999936, 88, 0.615999818, 292)
TripText.Size = UDim2.new(0.0500000007, 125, 0.0500000007, 17)
TripText.Text = "Player Name"
TripText.ClipsDescendants = true
TripText.BackgroundTransparency = ("0.5")

Trip = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Trip.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
Trip.Name = ("Trip")
Trip.Position = UDim2.new(0.0599999502, 5, 0.5, 292)
Trip.Text = ("Trip")
Trip.TextColor3 = Color3.new(1, 1, 1)
Trip.Style = "RobloxButtonDefault"
Trip.Draggable = false

Trip.MouseButton1Click:connect(function()
plrh = TripText.Text
game.Players[plrh].Character.Humanoid.PlatformStand = true
wait(0.7)
game.Players[plrh].Character.Humanoid.PlatformStand = false
end)

Hide = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Hide.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
Hide.Name = ("Hide")
Hide.Position = UDim2.new(0.0599999502, 5, 0.5, 269)
Hide.Text = ("Hide Tools")
Hide.TextColor3 = Color3.new(1, 1, 1)
Hide.Style = "RobloxButtonDefault"
Hide.Draggable = false

Hide.MouseButton1Click:connect(function()
for _, v in pairs(me.Backpack:GetChildren()) do
if v:IsA("Tool") then
v.Handle.Transparency = 1
end
end
Hide.Visible = false
Show.Visible = true
end)

Show = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Show.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
Show.Name = ("Show")
Show.Position = UDim2.new(0.0599999502, 5, 0.5, 269)
Show.Text = ("Show Tools")
Show.TextColor3 = Color3.new(1, 1, 1)
Show.Style = "RobloxButtonDefault"
Show.Draggable = false
Show.Visible = false

Show.MouseButton1Click:connect(function()
for _, v in pairs(me.Backpack:GetChildren()) do
if v:IsA("Tool") then
v.Handle.Transparency = 0
end
end
Hide.Visible = true
Show.Visible = false
end)

FreezeText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons2)
FreezeText.BackgroundColor3 = Color3.new(1, 1, 1)
FreezeText.Name = ("FreezeText")
FreezeText.ClearTextOnFocus = true
FreezeText.Font = "ArialBold"
FreezeText.FontSize = "Size11"
FreezeText.Position = UDim2.new(0.129999936, 88, 0.615999818, 246)
FreezeText.Size = UDim2.new(0.0500000007, 125, 0.0500000007, 17)
FreezeText.Text = "Player Name"
FreezeText.ClipsDescendants = true
FreezeText.BackgroundTransparency = ("0.5")

Freeze = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Freeze.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
Freeze.Name = ("Freeze")
Freeze.Position = UDim2.new(0.0599999502, 5, 0.5, 246)
Freeze.Text = ("Freeze")
Freeze.TextColor3 = Color3.new(1, 1, 1)
Freeze.Style = "RobloxButtonDefault"
Freeze.Draggable = false

Freeze.MouseButton1Click:connect(function()
Freeze.Visible = false
UnFreeze.Visible = true
gg = FreezeText.Text
game.Players[gg].Character.Humanoid.PlatformStand = true
game.Players[gg].Character.Torso.Anchored = true
game.Players[gg].Character.Humanoid.Walkspeed = 0

end)

UnFreeze = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
UnFreeze.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
UnFreeze.Name = ("UnFreeze")
UnFreeze.Position = UDim2.new(0.0599999502, 5, 0.5, 246)
UnFreeze.Text = ("Un Freeze")
UnFreeze.TextColor3 = Color3.new(1, 1, 1)
UnFreeze.Style = "RobloxButtonDefault"
UnFreeze.Draggable = false
UnFreeze.Visible = false

UnFreeze.MouseButton1Click:connect(function()
Freeze.Visible = true
UnFreeze.Visible = false
gg = FreezeText.Text
game.Players[gg].Character.Humanoid.PlatformStand = false
game.Players[gg].Character.Torso.Anchored = false
game.Players[gg].Character.Humanoid.Walkspeed = 16
end)

BCFrame = Instance.new("Frame")
	BCFrame.Name = "BCFrame"
	BCFrame.Parent = game.CoreGui.Main.GuiButtons2
	BCFrame.Active = true
	BCFrame.Position = UDim2.new(0, 354, 0, 94)
	BCFrame.Size = UDim2.new(0, 125, 0, 102)
	BCFrame.BackgroundColor = BrickColor.new("Really black")
	BCFrame.BackgroundTransparency = 0.5
	BCFrame.Transparency = 0.5
	BCFrame.Visible = false

BCText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons2)
	BCText.BackgroundColor3 = Color3.new(1, 1, 1)
	BCText.Name = ("BCText")
	BCText.ClearTextOnFocus = true
	BCText.Font = "ArialBold"
	BCText.FontSize = "Size11"
	BCText.Position = UDim2.new(0.129999936, 88, 0.615999818, 223)
	BCText.Size = UDim2.new(0.0500000007, 125, 0.0500000007, 17)
	BCText.Text = "Player Name"
	BCText.ClipsDescendants = true
	BCText.BackgroundTransparency = ("0.5")


OBC = Instance.new("TextButton")
	OBC.Name = "OBC"
	OBC.Parent = BCFrame
	OBC.Position = UDim2.new(0, 4, 0, 2)
	OBC.Size = UDim2.new(0.050000000745058, 111, 0.050000000745058, 19)
	OBC.Style = "RobloxButtonDefault"
	OBC.Text = "OBC"
	OBC.TextColor = BrickColor.new("Institutional white")

OBC.MouseButton1Click:connect(function()
	lto = BCText.Text
	game.Players[lto]:SetMembershipType(Enum.MembershipType.OutrageousBuildersClub)
end)
TBC = Instance.new("TextButton")
	TBC.Name = "TBC"
	TBC.Parent = BCFrame
	TBC.Position = UDim2.new(0, 4, 0, 27)
	TBC.Size = UDim2.new(0.050000000745058, 111, 0.050000000745058, 19)
	TBC.Style = "RobloxButtonDefault"
	TBC.Text = "TBC"
	TBC.TextColor = BrickColor.new("Institutional white")
TBC.MouseButton1Click:connect(function()
	lto = BCText.Text
	game.Players[lto]:SetMembershipType(Enum.MembershipType.TurboBuildersClub)
end)

BC = Instance.new("TextButton")
	BC.Name = "BC"
	BC.Parent = BCFrame
	BC.Position = UDim2.new(0, 4, 0, 52)
	BC.Size = UDim2.new(0.050000000745058, 111, 0.050000000745058, 19)
	BC.Style = "RobloxButtonDefault"
	BC.Text = "BC"
	BC.TextColor = BrickColor.new("Institutional white")
BC.MouseButton1Click:connect(function()
	lto = BCText.Text
	game.Players[lto]:SetMembershipType(Enum.MembershipType.BuildersClub);
end)

NBC = Instance.new("TextButton")
	NBC.Name = "NBC"
	NBC.Parent = BCFrame
	NBC.Position = UDim2.new(0, 4, 0, 77)
	NBC.Size = UDim2.new(0.050000000745058, 111, 0.050000000745058, 19)
	NBC.Style = "RobloxButtonDefault"
	NBC.Text = "NBC"
	NBC.TextColor = BrickColor.new("Institutional white")
NBC.MouseButton1Click:connect(function()
	lto = BCText.Text
	game.Players[lto]:SetMembershipType(Enum.MembershipType.None);
end)

BC = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
BC.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
BC.Name = ("BC")
BC.Position = UDim2.new(0.0599999502, 5, 0.5, 223)
BC.Text = ("BC options")
BC.TextColor3 = Color3.new(1, 1, 1)
BC.Style = "RobloxButtonDefault"
BC.Draggable = false

BC.MouseButton1Click:connect(function()
BCFrame.Visible = true
BC.Visible = false
CloseBC.Visible = true
end)

CloseBC = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
CloseBC.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
CloseBC.Name = ("CloseBC")
CloseBC.Position = UDim2.new(0.0599999502, 5, 0.5, 223)
CloseBC.Text = ("Close options")
CloseBC.TextColor3 = Color3.new(1, 1, 1)
CloseBC.Style = "RobloxButtonDefault"
CloseBC.Draggable = false
CloseBC.Visible = false

CloseBC.MouseButton1Click:connect(function()
BCFrame.Visible = false
CloseBC.Visible = false
BC.Visible = true
end)


ChatText = Instance.new("TextBox", game.CoreGui.Main.GuiButtons2)
	ChatText.BackgroundColor3 = Color3.new(1, 1, 1)
	ChatText.Name = ("ChatText")
	ChatText.ClearTextOnFocus = true
	ChatText.Font = "ArialBold"
	ChatText.FontSize = "Size11"
	ChatText.Position = UDim2.new(0.129999936, 88, 0.615999818, 200)
	ChatText.Size = UDim2.new(0.0500000007, 125, 0.0500000007, 17)
	ChatText.Text = "Chat Text Here"
	ChatText.ClipsDescendants = true
	ChatText.BackgroundTransparency = ("0.5")

Chat = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Chat.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
Chat.Name = ("Chat")
Chat.Position = UDim2.new(0.0599999502, 5, 0.5, 200)
Chat.Text = ("Spam")
Chat.TextColor3 = Color3.new(1, 1, 1)
Chat.Style = "RobloxButtonDefault"
Chat.Draggable = false

Chat.MouseButton1Click:connect(function()
g = 1
c = ChatText.Text
for i=1, g do
game.Players:Chat(c)
end
end)
end)

local exle = Instance.new("TextButton")
exle.Parent = textbox
exle.Position = UDim2.new(-0.46,0,0.24,0)
exle.Size = UDim2.new(0.1,0,0,25)
exle.BackgroundColor = BrickColor.new("Really black")
exle.Font = "ArialBold"
exle.FontSize = "Size14"
exle.TextColor3 = Color3.new(255/255,255/255,255/255)
exle.BorderSizePixel = 0
exle.Text = "AntiBanEnable"
exle.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.RobloxLocked = true
game.Players.LocalPlayer.RobloxLocked = true
game:GetService("ScriptContext").ScriptsDisabled = true
end)

local exlee = Instance.new("TextButton")
exlee.Parent = textbox
exlee.Position = UDim2.new(-0.46,0,0.36,0)
exlee.Size = UDim2.new(0.1,0,0,25)
exlee.BackgroundColor = BrickColor.new("Really black")
exlee.Font = "ArialBold"
exlee.FontSize = "Size14"
exlee.TextColor3 = Color3.new(255/255,255/255,255/255)
exlee.BorderSizePixel = 0
exlee.Text = "AntiBanDisable"
exlee.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.RobloxLocked = false
game.Players.LocalPlayer.RobloxLocked = false
game:GetService("ScriptContext").ScriptsDisabled = false
end)

local exleee = Instance.new("TextButton")
exleee.Parent = textbox
exleee.Position = UDim2.new(-0.46,0,0.48,0)
exleee.Size = UDim2.new(0.1,0,0,25)
exleee.BackgroundColor = BrickColor.new("Really black")
exleee.Font = "ArialBold"
exleee.FontSize = "Size14"
exleee.TextColor3 = Color3.new(255/255,255/255,255/255)
exleee.BorderSizePixel = 0
exleee.Text = "Knife"
exleee.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://92001561")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local exleeeee = Instance.new("TextButton")
exleeeee.Parent = textbox
exleeeee.Position = UDim2.new(-0.46,0,0.72,0)
exleeeee.Size = UDim2.new(0.1,0,0,25)
exleeeee.BackgroundColor = BrickColor.new("Really black")
exleeeee.Font = "ArialBold"
exleeeee.FontSize = "Size14"
exleeeee.TextColor3 = Color3.new(255/255,255/255,255/255)
exleeeee.BorderSizePixel = 0
exleeeee.Text = "Night"
exleeeee.MouseButton1Down:connect(function()
game.Lighting.TimeOfDay = 1
end)

local fpaafu = Instance.new("TextButton")
fpaafu.Parent = textbox
fpaafu.Position = UDim2.new(-0.34,0,0.84,0)
fpaafu.Size = UDim2.new(0.1,0,0,25)
fpaafu.BackgroundColor = BrickColor.new("Really black")
fpaafu.Font = "ArialBold"
fpaafu.FontSize = "Size14"
fpaafu.TextColor3 = Color3.new(255/255,255/255,255/255)
fpaafu.BorderSizePixel = 0
fpaafu.Text = "Day"
fpaafu.MouseButton1Down:connect(function()
game.Lighting.TimeOfDay = 10
end)

local textbutton = Instance.new("TextButton")
textbutton.Parent = textbox
textbutton.BackgroundColor = BrickColor.new("Really black")
textbutton.Font = "ArialBold"
textbutton.FontSize = "Size14"
textbutton.Position = UDim2.new(0,0,1,0)
textbutton.Size = UDim2.new(1,0,0.1,0)
textbutton.TextColor3 = Color3.new(255/255,255/255,255/255)
textbutton.BorderSizePixel = 0
textbutton.Text = "Execute LoadString"

local asdd = Instance.new("TextButton")
asdd.Parent = textbox
asdd.Position = UDim2.new(-0.1,0,0.12,0)
asdd.Size = UDim2.new(0.1,0,0,25)
asdd.BackgroundColor = BrickColor.new("Really black")
asdd.Font = "ArialBold"
asdd.FontSize = "Size14"
asdd.TextColor3 = Color3.new(255/255,255/255,255/255)
asdd.BorderSizePixel = 0
asdd.Text = "Orb"
asdd.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://137285524")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local asddd = Instance.new("TextButton")
asddd.Parent = textbox
asddd.Position = UDim2.new(-0.1,0,0.24,0)
asddd.Size = UDim2.new(0.1,0,0,25)
asddd.BackgroundColor = BrickColor.new("Really black")
asddd.Font = "ArialBold"
asddd.FontSize = "Size14"
asddd.TextColor3 = Color3.new(255/255,255/255,255/255)
asddd.BorderSizePixel = 0
asddd.Text = "Ohgal"
asddd.MouseButton1Down:connect(function()
str_srce = "143944387" loadstring(game:GetObjects("rbxassetid://"..str_srce)[1].Source)()
end)

local ty = Instance.new("TextButton")
ty.Parent = textbox
ty.Position = UDim2.new(-0.1,0,0.60,0)
ty.Size = UDim2.new(0.1,0,0,25)
ty.BackgroundColor = BrickColor.new("Really black")
ty.Font = "ArialBold"
ty.FontSize = "Size14"
ty.TextColor3 = Color3.new(255/255,255/255,255/255)
ty.BorderSizePixel = 0
ty.Text = "MasterHand"
ty.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://136424786")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local tyy = Instance.new("TextButton")
tyy.Parent = textbox
tyy.Position = UDim2.new(-0.1,0,0.72,0)
tyy.Size = UDim2.new(0.1,0,0,25)
tyy.BackgroundColor = BrickColor.new("Really black")
tyy.Font = "ArialBold"
tyy.FontSize = "Size14"
tyy.TextColor3 = Color3.new(255/255,255/255,255/255)
tyy.BorderSizePixel = 0
tyy.Text = "SuicideVest"
tyy.MouseButton1Down:connect(function()
loadstring(Game:GetObjects("rbxassetid://142429056")[1].Source)()
wait(0.5)
game.Players.LocalPlayer.PlayerGui.Message:remove()
end)

local aasddd = Instance.new("TextButton")
aasddd.Parent = textbox
aasddd.Position = UDim2.new(-0.1,0,0.36,0)
aasddd.Size = UDim2.new(0.1,0,0,25)
aasddd.BackgroundColor = BrickColor.new("Really black")
aasddd.Font = "ArialBold"
aasddd.FontSize = "Size14"
aasddd.TextColor3 = Color3.new(255/255,255/255,255/255)
aasddd.BorderSizePixel = 0
aasddd.Text = "Infinity"
aasddd.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://142036884")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local aaddd = Instance.new("TextButton")
aaddd.Parent = textbox
aaddd.Position = UDim2.new(-0.1,0,0.48,0)
aaddd.Size = UDim2.new(0.1,0,0,25)
aaddd.BackgroundColor = BrickColor.new("Really black")
aaddd.Font = "ArialBold"
aaddd.FontSize = "Size14"
aaddd.TextColor3 = Color3.new(255/255,255/255,255/255)
aaddd.BorderSizePixel = 0
aaddd.Text = "Music(BROKE)"
aaddd.MouseButton1Down:connect(function()
local s = Instance.new("Sound", game.Workspace) s.SoundId = "http://www.roblox.com/asset/?id=" .. textbxn.Text s.Volume = 1 s.Pitch = pitch s.Looped = true s.archivable = false repeat s:Play() wait(2.5) s:Stop() wait(.5) s:Play() until s.IsPlaying
end)

local aadddc = Instance.new("TextButton")
aadddc.Parent = textbox
aadddc.Position = UDim2.new(-0.1,0,0.84,0)
aadddc.Size = UDim2.new(0.1,0,0,25)
aadddc.BackgroundColor = BrickColor.new("Really black")
aadddc.Font = "ArialBold"
aadddc.FontSize = "Size14"
aadddc.TextColor3 = Color3.new(255/255,255/255,255/255)
aadddc.BorderSizePixel = 0
aadddc.Text = "Scythe"
aadddc.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://143951738")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local faadddc = Instance.new("TextButton")
faadddc.Parent = textbox
faadddc.Position = UDim2.new(-0.22,0,0,0)
faadddc.Size = UDim2.new(0.1,0,0,25)
faadddc.BackgroundColor = BrickColor.new("Really black")
faadddc.Font = "ArialBold"
faadddc.FontSize = "Size14"
faadddc.TextColor3 = Color3.new(255/255,255/255,255/255)
faadddc.BorderSizePixel = 0
faadddc.Text = "WarHammer"
faadddc.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://143947531")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local red = Instance.new("TextButton")
red.Parent = textbox
red.Position = UDim2.new(-0.22,0,0.84,0)
red.Size = UDim2.new(0.1,0,0,25)
red.BackgroundColor = BrickColor.new("Really black")
red.Font = "ArialBold"
red.FontSize = "Size14"
red.TextColor3 = Color3.new(255/255,255/255,255/255)
red.BorderSizePixel = 0
red.Text = "Draw Tool"
red.MouseButton1Down:connect(function()
loadstring(game:GetObjects("rbxassetid://96727044")[1].Source)()
end)

local redd = Instance.new("TextButton")
redd.Parent = textbox
redd.Position = UDim2.new(-0.22,0,0.72,0)
redd.Size = UDim2.new(0.1,0,0,25)
redd.BackgroundColor = BrickColor.new("Really black")
redd.Font = "ArialBold"
redd.FontSize = "Size14"
redd.TextColor3 = Color3.new(255/255,255/255,255/255)
redd.BorderSizePixel = 0
redd.Text = "Blue"
redd.MouseButton1Down:connect(function()
game.Lighting.Ambient = Color3.new(0,0,153)
end)

local reddd = Instance.new("TextButton")
reddd.Parent = textbox
reddd.Position = UDim2.new(-0.22,0,0.60,0)
reddd.Size = UDim2.new(0.1,0,0,25)
reddd.BackgroundColor = BrickColor.new("Really black")
reddd.Font = "ArialBold"
reddd.FontSize = "Size14"
reddd.TextColor3 = Color3.new(255/255,255/255,255/255)
reddd.BorderSizePixel = 0
reddd.Text = "Clear Workspace"
reddd.MouseButton1Down:connect(function()
game.Workspace:ClearAllChildren()
end)

local redddd = Instance.new("TextButton")
redddd.Parent = textbox
redddd.Position = UDim2.new(-0.22,0,0.48,0)
redddd.Size = UDim2.new(0.1,0,0,25)
redddd.BackgroundColor = BrickColor.new("Really black")
redddd.Font = "ArialBold"
redddd.FontSize = "Size14"
redddd.TextColor3 = Color3.new(255/255,255/255,255/255)
redddd.BorderSizePixel = 0
redddd.Text = "Shutdown"
redddd.MouseButton1Down:connect(function()
local tbag=game.Players:GetPlayers()
for i=1,#tbag do
tbag[i].RobloxLocked=false --Nice try!
tbag[i]:Destroy()
end
end)

local reddddd = Instance.new("TextButton")
reddddd.Parent = textbox
reddddd.Position = UDim2.new(-0.22,0,0.36,0)
reddddd.Size = UDim2.new(0.1,0,0,25)
reddddd.BackgroundColor = BrickColor.new("Really black")
reddddd.Font = "ArialBold"
reddddd.FontSize = "Size14"
reddddd.TextColor3 = Color3.new(255/255,255/255,255/255)
reddddd.BorderSizePixel = 0
reddddd.Text = "Spider"
reddddd.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://137265181")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local eddddd = Instance.new("TextButton")
eddddd.Parent = textbox
eddddd.Position = UDim2.new(-0.22,0,0.24,0)
eddddd.Size = UDim2.new(0.1,0,0,25)
eddddd.BackgroundColor = BrickColor.new("Really black")
eddddd.Font = "ArialBold"
eddddd.FontSize = "Size14"
eddddd.TextColor3 = Color3.new(255/255,255/255,255/255)
eddddd.BorderSizePixel = 0
eddddd.Text = "Gauntlet"
eddddd.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://142496704")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local edddd = Instance.new("TextButton")
edddd.Parent = textbox
edddd.Position = UDim2.new(-0.22,0,0.12,0)
edddd.Size = UDim2.new(0.1,0,0,25)
edddd.BackgroundColor = BrickColor.new("Really black")
edddd.Font = "ArialBold"
edddd.FontSize = "Size14"
edddd.TextColor3 = Color3.new(255/255,255/255,255/255)
edddd.BorderSizePixel = 0
edddd.Text = "LaserRifle"
edddd.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://140411727")[1].Parent=game.Players.LocalPlayer.Backpack
end)

local asd = Instance.new("TextButton")
asd.Parent = textbox
asd.Position = UDim2.new(-0.1,0,0,0)
asd.Size = UDim2.new(0.1,0,0,25)
asd.BackgroundColor = BrickColor.new("Really black")
asd.Font = "ArialBold"
asd.FontSize = "Size14"
asd.TextColor3 = Color3.new(255/255,255/255,255/255)
asd.BorderSizePixel = 0
asd.Text = "Wings"
asd.MouseButton1Down:connect(function()
game:GetObjects("rbxassetid://136322458")[1].Parent=game.Players.LocalPlayer.Backpack
end)

textbutton.MouseButton1Down:connect(function()
pcall(function()
loadstring(textbox.Text)()
end)
end)
end)

loadmsg = Instance.new("Hint")
loadmsg.Parent = game.Workspace
loadmsg.Text = ("Team Eternity exploit")
wait(3)
loadmsg:Remove()

local Main=function()

A={};
A.Old={};
A.Data={};
A.User={};
A.Calls={};
A.Images={};
A.Stuffs={};
A.Sounds={};
A.Modules={};
A.Service={};
A.Settings={};
A.Commands={};
A.Warehouse={};
A.Functions={};
A.EachCalls={};
A.GuiModules={};
A.SettingIDs={};
A.KeyCommands={};
A.ObjectsData={};
A.RecentCommands={};
A.SettingsFunctions={};

A.Stuffs.Meter={};
A.Warehouse.Objects={};
A.Warehouse.Connections={};

A.ObjectsData.KnowProperties={};
A.ObjectsData.KnowPropertiesNumber={};
A.ObjectsData.GlobalProperties={'Name';'className';'Parent';'archivable';};
A.ObjectsData.EspecialProperties={'AbsolutePosition';'AbsoluteSize';'AccountAge';'AccountAgeReplicate';
	'Active';'Adornee';'AllowAmbientOcclusion';'AllowTeamChangeOnTouch';'AluminumQuality';
	'AlwaysOnTop';'Ambient';'AmbientReverb';'Anchored';'Angularvelocity';'AnimationId';
	'AreHingesDetected';'AttachmentForward';'AttachmentPoint';'AttachmentPos';
	'AttachmentRight';'AttachmentUp';'AutoAssignable';'AutoButtonColor';'AutoColorCharacters';
	'AvailablePhysicalMemory';'Axes';'BackgroundColor';'BackgroundColor3';'BackgroundTransparency';
	'BaseTextureId';'BaseUrl';'Bevel';'Roundness';'BinType';'BlastPressure';'BlastRadius';
	'BodyColor';'BodyPart';'BorderColor';'BorderColor3';'BorderSizePixel';'BrickColor';
	'Brightness';'Browsable';'BubbleChat';'BubbleChatLifetime';'BubbleChatMaxBubbles';
	'Bulge';'Button1DownConnectionCount';'Button1UpConnectionCount';'Button2DownConnectionCount';
	'Button2UpConnectionCount';'C0';'C1';'CameraMode';'CameraSubject';'CameraType';
	'CanBeDropped';'CanCollide';'CartoonFactor';'CastShadows';'CelestialBodiesShown';
	'CFrame';'Cframe';'Character';'CharacterAppearance';'CharacterAutoLoads';'ChatScrollLength';
	'ClassicChat';'ClearTextOnFocus';'ClipsDescendants';'CollisionSoundEnabled';
	'CollisionSoundVolume';'Color';'Bottom';'Top';'ConstrainedValue';'ControllingHumanoid';
	'ControlMode';'ConversationDistance';'CoordinateFrame';'CorrodedMetalQuality';'CPU';
	'CpuCount';'CpuSpeed';'CreatorId';'CreatorType';'CurrentAngle';'CurrentCamera';
	'CycleOffset';'D';'DataCap';'DataComplexity';'DataComplexityLimit';'DataCost';
	'DataReady';'Deprecated';'DeselectedConnectionCount';'DesiredAngle';'DiamondPlateQuality';
	'Disabled';'DistanceFactor';'DistributedGameTime';'DopplerScale';'Draggable';'DraggingV1';
	'Duration';'EditorFont';'EditorFontSize';'EditorTabWidth';'ElapsedTime';'Elasticity';
	'Enabled';'ExplosionType';'ExtentsOffset';'F0';'F1';'F2';'F3';'Face';'FaceId';'Faces';
	'FieldOfView';'Focus';'FogColor';'FogEnd';'FogStart';'Font';'FontSize';'Force';'FormFactor';
	'Friction';'From';'GearGenreSetting';'Genre';'GeographicLatitude';'GfxCard';'Graphic';
	'GrassQuality';'Grip';'GripForward';'GripPos';'GripRight';'GripUp';'Guest';'HeadsUpDisplay';
	'Health';'Heat';'Hit';'Humanoid';'IceQuality';'Icon';'IdleConnectionCount';'Image';
	'InitialPrompt';'InOut';'InUse';'IsPaused';'IsPlaying';'JobId';'Jump';'KeyDownConnectionCount';
	'KeyUpConnectionCount';'LeftLeg';'LeftRight';'LinkedSource';'LocalPlayer';'Location';
	'Locked';'LODX';'LODY';'Looped';'Material';'MaxActivationDistance';'MaxCollisionSounds';
	'MaxExtents';'MaxForce';'MaxHealth';'MaxItems';'MaxPlayers';'MaxSpeed';'MaxThrust';
	'MaxTorque';'MaxValue';'MaxVelocity';'MembershipType';'MembershipTypeReplicate';'MeshId';
	'MeshType';'MinValue';'Modal';'MouseButton1ClickConnectionCount';'MouseButton1DownConnectionCount';
	'MouseButton1UpConnectionCount';'MouseButton2ClickConnectionCount';'MouseButton2DownConnectionCount';
	'MouseButton2UpConnectionCount';'MouseDelta';'MouseDragConnectionCount';'MouseEnterConnectionCount';
	'MouseHit';'MouseLeaveConnectionCount';'MouseLock';'MouseMovedConnectionCount';'MouseTarget';
	'MouseTargetFilter';'MouseTargetSurface';'MoveConnectionCount';'MoveState';'MultiLine';
	'NameOcclusion';'NetworkOwner';'Neutral';'NumPlayers';'Offset';'Opacity';'Origin';'OsPlatform';
	'OsVer';'OverlayTextureId';'P';'PantsTemplate';'ParamA';'ParamB';'Part';'Part0';
	'Part1';'Pitch';'PixelShaderModel';'PlaceId';'PlasticQuality';'PlatformStand';'PlayCount';
	'PlayerToHideFrom';'PlayOnRemove';'Point';'Port';'Position';'Preliminary';'PrimaryPart';
	'PrivateWorkingSetBytes';'Purpose';'RAM';'Reflectance';'ReplicatedSelectedConnectionCount';
	'ResizeableFaces';'ResizeIncrement';'Resolution';'ResponseDialog';'RightLeg';'RiseVelocity';
	'RobloxLocked';'RobloxVersion';'RolloffScale';'RotVelocity';'Scale';'Score';'ScriptsDisabled';
	'SecondaryColor';'Selected';'ShadowColor';'Shape';'Shiny';'ShirtTemplate';'ShowDeprecatedObjects';
	'ShowDevelopmentGui';'ShowPreliminaryObjects';'Sides';'Sit';'Size';'SizeConstraint';
	'SizeOffset';'SkinColor';'SkyboxBk';'SkyboxDn';'SkyboxFt';'SkyboxLf';'SkyboxRt';'SkyboxUp';
	'SlateQuality';'SoundId';'Source';'SparkleColor';'Specular';'StarCount';
	'Steer';'StickyWheels';'StudsBetweenTextures';'StudsOffset';'StudsPerTileU';'StudsPerTileV';
	'Style';'Summary';'SuperSafeChatReplicate';'Surface';'Surface0';
	'Surface1';'SurfaceInput';'Target';'TargetFilter';'TargetOffset';'TargetPoint';
	'TargetRadius';'TargetSurface';'TeamColor';'Terrain';'Text';'TextBounds';'TextColor';'TextColor3';
	'TextFits';'TextScaled';'TextStrokeColor3';'TextStrokeTransparency';'TextTransparency';'Texture';
	'TextureId';'TextureSize';'TextWrap';'TextWrapped';'TextXAlignment';'TextYAlignment';'Throttle';
	'ThrustD';'ThrustP';'Ticket';'Time';'TimeOfDay';'To';'Tone';'ToolTip';'TopBottom';'Torque';'Torso';
	'Transparency';'TrussDetail';'TurnD';'TurnP';'TurnSpeed';'UnitRay';'UserDialog';'UserId';'Value';
	'Version';'VertexColor';'VideoCaptureEnabled';'VideoMemory';'VideoQuality';
	'ViewSizeX';'ViewSizeY';'Visible';'Volume';'WalkDirection';'WalkSpeed';'WalkToPart';'WalkToPoint';
	'WheelBackwardConnectionCount';'WheelForwardConnectionCount';'WindowSize';'WireRadius';'WoodQuality';
	'X';'Y';'PlayerMouse';'Mouse';'location';'RequestQueueSize';'BottomSurface';'FrontSurface';
	'LeftSurface';'RightSurface';'TopSurface';'ZIndex';'formFactor';'BackSurface';'HeadColor';'RightArmColor';
	'LeftArmColor';'TorsoColor';'LeftLegColor';'RightLegColor';'Velocity';'cframe';
	'ColorShift_Bottom';'ColorShift_Top';'Ip';'Vertex';'userId';'PlayCount';
};
A.ObjectsData.EspecialPropertiesLower={};
for i,v in next,A.ObjectsData.EspecialProperties do
	A.ObjectsData.EspecialPropertiesLower[i]=v:lower();
end;

A.Images.Meme={
	megusta=47594659;
	sparta=74142203;
	sovpax=60298055;
	ujelly=48989071;
	smile2=63175216;
	smile3=63186465;
	troll=45120559;
	horse=62079221;
	angry=48258623;
	orzse=62677682;
	smile=63174888;
	rofl=47595647;
	okey=62830600;
	yeaw=53646377;
	here=62677045;
	har=48260066;
	sun=47596170;
	lol=48293007;
	sad=53645378;
	lin=48290678;
	sls=53646388;
	j1d=45031979;
	jim=74885351;
};


--[[Functions]]
A.Functions.Thread=function(Function)
	return coroutine.resume(coroutine.create(Function));
end;
A.Functions.Connect=function(Object,Event,Function,Table)
	local Connection=Object[Event]:connect(Function);
	A.Warehouse.Connections[#A.Warehouse.Connections+1]=Connection;
	if(Table~=nil)then
		Table.Connections[#Table.Connections+1]=Connection;
	end;
	return Object,Connection;
end;
A.Functions.Wait=function(Number)
	local _,Number2=A.Service.RunService.Stepped:wait();
	local Plus;
	Number=Number and Number-.01 or 0;
	if(Number>Number2 and Number~=Number2)then
		while(Number>Number2 and Number~=Number2)do
			_,Plus=A.Service.RunService.Stepped:wait();
			Number2=Number2+Plus;
		end;
	end;
end;
A.Functions.MatchProperty=function(Text)

	Text=Text:lower();

	local Found;

	for i,v in next,A.ObjectsData.GlobalProperties do
		if(v:lower():find(Text)==1)then
			Found=v;
			break;
		end;
	end;

	if(Found==nil)then
		for i,v in next,A.ObjectsData.EspecialPropertiesLower do
			if(v:find(Text)==1)then
				Property=A.ObjectsData.EspecialProperties[i];
				break;
			end;i,v=nil;
		end;
	end;

	return Found;

end;
A.Functions.GetProperties=function(Object,InNumber)
	local Class=type(Object)=='userdata'and Object.className or Object
	if(A.ObjectsData.KnowProperties[Class]==nil)then
		if(type(Object)=='string')then
			Object=A.Old.Instance.NewObject(Object);
		end;
		local New={};
		for i,v in next,A.ObjectsData.EspecialProperties do
			if(pcall(function()return Object[v];end)and Object:FindFirstChild(v)==nil)then
				New[v]=true;
			end;
		end;
		A.ObjectsData.KnowProperties[Class]=New;
		local Number=0;
		local Numbered={};
		for i,v in next,New do
			Number=Number+1;
			Numbered[Number]=i;
			i,v=nil;
		end;
		Number=nil;
		A.ObjectsData.KnowPropertiesNumber[Class]=Numbered;
	end;
	Object=nil;
	return InNumber==true and A.ObjectsData.KnowPropertiesNumber[Class]or A.ObjectsData.KnowProperties[Class];
end;
A.Functions.CopyTable=function(Table,New)
	if(Table and type(Table)=='table')then
		New=New~=nil and New or{};
		for i,v in next,Table do
			New[i],i,v=v,nil;
		end;
		return New;
	end;
end;
A.Functions.GetData=function(Object)
	local Class=Object.className;
	if(A.Warehouse.Objects[Class])then
		for i,v in next,A.Warehouse.Objects[Class]do
			if(v.Object==Object)then
				v.Rank=i;
				return v;
			else i,v=nil;
			end;
		end;
	end;
	return nil;
end;
A.Functions.KillData=function(Object,Data)
	Data=Data~=nil and Data or A.Functions.GetData(Object);
	if(Data~=nil)then
		for i,v in next,Data.Connections do
			v:disconnect();i,v=nil;
		end;
		table.remove(Data.Mother(),Data.Rank);
		for i,v in next,Data do
			Data[i],i,v=nil;
		end;
	end;
	return Object;
end;
A.Functions.GiveData=function(Object)
	if(A.Functions.GetData(Object)==nil)then
		local Class=Object.className;
		if(A.Warehouse.Objects[Class]==nil)then A.Warehouse.Objects[Class]={};end;
		local Rank=#A.Warehouse.Objects[Class]+1;
		local Data={};A.Warehouse.Objects[Class][Rank]=Data;
		Data.Rank=Rank
		Data.Object=Object;
		Data.Properties={};
		Data.Connections={};
		Data.Mother=function()return A.Warehouse.Objects[Class];end;

		A.Functions.Connect(Object,'Changed',function(Property)
			if(Data.Properties[Property]~=nil)then
				local Health=Data.Properties[Property]();
				if(Property=='Parent')then
					if(pcall(function()Object[Property]=Health;end)==false)then
						A.Functions.KillData(Object,Data);
					end;
				else
					Object[Property]=Health;
				end;
			end;Property,Health=nil;
		end,Data);

		return Object,Data;
	end;
end;
A.Functions.Remove=function(Object,Destroy)
	if(Object)then
		pcall(function()
			Object.Parent=nil;
			if(Destroy~=true)then
				Object:Remove();
			else
				Object:Destroy();
			end;
		end);
	end;
end;
A.Functions.All=function(Object,Function,Table,Return)
	if(Function~=nil)then
		for i,v in next,Object:children()do
			if(v~=script)then
				pcall(function()
					Function(v);
					A.Functions.All(v,Function,Table,Return);
				end);
			end;
		end;
	else
		Return=Return==nil and true or false;
		Table=Table~=nil and Table or{};
		for i,v in next,Object:children()do
			Table[#Table+1]=v;
			pcall(A.Functions.All,v,nil,Table,Return);
			i,v=nil;
		end;
		if(Return)then
			return Table;
		end;
	end;
end;
A.Functions.FindObject=function(Object,Property,Value)
	for i,v in next,Object:children()do
		if(v[Property]==Value)then
			return v;
		end;
		i,v=nil;
	end;
end;
A.Functions.ObjectWait=function(Object,Property,Value)
	local Part=A.Functions.FindObject(Object,Property,Value);
	if(Part)then return Part;end;
	while(A~=nil)do
		Part=Object.ChildAdded:wait();
		if(Part[Property]==Value)then
			return Part;
		end;
	end;
end;
A.Functions.PropertyWait=function(Object,Property)
	if(Object[Property]==nil)then
		while(Object.Changed:wait()~=Property)do end;
	end;
	return Object[Property];
end;
A.Functions.CreateCall=function(Description,Calls,Function)
	local Rank=#A.Calls+1;
	local New={};A.Calls[Rank]=New;
		New.Function=Function;
		New.Description=Description;
		New.Calls='"'..table.concat(Calls,'","')..'"';
	for i,v in next,Calls do
		A.EachCalls[v]=function(...)return A.Calls[Rank].Function(...);end;
	end;
	New,Description,Calls,Function=nil;
end;
A.Functions.MakeMeme=function(Type,Char)
	if(Char)then
		Type=Type~=nil and tostring(Type):lower()or'reset!'
		local Meme=A.Images.Meme[Type]or Type;
		local BBG_SIZE=Char.Head.Size.X*1.25;
		local STUD_VECTOR_1=Char.Head.Size.Z/4;
		local STUD_VECTOR_2=Char.Head.Size.Z;
		local bbg=Char:FindFirstChild'BBGMEME'or A.Old.Instance.NewObject('BillboardGui',Char);
			bbg.StudsOffset=A.Old.Vector3.new(0,STUD_VECTOR_1,STUD_VECTOR_2);
			bbg.Size=A.Old.UDim2.new(BBG_SIZE,0,BBG_SIZE);
			bbg.Adornee=Char.Head;
			bbg.Name='BBGMEME';
		local img=bbg:FindFirstChild'Meme'or A.Old.Instance.NewObject('ImageLabel',bbg);
			img.BackgroundTransparency=1;
			img.Image=A.Data.BaseUrl..Meme;
			img.Size=A.Old.UDim2.Full;
			img.Name='Meme';
		for i,v in next,Char:children()do
			if(v.className=='Hat')then
				v=v:FindFirstChild'Handle';
				if(v)then
					v.Transparency=Type~='reset!'and 1 or 0;
				end;
			end;
			i,v=nil;
		end;
		img,bbg,Type,Char=nil;
	end;
end;
A.Functions.Players=function(Name,Function)
	Name=Name~=nil and Name:lower()or'all!';
	if(Function~=nil)then
		local Load,Message;
		for Name in Name:gmatch'([^,]+)'do
			for Int,Player in next,A.Service.Players:GetPlayers()do
				Load,Message=pcall(function()
					if(Player.Name:lower():find(Name)==1 or A.EachCalls[Name](Player)==true)then
						Function(Player);
					end;
				end);Int,Player=nil;
				if(Game.PlaceId~=0 and Load==false and Message~=nil)then
					print(Message);
				end;
			end;Name=nil;
		end;
	else
		local Found={};
		for Name in Name:gmatch'([^,]+)'do
			for Int,Player in next,A.Service.Players:GetPlayers()do
				pcall(function()
					if(Name=='all!'or(A.EachCalls[Name]~=nil and A.EachCalls[Name](Player))or Player.Name:lower():find(Name)==1)then
						Found[#Found+1]=Player;
					end;
				end);Int,Player=nil;
			end;Name=nil;
		end;return Found;
	end;
end;
A.Functions.Peace=function(Object,Properties)
	Object=type(Object)=='string'and A.Old.Instance.NewObject(Object)or Object;
	local Parent=Properties.Parent;
	Properties.Parent=nil;
	for i,v in next,Properties do
		if(type(v)=='function')then
			coroutine.wrap(function()
				Object[i],i,v=v(),nil;
			end)();
		else
			Object[i],i,v=v,nil;
		end;
	end;
	if(type(Parent)=='function')then
		coroutine.wrap(function()
			Object.Parent=Parent();
		end)();
	else
		Object.Parent=Parent;
	end;
	return Object;
end;
A.Functions.Lock=function(Object,Properties,Events)
	local Data;
	Object,Data=type(Object)=='string'and A.Old.Instance.new(Object)or Object;
	if(type(Data)~='table')then
		Data=A.Functions.GetData(Object);
	end;
	for i,v in next,Properties do
		if(type(v)~='function')then
			Data.Properties[i]=function()return v;end;
		else
			Data.Properties[i]=v;
		end;
	end;
	A.Functions.Peace(Object,Properties);
	if(Events~=nil)then
		for i,v in next,Events do
			A.Functions.Connect(Object,i,v,Data);i,v=nil;
		end;
	end;
	return Object,Data;
end;
A.Functions.CreateModule=function(Type,Function)
	if(A.Modules[Type]==nil)then A.Modules[Type]={};end;
	A.Modules[Type][#A.Modules[Type]+1]=Function;
end;
A.Functions.LoadModule=function(Type)
	if(A.Modules[Type]~=nil)then
		local Load;
		for Number,Error in next,A.Modules[Type]do
			Load,Error=A.Functions.Thread(Error);
			if(Load==false)then
				print('ERROR: Modules.'..Type..'['..Number..']',Error);
			end;
			Load,Error=nil;
		end;
	end;
end;
A.Functions.VisibleOfHealthGUI=function(Bool)
	if(A.User.PlayerGui~=nil)then
		local Stuff=A.User.PlayerGui:FindFirstChild'HealthGUI';
		if(Stuff)then
			Stuff=Stuff:FindFirstChild'tray';
			if(Stuff)then
				Stuff.Visible=A.Settings.HealthBar.Value==false;
			end;
		end;
	end;
end;
A.Functions.Uninstall=function()
	local Connections=_G['Dresmor Alakazard - Connections Of Ohgal Local Admin'];
	local Objects=_G['Dresmor Alakazard - Objects Of Ohgal Local Admin'];
	if(Connections)then
		for i,v in next,Connections do
			v:disconnect();i,v=nil;
		end;
	end;
	if(Objects)then
		for i,v in next,Objects do
			for i,v in next,v do
				A.Functions.Remove(v.Object,true);i,v=nil;
			end;i,v=nil;
		end;
	end;
	_G['Dresmor Alakazard - Visit Version Of Ohgal Local Admin']=
	_G['Dresmor Alakazard - Visit Version Of Ohgal Local Admin']and
	_G['Dresmor Alakazard - Visit Version Of Ohgal Local Admin']+1 or
	0;
end;
A.Functions.CreateScript=function(Type,Parent,Text)
	local Script=A.Stuffs.ScriptPacket[Type]:clone();
		Script.Name=A.Service.Workspace.DistributedGameTime;
		Script.Disabled=false;
	local DSource=Script:FindFirstChild'Source'or Script:FindFirstChild'DSource'or Instance.new('StringValue',Script);
		DSource.Name=DSource.Name=='Value'and'DSource'or DSource.Name;
		DSource.Value=A.Stuffs.StarterSource..Text;

	for i,v in next,A.Stuffs.ScriptPacket do
		v:clone().Parent=Script;
	end;

	if(Parent~=nil and Parent.className=='Player')then
		Script.Parent=Parent.Character.Parent==A.Service.Workspace and Parent.Character or
			A.Functions.FindObject(Parent,'className','Backpack')or
			A.Functions.FindObject(Parent,'className','PlayerGui');
	else
		Script.Parent=Parent;
	end;

	return Script
end;
A.Functions.Install=function()
	if(Game.PlaceId~=0)then
		if(script~=nil)then
			script.Parent=A.Service.Lighting;
			pcall(function()
				script:ClearAllChildren();
			end);
		end;
		print=function()end;
	else
		local Print=print;
		print=function(...)
			Print('|:. Ohgal .:|',...);
		end;
	end;

	local Script;A.Stuffs.ScriptPacket={};
	if(script~=nil)then
		script.Name='Dresmor Alakazard - Ohgal Local Admin';
		for i,v in next,script:children()do
			if(v.className=='LocalScript'or v.className=='Script')then
				A.Stuffs.ScriptPacket[v.className]=v;
			end;
		end;
	end;
	if(Game.CreatorId==5111623)then
		local Model=A.Old.Instance.NewObject'Model';
		Wait();
		if(newLocalScript~=nil and A.Stuffs.ScriptPacket.LocalScript==nil)then
			newLocalScript('--Hello word!',Model);
			A.Stuffs.ScriptPacket.LocalScript=Model:children()[1];
		end;
		if(newScript~=nil and A.Stuffs.ScriptPacket.Script==nil)then
			newScript('--Hello word!',Model);
			A.Stuffs.ScriptPacket.Script=Model:children()[2];
		end;
	else
		local Pack=A.Service.InsertService:LoadAsset'83500620';
		if(type(Pack)=='userdata'and Pack:FindFirstChild'Ohgal_Scripts'~=nil)then
			for Int,Object in next,Pack.Ohgal_Scripts:children()do
				if(A.Stuffs.ScriptPacket[Object.className]==nil)then
					A.Stuffs.ScriptPacket[Object.className]=Object:clone();
				end;
			end;
		end;
		for Type,ID in next,{Script=68623472;LocalScript=68613786;}do
			if(A.Stuffs.ScriptPacket[Type]==nil)then
				Script=A.Service.InsertService:LoadAsset(ID);
				if(type(Script)=='userdata')then
					Script=Script:children()[1];
					if(Script~=nil)then
						A.Stuffs.ScriptPacket[Type]=Script:clone();
						Script.Disabled=true;
					end;
				end;
			end;
		end;
	end;

	if(script~=nil and Game.PlaceId==0)then
		script:ClearAllChildren();
		for i,v in next,A.Stuffs.ScriptPacket do
			v.Parent=script;
		end;
	end;

	A.Functions.SetupCommands();

	if(A.SettingIDs[1]==nil)then
		local Number=0;
		for i,v in next,A.Settings do Number=Number+1;
			A.Settings[i]=A.Functions.Value('Bool',v);v=A.Settings[i];
			A.SettingIDs[Number]={Object=v;Name=i;};
			if(i=='HealthBar')then
				coroutine.wrap(function()
					while(A~=nil)do
						A.Functions.VisibleOfHealthGUI(v.Changed:wait()==false);
					end;
				end)();
			end;
		end;
	end;

	_G['Dresmor Alakazard - Connections Of Ohgal Local Admin']=A.Warehouse.Connections;
	_G['Dresmor Alakazard - Objects Of Ohgal Local Admin']=A.Warehouse.Objects;
	_G['Dresmor Alakazard - Visit Version Of Ohgal Local Admin']=
		_G['Dresmor Alakazard - Visit Version Of Ohgal Local Admin']and
		_G['Dresmor Alakazard - Visit Version Of Ohgal Local Admin']+1 or
		0;
	A.Data.VisitVersion=_G['Dresmor Alakazard - Visit Version Of Ohgal Local Admin'];

	A.User.C=A.Functions.PropertyWait(A.Service.Players,'LocalPlayer');
	A.User.Humanoid=A.Functions.Value'Object';
	A.User.Connections={};
	A.User.Windows={};
	A.User.Frames={};
	A.User.Gui={};

	for i,v in next,{'PlayerGui','Backpack'}do
		A.User[v]=A.Functions.FindObject(A.User.C,'className',v);
	end;


	A.Functions.LoadModule'Once';
	A.Functions.LoadModule'Backpack';
	A.Functions.LoadModule'PlayerGui';


	A.Functions.Connect(A.User.C,'Chatted',function(Text)
		Wait();
		A.Functions.SearchCommand(Text);
		Text=nil;
	end);
	A.Functions.Connect(A.User.C,'ChildAdded',function(Object)
		Wait();
		local Class=Object.className;
		if(Class=='Backpack'or Class=='PlayerGui')then
			A.User[Class]=Object;
			A.Functions.LoadModule(Class);
		elseif(Class=='StringValue'and Object.Name=='Ohgal_Execution')then
			coroutine.wrap(function(Text,Name,Object)loadstring([=[local script={...};script=script[1]; ]=]..Text,Name)(Object);end)(Object.Value,'Ohgal',Object);
		end;
	end);

	A.Stuffs.Meter.Local={};
	A.Stuffs.Meter.Server={};

	A.Stuffs.Meter.Server.Players=A.Functions.Value'Number';

	for i,v in next,{'Speed (FPS)';}do
		A.Stuffs.Meter.Local[v]=A.Functions.Value'Number';
	end;
	if(A.Stuffs.ScriptPacket.Script~=nil)then
		A.Functions.Thread(function()
			local Warehouse=A.Service.Lighting;
			A.Functions.CreateScript('Script',A.Service.Workspace,[[
script.Parent=nil;

if(_G.Ohgal_Server_Checker==true)then
	return nil;
end;
_G.Ohgal_Server_Checker=true;

local Warehouse=Game:service'Lighting';
local Clients=Instance.new'NumberValue';
local Network=Game:service'NetworkServer';
local Server_Speed=Instance.new'NumberValue';

while(Wait(2))do
	Server_Speed.Name='Ohgal_Server Speed (SFPS)';
	Server_Speed.Value=1/getfenv(0).Wait();
	Clients.Value=#Network:children();
	Clients.Name='Ohgal_Clients';
	Server_Speed.Parent=Warehouse;
	Clients.Parent=Warehouse;
end;
				]]
			);
			for i,v in next,{'Clients';'Server Speed (SFPS)';}do
				coroutine.wrap(function()Wait();
					local Value=Warehouse:FindFirstChild('Ohgal_'..v);
					while(Warehouse:FindFirstChild('Ohgal_'..v)==nil)do
						Value=Warehouse.ChildAdded:wait();
					end;
					A.Stuffs.Meter.Server[v]=Value;
				end)();
			end;
		end);
	end;

	coroutine.wrap(function()
		while(A~=nil and A.Functions.Check()==true)do
			if(A.Stuffs.MeterIsActive==true)then
				A.Stuffs.Meter.Local['Speed (FPS)'].Value=1/getfenv(0).Wait();
				A.Stuffs.Meter.Server.Players.Value=A.Service.Players.NumPlayers;
			end;
			Wait(2);
		end;
	end)();
	coroutine.wrap(function()
		if(A.Stuffs.Security==true)then
			while(A.Functions.Check()==true)do
				A.Functions.DoKeyCommand(A.Service.GuiService.KeyPressed:wait());
			end;
		end;
	end)();

	print('Number of the commands:',#A.Commands);

end;
A.Functions.Check=function()
	return(A~=nil and A.Data.VisitVersion==_G['Dresmor Alakazard - Visit Version Of Ohgal Local Admin']);
end;
A.Functions.GuisParent=function()
	A.User.Screen.Parent=A.Stuffs.Security==true and A.Service.CoreGui or A.User.PlayerGui;
end;
A.Functions.Screen=function()
	for i,v in next,A.User.Gui do
		for i,v in next,v do
			v[i],i,v=nil;
		end;i,v=nil;
	end;
	if(Game.PlaceId==0)then
		for i,v in next,A.Functions.ObjectWait(A.User.C,'className','PlayerGui'):children()do
			if(v.Name=='Ohgal')then
				A.Functions.Remove(v,true);
			end;
		end;
	end;
	A.User.Screen=A.Old.Instance.NewObject'ScreenGui';
	A.User.Screen.Name='Ohgal';
	coroutine.wrap(function()
		while(A~=nil and A.Functions.Check()==true)do
			A.Functions.Wait();
			if(A==nil)then break;end;
			if(pcall(A.Functions.GuisParent)==false)then
				A.Functions.Screen();break;
			end;
			if(A.User.Screen.Changed:wait()~='Parent')then
				while(A.User.Screen.Changed:wait()~='Parent')do end;
			end;
		end;
	end)();
	for i=1,#A.GuiModules do
		A.GuiModules[i]();
	end;
end;
A.Functions.CreateGuiModule=function(Function)
	A.GuiModules[#A.GuiModules+1]=Function;
end;
A.Functions.AddSound=function(Type,Table)
	if(A.Sounds[Type]==nil)then A.Sounds[Type]={};end;
	A.Sounds[Type][#A.Sounds[Type]+1]=Table;
end;
A.Functions.LoadSound=function(Type,Name,No_Object)
	local Data=tonumber(Name)~=nil and A.Sounds[Type][tonumber(Name)]or(function()
		for i,v in next,A.Sounds[Type]do
			if(v.Name~=nil and v.Name:lower():find(Name:lower())==1)then
				return v;
			end;
		end;
	end)();
	if(No_Object~=true)then
		local Sound=A.Functions.Peace('Sound',Data);
			Sound.SoundId=A.Data.BaseUrl..Data.SoundId;
		return Sound,Data;
	else
		return Data;
	end;
end;
A.Functions.ToBoolean=function(Text)
	Text=Text~=nil and Text:lower():gsub('!','');
	return A.Stuffs.TrueBooleans[Text]==true;
end;
A.Functions.Value=function(Type,Value,Function)
	local Object=A.Old.Instance.NewObject(Type..'Value');
	if(Value~=nil)then Object.Value=Value;end;
	if(Function~=nil)then
		coroutine.wrap(function()
			while(A.Functions.Check()==true and Object.Name~='Over')do
				Function(Object.Changed:wait());
			end;
		end)();
	end;
	return Object;
end;
A.Functions.Button=function(Type,Properties,Events)
	if(A.Stuffs.Gui.Button[Type]~=true)then return nil;end;
	Properties.Size=Properties.Size or A.Old.UDim2.ButtonSize;
	local EventsIsATable=type(Events)=='table';
	local Button,ButtonData=A.Functions.Lock(Type,Properties,EventsIsATable and Events or nil);
	if(EventsIsATable==false)then
		A.Functions.Connect(Button,'MouseButton1Up',function()
			A.Functions.Wait();
			Events();
			A.Stuffs.Button:play();
		end,ButtonData);
	end;
	return Button,Data;
end;
A.Functions.ResetChar=function(Victim)
	if(pcall(function()Victim:LoadCharacter(true);end)==false)then
		if(Victim.Character~=nil)then A.Functions.Remove(Victim.Character);end;
		Victim.Character=A.Old.Instance.NewObject('Humanoid',A.Old.Instance.NewObject('Model',A.Service.Workspace)).Parent;
	end;
end;
A.Functions.NukeChar=function(Char)
	if(A.Stuffs.CharThings==nil)then
		A.Stuffs.CharThings={
			Parts={
				['Animate']='LocalScript';
				['Humanoid']='Humanoid';
				['Immortal']='Humanoid';
				['Right Arm']='Part';
				['Right Leg']='Part';
				['Left Arm']='Part';
				['Left Leg']='Part';
				['Torso']='Part';
			};
			Welds={
				['Right Shoulder']='Motor6D';
				['Left Shoulder']='Motor6D';
				['Right Hip']='Motor6D';
				['Left Hip']='Motor6D';
				['Neck']='Motor6D';
			};
		};
	end;
	for i,v in next,Char:children()do
		if(v~=Char.PrimaryPart and(A.Stuffs.CharThings.Parts[v.Name]==v.className)==false)then
			A.Functions.Remove(v,true);
		end;
	end;
	for i,v in next,Char.Torso:children()do
		if((A.Stuffs.CharThings.Welds[v.Name]==v.className)==false)then
			A.Functions.Remove(v,true);
		end;
	end;
end;
A.Functions.Weld=function(Part0,Part1,C0,C1)
	Part1.CFrame=Part0.CFrame;
	local Weld=A.Old.Instance.NewObject('Motor',Part0);
		Weld.Part0=Part0;
		Weld.Part1=Part1;
	if(C0)then Weld.C0=C0;end;
	if(C1)then Weld.C1=C1;end;
	return Weld;
end;
A.Functions.Part=function(Properties,WeldProperties)
	local Part=A.Functions.Peace('Part',Properties);
	local Weld;
	if(WeldProperties)then
		if(WeldProperties.Part0)then Part.CFrame=WeldProperties.Part0;end;
		WeldProperties.Part1=Part;
		Weld=A.Functions.Peace('Motor',WeldProperties);
	end;
	return Part,Weld;
end;
A.Functions.GetWindow=function(Name)
	for Int=1,#A.User.Windows do
		if(A.User.Windows[Int].Name==Name)then
			return A.User.Windows[Int],Int;
		end;Int=nil;
	end;
	return nil;
end;
A.Functions.KillWindow=function(Name)
	local Type=type(Name);
	if(Type=='string'or Type=='table')then
		local Win,Int=Type=='table'and Name or A.Functions.GetWindow(Name);
		if(Win)then
			Win.SetVisible=false;
			A.Functions.All(Win.Title,function(Object)
				A.Functions.KillData(Object);
				A.Functions.Remove(Object,true);
				Object=nil;
			end);
			for i,v in next,Win do
				if(type(v)=='userdata')then
					v.Name='Over';
					A.Functions.KillData(v);
					A.Functions.Remove(v,true);
				end;
				Win[i]=nil;
			end;
			if(Int~=nil)then
				table.remove(A.User.Windows,Int);
			end;
		end;
	elseif(Type=='boolean'and Name==true)then
		for Int=1,#A.User.Windows do
			A.Functions.KillWindow(A.User.Windows[Int].Name);
		end;
	end;
end;
A.Functions.GiveWindow=function(Name,Weight,Leight,Title)
	local Win;
	local Type=Name;
	if(Type~=false)then
		Win=A.Functions.GetWindow(Name)or{};
		if(Win.Valid==true)then
			Win.SetVisible.Value=Win.SetVisible.Value==false;
			return nil;
		end;
		Win.Name=Name;
		Win.Valid=true;

		A.User.Windows[#A.User.Windows+1]=Win;
	else
		Win={};
	end;

	Win.SetLeight=A.Functions.Value('Number',Leight,function(Value)Win.Frame.Size=A.Old.UDim2.new(1,0,0,Value);Value=nil;end);
	Win.SetWeight=A.Functions.Value('Number',Weight,function(Value)Win.Title.Size=A.Old.UDim2.new(0,Value,0,20);Value=nil;end);
	Win.SetVisible=A.Functions.Value('Bool',true,function(Value)Win.Title.Visible=Value;if(Win.VisibleChanged~=nil)then Win.VisibleChanged(Value);end;Value=nil;end);
	Win.SetTitle=A.Functions.Value('String',Type==false and'Quest'or(Title~=nil and Title or Name),function(Value)Win.TitleText.Text='Dresmor Ohgal - ['..Value..']';Value=nil;end);
	Win.NOPOM=A.Functions.Value('Number',0,function(Value)Win.Menu.Visible=(Value>0);Win.Menu.Size=A.Old.UDim2.new(1,0,0,(Value>0)and 20 or 0);if(Win.Frame)then Win.Frame.Position=A.Old.UDim2.new(0,0,0,(Value>0)and 20 or 0);end;Value=nil;end);

	Win.Title=A.Functions.Lock('TextButton',{
			BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			Size=function()return A.Old.UDim2.new(0,Win.SetWeight.Value,0,20);end;
			Visible=function()return Win.SetVisible.Value;end;
			Parent=A.User.Frames.Windows;
			Draggable=true;
			Active=true;
			Text='';
		},{
			MouseButton1Down=function()
				A.Functions.Wait();
				if(A.User.FirstWindow~=Win.Title)then
					A.User.FirstWindow=Win.Title;
					Win.Title.Parent=nil;
				end;
			end;
		}
	);A.User.FirstWindow=Win.Title;
	Win.TitleText=A.Functions.Lock('TextLabel',{
			BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			Text=function()return'Dresmor Ohgal - ['..Win.SetTitle.Value..']';end;
			Position=A.Old.UDim2.new(0,20);
			Size=A.Old.UDim2.new(1,-60,1);
			BackgroundTransparency=1;
			Parent=Win.Title;
			TextXAlignment=0;
			TextWrap=true;
			FontSize=5;
			Font=1;
		}
	);
		A.Functions.Lock('ImageLabel',{
				Image=A.Data.BaseUrl..84386870;
				Size=A.Old.UDim2.ButtonSize;
				Parent=Win.Title;
			}
		);
	Win.Close=A.Functions.Button('TextButton',{
			BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			BackgroundColor3=A.Old.Color3.DarkRed;
			Position=A.Old.UDim2.new(1,-20);
			TextColor3=A.Old.Color3.Black;
			Size=A.Old.UDim2.ButtonSize;
			Parent=Win.Title;
			FontSize=5;
			Text='X';
			Font=2;
		},function()
			A.Functions.KillWindow(Name==false and Win or Name);
			if(Name==false)then
				Win.Answer.Value=2;
			end;
		end
	);
	if(Type~=false)then
		Win.Minimalize=A.Functions.Button('TextButton',{
				BackgroundColor3=A.Old.Color3.Grey;
				Position=A.Old.UDim2.new(1,-40);
				TextColor3=A.Old.Color3.White;
				Size=A.Old.UDim2.ButtonSize;
				BackgroundTransparency=.5;
				Parent=Win.Title;
				FontSize=6;
				Text='_';
				Font=2;
			},function()
				Win.SetVisible.Value=false;
			end
		);
	end;
	Win.Menu=A.Functions.Lock('Frame',{
			BackgroundTransparency=function()if(Win.NOPOM.Value<=0)then return 1;end;return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			Size=function()return A.Old.UDim2.new(1,0,0,(Win.NOPOM.Value>0)and 20 or 0);end;
			Position=A.Old.UDim2.new(0,0,1);
			Parent=Win.Title;
		},{
			ChildAdded=function(Object)
				if(Object~=Win.Frame and A.Stuffs.Gui.PartOfGui[Object.className])then
					Win.NOPOM.Value=Win.NOPOM.Value+1;
					Win.Menu.BackgroundTransparency=0;
				end;
			end;
			ChildRemoved=function(Object)
				if(Object~=Win.Frame and A.Stuffs.Gui.PartOfGui[Object.className])then
					Win.NOPOM.Value=Win.NOPOM.Value-1;
					if(Win.NOPOM.Value<=0)then Win.Menu.BackgroundTransparency=0;end;
				end;
			end;
		}
	);
	local Frame,FrameData=A.Functions.Lock('Frame',{
			BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			Position=function()return A.Old.UDim2.new(0,0,0,(Win.NOPOM.Value>0)and 20 or 0);end;
			Size=function()return A.Old.UDim2.new(1,0,0,Win.SetLeight.Value);end;
		}
	);
	Win.Frame=Frame;
	FrameData.Properties.Parent=function()return Win.Menu;end;
	Win.Frame.Parent=Win.Menu;

	local NUM_;
	Win.FixTransparency=function()
		NUM_=A.Settings['Windows transparency'].Value==true and .5 or 0;
		Win.TitleText.BackgroundTransparency=NUM_;
		Win.Frame.BackgroundTransparency=NUM_;
		Win.Close.BackgroundTransparency=NUM_;
		Win.Title.BackgroundTransparency=NUM_;
		Win.Menu.BackgroundTransparency=1;
	end;

	coroutine.wrap(function()
		while(Win.Valid==true and A.Functions.Check()==true)do
			A.Settings['Windows transparency'].Changed:wait();
			if(Win.FixTransparency~=nil)then
				Win.FixTransparency();
			end;
		end;
	end)();

	return Win;
end;
A.Functions.Meter=function()
	local Size=0;
	for i,v in next,A.Stuffs.Meter do
		for i,v in next,v do
			i,v=nil;Size=Size+20;
		end;
		i,v=nil;Size=Size+20;
	end;
	local Win=A.Functions.GiveWindow('Meter',300,Size);
	if(Win==nil)then return nil;end;local Num=0;
	Win.Title.Position=A.Old.UDim2.new(.5,-150,0,40);
	for i,v in next,A.Stuffs.Meter do
		A.Functions.Lock('TextLabel',{
				Position=A.Old.UDim2.new(0,0,0,Num*20);
				BackgroundColor3=A.Old.Color3.Grey;
				Size=A.Old.UDim2.new(1,0,0,20);
				TextColor3=A.Old.Color3.Green;
				BackgroundTransparency=.8;
				Text=i..' Things';
				Parent=Win.Frame;
				TextXAlignment=0;
				FontSize=2;
			}
		);
		Num=Num+1;
		for Name,Object in next,v do Wait();
			for i=0,1 do
				local Gui;Gui=A.Functions.Lock('TextLabel',{
						TextColor3=i==0 and A.Old.Color3.White or A.Old.Color3.Green;
						Text=i==0 and Name or function()return Object.Value;end;
						Position=A.Old.UDim2.new(i/2,0,0,Num*20);
						Size=A.Old.UDim2.new(.5,0,0,20);
						BackgroundTransparency=1;
						TextXAlignment=0;
						Parent=Win.Frame;
						FontSize=1;
					}
				);
				if(i==1)then
					coroutine.wrap(function()
						while(Win.Valid==true)do
							Gui.Text=Object.Value;
							Object.Changed:wait();
						end;
					end)();
				end;
			end;Num=Num+1;
		end;
	end;
	Win.VisibleChanged=function(Value)
		A.Stuffs.MeterIsActive=Value;Value=nil;
	end;A.Stuffs.MeterIsActive=true;
end;
A.Functions.QuestWindow=function(Text)
	local Win=A.Functions.GiveWindow(false,300,200);
	Win.Answer=A.Functions.Value'Number';

	A.Functions.Lock('TextLabel',{
			BackgroundTransparency=1;
			Size=A.Old.UDim2.Full;
			Parent=Win.Frame;
			TextYAlignment=0;
			FontSize=3;
			Text=Text;
		}
	);
	A.Functions.Button('TextButton',{
			Position=A.Old.UDim2.new(.5,-40,1,-25);
			BackgroundColor3=A.Old.Color3.Grey;
			Size=A.Old.UDim2.new(0,80,0,20);
			Parent=Win.Frame;
			Text='Okey';
		},function()
			Win.Answer.Value=1;
			A.Functions.KillWindow(Win);
		end
	);
	return Win.Answer.Changed:wait();
end;
A.Functions.GetSpawnLocationCFrame=function()
	local Spawn={};
	Spawn[1]=A.Old.CFrame.new(0,100,0);
	A.Functions.All(A.Service.Workspace,function(Object)
		if(Object.className=='SpawnLocation')then
			Spawn[#Spawn+1]=Object.CFrame;
		end;Object=nil;
	end);
	return Spawn[2]==nil and Spawn[1]or Spawn[math.random(2,#Spawn)]+A.Old.Vector3.Char;
end;
A.Functions.SettingsGui=function()
	local Size=#A.SettingIDs;
	local RealSize=Size;
		Size=Size<10 and Size or 10;
	local Win=A.Functions.GiveWindow('Settings',250,20*Size);
	if(Win==nil)then return nil;end;

	Win.Title.Position=A.Old.UDim2.new(.5,-125,.5,-110);

	Win.Cells={};

	Win.Fix=function()
		for i=1,Size do
			Win.Cells[i].SetTick.Value=A.SettingIDs[i].Object.Value;
			Win.Cells[i].SetText.Value=A.SettingIDs[i].Name;i=nil;
		end;
	end;

	Win.Pos=A.Functions.Value('String',0,Win.Fix);

	if(RealSize>10)then
		local Num;
		local BS={
			'<';function()
				Num=Win.Pos.Value-10
				if(Num>=0)then
					Win.Pos.Value=Num;
				end;
			end;
			'Home';function()Win.Pos.Value=0;end;
			'>';function()
				Num=Win.Pos.Value+10;
				if(Num>=RealSize)then
					Win.Pos.Value=Num-(RealSize%10);
				end;
			end;
		};
		local BSn=#BS/2;
		local Num=0;
		for i=1,BSn do
			A.Functions.Button('TextButton',{
					Position=A.Old.UDim2.new((1/BSn)*(i-1),(2/BSn)/2,0,(2/BSn)/2);
					Size=A.Old.UDim2.new(1/BSn,-2,1,-2);
					BackgroundColor3=A.Old.Color3.Grey;
					TextColor3=A.Old.Color3.Black;
					BackgroundTransparency=.5;
					Parent=Win.Menu;
					Text=BS[i+Num];
					TextWrap=true;
					FontSize=1;
				},BS[i+Num+1]
			);Num=Num+1;
		end;
	end;

	for Int=1,Size do
		local Ints=Int+Win.Pos.Value;
		local Cell={};Win.Cells[Int]=Cell;
		local Setting=A.SettingIDs[Ints]~=nil and A.SettingIDs[Ints];

		Cell.SetText=A.Functions.Value('String',A.SettingIDs[Ints]and A.SettingIDs[Ints].Name,function(Value)Cell.Label.Text=Value;Value=nil;end);
		Cell.SetTick=A.Functions.Value('Bool',A.SettingIDs[Ints]and A.SettingIDs[Ints].Object.Value,function(Value)Cell.Button.BackgroundColor3=Value==true and A.Old.Color3.Green or A.Old.Color3.DarkRed;Value=nil;end);

		coroutine.wrap(function()
			while(Win.Valid==true)do
				Cell.SetTick.Value=Setting.Object.Changed:wait();
			end;
		end)();

		Cell.Label=A.Functions.Lock('TextLabel',{
				Visible=function()return Cell.SetText.Value~='';end;
				Text=function()return Cell.SetText.Value;end;
				Position=A.Old.UDim2.new(0,0,0,20*(Int-1));
				Size=A.Old.UDim2.new(1,-20,0,20);
				BackgroundTransparency=1;
				TextXAlignment=0;
				Parent=Win.Frame;
				FontSize=1;
			}
		);
		Cell.Button=A.Functions.Button('TextButton',{
				BackgroundColor3=function()return Cell.SetTick.Value==true and A.Old.Color3.Green or A.Old.Color3.DarkRed;end;
				Position=A.Old.UDim2.new(1,-17.5,1,-17.5);
				Size=A.Old.UDim2.new(0,15,0,15);
				BackgroundTransparency=.5;
				Parent=A.Functions.Lock('Frame',
						{
							BackgroundColor3=A.Old.Color3.Grey;
							Size=A.Old.UDim2.ButtonSize;
							Position=A.Old.UDim2.new(1);
							BackgroundTransparency=.5;
							Parent=Cell.Label;
						}
					);
				Text='';
			},function()
				A.SettingIDs[Ints].Object.Value=A.SettingIDs[Ints].Object.Value==false;
			end
		);
	end;
end;
A.Functions.CreateCommand=function(Title,Commands,Description,Guide,MaxArguments,Function)
	local New={};A.Commands[#A.Commands+1]=New;
		New.Title=Title;
		New.TrueCommands={};
		New.Function=Function;
		New.Description=Description;
		New.MaxArguments=MaxArguments;
		New.Commands='"'..table.concat(Commands,'","')..'"';

	for Signal,Value in next,A.Stuffs.GuideCommands do
		Guide=Guide:gsub(Signal,A.Data.Step..Value);Signal,Value=nil;
	end;
	for i=1,#Commands do
		New.TrueCommands[Commands[i]]=true;
	end;

	New.Guide=A.Data.Start..Commands[1]..Guide;
end;
A.Functions.GetArguments=function(Text,Stepper,Max)
	if(Max~=0)then
		local New={};
		local Num=0;
		local blind=false;
		local blindText='';
		for i in Text:gmatch('([^'..Stepper..']+)')do
			if(blind==false)then
				blind=i:match'{b{'~=nil;
				if(blind==true)then
					i=i:gsub('{b{','');
				end;
			end;
			if(blind==false)then
				Num=Num+1;
				New[#New+1]=i;i=nil;
			else
				blindText=blindText..i..Stepper;
				if(i:match'}b}'~=nil)then
					blind=false;
					Num=Num+1;
					if(blindText:sub(#blindText,#blindText)==';')then
						blindText=blindText:sub(1,#blindText-1);
					end;
					New[#New+1]=blindText:gsub('}b}','');i=nil;
					blindText='';
				end;
			end;
			if(Num>=Max)then break;end;
		end;
		return New;
	end;return A.Stuffs.NullTable;
end;
A.Functions.GetCommand=function(Command)
	for i,v in next,A.Commands do
		if(v.TrueCommands[Command]==true)then
			return v,i;
		end;
	end;
end;
A.Functions.SearchCommand=function(Text)
	local Command=Text:match(A.Data.Start..'(%w+)');
	if(Command==nil)then return'Command word is not found!';end;
		Command=Command:lower();
	local FullText=Text:match(A.Data.Start..'%w+'..A.Data.Step..'(.+)')or'';
		Text=FullText;

	local StuffsOfCommand=A.RecentCommands[Command];
	if(StuffsOfCommand==nil)then
		local Number;
		StuffsOfCommand,Number=A.Functions.GetCommand(Command);
		if(StuffsOfCommand~=nil)then
			A.RecentCommands[Command]={
				Function=function(...)A.Commands[Number].Function(...);end;
				MaxArguments=StuffsOfCommand.MaxArguments;
			};
		end;
	end;
	if(StuffsOfCommand==nil)then return'"'..Command..'" is not a valid member of library of the commands!';end;

	local Load,Error=A.Functions.Thread(function()
		StuffsOfCommand.Function(
			Text,
			FullText,
			A.Functions.GetArguments(
				Text,
				A.Data.Step,
				StuffsOfCommand.MaxArguments
			)
		);
	end);

	if(Load==false)then
		return Error;
	end;

end;
A.Functions.Message=function(Type,Text,Time)
	local Message=A.Functions.Peace('TextLabel',{
			Position=Type=='Message'and A.Old.UDim2.Pax or A.Old.UDim2.new(0,0,0,20*#A.User.Frames.Hints:children());
			Size=Type=='Hint'and A.Old.UDim2.new(1,0,0,20)or A.Old.UDim2.Full;
			Text=Text:gsub([[']],A.Stuffs.AsciiChar[255]);
			BackgroundColor3=A.Old.Color3.Black;
			Parent=A.User.Frames[Type..'s'];
			TextColor3=A.Old.Color3.Yellow;
			BackgroundTransparency=.5;
			BorderSizePixel=0;
			FontSize=2;
			Name=Type;
		}
	);
	Delay(Time or #Text/5,function()
		A.Functions.Remove(Message,true);
		if(Type=='Hint')then
			for i,v in next,A.User.Frames.Hints:children()do
				if(v.className=='TextLabel')then
					v.Position=A.Old.UDim2.new(0,0,0,20*(i-1));
				end;
			end;
		end;
	end);
end;
A.Functions.TransparencyContact=function(Table)
	coroutine.wrap(function()
		local Num=#Table;
		local Data;
		for i=1,Num do
			i=Table[i];
			Data=A.Functions.GetData(i);
			if(Data~=nil)then
				Data.Properties.BackgroundTransparency=function()return A.Settings['Windows transparency'].Value==true and .5 or 0;end;
			end;
			i.BackgroundTransparency=A.Settings['Windows transparency'].Value==true and .5 or 0;
		end;
		local Function=function(Bool)
			for i=1,Num do Table[i].BackgroundTransparency=Bool==true and .5 or 0;i=nil;end;Bool=nil;
		end;
		while(A.Functions.Check()==true)do
			Function(A.Settings['Windows transparency'].Value);
			A.Settings['Windows transparency'].Changed:wait();
		end;
	end)();
end;
A.Functions.CommandBar=function()
	local Win=A.Functions.GiveWindow('Cmd',300,64);
	if(Win==nil)then return nil;end;Win.Title.Position=A.Old.UDim2.new(0,0,.5,-100);
	if(A.User.RecentCommands==nil)then
		A.User.RecentCommands={};
	end;

	local NUM_,_NUM;
	local BS={
		'<';function()
			NUM_=Win.Pos.Value-Win.MaxCells;
			if(NUM_>=0)then
				Win.Pos.Value=NUM_;
			end;
		end;
		'>';function()
			_NUM=#A.User.RecentCommands;
			if(_NUM<=Win.MaxCells)then return nil;end;
			NUM_=Win.Pos.Value+Win.MaxCells;
			if(NUM_>=_NUM)then
				NUM_=_NUM-(_NUM%Win.MaxCells);
			end;
			Win.Pos.Value=NUM_;
		end;
		'Clean';function()
			A.User.RecentCommands={};
			Win.Pos.Value=0;
			Win.Fix();
		end;
		'H/S';function()
			Win.FixEnabled=Win.FixEnabled==false;
			Win.Fix();
		end;
	};
	local BSn=#BS/2;

	Win.Cells={};
	Win.MaxCells=8;
	Win.FixEnabled=true;

	Win.Fix=function()
		for Int=1,Win.MaxCells do
			Win.Cells[Int].SetText.Value=A.User.RecentCommands[Int+Win.Pos.Value]or'';
			Win.Cells[Int].Label.Visible=Win.FixEnabled;
		end;
	end;

	Win.Pos=A.Functions.Value('Number',0,Win.Fix);

	Win.Box=A.Functions.Lock('TextBox',{
			Parent=function()A.Functions.Wait()return Win.Frame end;
			TextColor3=A.Old.Color3.Yellow;
			BackgroundTransparency=1;
			Size=A.Old.UDim2.Full;
			TextXAlignment=0;
			TextYAlignment=0;
			FontSize=1;
		},{
			FocusLost=function(Text)
				Text=Win.Box.Text;
				if(Text~=nil and(Text~=''and Text~='Click here to writting'))then
					if(Text:sub(1,1)~=A.Data.Start)then Text=A.Data.Start..Text;end;
					A.Functions.Wait();
					local Message=A.Functions.SearchCommand(Text);
					if(Message~=nil)then A.Functions.Message('Hint',Message);return nil;end;
					if(Win.FixEnabled==true and A~=nil)then
						table.insert(A.User.RecentCommands,1,Text);
						Win.Fix();
					end;
				end;Text=nil;
			end;
		}
	);Win.Box.Text='Click here to writting';

	A.Functions.Lock('Frame',{
			BackgroundColor3=A.Old.Color3.Grey;
			Position=A.Old.UDim2.new(0,0,1);
			Size=A.Old.UDim2.new(1,0,0,5);
			BackgroundTransparency=.5;
			Parent=Win.Frame;
		}
	);

	local Smg={};
	for Int=1,Win.MaxCells do
		local Cell={};Win.Cells[#Win.Cells+1]=Cell;

		Cell.SetText=A.Functions.Value('String',A.User.RecentCommands[Int],function(Value)Cell.Label.Visible=Value~='';Cell.Label.Text=Win.Pos.Value+Int..'.) '..Value;Value=nil;end);

		Cell.Label=A.Functions.Button('TextButton',{
				Visible=function()if(Win.FixEnabled==false)then return false;else return Cell.SetText.Value~='';end;end;
				Text=function()return Win.Pos.Value+Int..'.) '..Cell.SetText.Value;end;
				Position=A.Old.UDim2.new(0,0,1,20*(Int-1)+5);
				Size=A.Old.UDim2.new(1,0,0,20);
				AutoButtonColor=true;
				Parent=Win.Frame;
				TextXAlignment=0;
				FontSize=1;
			},function()
				A.Functions.SearchCommand(Cell.SetText.Value);
			end
		);Smg[Int]=Cell.Label;
	end;
	A.Functions.TransparencyContact(Smg);

	local Num=0;
	local Asd={};
	for Int=1,BSn do
		Asd[Int]=A.Functions.Button('TextButton',{
				Position=A.Old.UDim2.new(1/BSn*(Int-1),1,0,1);
				Size=A.Old.UDim2.new(1/BSn,-2,1,-2);
				BackgroundColor3=A.Old.Color3.Grey;
				TextColor3=A.Old.Color3.Black;
				Text=BS[Int+Num];
				Parent=Win.Menu;
				FontSize=1;
			},BS[Int+Num+1]
		);
		Num=Num+1;
	end;
	A.Functions.TransparencyContact(Asd);

end;
A.Functions.HelpGui=function()
	local Win=A.Functions.GiveWindow('Help',400,400);
	if(Win==nil)then return nil;end;

	local Ears={'Commands';'Players';'Signals';};

	Win.Ears={};
	Win.NumOfEars=#Ears;
	Win.NumberOfCommands=#A.Commands;

	local NUM;
	local CCMD;
	local TEXT='';
	Win.FixTutorial=function()
		NUM=Win.Pos.Value+1;
		CCMD=A.Commands[NUM];
		if(A.Stuffs.ForTutorialOfCommands==nil)then
			A.Stuffs.ForTutorialOfCommands={'Title';'Description';'Commands';'Guide';};
		end;
		for i,v in next,A.Stuffs.ForTutorialOfCommands do
			TEXT=TEXT..v..': '..CCMD[v]..'\n\n\n';i,v=nil;
		end;
		TEXT=NUM..' of '..Win.NumberOfCommands..'\n\n\n'..TEXT;
		Win.Ears[1].SetText.Value=TEXT;TEXT='';
	end;

	Win.Pos=A.Functions.Value('Number',0,function(Value)Win.FixTutorial();Value=nil;end);
	Win.CurrentFrame=A.Functions.Value('String','Commands',function(Value)
		for i=1,Win.NumOfEars do
			Win.Ears[i].Frame.Visible=Value==Win.Ears[i].Name;
		end;
	end);

	local Smgs={};
	for Int,Name in next,Ears do
		local Ear={};Win.Ears[#Win.Ears+1]=Ear;

		Ear.Name=Name;

		Ear.SetText=A.Functions.Value('String','',function(Value)Ear.Frame.Text=Value;Value=nil;end);

		Ear.Frame=A.Functions.Lock('TextLabel',{
				Visible=function()return Win.CurrentFrame.Value==Name;end;
				Text=function()return Ear.SetText.Value;end;
				BackgroundTransparency=1;
				Position=A.Old.UDim2.Pax;
				Size=A.Old.UDim2.Full;
				TextXAlignment=0;
				TextYAlignment=0;
				Parent=Win.Frame;
				FontSize=2;
			}
		);
		Ear.Ear=A.Functions.Button('TextButton',{
				Position=A.Old.UDim2.new(1/Win.NumOfEars*(Int-1),1.25,0,1.25);
				Size=A.Old.UDim2.new(1/Win.NumOfEars,-2.5,1,-2.5);
				BackgroundColor3=A.Old.Color3.Grey;
				TextColor3=A.Old.Color3.Black;
				Parent=Win.Menu;
				FontSize=1;
				Text=Name;
			},function()
				Win.CurrentFrame.Value=Name;
			end
		);Smgs[#Smgs+1]=Ear.Ear;

		if(Name=='Players')then
			local Text='';
			for Int,Table in next,A.Calls do
				Text=Text..Table.Description..': '..Table.Calls..'\n'..'\n';
			end;
			Ear.SetText.Value=Text;
		elseif(Name=='Signals')then
			Ear.SetText.Value=[[The first signal what you need for run a command signal is "]]..A.Data.Start..'" :3'..'\n\n'..[[For arguments type this "]]..A.Data.Step..'"'..'\n\n'..[[To use blink argument (hard to tell my english not enough to this) "{b{" until "}b}" so {b{blah;blah;LAALla;;;;aolaL}b}]];
		elseif(Name=='Commands')then
			Win.FixTutorial();
			for i=0,1 do
				local Num=i==0 and-1 or 1;
				local Plus;
				Smgs[#Smgs+1]=A.Functions.Button('TextButton',{
						Position=A.Old.UDim2.new(i,i==1 and -20,1,-20);
						BackgroundColor3=A.Old.Color3.Grey;
						TextColor3=A.Old.Color3.Black;
						Size=A.Old.UDim2.ButtonSize;
						Parent=Win.Ears[1].Frame;
						Text=i==0 and'<'or'>';
						FontSize=3;
					},function()
						Plus=Win.Pos.Value+Num;
						if(Plus>=0 and Plus<Win.NumberOfCommands)then
							Win.Pos.Value=Plus;
						end;
					end
				);
			end;
		end;

	end;A.Functions.TransparencyContact(Smgs);

end;
A.Functions.GetBase=function()
	for i,v in next,A.Service.Workspace:children()do
		if(v.className=='Part'and v.Name=='Base')then
			A.Functions.Remove(v,true);
		end;i,v=nil;
	end;
	local Base=A.Old.Instance.NewObject'Part';
		Base.Name='Base';
		Base.Locked=true;
		Base.Anchored=true;
		Base.archivable=false;
		Base.Size=A.Old.Vector3.new(555,2,555);
		Base.BrickColor=A.Old.BrickColor.new'37';
		Base.Parent=A.Service.Workspace;
	return Base;
end;
A.Functions.Clean=function()
	local Base=A.Functions.GetBase();
	if(A.Stuffs.Shielded==nil)then
		A.Stuffs.Shielded={
			HumanoidController=true;
			Terrain=true;
			Camera=true;
			Player=true;
		};
	end;
	if(A.Stuffs.Banned_Services==nil)then
		A.Stuffs.Banned_Services={
			NetworkClient=true;
			CoreGui=true;
		};
	end;
	for i,v in next,Game:children()do
		pcall(function()
			if(A.Stuffs.Banned_Services[v.className]==nil)then
				for i,v in next,v:children()do
					if(v~=script and v~=Base and A.Stuffs.Shielded[v.className]~=true and A.Service.Players:GetPlayerFromCharacter(v)==nil)then
						pcall(function()
							v.Parent=nil;
						end);
					end;i,v=nil;
				end;
			end;
		end);i,v=nil;
	end;
end;
A.Functions.ResetLighting=function()
	local Lighting=A.Service.Lighting;
	if(A.Stuffs.LightingBaseProperties==nil)then
		A.Stuffs.LightingBaseProperties={
			ShadowColor=A.Old.Color3.new(.7,.7,.72);
			FogColor=A.Old.Color3.new(.75,.75,.75);
			ColorShift_Bottom=A.Old.Color3.Black;
			GeographicLatitude=41.733299255371;
			ColorShift_Top=A.Old.Color3.Black;
			Ambient=A.Old.Color3.Grey;
			Brightness=1;
			FogEnd=1e6;
			FogStart=0;
		};
	end;
	for i,v in next,A.Stuffs.LightingBaseProperties do
		Lighting[i]=v;i,v=nil;
	end;
	pcall(Lighting.ClearAllChildren,Lighting);
end;
A.Functions.ExplorerGui=function()
	local Win=A.Functions.GiveWindow('Explorer',440,400);
	if(Win==nil)then
		return nil;
	end;

	Win.Frames={};

	Win.CountThis=A.Functions.Value('Object',Game,function(Value)
		if(Win.Frames.Explorer.SetPos.Value==0)then
			Win.Frames.Explorer.Count(0,Value);
		else
			Win.Frames.Explorer.SetPos.Value=0;
		end;
	end);
	Win.WatchingObject=A.Functions.Value('Object',Game,function(Value)
		if(Win.Frames.Properties.SetPos.Value==0)then
			Win.Frames.Properties.Count(0,Value);
		else
			Win.Frames.Properties.SetPos.Value=0;
		end;
	end);

	local Cnr={};

	Win.History={Game;};
	Win.HistoryPos=1;

	for i=0,1 do
		local Plus=i==0 and -1 or 1;
		local Num;
		Cnr[#Cnr+1]=A.Functions.Button('TextButton',{
				BackgroundColor3=A.Old.Color3.Blue;
				Position=A.Old.UDim2.new(0,20*i);
				TextColor3=A.Old.Color3.Black;
				Text=i==0 and'<'or'>';
				Parent=Win.Menu;
				FontSize=3;
			},function()
				Num=Win.HistoryPos+Plus;
				if(Num<1 or Win.History[Num]==nil)then return nil;end;
				Win.HistoryPos=Num;
				Win.CountThis.Value=Win.History[Num];
			end
		);
	end;
	Win.HomeButton=A.Functions.Button('TextButton',{
			BackgroundColor3=A.Old.Color3.Green;
			Position=A.Old.UDim2.new(0,40);
			TextColor3=A.Old.Color3.Black;
			Parent=Win.Menu;
			Text='H';
		},function()
			Win.CountThis.Value=Game;
			Win.HistoryPos=1;
		end
	);
	Win.RefreshButton=A.Functions.Button('TextButton',{
			BackgroundColor3=A.Old.Color3.Grey;
			Position=A.Old.UDim2.new(0,60);
			TextColor3=A.Old.Color3.Black;
			Parent=Win.Menu;
			Text='R';
		},function()
			Win.Frames.Explorer.Count(0,Win.CountThis.Value);
		end
	);
	Win.RemoveButton=A.Functions.Button('TextButton',{
			BackgroundColor3=A.Old.Color3.Grey;
			Position=A.Old.UDim2.new(0,80);
			TextColor3=A.Old.Color3.Black;
			Parent=Win.Menu;
			Text='K';
		},function()
			for i,v in next,Win.Frames.Explorer.Selected do
				if(#v~=0)then
					for i,v in next,v do
						A.Functions.Remove(v);
					end;
				end;
			end;
		end
	);

	for i=0,1 do
		local Name=i==0 and'Explorer'or'Properties';
		local this={};
		this.Cells={};

		this.SetPos=A.Functions.Value('Number',0,function(Value)
			this.PosChanged(Value);
		end);

		this.Frame=A.Functions.Lock('Frame',{
				Size=A.Old.UDim2.new(.5,-20,1);
				Position=A.Old.UDim2.new(i/2);
				BackgroundTransparency=1;
				Parent=Win.Frame;
			}
		);
		this.ScrollFrame=A.Functions.Lock('Frame',{
				BackgroundColor3=A.Old.Color3.White;
				Size=A.Old.UDim2.new(0,20,1);
				Position=A.Old.UDim2.new(1);
				BackgroundTransparency=.5;
				Parent=this.Frame;
			}
		);
		Cnr[#Cnr+1]=this.ScrollFrame;

		for i=0,1 do
			local Plus=i==0 and-20 or 20;
			local Num;
			Cnr[#Cnr+1]=A.Functions.Button('TextButton',{
					Position=A.Old.UDim2.new(0,0,i,i==1 and-20);
					BackgroundColor3=A.Old.Color3.Grey;
					Size=A.Old.UDim2.ButtonSize;
					Text=i==0 and'/\\'or'\\/';
					Parent=this.ScrollFrame;
					AutoButtonColor=true;
					FontSize=3;
				},function()
					Num=this.SetPos.Value+Plus;
					if(Num<0)then
						Num=0;
					end;
					if(Num>=this.Max)then
						Num=this.Max-(this.Max%20);
					end;
					this.SetPos.Value=Num;
				end
			);
		end;


		if(i==0)then--Explorer

			this.CountThis=Win.CountThis;

			this.Selected={};
			this.FreeBoxes={};

			this.Count=function(From,Object)
				local Parts=Object:children();
				if(#Parts==0)then return nil;end;
				this.Max=#Parts;


				local Asd;
				local i=1;
				local Object2;
				local NotGood=0;

				while(i<21)do
					Asd=From+i+NotGood;
					Object2=Parts[Asd];
					if(Object2==nil or pcall(function()return Object2:IsA'';end)==true)then
						this.Cells[i].SetObject.Value=Object2;
						i=i+1;
					else
						NotGood=NotGood+1;
					end;
				end;

			end;
			this.PosChanged=function(Value)
				this.Count(Value,this.CountThis.Value);
			end;

			for i=1,20 do
				local Cell={};this.Cells[#this.Cells+1]=Cell;

				Cell.GetPos=function()return this.SetPos.Value+i;end;

				Cell.SetText=A.Functions.Value('String','N/A',function(Value)
					Cell.Text.Text=Value;
				end);
				Cell.SetObject=A.Functions.Value('Object',nil,function(Value)

					if(Value~=nil)then
						Cell.SetSelect.Value=Value:FindFirstChild'Ohgal_Selection'~=nil;
						Cell.SetText.Value=Value.Name..' ('..Value.className..')';
						Cell.Number.Text=Cell.GetPos();
					end;

					Cell.Frame.Visible=Value~=nil or false;

				end);
				Cell.SetSelect=A.Functions.Value('Bool',false,function(Value)
					Cell.Selector.BackgroundColor3=Value==true and A.Old.Color3.Green or A.Old.Color3.Red;
					local Object=Cell.SetObject.Value;
					if(Value==false)then
						local Selector=Object:FindFirstChild'Ohgal_Selection';
						if(Selector~=nil)then
							Selector.Parent=nil;
							this.FreeBoxes[#this.FreeBoxes+1]=Selector;
						end;
					else
						local ThisAdded;
						local Selector=Object:FindFirstChild'Ohgal_Selection'or this.FreeBoxes[1]or A.Old.Instance.NewObject'BindableEvent';
						if(Selector==this.FreeBoxes[1])then
							table.remove(this.FreeBoxes,1);
						end;

						Selector.Name='Ohgal_Selection';
						Selector.archivable=false;
						Selector.Parent=Object;


						local Box;
						if(Object:IsA'Model'or Object:IsA'Part')then
							Box=A.Old.Instance.NewObject('SelectionBox',this.Frame);
							Box.Adornee=Object;
						end;

						if(this.Selected[Object.className]==nil)then
							this.Selected[Object.className]={};
						else
							for i,v in next,this.Selected[Object.className]do
								if(v==Object)then
									ThisAdded=true;
									table.remove(this.Selected[Object.className],i);break;
								end;
							end;
						end;
						this.Selected[Object.className][#this.Selected[Object.className]+1]=Object;

						if(ThisAdded==nil)then
							local Kill=function()
								Selector.Parent=nil;
								this.FreeBoxes[#this.FreeBoxes+1]=Selector;
								if(Box~=nil)then Box.Adornee=nil;Box.Parent=nil;end;
								for i,v in next,this.Selected[Object.className]do
									if(v==Object)then
										table.remove(this.Selected[Object.className],i);break;
									end;
								end;
							end;
							A.Functions.Thread(function()
								while(Selector.Parent~=nil)do Selector.Changed:wait();end;
								Kill();
							end);
							A.Functions.Thread(function()
								while(Object.Parent~=nil)do Object.Changed:wait();end;
								Kill();
							end);
						end;
					end;
				end);


				Cell.Frame=A.Functions.Lock('Frame',{
						Position=A.Old.UDim2.new(0,0,0,i~=1 and 20*(i-1)+1 or 1);
						Visible=function()return Cell.SetObject.Value~=nil;end;
						Size=A.Old.UDim2.new(1,0,0,18);
						BackgroundTransparency=1;
						Parent=this.Frame;
					}
				);

				Cell.Selector=A.Functions.Button('ImageButton',{
						BackgroundColor3=function()return Cell.SetSelect.Value==true and A.Old.Color3.Green or A.Old.Color3.Red;end;
						Size=A.Old.UDim2.new(0,20,1);
						Position=A.Old.UDim2.Pax;
						Parent=Cell.Frame;
					},function()
						Cell.SetSelect.Value=Cell.SetSelect.Value==false;
					end
				);
				Cnr[#Cnr+1]=Cell.Selector;

				Cell.Number=A.Functions.Lock('TextLabel',{
						BackgroundColor3=A.Old.Color3.Grey;
						Position=A.Old.UDim2.new(0,20);
						Size=A.Old.UDim2.new(0,20,1);
						Parent=Cell.Frame;
						Text=Cell.GetPos;
						FontSize=1;
					}
				);
				Cnr[#Cnr+1]=Cell.Number;

				local TimeOut=0;
				Cell.Text=A.Functions.Button('TextButton',{
						Text=function()return Cell.SetText.Value;end;
						BackgroundColor3=A.Old.Color3.White;
						Position=A.Old.UDim2.new(0,40);
						TextColor3=A.Old.Color3.Black;
						Size=A.Old.UDim2.new(1,-40,1);
						AutoButtonColor=true;
						Parent=Cell.Frame;
						TextXAlignment=0;
						FontSize=1;
					},function()
						if(TimeOut==1)then
							Win.HistoryPos=Win.HistoryPos+1;
							Win.History[Win.HistoryPos]=Cell.SetObject.Value;
							Win.History[Win.HistoryPos+1]=nil;
							this.CountThis.Value=Cell.SetObject.Value;
						else
							TimeOut=1;

							Win.WatchingObject.Value=Cell.SetObject.Value;

							Delay(.2,function()
								TimeOut=0;
							end);
						end;
					end
				);
				Cnr[#Cnr+1]=Cell.Text;

			end;

		else--Properties

			this.Count=function(From,Object)

				if(this._ThisBox~=nil)then
					this._ThisBox.Parent=nil;
				end;

				local Table=A.Functions.GetProperties(Object,true);
				this.Max=#Table;

				if(From<=4)then
					this.Cells[1].SetProperty.Value='Name';
					this.Cells[1].Fix();

					this.Cells[2].SetProperty.Value='Parent';
					this.Cells[2].Fix();

					this.Cells[3].SetProperty.Value='className';
					this.Cells[3].Fix();

					this.Cells[4].SetProperty.Value='archivable';
					this.Cells[4].Fix();

					for i=5,20 do
						this.Cells[i].SetProperty.Value=Table[(i-4)+From]or'';
						this.Cells[i].Fix();
					end;
				else
					for i=1,20 do
						this.Cells[i].SetProperty.Value=Table[i+From]or'';
						this.Cells[i].Fix();
					end;
				end;
			end;
			this.PosChanged=function(Value)
				this.Count(Value,Win.WatchingObject.Value);
			end;

			this.TextBox=function(ALALOLUBU)--ROFL
				if(pcall(function()this._ThisBox.Parent=ALALOLUBU;this._ThisBox.Text=ALALOLUBU.Text;end)==false)then
					this._ThisBox=A.Functions.Peace('TextBox',{
							BackgroundColor3=A.Old.Color3.White;
							TextColor3=A.Old.Color3.Black;
							Size=A.Old.UDim2.Full;
							Text=ALALOLUBU.Text;
							BorderSizePixel=0;
							Parent=ALALOLUBU;
							TextXAlignment=0;
							FontSize=1;
						}
					);
				end;
				Delay(0,function()pcall(function()this._ThisBox:CaptureFocus();end);end);
				this._ThisBox.FocusLost:wait();
				this._ThisBox.Parent=nil;
				A.Functions.Thread(function()
					Win.WatchingObject.Value[this.SetProperty]=loadstring('return '..this._ThisBox.Text)();
				end);
			end;

			for i=1,20 do
				local Cell={};this.Cells[#this.Cells+1]=Cell;

				Cell.SetProperty=A.Functions.Value('String','',function(Value)
					Cell.Frame.Visible=Value~='';
				end);

				Cell.Fix=function()
					if(Cell.SetProperty.Value~='')then
						Cell.Property.Text=Cell.SetProperty.Value..' ';
						Cell.Property.Size=A.Old.UDim2.new(0,Cell.Property.TextBounds.X,1);

						Cell.ValueButton.Position=A.Old.UDim2.new(0,Cell.Property.Size.X.Offset);
						Cell.ValueButton.Size=A.Old.UDim2.new(1,-Cell.Property.Size.X.Offset,1);
						Cell.ValueButton.Text=tostring(Win.WatchingObject.Value[Cell.SetProperty.Value]);
					end;
				end;


				Cell.Frame=A.Functions.Lock('Frame',{
						Position=A.Old.UDim2.new(0,0,0,i~=1 and 20*(i-1)+1 or 1);
						Visible=function()return Cell.SetProperty.Value~='';end;
						Size=A.Old.UDim2.new(1,0,0,18);
						BackgroundTransparency=1;
						Parent=this.Frame;
					}
				);

				Cell.Property=A.Functions.Lock('TextLabel',{
						Size=function()return Cell.Property~=nil and A.Old.UDim2.new(0,Cell.Property.TextBounds.X,1)or A.Old.UDim2.Pax;end;
						Text=function()return Cell.SetProperty.Value..' ';end;
						BackgroundColor3=A.Old.Color3.DarkRed;
						TextWrapped=false;
						Parent=Cell.Frame;
						TextWrap=false;
						FontSize=1;
					}
				);
				Cnr[#Cnr+1]=Cell.Property;

				Cell.ValueButton=A.Functions.Button('TextButton',{
						Text=function()return(Cell.SetProperty.Value~=''and Win.WatchingObject.Value~=nil)and tostring(Win.WatchingObject.Value[Cell.SetProperty.Value])or'';end;
						Position=function()return A.Old.UDim2.new(0,Cell.Property.Size.X.Offset);end;
						Size=function()return A.Old.UDim2.new(1,-Cell.Property.Size.X.Offset,1);end;
						Parent=Cell.Frame;
						TextXAlignment=0;
						FontSize=1;
					},function()
						this.SetProperty=Cell.SetProperty.Value;
						this.TextBox(Cell.ValueButton);Wait();
						Cell.ValueButton.Text=tostring(Win.WatchingObject.Value[Cell.SetProperty.Value]);
					end
				);
				Cnr[#Cnr+1]=Cell.ValueButton;

			end;

		end;--Properties end;

		this.Count(0,Game);


		Win.Frames[Name]=this;
	end;

	A.Functions.TransparencyContact(Cnr);

end;
A.Functions.AddKey=function(Key,Function)
	if(A.Stuffs.Security==true)then
		if(A.KeyCommands[Key]==nil)then A.KeyCommands[Key]={};end;
		A.KeyCommands[#A.KeyCommands+1]=Function;
		A.Service.GuiService.AddKey(Key);
		Key,Function=nil;
	end;
end;
A.Functions.DoKeyCommand=function(Key)
	if(A.KeyCommands[Key]~=nil)then
		for Int=1,#A.KeyCommands[Key]do
			A.KeyCommands[Key][Int]();
			Int=nil;
		end;
	end;Key=nil;
end;
A.Functions.Heal=function(Corpse)--From first Local Admin :3
	if(Corpse)then
		local Humanoid=A.Functions.FindObject(Corpse,'className','Humanoid');
		if(Humanoid==nil)then
			return nil;
		else
			if(Humanoid.Health<=0)then
				return nil;
			end;
			Humanoid.Health=Humanoid.MaxHealth
		end;
		for i,v in next,A.Data.CharacterLimbs do
			if(Corpse:FindFirstChild(i)==nil)then
				local Limb=A.Functions.Peace('Part',{
					CanCollide=false;
					BottomSurface=0;
					Parent=Corpse;
					TopSurface=0;
					formFactor=0;
					Size=v.Size;
					Name=i;
				});
				if(v.C0 and v.C1)then
					local Weld=A.Old.Instance.NewObject('Motor6D',Corpse:FindFirstChild'Torso');
					if(Weld.Parent)then
						Limb.Position=Weld.Parent.Position;
						Weld.Name=v.Name;
						Weld.Part0=Weld.Parent;
						Weld.Part1=Limb;
						Weld.C0=v.C0;
						Weld.C1=v.C1;
						Weld.MaxVelocity=.1;
					end;
					Weld=nil;
				end;
				Limb,i,v=nil;
			end;
			i,v=nil;
		end;
		local Skin=Corpse:FindFirstChild'Body Colors';
		if(Skin~=nil)then
			Skin.Parent=nil;
			Skin.Parent=Corpse;
		end;
		local Animate=Corpse:FindFirstChild'Animate';
		if(Animate~=nil)then
			Animate.Parent=nil;
			Animate.Parent=Corpse;
		end;
	end;
end;
A.Functions.CreateWeld=function(Part0,Part1,C0,C1)
	local Weld=A.Old.Instance.NewObject('Motor',Part0);
		Weld.Part0=Part0;
		Weld.Part1=Part1;
		if(C0~=nil)then
			Weld.C0=C0;
		end;
		if(C1~=nil)then
			Weld.C1=C1;
		end;
	return Weld;
end;
A.Functions.MemeGui=function()
	local Win=A.Functions.GiveWindow('Memes',300,300);
	if(Win==nil)then
		return nil;
	end;

	Win.Title.Position=A.Old.UDim2.new(.5,-150);

	Win.SetPos=A.Functions.Value('Number',0,function(Value)
		Win.Status.Text=Value;
		Win.Image.Image=Value;
	end);


	Win.Memes={};local Num=0;
	for i,v in next,A.Images.Meme do Num=Num+1;--[[Num+=1; don't work :'( ]]
		Win.Memes[Num]={Name=i;ID=v;};
	end;Win.NumMemes=#Win.Memes;

	Win.Status=A.Functions.Lock('TextLabel',{
			Text=function()return 1+Win.SetPos.Value..' of '..Win.NumMemes..': '..Win.Memes[Win.SetPos.Value+1].Name..' ('..Win.Memes[Win.SetPos.Value+1].ID..')';end;
			Position=A.Old.UDim2.new(0,20);
			Size=A.Old.UDim2.new(1,-40,1);
			TextColor3=A.Old.Color3.White;
			BackgroundTransparency=1;
			Parent=Win.Menu;
			FontSize=2;
		}
	);
	Win.Image=A.Functions.Lock('ImageLabel',{
			Image=function()return A.Data.BaseUrl..Win.Memes[Win.SetPos.Value+1].ID;end;
			Position=A.Old.UDim2.Pax;
			Size=A.Old.UDim2.Full;
			Parent=Win.Frame;
		}
	);

	local Cnr={};
	local Num;
	for i=0,1 do
		local Plus=i==0 and -1 or 1;
		Cnr[#Cnr+1]=A.Functions.Button('TextButton',{
				Position=A.Old.UDim2.new(i,i==1 and -20);
				BackgroundColor3=A.Old.Color3.Grey;
				TextColor3=A.Old.Color3.Black;
				Size=A.Old.UDim2.new(0,20,1);
				Text=i==0 and'<'or'>';
				Parent=Win.Menu;
				FontSize=2;
			},function()
				Num=Win.SetPos.Value+Plus;
				if(Num>=Win.NumMemes)then
					Num=0;
				end;
				if(Num<0)then
					Num=Win.NumMemes-1;
				end;
				Win.SetPos.Value=Num;
			end
		);
		A.Functions.Button('TextButton',{
				TextColor3=i==0 and A.Old.Color3.White or A.Old.Color3.DarkRed;
				Position=A.Old.UDim2.new(i/2,0,1,-20);
				Size=A.Old.UDim2.new(.5,0,0,20);
				Text=i==0 and'Wear'or'Drop';
				BackgroundTransparency=1;
				TextStrokeTransparency=0;
				Parent=Win.Frame;
				FontSize=3;
			},i==0 and function()
				A.Functions.MakeMeme(Win.Memes[Win.SetPos.Value+1].ID,A.User.C.Character);
			end or function()
				A.Functions.MakeMeme('reset!',A.User.C.Character);
			end
		);
	end;

	A.Functions.TransparencyContact(Cnr);

end;
A.Functions.SettingWait=function(Name,Bool)
	if(A.Settings[Name].Value~=Bool)then
		A.Settings[Name].Changed:wait();
	end;
	return A.Settings[Name];
end;
A.Functions.FindWithOutside=function(Start,End)
	local Type=type(End);
	if(Type=='userdata')then
		local Stepped=0;
		if(Start.Parent~=End)then
			while(Start.Parent~=End and Stepped<50)do
				Start=Start.Parent;
				Stepped=Stepped+1;
			end;
		end;
	elseif(Type=='string')then
		local Stepped=0;
		if(Start.Parent.className~=End)then
			while(Start.Parent.className~=End and Stepped<50)do
				Start=Start.Parent;
				Stepped=Stepped+1;
			end;
		end;
	end;

	return Start;
end;
A.Functions.ResizeChar=function(Char,Plus_Size)
	local Torso=Char.Torso;

	Torso.Anchored=true;
	Torso.BottomSurface=0;
	Torso.TopSurface=0;

	A.Functions.Remove(Char:FindFirstChild'Shirt',true);
	A.Functions.Remove(Char:FindFirstChild'Pants',true);

	local Virus=Char:FindFirstChild'Shirt Graphic';
	if(Virus~=nil)then
		Virus:Destroy();
	end;

	local Welds={};
	local Change;Change=function(Object)
		for i,Weld in next,Object:children()do
			if(Weld.className=='Weld'or Weld.className=='Motor'or Weld.className=='Motor6D')then
				local Part=Weld.Part1;

				Part.Anchored=true;

				Weld.Part1=nil;

				local r01,r02,r03,r04,r05,r06,r07,r08,r09,r10,r11,r12=Weld.C0:components();
				Weld.C0=A.Old.CFrame.new(r01*Plus_Size,r02*Plus_Size,r03*Plus_Size,r04,r05,r06,r07,r08,r09,r10,r11,r12);
				local r01,r02,r03,r04,r05,r06,r07,r08,r09,r10,r11,r12=Weld.C1:components();
				Weld.C1=A.Old.CFrame.new(r01*Plus_Size,r02*Plus_Size,r03*Plus_Size,r04,r05,r06,r07,r08,r09,r10,r11,r12);

				if(Part.Name~='Head')then
					Part.formFactor=3;
					Part.Size=Part.Size*Plus_Size;
				else
					for i,v in next,Part:children()do
						if(v.className=='Weld')then
							v.Part0=nil;
							v.Part1.Anchored=true;
						end;
					end;
					Part.formFactor=3;
					Part.Size=Part.Size*Plus_Size;
					for i,v in next,Part:children()do
						if(v.className=='Weld')then
							v.Part0=Part;
							v.Part1.Anchored=false;
						end;
					end;
				end;

				if(Weld.Parent==Torso)then
					Part.BottomSurface=0;
					Part.TopSurface=0;
				end;

				Part.Anchored=false;

				Weld.Part1=Part;

				if(Weld.Part0==Torso)then
					Welds[#Welds+1]=Weld;
					Part.Anchored=true;
					Weld.Part0=nil;
				end;
			elseif(Weld.className=='CharacterMesh')then
				local Body_Part=tostring(Weld.BodyPart):match'%w+.%w+.(%w+)';
				local Mesh=A.Old.Instance.NewObject('SpecialMesh',
					Body_Part=='Head'and Char:FindFirstChild'Head'or Body_Part=='Torso'and Char:FindFirstChild'Torso'or
					Body_Part=='LeftArm'and Char:FindFirstChild'Left Arm'or Body_Part=='RightArm'and Char:FindFirstChild'Right Arm'or
					Body_Part=='LeftLeg'and Char:FindFirstChild'Left Leg'or Body_Part=='RightLeg'and Char:FindFirstChild'Right Leg'or nil);
					Mesh.MeshId=A.Data.BaseUrl..Weld.MeshId;
					if(Weld.BaseTextureId~=0 or Weld.BaseTextureId~='0')then
						Mesh.TextureId=A.Data.BaseUrl..Weld.BaseTextureId;
					end;
					Mesh.Scale=Mesh.Scale*Plus_Size;
					Weld:Destroy();
			elseif(Weld.className=='SpecialMesh'and Weld.Parent~=Char.Head)then
				Weld.Scale=Weld.Scale*Plus_Size;
			end;
			Change(Weld);
		end;
	end;

	Change(Char);

	Torso.formFactor=3;
	Torso.Size=Torso.Size*Plus_Size;

	for i,v in next,Welds do
		v.Part0=Torso;
		v.Part1.Anchored=false;
	end;

	Torso.Anchored=false;
	--[[
	Wait(1);

	if(Shirts~=nil)then
		Shirts.Parent=Char;
	end;
	if(Pants~=nil)then
		Pants.Parent=Char;
	end;]]
end;
--[[Functions end;]]


--[[Old]]
local Table;
for i,Name in next,{
		'BrickColor';
		'Instance';
		'Vector3';
		'Vector2';
		'Color3';
		'CFrame';
		'UDim2';
		'UDim';
		'Ray';
	}do
	Table=loadstring('return '..Name)();
	if(Table~=nil)then
		A.Old[Name]=A.Functions.CopyTable(Table);
	end;i,Name=nil;
end;

A.Old.Instance.NewObject=A.Old.Instance.new;
A.Old.Instance.new=function(Object,Data)
	local Class=Object;
	Object,Data=A.Functions.GiveData(A.Old.Instance.NewObject(Object,Data));

	if(A.Stuffs.Gui.PartOfGui[Class]==true)then
		Data.Properties.BackgroundColor3=function()return A.Old.Color3.Black;end;
		Data.Properties.BorderSizePixel=function()return 0;end;
		Data.Properties.Visible=function()return true;end;
	end;
	if(A.Stuffs.Gui.Text[Class]==true)then
		Data.Properties.TextColor3=function()return A.Old.Color3.White;end;
		Data.Properties.TextWrapped=function()return true;end;
		Data.Properties.TextWrap=function()return true;end;
	end;
	if(A.Stuffs.Gui.Image[Class]==true)then
		Data.Properties.BackgroundTransparency=function()return 1;end;
	end;
	if(A.Stuffs.Gui.Button[Class]==true)then
		Data.Properties.AutoButtonColor=function()return false;end;
		Data.Properties.Active=function()return true;end;
	end;Class=nil;

	Data.Properties.archivable=function()return false;end;
	Data.Properties.Archivable=function()return false;end;
	Data.Properties.Name=function()return'';end;

	pcall(A.Functions.Peace,Object,Data.Properties);

	return Object,Data;
end;

A.Old.Color3.Red=A.Old.Color3.new(1);
A.Old.Color3.Black=A.Old.Color3.new();
A.Old.Color3.Green=A.Old.Color3.new(0,1);
A.Old.Color3.Blue=A.Old.Color3.new(0,0,1);
A.Old.Color3.DarkRed=A.Old.Color3.new(.8);
A.Old.Color3.Yellow=A.Old.Color3.new(1,1);
A.Old.Color3.White=A.Old.Color3.new(1,1,1);
A.Old.Color3.Grey=A.Old.Color3.new(.5,.5,.5);
A.Old.Color3.DarkGreen=A.Old.Color3.new(0,.8);
A.Old.Color3.DarkBlue=A.Old.Color3.new(0,0,.8);
A.Old.Color3.DarkBlue=A.Old.Color3.new(0,0,.8);
A.Old.Color3.DarkYellow=A.Old.Color3.new(.7,.7);

A.Old.CFrame.Pax=A.Old.CFrame.new();
A.Old.CFrame.Char=A.Old.CFrame.new(0,3,0);

A.Old.Vector3.Pax=A.Old.CFrame.Pax.p;
A.Old.Vector3.Char=A.Old.CFrame.Char.p;
A.Old.Vector3.Jump=A.Old.Vector3.new(0,100);


A.Old.BrickColor.White=A.Old.BrickColor.new'1001';
A.Old.BrickColor.Black=A.Old.BrickColor.new'1003';

A.Old.UDim2.Pax=A.Old.UDim2.new();
A.Old.UDim2.Full=A.Old.UDim2.new(1,0,1);
A.Old.UDim2.ButtonSize=UDim2.new(0,20,0,20);
A.Old.UDim2.ScreenPos=A.Old.UDim2.new(0,0,0,-1);
A.Old.UDim2.ScreenSize=A.Old.UDim2.new(1,0,1,1);
--[[Old end;]]


--[[Data]]
A.Data.Step=[=[;]=];
A.Data.Start=[=[']=];
A.Data.Wrap=[=[ & ]=];
A.Data.Repeat=[=[##]=];
A.Data.RbxUrl='rbxassetid://';
A.Data.BaseUrl='http://www.roblox.com/Asset/?id=';
A.Data.CharacterLimbs={
	['Torso']={
		Size=A.Old.Vector3.new(2,2,1);
	};
	['Head']={
		C1=A.Old.CFrame.new(0,-0.5,0,-1,-0,-0,0,0,1,0,1,0);
		C0=A.Old.CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0);
		Size=A.Old.Vector3.new(2,1,1);
		Name='Neck';
	};
	['Right Arm']={
		C1=A.Old.CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,-0,-0);
		C0=A.Old.CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,-0,-0);
		Size=A.Old.Vector3.new(1,2,1);
		Name='Right Shoulder'
	};
	['Right Leg']={
		C1=A.Old.CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,-0,-0);
		C0=A.Old.CFrame.new(1,-1,0,0,0,1,0,1,0,-1,-0,-0);
		Size=A.Old.Vector3.new(1,2,1);
		Name='Right Hip'
	};
	['Left Arm']={
		C1=A.Old.CFrame.new(0.5,0.5,0,-0,-0,-1,0,1,0,1,0,0);
		C0=A.Old.CFrame.new(-1,0.5,0,-0,-0,-1,0,1,0,1,0,0);
		Size=A.Old.Vector3.new(1,2,1);
		Name='Left Shoulder'
	};
	['Left Leg']={
		C1=A.Old.CFrame.new(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0);
		C0=A.Old.CFrame.new(-1,-1,0,-0,-0,-1,0,1,0,1,0,0);
		Size=A.Old.Vector3.new(1,2,1);
		Name='Left Hip'
	};
};
--[[Data end;]]


--[[Stuffs]]
A.Stuffs.Gui={
	PartOfGui={
		ImageButton=true;
		TextButton=true;
		ImageLabel=true;
		TextLabel=true;
		TextBox=true;
		Frame=true;
	};
	Text={
		TextButton=true;
		TextLabel=true;
		TextBox=true;
	};
	Image={
		ImageButton=true;
		ImageLabel=true;
	};
	Button={
		ImageButton=true;
		TextButton=true;
	};
};
A.Stuffs.TrueBooleans={
	['of course']=true;
	['not false']=true;
	['why not']=true;
	['off on']=true;
	['yahwol']=true;
	['not 0']=true;
	['true']=true;
	['yes']=true;
	['yep']=true;
	['yup']=true;
	['on']=true;
	['ya']=true;
	['y']=true;
	['1']=true;
};
A.Stuffs.Security=pcall(function()return Game.RobloxLocked;end);
local Asd;
A.Stuffs.AsciiNum={};
A.Stuffs.AsciiChar={};
for i=0,255 do
	Asd=string.char(i);
	A.Stuffs.AsciiNum[Asd]=i;
	A.Stuffs.AsciiChar[i]=Asd;i=nil;
end;Asd=nil;
A.Stuffs.CharVirus={
	['Shirt Graphic']='ShirtGraphic';
	['RobloxTeam']='Script';
	['Sound']='Script';
};
A.Stuffs.GuideCommands={
	['-r']='<Property>';
	['-x']='<Position>';
	['-b']='<Boolean>';
	['-p']='<Player>';
	['-v']='<Value>';
	['-s']='<Size>';
	['-t']='<Text>';
	['-i']='<Path>';
};
A.Stuffs.NullTable={};
A.Stuffs.StarterSource=[==[if(Game.PlaceId~=0)then print=function()end;end;local Users=Game:service'Players';local User=Users.LocalPlayer; ]==];
--[[Stuffs end;]]


--[[Settings]]
A.Settings['Security of character']=false;
A.Settings['Windows transparency']=true;
A.Settings['Big jumps']=false;
A.Settings.HealthBar=false;
A.Settings.Immortal=false;
--[[Settings end;]]


--[[Service]]
for i,v in next,Game:children()do
	pcall(function()
		if(Game:service(v.className)~=nil)then
			A.Service[v.className]=v;
		end;i,v=nil;
	end);
end;
--[[Service end;]]



--[=[Create gui module
	Exemple:

A.Functions.CreateGuiModule(function()

end);

]=]
A.Functions.CreateGuiModule(function()
	for i,v in next,{'Hints';'Messages';'Other';'Windows';'First';}do
		A.User.Frames[v]=A.Functions.Lock('Frame',{
				Position=A.Old.UDim2.ScreenPos;
				Size=A.Old.UDim2.ScreenSize;
				BackgroundTransparency=1;
				Parent=A.User.Screen;
				Name=v;
			}
		);i,v=nil;
	end;
end);
A.Functions.CreateGuiModule(function()
	A.Stuffs.MenuButton=A.Functions.Lock('Sound',{
			SoundId='rbxasset://sounds/switch.wav';
			Parent=A.User.Screen;
			Volume=.5;
			Pitch=2;
		}
	);
	A.Stuffs.Button=A.Functions.Lock('Sound',{
			SoundId='rbxasset://sounds/SWITCH3.wav';
			Parent=A.User.Screen;
			Volume=.2;
			Pitch=2;
		}
	);
end);
A.Functions.CreateGuiModule(function()
	local Frame;
	local Pos1,Pos2=A.Old.UDim2.new(0,-110,1,-145),A.Old.UDim2.new(0,0,1,-145);

	local MouseEnter=A.Functions.Value('Bool',false,function(Value)
		A.User.MenuButton.Position=Value==true and Pos2 or Pos1;
		A.User.MenuButton.Transparency=Value==true and 0 or .5;
	end);
	local Visible=A.Functions.Value('Bool',false,function(Value)A.User.MenuButton.Visible,MouseEnter.Value=Value==false;Frame.Visible=Value;end);

	local BF={};
	local AddButtonFunction=function(Title,Function,Security)
		if(Security==true and A.Stuffs.Security==false)then
			return nil;
		end;
		BF[#BF+1]={
			Function=Function;
			Title=Title;
		};
	end;

	AddButtonFunction('Back to the game',function()Visible.Value=false;end);
	AddButtonFunction('Fix Roblox Guis',function()loadstring(Game:GetObjects'rbxassetid://85827582'[1].Value)();end,true);
	AddButtonFunction('Command Bar',function()A.Functions.CommandBar();end);
	AddButtonFunction('Show Memes',function()A.Functions.MemeGui();end);
	AddButtonFunction('Spawning',function()A.User.Char.Torso.CFrame=A.Functions.GetSpawnLocationCFrame();A.User.Char.Torso.Velocity=A.Old.Vector3.Pax;end);
	AddButtonFunction('Explorer',function()A.Functions.ExplorerGui();end);
	AddButtonFunction('Settings',function()A.Functions.SettingsGui();end);
	AddButtonFunction('Meters',function()A.Functions.Meter();end);
	AddButtonFunction('Reset',function()A.Functions.ResetChar(A.User.C);end);
	AddButtonFunction('Nuke',function()A.Functions.NukeChar(A.User.Char);end);
	AddButtonFunction('Help',function()A.Functions.HelpGui();end);
	AddButtonFunction('Heal',function()A.Functions.Heal(A.User.C.Character);end);

	AddButtonFunction=nil;


	A.User.MenuButton=A.Functions.Lock('TextButton',{
			Transparency=function()return MouseEnter.Value==true and 0 or .5;end;
			Visible=function()return Visible.Value==false;end;
			Position=function()return MouseEnter.Value==true and Pos2 or Pos1;end;
			TextColor3=A.Old.Color3.DarkYellow;
			Size=A.Old.UDim2.new(0,125,0,20);
			Parent=A.User.Frames.First;
			Text='Menu of Ohgal';
			FontSize=2;
		},{
			MouseEnter=function()
				MouseEnter.Value=true;
				A.User.MenuButton.MouseLeave:wait();
				MouseEnter.Value=false;
			end;
			MouseButton1Up=function()
				Visible.Value=true;
				A.Stuffs.MenuButton:play();
			end;
		}
	);
	coroutine.wrap(function()
		A.User.MenuButton.MouseButton1Down:wait();
		A.User.STARTUPMSG.Parent=nil;
	end)();
	Frame=A.Functions.Lock('Frame',
		{
			Position=A.Old.UDim2.new(.5,-200,.5,-((#BF*20)+5)/2);
			Size=A.Old.UDim2.new(0,400,0,(#BF*20)+10);
			Visible=function()return Visible.Value;end;
			BackgroundColor3=A.Old.Color3.DarkRed;
			Parent=A.User.Frames.First;
			BackgroundTransparency=.5;
		}
	);
	for Int,v in next,BF do
		A.Functions.Button('TextButton',{
				Position=A.Old.UDim2.new(0,5,0,(20*(Int-1))+5);
				TextColor3=A.Old.Color3.DarkYellow;
				Size=A.Old.UDim2.new(1,-10,0,20);
				BackgroundTransparency=.5;
				AutoButtonColor=true;
				Text=v.Title;
				Parent=Frame;
				FontSize=5;
				Font=1;
			},v.Function
		);
	end;
end);
A.Functions.CreateGuiModule(function()
	Delay(0,function()
		local Color1=A.Old.Color3.Black;
		local Color2=A.Old.Color3.Red;
		local Color3=A.Old.Color3.Red;
		local Color4=A.Old.Color3.Black;
		local Msg=A.Functions.Peace('TextLabel',{
				Text='Welcome!'..string.rep('\n',2)..'Dresmor Alakazard - Ohgal Local Admin';
				Position=A.Old.UDim2.new(.5,0,.5);
				BackgroundTransparency=.5;
				BackgroundColor3=Color1;
				Parent=A.User.Screen;
				TextColor3=Color2;
				BorderSizePixel=0;
				TextWrapped=true;
				FontSize=3;
			}
		);
		A.User.STARTUPMSG=Msg;
		Msg:TweenSizeAndPosition(A.Old.UDim2.new(0,300,0,70),A.Old.UDim2.new(.5,-150,.5,-35),1,2,1,false);
		Wait(5);
		Msg.BackgroundColor3=A.Old.Color3.Red;
		Msg.TextColor3=A.Old.Color3.Black;
		if(Msg.Parent~=nil)then
			Msg:TweenSizeAndPosition(A.Old.UDim2.new(0,200,0,20),A.Old.UDim2.new(0,25,1,-145),1,1,1,false);
			Msg.Text='<-- There is the MENU';
			coroutine.wrap(function()
				for i=1,3 do
					Msg.BackgroundColor3=Color3;
					Msg.TextColor3=Color4;
					A.Functions.Wait(.3);
					Msg.BackgroundColor3=Color1;
					Msg.TextColor3=Color2;
					A.Functions.Wait(.3);
				end;
			end)();
			Wait(6);
		end;
		A.Functions.Remove(Msg,true);
	end);
end);
A.Functions.CreateGuiModule(function()
	A.Functions.SettingWait('HealthBar',true);
	A.User.Gui.HelathBar={};
	local this=A.User.Gui.HelathBar;

	if(A.User.Humanoid.Value==nil)then
		A.User.Humanoid.Changed:wait();
	end;

	this.Fix=function()
		this.Pos=A.Old.UDim2.new(this.SetHealth.Value/this.SetMaxHealth.Value,0,1);
		if(this.HBar~=nil)then
			this.HBar.Size=this.Pos;
		end;
		return this.Pos;
	end;
	this.FixStats=function()
		this.Idk=this.Humanoid.Health/this.Humanoid.MaxHealth;
		this.SetMaxHealth.Value=this.Humanoid.MaxHealth;
		this.SetHealth.Value=this.Humanoid.Health;
		this.SetColor.Value=(this.Idk<=.1)and A.Old.Color3.DarkRed or(this.Idk>.1 and this.Idk<=.5)and
			A.Old.Color3.DarkYellow or(this.Idk>.5 and this.Idk<=1)and A.Old.Color3.Green or A.Old.Color3.Black;
	end;

	this.SetColor=A.Functions.Value('Color3',A.Old.Color3.Green,function(Color3)this.HBar.BackgroundColor3=Color3;Color3=nil;end);
	this.SetVisible=A.Functions.Value('Bool',true,function(Value)this.Frame.Visible=Value;Value=nil;end);
	this.SetMaxHealth=A.Functions.Value('Number',A.User.Humanoid.Value.MaxHealth,this.Fix);
	this.SetHealth=A.Functions.Value('Number',A.User.Humanoid.Value.Health,this.Fix);

	this.Frame=A.Functions.Lock('Frame',{
			Visible=function()return this.SetVisible.Value;end;
			Position=A.Old.UDim2.new(.5,-55,1,-25);
			Size=A.Old.UDim2.new(0,110,0,20);
			Parent=A.User.Frames.Other;
			BackgroundTransparency=.5;
		}
	);
	this.MHBar=A.Functions.Lock('Frame',
		{
			--BackgroundColor3=A.Old.Color3.DarkRed;
			Position=A.Old.UDim2.new(0,5,0,5);
			Size=A.Old.UDim2.new(1,-10,1,-10);
			BackgroundTransparency=1;
			Parent=this.Frame;
		}
	);
	this.HBar=A.Functions.Lock('Frame',
		{
			BackgroundColor3=function()return this.SetColor.Value;end;
			Position=A.Old.UDim2.Pax;
			Parent=this.MHBar;
		}
	);
	this.HBar.Size=this.Fix();

	this.Valid=true;

	coroutine.wrap(function()
		while(A.Functions.Check()and this.Valid==true)do
			this.SetVisible.Value=A.Settings.HealthBar.Value;
			A.Settings.HealthBar.Changed:wait();
		end;
	end)();
	coroutine.wrap(function()
		while(A.Functions.Check()and this.Valid==true)do
			A.Functions.SettingWait('HealthBar',true);

			this.Humanoid=A.User.Humanoid.Value;
			this.FixStats();

			coroutine.wrap(function()
				while(A.Functions.Check()and A.User.Humanoid.Value==this.Humanoid)do
					this.Humanoid.HealthChanged:wait();
					this.FixStats();
				end;
			end)();

			A.User.Humanoid.Changed:wait();
			this.Humanoid.MaxHealth=this.Humanoid.MaxHealth+1;
		end;
	end)();

end);
--[[Create gui module end;]]


--[=[Module create
	Exemple:
A.Functions.CreateModule('Type',function()

end);
]=]
A.Functions.CreateModule('Once',A.Functions.Screen);
A.Functions.CreateModule('Once',function()

	local Value=A.Functions.SettingWait('Immortal',true);
	local Val_;

	while(A.Functions.Check())do
		Val_=Value.Value;
		if(A.User.Humanoid.Value~=nil)then
			A.User.Humanoid.Value.Name=Val_==true and'Immortal'or'Humanoid';
			A.User.Humanoid.Value.MaxHealth=Val_==true and 1e666 or 100;
			A.User.Humanoid.Value.Health=Val_==true and 1e666 or 100;
		end;
		Value.Changed:wait();
	end;

end);
A.Functions.CreateModule('Once',function()
	local Num;
	A.Stuffs.SecurityID=A.Stuffs.SecurityID and A.Stuffs.SecurityID+1 or 1;
	local Local_ID=A.Stuffs.SecurityID;
	while(A.Functions.Check()==true and A.Stuffs.SecurityID==Local_ID)do
		A.Functions.Wait();

		A.User.Char=A.User.C.Character;

		if(A.User.Char~=nil and A.User.Char.PrimaryPart~=nil)then
			A.Functions.LoadModule'Char';
		end;

		A.User.C.CharacterAdded:wait();

		Num=#A.User.Connections;
		for i=1,Num do A.User.Connections[i]:disconnect();i=nil;end;
		for i=1,Num do A.User.Connections[i]=nil;i=nil;end;
	end;
end);
A.Functions.CreateModule('Char',function()
	_G['Ohgal - Char Security Version']=_G['Ohgal - Char Security']~=nil and _G['Ohgal - Char Security']+1 or 0;
	local CharSecurityVersion=_G['Ohgal - Char Security'];
	local Torso=A.User.Char.Torso
	while(A.Functions.Check()and CharSecurityVersion==_G['Ohgal - Char Security'])do
		A.Functions.SettingWait('Security of character',true);
		if(Torso.Position.Y<=-200 and Torso.Velocity.Y~=0)then
			Torso.CFrame=A.Functions.GetSpawnLocationCFrame();
			Torso.RotVelocity=A.Old.Vector3.Pax;
			Torso.Velocity=A.Old.Vector3.Pax;
		end;
		A.Functions.Wait();
	end;
end);
A.Functions.CreateModule('Char',function()
	A.User.Humanoid.Value=A.Functions.FindObject(A.User.Char,'className','Humanoid');

	if(A.Settings.Immortal.Value==true)then
			A.User.Humanoid.Value.Name='Immortal';
			A.User.Humanoid.Value.MaxHealth=1e666;
			A.User.Humanoid.Value.Health=1e666;
	end;

	coroutine.wrap(function()
		local Humanoid=A.User.Humanoid.Value;
		while(Humanoid==A.User.Humanoid.Value and A.Functions.Check()==true)do
			A.Functions.SettingWait('Big jumps',true);
			Humanoid.Jumping:wait();
			if(A.Settings['Big jumps'].Value==true)then
				Humanoid.Torso.Velocity=A.Old.Vector3.Jump;
			end;
		end;
	end)();

	for i,v in next,A.User.Char:children()do
		if(A.Stuffs.CharVirus[v.Name]==v.className)then
			A.Functions.Remove(v,true);
		end;i,v=nil;
	end;
	A.Functions.Connect(A.User.Char,'ChildAdded',function(v)
		if(A.Stuffs.CharVirus[v.Name]==v.className)then
			A.Functions.Remove(v,true);
		end;v=nil;
	end,A.User);
	if(A.Stuffs.CharVirus.Sound==nil)then return nil;end;
	for i,v in next,A.User.Char.PrimaryPart:children()do
		if(v.Name=='Sound'and v.className=='Sound'and v.archivable==false)then
			A.Functions.Remove(v,true);
		end;i,v=nil;
	end;
	A.Functions.Connect(A.User.Char.PrimaryPart,'ChildAdded',function(v)
		if(v.Name=='Sound'and v.className=='Sound'and v.archivable==false)then
			A.Functions.Remove(v,true);
		end;v=nil;
	end,A.User);
end);
A.Functions.CreateModule('PlayerGui',A.Functions.GuisParent);
A.Functions.CreateModule('PlayerGui',function()
	local Old=A.User.PlayerGui;
	coroutine.wrap(function()
		local Virus;
		while(A~=nil and A.Functions.Check()and Old==A.User.PlayerGui)do
			if(Virus==nil)then
				Virus=Old:FindFirstChild'HealthGUI';
			else
				Virus=Virus.Name=='HealthGUI'and Virus or nil;
			end;
			if(Virus~=nil)then
				A.Functions.VisibleOfHealthGUI(A.Settings.HealthBar.Value==false);
				Virus=Virus:FindFirstChild'hurtOverlay';
				if(Virus)then
					A.Functions.Remove(Virus,true);
				end;
			end;
			Virus=Old.ChildAdded:wait();Wait();
		end;
	end)();
	while(Old.Parent~=nil)do Old.Changed:wait();end;
	A.Old.Instance.NewObject('BoolValue',Old);
end);

--[[Module create end;]]



--[=[Call create
	Exemple:

A.Functions.CreateCall([[Description]],{},function(Self)

end);

]=]
A.Functions.CreateCall([[For you]],{'me!';'myself!';'satan!';},function(Self)
	return Self==A.User.C;
end);
A.Functions.CreateCall([[For they]],{'other!';'noobs!';'idiots!';'notme!';},function(Self)
	return Self~=A.User.C;
end);
A.Functions.CreateCall([[For players]],{'players!';},function(Self)
	return Self.userId>0;
end);
A.Functions.CreateCall([[For guests]],{'guests!';},function(Self)
	return Self.userId<1;
end);
A.Functions.CreateCall([[For random player]],{'random!';'rand!';},function(Self)
	return math.random(1,4)==1;
end);
A.Functions.CreateCall([[For each]],{'all!';'each!'},function(Self)
	return true;
end);
--[[Call create end;]]



A.Functions.SetupCommands=function()
--[==[Command create
 Exemple:

A.Functions.CreateCommand([[Title]],{},[[Description]],[[]],1,function(Text,FullText,Args)

end);

]==]
A.Functions.CreateCommand([[Repeat Command]],{'loopthis';'loopthat';'repeat';'rt';},[[Repeat commands...First is name of the loop... Second value is number of loop... Third is delay (0 not wait())... The last is the command and command argument(s)... To stop loop say loop name first and last "abort!"]],[[-v-v-v]],3,function(Text,FullText,Args)
	if(A.Stuffs.Loops==nil)then
		A.Stuffs.Loops={};
	end;

	local Value=Args[2]:lower()~='abort!'and true or nil;

	if(Value==true and A.Stuffs.Loops[Args[1]]~=nil)then
		error(Args[1]..' already run...');
		return nil;
	end;
	A.Stuffs.Loops[Args[1]]=Value;
	if(A.Stuffs.Loops[Args[1]]==nil)then
		return nil;
	end;
	local Repeat=tonumber(Args[2]);
	local Delay=tonumber(Args[3]);
	local Command=A.Data.Start..FullText:match(Args[1]..A.Data.Step..Args[2]..A.Data.Step..Args[3]..A.Data.Step..'(.+)');
	if(Delay>0)then
		for i=1,Repeat do
			if(A.Stuffs.Loops[Args[1]]==true)then
				A.Functions.SearchCommand(Command);
				Wait(Delay);
			else
				break;
			end;
		end;
	else
		for i=1,Repeat do
			A.Functions.Thread(function()
				A.Functions.SearchCommand(Command);
			end);
		end;
	end;
	A.Stuffs.Loops[Args[1]]=nil;
end);
A.Functions.CreateCommand([[Dummy]],{'dummy';'doll';},[[Dummy for testing lol... Add player name for or Vector3 position and for last number of dummies... For remove all, the first argument should be "remove!"]],[[-v-v]],2,function(Text,FullText,Args)
	if(Args[1] and Args[1]:lower()=='remove!')then
		for i,v in next,A.Service.Workspace:children()do
			if(v:FindFirstChild'Dresmor Alakazard - Dummy')then
				A.Functions.Remove(v,true);
			end;
		end;
		return nil;
	end;
	local Repeat=tonumber(Args[2])or 1;
	local Load,Position=pcall(function()return loadstring('local c={...};return c[1]('..Args[1]..')')(A.Old.CFrame.new);end);
	if(Load==false)then Position=A.Functions.Players(Args[1])[1].Character.Torso.CFrame;end;
	for i=1,Repeat do
		local Dummy=A.Functions.Peace('Model',{
				Parent=A.Service.Workspace;
				Name='Dummy';
			}
		);
		A.Old.Instance.NewObject('BoolValue',Dummy).Name='Dresmor Alakazard - Dummy';
		A.Old.Instance.NewObject('Humanoid',Dummy);
		A.Functions.Peace('Part',{
				CFrame=Position*CFrame.Angles(0,math.rad(360/Repeat*i),0)*CFrame.new(5+.2*Repeat,0,0);
				Size=Vector3.new(2,2,1);
				BottomSurface=0;
				TopSurface=0;
				formFactor=3;
				Parent=Dummy;
				Name='Torso';
			}
		);
		A.Functions.Heal(Dummy);
		A.Old.Instance.NewObject('SpecialMesh',Dummy.Head).Scale=Vector3.new(1.25,1.25,1.25);
		A.Functions.Peace('Decal',{
				Texture='rbxasset://textures/face.png';
				Parent=Dummy.Head;
				Name='face';
				Face=5;
			}
		);
	end;
end);
A.Functions.CreateCommand([[Wall Hack]],{'wallhack';'wall_hack';'wh';},[[Wall hack... Add number for transparency value! The base value is 0.5]],[[-v]],1,function(Text,FullText,Args)
	local Transparency=tonumber(Args[1])or .5;
	A.Functions.All(A.Service.Workspace,function(Part)
		if(Part:IsA'BasePart')then
			Part.AlphaModifier=Transparency;
		end;
	end);
end);
A.Functions.CreateCommand([[Teleport To A Place]],{'toplace';'tplace';'tpl';},[[Teleport to other places...]],[[-v-p]],2,function(Text,FullText,Args)
	local Teleport_ID=tonumber(Args[1]);
	A.Functions.Players(Args[2],function(Self)
		if(Self==A.User.C)then
			A.Services.TeleportService:Teleport(Teleport_ID);
		else
			A.Functions.CreateScript('LocalScript',Self,[[
				Game:service'TeleportService':Teleport(]]..Teleport_ID..[[);
			]]);
		end;
	end);
end);
A.Functions.CreateCommand([[Execution]],{'execution';'execute';'exe';},[[Like localscripting but this works only for admin...]],[[-t]],0,function(Text,FullText,Args)
	local Exe=A.Old.Instance.NewObject'StringValue';
		Exe.Name='Ohgal_Execution';
		Exe.Parent=A.User.C;
		Exe.Value=FullText;
end);
A.Functions.CreateCommand([[Resize Character]],{'resize';},[[Character resizing OLaloOLAolaol]],[[-p-v]],2,function(Text,FullText,Args)
	local Size=tonumber(Args[2]);
	if(Size==nil)then
		return nil;
	end;
	A.Functions.Players(Args[1],function(Self)
		A.Functions.ResizeChar(Self.Character,Size);
	end);
end);
A.Functions.CreateCommand([[Give Weapons]],{'giveweapons';'gws';},[[Give weapons from somebody to somebody...]],[[-p-p]],2,function(Text,FullText,Args)
	local Backpack=A.Functions.FindObject(A.Functions.Players(Args[2])[1],'className','Backpack');
	if(Backpack~=nil)then
		A.Functions.Players(Args[1],function(Self)
			if(Self.Character~=nil)then
				for i,v in next,Self.Character:children()do
					if(v.className=='Tool')then
						v.Parent=Backpack;
					end;
				end;
			end;
			for i,v in next,Self.Backpack:children()do
				if(v.className=='Tool'or v.className=='HopperBin')then
					v.Parent=Backpack;
				end;
			end;
		end);
	end;
end);
A.Functions.CreateCommand([[Be Cute]],{'becute';'bc';},[[Be cute?]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		local Parent=Self.Character;

		if(Parent==nil)then
			return nil;
		end;

		local StarterPos=A.Old.Vector3.Pax;

		local Round=15;
		local Asd=Round/5;
		local Radius=.8*Parent.Torso.Size.X/2;

		local PSize=.5;

		local P={};
		local Num=0;

		for i,v in next,Parent:children()do
			if(v.Name=='Pentagramma')then
				A.Functions.Remove(v,true);
			elseif(v.Name=='Black Metal Set')then
				for i,v in next,v:children()do
					if(v.className=='Part')then
						A.Functions.Remove(v,true);
					end;
				end;
			end;
		end;

		local Warehouse=A.Old.Instance.NewObject('Model',Parent);
			Warehouse.Name='Pentagramma';

		for i=0,Round do
			local Rad=math.rad((360/Round*i)+180);
			local Pos=A.Old.Vector3.new(
				math.sin(Rad)*Radius,
				math.cos(Rad)*Radius,
				-Parent.Torso.Size.Z/2
			);
			if(i~=0)then Num=Num+1;
				if(Num==Asd)then
					Num=0;
					P[#P+1]=Pos;
				end;
				A.Functions.Peace('BlockMesh',{
						Scale=A.Old.Vector3.new(PSize,PSize,(StarterPos-Pos).Magnitude*5.2)+A.Old.Vector3.new(math.random()/10,0,0);
						Parent=A.Functions.CreateWeld(
							Parent.Torso,
							A.Functions.Peace('Part',{
									BrickColor=BrickColor.new(199);
									CFrame=Parent.Torso.CFrame;
									Size=A.Old.Vector3.Pax;
									CanCollide=false;
									Parent=Warehouse;
									formFactor=3;
								}
							),
							A.Old.CFrame.new(StarterPos,Pos)*A.Old.CFrame.new(0,0,-(StarterPos-Pos).Magnitude/2)
						).Part1;
					}
				);
			end;
			StarterPos=Pos;
		end;

		for i,v in next,{{1;4;};{1;3;};{2;4;};{2;5;};{3;5;};}do --Make better...
			local StarterPos=P[v[1]];
			local Pos=P[v[2]];

			local Weld=A.Old.Instance.NewObject('Weld',Warehouse);
			A.Functions.Peace('BlockMesh',{
					Scale=A.Old.Vector3.new(PSize-.2,PSize-.2,(StarterPos-Pos).Magnitude*5.2)+Vector3.new(math.random()/10,0,0);
					Parent=A.Functions.CreateWeld(
						Parent.Torso,
						A.Functions.Peace('Part',{
								BrickColor=BrickColor.new(194);
								CFrame=Parent.Torso.CFrame;
								Size=A.Old.Vector3.Pax;
								CanCollide=false;
								Parent=Warehouse;
								formFactor=3;
							}
						),
						CFrame.new(StarterPos,Pos)*CFrame.new(0,0,-(StarterPos-Pos).Magnitude/2)
					).Part1;
				}
			);
		end;
	end);
end);
A.Functions.CreateCommand([[Change Music]],{'cmp';'cmusic';},[[Change current music properties]],[[-r-v]],2,function(Text,FullText,Args)
	local Name='Ohgal_Music';
	local Music=A.Service.Workspace.CurrentCamera:FindFirstChild(Name)or A.Service.Lighting(Name);
	if(Music~=nil)then
		Music=Music.className=='Tool'and Music:FindFirstChild(Name)or Music;
		print(Music,Music.className);
		for i,v in next,A.Functions.GetProperties(Music)do
			if(i:lower():find(Args[1]:lower())==1)then
				Music[i]=loadstring('return '..Args[2])();
			end;
		end;
	end;
end);
A.Functions.CreateCommand([[Music]],{'play';'music';'mp';},[[asd...Arguments: 1.) name of the music or number of the music 2.) Public mode or Private mode (Base mode is Public!)]],[[-v-b]],2,function(Text,FullText,Args)
	for i,Place in next,{A.Service.Lighting;A.Service.Workspace.CurrentCamera;}do
		for i,v in next,Place:children()do
			if(v.className=='Sound'and v.Name=='Ohgal_Music')then
				v:stop();
			end;
		end;
	end;

	local Bool=A.Functions.ToBoolean(Args[2]);
	local Sound_Data=A.Functions.LoadSound('Musics',Args[1],true);

	loadstring([[
		local Parent=]]..tostring(Bool)..[[ and Workspace.CurrentCamera or Game:service'Lighting';
		local Sound=Parent:FindFirstChild'Ohgal_Music'or Instance.new'Sound';
			Sound.SoundId=']]..A.Data.BaseUrl..Sound_Data.SoundId..[['
			Sound.Pitch=]]..Sound_Data.Pitch..[[
			Sound.Name='Ohgal_Music';
			Sound.Parent=Parent;
			Sound.Looped=true;
			Sound:play();
	]])();
end);
A.Functions.CreateCommand([[Kick]],{'kick';'bye';},[[Customed player'll leave from the game...]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		if(Self~=A.User.C)then
			if(A.Stuffs.ScriptPacket.LocalScript~=nil)then
				A.Functions.CreateScript('LocalScript',Self,[[script.Parent=nil;User.Parent=nil;User.Parent=Users;]]);
			else
				A.Functions.Remove(Self);
			end;
		end;
	end);
end);
A.Functions.CreateCommand([[Create Part]],{'npart';'cpart';'part';},[[Part creating... For remove all parts you should add first argument "remove!" or nothing... Arguments: 1.) Size(n,n,n) 2.) BrickColor 3.) Collide 4.) Anchor 5.) Position(0,0,0)[ haven't to add ] 6.) Type of part]],[[-s-b-b-v-x-v]],6,function(Text,FullText,Args)

	if(Args[1]==nil or Args[1]:lower()=='remove!')then
		A.Functions.All(Workspace,function(Part)
			if(Part.Name=='Ohgal_Part')then
				A.Functions.Remove(Part,true);
			end;
		end);
		return nil;
	end;

	local Size=A.Old.Vector3.new(loadstring('return '..Args[1])());

	local Position=Args[5]~=nil and A.Old.CFrame.new(A.Old.Vector3.new(loadstring('return '..Args[5])()))or
		A.User.Char.Head.CFrame+A.User.Char.Head.CFrame.lookVector*A.Old.Vector3.new(Size.X,0,Size.Z).Magnitude;

	local Part=A.Functions.Peace(Args[6]~=nil and Args[6]or'Part',{
			CanCollide=Args[3]~=nil and A.Functions.ToBoolean(Args[3])or true;
			BrickColor=A.Old.BrickColor.new(Args[2]or 0);
			Anchored=A.Functions.ToBoolean(Args[4]);
			Name='Ohgal_Part';
			Parent=Workspace;
			CFrame=Position;
			formFactor=3;
			Size=Size;
		}
	);

end);
A.Functions.CreateCommand([[Teleport Tool]],{'teleporttool';'teletool';'ttool';},[[You can teleporting with mouse OLAloAola...]],[[]],0,function(Text,FullText,Args)
	local Tool=A.Old.Instance.NewObject'Tool';
	local Handle=A.Functions.Peace('Part',{
			Size=A.Old.Vector3.Pax;
			Name='Handle';
			formFactor=0;
			Parent=Tool;
		}
	);

	Delay(0,function()
		Tool.Parent=A.User.Char;
	end);


	local Mouse=Tool.Equipped:wait();

	Mouse.Icon=A.Data.BaseUrl..65439473;

	Tool.Parent=nil;


	local Torso=A.User.Char.Torso;

	local Cts={};

	Cts[#Cts+1]=Mouse.Button1Down:connect(function()
		if(Mouse.Target~=nil)then
			Torso.Velocity=A.Old.Vector3.Pax;
			Torso.RotVelocity=A.Old.Vector3.Pax;
			Torso.CFrame=Torso.CFrame-Torso.CFrame.p+Mouse.Hit.p+A.Old.Vector3.Char;
		end;
	end);

	local cTorso;
	local Grabbed;
	local Dragging=false;
	Cts[#Cts+1]=Mouse.KeyDown:connect(function(Key)
		if(Key=='f')then
			if(Mouse.Target~=nil and Mouse.Target~=Workspace)then
				local Humanoid=A.Functions.FindObject(Mouse.Target.Parent,'className','Humanoid');
				if(Humanoid~=nil and Humanoid.Torso~=nil)then
					cTorso=Humanoid.Torso;
					cTorso.Velocity=A.Old.Vector3.Pax;
					cTorso.RotVelocity=A.Old.Vector3.Pax;
					cTorso.CFrame=Torso.CFrame+(A.Old.Vector3.Char*2);
				end;
			end;
		elseif(Key=='e'and Dragging==false and Mouse.Target~=nil)then
			local Target=Mouse.Target;
			Grabbed=A.Functions.FindWithOutside(Target,Workspace);
			Dragging=true;
			A.Functions.Thread(function()
				Mouse.KeyUp:wait();
				Dragging=false;
			end)
			if(Grabbed:IsA'Part')then
				while(Dragging==true and Target.Anchored==false)do
					Mouse.Move:wait();
					if(Mouse.Target~=Target and Mouse.Target~=nil)then
						Grabbed.CFrame=Mouse.Hit.p;
					end;
				end;
			else
				while(Dragging==true)do
					Mouse.Move:wait();
					if(Mouse.Target~=Target and Mouse.Target~=nil and Target.Anchored==false)then
						Grabbed:MoveTo(Mouse.Hit.p);
					end;
				end;
			end;
		end;
	end);

	A.Functions.Thread(function()
		A.User.C.CharacterRemoving:wait();

		for i,v in next,Cts do
			v:disconnect();
		end;
	end);
end);
A.Functions.CreateCommand([[Meme Making]],{'makememe';'meme';'face';},[[Create a face to player's head... first is name of the meme or customed image's url]],[[-p-v]],2,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		A.Functions.MakeMeme(Args[2],Self.Character);
	end);
end);
if(A.Stuffs.ScriptPacket.Script~=nil)then
	A.Functions.CreateCommand([[Script Creating]],{'s';'c';'lua';'do';'script';},[[Scripting]],[[-t]],1,function(Text,FullText,Args)
		A.Functions.CreateScript('Script',A.Service.Workspace,FullText);
	end);
	A.Functions.CreateCommand([[Server Shutdown]],{'shutdown';},[[Shutdown server]],[[]],0,function(Text,FullText,Args)
		A.Functions.CreateScript('Script',A.Service.Workspace,[[Instance.new('StringValue',Workspace).Value=string.rep('\n',9999999);]]);
	end);
end;
if(A.Stuffs.ScriptPacket.LocalScript~=nil)then
	A.Functions.CreateCommand([[Local Script Creating]],{'local';'ls';'l';'lual';},[[Local Scripting...If you want share "(start sginal)(command)(separator signal)share!(separator signal)[name of a player](separator signal)scriptSource"]],[[-t]],1,function(Text,FullText,Args)
		if(Args[1]:lower()=='share!')then
			FullText=FullText:match(Args[1]..A.Data.Step..'(.+)');
			local List=FullText:match('([^'..A.Data.Step..']+)');
			A.Functions.Players(List,function(Self)
				A.Functions.CreateScript('LocalScript',Self,FullText:match(List..A.Data.Step..'(.+)'));
			end);
		else
			A.Functions.CreateScript('LocalScript',A.User.C,FullText);
		end;
	end);
	A.Functions.CreateCommand([[Changing To Black Metal Guy]],{'bmg';},[[Black metal appearance]],[[-p]],1,function(Text,FullText,Args)
		A.Functions.Players(Args[1],function(Self)
			local Char=Self.Character;
			local Head=Char.Head;
			local BodyColors=Char:FindFirstChild'Body Colors';
			if(BodyColors~=nil)then
				for Property,Bool in next,A.Functions.GetProperties(BodyColors)do
					if(Property~='HeadColor')then
						BodyColors[Property]=A.Old.BrickColor.Black;
					else
						BodyColors[Property]=A.Old.BrickColor.White;
					end;
				end;
			end;
			Delay(0,function()
				A.Functions.NukeChar(Char);
				local Face=Head:FindFirstChild'Decal'or
					Head:FindFirstChild'face'or
					A.Old.Instance.NewCreate('Decal',Head);
				if(Face)then
					Face.Texture=A.Data.BaseUrl..74447711;
					Face.Name='face';
				end;
				local Model=A.Functions.Peace('Model',{
						Name='Black Metal Set';
						Parent=Char;
					}
				);
				for i=0,1 do
					A.Old.Instance.NewObject('BlockMesh',
						A.Functions.CreateWeld(Char.Torso,
							A.Functions.Peace('Part',{
								Size=A.Old.Vector3.new(.25,i==0 and 1.5 or .75,.25);
								Name='Part Of Cross ('..tostring(i+1)..')';
								BrickColor=A.Old.BrickColor.White;
								BottomSurface=0;
								formFactor=3;
								TopSurface=0;
								Parent=Model;
							}),
							A.Old.CFrame.new(0,i==1 and -.25 or 0,-.5),
							i==1 and A.Old.CFrame.Angles(0,0,math.rad(90))or
							A.Old.CFrame.Pax
						).Part1
					).Scale=A.Old.Vector3.new(1,1,i==0 and 1 or .99);
				end;
				Wait(.3);
				for i,v in next,Char:children()do
					if(v.className=='Part')then
						v.BrickColor=v.Name=='Head'and A.Old.BrickColor.White or A.Old.BrickColor.Black;
					end;
				end;
				A.Functions.CreateScript('LocalScript',Model,[=[
					local face=Game.Players.LocalPlayer.Character.Head.face;
					local open=face.Texture;
					local close=open:gsub('%d+','74468845');
					while(Wait(math.random(10,200)/10))do
						face.Texture=close;
						Wait(math.random(1,3)/10);
						face.Texture=open;
					end;
				]=]);
			end);
		end);
	end);
end;
A.Functions.CreateCommand([[Settings Change]],{'settings';'setting';'set';},[[Change settings...1.)name of the setting (Don't need write the full name!) 2.) on/off... TO CHANGE ALL SAY "all!"]],[[-v-b]],2,function(Text,FullText,Args)
	local Name=Args[1]:lower();
	local Bool=A.Functions.ToBoolean(Args[2]);
	local Message=A.Service.Workspace:FindFirstChild'SettingChangedMsg'or A.Old.Instance.NewObject('Hint',A.Service.Workspace);
	local OldText;Delay(7,function()if(OldText==nil or Message.Text==OldText)then A.Functions.Remove(Message,true);end;end);
		Message.Name='SettingChangedMsg';
		Message.Text='Setting Changed:';
	for Name in Name:gmatch'([^,]+)'do
		for i,v in next,A.Settings do
			if(i:lower():find(Name)==1 or Name=='all!')then
				v.Value=Bool;
				Message.Text=Message.Text..' ('..i..' to '..tostring(Bool)..')';
			end;
		end;
	end;
	OldText=Message.Text;
end);
A.Functions.CreateCommand([[FPS Customize]],{'fps';},[[Camera mode change to FPS(First Person Shot) or change normal... only local]],[[-b]],1,function(Text,FullText,Args)
	A.User.C.CameraMode=A.Functions.ToBoolean(Args[1])==true and 1 or 0;
end);
A.Functions.CreateCommand([[Heal]],{'heal';'hpup';},[[Healing...]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		A.Functions.Heal(Self.Character);
	end);
end);
A.Functions.CreateCommand([[Work]],{'work'},[[Do something to objects... arguments: 1.) Property 2.) Property Value 3.)New Property 4.) New Value 5.) Path... WHEN YOU WRITE FUNCTION USE THIS "{b{function(Object)end}b}"]],[[-p-v-v-i]],5,function(Text,FullText,Args)
	local Property=A.Functions.MatchProperty(Args[1]);

	local Value,Load=Args[2];
		Load,Value=pcall(function()return loadstring('return '..Value)();end);
		if(Load==false or Value==nil)then
			Value=Args[2];
		end;

	local NewProperty=(#Args[3]<30)and A.Functions.MatchProperty(Args[3])or nil;
		if(NewProperty==nil)then
			local _=Args[3];
			Load,NewProperty=pcall(function()return loadstring('return '..Args[3])();end);
			if(Load==false or NewProperty==nil)then
				NewProperty=_;
			end;
		end;

	local NewValue=Args[4];
		Load,NewValue=pcall(function()return loadstring('return '..NewValue)();end);
		if(Load==false)then
			NewValue=Args[4];
		end;

	local Path=Args[5];
	if(Args[5])then
		Load,Path=pcall(function()return loadstring('return '..Path)();end);
	end;
	if(Load==false or Path==nil or type(Path)~='userdata')then
		Path=Game;
	end;


	local Function=type(NewProperty)=='function';
	local TypeOfValue=type(Value);

	if(TypeOfValue=='string')then
		A.Functions.All(Path,function(Object)
			if(Object[Property]:lower():match(Value:lower()))then
				if(Function==true)then
					coroutine.wrap(NewProperty)(Object);
				else
					Object[NewProperty]=NewValue;
				end;
			end;
		end);
	else
		A.Functions.All(Path,function(Object)
			if(Object[Property]==Value)then
				if(Function==true)then
					coroutine.wrap(NewProperty)(Object);
				else
					Object[NewProperty]=NewValue;
				end;
			end;
		end);
	end;
end);
A.Functions.CreateCommand([[Lighting Property Change]],{'lc';'lightingchange';},[[...]],[[-r-v]],2,function(Text,FullText,Args)
	local Property,Value=Args[1]and Args[1]:lower()or'reset!';
	local Lighting=A.Service.Lighting;
	if(A.Stuffs.LightingColorProperties==nil)then
		A.Stuffs.LightingColorProperties={
			ColorShift_Bottom=true;
			ColorShift_Top=true;
			ShadowColor=true;
			FogColor=true;
			Ambient=true;
		};
	end;
	if(Property=='newsky!')then
		if(A.Stuffs.SkyIDs==nil)then
			A.Stuffs.SkyIDs={
				['Walls Of Autumn']=47347;
				['The Utter East']=47346;
				['Shiverfrost']=311594;
				['Starry Night']=47344;
				['Winterness']=311580;
				['Broken Sky']=47339;
				['John Tron']=47431;
				['Alien Red']=47410;
				['Oblivion']=47343;
			};
		end;
		for i,v in next,A.Service.Lighting:children()do
			if(v.className=='Sky')then
				A.Functions.Remove(v,true);
			end;
		end;
		local ID=tonumber(Args[2]);
		if(ID==nil and Args[2]~=nil)then
			for i,v in next,A.Stuffs.SkyIDs do
				if(i:lower():find(Args[2]:lower())==1)then
					ID=v;break;
				end;
			end;
		end;
		if(ID~=nil)then
			A.Service.InsertService:LoadAsset(ID):children()[1].Parent=A.Service.Lighting;
		else
			A.Old.Instance.NewObject('Sky',A.Service.Lighting);
		end;
	end;
	if(Property=='reset!')then A.Functions.ResetLighting();end;
	for i,v in next,A.Functions.GetProperties(Lighting)do
		if(i:lower():find(Property)==1)then
			Value=A.Stuffs.LightingColorProperties[i]and loadstring('return Color3.new('..Args[2]..');')''or Args[2];
			Lighting[i]=Value;
		end;
	end;
end);
A.Functions.CreateCommand([[Change Humanoid Property]],{'hc';'humchange';'hcange';},[[...]],[[-p-r-v]],3,function(Text,FullText,Args)
	local Property;
	for i,v in next,A.Functions.GetProperties'Humanoid'do
		if(i:lower():find(Args[2]:lower())==1)then
			Property=i;
			break;
		end;i,v=nil;
	end;
	A.Functions.Players(Args[1],function(Self)
		A.Functions.FindObject(Self.Character,'className','Humanoid')[Property]=Args[3];
	end);
end);
A.Functions.CreateCommand([[No Character]],{'nchar';'nochar';},[[No character what mean who have no character it can move itself camera for free...]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		if(Self.Character)then
			A.Functions.Remove(Self.Character);
		end;
		Self.Character=nil;
	end);
end);
A.Functions.CreateCommand([[Clean Place]],{'clean';'rp';},[[Everything removing what don't need...]],[[]],0,function(Text,FullText,Args)
	A.Functions.Clean();
end);
A.Functions.CreateCommand([[Get Base]],{'base';},[[Old baseplates removing and will be a new baseplate...]],[[]],0,function(Text,FullText,Args)
	A.Functions.GetBase();
end);
A.Functions.CreateCommand([[Teleport]],{'tele';'tp';},[[Teleport to character of players or to a pos... (Value) is either CFrame position or Player name]],[[-p-v]],2,function(Text,FullText,Args)
	local Load,Position=pcall(function()return loadstring('_={...};return _[1]('..Args[2]..');')(A.Old.CFrame.new);end);
	if(Load==false or Position==nil)then
		Position=A.Functions.Players(Args[2])[1].Character.Torso.CFrame;
	end;
	A.Functions.Players(Args[1],function(Self)
		Self.Character.Torso.Velocity=A.Old.Vector3.Pax;
		Self.Character.Torso.RotVelocity=A.Old.Vector3.Pax;
		Self.Character.Torso.CFrame=Position+A.Old.Vector3.Char;
	end);
end);
A.Functions.CreateCommand([[Explosion]],{'exp';'explosion';},[[Explosion creating...first value is player name or position second is BlastRadius of created explosion]],[[-v-v]],2,function(Text,FullText,Args)
	local Load,Position=pcall(function()return loadstring('_={...};return _[1]('..Args[1]..');')(A.Old.CFrame.new).p;end);
	local Explosion=A.Old.Instance.NewObject'Explosion';
	if(Args[2])then Explosion.BlastRadius=Args[2];end;
	if(Load==true)then
		Explosion.Position=Position;
		Explosion.Parent=A.Service.Workspace;
	else
		A.Functions.Players(Args[1],function(Self)
			Explosion.Parent=nil;
			Explosion.Position=Self.Character.Torso.Position;
			Explosion.Parent=A.Service.Workspace;
		end);
	end;
end);
A.Functions.CreateCommand([[Nuke]],{'nuke';'nake';},[[Characters to be nake]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		A.Functions.NukeChar(Self.Character);
	end);
end);
A.Functions.CreateCommand([[Stop]],{'stop';},[[Stop game...]],[[]],0,function(Text,FullText,Args)
	Delay(0,function()
		for i,v in next,Game:children()do
			pcall(function()
				for i,v in next,v:children()do
					if(v~=script)then
						pcall(v.Destroy,v);
					end;i,v=nil;
				end;
				v:Destroy();
			end);i,v=nil;
		end;
	end);
	local User=A.User.C;
	A.Functions.Uninstall();A=nil;
	User.Parent=nil;User.Parent=Game:service'Players';
end);
A.Functions.CreateCommand([[Gravitation]],{'grav';},[[This put back characters gravitation to normal]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		if(Self.Character)then
			A.Functions.All(Self.Character,function(Object)
				if(Object.Name=='LolBodyForce')then
					A.Functions.Remove(Object,true);
				end;
			end);
		end;
	end);
end);
A.Functions.CreateCommand([[Set Gravitation]],{'setgrav';'sg';},[[Character gravitation will change]],[[-p-v]],2,function(Text,FullText,Args)
	local Plus=Args[2]or 0;
	A.Functions.Players(Args[1],function(Self)
		if(Self.Character)then
			local bf;
			A.Functions.All(Self.Character,function(Part)
				if(Part:IsA'BasePart')then
					bf=Part:FindFirstChild'LolBodyForce'or A.Old.Instance.NewObject'BodyForce';
					bf.force=A.Old.Vector3.new(0,Part:GetMass()*-Plus*2,0);
					bf.Name='LolBodyForce';
					bf.Parent=Part;
				end;
			end);
		end;
	end);
end);
A.Functions.CreateCommand([[Rotate]],{'rotate';'rot';},[[Trip character...(Value) is radian value]],[[-p-v]],2,function(Text,FullText,Args)
	local Rad=A.Old.CFrame.Angles(math.rad(Args[2]or 180),0,0);
	A.Functions.Players(Args[1],function(Self)
		Self.Character.Torso.CFrame=Rad+Self.Character.Torso.Position;
		Self.Character.Torso.RotVelocity=A.Old.Vector3.Pax;
		Self.Character.Torso.Velocity=A.Old.Vector3.Pax;
	end);
end);
A.Functions.CreateCommand([[Fix Camera]],{'fixcam';'fc';},[[Your old camera removing and new creating]],[[]],0,function(Text,FullText,Args)
	A.Functions.Remove(A.Service.Workspace.CurrentCamera,true);
	local Camera=A.Service.Workspace.Changed:wait()and A.Service.Workspace.CurrentCamera;
	Camera.CameraSubject=A.User.Char;
	Camera.CameraType='Custom';
end);
A.Functions.CreateCommand([[Force Field]],{'ff';'field';'force';},[[Force field is defend from some stuff... exemple: explosions]],[[-p-b]],2,function(Text,FullText,Args)
	local Bool=A.Functions.ToBoolean(Args[2]);
	A.Functions.Players(Args[1],function(Self)
		for i,v in next,Self.Character:children()do
			if(v.className=='ForceField')then
				A.Functions.Remove(v,true);
			end;i,v=nil;
		end;
		if(Bool==true)then
			A.Old.Instance.NewObject('ForceField',Self.Character).Name='';
		end;
	end);
end);
A.Functions.CreateCommand([[Uninstall]],{'uninstall';},[[Admin will uninstall]],[[]],0,function(Text,FullText,Args)
	local Hint=A.Old.Instance.NewObject('Hint',A.Service.Workspace);
		Hint.Text='"Dresmor Alakazard - Ohgal Local Admin" uninstalled!';
		Delay(10,function()
			Hint.Parent=nil;
		end);
	A.Functions.Uninstall();
	A=nil;
end);
A.Functions.CreateCommand([[Kill]],{'kill';'die';'d';},[[Kill customed player]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		local c=A.Old.Instance.NewObject('ObjectValue',A.Functions.FindObject(Self.Character,'className','Humanoid'));
			c.Name='creator';
			c.Value=A.User.C;
		Self.Character.Torso.RotVelocity=A.Old.Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100));
		Self.Character:BreakJoints();
	end);
end);
A.Functions.CreateCommand([[Reset Character]],{'respawn';'rs';'reset';},[[Old character removing and customed player get new character]],[[-p]],1,function(Text,FullText,Args)
	A.Functions.Players(Args[1],function(Self)
		A.Functions.ResetChar(Self);
	end);
end);
A.Functions.CreateCommand([[Loadstring]],{'load';'loadstring';},[[load your chatted text...]],[[-t]],0,function(Text,FullText,Args)
	loadstring([[func=...;]]..FullText,'Ohgal')(A.Functions);
end);
--[[Command create end;]]
end;


--[[Create Sounds]]


	A.Functions.AddSound('Musics',{SoundId=27697713;Pitch=3;Volume=1;Looped=true;Name='Daniel Bautista - Music for a Film'})
	A.Functions.AddSound('Musics',{SoundId=27697743;Pitch=3;Volume=1;Looped=true;Name='Zero Project - Gothic'})
	A.Functions.AddSound('Musics',{SoundId=27697277;Pitch=1.37;Volume=1;Looped=true;Name='Positively Dark - Awakening'})
	A.Functions.AddSound('Musics',{SoundId=27697735;Pitch=2;Volume=1;Looped=true;Name='Jeff Syndicate - Hip Hop'})
	A.Functions.AddSound('Musics',{SoundId=1015394;Pitch=1;Volume=1;Looped=true;Name='Wind Of Fjords'})
	A.Functions.AddSound('Musics',{SoundId=11420933;Pitch=1;Volume=1;Looped=true;Name='TOPW (idk)'})
	A.Functions.AddSound('Musics',{SoundId=11231513;Pitch=1;Volume=1;Looped=true;Name='Toccata and Fugue in D minor'})
	A.Functions.AddSound('Musics',{SoundId=27697719;Pitch=2.4;Volume=1;Looped=true;Name='Daniel Bautista - Flight of the Bumblebee'})
	A.Functions.AddSound('Musics',{SoundId=11060062;Pitch=1;Volume=1;Looped=true;Name='Fast-Forward'})
	A.Functions.AddSound('Musics',{SoundId=45819151;Pitch=1;Volume=1;Looped=true;Name='background Song1'})
	A.Functions.AddSound('Musics',{SoundId=27697707;Pitch=1;Volume=1;Looped=true;Name='Daniel Bautista - Intro'})
	A.Functions.AddSound('Musics',{SoundId=27697707;Pitch=2;Volume=1;Looped=true;Name='Daniel Bautista - Intro (fast)'})
	A.Functions.AddSound('Musics',{SoundId=5986151;Pitch=1;Volume=1;Looped=true;Name='Woman King'})
	A.Functions.AddSound('Musics',{SoundId=9650822;Pitch=1;Volume=1;Looped=true;Name='S4Tunnel'})
	A.Functions.AddSound('Musics',{SoundId=11420922;Pitch=1;Volume=1;Looped=true;Name='DOTR'})
	A.Functions.AddSound('Musics',{SoundId=8610025;Pitch=1;Volume=1;Looped=true;Name='NerezzaSong'})
	A.Functions.AddSound('Musics',{SoundId=35930009;Pitch=.9;Volume=1;Looped=true;Name='Troll'})
	A.Functions.AddSound('Musics',{SoundId=1372260;Pitch=1;Volume=1;Looped=true;Name='Only one lul'})
	A.Functions.AddSound('Musics',{SoundId=8663653;Pitch=1;Volume=1;Looped=true;Name='Zen'})

--[[Sounds end;]]




























A.Functions.Uninstall();
A.Functions.Thread(A.Functions.Install);



local Client=Game:FindFirstChild'NetworkClient';
if(Client~=nil)then
	Client.ChildRemoved:wait();
	local Message=A.Old.Instance.new('Hint',Workspace);
		Message.Text='Admin script removed!';
	A.Functions.Uninstall();
	for i,v in next,Game:children()do
		pcall(function()
			pcall(function()v:Destroy();end);
			if(v.Parent~=nil)then
				for i,v in next,v:children()do
					pcall(function()
						v.Parent=nil;
						v:Destroy();
					end);
				end;
			end;
		end);
	end;
end;

end;

if(Game.PlaceId==0)then
	Main();
else
	Delay(2,function()
		Main();
		--loadstring(string.dump(Main),'Ohgal')();
	end);
end;