wait(1)

-- Local Player
local p = game.Players.LocalPlayer

-- Instance Objects
local gui = Instance.new('ScreenGui',p.PlayerGui)
local frame = Instance.new('ScrollingFrame',gui)
local open = Instance.new('TextButton',gui)
local name = Instance.new('TextLabel',frame)
local arrest = Instance.new('TextButton',frame)
local btools = Instance.new('TextButton',frame)
local escape = Instance.new('TextButton',frame)
local exit = Instance.new('TextButton',frame)
local killaura = Instance.new('TextButton',frame)
local melee = Instance.new('TextButton',frame)
local removedoors = Instance.new('TextButton',frame)
local tools = Instance.new('TextButton',frame)
local speedplus = Instance.new('TextButton',frame)
local speedminus = Instance.new('TextButton',frame)
local jumpplus = Instance.new('TextButton',frame)
local jumpminus = Instance.new('TextButton',frame)
local sedan = Instance.new('TextButton',frame)
local squad = Instance.new('TextButton',frame)

-- Name object
gui.Name = "Prison Life v2.0 GUI"
frame.Name = "Commands"
open.Name = "Open"
name.Name = "Name"
arrest.Name = "ArrestButton"
btools.Name = "BtoolsButton"
escape.Name = "EscapeButton"
exit.Name = "ExitButton"
killaura.Name = "KillauraButton"
melee.Name = "MeleeButton"
removedoors.Name = "RemoveDoorsButton"
tools.Name = "ToolsButton"
speedplus.Name = "SpeedAdd"
speedminus.Name = "SpeedReduce"
jumpplus.Name = "JumpAdd"
jumpminus.Name = "JumpReduce"
sedan.Name = "SedanCar"
squad.Name = "SquadCar"

-- Object Visible
frame.Visible = true
open.Visible = false
name.Visible = true
arrest.Visible = true
btools.Visible = true
escape.Visible = true
exit.Visible = true
killaura.Visible = true
melee.Visible = true
removedoors.Visible = true
tools.Visible = true
speedplus.Visible = true
speedminus.Visible = true
jumpplus.Visible = true
jumpminus.Visible = true
sedan.Visible = true
squad.Visible = true

-- Background Color
frame.BackgroundColor3 = Color3.new(255,255,255)
open.BackgroundColor3 = Color3.new(0,255,255)
name.BackgroundColor3 = Color3.new(255,255,255)
arrest.BackgroundColor3 = Color3.new(0,0,255)
btools.BackgroundColor3 = Color3.new(0,0,255)
escape.BackgroundColor3 = Color3.new(0,0,255)
exit.BackgroundColor3 = Color3.new(255,0,0)
killaura.BackgroundColor3 = Color3.new(0,0,255)
melee.BackgroundColor3 = Color3.new(0,0,255)
removedoors.BackgroundColor3 = Color3.new(0,0,255)
tools.BackgroundColor3 = Color3.new(0,0,255)
speedplus.BackgroundColor3 = Color3.new(0,0,255)
speedminus.BackgroundColor3 = Color3.new(0,0,255)
jumpplus.BackgroundColor3 = Color3.new(0,0,255)
jumpminus.BackgroundColor3 = Color3.new(0,0,255)
sedan.BackgroundColor3 = Color3.new(0,0,255)
squad.BackgroundColor3 = Color3.new(0,0,255)

-- Background Transparency
frame.BackgroundTransparency = 0.5
open.BackgroundTransparency = 0
name.BackgroundTransparency = 0.6
arrest.BackgroundTransparency = 0
btools.BackgroundTransparency = 0
escape.BackgroundTransparency = 0
exit.BackgroundTransparency = 0
killaura.BackgroundTransparency = 0
melee.BackgroundTransparency = 0
removedoors.BackgroundTransparency = 0
tools.BackgroundTransparency = 0
speedplus.BackgroundTransparency = 0
speedminus.BackgroundTransparency = 0
jumpplus.BackgroundTransparency = 0
jumpminus.BackgroundTransparency = 0
sedan.BackgroundTransparency = 0
squad.BackgroundTransparency = 0

