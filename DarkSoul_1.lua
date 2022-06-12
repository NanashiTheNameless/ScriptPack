Name="yfc"
player=game.Players[Name]
char=player.Character
Color=BrickColor.new("Grey")
Color2=BrickColor:Black()
d=0
Debounce=true

--NOTE TO SELF:Use Add([Object],[Delay]) instead of Debris:AddItem
function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end))
end

if script.Parent.className~="HopperBin" then
Sword = Instance.new("HopperBin")
Sword.Parent = game.Players[Name].Backpack
Sword.Name="DarkSoul"
script.Parent=Sword
end

Sword=script.Parent

Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}

function hint(msg,de)
local h=Instance.new("Hint")
h.Text=tostring(msg)
h.Parent=player
Delay(tonumber(de),function() h:remove() end)
end

function makeSword()
local Sword=char
wait(0.1)
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,1)
Handle.Parent=Sword
Handle.BrickColor=Color2
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.4,0.75,0.4)
HenWeld=Instance.new("Weld")
HenWeld.Parent=char["Right Arm"]
HenWeld.Part1=HenWeld.Parent
HenWeld.Part0=Handle
HenWeld.C0=CFrame.new(0,-0.2,1)*CFrame.Angles(math.rad(90),math.rad(30),0)
Hy=HenWeld.C0
GripTop=Instance.new("Part")
GripTop.BrickColor=BrickColor.new(27)
GripTop.Size=Vector3.new(1,1,1)
GripTop.Parent=Sword
GripTop.Name="GripTop"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=GripTop
Mesh.Scale=Vector3.new(0.57,0.15,.57)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=GripTop
Weld.C0=CFrame.new(0,-0.35,0)
for i=1,5 do
GripTop=Instance.new("Part")
GripTop.BrickColor=BrickColor.new("Dark Stone Grey")
GripTop.Size=Vector3.new(1,1,1)
GripTop.Parent=Sword
GripTop.Name="Grip"..i
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=GripTop
Mesh.Scale=Vector3.new(0.41,0.15,.41)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=GripTop
Weld.C0=CFrame.new(0,0.365-i/9,0)
end
Blade1=Instance.new("Part")
Blade1.BrickColor=Color
Blade1.Size=Vector3.new(1,4,1)
Blade1.Parent=Sword
Blade1.Name="Blade1"
Blade1.Reflectance=0.11
Mesh=Instance.new("SpecialMesh")
Mesh.Parent=Blade1
Mesh.MeshType=0
Mesh.Scale=Vector3.new(0.3,0.9,0.3)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Blade1
Weld.C0=CFrame.new(0,-1.7,0)
Pi=Blade1.Touched:connect(Hit)
end



function Button(mouse)
for i=0,0.6,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0.05/2)
end
wait()
for i=0.95,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2,-.1/2)*CFrame.Angles(math.rad((90/5)/2),-.1/2,-0.05/2)
end
wait()
for i=0,0.35,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0)
end
w.C0=We
w2.C0=Wr
end


function Button2(mouse)
for i=0,0.3,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0.05/2)
end
wait()
for i=1,20 do
char.Torso.CFrame=char.Torso.CFrame+Vector3.new(0,2,0)
char.Torso.Velocity=Vector3.new(0,0,0)
wait()
end
wait()
bp=Instance.new("BodyPosition")
bp.maxForce=Vector3.new(9999999,999999999,99999999)
bp.position=char.Torso.Position
bp.Parent=char.Torso
wait(0.5)
for i=1.1,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2,0)*CFrame.Angles(math.rad((90/5)/2),-.1/2,-0.05/2)
HenWeld.C0=HenWeld.C0*CFrame.Angles(math.rad(20),0,0)
end
bp:remove()
con=char["Left Leg"].Touched:connect(function(hit) 
con:disconnect()
local list={}
function sar(v)
for _,v in pairs(v:children()) do 
if v:IsA("Part") and v.Parent.Name~=Name and v.Parent.Parent.Name~=Name then
table.insert(list,v)
elseif v.Name~=Name then
sar(v)
end
end
end
sar(workspace)
local l=Instance.new("Part")
l.BrickColor=BrickColor:Black()
l.Size=Vector3.new(1,1,1)
l.Parent=char
l.Transparency=0.3
l.Shape="Ball"
l.TopSurface="Smooth"
l.BottomSurface="Smooth"
l.Anchored=true
l.CFrame=char.Torso.CFrame
local m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Parent=l
local num=0
for i=1,35,0.5 do
wait()
m.Scale=m.Scale+Vector3.new(0.75,0.75,0.75)
if num~=4 then
num=num+1
else
num=0
for _,v in pairs(list) do
if v.Parent~=nil and v.Name~="Base" and v.Parent.Name~=Name and (v.Position-l.Position).magnitude<m.Scale.y/2 and v.Name~="Eaten" then
Delay(0,function()
v.Name="Eaten"
v.BrickColor=BrickColor:Black()
for i=1,10 do
wait()
v.Transparency=i/10
end
pcall(function() v:remove() end)
end) 
end
end
end
end
for i=1,30 do
wait()
l.Transparency=i/30
end
l:remove()
end)
w2.C0=Wr
HenWeld.C0=Hy
end

