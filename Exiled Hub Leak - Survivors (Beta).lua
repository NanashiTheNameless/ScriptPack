

function check(data) 
	if data.Text == '' then 
		if data.Name ~= fakePass then
			data.Text = data.Name:upper()
		elseif data.Name == fakePass then 
			data.Text = PASSWORD 
		end 
	end
end 
AuthGui = game:GetObjects('rbxassetid://'..'994179116')[1] 
AuthGui.Parent = game.CoreGui 
_G.ActiveGui = AuthGui.Name 
AuthGui.Enabled = false 

MainFrame= AuthGui.MainFrame
Authenticate=MainFrame.Authenticate 
Username=MainFrame.Username 
Password=MainFrame.Password 
Username.Focused:connect(function() 
	Username.Detail:TweenSizeAndPosition(UDim2.new(0.8,0,0,1),UDim2.new(0.1,0,1,0),'Out','Quad',0.5, true) 
	Username.Detail.BackgroundColor3=Color3.fromRGB(170,0,0) 
end) 
Username.FocusLost:connect(function() 
	Username.Detail:TweenSizeAndPosition(UDim2.new(0.6,0,0,1),UDim2.new(0.195,0,1,0),'Out','Quad',0.5, true) 
	Username.Detail.BackgroundColor3=Color3.fromRGB(255,255,255) 
	check(Username) 
end) 
Password.Focused:connect(function() 
	Password.Detail:TweenSizeAndPosition(UDim2.new(0.8,0,0,1),UDim2.new(0.1,0,1,0),'Out','Quad',0.5, true) 
	Password.Detail.BackgroundColor3=Color3.fromRGB(170,0,0) 
end) 
Password.FocusLost:connect(function() 
	Password.Detail:TweenSizeAndPosition(UDim2.new(0.6,0,0,1),UDim2.new(0.195,0,1,0),'Out','Quad',0.5, true) 
	Password.Detail.BackgroundColor3=Color3.fromRGB(255,255,255) 
end) 
finish=false 
Password.Focused:connect(function() 
	finish=false 
	repeat 
		wait() 
		Password.fakePass.Text=string.rep('*', string.len(Password.Text))
	until 
	finish 
end) 
Password.FocusLost:connect(function() 
	finish=true 
	wait() 
	check(Password.fakePass) 
end) 
wait(1.2) 
AuthGui.Enabled = true  
Authenticate.Text = 'ur ip wont be logged lmao we removed it'
Authenticate.MouseButton1Down:connect(function()
print('ur ip wasnt logged lmao')
AuthGui:Destroy()
end)

if game.PlaceId == 539494517 then
--// SURVIVOR GUI //--
--// EXILED HUB //--

-- works here; https://www.roblox.com/games/539494517/Survivor-Beta

--// Initiate //--

gui = game:GetObjects("rbxassetid://994170365")[1]
gui.Parent = game.CoreGui

--// MAINVARS //--

MainFrame = gui.MainFrame
GameContent = MainFrame.GameContents
HumanoidContent = MainFrame.HumanoidContents
Toggle = gui.Toggle
toggle_button = Toggle.toggle_button

--// SUBVARS //--

game:WaitForChild(game.Players.LocalPlayer.Character.Humanoid)
lpChar = game.Players.LocalPlayer.Character
defaultWalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
defaultJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower
presetWalkSpeed = 50
presetJumpPower = 125

--// TOGGLE //--

toggle_button.MouseButton1Down:connect(function()
	if toggle_button.enabled.Value == true then
		print("Closed")
	MainFrame.Visible = false
	toggle_button.enabled.Value = false
	toggle_button.Text = "+"
	elseif toggle_button.enabled.Value == false then
		print("Opened")
	MainFrame.Visible = true
	toggle_button.enabled.Value = true
	toggle_button.Text = "-"
	end
end)

--// ANTI-EXPLOIT //--

