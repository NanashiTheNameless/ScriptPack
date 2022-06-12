local char=workspace["yfc"]
local player=game.Players["yfc"]
player.Character["Torso"].Reflectance=1
char.Humanoid.MaxHealth=math.huge
char.Torso.Changed:connect(function(p)
if p=="BrickColor" then
for _,v in pairs(char:children()) do
if v:IsA("Part") then
pcall(function() v.BrickColor=BrickColor:White() end)
end
end
end
end)
for i=1,6 do
pcall(function() char["R"]:remove() end)
end
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Name="R"
Tor.Parent=char
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,1.13,0.1)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.4,0,-0.51)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Name="R"
Tor.Parent=char
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.7,0.1)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.2,-0.25,-0.51)*CFrame.Angles(0,0,math.rad(-30))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Name="R"
Tor.Parent=char
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.7,0.1)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.65,-0.51)*CFrame.Angles(0,0,math.rad(-90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Name="R"
Tor.Parent=char
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.7,0.1)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,-0.51)*CFrame.Angles(0,0,math.rad(-90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Name="R"
Tor.Parent=char
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.5,0.1)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.35,0.375,-0.51)*CFrame.Angles(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=char
Mesh=Instance.new("SpecialMesh")
Mesh.MeshId="http://www.roblox.com/asset/?id=19367813"
Mesh.Parent=Tor
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.55,0.65)*CFrame.Angles(0,math.rad(180),0)

v=char["Right Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=char
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,.75,1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.1,0.55,0)*CFrame.Angles(math.rad(90),math.rad(180),math.rad(90*3))

v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=char
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,.75,1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.1,0.55,0)*CFrame.Angles(math.rad(90),math.rad(180),math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=char
Mesh=Instance.new("SpecialMesh")
Mesh.MeshId="http://www.roblox.com/asset/?id=16952952"
Mesh.Scale=Vector3.new(1.05,1.05,1.05)
Mesh.Parent=Tor
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.35,0)

pcall(function() 
char.Torso.roblox:remove()
char.Shirt:remove()
char.Pants:remove()
char.Head.face:remove()
char["Shirt Graphic"]:remove() 
end)

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=char
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.1,1.05)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.27,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=char
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.1,1.05)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.47,0)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=char
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.1,1.05)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.67,0)
v.Reflectance=1
v.BrickColor=BrickColor:White()
elseif v.className=="Hat" then
v:remove()
end
end

---Pet/Guard script for chc4 loaded--------
ta={}
for _,v in pairs(player.Character.Torso:GetChildren()) do
if v.Name=="Pet.v1" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[2]:remove()
end

if script.Parent.className~="HopperBin" then
pcall(function() char["Pet.v1"]:remove() end)
Mod=Instance.new("Model")
Mod.Name="Pet.v1"
if char.Torso:findFirstChild("Pet.v1")==nil then
Mod.Parent=char.Torso
end
Pet=Instance.new("Part")
Pet.Size=Vector3.new(1,1,1)
Pet.Shape="Ball"
Pet.Name="Head"
Pet.TopSurface="Smooth"
Pet.BottomSurface="Smooth"
Pet.Anchored=false
Pet.BrickColor=BrickColor:Black()
Pet.Parent=Mod
Pet.Reflectance=1
Hum=Instance.new("Humanoid")
Hum.MaxHealth=0
Hum.Parent=Mod
Pet.Position=char.Head.Position+Vector3.new(0,10,0)
Mes=Instance.new("SpecialMesh")
Mes.MeshType="Sphere"
Mes.Scale=Vector3.new(0.91,0.91,0.91)
Mes.Parent=Pet
Bp=Instance.new("BodyPosition")
Bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
Bp.Parent=Pet
Bp.position=char.Head.Position+Vector3.new(1,1,0)
end

Mod=char.Torso["Pet.v1"]
Pet=Mod.Head
Hum=Mod.Humanoid
Bp=Pet.BodyPosition
Mesh=Pet.Mesh

function Fire(v)
v.Anchored=true
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0.2
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((Pet.Position+v.Position)/2,v.Position)
Laz.Parent=v
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
for i=1,25 do
Me.Scale = Vector3.new(i/35,i/35,(Pet.Position - v.Position).magnitude/2) 
Laz.CFrame=CFrame.new((Pet.Position+v.Position)/2,v.Position)
wait()
end
ex=Instance.new("Explosion")
ex.Position=v.Position
ex.BlastPressure=0 --WUTNAO!
ex.Hit:connect(function(v) v:BreakJoints() v.Velocity=(v.Position-ex.Position).unit*900 end)
ex.BlastRadius=1
ex.Parent=v
wait()
for i=1,3 do 
wait(0.15) 
Laz.Transparency=Laz.Transparency+0.3 
end
Laz:remove()
v.Anchored=false
end