function Shock(mouse)
local list={}
function sar(v)
for _,v in pairs(v:children()) do 
if v:IsA("Part") and v.Parent.Name~=Name and v.Parent.Parent.Name~=Name then
table.insert(list,v)
elseif v.Name~=Name then
sar(v)
end
end
end
sar(workspace)
function checkMag(part)
local part=part
for _,v in pairs(list) do
if v.Parent~=nil and (v.Position-part.Position).magnitude<part.Mesh.Scale.y/2 then
Hit(v)
end
end
end
for i=0.4,0,-.05/2 do
HenWeld.C0=HenWeld.C0*CFrame.Angles(math.rad(i*32/2),0,0)
wait()
w2.C0=w2.C0*CFrame.Angles(math.rad(4/2),0,0)
end
wait(0.25)
for i=1,15 do
wait()
local P=Instance.new("Part")
P.Anchored=true
P.CanCollide=false
P.Size=Vector3.new(4,4,4)
local M=Instance.new("SpecialMesh")
M.Name="Mesh"
M.MeshType="Sphere"
M.Scale=Vector3.new(1.5,1.5,1.5)
M.Parent=P
P.CFrame=char.Torso.CFrame
P.CFrame=P.CFrame*CFrame.new(0,(-P.CFrame.y)+char.Torso.CFrame.y-4,-i*5)*CFrame.Angles(0,0,math.random()-math.random())
P.BrickColor=BrickColor:Black()
P.Reflectance=0.3
P.Parent=workspace
coroutine.resume(coroutine.create(function() for i=1,13,0.5 do P.CFrame=P.CFrame+Vector3.new(0,0.1,0) wait() checkMag(P) end wait(0.7) pcall(function() P:remove() end) end))
end
for i=0.4,0,-.05/2 do
HenWeld.C0=HenWeld.C0*CFrame.Angles(math.rad(-i*30/2),0,0)
wait()
w2.C0=w2.C0*CFrame.Angles(math.rad(-7/2),0,0)
end
w2.C0=Wr
HenWeld.C0=Hy
collectgarbage("collect")
end



fire={Shock}
name={"Shockwave Stab"}
klick={"z"}

function Kay(ke)
for _,v in pairs(klick) do
if v==ke then
return _
end
end
return false
end

f=Sword.Selected:connect(function(mouse)
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here.
if d==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then
d=1
De=0
f:disconnect()
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
Debou=true
Numb=Instance.new("NumberValue")
Numb.Value=0
Numb.Parent=Sword
Numb.Changed:connect(function() 
if Debou then 
Debou=false 
wait(0.2) 
ghk:disconnect() 
if Numb.Value>1 then 
Numb.Value=0 
Button2() 
else Numb.Value=0 
Button() 
end 
ghk=mouse.Button1Down:connect(function() 
Delay(0,function()
if Debounce then
Debounce=false
Numb.Value=Numb.Value+1
wait()
Debounce=true
end
end)
end)
Debou=true 
end 
end)

Arms[1].Parent=nil
w = Instance.new("Weld") 
w.Name="Left Shouldr"
w.Parent = char.Torso
w.Part0 = char["Left Arm"]
w.Part1 = w.Parent

Arms[2].Parent=nil
w2 = Instance.new("Weld") 
w2.Name="Right Shouldr"
w2.Parent = char.Torso
w2.Part0 = char["Right Arm"]
w2.Part1 = w2.Parent
makeSword()
---Animation Start---
for i=0,1,0.05 do
w.C0 = CFrame.new(1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(75*-i),math.rad(i*45),math.rad(i*20))
wait()
w2.C0 = CFrame.new(-1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(75*-i),math.rad(-i*45),math.rad(-i*20))
end
----Animation End----
We=w.C0
Wr=w2.C0
wait()
ghk=mouse.Button1Down:connect(function() 
Delay(0,function()
if Debounce then
Debounce=false
Numb.Value=Numb.Value+1
wait()
Debounce=true
end
end)
end)
mouse.KeyDown:connect(function(key)
if Kay(tostring(key))~=false then 
hint(tostring(name[Kay(tostring(key))]).."!",2)
wait()
fire[Kay(tostring(key))](mouse)
end
end)
end
end)


local cr=Instance.new("ObjectValue")
cr.Value=player
cr.Name="creator"

function Hit(h)
if h.Parent~=nil and h.Parent.Name~=Name and h.Parent:findFirstChild("Humanoid")~=nil then
pcall(function() cr:clone().Parent=h.Parent.Humanoid h.Parent.Shirt:remove() h.Parent.Pants:remove() end)
for _,v in pairs(h.Parent:children()) do
if v:IsA("Part") then
wait()
b=Instance.new("BodyVelocity")
b.Parent=v
v:BreakJoints()
b.velocity=(v.Position-Vector3.new(math.random(-100,100),v.Position.y,math.random(-100,100))).unit*50
end
end
wait()
pcall(function() h.Parent.Humanoid.creator:remove() end)
for i=1,17 do
wait()
for _,v in pairs(h.Parent:children()) do
if v:IsA("Part") then
v.BrickColor=BrickColor:Black()
v:BreakJoints()
v.Reflectance=0
wait()
v.Reflectance=0.7
end
end
end
end
end
--lego