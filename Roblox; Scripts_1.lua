local k = Instance.new("ForceField")
bin = game.Players.xSoulStealerx.Character
k.Parent = bin
function onTouched(hit)
local m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = "Lolz, ".. hit.Name.. " just got owned."
local i = Instance.new("Explosion")
i.Parent = game.Workspace
i.Position = bin.Torso.Position
i.BlastPressure = 995000
i.BlastRadius = 3
wait(1.3)
m:remove()
end

bin.Torso.Touched:connect(onTouched)


pos = Vector3.new(80,1.8,0)
for i=1, 20, 0.02 do
wait()
pos = pos + Vector3.new(0, 0.05, 0)
local p = Instance.new("Part")
p.Anchored = true
p.Parent = workspace.Base
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(pos)
p.BrickColor = BrickColor.random()
p.CFrame = p.CFrame * CFrame.Angles(i,0,i) * CFrame.new(i,2,i)
local me = Instance.new("SpecialMesh")
me.Parent = p
coroutine.resume(coroutine.create(function()
	while true do
	wait(2)
	p.BrickColor = BrickColor.random()
	end
end))
end


playerlist
---------
local a = game.Players:GetChildren()
tab = {}
number = 0
local gui = Instance.new("ScreenGui")
gui.Parent = game.StarterGui
gui.Name = "Magnitude"

local pos = 120
local pos2 = -45
local pos3 = 80
for i=1, #a do
	if pos2 == -45 then
		pos2 = 80
		pos3 = 75
	elseif pos2 == 80 then
		pos2 = -45
		pos3 = 52
	end
	pos = pos + 33
	local f = Instance.new("TextLabel")
	f.Size = UDim2.new(0,110,0,28)
	f.Position = UDim2.new(0,pos3,0,pos)
	f.Parent = gui
	f.Text = a[i].Name
	f.FontSize = "Size9"
	local tee = Instance.new("ImageLabel")
	tee.Size = UDim2.new(0,70,0,70)
	tee.Position = UDim2.new(0,pos2,0,-17.5)
	tee.Parent = f
	tee.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="..a[i].Name
	tee.BackgroundTransparency = 1
	number = number + 1
	table.insert(tab, a[i])
end
game.Players.PlayerAdded:connect(function(player)
	if pos2 == -45 then
		pos2 = 80
		pos3 = 75
	elseif pos2 == 80 then
		pos2 = -45
		pos3 = 52
	end
	pos = pos + 33
	local f = Instance.new("TextLabel")
	f.Size = UDim2.new(0,110,0,28)
	f.Position = UDim2.new(0,pos3,0,pos)
	f.Parent = gui
	f.Text = player.Name
	f.FontSize = "Size9"
	local tee = Instance.new("ImageLabel")
	tee.Size = UDim2.new(0,70,0,70)
	tee.Position = UDim2.new(0,pos2,0,-17.5)
	tee.Parent = f
	tee.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="..player.Name
	tee.BackgroundTransparency = 1
	table.insert(tab, player)
	number = number + 1
end)
game.Players.ChildRemoved:connect(function(player)
end)


me = game.Players.xSoulStealerx
char = me.Character
bill = Instance.new("BillboardGui")
bill.Parent = workspace
bill.Adornee = char.Head
bill.Size = UDim2.new(0,150,0,300)
text = Instance.new("TextLabel")
text.Parent = bill
text.Size = UDim2.new(0,0,0,0)
text.FontSize = "Size18"
text.Position = UDim2.new(0,70,0,-40)
text.TextColor3 = Color3.new(0,0,0)
text.Text = 0

tex1 = "                        PPLZ POWN lol xdxdxd BLAHBLAHBLAHBLAG                     "
tex2 = "                        Lol stupid noobs can't eat pancakes!!! HAHAHA im jealous =(                    "
tex3 = "                        I am happy with my scripting skills teehee lol lollolololol i like muffins.                   "
shown = 20
while true do
numba = 1
for i=1, #tex1 + shown do
	if i >= shown then
		numba = numba + 1
	end
	text.Text = string.sub(tex1, numba, i)
	wait(0.02)
end
numba = 1
for i=1, #tex2 + shown do
	if i >= shown then
		numba = numba + 1
	end
	text.Text = string.sub(tex2, numba, i)
	wait(0.02)
end
numba = 1
for i=1, #tex3 + shown do
	if i >= shown then
		numba = numba + 1
	end
	text.Text = string.sub(tex3, numba, i)
	wait(0.02)
end
end


function FindLower(stringk)
	local stringk = stringk:lower()
	for _, v in pairs(game.Players:getPlayers()) do
		if string.lower(string.sub(v.Name,1,#stringk)) == stringk then
			return v
		end
	end
end

player = game.Players.xSoulStealerx
banned = {"XLua"}

loop = false
function chatted(msg)
	if string.sub(msg,1,2) == "m/" then
		local ms = Instance.new("Message")
		ms.Parent = workspace
		for i=1, #msg do
			wait()
			ms.Text = string.sub(msg,3, i)
		end
		wait(4)
		ms:remove()
	elseif string.sub(msg,1,3) == "ff/" then
		local k = FindLower(string.sub(msg,4))
		if k ~= nil then
			if k.Character ~= nil then
				Instance.new("ForceField",k.Character)
			end
		else
		local h = Instance.new("Message")
		h.Parent = player
		h.Text = "Player not found."
		wait(3)
		h:remove()
		end
	elseif string.sub(msg,1,5) == "unff/" then
		local k = FindLower(string.sub(msg,6))
		if k ~= nil then
			if k.Character ~= nil then
				local ffs = k.Character:GetChildren()
				for i=1, #ffs do
					if ffs[i].className == "ForceField" then
						ffs[i]:remove()
					end
				end
			end
		else
		local h = Instance.new("Message")
		h.Parent = player
		h.Text = "Player not found."
		wait(3)
		h:remove()
		end
	elseif string.sub(msg,1,5) == "kick/" then
		local k = FindLower(string.sub(msg,6))
		if k ~= nil then
			k:remove()
		else
		local h = Instance.new("Message")
		h.Parent = player
		h.Text = "Player not found."
		wait(3)
		h:remove()
		end
	elseif string.sub(msg,1,4) == "ban/" then
		local k = FindLower(string.sub(msg,5))
		if k ~= nil then
			k:remove()
			table.insert(banned, k.Name)
		else
		local h = Instance.new("Message")
		h.Parent = player
		h.Text = "Player not found."
		wait(3)
		h:remove()
		end
	elseif string.sub(msg,1,6) == "unban/" then
		local n = 0
		local o = nil
		for i=1, #banned do
			if string.find(string.lower(banned[i]),string.sub(msg,7)) == 1 then
				n = n + 1
				o = i
			end
		end
		if n == 1 then
			local name = banned[o]
			table.remove(banned,o)
			local hin = Instance.new("Message")
			hin.Parent = player
			hin.Text = name.." UNBANNED"
			wait(3)
			hin:remove()
		end
	elseif string.sub(msg,1,5) == "kill/" then
		local k = FindLower(string.sub(msg,6))
		if k ~= nil then
			if k.Character ~= nil then
				if k.Character.Humanoid ~= nil then
					k.Character.Humanoid.Health = 0
				end
			end
		else
		local hin = Instance.new("Message")
		hin.Parent = player
		hin.Text = "Player not found."
		wait(3)
		hin:remove()
		end
	elseif string.sub(msg,1,9) == "loopkill/" then
		local k = FindLower(string.sub(msg,10))
		if k ~= nil then
			loop = true
			while loop == true do
				wait(0.2)
				if k.Character ~= nil then
					k.Character:BreakJoints()
				end
			end
		else
		local hin = Instance.new("Message")
		hin.Parent = player
		hin.Text = "Player not found."
		wait(3)
		hin:remove()
		end
	elseif string.sub(msg,1,11) == "unloopkill/" then
		local k = FindLower(string.sub(msg,12))
		if k ~= nil then
			loop = false
		else
		local hin = Instance.new("Message")
		hin.Parent = player
		hin.Text = "Player not found."
		wait(3)
		hin:remove()
		end
	elseif string.sub(msg,1,7) == "damage/" then
		local k = FindLower(string.sub(msg,8))
		if k ~= nil then
			if k.Character ~= nil then
				if k.Character.Humanoid ~= nil then
					k.Character.Humanoid:TakeDamage(60)
				end
			end
		else
		local hin = Instance.new("Message")
		hin.Parent = player
		hin.Text = "Player not found."
		wait(3)
		hin:remove()
		end
	elseif string.sub(msg,1,5) == "tele/" then
		local k = FindLower(string.sub(msg,6))
		if k ~= nil then
			if k.Character ~= nil then
				k.Character:MoveTo(player.Character.Torso.Position)
			end
		end
	elseif string.sub(msg,1,7) == "teleto/" then
		local k = FindLower(string.sub(msg,8))
		if k ~= nil then
			if k.Character ~= nil then
				player.Character:MoveTo(k.Character.Torso.Position)
			end
		end
	end
end

player.Chatted:connect(chatted)

game.Players.PlayerAdded:connect(function(plah)
	for _,v in pairs(banned) do 
		if plah.Name:lower() == v:lower() then
			local hin = Instance.new("Hint")
			hin.Parent = workspace
			hin.Text = plah.Name.." tried to enter, but he's banned. Ha-ha."
			plah:remove()
			wait(3)
			hin:remove()
		end
	end
end)

shared.lego = function(anoob, tee)
local plaa = game.Players:findFirstChild(anoob)
if plaa ~= nil then
local bill = Instance.new("BillboardGui")
bill.Parent = plaa.Character.Head
bill.Adornee = bill.Parent
bill.Size = UDim2.new(0,100,0,100)
local text = Instance.new("TextLabel")
text.Parent = bill
text.Size = UDim2.new(0, 300,0,40)
text.FontSize = "Size12"
text.BackgroundColor3 = Color3.new(0.5,0.2,1)
text.Position = UDim2.new(0, -110, 0, -60)
text.Text = tee
local r = 0
local g = 0
local b = 0
coroutine.resume(coroutine.create(function()
while true do
wait()
r = r + 0.01
g = g + 0.007
b = b + 0.004
if r >= 0.98 then
r = 0
end
if g >= 0.98 then
g = 0
end
if b >= 0.98 then
b = 0
end
text.BackgroundColor3 = Color3.new(r,g,b)
end
end))
end
end

base = workspace.Base
char = game.Players.xSoulStealerx.Character
torso = char.Torso
angle = CFrame.Angles(0,0,0)
colours = {"Bright red", "Black", "Neon orange"}
a = Instance.new("Part")
a.Parent = workspace
a.formFactor = "Plate"
a.Size = Vector3.new(10,0.4,10)
a.TopSurface = 0
a.BottomSurface = 0
a.Anchored = true
a:BreakJoints()
a.Transparency = 1
b = Instance.new("Part")
b.Parent = workspace
b.formFactor = "Plate"
b.Size = Vector3.new(10,0.4,10)
b.TopSurface = 0
b.BottomSurface = 0
b.Anchored = true
b.CanCollide = false
o = Instance.new("CylinderMesh")
o.Parent = b
b:BreakJoints()
while true do
	wait()
	local p = math.random(-0.1,0.1)
	local v = math.random(-0.1,0.1)
	local s = math.random(-0.1,0.1)
	angle = angle * CFrame.Angles(p, v, s)
	a.CFrame = CFrame.new(torso.Position.X, base.Position.Y, torso.Position.Z)
	b.CFrame = CFrame.new(torso.Position.X, base.Position.Y, torso.Position.Z) * angle
	local o = math.random(1,20)
	if o == 10 then
		local m = math.random(1,3)
		a.BrickColor = BrickColor.new(colours[m])
	end
end


player = game.Players.xSoulStealerx
while true do
wait()
local cfra = CFrame.new(math.random(-3.1,3.1),math.random(-1.8,3.1),math.random(-3.1,3.1))
local tor = player.Character.Torso
local part = Instance.new("Part")
part.Parent = player.Character
part.formFactor = 0
part.Name = "Pipe"
part.Size = Vector3.new(1,1,1)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = true
part.CanCollide = false
part.BrickColor = BrickColor.new("New Yeller")
part.CFrame = tor.CFrame * cfra
part.CFrame = part.CFrame * CFrame.Angles(math.random(-3.2,3.2),math.random(-3.2,3.2),math.random(-3.2,3.2))
local mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.34,0.1,0.34)
coroutine.resume(coroutine.create(function()
	wait(0.1)
	for i=1, 10 do
		wait()
		part.Transparency = part.Transparency + 0.1
	end
	part:remove()
end))
end



script/me = game.Players.xSoulStealerx
cha = me.Character
function touch(hit)
if hit.Name == "Base" then return end
hit.Velocity = hit.CFrame.lookVector * -250
hit.Velocity = hit.Velocity + Vector3.new(0, 60, 0)
end

cha.Torso.Touched:connect(touch)
cha.Torso.Touched:connect(touch)
cha.Torso.Touched:connect(touch)
cha.Torso.Touched:connect(touch)
cha.Torso.Touched:connect(touch)
cha.Torso.Touched:connect(touch)
cha.Torso.Touched:connect(touch)
cha.Torso.Touched:connect(touch)


me = game.Players.xSoulStealerx
local h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Delete"
script.Parent = h
num = 1
function select(mouse, key)
	mouse.KeyDown:connect(function(key) 
		key = key:lower()
		if key == "k" then
			if mouse.Target ~= nil then
			if mouse.Target.Name == "Base" then return end
			mouse.Target:remove()
			end
		end
	end) 
end

script.Parent.Selected:connect(select)


me = game.Players.xSoulStealerx
char = me.Character
torso = char.Torso
while true do
distance = Vector3.new(12,12,12)



hat,bodyjacker
----------------
me = game.Players.xSoulStealerx
char = me.Character
hoppa = Instance.new("HopperBin")
hoppa.Parent = me.Backpack
hoppa.Name = "Tool creator"
script.Parent = hoppa
function selected(mouse, key)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if (key == "q") then
		local targ = mouse.Target
		if targ.Name == "Base" then return end
		local too = Instance.new("Tool")
		too.Parent = me.Backpack
		too.Name = targ.Name
		too.GripPos = Vector3.new(0,0,0)
		if targ.Size.Y >= 1 then
			too.GripPos = Vector3.new(0,-0.5,0)
		elseif targ.Size.Y >= 2 then
			too.GripPos = Vector3.new(0,-1,0)
		elseif targ.Size.Y >= 3 then
			too.GripPos = Vector3.new(0,-1.5,0)
		elseif targ.Size.Y >= 4 then
			too.GripPos = Vector3.new(0,-2,0)
		end
		local hand = targ:clone()
		hand.Name = "Handle"
		hand.Anchored = false
		hand.Parent = too
		hand.CanCollide = false
		local gee = false
		local function touch(hit)
			if gee == false then return end
			local hum = hit.Parent:findFirstChild("Humanoid")
			if hum ~= nil then
				hum:TakeDamage(math.random(5,10))
			end
		end
		hand.Touched:connect(touch)
		too.Equipped:connect(function()
			too.Activated:connect(function()
				gee = true
				local val = Instance.new("StringValue")
				val.Parent = too
				val.Name = "toolanim"
				val.Value = "Slash"
				wait(0.5)
				gee = false
			end)
		end)
		end
	end)
