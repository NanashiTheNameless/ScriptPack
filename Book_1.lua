player = game.Players.LocalPlayer
char = player.Character

key1 = "q" 
key2 = "e"

bookcovercol = "Really black"

scriptname = "P4G3"

page = 1

torso = char.Torso
head = char.Head
leftarm = char["Left Arm"]
rightarm = char["Right Arm"]
leftleg = char["Left Leg"]
rightleg = char["Right Leg"]
humanoid = char["Humanoid"]

chat = game:GetService("Chat")

function plchat(msg)
chat:Chat(head, msg, 2)
end

startphrases={
"Oh! So that's where I put page 18!";
"I assure you this is NOT a cook book!";
"..Now where did I put that alchemy book..."
}

deathphrases={
"I'll be back!";
"Oh bugger.";
"Bother!"
}

hb = Instance.new("HopperBin", player.Backpack)
hb.Name = scriptname
scriptmodel = Instance.new("Model", char)
scriptmodel.Name = scriptname

-- New parts --

function newweld(wp0,wp1,wc0)
local weld = Instance.new("Weld")
weld.Parent = wp0
weld.Part0 = wp0
weld.Part1 = wp1
weld.C0 = wc0
end

scrollbinder = Instance.new("Part",char)
scrollbinder.FormFactor = "Custom"
scrollbinder.Size = Vector3.new(0.2,0.2,0.2)
scrollbinder.BrickColor = BrickColor.new(bookcovercol)
scrollbinder.TopSurface = "Smooth"
scrollbinder.BottomSurface = "Smooth"
scrollbinder.CanCollide = false
scrollbinder.Anchored = false
scrollbinder.Position = torso.Position
newweld(rightarm,scrollbinder,CFrame.new(0,-1.1,0)*CFrame.Angles(math.rad(90),0,0))
scrollbindermesh = Instance.new("BlockMesh",scrollbinder)
scrollbindermesh.Scale = Vector3.new(1,6,1)

scrollbinder2 = Instance.new("Part",char)
scrollbinder2.FormFactor = "Custom"
scrollbinder2.Size = Vector3.new(0.2,0.2,0.2)
scrollbinder2.BrickColor = BrickColor.new(bookcovercol)
scrollbinder2.TopSurface = "Smooth"
scrollbinder2.BottomSurface = "Smooth"
scrollbinder2.CanCollide = false
scrollbinder2.Anchored = false
scrollbinder2.Position = torso.Position
newweld(leftarm,scrollbinder2,CFrame.new(0,-1.1,0)*CFrame.Angles(math.rad(90),0,0))
scrollbinder2mesh = Instance.new("BlockMesh",scrollbinder2)
scrollbinder2mesh.Scale = Vector3.new(1,6,1)

scrolllight1 = Instance.new("Part",char)
scrolllight1.FormFactor = "Custom"
scrolllight1.Size = Vector3.new(0.2,0.2,0.2)
scrolllight1.BrickColor = BrickColor.new(bookcovercol)
scrolllight1.TopSurface = "Smooth"
scrolllight1.BottomSurface = "Smooth"
scrolllight1.CanCollide = false
scrolllight1.Anchored = false
scrolllight1.Position = torso.Position
coroutine.resume(coroutine.create(function()
while wait() do
if equi == true then
for i = 0,0.6,0.1 do
scrolllight1.Reflectance = i
wait()
end
for i = 0.6,0,-0.1 do
scrolllight1.Reflectance = i
wait()
end
end
end
end))
newweld(scrollbinder,scrolllight1,CFrame.new(0,-0.2,0))
scrolllight1mesh = Instance.new("BlockMesh",scrolllight1)
scrolllight1mesh.Scale = Vector3.new(1.01,0.2,1.01)

