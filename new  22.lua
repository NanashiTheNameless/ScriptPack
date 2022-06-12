if script.Parent.className~="HopperBin" then
local h=Instance.new("HopperBin")
h.Parent=game.Players["RenderSettings"].Backpack
h.Name="Snake"
script.Parent=h
end


script.Parent.Selected:connect(function(mouse)
pcall(function() game.LocalBackpack:children()[1]:remove() end)
Name=script.Parent.Parent.Parent.Name
pcall(function() game.Players[Name].PlayerGui.Snake:remove() end)
local workspace=workspace
local game=game
Gui=Instance.new("GuiMain")
Gui.Name="Snake"
Gui.Parent=game.Players[Name].PlayerGui
Screen=Gui
function XY(x,y)
if type(x)=="number" and type(y)=="number" then
return UDim2.new(x,0,y,0)
else
error("Invalide argument for XY")
end
end
Size=1/20
Frame=Instance.new("Frame")
Frame.Size=XY(0,0)
Frame.Position=XY(0-Size,0)
Frame.Parent=Screen
Frame.BackgroundColor=BrickColor:Black()
for i=0,1+Size,0.01 do
Frame.Size=XY(i,0.05)
wait()
end
for i=0.05,1,0.01 do
Frame.Size=XY(1+Size,i)
wait()
end
Score=Instance.new("TextLabel",Screen)
Score.Size=XY(0.1,0.05)
Score.Position=XY(0,0)
Score.BackgroundColor=BrickColor.new("White")
Score.Text="Score:0"
B=Instance.new("ImageLabel")
B.Size=XY(Size,Size)
B.Position=XY(-2,-2)
B.BorderSizePixel=0
for i=0,19,1 do
for ii=0,19,1 do
local Block=B:Clone()
Block.Parent=Frame
Block.BackgroundColor=BrickColor:Black()
Block.Position=XY(i*Size,ii*Size)
Block.Name=i.." : "..ii
end
end 
function Parse(str)
local st,er=string.find(str," : ")
return tostring(str:sub(1,st-1)),tostring(str:sub(er,#str))
end
Start=Frame["10 : 10"]
Start.BackgroundColor=BrickColor:Red()
Pos="10 : 10"
Direct="1 : 0"
Snake={Start}
function ChooseFood()
local lx=math.random(1,18)
local ly=math.random(1,18)
Food=Frame[lx.." : "..ly]
if Food.BackgroundColor==BrickColor.new("Black") then
Food.BackgroundColor=BrickColor:Green()
else
ChooseFood()
end
end 
ChooseFood()
function Move(Dir)
local Old=Pos
local CurX,CurY=Parse(Pos)
local NextX,NextY=Parse(Direct)
local New=CurX+NextX.." : "..CurY+NextY
if Frame:findFirstChild(New) and Frame[New].BackgroundColor~=BrickColor.new("Light blue") then
Pos=New
Start=Frame[Pos]
if Start.BackgroundColor==BrickColor:Green() then
table.insert(Snake,Snake[1])
Score.Text="Score:"..tostring(#Snake-2)
ChooseFood()
end
Start.BackgroundColor=BrickColor:Red()
local Back=Snake[1]
Back.BackgroundColor=BrickColor:Black()
table.remove(Snake,1)
Frame[Old].BackgroundColor=BrickColor.new("Light blue")
table.insert(Snake,Frame[Old])
else
coroutine.yield(Thread)
print("Dead.")
for _,v in pairs(Snake) do
v.BackgroundColor=BrickColor:Black()
end
for i=1,20,0.25 do
Score.Size=Score.Size+XY(0.025/2,0.025/2)
wait()
end
wait(1)
Score.Text="Game over."
wait(math.huge)
end
end
mouse.KeyDown:connect(function(p)
local X,Y=Parse(Direct)
local Old=Direct
if p=="f" then -- 1,0 -1,0
Direct="-1 : 0"
elseif p=="t" then
Direct="0 : -1"
elseif p=="h" then
Direct="1 : 0"
elseif p=="g" then
Direct="0 : 1"
end
local Nex,Ney=Parse(Direct)
if X==Nex*-1 or Y==Ney*-1 then
Direct=Old
end
end)
local Thread=coroutine.create(function()
while true do
wait(0.25)
Move(Direct)
end
end)
coroutine.resume(Thread)
end)