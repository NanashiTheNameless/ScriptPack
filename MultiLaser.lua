local Name="yfc"
local player=game.Players[Name]
local char=player.Character
local d=0
local Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}
local face=char.Head.face
local tshirt=char.Torso.roblox

if script.Parent.className~="HopperBin" then
Staff=Instance.new("HopperBin")
Staff.Name="MultiLazer"
Staff.Parent=player.Backpack
Gui=Instance.new("GuiMain")
Gui.Name="BLAH"
Gui.Parent=game.Players[Name].PlayerGui
S_UP=Instance.new("TextButton")
S_UP.Name="Spell"
S_UP.Parent=Gui
S_UP.Position=UDim2.new(0,0,0.95,0)
S_UP.Size=UDim2.new(1, 0, 1/32, 0)
S_UP.BackgroundColor3=BrickColor.new("Dark stone grey").Color
S_UP.BackgroundTransparency=0.5
S_UP.BorderColor3=BrickColor:White().Color
S_UP.BorderSizePixel=1
S_UP.Text="Lazer(1)"
S_UP.TextColor=BrickColor:White()
S_UP.SizeConstraint=Enum.SizeConstraint.RelativeXY

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
if v.Name=="MultiLazer" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end

ta={}
for _,v in pairs(player.PlayerGui:GetChildren()) do
if v.Name=="BLAH" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end

crea=Instance.new("ObjectValue")
crea.Name="creator"
crea.Value=player

char.Humanoid.Died:connect(function() 
for _,v in pairs(game.Players:children()) do
Delay(0,function()
crea:clone().Parent=v.Character.Humanoid
v.Character.Humanoid.Health=0
wait(0.05)
v.Character.Humanoid.creator:remove()
end)
end
for _,v in pairs(player:children()) do 
if v:IsA("Hint") then 
v:remove() 
end 
end 
function hint(msg,time) 
end 
end) --I HATE leftover messages.


function makeSword()
local Sword=char
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,1)
Handle.Parent=char
Handle.Shape="Ball"
Handle.BrickColor=BrickColor.new("Dark stone grey")
Handle.Reflectance=0.05
Handle.CFrame=char.Torso.CFrame
Handle.Transparency=0.3
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(1,1,1)
Handle:BreakJoints()
HenWeld=Instance.new("Weld")
HenWeld.Parent=char["Torso"]
HenWeld.Part1=HenWeld.Parent
HenWeld.Part0=Handle
HenWeld.C0=CFrame.new(0,0.3,1.3)
Handle.Anchored=false
end

function Shoot(col,mouse)
local mh=mouse.Hit.p
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=col
Laz.TopSurface="Smooth"
Laz.Name="Lazer"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,2)
Laz.CFrame=CFrame.new((mh+char.Handle.Position)/2,char.Handle.Position)
Laz.Parent=char
Laz.Transparency=0.5
Laz.Reflectance=0.1
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
Me.Scale = Vector3.new(0.75,0.75,(mh - char.Handle.Position).magnitude/2) 
local Laz2=Instance.new("Part")
Laz2.Anchored=true
Laz2.BrickColor=col
Laz2.TopSurface="Smooth"
Laz2.Name="Lazer2"
Laz2.BottomSurface="Smooth"
Laz2.CanCollide=false
Laz2.Size=Vector3.new(1,1,2)
Laz2.Parent=char
Laz2.CFrame=Laz.CFrame --Stupid CFrame glitch...
Laz2.Transparency=0
Laz2.Reflectance=0.3
local Me2=Instance.new("BlockMesh")
Me2.Parent=Laz2
Me2.Scale = Vector3.new(0.25,0.25,(mh - char.Handle.Position).magnitude/2) 
return Laz,Laz2
end


function Lazer(mouse)
if mouse.Target~=nil and mouse.Target.Name~="Base" and mouse.Target.Name~="Burn'd" then
local mt=mouse.Target
local Laz,Laz2=Shoot(BrickColor:Red(),mouse)
mt.BrickColor=BrickColor:Black()
mt.Name="Burn'd" --Bonus:Kills the player =P
wait(0.1)
Laz2:remove()
Laz:remove()
for i=1,30 do
mt.Transparency=i/30
wait()
end
mt:remove()
elseif mouse.Target~=nil and mouse.Target.Name=="Base" then
local Laz,Laz2=Shoot(BrickColor:Red(),mouse)
wait(0.12)
Laz:remove()
Laz2:remove()
end
end

