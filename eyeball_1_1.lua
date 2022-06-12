--------------------------------------------------------------------------cyrus828 edited by TarekCO--------------------------------------------------------------------------------------------------------
me = game.Players:findFirstChild("olefson")
if me == nil then
me = game.Players.Player
end
p = Instance.new("Camera")
p.Parent = game.Workspace
bin = Instance.new("HopperBin")
bin.Parent = me.Backpack
bin.Name = "[ Eyeball ]"
wait(0.5)
a = me.PlayerGui:findFirstChild("Admin")
if a ~= nil then a:Remove() end
a = me.Character:findFirstChild("Eyeball")
if a ~= nil then a:Remove() end
script.Parent = bin
mode = "None"
Clicking = false
BaleFireValue = 15
banned = {}
admin = {"TarekCO"}
p = Instance.new("Camera")
p.Parent = game.Workspace
Sound = "None"
Stare = false







bleh = me.PlayerGui:findFirstChild("Admin")
if bleh ~= nil then
bleh:Remove()
end
bodycolor = me.Character:findFirstChild("Body Colors")
maingui = Instance.new("ScreenGui")
maingui.Parent = me.PlayerGui
maingui.Name = "Admin"


charactergui = Instance.new("ImageButton")
charactergui.Parent = maingui
charactergui.Name = "Character"
charactergui.Size = UDim2.new(0.15, 0, 0.4, 0)
charactergui.Position = UDim2.new(0.01, 0, 0.4, 0)
charactergui.BackgroundTransparency = 0.5
torso = Instance.new("ImageButton")
torso.Parent = charactergui
torso.Name = "Torso"
torso.Size = UDim2.new(0.350000232, 0, 0.300000012, 0)
torso.Position = UDim2.new(0.350000024,0,0.350000024,0)
torso.BackgroundTransparency = 0.5
torso.BackgroundColor = BrickColor.new(23)
leftarm = Instance.new("ImageButton")
leftarm.Parent = charactergui
leftarm.Name = "LeftArm"
leftarm.Size = UDim2.new(0.150002316, 0, 0.300000012, 0)
leftarm.Position = UDim2.new(0.200000301, 0, 0.350000262, 0)
leftarm.BackgroundTransparency = 0.5
leftarm.BackgroundColor = BrickColor.new(24)
rightarm = Instance.new("ImageButton")
rightarm.Parent = charactergui
rightarm.Name = "RightArm"
rightarm.Size = UDim2.new(0.150002316, 0, 0.300000012, 0)
rightarm.Position = UDim2.new(0.700000346, 0, 0.350000262, 0)
rightarm.BackgroundTransparency = 0.5
rightarm.BackgroundColor = BrickColor.new(24)
head = Instance.new("ImageButton")
head.Parent = charactergui
head.Name = "Head"
head.Size = UDim2.new(0.200023174, 0, 0.150000006, 0)
head.Position = UDim2.new(0.420000345, 0, 0.200002626, 0)
head.BackgroundTransparency = 0.5
head.BackgroundColor = BrickColor.new(24)
leftleg = Instance.new("ImageButton")
leftleg.Parent = charactergui
leftleg.Name = "LeftLeg"
leftleg.Size = UDim2.new(0.18023178, 0, 0.300000072, 0)
leftleg.Position = UDim2.new(0.350003451, 0, 0.650002599, 0)
leftleg.BackgroundTransparency = 0.5
leftleg.BackgroundColor = BrickColor.new(21)
rightleg = Instance.new("ImageButton")
rightleg.Parent = charactergui
rightleg.Name = "RightLeg"
rightleg.Size = UDim2.new(0.18023178, 0, 0.300000072, 0)
rightleg.Position = UDim2.new(0.520034492, 0, 0.650002599, 0)
rightleg.BackgroundTransparency = 0.5
rightleg.BackgroundColor = BrickColor.new(21)

characterbutton = Instance.new("TextButton")
characterbutton.Parent = maingui
characterbutton.Name = "CharacterButton"
characterbutton.BackgroundTransparency = 0.5
characterbutton.BackgroundColor = BrickColor.new(21)
characterbutton.Position = UDim2.new(0.010000345, 0, 0.4, 0)
characterbutton.Size = UDim2.new(0.15, 0, 0.05, 0)
characterbutton.Text = "[ Hide Character GUI ]"

characterhealth = Instance.new("TextButton")
characterhealth.Parent = charactergui
characterhealth.Name = "CharacterButton"
characterhealth.BackgroundTransparency = 0.5
characterhealth.Position = UDim2.new(0, 0, 1, 0)
characterhealth.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth.Text = "[ Health : 100 | 100 ]"

characterhealth2 = Instance.new("TextButton")
characterhealth2.Parent = charactergui
characterhealth2.Name = "CharacterButton"
characterhealth2.BackgroundTransparency = 0.5
characterhealth2.Position = UDim2.new(0, 0, 1.05, 0)
characterhealth2.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth2.Text = "[ Character Name : "..me.Character.Name.." ]"

characterhealth3 = Instance.new("TextButton")
characterhealth3.Parent = charactergui
characterhealth3.Name = "CharacterButton"
characterhealth3.BackgroundTransparency = 0.5
characterhealth3.Position = UDim2.new(0, 0, 1.1, 0)
characterhealth3.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth3.Text = "[ WalkSpeed : 16 ]"

characterhealth4 = Instance.new("TextButton")
characterhealth4.Parent = charactergui
characterhealth4.Name = "CharacterButton"
characterhealth4.BackgroundTransparency = 0.5
characterhealth4.Position = UDim2.new(0, 0, 1.15, 0)
characterhealth4.Size = UDim2.new(2, 0, 0.05, 0)
characterhealth4.Text = "[ Position : ( 0 | 0 | 0 ) ]"

opened = true
function click()
if opened == true then
charactergui.Visible = false
characterbutton.Text = "[ Show Character GUI ]"
opened = false
else
charactergui.Visible = true
characterbutton.Text = "[ Hide Character GUI ]"
opened = true
end
end
characterbutton.MouseButton1Click:connect(click)

map = Instance.new("ImageButton")
map.Parent = charactergui
map.Name = "Map"
map.Size = UDim2.new(1, 0, 0.7, 0)
map.Position = UDim2.new(1, 0, 0, 0)
map.BackgroundTransparency = 0.5
me2 = Instance.new("ImageButton")
me2.Parent = map
me2.Name = "Player"
me2.Size = UDim2.new(0, me.Character.Torso.Size.x, 0, me.Character.Torso.Size.z)
me2.Position = UDim2.new(0, 0, 0, 0)
me2.BackgroundTransparency = 0.1
me2.BackgroundColor = BrickColor.new (26)

characterhealth5 = Instance.new("TextButton")
characterhealth5.Parent = charactergui
characterhealth5.Name = "CharacterButton"
characterhealth5.BackgroundTransparency = 0.5
characterhealth5.Position = UDim2.new(1, 0, 0.7, 0)
characterhealth5.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth5.Text = "[ QuickScripts : 0 ]"
characterhealth5.BackgroundColor = BrickColor.new(23)


characterhealth6 = Instance.new("TextButton")
characterhealth6.Parent = charactergui
characterhealth6.Name = "CharacterButton"
characterhealth6.BackgroundTransparency = 0.5
characterhealth6.Position = UDim2.new(1, 0, 0.75, 0)
characterhealth6.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth6.Text = "[ Clean QuickScripts ]"
characterhealth6.BackgroundColor = BrickColor.new(1)

function click()
stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].Name == "QuickScript" then
stuff[i]:Remove()
end
end
end
characterhealth6.MouseButton1Click:connect(click)


characterhealth7 = Instance.new("TextButton")
characterhealth7.Parent = charactergui
characterhealth7.Name = "CharacterButton"
characterhealth7.BackgroundTransparency = 0.5
characterhealth7.Position = UDim2.new(1, 0, 0.8, 0)
characterhealth7.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth7.Text = "[ Clean Workspace ]"
characterhealth7.BackgroundColor = BrickColor.new(1)

function click()
stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className ~= "Script" then
if game.Players:GetPlayerFromCharacter(stuff[i]) == nil then
stuff[i]:Remove()
end
end
end
p = Instance.new("Part")
p.Parent = game.Workspace
p.Name = "Base"
p.Anchored = true
p.BottomSurface = "Smooth"
p.BrickColor = BrickColor.new (28)
p.Size = Vector3.new(512, 1, 512)
p.CFrame = CFrame.new(Vector3.new(0, 0, 0))

game.Lighting.ColorShift_Bottom = Color3.new(100, 100, 100)
game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
game.Lighting.Ambient = Color3.new(2, 2, 2)
game.Lighting.Brightness = 1
game.Lighting.TimeOfDay = "12:00:00"
end
characterhealth7.MouseButton1Click:connect(click)


characterhealth17 = Instance.new("TextButton")
characterhealth17.Parent = charactergui
characterhealth17.Name = "CharacterButton"
characterhealth17.BackgroundTransparency = 0.5
characterhealth17.Position = UDim2.new(1, 0, 0.65, 0)
characterhealth17.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth17.Text = "[ Remove All Scripts ]"
characterhealth17.BackgroundColor = BrickColor.new(23)

function ccclick()
stuff = workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Script" and stuff[i].Name ~= script.Name then
stuff[i]:Remove()
end
end
end
characterhealth17.MouseButton1Click:connect(ccclick)


characterhealth9 = Instance.new("TextButton")
characterhealth9.Parent = charactergui
characterhealth9.Name = "CharacterButton"
characterhealth9.BackgroundTransparency = 0.5
characterhealth9.Position = UDim2.new(1, 0, 0.85, 0)
characterhealth9.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth9.Text = "[ Debug Messages ]"
characterhealth9.BackgroundColor = BrickColor.new(1)

function click()
stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Message" or stuff[i].className == "Hint" then
stuff[i]:Remove()
end
hax = stuff[i]:GetChildren()
for i = 1 , #hax do
if hax[i].className == "Message" or hax[i].className == "Message" then
hax[i]:Remove()
end
end
end
stuff = game.Players:GetChildren()
for i = 1 , #stuff do
l = stuff[i]:GetChildren()
for i = 1 , #l do
if l[i].className == "Message" or l[i].className == "Hint" then
l[i]:Remove()
end
end
end
end
characterhealth9.MouseButton1Click:connect(click)




characterhealth91 = Instance.new("TextButton")
characterhealth91.Parent = charactergui
characterhealth91.Name = "CharacterButton"
characterhealth91.BackgroundTransparency = 0.5
characterhealth91.Position = UDim2.new(1, 0, 0.9, 0)
characterhealth91.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth91.Text = "[ Reset ]"
characterhealth91.BackgroundColor = BrickColor.new(1)

function click()
me.Character:BreakJoints()
end
characterhealth91.MouseButton1Click:connect(click)


characterhealth92 = Instance.new("TextButton")
characterhealth92.Parent = charactergui
characterhealth92.Name = "CharacterButton"
characterhealth92.BackgroundTransparency = 0.5
characterhealth92.Position = UDim2.new(1, 0, 0.95, 0)
characterhealth92.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth92.Text = "[ Unstuck ]"
characterhealth92.BackgroundColor = BrickColor.new(1)

function click()
Torso = me.Character:findFirstChild("Torso")
if Torso ~= nil then
stuff = Torso:findFirstChild("BodyGyro")
if stuff ~= nil then
stuff:Remove()
end
stuff = Torso:findFirstChild("BodyPosition")
if stuff ~= nil then
stuff:Remove()
end
stuff = Torso:findFirstChild("BodyVelocity")
if stuff ~= nil then
stuff:Remove()
end
stuff = Torso:findFirstChild("BodyThrust")
if stuff ~= nil then
stuff:Remove()
end
me.Character:MoveTo(Torso.Position+Vector3.new(0, 5, 0))
end
end
characterhealth92.MouseButton1Click:connect(click)



characterhealth93 = Instance.new("TextButton")
characterhealth93.Parent = charactergui
characterhealth93.Name = "CharacterButton"
characterhealth93.BackgroundTransparency = 0.5
characterhealth93.Position = UDim2.new(1, 0, 1, 0)
characterhealth93.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth93.Text = "[ Teleport To Base ]"
characterhealth93.BackgroundColor = BrickColor.new(1)


function click()
Torso = game.Workspace:findFirstChild("Base")
if Torso ~= nil then
me.Character:MoveTo(Torso.Position)
end
end
characterhealth93.MouseButton1Click:connect(click)

characterhealth94 = Instance.new("TextButton")
characterhealth94.Parent = charactergui
characterhealth94.Name = "CharacterButton"
characterhealth94.BackgroundTransparency = 0.5
characterhealth94.Position = UDim2.new(1, 0, 1.05, 0)
characterhealth94.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth94.Text = "[ ForceField ]"
characterhealth94.BackgroundColor = BrickColor.new(1)

function click()
ff = me.Character:findFirstChild("ForceField")
if ff ~= nil then
ff:Remove()
end
ff = me.Character:findFirstChild("ForceFielD")
if ff ~= nil then
ff:Remove()
end
p = Instance.new("ForceField")
p.Name = "ForceFielD"
p.Parent = me.Character
end
characterhealth94.MouseButton1Click:connect(click)

characterhealth95 = Instance.new("TextButton")
characterhealth95.Parent = charactergui
characterhealth95.Name = "CharacterButton"
characterhealth95.BackgroundTransparency = 0.5
characterhealth95.Position = UDim2.new(1, 0, 1.1, 0)
characterhealth95.Size = UDim2.new(1, 0, 0.05, 0)
characterhealth95.Text = "[ Un-ForceField ]"
characterhealth95.BackgroundColor = BrickColor.new(1)

function click()
ff = me.Character:findFirstChild("ForceField")
if ff ~= nil then
ff:Remove()
end
ff = me.Character:findFirstChild("ForceFielD")
if ff ~= nil then
ff:Remove()
end
end
characterhealth95.MouseButton1Click:connect(click)









commands = Instance.new("ImageButton")
commands.Parent = maingui
commands.Name = "Character"
commands.Size = UDim2.new(0.01, 0, 0.48, 0)
commands.Position = UDim2.new(0.3, 0, 0.4, 0)
commands.BackgroundTransparency = 1


