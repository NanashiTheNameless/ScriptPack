Scriptbuilder Scripts for Magic Lessons

All bricks invisible:

c/local children = game.Workspace:GetChildren()
for c = 1, #children do
		
if children[c].className == "Part"
then
children[c].Transparency = 1
end 
end 



Scrolling Message:

c/speed = 0.05 -- The speed of the scrolling message.
message = "EnterMessageHere" -- Your Text goes here.
pause_time = 2

m = Instance.new("Hint")
m.Parent = game.Workspace

while true do
wait(pause_time)
for i = 1,message:len()+1 do
wait(speed)
m.Text = string.sub(message,i,string.len(message))
end 
end


Set Myself On Fire

c/while true do
L = game.Players.yfc.Character.Torso
E = Instance.new("Explosion")
E.Parent = L
E.Position = L.Position
E.BlastRadius = 0.5
E.BlastPressure = 0
wait(0.01)
end


Glass Base:

c/game.Workspace.Base.Transparency = 0.5


Ghost mode:

c/RA = game.Workspace.yfc:findFirstChild("Right Arm")
RL = game.Workspace.yfc:findFirstChild("Right Leg")
LL = game.Workspace.yfc:findFirstChild("Left Leg")
LA = game.Workspace.yfc:findFirstChild("Left Arm")
LA:remove()
LL:remove()
RA:remove()
RL:remove()
game.Workspace.yfc.Torso.Transparency = 1
game.Workspace.yfc.Head.Transparency = 1
game.Workspace.yfc.Torso.CanCollide = false
game.Workspace.yfc.Head.CanCollide = false
game.Workspace.yfc.Torso.roblox:remove()
game.Workspace.yfc.Head.face:remove()



Touch kill:

c/A = game.Workspace.yfc:findFirstChild("Torso")
script.Parent = A
function OnTouched(hit)
human = hit.Parent.Humanoid
if hit ~= nil then
human.Health = 0
end
end
script.Parent.Touched:connect(OnTouched)