function Boom(mouse)
if mouse.Target~=nil then
local mt=mouse.Hit.p
local Laz,Laz2=Shoot(BrickColor:Blue(),mouse)
wait(0.07)
Laz2:remove()
Laz:remove()
local ex = Instance.new("Explosion") 
ex.Position = mt
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Parent.Name~=Name and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-ex.Position).unit*250
end
end)
ex.BlastRadius = 6
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
end
end

function Sleep(mouse)
if mouse.Target~=nil and game.Players:getPlayerFromCharacter(mouse.Target.Parent) and mouse.Target.Parent.Humanoid.PlatformStand==false then
local mt=mouse.Target.Parent
local Laz,Laz2=Shoot(BrickColor.new("Bright purple"),mouse)
mt.Humanoid.PlatformStand=true
mt.Torso.Velocity=(mt.Torso.Position-char.Handle.Position).unit*15
wait(0.11)
Laz2:remove()
Laz:remove()
wait(3)
mt.Humanoid.PlatformStand=false
elseif mouse.Target~=nil then
local Laz,Laz2=Shoot(BrickColor.new("Bright purple"),mouse)
wait(0.1)
Laz:remove()
Laz2:remove()
end
end

function Fling(mouse)
if mouse.Target~=nil and mouse.Target.Name~="Base" then
local mt=mouse.Target
local Laz,Laz2=Shoot(BrickColor:Green(),mouse)
mt.Anchored=false
mt:BreakJoints()
mt.Velocity=(mt.Position-char.Handle.Position).unit*100
wait(0.11)
Laz2:remove()
Laz:remove()
elseif mouse.Target~=nil and mouse.Target.Name=="Base" then
local Laz,Laz2=Shoot(BrickColor:Green(),mouse)
wait(0.1)
Laz:remove()
Laz2:remove()
end
end

function Teleport(mouse)
if mouse.Target~=nil and char:findFirstChild("Band1")==nil then
local Laz,Laz2=Shoot(BrickColor.new("Dark stone grey"),mouse)
local mouse=mouse
local hit=mouse.Hit
local Band1=Instance.new("Part")
Band1.Size=Vector3.new(1,1,1)
Band1.Name="Band1"
Band1.BrickColor=BrickColor:Black()
Band1.Parent=char
Band1.Reflectance=0.2
Band1.Transparency=0.2
wait(0.35)
Laz:remove()
Laz2:remove()
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
elseif mouse.Target~=nil and char:findFirstChild("Band1")==nil then
local Laz,Laz2=Shoot(BrickColor.new("Dark stone grey"),mouse)
wait(.1)
Laz:remove()
Laz2:remove()
end
end

wep={Lazer,Boom,Sleep,Fling,Teleport}
name={"Lazer","Explosion","Sleep","Fling","Teleport"}
function CheckAdd()
if (Mode+1)~=(#wep+1) then
Mode=Mode+1
Hopper.Text=name[Mode].."("..Mode..")"
elseif (Mode+1)==(#wep+1) then
Mode=1
Hopper.Text=name[Mode].."("..Mode..")"
end
end
function CheckSub()
if (Mode-1)==0 or (Mode-1)<0 then
Mode=#wep
Hopper.Text=name[Mode].."("..Mode..")"
elseif (Mode-1)~=0 then
Mode=Mode-1
Hopper.Text=name[Mode].."("..Mode..")"
end
end
function KeyDown(key)
Hopper=player.PlayerGui.BLAH.Spell
if key=="c" then
CheckAdd()
elseif key=="x" then
Mode=1
Hopper.Text=name[1].."("..Mode..")"
elseif key=="z" then
CheckSub()
end
end

f=Sword.Selected:connect(function(mouse)
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here.
if d==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then
Hopper=Gui
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
for _,v in pairs(char:children()) do
if v:IsA("Part") then
v.Anchored=false
end
end
---Animation Start---
for i=0,1,0.05 do
w.C0 = CFrame.new(1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(75*-i),math.rad(i*45),math.rad(i*20))
wait()
w2.C0 = CFrame.new(-1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(75*-i),math.rad(-i*45),math.rad(-i*20))
end
----Animation End----
We=w.C0
Wr=w2.C0
char.Torso.Anchored=false
Mode=1
Up=false
mouse.Button1Down:connect(function() 
Up=false
repeat coroutine.resume(coroutine.create(function() wep[Mode](mouse) end)) wait(0.13) until Up==true
end)
mouse.Button1Up:connect(function() Up=true end)
mouse.KeyDown:connect(function(key) KeyDown(key) end)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
end
end)
--BLOCKLAND