scrolllight2 = Instance.new("Part",char)
scrolllight2.FormFactor = "Custom"
scrolllight2.Size = Vector3.new(0.2,0.2,0.2)
scrolllight2.BrickColor = BrickColor.new(bookcovercol)
scrolllight2.TopSurface = "Smooth"
scrolllight2.BottomSurface = "Smooth"
scrolllight2.CanCollide = false
scrolllight2.Anchored = false
scrolllight2.Position = torso.Position
coroutine.resume(coroutine.create(function()
while wait() do
if equi == true then
for i = 0,0.6,0.1 do
scrolllight2.Reflectance = i
wait()
end
for i = 0.6,0,-0.1 do
scrolllight2.Reflectance = i
wait()
end
end
end
end))
newweld(scrollbinder,scrolllight2,CFrame.new(0,0.2,0))
scrolllight2mesh = Instance.new("BlockMesh",scrolllight2)
scrolllight2mesh.Scale = Vector3.new(1.01,0.2,1.01)

scrolllight21 = Instance.new("Part",char)
scrolllight21.FormFactor = "Custom"
scrolllight21.Size = Vector3.new(0.2,0.2,0.2)
scrolllight21.BrickColor = BrickColor.new(bookcovercol)
scrolllight21.TopSurface = "Smooth"
scrolllight21.BottomSurface = "Smooth"
scrolllight21.CanCollide = false
scrolllight21.Anchored = false
scrolllight21.Position = torso.Position
coroutine.resume(coroutine.create(function()
while wait() do
if equi == true then
for i = 0,0.6,0.1 do
scrolllight21.Reflectance = i
wait()
end
for i = 0.6,0,-0.1 do
scrolllight21.Reflectance = i
wait()
end
end
end
end))
newweld(scrollbinder2,scrolllight21,CFrame.new(0,-0.2,0))
scrolllight21mesh = Instance.new("BlockMesh",scrolllight21)
scrolllight21mesh.Scale = Vector3.new(1.01,0.2,1.01)

scrolllight22 = Instance.new("Part",char)
scrolllight22.FormFactor = "Custom"
scrolllight22.Size = Vector3.new(0.2,0.2,0.2)
scrolllight22.BrickColor = BrickColor.new(bookcovercol)
scrolllight22.TopSurface = "Smooth"
scrolllight22.BottomSurface = "Smooth"
scrolllight22.CanCollide = false
scrolllight22.Anchored = false
scrolllight22.Position = torso.Position
coroutine.resume(coroutine.create(function()
while wait() do
if equi == true then
for i = 0,0.6,0.1 do
scrolllight22.Reflectance = i
wait()
end
for i = 0.6,0,-0.1 do
scrolllight22.Reflectance = i
wait()
end
end
end
end))
newweld(scrollbinder2,scrolllight22,CFrame.new(0,0.2,0))
scrolllight22mesh = Instance.new("BlockMesh",scrolllight22)
scrolllight22mesh.Scale = Vector3.new(1.01,0.2,1.01)

scroll = Instance.new("Part",char)
scroll.FormFactor = "Custom"
scroll.Size = Vector3.new(0.2,0.2,0.2)
scroll.BrickColor = BrickColor.new("White")
scroll.TopSurface = "Smooth"
scroll.BottomSurface = "Smooth"
scroll.CanCollide = false
scroll.Anchored = false
scroll.Position = torso.Position
scroll.Transparency = 1
newweld(torso,scroll,CFrame.new(0,0.5,-2.1)*CFrame.Angles(0,0,0))
scrollmesh = Instance.new("BlockMesh",scroll)
scrollmesh.Scale = Vector3.new(6,5.98,0.1)

slash = Instance.new("Sound", torso)
slash.SoundId = "rbxasset://sounds/swordlunge.wav"
slash.Pitch = 1
slash.Volume = 0.6
charge = Instance.new("Sound",torso)
charge.Looped = true
charge.SoundId = "http://www.roblox.com/asset/?id=75421988"
charge.Volume = 1
charge.Pitch = 1
charge.Parent = torso
rages = Instance.new("Sound",torso)
rages.SoundId = "http://www.roblox.com/asset/?id=32788951"
rages.Volume = 1
rages.Pitch = 1.3
rages.Parent = torso
hitsound = Instance.new("Sound",torso)
hitsound.SoundId = "http://www.roblox.com/asset/?id=2801263"
hitsound.Volume = 0.5
hitsound.Pitch = 2.3
gunshot = Instance.new("Sound", torso)
gunshot.SoundId = "http://roblox.com/asset/?id=10209798"
gunshot.Pitch = 1.4
gunshot.Volume = 10

