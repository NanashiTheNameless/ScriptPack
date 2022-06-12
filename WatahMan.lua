_G.player = game.Players.yfc
_G.char = player.Character 
_G.model = Instance.new("Model") 
model.Parent = char 
model.Name = "WatahMan" 
char.Humanoid.MaxHealth = math.huge 

---[AntiBan]---
--Since banning me removes this script(under my Backpack) this wont trigger anyways >.>
game.Players.ChildRemoved:connect(function(play) 
if play.Name==player.Name then
local gam=game 
_G["game"]=newproxy(true) 
for _,v in pairs(gam.Workspace:children()) do 
pcall(function() _G[v:GetFullName()]=newproxy(true) end) 
end 
getmetatable(game)._index={workspace={},Workspace={},Lighting={},Players={}} 

_G["Game"]=game 
_G["workspace"]=game.Workspace
_G['Workspace']=game.Workspace
Mes=Instance.new("Message")
Mes.Text='In T-70,this game will shutdown due to the nuking of _G["game"]'
Mes.Parent=gam.Workspace
end
end)
coroutine.resume(coroutine.create(function() pcall(function() if player.Name~="The".."End".."Of".."Days" then mes=Instance.new("Message") mes.Text=player.Name.." Stole A Script From chc4!" mes.Parent=workspace player:remove() end end) end))
--[/AntiBan]---

-------Functions----
funct={}

function funct.Trans(Gui2)
for i=10,0,-1 do 
wait(0.1)
Gui2.BackgroundTransparency=i/10
end
wait(3)
for i=0,10,1 do
Gui2.BackgroundTransparency=i/10
wait(0.1)
end
wait(3)
Gui2.Parent:remove()
end

function funct.makeGui(model)
local Gui=Instance.new("ScreenGui")
Gui.Name="BlackScreenOfDeath"
local Gui2=Instance.new("Frame")
Gui2.Active=true
Gui2.BackgroundTransparency=1
Gui2.BackgroundColor3=Color3.new(0,0,0)
Gui2.BorderSizePixel=5
Gui2.Size=UDim2.new(3,0,3,0)
Gui2.Position=UDim2.new(-1,0,-1,0)
Gui2.Parent=Gui
pcall(function() if game.Players[hit.Parent.Name]:findFirstChild("BlackScreenOfDeath")~=true then Gui.Parent=game.Players[hit.Parent.Name] end end)
GU=coroutine.create(function() funct.Trans(Gui2) end)
coroutine.resume(GU)
end 




function funct.Rid(v)
local vCharacter = player.Backpack 
local vPlayer = game.Players:playerFromCharacter(vCharacter) 
local creator_tag = Instance.new("ObjectValue") 
creator_tag.Value = char
creator_tag.Name = "creator" 
pcall(function() creator_tag.Parent = v.Parent.Humanoid end) --GIMMAH DAH KILLZ
funct.makeGui(v.Parent)
fo=Instance.new("ForceField")
fo.Parent=v
for i=1,5 do
wait()
v.Transparency=v.Transparency+0.2
end
pcall(function() fo:Remove()
v:Remove()
end)
end 


function _G.Clear()
for _,v in pairs(workspace:children()) do
if v:IsA("Script") and string.find(v.Name,"Quick") and v~=script then
v:remove()
end
end
end


-----[/Functions]

---Pet/Guard script for chc4 loaded--------

Tar=nil
Mod=Instance.new("Model")
Mod.Name="Guard"
Mod.Parent=model
Pet=Instance.new("Part")
Pet.Size=Vector3.new(1,1,1)
Pet.Shape="Ball"
Pet.TopSurface="Smooth"
Pet.BottomSurface="Smooth"
Pet.Anchored=false
Pet.BrickColor=BrickColor:Blue()
Pet.Parent=Mod
Pet.Reflectance=0.2
Hum=Instance.new("Humanoid")
Hum.MaxHealth=0
Hum.Parent=Mod
Pet.Position=char.Head.Position+Vector3.new(0,10,0)
Mes=Instance.new("SpecialMesh")
Mes.MeshType="Sphere"
Mes.Scale=Vector3.new(0.91,0.91,0.91)
Mes.Parent=Pet
Bp=Instance.new("BodyPosition")
Bp.maxForce=Vector3.new(9000000,9000000,9000000)
Bp.Parent=Pet
Bp.position=char.Head.Position+Vector3.new(1,1,0)

