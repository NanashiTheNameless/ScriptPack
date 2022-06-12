--[[Works only with localscript:P!]]---
-----------------------------------------------------
local plyr = game.Players["peyquinn"]--[[YOUR NAME GOES THERE!!]]--

-----------------------------------------------------


local bin = Instance.new("HopperBin",plyr.Backpack)
bin.Name = "[Select]"
follow_to = "peyquinn"
script.Name = "[Source]"
mode = "NO MODE SELECTED"
--------------------------------------------------------------------
commands = {"Open Slot[Q]","Close Slot[Q]","Follow[F]","Stop[F]","Open Help[E]","Close Help[E]","Chat[C]","Kill[K]","RemoveItem[R]","ForceField[M]","Explosive[X]","Slime[L]","GrabPlayer[Z]","Trip Mine[T]","Wood Brick[Y]","Pet Slime[G]"} --[[IF YOU'RE GOING TO MAKE YOUR OWN COMMANDS, PUT THEM IN HERE AFTER YOU HAVE SCRIPTED THEM(Advanced scripters only)]]--
--------------------------------------------------------------------
ballcolors = {"Bright red","Bright blue","Bright yellow","White","Lime green","Bright green","Bright orange"}
chats = {"Hi I'm an orb!","How are you?","I SHALL SLIME ON YOU!","Telamon!","peyquinn rocks:3","I'm a beast bro!","lol","what's up?:P?",":D",":)","x3","XD",":("}

mshID = "http://www.roblox.com/asset/?id=18817409"
txtID = "http://www.roblox.com/asset/?id=18817387"
mshScale = Vector3.new(1.05, 1.05, 1.05)

----------------------------------------------------

--[[TIME TO MAKE FUNCTION!]]--

local shootsound = Instance.new("Sound",script)
shootsound.SoundId = "http://www.roblox.com/asset/?id=1369158"
function startmnu()
local starthelp = Instance.new("ScreenGui",plyr.PlayerGui)
starthelp.Name = "Intro"
local startframe = Instance.new("Frame",starthelp)
startframe.Size = UDim2.new(1,0,0,80)
startframe.Position = UDim2.new(-1,0,0,0)
startframe.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
startframe.BorderColor3 = Color3.new(255/255,0/255,0/255)
startframe.BackgroundTransparency = 0.3
local starttext = Instance.new("TextLabel",startframe)
starttext.Text = "!PLEASE CLICK 'E' KEY FOR HELP ON GUARD BOT!"
starttext.Font = "ArialBold"
starttext.FontSize = "Size36"
starttext.Position = UDim2.new(0,550,0,40)
starttext.TextColor3 = Color3.new(255/255,255/255,255/255)
starttext.BackgroundTransparency = 1
startframe:TweenPosition(UDim2.new(0,0,0,0))
wait(4)
startframe:TweenPosition(UDim2.new(1,0,0,0))
wait(1)
starthelp:Remove()
end
local gui = Instance.new("ScreenGui")
gui.Name = "MainGui"
local frame = Instance.new("Frame",gui)
frame.Name = "MainFrame"
frame.Size = UDim2.new(0,200,0,250)
frame.Position = UDim2.new(0.4,0,0,-300)
frame.BorderColor3 = Color3.new(255/255,0/255,0/255)
frame.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
frame.BackgroundTransparency = 0.3
local chtbox = Instance.new("TextBox",frame)
chtbox.Name = "ChatBox"
chtbox.Size = UDim2.new(0,200,0,50)
chtbox.Position = UDim2.new(0,0,0,200)
chtbox.Font = "ArialBold"
chtbox.FontSize = "Size14"
chtbox.TextColor3 = Color3.new(255/255,255/255,255/255)
chtbox.TextStrokeColor3 = Color3.new(255/255,0/255,0/255)
chtbox.TextStrokeTransparency = 0
chtbox.BorderColor3 = Color3.new(255/255,0/255,0/255)
chtbox.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
chtbox.Text = "Hello, this is where you put chat!"
chtbox.Visible = false
local txtbox = Instance.new("TextBox",frame)
txtbox.Name = "peyquinn"
txtbox.Size = UDim2.new(0,200,0,50)
txtbox.Position = UDim2.new(0,0,0,100)
txtbox.Font = "ArialBold"
txtbox.FontSize = "Size14"
txtbox.TextColor3 = Color3.new(255/255,255/255,255/255)
txtbox.TextStrokeColor3 = Color3.new(255/255,0/255,0/255)
txtbox.TextStrokeTransparency = 0
txtbox.BorderColor3 = Color3.new(255/255,0/255,0/255)
txtbox.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
txtbox.Text = "PlayerName"
local modebox = Instance.new("TextLabel",frame)
modebox.Name = "ModeBox"
modebox.Size = UDim2.new(0,200,0,0)
modebox.Position = UDim2.new(0,0,0,20)
modebox.Font = "ArialBold"
modebox.FontSize = "Size24"
modebox.TextColor3 = Color3.new(0/255,0/255,0/255)
modebox.TextStrokeColor3 = Color3.new(255/255,255/255,255/255)
modebox.TextStrokeTransparency = 0
modebox.Text = mode
local slimeframe = Instance.new("Frame",gui)
slimeframe.Name = "SlimeControls"
slimeframe.Size = UDim2.new(0,250,0,325)
slimeframe.Position = UDim2.new(0,0,0,-351)
slimeframe.BorderColor3 = Color3.new(255/255,0/255,0/255)
slimeframe.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
local title = Instance.new("TextLabel",slimeframe)
title.TextStrokeColor3 = Color3.new(255/255,0/255,0/255)
title.TextStrokeTransparency = 0
title.TextColor3 = Color3.new(0/255,0/255,0/255)
title.Font = "ArialBold"
title.FontSize = "Size18"
title.Text = "Slime Controller"
title.Position = UDim2.new(0,125,0,15)
local cb = Instance.new("TextButton",slimeframe)
cb.Name = "ChatButton"
cb.Size = UDim2.new(0,125,0,50)
cb.Position = UDim2.new(0,0,0,25)
cb.Style = "RobloxButtonDefault"
cb.Font = "ArialBold"
cb.FontSize = "Size18"
cb.Text = "Chat!"
cb.TextColor3 = Color3.new(255/255,255/255,255/255)
local ct = Instance.new("TextBox",slimeframe)
ct.Name = "ChatBox"
ct.Size = UDim2.new(0,125,0,50)
ct.Position = UDim2.new(0,125,0,25)
ct.BorderColor3 = Color3.new(255/255,0/255,0/255)
ct.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
ct.Font = "ArialBold"
ct.FontSize = "Size18"
ct.Text = "ChatGoesHere"
ct.TextColor3 = Color3.new(255/255,255/255,255/255)
local fb = Instance.new("TextButton",slimeframe)
fb.Name = "followzButton"
fb.Size = UDim2.new(0,250,0,50)
fb.Position = UDim2.new(0,0,0,75)
fb.Style = "RobloxButtonDefault"
fb.Font = "ArialBold"
fb.FontSize = "Size18"
fb.Text = "followz"
fb.TextColor3 = Color3.new(255/255,255/255,255/255)
local sb = Instance.new("TextButton",slimeframe)
sb.Name = "StopButton"
sb.Size = UDim2.new(0,250,0,50)
sb.Position = UDim2.new(0,0,0,125)
sb.Style = "RobloxButtonDefault"
sb.Font = "ArialBold"
sb.FontSize = "Size18"
sb.Text = "Stop followz"
sb.TextColor3 = Color3.new(255/255,255/255,255/255)
local gc = Instance.new("TextButton",slimeframe)
gc.Name = "GreenButton"
gc.Size = UDim2.new(0,250,0,50)
gc.Position = UDim2.new(0,0,0,175)
gc.Style = "RobloxButtonDefault"
gc.Font = "ArialBold"
gc.FontSize = "Size18"
gc.Text = "Change To Green"
gc.TextColor3 = Color3.new(255/255,255/255,255/255)
local rc = Instance.new("TextButton",slimeframe)
rc.Name = "RedButton"
rc.Size = UDim2.new(0,250,0,50)
rc.Position = UDim2.new(0,0,0,225)
rc.Style = "RobloxButtonDefault"
rc.Font = "ArialBold"
rc.FontSize = "Size18"
rc.Text = "Change To Red"
rc.TextColor3 = Color3.new(255/255,255/255,255/255)
local bc = Instance.new("TextButton",slimeframe)
bc.Name = "BlueButton"
bc.Size = UDim2.new(0,250,0,50)
bc.Position = UDim2.new(0,0,0,275)
bc.Style = "RobloxButtonDefault"
bc.Font = "ArialBold"
bc.FontSize = "Size18"
bc.Text = "Change To Blue"
bc.TextColor3 = Color3.new(255/255,255/255,255/255)
-------------[[HELP MENU!]]-------------------------------
local hlpmenu = Instance.new("Frame",gui)
hlpmenu.Name = "HelpMenu"
hlpmenu.Size = UDim2.new(1,0,0,80)
hlpmenu.Position = UDim2.new(0,0,0,-161)
hlpmenu.BackgroundTransparency = 0.3
hlpmenu.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
hlpmenu.BorderColor3 = Color3.new(255/255,0/255,0/255)
curpos = UDim2.new(0,50,0,10)
local dropdownb = Instance.new("TextButton",hlpmenu)
dropdownb.Name = "DropDownButton"
dropdownb.Style = "RobloxButtonDefault"
dropdownb.Size = UDim2.new(0,150,0,80)
dropdownb.Position = UDim2.new(0.5,0,0,81)
dropdownb.TextColor3 = Color3.new(255/255,255/255,255/255)
dropdownb.Font = "ArialBold"
dropdownb.FontSize = "Size24"
dropdownb.Text = "More Help"
local dropdownmnu = Instance.new("Frame",hlpmenu)
dropdownmnu.Size = UDim2.new(1,0,0,800)
dropdownmnu.Position = UDim2.new(0,0,15,0)
dropdownmnu.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
dropdownmnu.BorderColor3 = Color3.new(255/255,0/255,0/255)
dropdownmnu.BackgroundTransparency = 0.3
local helptxt = Instance.new("TextLabel",dropdownb)
helptxt.Text = "UNICORNS :3! had nothing else to write o_o"
helptxt.Font = "ArialBold"
helptxt.FontSize = "Size24"
helptxt.TextColor3 = Color3.new(255/255,0/255,0/255)
helptxt.BackgroundTransparency = 1
for i = 1, #commands do
local txtlbl = Instance.new("TextLabel",hlpmenu)
txtlbl.TextColor3 = Color3.new(255/255,0/255,0/255)
txtlbl.Name = "Command"
txtlbl.Font = "ArialBold"
txtlbl.FontSize = "Size14"
txtlbl.Text = commands[i]
txtlbl.Position = curpos
curpos = curpos + UDim2.new(0,100,0,0)
if i == 8 then
curpos = UDim2.new(0,50,0,60)
end
end
------------[[This is where we create are robot!]]----------------
local bot = Instance.new("Model")
bot.Name= plyr.peyquinn.."peyquinn's Guard"
local human = Instance.new("Humanoid",bot)
human.Name = "NameSetter"
human.MaxHealth = 0
human.WalkSpeed = 0
local head = Instance.new("Part",bot)
head.Name = "Head"
head.CanCollide = false
head.Archivable = false
head.FormFactor = "Symmetric"
head.Size = Vector3.new(1,1,1)
local mesh = Instance.new("SpecialMesh",head)
mesh.MeshId = mshID
mesh.TextureId = txtID
mesh.Scale = mshScale
mesh.MeshType = "FileMesh"
local fly = Instance.new("BodyPosition",head)
fly.Name = "Fly"
fly.position = Vector3.new(0,125,0)
fly.maxForce = Vector3.new(150000000000000, 150000000000000, 150000000000000)
local upstraight = Instance.new("BodyGyro",head) 
local laser = Instance.new("SelectionPartLasso",head)
laser.Name = "Laser"
laser.Color = BrickColor.new("Bright red")
laser.Transparency = 0
laser.Visible = false 
--------CREATING PET SLIME!-------------------------------------------
local PetSlime = Instance.new("Part")
PetSlime.Name = plyr.peyquinn.."peyquinn's Slime"
local part1 = Instance.new("Part",PetSlime)
part1.Name = "Head"
part1.Shape = "Ball"
part1.Size = Vector3.new(5,5,5)
part1.CFrame = CFrame.new(plyr.Character.Head.Position + Vector3.new(0,5,0))
part1.BrickColor = BrickColor.new("Really black")
part1.Transparency = 0.4
part1.TopSurface = "Smooth"
part1.BottomSurface = "Smooth"
local part2 = Instance.new("Part",PetSlime)
part2.Name = "Torso"
part2.Shape = "Ball"
part2.Size = Vector3.new(3,3,3)
part2.CFrame = CFrame.new(part1.Position)
part2.BrickColor = BrickColor.new("Really blue")
part2.Transparency = 0.3
part2.TopSurface = "Smooth"
part2.BottomSurface = "Smooth"
local weldz = Instance.new("Weld",part2)
weldz.Part0 = part2
weldz.Part1 = part1
local humanuu = Instance.new("Humanoid",PetSlime)
humanuu.MaxHealth = 0
humanuu.Health = 0
local followzz = Instance.new("BodyPosition",part2)
followzz.maxForce = Vector3.new(180000,0,180000)


--------------------------[[Now we set the basic follow functions!]]---------------------------------------------
function setmode()
modebox.Text = mode
chtbox.Visible = false
end
function follow()
local flyplyr = game.Workspace:findFirstChild(follow_to)
if flyplyr then
head.Anchored = false
while true do
wait()
fly.position = flyplyr.Head.Position + Vector3.new(3,3,3)
end
end
end
function stopfollowing()
head.Anchored = true
end


function follower()
while true do
wait()
PetSlime.Torso.BodyPosition.position = plyr.Character.Head.Position + Vector3.new(5,0,5)
end
end
----------------------------------[[MAIN TOOL FUNCTION!!!]]------------------------------------------------------
openmode1 = false
openmode2 = false
followmode = false
bin.Selected:connect(function(mouse)
gui.Parent = plyr.PlayerGui
bot.Parent = plyr.Character
-----------------------------
mouse.KeyDown:connect(function(key)
if (key:lower() == "q") then
mode = "Open/Close" setmode()
if openmode1 == false then
frame:TweenPosition(UDim2.new(0.4,0,0,0))
openmode1 = true
else
frame:TweenPosition(UDim2.new(0.4,0,0,-300))
openmode1 = false
end
end
if (key:lower() == "f") then
mode = "Follow/Stop" setmode()
if followmode == false then
followmode = true
follow_to = txtbox.Text
follow()
else
followmode = false
stopfollowing()
end
end
if (key:lower() == "e") then
mode = "Help Menu" setmode()
if openmode2 == false then
hlpmenu:TweenPosition(UDim2.new(0,0,0,0))
openmode2 = true
else
hlpmenu:TweenPosition(UDim2.new(0,0,0,-161))
openmode2 = false
end
end

if (key:lower() == "c") then 
mode = "Chat" setmode()
openmode1 = true 
frame:TweenPosition(UDim2.new(0.4,0,0,0))
chtbox.Visible = true
local plr = game.Workspace:findFirstChild(txtbox.Text) 
if plr then
game:GetService("Chat"):Chat(plr.Head,plr.Name..": "..chtbox.Text,Enum.ChatColor.Green)
else
end
end

if (key:lower() == "k") then 
mode = "Kill" setmode()
openmode1 = true 
frame:TweenPosition(UDim2.new(0.4,0,0,0))
local plr = game.Workspace:findFirstChild(txtbox.Text)
if plr then
laser.Visible = true
laser.Humanoid = plr.Humanoid
laser.Part = bot.Head
shootsound:Play()
wait(0.1)
laser.Visible = false
wait(0.02)
plr.Humanoid.Health = 0
else
end
end

if (key:lower() == "x") then 
mode = "Explode" setmode()
openmode1 = true 
frame:TweenPosition(UDim2.new(0.4,0,0,0))
local plr = game.Workspace:findFirstChild(txtbox.Text)
if plr then
laser.Visible = true
laser.Humanoid = plr.Humanoid
laser.Part = bot.Head
shootsound:Play()
local explosive = Instance.new("Explosion",workspace)
explosive.Position = plr.Torso.Position
explosive.BlastPressure = 10000000
explosive.BlastRadius = 5
wait(0.1)
laser.Visible = false
wait(0.02)
plr.Humanoid.Health = 0
else
end
end

if (key:lower() == "m") then 
mode = "ForceField" setmode()
openmode1 = true 
frame:TweenPosition(UDim2.new(0.4,0,0,0))
local plr = game.Workspace:findFirstChild(txtbox.Text)
if plr then
local ff = Instance.new("ForceField",plr)
else
end
end

if (key:lower() == "l") then 
local figure = Instance.new("Model",workspace)
figure.Name = "Slime"
local ftorso = Instance.new("Part",figure)
ftorso.Name = "Torso"
ftorso.formFactor = "Symmetric"
ftorso.Size = Vector3.new(5,5,5) 
ftorso.Position = plyr.Character.Head.Position + Vector3.new(5,5,5)
ftorso.BrickColor = BrickColor.new("Really black")
ftorso.Transparency = 0.3
ftorso.Shape = "Ball"
ftorso.TopSurface = "Smooth"
ftorso.BottomSurface = "Smooth"
local fhead = Instance.new("Part",figure)
fhead.Name = "Head"
fhead.formFactor = "Symmetric"
fhead.Size = Vector3.new(2,2,2) 
fhead.Position = ftorso.Position
fhead.BrickColor = BrickColor.random(1,ballcolors)
fhead.Shape = "Ball"
fhead.TopSurface = "Smooth"
fhead.BottomSurface = "Smooth"
weld = Instance.new("Weld",figure)
weld.Part0 = fhead
weld.Part1 = ftorso
local human2 = Instance.new("Humanoid",figure)
human2.Health = 100
human2.MaxHealth = 100
figure:MakeJoints()
figure:MoveTo(plyr.Character.Head.Position + Vector3.new(8,5,8))
laser.Humanoid = human2
laser.Part = bot.Head
laser.Color = BrickColor.new("Bright yellow")
laser.Visible = true
wait(0.3)
laser.Visible = false
laser.Color = BrickColor.new("Bright red")
function workmagic()
while true do
wait(1)
human2:MoveTo(Vector3.new(math.random(-512,512), 3, math.random(-512,512)), workspace.Base)
game:GetService("Chat"):Chat(fhead,chats[math.random(1, #chats)],Enum.ChatColor.Blue)
if human2.Health <= 0 then
game:GetService("Chat"):Chat(fhead,"OMG I DIED!!! NOOOOB!",Enum.ChatColor.Red)
wait(2)
figure:Remove()
else
end
end
end
workmagic()
end

if (key:lower() == "y") then 
mode = "Wooden Brick" setmode()
local wood = Instance.new("Part",workspace)
wood.Name = "Wooden Brick"
wood.Material = "Wood"
wood.formFactor = "Symmetric"
wood.Size = Vector3.new(2,2,4)
wood.CFrame = CFrame.new(plyr.Character.Head.Position + Vector3.new(0,2,0))
wood.BrickColor = BrickColor.new("Brown")
wood.Anchored = false
local fixerthing = Instance.new("Humanoid",wood)
laser.Humanoid = fixerthing
laser.Part = bot.Head
laser.Color = BrickColor.new("Bright yellow")
laser.Visible = true
wait(0.3)
fixerthing:Remove()
laser.Visible = false
laser.Color = BrickColor.new("Bright red")
end 

if (key:lower() == "g") then
mode = "Pet Slime" setmode()
PetSlime.Parent = plyr.Character
slimeframe:TweenPosition(UDim2.new(0,0,0,250), 0.1)
local plr = game.Workspace:findFirstChild(plyr.peyquinn)
if plr then
follower() 
end
end 

----------------------------------------------------------------
if (key:lower() == "r") then
local plr = game.Workspace:findFirstChild(txtbox.Text)
if plr then
local thing = plr.Head:findFirstChild(mode)
if thing then
thing:Remove()
else
local thing2 = plr:findFirstChild(mode)
if thing2 then
thing2:Remove()
else
local thing3 = game.Workspace:findFirstChild(mode)
if thing3 then
thing3:Remove()
end
end
end
end
end 

----------------
end)
end)
bin.Deselected:connect(function(mouse)
bot.Parent = bin
gui.Parent = bin
end)
------------
dropmnuvlu = 1
dropdownb.MouseButton1Click:connect(function()
if dropmnuvlu == 1 then
dropmnuvlu = 2
dropdownmnu:TweenPosition(UDim2.new(0,0,0,161))
dropdownb.Text = "Less Help"
else
dropmnuvlu = 1
dropdownmnu:TweenPosition(UDim2.new(0,0,15,0))
dropdownb.Text = "More Help"
end
end)

cb.MouseButton1Click:connect(function()
game:GetService("Chat"):Chat(part1,PetSlime.Name..": "..ct.Text,Enum.ChatColor.Red)
end) 
fb.MouseButton1Click:connect(function()
part1.Anchored = false
end)
sb.MouseButton1Click:connect(function()
part1.Anchored = true
end)
gc.MouseButton1Click:connect(function()
part2.BrickColor = BrickColor.new("Lime green")
end)
rc.MouseButton1Click:connect(function()
part2.BrickColor = BrickColor.new("Really red")
end)
bc.MouseButton1Click:connect(function()
part2.BrickColor = BrickColor.new("Really blue")
end)

startmnu()