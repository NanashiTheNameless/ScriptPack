---------------------Made by Mrman696 & Team_ParadoX-------------------------------------------------------------------------

me = game.Players.LocalPlayer
NamePlr = me.Name
 
local edb1 = Instance.new("ScreenGui",game.CoreGui)
edb1.Name = ("Main")
local edb2 = Instance.new("Frame",game.CoreGui.Main)
edb2.Name = ("GuiButtons")
edb2.Visible = false
edb2.BackgroundTransparency = 1
edb2.Position = UDim2.new(0, 50, 0, 69)
local gg = Instance.new("Hint", game.Players.LocalPlayer.PlayerGui)
gg.Text = ("mrman696's exploit GUI loaded!")
gg.Name = ("  <userSettings>  								")

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
if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=124790308" then
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
One.Texture = "http://www.roblox.com/asset/?id=124790308"
Two.Texture = "http://www.roblox.com/asset/?id=124790308"
Three.Texture = "http://www.roblox.com/asset/?id=124790308"
Four.Texture = "http://www.roblox.com/asset/?id=124790308"
Five.Texture = "http://www.roblox.com/asset/?id=124790308"
Six.Texture = "http://www.roblox.com/asset/?id=124790308"
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
sky.SkyboxBk = "http://www.roblox.com/asset/?id=124790308"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=124790308"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=124790308"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=124790308"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=124790308"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=124790308"
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
ExPro.Text = "ParadoX"
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
 
ChatText2 = Instance.new("TextBox", game.CoreGui.Main.GuiButtons2)
        ChatText2.BackgroundColor3 = Color3.new(1, 1, 1)
        ChatText2.Name = ("ChatText")
        ChatText2.ClearTextOnFocus = true
        ChatText2.Font = "ArialBold"
        ChatText2.FontSize = "Size11"
        ChatText2.Position = UDim2.new(0.129999936, 220, 0.615999818, 200)
        ChatText2.Size = UDim2.new(0.0500000007, 50, 0.0500000007, 17)
        ChatText2.Text = "Amount"
        ChatText2.ClipsDescendants = true
        ChatText2.BackgroundTransparency = ("0.5")
       
Chat = Instance.new("TextButton", game.CoreGui.Main.GuiButtons2)
Chat.Size = UDim2.new(0.0500000007, 79, 0.0500000007, 19)
Chat.Name = ("Chat")
Chat.Position = UDim2.new(0.0599999502, 5, 0.5, 200)
Chat.Text = ("Spam")
Chat.TextColor3 = Color3.new(1, 1, 1)
Chat.Style = "RobloxButtonDefault"
Chat.Draggable = false
 
Chat.MouseButton1Click:connect(function()
g = ChatText2.Text
c = ChatText.Text
for i=1, g do
game.Players:Chat(c)
end
end)