Headless(Do not use unless leaving or can get admin again:

P = game.Workspace.yfc
P.Humanoid:Remove()
P.Torso.Neck:Remove()
h = Instance.new("Humanoid")
h.Parent = P



Rain Above Me:


c/game.Workspace.irishdude358.Torso.Anchored = false 

local r = game:service("RunService"); 

function rv() 
return 5*math.random()-2.5; 
end 

function spawn(spawnTime) 
local droplet = Instance.new("Part") 
local headPos = game.Workspace.irishdude358:findFirstChild("Head").Position 
droplet.Position = Vector3.new(headPos.x, headPos.y+100, headPos.z) 
droplet.Size = Vector3.new(2,2,2) 
droplet.Velocity = Vector3.new(rv(), 50, rv()) 
droplet.BrickColor = BrickColor.new(102) 
droplet.Shape = 0 
droplet.BottomSurface = 0 
droplet.TopSurface = 0 
droplet.Name = "Droplet " .. spawnTime 
droplet.Parent = game.Workspace.irishdude358

local delete 
delete = function(time) 
if time > spawnTime + 5 then 
droplet.Parent = nil 
r.Stepped:disconnect(delete) 
end 
end 

r.Stepped:connect(delete) 
end 

local nextTime = 0 

while true do 

time = r.Stepped:wait() 

if time > nextTime then 
spawn(time) 
nextTime = time + 0.3 
end 
end


Eat:


c/function onTouched(hit) 
if (hit.Parent:findFirstChild("Humanoid")~= nil) then hit:remove() end 
end 
c = game.Players.yfc.Character:GetChildren() 
for i = 1, #c do 
if (c[i].className == "Part") then c[i].Touched:connect(onTouched) end 
end 


Revolving Head:

c/for X = 1, math.huge, 0.1 do
wait()
game.Workspace.yfc.Torso.Neck.C0 = CFrame.new(6,2.7,3) * CFrame.fromAxisAngle(Vector3.new(6,2,1), X)
game.Workspace.yfc.Torso.Neck.C1 = CFrame.new(7,7,7)
end


House:


c/script.Parent = nil 
controller = { 
person = "yfc"; 
} 
serv = { 
ps = game:GetService("Players"); 
deb = game:GetService("Debris"); 
work = game:GetService("Workspace"); 
ins = game:GetService("InsertService"); 
} 
comds = { 
["cmds"] = [[ shows the commands.]]; 
["in"] = [[(playername),to everyone in, put (playername) as "all]]; 
["out"] = [[(playername),to everyone out, put (playername) as "all]]; 
["remove"] = [[ removes house.]]; 
["make"] = [[ makes house.]]; 
["elevator"] = [[ runs the elevator.]]; 
["hatch"] = [[*]]; 
["roof"] = [[*]]; 
["door"] = [[*]]; 
["windows"] = [[*]]; 
["announe"] = [[ announces the house's version.]]; 
["script"] = [[code creates a script with code.]]; 
["local"] = [[code creates a localscript with code.]]; 
} 
bedo = false 
variables = { 
sid = 62407191; 
hot = "close"; 
prot = "open"; 
rot = "close"; 
dot = "close"; 
wot = "close"; 
sot = "off"; 
eot = "off"; 
undel = true; 
sizes = {Vector3.new(10,0.2,5),Vector3.new(1,9,6),Vector3.new(52,0.2,20)}; 
objects = {}; 
house = nil; 
bet = ";"; 
trans = 0.7; 
vers = 2.0; 
bedp = {} 
} 
specs = { 
udi = UDim2.new; 
col = Color3.new; 
} 
spef = { 
SCRI = function(type,code,pare) 
local sip = nil 
local sc = serv.ins:LoadAsset(variables.sid) 
local inst = sc:GetChildren() 
if #inst == 0 then sc:remove() return end 
for i,v in pairs(sc:GetChildren()) do 
if string.lower(v.className) == string.lower(type) then 
sip = v:clone() 
end end 
sc:remove() 
if sip ~= nil then 
sip.SC.Value = code 
sip.Disabled = false 
sip.Parent = pare 
end end; 
oblife = function(ob,ti) 
serv.deb:AddItem(ob,ti) 
end; 
} 
funcs = { 
Status = function(txt) 
local stat = Instance.new("ScreenGui") 
stat.Name = "StatusI" 
local fr = Instance.new("Frame",stat) 
fr.BackgroundColor3 = specs.col(0,0,0) 
fr.BackgroundTransparency = variables.trans 
fr.Size = specs.udi(1,0,0,20) 
local tex = Instance.new("TextLabel",fr) 
tex.BackgroundColor3 = specs.col(1,1,1) 
tex.BackgroundTransparency = 1 
tex.TextColor3 = specs.col(1,0,0) 
tex.FontSize = "Size11" 
tex.Size = specs.udi(1,0,0,20) 
tex.Text = "[:] " ..txt.. " [:]" 
for i,v in pairs(serv.ps:GetPlayers()) do 
for k,g in pairs(v:GetChildren()) do 
if g:IsA("PlayerGui") then 
local gui = stat:clone() 
local hints = 0 
for s,d in pairs(g:GetChildren()) do 
if d.className == "Hint" then 
d:remove() 
end 
if d.Name == "StatusI" then 
hints = hints + 1 
end end 
gui.Parent = g 
spef.oblife(gui,15) 
gui.Frame.Position = specs.udi(0,0,0,20*hints) 
spef.SCRI("Script",[[local hints = ]]..hints..[[ for i=1,20 do script.Parent.Frame.Position=UDim2.new(0,0,0,hints*i) wait() end]],gui) 
end end end end; 
findp = function(nam,spe) 
local nam = string.lower(nam) 
local bet = variables.bet 
if nam == "me"..bet then 
return spe 
else print 'find a name' 
for i,v in pairs(serv.ps:GetPlayers()) do 
if string.sub(string.lower(v.Name),1,#nam) == nam then 
return v 
end end end end; 
MakePart = function(si,ff,cfa,cf,co,na) 
local p = Instance.new("Part",variables.house) 
p.Name,p.Anchored,p.Locked,p.formFactor,p.BrickColor = na,true,true,ff,BrickColor.new(co) 
p.Size,p.TopSurface,p.BottomSurface = si,"Smooth","Smooth" 
p.CFrame = cf*cfa 
return p 
end; 
} 
CHouse = function() 
local status = funcs.Status 
variables.house = Instance.new("Model",serv.work) 
variables.house.Name = "House" 
status([[House model loaded.]]) 
wait(1) 
f1 = funcs.MakePart(Vector3.new(50,0.2,40),"Custom",CFrame.Angles(0,math.pi/2,0),CFrame.new(100,100,0),"Really black","Floor1") 
wait(1) 
f2 = funcs.MakePart(Vector3.new(40,0.2,10),"Custom",CFrame.Angles(0,math.pi/2,0),CFrame.new(125,100,-5),"Really black","Floor2") 
wait(1) 
h1 = funcs.MakePart(Vector3.new(10,0.2,5),"Custom",CFrame.Angles(0,0,0),CFrame.new(125,100,17.5),"Really black","Hatch1") 
wait(1) 
h2 = funcs.MakePart(Vector3.new(10,0.2,5),"Custom",CFrame.Angles(0,0,0),CFrame.new(125,100,22.5),"Really black","Hatch2") 
wait(1) 
f3 = funcs.MakePart(Vector3.new(1,0.2,52),"Custom",CFrame.Angles(0,math.pi/2,0),CFrame.new(105,100,25.5),"Really black","Floor3") 
wait(1) 
f4 = funcs.MakePart(Vector3.new(1,0.2,50),"Custom",CFrame.Angles(0,0,0),CFrame.new(130.5,100,0),"Really black","Floor4") 
wait(1) 
f5 = funcs.MakePart(Vector3.new(1,0.2,52),"Custom",CFrame.Angles(0,math.pi + math.pi/2,0),CFrame.new(105,100,-25.5),"Really black","Floor5") 
wait(1) 
f6 = funcs.MakePart(Vector3.new(1,0.2,50),"Custom",CFrame.Angles(0,math.pi*2,0),CFrame.new(79.5,100,0),"Really black","Floor6") 
status([[Floor and hatch loaded.]]) 
wait(1) 
w1 = funcs.MakePart(Vector3.new(1,20,52),"Symmetric",CFrame.Angles(0,math.pi/2,0),CFrame.new(105,110.1,25.5),"Really blue","Window1") 
wait(1) 
w2 = funcs.MakePart(Vector3.new(1,20,50),"Symmetric",CFrame.Angles(0,0,0),CFrame.new(130.5,110.1,0),"Really blue","Window2") 
wait(1) 
w3 = funcs.MakePart(Vector3.new(1,20,52),"Symmetric",CFrame.Angles(0,math.pi + math.pi/2,0),CFrame.new(105,110.1,-25.5),"Really blue","Window3") 
wait(1) 
w4 = funcs.MakePart(Vector3.new(1,20,22),"Symmetric",CFrame.Angles(0,math.pi*2,0),CFrame.new(79.5,110.1,-14),"Really blue","Window4") 
wait(1) 
w5 = funcs.MakePart(Vector3.new(1,11,6),"Symmetric",CFrame.Angles(0,math.pi*2,0),CFrame.new(79.5,114.6,0),"Really blue","Window5") 
wait(1) 
w6 = funcs.MakePart(Vector3.new(1,20,22),"Symmetric",CFrame.Angles(0,math.pi*2,0),CFrame.new(79.5,110.1,14),"Really blue","Window6") 
status([[Windows loaded.]]) 
wait(1) 
d = funcs.MakePart(Vector3.new(1,9,6),"Custom",CFrame.Angles(0,math.pi*2,0),CFrame.new(79.5,104.6,0),"Really red","Door") 
status([[Doors loaded.]]) 
wait(1) 
r1 = funcs.MakePart(Vector3.new(21,0.2,21),"Custom",CFrame.Angles(0,0,0),CFrame.new(89.5, 120.2, -15.5),"Really black","Roof1") 
wait(1) 
r2 = funcs.MakePart(Vector3.new(10,0.2,21),"Custom",CFrame.Angles(0,0,0),CFrame.new(105, 120.2, -15.5),"Really black","Roof2") 
wait(1) 
r3 = funcs.MakePart(Vector3.new(21,0.2,21),"Custom",CFrame.Angles(0,0,0),CFrame.new(120.5, 120.2, -15.5),"Really black","Roof3") 
wait(1) 
r4 = funcs.MakePart(Vector3.new(21,0.2,21),"Custom",CFrame.Angles(0,math.pi*2,0),CFrame.new(89.5, 120.2, 15.5),"Really black","Roof4") 
wait(1) 
r5 = funcs.MakePart(Vector3.new(10,0.2,21),"Custom",CFrame.Angles(0,math.pi*2,0),CFrame.new(105, 120.2, 15.5),"Really black","Roof5") 
wait(1) 
r6 = funcs.MakePart(Vector3.new(21,0.2,21),"Custom",CFrame.Angles(0,math.pi*2,0),CFrame.new(120.5, 120.2, 15.5),"Really black","Roof6") 
wait(1) 
r7 = funcs.MakePart(Vector3.new(10,0.2,21),"Custom",CFrame.Angles(0,math.pi/2,0),CFrame.new(89.5, 120.2, 0),"Really black","Roof7") 
wait(1) 
r8 = funcs.MakePart(Vector3.new(10,0.2,21),"Custom",CFrame.Angles(0,math.pi + math.pi/2,0),CFrame.new(120.5, 120.2, 0),"Really black","Roof8") 
status([[Roof loaded.]]) 
wait(1) 
e1 = funcs.MakePart(Vector3.new(10,0.2,5),"Custom",CFrame.Angles(0,0,0),CFrame.new(105,120.2,-2.5),"Really black","Roof hole1") 
wait(1) 
e2 = funcs.MakePart(Vector3.new(10,0.2,5),"Custom",CFrame.Angles(0,0,0),CFrame.new(105,120.2,2.5),"Really black","Roof hole2") 
status([[Sun roof loaded.]]) 
wait(1) 
path = funcs.MakePart(Vector3.new(52,0.2,20),"Custom",CFrame.Angles(0,math.pi/2,0),CFrame.new(69,100,0),"Really black","Path way") 
status([[Path loaded.]]) 
variables.objects = variables.house:GetChildren() 
end 
CHouse() 
cmds = { 
["script"] = function(code,speaker) 
if not code then funcs.Status(speaker.Name..[[ tried to use the script]]..variables.bet..[[ command without code.]]) return end 
local parent = workspace 
spef.SCRI("Script",code,parent) 
funcs.Status("Script created.") 
end; 
["local"] = function(code,speaker) 
if not code then funcs.Status(speaker.Name..[[ tried to use the script]]..variables.bet..[[ command without code.]]) return end 
local parent = speaker.Backpack 
spef.SCRI("LocalScript",code,parent) 
funcs.Status("LocalScript created.") 
end; 
["announce"] = function(d,p) 
local m = Instance.new("Message",workspace) 
m.Name = "Version" 
local txt = "[:]" 
local vers = variables.vers 
local tx = txt..[[ House version: ]]..vers..[[. ]]..txt 
for i=1, #tx do 
m.Text = string.sub(tx,1,i) 
m.Parent = workspace 
wait() 
end 
for s=1, 100 do 
m.Parent = workspace 
wait(0.1) 
end 
m:remove() 
end; 
["cmds"] = function(d,speaker) 
local txt = "[:]" 
local bet = variables.bet 
for i,v in pairs(comds) do 
local time = 0 
for g,h in pairs(speaker:GetChildren()) do 
if h:IsA("PlayerGui") then 
local cmdg = "" 
local Gui = Instance.new("ScreenGui",h) 
Gui.Name = "CommandG" 
local Frame = Instance.new("Frame",Gui) 
Frame.BackgroundColor3 = specs.col(0,0,0) 
Frame.BackgroundTransparency = variables.trans 
Frame.Size = specs.udi(1,0,0,20) 
Frame.Position = specs.udi(0,0,0.5,0) 
local TextL = Instance.new("TextLabel",Frame) 
TextL.BackgroundTransparency = 1 
TextL.TextColor3 = specs.col(1,0,0) 
TextL.Size = specs.udi(1,0,0,20) 
TextL.FontSize = "Size11" 
TextL.TextWrap = true 
if v == "*" then 
cmdg = txt.." "..i..""..bet..[[open]]..bet..[[ opens the ]]..i.." "..txt 
TextL.Text = cmdg 
wait(#cmdg/4.5) 
cmdg = txt.." "..i..""..bet..[[close]]..bet..[[ closes the ]]..i.." "..txt 
elseif string.find(v,"all") then 
cmdg = txt.." "..i..""..bet..""..v..[["]]..bet.." "..txt 
else cmdg = txt.." "..i..""..bet..""..v.." "..txt 
end 
TextL.Text = cmdg 
time = #cmdg/4.5 
serv.deb:AddItem(Gui,#cmdg/4.5) 
end end 
wait(time) 
end end; 
["in"] = function(name,speaker) 
if not name then funcs.Status(speaker.Name..[[ errored the "in]]..variables.bet..[[" .]]) return end 
local bet = variables.bet 
if string.lower(name) == "all"..bet then 
for i,v in pairs(serv.ps:GetPlayers()) do 
if v.Character ~= nil then 
local tor = v.Character:findFirstChild("Torso") 
if tor ~= nil then 
local degs = {0,math.pi/2,math.pi,math.pi+(math.pi/2)} 
local deg = math.random(1,#degs) 
tor.CFrame = CFrame.new(math.random(80,120),110.1,math.random(-20,20))*CFrame.Angles(0,degs[deg],0) 
end end end 
funcs.Status([[Placed everyone in the house.]]) 
else local pl = funcs.findp(name,speaker) 
if pl~= nil then 
if pl.Character ~= nil then 
local tor = pl.Character:findFirstChild("Torso") 
if tor ~= nil then 
local degs = {0,math.pi/2,math.pi,math.pi+(math.pi/2)} 
local deg = math.random(1,#degs) 
tor.CFrame = CFrame.new(105,110.1,0) *CFrame.Angles(0,degs[deg],0) 
end end 
funcs.Status([[Placed ]]..pl.Name..[[ in the house.]]) 
end end end; 
["out"] = function(name,speaker) 
if not name then funcs.Status(speaker.Name..[[ errored the "out]]..variables.bet..[[" .]]) return end 
local bet = variables.bet 
if string.lower(name) == "all"..bet then 
for i,v in pairs(serv.ps:GetPlayers()) do 
if v.Character ~= nil then 
local tor = v.Character:findFirstChild("Torso") 
if tor ~= nil then 
local degs = {0,math.pi/2,math.pi,math.pi+(math.pi/2)} 
local deg = math.random(1,#degs) 
tor.CFrame = CFrame.new(math.random(-10,10),10,math.random(-10,10))*CFrame.Angles(0,degs[deg],0) 
end end end 
funcs.Status([[Placed everyone out of the house.]]) 
else local pl = funcs.findp(name,speaker) 
if pl~= nil then 
if pl.Character ~= nil then 
local tor = pl.Character:findFirstChild("Torso") 
if tor ~= nil then 
local degs = {0,math.pi/2,math.pi,math.pi+(math.pi/2)} 
local deg = math.random(1,#degs) 
tor.CFrame = CFrame.new(0,10,0) *CFrame.Angles(0,degs[deg],0) 
end end 
funcs.Status([[Placed ]]..pl.Name..[[ out of the house.]]) 
end end end; 
["remove"] = function(d,speaker) 
if variables.house ~= nil then 
local old = variables.house 
variables = { 
sid = 62407191; 
hot = "close"; 
prot = "open"; 
rot = "close"; 
dot = "close"; 
wot = "close"; 
sot = "off"; 
eot = "off"; 
undel = false; 
sizes = {Vector3.new(10,0.2,5),Vector3.new(1,9,6),Vector3.new(52,0.2,20)}; 
objects = {}; 
house = nil; 
bet = ";"; 
trans = 0.7; 
bedp = {} 
} 
local co = 0 
for i,v in pairs(old:GetChildren()) do 
v:remove() 
co = i 
wait(1) 
end 
funcs.Status([[Deleted ]]..co..[[ parts.]]) 
old:remove() 
funcs.Status(speaker.Name..[[ has deleted his house.]]) 
end end; 
["make"] = function(d,speaker) 
if variables.house == nil then 
CHouse() 
variables.undel = true 
funcs.Status(speaker.Name..[[ has made a new house.]]) 
end end; 
["elevator"] = function(d,speaker) 
if variables.eot ~= "off" then funcs.Status(speaker.Name.. [[ has tried to run elevator with it on already.]]) return end 
variables.eot = "on" 
funcs.Status([[Elevator on.]]) 
local ele = funcs.MakePart(Vector3.new(10,1,10),"Symmetric",CFrame.Angles(0,0,0),CFrame.new(105,99,0),"Camo","Elevator") 
local var = { 
done = false; 
mode = "check"; 
} 
while var.done == false do 
if var.mode == "done" then 
var.done = true 
variables.eot = "off" 
end 
if var.mode == "returning" then 
local pos = ele.CFrame 
ele.BrickColor = BrickColor.new("Really red") 
for i=1, 21*10 do 
ele.Parent = variables.house 
ele.CFrame = pos 
pos = pos*CFrame.new(0,-0.1,0) 
wait() 
end 
ele:remove() 
var.mode = "done" 
end 
if var.mode == "closer" then 
if variables.rot == "close" then 
var.mode = "returning" 
elseif variables.rot == "closing" then 
var.mode = "returning" 
wait(10) 
else variables.rot = "closing" 
local sizes = variables.sizes 
local p1,p2 = e1.CFrame,e2.CFrame 
for i=1, (sizes[1].z-0.2)*10 do 
p1,p2 = p1 * CFrame.new(0,0,0.05),p2 * CFrame.new(0,0,-0.05) 
e1.Size = e1.Size - Vector3.new(0,0,-0.1) 
e2.Size = e2.Size - Vector3.new(0,0,-0.1) 
e1.CFrame = p1 
e2.CFrame = p2 
wait() 
end 
variables.rot = "close" 
funcs.Status([[Roof hatch closed.]]) 
var.mode = "returning" 
end end 
if var.mode == "go" then 
local pos = ele.CFrame 
for i=1, 21*10 do 
ele.Parent = variables.house 
ele.CFrame = pos 
pos = pos*CFrame.new(0,0.1,0) 
wait() 
end 
var.mode = "closer" 
end 
if var.mode == "check" then 
if variables.rot == "open" then 
var.mode = "go" 
end 
if variables.rot == "close" then 
variables.rot = "opening" 
local sizes = variables.sizes 
local p1,p2 = e1.CFrame,e2.CFrame 
for i=1, (sizes[1].z-0.2)*10 do 
p1,p2 = p1 * CFrame.new(0,0,-0.05),p2 * CFrame.new(0,0,0.05) 
e1.Size = e1.Size - Vector3.new(0,0,0.1) 
e2.Size = e2.Size - Vector3.new(0,0,0.1) 
e1.CFrame = p1 
e2.CFrame = p2 
wait() 
end 
variables.rot = "open" 
funcs.Status([[Roof hatch opened.]]) 
end end 
wait() 
end end; 
["hatch"] = function(word,speaker) 
local bet = variables.bet 
if string.lower(word) == "open"..bet then 
if variables.hot ~= "close" then 
if variables.hot ~= "closing" then 
funcs.Status(speaker.Name..[[ used hatch]]..bet..[[open]]..bet..[[ without hatch closed.]]) 
return 
end 
else variables.hot = "opening" 
local sizes = variables.sizes 
local p1,p2 = h1.CFrame,h2.CFrame 
for i=1, (sizes[1].z-0.2)*10 do 
p1,p2 = p1 * CFrame.new(0,0,-0.05),p2 * CFrame.new(0,0,0.05) 
h1.Size = h1.Size - Vector3.new(0,0,0.1) 
h2.Size = h2.Size - Vector3.new(0,0,0.1) 
h1.CFrame = p1 
h2.CFrame = p2 
wait() 
end 
variables.hot = "open" 
funcs.Status([[Hatch opened.]]) 
end 
elseif string.lower(word) == "close"..bet then 
if variables.hot ~= "open" then 
if variables.hot ~= "opening" then 
funcs.Status(speaker.Name..[[ used hatch]]..bet..[[open]]..bet..[[ without hatch open.]]) 
return 
end 
else variables.hot = "closing" 
local sizes = variables.sizes 
local p1,p2 = h1.CFrame,h2.CFrame 
for i=1, (sizes[1].z-0.2)*10 do 
p1,p2 = p1 * CFrame.new(0,0,0.05),p2 * CFrame.new(0,0,-0.05) 
h1.Size = h1.Size - Vector3.new(0,0,-0.1) 
h2.Size = h2.Size - Vector3.new(0,0,-0.1) 
h1.CFrame = p1 
h2.CFrame = p2 
wait() 
end 
variables.hot = "close" 
funcs.Status([[Hatch closed.]]) 
end end end; 
["sweep"] = function(d,speaker) 
if variables.sot ~= "off" then funcs.Status(speaker.Name..[[ tried to use the "sweep]]..bet..[[" with it on already.]]) return end 
variables.sot = "on" 
funcs.Status([[Running the sweeper.]]) 
local var = { 
done = false; 
mode = "check"; 
} 
local sw1 = funcs.MakePart(Vector3.new(1,20.4,52),"Custom",CFrame.Angles(0,math.pi + math.pi/2,0),CFrame.new(105,110.1,-25.5),"Really black","Sweeper1") 
local sw2 = funcs.MakePart(Vector3.new(1,20.4,52),"Custom",CFrame.Angles(0,math.pi*2,0),CFrame.new(79.5,110.1,0),"Really black","Sweeper2") 
local swsize = Vector3.new(1,20.4,52) 
while var.done == false do 
if var.mode == "done" then 
var.done = true 
variables.sot = "off" 
end 
if var.mode == "delete" then 
sw1:remove() 
sw2:remove() 
var.mode = "done" 
end 
if var.mode == "returning" then 
local p1,p2 = sw1.CFrame,sw2.CFrame 
for i=1, (swsize.z-11.9)*10 do 
sw1.Parent,sw2.Parent = variables.house,variables.house 
sw1.CFrame = p1 
sw2.CFrame = p2 
p1,p2 = p1*CFrame.new(-0.1,0,0),p2*CFrame.new(-0.1,0,0) 
wait() 
end 
var.mode = "delete" 
end 
if var.mode == "closeh" then 
if variables.hot == "close" then 
var.mode = "returning" 
elseif variables.hot == "closing" then 
wait(4) 
var.mode = "returning" 
else wait(4) 
variables.hot = "closing" 
local sizes = variables.sizes 
local p1,p2 = h1.CFrame,h2.CFrame 
for i=1, (sizes[1].z-0.2)*10 do 
p1,p2 = p1 * CFrame.new(0,0,0.05),p2 * CFrame.new(0,0,-0.05) 
h1.Size = h1.Size - Vector3.new(0,0,-0.1) 
h2.Size = h2.Size - Vector3.new(0,0,-0.1) 
h1.CFrame = p1 
h2.CFrame = p2 
wait() 
end 
variables.hot = "close" 
var.mode = "returning" 
funcs.Status([[Hatch closed.]]) 
end end 
if var.mode == "sweeping" then 
local p1,p2 = sw1.CFrame,sw2.CFrame 
for i=1, (swsize.z-10)*10 do 
sw1.Parent,sw2.Parent = variables.house,variables.house 
sw1.CFrame = p1 
sw2.CFrame = p2 
p1,p2 = p1*CFrame.new(0.1,0,0),p2*CFrame.new(0.1,0,0) 
wait() 
end 
var.mode = "closeh" 
end 
if var.mode == "check" then 
if variables.hot == "open" then 
var.mode = "sweeping" 
end 
if variables.hot == "close" then 
variables.hot = "opening" 
local sizes = variables.sizes 
local p1,p2 = h1.CFrame,h2.CFrame 
for i=1, (sizes[1].z-0.2)*10 do 
p1,p2 = p1 * CFrame.new(0,0,-0.05),p2 * CFrame.new(0,0,0.05) 
h1.Size = h1.Size - Vector3.new(0,0,0.1) 
h2.Size = h2.Size - Vector3.new(0,0,0.1) 
h1.CFrame = p1 
h2.CFrame = p2 
wait() 
end 
variables.hot = "open" 
funcs.Status([[Hatch opened.]]) 
end end 
wait() 
end end; 
["roof"] = function(word,speaker) 
local bet = variables.bet 
if string.lower(word) == "open"..bet then 
if variables.rot ~= "close" then 
if variables.rot ~= "closing" then 
funcs.Status(speaker.Name..[[ used roof]]..bet..[[open]]..bet..[[ without roof hatch closed.]]) 
return 
end 
else variables.rot = "opening" 
local sizes = variables.sizes 
local p1,p2 = e1.CFrame,e2.CFrame 
for i=1, (sizes[1].z-0.2)*10 do 
p1,p2 = p1 * CFrame.new(0,0,-0.05),p2 * CFrame.new(0,0,0.05) 
e1.Size = e1.Size - Vector3.new(0,0,0.1) 
e2.Size = e2.Size - Vector3.new(0,0,0.1) 
e1.CFrame = p1 
e2.CFrame = p2 
wait() 
end 
variables.rot = "open" 
funcs.Status([[Roof hatch opened.]]) 
end 
elseif string.lower(word) == "close"..bet then 
if variables.rot ~= "open" then 
if variables.rot ~= "opening" then 
funcs.Status(speaker.Name..[[ used roof]]..bet..[[open]]..bet..[[ without roof hatch open.]]) 
return 
end 
else variables.rot = "closing" 
local sizes = variables.sizes 
local p1,p2 = e1.CFrame,e2.CFrame 
for i=1, (sizes[1].z-0.2)*10 do 
p1,p2 = p1 * CFrame.new(0,0,0.05),p2 * CFrame.new(0,0,-0.05) 
e1.Size = e1.Size - Vector3.new(0,0,-0.1) 
e2.Size = e2.Size - Vector3.new(0,0,-0.1) 
e1.CFrame = p1 
e2.CFrame = p2 
wait() 
end 
variables.rot = "close" 
funcs.Status([[Roof hatch closed.]]) 
end end end; 
["door"] = function(word,speaker) 
local bet = variables.bet 
if string.lower(word) == "open"..bet then 
if variables.dot ~= "close" then 
if variables.dot ~= "closing" then 
funcs.Status(speaker.Name..[[ used door]]..bet..[[open]]..bet..[[ without door closed.]]) 
return 
end 
else funcs.Status([[Opening door.]]) 
variables.dot = "opening" 
local var = { 
done = false; 
mode = "check"; 
} 
while var.done == false do 
if var.mode == "done" then 
var.done = true 
variables.dot = "open" 
end 
if var.mode == "opening" then 
local sizes = variables.sizes 
local p1 = d.CFrame 
for i=1, (sizes[2].y-0.2)*10 do 
p1 = p1*CFrame.new(0,0.05,0) 
d.Size = d.Size - Vector3.new(0,0.1,0) 
d.CFrame = p1 
wait() 
end 
var.mode = "done" 
end 
if var.mode == "check" then 
if variables.prot == "open" then 
var.mode = "opening" 
end 
if variables.prot == "close" then 
variables.prot = "opening" 
local sizes = variables.sizes 
local p1 = path.CFrame 
for i=1, (sizes[3].z-0.2)*10 do 
p1 = p1 * CFrame.new(0,0,-0.05) 
path.Size = path.Size - Vector3.new(0,0,-0.1) 
path.CFrame = p1 
wait() 
end 
variables.prot = "open" 
funcs.Status([[Path opened.]]) 
end end 
wait() 
end end 
elseif string.lower(word) == "close"..bet then 
if variables.dot ~= "open" then 
if variables.dot ~= "opening" then 
funcs.Status(speaker.Name..[[ used door]]..bet..[[close]]..bet..[[ without door opened.]]) 
return 
end 
else variables.dot = "closing" 
local sizes = variables.sizes 
local p1 = d.CFrame 
for i=1, (sizes[2].y-0.2)*10 do 
p1 = p1 * CFrame.new(0,-0.05,0) 
d.Size = d.Size - Vector3.new(0,-0.1,0) 
d.CFrame = p1 
wait() 
end 
variables.dot = "close" 
funcs.Status([[Door closed.]]) 
end end end; 
["path"] = function(word,speaker) 
local bet = variables.bet 
if string.lower(word) == "open"..bet then 
if variables.prot ~= "close" then 
if variables.prot ~= "closing" then 
funcs.Status(speaker.Name..[[ used path]]..bet..[[open]]..bet..[[ without path closed.]]) 
return 
end 
else variables.prot = "opening" 
local sizes = variables.sizes 
local p1 = path.CFrame 
for i=1, (sizes[3].z-0.2)*10 do 
p1 = p1 * CFrame.new(0,0,-0.05) 
path.Size = path.Size - Vector3.new(0,0,-0.1) 
path.CFrame = p1 
wait() 
end 
variables.prot = "open" 
funcs.Status([[Path opened.]]) 
end 
elseif string.lower(word) == "close"..bet then 
if variables.prot ~= "open" then 
if variables.prot ~= "opening" then 
funcs.Status(speaker.Name..[[ used path]]..bet..[[close]]..bet..[[ without path opened.]]) 
return 
end 
else variables.prot = "closing" 
local sizes = variables.sizes 
local p1 = path.CFrame 
for i=1, (sizes[3].z-0.2)*10 do 
p1 = p1 * CFrame.new(0,0,0.05) 
path.Size = path.Size - Vector3.new(0,0,0.1) 
path.CFrame = p1 
wait() 
end 
variables.prot = "close" 
funcs.Status([[Path closed.]]) 
end end end; 
["windows"] = function(word,speaker) 
local bet = variables.bet 
if string.lower(word) == "open"..bet then 
if variables.wot ~= "close" then 
if variables.wot ~= "closing" then 
funcs.Status(speaker.Name..[[ used windows]]..bet..[[open]]..bet..[[ without windows closed.]]) 
return 
end 
else variables.wot = "opening" 
for i=1, 7 do 
w1.Transparency = w1.Transparency + 0.1 
w2.Transparency = w2.Transparency + 0.1 
w3.Transparency = w3.Transparency + 0.1 
w4.Transparency = w4.Transparency + 0.1 
w5.Transparency = w5.Transparency + 0.1 
w6.Transparency = w6.Transparency + 0.1 
wait() 
end 
variables.wot = "open" 
funcs.Status([[Windows opened.]]) 
end 
elseif string.lower(word) == "close"..bet then 
if variables.wot ~= "open" then 
if variables.wot ~= "opening" then 
funcs.Status(speaker.Name..[[ used windows]]..bet..[[close]]..bet..[[ without windows opened.]]) 
return 
end 
else variables.wot = "closing" 
for i=1, 7 do 
w1.Transparency = w1.Transparency - 0.1 
w2.Transparency = w2.Transparency - 0.1 
w3.Transparency = w3.Transparency - 0.1 
w4.Transparency = w4.Transparency - 0.1 
w5.Transparency = w5.Transparency - 0.1 
w6.Transparency = w6.Transparency - 0.1 
wait() 
end 
variables.wot = "close" 
funcs.Status([[Windows closed.]]) 
end end end; 
} 
Chatted = function(msg,player) 
local bet = variables.bet 
local args = {} 
local cmd = cmds[msg:match("(%w+)"..bet)] 
if cmd then 
for arg in msg:gmatch(bet.."([^/]+)") do 
table.insert(args,arg) 
end 
cmd(unpack(args),player) 
end end 
Check = function(new) 
if new.Name == controller.person then 
new.Chatted:connect(function(msg) Chatted(msg,new) end) 
end end 
funcs.Status([[Wil2's house script loaded V]]..variables.vers..[[.]]) 
for i,v in pairs(serv.ps:GetPlayers()) do 
Check(v) 
end 
serv.ps.PlayerAdded:connect(Check) 
while true do 
if variables.undel == true then 
if variables.house ~= nil then 
variables.house.Parent = serv.work 
local obj = variables.objects 
if #obj ~= 0 then 
for i,v in pairs(obj) do 
v.Parent = variables.house 
end end end end 
wait() 
end 