-- Objects Size
frame.Size = UDim2.new(0,250,0,300)
open.Size = UDim2.new(0,80,0,30)
name.Size = UDim2.new(0,180,0,40)
arrest.Size = UDim2.new(0.9,12,0,30)
btools.Size = UDim2.new(0.9,12,0,30)
escape.Size = UDim2.new(0.9,12,0,30)
exit.Size = UDim2.new(0,50,0,40)
killaura.Size = UDim2.new(0.9,12,0,30)
melee.Size = UDim2.new(0.9,12,0,30)
removedoors.Size = UDim2.new(0.9,12,0,30)
tools.Size = UDim2.new(0.9,12,0,30)
speedplus.Size = UDim2.new(0.9,12,0,30)
speedminus.Size = UDim2.new(0.9,12,0,30)
jumpplus.Size = UDim2.new(0.9,12,0,30)
jumpminus.Size = UDim2.new(0.9,12,0,30)
sedan.Size = UDim2.new(0.9,12,0,30)
squad.Size = UDim2.new(0.9,12,0,30)

-- Objects Position
frame.Position = UDim2.new(0,5,0.4,0)
open.Position = UDim2.new(0,0,0,0)
name.Position = UDim2.new(0,0,0,0)
arrest.Position = UDim2.new(0,0,0,320)
btools.Position = UDim2.new(0,0,0,185)
escape.Position = UDim2.new(0,0,0,230)
exit.Position = UDim2.new(0,184,0,0)
killaura.Position = UDim2.new(0,0,0,275)
melee.Position = UDim2.new(0,0,0,140)
removedoors.Position = UDim2.new(0,0,0,50)
tools.Position = UDim2.new(0,0,0,95)
speedplus.Position = UDim2.new(0,0,0,365)
speedminus.Position = UDim2.new(0,0,0,410)
jumpplus.Position = UDim2.new(0,0,0,455)
jumpminus.Position = UDim2.new(0,0,0,500)
sedan.Position = UDim2.new(0,0,0,545)
squad.Position = UDim2.new(0,0,0,590)

-- Objects Text Color
open.TextColor3 = Color3.new(0,0,0)
name.TextColor3 = Color3.new(0,255,255)
arrest.TextColor3 = Color3.new(0,0,0)
btools.TextColor3 = Color3.new(0,0,0)
escape.TextColor3 = Color3.new(0,0,0)
exit.TextColor3 = Color3.new(0,0,0)
killaura.TextColor3 = Color3.new(0,0,0)
melee.TextColor3 = Color3.new(0,0,0)
removedoors.TextColor3 = Color3.new(0,0,0)
tools.TextColor3 = Color3.new(0,0,0)
speedplus.TextColor3 = Color3.new(0,0,0)
speedminus.TextColor3 = Color3.new(0,0,0)
jumpplus.TextColor3 = Color3.new(0,0,0)
jumpminus.TextColor3 = Color3.new(0,0,0)
sedan.TextColor3 = Color3.new(0,0,0)
squad.TextColor3 = Color3.new(0,0,0)

-- Object Font
name.Font = 'Fantasy'

-- Object Text
open.Text = 'Open'
name.Text = 'Prison Life v2.0 Commands'
arrest.Text = 'Arrest [Cops Only]'
btools.Text = 'Give Btools'
escape.Text = 'Escape The Prison'
exit.Text = 'Exit'
killaura.Text = 'Kill Aura [Danger]'
melee.Text = 'Give Melee'
removedoors.Text = 'Remove Doors'
tools.Text = 'Give Guns'
speedplus.Text = 'WalkSpeed + 10'
speedminus.Text = 'WalkSpeed - 10'
jumpplus.Text = 'JumpPower + 10'
jumpminus.Text = 'JumpPower - 10'
sedan.Text = 'Teleport Seden [If got]'
squad.Text = 'Teleport Squad [If got]'

-- Object Text Scaled
open.TextScaled = true
name.TextScaled = true
arrest.TextScaled = true
btools.TextScaled = true
escape.TextScaled = true
exit.TextScaled = true
killaura.TextScaled = true
melee.TextScaled = true
removedoors.TextScaled = true
tools.TextScaled = true
speedplus.TextScaled = true
speedminus.TextScaled = true
jumpplus.TextScaled = true
jumpminus.TextScaled = true
sedan.TextScaled = true
squad.TextScaled = true

-- Frame Moveable
frame.Active = true
frame.Draggable = true

