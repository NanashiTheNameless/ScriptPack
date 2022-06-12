wait(0.000001)
plr = game.Players.LocalPlayer
name = plr.Name
local MainScreen = Instance.new("ScreenGui", plr.PlayerGui)
local open = Instance.new("TextButton", MainScreen)
open.BackgroundColor3 = Color3.fromRGB(126, 255, 130)
open.Size = UDim2.new(0, 100, 0, 25)
open.Position = UDim2.new(0, 1175, 0, 50)
open.Text = "Open"
open.Visible = false
local MenuFrame = Instance.new("Frame", MainScreen)
MenuFrame.Position = UDim2.new(0, 830, 0, -75)
MenuFrame.BackgroundColor3 = Color3.fromRGB(34, 67, 77)
MenuFrame.Size = UDim2.new(0, 40, 0, 500)
MenuFrame.Rotation = 90
local AdminM = Instance.new("TextButton", MenuFrame)
AdminM.BackgroundColor3 = Color3.fromRGB(34, 122, 255)
AdminM.Position = UDim2.new(0, -30, 0, 430)
AdminM.Size = UDim2.new(0, 100, 0, 25)
AdminM.Rotation = -90
AdminM.Text = "Admin"
local ServerM = Instance.new("TextButton", MenuFrame)
ServerM.BackgroundColor3 = Color3.fromRGB(34, 122, 255)
ServerM.Position = UDim2.new(0, -31, 0, 300)
ServerM.Size = UDim2.new(0, 100, 0, 25)
ServerM.Rotation = -90
ServerM.Text = "Server"
local ServerFrame = Instance.new("Frame", MainScreen)
ServerFrame.Size = UDim2.new(0, 500, 0, 500)
ServerFrame.BackgroundColor3 = Color3.fromRGB(29, 77, 53)
ServerFrame.Position = UDim2.new(0, 600, 0, 200)
ServerFrame.Visible = false
local Char = Instance.new("TextButton", ServerFrame)
Char.Position = UDim2.new(0, 415, 0, 66)
Char.Size = UDim2.new(0, 50, 0, 20)
Char.Text = "Char"
Char.BackgroundColor3 = Color3.fromRGB(255, 139, 6)
local Gear = Instance.new("TextButton", ServerFrame)
Gear.Position = UDim2.new(0, 350, 0, 66)
Gear.Size = UDim2.new(0, 50, 0, 20)
Gear.Text = "Gear"
Gear.BackgroundColor3 = Color3.fromRGB(255, 139, 6)
local IdFindv2 = Instance.new("TextBox", ServerFrame)
IdFindv2.Position = UDim2.new(0, 23, 0, 66)
IdFindv2.Size = UDim2.new(0, 150, 0, 20)
IdFindv2.Text = "Name"
local IdFindv3 = Instance.new("TextBox", ServerFrame)
IdFindv3.Position = UDim2.new(0, 185, 0, 66)
IdFindv3.Size = UDim2.new(0, 150, 0, 20)
IdFindv3.Text = "Id"
local Flood = Instance.new("TextButton", ServerFrame)
Flood.Position = UDim2.new(0, 22, 0, 22)
Flood.Size = UDim2.new(0, 50, 0, 20)
Flood.Text = "Flood"
Flood.BackgroundColor3 = Color3.fromRGB(70,130,180)
local Clear = Instance.new("TextButton", ServerFrame)
Clear.Position = UDim2.new(0, 88, 0, 22)
Clear.Size = UDim2.new(0, 75, 0, 20)
Clear.Text = "Clear Terrain"
Clear.BackgroundColor3 = Color3.fromRGB(70,130,180)
local MainFrame = Instance.new("Frame", MainScreen)
MainFrame.Size = UDim2.new(0, 500, 0, 500)
MainFrame.BackgroundColor3 = Color3.fromRGB(105, 255, 97)
MainFrame.Position = UDim2.new(0, 600, 0, 200)
local UnGod = Instance.new("TextButton", MainFrame)
UnGod.BackgroundColor3 = Color3.fromRGB(250, 255, 247)
UnGod.Size = UDim2.new(0, 50, 0, 20)
UnGod.Position = UDim2.new(0, 325, 0, 198)
UnGod.Text = "UnGod"
local UnFire = Instance.new("TextButton", MainFrame)
UnFire.Size = UDim2.new(0, 50, 0, 20)
UnFire.Position = UDim2.new(0, 325, 0, 242)
UnFire.Text = "UnFire"
UnFire.BackgroundColor3 = Color3.fromRGB(255, 94, 218)
local Fire = Instance.new("TextButton", MainFrame)
Fire.Size = UDim2.new(0, 50, 0, 20)
Fire.Position = UDim2.new(0, 250, 0, 242)
Fire.Text = "Fire"
Fire.BackgroundColor3 = Color3.fromRGB(255, 94, 218)
local Lag = Instance.new("TextButton", MainFrame)
Lag.Size = UDim2.new(0, 50, 0, 20)
Lag.Position = UDim2.new(0, 250, 0, 286)
Lag.Text = "Lag"
Lag.BackgroundColor3 = Color3.fromRGB(255,127,80)
local Zombie = Instance.new("TextButton", MainFrame)
Zombie.Size = UDim2.new(0, 50, 0, 20)
Zombie.Position = UDim2.new(0, 325, 0, 330)
Zombie.Text = "Zombify"
Zombie.BackgroundColor3 = Color3.fromRGB(85,107,47)
local Penis = Instance.new("TextButton", MainFrame)
Penis.Size = UDim2.new(0, 50, 0, 20)
Penis.Position = UDim2.new(0, 325, 0, 286)
Penis.Text = "Penis"
Penis.BackgroundColor3 = Color3.fromRGB(255,127,80)
local God = Instance.new("TextButton", MainFrame)
God.BackgroundColor3 = Color3.fromRGB(250, 255, 247)
God.Size = UDim2.new(0, 50, 0, 20)
God.Position = UDim2.new(0, 250, 0, 198)
God.Text = "God"
local Explode = Instance.new("TextButton", MainFrame)
Explode.Position = UDim2.new(0, 325, 0, 22)
Explode.Size = UDim2.new(0, 50, 0, 20)
Explode.Text = "Explode"
Explode.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
local Goto = Instance.new("TextButton", MainFrame)
Goto.Size = UDim2.new(0, 50, 0, 20)
Goto.Position = UDim2.new(0, 250, 0, 66)
Goto.BackgroundColor3 = Color3.fromRGB(255, 240, 25)
Goto.Text = "Goto"
local sparkles = Instance.new("TextButton", MainFrame)
sparkles.BackgroundColor3 = Color3.fromRGB(6, 222, 255)
sparkles.Size = UDim2.new(0, 50, 0, 20)
sparkles.Position = UDim2.new(0, 250, 0, 110)
sparkles.Text = "Sparkles"
local freeze = Instance.new("TextButton", MainFrame)
freeze.BackgroundColor3 = Color3.fromRGB(165, 171, 255)
freeze.Size = UDim2.new(0, 50, 0, 20)
freeze.Position = UDim2.new(0, 250, 0, 154)
freeze.Text = "Freeze"
local unfreeze = Instance.new("TextButton", MainFrame)
unfreeze.BackgroundColor3 = Color3.fromRGB(165, 171, 255)
unfreeze.Size = UDim2.new(0, 75, 0, 20)
unfreeze.Position = UDim2.new(0, 325, 0, 154)
unfreeze.Text = "UnFreeze"
local forcefield = Instance.new("TextButton", MainFrame)
forcefield.BackgroundColor3 = Color3.fromRGB(6, 222, 255)
forcefield.Size = UDim2.new(0, 75, 0, 20)
forcefield.Position = UDim2.new(0, 325, 0, 110)
forcefield.Text = "ForceField"
local Bring = Instance.new("TextButton", MainFrame)
Bring.Size = UDim2.new(0, 50, 0, 20)
Bring.Position = UDim2.new(0, 325, 0, 66)
Bring.BackgroundColor3 = Color3.fromRGB(255, 240, 25)
Bring.Text = "Bring"
local X = Instance.new("TextButton", MenuFrame)
X.Position = UDim2.new(0, 0, 0, 0)
X.Size = UDim2.new(0, 15, 0, 15)
X.Text = "X"
X.BackgroundColor3 = Color3.new(255, 0 ,4)
X.Rotation = -90
local WS = Instance.new("TextButton", MainFrame)
WS.Text = "WS"
WS.Size = UDim2.new(0, 50, 0, 20)
WS.BackgroundColor3 = Color3.fromRGB(239, 255, 179)
WS.Position = UDim2.new(0, 20, 0, 100)
local JP = Instance.new("TextButton", MainFrame)
JP.Text = "JP"
JP.Size = UDim2.new(0, 50, 0, 20)
JP.BackgroundColor3 = Color3.fromRGB(239, 255, 179)
JP.Position = UDim2.new(0, 80, 0, 100)
local FindName = Instance.new("TextBox", MainFrame)
FindName.Text = "Name"
FindName.Size = UDim2.new(0, 200, 0, 25)
FindName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FindName.Position = UDim2.new(0, 20, 0, 20)
local FindValue = Instance.new("TextBox", MainFrame)
FindValue.Text = "Value"
FindValue.Size = UDim2.new(0, 200, 0, 25)
FindValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FindValue.Position = UDim2.new(0, 20, 0, 60)
local Kill = Instance.new("TextButton", MainFrame)
Kill.Position = UDim2.new(0, 250, 0, 22)
Kill.Size = UDim2.new(0, 50, 0, 20)
Kill.Text = "Kill"
Kill.BackgroundColor3 = Color3.fromRGB(255, 73, 106)
local musicid = Instance.new("TextBox", MainFrame)
musicid.Size = UDim2.new(0, 150, 0, 25)
musicid.Position = UDim2.new(0, 20, 0, 465)
musicid.Text = "Id"
musicid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
local playmusic = Instance.new("TextButton", MainFrame)
playmusic.Size = UDim2.new(0, 100, 0, 25)
playmusic.Position = UDim2.new(0, 200, 0, 465)
playmusic.BackgroundColor3 = Color3.fromRGB(255, 193, 67)
playmusic.Text = "Music"

