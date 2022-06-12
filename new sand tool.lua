-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Name=game.Players.LocalPlayer.Name
local workspace=Workspace
local player=game.Players[Name]
local char=player.Character
local Color=BrickColor.new("Pastel brown")
 
 
--Stolen by UnadvisedRandom. Yaaaay. Might as well forum before the people he is giving it out to do...
 
if script.Parent.className~="HopperBin" then
pcall(function() char.Gourd:remove() end)
Staff=Instance.new("HopperBin")
Staff.Name="Sand"
Staff.Parent=player.Backpack
m=Instance.new("Model")
m.Parent=char
m.Name="Gourd"
p=Instance.new("Part")
p.Locked=true
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
p.Locked=true
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
p.Locked=true
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
p.Locked=true
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
p.Locked=true
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
p.Locked=true
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
p.Locked=true
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
 
 
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Brown")
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
p.Parent=m
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.41,0.18,0.41)
me.Parent=p
w=Instance.new("Weld")
w.Part1=Top
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1.1,0)
Cork=p
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
b.Parent=Gourd
local Bo=b
while Bo.Parent and Up==false do
wait()
if mouse.Target and (Bo.Position-mouse.Target.Position).magnitude<7 then
Hit(mouse.Target)
else
Bo.CFrame=b.CFrame --BodyPosition anti-hax
bo.velocity=(mouse.Hit.p-Bo.Position).unit*150
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
b.Parent=Gourd
b.CFrame=Bo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
b.BottomSurface="Smooth"
local m = Instance.new("BlockMesh",b)
Delay(0,function()
local p=b
local m=m
for i=1,5 do
wait(0.05)
p.Transparency=i/5
m.Scale=Vector3.new(1-(i/5),1-(i/5),1-(i/5))
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
b.BottomSurface="Smooth"
b.Touched:connect(function(h)
Hit(h)
end)
b.Parent=Gourd
while Up==false and b.Parent do
b.CFrame=char.Torso.CFrame
p.position=char.Torso.Position
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=Gourd
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
me.Scale=Vector3.new(1,1.15,1)
me.Parent=p
p.CFrame=CFrame.new(m.Torso.CFrame.x,m.Torso.CFrame.y-3.5,m.Torso.CFrame.z) 
end
for i=1,20 do
for i=1,6 do
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
wait(0.1)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=CFrame.new(m.Torso.Position)*CFrame.new(0,-0.25,0)
wait(0.05)
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
me.Scale=Vector3.new(1,1.15,1)
me.Parent=p
p.CFrame=CFrame.new(m.Torso.CFrame.x,m.Torso.CFrame.y-3.5,m.Torso.CFrame.z) 
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
for i=1,25 do
for i=1,6 do
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=mo
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
m.Torso.CFrame=m.Torso.CFrame*CFrame.new(0,-0.3,0)
wait()
end
m.Torso.CFrame=CFrame.new(h)*CFrame.new(0,-1.5,0)
for i=1,22 do
for i=1,6 do
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=mo
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
m.Torso.CFrame=m.Torso.CFrame*CFrame.new(0,0.25,0)
wait()
end
m.Torso.Anchored=false
mo:remove()
end
end
 
function Storm(mouse)
local f={}
for i=1,4 do
local p = Instance.new("Part",Gourd)
p.BrickColor=Color
p.Size=Vector3.new(3,3,3)
p.Transparency=0.05
p.CanCollide=false
p.CFrame=char.Torso.CFrame
p.Anchored=true
local m = Instance.new("SpecialMesh",p)
m.MeshType="Sphere"
m.Scale=Vector3.new(1-0.25*i,1.2-0.25*1.2*i,1-0.25*i)
f[i]=m
end
function sh()
for _,v in next,game.Players:getPlayers() do
if v.Character and v.Name~=Name and v.Character:findFirstChild("Torso") and v.Character.Torso.className=="Part" and (v.Character.Torso.Position-p.Position).magnitude<f[1].Scale.x then
v.Character.Humanoid:TakeDamage(5)
end
end
end
repeat print("debug") wait() sh() for _,v in next,f do v.Scale=v.Scale+Vector3.new(1/2-0.1*_,1.2/2-0.1*1.2*_,1/2-0.1*_) end until Up
for _,v in next,f do v.Parent:remove() end
end
 
function Wave(mouse)
if mouse.Hit.p.x>char.Torso.Position.x then
Deg=-2
Fre=-60
else
Deg=2
Fre=60
end
local X=char.Torso.CFrame.x
for i=0,Fre,Deg do
wait()
local p=Instance.new("Part")
p.Parent=Gourd
p.Size=Vector3.new(2,1,workspace.Base.Size.z)
p.BrickColor=Color
p.Anchored=true
p.CFrame=CFrame.new(X,0,workspace.Base.Position.z)*CFrame.new(-i,0,0)
local m=Instance.new("BlockMesh")
m.Parent=p
m.Scale=Vector3.new(1,1.2,1.005)
Delay(0,function()
local p=p
local m=m
for i=1,9,0.25 do
m.Scale=m.Scale+Vector3.new(0,.25,0)
wait()
end
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Character:findFirstChild("Head") then
if v.Character.Head.Position.y<(workspace.Base.Position.y+9.5) then
if v.Character.Torso.Position.x<p.Position.x+p.Size.x/2 and v.Character.Torso.Position.x>p.Position.x-p.Size.x/2 then
Hit(v.Character.Head)
end
end
end
end
wait()
for i=1,9,0.25 do
m.Scale=m.Scale+Vector3.new(0,-.25,0)
wait()
end
p:remove()
end)
end
end
 
function Spike(mouse)
local Pos=char.Torso.Position
for ii=8,25,3 do
wait()
for i=0,360,360/12 do 
local x = (ii) * math.sin(i) + Pos.x 
local y = Pos.y-4
local z = (ii)* math.cos (i) + Pos.z
local brick = Instance.new("Part") 
brick.Size=Vector3.new(1,1,1)
brick.Anchored=true
brick.BrickColor=Color
brick.Parent=Gourd
brick.CFrame = CFrame.new(x,y,z) 
brick.Touched:connect(Hit)
local mesh=Instance.new("CylinderMesh")
mesh.Parent=brick
Delay(0,function()
local p=brick
local m=mesh
for i=1,8 do
m.Scale=m.Scale+Vector3.new(0,.25,0)
p.CFrame=p.CFrame*CFrame.new(0,0.25,0)
wait()
end
for i=1,10 do
p.Transparency=i/10
wait(0.05)
end
p:remove()
end)
end
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Character:findFirstChild("Torso") and (v.Character.Torso.Position-Pos).magnitude<ii then
Hit(v.Character.Torso)
end
end
wait(0.08)
end
end
 
function Coffin(mouse)
if mouse.Target and game.Players:getPlayerFromCharacter(mouse.Target.Parent) then
me=mouse.Target.Parent
Delay(0,function() 
while me:findFirstChild("Torso") do
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=me
p.CFrame=me.Torso.CFrame*CFrame.new(math.random(-8,8),math.random(-2,5),math.random(-8,8))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.35,0.35,0.35)
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
end)
b=Instance.new("Part")
b.Size=Vector3.new(8,1,8)
b.BottomSurface="Smooth"
b.Position=me.Torso.Position
b.TopSurface="Smooth"
b.BrickColor=Color
b.CanCollide=false
b.Anchored=true
m=Instance.new("BlockMesh")
m.Parent=b
m.Scale=Vector3.new(1,0.5,1)
b.Parent=me
b:BreakJoints()
w=Instance.new("Weld")
w.Parent=b
w.Part0=me.Torso
w.Part1=b
w.C0=CFrame.new(0,-3.5,0)
for i=1,7,0.15 do
wait(0.05)
m.Scale=m.Scale+Vector3.new(0,0.25,0)
me.Torso.CFrame=me.Torso.CFrame+Vector3.new(0,.75,0) --Anti-BP hax. Again. (Stupid replication glitch...)
b.CFrame=me.Torso.CFrame;
end
wait(0.5)
for i=1,-1.5,-0.25 do
m.Scale=m.Scale+Vector3.new(-.25/8,0,-.25/8)
wait(0.05)
end
Hit(me.Head)
Hit(me.Torso)
end
end
 