for _,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
if v:IsA('LocalScript') then
v:Destroy()
end
end

for _,v in pairs(game.StarterGui:GetChildren()) do
if v:IsA('LocalScript') then
v:Destroy()
end
end

if game.StarterGui.Scripts.Speed and game.Players.LocalPlayer.PlayerGui.Scripts.Speed then
game.StarterGui.Scripts.Speed:Destroy()
game.Players.LocalPlayer.PlayerGui.Scripts.Speed:Destroy()
end

game.Players.LocalPlayer.PlayerGui.Scripts.Jump:Destroy()
game.StarterGui.Scripts.Jump:Destroy()
game.Players.LocalPlayer.PlayerGui.Scripts["Disable Seats"]:Destroy()
game.StarterGui.Scripts["Disable Seats"]:Destroy()

--// GAME_FUNCTIONS //--

--// ENABLE MOUSELOCK //--

GameContent.EnableMouselock.MouseButton1Down:connect(function(a)
game.ReplicatedStorage.LocalEvents.Mouselock:FireServer(true)
end)

--// ADVANTAGES (CREDITS: SANTA MUERTE) //--

GameContent.Advantages.MouseButton1Down:connect(function(a)
local advantages = game.Workspace.Misc.Advantages:GetChildren()
local lp = game.Players.LocalPlayer.Character

for _, v in pairs(workspace.Misc.Advantages:GetChildren()) do
v.CFrame = CFrame.new(workspace[game:GetService("Players").LocalPlayer.Name].Torso.Position)
end

if #advantages == 0 then
print('No advantages were found.')
end
end)

--// IDOLS (CREDITS: SANTA MUERTE) //--

GameContent.Idols.MouseButton1Down:connect(function(a)
local idols = game.Workspace.Misc.Idols:GetChildren()
local lp = game.Players.LocalPlayer.Character

for _, v in pairs(workspace.Misc.Idols:GetChildren()) do
v.CFrame = CFrame.new(workspace[game:GetService("Players").LocalPlayer.Name].Torso.Position)
end

if #idols == 0 then
print('No idols were found.')
end
end)

--// COINS (CREDITS: Santa Muerte) //--

coin_status = false

GameContent.Coins.MouseButton1Down:connect(function(a)
coin_status = not coin_status
if coin_status == true then
coin_status=true
while wait(.25) do
if coin_status==true then
for _, v in pairs(workspace.Misc.Coins:GetChildren()) do
for _, q in pairs (v:GetChildren()) do
q.CFrame = CFrame.new(workspace[game:GetService("Players").LocalPlayer.Name].Torso.Position)
end
end
end
end
else
coin_status=false
end
end)

--// HUMANOID_FUNCTIONS //--

--// WALKSPEED //--

HumanoidContent.WalkSpeed.MouseButton1Down:connect(function(a)
if lpChar.Humanoid.WalkSpeed == presetWalkSpeed then
lpChar.Humanoid.WalkSpeed = defaultWalkSpeed
elseif lpChar.Humanoid.WalkSpeed == defaultWalkSpeed then
lpChar.Humanoid.WalkSpeed = presetWalkSpeed
else 
lpChar.Humanoid.WalkSpeed = presetWalkSpeed
end
end)

--// NOGRAV //--

HumanoidContent.JumpPower.MouseButton1Down:connect(function(a)
if lpChar.Humanoid.JumpPower == presetJumpPower then
lpChar.Humanoid.JumpPower = defaultJumpPower
elseif lpChar.Humanoid.JumpPower == defaultJumpPower then
lpChar.Humanoid.JumpPower = presetJumpPower
else 
lpChar.Humanoid.JumpPower = presetJumpPower
end
end)

--// NOCLIP //--

noclip_status = false

HumanoidContent.NoClip.MouseButton1Down:connect(function()
noclip_status = not noclip_status
if noclip_status == true then
game:GetService('RunService').Stepped:connect(function()
if noclip_status == true then
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character.Head.CanCollide = false
end
end)
game.Players.LocalPlayer.Character.Torso.Changed:connect(function()
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character.Head.CanCollide = false
end)
else
noclip_status = false
end
end)