function char()
local aim = game.Players:FindFirstChild(IdFindv2.Text)
if aim then
local id = IdFindv3.Text
aim.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..id..""
aim.Character:BreakJoints()
end
end

function clear2()
	game.Workspace.Terrain:Clear()
end

function admin2()
if MainFrame.Visible == false then
ServerFrame.Visible = false
MainFrame.Visible = true
end
end

function gearv2()
local aim = game.Players:FindFirstChild(IdFindv2.Text)

if aim then
local root = game:GetService("InsertService"):LoadAsset(IdFindv3.Text)
local item = root:children()
for i = 1, #item do
item[i].Parent = aim.Backpack
end
end
end

function zombify()
local plr = game.Workspace:FindFirstChild(FindName.Text)
if plr then
plr.Head.face.Texture = "rbxassetid://133667125"
plr.Shirt.ShirtTemplate = "rbxassetid://117272533"
plr.Pants.PantsTemplate = "rbxassetid://117272533"
plr.Head.BrickColor = BrickColor.new("Parsley green")
plr.Torso.BrickColor = BrickColor.new("Parsley green")
plr["Right Arm"].BrickColor = BrickColor.new("Parsley green")
plr["Left Arm"].BrickColor = BrickColor.new("Parsley green")
plr["Right Leg"].BrickColor = BrickColor.new("Parsley green")
plr["Left Leg"].BrickColor = BrickColor.new("Parsley green")
local get = plr:GetChildren()
for i = 1, #get do
if get[i].ClassName == "Hat" then
get[i]:Destroy()
end
end
end
end

