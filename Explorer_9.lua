Name="yfc"
local workspace=workspace
Tab={workspace,game:service("Lighting"),game:service("Players"),game:service("Teams")}
place={children=function() return Tab end,Name="Place1",className="Game",Parent=game,findFirstChild=function() return false end}
local game=game
if script.Parent.className~="GuiMain" then
Gui=Instance.new("GuiMain")
Gui.Name="Explore"
Gui.Parent=game.Players[Name].PlayerGui
script.Parent=Gui
end
local e=script:clone()
Sourc="String"
Gui=script.Parent
Current=workspace
Scroll=0.05
S=1
D=13

local Line = (function (Str,Line) 
local Tab = { } 
local I=0
for Words in Str:gmatch("([^\r\n]+)") do 
if I<Line+1 then
table.insert(Tab, Words) 
I=I+1
else
break
end
end 
return Tab[Line]
end)

function List(q)
De=0
for _,v in pairs(Gui:children()) do
v:remove()
end
Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.4,0,0.1,0)
Central.Size=UDim2.new(1/9, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor:White().Color
Central.BorderSizePixel=1
Central.Text="UpTo: "..Current.Parent.Name.." //::\\ "..Current.Parent.className
Central.SizeConstraint=Enum.SizeConstraint.RelativeXY
Central.MouseButton1Down:connect(function() S=1 D=13 De=1 Dow=1 Draw(Current.Parent,Scroll) end)
local y=0.15
for _,v in pairs(workspace:children()) do
if v:findFirstChild(Sourc) and v.className=="Script" and v.Creator.Value==q then
y=y+1/19
local Nodes=Instance.new("TextButton")
Nodes.Name="Scrip"
Nodes.Parent=Gui
Nodes.Position=UDim2.new(x,0,y,0)
Nodes.Size=UDim2.new(.85, 0, 1/25, 0)
Nodes.BackgroundTransparency=0.2
Nodes.BorderColor3=BrickColor:Black().Color
Nodes.BorderSizePixel=1
Nodes.Text=v.Name
pcall(function() Nodes.Text=Nodes.Text.." :: "..string.sub(v[Sourc].Value,1,40) end)
Nodes.SizeConstraint=Enum.SizeConstraint.RelativeXY
Nodes.MouseButton1Down:connect(function() WriteScript(v) end)
end
end
end
Dow=1
function WriteScript(srct)
Current=srct
for _,v in pairs(Gui:children()) do
v:remove()
end
Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.4,0,0.25,0)
Central.Size=UDim2.new(1/9, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor:White().Color
Central.BorderSizePixel=1
Central.Text="UpTo: "..Current.Parent.Name.." //::\\ "..Current.Parent.className
Central.SizeConstraint=Enum.SizeConstraint.RelativeXY
Central.MouseButton1Down:connect(function() S=1 D=13 De=1 Dow=1 Draw(Current.Parent,Scroll) end)
Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.25,0,0.25,0)
Central.Size=UDim2.new(1/9, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor:Yellow().Color
Central.BorderSizePixel=1
Central.Text="Run"
Central.SizeConstraint=Enum.SizeConstraint.RelativeXY
Central.MouseButton1Down:connect(function() S=1 D=13 De=1 Dow=1 Replace(Current) Draw(workspace,Scroll) end)

Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.75,0,0.25,0)
Central.Size=UDim2.new(1/9, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor.new("Brown").Color
Central.BorderSizePixel=1
Central.Text="Steal"
Central.SizeConstraint=Enum.SizeConstraint.RelativeXY
Central.MouseButton1Down:connect(function() S=1 D=13 De=1 Dow=1 Take(Current) Draw(workspace,Scroll) end)

ScanAt=Instance.new("TextButton")
ScanAt.Name="ScanAt"
ScanAt.Parent=Gui
ScanAt.Position=UDim2.new(0.6,0,0.25,0)
ScanAt.Size=UDim2.new(1/9, 0, 1/20, 0)
ScanAt.BackgroundColor3=Color3.new(100,100,100)
ScanAt.BackgroundTransparency=0
ScanAt.BorderColor3=BrickColor:White().Color
ScanAt.BorderSizePixel=1
ScanAt.Text="Scrolled At: "..tostring(S).." :: "..tostring(D)
ScanAt.SizeConstraint=Enum.SizeConstraint.RelativeXY
ScanAt=Instance.new("TextButton")
ScanAt.Name="ScanAt"
ScanAt.Parent=Gui
ScanAt.Position=UDim2.new(0.6,0,0.25,0)
ScanAt.Size=UDim2.new(1/9, 0, 1/20, 0)
ScanAt.BackgroundColor3=Color3.new(100,100,100)
ScanAt.BackgroundTransparency=0
ScanAt.BorderColor3=BrickColor:White().Color
ScanAt.BorderSizePixel=1
ScanAt.Text="Scrolled At: "..tostring(S).." :: "..tostring(D)
ScanAt.SizeConstraint=Enum.SizeConstraint.RelativeXY
Remove=Instance.new("TextButton")
Remove.Name="Remove"
Remove.Parent=Gui
Remove.Position=UDim2.new(0.54,0,0.25,0)
Remove.Size=UDim2.new(1/23, 0, 1/23, 0)
Remove.BackgroundColor3=Color3.new(100,100,100)
Remove.BackgroundTransparency=0
Remove.BorderColor3=BrickColor:Red().Color
Remove.BorderSizePixel=1
Remove.Text="Remove"
Remove.SizeConstraint=Enum.SizeConstraint.RelativeXY
Remove.MouseButton1Down:connect(function() local c=Current.Parent Current:remove() Draw(c,Scroll) Dow=1 De=1 S=1 D=13 end)
S_UP=Instance.new("TextButton")
S_UP.Name="S_UP"
S_UP.Parent=Gui
S_UP.Position=UDim2.new(0,0,1/32+0.06,0)
S_UP.Size=UDim2.new(1/2, 0, 1/32, 0)
S_UP.BackgroundColor3=Color3.new(100,100,100)
S_UP.BackgroundTransparency=0
S_UP.BorderColor3=BrickColor:White().Color
S_UP.BorderSizePixel=1
S_UP.Text="Scroll To Line: "..tostring(S+1).." :: "..tostring(D+1)
S_UP.SizeConstraint=Enum.SizeConstraint.RelativeXY
S_UP.MouseButton1Down:connect(function() S=S+1 D=D+1 Dow=1 WriteScript(Current) end)
if S-1>0 then
S_DOWN=Instance.new("TextButton")
S_DOWN.Name="S_DOWN"
S_DOWN.Parent=Gui
S_DOWN.Position=UDim2.new(0,0,1/28,0)
S_DOWN.Size=UDim2.new(1/2, 0, 1/32, 0)
S_DOWN.BackgroundColor3=Color3.new(100,100,100)
S_DOWN.BackgroundTransparency=0
S_DOWN.BorderColor3=BrickColor:White().Color
S_DOWN.BorderSizePixel=1
S_DOWN.Text="Scroll To Line: "..tostring(S-1).." :: "..tostring(D-1)
S_DOWN.SizeConstraint=Enum.SizeConstraint.RelativeXY
S_DOWN.MouseButton1Down:connect(function() S=S-1 D=D-1 Dow=1 WriteScript(Current) end)
end
for i=S,D do
if Line(srct[Sourc].Value,i)~=nil then
MakeLine(Line(srct[Sourc].Value,i),i)
Dow=Dow+1
end
end
end
function MakeLine(line,num)
local Nodes=Instance.new("TextButton")
Nodes.Name="Line "..num
Nodes.Parent=Gui
Nodes.Position=UDim2.new(.15,0,.26+Dow/22,0)
Nodes.Size=UDim2.new(.85, 0, 1/25, 0)
Nodes.BackgroundTransparency=0.2
Nodes.BorderColor3=BrickColor:Blue().Color
Nodes.BorderSizePixel=1
Nodes.Text=tostring(num).." :: "..tostring(line)
Nodes.SizeConstraint=Enum.SizeConstraint.RelativeXY
end

function Sar(v)
for _,v in pairs(v:children()) do
if v.className=="Script" and v~=script then
v:remove()
elseif v.Parent~=char then
Sar(v)
end
end
end

function Draw(q,Sc)
if Gui.Parent.Parent.Name~=Name then
Draw=(function() end)
Gui:remove()
return "SPAM"
end
local bo,er=pcall(function() return q.Parent end)
if (bo==false or q.Parent==nil) and q.className~="DataModel" then 
Draw(workspace,Scroll)
return 
elseif q.className=="DataModel" then
Draw(place,Scroll)
return 
end
for _,v in pairs(Gui:children()) do
v:remove()
end
Current=q
Clear=Instance.new("TextButton")
Clear.Name="Clear"
Clear.Parent=Gui
Clear.Position=UDim2.new(0.4+1/12,0,0.25,0)
Clear.Size=UDim2.new(1/15, 0, 1/20, 0)
Clear.BackgroundColor3=Color3.new(100,100,100)
Clear.BackgroundTransparency=0
Clear.BorderColor3=BrickColor:Green().Color
Clear.BorderSizePixel=1.5
Clear.Text="Clear"
Clear.SizeConstraint=Enum.SizeConstraint.RelativeXY
Clear.MouseButton1Down:connect(function() Sar(workspace) wait() Draw(workspace,Scroll) end)
Central=Instance.new("TextButton")
Central.Name="Up"
Central.Parent=Gui
Central.Position=UDim2.new(0.4,0,0.25,0)
Central.Size=UDim2.new(1/15, 0, 1/20, 0)
Central.BackgroundColor3=Color3.new(100,100,100)
Central.BackgroundTransparency=0
Central.BorderColor3=BrickColor:White().Color
Central.BorderSizePixel=1
Central.Text="UpTo: "..q.Parent.Name.." //::\\ "..q.Parent.className
Central.SizeConstraint=Enum.SizeConstraint.RelativeXY
Central.MouseButton1Down:connect(function() Draw(q.Parent,Scroll) end)
if q:findFirstChild(Sourc) then
Read=Instance.new("TextButton")
Read.Name="ReadSour"
Read.Parent=Gui
Read.Position=UDim2.new(0.4,0,0.35,0)
Read.Size=UDim2.new(1/15, 0, 1/20, 0)
Read.BackgroundColor3=Color3.new(100,100,100)
Read.BackgroundTransparency=0
Read.BorderColor3=BrickColor:Red().Color
Read.BorderSizePixel=1
Read.Text="Read: "..q.Name.." //::\\ "..q.className
Read.SizeConstraint=Enum.SizeConstraint.RelativeXY
Read.MouseButton1Down:connect(function() WriteScript(q) S=1 D=13 De=0 Dow=1 end)
end
if q.className=="Player" then
Read=Instance.new("TextButton")
Read.Name="ListSour"
Read.Parent=Gui
Read.Position=UDim2.new(0.4,0,0.35,0)
Read.Size=UDim2.new(1/15, 0, 1/20, 0)
Read.BackgroundColor3=Color3.new(100,100,100)
Read.BackgroundTransparency=0
Read.BorderColor3=BrickColor:Red().Color
Read.BorderSizePixel=1
Read.Text="List QuickScripts"
Read.SizeConstraint=Enum.SizeConstraint.RelativeXY
Read.MouseButton1Down:connect(function() List(q) end)
end
local ScrollLeft=Instance.new("TextButton")
ScrollLeft.Name="ScrollLeft"
ScrollLeft.Parent=Gui
ScrollLeft.Position=Central.Position+UDim2.new(-0.05,0,-0.05,0)
ScrollLeft.Size=UDim2.new(1/25, 0, 1/40, 0)
ScrollLeft.BackgroundTransparency=0.2
ScrollLeft.BorderColor3=Color3.new(27,42,53)
ScrollLeft.BackgroundColor3=BrickColor:Blue().Color
ScrollLeft.BorderSizePixel=1
ScrollLeft.Text="<"
ScrollLeft.SizeConstraint=Enum.SizeConstraint.RelativeXY
ScrollLeft.MouseButton1Down:connect(function() Draw(Current,Scroll-0.05) Scroll=Scroll-0.05 end)
local ScrollRight=Instance.new("TextButton")
ScrollRight.Name="ScrollRight"
ScrollRight.Parent=Gui
ScrollRight.Position=Central.Position+UDim2.new(0,0,-0.05,0)
ScrollRight.Size=UDim2.new(1/25, 0, 1/40, 0)
ScrollRight.BackgroundTransparency=0.2
ScrollRight.BorderColor3=Color3.new(27,42,53)
ScrollRight.BackgroundColor3=BrickColor:Blue().Color
ScrollRight.BorderSizePixel=1
ScrollRight.Text=">"
ScrollRight.SizeConstraint=Enum.SizeConstraint.RelativeXY
ScrollRight.MouseButton1Down:connect(function() Draw(Current,Scroll+0.05) Scroll=Scroll+0.05 end)
x=Sc
y=0.25
for _,v in pairs(q:children()) do
y=y+1/19
if y>1/1.5 then
y=0.25+1/19
x=x+1/6.5
end
local Nodes=Instance.new("TextButton")
Nodes.Name=v.Name
Nodes.Parent=Gui
Nodes.Position=UDim2.new(x,0,y,0)
Nodes.Size=UDim2.new(1/10, 0, 1/20, 0)
Nodes.BackgroundTransparency=0.2
Nodes.BorderColor3=Color3.new(27,42,53)
Nodes.BorderSizePixel=1
Nodes.Text=v.Name.." //::\\ "..v.className
Nodes.SizeConstraint=Enum.SizeConstraint.RelativeXY
Nodes.MouseButton1Down:connect(function() arg=v.Parent pcall(function() if not v:IsA("Player") and not v:IsA("Players") then v:remove() end end) Draw(arg,Scroll) end)
local Add=Instance.new("TextButton")
Add.Name=v.Name
Add.Parent=Gui
Add.Position=UDim2.new(x+1/15+1/25,0,y,0)
Add.Size=UDim2.new(1/35, 0, 1/20, 0)
Add.BackgroundTransparency=0.2
Add.BorderColor3=Color3.new(27,42,53)
Add.BackgroundColor3=BrickColor:White().Color
Add.BorderSizePixel=1
Add.Text="+"
Add.SizeConstraint=Enum.SizeConstraint.RelativeXY
Add.MouseButton1Down:connect(function() Draw(v,Scroll) end)
end
end

Draw(workspace,Scroll)

De=1
function onDraw()
pcall(function() script[Sourc].Value=[[print("Hello,World.")]] end)
if De==1 then
De=0
Draw(Current,Scroll)
wait()
De=1
end
end
workspace.ChildAdded:connect(onDraw)
workspace.ChildRemoved:connect(onDraw)

function Replace(scr)
local sour=scr[Sourc].Value
local own=scr.Creator.Value
local new,num=string.gsub(sour,own.Name,Name)
local p=e:clone()
p.Disabled=false
p[Sourc].Value=new
pcall(function() p.Creator.Value=game.Players[Name] end)
wait()
p.Parent=workspace[Name]
end

function Take(scrip)
local sour=scrip[Sourc].Value
local own=scrip.Creator.Value
local new,num=string.gsub(sour,own.Name,Name)
local p=e:clone()
local c=Instance.new("StringValue")
c.Value=new
c.Parent=p
c.Name="CL"
p.Disabled=false
p[Sourc].Value=[[
if script.Parent.className~="HopperBin" then
local h=Instance.new("HopperBin")
h.Name="Majik"
h.Parent=game.Players.]]..Name..[[.Backpack
script.Parent=h
end
script.Parent.Selected:connect(function(m)
m.Icon = "rbxasset://textures\\GunCursor.png"
m.Button1Down:connect(function()
assert(false,script.CL.Value)
end)
end)]]
wait()
p.Parent=workspace[Name]
end


--BLOCKLAND