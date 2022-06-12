-- Objects

local yeye = Instance.new("ScreenGui")
local QuickAccess = Instance.new("Frame")
local CK = Instance.new("TextButton")
local CVG = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local PG1 = Instance.new("Frame")
local PG1B = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local Close1 = Instance.new("TextButton")
local PG2 = Instance.new("Frame")
local fok = Instance.new("TextBox")
local YOYO = Instance.new("TextLabel")
local Close2 = Instance.new("TextButton")
local PG2B = Instance.new("TextButton")
local Open = Instance.new("Frame")
local Opener = Instance.new("TextButton")

-- Properties

yeye.Name = "yeye"
yeye.Parent = game.CoreGui

QuickAccess.Name = "Quick Access"
QuickAccess.Parent = yeye
QuickAccess.BackgroundColor3 = Color3.new(0, 0, 0)
QuickAccess.BackgroundTransparency = 0.5
QuickAccess.Position = UDim2.new(0, 0, 0.31215772, 0)
QuickAccess.Size = UDim2.new(0, 110, 0, 204)
QuickAccess.Visible = false

CK.Name = "CK"
CK.Parent = QuickAccess
CK.BackgroundColor3 = Color3.new(0, 0, 0)
CK.BackgroundTransparency = 0.5
CK.Position = UDim2.new(0, 0, 0.34803921, 0)
CK.Size = UDim2.new(0, 110, 0, 35)
CK.Font = Enum.Font.SciFi
CK.FontSize = Enum.FontSize.Size24
CK.Text = "Classic Kidnap"
CK.TextColor3 = Color3.new(0, 1, 1)
CK.TextScaled = true
CK.TextSize = 24
CK.TextWrapped = true

CVG.Name = "CVG"
CVG.Parent = QuickAccess
CVG.BackgroundColor3 = Color3.new(0, 0, 0)
CVG.BackgroundTransparency = 0.5
CVG.Position = UDim2.new(0, 0, 0.612745047, 0)
CVG.Size = UDim2.new(0, 110, 0, 35)
CVG.Font = Enum.Font.SciFi
CVG.FontSize = Enum.FontSize.Size24
CVG.Text = "Clown Van Gas"
CVG.TextColor3 = Color3.new(0, 1, 1)
CVG.TextScaled = true
CVG.TextSize = 24
CVG.TextWrapped = true

