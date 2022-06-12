-------------------------------------------Made by chc4-----------------------------------------------------
local Name="acb227"
local player=game.Players[Name]
local char=player.Character
local d=0
local Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}
local face=char.Head.face
local tshirt=char.Torso.roblox

if script.Parent.className~="HopperBin" then
Staff=Instance.new("HopperBin")
Staff.Name="Flute"
Staff.Parent=player.Backpack
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
if v.Name=="Flute" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end


char.Humanoid.Died:connect(function() for _,v in pairs(player:children()) do if v:IsA("Hint") then v:remove() end  end function hint(msg,time) end end) --I HATE leftover messages.


function makeSword()
local Sword=char
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,3,1)
Handle.Parent=Sword
Handle.BrickColor=BrickColor.new("Brown")
Handle.Reflectance=0.01
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.275,1,0.275)
HenWeld=Instance.new("Weld")
HenWeld.Parent=char["Torso"]
HenWeld.Part1=HenWeld.Parent
HenWeld.Part0=Handle
HenWeld.C0=CFrame.new(0,0,1.05)*CFrame.Angles(math.rad(-25),0,0)
Hy=HenWeld.C0
for i=1,4 do
local Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,2,2)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Shape="Ball"
Tor.CanCollide=true
Tor.Parent=Sword
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
local Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.05,0.05,0.05) 
local w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,i/3-1,-0.076)
end
end

function Kay(key)
local key=tostring(key)
for _,v in pairs(keys) do
if key==v then
return {true,_}
end
end
return {false,4}
end

function find(cur)
for _,v in pairs(Songs) do
if v==cur then
return v
end
end
return false
end

function place(q) 
for _,v in pairs(Songs) do
if v==q then
return {Fire[_],_}
end
end
end

function playNote(key)
Delay(0,function() local Pa=Instance.new("Part")
Pa.Size=Vector3.new(1,1,1)
Pa.BrickColor=Color[Kay(key)[2]]
Pa.Shape="Ball"
Pa.Anchored=true
Pa.CanCollide=false
Pa.TopSurface="Smooth"
Pa.BottomSurface="Smooth"
Pa.Name="Note"
Pa.Transparency=0.6
Pa.Parent=char
Pa.CFrame=char.Head.CFrame*CFrame.new(0,2,0)
Delay(0,function() 
for i=1,6,0.25 do 
pcall(function() Pa.CFrame=Pa.CFrame*CFrame.new(0,0.15,0) end)
wait() 
end 
pcall(function() 
Pa:remove() 
end) 
end)
end)
end


function Boom(mouse)
local ex=Instance.new("Explosion")
ex.Position=mouse.Hit.p
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Name~="Base" and hit.Name~="Handle" and hit.Parent.Parent.Name~=Name then
hit:BreakJoints()
hit.Anchored=false
hit.Velocity=(ex.Position-char.Torso.Position).unit*320
end
end)
ex.BlastPressure=0
ex.BlastRadius=6
ex.Parent=char
end

function God()
char.Humanoid.MaxHealth=math.huge
char.Humanoid.WalkSpeed=30
pcall(function() player.PlayerGui:children()[1]:remove() end)
end

function Death(mouse)
pcall(function() mouse.Target.Parent.Humanoid.Health=0 end)
end

function Protect(mouse)
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
local Pa=Instance.new("Part")
Pa.Size=Vector3.new(15,15,15)
Pa.BrickColor=Color[math.random(1,5)]
Pa.Shape="Ball"
Pa.TopSurface="Smooth"
Pa.BottomSurface="Smooth"
Pa.Anchored=true
Pa.CanCollide=false
Pa.Name="Protection"
Pa.Transparency=0.6
Pa.Parent=char
Pa.CFrame=char.Head.CFrame
num=0
for i=1,30,0.5 do
wait()
if num~=4 then
num=num+1
else
num=0
for _,v in pairs(list) do
if v.Parent~=nil and v.Name~="Base" and v.Parent.Name~=Name and (v.Position-Pa.Position).magnitude<Pa.Size.y/2 and v.Name~="Eaten" then
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
Pa:remove()
end

function Tele(mouse)
if mouse.Target~=nil then
local mouse=mouse
local hit=mouse.Hit
local Band1=Instance.new("Part")
Band1.Size=Vector3.new(1,1,1)
Band1.BrickColor=BrickColor:Black()
Band1.Parent=char
Band1.Reflectance=0.2
Band1.Transparency=0.2
local Mesh=Instance.new("CylinderMesh")
Mesh.Scale=Vector3.new(5.5,0.05,5.5)
Mesh.Parent=Band1
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Band1
w.C0 = CFrame.new(0,0,0)
for i=1,25 do
Mesh.Scale=Mesh.Scale+Vector3.new(0,0.25,0)
wait()
end
char.Torso.CFrame=CFrame.new(hit.p)+Vector3.new(0,3,0)
wait(0.1)
for i=1,25 do
Mesh.Scale=Mesh.Scale+Vector3.new(0,-0.25,0)
wait()
end
Band1:remove()
end
end

