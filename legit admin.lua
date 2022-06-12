admins = { "keehl254" }
banned = { }
players = { }
loopkilled = { }
unloopkilled = { }

function si(gui, x,xx,y,yy)
gui.Size = UDim2.new(x,xx,y,yy)
end

function po(gui,x,xx,y,yy)
gui.Position = UDim2.new(x,xx,y,yy)
end

function Color(r, g, b)
 return Color3.new(r/255, g/255, b/255)
end

function lpk(pla)
for i,z in pairs(loopkilled) do
while true do
wait(0.01)
if pla.Name == z then
if pla.lpk.Value == true then
pla.Character:BreakJoints()
end
end
end
end
end

function findPlayer(name, spea)----Sweet, most admins use person299's. I made this all myself!!!
if string.lower(name) == "all" then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
table.insert(chars,c[i])
end end
return chars
elseif string.lower(name) == "others" then
local others = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if c[i].Name ~= spea.Name then
table.insert(others,c[i])
end end end
return others
elseif string.lower(name) == "me" then
local me = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if c[i].Name == ""..spea.Name.."" then
table.insert(me,c[i])
end end end
return me
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
return 0
elseif cnum > 1 then
return 0
end end end end
function pcmds(pl)
kill = Instance.new("TextButton", bg) 
kill.Name = "kill"
kill.Size = UDim2.new(1,0 , 0,20)
kill.Text = "Kill"
kill.BackgroundColor = BrickColor.new(255,255,204) 
kill.MouseButton1Down:connect(function()
if pl.Character.Humanoid.MaxHealth ~= "0" then
pl.Character.Humanoid.Health = "0"
else
pl.Character:BreakJoints()
end
end)
kick = Instance.new("TextButton", bg) 
kick.Position = UDim2.new(0,0,0,20)
kick.Name = "Kick"
kick.Size = UDim2.new(1,0 , 0,20)
kick.Text = "Kick"
kick.BackgroundColor = BrickColor.new(255,255,204) 
kick.MouseButton1Down:connect(function()
pl:Remove()
end)
ban = Instance.new("TextButton", bg) 
ban.Position = UDim2.new(0,0,0,40)
ban.Name = "Ban"
ban.Size = UDim2.new(1,0 , 0,20)
ban.Text = "Ban"
ban.BackgroundColor = BrickColor.new(255,255,204) 
ban.MouseButton1Down:connect(function()
pl:Remove()
table.insert(banned, pl.Name)
end)
ff = Instance.new("TextButton", bg) 
ff.Position = UDim2.new(0,0,0,60)
ff.Name = "ff"
ff.Size = UDim2.new(1,0 , 0,20)
ff.Text = "FF"
ff.BackgroundColor = BrickColor.new(255,255,204) 
ff.MouseButton1Down:connect(function()
Instance.new("ForceField", pl.Character)
end)
unff = Instance.new("TextButton", bg) 
unff.Position = UDim2.new(0,0,0,80)
unff.Name = "unff"
unff.Size = UDim2.new(1,0 , 0,20)
unff.Text = "UnFF"
unff.BackgroundColor = BrickColor.new(255,255,204) 
unff.MouseButton1Down:connect(function()
local dc = pl.Character:GetChildren()
for i = 1,#dc do
if dc[i].ClassName == "ForceField" then
dc[i]:Remove()
end
end
end)
lpkk = Instance.new("TextButton", bg) 
lpkk.Position = UDim2.new(0,0,0,100)
lpkk.Name = "loopkill"
lpkk.Size = UDim2.new(1,0 , 0,20)
lpkk.Text = "Loopkill"
lpkk.BackgroundColor = BrickColor.new(255,255,204) 
lpkk.MouseButton1Down:connect(function()
table.insert(loopkilled, pl.Name)
if pl:findFirstChild("lpk") then
pl.lpk.Value = true
else
lp = Instance.new("BoolValue")
lp.Parent = p
lp.Name = "lpk"
lp.Value = true
end
lpk(pl)
end)
unlpkk = Instance.new("TextButton", bg) 
unlpkk.Position = UDim2.new(0,0,0,120)
unlpkk.Name = "unloopkill"
unlpkk.Size = UDim2.new(1,0 , 0,20)
unlpkk.Text = "UnLoopKill"
unlpkk.BackgroundColor = BrickColor.new(255,255,204) 
unlpkk.MouseButton1Down:connect(function()
table.insert(unloopkilled, pl.Name)
pl.lpk.Value = false
end)
end

function plr()
plc.Visible = false
g = -1
players = game.Players:GetChildren()
for i=1,#players do 
new = Instance.new("TextButton", bg) 
new.Name = ""..players[i].Name..""
new.Position = UDim2.new(0,0,0,--[[i * 75]]g * 20 + 40)
g = g + 1
new.Size = UDim2.new(1,0 , 0,20)
new.Text = players[i].Name
new.BackgroundColor = BrickColor.new(255,255,204) 
function clickplay()
c = bg:GetChildren()
b = game.Players:GetChildren()
for i = 1, #c do
for i = 1, #b do
if b[i].Name == c[i] then
c[i]:Remove()
end
end
end
new:Remove()
pcmds(players[i])
end
new.MouseButton1Down:connect(clickplay)
end
end

function makeadmin()
v = game.Players:GetChildren()
for i = 1, #v do
for z,b in pairs(admins) do
if v[i].Name == b then
ma = Instance.new("ScreenGui")
ma.Name = "AdminGui"
ma.Parent = v[i].PlayerGui
bg = Instance.new("Frame", ma)
si(bg,0.5,0,0.5,0)
bg.Style = "RobloxRound"
plc = Instance.new("TextButton", bg)
plc.Name = "Player Commands"
plc.Text = "Player commands"
plc.TextColor3 = Color(255,255,255)
plc.Style = "RobloxButtonDefault"
si(plc,1,0,0,20)
function plrC()
plr()
end
plc.MouseButton1Down:connect(plrC)
function talk(msg,speak)
if string.sub(string.lower(msg),1,5) == "kill/" then
local player = findPlayer(string.sub(msg,6),v[i])
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Health = 0
end end end end end
end
v[i].Chatted:connect(talk)
end
end
end
end
makeadmin()

function onEnter(p)
for i,v in pairs(banned) do
if p.Name == v then
p:Remove()
end
end
for i,x in pairs(admins) do
if p.Name == x then

end
end
for i,b in pairs(loopkilled) do
if p.Name == b then
lpk(p)
end
end
print("Someone entered")
table.insert(players,p.Name)
lp = Instance.new("BoolValue")
lp.Parent = p
lp.Name = "lpk"
lp.Value = false
end
game.Players.ChildAdded:connect(onEnter)