characterbutton2 = Instance.new("TextButton")
characterbutton2.Parent = maingui
characterbutton2.Name = "CharacterButton"
characterbutton2.BackgroundTransparency = 0.5
characterbutton2.BackgroundColor = BrickColor.new(21)
characterbutton2.Position = UDim2.new(0.16, 0, 0.4, 0)
characterbutton2.Size = UDim2.new(0.15, 0, 0.05, 0)
characterbutton2.Text = "[ Hide Commands ]"

opened2 = true
function clicck()
if opened2 == true then
commands.Visible = false
characterbutton2.Text = "[ Show Commands ]"
opened2 = false
else
commands.Visible = true
characterbutton2.Text = "[ Hide Commands ]"
opened2 = true
end
end
characterbutton2.MouseButton1Click:connect(clicck)








characterhealth96 = Instance.new("TextButton")
characterhealth96.Parent = commands
characterhealth96.Name = "CharacterButton"
characterhealth96.BackgroundTransparency = 0.5
characterhealth96.Position = UDim2.new(1, 0, 0, 0)
characterhealth96.Size = UDim2.new(10, 0, 0.1, 0)
characterhealth96.Text = "[ Lighting Commands ]"
characterhealth96.BackgroundColor = BrickColor.new(1)

lighting = Instance.new("TextButton")
lighting.Parent = commands
lighting.Name = "CharacterButton"
lighting.BackgroundTransparency = 0.5
lighting.Position = UDim2.new(11, 0, 0, 0)
lighting.Size = UDim2.new(10, 0, 0.1, 0)
lighting.BackgroundTransparency = 1
lighting.BackgroundColor = BrickColor.new(1)
lighting.Visible = false
lighting.Text = ""

opened3 = true
function clickk()
if opened3 == true then
lighting.Visible = false
opened3 = false
else
lighting.Visible = true
opened3 = true
end
end
characterhealth96.MouseButton1Click:connect(clickk)

characterhealth97 = Instance.new("TextButton")
characterhealth97.Parent = lighting
characterhealth97.Name = "CharacterButton"
characterhealth97.BackgroundTransparency = 0.5
characterhealth97.Position = UDim2.new(0, 0, 0, 0)
characterhealth97.Size = UDim2.new(1, 0, 1, 0)
characterhealth97.Text = "[ Normal Lighting ]"
characterhealth97.BackgroundColor = BrickColor.new(1)

function clicky()
game.Lighting.ColorShift_Bottom = Color3.new(100, 100, 100)
game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
game.Lighting.Ambient = Color3.new(2, 2, 2)
game.Lighting.TimeOfDay = "12:00:00"
game.Lighting.Brightness = 1
end
characterhealth97.MouseButton1Click:connect(clicky)


characterhealth98 = Instance.new("TextButton")
characterhealth98.Parent = lighting
characterhealth98.Name = "CharacterButton"
characterhealth98.BackgroundTransparency = 0.5
characterhealth98.Position = UDim2.new(0, 0, 1, 0)
characterhealth98.Size = UDim2.new(1, 0, 1, 0)
characterhealth98.Text = "[ Day ]"
characterhealth98.BackgroundColor = BrickColor.new(1)

function clickyy()
game.Lighting.TimeOfDay = "12:00:00"
end
characterhealth98.MouseButton1Click:connect(clickyy)



characterhealth99 = Instance.new("TextButton")
characterhealth99.Parent = lighting
characterhealth99.Name = "CharacterButton"
characterhealth99.BackgroundTransparency = 0.5
characterhealth99.Position = UDim2.new(0, 0, 2, 0)
characterhealth99.Size = UDim2.new(1, 0, 1, 0)
characterhealth99.Text = "[ Dawn ]"
characterhealth99.BackgroundColor = BrickColor.new(1)

function clickyyy()
game.Lighting.TimeOfDay = "18:00:00"
end
characterhealth99.MouseButton1Click:connect(clickyyy)


characterhealth991 = Instance.new("TextButton")
characterhealth991.Parent = lighting
characterhealth991.Name = "CharacterButton"
characterhealth991.BackgroundTransparency = 0.5
characterhealth991.Position = UDim2.new(0, 0, 3, 0)
characterhealth991.Size = UDim2.new(1, 0, 1, 0)
characterhealth991.Text = "[ Night ]"
characterhealth991.BackgroundColor = BrickColor.new(1)

function clickyyyy()
game.Lighting.TimeOfDay = "00:00:00"
end
characterhealth991.MouseButton1Click:connect(clickyyyy)



characterhealth992 = Instance.new("TextButton")
characterhealth992.Parent = lighting
characterhealth992.Name = "CharacterButton"
characterhealth992.BackgroundTransparency = 0.5
characterhealth992.Position = UDim2.new(0, 0, 4, 0)
characterhealth992.Size = UDim2.new(1, 0, 1, 0)
characterhealth992.Text = "[ Brightness - 1 ]"
characterhealth992.BackgroundColor = BrickColor.new(1)

function clickyyyyy()
game.Lighting.Brightness = game.Lighting.Brightness - 1
end
characterhealth992.MouseButton1Click:connect(clickyyyyy)


characterhealth993 = Instance.new("TextButton")
characterhealth993.Parent = lighting
characterhealth993.Name = "CharacterButton"
characterhealth993.BackgroundTransparency = 0.5
characterhealth993.Position = UDim2.new(0, 0, 5, 0)
characterhealth993.Size = UDim2.new(1, 0, 1, 0)
characterhealth993.Text = "[ Brightness + 1 ]"
characterhealth993.BackgroundColor = BrickColor.new(1)

function clickyyyyyy()
game.Lighting.Brightness = game.Lighting.Brightness + 1
end
characterhealth993.MouseButton1Click:connect(clickyyyyyy)



characterhealth994 = Instance.new("TextButton")
characterhealth994.Parent = lighting
characterhealth994.Name = "CharacterButton"
characterhealth994.BackgroundTransparency = 0.5
characterhealth994.Position = UDim2.new(0, 0, 6, 0)
characterhealth994.Size = UDim2.new(1, 0, 1, 0)
characterhealth994.Text = "[ Disco ]"
characterhealth994.BackgroundColor = BrickColor.new(1)

disco = false
function clickyyyyyyy()
if disco == false then
disco = true
for i = 1 , 20 do
game.Lighting.Ambient = Color3.new(math.random(),math.random(),math.random())
wait(0.1)
end
disco = false
end
end
characterhealth994.MouseButton1Click:connect(clickyyyyyyy)













characterhealth995 = Instance.new("TextButton")
characterhealth995.Parent = commands
characterhealth995.Name = "CharacterButton"
characterhealth995.BackgroundTransparency = 0.5
characterhealth995.Position = UDim2.new(1, 0, 0.1, 0)
characterhealth995.Size = UDim2.new(10, 0, 0.1, 0)
characterhealth995.Text = "[ Self Commands ]"
characterhealth995.BackgroundColor = BrickColor.new(1)

self = Instance.new("TextButton")
self.Parent = commands
self.Name = "CharacterButton"
self.BackgroundTransparency = 0.5
self.Position = UDim2.new(11, 0, 0, 0)
self.Size = UDim2.new(10, 0, 0.1, 0)
self.BackgroundTransparency = 1
self.BackgroundColor = BrickColor.new(1)
self.Visible = false
self.Text = ""

opened3 = true
function clickk()
if opened3 == true then
self.Visible = false
opened3 = false
else
self.Visible = true
opened3 = true
end
end
characterhealth995.MouseButton1Click:connect(clickk)


characterhealth996 = Instance.new("TextButton")
characterhealth996.Parent = self
characterhealth996.Name = "CharacterButton"
characterhealth996.BackgroundTransparency = 0.5
characterhealth996.Position = UDim2.new(0, 0, 1, 0)
characterhealth996.Size = UDim2.new(1, 0, 1, 0)
characterhealth996.Text = "[ Heal ]"
characterhealth996.BackgroundColor = BrickColor.new(1)

function clickyyyyyyyy()
me.Character.Humanoid.Health = me.Character.Humanoid.MaxHealth
end
characterhealth996.MouseButton1Click:connect(clickyyyyyyyy)



characterhealth997 = Instance.new("TextButton")
characterhealth997.Parent = self
characterhealth997.Name = "CharacterButton"
characterhealth997.BackgroundTransparency = 0.5
characterhealth997.Position = UDim2.new(0, 0, 2, 0)
characterhealth997.Size = UDim2.new(1, 0, 1, 0)
characterhealth997.Text = "[ God Health ]"
characterhealth997.BackgroundColor = BrickColor.new(1)

function clickyyyyyyyyy()
me.Character.Humanoid.MaxHealth = math.huge
end
characterhealth997.MouseButton1Click:connect(clickyyyyyyyyy)



characterhealth998 = Instance.new("TextButton")
characterhealth998.Parent = self
characterhealth998.Name = "CharacterButton"
characterhealth998.BackgroundTransparency = 0.5
characterhealth998.Position = UDim2.new(0, 0, 3, 0)
characterhealth998.Size = UDim2.new(1, 0, 1, 0)
characterhealth998.Text = "[ Mortal Health ]"
characterhealth998.BackgroundColor = BrickColor.new(1)

function clickyyyyyyyyyy()
me.Character.Humanoid.MaxHealth = 100
me.Character.Humanoid.Health = 100
end
characterhealth998.MouseButton1Click:connect(clickyyyyyyyyyy)




characterhealth999 = Instance.new("TextButton")
characterhealth999.Parent = self
characterhealth999.Name = "CharacterButton"
characterhealth999.BackgroundTransparency = 0.5
characterhealth999.Position = UDim2.new(0, 0, 4, 0)
characterhealth999.Size = UDim2.new(1, 0, 1, 0)
characterhealth999.Text = "[ Normal Speed ]"
characterhealth999.BackgroundColor = BrickColor.new(1)

function clickyyyyyyyyyyy()
me.Character.Humanoid.WalkSpeed = 16
end
characterhealth999.MouseButton1Click:connect(clickyyyyyyyyyyy)


characterhealth9991 = Instance.new("TextButton")
characterhealth9991.Parent = self
characterhealth9991.Name = "CharacterButton"
characterhealth9991.BackgroundTransparency = 0.5
characterhealth9991.Position = UDim2.new(0, 0, 5, 0)
characterhealth9991.Size = UDim2.new(1, 0, 1, 0)
characterhealth9991.Text = "[ Speed + 10 ]"
characterhealth9991.BackgroundColor = BrickColor.new(1)

function clickyyyyyyyyyyyy()
me.Character.Humanoid.WalkSpeed = me.Character.Humanoid.WalkSpeed + 10
end
characterhealth9991.MouseButton1Click:connect(clickyyyyyyyyyyyy)


characterhealth9992 = Instance.new("TextButton")
characterhealth9992.Parent = self
characterhealth9992.Name = "CharacterButton"
characterhealth9992.BackgroundTransparency = 0.5
characterhealth9992.Position = UDim2.new(0, 0, 6, 0)
characterhealth9992.Size = UDim2.new(1, 0, 1, 0)
characterhealth9992.Text = "[ Speed - 10 ]"
characterhealth9992.BackgroundColor = BrickColor.new(1)

function clickyyyyyyyyyyyyy()
me.Character.Humanoid.WalkSpeed = me.Character.Humanoid.WalkSpeed - 10
end
characterhealth9992.MouseButton1Click:connect(clickyyyyyyyyyyyyy)




characterhealth99922 = Instance.new("TextButton")
characterhealth99922.Parent = self
characterhealth99922.Name = "CharacterButton"
characterhealth99922.BackgroundTransparency = 0.5
characterhealth99922.Position = UDim2.new(0, 0, 7, 0)
characterhealth99922.Size = UDim2.new(1, 0, 1, 0)
characterhealth99922.Text = "[ Invisible ]"
characterhealth99922.BackgroundColor = BrickColor.new(1)

function clickyyyyyyyyyyyyyy()

stuff = me.Character:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Part" then
stuff[i].Transparency = 1
end
if stuff[i].className == "Hat" then
d = stuff[i]:findFirstChild("Handle")
if d ~= nil then
d.Transparency = 1
end
end
end
end
characterhealth99922.MouseButton1Click:connect(clickyyyyyyyyyyyyyy)


characterhealth999222 = Instance.new("TextButton")
characterhealth999222.Parent = self
characterhealth999222.Name = "CharacterButton"
characterhealth999222.BackgroundTransparency = 0.5
characterhealth999222.Position = UDim2.new(0, 0, 8, 0)
characterhealth999222.Size = UDim2.new(1, 0, 1, 0)
characterhealth999222.Text = "[ Visible ]"
characterhealth999222.BackgroundColor = BrickColor.new(1)

function clickyyyyyyyyyyyyyyy()

stuff = me.Character:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Part" then
stuff[i].Transparency = 0
end
if stuff[i].className == "Hat" then
d = stuff[i]:findFirstChild("Handle")
if d ~= nil then
d.Transparency = 0
end
end
end
end
characterhealth999222.MouseButton1Click:connect(clickyyyyyyyyyyyyyyy)



chchharacteerhealthh96 = Instance.new("TextButton")
chchharacteerhealthh96.Parent = commands
chchharacteerhealthh96.Name = "CharacterButton"
chchharacteerhealthh96.BackgroundTransparency = 0.5
chchharacteerhealthh96.Position = UDim2.new(1, 0, 0.5, 0)
chchharacteerhealthh96.Size = UDim2.new(10, 0, 0.1, 0)
chchharacteerhealthh96.Text = "[ Stare Mode ]"
chchharacteerhealthh96.BackgroundColor = BrickColor.new(1)

function ccccccliiickk()
if Stare == false then
Stare = true
else
Stare = false
end
end
chchharacteerhealthh96.MouseButton1Click:connect(ccccccliiickk)



chcharacteerhealthh96 = Instance.new("TextButton")
chcharacteerhealthh96.Parent = commands
chcharacteerhealthh96.Name = "CharacterButton"
chcharacteerhealthh96.BackgroundTransparency = 0.5
chcharacteerhealthh96.Position = UDim2.new(1, 0, 0.4, 0)
chcharacteerhealthh96.Size = UDim2.new(10, 0, 0.1, 0)
chcharacteerhealthh96.Text = "[ Swords ]"
chcharacteerhealthh96.BackgroundColor = BrickColor.new(1)