gyro = Instance.new("BodyGyro")

function dmgcounter(part,name)
dmgcm = Instance.new("Model", part.Parent)
dmgcm.Name = name
dmgc = Instance.new("Part", dmgcm)
dmgc.Name = "Head"
dmgc.BrickColor = BrickColor.new("Bright red")
dmgc.FormFactor = "Custom"
dmgc.Size = Vector3.new(0.7,0.2,0.7)
dmgc.TopSurface = "Smooth"
dmgc.BottomSurface = "Smooth"
dmgc.CanCollide = false
dmgc.Anchored = true
Instance.new("Humanoid", dmgcm).MaxHealth = 0
game:GetService("Debris"):AddItem(dmgcm,3)
dmgc.CFrame = CFrame.new(part.CFrame.x+math.random(-2,2),math.random(7,8),part.CFrame.z+math.random(-2,2))
coroutine.resume(coroutine.create(function()
while true do
wait(0.1)
dmgc.CFrame = dmgc.CFrame*CFrame.new(0,0.01,0)
end
end))
end

rephead = head:Clone()
rephead.Parent = char
newweld(head,rephead,CFrame.new())
head.Transparency = 1

-- Important values! >:O (That means don't touch. |:C) --
switching = false
mode = 1
clicking = false
equi = false
guiup = false
dmgcool = false
local c0 = nil
local c1 = nil
local c02 = nil
local c12 = nil
local s = nil
local s2 = nil
local w = nil
local t = nil
local c = nil

-- Gui

gui1 = Instance.new("ScreenGui", player.PlayerGui)
gui1.Name = "Health"
IntroFrame = Instance.new("Frame", gui1)
IntroFrame.Name = "Health"
IntroFrame.Position = UDim2.new(-0.2,0,0.5,0)
IntroFrame.Style = "RobloxRound"
IntroFrame.Size = UDim2.new(0.2,0,0.2,0)
introt = Instance.new("TextLabel", IntroFrame)
introt.BorderSizePixel = 0
introt.BackgroundTransparency = 1
introt.TextColor3 = BrickColor.new("Institutional White").Color
introt.Text = scriptname.." has loaded!"
introt.Position = UDim2.new(0.5,0,0.4,0)
introt.Font = 2
introt.FontSize = 7
coroutine.resume(coroutine.create(function()
IntroFrame:TweenPosition(UDim2.new(0.5,-125,0.5,0),"In",4)
wait(3)
IntroFrame:TweenPosition(UDim2.new(0.5,-125,1,0),"Out",4)
end))
pageframe = Instance.new("Frame", gui1)
pageframe.Name = "Health"
pageframe.Position = UDim2.new(0.5,-125,0,-10)
pageframe.Style = "RobloxRound"
pageframe.Size = UDim2.new(0.2,0,0.2,0)
paget = Instance.new("TextLabel", pageframe)
paget.BorderSizePixel = 0
paget.BackgroundTransparency = 1
paget.TextColor3 = BrickColor.new("Institutional White").Color
paget.Position = UDim2.new(0.5,0,0.4,-10)
paget.Font = 2
paget.FontSize = 7
pagel = Instance.new("TextLabel", pageframe)
pagel.BorderSizePixel = 0
pagel.BackgroundTransparency = 1
pagel.TextColor3 = BrickColor.new("Institutional White").Color
pagel.Position = UDim2.new(0.5,0,0.6,-10)
pagel.Font = 2
pagel.FontSize = 7
coroutine.resume(coroutine.create(function()
while wait() do
paget.Text = "Page #"..page
if page == 1 then
pagel.Text = "PsyBlast"
elseif page == 2 then
pagel.Text = "Summon MudClone"
elseif page == 3 then
pagel.Text = "Test3"
elseif page == 4 then
pagel.Text = "Test4"
elseif page == 5 then
pagel.Text = "Test5"
else
pagel.Text = "Unknown Spell"
end
end
end))
HealthFrame = Instance.new("Frame", gui1)
HealthFrame.Name = "Health"
HealthFrame.Position = UDim2.new(0.8,0,0.9,0)
HealthFrame.Style = "RobloxRound"
gui3 = Instance.new("TextLabel", HealthFrame)
gui3.BorderSizePixel = 0
gui3.BackgroundTransparency = 1
gui3.TextColor3 = BrickColor.new("Institutional White").Color
gui4 = Instance.new("TextLabel", HealthFrame)
gui4.BorderSizePixel = 0
gui4.BackgroundTransparency = 1
gui4.TextColor3 = BrickColor.new("Institutional White").Color
player.PlayerGui.HealthGUI:Destroy()
prevh = player.Character.Humanoid.Health
time_zone = -5
hour24 = false

function getTime()
	local tick = math.fmod(tick(),86400)

	local hour = math.floor(tick/3600) + 5 + time_zone
	local minute = math.floor(tick/60 - 60*hour)

	local m = ""
	if (not hour24) then
		if (hour > 12) then
			hour = hour - 12
			m = " PM"
		else
			hour = (hour == 0) and 12 or hour
			m = " AM"
		end
	end

	return string.format("%2.0f:%02.0f",hour,minute)..m
end

coroutine.resume(coroutine.create(function()
while wait() do
gui3.Text = "Health : "..math.floor(player.Character.Humanoid.Health)
gui4.Text = "Time : "..getTime()
gui3.Position = UDim2.new(0,(player.Character.Humanoid.Health-9),0,25)
gui4.Position = UDim2.new(0,(player.Character.Humanoid.Health-9),0,5)
HealthFrame.Size = UDim2.new(0,(player.Character.Humanoid.Health*2),0,50)
prevh = player.Character.Humanoid.Health
end
end))

-- Functions

local wchar = char
if wchar ~= nil then
if torso and leftarm and rightarm ~= nil then
shoulder1 = torso:FindFirstChild("Right Shoulder")
shoulder2 = torso:FindFirstChild("Left Shoulder")
neck = torso:FindFirstChild("Neck")
if shoulder1 and shoulder2 and neck ~= nil then
c0 = shoulder1.C0
c1 = shoulder1.C1
c02 = shoulder2.C0
c12 = shoulder2.C1
c03 = neck.C0
c13 = neck.C1
s = shoulder1:clone()
s2 = shoulder2:clone()
n = neck:clone()
shoulder1.Parent = nil
shoulder2.Parent = nil
neck.Parent = nil
local weld = Instance.new("Weld")
local weld2 = Instance.new("Weld")
local weld3 = Instance.new("Weld")
local yes = true
if yes then
yes = false
w = weld
w2 = weld2
w3 = weld3
t = torso
c = wchar
weld.Part0 = torso
weld.Parent = torso
weld.Part1 = rightarm
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = leftarm
weld3.Parent = torso
weld3.Part0 = torso
weld3.Part1 = head
weld.C1 = CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0,0)
weld2.C1 = CFrame.new(1.5, 0, 0) * CFrame.Angles(0,0, 0)
weld3.C1 = CFrame.new(0, -1.5, 0) * CFrame.Angles(0, 0, 0)
end
end
end
end

