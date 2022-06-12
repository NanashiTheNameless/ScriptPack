Debuggers = {"yfc"} -- Add some friends 
Banned = {""} -- Add some noobs 
TorsoItis = {} -- Leave this free 
--[[ Started as debugger system by ss1122, now one of the strongest admin scripts. 
Commands: 
============= 
c:t 
- Toggles fake bubble chat. use this to change the bubble chat bar into a command bar. 
- c:t 

db 
- Removes any stuck messages from your screen. 
- db 

l:o 
- Names the Lighting service "Lighting". See l:u. 
- l:o 

l:u 
- Names the Lighting service "Lighting:Unavailable". Use this to stop scripts that try to acces game.Lighting. See l:o 
- l:u 

n:s 
- Shuts the NetworkServer down. Might not work due to the updates locking the parent 
property of NetworkServer 
- n:s 

p:k:playername 
- Kills the player with that playername. If player is nil it will affect the last affected. 
- p:k:ss 

p:m:playername 
- Bans the player with that playername. If player is nil it will affect the last affected. 
- p:m:ss 

p:o 
- Names the Players service "Players". See p:u. 
- p:o 

p:t:number of 3 digts:playername 
- Gives the player with the given playername no-torso itis the given amount of times. 
The amount must always be 3 digts, else it doesn't work. If player is nil it will affect the last affected. 
*Warning* 999 times will loopkill the player for 82 minutes. Only use it when you think someone 
is not even worthy enouch to be banned. 
- p:t:005:ss 
Gives the player wich the name starts with ss No-Torso Itis 5 times. 

pt.shape(.a)(.ac)(.p100,016,010)(.s005, 005, 005)(.BrickColor) 
- Creates a part with the given shape on the position p (default is 000, 005, 000) and 
size s (default is 003, 003, 003) and the given BrickColor. Everything between brackets isn't 
needed to let it work. The things given with 3 digts must be written with 3 digts. BrickColor can 
be a string or a number. put a in it to make the brick anchored and put ac in it to make it move up 
till it isn't stuck in any bricks. Use sl. instead of pt. to make a spawnlocation. *Glitch* 
when you say some thing that starts with sl or pt it makes the default object of it. 
- pt.block.p000,999,000.s400,400,400.Black 
Above creates a gaint black meteor block. 

p:u 
- Names the Players service "Players:Unavailable". Use this to stop scripts that try to acces game.Players. See p:o 
- p:u 

sl.shape(.a)(.ac)(.p100,016,010)(.s005, 005, 005)(.BrickColor) 
- See pt. This one creates a spawn instead of a part. 
- sl.block.a.ac.p000,000,000.s005,002,005.21 
Above creates a normal sized red spawn that will be placed right on the base. 

s:s 
- Removes script. This will unban everyone, stop every No-Torso Itis stop the possibility to 
use commands etc. Use this when you want to update or accidently banned a friend. 
-s:s 

w:b 
- Breaks joints of workspace 
- w:b 

w:c 
- Cleans the workspace. Progress bar and estimated time 
- w:c 

w:e 
- Shows all members of workspace. 
- w:e 

w:o 
- Names the Workspace service "Workspace". See w:u. 
- w:o 

w:u 
- Names the Workspace service "Workspace:Unavailable". Use this to stop scripts that try to acces game.Workspace. See w:o 
- w:u 
]] 
script.Name = "script" 
Debris = game:service("Debris") 
script.Parent = Debris 
marmar = {} 
billmar = {} 
charsize = 6 
flashtime = 0.3 
updaterate = 0.02 
maxchilds = 15 
antilagtime = 0.2 
showtime = 10 
ado = "Head" 
show = true 
FlashColors = {Color3.new(0, 0, 0), Color3.new(1, 1, 1)} 
MSG = Instance.new("ScreenGui") 
MSG.Name = "MSG" 
MG = Instance.new("TextLabel") 
MG.Name = "MG" 
MG.Position = UDim2.new(0, 70, 0 , 110) 
MG.BorderSizePixel = 1 
MG.Text = "" 
MG.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9) 
MG.BorderColor3 = FlashColors[1] 
MG.TextColor3 = Color3.new(0, 0, 0) 
MG.Transparency = 0.2 
MG.Parent = MSG 
PB = Instance.new("Frame") 
PB.ZIndex = 2 
PB.Visible = false 
PB.Name = "PB" 
PB.Position = UDim2.new(0, 5, 1.1, 0) 
PB.Size = UDim2.new(0, 0, 0, 8) 
PB.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8) 
PB.BorderColor3 = Color3.new(0.2, 0.2, 0.2) 
PB.Parent = MG 
PBFramet = Instance.new("TextLabel") 
PBFramet.BackgroundTransparency = 1 
PBFramet.ZIndex = 2 
PBFramet.Name = "PBFrame" 
PBFramet.Position = UDim2.new(0, -2, 0, -2) 
PBFramet.Size = UDim2.new(0, 139, 0, 12) 
PBFramet.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) 
PBFramet.Text = "0%" 
PBFramet.TextColor3 = Color3.new(0, 0, 0) 
PBFramet.BorderColor3 = Color3.new(0, 0, 0) 
PBFramet.Parent = PB 
PBFrame = Instance.new("Frame") 
PBFrame.Name = "PBFrame" 
PBFrame.Position = UDim2.new(0, 0, 0, 0) 
PBFrame.Size = UDim2.new(1, 0, 1, 0) 
PBFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) 
PBFrame.BorderColor3 = Color3.new(0, 0, 0) 
PBFrame.Parent = PBFramet 
BillGui = Instance.new("BillboardGui") 
BillGui.Name = "BillGui" 
BillGui.Size = UDim2.new(0, 1, 0, 1) 
BillGui.StudsOffset = Vector3.new(0, 0.1, 0) 