end

script.Parent.Selected:connect(selected)



a = Instance.new("Part")
a.Parent = workspace
a.formFactor = 0
a.Size = Vector3.new(20,1,6)
a.Position = game.Workspace.xSoulStealerx.Torso.Position + Vector3.new(0,10,0)
a.Anchored = true
bu = Instance.new("Part")
bu.Parent = workspace
bu.formFactor = 0
bu.Size = Vector3.new(3,1,3)
bu.Anchored = true
bu.Position = a.Position + Vector3.new(0,3,0)
po = Instance.new("ClickDetector")
po.Parent = bu
po.MaxActivationDistance = 15
mode = false
po.MouseClick:connect(function()
	if mode == false then
		mode = true
		a.CFrame = a.CFrame * CFrame.new(5,5,0) * CFrame.Angles(0,0,1.7)
	else
		mode = false
		a.CFrame = a.CFrame * CFrame.new(-5,-5,0) * CFrame.Angles(0,0,-1.7)
	end
end)

char.Torso.Touched:connect(touch)

----------
local w1 = Instance.new("Weld")
w1.Parent = game.Players.xSoulStealerx.Character.Head
w1.Part0 = w1.Parent
w1.Part1 = game.Players.xSoulStealerx.Character.Fedora.Handle
w1.C1 = CFrame.new(0, -0.82, 0)
w2 = game.Players.xSoulStealerx.Character.Torso.Neck
while true do
w1.C1 = w1.C1 * CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
w2.C1 = w2.C1 * CFrame.fromEulerAnglesXYZ(0, 0, -0.1)
wait()
end

gfhfh
-------
me = game.Players.xSoulStealerx
dist = 200
model = Instance.new("Model")
model.Parent = workspace
model.Name = "[[xSoulStealerx]]"
ball1 = Instance.new("Part")
ball1.Parent = model
ball1.Shape = "Ball"
ball1.Size = Vector3.new(5,5,5)
ball1.Name = "Torso"
ball1.TopSurface = 0
ball1.BottomSurface = 0
ball1.BrickColor = BrickColor.new(1)
ball1.Position = Vector3.new(0,dist,0)
ball1:breakJoints()
ball1.Anchored = false
for i=1, 100 do
local a = Instance.new("Fire")
a.Parent = ball1
a.Size = 40
a.Heat = 0
a.Color = Color3.new(1,0.2,1)
a.SecondaryColor = Color3.new(1,0.2,1)
end

----------
w2 = game.Players.xSoulStealerx.Character.Torso.Neck
for i=1,8 do 
wait()
w2.C1 = w2.C1 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)r
end
while true do
wait()
for i=1,16 do 
wait()
w2.C1 = w2.C1 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
end
wait()
for i=1,16 do 
wait()
w2.C1 = w2.C1 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)
end
end


-------
Player = game.Players.xSoulStealerx
neck = Player.Character.Torso.Neck
local M = Instance.new("ScreenGui") 
M.Parent = Player.PlayerGui 
local c = Instance.new("TextButton") 
c.Parent = M 
c.Position = UDim2.new(0,75,0,462) 
c.Size = UDim2.new(0,50,0,30) 
c.BackgroundColor = BrickColor.new("Really black")
c.BorderColor = BrickColor.new("New Yeller")
c.Text = "Yes"
c.TextColor = BrickColor.new("New Yeller")
c.FontSize = "Size24"
local n = Instance.new("TextButton") 
n.Parent = M 
n.Position = UDim2.new(0,20,0,462) 
n.Size = UDim2.new(0,50,0,30) 
n.BackgroundColor = BrickColor.new("Really black")
n.BorderColor = BrickColor.new("New Yeller")
n.Text = "No"
n.TextColor = BrickColor.new("New Yeller")
n.FontSize = "Size24"
local f = Instance.new("TextButton") 
f.Parent = M 
f.Position = UDim2.new(0,130,0,462) 
f.Size = UDim2.new(0,90,0,30) 
f.BackgroundColor = BrickColor.new("Really black")
f.BorderColor = BrickColor.new("New Yeller")
f.Text = "Bang"
f.TextColor = BrickColor.new("New Yeller")
f.FontSize = "Size24"
local v = Instance.new("TextButton") 
v.Parent = M 
v.Position = UDim2.new(0,225,0,462) 
v.Size = UDim2.new(0,90,0,30) 
v.BackgroundColor = BrickColor.new("Really black")
v.BorderColor = BrickColor.new("New Yeller")
v.Text = "Raise"
v.TextColor = BrickColor.new("New Yeller")
v.FontSize = "Size24"

function no()
for i=1,7 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
end
for i=1,14 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, -0.15)
end
wait()
for i=1,14 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
end
for i=1,14 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, -0.15)
end
wait()
for i=1,14 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
end
for i=1,14 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, -0.15)
end
for i=1,7 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
end
end

function yes()
for i=1,7 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
end
for i=1,9 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)
end
for i=1,9 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
end
for i=1,9 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)
end
for i=1,9 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
end
for i=1,7 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)
end
end

function bang()
for i=1,5 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,5 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
end

function head()
local w7 = Instance.new("Weld")
w7.Parent = Player.Character.Torso
w7.Part0 = w7.Parent
w7.Part1 = w7.Parent.Parent["Left Arm"]
w7.C1 = CFrame.new(1.5, 0, 0)
for i=1,20 do 
wait()
w7.C1 = w7.C1 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
w7.C1 = w7.C1 * CFrame.new(0, -0.05, 0.05)
end
end

c.MouseButton1Click:connect(yes)
n.MouseButton1Click:connect(no)
f.MouseButton1Click:connect(bang)
v.MouseButton1Click:connect(head)

local meteor = Instance.new("Model")
meteor.Parent = game.Workspace
local met = Instance.new("Part")
met.Parent = meteor
met.Size = Vector3.new(35,35,35)
met.Shape = "Ball"
met.Position = Vector3.new(0, 3000, 0)
met.Elasticity = 0
met.Name = "mete"
met.CanCollide = false
local mes = Instance.new("SpecialMesh")
mes.Parent = met
mes.MeshId = "http://www.roblox.com/asset/?id=1290033"
mes.TextureId = "http://www.roblox.com/asset/?id=3197743"
mes.Scale = Vector3.new(28,28,28)
local fire = Instance.new("Fire")
fire.Parent = met
fire.Size = 40
fire.Heat = 25
enabled = false

local sc = Instance.new("ScreenGui")
sc.Parent = game.Players.xSoulStealerx.PlayerGui
local txtb = Instance.new("TextButton")
txtb.Parent = sc
txtb.Position = UDim2.new(0, 300, 0, 150)
txtb.Size = UDim2.new(0, 100, 0, 40)
txtb.Text = "Send"
function click()
local x = math.random(-300, 300)
local y = 3000
local z = math.random(-300,300)
local meteor = Instance.new("Model")
meteor.Parent = game.Workspace
local met = Instance.new("Part")
met.Parent = meteor
met.Size = Vector3.new(70,70,70)
met.Shape = "Ball"
met.Position = Vector3.new(x, y, z)
met.Elasticity = 0
met.Name = "mete"
met.CanCollide = false
local mes = Instance.new("SpecialMesh")
mes.Parent = met
mes.MeshId = "http://www.roblox.com/asset/?id=1290033"
mes.TextureId = "http://www.roblox.com/asset/?id=3197743"
mes.Scale = Vector3.new(55,55,55)
local fire = Instance.new("Fire")
fire.Parent = met
fire.Size = 40
fire.Heat = 25
local fir = Instance.new("Fire")
fir.Parent = met
fir.Size = 40
fir.Heat = 25
local fi = Instance.new("Fire")
fi.Parent = met
fi.Size = 40
fi.Heat = 25
enabled = false

function touchmet(i)
	if enabled == true then return end
	enabled = true
	i:breakJoints()
	mes.Scale = Vector3.new(5,5,5)
	fire:remove()
	local sound = Instance.new("Sound")
	sound.SoundId = "http://www.roblox.com/asset/?id=16976189"
	sound.Parent = game.Workspace
	sound.Looped = false
	sound.archivable = false
	sound.Volume = 1
	sound.Pitch = 1
	wait(0.01)
	sound:Play()
	local ex = Instance.new("Explosion")
	ex.Parent = meteor
	ex.Position = met.Position + Vector3.new(0, -50, 0)
	ex.BlastRadius = 45
	ex.BlastPressure = 1000
	local ball = Instance.new("Part")
	ball.Shape = "Ball"
	ball.Anchored = true
	ball.Parent = meteor
	ball.CFrame = met.CFrame + Vector3.new(0, -150, 0)
	ball.Size = Vector3.new(35,35,35)
	ball.TopSurface = 0
	ball.BottomSurface = 0
	ball.BrickColor = BrickColor.new(21)
	ball.CanCollide = false 
	local mess = Instance.new("SpecialMesh")
	mess.Parent = ball
	mess.MeshType = "Sphere"
	for i=1, 100 do
		local g = Instance.new("Part")
		g.Name = "piece"
		g.Parent = meteor
		g.Size = Vector3.new(10,10,10)
		g.Shape = "Ball"
		g.CFrame = met.CFrame * CFrame.new(math.random(-45,45), math.random(10,80), math.random(-45,45))
		g.Velocity = Vector3.new(math.random(-15,15), math.random(500,1400), math.random(-15,15))
		g.Anchored = false
		g.Elasticity = 0
		local mesh = Instance.new("SpecialMesh")
		mesh.Parent = g
		mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
		mesh.TextureId = "http://www.roblox.com/asset/?id=3197743"
		mesh.Scale = Vector3.new(7,7,7)
		g.Touched:connect(function(bv)
			bv:breakJoints()
			if bv.Name == "piece" then return end
			local ex = Instance.new("Explosion")
			ex.Parent = meteor
			ex.Position = g.Position
			ex.BlastRadius = 19
			ex.BlastPressure = 200000
		end)
	end
	for i=1, 50 do
		mess.Scale = mess.Scale + Vector3.new(0.1,0.1,0.1)
		ball.Transparency = ball.Transparency + 0.02
		wait(0.01)
	end
	ball:remove()
end

met.Touched:connect(touchmet)

wait(25)
meteor:remove() 
sound:remove()

end

txtb.MouseButton1Click:connect(click)

local lig = Instance.new("Sound")
lig.SoundId = "http://www.roblox.com/asset/?id=12222030"
lig.Parent = game.Workspace
lig.Looped = false
lig.archivable = false
lig.Volume = 1
lig.Pitch = 1
game.Lighting.TimeOfDay = 0
game.Lighting.Ambient = Color3.new(170,170,170)
game.Lighting.Brightness = 0
while true do
wait(math.random(9,24))
game.Lighting.Brightness = 0
game.Lighting.Ambient = Color3.new(170,170,170)
wait(0)
game.Lighting.Brightness = 999999
game.Lighting.Ambient = Color3.new(70,70,70)
wait(0.04)
game.Lighting.Brightness = 0
game.Lighting.Ambient = Color3.new(170,170,170)
wait(0)
game.Lighting.Brightness = 999999
game.Lighting.Ambient = Color3.new(70,70,70)
wait(0.04)
game.Lighting.Brightness = 0
game.Lighting.Ambient = Color3.new(170,170,170)
wait(0)
game.Lighting.Brightness = 999999
game.Lighting.Ambient = Color3.new(70,70,70)
wait(0.04)
game.Lighting.Brightness = 0
game.Lighting.Ambient = Color3.new(170,170,170)
wait(math.random(1, 4))
lig.Pitch = math.random(0.6, 1.4)
lig.Volume = math.random(0.6, 1.0)
lig:Play()
end 