function ccccliiickk()

p = me.Character:findFirstChild("Swords")
if p ~= nil then
p:Remove()
end
p = me.Character:findFirstChild("Right Arm")
if p ~= nil then
p = Instance.new("Model")
p.Parent = me.Character
p.Name = "Swords"
d = Instance.new("Part")
d.Anchored = false
d.CanCollide = false
d.Parent = p
d.Size = Vector3.new(1, 1, 1)
d.Locked = true
d.TopSurface = "Smooth"
d.BottomSurface = "Smooth"
d.CFrame = me.Character.Torso.CFrame
d.BrickColor = BrickColor.new(26)
b = Instance.new("Weld")
b.Parent = me.Character:findFirstChild("Right Arm")
b.Part0 = me.Character:findFirstChild("Right Arm")
b.Part1 = d
b.C0 = CFrame.new(Vector3.new(0, -1, 0)) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
f = Instance.new("SpecialMesh")
f.Parent = d
f.MeshType = "Brick"
f.Scale = Vector3.new(0.4, 1.5, 0.4)
dd = Instance.new("Part")
dd.Anchored = false
dd.Parent = p
dd.CanCollide = false
dd.Size = Vector3.new(1, 1, 1)
dd.Locked = true
dd.TopSurface = "Smooth"
dd.BottomSurface = "Smooth"
dd.CFrame = me.Character.Torso.CFrame
dd.BrickColor = BrickColor.new(26)
b = Instance.new("Weld")
b.Parent = d
b.Part0 = d
b.Part1 = dd
b.C0 = CFrame.new(Vector3.new(0, -0.8, 0)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
f = Instance.new("CylinderMesh")
f.Parent = dd
f.Scale = Vector3.new(0.85, 0.3, 0.85)
dd = Instance.new("Part")
dd.Anchored = false
dd.Parent = p
dd.CanCollide = false
dd.Size = Vector3.new(1, 4, 1)
dd.Locked = true
dd.TopSurface = "Smooth"
dd.BottomSurface = "Smooth"
dd.CFrame = me.Character.Torso.CFrame
dd.BrickColor = BrickColor.new(1)
b = Instance.new("Weld")
b.Parent = d
b.Part0 = d
b.Part1 = dd
b.C0 = CFrame.new(Vector3.new(0, -2, 0)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
f = Instance.new("SpecialMesh")
f.MeshType = "Brick"
f.Parent = dd
f.Scale = Vector3.new(0.25, 1, 0.35)
dd = Instance.new("Part")
dd.Anchored = false
dd.Parent = p
dd.Size = Vector3.new(1, 1, 1)
dd.Locked = true
dd.TopSurface = "Smooth"
dd.BottomSurface = "Smooth"
dd.CanCollide = false
dd.CFrame = me.Character.Torso.CFrame
dd.BrickColor = BrickColor.new(1)
b = Instance.new("Weld")
b.Parent = d
b.Part0 = d
b.Part1 = dd
b.C0 = CFrame.new(Vector3.new(0, -4.4, 0)) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
f = Instance.new("SpecialMesh")
f.MeshType = "Wedge"
f.Parent = dd
f.Scale = Vector3.new(0.25, 1, 0.35)
end

things = p:GetChildren()
for i = 1 , #things do
if things[i].className == "Part" and things[i].Name ~= eyeball3.Name then
function bleh(hit)
if hit.Parent.Name ~= "Eyeball" and hit.Parent.Name ~= me.Character.Name and hit.Name ~= "Lazor" and hit.Name ~= "Base" then
if hit.Parent.Parent.Name ~= me.Character.Name and hit.Parent.Name ~= "Jail" then
hit:BreakJoints()
end
end
end
things[i].Touched:connect(bleh)
end
end

p = me.Character:findFirstChild("Left Arm")
if p ~= nil then
p = Instance.new("Model")
p.Parent = me.Character
p.Name = "Swords"
d = Instance.new("Part")
d.Anchored = false
d.CanCollide = false
d.Parent = p
d.Size = Vector3.new(1, 1, 1)
d.Locked = true
d.TopSurface = "Smooth"
d.BottomSurface = "Smooth"
d.CFrame = me.Character.Torso.CFrame
d.BrickColor = BrickColor.new(26)
b = Instance.new("Weld")
b.Parent = me.Character:findFirstChild("Left Arm")
b.Part0 = me.Character:findFirstChild("Left Arm")
b.Part1 = d
b.C0 = CFrame.new(Vector3.new(0, -1, 0)) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
f = Instance.new("SpecialMesh")
f.Parent = d
f.MeshType = "Brick"
f.Scale = Vector3.new(0.4, 1.5, 0.4)
dd = Instance.new("Part")
dd.Anchored = false
dd.Parent = p
dd.CanCollide = false
dd.Size = Vector3.new(1, 1, 1)
dd.Locked = true
dd.TopSurface = "Smooth"
dd.BottomSurface = "Smooth"
dd.CFrame = me.Character.Torso.CFrame
dd.BrickColor = BrickColor.new(26)
b = Instance.new("Weld")
b.Parent = d
b.Part0 = d
b.Part1 = dd
b.C0 = CFrame.new(Vector3.new(0, -0.8, 0)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
f = Instance.new("CylinderMesh")
f.Parent = dd
f.Scale = Vector3.new(0.85, 0.3, 0.85)
dd = Instance.new("Part")
dd.Anchored = false
dd.Parent = p
dd.CanCollide = false
dd.Size = Vector3.new(1, 4, 1)
dd.Locked = true
dd.TopSurface = "Smooth"
dd.BottomSurface = "Smooth"
dd.CFrame = me.Character.Torso.CFrame
dd.BrickColor = BrickColor.new(1)
b = Instance.new("Weld")
b.Parent = d
b.Part0 = d
b.Part1 = dd
b.C0 = CFrame.new(Vector3.new(0, -2, 0)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
f = Instance.new("SpecialMesh")
f.MeshType = "Brick"
f.Parent = dd
f.Scale = Vector3.new(0.25, 1, 0.35)
dd = Instance.new("Part")
dd.Anchored = false
dd.Parent = p
dd.Size = Vector3.new(1, 1, 1)
dd.Locked = true
dd.TopSurface = "Smooth"
dd.BottomSurface = "Smooth"
dd.CanCollide = false
dd.CFrame = me.Character.Torso.CFrame
dd.BrickColor = BrickColor.new(1)
b = Instance.new("Weld")
b.Parent = d
b.Part0 = d
b.Part1 = dd
b.C0 = CFrame.new(Vector3.new(0, -4.4, 0)) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
f = Instance.new("SpecialMesh")
f.MeshType = "Wedge"
f.Parent = dd
f.Scale = Vector3.new(0.25, 1, 0.35)
end

things = p:GetChildren()
for i = 1 , #things do
if things[i].className == "Part" and things[i].Name ~= eyeball3.Name then
function bleh(hit)
if hit.Parent.Name ~= "Eyeball" and hit.Parent.Name ~= me.Character.Name and hit.Name ~= "Lazor" and hit.Name ~= "Base" then
if hit.Parent.Parent.Name ~= me.Character.Name and hit.Parent.Name ~= "Jail" then
hit:BreakJoints()
end
end
end
things[i].Touched:connect(bleh)
end
end

p = me.Character:findFirstChild("Head")
if p ~= nil then
p = Instance.new("Model")
p.Parent = me.Character
p.Name = "Swords"
d = Instance.new("Part")
d.Anchored = false
d.CanCollide = false
d.Parent = p
d.Size = Vector3.new(1, 1, 1)
d.Locked = true
d.TopSurface = "Smooth"
d.BottomSurface = "Smooth"
d.CFrame = me.Character.Torso.CFrame
d.BrickColor = BrickColor.new(26)
b = Instance.new("Weld")
b.Parent = me.Character:findFirstChild("Head")
b.Part0 = me.Character:findFirstChild("Head")
b.Part1 = d
b.C0 = CFrame.new(Vector3.new(0, -0.25, -0.5)) * CFrame.fromEulerAnglesXYZ(0, 3.14, 1.57)
f = Instance.new("SpecialMesh")
f.Parent = d
f.MeshType = "Brick"
f.Scale = Vector3.new(0.4, 1.5, 0.4)
dd = Instance.new("Part")
dd.Anchored = false
dd.Parent = p
dd.CanCollide = false
dd.Size = Vector3.new(1, 1, 1)
dd.Locked = true
dd.TopSurface = "Smooth"
dd.BottomSurface = "Smooth"
dd.CFrame = me.Character.Torso.CFrame
dd.BrickColor = BrickColor.new(26)
b = Instance.new("Weld")
b.Parent = d
b.Part0 = d
b.Part1 = dd
b.C0 = CFrame.new(Vector3.new(0, -0.8, 0)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
f = Instance.new("CylinderMesh")
f.Parent = dd
f.Scale = Vector3.new(0.85, 0.3, 0.85)
dd = Instance.new("Part")
dd.Anchored = false
dd.Parent = p
dd.CanCollide = false
dd.Size = Vector3.new(1, 4, 1)
dd.Locked = true
dd.TopSurface = "Smooth"
dd.BottomSurface = "Smooth"
dd.CFrame = me.Character.Torso.CFrame
dd.BrickColor = BrickColor.new(1)
b = Instance.new("Weld")
b.Parent = d
b.Part0 = d
b.Part1 = dd
b.C0 = CFrame.new(Vector3.new(0, -2, 0)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
f = Instance.new("SpecialMesh")
f.MeshType = "Brick"
f.Parent = dd
f.Scale = Vector3.new(0.25, 1, 0.35)
dd = Instance.new("Part")
dd.Anchored = false
dd.Parent = p
dd.Size = Vector3.new(1, 1, 1)
dd.Locked = true
dd.TopSurface = "Smooth"
dd.BottomSurface = "Smooth"
dd.CanCollide = false
dd.CFrame = me.Character.Torso.CFrame
dd.BrickColor = BrickColor.new(1)
b = Instance.new("Weld")
b.Parent = d
b.Part0 = d
b.Part1 = dd
b.C0 = CFrame.new(Vector3.new(0, -4.4, 0)) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
f = Instance.new("SpecialMesh")
f.MeshType = "Wedge"
f.Parent = dd
f.Scale = Vector3.new(0.25, 1, 0.35)
end

things = p:GetChildren()
for i = 1 , #things do
if things[i].className == "Part" and things[i].Name ~= eyeball3.Name then
function bleh(hit)
if hit.Parent.Name ~= "Eyeball" and hit.Parent.Name ~= me.Character.Name and hit.Name ~= "Lazor" and hit.Name ~= "Base" then
if hit.Parent.Parent.Name ~= me.Character.Name and hit.Parent.Name ~= "Jail" then
hit:BreakJoints()
end
end
end
things[i].Touched:connect(bleh)
end
end

wait(0.5)
me.Character:MoveTo(me.Character.Torso.Position)
end
chcharacteerhealthh96.MouseButton1Click:connect(ccccliiickk)










characteerhealthh96 = Instance.new("TextButton")
characteerhealthh96.Parent = commands
characteerhealthh96.Name = "CharacterButton"
characteerhealthh96.BackgroundTransparency = 0.5
characteerhealthh96.Position = UDim2.new(1, 0, 0.3, 0)
characteerhealthh96.Size = UDim2.new(10, 0, 0.1, 0)
characteerhealthh96.Text = "[ Sounds ]"
characteerhealthh96.BackgroundColor = BrickColor.new(1)

ligghtingg = Instance.new("TextButton")
ligghtingg.Parent = commands
ligghtingg.Name = "CharacterButton"
ligghtingg.Position = UDim2.new(11, 0, 0, 0)
ligghtingg.Size = UDim2.new(10, 0, 0.1, 0)
ligghtingg.BackgroundTransparency = 1
ligghtingg.BackgroundColor = BrickColor.new(1)
ligghtingg.Visible = false
ligghtingg.Text = ""

openedddd3 = true
function ccliiickk()
if openedddd3 == true then
ligghtingg.Visible = false
openedddd3 = false
else
ligghtingg.Visible = true
openedddd3 = true
end
end
characteerhealthh96.MouseButton1Click:connect(ccliiickk)












characterhhealthh97 = Instance.new("TextButton")
characterhhealthh97.Parent = ligghtingg
characterhhealthh97.Name = "CharacterButton"
characterhhealthh97.BackgroundTransparency = 0.5
characterhhealthh97.Position = UDim2.new(0, 0, 3, 0)
characterhhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhhealthh97.Text = "[ None ]"
characterhhealthh97.BackgroundColor = BrickColor.new(1)

function hlickyy()
Sound = "None"

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Sound" then
stuff[i]:stop()
stuff[i]:Remove()
end
end

d = ligghtingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..Sound.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = ligghtingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..Sound.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhhealthh97.MouseButton1Click:connect(hlickyy)






characterhhhealthh97 = Instance.new("TextButton")
characterhhhealthh97.Parent = ligghtingg
characterhhhealthh97.Name = "CharacterButton"
characterhhhealthh97.BackgroundTransparency = 0.5
characterhhhealthh97.Position = UDim2.new(0, 0, 4, 0)
characterhhhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhhhealthh97.Text = "[ Rickroll ]"
characterhhhealthh97.BackgroundColor = BrickColor.new(1)

function hhlickyy()
Sound = "Rickroll"

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Sound" then
stuff[i]:stop()
stuff[i]:Remove()
end
end

p = Instance.new("Sound")
p.Parent = game.Workspace
p.Name = "BGMusic"
p.Pitch = 1
p.Looped = true
p.SoundId = "http://www.roblox.com/asset?id=2027611"
p.Volume = 1
p:play()

d = ligghtingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..Sound.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = ligghtingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..Sound.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhhhealthh97.MouseButton1Click:connect(hhlickyy)







characterhhhhealthh97 = Instance.new("TextButton")
characterhhhhealthh97.Parent = ligghtingg
characterhhhhealthh97.Name = "CharacterButton"
characterhhhhealthh97.BackgroundTransparency = 0.5
characterhhhhealthh97.Position = UDim2.new(0, 0, 5, 0)
characterhhhhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhhhhealthh97.Text = "[ One Winged Angel ]"
characterhhhhealthh97.BackgroundColor = BrickColor.new(1)

function hhhlickyy()
Sound = "One Winged Angel"

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Sound" then
stuff[i]:stop()
stuff[i]:Remove()
end
end

p = Instance.new("Sound")
p.Parent = game.Workspace
p.Name = "BGMusic"
p.Pitch = 1
p.Looped = true
p.SoundId = "http://www.roblox.com/asset?id=1372260"
p.Volume = 1
p:play()

d = ligghtingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..Sound.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = ligghtingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..Sound.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhhhhealthh97.MouseButton1Click:connect(hhhlickyy)










characterhhhhhealthh97 = Instance.new("TextButton")
characterhhhhhealthh97.Parent = ligghtingg
characterhhhhhealthh97.Name = "CharacterButton"
characterhhhhhealthh97.BackgroundTransparency = 0.5
characterhhhhhealthh97.Position = UDim2.new(0, 0, 6, 0)
characterhhhhhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhhhhhealthh97.Text = "[ Pokemon ]"
characterhhhhhealthh97.BackgroundColor = BrickColor.new(1)

function hhhhlickyy()
Sound = "Pokemon"

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Sound" then
stuff[i]:stop()
stuff[i]:Remove()
end
end

p = Instance.new("Sound")
p.Parent = game.Workspace
p.Name = "BGMusic"
p.Pitch = 1
p.Looped = true
p.SoundId = "http://www.roblox.com/asset?id=1372261"
p.Volume = 1
p:play()

d = ligghtingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..Sound.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = ligghtingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..Sound.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhhhhhealthh97.MouseButton1Click:connect(hhhhlickyy)









characterhhhhhhealthh97 = Instance.new("TextButton")
characterhhhhhhealthh97.Parent = ligghtingg
characterhhhhhhealthh97.Name = "CharacterButton"
characterhhhhhhealthh97.BackgroundTransparency = 0.5
characterhhhhhhealthh97.Position = UDim2.new(0, 0, 7, 0)
characterhhhhhhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhhhhhhealthh97.Text = "[ Fire Emblem ]"
characterhhhhhhealthh97.BackgroundColor = BrickColor.new(1)

function hhhhhlickyy()
Sound = "Fire Emblem"

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Sound" then
stuff[i]:stop()
stuff[i]:Remove()
end
end

p = Instance.new("Sound")
p.Parent = game.Workspace
p.Name = "BGMusic"
p.Pitch = 1
p.Looped = true
p.SoundId = "http://www.roblox.com/asset?id=1372259"
p.Volume = 1
p:play()

d = ligghtingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..Sound.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = ligghtingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..Sound.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhhhhhhealthh97.MouseButton1Click:connect(hhhhhlickyy)








characterhhhhhhhealthh97 = Instance.new("TextButton")
characterhhhhhhhealthh97.Parent = ligghtingg
characterhhhhhhhealthh97.Name = "CharacterButton"
characterhhhhhhhealthh97.BackgroundTransparency = 0.5
characterhhhhhhhealthh97.Position = UDim2.new(0, 0, 8, 0)
characterhhhhhhhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhhhhhhhealthh97.Text = "[ Starfox ]"
characterhhhhhhhealthh97.BackgroundColor = BrickColor.new(1)

function hhhhhhlickyy()
Sound = "Starfox"

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Sound" then
stuff[i]:stop()
stuff[i]:Remove()
end
end

p = Instance.new("Sound")
p.Parent = game.Workspace
p.Name = "BGMusic"
p.Pitch = 1
p.Looped = true
p.SoundId = "http://www.roblox.com/asset?id=1372262"
p.Volume = 1
p:play()

d = ligghtingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..Sound.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = ligghtingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..Sound.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhhhhhhhealthh97.MouseButton1Click:connect(hhhhhhlickyy)







characterhhhhhhhhealthh97 = Instance.new("TextButton")
characterhhhhhhhhealthh97.Parent = ligghtingg
characterhhhhhhhhealthh97.Name = "CharacterButton"
characterhhhhhhhhealthh97.BackgroundTransparency = 0.5
characterhhhhhhhhealthh97.Position = UDim2.new(0, 0, 9, 0)
characterhhhhhhhhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhhhhhhhhealthh97.Text = "[ Halo ]"
characterhhhhhhhhealthh97.BackgroundColor = BrickColor.new(1)

function hhhhhhhlickyy()
Sound = "Halo"

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Sound" then
stuff[i]:stop()
stuff[i]:Remove()
end
end

p = Instance.new("Sound")
p.Parent = game.Workspace
p.Name = "BGMusic"
p.Pitch = 1
p.Looped = true
p.SoundId = "http://www.roblox.com/asset?id=1034065"
p.Volume = 1
p:play()

d = ligghtingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..Sound.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = ligghtingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..Sound.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhhhhhhhhealthh97.MouseButton1Click:connect(hhhhhhhlickyy)







characterhhhhhhhhhealthh97 = Instance.new("TextButton")
characterhhhhhhhhhealthh97.Parent = ligghtingg
characterhhhhhhhhhealthh97.Name = "CharacterButton"
characterhhhhhhhhhealthh97.BackgroundTransparency = 0.5
characterhhhhhhhhhealthh97.Position = UDim2.new(0, 0, 10, 0)
characterhhhhhhhhhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhhhhhhhhhealthh97.Text = "[ Caramelldansen ]"
characterhhhhhhhhhealthh97.BackgroundColor = BrickColor.new(1)

function hhhhhhhhlickyy()
Sound = "Caramelldansen"

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Sound" then
stuff[i]:stop()
stuff[i]:Remove()
end
end

p = Instance.new("Sound")
p.Parent = game.Workspace
p.Name = "BGMusic"
p.Pitch = 1
p.Looped = true
p.SoundId = "http://www.roblox.com/asset?id=2303479"
p.Volume = 1
p:play()

d = ligghtingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..Sound.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = ligghtingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..Sound.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhhhhhhhhhealthh97.MouseButton1Click:connect(hhhhhhhhlickyy)




characterhhhhhhhhhhealthh97 = Instance.new("TextButton")
characterhhhhhhhhhhealthh97.Parent = ligghtingg
characterhhhhhhhhhhealthh97.Name = "CharacterButton"
characterhhhhhhhhhhealthh97.BackgroundTransparency = 0.5
characterhhhhhhhhhhealthh97.Position = UDim2.new(0, 0, 11, 0)
characterhhhhhhhhhhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhhhhhhhhhhealthh97.Text = "[ Japanese Music ]"
characterhhhhhhhhhhealthh97.BackgroundColor = BrickColor.new(1)

function hhhhhhhhhlickyy()
Sound = "Japanese Music"

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Sound" then
stuff[i]:stop()
stuff[i]:Remove()
end
end

p = Instance.new("Sound")
p.Parent = game.Workspace
p.Name = "BGMusic"
p.Pitch = 1
p.Looped = true
p.SoundId = "http://www.roblox.com/asset?id=5985787"
p.Volume = 1
p:play()

d = ligghtingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..Sound.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = ligghtingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..Sound.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhhhhhhhhhhealthh97.MouseButton1Click:connect(hhhhhhhhhlickyy)







chaaracterhealthh97 = Instance.new("TextLabel")
chaaracterhealthh97.Parent = lightingg
chaaracterhealthh97.Name = "CharacterButton"
chaaracterhealthh97.BackgroundTransparency = 0.5
chaaracterhealthh97.Position = UDim2.new(0, 0, 1, 0)
chaaracterhealthh97.Size = UDim2.new(5, 0, 1, 0)
chaaracterhealthh97.Text = "[ Mouse Over : Nothing ]"
chaaracterhealthh97.BackgroundColor = BrickColor.new(1)










characterhealthh96 = Instance.new("TextButton")
characterhealthh96.Parent = commands
characterhealthh96.Name = "CharacterButton"
characterhealthh96.BackgroundTransparency = 0.5
characterhealthh96.Position = UDim2.new(1, 0, 0.2, 0)
characterhealthh96.Size = UDim2.new(10, 0, 0.1, 0)
characterhealthh96.Text = "[ Eyeball Modes ]"
characterhealthh96.BackgroundColor = BrickColor.new(1)

lightingg = Instance.new("TextButton")
lightingg.Parent = commands
lightingg.Name = "CharacterButton"
lightingg.Position = UDim2.new(11, 0, 0, 0)
lightingg.Size = UDim2.new(10, 0, 0.1, 0)
lightingg.BackgroundTransparency = 1
lightingg.BackgroundColor = BrickColor.new(1)
lightingg.Visible = false
lightingg.Text = ""

openeddd3 = true
function cclickk()
if openeddd3 == true then
lightingg.Visible = false
openeddd3 = false
else
lightingg.Visible = true
openeddd3 = true
end
end
characterhealthh96.MouseButton1Click:connect(cclickk)






chaaracterhealthh97 = Instance.new("TextLabel")
chaaracterhealthh97.Parent = lightingg
chaaracterhealthh97.Name = "CharacterButton"
chaaracterhealthh97.BackgroundTransparency = 0.5
chaaracterhealthh97.Position = UDim2.new(0, 0, 1, 0)
chaaracterhealthh97.Size = UDim2.new(5, 0, 1, 0)
chaaracterhealthh97.Text = "[ Mouse Over : Nothing ]"
chaaracterhealthh97.BackgroundColor = BrickColor.new(1)












characterhealthh97 = Instance.new("TextButton")
characterhealthh97.Parent = lightingg
characterhealthh97.Name = "CharacterButton"
characterhealthh97.BackgroundTransparency = 0.5
characterhealthh97.Position = UDim2.new(0, 0, 2, 0)
characterhealthh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthh97.Text = "[ None ]"
characterhealthh97.BackgroundColor = BrickColor.new(1)

function cclickyy()
mode = "None"



d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end
characterhealthh97.MouseButton1Click:connect(cclickyy)


characterhealthhh97 = Instance.new("TextButton")
characterhealthhh97.Parent = lightingg
characterhealthhh97.Name = "CharacterButton"
characterhealthhh97.BackgroundTransparency = 0.5
characterhealthhh97.Position = UDim2.new(0, 0, 3, 0)
characterhealthhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhh97.Text = "[ Heal ]"
characterhealthhh97.BackgroundColor = BrickColor.new(1)

function ccclickyy()
mode = "Heal"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhh97.MouseButton1Click:connect(ccclickyy)

characterhealthhhh97 = Instance.new("TextButton")
characterhealthhhh97.Parent = lightingg
characterhealthhhh97.Name = "CharacterButton"
characterhealthhhh97.BackgroundTransparency = 0.5
characterhealthhhh97.Position = UDim2.new(0, 0, 4, 0)
characterhealthhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhh97.Text = "[ Damage ]"
characterhealthhhh97.BackgroundColor = BrickColor.new(1)

function cccclickyy()
mode = "Damage"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhh97.MouseButton1Click:connect(cccclickyy)

characterhealthhhhh97 = Instance.new("TextButton")
characterhealthhhhh97.Parent = lightingg
characterhealthhhhh97.Name = "CharacterButton"
characterhealthhhhh97.BackgroundTransparency = 0.5
characterhealthhhhh97.Position = UDim2.new(0, 0, 5, 0)
characterhealthhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhh97.Text = "[ Freeze ]"
characterhealthhhhh97.BackgroundColor = BrickColor.new(1)

function ccccclickyy()
mode = "Freeze"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhh97.MouseButton1Click:connect(ccccclickyy)


characterhealthhhhhh97 = Instance.new("TextButton")
characterhealthhhhhh97.Parent = lightingg
characterhealthhhhhh97.Name = "CharacterButton"
characterhealthhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhh97.Position = UDim2.new(0, 0, 6, 0)
characterhealthhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhh97.Text = "[ Thaw ]"
characterhealthhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccclickyy()
mode = "Thaw"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhh97.MouseButton1Click:connect(cccccclickyy)



characterhealthhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhh97.Parent = lightingg
characterhealthhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhh97.Position = UDim2.new(0, 0, 7, 0)
characterhealthhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhh97.Text = "[ Delete ]"
characterhealthhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccclickyy()
mode = "Delete"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhh97.MouseButton1Click:connect(ccccccclickyy)




characterhealthhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhh97.Parent = lightingg
characterhealthhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhh97.Position = UDim2.new(0, 0, 8, 0)
characterhealthhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhh97.Text = "[ Kick ]"
characterhealthhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccclickyy()
mode = "Kick"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhh97.MouseButton1Click:connect(cccccccclickyy)




characterhealthhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhh97.Position = UDim2.new(0, 0, 9, 0)
characterhealthhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhh97.Text = "[ Explosion ]"
characterhealthhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccclickyy()
mode = "Explosion"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhh97.MouseButton1Click:connect(ccccccccclickyy)



characterhealthhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhh97.Position = UDim2.new(0, 0, 10, 0)
characterhealthhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhh97.Text = "[ Spy ]"
characterhealthhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccclickyy()
mode = "Spy"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhh97.MouseButton1Click:connect(cccccccccclickyy)


characterhealthhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhh97.Position = UDim2.new(0, 0, 11, 0)
characterhealthhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhh97.Text = "[ Break ]"
characterhealthhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccclickyy()
mode = "Break"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccclickyy)




characterhealthhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhh97.Position = UDim2.new(0, 0, 12, 0)
characterhealthhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhh97.Text = "[ Fly ]"
characterhealthhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccclickyy()
mode = "Fly"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccclickyy)


characterhealthhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhh97.Position = UDim2.new(0, 0, 13, 0)
characterhealthhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhh97.Text = "[ Trip ]"
characterhealthhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccclickyy()
mode = "Trip"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccclickyy)





characterhealthhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 2, 0)
characterhealthhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhh97.Text = "[ Fling ]"
characterhealthhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccclickyy()
mode = "Fling"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccclickyy)



characterhealthhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 3, 0)
characterhealthhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhh97.Text = "[ ForceField ]"
characterhealthhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccclickyy()
mode = "ForceField"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccclickyy)




characterhealthhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 4, 0)
characterhealthhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhh97.Text = "[ UnForceField ]"
characterhealthhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccclickyy()
mode = "UnForceField"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccclickyy)




characterhealthhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 5, 0)
characterhealthhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhh97.Text = "[ NilGrav ]"
characterhealthhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccclickyy()
mode = "NilGrav"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccclickyy)



characterhealthhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 6, 0)
characterhealthhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhh97.Text = "[ UnNilGrav ]"
characterhealthhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccclickyy()
mode = "UnNilGrav"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccclickyy)






characterhealthhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 7, 0)
characterhealthhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhh97.Text = "[ Invisible ]"
characterhealthhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccccclickyy()
mode = "Invisible"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccccclickyy)





characterhealthhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 8, 0)
characterhealthhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhh97.Text = "[ Visible ]"
characterhealthhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccccclickyy()
mode = "Visible"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccccclickyy)


characterhealthhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 9, 0)
characterhealthhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhh97.Text = "[ Shield ]"
characterhealthhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccccccclickyy()
mode = "Shield"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccccccclickyy)





characterhealthhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 10, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Absorb ]"
characterhealthhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccccccclickyy()
mode = "Absorb"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccccccclickyy)



characterhealthhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 11, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ BaleFire ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccccccccclickyy()
mode = "BaleFire"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccccccccclickyy)





characterhealthhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 12, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Machine Gun ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccccccccclickyy()
mode = "Machine Gun"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccccccccclickyy)




characterhealthhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(1, 0, 13, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Capture ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccccccccccclickyy()
mode = "Capture"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccccccccccclickyy)


characterhealthhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 2, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Slaughter ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccccccccccclickyy()
mode = "Slaughter"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccccccccccclickyy)



characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 3, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Draw ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccccccccccccclickyy()
mode = "Draw"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccccccccccccclickyy)


characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 4, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Faint ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccccccccccccclickyy()
mode = "Faint"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccccccccccccclickyy)


characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 5, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Random Colors ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccccccccccccccclickyy()
mode = "Random Colors"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccccccccccccccclickyy)



characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 6, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Drag ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccccccccccccccclickyy()
mode = "Drag"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccccccccccccccclickyy)



characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 7, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Naked Beam ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccccccccccccccccclickyy()
mode = "Naked Beam"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccccccccccccccccclickyy)







characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 8, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Shrink ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccccccccccccccccclickyy()
mode = "Shrink"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccccccccccccccccclickyy)



characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 9, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Grow ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccccccccccccccccccclickyy()
mode = "Grow"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccccccccccccccccccclickyy)






characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 10, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Confuse ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccccccccccccccccccclickyy()
mode = "Confuse"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccccccccccccccccccclickyy)


characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 11, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Disarm ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function ccccccccccccccccccccccccccccccccccclickyy()
mode = "Disarm"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(ccccccccccccccccccccccccccccccccccclickyy)





characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97 = Instance.new("TextButton")
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Parent = lightingg
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Name = "CharacterButton"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundTransparency = 0.5
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Position = UDim2.new(2, 0, 12, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Size = UDim2.new(1, 0, 1, 0)
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.Text = "[ Spotlight ]"
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.BackgroundColor = BrickColor.new(1)

function cccccccccccccccccccccccccccccccccccclickyy()
mode = "Spotlight"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhealthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh97.MouseButton1Click:connect(cccccccccccccccccccccccccccccccccccclickyy)



characterhe97 = Instance.new("TextButton")
characterhe97.Parent = lightingg
characterhe97.Name = "CharacterButton"
characterhe97.BackgroundTransparency = 0.5
characterhe97.Position = UDim2.new(2, 0, 13, 0)
characterhe97.Size = UDim2.new(1, 0, 1, 0)
characterhe97.Text = "[ Ducks ]"
characterhe97.BackgroundColor = BrickColor.new(1)

function asdflickyy()
mode = "Ducks"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhe97.MouseButton1Click:connect(asdflickyy)








characterhee97 = Instance.new("TextButton")
characterhee97.Parent = lightingg
characterhee97.Name = "CharacterButton"
characterhee97.BackgroundTransparency = 0.5
characterhee97.Position = UDim2.new(3, 0, 2, 0)
characterhee97.Size = UDim2.new(1, 0, 1, 0)
characterhee97.Text = "[ Duck Swarm ]"
characterhee97.BackgroundColor = BrickColor.new(1)

function asdflickyyy()
mode = "Duck Swarm"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterhee97.MouseButton1Click:connect(asdflickyyy)





characterheee97 = Instance.new("TextButton")
characterheee97.Parent = lightingg
characterheee97.Name = "CharacterButton"
characterheee97.BackgroundTransparency = 0.5
characterheee97.Position = UDim2.new(3, 0, 3, 0)
characterheee97.Size = UDim2.new(1, 0, 1, 0)
characterheee97.Text = "[ Throwup ]"
characterheee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyy()
mode = "Throwup"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheee97.MouseButton1Click:connect(asdflickyyyy)



characterheeee97 = Instance.new("TextButton")
characterheeee97.Parent = lightingg
characterheeee97.Name = "CharacterButton"
characterheeee97.BackgroundTransparency = 0.5
characterheeee97.Position = UDim2.new(3, 0, 4, 0)
characterheeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeee97.Text = "[ Hang ]"
characterheeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyy()
mode = "Hang"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeee97.MouseButton1Click:connect(asdflickyyyyy)



characterheeeee97 = Instance.new("TextButton")
characterheeeee97.Parent = lightingg
characterheeeee97.Name = "CharacterButton"
characterheeeee97.BackgroundTransparency = 0.5
characterheeeee97.Position = UDim2.new(3, 0, 5, 0)
characterheeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeee97.Text = "[ UnHang ]"
characterheeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyy()
mode = "UnHang"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeee97.MouseButton1Click:connect(asdflickyyyyyy)






characterheeeeee97 = Instance.new("TextButton")
characterheeeeee97.Parent = lightingg
characterheeeeee97.Name = "CharacterButton"
characterheeeeee97.BackgroundTransparency = 0.5
characterheeeeee97.Position = UDim2.new(3, 0, 6, 0)
characterheeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeee97.Text = "[ Ban ]"
characterheeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyy()
mode = "Ban"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeee97.MouseButton1Click:connect(asdflickyyyyyyy)




characterheeeeeee97 = Instance.new("TextButton")
characterheeeeeee97.Parent = lightingg
characterheeeeeee97.Name = "CharacterButton"
characterheeeeeee97.BackgroundTransparency = 0.5
characterheeeeeee97.Position = UDim2.new(3, 0, 7, 0)
characterheeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeee97.Text = "[ Tree Summon ]"
characterheeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyy()
mode = "Tree Summon"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyy)


characterheeeeeeee97 = Instance.new("TextButton")
characterheeeeeeee97.Parent = lightingg
characterheeeeeeee97.Name = "CharacterButton"
characterheeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeee97.Position = UDim2.new(3, 0, 8, 0)
characterheeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeee97.Text = "[ Seizure ]"
characterheeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyy()
mode = "Seizure"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyy)



characterheeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeee97.Parent = lightingg
characterheeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeee97.Position = UDim2.new(3, 0, 9, 0)
characterheeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeee97.Text = "[ Steal Color ]"
characterheeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyy()
mode = "Steal Color"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyy)

characterheeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeee97.Parent = lightingg
characterheeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeee97.Position = UDim2.new(3, 0, 10, 0)
characterheeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeee97.Text = "[ Give Color ]"
characterheeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyy()
mode = "Give Color"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyy)



characterheeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeee97.Position = UDim2.new(3, 0, 11, 0)
characterheeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeee97.Text = "[ Clone ]"
characterheeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyy()
mode = "Clone"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyy)

characterheeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeee97.Position = UDim2.new(3, 0, 12, 0)
characterheeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeee97.Text = "[ Push ]"
characterheeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyy()
mode = "Push"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyy)





characterheeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeee97.Position = UDim2.new(3, 0, 13, 0)
characterheeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeee97.Text = "[ Safety ]"
characterheeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyy()
mode = "Safety"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyy)






characterheeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 2, 0)
characterheeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeee97.Text = "[ Lock ]"
characterheeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyy()
mode = "Lock"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyy)

characterheeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 3, 0)
characterheeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeee97.Text = "[ UnLock ]"
characterheeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyy()
mode = "UnLock"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyy)



characterheeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 4, 0)
characterheeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeee97.Text = "[ Burn ]"
characterheeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyy()
mode = "Burn"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyy)




characterheeeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 5, 0)
characterheeeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeeee97.Text = "[ Hatless ]"
characterheeeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyyy()
mode = "Hatless"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyyy)



characterheeeeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 6, 0)
characterheeeeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeeeee97.Text = "[ Suitless ]"
characterheeeeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyyyy()
mode = "Suitless"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyyyy)

characterheeeeeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 7, 0)
characterheeeeeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeeeeee97.Text = "[ Sit ]"
characterheeeeeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyyyyy()
mode = "Sit"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyyyyy)

characterheeeeeeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 8, 0)
characterheeeeeeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeeeeeee97.Text = "[ Slow Drag ]"
characterheeeeeeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyyyyyy()
mode = "Slow Drag"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyyyyyy)




characterheeeeeeeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 9, 0)
characterheeeeeeeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeeeeeeee97.Text = "[ Steal Tools ]"
characterheeeeeeeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyyyyyyy()
mode = "Steal Tools"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyyyyyyy)



characterheeeeeeeeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 10, 0)
characterheeeeeeeeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeeeeeeeee97.Text = "[ Jail ]"
characterheeeeeeeeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyyyyyyyy()
mode = "Jail"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyyyyyyyy)



characterheeeeeeeeeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 11, 0)
characterheeeeeeeeeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeeeeeeeeee97.Text = "[ UnJail ]"
characterheeeeeeeeeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyyyyyyyyy()
mode = "UnJail"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyyyyyyyyy)



characterheeeeeeeeeeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 12, 0)
characterheeeeeeeeeeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeeeeeeeeeee97.Text = "[ Dynamites ]"
characterheeeeeeeeeeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyyyyyyyyyy()
mode = "Dynamites"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyyyyyyyyyy)



characterheeeeeeeeeeeeeeeeeeeeeeeee97 = Instance.new("TextButton")
characterheeeeeeeeeeeeeeeeeeeeeeeee97.Parent = lightingg
characterheeeeeeeeeeeeeeeeeeeeeeeee97.Name = "CharacterButton"
characterheeeeeeeeeeeeeeeeeeeeeeeee97.BackgroundTransparency = 0.5
characterheeeeeeeeeeeeeeeeeeeeeeeee97.Position = UDim2.new(4, 0, 13, 0)
characterheeeeeeeeeeeeeeeeeeeeeeeee97.Size = UDim2.new(1, 0, 1, 0)
characterheeeeeeeeeeeeeeeeeeeeeeeee97.Text = "[ Detonate Dynamites ]"
characterheeeeeeeeeeeeeeeeeeeeeeeee97.BackgroundColor = BrickColor.new(1)

function asdflickyyyyyyyyyyyyyyyyyyyyyyyyyy()
mode = "Detonate Dynamites"
d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end
end
characterheeeeeeeeeeeeeeeeeeeeeeeee97.MouseButton1Click:connect(asdflickyyyyyyyyyyyyyyyyyyyyyyyyyy)












a = me.Character:findFirstChild("Eyeball")
if a ~= nil then a:Remove() end



ball = Instance.new("Model")
ball.Name = "Eyeball"
ball.Parent = me.Character
asdf = Instance.new("Humanoid")
asdf.Parent = ball
asdf.MaxHealth = 0
asdf.Health = 0
eyeball = Instance.new("Part")
eyeball.Parent = ball
eyeball.Locked = true
eyeball.TopSurface = "Smooth"
eyeball.BottomSurface = "Smooth"
eyeball.Size = Vector3.new(2, 2, 2)
eyeball.BrickColor = BrickColor.new(1)
eyeball.Shape = "Ball"
eyeball.Name = "Head"
eyeball.CanCollide = false
eyeball.formFactor = "Symmetric"
eyeball.CFrame = me.Character.Head.CFrame




eyeballh = Instance.new("Part")
eyeballh.Parent = ball
eyeballh.Locked = true
eyeballh.TopSurface = "Smooth"
eyeballh.BottomSurface = "Smooth"
eyeballh.Size = Vector3.new(2, 1, 2)
eyeballh.CanCollide = false
eyeballh.formFactor = "Symmetric"
eyeballh.CFrame = me.Character.Head.CFrame
mesh = Instance.new("SpecialMesh")
mesh.Parent = eyeballh
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(1, 1, 1)
mesh.MeshId = "http://www.roblox.com/asset/?id=1028713"
mesh.TextureId = "http://www.roblox.com/asset/?id=24363214"
weld = Instance.new("Weld")
weld.Parent = eyeball
weld.Part0 = eyeball
weld.Part1 = eyeballh
weld.C0 = CFrame.new(Vector3.new(0, 1.05, 0))



shotsound = Instance.new("Sound")
shotsound.SoundId = "50b1527eefedeeb9062fdcdcfd37202a"
shotsound.Pitch = 0.7
shotsound.Parent = eyeball

bodyposition = Instance.new("BodyPosition")
bodyposition.Parent = eyeball
bodyposition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bodygyro = Instance.new("BodyGyro")
bodygyro.Parent = eyeball
bodygyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodygyro.D = 100
eyeball22 = Instance.new("Part")
eyeball22.Parent = ball
eyeball22.Locked = true
eyeball22.BrickColor = me.Character.Torso.BrickColor
eyeball22.TopSurface = "Smooth"
eyeball22.Reflectance = 0.05
eyeball22.BottomSurface = "Smooth"
eyeball22.Size = Vector3.new(1, 1, 1)
eyeball22.Shape = "Ball"
eyeball22.CanCollide = false
eyeball22.formFactor = "Symmetric"
eyeball22.CFrame = me.Character.Head.CFrame
mesh = Instance.new("SpecialMesh")
mesh.Parent = eyeball22
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1, 1, 0.5)
weld = Instance.new("Weld")
weld.Parent = eyeball
weld.Part0 = eyeball
weld.Part1 = eyeball22
weld.C0 = CFrame.new(Vector3.new(0, 0, -0.79))
eyeball2 = Instance.new("Part")
eyeball2.Parent = ball
eyeball2.Locked = true
eyeball2.TopSurface = "Smooth"
eyeball2.BrickColor = BrickColor.new(26)
eyeball2.BottomSurface = "Smooth"
eyeball2.Size = Vector3.new(1, 1, 1)
eyeball2.Shape = "Ball"
eyeball2.CanCollide = false
eyeball2.formFactor = "Symmetric"
eyeball2.CFrame = me.Character.Head.CFrame
mesh = Instance.new("SpecialMesh")
mesh.Parent = eyeball2
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
weld = Instance.new("Weld")
weld.Parent = eyeball
weld.Part0 = eyeball
weld.Part1 = eyeball2
weld.C0 = CFrame.new(Vector3.new(0, 0, -0.82))