function addframeo(s, p, z) 
local tf = Instance.new("Frame") 
if z == nil then 
tf.ZIndex = 2 
else 
tf.ZIndex = z 
end 
tf.Parent = BillGui 
tf.BackgroundColor3 = Color3.new(0.04,0.04,0.04) 
tf.Position = p 
tf.Size = s 
return tf 
end 
function addframe(s, p, z) 
local tf = Instance.new("Frame") 
if z == nil then 
tf.ZIndex = 2 
else 
tf.ZIndex = z 
end 
tf.Parent = n 
tf.BackgroundColor3 = Color3.new(0.04,0.04,0.04) 
tf.Position = p 
tf.Size = s 
return tf 
end 
function addframe2(s, p, z) 
local tf = Instance.new("Frame") 
if z == nil then 
tf.ZIndex = 2 
else 
tf.ZIndex = z 
end 
tf.Parent = n 
tf.BackgroundColor3 = Color3.new(0.9,0.9,0.9) 
tf.Position = p 
tf.Size = s 
return tf 
end 

n = addframeo(UDim2.new(0, 6, 0, 6), UDim2.new(0, -3, 0, -3)) 
thickness = 6 
addframe(UDim2.new(0, thickness, 1, 0),UDim2.new(0, -1, 0, 0)) 
addframe(UDim2.new(1, 0, 0, thickness),UDim2.new(0, 0, 0, -1)) 
addframe(UDim2.new(0, thickness, 1, 0),UDim2.new(1, -2, 0, 0)) 
addframe(UDim2.new(0.6, 0, 0, thickness),UDim2.new(0, 0, 1, -1)) 

thickness = 6 
amm = 0.4 / (0.004 * thickness) 
for j = 1, amm do 
ydis = -40 
startpos = UDim2.new(0, 0, 0, 0) 
xdis = -(0.5 + j * (0.004 * thickness) * 250 - 104) + 25 
num = math.ceil(math.sqrt(math.abs(xdis^2) + math.abs(ydis^2))/thickness) 
clux = xdis / num 
cluy = ydis / num 
for i = 1, num do 
addframe2(UDim2.new(0, thickness, 0, thickness), startpos + UDim2.new(0, clux * i - 3, 0, cluy * i + 3)) 
end 
end 

thickness = 6 
xdis = 25 
ydis = -40 
num = math.ceil(math.sqrt(math.abs(xdis^2) + math.abs(ydis^2))/thickness) 
startpos = UDim2.new(0, 0, 0, 0) 
clux = xdis / num 
cluy = ydis / num 
for i = 1, num do 
addframe(UDim2.new(0, thickness, 0, thickness), startpos + UDim2.new(0, clux * i - 3, 0, cluy * i + 3), 3) 
end 

thickness = 6 
xdis = 125 
ydis = -40 
num = math.ceil(math.sqrt(math.abs(xdis^2) + math.abs(ydis^2))/thickness) 
startpos = UDim2.new(0, 0, 0, 0) 
clux = xdis / num 
cluy = ydis / num 
for i = 1, num do 
addframe(UDim2.new(0, thickness, 0, thickness), startpos + UDim2.new(0, clux * i - 3, 0, cluy * i + 3), 3) 
end 
BillLabel = Instance.new("TextLabel") 
BillLabel.Name = "BillLabel" 
BillLabel.Text = "" 
BillLabel.Position = UDim2.new(0, -125, 0, -77) 
BillLabel.Size = UDim2.new(0, 250, 0, 40) 
BillLabel.BackgroundColor3 = Color3.new(0.9,0.9,0.9) 
BillLabel.TextColor3 = Color3.new(0.04,0.04,0.04) 
BillLabel.Parent = n 
n = BillLabel 
addframe(UDim2.new(0, thickness, 1, 0),UDim2.new(0, -1, 0, 0)) 
addframe(UDim2.new(1, 0, 0, thickness),UDim2.new(0, 0, 0, -1)) 
addframe(UDim2.new(0, thickness, 1, 0),UDim2.new(1, -2, 0, 0)) 
addframe(UDim2.new(0.6, 0, 0, thickness),UDim2.new(0, 0, 1, -1)) 
--There were 4855 frames; I made it less due to lag. now 277 frames 