--// CLICKTELEPORT //-- 

clicktele_status = false

HumanoidContent.ClickTeleport.MouseButton1Down:connect(function()
if clicktele_status == false then
clicktele_status = true
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:connect(function(b)
if clicktele_status == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=mouse.Hit+Vector3.new(0,10,0)
end
end)
else
clicktele_status = false
end

end)


--// TELEPORT //--

HumanoidContent.Teleport.MouseButton1Down:connect(function()
local Target = HumanoidContent.Value.Text
print("Teleporting to "..tostring(Target))
lpChar.HumanoidRootPart.CFrame = game.Workspace[Target].Torso.CFrame
end)

elseif game.PlaceId == 606849621 then
--// EXILED HUB //--
--// JAILBREAK //--

-- works here; https://www.roblox.com/games/606849621/Jailbreak-RELEASE

--// INITIATE //--

game:GetService("Players"):WaitForChild(game:GetService("Players").LocalPlayer.Name)

jailbreak = game:GetObjects('rbxassetid://994165805')[1]
jailbreak.Parent = game.CoreGui

--// MAINVARS //--

MainFrame = jailbreak.MainFrame
Tabs = jailbreak.Tabs

--// FOCUS //--

focusPosition = UDim2.new(0, 0,1, -140)
lostPosition = focusPosition + UDim2.new(0,0,0,120)

MainFrame.Position = lostPosition

jailbreak.HoverBar.MouseEnter:connect(function()
	MainFrame:TweenPosition(focusPosition, "Out","Quad",.5, true)
end)

jailbreak.MainFrame.DissapearBar.MouseLeave:connect(function()
	MainFrame:TweenPosition(lostPosition, "Out","Quad",.5, true)
end)

--// TOGGLE //--

MainFrame.BT_City.MouseButton1Down:connect(function()
	for _,v in pairs(Tabs:GetChildren()) do
		if v.Name == "City" and v.Visible == false then
			v.Visible = true
		else
			v.Visible = false
		end
	end
end)

MainFrame.BT_Misc.MouseButton1Down:connect(function()
	for _,v in pairs(Tabs:GetChildren()) do
		if v.Name == "Misc" and v.Visible == false then
			v.Visible = true
		else
			v.Visible = false
		end
	end
end)

MainFrame.BT_Players.MouseButton1Down:connect(function()
	for _,v in pairs(Tabs:GetChildren()) do
		if v.Name == "Players" and v.Visible == false then
			v.Visible = true
		else
			v.Visible = false
		end
	end
end)

MainFrame.BT_Prison.MouseButton1Down:connect(function()
	for _,v in pairs(Tabs:GetChildren()) do
		if v.Name == "Prison" and v.Visible == false then
			v.Visible = true
		else
			v.Visible = false
		end
	end
end)

--// PLAYER_FUNCTION //--

baseX = 0
baseY = 0
baseIncrement = 0.020
setPlayers = {}

function addButton()
setPlayers = {}
local format = Tabs.Players.Selections.BT_format
for _,p in pairs(Tabs.Players.Selections:GetChildren()) do
if p.Name ~= "BT_format" then
p:Remove()
end	
end
for i,v in pairs(game:GetService("Players"):GetChildren()) do
local toAdd = format:Clone()
toAdd.Parent = Tabs.Players.Selections
toAdd.Name = v.Name
toAdd.Text = v.Name
toAdd.Position = UDim2.new(0, baseX, (baseIncrement*(i-1)), baseY)
toAdd.Visible = true
toAdd.MouseButton1Down:connect(function()
print(toAdd.Name)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[toAdd.Name].Character.HumanoidRootPart.CFrame
end)
end
for _,v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(setPlayers, v.Name)
end
print("Updated")
end