eyeball3 = Instance.new("Part")
eyeball3.Parent = ball
eyeball3.Locked = true
eyeball3.TopSurface = "Smooth"
eyeball3.BrickColor = BrickColor.new(26)
eyeball3.BottomSurface = "Smooth"
eyeball3.Transparency = 1
eyeball3.Size = Vector3.new(1, 1, 1)
eyeball3.Shape = "Ball"
eyeball3.Name = "ASDLFKJ"
eyeball3.CanCollide = false
eyeball3.formFactor = "Symmetric"
eyeball3.CFrame = me.Character.Head.CFrame
weld = Instance.new("Weld")
weld.Parent = eyeball
weld.Part0 = eyeball
weld.Part1 = eyeball3
weld.C0 = CFrame.new(Vector3.new(0, 0, -20))






things = ball:GetChildren()
for i = 1 , #things do
if things[i].className == "Part" and things[i].Name ~= eyeball3.Name then
function bleh(hit)
if hit.Parent.Name ~= ball.Name and hit.Parent.Name ~= me.Character.Name and hit.Name ~= "Lazor" and hit.Name ~= "Base" then
if hit.Parent.Parent.Name ~= me.Character.Name and hit.Parent.Name ~= "Jail" then
if mode == "Absorb" or mode == "Drag" then
hit:Remove()
end
end
end
end
things[i].Touched:connect(bleh)
end
end












maximumdistance = 10000

function onButton1Down(mouse)
if Staring == true then return end
Clicking = true
while Clicking == true do
wait()
h = game.Workspace:findFirstChild("Lazor")
if h ~= nil then h:Remove() end
if mode == "None" then return end













eyeball2.BrickColor = BrickColor.new(21)



if mode ~= "Shield" and mode ~= "None" and mode ~= "Throwup" and mode ~= "Seizure" and mode ~= "Fly" and mode ~= "Safety" and mode ~= "Spy" and mouse.Target == nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
p = Instance.new("Part")
p.Parent = ball
p.Name = "Lazor"
p.Transparency = 1
p.CanCollide = false
p.Anchored = true
p.CFrame = eyeball.CFrame * CFrame.new(Vector3.new(0, 0, -maximumdistance))
local Place1 = p.Position
p:Remove()
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(21)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
end





if mode == "Heal" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(21)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

humanoid = mouse.Target.Parent:findFirstChild("Humanoid")
if humanoid ~= nil and humanoid.Parent.Name ~= ball.Name then
humanoid.MaxHealth = 100
humanoid.Health = humanoid.Health + 1
a.BrickColor = BrickColor.new(1)
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.3

end

end
end



if mode == "Damage" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(21)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)



checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then


if mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Parent.Name ~= me.Character.Name then
humanoid = mouse.Target.Parent:findFirstChild("Humanoid")
if humanoid ~= nil and humanoid.Parent.Name ~= ball.Name then
humanoid.MaxHealth = 100
humanoid.Health = humanoid.Health - 1
a.BrickColor = BrickColor.new(21)
d.Scale = Vector3.new(0.2, 0.2, (Place0.p - Place1).magnitude)
a.Transparency = 0.1

end
end



end




end
end


if mode == "Freeze" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(23)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)



if mouse.Target.Name ~= "Base" and mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new(23)
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.2
a.Reflectance = 0.2

mouse.Target.Anchored = true
mouse.Target.Friction = 0
mouse.Target.Transparency = 0.5
mouse.Target.Reflectance = 0.5

end



end
end



if mode == "Thaw" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(24)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)



if mouse.Target.Name ~= "Base" and mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new(24)
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4

mouse.Target.Anchored = false
mouse.Target.Friction = 0.3
mouse.Target.Transparency = 0
mouse.Target.Reflectance = 0

end



end
end





if mode == "Delete" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)




checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then




if mouse.Target.Name ~= "Base" and mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4

mouse.Target:Remove()

end
end



end
end





if mode == "Lock" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


if mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4

mouse.Target.Locked = true

end



end
end




if mode == "UnLock" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


if mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4

mouse.Target.Locked = false

end



end
end





if mode == "Burn" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)



checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Name ~= "Base" and mouse.Target.Parent.Name ~= me.Character.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4

mouse.Target.Material = "Slate"
mouse.Target.BrickColor = BrickColor.new(26)
mouse.Target.TopSurface = "Smooth"
mouse.Target.BottomSurface = "Smooth"
mouse.Target.Anchored = true

end
end


end
end







if mode == "Hatless" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


stuff = mouse.Target.Parent:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Hat" then
stuff[i]:Remove()
end
end



end
end






if mode == "Suitless" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
p = mouse.Target.Parent
stuff = p:GetChildren()
for i = 1 , #stuff do
if stuff[i].className ~= "Hat" and stuff[i].Name ~= "Head" and stuff[i].Name ~= "Torso" and stuff[i].Name ~= "Right Arm" and stuff[i].Name ~= "Left Arm" and stuff[i].Name ~= "Right Leg" and stuff[i].Name ~= "Left Leg" then
if stuff[i].className == "Model" or stuff[i].className == "Part" and stuff[i].Name ~= ball.Name then
stuff[i]:Remove()
end
end
end
end



end
end



if mode == "Sit" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


humanoid = mouse.Target.Parent:findFirstChild("Humanoid")
if humanoid ~= nil then
humanoid.Sit = true
end



end
end









if mode == "Slow Drag" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(math.random(1, 200))
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Name ~= "Base" then

a.BrickColor = BrickColor.new(math.random(1, 200))
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1


if mouse.Target.Anchored == false then
asdf = mouse.Target
p = asdf:findFirstChild("ASDFASDF")
if p ~= nil then
p:Remove()
end
p = Instance.new("BodyVelocity")
p.Parent = asdf
p.maxForce = Vector3.new(math.huge, math.huge, math.huge)
p.velocity = eyeball.CFrame.lookVector * -120
p.Name = "ASDFASDF"
wait()
p = asdf:findFirstChild("ASDFASDF")
if p ~= nil then
p:Remove()
end

end


end
end




end
end





if mode == "Kick" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new("Dark stone grey")
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4


if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
loadstring("game.Players:GetPlayerFromCharacter(mouse.Target.Parent):Remove()")()
end


end

end

end
end


if mode == "Ban" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new("Dark stone grey")
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then


if mouse.Target.Parent.Name ~= me.Character.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4


if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
lolwut = #banned + 1
a = game.Players:GetPlayerFromCharacter(mouse.Target.Parent)
banned[lolwut] = a.Name
end


end
end


end
end





if mode == "Explosion" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(105)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)



checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then



if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new(24)
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4

if (mouse.Hit.p-me.Character.Torso.Position).magnitude > 15 then
asdf = Instance.new("Explosion")
asdf.Parent = game.Workspace
asdf.BlastRadius = 3
asdf.Position = mouse.Hit.p
end

end


end
end
end




if mode == "Spy" then

bodyposition.position = eyeball3.Position

end









if mode == "Break" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(192)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Name ~= "Base" then

a.BrickColor = BrickColor.new(192)
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1

mouse.Target:BreakJoints()
mouse.Target.Anchored = false

end
end
end
end



if mode == "Fly" then

as = me.Character.Torso:findFirstChild("BodyGyros")
if as ~= nil then as:Remove() end
as = me.Character.Torso:findFirstChild("BodyPositions")
if as ~= nil then as:Remove() end

bodyposition.position = eyeball3.Position

g = Instance.new("BodyPosition")
g.Parent = me.Character.Torso
g.Name = "BodyPositions"
g.maxForce = Vector3.new(math.huge, math.huge, math.huge)
g.position = eyeball.Position-Vector3.new(0, 2, 0)
d = Instance.new("BodyGyro")
d.Parent = me.Character.Torso
d.Name = "BodyGyros"
d.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
d.D = 300
d.cframe = eyeball.CFrame*CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)




local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = me.Character.Head.Position
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(192)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)





end















if mode == "Trip" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new("Pink")
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Name ~= "Base" then

a.BrickColor = BrickColor.new("Pink")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1

if mouse.Target.Anchored == false then
mouse.Target.CFrame = mouse.Target.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
thing = mouse.Target.Parent:findFirstChild("Torso")
if thing ~= nil then
mouse.Target.Parent.Torso.CFrame = mouse.Target.Parent.Torso.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
end
end
end

end

end
end












if mode == "Fling" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(math.random(1, 200))
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Name ~= "Base" then

a.BrickColor = BrickColor.new(math.random(1, 200))
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1

p = Instance.new("Explosion")
p.Parent = game.Workspace
p.BlastPressure = 0
p.BlastRadius = 5
p.Position = mouse.Hit.p

humanoid = mouse.Target.Parent:findFirstChild("Humanoid")
if humanoid ~= nil then
humanoid.Sit = true
torso = humanoid.Parent:findFirstChild("Torso")
if torso ~= nil then
torso.Velocity = eyeball.CFrame.lookVector * -2000
end
end
mouse.Target.Velocity = eyeball.CFrame.lookVector * -2000

end


end

end
end










if mode == "Push" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(math.random(1, 200))
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Name ~= "Base" then

a.BrickColor = BrickColor.new(math.random(1, 200))
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1


if mouse.Target.Anchored == false then
asdf = mouse.Target
p = asdf:findFirstChild("ASDFASDF")
if p ~= nil then
p:Remove()
end
p = Instance.new("BodyVelocity")
p.Parent = asdf
p.maxForce = Vector3.new(math.huge, math.huge, math.huge)
p.velocity = eyeball.CFrame.lookVector * 200
p.Name = "ASDFASDF"
wait()
p = asdf:findFirstChild("ASDFASDF")
if p ~= nil then
p:Remove()
end

end

end
end




end
end










if mode == "ForceField" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new("Brown")
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

ff = mouse.Target:findFirstChild("ForceField")
if ff == nil then
if mouse.Target.Parent ~= ball then
a.BrickColor = BrickColor.new("Brown")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1
p = Instance.new("ForceField")
p.Parent = mouse.Target
end
end




end
end


if mode == "UnForceField" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new("Cool yellow")
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

ff = mouse.Target:findFirstChild("ForceField")
if ff ~= nil then

a.BrickColor = BrickColor.new("Brown")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1
ff:Remove()

p = mouse.Target.Parent:findFirstChild("ForceField")
if p ~= nil then p:Remove() end

end




end
end




if mode == "NilGrav" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

ff = mouse.Target:findFirstChild("BodyPosition")
if ff == nil then
if mouse.Target.Parent ~= ball then
a.BrickColor = BrickColor.new(1)
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1
p = Instance.new("BodyPosition")
p.Parent = mouse.Target
p.maxForce = Vector3.new(math.huge, math.huge, math.huge)
p.position = mouse.Hit.p
end
end




end
end


if mode == "UnNilGrav" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

ff = mouse.Target:findFirstChild("BodyPosition")
if ff ~= nil then
if mouse.Target.Parent ~= ball then
a.BrickColor = BrickColor.new(1)
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1
ff:Remove()
end
end




end
end







if mode == "Invisible" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(1)
a.Transparency = 0.5
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


if mouse.Target.Parent ~= ball and mouse.Target.Name ~= "Base" then

a.BrickColor = BrickColor.new(1)
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.3
if mouse.Target.Transparency < 1 then
mouse.Target.Transparency = mouse.Target.Transparency + 0.1
end

end




end
end



if mode == "Visible" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(1)
a.Transparency = 0.5
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


if mouse.Target.Parent ~= ball and mouse.Target.Name ~= "Base" then

a.BrickColor = BrickColor.new(1)
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.3
if mouse.Target.Transparency > 0 then
mouse.Target.Transparency = mouse.Target.Transparency - 0.1
end

end




end
end











if mode == "Shield" then

a = Instance.new("Part")
a.formFactor = "Symmetric"
a.Size = Vector3.new(12,12,2)
a.Name = "Lazor"
a.CFrame = eyeball.CFrame * CFrame.new(Vector3.new(0, 0, -14))
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(1)
a.Transparency = 0.5
a.Reflectance = 0.1
a.Anchored = true
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"

a2 = Instance.new("Part")
a2.formFactor = "Symmetric"
a2.Size = Vector3.new(20,12,2)
a2.Name = "Lazor"
a2.CFrame = eyeball.CFrame * CFrame.new(Vector3.new(12.5, 0, -7)) * CFrame.fromEulerAnglesXYZ(0, -0.785, 0)
a2.Parent = a
a2.BrickColor = BrickColor.new(1)
a2.Transparency = 0.5
a2.Reflectance = 0.1
a2.Anchored = true
a2.Locked = true
a2.BottomSurface = "Smooth"
a2.TopSurface = "Smooth"

a2 = Instance.new("Part")
a2.formFactor = "Symmetric"
a2.Size = Vector3.new(20,12,2)
a2.Name = "Lazor"
a2.CFrame = eyeball.CFrame * CFrame.new(Vector3.new(-12.5, 0, -7)) * CFrame.fromEulerAnglesXYZ(0, 0.785, 0)
a2.Parent = a
a2.BrickColor = BrickColor.new(1)
a2.Transparency = 0.5
a2.Reflectance = 0.1
a2.Anchored = true
a2.Locked = true
a2.BottomSurface = "Smooth"
a2.TopSurface = "Smooth"