function Cloak(mouse)
local Laz=Instance.new("Part")
Laz.Anchored=false
Laz.BrickColor=BrickColor.new("Dark stone grey")
Laz.Reflectance=0.1
Laz.Transparency=0.1
Laz.Shape="Ball"
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=char.Torso
Laz.Transparency=0
w = Instance.new("Weld") 
w.Parent = Laz
w.Part0 = w.Parent 
w.Part1 = char.Torso
w.C0 = CFrame.new(0,0,0)
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(0.5,0.5,0.5)
wait()
end
if char.Torso.Transparency==0 then
for _,v in pairs(char:children()) do
if v:IsA("Part") then
v.Transparency=1
elseif v:IsA("Hat") and v:findFirstChild("Handle")~=nil then
v.Handle.Transparency=1
end
end
char.Head.face:remove()
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(-0.5,-0.5,-0.5)
wait()
end
Laz:remove()
else
for _,v in pairs(char:children()) do
if v:IsA("Part") then
v.Transparency=0
elseif v:IsA("Hat") and v:findFirstChild("Handle")~=nil then
v.Handle.Transparency=0
end
end
face:clone().Parent=char.Head
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(-0.5,-0.5,-0.5)
wait()
end
Laz:remove()
end
end

function Break(mouse)
local mou=mouse
if game.Players:getPlayerFromCharacter(mou.Target.Parent)~=nil and mou.Target.Parent:findFirstChild("Torso")~=nil and mou.Target.Parent.Name~=Name then
m=game.Players:getPlayerFromCharacter(mou.Target.Parent)
mou.Target.Parent.Torso.Anchored=true
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0
Laz.Shape="Ball"
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=true
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=mou.Target.Parent.Torso.CFrame
Laz.Parent=workspace
Laz.Transparency=0
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
for i=1,13 do
Me.Scale = Vector3.new(i,i,i) 
wait(0.1)
end
pcall(function()
m.Mode:remove()
m.Backpack:remove()
m.Character:remove()
m:remove()
end)
for i=1,7 do
Laz.BrickColor=BrickColor:White()
Laz.Reflectance=0.5
wait()
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0.2
wait()
end
for i=1,40 do
Laz.Transparency=i/40
wait()
end
Laz:remove()
end
end

function Nova(mouse)
local t = char.Torso
for i=1,50,0.75 do 
wait()
x = (16 + i) * math.sin(i) + t.Position.x 
y = t.Position.y
z = (16 + i)* math.cos (i) + t.Position.z
brick = Instance.new("Explosion") 
brick.BlastPressure=0
brick.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Name~="Base" and hit.Name~="Handle" and hit.Parent.Parent.Name~=Name then
hit:BreakJoints()
hit.Anchored=false
hit.Velocity=(hit.Position-char.Torso.Position).unit*320
end
end)
brick.BlastRadius = 20
brick.Parent = workspace 
brick.Position = Vector3.new(x,y,z) 
end
end

function Bedlam(mouse)
local mou=mouse
if game.Players:getPlayerFromCharacter(mou.Target.Parent)~=nil and mou.Target.Parent:findFirstChild("Torso")~=nil and mou.Target.Parent.Name~=Name then
m=game.Players:getPlayerFromCharacter(mou.Target.Parent)
local i=1
repeat wait(0.1) 
i=i+1
m.Character.Humanoid.WalkSpeed=m.Character.Humanoid.WalkSpeed*-0.95
until i==70 or m.Character:findFirstChild("Humanoid")==nil
pcall(function() m.Character:BreakJoints() end)
end
end

function Bale(mouse)
pos=mouse.Hit.p
dir = (pos - char.Torso.CFrame.p).unit 
for i = 1, 100, 1.2 do 
wait()
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.CFrame.p + (dir * 9* i) + (dir * 7) 
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Parent.Name~=Name and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(char.Torso.Position-ex.Position).unit*-250
end
end)
ex.BlastRadius = 6
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
end 
end

local Vee=Instance.new("Model")
h=Instance.new("Part")
h.Name="Head"
h.Size=Vector3.new(1,1,1)
h.Transparency=0.9 
h.Parent=Vee
t=Instance.new("Part")
t.Size=Vector3.new(1,1,1)
t.Transparency=1
t.Name="Torso"
t.Parent=Vee
Vee.Name=""