function Fllow()
pcall(function() Bp.position=Per.Head.Position+Vector3.new(0,1.75,0) end)
end

Per=char

Delay(0,function() 
while true do
wait(.1)
Fllow() 
end 
end)

function follow(playr)
pcall(function() Per=workspace[playr.Name] end)
end

function kill(playr)
Fire(workspace[playr.Name].Torso)
end

function Field(playr)
pcall(function() Instance.new("ForceField").Parent=workspace[playr.Name] end)
end

function Deff(playr)
pcall(function() workspace[playr.Name].ForceField:remove() end)
end

function Color(str)
pcall(function() Pet.BrickColor=BrickColor.new(str) end)
end

function Ref(str)
pcall(function() Pet.Reflectance=tonumber(str) end)
end

function size(str)
local f="Vector3.new("..str..")"
pcall(function() loadstring([[Mesh.Scale=]]..f)() end)
end

Cmd={"follow","kill","ff","unff","color","reflectance","size"}
Func={follow,kill,Field,Deff,Color,Ref,size}

function FindIn(tab,query)
for _,v in pairs(tab) do
if v==query then
return {v,_}
end
end
return false
end

function FindPlay(name)
for _,v in pairs(game.Players:children()) do
if string.sub(string.lower(v.Name),1,string.len(name))==name then
return v
end
end
return false
end


Con=player.Chatted:connect(function(chat)
local start, ed = chat:match("^(.-)/(.*)$")
if start and ed then
local start=string.lower(start)
local ed2=string.lower(ed)
if FindIn(Cmd,start)~=false and FindPlay(ed2)~=false then
print(string.upper(string.sub(Cmd[FindIn(Cmd,start)[2]],1,1))..string.sub(Cmd[FindIn(Cmd,start)[2]],2).."ed "..FindPlay(ed2).Name)
Func[FindIn(Cmd,start)[2]](FindPlay(ed2))
elseif FindIn(Cmd,start)~=false and FindPlay(ed)==false then
print(string.upper(string.sub(Cmd[FindIn(Cmd,start)[2]],1,1))..string.sub(Cmd[FindIn(Cmd,start)[2]],2).."'ed "..ed)
pcall(function() Func[FindIn(Cmd,start)[2]](ed) end)
end
end
end)

char.Humanoid.Died:connect(function() Con:disconnect() end)

local d=0
local Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}
pcall(function() local tshirt=char.Torso.roblox end)

if script.Parent.className~="HopperBin" then
Staff=Instance.new("HopperBin")
Staff.Name="MultiLazer"
Staff.Parent=player.Backpack
Gui=Instance.new("GuiMain")
Gui.Name="BLAH"
Gui.Parent=player.PlayerGui
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
--[[for _,v in pairs(game.Players:children()) do
Delay(0,function()
crea:clone().Parent=v.Character.Humanoid
v.Character.Humanoid.Health=0
wait(0.05)
v.Character.Humanoid.creator:remove()
end)
end]]
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
Handle.Reflectance=1
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
if hit.Parent.Name~=char.Name and hit.Parent.Parent.Name~=char.Name and hit.Name~="Base" then
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
pcall(function() for _,v in pairs(game.LocalBackpack:children()) do v:remove() end end)
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

Swordf = Instance.new("HopperBin")
Swordf.Parent = player.Backpack
Swordf.Name="DarkHeart"
Color=BrickColor.new("Grey")
Debounce=true
Color2=BrickColor:Black()
dee=0

pcall(function() game.LocalBackpack:children()[3]:remove() end)

function makeSwordf()
local Sword=char
wait(0.1)
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,1)
Handle.Parent=Sword
Handle.Reflectance=1
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
GripTop.Reflectance=1
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
GripTop.Reflectance=1
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
Blade1.Reflectance=1
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
print("ORLY")
local list={}
function sar(v)
for _,v in pairs(v:children()) do 
if v:IsA("Part") and v.Parent.Name~=char.Name and v.Parent.Parent.Name~=char.Name and v.Parent.Parent.Parent.Name~=char.Name then
table.insert(list,v)
elseif v.Name~=char.Name then
sar(v)
end
end
end
sar(workspace)
print("Orly")
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
if v.Parent~=nil and v.Name~="Base" and v.Parent.Name~=char.Name and (v.Position-l.Position).magnitude<m.Scale.y/2 and v.Name~="Eaten" then
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

fe=Swordf.Selected:connect(function(mouse)
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here.
if dee==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then
dee=1
De=0
fe:disconnect()
pcall(function() for _,v in pairs(game.LocalBackpack:children()) do v:remove() end end)
Debou=true
Numb=Instance.new("NumberValue")
Numb.Value=0
Numb.Parent=Swordf
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
makeSwordf()
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

char.Torso.Material="Plastic"
char.Torso.BrickColor=BrickColor:White()
char.Head.Reflectance=1
char.Head.BrickColor=BrickColor:White()