a2 = Instance.new("Part")
a2.formFactor = "Symmetric"
a2.Size = Vector3.new(12,20,2)
a2.Name = "Lazor"
a2.CFrame = eyeball.CFrame * CFrame.new(Vector3.new(0, 12.5, -7)) * CFrame.fromEulerAnglesXYZ(0.785, 0, 0)
a2.Parent = a
a2.BrickColor = BrickColor.new(1)
a2.Transparency = 0.5
a2.Reflectance = 0.1
a2.Anchored = true
a2.Locked = true
a2.BottomSurface = "Smooth"
a2.TopSurface = "Smooth"

a2 = Instance.new("Part")
a2.formFactor = "Symmetric"
a2.Size = Vector3.new(12,20,2)
a2.Name = "Lazor"
a2.CFrame = eyeball.CFrame * CFrame.new(Vector3.new(0, -12.5, -7)) * CFrame.fromEulerAnglesXYZ(-0.785, 0, 0)
a2.Parent = a
a2.BrickColor = BrickColor.new(1)
a2.Transparency = 0.5
a2.Reflectance = 0.1
a2.Anchored = true
a2.Locked = true
a2.BottomSurface = "Smooth"
a2.TopSurface = "Smooth"


end






if mode == "Absorb" then

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do
if stuff[i].Name ~= "Lazor" and stuff[i].Name ~= me.Character.Name then

checkadmin = 0
for i = 1 , #admin do
if stuff[i].Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if stuff[i].className == "Part" and stuff[i].Name ~= "Base" then
if (stuff[i].Position-eyeball.Position).magnitude <= 25 then
d = stuff[i]:findFirstChild("BodyPosition")
if d == nil then
stuff[i].Size = Vector3.new(math.random(1, 2), math.random(1, 2), math.random(1, 2))
stuff[i].CanCollide = false
stuff[i]:BreakJoints()
stuff[i].Anchored = false
a = Instance.new("BodyPosition")
a.Parent = stuff[i]
a.maxForce = Vector3.new(math.huge, math.huge, math.huge)
a.position = eyeball.Position
end
if d ~= nil then
d.BodyPosition.position = eyeball.Position
end
end
end


if stuff[i].className == "Model" then
asdf = stuff[i]:GetChildren()
for i = 1 , #asdf do
if asdf[i] ~= ball then
if asdf[i].className == "Part" then


if (asdf[i].Position-eyeball.Position).magnitude <= 25 then
d = asdf[i]:findFirstChild("BodyPosition")
if d == nil then
asdf[i].Size = Vector3.new(math.random(1, 2), math.random(1, 2), math.random(1, 2))
asdf[i].CanCollide = false
asdf[i]:BreakJoints()
asdf[i].Anchored = false
a = Instance.new("BodyPosition")
a.Parent = asdf[i]
a.maxForce = Vector3.new(math.huge, math.huge, math.huge)
a.position = eyeball.Position
end
if d ~= nil then
d.BodyPosition.position = eyeball.Position
end
end


end
end
end
end
end


end
end

end









if mode == "BaleFire" then




for i = 1 , 300/5 do
BaleFireValue = BaleFireValue + 5
a = Instance.new("Part")
a.formFactor = "Symmetric"
a.CanCollide = false
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = eyeball.CFrame * CFrame.new(Vector3.new(0, 0, -BaleFireValue))
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(1)
a.Transparency = 1
a.Anchored = true
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("Explosion")
d.Parent = game.Workspace
d.BlastRadius = 5
d.Position = a.Position
end


end













if mode == "Machine Gun" then


if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p+Vector3.new(math.random(-1, 1)/2, math.random(-1, 1)/2, math.random(-1, 1)/2)
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(24)
a.Transparency = 0.5
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
shotsound:play()

checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Parent.Name ~= me.Character.Name then

humanoid = mouse.Target.Parent:findFirstChild("Humanoid")
if humanoid ~= nil and humanoid.Parent.Name ~= ball.Name then
humanoid.MaxHealth = 100
humanoid.Health = humanoid.Health - 3
end
end

end
end

end









if mode == "Capture" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.5
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)




checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Parent.Name ~= me.Character.Name then

d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.3
h = mouse.Target.Parent:findFirstChild("Humanoid")
if h ~= nil then
d = h.Parent:findFirstChild("Torso")
if d ~= nil then
weld = Instance.new("Weld")
weld.Parent = eyeball
weld.Part0 = eyeball
weld.Part1 = d
weld.C0 = CFrame.new(Vector3.new(0, 0, 1.5))*CFrame.fromEulerAnglesXYZ(0, 0, 3.14)
end
end

end
end




end
end










if mode == "Slaughter" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4

h = mouse.Target.Parent:findFirstChild("Humanoid")
if h ~= nil then
h.MaxHealth = 0
h.Health = 0
for i = 1 , math.random(5, 7) do
p = Instance.new("Part")
p.Parent = h.Parent
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new(21)
p.CanCollide = false
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = mouse.Target.CFrame
d = Instance.new("SpecialMesh")
d.Parent = p
d.MeshType = "Brick"
d.Scale = Vector3.new(0.2, 0.2, 0.2)
p.Velocity = Vector3.new(math.random(-20, 20), math.random(40, 60), math.random(-20, 20))
end
end
end
end



end
end












if mode == "Jail" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4



if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
a = game.Players:GetPlayerFromCharacter(mouse.Target.Parent)
p = a:findFirstChild("Backpack")
if p ~= nil then
stuff = p:GetChildren()
for i = 1 , #stuff do
stuff[i]:Remove()
end
end
s = a.Character:GetChildren()
for i = 1 , #s do
if s[i].className == "Tool" or s[i].className == "HopperBin" then
s[i]:Remove()
end
end
end

p = mouse.Target.Parent:findFirstChild("Torso")
if p ~= nil then

b = Instance.new("Model")
b.Parent = me.Character
b.Name = "Jail"
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, -8, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, -8, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 8, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 8, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, -8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, -8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, 8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, 8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, 0, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, 0, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, 0, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, 0, -8))


c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(1, 16, 16)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, 0, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(1, 16, 16)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, 0, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 16, 1)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 0, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 16, 1)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 0, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 1, 16)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 1, 16)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, -8, 0))

end
end
end


end




if mode == "UnJail" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)



if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4


if mouse.Target.Parent.Name == "Jail" then
mouse.Target.Parent:Remove()
end
end



end
end







if mode == "Faint" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name then

a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4



torso = mouse.Target.Parent:findFirstChild("Torso")
h = mouse.Target.Parent:findFirstChild("Humanoid")
if h ~= nil then
h.MaxHealth = 100
h.Health = 1
end
if torso ~= nil then
asdf = torso:findFirstChild("BodyGyro")
if asdf == nil then
torso.CFrame = CFrame.new(torso.Position)
p = Instance.new("BodyGyro")
p.Parent = torso
p.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
p.cframe = torso.CFrame * CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)
p.D = 50
a = Instance.new("BodyVelocity")
a.Parent = torso
a.velocity = Vector3.new(0, -10, 0)
a.maxForce = Vector3.new(math.huge, 9999999, math.huge)
end
end



end
end


end
end




if mode == "Draw" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(26)
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


a.BrickColor = BrickColor.new("Really black")
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.4

a = game.Workspace:findFirstChild("Base")
if a ~= nil then

p = Instance.new("Part")
p.Parent = game.Workspace
p.BrickColor = BrickColor.new(26)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Anchored = true
p.formFactor = "Plate"
p.Size = Vector3.new(3, 0.4, 3)
p.Locked = true
p.CFrame = CFrame.new(Vector3.new(mouse.Hit.x, a.Position.y + 0.5, mouse.Hit.z))

end

end
end











if mode == "Random Colors" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(math.random(1, 200))
a.Transparency = 0.5
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name then

mouse.Target.BrickColor = BrickColor.new(math.random(1, 200))
end

end
end







if mode == "Steal Color" then
if mouse.Target ~= nil then

eyeball22.BrickColor = mouse.Target.BrickColor

local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = eyeball22.BrickColor
a.Transparency = 0.5
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)



end
end



if mode == "Give Color" then
if mouse.Target ~= nil then

if mouse.Target.Parent.Name ~= ball.Name then
mouse.Target.BrickColor = eyeball22.BrickColor

local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = eyeball22.BrickColor
a.Transparency = 0.5
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)


end
end
end









if mode == "Drag" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Name ~= "Base" then

d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1






p = mouse.Target:findFirstChild("BodyPosition")
if p ~= nil then
p.position = eyeball.Position
end
if p == nil then
mouse.Target:BreakJoints()
mouse.Target.Anchored = false
d = Instance.new("BodyPosition")
d.Parent = mouse.Target
d.maxForce = Vector3.new(math.huge, math.huge, math.huge)
d.position = eyeball.Position
end






end
end
end
end









if mode == "Naked Beam" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.BrickColor = BrickColor.new(24)
a.Transparency = 0.1
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then

if mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name then

d.Scale = Vector3.new(0.3, 0.3, (Place0.p - Place1).magnitude)


p = mouse.Target.Parent:findFirstChild("Humanoid")
if p ~= nil then
stuff = mouse.Target.Parent:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Part" then
stuff[i].BrickColor = BrickColor.new("Cool yellow")
end
end
end

p = mouse.Target.Parent:findFirstChild("Pants")
if p ~= nil then
p:Remove()
d = Instance.new("Pants")
d.Parent = mouse.Target.Parent
d.PantsTemplate = ""
d.Name = "BLEH"
stuff = mouse.Target.Parent:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Part" then
stuff[i].BrickColor = BrickColor.new("Cool yellow")
end
end
end
p = mouse.Target.Parent:findFirstChild("Shirt")
if p ~= nil then
p:Remove()
d = Instance.new("Shirt")
d.Parent = mouse.Target.Parent
d.ShirtTemplate = ""
d.Name = "BLEH"
stuff = mouse.Target.Parent:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Part" then
stuff[i].BrickColor = BrickColor.new("Cool yellow")
end
end
end


end
end



end
end

















if mode == "Shrink" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(23)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then
if mouse.Target.Parent ~= me.Character and mouse.Target.Parent ~= ball and mouse.Target.Name ~= "Base" then
asdf = mouse.Target
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1


p = asdf.CFrame
asdf.Size = asdf.Size - Vector3.new(1, 1, 1)
asdf.CFrame = p



end
end

end
end




if mode == "Grow" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(23)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then
if mouse.Target.Parent ~= me.Character and mouse.Target.Parent ~= ball and mouse.Target.Name ~= "Base" then
asdf = mouse.Target
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1


p = asdf.CFrame
asdf.Size = asdf.Size + Vector3.new(1, 1, 1)
asdf.CFrame = p



end


end
end
end








if mode == "Confuse" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(1)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then
if mouse.Target.Parent ~= me.Character and mouse.Target.Parent ~= ball and mouse.Target.Name ~= "Base" then
asdf = mouse.Target
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1


p = mouse.Target.Parent:findFirstChild("Humanoid")
if p ~= nil then
p.WalkSpeed = p.WalkSpeed * -1
end



end

end
end
end











if mode == "Disarm" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(1)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then
if mouse.Target.Parent ~= me.Character and mouse.Target.Parent ~= ball and mouse.Target.Name ~= "Base" then
asdf = mouse.Target
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1




if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
a = game.Players:GetPlayerFromCharacter(mouse.Target.Parent)
p = a:findFirstChild("Backpack")
if p ~= nil then
stuff = p:GetChildren()
for i = 1 , #stuff do
stuff[i]:Remove()
end
end
s = a.Character:GetChildren()
for i = 1 , #s do
if s[i].className == "Tool" then
s[i]:Remove()
end
end
end



end
end

end
end









if mode == "Steal Tools" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(1)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then
if mouse.Target.Parent ~= me.Character and mouse.Target.Parent ~= ball and mouse.Target.Name ~= "Base" then
asdf = mouse.Target
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1




if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
a = game.Players:GetPlayerFromCharacter(mouse.Target.Parent)
p = a:findFirstChild("Backpack")
if p ~= nil then
stuff = p:GetChildren()
for i = 1 , #stuff do
stuff[i]:clone().Parent = me.Backpack
stuff[i]:Remove()
end
end
s = a.Character:GetChildren()
for i = 1 , #s do
if s[i].className == "Tool" then
s[i]:clone().Parent = me.Backpack
s[i]:Remove()
end
end
end



end
end

end
end








if mode == "Clone" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(1)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
checkadmin = 0
for i = 1 , #admin do
if mouse.Target.Parent.Name == admin[i] then
checkadmin = 1
end
end
if checkadmin == 0 then
if mouse.Target.Name ~= "Lazor" and mouse.Target.Parent.Name ~= me.Character.Name and mouse.Target.Parent.Name ~= ball.Name and mouse.Target.Name ~= "Base" then
asdf = mouse.Target
d.Scale = Vector3.new(0.15, 0.15, (Place0.p - Place1).magnitude)
a.Transparency = 0.1





if game.Players:GetPlayerFromCharacter(mouse.Target) == nil and mouse.Target.Parent.className == "Model" and mouse.Target.Parent.Name ~= "Workspace" and mouse.Target.Parent.Name ~= "workspace" then

p = mouse.Target.Parent:clone()
p.Parent = game.Workspace
p:MakeJoints()
p:MoveTo(mouse.Hit.p + Vector3.new(0, 10, 0))

else




mouse.Target:clone().Parent = game.Workspace




end

end


end


end
end






if mode == "Spotlight" then
if mouse.Target ~= nil then



a = Instance.new("Part")
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(24)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new(mouse.Hit.p)
a.Parent = game.Workspace
a.Transparency = 0.4
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("CylinderMesh")
d.Parent = a
d.Scale = Vector3.new(20, 3000, 20)



end
end




if mode == "Ducks" then
if mouse.Target ~= nil then

p = Instance.new("Part")
p.Parent = game.Workspace
p.BrickColor = BrickColor.new(24)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.formFactor = "Symmetric"
p.Name = "Duck"
p.Size = Vector3.new(1, 1, 1)
p.Locked = true
p.CFrame = CFrame.new(mouse.Hit.p+Vector3.new(0, 2, 0))
d = Instance.new("SpecialMesh")
d.Parent = p
d.MeshType = "FileMesh"
d.MeshId = "http://www.roblox.com/asset/?id=9419831"
d.TextureId = "http://www.roblox.com/asset/?id=9419827"
b = Instance.new("BodyPosition")
b.Parent = p
b.maxForce = Vector3.new(0, 0, 0)