function touch(hit)
local g = hit.Parent:GetChildren()
if hit.Name == "Base" then return end 
if hit.Parent.Name == "Workspace" then return end
for i = 1, #g do 
g[i].Parent = game.Workspace
end
end

game.Workspace.xSoulStealerx.Torso.Touched:connect(touch)


brickspin
------
playa = game.Players.xSoulStealerx
f = 0
s = 1
plax = 40
plaz = 40
for i=1, 500 do
	s = s + 1
	color = "Really blue"
	local cn = math.random(1,7)
	if cn == 2 then
		color = "New Yeller"
	end
	if cn == 3 then
		color = "Royal purple"
	end
	if cn == 4 then
		color = "Really red"
	end
	if cn == 5 then
		color = "Lime green"
	end
	if cn == 6 then
		color = "Toothpaste"
	end
	if cn == 7 then
		color = "Neon orange"
	end
	local a = Instance.new("Part")
	a.Parent = workspace
	a.Anchored = true
	a.Size = Vector3.new(3,1,30)
	a.CFrame = CFrame.new(plax, s, plaz)
	a.BrickColor = BrickColor.new(color)
	a.TopSurface = 0
	a.BottomSurface = 0
	f = f + 0.2
	a.CFrame = a.CFrame * CFrame.Angles(0, f, 0)
	local d = Instance.new("Part")
	d.Parent = workspace
	d.formFactor = "Symmetric"
	d.Anchored = true
	d.Size = Vector3.new(3,16,1)
	d.CFrame = a.CFrame * CFrame.new(0,7.5,15)
	d.BrickColor = BrickColor.new(color)
	d.TopSurface = 0
	d.BottomSurface = 0
	local v = Instance.new("Part")
	v.Parent = workspace
	v.formFactor = "Symmetric"
	v.Anchored = true
	v.Size = Vector3.new(3,16,1)
	v.CFrame = a.CFrame * CFrame.new(0,7.5,-15)
	v.BrickColor = BrickColor.new(color)
	v.TopSurface = 0
	v.BottomSurface = 0
	local g = Instance.new("Part")
	g.Parent = workspace
	g.Anchored = true
	g.Size = Vector3.new(6,6,6)
	g.CFrame = a.CFrame
	g.BrickColor = BrickColor.new(color)
	g.TopSurface = 0
	g.BottomSurface = 0
	local m = Instance.new("SpecialMesh")
	m.Parent = g
	wait()
end
playa.Character.Torso.CFrame = CFrame.new(plax, s, plaz)
playa.Character.Torso.CFrame = playa.Character.Torso.CFrame * CFrame.new(0, 7, -4)
ballrem = Instance.new("Part")
ballrem.Parent = workspace
ballrem.Name = "Remove"
ballrem.Size = Vector3.new(1,12,30)
ballrem.Anchored = true
ballrem.CanCollide = false
ballrem.CFrame = CFrame.new(plax, 7, plaz)
ballrem.Transparency = 1
ballrem.Touched:connect(function(hit)
	if hit.Name == "RollBall" then
		hit:remove()
	end
end)
local ball = Instance.new("Part")
ball.Parent = workspace
ball.Anchored = true
ball.Shape = "Ball"
ball.Size = Vector3.new(8,8,8)
ball.CFrame = CFrame.new(plax, s, plaz)
ball.CFrame = ball.CFrame * CFrame.new(5, 5, -5)
ball.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
ball.TopSurface = 0
ball.BottomSurface = 0
ball.Name = "RollBall"
ball:breakJoints()
enna = false
ball.Touched:connect(function(hit)
	if enna == true then return end
	local hum = hit.Parent:findFirstChild("Humanoid")
	if hum ~= nil then
		enna = true
		local we = Instance.new("Weld")
		we.Parent = ball
		we.Part0 = we.Parent
		we.Part1 = hum.Parent.Torso
		we.C1 = CFrame.new(0,0,0)
		ball.Anchored = false
		ball.Parent = hum.Parent
		hum.Sit = true
	end
end)


f = 0
s = 1
g = Vector3.new(1,1,1)
startpoint = math.random(-230,230)
for i=1, 200 do
s = s + 1
g = g + Vector3.new(1,0,1)
local a = Instance.new("Part")
a.Parent = workspace
a.Anchored = true
a.Size = g
a.CFrame = CFrame.new(startpoint, s, startpoint)
a.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
a.TopSurface = 0
a.Transparency = 1
a.BottomSurface = 0
f = f + 0.04
a.CFrame = a.CFrame * CFrame.Angles(0, f, 0)
coroutine.resume(coroutine.create(function()
for i=1, 40 do
a.Transparency = a.Transparency - 0.025
wait()
end
wait(2)
for i=1, 40 do
a.Transparency = a.Transparency + 0.025
wait()
end
a:remove()
end))
wait()
end


for size = 1, 20, 0.1 do 
p = Instance.new("Part") 
p.Parent = game.Workspace 
p.Anchored = true 
p.Size = Vector3.new(size,0,size) 
p.CFrame = CFrame.new(0,size,0) * CFrame.Angles(0,size,0)
coroutine.resume(coroutine.create(function()
	while true do
		wait()
		p.CFrame = p.CFrame * CFrame.Angles(0, 0.2, 0)
	end
end))
wait() 
end  


x = 20
y = 20
z = 20