addButton()
game:GetService("Players").PlayerAdded:connect(addButton)
game:GetService("Players").PlayerRemoving:connect(addButton)

--// SCRIPT //--

--// Variables // --

city = Tabs.City.Selections
jail = Tabs.Prison.Selections

--// Teleport // --

--// City // --

city.crimhid.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-229.920609, 17.6143398, 1597.60474, -0.985822201, -9.40647266e-38, 0.167793393, -1.20917843e-37, 1, -1.49819736e-37, -0.167793393, -1.67984835e-37, -0.985822201)
end)
city.gun.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27.1826572, 17.8177109, -1761.08618, -0.539289176, -6.24418596e-42, -0.842120647, -9.09863093e-42, 1, -1.58767116e-42, 0.842120647, 6.80610664e-42, -0.539289176)
end)
city.mnthid.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1563.62256, 49.7877045, -1755.57568, -0.202990815, 0, 0.979180634, 0, 1, 0, -0.979180634, 0, -0.202990815)
end)
city.ph.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(724.919495, 68.9894028, 1099.99719, -0.957878768, 7.15359293e-16, -0.287173152, 1.86416599e-15, 1, -3.72697123e-15, 0.287173152, -4.10532475e-15, -0.957878768)
end)
city.pi.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(735.545715, 38.1524734, 1136.45142, -0.995203197, -4.32022872e-27, -0.0978293642, -4.22644479e-27, 1, -1.1658798e-27, 0.0978293642, -7.4681694e-28, -0.995203197)
end)
city.be.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.491828, 17.921011, 791.664368, -0.989417315, 8.49967547e-34, -0.145097926, 7.73924358e-34, 1, 5.80527482e-34, 0.145097926, 4.62089125e-34, -0.989417315)
end)
city.bei.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.4238586, 18.1244984, 799.618286, -0.973170877, -1.13556215e-30, -0.230083585, -8.2587694e-31, 1, -1.44227044e-30, 0.230083585, -1.21355488e-30, -0.973170877)
end)
city.bbr.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35.8957176, 18.1656361, 843.65509, -0.444796562, -7.667709e-05, 0.895631611, 5.97747521e-06, 1, 8.85808986e-05, -0.895631611, 4.47540915e-05, -0.444796532)
end)
city.bvo.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(31.2990627, 0.656751871, 816.080383, 0.00851873867, 1.40129846e-45, 0.999963701, -1.40129846e-45, 1, -1.40129846e-45, -0.999963701, -1.40129846e-45, 0.00851873867)
end)	
city.bvi.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20.2483959, 3.37197232, 813.558044, -0.245467424, 0.181656018, -0.952232599, -0.000280563836, 0.982272446, 0.187458977, 0.969404757, 0.0462822393, -0.241064921)
end)
city.jso.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.234024, 17.8779068, 1350.82788, 0.994561613, -1.40129846e-45, 0.104149789, 1.40129846e-45, 1, 1.40129846e-45, -0.104149789, -1.40129846e-45, 0.994561613)
end)
city.jsr.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.607529, 98.6578903, 1314.53662, 0.221041486, -1.814892e-17, -0.97526443, -8.06073743e-17, 1, -3.68787127e-17, 0.97526443, 8.6765231e-17, 0.221041486)
end)	
city.jsi.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(134.762024,17.858129,1320.29089)

end)
city.ds.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(267.56546, 17.6177177, -1787.1864, -0.999016583, 9.22044721e-39, -0.0443376116, 9.03273767e-39, 1, 4.43397599e-39, 0.0443376116, 4.02912545e-39, -0.999016583)
end)

--// Prison // --