-- Open Function
open.MouseButton1Down:connect(function()
frame.Visible = true
frame:TweenPosition(UDim2.new(0,5,0.4,0), "Out", "Bounce",1 ,true)
open.Visible = false
open.Position = UDim2.new(0,0,0,0)
end)

-- Close/Exit Function
exit.MouseButton1Down:connect(function()
frame:TweenPosition(UDim2.new(0.1,-400,0.4,0) , "Out", "Quad", 1, true)
   wait(1)
frame.Visible = false
   wait(.1)
   open.Visible = true
   open:TweenPosition(UDim2.new(0,2,0.8,15), "Out", "Bounce",1 ,true)
end)

-- Remove Doors Function
removedoors.MouseButton1Down:connect(function()
game.Workspace.Doors:Destroy()
end)

-- Guns Function
tools.MouseButton1Down:connect(function()
local weapons = {"Remington 870", "M9", "AK-47", "M4A1", "Riot Shield"}
   for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
   for j, k in pairs(weapons) do
   if v.Name == k then
   v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
   end
   end
   end
end)

-- Melee Function
melee.MouseButton1Down:connect(function()
local weapons = {"Crude Knife", "Sharpened stick", "Extendo mirror"}
   for i, v in pairs(game.ReplicatedStorage.Tools:GetChildren()) do
   for j, k in pairs(weapons) do
   if v.Name == k then
   v:Clone().Parent = game.Players.LocalPlayer.Backpack
   end
   end
   end
end)

-- Btools Function
btools.MouseButton1Down:connect(function()
   Instance.new('HopperBin', game.Players.LocalPlayer.Backpack).BinType = 2
   Instance.new('HopperBin', game.Players.LocalPlayer.Backpack).BinType = 3
   Instance.new('HopperBin', game.Players.LocalPlayer.Backpack).BinType = 4
   loadstring(game:GetObjects('rbxassetid://552440069')[1].Source)()
end)

-- Escape Function
escape.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(283, 72, 2213)
end)

-- Kill Aura Function
killaura.MouseButton1Down:connect(function()
while wait(0.1) do
   for i, plr in pairs(game.Players:GetChildren()) do
   if plr.Name ~= game.Players.LocalPlayer.Name then
   for i = 1, 10 do
   game.ReplicatedStorage.meleeEvent:FireServer(plr)
   end
   end
   end
   end
end)

-- Arrest Function
    local mouse = game.Players.LocalPlayer:GetMouse()
    local arrestEvent = game.Workspace.Remote.arrest
    mouse.Button1Down:connect(function()
    local obj = mouse.Target
    local response = arrestEvent:InvokeServer(obj)
    end)

-- WalkSpeed Increase
speedplus.MouseButton1Down:connect(function()
p.Character.Humanoid.WalkSpeed = p.Character.Humanoid.WalkSpeed + 10
end)

-- WalkSpeed Decrease
speedminus.MouseButton1Down:connect(function()
p.Character.Humanoid.WalkSpeed = p.Character.Humanoid.WalkSpeed - 10
end)

-- JumpPower Increase
jumpplus.MouseButton1Down:connect(function()
p.Character.Humanoid.JumpPower = p.Character.Humanoid.JumpPower + 10
end)

-- JumpPower Decrease
jumpminus.MouseButton1Down:connect(function()
p.Character.Humanoid.JumpPower = p.Character.Humanoid.JumpPower - 10
end)

-- Seden
sedan.MouseButton1Down:connect(function()
local Cars = {"Sedan"}
   for i, v in pairs(game.Workspace["CarContainer"]:GetChildren()) do
   for j, k in pairs(Cars) do
   if v.Name == k then
   v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
   wait(.1)
   v.Parent = game.Workspace
   elseif not v.Name == k then
sedan.Text = 'No Sedan Founded yet !'
wait(2)
sedan.Text = 'Teleport Seden [If got]'
   end
   end
   end
end)

-- Squad
squad.MouseButton1Down:connect(function()
local Cars = {"Squad"}
   for i, v in pairs(game.Workspace["CarContainer"]:GetChildren()) do
   for j, k in pairs(Cars) do
   if v.Name == k then
   v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
   wait(.1)
   v.Parent = game.Workspace
   elseif not v.Name == k then
squad.Text = 'No Squad Founded yet !'
wait(2)
squad.Text = 'Teleport Squad [If got]'
   end
   end
   end
end)