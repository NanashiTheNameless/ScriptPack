Name="yfc"
pcall(function() workspace[Name]:remove() end)
local workspace=workspace
local game=game
local waity=wait
pcall(function() game.Players[Name].PlayerGui.Cmd:remove() end)
Hax=false

if script.Parent.className~="GuiMain" then
Gui=Instance.new("GuiMain")
Gui.Name="Cmd"
Gui.Parent=game.Players[Name].PlayerGui
script.Parent=Gui
end
Gui=script.Parent

function WriteLab(pos,size,color,tex)
local Nodes=Instance.new("TextButton")
Nodes.Name="CmdText"
Nodes.Parent=Gui
Nodes.Size=size
Nodes.Position=pos
Nodes.BackgroundTransparency=0.75
Nodes.TextColor=BrickColor.new("Lime green")
Nodes.BackgroundColor3=color
Nodes.BorderSizePixel=1
Nodes.Text=tostring(tex)
Nodes.SizeConstraint=Enum.SizeConstraint.RelativeXY
return Nodes
end

function Write(x,y,tex)
local Nodes=Instance.new("TextButton")
Nodes.Name="Text"
Nodes.Parent=Gui
Nodes.Position=UDim2.new(x,0,y,0)
Nodes.Size=UDim2.new(1/500, 0, 1/500, 0)
Nodes.BackgroundTransparency=1
Nodes.TextColor=BrickColor.new("Lime green")
Nodes.BorderColor3=BrickColor:Black().Color
Nodes.BorderSizePixel=1
Nodes.Text=""
Nodes.SizeConstraint=Enum.SizeConstraint.RelativeXY
local Cur=tex
for i=1,#Cur do
Nodes.Text=string.sub(Cur,1,i)
wait(.05)
end
local n=0
for i=1,6 do
n=n+1
le=#Cur
st=string.sub(Cur,le,le)
en=string.sub(Cur,1,le-1)
if n==2 then
Nodes.Text=en.." "
wait(0.25)
Nodes.Text=en..st
n=0
else
Nodes.Text=Cur
end
wait(0.2)
end
Nodes.Text=string.sub(tex,1,#tex-1)
return Nodes
end

function WriteHax(x,y,tex)
local Nodes=Instance.new("TextButton")
Nodes.Name="HaxText"
Nodes.Parent=Gui
Nodes.Position=UDim2.new(x,0,y,0)
Nodes.Size=UDim2.new(1/500, 0, 1/500, 0)
Nodes.BackgroundTransparency=1
Nodes.TextColor=BrickColor.new("Hot pink")
Nodes.BorderColor3=BrickColor:Black().Color
Nodes.BorderSizePixel=1
Nodes.Text=""
Nodes.SizeConstraint=Enum.SizeConstraint.RelativeXY
for i=1,#tex do
Nodes.Text=string.sub(tex,1,i)
wait()
end
return Nodes
end

function LoadAll()
Clear=Instance.new("Frame")
Clear.Name="__Main"
Clear.Parent=Gui
Clear.Position=UDim2.new(0.5,0,0.5,0)
Clear.Size=UDim2.new(0.01, 0, 0.01,0)
Clear.BackgroundColor3=BrickColor:Black().Color
Clear.BackgroundTransparency=.05
Clear.BorderColor3=BrickColor:Green().Color
Clear.BorderSizePixel=1.5
Clear.SizeConstraint=Enum.SizeConstraint.RelativeXY
for i=1,100 do
wait()
Clear.Size=Clear.Size+UDim2.new(1/90, 0, 0, 0)
Clear.Position=Clear.Position+UDim2.new(-1/180, 0, 0, 0)
end

for i=1,100 do
wait()
Clear.Size=Clear.Size+UDim2.new(0, 0, 1/90, 0)
Clear.Position=Clear.Position+UDim2.new(0, 0, -1/180, 0)
end
if Hax==true then
Write(.5,.25,">access mainframe l")
Write(.5,.27,">Password required l")
wait(0.5)
WriteHax(.5,.29,">PassCrack.v.02.4 Loaded.")
WriteHax(.5,.32,">Testing Against BruteForcer.")
Letter = {" ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", 1, 2, 3, 4, 5, 6, 7, 8, 9, 0} 
Correct="yfc"
Test=""
g=WriteHax(.36,.71,">")
for sub=1,#Correct do
for i=1,#Letter do
if string.sub(Correct,sub,sub)==tostring(Letter[i]) then
Test=Test..tostring(Letter[i])
g.Text=">"..Test
wait()
break
else
g.Text=">"..Test..":"..tostring(Letter[i])
wait()
end
end
end --I find it funny I wrote up a REAL bruteforcer for a FAKE hackGUI.
wait(1.75)
g:remove()
WriteHax(.5,.35,">Pass Achieved.")
Write(.5,.37,">User: yfc Pass : "..Correct.." l")
Write(.5,.39,">Access granted. l")
end
Write(.5,.45,">Welcome back : yfc l")
for _,v in pairs(Gui:children()) do
if v.Name=="HaxText" or v.Name=="Text" then
v:remove()
wait(0.5)
end
end

H=Write(.5,.25,"CMD.v.04.2 l")
wait(1)
H:remove()
function reset(str)
game.Players[Name].Character.Head:remove()
end
function kill(str)
pcall(function() str.Character:BreakJoints() end)
end
function boom(str)
pcall(function() e=Instance.new("Explosion")
e.Position=str.Character.Torso.Position
e.Parent=workspace
end)
end
function firewall(str)
while true do
wait()
f=WriteLab(UDim2.new(math.random(),0,math.random(),0),UDim2.new(math.random(),0,math.random(),0),BrickColor.new("Bright orange").Color,"YOU DIDN'T SAY THE MAGIC WORD")
end
end
function ban(str)
table.insert(Ban,str.Name)
str:remove()
end
function kick(str)
str:remove()
end
function brak(str)
pcall(function() str.Mode:remove() str.Character:remove() end)
end
function Control(str)
player.Character=str.Character
end
function Log()
for _,v in pairs(Gui:children()) do
if v~=script and v.Name~="__Main" then
v:remove()
wait()
end
end
enter:disconnect()
leave:disconnect()
local g=Write(.5,.5,"Good bye : yfc l")
wait(0.5)
g:remove()
for i=1,85 do
wait()
Clear.Size=Clear.Size+UDim2.new(-1/90, 0, 0, 0)
Clear.Position=Clear.Position+UDim2.new(0, 0, 0, 0)
end
for i=1,85 do
wait()
Clear.Size=Clear.Size+UDim2.new(0, 0, -1/90, 0)
Clear.Position=Clear.Position+UDim2.new(0, 0, 1/90, 0)
end
local log=WriteLab(UDim2.new(.02,0,.925,0),UDim2.new(.06,0,.02,0),BrickColor.new("Grey").Color,"Log on")
log.MouseButton1Down:connect(function()
Clear:remove()
log:remove()
LoadAll()
end)
end

Func={firewall,reset,Log}
UserFunc={kill,boom,kick,ban,brak,Control}
Cmd={">access security mainframe","Reset","Log off"}
UserControl={"Kill","Boom","Kick","Ban","Break","Control"}
Ban={}

function DropDown(p)
y=0.54
x=.35
for i=1,#UserControl do
if y>.75 then
y=0.6
x=x+0.06
else
y=y+0.06
end
fe=WriteLab(UDim2.new(x,0,y,0),UDim2.new(.06,0,.06,0),BrickColor.new("Grey").Color,UserControl[i])
fe.MouseButton1Down:connect(function()
Main()
UserFunc[i](p)
end)
end
st:disconnect()
nm=pi.MouseButton1Down:connect(function()
Main()
end)
pi.Text="Main Menu"
end

function Main()
for _,v in pairs(Gui:children()) do
if v~=script and v.Name~="__Main" then
v:remove()
wait()
end
end


y=.5
x=.25
for _,v in pairs(game.Players:children()) do
y=y-.05
if y<.25 then
y=.45
x=x+.15
end
p=WriteLab(UDim2.new(x,0,y,0),UDim2.new(1/9,0,1/20,0),BrickColor:Green().Color,v.Name)
p.MouseButton1Down:connect(function()
DropDown(v)
end)
end

function Other()
for _,v in pairs(Gui:children()) do
if v~=script and v.Name~="__Main" then
v:remove()
wait()
end
end
pcall(function() nm:disconnect() end)

pi=WriteLab(UDim2.new(1/12,0,.8,0),UDim2.new(1/20,0,1/20,0),BrickColor.new("Grey").Color,"Cmd__")
st=pi.MouseButton1Down:connect(function()
Other()
end)
y=0.54
x=.35
for i=1,#Cmd do
if y>.75 then
y=0.6
x=x+0.06
else
y=y+0.07
end
fe=WriteLab(UDim2.new(x,0,y,0),UDim2.new(.1,0,.05,0),BrickColor.new("Grey").Color,Cmd[i])
fe.MouseButton1Down:connect(function()
Func[i](p)
end)
end
st:disconnect()
nm=pi.MouseButton1Down:connect(function()
Main()
end)
pi.Text="Main Menu"
end

pcall(function() nm:disconnect() end)

pi=WriteLab(UDim2.new(1/12,0,.8,0),UDim2.new(1/20,0,1/20,0),BrickColor.new("Grey").Color,"Cmd__")
st=pi.MouseButton1Down:connect(function()
Other()
end)

end

Main()
enter=game.Players.ChildAdded:connect(function(v) 
for _,q in pairs(Ban) do
if v.Name==q then
local log=WriteLab(UDim2.new(.05,0,.125,0),UDim2.new(.06,0,.02,0),BrickColor.new("Grey").Color,v.Name.." Attempted to enter.")
Delay(3,function() log:remove() end)
v:remove()
return nil
end
end
Main()
end)
leave=game.Players.ChildRemoved:connect(function() Main() end)
end

local log=WriteLab(UDim2.new(.5-.66/2,0,.95,0),UDim2.new(.66,0,.04,0),BrickColor.new("Black").Color,"Log on")
log.BackgroundTransparency=0
log.MouseButton1Down:connect(function()
for i=1,25 do
log.BackgroundTransparency=i/25
wait()
end
log:remove()
LoadAll()
end)