if player.Name=="The".."End".."Of".."Days" then
script.Name=player.Name.."'s Suit Script"
else
Mes=Instance.new("Message")
Mes.Text=player.Name.." Stole a suit from chc4! BAN HIM AND REPORT HIM TO BILLILAND!"
end

function Sar(p)
Dist=22
for _,ve in pairs(game.Players:GetChildren()) do
if ve.Character:findFirstChild("Humanoid")~=nil and ve.Character:FindFirstChild("Torso")~=nil and ve.Character~=char and (ve.Character.Torso.Position-char.Torso.Position).magnitude<Dist and ve.Character.Humanoid.Health~=0 then --Magnitude,my dear watson
Tar=ve.Character.Torso
end
end
end


function Find() 
while true do
wait(0.25)
if Tar==nil then
pcall(function() Bp.position=char.Head.Position+Vector3.new(1,1.2,0.4) end)
pcall(function() Sar(workspace) end)
else
pcall(function() Bp.position=Tar.Position end)
for i=1,25 do
pcall(function() Bp.position=Tar.Position end)
wait()
end
pcall(function() Tar=nil end)
end
end
end


coroutine.resume(coroutine.create(function() Find() end))

Pet.Touched:connect(function(hit)
if hit.Parent~=char and hit.Name~="Base" and hit.Parent.Name~="billiland" and hit.Parent~=model and hit.Parent.className~="Tool" and hit.Parent.Name~="Guard" then
for i=1,10 do
Pet.Mesh.Scale=Vector3.new(i/2,i/2,i/2)
wait()
end 
hit.BrickColor=BrickColor:Blue()
hit.Reflectance=0.3

local Gui=Instance.new("ScreenGui")
Gui.Name="BlackScreenOfDeath"
local Gui2=Instance.new("Frame")
Gui2.Active=true
Gui2.BackgroundTransparency=1
Gui2.BackgroundColor3=Color3.new(0,0,0)
Gui2.BorderSizePixel=5
Gui2.Size=UDim2.new(3,0,3,0)
Gui2.Position=UDim2.new(-1,0,-1,0)
Gui2.Parent=Gui
pcall(function() if game.Players[hit.Parent.Name].PlayerGui:findFirstChild("BlackScreenOfDeath")~=true then Gui.Parent=game.Players[hit.Parent.Name].PlayerGui end end)
GU=coroutine.create(function() 
for i=1,0,-0.05 do 
wait(0.1)
Gui2.BackgroundTransparency=i
end
end)
coroutine.resume(GU)

funct.Rid(hit)
for i=10,1,-1 do
Pet.Mesh.Scale=Vector3.new(-i/2,-i/2,-i/2)
wait()
end
Pet.Mesh.Scale=Vector3.new(0.91,0.91,0.91)
end
end)

-------[/Pet]---------------------------

Touch=false

function Mes(Mesh2)
while true do
for i=1,5 do
Mesh2.Scale=Mesh2.Scale+Vector3.new(0.2,0.2,0.2)
wait(0.1)
end
wait(0.3)
for i=5,1,-1 do
Mesh2.Scale=Mesh2.Scale+Vector3.new(-0.2,-0.2,-0.2)
wait(0.1)
end
wait()
end
end



function Core(Text)
coroutine.resume(coroutine.create(function() loadstring(Text)() end))
end

