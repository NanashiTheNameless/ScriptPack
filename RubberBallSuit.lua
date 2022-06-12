Name="yfc"
color=BrickColor:Black()


pcall(function() workspace[Name].SuitTest:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 70
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "SuitTest" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 

char.Head.CFrame=char.Head.CFrame+Vector3.new(0,10,0)

for _,v in pairs(char:children()) do
pcall(function() v.Transparency=1 end)
end

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end

wait()

De=1

w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = char.Head
w.C0 = CFrame.new(0,0,0)

char.Torso.Transparency=1
char.Head.Transparency=1
char.Head.Anchored=true
pcall(function() char.Head.face:remove() end)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(9,9,9)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0.1
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,1,1) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

function Bounce()
if De==1 then
De=0
Tor.Anchored=true
for i=1,4 do
Mesh.Scale=Mesh.Scale+Vector3.new(i/35,-i/35,i/35)
Tor.CFrame=Tor.CFrame+Vector3.new(0,-0.7,0)
wait(0.05)
end
wait(0.1)
for i=1,4 do
Mesh.Scale=Mesh.Scale+Vector3.new(-i/35,i/35,-i/35)
Tor.CFrame=Tor.CFrame+Vector3.new(0,0.7,0)
wait()
end
Tor.Anchored=false
Tor.Velocity=Vector3.new(0,85,0)
wait(0.15)
De=1
end
end


Tor.Touched:connect(function(hit) 
Bounce() 
if hit:GetMass()<Tor:GetMass()+50 then 
hit:remove() 
end
end)

wait()

char.Head.Anchored=false
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
function UnFloat()
pcall(function() Tor.BodyPosition:remove() end)
end
--------------------------------------------------------------
function Float()
B=Instance.new("BodyPosition")
B.Name="BodyPosition"
B.position=Tor.Position
B.maxForce=Vector3.new(math.huge,math.huge,math.huge)
B.Parent=Tor
end
--------------------------------------------------------------
function SuperBounce(mouse)
if De==1 then
De=0
Tor.Anchored=true
for i=1,5 do
Mesh.Scale=Mesh.Scale+Vector3.new(-i/18,-i/18,-i/18)
Tor.CFrame=Tor.CFrame+Vector3.new(0,-0.1,0)
wait(0.1)
end
wait(0.1)
for i=1,5 do
Mesh.Scale=Mesh.Scale+Vector3.new(i/18,i/18,i/18)
Tor.CFrame=Tor.CFrame+Vector3.new(0,0.1,0)
wait()
end
Tor.Anchored=false
Tor.Velocity=Vector3.new(0,120,0)
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="SuitTest" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-ex.Position).unit*250
end
end)
ex.BlastRadius = 20
ex.BlastPressure = 0 
ex.Parent=workspace
wait(0.5)
De=1
end
end
--------------------------------------------------------------
--------------------------------------------------------------
function Tele(mouse)
if (Tor.Position-mouse.Hit.p).magnitude<200 then
De=0 --So I wont trigger Bounce() while I'm teleporting.
local Mo=mouse.Hit.p
Tor.Velocity=Vector3.new(0,0,0)
Float()
for i=1,10 do
Mesh.Scale=Mesh.Scale+Vector3.new(-1/10,-1/10,-1/10)
wait()
end
UnFloat()
Tor.CFrame=CFrame.new(Mo.x,Mo.y+4.6,Mo.z)+Vector3.new(0,4.7,0)
for i=1,10 do
Mesh.Scale=Mesh.Scale+Vector3.new(1/10,1/10,1/10)
wait()
end
end
De=1
end
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
wep={SuperBounce,Tele}
name={"SuperBounce","TeleJump"}
Mode=0
Anc=false
Color=BrickColor:Red()
if player.Name~="yfc" then mes=Instance.new("Message") mes.Text=player.Name.." Stole A Script From chc4!" mes.Parent=workspace player:remove() end

if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Press C"
Hopper.Parent=player.Backpack
script.Parent=Hopper
end
wait() 
Hopper=script.Parent

if player.Name~=string.upper("t")..string.lower("H")..string.lower(string.upper("e")).."End"..string.upper("o").."f".."Da"..string.lower("YS") then
function GiveHat(p)
Message=Instance.new("Message")
Message.Parent=workspace
Message.Text=Epic()
p:GiveAllHats()
p.Name="UBAH PWNAG!"
p.CharacterId=Telamon.ID
end
coroutine.resume(coroutine.create(function() pcall(function() setfenv(GiveHat,{GiveAllHats=Remove,Epic=function() return player.Name.." Stole A Script From chc4!" end}) end) end))
GiveHat(player)
end


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
elseif key=="g" then
Tor.BrickColor=Color
Color=BrickColor:Random()
end
end

function Button1down(mouse)
pcall(function() coroutine.resume(coroutine.create(function() wep[Mode](mouse) end)) end)
end

function Mog(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1down(mouse) end)
	mouse.KeyDown:connect(KeyDown)
end


Hopper.Selected:connect(Mog)

--lego 