function Trap(mouse)
local mou=mouse
local mt=mou.Target
if game.Players:getPlayerFromCharacter(mt.Parent) and mou.Target.Parent:findFirstChild("Torso")~=nil and mt.Parent.Name~=Name then
local pl=game.Players:getPlayerFromCharacter(mt.Parent)
local m=pl.Character
m.Humanoid.PlatformStand=true
m.Torso.Velocity=Vector3.new(0,0,0)
pcall(function()
for _,v in pairs(m:children()) do
if v:IsA("Hat") then v:remove() end end
for _,v in pairs(pl.Backpack:children()) do
v:remove()
end
m["Left Leg"]:remove()
m["Right Leg"]:remove()
m["Left Arm"]:remove()
m["Right Arm"]:remove()
m.Head.Transparency=1
m.Head.face:remove()
m.Torso.Transparency=1
local w = Instance.new("Weld") 
w.Parent = m.Head
w.Part0 = w.Parent 
w.Part1 = m.Torso
w.C0 = CFrame.new(0,0,0)
local w = Instance.new("Weld") 
w.Parent = m.Head
w.Part0 = w.Parent 
w.Part1 = char.Handle
w.C0 = CFrame.new(0,0,0)
end)
end
end


function Poss(mouse)
local mou=mouse
local mt=mou.Target
if game.Players:getPlayerFromCharacter(mt.Parent) and mou.Target.Parent:findFirstChild("Torso")~=nil and mt.Parent.Name~=Name then
local m=game.Players[mt.Parent.Name].Character
for _,v in pairs(char:children()) do
if v:IsA("Hat") then v:remove() 
elseif v:IsA("Part") then
v.Transparency=1
end 
end
m.Humanoid.PlatformStand=true
char.Head.face:remove()
pcall(function() m.Torso.roblox:remove() end)
for _,v in pairs(m:children()) do
if v:IsA("Hat") then
v:remove()
end
end
pcall(function() tshirt:Clone().Parent=m.Torso end)--Hehehe. Gotta let them know I own them,no?
pcall(function() tshirt:Clone().Parent=m.Head end)--Further reminded.
local w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = char.Torso
w.C0 = CFrame.new(0,0,0)
local w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = m.Head
w.C0 = CFrame.new(0,0,0)
char=m
m.Humanoid.PlatformStand=false
repeat wait(0.25) m.Humanoid:MoveTo(mou.Hit.p,workspace.Base) until m.Parent==nil or m:findFirstChild("Right Arm")==nil
end
end

function Fanal(mouse)
m=Instance.new("Hint")
m.Parent=workspace
m.Text=Name.." is playing a song to forever blind those hateful eyes."
wait(2.5)
m:remove()
God(mouse)
for i=1,6 do
for i=1,5 do
wait(0.05)
playNote(keys[i])
end
for i=5,1,-1 do
wait(0.05)
playNote(keys[i])
end
wait(0.1)
end
Protect(mouse)
wait(0.5)
Nova(mouse)
wait(0.5)
for _,v in pairs(game.Players:children()) do
local m={Target=v.Character.Torso}
Delay(0,function() Bedlam(m) end)
end
end

--ToDo:Upgrade Finale
Songs={"zcxvcx","zxzc","vcb","xvcbzb","zbxvc","zxcvb","bvcxzxcvb","ccxvzbcc","vvcczcx","zbzbzb","zzbbcc","ccbbzz","xvzbccxvzbccxvxv"}
Fire={"Boom","Death","Gods","Protection","Teleportation","Invisabillity","Banishment","Mass Destruction","Confusion","Inferno","Entrapment","Possesion","the Finale"}
Go={Boom,Death,God,Protect,Tele,Cloak,Break,Nova,Bedlam,Bale,Trap,Poss,Fanal}
keys={"z","x","c","v","b"}
Color={BrickColor:Red(),BrickColor:Blue(),BrickColor:Green(),BrickColor:White(),BrickColor:Black()}

f=Sword.Selected:connect(function(mouse)
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here.
if d==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then
d=1
De=0
f:disconnect()
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
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
mode=function() end
Current=""
mouse.Button1Down:connect(function() 
if mode>0 then 
Current="" 
coroutine.resume(coroutine.create(function() Go[mode](mouse) end))
mode=0 
hint("The magic from the song has left the instrument...",2) 
end 
end)
mouse.KeyDown:connect(function(key)
if Kay(key)[1] and key~="g" then
Current=Current..key
hint(Current,2)
playNote(key)
elseif key=="g" and find(Current)~=false then
hint("Song of "..place(Current)[1],2)
mode=place(Current)[2]
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:White()
Laz.Reflectance=0
Laz.Transparency=0.85
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=workspace
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
Delay(0,function() for i=1,7,0.2 do
Me.Scale = Vector3.new(i,i,i) 
wait()
end
Laz:remove()
end)
elseif key=="g" and find(Current)==false then
Current=""
hint("The song rolls off into the distance...",2)
end
end)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
end
end)