colours = {"Black", "Bright red", "Bright yellow", "Neon orange"}
coroutine.resume(coroutine.create(function()
for i=1, 10, 0.1 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(30,2,5)
p.Anchored = true
p.CFrame = CFrame.new(30,0,0)
p.CFrame = p.CFrame * CFrame.new(0,0,0) * CFrame.Angles(i,i,0)
p.TopSurface = 0
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
end
end))
pos = Vector3.new(0,0,0)
coroutine.resume(coroutine.create(function()
for i=1, 30, 0.5 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(5,5,5)
p.Anchored = true
p.CFrame = CFrame.new(30,4,0)
p.TopSurface = 0
p.CFrame = p.CFrame * CFrame.new(0,i,0) * CFrame.Angles(math.random(-3.2,3.2),math.random(-3.2,3.2),math.random(-3.2,3.2))
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
pos = p.Position
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 7, 0.05 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(30,2,3)
p.Anchored = true
p.CFrame = CFrame.new(pos)
p.CFrame = p.CFrame * CFrame.new(0,i,0) * CFrame.Angles(0,i,0)
p.BottomSurface = 0
p.TopSurface = 0
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 38, 0.8 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(pos) * CFrame.new(10,3,0)
p.CFrame = p.CFrame * CFrame.new(i,-i,0) * CFrame.Angles(0,0,i)
p.BottomSurface = 0
p.TopSurface = 0
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 38, 0.8 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(pos) * CFrame.new(-10,3,0)
p.CFrame = p.CFrame * CFrame.new(-i,-i,0) * CFrame.Angles(0,0,i)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
p.TopSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 38, 0.8 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(pos) * CFrame.new(0,3,10)
p.CFrame = p.CFrame * CFrame.new(0,-i,i) * CFrame.Angles(i,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
p.TopSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 38, 0.8 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(pos) * CFrame.new(0,3,-10)
p.CFrame = p.CFrame * CFrame.new(0,-i,-i) * CFrame.Angles(i,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.BottomSurface = 0
p.TopSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 8, 0.1 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(30,15,0)
p.CFrame = p.CFrame * CFrame.Angles(0,i,0) * CFrame.new(30,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.TopSurface = 0
p.BottomSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 8, 0.1 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(30,15,0)
p.CFrame = p.CFrame * CFrame.Angles(0,i,i) * CFrame.new(30,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.TopSurface = 0
p.BottomSurface = 0
end
end))
coroutine.resume(coroutine.create(function()
for i=1, 8, 0.1 do
wait()
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(6,6,6)
p.Anchored = true
p.CFrame = CFrame.new(-30,15,0)
p.CFrame = p.CFrame * CFrame.Angles(0,i,-i) * CFrame.new(30,0,0)
p.BrickColor = BrickColor.new(colours[math.random(1,4)])
p.TopSurface = 0
p.BottomSurface = 0
end
end))

player = game.Players.xSoulStealerx
char = player.Character
rleg = char["Right Leg"]
lleg = char["Left Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]

--Boots
sho1 = Instance.new("Part")
sho1.Parent = char
sho1.formFactor = "Symmetric"
sho1.Size = Vector3.new(1,1,2)
sho1.TopSurface = 0
sho1.BottomSurface = 0
sho1.BrickColor = BrickColor.new("Brown")
sho1.CFrame = rleg.CFrame * CFrame.new(0,-0.6, 0.4)
sho1.CanCollide = false
sho1.Locked = true
mesh1 = Instance.new("SpecialMesh")
mesh1.MeshType = "Brick"
mesh1.Parent = sho1
mesh1.Scale = Vector3.new(1.2,0.75,0.8)
sho2 = sho1:clone()
sho2.Parent = char
sho2.CFrame = lleg.CFrame * CFrame.new(0,-0.6,0.4)
sho3 = sho1:clone()
sho3.Size = Vector3.new(1,1,1)
sho3.Parent = char
sho3.Mesh.Scale = Vector3.new(1.1,0.7,1.1)
sho4 = sho3:clone()
sho4.Parent = char
sho1:breakJoints()
sho2:breakJoints()
sho3:breakJoints()
sho4:breakJoints()
shoo1 = Instance.new("Part")
shoo1.Parent = char
shoo1.formFactor = "Symmetric"
shoo1.Size = Vector3.new(1,1,1)
shoo1.TopSurface = 0
shoo1.BottomSurface = 0
shoo1.BrickColor = BrickColor.new("Brown")
shoo1.CFrame = rleg.CFrame * CFrame.new(0,-0.6, 0.4)
shoo1.CanCollide = false
shoo1.Locked = true
mesh3 = Instance.new("SpecialMesh")
mesh3.MeshType = "Sphere"
mesh3.Parent = shoo1
mesh3.Scale = Vector3.new(1.25,0.8,0.9)
shoo2 = shoo1:clone()
shoo2.Parent = char
shoo2.CFrame = lleg.CFrame * CFrame.new(0,-0.6,0.4)
shoo1:breakJoints()
shoo2:breakJoints()
weld1 = Instance.new("Weld")
weld1.Parent = rleg
weld1.Part0 = weld1.Parent
weld1.Part1 = sho1
weld1.C1 = CFrame.new(0,0.7,0.25)
weld2 = Instance.new("Weld")
weld2.Parent = lleg
weld2.Part0 = weld2.Parent
weld2.Part1 = sho2
weld2.C1 = CFrame.new(0,0.7,0.25)
weld3 = Instance.new("Weld")
weld3.Parent = rleg
weld3.Part0 = weld3.Parent
weld3.Part1 = shoo1
weld3.C1 = CFrame.new(0,0.6,1)
weld4 = Instance.new("Weld")
weld4.Parent = lleg
weld4.Part0 = weld4.Parent
weld4.Part1 = shoo2
weld4.C1 = CFrame.new(0,0.6,1)
weld5 = Instance.new("Weld")
weld5.Parent = rleg
weld5.Part0 = weld5.Parent
weld5.Part1 = sho3
weld5.C1 = CFrame.new(0,0.2,0)
weld6 = Instance.new("Weld")
weld6.Parent = lleg
weld6.Part0 = weld6.Parent
weld6.Part1 = sho4
weld6.C1 = CFrame.new(0,0.2,0)

--Gloves
glo1 = Instance.new("Part")
glo1.Parent = char
glo1.formFactor = "Symmetric"
glo1.Size = Vector3.new(1,1,1)
glo1.TopSurface = 0
glo1.BottomSurface = 0
glo1.BrickColor = BrickColor.new("Brown")
glo1.CFrame = rarm.CFrame * CFrame.new(0,0,0)
glo1.CanCollide = false
glo1.Locked = true
me1 = Instance.new("SpecialMesh")
me1.MeshType = "Brick"
me1.Parent = glo1
me1.Scale = Vector3.new(1.1,0.8,1.1)
gloo1 = glo1:clone()
gloo1.Parent = char
gloo1.Mesh.MeshType = "Sphere"
gloo1.Mesh.Scale = Vector3.new(1.35,0.8,1.35)
glo2 = glo1:clone()
glo2.Parent = char
gloo2 = gloo1:clone()
gloo2.Parent = char

w1 = Instance.new("Weld")
w1.Parent = rarm
w1.Part0 = w1.Parent
w1.Part1 = glo1
w1.C1 = CFrame.new(0,0.5,0)
w2 = Instance.new("Weld")
w2.Parent = rarm
w2.Part0 = w2.Parent
w2.Part1 = gloo1
w2.C1 = CFrame.new(0,0.9,0)
w3 = Instance.new("Weld")
w3.Parent = larm
w3.Part0 = w3.Parent
w3.Part1 = glo2
w3.C1 = CFrame.new(0,0.5,0)
w4 = Instance.new("Weld")
w4.Parent = larm
w4.Part0 = w4.Parent
w4.Part1 = gloo2
w4.C1 = CFrame.new(0,0.9,0)







while true do
wait(0.12)
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(6,6,6)
part.Transparency = 1
part.Anchored = false
part.CanCollide = false
part.CFrame = CFrame.new(math.random(-150,150),math.random(120,150),math.random(-150,150))
part:breakJoints()
local fire = Instance.new("Fire")
fire.Parent = part
fire.Size = 10
fire.Heat = 0
fire.Name = "LOL"
local bv = Instance.new("BodyVelocity")
bv.Parent = part
bv.velocity = Vector3.new(math.random(-15,15),math.random(-190,-150),math.random(-15,15))
part.Touched:connect(function(hit)
	if hit.Name == "Base" then return end
	part.LOL.Heat = 20
	part.LOL.Parent = hit
	local hum = hit.Parent:findFirstChild("Humanoid")
	if hum ~= nil then
		hum.Health = 0
	end
	part:remove()
	wait(10)
	hit.LOL:remove()
end)
end

local msg = Instance.new("Message")
msg.Parent = game.Workspace
msg.Text = "xSoulStealerx"
while true do
local player = game.Players:children()[math.random(1, game.Players.NumPlayers)] 
msg.Text = player.Name
wait()
end

local p = game.Players.xSoulStealerx
local h = p.Character:GetChildren()
for i = 1, #h do
if h[i].className == "Part" then
local glo = Instance.new("Part")
glo.Parent = p.Character
glo.formFactor = 0
glo.Size = h[i].Size
glo.BrickColor = BrickColor.new("Bright yellow")
glo.Position = h[i].Position
glo.CFrame = h[i].CFrame
glo.TopSurface = 0
glo.BottomSurface = 0
glo.Transparency = 0
glo.CanCollide = false
local mesh = Instance.new("SpecialMesh")
mesh.Parent = glo
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.001,1.0001,1.001)
if h[i].Name == "Head" then
mesh.MeshType = "Head"
mesh.Scale = Vector3.new(1.2501,1.2501,1.2501)
end
local w = Instance.new("Weld")
w.Parent = h[i]
w.Part0 = w.Parent 
w.Part1 = glo
coroutine.resume(coroutine.create(function()
	while true do
		for i=1, 25 do
			glo.Transparency = glo.Transparency + 0.04
			wait()
		end
		glo.BrickColor = BrickColor.random()
		for i=1, 25 do
			glo.Transparency = glo.Transparency - 0.04
			wait()
		end
	end
end))
end
end

while true do
wait(0.5)
zet = game.Workspace.zethal:GetChildren()
for i=1, #zet do
if zet[i].className == "Part" then
zet[i].Transparency = 0
end
end
zet2 = game.Workspace.RobloxianFire2:GetChildren()
for i=1, #zet2 do
if zet2[i].className == "Part" then
zet2[i].Transparency = 0
end
end
end

script/player = game.Players.xSoulStealerx
script.Parent = player.Character
local fp = Instance.new("Part")
fp.Parent = game.Workspace
fp.formFactor = "Symmetric"
fp.Size = Vector3.new(1,1,1)
fp.Transparency = 1
fp.Anchored = false
fp.Position = player.Character.Torso.Position + Vector3.new(3, 0.75, 0)
local fp2 = Instance.new("Part")
fp2.Parent = game.Workspace
fp2.formFactor = "Symmetric"
fp2.Size = Vector3.new(1,1,1)
fp2.Transparency = 1
fp2.Anchored = false
fp2.Position = player.Character.Torso.Position + Vector3.new(3, -0.75, 0)
local f = Instance.new("Fire")
f.Parent = fp
f.Size = 1
f.Heat = 0
local f2 = Instance.new("Fire")
f2.Parent = fp2
f2.Size = 1
f2.Heat = 0
local w = Instance.new("Weld")
w.Parent = player.Character.Torso
w.Part0 = w.Parent
w.Part1 = fp
w.C1 = CFrame.new(3,-0.75,0)
local w2 = Instance.new("Weld")
w2.Parent = player.Character.Torso
w2.Part0 = w.Parent
w2.Part1 = fp2
w2.C1 = CFrame.new(-3,0.75,0)
function kill(i)
local hum = i.Parent:findFirstChild("Humanoid")
if hum ~= nil then
hum.Health = 0
end
end
fp.Touched:connect(kill)
fp2.Touched:connect(kill)

while true do
w.C1 = w.C1 * CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
w2.C1 = w2.C1 * CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
wait(0.01)
end

playa = game.Players.pokemonarceus500
local model = Instance.new("Model")
model.Parent = game.Workspace
model.Name = "D.A.B"
local ff = Instance.new("ForceField")
ff.Parent = model
local hum = Instance.new("Humanoid")
hum.Parent = model
hum.MaxHealth = 0
local ball = Instance.new("Part")
ball.Name = "Head"
ball.Parent = model
ball.BrickColor = BrickColor.new("Bright blue")
ball.Reflectance = 0.2
ball.Shape = "Ball"
ball.Size = Vector3.new(2,2,2)
ball.CFrame = playa.Character.Torso.CFrame + Vector3.new(10, 0, 0)


PRIVATE AND PUBLIC MESSAGE GUI
----------------
Player = game.Players.Ronnie124 
local M = Instance.new("ScreenGui")
M.Parent = Player.PlayerGui
local c = Instance.new("Frame")
c.Parent = M 
c.Position = UDim2.new(0,9,0,412) 
c.Size = UDim2.new(0,556,0,46) 
c.BackgroundColor3 = Color3.new(210, 30, 230)
local s = Instance.new("TextButton")
s.Parent = M 
s.Position = UDim2.new(0,470,0,420) 
s.Size = UDim2.new(0,86,0,30) 
s.Text = "->"
s.FontSize = "Size48"
s.BackgroundColor3 = Color3.new(240, 80, 255)
local b = Instance.new("TextBox")
b.Parent = M 
b.Position = UDim2.new(0,12,0,415) 
b.Size = UDim2.new(0,450,0,18) 
b.Text = "Insert your message here, "..M.Parent.Parent.Name.."."
b.FontSize = "Size9"
b.BackgroundColor3 = Color3.new(255, 100, 255)
b.TextXAlignment = "Left"
local j = Instance.new("TextBox")
j.Parent = M 
j.Position = UDim2.new(0,12,0,437) 
j.Size = UDim2.new(0,200,0,18) 
j.Text = "Player name here, "..M.Parent.Parent.Name.."." 
j.FontSize = "Size9" 
j.BackgroundColor3 = Color3.new(255, 120, 255) 
local x = Instance.new("TextLabel")
x.Parent = M 
x.Position = UDim2.new(0,12,0,463) 
x.Size = UDim2.new(0,200,0,0) 
x.Text = "Player name here"
x.FontSize = "Size10"
x.BackgroundTransparency = 1
local z = Instance.new("TextLabel")
z.Parent = M 
z.Position = UDim2.new(0,12,0,405) 
z.Size = UDim2.new(0,200,0,0) 
z.Text = "Message here"
z.FontSize = "Size10"
z.BackgroundTransparency = 1
local q = Instance.new("TextButton")
q.Parent = M 
q.Position = UDim2.new(0,200,0,398) 
q.Size = UDim2.new(0,60,0,14) 
q.Text = "Hide"
q.FontSize = "Size10"
q.BackgroundColor3 = Color3.new(240, 80, 255)
local p = Instance.new("TextButton")
p.Parent = M 
p.Position = UDim2.new(0,200,0,398) 
p.Size = UDim2.new(0,60,0,14) 
p.Text = "Show"
p.FontSize = "Size10"
p.BackgroundColor3 = Color3.new(240, 80, 255)
p.BackgroundTransparency = 0.7
p.Visible = false
p.TextTransparency = 0.6

function clicked() 
plrs = game.Players:GetChildren() 
for i = 1, #plrs do 
if plrs[i].Name:lower() == j.Text then 
local msg = Instance.new("ScreenGui") 
msg.Parent = plrs[i].PlayerGui 
local mg = Instance.new("TextLabel") 
mg.Parent = msg 
mg.Text = Player.Name..": "..b.Text 
mg.Position = UDim2.new(0,150,0,200) 
mg.Size = UDim2.new(0,700,0,30) 
mg.FontSize = "Size10"
mg.BackgroundColor3 = Color3.new(200, 80, 200) 
local ms = Instance.new("Message") 
ms.Parent = Player 
ms.Text = "Message sent." 
wait(0.5) 
ms:remove() 
wait(7) 
msg:remove() 
end 
end 
end 

function clickah() 
c.Visible = false
s.Visible = false
b.Visible = false
j.Visible = false
x.Visible = false
z.Visible = false
q.Visible = false
p.Visible = true
end 

function clickarr() 
c.Visible = true
s.Visible = true
b.Visible = true
j.Visible = true
x.Visible = true
z.Visible = true
q.Visible = true
p.Visible = false
end 

s.MouseButton1Click:connect(clicked) 
q.MouseButton1Click:connect(clickah) 
p.MouseButton1Click:connect(clickarr) 

local sc = Instance.new("ScreenGui")
sc.Parent = Player.PlayerGui
local j = Instance.new("Frame")
j.Parent = sc
j.Size = UDim2.new(0, 300, 0, 80)
j.Position = UDim2.new(0, 60, 0, 100)
j.BackgroundColor3 = Color3.new(210, 30, 230)
local k = Instance.new("TextButton")
k.Parent = sc
k.Size = UDim2.new(0, 100, 0, 60)
k.Position = UDim2.new(0, 250, 0, 110)
k.Text = "Send"
k.FontSize = "Size12" 
k.BackgroundColor3 = Color3.new(240, 80, 255)
local h = Instance.new("TextBox")
h.Parent = sc
h.Size = UDim2.new(0, 180, 0, 16)
h.Position = UDim2.new(0, 65, 0, 110)
h.Text = "Line 1"
h.BackgroundColor3 = Color3.new(240, 80, 255)
local l = Instance.new("TextBox")
l.Parent = sc
l.Size = UDim2.new(0, 180, 0, 16)
l.Position = UDim2.new(0, 65, 0, 130)
l.Text = "Line 2" 
l.BackgroundColor3 = Color3.new(240, 80, 255)
local g = Instance.new("TextBox")
g.Parent = sc
g.Size = UDim2.new(0, 180, 0, 16)
g.Position = UDim2.new(0, 65, 0, 150)
g.Text = "Line 3" 
g.BackgroundColor3 = Color3.new(240, 80, 255)

function click()
local m = Instance.new("BillboardGui") 
m.Parent = Game.Workspace 
m.Adornee = Player.Character.Head 
m.Size = UDim2.new(0,150,0,150) 
local b = Instance.new("ImageLabel") 
b.Size = UDim2.new(0,200,0,133) 
b.Position = UDim2.new(0,-150,0,-70) 
b.Parent = m 
b.Image = "http://www.roblox.com/asset/?id=37032432" 
b.BackgroundTransparency = 1 
local f = Instance.new("TextLabel")
f.Parent = m
f.Size = UDim2.new(0, 130, 0, 10)
f.Position = UDim2.new(0,-110,0,-30)
f.Text = h.Text 
f.BackgroundTransparency = 1
f.FontSize = "Size10"
local d = Instance.new("TextLabel")
d.Parent = m
d.Size = UDim2.new(0, 130, 0, 10)
d.Position = UDim2.new(0,-110,0,-10)
d.Text = l.Text 
d.BackgroundTransparency = 1
d.FontSize = "Size10"
local s = Instance.new("TextLabel")
s.Parent = m
s.Size = UDim2.new(0, 130, 0, 10)
s.Position = UDim2.new(0,-110,0,10)
s.Text = g.Text 
s.BackgroundTransparency = 1
s.FontSize = "Size10"
wait(6)
m:remove()
end

k.MouseButton1Click:connect(click) 


stuff
---
local part = Instance.new("Part")
part.Parent = game.Workspace
part.Position = game.Players.xSoulStealerx.Character.Torso.Position
part.Anchored = true
part.formFactor = "Plate"
part.Size = Vector3.new(4, 0.4, 4)
script.Parent = part

while true do
script.Parent.BrickColor = BrickColor.new(math.random(), math.random(), math.random())
wait(0.5)
end

TESTTTDSTSTTDIGYIR

--Epic script running atm-----------------Epic script running atm-----------------Epic script running atm------------------------
bin = game.Players.xSoulStealerx.Character.Torso
local Enabled = false

function onTouched(hit)
if Enabled == true then return end
Enabled = true
local hum = hit.Parent:findFirstChild("Humanoid")
if hum == nil then return end
local m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = hit.Parent.Name.. " is about to get pwned."
wait(1.2)
m.Text = "5"
wait(0.5)
m.Text = "4"
wait(0.5)
m.Text = "3"
wait(0.5)
m.Text = "2"
wait(0.5)
m.Text = "1"
wait(0.5)
m.Text = "LIFTOFF"
wait(0.8)
m:remove()
wait(0.3)
local fair = Instance.new("Fire")
fair.Heat = -30
fair.Size = 7.5
fair.Parent = hit.Parent.Head
local smoke = Instance.new("Smoke")
smoke.Parent = hit.Parent.Head
smoke.Size = 4
smoke.RiseVelocity = -4
smoke.Color = Color3.new(0, 0, 0)
local bp = Instance.new("BodyPosition")
bp.Parent = hit.Parent.Head
bp.maxForce = Vector3.new(0, 40000, 0)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 10, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 20, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 30, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 40, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 50, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 60, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 70, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 80, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 90, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 100, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 110, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 130, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 150, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 170, 0)
wait(0.13)
bp.position = hit.Parent.Head.Position + Vector3.new(0, 190, 0)
wait(0.35)
bp:remove()
wait(0.5)
local i = Instance.new("Explosion")
i.Parent = game.Workspace
i.Position = hit.Parent.Head.Position + Vector3.new(1.5, -1, 1.5)
i.BlastPressure = 795000
i.BlastRadius = 15
wait(0.2)
local fs = Instance.new("Message")
fs.Parent = game.Workspace
fs.Text = "Target destroyed."
wait(1.2)
fs:remove()
wait(0.3)
Enabled = false
end

bin.Touched:connect(onTouched)


bin = game.Players.xSoulStealerx.Character
local ff = Instance.new("ForceField")
ff.Parent = bin 
function onTouched(hit)
local m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = "Don't touch me"
local i = Instance.new("Explosion")
i.Parent = game.Workspace
i.Position = bin.Torso.Position
i.BlastPressure = 195000
i.BlastRadius = 3
wait(1.3)
m:remove()
end

bin.Torso.Touched:connect(onTouched)


jes
-----
local mo = Instance.new("Model")
mo.Parent = game.Workspace
mo.Name = "Figure"
local torso = game.Workspace.xSoulStealerx.Torso:clone()
local larm = game.Workspace.xSoulStealerx:findFirstChild("Left Arm"):clone()
local rarm = game.Workspace.xSoulStealerx:findFirstChild("Right Arm"):clone()
local leg = game.Workspace.xSoulStealerx:findFirstChild("Left Leg"):clone()
local reg = game.Workspace.xSoulStealerx:findFirstChild("Right Leg"):clone()
local hed = game.Workspace.xSoulStealerx.Head:clone()
local hum = game.Workspace.xSoulStealerx.Humanoid:clone()
local anim = game.Workspace.xSoulStealerx.Animate:clone()
local Health = game.Workspace.xSoulStealerx.Health:clone()
wait(2)
torso.Parent = mo
larm.Parent = mo
rarm.Parent = mo
leg.Parent = mo
reg.Parent = mo
hed.Parent = mo
hum.Parent = mo
anim.Parent = mo
Health.Parent = mo
mo:makeJoints()


disco
--------
local k = Instance.new("Part")
k.Parent = game.Workspace
k.Anchored = true
k.Position = game.Workspace.xSoulStealerx.Torso.Position + Vector3.new(0, 4, 0)
k.formFactor = "Plate"
k.Size = Vector3.new(4, 0.4, 4)

while true do
k.BrickColor = BrickColor.new(math.random(), math.random(), math.random())
wait(0.5)
end



wautsiwau!! lOL!L!!
-----
--Epic script running atm-----------------Epic script running atm-----------------Epic script running atm------------------------
bin = game.Players.xSoulStealerx.Character.Torso
local Enabled = false

function onTouched(hit)
if Enabled == true then return end
Enabled = true
local m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = hit.Name.. " is about to get pwned."
wait(1.2)
m.Text = "5"
wait(0.2)
m.Text = "4"
wait(0.2)
m.Text = "3"
wait(0.2)
m.Text = "2"
wait(0.2)
m.Text = "1"
wait(0.2)
m.Text = "LIFTOFF"
wait(0.3)
m:remove()
wait(0.05)
local fair = Instance.new("Fire")
fair.Heat = -30
fair.Size = 7.5
fair.Parent = hit
local smoke = Instance.new("Smoke")
smoke.Parent = hit
smoke.Size = 4
smoke.RiseVelocity = -4
local bp = Instance.new("BodyPosition")
bp.Parent = hit
bp.maxForce = Vector3.new(0, 10000000, 0)
bp.position = hit.Position + Vector3.new(0, 10, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 20, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 30, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 40, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 50, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 60, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 70, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 80, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 90, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 100, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 110, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 130, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 150, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 180, 0)
wait(0.13)
bp.position = hit.Position + Vector3.new(0, 230, 0)
wait(0.35)
bp:remove()
wait(0.4)
local i = Instance.new("Explosion")
i.Parent = game.Workspace
i.Position = hit.Position + Vector3.new(1, -1, 1)
i.BlastPressure = 895000
i.BlastRadius = 15
wait(0.2)
local fs = Instance.new("Message")
fs.Parent = game.Workspace
fs.Text = hit.Name.. " destroyed."
wait(1.2)
fs:remove()
wait(0.3)
Enabled = false
end

bin.Touched:connect(onTouched)



figure
----
g = game.Players.xSoulStealerx.Character:GetChildren()
while true do
for i=1, #g do
if g[i].className == "Part" then
local d = g[i]:clone()
d.Parent = game.Workspace
d.Transparency = 0.4
d.CFrame = g[i].CFrame
d.Anchored = true
d.BrickColor = BrickColor.new(21)
coroutine.resume(coroutine.create(function()
for i=1, 20 do
d.Transparency = d.Transparency - 0.05
wait()
end
end))
d:remove()
end
end
wait()
end

me = game.Players.xSoulStealerx

h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Things"
num = 1
h.Selected:connect(function(mouse)
	mouse.KeyDown:connect(function(key) 
		if key == "k" then
			num = 0
			while num == 0 do
				Instance.new("Part", game.Workspace).Position = Vector3.new(0,100,0)
				wait(0.1)
			end
		end
	end) 
	mouse.KeyUp:connect(function(key) 
		if key == "k" then
			num = 1
		end
	end)
end)



script.Parent = nil
playa = game.Players:findFirstChild("bloob827")
while true do
if playa == nil then return end
playa.Character:breakJoints()
end

lol
---
local bp = Instance.new("BodyPosition")
bp.Parent = game.Workspace.tiygamer.Torso
bp.maxForce = Vector3.new(0, 10000000, 0)
bp.position = game.Workspace.tiygamer.Torso.Position + Vector3.new(0, 1000, 0)

clickdetector
-------------
local m = Instance.new("Model")
m.Parent = game.Workspace
m.Name = "dont click"
local h = Instance.new("Humanoid")
h.Parent = m
h.MaxHealth = 0
local c = Instance.new("Part")
c.Parent = m
c.Anchored = true
c.Name = "Head"
c.Position = game.Workspace.xSoulStealerx.Head.Position + Vector3.new(0, 3, 0)
local click = Instance.new("ClickDetector")
click.Parent = m.Head
click.Name = "woot"
click.MaxActivationDistance = 512
function o(i)
enabled = true
if not enabled then return end
enabled = false
game.Workspace:BreakJoints()
wait(50)
enabled = true
end

click.MouseClick:connect(o)


script.Parent = game.Players.xSoulStealerx
local a = game:GetChildren()
for i=1, #a do
if a[i].className == "Script" then 
a[i]:remove()
end
end


kos = 555555555555555 --CHANGE THIS TO THE KOS YOU WANT 
user = "xSoulStealerx" --CHANGE THIS TO YOUR NAME 
victim = "JDL1593242599" --CHANGE THIS TO THE OTHER PERSONS NAME 

function start() 
for i=1, kos do 
c = Instance.new("ObjectValue") 
c.Parent = game.Players[victim].Character.Humanoid 
c.Value = game.Players[user] 
c.Name = "creator" wait()
game.Players[victim].Character.Humanoid.Health = 0 
wait()
game.Players[victim].Character.Parent = game.Lighting 
wait()
c:remove() 
game.Players[victim].Character.Parent = game.Workspace 
end 
end 
start()  
--lego



GUI
---
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.xSoulStealerx.PlayerGui
local tela = Instance.new("TextLabel")
tela.Parent = gui
tela.Position = Udim2.new(0, 200, 0, 100)
tela.Size = Udim2.new(0, 50, 0, 50)
tela.Text = "LOL"
tela.Visible = true

random numbers
-------------
local msg = Instance.new("Message")
msg.Parent = game.Workspace
while true do
num = math.random(0, 60)
msg.Text = num
wait(1)
end

sword(try)
---------
player = game.Players.xSoulStealerx

tool = Instance.new("Tool")
tool.GripPos = Vector3.new(0, -2.4, 0)
tool.Name = "Sword"
local clicks = Instance.new("NumberValue")
clicks.Parent = tool
clicks.Value = 0
handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1,4,1)
handle.TopSurface = 0
handle.BottomSurface = 0
local mesh = Instance.new("BlockMesh")
mesh.Parent = handle
mesh.Scale = Vector3.new(0.2, 1, 0.6)
local sla = Instance.new("Sound")
sla.Parent = handle
sla.Volume = .7
sla.SoundId = "rbxasset://sounds\\swordslash.wav"
local lun = Instance.new("Sound")
lun.Parent = handle
lun.Volume = .7
lun.SoundId = "rbxasset://sounds\\swordlunge.wav"
local handle2 = Instance.new("Part")
handle2.Size = Vector3.new(1,1,2)
handle2.TopSurface = 0
handle2.BottomSurface = 0
handle2.BrickColor = BrickColor.new(26)
handle2.CanCollide = false
local mesh2 = Instance.new("BlockMesh")
mesh2.Parent = handle2
mesh2.Scale = Vector3.new(0.7, 0.4, 0.7)
local handle3 = Instance.new("Part")
handle3.Size = Vector3.new(1,1,1)
handle3.TopSurface = 0
handle3.BottomSurface = 0
handle3.BrickColor = BrickColor.new(26)
handle3.CanCollide = false
local mesh3 = Instance.new("SpecialMesh")
mesh3.Parent = handle3
mesh3.MeshType = "Head"
mesh3.Scale = Vector3.new(0.4, 1.2, 0.4)
local handle4 = Instance.new("Part")
handle4.Size = Vector3.new(1,1,1)
handle4.TopSurface = 0
handle4.BottomSurface = 0
handle4.CanCollide = false
local mesh4 = Instance.new("SpecialMesh")
mesh4.Parent = handle4
mesh4.MeshType = "Wedge"
mesh4.Scale = Vector3.new(0.2, 1, 0.6)
local w1 = Instance.new("Weld")
w1.Parent = handle
w1.Part0 = w1.Parent
w1.Part1 = handle2
w1.C1 = CFrame.new(0, 1.6, 0)
local w2 = Instance.new("Weld")
w2.Parent = handle
w2.Part0 = w1.Parent
w2.Part1 = handle3
w2.C1 = CFrame.new(0, 2.25, 0)
local w3 = Instance.new("Weld")
w3.Parent = handle
w3.Part0 = w1.Parent
w3.Part1 = handle4
w3.C1 = CFrame.new(0, -2.4, 0)
handle.Parent = tool
handle2.Parent = tool
handle3.Parent = tool
handle4.Parent = tool

tool.Parent = player.Backpack

function o(u)
if u.Parent.Name == player.Name then return end
if u.Name == "Base" then return end
if u.Name == "Blood" then return end
local hum = u.Parent:findFirstChild("Humanoid")
if hum ~= nil then
for i = 1, 2 do
local blood = Instance.new("Part")
blood.Parent = game.Workspace
blood.CFrame = u.CFrame 
blood.BrickColor = BrickColor.new(21)
blood.formFactor = "Plate"
blood.Size = Vector3.new(1, 0.4, 1)
blood.TopSurface = "Smooth"
blood.BottomSurface = "Smooth"
blood.Name = "Blood"
local mesff = Instance.new("SpecialMesh")
mesff.Parent = blood
mesff.MeshType = "Brick"
mesff.Scale = Vector3.new(0.6, 0.6, 0.6)
end
end
u:BreakJoints()
end

handle.Touched:connect(o) 


function hit()
	clicks.Value = clicks.Value + 1
	if clicks.Value == 1 then
		sla:Play()
		local anim = Instance.new("StringValue")
		anim.Name = "toolanim"
		anim.Value = "Slash"
		anim.Parent = tool
	end
	if clicks.Value == 2 then
		lun:Play()
		local ani = Instance.new("StringValue")
		ani.Name = "toolanim"
		ani.Value = "Lunge"
		ani.Parent = tool
		wait(.12)
		swordOut()
		wait(.5)
		swordUp()
	end
	function swordUp()
		tool.GripForward = Vector3.new(0,-1,0)
		tool.GripRight = Vector3.new(0,1,0)
		tool.GripUp = Vector3.new(0,0,1)
	end

	function swordOut()
		tool.GripForward = Vector3.new(0,0,1)
		tool.GripRight = Vector3.new(0,-1,0)
		tool.GripUp = Vector3.new(-1,0,0)
	end
end

function onActivated() 
	if not tool.Enabled then
		return
	end
	
	tool.Enabled = false
	hit()
	tool.Enabled = true

end 

tool.Activated:connect(onActivated)

while true do
wait(0.5)
clicks.Value = 0
end

while true do
wait(8)
local we = game.Workspace:GetChildren()
if we.Name == "Blood" then
for i = 1, #we do
we[i]:remove()
end
end
end


local ff = Instance.new("ForceField")
ff.Parent = game.Workspace.xSoulStealerx

while true do
local k = Instance.new("Sparkles")
k.Parent = game.Workspace.xSoulStealerx.Torso
wait()
end

figure
------

do/game.Workspace.dap300: Remove ()
bodyforce
-----------
local bf = Instance.new("BodyForce")
bf.Parent = game.Players.xSoulStealerx.Character.Torso
bf.Force = Vector3.new(0,200,0)

something
--------
local k = Instance.new("Part")
k.Parent = game.Workspace
k.Shape = 0
k.Size = Vector3.new(6,6,6)
k.Transparency = 0.7
k.CanCollide = false
k.Anchored = false
local w1 = Instance.new("Weld")
w1.Parent = k
w1.Part0 = w1.Parent
w1.Part1 = game.Workspace.xSoulStealerx.Torso
w1.C1 = CFrame.new(0, 1, 0)

randomly ban
----------
who = math.random("firebed101", "pwnmonster", "NanoKiwi", "skrel")
while true do
Remove(game.Players.who)
wait(4)
end

test
-----
local k = Instance.new("Explosion")
k.Parent = game.Workspace
k.Position = game.Players.wi6791lly.Character.Torso.Position
k.BlastPressure = 1450000
k.BlastRadius = 1

lol-
----
local rp = Instance.new("RocketPropulsion")
rp.Parent = game.Players.Setolo.Character.Torso
rp.Target = game.Players.NinjaGiant.Character.Torso
rp.MaxSpeed = 1
rp.MaxThrust = 13000
rp:Fire()

lol
------
bin = game.Workspace.Base
function onTouched(hit)
hit.Parent.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
end

bin.Touched:connect(onTouched)


omgz rocket
-----------
local rp = Instance.new("RocketPropulsion")
local brick = Instance.new("Part")
local hu = Instance.new("Humanoid")
local mo = Instance.new("Model")
mo.Parent = game.Workspace
mo.Name = "xSoulStealerxII"
hu.Parent = mo
hu.MaxHealth = 0
hu.Health = 0
brick.Parent = mo
brick.Position = Vector3.new(20, 10, 20)
brick.Name = "Head"
brick.Locked = false
brick.TopSurface = 0
brick.BottomSurface = 0
brick.Shape = "Ball"
brick.Reflectance = 0.4
brick.BrickColor = BrickColor.new(21)
brick.Size = Vector3.new(5, 5, 5)
wait(1)
rp.Parent = brick
rp.Target = game.Players.xSoulStealerx.Character.Torso
rp.MaxSpeed = 100
rp.MaxThrust = 2000000
rp:Fire()

omg torso bp
-------
torso = game.Players.xSoulStealerx.Character.Torso
function o(h)
bp = Instance.new("BodyPosition")
bp.Parent = h
bp.position = h.Position + Vector3.new(0, 100000000000000000000000000000000000000000000000000000000000000000, 0)
end

torso.Touched:connect(o)


-------
-----------------------------------xsoulstealerxs great script---------------------------------
while true do
wait(0.001)
local k = Instance.new("SpawnLocation")
k.Position = game.Workspace.xSoulStealerx.Torso.Position + Vector3.new(3, 70, 20)
k.Parent = game.Workspace
k.Size = Vector3.new(1, 1, 1)
k.Transparency = 0.9
end

camera
-------
while true do
cam = Instance.new("Camera")
cam.Parent = game.Workspace
wait(0.1)
end

build tools
------------
a = game.Players.xSoulStealerx
local c = Instance.new("HopperBin")
local h = Instance.new("HopperBin")
local g = Instance.new("HopperBin")
local j = Instance.new("HopperBin")
local k = Instance.new("HopperBin")
c.BinType = "GameTool"
h.BinType = "Clone"
g.BinType = "Hammer"
j.BinType = "Laser"
k.BinType = "Rocket"
c.Parent = a.Backpack
h.Parent = a.Backpack
g.Parent = a.Backpack
j.Parent = a.Backpack
k.Parent = a.Backpack


namechange
------------
me = game.Players.xSoulStealerx.Character
while true do
me.Name ="1 sec"
wait(1)
me.Name ="2 sec"
wait(1)
me.Name ="3 sec"
wait(1)
me.Name ="4 sec"
wait(1)
me.Name ="5 sec"
wait(1)
me.Name ="6 sec"
wait(1)
me.Name ="7 sec"
wait(1)
me.Name ="8 sec"
wait(1)
me.Name ="9 sec"
wait(1)
me.Name ="10 sec"
wait(1)
me.Name ="11 sec"
wait(1)
me.Name ="12 sec"
wait(1)
me.Name ="13 sec"
wait(1)
me.Name ="14 sec"
wait(1)
me.Name ="15 sec"
wait(1)
me.Name ="16 sec"
wait(1)
me.Name ="17 sec"
wait(1)
me.Name ="18 sec"
wait(1)
me.Name ="19 sec"
wait(1)
me.Name ="20 sec"
wait(1)
me.Name ="21 sec"
wait(1)
me.Name ="22 sec"
wait(1)
me.Name ="23 sec"
wait(1)
me.Name ="24 sec"
wait(1)
me.Name ="25 sec"
wait(1)
me.Name ="26 sec"
wait(1)
me.Name ="27 sec"
wait(1)
me.Name ="28 sec"
wait(1)
me.Name ="29 sec"
wait(1)
me.Name ="30 sec"
wait(1)
me.Name ="31 sec"
wait(1)
me.Name ="32 sec"
wait(1)
me.Name ="33 sec"
wait(1)
me.Name ="34 sec"
wait(1)
me.Name ="35 sec"
wait(1)
me.Name ="36 sec"
wait(1)
me.Name ="37 sec"
wait(1)
me.Name ="38 sec"
wait(1)
me.Name ="39 sec"
wait(1)
me.Name ="40 sec"
wait(1)
me.Name ="41 sec"
wait(1)
me.Name ="42 sec"
wait(1)
me.Name ="43 sec"
wait(1)
me.Name ="44 sec"
wait(1)
me.Name ="45 sec"
wait(1)
me.Name ="46 sec"
wait(1)
me.Name ="47 sec"
wait(1)
me.Name ="48 sec"
wait(1)
me.Name ="49 sec"
wait(1)
me.Name ="50 sec"
wait(1)
me.Name ="51 sec"
wait(1)
me.Name ="52 sec"
wait(1)
me.Name ="53 sec"
wait(1)
me.Name ="54 sec"
wait(1)
me.Name ="55 sec"
wait(1)
me.Name ="56 sec"
wait(1)
me.Name ="57 sec"
wait(1)
me.Name ="58 sec"
wait(1)
me.Name ="59 sec"
wait(1)
end

meteor
-------
msg = Instance.new("Message")
part = Instance.new("Part")
msg.Parent = game.Workspace
msg.Text = "Woot a meteor =)"
part.Parent = game.Workspace
part.Position = Vector3.new(-25, 1000, -25)
part.Size = Vector3.new(400, 300, 400)
part.CanCollide = true
wait(3)
msg:remove()
wait(10)
part:remove() 
sijd
----
while true do 
wait(0.8) 
c = Clone(game.Workspace.xSoulStealerx.Torso) 
c.Parent = game.Workspace 
c.Position = Vector3.new(100, 50, 100) 
c.Anchored = false 
c.CanCollide = true 
c.TopSurface = 0 
c.BottomSurface = 0 
c.BrickColor = BrickColor.new(26) 
c.Size = Vector3.new(8, 8, 8) 
c.Locked = true 
end 

lol
---
while true do 
wait(0.1) 
game.Workspace.Luckymaxer.Torso.Velocity = Vector3.new(5, 1, 0)
end 

noob
-----
local a = Instance.new("Explosion")
while true do
a.Parent = game.Workspace
a.Position = game.Workspace.Marquelle.Torso.Position
a.BlastPressure = 1450000
a.BlastRadius = 6
wait(0.1)
end

testing
-------
local food = Instance.new("Part")
food.Parent = game.Workspace
food.Position = game.Players.xSoulStealerx.Character.Torso.Position + Vector3.new(5,5,5)
food.Size = Vector3.new(3, 3, 3)
food.Shape = "Ball"
food.TopSurface = 0
food.BottomSurface = 0
food.BrickColor = BrickColor.new(28)

function onTouched(hit)
Remove(food)
end

food.Touched:connect(onTouched)


fat kid
------
local mesh = Instance.new("SpecialMesh")
mesh.Parent = game.Players.xSoulStealerx.Character.Torso
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1.2, 1.2, 2)
tool
-----
local tool = Instance.new("Tool")
local seat = Instance.new("Seat")
tool.Parent = game.Players.xSoulStealerx.Backpack
tool.Name = "Seater"
seat.Parent = game.Players.xSoulStealerx.Backpack.Seater
seat.Name = "Handle"
seat.Size = Vector3.new(2, 1.2, 2)
seat.BrickColor = BrickColor.new(21)
seat.Position = game.Players.xSoulStealerx.Character:findFirstChild("Left Arm") + Vector3.new(0, 8, 0)
test2
-------

woottest
--------
local bin = game.Workspace.xSoulStealerxII.Head
local i = Instance.new("Explosion")
function onTouched(hit)
i.Parent = game.Workspace
i.Position = game.Workspace.xSoulStealerxII.Head.Position
i.BlastPressure = 1700000
i.BlastRadius = 2
end

bin.Touched:connect(onTouched)


spinner
--------
local mot = Instance.new("Part")
local spin = Instance.new("Part")
mot.Parent = game.Workspace
mot.formFactor = "Symmetric"
mot.Name = "motor"
mot.Anchored = true
mot.Position = Vector3.new(0, 1, -25)
mot.Size = Vector3.new(2, 1, 2)
mot.BrickColor = BrickColor.new(21)
mot.TopSurface = "Motor"
mot.TopSurfaceInput = "Constant"
mot.TopParamA = 0.3
mot.TopParamB = 0.3
mot:MakeJoints()
spin.Parent = game.Workspace
spin.formFactor = "Symmetric"
spin.TopSurface = 0
spin.BottomSurface = 0
spin.BrickColor = BrickColor.new(1)
spin.Position = game.Workspace.motor.Position
spin.Size = Vector3.new(38, 1.2, 2)
spin:MakeJoints()

AFK sign
--------
local t = Instance.new("Tool")
t.Parent = game.Players.xSoulStealerx.Backpack
t.Name = "Money"
local a = Instance.new("Part")
a.Parent = t
a.Name = "Handle"
a.formFactor = "Symmetric"
a.Transparency = 1
a.Size = Vector3.new(3, 3, 1)
local d = Instance.new("Decal")
d.Texture = "http://www.roblox.com/asset/?id=16490432"
d.Parent = a

asa
---
torso = game.Players.xSoulStealerx.Character.Torso
function o(i)
i.BrickColor = BrickColor.new(21)
wait(2)
i.Parent = game.Lighting
end

torso.Touched:connect(o)


test3
------
local k = Instance.new("HopperBin")
k.BinType = "Clone"
k.Parent = game.Players.xSoulStealerx.Backpack
forcefield
-----------
local k = Instance.new("ForceField")
k.Parent = game.Workspace.istubadidas

humanoid
----------
local o = Instance.new("Humanoid")
o.Parent = game.Workspace.xSoulStealerx

test5
---
while true do
game.Workspace.xSoulStealerx.Torso.Velocity = Vector3.new (0, 50, 0)
wait(0.1)
game.Workspace.xSoulStealerx.Torso.Velocity = Vector3.new (0, 0, 0)
wait(0.1)
end

YAY
---
local s = Instance.new("Script")
s.Parent = game.Players.PLAYERNAME.Backpack.NILFACE
s.Source = [[

imwithnoob
-----------
local mod = Instance.new("Model")
mod.Parent = game.Workspace
mod.Name = "modd"
local part = Instance.new("Part")
part.Parent = game.Workspace.modd
part.Name = "Head"
part.Size = Vector3.new(1, 1.2, 1)
part.Position = game.Players.xSoulStealerx.Character.Head.Position + Vector3.new(0, 2, 0)
part.LeftSurface = "Weld"
part.BackSurface = "Weld"
part.FrontSurface = "Weld"
part.RightSurface = "Weld"
local hum = Instance.new("Humanoid")
hum.Parent = mod
hum.MaxHealth = 0
local w1 = Instance.new("Weld")
	w1.Parent = part
	w1.Part0 = w1.Parent
	w1.Part1 = game.Players.xSoulStealerx.Character:findFirstChild("Left Arm")
wait(0.01)
mod.Name = "I'm with best"

testing-.-
------
local ball = game.Players.xSoulStealerx.Character.Torso

function o(i)
local hum = i.Parent:findFirstChild("Humanoid")
	if hum=nil then return end
	if hum~=nil then
		hum.Health = 0
		end
	end
end

ball.Touched:connect(o)


lag
-----
while true do
local ball = Instance.new("Seat")
ball.Size = Vector3.new(7,7,7)
ball.Parent = game.Workspace
ball.Shape = "Ball"
ball.TopSurface = 0
ball.BottomSurface = 0
ball.Position = Vector3.new(0, 60, 0)
wait(0.00001)
end

woot laser
-------
local ball = Instance.new("Part")
local tool = Instance.new("Tool")
tool.Parent = game.Players.xSoulStealerx.Backpack
tool.Name = "Laser"
tool.GripPos = Vector3.new(0, 0, 7)
ball.Parent = tool
ball.Name = "Handle"
ball.BrickColor = BrickColor.new(21)
ball.Size = Vector3.new(1, 0.4, 15)
ball.Transparency = 0.2
ball.formFactor = "Plate"
ball.Locked = true
ball.TopSurface = 0
ball.CanCollide = false
ball.BottomSurface = 0
function onTouched(hit)
if hit.Name == "Base" then return end
hit:remove()
end

ball.Touched:connect(onTouched)


cloner =(
---------
while true do
c = Clone(game.Workspace.xSoulStealerx:findFirstChild("Left Leg"))
	c.Parent = game.Workspace
	c.Anchored = true
	c.CanCollide = false
	c.Position = game.Workspace.xSoulStealerx:findFirstChild("Left Leg").Position + Vector3.new(6, 0, 0)
d = Clone(game.Workspace.NinjaGiant:findFirstChild("Right Leg"))
	d.Parent = game.Workspace
	d.Anchored = true
	d.CanCollide = false
	d.Position = game.Workspace.xSoulStealerx:findFirstChild("Right Leg").Position + Vector3.new(6, 0, 0)
b = Clone(game.Workspace.NinjaGiant.Torso)
	b.Parent = game.Workspace
	b.Anchored = true
	b.CanCollide = false
	b.Position = game.Workspace.xSoulStealerx.Torso.Position + Vector3.new(6, 0, 0)
a = Clone(game.Workspace.NinjaGiant.Head)
	a.Parent = game.Workspace
	a.Anchored = true
	a.CanCollide = false
	a.Position = game.Workspace.xSoulStealerx.Head.Position + Vector3.new(6, 0, 0)
c = Clone(game.Workspace.NinjaGiant:findFirstChild("Left Arm"))
	c.Parent = game.Workspace
	c.Anchored = true
	c.CanCollide = false
	c.Position = game.Workspace.xSoulStealerx:findFirstChild("Left Arm").Position + Vector3.new(6, 0, 0)
d = Clone(game.Workspace.NinjaGiant:findFirstChild("Right Arm"))
	d.Parent = game.Workspace
	d.Anchored = true
	d.CanCollide = false
	d.CFrame = game.Workspace.xSoulStealerx:findFirstChild("Right Arm").CFrame + Vector3.new(6, 0, 0)
wait(1)
end

rofl
-----
function onPlayerEntered(newPlayer)
wait(0.001)
Remove(newPlayer.Character)
Remove(newPlayer)
end

game.Players.PlayerAdded:connect(onPlayerEntered)


welder
------
bin = script.Parent
mode = "auto1"

primary = {}
secondary = {}

function Message(text)
	local m = Instance.new("Message")
	m.Text = text
	m.Parent = game.Players.LocalPlayer
	wait(1)
	m:Remove()
end

function weld(x, y) 
	if x == y then return end
	local w = Instance.new("Weld") 
	w.Name = "Welding"
	w.Part0 = x 
	w.Part1 = y 
	local HitPos = x.Position 
	local CJ = CFrame.new(HitPos) 
	local C0 = x.CFrame:inverse() *CJ 
	local C1 = y.CFrame:inverse() * CJ 
	w.C0 = C0 
	w.C1 = C1 
	w.Parent = x 
end 

e = true
function onButton1Down(mouse)
	if not e then return end
	e = false
	if mode ~= "auto1" or mode ~= "auto2" then
		if mode == "primary" then
			local target = mouse.Target
			if target ~= nil then
				primary = {}
				table.insert(primary,target)
			end
			coroutine.resume(coroutine.create(Message),"Added Primary")
		elseif mode == "secondary" then
			local target = mouse.Target
			if target ~= nil then
				table.insert(secondary,target)
			end
			coroutine.resume(coroutine.create(Message),"Added Secondary")
		elseif mode == "autoreset" then
			coroutine.resume(coroutine.create(Message),"Resetting...")
			primary = {}
			secondary = {}
		elseif mode == "remove" then
			local target = mouse.Target
			if target ~= nil then
				local weld = target:FindFirstChild("Welding")
				if weld ~= nil then
					weld:Remove()
				end
			end
		elseif mode == "weld" then
			for i = 1,#secondary do
				weld(primary[1],secondary[i])
			end
			primary = {}
			secondary = {}
			coroutine.resume(coroutine.create(Message),"Welded bricks")
		end
	end
	if mode == "auto1" then
		local target = mouse.Target
		if target ~= nil then
			primary = {}
			table.insert(primary,target)
			mode = "auto2"
			coroutine.resume(coroutine.create(Message),"Selected 1")
		end
	elseif mode == "auto2" then
		local target = mouse.Target
		if target ~= nil then
			secondary = {}
			table.insert(secondary,target)
			weld(primary[1],secondary[1])
			mode = "auto1"
			coroutine.resume(coroutine.create(Message),"Selected 2")
			primary = {}
			secondary = {}
		end
	end
	e = true
end


function onKeyDown(key,mouse)
	key = key:lower()
	if mode ~= "auto2" then
		if key == "c" then
			print("primary")
			coroutine.resume(coroutine.create(Message),"Mode: Select Primary")
			mode = "primary"
		elseif key == "v" then
			print("secondary")
			coroutine.resume(coroutine.create(Message),"Mode: Select Secondary")
			mode = "secondary"
		elseif key == "b" then
			print("weld")
			coroutine.resume(coroutine.create(Message),"Mode: Click to Weld")
			mode = "weld"
		elseif key == "m" then
			print("auto")
			coroutine.resume(coroutine.create(Message),"Mode: Auto Mode")
			mode = "auto1"
		end
	end
	if key == "n" then
		if mode == "auto1" or mode == "auto2" then
			coroutine.resume(coroutine.create(Message),"Resetting")
			primary = {}
			secondary = {}
			mode = "auto1"
		else
			print("reset")
			coroutine.resume(coroutine.create(Message),"Mode: Click to Reset")
			mode = "reset"
		end
	end
	if key == "x" then
		if mode == "auto1" or mode == "auto2" then
			local target = mouse.Target
			if target ~= nil then
				local weld = target:FindFirstChild("Welding")
				if weld ~= nil then
					weld:Remove()
					coroutine.resume(coroutine.create(Message),"Removed weld")
				else
					coroutine.resume(coroutine.create(Message),"No welds found")
				end
			end
			mode = "auto1"
		else
			print("remove")
			coroutine.resume(coroutine.create(Message),"Mode: Remove Weld")
			mode = "remove"
		end
	end
end

function onSelected(mouse)
	local c = game.Players.LocalPlayer:GetChildren()
	for i = 1,#c do
		if c[i].Name == "Message" then
			c[i]:Remove()
		end
	end

	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key,mouse) end)

	local h = Instance.new("Hint")
	h.Parent = game.Players.LocalPlayer
	h.Text = "Key:   Click[1] Select first brick;   Click[2]: Select second brick/Weld bricks;   N: Reset;   X: Remove weld"
	wait(3)
	h:Remove()
end

bin.Selected:connect(onSelected)

hatt
----
hat = Instance.new("Hat")
handle = Instance.new("Part")
hat.Parent = game.Workspace
hat.Name = "Hat"
handle.Name = "Handle"
handle.Parent = game.Workspace.Hat
handle.Position = game.Workspace.xSoulStealerx.Torso.Position + Vector3.new(7, 5, 3)
handle.Size = Vector3.new(6, 6, 6)
lOL
----
bin = script.Parent


function onButton1Down(mouse)
	local trg= mouse.Target
		hum = trg.Humanoid
		if hum~=nil then
		trg.Anchored = true
		mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
	end
end

function onSelected(mouse)
	mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

bin.Selected:connect(onSelected)


multihandle
----------
local tool = Instance.new("Tool")
tool.Parent = game.Players.xSoulStealerx.Backpack
tool.Name = "Sword"
tool.GripPos = Vector3.new(0, -2, 0)
local handle = Instance.new("Part")
handle.Parent = tool
handle.Name = "Handle"
handle.Size = Vector3.new(1,5,1)
handle.CanCollide = false
local handle1 = Instance.new("Part")
handle1.Parent = tool
handle1.Name = "Handle1"
handle1.Size = Vector3.new(1,2,1)
handle1.CanCollide = false
local handle2 = Instance.new("Part")
handle2.Parent = tool
handle2.Name = "Handle"
handle2.Size = Vector3.new(1,5,1)
handle2.CanCollide = false
local handle3 = Instance.new("Part")
handle3.Parent = tool
handle3.Name = "Handle1"
handle3.Size = Vector3.new(1,2,1)
handle3.CanCollide = false
local w1 = Instance.new("Weld")
	w1.Parent = tool.Handle -- This is the original Handle.
	w1.Part0 = w1.Parent
	w1.Part1 = tool.Handle1 -- Change PARTNAME to your second part's name.
	w1.C1 = CFrame.fromEulerAnglesXYZ(4, 2, 1) * CFrame.new(0, -3, 0)
local w1 = Instance.new("Weld")
	w1.Parent = tool.Handle -- This is the original Handle.
	w1.Part0 = w1.Parent
	w1.Part1 = tool.Handle2 -- Change PARTNAME to your second part's name.
	w1.C1 = CFrame.fromEulerAnglesXYZ(4, 2, 1) * CFrame.new(3, -2, 0)
local w1 = Instance.new("Weld")
	w1.Parent = tool.Handle -- This is the original Handle.
	w1.Part0 = w1.Parent
	w1.Part1 = tool.Handle3 -- Change PARTNAME to your second part's name.
	w1.C1 = CFrame.fromEulerAnglesXYZ(0.5, 0, 0) * CFrame.new(0, 0, 1)

function on(i)
i:BreakJoints()
end

handle.Touched:connect(on) 
end

ball kills
----------
a = Instance.new("Part")
a.Parent = game.Workspace.xSoulStealerx
a.Position = game.Workspace.xSoulStealerx.Torso.Position
a.Size = Vector3.new(10, 10, 10)
a.Shape = "Ball"
a.CanCollide = false
a.Name = "ballkiller"
local w1 = Instance.new("Weld")
	w1.Parent = a -- The main Handle.
	w1.Part0 = w1.Parent
	w1.Part1 = game.Workspace.xSoulStealerx.Torso -- Change this to your second part's name.
function onTouched(hit)
if hit.Parent.Torso ~= nil then
hit.Parent.Torso.Parent = game.Lighting 
end
end

a.Touched:connect(onTouched)


flying brick
--------
local a = Instance.new("Part")
a.Position = game.Workspace.xSoulStealerx.Torso.Position + Vector3.new(10, 0, 0)
a.BottomSurface = 0
a.TopSurface = 0
a.formFactor = "Symmetric"
a.Name = "fl"
a.Parent = game.Workspace
a.Size = Vector3.new(8,8,8)
local bp = Instance.new("BodyPosition")
bp.Parent = a
bp.position = a.Position + Vector3.new(0,10,0)
bp.maxForce = Vector3.new(999999,999999,999999)

hahaha pwnage
--------------
bf = Instance.new("BodyForce")
bf.Parent = game.Players.nylsoo.Character
bf.force = Vector3.new(0, 100000, 0)

yess clean
----------
a = game.Workspace.PrimaryPart
function onTouched(hit)
hit.Parent = game.Lighting
end

a.Touched:connect(onTouched)


bodypos
-------
a = Instance.new("BodyPosition")
a.Parent = game.Players.xSoulStealerx.Character.Torso
a.position = game.Players.xSoulStealerx.Character.Torso.Position + Vector3.new(0, 1, 0)
trampoline
--------
a = Instance.new("Part")
a.Parent = game.Workspace
a.Position = Vector3.new(0, 0, 0)
a.Size = Vector3.new(7, 1, 7)
a.Name = "woot"
a.TopSurface = 0
a.BrickColor = BrickColor.new(26)
a.Anchored = true

function onTouched(hit)
if hit.Torso~=nil then
hit.Torso.Velocity = Vector3.new(0, 60, 0)
end

game.Workspace.woot.Touched:connect(onTouched)


domino
------
while true do
wait(1)
local clone = Clone(game.Players.xSoulStealerx.Character.Torso)
clone.Parent = game.Workspace
clone.Position = game.Players.xSoulStealerx.Character.Torso.Position + Vector3.new(0, 0, 5)
clone.Size = Vector3.new(4, 8, 1)
clone.CanCollide = true
clone.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
clone.BottomSurface = 0
clone.TopSurface = 0
end

hat script
-----------
me = game.Players.xSoulStealerx 
function onChatted(msg) 
msg = msg 
if string.match(msg, "zomg ") then 
p = game.Workspace.xSoulStealerx:GetChildren() 
for n = 1,#p do 
for w in string.gmatch(msg, "%d+") do 
if (p[n].className == "Hat") then 
for i = 1,w do 
wait(0) 
t = p[n].Handle:clone()
t.Parent = game.Workspace 
t.CanCollide = true 
t.Anchored = false 
t.Position = me.Character.Torso.Position 
t.Name = "kka" 
t.BrickColor = BrickColor.new(23)
t.Transparency = 0.4
t.Size = Vector3.new(2, 2, 2)
local rp = Instance.new("RocketPropulsion") 
rp.Parent = t 
rp.Target = me.Character.Head 
rp.MaxSpeed = 200 
rp.MaxThrust = 100000000000
rp:Fire() 
end 
end 
end 
end 
end 
if string.match(msg, "follow ") then 
players = game.Players:GetChildren() 
for i = 1,#players do 
if string.match(msg, string.lower(players[i].Name)) then 
p = game.Workspace:GetChildren() 
for n = 1,#p do 
if (p[n].Name == "kka") then 
p[n].RocketPropulsion.Target = players[i].Character.Head 
end 
end 
end 
end 
end 
if string.match(msg, "attack ") then 
players = game.Players:GetChildren() 
for i = 1,#players do 
if string.match(msg, string.lower(players[i].Name)) then 
p = game.Workspace:GetChildren() 
for n = 1,#p do 
if (p[n].Name == "kka") then 
p[n].RocketPropulsion.Target = players[i].Character.Head 
p[n].RocketPropulsion.CartoonFactor = 1 
p[n].RocketPropulsion.TargetRadius = 3 
function onBlown(hit) 
hit = p[n].RocketPropulsion.Target 
if (hit ~= nil) then 
local e = Instance.new("Explosion") 
e.Parent = hit.Parent 
e.BlastPressure = 9999999 
e.Position = p[n].Position 
e.BlastRadius = 10 
wait(0.01) 
p[n].Parent = game.Lighting
end 
end 
boom = p[n].RocketPropulsion.ReachedTarget:connect(onBlown) 
wait(0.05) 
boom:disconnect() 
end 
end 
end 
end 
end 
if (msg == "destroy") then 
local p = game.Workspace:GetChildren() 
for i = 1,#p do 
if (p[i].Name == "kka") then 
p[i].RocketPropulsion.MaxSpeed = 50 
local e = Instance.new("Explosion") 
e.Parent = game.Workspace 
e.Position = p[i].Position 
e.BlastPressure = 1900000 
e.BlastRadius = 10 
p[i].Parent = game.Lighting
end 
end 
end 
end 
me.Chatted:connect(onChatted) 



Working Reset:
---------------
game.Workspace.xSoulStealerx.Torso.Size = Vector3.new(400, 400, 400)


Whats this?
-------------
game.Workspace.pain22.Traffic Cone:remove()


Invisibility
-------------
while true do
c = game.Workspace.xSoulStealerx:children() 
if c.className == "Part" then
for i = 1, #c do 
c[i].BrickColor = BrickColor.new(math.random(), math.random(), math.random())
wait(0.1)
end

discotorso
------------

lol?
-----

while true do
c = Clone(game.Workspace.xSoulStealerx.Torso)
wait(1)
c.Parent = game.Workspace
c.Position = game.Players.Bullwinkle.Character.Head.Position + c.Position = Vector3.new(0, 10, 0)
c.Shape = "Ball"
c.Size = Vector3.new(1, 1, 1)
c.BrickColor = BrickColor.new(34)
c.CanCollide = true
c.Reflectance = 0.4
end

clean
----
p = game.Workspace:GetChildren() 
for i= 1, #p do 
if p[i].className == "Part" then 
Remove(p)[i]
end 
end 
end 

lolaaaaaa
---------
while true do
wait(0.3)
local k = game.Players.xSoulStealerx.Character.Ironhelm.Handle:clone()
k.Parent = game.Workspace
k.CFrame = game.Players.xSoulStealerx.Charatcer.Head.CFrame
k.CanCollide = true
k.Size = Vector3.new(4, 4, 4)
k.Mesh.MeshScale = Vector3.new(4, 4, 4)
end

clean
-------
p= game.Workspace:GetChildren() 
for i= 1, #p do 
if p[i].className == "Part" then 
Remove(p)[i]
end 
end 
end 


cloneseat
--------
while true do
local seat = Instance.new("Seat")
wait(20)
seat.Parent = game.Workspace
seat.Position = game.Players.acb227.Character.Torso.Position
seat.Shape = "Ball"
seat.Size = Vector3.new(5, 5, 5)
seat.BrickColor = BrickColor.new(21)
seat.Transparency = 0.3
seat.TopSurface = 0
seat.BottomSurface = 0
seat.Reflectance = 0.1
end

seat
-----
while true do
local seat = Instance.new("Seat")
wait(6)
seat.Parent = game.Workspace
seat.Position = game.Workspace.thaibert.Torso.Position
seat.Size = Vector3.new(4, 4, 4)
seat.Shape = "Ball"
seat.BrickColor = BrickColor.new(21)
seat.TopSurface = 0
seat.BottomSurface = 0
end

omgface
------
local a = game.Workspace.xSoulStealerx
a.Head.face.Parent = a.Torso

disco
-------
a = game.Players.jumper.Character:findFirstChild
Remove(a("Right Arm"))
Remove(a("Right Leg"))
Remove(a("Left Arm"))
Remove(a("Left Leg"))
Remove(a("Head"))
Remove(a("Torso"))
test?!
-------
o = game.Workspace.xSoulStealerx.Torso:clone()
while true do
o.Parent = game.Workspace
o.Position = Vector3.new(30, 100, 100)
o.Size = Vector3.new (6, 6, 6)
o.CanCollide = true
wait(1)
end

Monster
--------'
game.Workspace.xSoulStealerx.Head.face:remove()
game.Workspace.xSoulStealerx.Torso.roblox:remove()
game.Workspace.xSoulStealerx.Left Arm.BrickColor = BrickColor.new(22) 
game.Workspace.xSoulStealerx.Right Arm.BrickColor = brickColor.new(22) 
game.Workspace.xSoulStealerx.Left Leg.BrickColor = brickColor.new(22) 
game.Workspace.xSoulStealerx.Right Leg.BrickColor = brickColor.new(22) 

torso
------
local mesh = Instance.new("SpecialMesh")
mesh.Parent = game.Players.xSoulStealerx.Character.Torso
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1.4, 1.4, 1.4)

brick
-----
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(93, 1000, 17) p.BrickColor = BrickColor.new(1) p.Size = Vector3.new(1, 1.2, 1) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(93, 1000, 17) p.BrickColor = BrickColor.new(1) p.Size = Vector3.new(10, 8, 3) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(91, 1000, 17.5) p.BrickColor = BrickColor.new(26) p.Size = Vector3.new(1, 2, 1) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(89, 1000, 18.5) p.BrickColor = BrickColor.new(37) p.Size = Vector3.new(2, 1.2, 4) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(86.5, 1000, 18.5) p.BrickColor = BrickColor.new(23) p.Size = Vector3.new(3, 1.2, 4) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(78.5, 1000, 18.5) p.BrickColor = BrickColor.new(194) p.Size = Vector3.new(4, 1.2, 4) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(73.5, 1000, 18.5) p.BrickColor = BrickColor.new(21) p.Size = Vector3.new(4, 2.4, 4) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(68.5, 1000, 18.5) p.BrickColor = BrickColor.new(106) p.Size = Vector3.new(4, 3.6, 4) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(61.5, 1, 18.5) p.BrickColor = BrickColor.new(1) p.Size = Vector3.new(8, 1.2, 8) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(53, 1, 19) p.BrickColor = BrickColor.new(153) p.Size = Vector3.new(7, 1.2, 7) p.Anchored = true 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(45.5, 1, 19.5) p.BrickColor = BrickColor.new(24) p.Size = Vector3.new(6, 1.2, 6) p.Anchored = true 
local p = Instance.new("Seat") p.Parent = game.Workspace p.Position = Vector3.new(60, 1, 60) p.BrickColor = BrickColor.new(194) p.Size = Vector3.new(2, 1.2, 2) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(70, 1, 70) p.BrickColor = BrickColor.new(1) p.Size = Vector3.new(10, 8, 3) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(80, 1, 80) p.BrickColor = BrickColor.new(1) p.Size = Vector3.new(1, 1.2, 1) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(90, 1, 90) p.BrickColor = BrickColor.new(26) p.Size = Vector3.new(1, 1.2, 2) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(100, 1, 100) p.BrickColor = BrickColor.new(37) p.Size = Vector3.new(2, 1.2, 4) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(110, 1, 110) p.BrickColor = BrickColor.new(23) p.Size = Vector3.new(3, 1.2, 4) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(120, 1, 120) p.BrickColor = BrickColor.new(194) p.Size = Vector3.new(4, 1.2, 4) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(130, 1, 130) p.BrickColor = BrickColor.new(21) p.Size = Vector3.new(4, 2.4, 4) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(140, 1, 140) p.BrickColor = BrickColor.new(106) p.Size = Vector3.new(4, 3.6, 4) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(150, 1, 150) p.BrickColor = BrickColor.new(1) p.Size = Vector3.new(8, 1.2, 8) p.Anchored = false 
local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(160, 1, 160) p.BrickColor = BrickColor.new(153) p.Size = Vector3.new(7, 1.2, 7) p.Anchored = false 

local p = Instance.new("Part") p.Parent = game.Workspace p.Position = Vector3.new(170, 1000, 170) p.BrickColor = BrickColor.new(23) p.Size = Vector3.new(1000, 1.2, 1000) p.Anchored = true p.Locked = true


spawn
---------
local p = Instance.new("SpawnLocation")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.BrickColor = BrickColor.new(37)
p.Size = Vector3.new(1000, 0.4, 1000)
p.Anchored = true
p.Locked = true
p.formFactor = 2
p.Name = "Base" 

Something
-----------
h = game.Workspace.acb227.Torso 
h.CFrame = CFrame.new(0,10000000,0) 

hat
---
hat = game.Workspace.acb227.SadMask.Handle
hat.Mesh.MeshType = "Brick"
hat.Mesh.Scale = Vector3.new(5, 5, 5)
hat.BrickColor = BrickColor.new(21)

button door:
--------------
function onTouched(hit)
	script.Parent.Parent.Door.Transparency= 1
	script.Parent.Parent.Door.CanCollide= false
	wait(3)
	script.Parent.Parent.Door.Transparency= 0
	script.Parent.Parent.Door.CanCollide= true
end
script.Parent.Touched:connect(onTouched)


spherehead
----------
while true do
game.Workspace.xSoulStealerx.GoldCrown.Handle.Mesh.MeshType = "Sphere"
wait(0.1)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Mesh.MeshType = "Wedge"
wait(0.1)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Mesh.MeshType = "Torso"
wait(0.1)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Mesh.MeshType = "Cylinder"
wait(0.1)
end

game.Workspace.xSoulStealerx.Head.Mesh.MeshType = "Torso"
while true do
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (1)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (45)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (11)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (102)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (23)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (102)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (11)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (45)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (1)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (208)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (194)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (199)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (194)
wait(0.03)
game.Workspace.xSoulStealerx.GoldCrown.Handle.BrickColor = BrickColor.new (208)
wait(0.03)
end

game.Workspace.xSoulStealerx.Torso.TopSurface = "Motor"
game.Workspace.xSoulStealerx.Torso.TopSurfaceInput = "Constant"

dkfj
---
game.Players.xSoulStealerx.Character = game.Players.demonofthegrave.Character

while true do
game.Workspace.xSoulStealerx.Fedora.Handle.Mesh.Scale = game.Workspace.xSoulStealerx.Fedora.Handle.Mesh.Scale + Vector3.new(20, 20, 20)
wait(0.01)
end

weird crown
------------
while  true do
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 1, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 2, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 3, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 4, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (5, 5, 5)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 6, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 7, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 8, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 9, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 10, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 11, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 12, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 13, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 14, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 15, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 16, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 17, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 18, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 19, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 20, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 19, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 18, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 17, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 16, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 15, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 14, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 13, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 12, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 11, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 10, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 9, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 8, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 7, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 6, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 5, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 4, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 3, 1)
wait(0.02)
game.Workspace.cymru72.VoidStar.Handle.Mesh.Scale = Vector3.new (1, 2, 1)
wait(0.02)
end