function Path(mouse)
while Up==false do
local p=Instance.new("Part")
p.Name="Sand"
p.BrickColor=Color
p.TopSurface="Smooth"
p.Size=Vector3.new(4,1,6)
p.Parent=Gourd
p.CFrame=char.Torso.CFrame*CFrame.new(0,-3.5,0)
p.Anchored=true
Delay(0,function()
local p=p
for i=1,10 do
p.Transparency=i/10
wait(0.025)
end
p:remove()
end)
wait(0.06)
end
end
 
function Twist(mouse)
local len=1
local rep =0
while not Up do
rep=rep+1
wait()
local pos = mouse.Hit
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Shape="Ball"
p.Parent=Gourd
p.CFrame=pos*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
p.Touched:connect(Hit)
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.15,0.15,0.15)
m.Parent=p
Delay(0,function()
local p=p
local m = m
local len = len
for i=1,len do
wait()
p.Transparency=i/(len)
m.Scale=m.Scale+Vector3.new(0.15,0.15,0.15)
p.CFrame=p.CFrame+Vector3.new(math.sin(i),0.5,math.cos(i))
end
p:remove()
end)
if rep%10==5 then
len=len+0.5
rep=0
end
end
end
 
 
wep={Stream,Def,Bur,Shift,Wave,Spike,Coffin,Path,Storm,Twist}
name={"Sand Stream","Manual Defence","Sand Burial","Sand Shift","Sand Tsunami","Sand Spikes","Sand Coffin","Sand Path","Sandstorm","Dust Devil"}
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
Gourd=char.Gourd
Cork.Transparency=1
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
local me=me
local p=p
wait()
me.Scale=me.Scale+Vector3.new(.5,0,.5)
p.Transparency=i/200 --100?
end
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Name~=Name and (v.Character.Torso.Position-p.Position).magnitude<51 then
pcall(function() Hit(v.Character.Head) end)
end
end
p:remove()
end)
while Sand do
wait()
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
Cork.Transparency=0
Kill:disconnect() 
end)
end)
 
function Hit(p)
if p.Parent.Name~=Name and p.Parent.Parent.Name~=Name and p.Name~="Base" and p.Name~="Sand" and p.Parent then
Delay(0,function() 
p.Anchored=true
p.Name="Sand"
p.BrickColor=Color
for i=1,5 do
p.Transparency=i/5
wait(0.1)
end
p:remove()
end)
end
end
 
 
--Feel free to add/edit--
--mediafire
