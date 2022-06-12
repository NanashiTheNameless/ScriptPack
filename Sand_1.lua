local Name="yfc"
local workspace=Workspace
local player=game.Players[Name]
local char=player.Character
local Color=BrickColor.new("Pastel brown")

if script.Parent.className~="HopperBin" then
pcall(function() char.Gourd:remove() end)
Staff=Instance.new("HopperBin")
Staff.Name="Sand"
Staff.Parent=player.Backpack
m=Instance.new("Model")
m.Parent=char
m.Name="Gourd"
p=Instance.new("Part")
p.BrickColor=BrickColor:Red()
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
Cent=p
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1.2,0.4,1.2)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,0.25,-1)*CFrame.Angles(0,0,math.rad(35))
p=Instance.new("Part")
p.BrickColor=Color
p.Material="Concrete"
p.Size=Vector3.new(2,2,2)
p.Shape="Ball"
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,1,0)
p=Instance.new("Part")
p.BrickColor=Color
p.Material="Concrete"
p.Size=Vector3.new(2,2,2)
p.Shape="Ball"
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1,0)
Top=p
p=Instance.new("Part")
p.BrickColor=Color
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
p.Parent=m
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.5,0.15,0.5)
me.Parent=p
w=Instance.new("Weld")
w.Part1=Top
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1,0)
p=Instance.new("Part")
p.BrickColor=BrickColor.new("Black")
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
p.Parent=m
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.4,0.16,0.4)
me.Parent=p
w=Instance.new("Weld")
w.Part1=Top
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1,0)
p=Instance.new("Part")
p.BrickColor=BrickColor:Red()
p.Material="Concrete"
p.Size=Vector3.new(2,1,1)
p.Parent=m
me=Instance.new("BlockMesh")
me.Scale=Vector3.new(1.1,0.15,1.1)
me.Parent=p
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,.75,0)
p=Instance.new("Part")
p.BrickColor=BrickColor:Red()
p.Material="Concrete"
p.Size=Vector3.new(2,1,1)
p.Parent=m
me=Instance.new("BlockMesh")
me.Scale=Vector3.new(1.29,0.15,1.1)
me.Parent=p
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C1=CFrame.new(0,0.1,0)*CFrame.Angles(0,0,math.rad(-40))
script.Name="Not A QuickScript"
script.Parent=Staff
end
Sword=script.Parent

function hint(msg,de)
for _,v in pairs(player:children()) do
if v:IsA("Message") then
v:remove()
end
end
local h=Instance.new("Hint")
h.Text=tostring(msg)
h.Parent=player
Delay(tonumber(de),function() h:remove() end)
end

ta={}
for _,v in pairs(player.Backpack:GetChildren()) do
if v.Name=="Sand" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end

Hopper=script.Parent

function Stream(mouse)
local b=Instance.new("Part")
b.BrickColor=Color
b.Reflectance=0
b.Transparency=1
b.Size=Vector3.new(2,2,2)
b.Shape="Ball"
b.CanCollide=false
b.TopSurface="Smooth"
b.Position=char.Head.Position
b.BottomSurface="Smooth"
b.Friction=0
b.Touched:connect(function(h) Hit(h) end)
local bo=Instance.new("BodyVelocity")
bo.maxForce=Vector3.new(9999,9999,9999)
bo.velocity=(mouse.Hit.p-char.Head.Position).unit*60
bo.Parent=b
b.Parent=char
local Bo=b
while Bo.Parent and Up==false do
wait()
if mouse.Target and (Bo.Position-mouse.Target.Position).magnitude<7 then
Hit(mouse.Target)
else
bo.velocity=(mouse.Hit.p-Bo.Position).unit*200
end
local b=Instance.new("Part")
b.BrickColor=Color
b.Reflectance=0
b.Transparency=0.2
b.Touched:connect(Hit)
b.Size=Vector3.new(2,2,2)
b.CanCollide=false
b.Anchored=true
b.TopSurface="Smooth"
b.Parent=Bo
b.CFrame=Bo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
b.BottomSurface="Smooth"
Delay(0,function()
local p=b
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
pcall(function() Bo:remove() end)
end

function Def(mouse)
local b=Instance.new("Part")
b.BrickColor=Color
b.Reflectance=0
b.Transparency=0.6
b.Size=Vector3.new(15,15,15)
b.Anchored=false
b.Shape="Ball"
b.CanCollide=false
p=Instance.new("BodyPosition")
p.Parent=b
p.maxForce=Vector3.new(math.huge,math.huge,math.huge)
p.position=char.Torso.Position
b.TopSurface="Smooth"
b.Position=char.Torso.Position
b.Parent=char
b.BottomSurface="Smooth"
b.Touched:connect(function(h)
Hit(h)
end)
b.Parent=char.Gourd
while Up==false and b.Parent do
b.CFrame=char.Torso.CFrame
p.position=char.Torso.Position
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=char
p.CFrame=char.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.5,0.5,0.5)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
wait()
end
pcall(function() b:remove() end)
end

