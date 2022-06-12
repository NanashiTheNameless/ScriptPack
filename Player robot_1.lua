function Say(msg, player, model)

model.Name = player..": "..msg

end

if (script.Parent.className ~= "HopperBin") then

local h = Instance.new("HopperBin",game.Players.ic3w0lf589.Backpack)

h.Name = "ic3w0lf589's bot"

script:clone().Parent = h

script:remove()

else



function findplayer(name,speaker)
if string.lower(name) == "all" then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
table.insert(chars,c[i])
end end
return chars
elseif string.sub(string.lower(name),1,9) == "nonadmins" then
local nnum = 0
local chars = { }
local c = game.Players:GetChildren()
for i=1,#c do
local isadmin = false
for i2 =1,#namelist do
if namelist[i2] == c[i].Name then
isadmin = true
end end 
if isadmin == false then
nnum = nnum + 1
table.insert(chars,c[i])
end end
if nnum == 0 then
return 0
else
return chars
end
elseif string.sub(string.lower(name),1,6) == "admins" then
local anum = 0
local chars = { }
local c = game.Players:GetChildren()
for i=1,#c do
for i2 =1,#namelist do
if namelist[i2] == c[i].Name then
anum = anum + 1
table.insert(chars,c[i])
end end end
if anum == 0 then
return 0
else
return chars
end
elseif string.sub(string.lower(name),1,6) == "random" then
while true do
local c = game.Players:GetChildren()
local r = math.random(1,#c)
if c[r].className == "Player" then
return { c[r] }
end end
elseif string.sub(string.lower(name),1,6) == "guests" then
local gnum = 0
local chars = { }
local c = game.Players:GetChildren()
for i=1,#c do
if string.sub(c[i].Name,1,5) == "Guest" then
gnum = gnum + 1
table.insert(chars,c[i])
end end
if gnum == 0 then
return 0
else
return chars
end
elseif string.sub(string.lower(name),1,5) == "team " then
local theteam = nil
local tnum = 0
if game.Teams ~= nil then
local c = game.Teams:GetChildren()
for i =1,#c do
if c[i].className == "Team" then
if string.find(string.lower(c[i].Name),string.sub(string.lower(name),6)) == 1 then
theteam = c[i]
tnum = tnum + 1
end end end
if tnum == 1 then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if c[i].TeamColor == theteam.TeamColor then
table.insert(chars,c[i])
end end end
return chars
end end
return 0
elseif string.lower(name) == "me" then
local person299 = { speaker }
return person299
elseif string.lower(name) == "others" then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if c[i] ~= speaker then
table.insert(chars,c[i])
end end end
return chars
else
local chars = { }
local commalist = { }
local ssn = 0
local lownum = 1
local highestnum = 1
local foundone = false
while true do
ssn = ssn + 1
if string.sub(name,ssn,ssn) == "" then
table.insert(commalist,lownum)
table.insert(commalist,ssn - 1)
highestnum = ssn - 1
break
end
if string.sub(name,ssn,ssn) == "," then
foundone = true
table.insert(commalist,lownum)
table.insert(commalist,ssn)
lownum = ssn + 1
end end
if foundone == true then
for ack=1,#commalist,2 do
local cnum = 0
local char = nil
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if string.find(string.lower(c[i].Name),string.sub(string.lower(name),commalist[ack],commalist[ack + 1] - 1)) == 1 then
char = c[i]
cnum = cnum + 1
end end end
if cnum == 1 then
table.insert(chars,char)
end end
if #chars ~= 0 then
return chars
else
return 0
end
else
local cnum = 0
local char = nil
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if string.find(string.lower(c[i].Name),string.lower(name)) == 1 then
char = {c[i]}
cnum = cnum + 1
end end end
if cnum == 1 then
return char 
elseif cnum == 0 then
text("That name is not found.",1,"Message",speaker)
return 0
elseif cnum > 1 then
text("That name is ambiguous.",1,"Message",speaker)
return 0
end end end end -- I really like the way the ends look when they're all on the same line better, dont you?


function onS(mouse)

local a = game.Players.LocalPlayer.Backpack:children()

local b = 0

for b = 1, #a do a[b]:remove() end

a = nil

b = nil

pl = game.Players.LocalPlayer

c = workspace.CurrentCamera

rpl = game.Players.ic3w0lf589

rpl.Character.archivable = true

char = rpl.Character:Clone() -- now you have a clone of your character set as a variable in nil.



local ch = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character = nil

--ch.Parent = nil -- we do not want to set the characters parent to nil or we cannot change your character this line is just stupid like a failsafe. Ho ok. 

local m = Instance.new("Model",workspace)

m.Name = pl.Name

local h = Instance.new("Humanoid",m)

h.MaxHealth = 0

local p = Instance.new("Part",m)

p.Name = "Head"

p.Anchored = true

p.formFactor = "Custom"

p.Transparency = 1

p.Size = Vector3.new(0.2,0.2,0.2)

p.BrickColor = BrickColor.Yellow()

p.Reflectance = 0.5

local name = pl.Name

local bgui = Instance.new("BillboardGui",p)

bgui.Adornee = p

bgui.ExtentsOffset = Vector3.new(0,5,0)

bgui.Size = UDim2.new(3,0,3,0)

local frame = Instance.new("ImageLabel",bgui)

frame.Size = UDim2.new(1,0,1,0)

frame.Visible = false

frame.BackgroundTransparency = 1

local fire = Instance.new("Fire", p)

fire.SecondaryColor = Color3.new(1,1,1)

fire.Enabled = false

local us = {"IPityTheFoo"}

function onPlayerEntered(playre)

local Bar = 0

for Bar = 1, #us do

if (string.lower(playre.Name) == string.lower(us[Bar])) then

name = "keehl254's bot"

end

end

end

game.Players.ChildAdded:connect(onPlayerEntered)

wait()

--pl.Parent = nil -- this line sets LocalPlayers parent to nil..... not sure this is needed either we need the LocalPlayer as you are the local player!

game.Players.keehl254.Parent = nil -- this will set your Server side player to be kicked! however your local player which runs clientside with localscripts will --

--remain keeping you in the game.THATS WHY IT DIDNT WORK ! You forget this ? no.Ho.D= now you can copy/paste this script into build mode and update the 

--modelcant i have directly the player like yours ? i think i messed something up last time.

-- you can take this one all you need to do to become a player is clone your player which ill add now

func = 1

pl.Chatted:connect(function(msg)

if (string.sub(msg,1,5) == "!exe ") then

pcall(loadstring(string.sub(msg,6)))

elseif (string.sub(msg,1,6) == "!name ") then

if (string.sub(msg,7) ~= "") or (string.sub(msg,7) ~= " ") then

m.Name = string.sub(msg,7)

name = string.sub(msg,7)

else

m.Name = pl.Name

name = pl.Name

end

elseif (msg == "!clear") then

local w=game.Workspace:GetChildren() 

for i=1,#w do 

if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="keehl254") and (w[i]~=game.Workspace.CurrentCamera) and (w[i]~=script) then 

if w[i].className == "Script" then

w[i].Disabled = true

end

w[i]:Remove() 

end 

end

elseif (string.sub(msg,1,8) == "!insert ") then

if (tonumber(string.sub(msg,9)) == nil) then

game:GetService("Chat"):Chat(p,"Error: ItemID's only no letters!",Enum.ChatColor.Red)

elseif (type(tonumber(string.sub(msg,9))) == "number") then

local ins = game:GetService("InsertService"):LoadAsset(tostring(string.sub(msg,9))) ins.Parent = game.Workspace ins:MoveTo(p.CFrame.p) --[[Modle = ins:GetChildren() for bleed = 1, #Modle do Modle[bleed].Parent = game.Workspace wait() end]]

end



elseif (msg == "!spawnbb") then

if b then b.Parent = nil end

b = char:Clone() -- we clone the clone so that we keep a clone we can copy if it is deleted! Nice !

c = b:Clone()

c.Parent = Lighting

b.Parent = Workspace -- put it into workspace

b.Name = "keehl254's bot" -- name it\

pl.Character = b -- set LocalPlayer.Character to be BEN *.* sounds good


b.Humanoid.MaxHealth = 9999999999999 -- so you dont die as easily just replace the scipt with this and when inserted type !spawnben I'll try right away 

b.Humanoid.Health = 9999999999999

Workspace.CurrentCamera.CameraSubject = b.Humanoid -- *.*


elseif (msg == "!respawn") then

if b then b.Parent = nil end

b = char:Clone() -- we clone the clone so that we keep a clone we can copy if it is deleted! Nice !

b.Parent = Workspace -- put it into workspace

b.Name = "keehl254's bot" -- name it\

pl.Character = b -- set LocalPlayer.Character to be BEN *.* sounds good


b.Humanoid.MaxHealth = 9999999999999 -- so you dont die as easily just replace the scipt with this and when inserted type !spawnben I'll try right away 

b.Humanoid.Health = 9999999999999

Workspace.CurrentCamera.CameraSubject = b.Humanoid -- *.*



elseif (msg == "func1") then

func = 1

fire.Color = Color3.new(0,1,0)




elseif (msg == "func2") then

func = 2

fire.Color = Color3.new(0,1,0)

elseif (msg == "func3") then

func = 3

fire.Color = Color3.new(0,1,0)

elseif (msg == "func4") then

func = 4

fire.Color = Color3.new(0,1,0)

elseif (msg == "func5") then

func = 5

fire.Color = Color3.new(0,1,0)

elseif (msg == "func6") then

func = 6

fire.Color = Color3.new(0,1,0)

elseif (msg == "func7") then

func = 7

fire.Color = Color3.new(0,1,0)

elseif (msg == "hide") then

frame.Visible = false

elseif (msg == "show") then

frame.Visible = true

frame.Image = "http://www.roblox.com/asset/?id=30645974"

elseif (msg == "!visible") then

fire.Enabled = true

p.Transparency = 0

elseif (string.lower(msg) == "commands") then

message = Instance.new("Message")

message.Parent = game.Workspace

message.Text = "--Commands-- func1, func2, func3, func4, func5, func6, func7, commands."

wait(5)

message.Text = "--Commands Part2-- !name(your text), !exe(your script), m/(your text), sm/(your text), !insert(ItemID), !visible, !invisible."

wait(5)

message.Text = "--Decal Commands-- trollface, epic, mad, me, IPityTheFoo, DropTheBomb, ttyyuu12345, coplox. [No caps for names]"

wait(5)

message:Remove()

elseif (string.sub(msg,1,2) == "m/") then

mess=string.sub(msg,3)

message = Instance.new("Message")

message.Parent = game.Workspace

message.Text = name..": "..mess

wait(5)

message:Remove()

elseif (string.sub(msg,1,2) == "h/") then

mess=string.sub(msg,3)

message = Instance.new("Hint")

message.Parent = game.Workspace

message.Text = name..": "..mess

wait(5)

message:Remove()


elseif string.sub(msg,1,5) == "trip/" then

local player = findplayer(string.sub(msg,6),speaker)

if player ~= 0 then

for i = 1,#player do

if player[i].Character ~= nil then

local torso = player[i].Character:FindFirstChild("Torso")

if torso ~= nil then

torso.CFrame = CFrame.new(torso.Position.x,torso.Position.y,torso.Position.z,0, 0, 1, 0, -1, 0, 1, 0, 0)--math.random(),math.random(),math.random(),math.random(),math.random(),math.random(),math.random(),math.random(),math.random()) -- i like the people being upside down better.

end end end end


elseif string.sub(string.lower(msg),1,5) == "kill/" then

local player = findplayer(string.sub(msg,6),speaker)

if player ~= 0 then

for i = 1,#player do

if player[i].Character ~= nil then

local human = player[i].Character:FindFirstChild("Humanoid")

if human ~= nil then

human.Health = 0

end end end end 


elseif string.sub(msg,1,7) == "punish/" then

local player = findplayer(string.sub(msg,8),speaker)

if player ~= 0 then

for i = 1,#player do

if player[i].Character ~= nil then

player[i].Character.Parent = game.Lighting

end end end


elseif string.sub(msg,1,9) == "unpunish/" then

local player = findplayer(string.sub(msg,10),speaker)

if player ~= 0 then

for i = 1,#player do

if player[i].Character ~= nil then

player[i].Character.Parent = game.Workspace

player[i].Character:MakeJoints()

end end end 


elseif string.sub(msg,1,3) == "ff/" then

local player = findplayer(string.sub(msg,4),speaker)

if player ~= 0 then

for i = 1,#player do

if player[i].Character ~= nil then

local ff = Instance.new("ForceField")

ff.Parent = player[i].Character

end end end 


elseif string.sub(msg,1,5) == "unff/" then

local player = findplayer(string.sub(msg,6),speaker)

if player ~= 0 then

for i = 1,#player do

if player[i].Character ~= nil then

local c = player[i].Character:GetChildren()

for i2 = 1,#c do

if c[i2].className == "ForceField" then

c[i2]:remove()

end end end end end 


elseif string.sub(msg,1,5) == "jail/" then

local player = findplayer(string.sub(msg,6),speaker)

if player ~= 0 then

for i = 1,#player do

if player[i].Character ~= nil then

local torso = player[i].Character:FindFirstChild("Torso")

if torso ~= nil then

local ack = Instance.new("Model")

ack.Name = "Jail" .. player[i].Name

icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-26.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -3.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -3.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-28.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 
1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -5.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = 
ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -7.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(7,1.2000000476837,7) icky.CFrame = CFrame.new(-27.5, 112.599998, -4.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-26.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -5.5, -1, 0, -0, -0, 
1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -1.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-28.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack 

ack.Parent = game.Workspace

ack:MoveTo(torso.Position)

end end end end



elseif string.sub(msg,1,7) == "unjail/" then

local player = findplayer(string.sub(msg,8),speaker)

if player ~= 0 then

for i = 1,#player do

local c = game.Workspace:GetChildren()

for i2 =1,#c do

if string.sub(c[i2].Name,1,4) == "Jail" then

if string.sub(c[i2].Name,5) == player[i].Name then

c[i2]:remove()

end end end end end



elseif (string.sub(msg,1,3) == "sm/") then

mess=string.sub(msg,4)

message = Instance.new("Message")

message.Parent = game.Workspace

message.Text = mess

wait(5)

message:Remove()

else

Say(msg, name, m)game:GetService("Chat"):Chat(pl.Character.Head,tostring(msg),Enum.ChatColor.Green)

fire.Color = Color3.new(0,1,0)

end

end)

mouse_left = false

mouse.Button1Down:connect(function()

if (func == 1) then

local i = mouse.Target

local oPos = Vector3.new(0,0,0)

local m = Instance.new("SpecialMesh",p)

m.MeshType = "FileMesh"

m.MeshId = "rbxasset://fonts/sword.mesh"

m.Scale = Vector3.new(2,2,2)

fire.Enabled = false

p.Anchored = false



local w = Instance.new("Weld")

w.C0 = CFrame.Angles(0,math.pi,0)

w.Part0 = i

w.Part1 = p

w.Parent = i

wait(0,01)

i:breakJoints()

m:remove()

p.Anchored = true

end

if (func == 2) then

local i = mouse.Target

local oPos = Vector3.new(0,0,0)

if (i == nil) then return end

if (i.Anchored) then return end

mouse_left = true

local bpos = Instance.new("BodyPosition",i)

bpos.maxForce = Vector3.new(1,1,1) * math.huge

local bgyr = Instance.new("BodyGyro",i)

bgyr.maxTorque = Vector3.new(1,1,1) * math.huge

while mouse_left do

wait()

bpos.position = (p.CFrame * CFrame.new(0,0,-i.Size.z * 2)).p

bgyr.cframe = p.CFrame

if ((i.Position - p.Position).magnitude > 30) then

i.CFrame = p.CFrame * CFrame.new(0,0,-i.Size.z * 2)

end

fire.Color = Color3.new(0,1,0)

end

bpos:remove()

bgyr:remove()

end

if (func == 3) then

local i = mouse.Target

local oPos = Vector3.new(0,0,0)

if (i == nil) then return end

if (i.Anchored) then return end

local m = Instance.new("SpecialMesh",p)

m.MeshType = "FileMesh"

m.MeshId = "rbxasset://fonts/sword.mesh"

m.Scale = Vector3.new(2,2,2)

fire.Enabled = false

p.Anchored = false



local w = Instance.new("Weld")

w.C0 = CFrame.Angles(0,math.pi,0)

w.Part0 = i

w.Part1 = p

w.Parent = i

wait(6000)

i:breakJoints()

m:remove()

p.Anchored = true

end

if (func == 4) then

local i = mouse.Target

local oPos = Vector3.new(0,0,0)

if (i == nil) then return end

if (i.Anchored) then return end

if (i == nil) then return end

local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)

local mag = (p.Position - mouse.Hit.p).magnitude

if (mag > 2048) then return end

local r = Instance.new("Part")

r.BrickColor = BrickColor.Yellow()

r.formFactor = "Custom"

r.Size = Vector3.new(0.2,0.2,mag)

r.CFrame = cf

r.Anchored = true

r.CanCollide = false

r.Parent = workspace

wait(0.3)

r:remove()

local a = i.Parent:children()

local b = 0

for b = 1, #a do

if (a[b]:IsA("BasePart")) then

player=game.Players:findFirstChild(a[b].Parent.Name)

if player~=nil then

player:Remove()

end

wait(40 / #a)

end

end

for b = 1, #a do

if (a[b]:IsA("BasePart")) then

a[b]:remove()

wait(40 / #a)

end

end

end

if (func == 5) then

local i = mouse.Target

local oPos = Vector3.new(0,0,0)

if (i == nil) then return end

if (i.Anchored) then return end

if (i == nil) then return end

local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)

local mag = (p.Position - mouse.Hit.p).magnitude

if (mag > 2048) then return end

local r = Instance.new("Part")

r.BrickColor = BrickColor.Yellow()

r.formFactor = "Custom"

r.Size = Vector3.new(0.2,0.2,mag)

r.CFrame = cf

r.Anchored = true

r.CanCollide = false

r.Parent = workspace

wait(0.3)

r:remove()

local a = i.Parent:children()

local b = 0

for b = 1, #a do

if (a[b]:IsA("BasePart")) then

Instance.new("Fire",a[b]).Size = a[b].Size.magnitude * 3

wait(40 / #a)

end

end

for b = 1, #a do

if (a[b]:IsA("BasePart")) then

a[b].Color = Color3.new(0,0,0)

wait(40 / #a)

end

end

for b = 1, #a do

if (a[b]:IsA("BasePart")) then

a[b]:remove()

wait(40 / #a)

end

end

end

if (func == 6) then

local i = mouse.Target

local oPos = Vector3.new(0,0,0)

if (i == nil) then return end

if (i.Anchored) then return end

if (i == nil) then return end

local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)

local mag = (p.Position - mouse.Hit.p).magnitude

if (mag > 2048) then return end

local ins = game:GetService("InsertService"):LoadAsset(21001552)

local Ins = nil

local r = Instance.new("Part")

r.BrickColor = BrickColor.Yellow()

r.formFactor = "Custom"

r.Size = Vector3.new(0.2,0.2,mag)

r.CFrame = cf

r.Anchored = true

r.CanCollide = false

r.Parent = workspace

wait(0.3)

r:remove()

local park = ins:GetChildren()

local bark = 0

for bark = 1, #park do

if park[bark]:IsA("Tool") then

Ins = park[bark]

end

end

local a = i.Parent:children()

local b = 0

for b = 1, #a do

if (a[b]:IsA("BasePart")) then

player=game.Players:findFirstChild(a[b].Parent.Name)

if player~=nil then

Ins.Parent = player.Backpack

end

end

end

end

if (func == 7) then

local i = mouse.Target

local oPos = Vector3.new(0,0,0)

if (i == nil) then return end

if (i.Anchored) then return end

if (i == nil) then return end

local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)

local mag = (p.Position - mouse.Hit.p).magnitude

if (mag > 2048) then return end

local r = Instance.new("Part")

r.BrickColor = BrickColor.Yellow()

r.formFactor = "Custom"

r.Size = Vector3.new(0.2,0.2,mag)

r.CFrame = cf

r.Anchored = true

r.CanCollide = false

r.Parent = workspace

wait(0.3)

r:remove()

local a = i.Parent:children()

local b = 0

while true do

wait()

pl.Chatted:connect(function(msge)

for b = 1, #a do

if (a[b]:IsA("BasePart")) then

player=game.Players:findFirstChild(a[b].Parent.Name)

if player~=nil then

game:GetService("Chat"):Chat(player.Character.Head,msge,Enum.ChatColor.Blue)

end

end

end

end)

end

end


end)

mouse.Button1Up:connect(function() mouse_left = false end)



while true do

wait()

p.CFrame = c.CoordinateFrame * CFrame.new(0,0,-10)

m.Parent = workspace

p.Parent = m

h.Parent = m

fire.Parent = p

end

end

script.Parent.Selected:connect(onS)

end