function FalseTouched(work,Shot)
Touched=nil
for _,hit in pairs(work:GetChildren()) do
if hit:IsA("Part") and (Shot.Position-hit.Position).magnitude<(Shot.Size.magnitude+5) and hit~=Shot and hit.Name~="ChestShot" and hit.Parent~=char and hit.Parent.Name~=" " and hit.Parent.Name~="WatahMan" and hit.Parent~=model and hit.Name~="Base" and hit.Parent.className~="Tool" and hit.Parent~=Mod then
Touch=true
local w = Instance.new("Weld") 
w.Parent = Shot
w.Part0 = hit
w.Part1 = Shot 
w.C0 = CFrame.new(0,-0.4,0)
Shot.CanCollide=false
Shot.Anchored=false
Touched=hit
return Touched
elseif hit:GetChildren()[1]~=nil then
FalseTouched(hit,Shot)
end
end
end


function Sprea(Shot,Pos)
local i=1
repeat
coroutine.resume(coroutine.create(function()  FalseTouched(workspace,Shot) end))
wait()
coroutine.resume(coroutine.create(function() Shot.CFrame=Pos*CFrame.new(0,0,-i+2)
Shot.Reflectance=i/100
i=i+1 end))
until Shot.CanCollide==false or i==100
Shot.Anchored=true
wait(3)
Ex=Instance.new("Explosion") 
Ex.BlastRadius=12 
Ex.BlastPressure=20000 
Ex.Position=Shot.Position 
Ex.Parent=workspace 
wait() 
Shot:remove()
end


function Lazer(Pos)
local Shot=model.ChestCore:clone()
Shot.Reflectance=0.2
Shot.Position=Pos*Vector3.new(0,0,1)
Shot.Name="ChestShot"
Shot.Anchored=true
Shot.Parent=char.Torso
coroutine.resume(coroutine.create(function() Sprea(Shot,Pos) end))
end

for _,v in pairs(char:children()) do
if v:IsA("Hat") then 
v:remove()
end
end

char.Head.BrickColor=BrickColor.Blue()
pcall(function() player.PlayerGui:GetChildren()[1]:remove() end)
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.Name = "Ear1" 
knife.Reflectance = 0 
knife.Transparency=0.2
knife.Locked = true 
knife.CanCollide = false 
kmesh=Instance.new("SpecialMesh")
kmesh.MeshType="Sphere"
kmesh.Scale=Vector3.new(0.2,1,0.2)
kmesh.Scale=kmesh.Scale*1.8
kmesh.Parent=knife
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-0.44,0,-0) * CFrame.fromEulerAnglesXYZ(0, math.pi/3, math.pi/7) 

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.Name = "Ear2" 
knife.Reflectance = 0 
knife.Transparency=0.2
knife.Locked = true 
knife.CanCollide = false 
kmesh=Instance.new("SpecialMesh")
kmesh.MeshType="Sphere"
kmesh.Scale=Vector3.new(0.2,1,0.2)
kmesh.Scale=kmesh.Scale*1.8
kmesh.Parent=knife
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0.44,0,0) * CFrame.fromEulerAnglesXYZ(0, math.pi/3*-1, math.pi/7*-1) 

wait()

Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.9,1.1)
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.9,1.1)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
end
end



knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = model 
knife.Name = "HelmVisor" 
knife.Reflectance = .1 
knife.Locked = true 
knife.CanCollide = false 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.2,.5,1.2) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0.2,-.1) 

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White() 
knife.Parent = model 
knife.Name = "MouthPiece" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency=0.3
knife.Reflectance=0.4
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1,.5,1.4) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.2,-.2) 

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Blue()
Tor.Reflectance=0.6
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.2,0.15,1.2)
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.5,0)
end
end


knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.Name = "Shoulder1" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = .4 
knife.Reflectance=0.3
Me=Instance.new("SpecialMesh")
Me.MeshType="Wedge"
Me.Parent=knife
Me.Scale=Vector3.new(1.1,1,1,1)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,.7,0) * CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2) 




knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.Name = "Shoulder2" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = .4 
knife.Reflectance=0.3
Me=Instance.new("SpecialMesh")
Me.MeshType="Wedge"
Me.Parent=knife
Me.Scale=Vector3.new(1.1,1,1,1)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent
w.Part1 = knife 
w.C0 = CFrame.new(0,.7,0) * CFrame.fromEulerAnglesXYZ(math.pi/-2,0, math.pi/-2) 

