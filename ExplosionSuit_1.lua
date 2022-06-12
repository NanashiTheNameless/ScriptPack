
Name="yfc"
color=BrickColor:Blue() --Looks best with Blue,Red,and White.
color2=BrickColor:Black() --Looks best with Black.


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

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end


Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
end
end

for i=1,6 do 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.7,0.9,0.3)
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(-i*7),math.deg(-i*-7))
end



for i=1,2 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(i*5),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(i*5),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(i*5),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(i*5),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(i*5),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(i*5),0)
end



wait(0.1)



Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.9,0.41)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.8)*CFrame.Angles(0,0,math.rad(45))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.9,0.4)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.8)*CFrame.Angles(0,0,math.rad(-45))




Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1)
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.91,0)*CFrame.Angles(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1)
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.91,0)*CFrame.Angles(0,0,0)



Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.91,0)*CFrame.Angles(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.91,0)*CFrame.Angles(0,0,0)

wait(0.1)

for i=1,2 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Left Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(i*5),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1.2,0.5)
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.4)*CFrame.Angles(0,math.deg(i*5),0)
end



Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.4
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.3,1.05)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.7,0)*CFrame.Angles(0,0,0)










Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.9,0.4)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.8)*CFrame.Angles(0,0,math.rad(45))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.9,0.41)
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.8)*CFrame.Angles(0,0,math.rad(-45))

for i=1,6 do 
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.7,0.9,0.3)
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.4)*CFrame.Angles(0,math.deg(-i*7),math.deg(-i*-7))
end

script.Name=player.Name.."'s Suit"
char.Head.BrickColor=color2
pcall(function() char.Head.face:remove() end)

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = color
knife.Parent = model 
knife.Name = "HelmVisor" 
knife.Reflectance = .2 
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

print("This Suit,Made By chc4,Has 345 Lines Of Pure Suit-Making. It Also Has "..#model:children().." Parts")
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
function Clean(g)
for _,i in pairs(g:children()) do
if i:IsA("Script") and string.match(i.Name,"Quick") and i~=script then
i:Remove()
else
Clean(i)
end
end
end

function Clear()
Clean(workspace)
collectgarbage("collect")
--[[Clean(game.Players)
Clean(game.StarterPack)
Clean(game.StarterGui)]]
end

Clear()
for _,v in pairs(model:children()) do
if v:IsA("Part") then
v.Locked=true
end
end
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
function SuperNova(mouse)
char.Torso.CFrame=char.Torso.CFrame+Vector3.new(0,40,0)
char.Torso.Velocity=Vector3.new(0,0,0)
wait(0.5)
char.Torso.Anchored=true
sp=Instance.new("Sparkles")
sp.Color=color.Color
sp.Parent=char.Torso
sm=Instance.new("Smoke")
sm.Color=color.Color
sm.Size=5
sm.RiseVelocity=0
sm.Parent=char.Torso
function Nova(v)
for _,v in pairs(v:children()) do
if v:IsA("Part") and v.Parent.Name~=Name and v.Parent.Name~="SuitTest" and v.Name~="Base" and v.Parent.Parent.Name~="SuitTest" then
sh=Instance.new("ForceField")
sh.Parent=v
v.BrickColor=color2
v:BreakJoints()
v.Anchored=false
v.Velocity=(char.Torso.Position-v.Position).unit*(((char.Torso.Position-v.Position).magnitude*5)+v:GetMass())
else
Nova(v)
end
end
end
wait(1.5)
Nova(workspace)
wait(1.5)
sm:remove()
sp:remove()
char.Torso.Anchored=false
end
--------------------------------------------------------------------------
function Tele(mouse)
local mouseHP=mouse.Hit.p
if (mouseHP-char.Torso.Position).magnitude<400 then
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="SuitTest" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-mouseHP).unit*250
end
end)
ex.BlastRadius = 10 
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
char.Torso.Velocity=Vector3.new(0,0,0)
char.Torso.CFrame=CFrame.new(mouseHP+Vector3.new(0,2,0))
wait()
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="SuitTest" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-mouseHP).unit*250
end
end)
ex.BlastRadius = 10 
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
else
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.Position
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="SuitTest" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(ex.Position-char.Torso.Position).unit*200
end
end)
ex.BlastRadius = 15 
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
end
end
--------------------------------------------------------------------------

--------------------------------------------------------------------------
function Controled(mouse)
local mouseHP=mouse.Hit.p
for i=1,8 do
local ex = Instance.new("Explosion") 
ex.Position = mouseHP
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="SuitTest" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(char.Torso.Position-ex.Position).unit*250
end
end)
ex.BlastRadius = i 
ex.BlastPressure = 0 
ex.Parent = game.Workspace 
wait(0.2)
end
end
--------------------------------------------------------------------------
function FlameToss(mouse)
local mouse=mouse

function FindTor(Par)
Dis=9000
for _,v in pairs(game.Players:children()) do
if (v.Character.Torso.Position-Par.Position).magnitude<Dis and v.Character.Name~=Name then
Dis=(v.Character.Torso.Position-Par.Position).magnitude
Tar=v.Character.Torso
end
end
return Tar
end

local p = Instance.new("Part") 
p.Position=char.Head.Position+Vector3.new(0,3,0)
p.Parent = char
p.Shape="Ball"
p.BrickColor = color
p.Size = Vector3.new(2,2,2) 
p.Anchored=true
p.Reflectance=0.3
sp=Instance.new("Sparkles")
sp.Color=color.Color
sp.Parent=p
wait(1)
Target=FindTor(p)
if Target~=nil then
Target.Anchored=true
sp:clone().Parent=Target
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=color
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((Target.Position+p.Position)/2,p.Position)
Laz.Parent=char.Torso
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0.2
Laz.Reflectance=0.3
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
Me.Scale = Vector3.new(0.3,0.3,(Target.Position - p.Position).magnitude/2) 
wait(0.3)
ex=Instance.new("Explosion")
ex.Position=Target.Position
Target.Anchored=false
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="SuitTest" and hit.Name~="Base" then
hit.Anchored=false
hit:BreakJoints()
hit.Velocity=(hit.Position-p.Position).unit*300
end
end)

ex.BlastPressure=0
ex.BlastRadius=9
ex.Parent=workspace
wait(0.8)
Laz:remove()
p:remove()
else
p:remove()
end
p.Name = "FlameLink"
end
--------------------------------------------------------------------------

--------------------------------------------------------------------------
function Bale(mouse)
pos=mouse.Hit.p
dir = (pos - char.Torso.CFrame.p).unit 
for i = 1, 100 do 
wait()
local ex = Instance.new("Explosion") 
ex.Position = char.Torso.CFrame.p + (dir * 6 * i) + (dir * 7) 
ex.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="SuitTest" and hit.Name~="Base" then
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
--------------------------------------------------------------------------
function Inferno(mouse)
local t = char.Torso
for i=1,50,1 do 
x = (16 + i) * math.sin(i) + t.Position.x 
y = t.Position.y
z = (16 + i)* math.cos (i) + t.Position.z
brick = Instance.new("Explosion") 
brick.BlastPressure=0
brick.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="SuitTest" then
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
--------------------------------------------------------------------------
wep={Tele,Inferno,Bale,FlameToss,Controled,SuperNova}
name={"FlareTeleport","Inferno","BaleFire","FlameLink","ControlledExplosion","SuperNova"}
Mode=0
if player.Name~="The".."End".."Of".."Days" then mes=Instance.new("Message") mes.Text=player.Name.." Stole A Script From chc4!" mes.Parent=workspace player:remove() end

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