function pageup()
if page ~= 5 then
if switching == false then
switching = true
page = page + 1
scrolllight21.BrickColor = BrickColor.new("New Yeller")
scrolllight22.BrickColor = BrickColor.new("New Yeller")
wait(0.3)
scrolllight21.BrickColor = BrickColor.new(bookcovercol)
scrolllight22.BrickColor = BrickColor.new(bookcovercol)
wait(0.1)
switching = false
end
end
end

function pagedown()
if page ~= 1 then
if switching == false then
switching = true
page = page + -1
scrolllight1.BrickColor = BrickColor.new("New Yeller")
scrolllight2.BrickColor = BrickColor.new("New Yeller")
wait(0.3)
scrolllight1.BrickColor = BrickColor.new(bookcovercol)
scrolllight2.BrickColor = BrickColor.new(bookcovercol)
wait(0.1)
switching = false
end
end
end

gundeb = false

function Select(mouse)
equi = true
humanoid.WalkSpeed = 19
gyro.Parent = torso

coroutine.resume(coroutine.create(function()
w.C1 = CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(-15),0,0)
w2.C1 = CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(-15),0,0)
wait()
w.C1 = CFrame.new(-1.5, 0.2, 0.1) * CFrame.Angles(math.rad(-30),0,0)
w2.C1 = CFrame.new(1.5, 0.2, 0.1) * CFrame.Angles(math.rad(-30),0,0)
wait()
w.C1 = CFrame.new(-1.5, 0.4, 0.2) * CFrame.Angles(math.rad(-45),math.rad(5),0)
w2.C1 = CFrame.new(1.5, 0.4, 0.2) * CFrame.Angles(math.rad(-45),math.rad(-5),0)
wait()
w.C1 = CFrame.new(-1.5, 0.6, 0.3) * CFrame.Angles(math.rad(-60),math.rad(-10),0)
w2.C1 = CFrame.new(1.5, 0.6, 0.3) * CFrame.Angles(math.rad(-60),math.rad(10),0)
wait()
w.C1 = CFrame.new(-1.4, 0.6, 0.4) * CFrame.Angles(math.rad(-75),math.rad(-15),0)
w2.C1 = CFrame.new(1.4, 0.6, 0.4) * CFrame.Angles(math.rad(-75),math.rad(15),0)
wait()
w.C1 = CFrame.new(-1.3, 0.6, 0.5) * CFrame.Angles(math.rad(-90),math.rad(-20),0)
w2.C1 = CFrame.new(1.3, 0.6, 0.5) * CFrame.Angles(math.rad(-90),math.rad(20),0)
for i = 1,0.3,-0.1 do
scroll.Transparency = i
wait()
end
end))