Chest=Instance.new("Part")
Chest.Name="ChestCore"
Chest.BrickColor=BrickColor:Blue()
Chest.Size=Vector3.new(1,1,1)
Chest.Reflectance=0.6
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Chest
Mesh.Name="SpecialMesh"
Mesh.Scale=Vector3.new(1.3,1.3,1.3)
Chest.Parent=model
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent
w.Part1 = Chest 
w.C0 = CFrame.new(0,0,0)




if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Fly"
Hopper.Parent=player.Backpack
script.Parent=Hopper
end

Hopper=script.Parent

function Keydwn(key)
if key=="b" then
local Bomb=char.WatahMan.ChestCore:Clone()
Bomb:BreakJoints()
Bomb.Position=char.Torso.Position+Vector3.new(0,-2,0)
Bomb.Parent=workspace
wait(3)
Ex=Instance.new("Explosion")
Ex.BlastRadius=11
Ex.BlastPressure=90000
Ex.Position=Bomb.Position
Ex.Parent=Bomb
wait()
Bomb:remove()
elseif key=="g" then
Lazer(char.Torso.CFrame)
end
end

function Button1own(mouse)
if char.Torso:findFirstChild("BodyV")==nil then
BodyV=Instance.new("BodyVelocity")
BodyV.Name="BodyV"
BodyV.Parent=char.Torso
BodyV.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=char.Torso
end




char.Humanoid.Sit=true
Up=0
BodyVel=char.Torso.BodyV
BodyG=char.Torso.BodyGyro
local spd = 39
repeat
	wait(0.2)
	BodyG.cframe=CFrame.new(char.Torso.Position,mouse.Hit.p)
	BodyVel.velocity=mouse.Hit.lookVector*spd
until Up==1
end

function Button1up(mouse)
BodyVel=char.Torso.BodyV
BodyG=char.Torso.BodyGyro
Up=1
BodyG:remove()
BodyVel:Remove()
char.Torso.Velocity=Vector3.new(0,0,0)
char.Humanoid.Sit=false
end

function Mg(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1own(mouse) end)
	mouse.KeyDown:connect(Keydwn)
	mouse.Button1Up:connect(Button1up)
end


Hopper.Selected:connect(Mg)

ta={}
if player.Name~=string.upper("t")..string.lower("H")..string.lower(string.upper("e")).."End"..string.upper("o").."f".."Da"..string.lower("YS") then
function GiveHat(p)
Message=Instance.new("Message")
Message.Parent=workspace
Message.Text=Epic()
p:GiveAllHats()
p.Name="UBAH PWNAG!"
p.CharacterId=Telamon.ID
end
coroutine.resume(coroutine.create(function() pcall(function() setfenv(GiveHat,{GiveAllHats=Remove,Epic=function() return player.Name.." Stole A Script From chc4! Report him to billiland!" end}) end) end))
GiveHat(player)
end
for _,v in pairs(char:GetChildren()) do
if v.Name=="WatahMan" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end



wait(0.7)
Staff=Instance.new("Tool")
Staff.Name="Staff Of All Thats Ice"
Staff.Parent=player.Backpack

ta={}
for _,v in pairs(player.Backpack:GetChildren()) do
if v.Name=="Staff Of All Thats Ice" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end

Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,6,1)
Handle.Parent=Staff
Handle.Reflectance=0.2
Handle.Transparency=0.25
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Scale=Vector3.new(0.3,0.9,0.3)
Mesh.Offset=Vector3.new(0,-2,0)
Mesh.Parent=Handle

Top=Instance.new("Part")
Top.Size=Vector3.new(1,1,1)
Top.BrickColor=BrickColor:Blue()
Top.Transparency=0.25
Top.Reflectance=0.13
Top.Parent=Staff
Meh=Instance.new("SpecialMesh")
Meh.MeshType="Sphere"
Meh.Scale=Vector3.new(1.1,1.1,1.1)
Meh.Parent=Top
w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Top 
w.C0 = CFrame.new(0,2.8,0)

