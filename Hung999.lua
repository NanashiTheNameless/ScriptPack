s = Instance.new("ScreenGui", game.CoreGui) 

PluginGui = Instance.new("TextButton") 
PluginGui.Parent = s 
PluginGui.Size = UDim2.new(0.1,0,0,25) 
PluginGui.Position = UDim2.new(0,0,0.7,0) 
PluginGui.Text="LocalPlayer V3" 
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
screengui.Parent = game.CoreGui
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
textlabel.Text = "Exploit || By HorribleJiajun159 || Drag This Bar"
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
textbxn.Text = "Player"
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
redddde.Text = "More?"
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
rainbow.Text = "Rainbow"
rainbow.MouseButton1Down:connect(function()
while true do
wait(1)
game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
end
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
rainbow3.Text = "Smoke"
rainbow3.MouseButton1Down:connect(function()
local cr = game.Workspace:FindFirstChild(textbxnn.Text)
local sparkle = Instance.new("Smoke")
sparkle.Parent = cr.Head
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
rainbow3.Text = "Fire"
rainbow3.MouseButton1Down:connect(function()
local cr = game.Workspace:FindFirstChild(textbxnn.Text)
local sparkle = Instance.new("Fire")
sparkle.Parent = cr.Head
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
rainbow3.Text = "Sparkle"
rainbow3.MouseButton1Down:connect(function()
local cr = game.Workspace:FindFirstChild(textbxnn.Text)
local sparkle = Instance.new("Sparkles")
sparkle.Parent = cr.Head
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
rainbow4.Text = "Ghost"
rainbow4.MouseButton1Down:connect(function()
local D = game.Workspace:FindFirstChild(textbxnn.Text)
D:findFirstChild("Left Leg").Transparency = 0.5 
D:findFirstChild("Right Leg").Transparency = 0.5 
D:findFirstChild("Left Arm").Transparency = 0.5 
D:findFirstChild("Right Arm").Transparency = 0.5 
D.Torso.Transparency = 0.5 
D.Head.Transparency = 0.5 
D.Torso.roblox:Remove() 
D:findFirstChild("Left Leg").CanCollide = false 
D:findFirstChild("Right Leg").CanCollide = false
D:findFirstChild("Left Arm").CanCollide = false 
D:findFirstChild("Right Arm").CanCollide = false 
D.Torso.CanCollide = false 
D.Head.CanCollide = false 
D:findFirstChild("Left Leg").BrickColor = BrickColor.new(1) 
D:findFirstChild("Right Leg").BrickColor = BrickColor.new(1) 
D:findFirstChild("Left Arm").BrickColor = BrickColor.new(1) 
D:findFirstChild("Right Arm").BrickColor = BrickColor.new(1) 
D.Torso.BrickColor = BrickColor.new(1) 
D.Head.BrickColor = BrickColor.new(1) 
D.Humanoid.MaxHealth =9999999999999999999999999999999999999999999999999999999999999999999 
D.Humanoid.Health = 9999999999999999999999999999999999999999999999999999999999999999999999
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
rainbow4.Text = "No Gravity"
rainbow4.MouseButton1Down:connect(function()
local b = Instance.new("BodyForce") 
b.force = Vector3.new(0,1300,0) 
b.Parent = game.Workspace:FindFirstChild(textbxnn.Text).Torso
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
rainbow4.Text = "Gravity"
rainbow4.MouseButton1Down:connect(function()
while true do
wait(1)
b = game.Workspace:FindFirstChild(textbxnn.Text).Torso
b.BodyForce:Remove()
end
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
rainbow4.Text = "Nuke #2"
rainbow4.MouseButton1Down:connect(function()
for _, v in pairs(game.Workspace:GetChildren()) do
v:BreakJoints()
end
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
rainbow4.Text = "Spin Head"
rainbow4.MouseButton1Down:connect(function()
b = game.Workspace:FindFirstChild(textbxnn.Text)
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
rainbow4.Text = "Slaves !"
rainbow4.MouseButton1Down:connect(function()
b=game.Players:FindFirstChild(textbxnn.Text)
b.Character.Name = game.Players.LocalPlayer.Name.."'s Slave" 
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
n=game.Players:FindFirstChild(textbxnn.Text).Character.Head:findFirstChild("Mesh") 
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
rainbow4.Text = "Fly Die"
rainbow4.MouseButton1Down:connect(function()
while true do 
game.Workspace:FindFirstChild(textbxnn.Text).Torso.Velocity = Vector3.new(0, 9999, 0) 
wait(30) 
game.Workspace:FindFirstChild(textbxnn.Text).Head:remove() 
end
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
rainbow4.Text = "Giant"
rainbow4.MouseButton1Down:connect(function()
L = game.Players:FindFirstChild(textbxnn.Text).Character 
L.Torso.Size = Vector3.new(100,100,100) 
L.Head.Size = Vector3.new(50,50,50) 
L.Head.Mesh:remove()
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
rainbow4.Text = "DiscoBody"
rainbow4.MouseButton1Down:connect(function()
while true do 
h = game.Players:FindFirstChild(textbxnn.Text).Character 
h.Head.BrickColor = BrickColor.Random() 
h.Torso.BrickColor = BrickColor.Random() 
h:findFirstChild("Left Arm").BrickColor = BrickColor.Random() 
h:findFirstChild("Right Arm").BrickColor = BrickColor.Random() 
h:findFirstChild("Right Leg").BrickColor = BrickColor.Random() 
h:findFirstChild("Left Leg").BrickColor = BrickColor.Random() 
wait(0.2) 
end
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
rainbow4.Text = "Time"
rainbow4.MouseButton1Down:connect(function()
game.Lighting.TimeOfDay = textbxnn.Text..":00:00" 
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
rainbow4.Text = "Fog"
rainbow4.MouseButton1Down:connect(function()
game.Lighting.FogEnd = textbxnn.Text
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
rainbow4.Text = "RedAmb"
rainbow4.MouseButton1Down:connect(function()
game.Lighting.Ambient = Color3.new((textbxnn.Text),0,0)
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
game.Lighting.Ambient = Color3.new(0,0,0)
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
rainbow4.Text = "Follow"
rainbow4.MouseButton1Down:connect(function()
b = Instance.new("BodyPosition") b.Parent = game.Workspace:FindFirstChild(textbxnn.Text).Torso b.maxForce = Vector3.new(600000000,6000000000,6000000000) 
while true do 
b.position = game.Players.LocalPlayer.Character.Torso.Position 
wait(0.1) 
end
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
rainbow4.Text = "Lazy"
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
rainbow4.Text = "Clean?"
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
rainbow4.Text = "BlackHoe"
rainbow4.MouseButton1Down:connect(function()
p= game.Players:GetChildren() 
for i= 1, #p do 
if p[i].Name ~= game.Players.LocalPlayer.Name.."" then 
b = Instance.new("BodyPosition") b.Parent = p[i].Character.Torso b.maxForce = Vector3.new(6000000,60000000,60000000) 
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
rainbow4.Text = "Vampire"
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
ff.Text = "Exit / Hide"
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
fff.Text = "Clear"
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
IL.Text="Exploit Created By hung999 Hosted By "..game.Players.LocalPlayer.Name
IL.TextColor3 = Color3.new(255/255,255/255,255/255)
IL.FontSize="Size48"
IL.BackgroundTransparency=0.3
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
for i=200,0,-1 do
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
for i=50,0,-1 do
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
fffmme.Text = "Spawn Item"
fffmme.MouseButton1Down:connect(function()
tools = game.Lighting:FindFirstChild(textbo.Text:(clone()
tools.Parent = game.Players:FindFirstChild(textbxn.Text).Backpack
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
fp.Text = "Punish"
fp.MouseButton1Down:connect(function()
muha = game.Players:FindFirstChild(textbxn.Text)
muha.Character.Parent = game.Lighting
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
fpa.Text = "UnPunish"
fpa.MouseButton1Down:connect(function()
muhaa = game.Players:FindFirstChild(textbxn.Text)
muhaa.Character.Parent = game.Workspace
muhaa.Character:makeJoints()
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
fpaa.Text = "Trip"
fpaa.MouseButton1Down:connect(function()
muhaaa = game.Players:FindFirstChild(textbxn.Text)
torso = (muhaaa).Character:FindFirstChild("Torso")
torso.CFrame = CFrame.new(torso.Position.x,torso.Position.y,torso.Position.z,0, 0, 1, 0, -1, 0, 1, 0, 0)
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
fpaaf.Text = "Freeze"
fpaaf.MouseButton1Down:connect(function()
muhaaa = game.Players:FindFirstChild(textbxn.Text)
muhaaa.Character.Humanoid.WalkSpeed = 0
muhaaa.Character.Head.Anchored = true
muhaaa.Character.Head.Reflectance = 0.6
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
fpaaff.Text = "Disscripts"
fpaaff.MouseButton1Down:connect(function()
for _, v in pairs(game.Workspace:GetChildren()) do
if v:isA("Script") then
v:Remove()
end
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
exl.Text = "Explode"
exl.MouseButton1Down:connect(function()
torsos = game.Players:FindFirstChild(textbxn.Text)
exx = Instance.new("Explosion")
exx.Position = torsos.Character.Torso.Position
exx.Parent = game.Workspace
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
exle.Text = "Zombify"
exle.MouseButton1Down:connect(function()
torsoss = game.Players:FindFirstChild(textbxn.Text)
toso = torsoss.Character:FindFirstChild("Torso")
arm = torsoss.Character:FindFirstChild("Left Arm")
arm:Remove()
armm = torsoss.Character:FindFirstChild("Right Arm")
armm:Remove()
rot=CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
zarm = Instance.new("Part")
zarm.Color = Color3.new(0.631373, 0.768627, 0.545098)
zarm.Locked = true
zarm.formFactor = "Symmetric"
zarm.Size = Vector3.new(2,1,1)
zarm.TopSurface = "Smooth"
zarm.BottomSurface = "Smooth"
zarm.Name = "zarm"
zarm2 = zarm:clone()
zarm2.CFrame = toso.CFrame * CFrame.new(Vector3.new(-1.5,0.5,-0.5)) * rot
zarm.CFrame = toso.CFrame * CFrame.new(Vector3.new(1.5,0.5,-0.5)) * rot
zarm.Parent = torsoss.Character
zarm:MakeJoints()
zarm2.Parent = torsoss.Character
zarm2:MakeJoints()
head = torsoss.Character:FindFirstChild("Head")
head.Color = Color3.new(0.631373, 0.768627, 0.545098)
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
exlee.Text = "Stats"
exlee.MouseButton1Down:connect(function()
local fndstat=game.Players:FindFirstChild(textbxn.Text).leaderstats
if fndstat then
local infect=fndstat:GetChildren()
for i=1,#infect do
if infect[i].className=="IntValue" then
infect[i].Value=100000000
end
end
end
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
exleee.Text = "Colors"
exleee.MouseButton1Down:connect(function()
a = game.Workspace:GetChildren()
for i = 1, #a do

if a[i].className == "Model" then

b = a[i]:GetChildren()
for i = 1, #b do
if b[i].className == "BodyColors" then
b[i].HeadColor = BrickColor.random()
b[i].LeftArmColor = BrickColor.random()
b[i].LeftLegColor = BrickColor.random()
b[i].RightArmColor = BrickColor.random()
b[i].RightLegColor = BrickColor.random()
b[i].TorsoColor = BrickColor.random()

elseif b[i].className == "Part" or b[i].className == "WedgePart" or b[i].className == "CornerWedgePart" or 
b[i].className == "TrussPart" or b[i].className == "Seat" or b[i].className == "VehicleSeat" or 
b[i].className == "SpawnLocation" then 
b[i].BrickColor = BrickColor.random()

elseif b[i].className == "Model" then
c = b[i]:GetChildren()
for i = 1, #c do
if c[i].className == "Part" or c[i].className == "WedgePart" or c[i].className == "CornerWedgePart" or 
c[i].className == "TrussPart" or c[i].className == "Seat" or c[i].className == "VehicleSeat" or 
c[i].className == "SpawnLocation" then 
c[i].BrickColor = BrickColor.random()

end end end end

else

if a[i].className == "Part" or a[i].className == "WedgePart" or a[i].className == "CornerWedgePart" or 
a[i].className == "TrussPart" or a[i].className == "Seat" or a[i].className == "VehicleSeat" or 
a[i].className == "SpawnLocation" then 
a[i].BrickColor = BrickColor.random()

end end end
end)

local exleeee = Instance.new("TextButton")
exleeee.Parent = textbox
exleeee.Position = UDim2.new(-0.46,0,0.60,0)
exleeee.Size = UDim2.new(0.1,0,0,25)
exleeee.BackgroundColor = BrickColor.new("Really black")
exleeee.Font = "ArialBold"
exleeee.FontSize = "Size14"
exleeee.TextColor3 = Color3.new(255/255,255/255,255/255)
exleeee.BorderSizePixel = 0
exleeee.Text = "Invisible"
exleeee.MouseButton1Down:connect(function()
part = game.Workspace:FindFirstChild(textbxn.Text)
part:findFirstChild("Head").Transparency = 1
part:findFirstChild("Torso").Transparency = 1
part:findFirstChild("Right Arm").Transparency = 1
part:findFirstChild("Left Arm").Transparency = 1
part:findFirstChild("Right Leg").Transparency = 1
part:findFirstChild("Left Leg").Transparency = 1
part:findFirstChild("Head").face:Remove()
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
exleeeee.Text = "Uninvisible"
exleeeee.MouseButton1Down:connect(function()
part = game.Workspace:FindFirstChild(textbxn.Text)
part:findFirstChild("Head").Transparency = 0
part:findFirstChild("Torso").Transparency = 0
part:findFirstChild("Right Arm").Transparency = 0
part:findFirstChild("Left Arm").Transparency = 0
part:findFirstChild("Right Leg").Transparency = 0
part:findFirstChild("Left Leg").Transparency = 0
end)

local sex = Instance.new("TextButton")
sex.Parent = textbox
sex.Position = UDim2.new(-0.46,0,0.84,0)
sex.Size = UDim2.new(0.1,0,0,25)
sex.BackgroundColor = BrickColor.new("Really black")
sex.Font = "ArialBold"
sex.FontSize = "Size14"
sex.TextColor3 = Color3.new(255/255,255/255,255/255)
sex.BorderSizePixel = 0
sex.Text = "Bub"
sex.MouseButton1Down:connect(function()
win = game.Players:GetChildren()
for i = 1, #win do
person = win[i]
message = ""..textbox.Text
game:GetService( "Chat" :(Chat(person.Character.Head, message, Enum.ChatColor.Blue)
end
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
fpaafu.Text = "Thaw"
fpaafu.MouseButton1Down:connect(function()
muhaaa = game.Players:FindFirstChild(textbxn.Text)
muhaaa.Character.Humanoid.WalkSpeed = 15
muhaaa.Character.Head.Anchored = false
muhaaa.Character.Head.Reflectance = 0
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
textbutton.Text = "Execute script"

local asdd = Instance.new("TextButton")
asdd.Parent = textbox
asdd.Position = UDim2.new(-0.1,0,0.12,0)
asdd.Size = UDim2.new(0.1,0,0,25)
asdd.BackgroundColor = BrickColor.new("Really black")
asdd.Font = "ArialBold"
asdd.FontSize = "Size14"
asdd.TextColor3 = Color3.new(255/255,255/255,255/255)
asdd.BorderSizePixel = 0
asdd.Text = "Health"
asdd.MouseButton1Down:connect(function()
mh = textbo.Text
fefefe=game.Workspace:FindFirstChild(textbxn.Text)
fefefe.Humanoid.MaxHealth = (mh)
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
asddd.Text = "Speed +34"
asddd.MouseButton1Down:connect(function()
fefefef=game.Workspace:FindFirstChild(textbxn.Text)
fefefef.Humanoid.WalkSpeed = fefefef.Humanoid.WalkSpeed +34
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
ty.Text = "Building"
ty.MouseButton1Down:connect(function()
local clone = Instance.new("HopperBin")
clone.BinType = "Clone"
clone.Parent = game.Players:FindFirstChild(textbxn.Text).Backpack
local delete = Instance.new("HopperBin")
delete.BinType = "Hammer"
delete.Parent = game.Players:FindFirstChild(textbxn.Text).Backpack
local drag = Instance.new("HopperBin")
drag.BinType = "GameTool"
drag.Parent = game.Players:FindFirstChild(textbxn.Text).Backpack
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
tyy.Text = "Kill"
tyy.MouseButton1Down:connect(function()
fefefeff=game.Workspace:FindFirstChild(textbxn.Text)
fefefeff.Humanoid.Health = 0
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
aasddd.Text = "Forcefield"
aasddd.MouseButton1Down:connect(function()
local ForceField=Instance.new("ForceField")
asdfasdf=game.Workspace:FindFirstChild(textbxn.Text)
ForceField.Parent=asdfasdf
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
aaddd.Text = "Decal"
aaddd.MouseButton1Down:connect(function()
eye = "www.roblox.com/asset/?id=72385514"
for _, v in pairs(game.Workspace:GetChildren()) do
if v:isA("Part") then
Dec = Instance.new("Decal")
Dec.Face = math.random(1,4)
Dec.Parent = v
Dec.Texture = (eye)
end
end
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
aadddc.Text = "Credits"
aadddc.MouseButton1Down:connect(function()
eye = "www.roblox.com/asset/?id=26640932"
for _, v in pairs(game.Workspace:GetChildren()) do
if v:isA("Part") then
Dec = Instance.new("Decal")
Dec.Face = math.random(1,4)
Dec.Parent = v
Dec.Texture = (eye)
end
end
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
faadddc.Text = "Insert"
faadddc.MouseButton1Down:connect(function()
bigfoig = "rbxassetid://"..textbo.Text
superfoig = game.Players:FindFirstChild(textbxn.Text)
game:GetObjects(bigfoig) [1].Parent=superfoig.Backpack
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
red.Text = "Red"
red.MouseButton1Down:connect(function()
game.Lighting.Ambient = Color3.new(0128,0)
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
reddd.Text = "Teleport"
reddd.MouseButton1Down:connect(function()
tes = textbo.Text
local charfnd=game.Workspace:FindFirstChild(textbxn.Text)
if charfnd then
local headfnd=charfnd:FindFirstChild("Head")
if headfnd then
game.Players.LocalPlayer.Character:MoveTo(headfnd.Position)
end
end
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
reddddd.Text = "ID"
reddddd.MouseButton1Down:connect(function()
local plr=game.Players:FindFirstChild(textbxn.Text)
plr.CharacterAppearance="www.roblox.com/Asset/CharacterFetch.ashx...="..textbo.Text
plr.Character.Humanoid.Health = 0
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
eddddd.Text = "SafeChat"
eddddd.MouseButton1Down:connect(function()
local plrs=game.Players:FindFirstChild(textbxn.Text)
plrs:SetSuperSafeChat(true)
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
edddd.Text = "UnSafeChat"
edddd.MouseButton1Down:connect(function()
local plrs=game.Players:FindFirstChild(textbxn.Text)
plrs:SetSuperSafeChat(false)
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
asd.Text = "Ban"
asd.MouseButton1Down:connect(function()
s=game.Players:FindFirstChild(textbxn.Text)
s:remove()
end)


textbutton.MouseButton1Down:connect(function()
pcall(function()
loadstring(textbox.Text)()
end)
end)
end)