jail.courtyard.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1218.60876, 17.7999935, -1759.50146, 0.990413308, -6.65682216e-31, 0.138135761, 7.25993916e-31, 1, -3.86227453e-31, -0.138135761, 4.82810513e-31, 0.990413308)
end)
jail.cafiteria.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1425.16553, 18.1500568, -1835.63733, 0.99999994, -1.2941742e-23, -3.04114074e-05, 1.29417238e-23, 1, -5.57281172e-25, 3.04114074e-05, 5.5688896e-25, 0.99999994)
end)
jail.cells.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1435.57397, -1.0499469, -1881.37476, -0.99123317, -1.90434102e-22, -0.132124349, -7.63107626e-23, 1, -8.68820553e-22, 0.132124349, -8.5112119e-22, -0.99123317)
end)
jail.outside.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1312.88135, 18.0498447, -1668.78442, -0.572827637, -1.40129846e-45, -0.819675863, -1.40129846e-45, 1, -1.40129846e-45, 0.819675863, 0, -0.572827637)
end)
jail.helipad.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1159.52698, 57.1754494, -1595.20923, -0.998077095, -2.12026503e-08, -0.0619851947, -2.13084643e-08, 1, 1.04603359e-09, 0.0619851947, 2.36483233e-09, -0.998077095)
end)
jail.cars.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1066.31421, 18.0500565, -1507.44934, -0.0328855924, -1.6443439e-15, 0.999459147, 1.0207467e-15, 1, 1.67881972e-15, -0.999459147, 1.07540362e-15, -0.0328855924)
end)
jail.dguns.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1471.29224, -1.0499469, -1780.66199, 0.935887516, -3.02119949e-42, -0.352298975, 2.34717493e-42, 1, -2.33876714e-42, 0.352298975, 1.36206211e-42, 0.935887516)
end)
jail.uguns.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1136.96301, 17.950058, -1583.86121, 0.0138225565, -1.38869817e-25, -0.999904394, -8.7614972e-26, 1, -1.40094289e-25, 0.999904394, 8.95430898e-26, 0.0138225565)
end)
jail.gate.MouseButton1Click:connect(function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1163.65027, 17.990139, -1439.47791, 0.859661043, 1.82033237e-17, -0.510864854, 2.17266069e-17, 1, 7.2192949e-17, 0.510864854, -7.31608297e-17, 0.859661043)
end)

--// Misc //--

Tabs.Misc.Selections.RemoveDoors.MouseButton1Down:connect(function()
if game:GetService("Workspace"):FindFirstChild("Doors") then
game:GetService("Workspace").Doors:Destroy()
end
for _,v in pairs(game:GetService("Workspace").Banks:GetChildren()) do
if v:IsA("Model") then
if v:FindFirstChild("InsideDoor") then
v:FindFirstChild("InsideDoor"):Remove()
end
if v:FindFirstChild("FrontDoor") then
v:FindFirstChild("FrontDoor"):Remove()
end
end
end
end)

Tabs.Misc.Selections.RemoveLasers.MouseButton1Down:connect(function()
for _,v in pairs(game:GetService("Workspace").Banks:GetChildren()) do
if v:IsA("Model") then
if v:FindFirstChild("Lasers") then
v.Lasers:Remove()
end
end
end
for _,v in pairs(game:GetService("Workspace").Jewelrys:GetChildren()) do
if v:IsA("Model") then
if v:FindFirstChild("FloorLasers") then
v:FindFirstChild("FloorLasers"):Remove()
end
if v:FindFirstChild("Lasers") then
v:FindFirstChild("Lasers"):Remove()
end
for _,c in pairs(v.Model:GetChildren()) do
if c.Name == "BarbedWire" then
c:Remove()
end
end
end
end
end)

Tabs.Misc.Selections.RemoveCellDoors.MouseButton1Down:connect(function()
for _,c in pairs(game:GetService("Workspace").Cells:GetChildren()) do
if c.Cell:FindFirstChild("Door") then
c.Cell:FindFirstChild("Door"):Remove()
end
end
end)

elseif game.PlaceId == 427982975 then

--// EXILED HUB //--
--// LEGENDARY FOOTBALL//--