function penisv2()
local plr = game.Workspace:FindFirstChild(FindName.Text)
if plr then
stick = Instance.new("Part", plr.Torso)
c = Instance.new("CylinderMesh", stick)
stick.Size = Vector3.new(1,6.1,2)
stick.BrickColor = BrickColor.new("Pastel brown")
stick.BottomSurface = "Smooth"
stick.TopSurface = "Smooth"
stick.Position = plr.Torso.Position
wstick = Instance.new("Weld",plr.Torso)
wstick.Part0 = wstick.Parent
wstick.Part1 = stick
wstick.C1 = CFrame.new(Vector3.new(0,3.5,-1.5)) * CFrame.Angles(80,0,0)
ball1 = Instance.new("Part",plr)
ball1.BrickColor = stick.BrickColor
ball1.Shape = "Ball"
ball1.Size = Vector3.new(1,1,1)
wb1 = Instance.new("Weld",plr.Torso)
wb1.Part0 = wstick.Part0
wb1.Part1 = ball1
ball1.BottomSurface = "Smooth"
ball1.TopSurface = "Smooth"
wb1.C1 = CFrame.new(Vector3.new(-0.5,1.5,0))
ball2 = ball1:clone()
ball2.Parent = plr
wb2 = Instance.new("Weld",plr.Torso)
wb2.Part0 = wstick.Part0
wb2.Part1 = ball2
wb2.C1 = CFrame.new(Vector3.new(0.5,1.5,0))
end
end