Command = Instance.new("ScreenGui") 
Command.Name = "Command" 
BV = Instance.new("BoolValue") 
BV.Name = "BV" 
BV.Value = false 
BV.Parent = Command 
CommandBox = Instance.new("TextBox") 
CommandBox.Name = "CommandBox" 
CommandBox.Text = "" 
CommandBox.BackgroundColor3 = Color3.new(0.84,0.84,0.84) 
CommandBox.BorderColor3 = Color3.new(0.04,0.04,0.04) 
CommandBox.TextColor3 = Color3.new(0.04,0.04,0.04) 
CommandBox.Position = UDim2.new(0, 0, 1, -21) 
CommandBox.Size = UDim2.new(1, -1, 0, 20) 
CommandBox.Parent = Command 
Tn = "SetupProxy" 
function fcm(box, player) 
box = player.PlayerGui.Command.CommandBox -- Small fix 
if box.Parent.BV.Value == false and script.Parent ~= nil then 
box.Parent.BV.Value = true 
delay(0.1, function() box.Parent.BV.Value = false end) 
box.Text = textrecovery(box.Text) 
local txt = box.Text 
if show == true then 
local c = player.Character 
if c == nil then return end 
local h = c:findFirstChild(ado) 
if h == nil then return end 
billmar = checktable(billmar, true) 
local i 
for i = 1, #billmar do 
if billmar[i].Adornee == h then 
billmar[i].Frame.Position = billmar[i].Frame.Position + UDim2.new(0, 70, 0, -60) 
end 
end 
local b = BillGui:Clone() 
billmar[#billmar+1] = b 
b.Parent = w 
b.Frame.BillLabel.Text = txt 
b.Adornee = h 
Debris:AddItem(b, showtime) 
end 
cmd(txt) 
end 
end 
function checkUnit(num, prevnum) 
local yup = {} 
yup[1] = false 
while num > flashtime do 
num = num - flashtime 
end 
yup[2] = num 
if num < prevnum then yup[1] = true end 
return yup 
end 
function checktable(table, parentneeded) 
local i 
local t = {} 
for i = 1, #table do 
if table[i] ~= nil then 
if string.lower(type(table[i])) == "userdata" then 
if parentneeded == true then 
if table[i].Parent ~= nil then 
if table[i].Parent.Parent ~= nil then 
t[#t + 1] = table[i] 
end 
end 
else 
t[#t + 1] = table[i] 
end 
end 
end 
end 
return t 
end 
function textrecovery(msg) 
local len = string.len(msg) 
local i 
local r = "" 
local ps = "" 
local pps = "" 
local ns = "" 
for i = 1, len do 
local s = string.sub(msg, i, i) 
if i == 1 then 
s = string.upper(s) 
local ps = "" 
elseif i == 2 then 
local pps = "" 
else 
ps = string.sub(msg, i-1, i-1) 
end 
if i == len then 
ns = "" 
else 
ns = string.sub(msg, i+1, i+1) 
end 
if s == ";" then 
if ps ~= "/" then 
s = ":" 
end 
end 
if s == "/" then 
if ps ~= "/" and ns ~= "1" then 
s = "?" 
end 
if ns == "/" or ns == "1" then 
s = "" 
end 
end 
if s == "1" then 
if ps ~= "/" then 
s = "!" 
end 
end 
if (ps == "" or ps == " ") and s == "i" and (ns == "" or ns == " " or ns == "'" or ns == "," or ns == "." or ns 

== "?" or ns == "!") then 
s = "I" 
end 
if string.lower(ps) == "x" and string.lower(s) == "d" then 
s = "D" 
end 
if string.lower(pps) == "." or string.lower(pps) == "!" or string.lower(pps) == "?" then 
s = string.upper(s) 
end 
r = r .. s 
end 
return r 
end 
function msg(mg, time, error) 
local txt = "" 
if error == true then 
txt = txt.."Error: " 
end 
txt = txt .. mg 
mar = {} 
for i=1,#Debuggers do 
local cer = ply:getChildren() 
p = nil 
for h = 1,#cer do 
if string.lower(cer[h].Name) == Debuggers[i] then p = cer[h] end 
end 
if p~=nil then 
pp = p:findFirstChild("PlayerGui") 
if pp ~= nil then 
mar[#mar+1] = MSG:clone() 
mar[#mar].MG.Text = txt 
mar[#mar].MG.Size = UDim2.new(0, string.len(txt)*charsize, 0, 40) 
mar[#mar].Parent = p.PlayerGui 
end 
end 
end 
local waited = 0 
local prevnum = 0 
while waited < time do 
waited = waited + wait() 
local u = checkUnit(waited, prevnum) 
prevnum = u[2] 
if u[1] == true then 
for i = 1,#mar do 
if mar[i].MG.BorderColor3 == FlashColors[2] then 
mar[i].MG.BorderColor3 = FlashColors[1] 
else 
mar[i].MG.BorderColor3 = FlashColors[2] 
end 
end 
end 
end 
if time == 0 or time == nil then wait() end 
for i = 1,#mar do 
mar[i]:remove() 
end 
end 
function progremdel(time, error) 
if error == true then 
txt = txt.."Error: " 
end 
mar = {} 
for i=1,#Debuggers do 
local cer = ply:getChildren() 
p = nil 
for h = 1,#cer do 
if string.lower(cer[h].Name) == Debuggers[i] then p = cer[h] end 
end 
if p~=nil then 
pp = p:findFirstChild("PlayerGui") 
if pp ~= nil then 
mar[#mar+1] = MSG:clone() 
mar[#mar].MG.PB.Visible = true 
mar[#mar].Parent = p.PlayerGui 
end 
end 
end 
local p=Instance.new("Part") 
p.TopSurface = ("Universal") 
p.BrickColor = BrickColor.new(141) 
p.Name="Base" 
p.Size=Vector3.new(512,1.2,512) 
p.Locked=true 
p.Anchored=true 
p.Parent=w 
local c = w:getChildren() 
local i 
local numc = 0 
for i = 1 , #c do 
if (c[i].className == "Part" and c[i] ~= p) or c[i].className == "SpawnLocation" or c[i].className == 

"Hat" or c[i].className == "Tool" or (c[i].className == "Model" and c[i].archivable == true and c[i].Name ~= "Noob Demolisher" 

and c[i].Name ~= "Chompy" and c[i].Name ~= "Version 2" and c[i].Name ~= "Desu_Only_For_Toadjesse" and c[i].Name ~= "Tehsu") or c 

[i].className == "Sound" or c[i].className == "Message" or c[i].className == "Seat" or c[i].className == "Hint" then 
numc = numc + 1 
end 
end 
local clu = 135 / numc 
local did = 0 
local i = 1 
local waited = time 
for i = 1, #c do 
local j 
for j=1,#Debuggers do 
local cer = ply:getChildren() 
local p = nil 
local h 
for h = 1,#cer do 
if string.lower(cer[h].Name) == Debuggers[j] then p = cer[h] end 
end 
if p~=nil then 
local pp = p:findFirstChild("PlayerGui") 
if pp ~= nil then 
local mart = pp:findFirstChild("MSG") 
if mart == nil then 
mar[#mar+1] = MSG:clone() 
mar[#mar].MG.PB.Visible = true 
mar[#mar].Parent = p.PlayerGui 
end 
end 
end 
end 
local text = "" 
if (c[i].className == "Part" and c[i] ~= p) or c[i].className == "SpawnLocation" or c[i].className == 

"Hat" or c[i].className == "Tool" or (c[i].className == "Model" and c[i].archivable == true and c[i].Name ~= "Noob Demolisher" 

and c[i].Name ~= "Chompy" and c[i].Name ~= "Version 2" and c[i].Name ~= "Desu_Only_For_Toadjesse") or c[i].className == "Sound" 

or c[i].className == "Message" or c[i].className == "Seat" or c[i].className == "Hint" then 
if c[i].className == "Sound" then 
c[i]:Stop() 
end 
did = did + 1 
local prog1 = did / numc * 100 
local prog = math.ceil(waited / (prog1 / 100) - waited) 
text = "Estimated time: "..prog.." seconds. Removing " .. c[i].Name .. ", " .. #c[i]:getChildren() .. " childs" 
for k = 1,#mar do 
mar[k].MG.Size = UDim2.new(0, string.len(text)*charsize, 0, 40) 
mar[k].MG.Text = text 
mar[k].MG.PB.Size = UDim2.new(0, clu * did, 0, 8) 
mar[k].MG.PB.PBFrame.Text = tostring(math.floor(prog1)).."%" 
end 
if #c[i]:getChildren() > maxchilds then waited = waited + wait(antilagtime) end 
waited = waited + wait(time) 
c[i]:remove() 
end 
end 
for i = 1,#mar do 
mar[i]:remove() 
end 
end 
if game:findFirstChild("Players") == nil then 
local c = game:getChildren() 
for i=1,#c do 
if c[i].className == "Players" then 
c[i].Name = "Players" 
ply = game.Players 
msg("Fixed players", 2, false) 
end 
end 
if game:findFirstChild("Players") == nil then 
game:service("Players").Parent = game 
ply = game.Players 
msg("Created players", 2, false) 
end 
end 
ply = game.Players 
if game:findFirstChild("Workspace") == nil then 
msg("No workspace", 2, true) 
local c = game:getChildren() 
for i=1,#c do 
if c[i].className == "Workspace" then 
c[i].Name = "Workspace" 
msg("Fixed workspace", 2, false) 
end 
end 
if game:findFirstChild("Workspace") == nil then 
game:service("Workspace").Parent = game 
msg("Created workspace", 2, false) 
end 
end 
w = game.Workspace 
t = w:findFirstChild(Tn) 
if t ~= nil then t = t:clone() end 
if game:findFirstChild("Lighting") == nil then 
msg("No lighting", 2, true) 
local c = game:getChildren() 
for i=1,#c do 
if c[i].className == "Lighting" then 
c[i].Name = "Lighting" 
msg("Fixed lighting", 2, false) 
end 
end 
if game:findFirstChild("Lighting") == nil then 
game:service("Lighting").Parent = game 
msg("Created lighting", 2, false) 
end 
end 
ligt = game.Lighting 
function cmd(mb) 
if script.Parent~=nil then 
m = string.lower(mb) 
if string.sub(m,1,4)=="w:e" then 
if m=="w:e" then 
msg("Exploring "..w.Parent.Name.."."..w.Name, 1, false) 
local c = w:getChildren() 
local i = 1 
local ss = 0 
local ps = 0 
local cs = 0 
local sts = 0 
for i = 1, #c do 
if c[i].Name~="Script" and c[i].className~="Part" and c[i].className~="Camera" and c 

[i].className~="Seat" then 
msg(c[i].Name, 1, false) 
else 
if c[i].Name=="Script" then 
ss=ss+1 
elseif c[i].className=="Part" then 
ps=ps+1 
elseif c[i].className=="Camera" then 
cs=cs+1 
elseif c[i].className=="Seat" then 
sts=sts+1 
end 
end 
end 
msg(tostring(ss).." Script(s)", 1, false) 
msg(tostring(ps).." Part(s)", 1, false) 
msg(tostring(cs).." Camera(s)", 1, false) 
msg(tostring(sts).." Seat(s)", 1, false) 
else 
local ex = nil 
local i = 0 
local c = w:getChildren() 
for i = 1,#c do 
if string.lower(c[i].Name) == string.lower(string.sub(m, 6)) then ex = c[i] end 
end 
if ex~=nil then 
msg("Exploring "..ex.Parent.Name.."."..ex.Name, 1, false) 
local c = ex:getChildren() 
local i = 1 
local ss = 0 
local ps = 0 
local cs = 0 
local sts = 0 
for i = 1, #c do 
if c[i].Name~="Script" and c[i].className~="Part" and c[i].className~="Camera" 

and c[i].className~="Seat" then 
msg(c[i].Name, 1, false) 
else 
if c[i].Name=="Script" then 
ss=ss+1 
elseif c[i].className=="Part" then 
ps=ps+1 
elseif c[i].className=="Camera" then 


cs=cs+1 
elseif c[i].className=="Seat" then 
sts=sts+1 
end 
end 
end 
msg(tostring(ss).." Script(s)", 1, false) 
msg(tostring(ps).." Part(s)", 1, false) 
msg(tostring(cs).." Camera(s)", 1, false) 
msg(tostring(sts).." Seat(s)", 1, false) 
end 
end 
end 
if m=="c:t" then 
show = not show 
end 
if m=="f:sb" then 
msg("Fixing sb", 1) 
t:clone().Parent = w 
end 
if m=="w:c" then 
msg("Cleaning up "..w.Parent.Name.."."..w.Name, 1) 
progremdel(0.015) 
end 
if m=="w:b" then 
msg("Breaking joints of "..w.Parent.Name.."."..w.Name, 1, false) 
w:BreakJoints() 
end 
if m=="w:o" then 
msg("Opening "..w.Parent.Name.."."..w.Name, 1, false) 
w.Name = "Workspace" 
end 
if m=="w:u" then 
msg("Making "..w.Parent.Name.."."..w.Name.." unavailable", 1, false) 
w.Name = "Workspace:Unavailable" 
end 
if m=="p:o" then 
msg("Opening "..ply.Parent.Name.."."..ply.Name, 1, false) 
ply.Name = "Players" 
end 
if m=="p:u" then 
msg("Making "..ply.Parent.Name.."."..ply.Name.." unavailable", 1, false) 
ply.Name = "Players:Unavailable" 
end 
if m=="l:o" then 
msg("Opening "..ligt.Parent.Name.."."..ligt.Name, 1, false) 
ligt.Name = "Lighting" 
end 
if m=="l:u" then 
msg("Making "..ligt.Parent.Name.."."..ligt.Name.." unavailable", 1, false) 
ligt.Name = "Lighting:Unavailable" 
end 
if m=="l:c" then 
msg("Resetting "..ligt.Parent.Name.."."..ligt.Name, 1, false) 
ligt.Ambient=Color3.new(0.8,0.8,0.8) 
ligt.ColorShift_Top=Color3.new(0,0,0) 
ligt.ColorShift_Bottom=Color3.new(0,0,0) 
end 
if m=="db" then 
msg("Removing messages", 1, false) 
for i=1,#Debuggers do 
p=ply:findFirstChild(Debuggers[i]) 
if p~=nil then 
local pp = p:findFirstChild("PlayerGui") 
if pp == nil then return end 
local c = pp:getChildren() 
local i = 1 
for i=1,#c do 
if c[i].Name == "MSG" then c[i]:remove() end 
end 
end 
end 
end 
if m=="s:s" then 
msg("Removing script", 1, false) 
script.Parent = nil 
end 
if string.sub(m,1,4)=="p:k:" then 
l=string.len(string.sub(m,5)) 
p=ply:getChildren() 
for i=1,#p do 
if string.lower(string.sub(p[i].Name,1,l))==string.lower(string.sub(m,5)) then 
player=p[i] 
end 
end 
msg("Killing player "..player.Name, 1, false) 
if player~=nil then 
player.Character:BreakJoints() 
end 
end 
if string.sub(m,1,4)=="p:m:" then 
l=string.len(string.sub(m,5)) 
p=ply:getChildren() 
for i=1,#p do 
if string.lower(string.sub(p[i].Name,1,l))==string.lower(string.sub(m,5)) then 
player=p[i] 
end 
end 
if player~=nil then 
msg("Banning player "..player.Name, 1, false) 
Banned[#Banned+1] = string.lower(player.Name) 
player:remove() 
end 
end 
if string.sub(m,1,4)=="p:t:" then 
num = tonumber(string.sub(m, 5, 7)) 
if num == nil then return end 
l=string.len(string.sub(m,9)) 
p=ply:getChildren() 
for i=1,#p do 
if string.lower(string.sub(p[i].Name,1,l))==string.lower(string.sub(m,9)) then 
player=p[i] 
end 
end 
if player~=nil then 
msg("Giving player "..player.Name.." NoTorsoItis "..num.." Times", 1, false) 
TorsoItis[#TorsoItis+1] = {} 
TorsoItis[#TorsoItis].Name = string.lower(player.Name) 
TorsoItis[#TorsoItis].Number = num 
end 
end 
if string.sub(m,1,3)=="mt:" then 
m = mb 
local e = false 
local t = 0 
m = string.sub(m,4) 
if string.lower(string.sub(m,1,2))=="e:" then 
e = true 
m = string.sub(m,3) 
end 
t = tonumber(string.sub(m,1,1)) 
m = string.sub(m,3) 
msg(m ,t ,e) 
end 
if m == "al:rj" then 
welds = {} 
for _,v in pairs(game.JointsService:GetChildren()) do 
if v:IsA("JointInstance") then 
table.insert(welds,v) 
end 
end 

welds2 = {} 
while true do 
local p = workspace:FindFirstChild("Weld",true) 
if p == nil then break end 
if p:IsA("JointInstance") then table.insert(p,welds) end 
table.insert(p,welds2) 
p.Name = "Weld!" 
end 
for _,v in pairs(welds2) do 
v.Name = "Weld" 
end 

welds2 = {} 
while true do 
local p = workspace:FindFirstChild("Snap",true) 
if p == nil then break end 
if p:IsA("JointInstance") then table.insert(p,welds) end 
table.insert(p,welds2) 
p.Name = "Snap!" 
end 
for _,v in pairs(welds2) do 
v.Name = "Snap" 
end 

welds2 = {} 
while true do 
local p = workspace:FindFirstChild("Glue",true) 
if p == nil then break end 
if p:IsA("JointInstance") then table.insert(p,welds) end 
table.insert(p,welds2) 
p.Name = "Glue!" 
end 
for _,v in pairs(welds2) do 
v.Name = "Glue" 
end 

welds2 = nil 

n = 0 
for _,v in pairs(welds) do 
if v.Part0 == nil or v.Part1 == nil then v:Remove() n = n+1 
elseif v.Part0.Parent == nil or v.Part1.Parent == nil then v:Remove() n = n+1 end 
end 

msg("Removed "..n.." useless joints.",2) 
end 
if m=="p:ka" then 
msg("Killing all players", 1, false) 
p=ply:getChildren() 
for i=1,#p do 
if p[i].className == "Player" then 
if p[i].Character ~= nil then 
p[i].Character:BreakJoints() 
end 
end 
end 
end 
if string.sub(m,1,2)=="sl" then 
msag = "" 
local s = 1 
local a = false 
local sx = 3 
local sy = 3 
local sz = 3 
local px = 0 
local py = 5 
local pz = 0 
local ac = false 
m = mb 
m = string.sub(m,4) 
if string.sub(string.lower(m),1,4)=="ball" then 
msag = msag .. "Ball" 
s = 0 
m = string.sub(m,6) 
end 
if string.sub(string.lower(m),1,5)=="block" then 
msag = msag .. "Block" 
s = 1 
m = string.sub(m,7) 
end 
if string.sub(string.lower(m),1,8)=="cylinder" then 
msag = msag .. "Cylinder" 
s = 2 
m = string.sub(m,10) 
end 
if string.sub(string.lower(m),1,1)=="a" and string.sub(string.lower(m),1,2)~="ac" then 
a = true 
m = string.sub(m,3) 
end 
if string.sub(string.lower(m),1,2)=="ac" then 
ac = true 
m = string.sub(m,4) 
end 
if string.lower(string.sub(m,1,1)) == "p" then 
m = string.sub(m,2) 
if tonumber(string.sub(m,1,3)) ~= nil then px = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
if tonumber(string.sub(m,1,3)) ~= nil then py = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
if tonumber(string.sub(m,1,3)) ~= nil then pz = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
end 
if string.lower(string.sub(m,1,1)) == "s" then 
m = string.sub(m,2) 
if tonumber(string.sub(m,1,3)) ~= nil then sx = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
if tonumber(string.sub(m,1,3)) ~= nil then sy = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
if tonumber(string.sub(m,1,3)) ~= nil then sz = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
end 
b = m 
local part = Instance.new("SpawnLocation") 
if ac == true then part.Parent = w end 
part.BrickColor = BrickColor.new(b) 
part.Position = Vector3.new(px, py, pz) 
part.formFactor = 0 
part.Size = Vector3.new(sx, sy, sz) 
part.Anchored = a 
part.Shape = s 
if ac == false then part.Parent = w end 
msg(msag .. " Spawn created", 1) 
end 
if string.sub(m,1,2)=="pt" then 
msag = "" 
local s = 1 
local a = false 
local sx = 3 
local sy = 3 
local sz = 3 
local px = 0 
local py = 5 
local pz = 0 
local ac = false 
m = mb 
m = string.sub(m,4) 
if string.sub(string.lower(m),1,4)=="ball" then 
msag = msag .. "Ball" 
s = 0 
m = string.sub(m,6) 
end 
if string.sub(string.lower(m),1,5)=="block" then 
msag = msag .. "Block" 
s = 1 
m = string.sub(m,7) 
end 
if string.sub(string.lower(m),1,8)=="cylinder" then 
msag = msag .. "Cylinder" 
s = 2 
m = string.sub(m,10) 
end 
if string.sub(string.lower(m),1,1)=="a" and string.sub(string.lower(m),1,2)~="ac" then 
a = true 
m = string.sub(m,3) 
end 
if string.sub(string.lower(m),1,2)=="ac" then 
ac = true 
m = string.sub(m,4) 
end 
if string.lower(string.sub(m,1,1)) == "p" then 
m = string.sub(m,2) 
if tonumber(string.sub(m,1,3)) ~= nil then px = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
if tonumber(string.sub(m,1,3)) ~= nil then py = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
if tonumber(string.sub(m,1,3)) ~= nil then pz = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
end 
if string.lower(string.sub(m,1,1)) == "s" then 
m = string.sub(m,2) 
if tonumber(string.sub(m,1,3)) ~= nil then sx = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
if tonumber(string.sub(m,1,3)) ~= nil then sy = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
if tonumber(string.sub(m,1,3)) ~= nil then sz = tonumber(tonumber(string.sub(m,1,3))) m = 

string.sub(m,5) end 
end 
b = m 
local part = Instance.new("Part") 
if ac == true then part.Parent = w end 
part.BrickColor = BrickColor.new(b) 
part.Position = Vector3.new(px, py, pz) 
part.formFactor = 0 
part.Size = Vector3.new(sx, sy, sz) 
part.Anchored = a 
part.Shape = s 
if ac == false then part.Parent = w end 
msg(msag .. " Part created", 1) 
end 
if m=="n:s" then 
msg("Shutting down networkserver", 1, false) 
game.NetworkServer:remove() 
ply:remove() 
end 
end 
end 
wait() 
for i=1,#Debuggers do 
local c = ply:getChildren() 
p = nil 
for j = 1,#c do 
if string.lower(c[j].Name) == string.lower(Debuggers[i]) then p = c[j] end 
end 
if p~=nil then 
p.Chatted:connect(cmd) 
end 
end 
for i=1,#Banned do 
local c = ply:getChildren() 
p = nil 
for j = 1,#c do 
if string.lower(c[j].Name) == Banned[i] then p = c[j] end 
end 
if p~=nil then 
p:remove() 
end 
end 
ply.PlayerAdded:connect(function(plynew) 
if script.Parent~=nil then 
for i=1,#Debuggers do 
if string.lower(plynew.Name) == string.lower(Debuggers[i]) then 
msg("Initiating "..plynew.Name..".",0.3,false) 
msg("Initiating "..plynew.Name.."..",0.3,false) 
msg("Initiating "..plynew.Name.."...",0.3,false) 
msg("Initiating "..plynew.Name..".",0.3,false) 
msg("Initiating "..plynew.Name.."..",0.3,false) 
msg("Initiating "..plynew.Name.."...",0.3,false) 
plynew.Chatted:connect(cmd) 
msg("Commands "..plynew.Name.." Enabled",1.5,false) 
end 
end 
for i=1,#Banned do 
if string.lower(plynew.Name) == string.lower(Banned[i]) then 
local plyn = plynew.Name 
plynew:remove() 
msg("Removed " .. plyn, 0.5) 
end 
end 
end 
end) 
msg("Loaded.", 0.7, false) 
while true do 
if script.Parent ~= nil then 
local j 
for j = 1, #TorsoItis do 
local cer = ply:getChildren() 
local p = nil 
local h 
for h = 1,#cer do 
if string.lower(cer[h].Name) == TorsoItis[j].Name then p = cer[h] end 
end 
if p ~= nil and TorsoItis[j].Number > -1 then 
local m = p:findFirstChild("TorsoItisMessage") 
if m == nil then 
local m = Instance.new("Message") 
m.Name = "TorsoItisMessage" 
m.Text = "You caught No-Torso Itis!" 
m.Parent = p 
end 
local c = p.Character 
if c ~= nil then 
if c.Parent ~= nil then 
local t = c:findFirstChild("Torso") 
if t ~= nil then 
if TorsoItis[j].Number == 0 then 
local m = p:findFirstChild("TorsoItisMessage") 
if m ~= nil then 
p.TorsoItisMessage:remove() 
local m = Instance.new("Message") 
end 
m.Name = "TorsoCureMessage" 
m.Text = "You're cured from No-Torso Itis!" 
m.Parent = p 
Debris:AddItem(m, 2) 
TorsoItis[j].Number = -1 -- Not in use anymore 
end 
if TorsoItis[j].Number ~= -1 then 
t:remove() 
TorsoItis[j].Number = TorsoItis[j].Number - 1 
end 
end 
end 
end 
end 
end 
local j 
checktable(marmar, true) 
print() 
for j=1,#Debuggers do 
local cer = ply:getChildren() 
local p = nil 
local h 
for h = 1,#cer do 
if string.lower(cer[h].Name) == Debuggers[j] then p = cer[h] end 
end 
if p~=nil then 
local pp = p:findFirstChild("PlayerGui") 
if pp ~= nil then 
local mart = pp:findFirstChild("Command") 
if mart == nil then 
marmar[#marmar+1] = Command:clone() 
marmar[#marmar].Parent = p.PlayerGui 
marmar[#marmar].CommandBox.Changed:connect(function(prop) 
if prop == "Text" then 
fcm(marmar[#marmar].CommandBox, p) 
end 
end) 
end 
end 
end 
end 
local i 
for i = 1, #marmar do 
local mmi = marmar[i] 
local mc = mmi:findFirstChild("CommandBox") 
if mc == nil then 
local ps = "N/A" 
local a = mmi 
while a ~= nil do 
a = a.Parent 
if a ~= nil then if a.className == "Player" then ps = a.Name a = nil end end 
end 
if ps == "N/A" then return end 
msg(ps .. " has no command bar.", 1, true) 
if mmi ~= nil then mmi:remove() end 
msg("Fixed "..ps.."'s command bar.", 1) 
end 
end 
else 
break 
end 
wait() 
end 