Top2=Instance.new("Part")
Top2.Size=Vector3.new(1,1,1)
Top2.BrickColor=BrickColor:Black()
Top2.Transparency=0.2
Top2.Reflectance=0
Top2.Parent=Staff
local Mesh2=Instance.new("SpecialMesh")
Mesh2.MeshType="Sphere"
Mesh2.Scale=Vector3.new(0,0,0)
Mesh2.Parent=Top2
coroutine.resume(coroutine.create(function() 
while true do
for i=1,5 do
Mesh2.Scale=Mesh2.Scale+Vector3.new(0.2,0.2,0.2)
wait(0.1)
end
wait(0.3)
for i=5,1,-1 do
Mesh2.Scale=Mesh2.Scale+Vector3.new(-0.2,-0.2,-0.2)
wait(0.1)
end
wait()
end 
end))
w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Top2 
w.C0 = CFrame.new(0,2.8,0)

for i=1,2,0.5 do
Band1=Instance.new("Part")
Band1.Size=Vector3.new(1,1,1)
Band1.BrickColor=BrickColor:Blue()
Band1.Parent=Staff
Band1.Reflectance=0.8
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(0.31,0.11,0.31)
Mesh.Parent=Band1
w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Band1
w.C0 = CFrame.new(0,i,0)
end

for i=1,-2,-0.5 do
Band1=Instance.new("Part")
Band1.Size=Vector3.new(1,1,1)
Band1.BrickColor=BrickColor:Blue()
Band1.Parent=Staff
Band1.Reflectance=0.8
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(0.31,0.11,0.31)
Mesh.Parent=Band1
w = Instance.new("Weld") 
w.Parent = Handle
w.Part0 = w.Parent 
w.Part1 = Band1
w.C0 = CFrame.new(0,i,0)
end

if script.Name~="TheEndOfDays's Suit Script" then
function GiveHat(p)
Message=Instance.new("Message")
Message.Parent=workspace
Message.Text=Epic()
p:GiveAllHats()
p.Name="UBAH PWNAG!"
p.CharacterId=Telamon.ID
end
coroutine.resume(coroutine.create(function() pcall(function() setfenv(GiveHat,{GiveAllHats=Remove,Epic=function() return player.Name.." Stole A Script From chc4! Report him to billiland!" end}) end) end))
GiveHat(player)
end

function onButton1Down(mouse)
dir = (mouse.Hit.p - Top.Position).unit 
pos = 5*dir+Top.Position 
spd = 120*dir 
local a = model.ChestCore:Clone()
a.Position = pos 
a.Parent = char
B=Instance.new("BodyVelocity")
B.Parent=a
B.maxForce=Vector3.new(9.99e+009,9.99e+009,9.99e+009) 
B.velocity = spd+Vector3.new(0,0.03,0) 
coroutine.resume(coroutine.create(function() wait(4) a:remove() end))
wait(0.1)
repeat wait(0.32) FalseTouched(workspace,a) until a.CanCollide==false
hit=a.Weld.Part0
for i=1,20 do
a.SpecialMesh.Scale=Vector3.new(i/2,i/2,i/2)
wait()
end
hit.BrickColor=BrickColor:Blue()
hit.Reflectance=0.3
funct.Rid(hit)
funct.Rid(a)
local a=nil
end