blastdmgcooldown = false

mouse.Button1Down:connect(function()
if clicking == false then
clicking = true

if page == 1 then
local prevws = humanoid.WalkSpeed
humanoid.WalkSpeed = 0
local symbol = Instance.new("Model",workspace)
symbol.Name = "Symb0l"
local symbol1 = Instance.new("Part", symbol)
symbol1.FormFactor = "Custom"
symbol1.Size = Vector3.new(0.8,0.2,0.2)
symbol1.Anchored = true
symbol1.CanCollide = false
symbol1.CFrame = torso.CFrame*CFrame.new(0,0.3,-3.5)
symbol1.BrickColor = BrickColor.new("Alder")
local symbol2 = Instance.new("Part", symbol)
symbol2.FormFactor = "Custom"
symbol2.Size = Vector3.new(0.2,1,0.2)
symbol2.Anchored = true
symbol2.CanCollide = false
symbol2.CFrame = torso.CFrame*CFrame.new(-0.3,0.7,-3.5)
symbol2.BrickColor = BrickColor.new("Alder")
local symbol3 = Instance.new("Part", symbol)
symbol3.FormFactor = "Custom"
symbol3.Size = Vector3.new(0.2,1,0.2)
symbol3.Anchored = true
symbol3.CanCollide = false
symbol3.CFrame = torso.CFrame*CFrame.new(0.3,0.7,-3.5)
symbol3.BrickColor = BrickColor.new("Alder")
for i = 1,0,-0.1 do
symbol1.Transparency = i
symbol2.Transparency = i
symbol3.Transparency = i
wait()
end
wait(0.2)
for i = 0,1,0.1 do
symbol1.Transparency = i
symbol2.Transparency = i
symbol3.Transparency = i
wait()
end
symbol:Destroy()
local psybl = Instance.new("Part", workspace)
psybl.Anchored = true
psybl.CanCollide = false
psybl.FormFactor = "Custom"
psybl.TopSurface = "Smooth"
psybl.BottomSurface = "Smooth"
psybl.Size = Vector3.new(1,1,1)
psybl.CFrame = torso.CFrame*CFrame.new(0,0,-6)
psybl.BrickColor = BrickColor.new("Alder")
local psyblm = Instance.new("SpecialMesh", psybl)
psyblm.MeshType = "Sphere"
local psyrn = Instance.new("Part", workspace)
psyrn.Anchored = true
psyrn.CanCollide = false
psyrn.FormFactor = "Custom"
psyrn.Size = Vector3.new(0.2,0.2,0.2)
psyrn.CFrame = psybl.CFrame
psyrn.BrickColor = BrickColor.new("Alder")
local psyrnms = Instance.new("SpecialMesh", psyrn)
psyrnms.MeshId = "http://www.roblox.com/asset/?id=3270017"
for i = 1,10 do
psyrnms.Scale = Vector3.new(i,i,i/4)
psyblm.Scale = Vector3.new(i/2,i/2,i/2)
wait()
end
local psybla = Instance.new("Part", workspace)
psybla.Anchored = true
psybla.CanCollide = false
psybla.FormFactor = "Custom"
psybla.Size = Vector3.new(4.8,1000,4.8)
psybla.BrickColor = BrickColor.new("Alder")
psybla.CFrame = torso.CFrame*CFrame.new(0,0,-(psybla.Size.y/2+6))*CFrame.Angles(math.rad(90),0,0)
Instance.new("CylinderMesh",psybla)

psybla.Touched:connect(function(part)
if blastdmgcooldown == false then
if part then
if part.Parent:FindFirstChild("Humanoid") then
if part.Parent:FindFirstChild("Health") then
coroutine.resume(coroutine.create(function()
part.Parent.Health.Disabled = true
wait(0.1)
part.Parent.Health.Disabled = false
end))
end
local avgpsydmg = math.random(20,40)
local catalogdmg = avgpsydmg
dmgcounter(part,catalogdmg)
blastdmgcooldown = true
part.Parent.Humanoid:TakeDamage(catalogdmg)
coroutine.resume(coroutine.create(function()
local victws = part.Parent.Humanoid.WalkSpeed
part.Parent.Humanoid.WalkSpeed = (victws-(victws*2))
wait(4)
part.Parent.Humanoid.WalkSpeed = victws
end))
wait()
blastdmgcooldown = false
end
end
end
end)

wait(0.7)
for i = 0,1,0.1 do
psybla.Transparency = i
psybl.Transparency = i
psyrn.Transparency = i
wait()
end
psybla:Destroy()
psybl:Destroy()
psyrn:Destroy()
humanoid.WalkSpeed = prevws

elseif page == 2 then
local prevws = humanoid.WalkSpeed
humanoid.WalkSpeed = 0
local symbol = Instance.new("Model",workspace)
symbol.Name = "Symb0l"
local symbol1 = Instance.new("Part", symbol)
symbol1.FormFactor = "Custom"
symbol1.Size = Vector3.new(0.2,1.3,0.2)
symbol1.Anchored = true
symbol1.CanCollide = false
symbol1.CFrame = torso.CFrame*CFrame.new(0,0.2,-3.5)
symbol1.BrickColor = BrickColor.new("Reddish brown")
local symbol2 = Instance.new("Part", symbol)
symbol2.FormFactor = "Custom"
symbol2.Size = Vector3.new(1,0.2,0.2)
symbol2.Anchored = true
symbol2.CanCollide = false
symbol2.CFrame = torso.CFrame*CFrame.new(0,0.6,-3.5)
symbol2.BrickColor = BrickColor.new("Reddish brown")
local symbol3 = Instance.new("Part", symbol)
symbol3.FormFactor = "Custom"
symbol3.Size = Vector3.new(1,0.2,0.2)
symbol3.Anchored = true
symbol3.CanCollide = false
symbol3.CFrame = torso.CFrame*CFrame.new(0,0.3,-3.5)
symbol3.BrickColor = BrickColor.new("Reddish brown")
for i = 1,0,-0.1 do
symbol1.Transparency = i
symbol2.Transparency = i
symbol3.Transparency = i
wait()
end
wait(0.2)
for i = 0,1,0.1 do
symbol1.Transparency = i
symbol2.Transparency = i
symbol3.Transparency = i
wait()
end
symbol:Destroy()
wait(0.5)
humanoid.WalkSpeed = prevws
local rise = Instance.new("Part", workspace)
rise.BrickColor = BrickColor.new("Reddish brown")
rise.FormFactor = "Custom"
rise.Anchored = true
rise.CanCollide = true
rise.Size = Vector3.new(3.98,7,3.98)
rise.CFrame = torso.CFrame*CFrame.new(0,-5,-8)
rise.TopSurface = "Smooth"
riset = Instance.new("Part", workspace)
riset.FormFactor = "Custom"
riset.Size = Vector3.new(4,1,4)
riset.Anchored = true
riset.BrickColor = BrickColor.new("Dark green")
riset.CFrame = rise.CFrame*CFrame.new(0,3.6,0)
for i = 1,10 do
rise.CFrame = rise.CFrame*CFrame.new(0,0.5,0)
riset.CFrame = rise.CFrame*CFrame.new(0,3.6,0)
wait()
end
char.Archivable = true
local charc = char:Clone()
local charcc = charc:children()
if charc:FindFirstChild("Body Colors") then
charc["Body Colors"]:Destroy()
end
for i = 1,#charcc do
if charcc[i]:IsA("Part") then
charcc[i].BrickColor = BrickColor.new("Reddish brown")
charcc[i].Material = "Slate"
elseif charcc[i]:IsA("Humanoid") then
elseif charcc[i]:IsA("Hat") then
if charcc[i]:FindFirstChild("Handle") then
charcc[i].Handle.Mesh.TextureId = ""
charcc[i].Handle.BrickColor = BrickColor.new("Reddish brown")
charcc[i].Handle.Material = "Slate"
end
else
charcc[i]:Destroy()
end
end
charc.Parent = workspace
charc:MakeJoints()
charc:MoveTo(riset.Position+Vector3.new(0,5,0))
charc.Humanoid.Died:connect(function()
game.Debris:AddItem(charc,3)
end)

wait(1)
for i = 1,10 do
rise.CFrame = rise.CFrame*CFrame.new(0,-0.5,0)
riset.CFrame = rise.CFrame*CFrame.new(0,3.6,0)
wait()
end
riset:Destroy()
rise:Destroy()
elseif page == 3 then

elseif page == 4 then

elseif page == 5 then

end

wait(0.1)
clicking = false
end
end)