function flood()
game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")
end

function lagv2()
local player = game.Players:FindFirstChild(FindName.Text)
if player then
for i = 1,100000 do
Instance.new("HopperBin", player.Backpack)
end
end
end

function unfirev2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		local fire = a.Torso:FindFirstChild("Fire")
		if fire then
		fire:Destroy()
		end
	end
end

function firev2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		local fire = Instance.new("Fire", a.Torso)
	end
end

function ungodv2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		a.Humanoid.MaxHealth = 100
		a.Humanoid.Health = 100
	end
end

function godv2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		a.Humanoid.MaxHealth = math.huge
		a.Humanoid.Health = math.huge
	end
end

function freezev2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		a.Torso.Anchored = true
	end
end

function unfreezev2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		a.Torso.Anchored = false
	end
end

function explodev2()
		local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		local Explosion = Instance.new("Explosion", a)
		Explosion.Position = a.Torso.Position
	end
end

function forcefieldv2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		local forcefielc = Instance.new("ForceField", a)
	end
end

function sparklesv2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		local b = Instance.new("Sparkles", a.Torso)
	end
end

function bringv2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		local b = game.Workspace:FindFirstChild(name)
		if b then
			a.Torso.CFrame = b.Torso.CFrame
		end
	end
end

function gotov2()
	local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		local b = game.Workspace:FindFirstChild(name)
		if b then
			b.Torso.CFrame = a.Torso.CFrame
		end
	end
end

function MusicPlyt()
    local music123 = Instance.new("Sound", game.Workspace)
    local id123 = musicid.Text
    music123.SoundId = "rbxassetid://"..id123..""
    wait(0.00001)
    music123:Play()
end

function opena()
        MenuFrame.Visible = true
	MainFrame.Visible = true
	open.Visible = false
end

function Kill2()
	local Text = FindName.Text
	local FindToKill = game.Workspace:FindFirstChild(Text)
	if FindToKill then
		FindToKill.Head:Destroy()
	end
end

function Ok()
	MainFrame.Visible = false
        ServerFrame.Visible = false
        MenuFrame.Visible = false
	open.Visible = true
end

function WSv2()
    local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		a.Humanoid.WalkSpeed = FindValue.Text
		end
end

function JPv2()
    local a = game.Workspace:FindFirstChild(FindName.Text)
	if a then
		a.Humanoid.JumpPower = FindValue.Text
		end
end

function server2()
if ServerFrame.Visible == false then
MainFrame.Visible = false
ServerFrame.Visible = true
end
end

Char.MouseButton1Click:connect(char)
Gear.MouseButton1Click:connect(gearv2)
Clear.MouseButton1Click:connect(clear2)
Flood.MouseButton1Click:connect(flood)
ServerM.MouseButton1Click:connect(server2)
AdminM.MouseButton1Click:connect(admin2)
Zombie.MouseButton1Click:connect(zombify)
Penis.MouseButton1Click:connect(penisv2)
Lag.MouseButton1Click:connect(lagv2)
JP.MouseButton1Click:connect(JPv2)
WS.MouseButton1Click:connect(WSv2)
UnFire.MouseButton1Click:connect(unfirev2)
Fire.MouseButton1Click:connect(firev2)
UnGod.MouseButton1Click:connect(ungodv2)
God.MouseButton1Click:connect(godv2)
unfreeze.MouseButton1Click:connect(unfreezev2)
freeze.MouseButton1Click:connect(freezev2)
Explode.MouseButton1Click:connect(explodev2)
forcefield.MouseButton1Click:connect(forcefieldv2)
sparkles.MouseButton1Click:connect(sparklesv2)
Bring.MouseButton1Click:connect(bringv2)
Goto.MouseButton1Click:connect(gotov2)
open.MouseButton1Click:connect(opena)
X.MouseButton1Click:connect(Ok)
playmusic.MouseButton1Click:connect(MusicPlyt)
Kill.MouseButton1Click:connect(Kill2)