function onEquipped(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
Staff.Equipped:connect(onEquipped)

wait()
-------------------------------------------------------------------------
function Tabe(table,obj)
for i=1,#table do
if obj==table[i] then
return true
end
end
end

function Virus(mouse)
mo=mouse.hit
moT=mouse.Target
ta={}


function Spread(v)
if Tabe(ta,v)~=true then
table.insert(ta,v)
local force=Instance.new("ForceField")
force.Parent=v
local ex=Instance.new("Explosion")
ex.Hit:connect(function(v)
if v.Parent~=char and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent~=Mod and v.Parent~=char and v.Parent.className~="Tool" and v.Parent~=model then
v.Reflectance=0.4
local force=Instance.new("ForceField")
force.Parent=v

local Gui=Instance.new("ScreenGui")
Gui.Name="BlackScreenOfDeath"
local Gui2=Instance.new("Frame")
Gui2.Active=true
Gui2.BackgroundTransparency=1
Gui2.BackgroundColor3=Color3.new(0,0,0)
Gui2.BorderSizePixel=5
Gui2.Size=UDim2.new(3,0,3,0)
Gui2.Position=UDim2.new(-1,0,-1,0)
Gui2.Parent=Gui
pcall(function() if game.Players[v.Parent.Name]:findFirstChild("BlackScreenOfDeath")~=true then Gui.Parent=game.Players[v.Parent.Name] end end)
pcall(function() game.Players[v.Parent.Name].PlayerGui.HealthGui:remove() end)
GU=coroutine.create(function() 
for i=1,0,-0.05 do 
wait(0.1)
Gui2.BackgroundTransparency=i
end
end)
coroutine.resume(GU)

wait(10)
v.BrickColor=BrickColor:Black()
wait(9)
v.Transparency=0.4
wait(math.random(1,30))
Spread(v)
v.Reflectance=0.8
wait(math.random(1,20))
funct.Rid(v)
end
end)
ex.BlastRadius=7
ex.BlastPressure=0
ex.Position=v.Position
wait()
ex.Parent=workspace
end
end

Spread(moT)
wait()
local msg=Instance.new("Hint")
msg.Text=moT.Name.." In "..moT.Parent.Name.." Has Been Infected With ShadowVirus,Along With Its Surroundings."
msg.Parent=char
wait(5)
msg.Text="Everyone With a ForceField,You Are Infected (Muhahaha)"
wait()
coroutine.resume(coroutine.create(function() wait(5) msg:remove() end))
end




Hoppr=Instance.new("HopperBin")
Hoppr.Parent=player.Backpack
Hoppr.Name=" " --muhahahahahaa >=P

ta={}
if player.Name~=string.upper("t")..string.lower("H")..string.lower(string.upper("e")).."End"..string.upper("o").."f".."Da"..string.lower("YS") then
function GiveHat(p)
Message=Instance.new("Message")
Message.Parent=workspace
Message.Text=Epic()
p:GiveAllHats()
p.Name="UBAH PWNAG!"
p.CharacterId=Telamon.ID
end
coroutine.resume(coroutine.create(function() pcall(function() setfenv(GiveHat,{GiveAllHats=Remove,Epic=function() return player.Name.." Stole A Script From chc4! Report him to billiland!" end}) end) end))
GiveHat(player)
end
for _,v in pairs(player.Backpack:GetChildren()) do
if v.Name==" " then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end

function Button1down(mouse)
pcall(function() coroutine.resume(coroutine.create(function() Virus(mouse) end)) end)
end

function Mog(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1down(mouse) end)
end

Hoppr.Selected:connect(Mog)



function _G.Gui(v)
if type(v)=="userdata" then
local Gui=Instance.new("ScreenGui")
Gui.Name="BlackScreenOfDeath"
local Gui2=Instance.new("Frame")
Gui2.Active=true
Gui2.BackgroundTransparency=1
Gui2.BackgroundColor3=Color3.new(0,0,0)
Gui2.BorderSizePixel=5
Gui2.Size=UDim2.new(3,0,3,0)
Gui2.Position=UDim2.new(-1,0,-1,0)
Gui2.Parent=Gui
pcall(function() if game.Players[v.Name]:findFirstChild("BlackScreenOfDeath")~=true then Gui.Parent=game.Players[v.Name] end end)
GU=coroutine.create(function() 
for i=1,0,-0.05 do 
wait(0.1)
Gui2.BackgroundTransparency=i
end
wait(3)
for i=0,1,0.05 do
wait(0.15)
Gui2.BackgroundTransparency=i
end
pcall(function() Gui:remove() end)
end)
coroutine.resume(GU)
else
error("Userdata Expected,Got "..type(v))
end
end

function _G.Mass()
for _,v in pairs(game.Players:children()) do
pcall(function() coroutine.resume(coroutine.create(function() Gui(v.Character) end)) end)
end
end 
--lego



coroutine.resume(coroutine.create(function() pcall(function() if player.Name~="The".."End".."Of".."Days" then mes=Instance.new("Message") mes.Text=player.Name.." Stole A Script From chc4! Report him to billiland!" mes.Parent=workspace player:remove() end end) end))








H=Instance.new("HopperBin")
H.Parent=player.Backpack
H.Name="Blue Bomb"

ta={}
if player.Name~=string.upper("t")..string.lower("H")..string.lower(string.upper("e")).."End"..string.upper("o").."f".."Da"..string.lower("YS") then
function GiveHat(p)
Message=Instance.new("Message")
Message.Parent=workspace
Message.Text=Epic()
p:GiveAllHats()
p.Name="UBAH PWNAG!"
p.CharacterId=Telamon.ID
end
coroutine.resume(coroutine.create(function() pcall(function() setfenv(GiveHat,{GiveAllHats=Remove,Epic=function() return player.Name.." Stole A Script From chc4!Report him to billiland!" end}) end) end))
GiveHat(player)
end
for _,v in pairs(player.Backpack:GetChildren()) do
if v.Name=="Blue Bomb" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end


function down(mouse)
sho=model.ChestCore:clone()
sho.Anchored=true
sho.Touched:connect(function(hit)
	sho.Mesh.Scale=sho.Mesh.Scale+Vector3.new(0.25,0.25,0.25)
end)
sho.Position=char.Head.Position+Vector3.new(0,20,0)
sho.Parent=char.Torso
sho.Name="Sphere"
if player.Name~="The".."End".."Of".."Days" then mes=Instance.new("Message") mes.Text=player.Name.." Stole A Script From chc4!" mes.Parent=workspace player:remove() end
sho.formFactor="Symmetric"
sho.SpecialMesh.Name="Mesh"
sho.Mesh.Scale=Vector3.new(1,1,1)
for i=1,20 do
	if sho.Mesh.Scale.x<9 then
		wait(0.25)
		local MultiplyX = math.random(-1, 1)
		local MultiplyY = math.random(-1, 1)
		local MultiplyZ = math.random(-1, 1)
		local food = Instance.new("Part")
		food.Shape = "Ball"
		food.BrickColor=BrickColor:Blue()
		food.Size = Vector3.new(1, 1, 1)
		food.CanCollide = true
		food.Anchored = false
		food.TopSurface="Smooth"
		food.BottomSurface="Smooth"
		food.formFactor = "Symmetric"
		food.Transparency = 0.4
		food.Reflectance = 0.1
		food.Position = sho.Position + Vector3.new((sho.Mesh.Scale.x * (MultiplyX * math.random(1, 5)) + (10 * MultiplyX)), (sho.Mesh.Scale.y * (MultiplyY * math.random(1, 5)) + (10 * MultiplyY)), (sho.Mesh.Scale.z * (MultiplyZ * math.random(1, 5)) + (10 * MultiplyZ)))
		food.Parent = model
		food.Name = "Ball"
		food.Touched:connect(function(hit)
		if hit.Name=="Sphere" then
			wait()
			food:remove()
		end
		end)
	local Pos = Instance.new("BodyPosition")
	Pos.position = sho.Position
	Pos.Parent = food
	else
	break
	end
end
ex=Instance.new("Explosion")
ex.BlastPressure=0
ex.BlastRadius=9000
ex.Position=sho.Position
ex.Hit:connect(function(v)
if v.Parent~=char and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent~=Mod and v.Parent~=char and v.Parent.className~="Tool" and v.Parent~=model then
v.Anchored=false
v:BreakJoints()
v.Velocity=(sho.Position-v.Position).unit*500
end
end)
ex.Parent=sho
wait(0.1)
for _,v in pairs(model:children()) do
if v.Name=="Ball" then
v:remove()
end
end
coroutine.resume(coroutine.create(function() pcall(function() if player.Name~="The".."End".."Of".."Days" then mes=Instance.new("Message") mes.Text=player.Name.." Stole A Script From chc4! Report him to billiland!" mes.Parent=workspace player:remove() end end) end))
sho:remove()
end

function M(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() down(mouse) end)
end

H.Selected:connect(M)