end
end



if mode == "Dynamites" then
if mouse.Target ~= nil then

p = Instance.new("Part")
p.Parent = game.Workspace
p.BrickColor = BrickColor.new(21)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.formFactor = "Symmetric"
p.Name = "Dynamite"
p.Size = Vector3.new(1, 1, 1)
p.Locked = true
p.CFrame = CFrame.new(mouse.Hit.p+Vector3.new(0, 2, 0))
d = Instance.new("SpecialMesh")
d.Parent = p
d.MeshType = "FileMesh"
d.MeshId = "http://www.roblox.com/asset/?id=12891705"
d.TextureId = "http://www.roblox.com/asset/?id=12891577"
b = Instance.new("BodyPosition")
b.Parent = p
b.maxForce = Vector3.new(0, 0, 0)

end
end


if mode == "Detonate Dynamites" then

p = game.Workspace:findFirstChild("Dynamite")
if p ~= nil then
if (p.Position-me.Character.Torso.Position).magnitude > 20 then
d = Instance.new("Explosion")
d.Parent = game.Workspace
d.Position = p.Position
p:Remove()
end
end

end




if mode == "Duck Swarm" then
if mouse.Target ~= nil then
a = Instance.new("Part")
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(24)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new(mouse.Hit.p+Vector3.new(0, 1, 0))
a.Parent = game.Workspace
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.Scale = Vector3.new(3, 3, 3)
d.MeshType = "FileMesh"
d.MeshId = "http://www.roblox.com/asset/?id=9419831"
d.TextureId = "http://www.roblox.com/asset/?id=9419827"

s = game.Workspace:GetChildren()
for i = 1 , #s do
if s[i].Name == "Duck" then
a = s[i]:findFirstChild("BodyPosition")
if a ~= nil then
a.maxForce = Vector3.new(math.huge, math.huge, math.huge)
a.position = mouse.Hit.p
end
end
end












end
end













if mode == "Throwup" then

p = Instance.new("Part")
p.Parent = game.Workspace
p.CanCollide = false

colorhax = math.random(1, 3)
if colorhax == 1 then
p.BrickColor = BrickColor.new(192)
end
if colorhax == 2 then
p.BrickColor = BrickColor.new(28)
end
if colorhax == 3 then
p.BrickColor = BrickColor.new(105)
end
p.Size = Vector3.new(math.random(1, 2), math.random(1, 2), math.random(1, 2))
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = eyeball.CFrame * CFrame.new(Vector3.new(0, 0, -4))
p.Velocity = eyeball.CFrame.lookVector * 100 + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
p.Anchored = false
p:BreakJoints()

end















if mode == "Hang" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(1)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)
head = mouse.Target.Parent:findFirstChild("Head")
if head ~= nil then
p = head:findFirstChild("BodyPosition")
if p == nil then
d = Instance.new("BodyPosition")
d.Parent = head
d.maxForce = Vector3.new(math.huge, math.huge, math.huge)
d.position = head.Position+Vector3.new(0, 12, 0)

a = head.Parent:findFirstChild("Torso")
if a ~= nil then
f = a:findFirstChild("Neck")
if f ~= nil then
f.C0 = f.C0 * CFrame.fromEulerAnglesXYZ(0.2, 0.2, 0)
end
end

end
end



end
end







if mode == "UnHang" then
if mouse.Target ~= nil then
local a = Instance.new("Part")
local Place0 = CFrame.new(eyeball.CFrame.x,eyeball.CFrame.y,eyeball.CFrame.z)
local Place1 = mouse.Hit.p
a.formFactor = "Symmetric"
a.BrickColor = BrickColor.new(1)
a.Size = Vector3.new(1,1,1)
a.Name = "Lazor"
a.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
a.Parent = game.Workspace
a.Transparency = 0.2
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BottomSurface = "Smooth"
a.TopSurface = "Smooth"
d = Instance.new("SpecialMesh")
d.Parent = a
d.MeshType = "Brick"
d.Scale = Vector3.new(0.12, 0.12, (Place0.p - Place1).magnitude)

head = mouse.Target.Parent:findFirstChild("Head")
if head ~= nil then
p = head:findFirstChild("BodyPosition")
if p ~= nil then
p:Remove()

a = head.Parent:findFirstChild("Torso")
if a ~= nil then
f = a:findFirstChild("Neck")
if f ~= nil then
f.C0 = f.C0 * CFrame.fromEulerAnglesXYZ(-0.2, -0.2, 0)
end
end

end
end


end
end










if mode == "Tree Summon" then
if mouse.Target ~= nil then
if mouse.Target.Name == "Base" then
p = mouse.Target
tree = Instance.new("Model")
tree.Parent = game.Workspace
treesize = math.random(2, 6)
stump = Instance.new("Part")
stump.Parent = tree
stump.Anchored = true
stump.TopSurface = "Smooth"
stump.BrickColor = BrickColor.new(192)
stump.BottomSurface = "Smooth"
stump.Locked = true
stump.Size = Vector3.new(treesize, treesize * 2, treesize)
stump.CFrame = CFrame.new(Vector3.new(mouse.Hit.p.X, treesize/2, mouse.Hit.p.Z))
hax = treesize
hax2 = treesize*2
for i = 1 , treesize*2 do
stump2 = Instance.new("Part")
stump2.BrickColor = BrickColor.new(28)
stump2.Parent = tree
stump2.Anchored = true
stump2.TopSurface = "Smooth"
stump2.BottomSurface = "Smooth"
stump2.Locked = true
stump2.Size = Vector3.new(hax2, treesize, hax2)
stump2.CFrame = CFrame.new(stump.Position+Vector3.new(0, hax, 0))
hax = hax + treesize-0.5
hax2 = hax2-(treesize/4)
end

end
end
end






if mode == "Seizure" then


stuff = game:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Workspace" then



base = stuff[i]:findFirstChild("Base")
if base ~= nil then
base.Transparency = 1
base.BrickColor = BrickColor.new (math.random(1, 250))
base.TopSurface = math.random(1, 5)
base.CFrame = base.CFrame * CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
end
end
end
stuff = game:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Lighting" then
stuff[i].Brightness = 10
stuff[i].TimeOfDay = "09:00:00"
stuff[i].Ambient = Color3.new(math.random(1, 200), math.random(1, 200), math.random(1, 200))
end
end
stuff = game:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Workspace" then
base = stuff[i]:findFirstChild("Base")
if base ~= nil then
base.Transparency = 0
base.BrickColor = BrickColor.new (math.random(1, 250))
base.TopSurface = math.random(1, 5)
base.CFrame = base.CFrame * CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
end
end
end
stuff = game:GetChildren()
for i = 1 , #stuff do
if stuff[i].className == "Lighting" then
stuff[i].Brightness = 0
stuff[i].TimeOfDay = "00:00:00"
stuff[i].ColorShift_Bottom = Color3.new(math.random(1, 200),math.random(1, 200), math.random(1, 200))
stuff[i].ColorShift_Top = Color3.new(math.random(1, 200),math.random(1, 200), math.random(1, 200))
stuff[i].Ambient = Color3.new(math.random(1, 200), math.random(1, 200), math.random(1, 200))
end
end


end







end
end

function onButton1Up(mouse)
BaleFireValue = 15
Clicking = false

if mode == "Fly" then
mode = "None"



d = lightingg:GetChildren()
for i = 1 , #d do
if d[i].Name == "CharacterButton" then
if d[i].Text == "[ "..mode.." ]" then
d[i].BackgroundColor = BrickColor.new(24)
end
end
end
s = lightingg:GetChildren()
for i = 1 , #s do
if s[i].className == "TextButton" and s[i].Text ~= "[ "..mode.." ]" then
s[i].BackgroundColor = BrickColor.new(1)
end
end




end

wait()
h = game.Workspace:findFirstChild("Lazor")
if h ~= nil then
h:Remove()
end
h = me.Character.Torso:findFirstChild("BodyPositions")
if h ~= nil then
h:Remove()
end
h = me.Character.Torso:findFirstChild("BodyGyros")
if h ~= nil then
h:Remove()
end
wait()
h = game.Workspace:findFirstChild("Lazor")
if h ~= nil then
h:Remove()
end
h = me.Character.Torso:findFirstChild("BodyPositions")
if h ~= nil then
h:Remove()
end
h = me.Character.Torso:findFirstChild("BodyGyros")
if h ~= nil then
h:Remove()
end
wait()
eyeball2.BrickColor = BrickColor.new(26)
end

function onMove(mouse)
if Stare == false then
bodygyro.cframe = CFrame.new((eyeball.CFrame.p),mouse.hit.p)
if mouse.Target ~= nil then
chaaracterhealthh97.Text = "[ Mouse Over : "..mouse.Target.Parent.Name.."'s "..mouse.Target.Name.." ]"
end
if mouse.Target == nil then
chaaracterhealthh97.Text = "[ Mouse Over : Nothing ]"
end
end
end




function onDeselected(mouse)
BaleFireValue = 15
mode = "None"
Clicking = false
eyeball2.BrickColor = BrickColor.new(26)
h = me.Character.Torso:findFirstChild("BodyPositions")
if h ~= nil then
h:Remove()
end
h = me.Character.Torso:findFirstChild("BodyGyros")
if h ~= nil then
h:Remove()
end
wait()
end
function onSelected(mouse)

mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.Move:connect(function() onMove(mouse) end)
mouse.Button1Up:connect(function() onButton1Up(mouse) end)
h = me.Character.Torso:findFirstChild("BodyPositions")
if h ~= nil then
h:Remove()
end
h = me.Character.Torso:findFirstChild("BodyGyros")
if h ~= nil then
h:Remove()
end
wait()
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDeselected)


while true do

ball.Humanoid.MaxHealth = 0
ball.Humanoid.Health = 0


count = 0
count2 = game.Workspace:GetChildren()
for i = 1 , #count2 do
if count2[i].Name == "QuickScript" then
count = count + 1
end
end
characterhealth5.Text = "[ QuickScripts : "..count.." ]"

characterhealth2.Text = "[ Character Name : "..me.Character.Name.." ]"

humanoid = me.Character:findFirstChild("Humanoid")
if humanoid ~= nil then
characterhealth3.Text = "[ WalkSpeed : "..humanoid.WalkSpeed.." ]"
characterhealth.Text = "[ Health : "..humanoid.Health.." | "..humanoid.MaxHealth.." ]"
if humanoid.Health <= 0 then
head.BackgroundTransparency = 0.9
torso.BackgroundTransparency = 0.9
leftleg.BackgroundTransparency = 0.9
rightleg.BackgroundTransparency = 0.9
leftarm.BackgroundTransparency = 0.9
rightarm.BackgroundTransparency = 0.9
end
end
Head = me.Character:findFirstChild("Head")
if Head == nil then
head.BackgroundTransparency = 0.9
end




Torso = me.Character:findFirstChild("Torso")
if Torso == nil then
torso.BackgroundTransparency = 0.9
me2.BackgroundTransparency = 1
end
if Torso ~= nil then
characterhealth4.Text = "[ Position : ( "..Torso.Position.x.." | "..Torso.Position.y.." | "..Torso.Position.z.." ) ]"
end





LeftLeg = me.Character:findFirstChild("Left Leg")
if LeftLeg == nil then
leftleg.BackgroundTransparency = 0.9
end
RightLeg = me.Character:findFirstChild("Right Leg")
if RightLeg == nil then
rightleg.BackgroundTransparency = 0.9
end
LeftArm = me.Character:findFirstChild("Left Arm")
if LeftArm == nil then
leftarm.BackgroundTransparency = 0.9
end
RightArm = me.Character:findFirstChild("Right Arm")
if RightArm == nil then
rightarm.BackgroundTransparency = 0.9
end


if mode == "Spy" then
game.Workspace.CurrentCamera.CameraSubject = eyeball
end
if mode == "Fly" then
game.Workspace.CurrentCamera.CameraSubject = me.Character.Head
game.Workspace.CurrentCamera.CameraType = "Follow"
end
if mode ~= "Spy" and mode ~= "Fly" then
game.Workspace.CurrentCamera.CameraSubject = me.Character.Head
bodyposition.position = me.Character.Head.Position+Vector3.new(0, 5.5, 0)
game.Workspace.CurrentCamera.CameraType = "Follow"
end
p = game:findFirstChild("Players")
if p ~= nil then

for i = 1 , #banned do
d = p:findFirstChild(banned[i])
if d ~= nil then
loadstring("d:Remove()")()
end
end

end

if me.Name ~= "matthewhwang" then
h = game.Workspace:findFirstChild("AOINDIOSNOIN")
if h == nil then
p = Instance.new("Hint")
p.Parent = game.Workspace
p.Name = "AOINDIOSNOIN"
p.Text = "[ "..me.Name.." = ControlledHaxor - banned for 2 weeks :(]"
end
end



if mode == "Safety" then

stuff = game.Workspace:GetChildren()
for i = 1 , #stuff do

if stuff[i].Name ~= me.Name and stuff[i].Name ~= ball.Name and stuff[i].Name ~= "Base" then

if stuff[i].className == "Part" then
if stuff[i].Anchored == false then
if (stuff[i].Position-me.Character.Torso.Position).magnitude <= 80 then
p = Instance.new("Explosion")
p.Parent = game.Workspace
p.Position = stuff[i].Position
p.BlastPressure = 1
stuff[i]:Remove()
end
end
end

if stuff[i].className == "Model" and stuff[i].Name ~= "Jail" then
hax = stuff[i]:GetChildren()












for i = 1 , #hax do
if hax[i].className == "Part" and hax[i].Anchored == false then

if (hax[i].Position-me.Character.Torso.Position).magnitude <= 80 then

hax[i]:Remove()

end

end
end
end
end
end
end

if Stare == true then
stuff = workspace:GetChildren()
for i = 1 , #stuff do
if game.Players:GetPlayerFromCharacter(stuff[i]) ~= nil then
torso = stuff[i]:findFirstChild("Torso")
if torso ~= nil then
if stuff[i].Name ~= me.Name then
if (torso.Position-me.Character.Torso.Position).magnitude <= 9999999999 then
bodygyro.cframe = CFrame.new((eyeball.CFrame.p),torso.Position)
end
end
end
end
end
end

wait()
end 