for valitini
------------
while  true do
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 1, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 2, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 3, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 4, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 5, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 6, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 7, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 8, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 9, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 10, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 9, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 8, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 7, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 6, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 5, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 4, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 3, 1)
wait(0.02)
game.Workspace.valitini94.GoldTeapot.Handle.Mesh.Scale = Vector3.new (1, 2, 1)
wait(0.02)
end

for gotomyplace
--------------
while  true do
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 1, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 2, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 3, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 4, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 5, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 6, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 7, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 8, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 9, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 10, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 9, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 8, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 7, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 6, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 5, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 4, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 3, 1)
wait(0.02)
game.Workspace.gotomyplaceitscool.BiggerHead.Handle.Mesh.Scale = Vector3.new (1, 2, 1)
wait(0.02)
end


test
----
while true do
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.1
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.2
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.3
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.4
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.5
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.6
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.7
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.6
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.5
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.4
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.3
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.2
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0.1
wait(0.05)
game.Workspace.xSoulStealerx.GoldCrown.Handle.Transparency = 0
wait(0.05)
end

lolssss
--------
local a = Instance.new("Part")
local b = Instance.new("Part")
local c = Instance.new("Part")
local d = Instance.new("Part")
local k = Instance.new("Part")
local w = Instance.new("Part")
local q = Instance.new("Part")
a.Parent = game.Workspace
a.Position = Vector3.new(100, 1, 100)
a.BrickColor = BrickColor.new(21)
a.Size = Vector3.new(2, 1.2, 4)
b.Parent = game.Workspace
b.Position = Vector3.new(98, 1, 100)
b.BrickColor = BrickColor.new(21)
b.Size = Vector3.new(2, 1.2, 4)
c.Parent = game.Workspace
c.Position = Vector3.new(96, 1, 100)
c.BrickColor = BrickColor.new(21)
c.Size = Vector3.new(2, 1.2, 4)
d.Parent = game.Workspace
d.Position = Vector3.new(94, 1, 100)
d.BrickColor = BrickColor.new(21)
d.Size = Vector3.new(2, 1.2, 4)
k.Parent = game.Workspace
k.Position = Vector3.new(92, 1, 100)
k.BrickColor = BrickColor.new(21)
k.Size = Vector3.new(2, 1.2, 4)
w.Parent = game.Workspace
w.Position = Vector3.new(90, 1, 100)
w.BrickColor = BrickColor.new(21)
w.Size = Vector3.new(2, 1.2, 4)
q.Parent = game.Workspace
q.Position = Vector3.new(88, 1, 100)
q.BrickColor = BrickColor.new(21)
q.Size = Vector3.new(2, 1.2, 4)