mouse.KeyDown:connect(function(keylol)
key = keylol:lower()
if key == key1 then
if switching == false then
if clicking == false then
pagedown()
end
end

elseif key == key2 then
if switching == false then
if clicking == false then
pageup()
end
end
end
end)
end

hb.Deselected:connect(function()
equi = false
coroutine.resume(coroutine.create(function()
for i = 0.2,1,0.1 do
scroll.Transparency = i
wait()
end
w.C1 = CFrame.new(-1.4, 0.6, 0.4) * CFrame.Angles(math.rad(-75),math.rad(-15),0)
w2.C1 = CFrame.new(1.4, 0.6, 0.4) * CFrame.Angles(math.rad(-75),math.rad(15),0)
wait()
w.C1 = CFrame.new(-1.5, 0.6, 0.3) * CFrame.Angles(math.rad(-60),math.rad(-10),0)
w2.C1 = CFrame.new(1.5, 0.6, 0.3) * CFrame.Angles(math.rad(-60),math.rad(10),0)
wait()
w.C1 = CFrame.new(-1.5, 0.6, 0.2) * CFrame.Angles(math.rad(-45),math.rad(-5),0)
w2.C1 = CFrame.new(1.5, 0.6, 0.2) * CFrame.Angles(math.rad(-45),math.rad(5),0)
wait()
w.C1 = CFrame.new(-1.5, 0.4, 0.1) * CFrame.Angles(math.rad(-30),0,0)
w2.C1 = CFrame.new(1.5, 0.4, 0.1) * CFrame.Angles(math.rad(-30),0,0)
wait()
w.C1 = CFrame.new(-1.5, 0.2, 0) * CFrame.Angles(math.rad(-15),0,0)
w2.C1 = CFrame.new(1.5, 0.2, 0) * CFrame.Angles(math.rad(-15),0,0)
wait()
w.C1 = CFrame.new(-1.5, 0, 0) * CFrame.Angles(0,0,0)
w2.C1 = CFrame.new(1.5, 0, 0) * CFrame.Angles(0,0,0)
wait()
end))
end)

hb.Selected:connect(Select)

-- mediafire --


humanoid.Jumping:connect(function()
humanoid.Jump = false
end)

humanoid.Died:connect(function()
plchat(deathphrases[math.random(1,#deathphrases)])
end)
plchat(startphrases[math.random(1,#startphrases)])