TextLabel.Parent = QuickAccess
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.5
TextLabel.Size = UDim2.new(0, 110, 0, 39)
TextLabel.Font = Enum.Font.SciFi
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Clown Gui Hax"
TextLabel.TextColor3 = Color3.new(0, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

PG1.Name = "PG1"
PG1.Parent = yeye
PG1.BackgroundColor3 = Color3.new(0, 0, 0)
PG1.BackgroundTransparency = 0.5
PG1.Position = UDim2.new(0.0572916679, 0, 0.31215772, 0)
PG1.Size = UDim2.new(0, 254, 0, 204)
PG1.Visible = false

PG1B.Name = "PG1B"
PG1B.Parent = PG1
PG1B.BackgroundColor3 = Color3.new(0, 0, 0)
PG1B.BackgroundTransparency = 0.5
PG1B.Position = UDim2.new(0.106323406, 0, 0.723039269, 0)
PG1B.Size = UDim2.new(0, 200, 0, 28)
PG1B.Font = Enum.Font.SciFi
PG1B.FontSize = Enum.FontSize.Size28
PG1B.Text = "Kidnap"
PG1B.TextColor3 = Color3.new(0, 1, 1)
PG1B.TextSize = 28
PG1B.TextWrapped = true

TextBox.Parent = PG1
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BackgroundTransparency = 0.5
TextBox.Position = UDim2.new(0.106637374, 0, 0.421568632, 0)
TextBox.Size = UDim2.new(0, 200, 0, 46)
TextBox.Font = Enum.Font.SciFi
TextBox.FontSize = Enum.FontSize.Size28
TextBox.Text = "Username"
TextBox.TextColor3 = Color3.new(0, 1, 1)
TextBox.TextSize = 26

TextLabel_2.Parent = PG1
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_2.BackgroundTransparency = 0.5
TextLabel_2.Position = UDim2.new(0.0748031586, 0, 0.156862751, 0)
TextLabel_2.Size = UDim2.new(0, 216, 0, 39)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "Classic Kidnap"
TextLabel_2.TextColor3 = Color3.new(0, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

Close1.Name = "Close1"
Close1.Parent = PG1
Close1.BackgroundColor3 = Color3.new(1, 0, 0)
Close1.BackgroundTransparency = 0.5
Close1.Position = UDim2.new(0.893700778, 0, 0, 0)
Close1.Size = UDim2.new(0, 27, 0, 25)
Close1.Font = Enum.Font.SourceSans
Close1.FontSize = Enum.FontSize.Size14
Close1.Text = ""
Close1.TextSize = 14

PG2.Name = "PG2"
PG2.Parent = yeye
PG2.BackgroundColor3 = Color3.new(0, 0, 0)
PG2.BackgroundTransparency = 0.5
PG2.Position = UDim2.new(0.0572916679, 0, 0.31215772, 0)
PG2.Size = UDim2.new(0, 254, 0, 204)
PG2.Visible = false

fok.Name = "fok"
fok.Parent = PG2
fok.BackgroundColor3 = Color3.new(0, 0, 0)
fok.BackgroundTransparency = 0.5
fok.Position = UDim2.new(0.106637374, 0, 0.416666657, 0)
fok.Size = UDim2.new(0, 200, 0, 46)
fok.Font = Enum.Font.SciFi
fok.FontSize = Enum.FontSize.Size28
fok.Text = "Username"
fok.TextColor3 = Color3.new(0, 1, 1)
fok.TextSize = 26

YOYO.Name = "YOYO"
YOYO.Parent = PG2
YOYO.BackgroundColor3 = Color3.new(0, 0, 0)
YOYO.BackgroundTransparency = 0.5
YOYO.Position = UDim2.new(0.0748031586, 0, 0.156862751, 0)
YOYO.Size = UDim2.new(0, 216, 0, 39)
YOYO.Font = Enum.Font.SciFi
YOYO.FontSize = Enum.FontSize.Size14
YOYO.Text = "Clown Van Gas"
YOYO.TextColor3 = Color3.new(0, 1, 1)
YOYO.TextScaled = true
YOYO.TextSize = 14
YOYO.TextWrapped = true

Close2.Name = "Close2"
Close2.Parent = PG2
Close2.BackgroundColor3 = Color3.new(1, 0, 0)
Close2.BackgroundTransparency = 0.5
Close2.Position = UDim2.new(0.893700778, 0, 0, 0)
Close2.Size = UDim2.new(0, 27, 0, 25)
Close2.Font = Enum.Font.SourceSans
Close2.FontSize = Enum.FontSize.Size14
Close2.Text = ""
Close2.TextSize = 14

PG2B.Name = "PG1B"
PG2B.Parent = PG2
PG2B.BackgroundColor3 = Color3.new(0, 0, 0)
PG2B.BackgroundTransparency = 0.5
PG2B.Position = UDim2.new(0.106323406, 0, 0.708333373, 0)
PG2B.Size = UDim2.new(0, 200, 0, 28)
PG2B.Font = Enum.Font.SciFi
PG2B.FontSize = Enum.FontSize.Size28
PG2B.Text = "Vaninate"
PG2B.TextColor3 = Color3.new(0, 1, 1)
PG2B.TextSize = 28
PG2B.TextWrapped = true

Open.Name = "Open"
Open.Parent = yeye
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 0.5
Open.Position = UDim2.new(0.00260416674, 0, 0.554216862, 0)
Open.Size = UDim2.new(0, 176, 0, 31)

Opener.Name = "Opener"
Opener.Parent = Open
Opener.BackgroundColor3 = Color3.new(0, 0, 0)
Opener.BackgroundTransparency = 0.5
Opener.Size = UDim2.new(0, 176, 0, 28)
Opener.Font = Enum.Font.SciFi
Opener.FontSize = Enum.FontSize.Size28
Opener.Text = "Vaninate"
Opener.TextColor3 = Color3.new(0, 1, 1)
Opener.TextSize = 28
Opener.TextWrapped = true

Opener.MouseButton1Down:connect(function()
	QuickAccess.Visible = true
	PG1.Visible = true
	Open.Visible = false
end)

Close1.MouseButton1Down:connect(function()
	QuickAccess.Visible = false
	PG1.Visible = false
	Open.Visible = true
end)

Close2.MouseButton1Down:connect(function()
	QuickAccess.Visible = false
	PG2.Visible = false
	Open.Visible = true
end)

CVG.MouseButton1Down:connect(function()
	PG2.Visible = true
	Open.Visible = false
	PG1.Visible = false
end)

CK.MouseButton1Down:connect(function()
	PG2.Visible = false
	Open.Visible = false
	PG1.Visible = true
end)

PG1B.MouseButton1Down:connect(function()
game.Lighting.OutdoorAmbient = Color3.new(127, 127, 127)
local victim = game.CoreGui.yeye.PG1.TextBox.Text -- victim
-- xd
local yiowh45 = game:GetObjects("rbxassetid://1009979640")[1] -- Place
yiowh45.Parent = workspace
spawn(function ()
for i=1, 800 do   	
wait()
local victim = game.CoreGui.yeye.PG1.TextBox.Text -- victim
workspace[victim].HumanoidRootPart.CFrame = workspace.asdfghjm.meemmeemmemee.Seat.CFrame
game.Players[victim].Character.Humanoid.WalkSpeed = 0
game.Players[victim].Character.Humanoid.JumpPower = 0
end
end)
spawn(function ()
        loadstring(game:GetObjects("rbxassetid://1008068509")[1].Source)() -- help from sigma xd
end)

local lmao = Instance.new("Sound")
lmao.Parent = workspace
lmao.Volume = 1
lmao.SoundId =  "http://www.roblox.com/asset/?id=421358540"
lmao.Looped = true
lmao.Pitch = 1
lmao:Play()
local cam = workspace.CurrentCamera
workspace.asdfghjm.Van:MakeJoints()
workspace.asdfghjm.Van["KZ CV-150"].RW:MakeJoints()
workspace.asdfghjm.Van["KZ CV-150"].LW:MakeJoints()
workspace.asdfghjm.Van["KZ CV-150"].Body:MakeJoints()
wait(0.5)
cam.CameraSubject = workspace.asdfghjm.kek
wait(2)
cam.CameraSubject = workspace.asdfghjm.kek2
wait(2)
cam.CameraSubject = workspace.asdfghjm.kek3
wait(2)
cam.CameraSubject = workspace.asdfghjm.kek4
wait(3)
cam.CameraSubject = workspace.asdfghjm.kek5
wait(2)
cam.CameraSubject = workspace.asdfghjm.kek6
wait(4)
game.Players[victim].Character.Humanoid.WalkSpeed = 1
game.Players[victim].Character.Humanoid.JumpPower = 1
cam.CameraSubject = workspace.asdfghjm.kek5
wait(3)
cam.CameraSubject = workspace.asdfghjm.kek4
wait(4)
cam.CameraSubject = workspace.asdfghjm.kek3
wait(3)
cam.CameraSubject = workspace.asdfghjm.kek2
wait(3)
cam.CameraSubject = workspace.asdfghjm.kek
wait(6)
for i = 0,5,.1 do
	workspace.asdfghjm.Van:TranslateBy(Vector3.new(0,0,2))
	wait()
end
wait(5)
workspace[victim].HumanoidRootPart.CFrame = game.Workspace.asdfghjm.Van["KZ CV-150"].Body.Lmao.CFrame
cam.CameraSubject = workspace.asdfghjm.nuuuuu
workspace[victim].HumanoidRootPart.CFrame = workspace.asdfghjm.Chair.Sit.CFrame
game.Players[victim].Character.Humanoid.WalkSpeed = 0
game.Players[victim].Character.Humanoid.JumpPower = 0
wait(2.8)
local asd = Instance.new("Sound")
asd.Parent = workspace
asd.SoundId = "http://www.roblox.com/asset/?id=131070686"
asd.Looped = false
asd.Volume = 10
asd.Pitch = 1
asd:Play()

for i = 0,15,5 do
	workspace.asdfghjm.hmmhm:TranslateBy(Vector3.new(0,0,-1))
	wait()
end

for i,v in pairs(workspace.asdfghjm.thonk:GetChildren() ) do
    if v:IsA("BasePart") then
        v.Transparency = 0
    end
end
game.Players[victim].Character.Humanoid.Health = 0
asd:Remove()
wait(2)
lmao:Remove()

workspace.asdfghjm:Remove()-- Objects
cam.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
cam.CameraType = "Custom"
end)

PG2B.MouseButton1Down:connect(function()
game:GetObjects('rbxassetid://1009955647')[1].Parent = workspace
workspace.asdfghjm.CCTV2.Anchored = true
local cam = workspace.CurrentCamera
local victim = game.CoreGui.yeye.PG2.fok.Text
cam.CameraSubject = workspace.asdfghjm.CCTV1
spawn(function ()
for i=1, 200 do   
wait()
   game.Workspace.asdfghjm.NaziVan:TranslateBy(Vector3.new(0, 0, 1))
end
end)
workspace[victim].Humanoid.WalkSpeed = 0
workspace[victim].Humanoid.JumpPower = 0
wait(1)
workspace[victim].HumanoidRootPart.CFrame = workspace.asdfghjm.NaziVan.Van.CFrame
cam.CameraSubject = workspace.asdfghjm.CCTV2
wait(5)
workspace.asdfghjm.NaziVan.coco.Smoke.Opacity = 1
workspace.asdfghjm.NaziVan.cocoa.Smoke.Opacity = 1
local asd = Instance.new("Sound")
asd.Looped = false
asd.SoundId = "http://www.roblox.com/asset/?id=137065982"
asd.Parent = workspace
asd.Volume = 1
asd.Pitch = 1
asd:Play()
wait(7)
workspace[victim].Humanoid.Health = 0
workspace.asdfghjm:Remove()
asd:Remove()
end)