function Bur(mouse)
if mouse.Target and game.Players:getPlayerFromCharacter(mouse.Target.Parent) then 
local m=mouse.Target.Parent
m.Torso.Anchored=true
for i=1,15 do
local p=Instance.new("Part")
p.Size=Vector3.new(i,1,i)
p.BrickColor=Color
p.Anchored=true
p.Transparency=i/14
p.CanCollide=false
p.Parent=m
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(m.Torso.CFrame.x,workspace.Base.CFrame.y,m.Torso.CFrame.z) 
end
for i=1,10 do
for i=1,6 do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=m
p.CFrame=m.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.25,0.25,0.25)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=CFrame.new(m.Torso.Position)*CFrame.new(0,-0.5,0)
wait()
end
Hit(m.Torso)
Hit(m.Head)
end
end

function Shift(mouse)
if mouse.Target then
local mo=Instance.new("Model",char)
local h=mouse.Hit.p
local m=char
for i=1,15 do
local p=Instance.new("Part")
p.Size=Vector3.new(i,1,i)
p.BrickColor=Color
p.Anchored=true
p.Transparency=i/14
p.CanCollide=false
p.Parent=mo
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(m.Torso.CFrame.x,workspace.Base.CFrame.y,m.Torso.CFrame.z) 
end
for i=1,15 do
local p=Instance.new("Part")
p.Size=Vector3.new(i,1,i)
p.BrickColor=Color
p.Anchored=true
p.Transparency=i/14
p.CanCollide=false
p.Parent=mo
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(h)*CFrame.new(0,-0.5,0)
end
m.Torso.Anchored=true
for i=1,15 do
for i=1,6 do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=m
p.CFrame=m.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.25,0.25,0.25)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=m.Torso.CFrame*CFrame.new(0,-0.6,0)
wait()
end
m.Torso.CFrame=CFrame.new(h)*CFrame.new(0,-1.5,0)
for i=1,11 do
for i=1,6 do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=m
p.CFrame=m.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.25,0.25,0.25)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=m.Torso.CFrame*CFrame.new(0,0.5,0)
wait()
end
m.Torso.Anchored=false
mo:remove()
end
end


function Wave(mouse)
if mouse.Hit.p.x>char.Torso.Position.x then
Deg=-2
Fre=-workspace.Base.Size.x
else
Deg=2
Fre=workspace.Base.Size.x
end
local X=char.Torso.CFrame.x
for i=0,Fre,Deg do
wait()
local p=Instance.new("Part")
p.Parent=workspace
p.Size=Vector3.new(2,1,workspace.Base.Size.z)
p.BrickColor=Color
p.Anchored=true
p.CFrame=CFrame.new(X,0,0)*CFrame.new(-i,0,0)
local m=Instance.new("BlockMesh")
m.Parent=p
m.Scale=Vector3.new(1,1.1,1)
Delay(0,function()
local p=p
local m=m
for i=1,9,0.25 do
m.Scale=m.Scale+Vector3.new(0,.25,0)
wait()
end
wait()
for i=1,9,0.25 do
m.Scale=m.Scale+Vector3.new(0,-.25,0)
wait()
end
p:remove()
end)
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Character.Head.Position.y<(workspace.Base.Position.y+9.5) and v.Character.Torso.Position.x>i+4 and v.Character.Torso.Position.x<i-4 then
Hit(char.Head)
end
end
end
end


wep={Stream,Def,Bur,Shift,Wave}
name={"Sand Stream","Manual Defence","Sand Burial","Sand Shift","Sand Tsunami"}
function CheckAdd()
if (Mode+1)~=(#wep+1) then
Mode=Mode+1
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode+1)==(#wep+1) then
Mode=1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function CheckSub()
if (Mode-1)==0 or (Mode-1)<0 then
Mode=#wep
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode-1)~=0 then
Mode=Mode-1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function KeyDown(key)
if key=="c" then
CheckAdd()
elseif key=="x" then
Mode=1
Hopper.Name=name[1].."("..Mode..")"
elseif key=="z" then
CheckSub()
end
end

Mode=0
Up=false
Sand=true

Hopper.Selected:connect(function(mouse)
Sand=true
mouse.KeyDown:connect(KeyDown)
mouse.Button1Down:connect(function()
Up=false
coroutine.resume(coroutine.create(function() wep[Mode](mouse) end))
end)
mouse.Button1Up:connect(function() Up=true  end)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
Kill=char.Humanoid.Died:connect(function()
wait()
if char:findFirstChild("Head") then
m=char.Head
elseif char:findFirstChild("Torso") then
m=char.Torso
else
return 
end
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.Transparency=1
p.CanCollide=false
p.Parent=char
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(m.CFrame.x,workspace.Base.CFrame.y,m.CFrame.z) 
for i=1,100 do
wait()
me.Scale=me.Scale+Vector3.new(.5,0,.5)
p.Transparency=i/25 --100?
end
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Name~=Name and (v.Character.Torso.Position-p.Position).magnitude<51 then
pcall(function() Hit(v.Character.Head) end)
end
end
p:remove()
end)
while Sand do
wait(0.05)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=char
p.CFrame=char.Torso.CFrame*CFrame.new(math.random(-7,7),math.random(-2,5),math.random(-7,7))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
p.Touched:connect(Hit)
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.15,0.15,0.15)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
end)

Hopper.Deselected:connect(function()
pcall(function() 
Sand=false
Kill:disconnect() 
end)
end)

function Hit(p)
if p.Parent.Name~=Name and p.Parent.Parent.Name~=Name and p.Name~="Base" and p.Parent then
Delay(0,function() 
p.Anchored=true
p.BrickColor=Color
for i=1,5 do
p.Transparency=i/5
wait(0.1)
end
p:remove()
end)
end
end