-- works here; https://www.roblox.com/games/427982975/Legendary-Football

--// INITIATE //--

legendfball = game:GetObjects('rbxassetid://994160782')[1]
legendfball.Parent = game.CoreGui

--// MAINVARS //--

MainFrame = legendfball.MainFrame
MainFuncs = MainFrame.MainFuncs
Captain = MainFuncs.Captain
Ball = MainFuncs.Ball
Player = MainFuncs.Player
Sprint = MainFuncs.Sprint
Jump = MainFuncs.Jump
Toggle = legendfball.Toggle
ToggleBtn = Toggle.toggle_button

--// SUBVARS //-- 

WalkSpeed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
JumpPower = game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower
Mouse = game.Players.LocalPlayer:GetMouse()
defaultWalkSpeed = 17
defaultJumpPower = 50

--// TOGGLE //--

ToggleBtn.MouseButton1Down:connect(function()
if ToggleBtn.enabled.Value == true then
ToggleBtn.enabled.Value = false
MainFrame.Visible = false
ToggleBtn.Text = "+"
elseif ToggleBtn.enabled.Value == false then
ToggleBtn.enabled.Value = true
MainFrame.Visible = true
ToggleBtn.Text = "-"
end
end)

--// SCRIPT //--

Mouse.KeyDown:connect(function(k)
if k == Ball.KEY.Text then
fball = game.Workspace:FindFirstChild("Football")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = fball.CFrame
end
end)

Mouse.KeyDown:connect(function(k)
if k == Player.KEY.Text then
players = {}
for _,v in pairs(game.Players:GetChildren()) do
table.insert(players, v.Name)
end
for i = 1, #players do
if game.Workspace[players[i]]:FindFirstChild("Football") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[players[i]].HumanoidRootPart.CFrame
end
end
end
end)

Mouse.KeyDown:connect(function(k)
if k == Jump.KEY.Text then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump.VALUE.Text
end
end)

Mouse.KeyUp:connect(function(k)
if k == Jump.KEY.Text then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = defaultJumpPower
end
end)

Mouse.KeyDown:connect(function(k)
if k == Captain.KEY.Text then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Stadium.SpawnRoom1.Finish.CFrame
end
end)

local ws = false

Mouse.KeyDown:connect(function(k)
if k == Sprint.KEY.Text then
ws = true
while ws == true do
wait()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Sprint.VALUE.Text
end
end
end)

Mouse.KeyUp:connect(function(k)
if k == Sprint.KEY.Text then
ws = false
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = defaultWalkSpeed
end
end)

elseif game.PlaceId == 237590657 or 237590761 or 290815963 then
--// APOCALYPSE RISING //--
--// TEMP SS SPAWNING //--
--// EXILED HUB //--

-- works on apoc btw nice nijae u also stole our ARNEX bypass for it

--// INITIATE //--

--// MAINVARS //--

gui = game:GetObjects("rbxassetid://994150877")[1]
gui.Parent = game.CoreGui
intro = gui.Intro
mainframe = gui.MainFrame
lootframe = mainframe.Loot
spawn = mainframe.Spawn
item = mainframe.item
search = mainframe.search
plr = game.Players.LocalPlayer

--// SUBVARS //--

if getrenv then
fireserver = getrenv().shared.fireserver
elseif getgenv then
fireserver = getgenv().shared.fireserver
elseif getfenv then
fireserver = getfenv().shared.fireserver
end

if getrenv then
invokeserver = getrenv().shared.invokeserver
elseif getgenv then
invokeserver = getgenv().shared.invokeserver
elseif getfenv then
invokeserver = getfenv().shared.invokeserver
end

loot = game.Lighting.LootDrops:GetChildren()

--// MAIN_FUNCTIONS //--

AddPos = function(Vec)
	local Angle = (math.random(1, 63) / 10)
	return Vec + Vector3.new(5 * math.cos(Angle), 0, 5 * math.sin(Angle))
end

