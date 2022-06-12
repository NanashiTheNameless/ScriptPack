Name="TheEndOfDays"
pcall(function() game.Players[Name].PlayerGui.Vi:remove() end)
local workspace=workspace
local game=game
if script.Parent.className~="GuiMain" then
Gui=Instance.new("GuiMain")
Gui.Name="Vi"
Gui.Parent=game.Players[Name].PlayerGui
script.Parent=Gui
end
Screen=script.Parent

function XY(x,y)
if type(x)=="number" and type(y)=="number" then
return UDim2.new(x,0,y,0)
else
error("Invalide argument for XY")
end
end

Size=1/10


Frame=Instance.new("Frame")
Frame.Size=XY(0,0)
Frame.Position=XY(0.15,0.05)
Frame.Parent=Screen
Frame.BackgroundColor=BrickColor:Black()
for i=0.05,0.7,0.01 do
Frame.Size=XY(i,0.05)
wait()
end
for i=0.05,0.9,0.01 do
Frame.Size=XY(0.7,i)
wait()
end


Bor=Instance.new("TextButton")
Bor.Size=XY(0.7,.08)
Bor.BackgroundColor=BrickColor:White()
Bor.Position=XY(0.15,0.05)
Bor.BorderSizePixel=0
Bor.Parent=Screen
Bor.Text=""
local T="Its not a Rapture. l"
local Cur=T
local tex=T
for i=1,#Cur do
Bor.Text=string.sub(Cur,1,i)
wait(.05)
end
local n=0
for i=1,6 do
n=n+1
le=#Cur
st=string.sub(Cur,le,le)
en=string.sub(Cur,1,le-1)
if n==2 then
Bor.Text=en.." "
wait(0.25)
Bor.Text=en..st
n=0
else
Bor.Text=Cur
end
wait(0.2)
end
Bor.Text=string.sub(tex,1,#tex-1)
wait(1)
local P=Bor.Text
for i=#P,1 do
wait(0.8)
Bor.Text=string.sub(P,1,i)
end
Bor.Text=""
wait(1)
Bor.Text="Click to reset."
Bor.MouseButton1Down:connect(function() for _,v in pairs(Frame:children()) do v:remove() end Load() end)


tab={BrickColor:Red(),BrickColor:Blue(),BrickColor:Yellow(),BrickColor:Green()}

B=Instance.new("ImageButton")
B.Size=XY(Size,Size)
B.Position=XY(-2,-2)
B.BorderSizePixel=0
S=Instance.new("BoolValue")
S.Parent=B
S.Value=false

function Round(num)
local num=num
local p=tostring(num)
if #p>3 and tonumber(string.sub(p,4,4))>4 then
p=tostring(tonumber(string.sub(p,1,3)+0.1))
end
return tonumber(string.sub(p,1,3))
end


function Check(b)
local b=b
wait()
for _,v in pairs(Frame:children()) do
if v.Value.Value==false then
if Round(v.Position.X.Scale)==Round(b.Position.X.Scale+Size) and Round(v.Position.Y.Scale)==Round(b.Position.Y.Scale) then
if v.BackgroundColor==b.BackgroundColor then
Delay(0,function() v.Value.Value=true
wait()
Check(v)
for i=1,10 do
wait()
v.BackgroundTransparency=i/10
end
v:remove() end)
end
elseif Round(v.Position.X.Scale)==Round(b.Position.X.Scale-Size) and Round(v.Position.Y.Scale)==Round(b.Position.Y.Scale) then
if v.BackgroundColor==b.BackgroundColor then
Delay(0,function() v.Value.Value=true
wait()
Check(v)
v.Value.Value=true
for i=1,10 do
wait()
v.BackgroundTransparency=i/10
end
v:remove() end)
end
elseif Round(v.Position.X.Scale)==Round(b.Position.X.Scale) and Round(v.Position.Y.Scale)==Round(b.Position.Y.Scale-Size) then
if v.BackgroundColor==b.BackgroundColor then
Delay(0,function() v.Value.Value=true
wait()
Check(v)
v.Value.Value=true
for i=1,10 do
wait()
v.BackgroundTransparency=i/10
end
v:remove() end)
end
elseif Round(v.Position.X.Scale)==Round(b.Position.X.Scale) and Round(v.Position.Y.Scale)==Round(b.Position.Y.Scale+Size) then
if v.BackgroundColor==b.BackgroundColor then
Delay(0,function() v.Value.Value=true
wait()
Check(v)
v.Value.Value=true
for i=1,10 do
wait()
v.BackgroundTransparency=i/10
end
v:remove() end)
end
end
end
end
end

function Load()
for i=0.1,0.8,Size do
for ii=0.1,0.8,Size do
local Block=B:Clone()
Block.Parent=Frame
Block.BackgroundColor=tab[math.random(1,#tab)]
Block.Position=XY(i,ii)
Block.MouseButton1Down:connect(function() Check(Block) end)
end
end
end 