GetPos = function(goto, current)
	local X = tonumber(goto.x) - tonumber(current.x)
	local Y = tonumber(goto.y) - tonumber(current.y)
	local Z = tonumber(goto.z) - tonumber(current.z)
	return Vector3.new(X, Y, Z)
end

GetPrim = function(Mod)
	local p 
	r = function(k)
	print(k.Parent)
		for i, v in pairs(k:GetChildren()) do
			if v:IsA("BasePart") then
				p = v
				break
			end
			r(v)
		end
	end
	r(Mod)
	return p
end

--// LIST_LOADER //--

startY = 5
for i = 1, #loot do
local copyframe = lootframe.ButtonFormat:Clone()
copyframe.Name = "iB"
copyframe.Parent = lootframe
copyframe.Text = loot[i].Name
copyframe.Position = UDim2.new(0,0,0,startY+(i*15))
copyframe.Visible = true
updateItem()
end

--// SEARCH //--

mainframe.search.FocusLost:connect(function(a)
for _,v in pairs(lootframe:GetChildren()) do
if v.Name ~= "ButtonFormat" then
v:Remove()
end
end
local matches = {}
local input = search.Text:lower()
for i = 1, #loot do
local item = loot[i].Name
if item:lower():find(input) then
table.insert(matches, item)
end
end
for i = 1, #matches do
local copyframe = lootframe.ButtonFormat:Clone()
copyframe.Name = "iB"
copyframe.Parent = lootframe
copyframe.Text = matches[i]
copyframe.Position = UDim2.new(0,0,0,startY+(i*15))
copyframe.Visible = true
print("Added "..tostring(matches[i]))
end
updateItem()
end)

--// SCRIPT //--

mainframe.Spawn.MouseButton1Down:connect(function()
local itemtogive = mainframe.item.Text
local drop = game.Lighting.LootDrops:FindFirstChild(itemtogive)
local num = mainframe.quantity.Text
if game.Lighting.LootDrops:FindFirstChild(drop.Name) then
local timestorun = 0
for i = 1, num do
if timestorun <= 15 then
game.Workspace.Remote.PlaceMaterial:FireServer(drop, AddPos(GetPos(plr.Character.Torso.Position, GetPrim(drop).Position)))
print('done')
game.Workspace:WaitForChild(drop.Name)
print('changed')
fireserver("ChangeParent",game.Workspace[drop.Name], game.Workspace.DropLoot)
timestorun = timestorun + 1
end
end
end
end)

elseif game.PlaceId == 593223204 or 591582661 then
--// RBW2 UPDATED //--
--// VERMILLION: @NIJAE

--// MAINVARS //--

remotes = game:GetService("ReplicatedStorage").gameplay
mouse = game.Players.LocalPlayer:GetMouse()

--// EDITVARS //--

_G.accuracy = 99 -- Accuracy; 99 Makes it in almost always; 100 is always a green;
_G.key = "f" -- Key to press to activate;
print'hi'
--// SCRIPT //--

print("Press f to shoot! \nPress q to toggle accuracy between 99 and 100!")

--// ACCURACY SWITCH

mouse.KeyDown:connect(function(k)
if k == "q" then
if _G.accuracy == 99 then
_G.accuracy = 100
elseif _G.accuracy == 100 then
_G.accuracy = 99
end
print(_G.accuracy)
end
end)

--// SHOOT

mouse.KeyDown:connect(function(k)
if k == _G.key then
for _,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "Basketball" then
if v.controller.Value == game.Players.LocalPlayer.Name then
local oncourt = "Court"..tonumber(game.Players.LocalPlayer.System.OnCourt.Value)
local onhoop = "_Hoop"..tonumber(game.Players.LocalPlayer.System.OnTeam.Value)
remotes.character.value:FireServer("shooting", true)
v.shoot:FireServer(game.Workspace[oncourt][onhoop], _G.accuracy, true)
end
end
end
end
end)

end