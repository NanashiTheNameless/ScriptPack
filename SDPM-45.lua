Name="yfc"
player=game.Players[Name]
char=player.Character
Color=BrickColor:Black()
Color2=BrickColor:White()
de=0

if script.Parent.className~="Tool" then
Gun = Instance.new("Tool")
Gun.Parent = game.Players[Name].Backpack
Gun.GripPos=Vector3.new(0, -0.3, -0.02)
Gun.Name="SDPM-45"
script.Parent=Gun
script.Name="Not A QuickScript"
end

function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end))
end

Gun=script.Parent
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,2)
Handle.Parent=Gun
Handle.BrickColor=Color
Handle.Name="Handle"
Handle.Locked=true
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.5,0.6,1.2)

function Equip()
if de==0 then
de=1
Barrel=Instance.new("Part")
Barrel.Size=Vector3.new(1,1,1)
Barrel.Parent=Gun
Barrel.BrickColor=Color2
Barrel.Name="Barrel"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Barrel
Mesh.Scale=Vector3.new(0.25,0.25,0.2)
Weld=Instance.new("Weld")
Weld.Parent=Barrel
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,0,-1.15)
Sight=Instance.new("Part")
Sight.Size=Vector3.new(1,1,1)
Sight.Parent=Gun
Sight.BrickColor=Color2
Sight.Name="Sight"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Sight
Mesh.Scale=Vector3.new(0.15,0.1,0.5)
Weld=Instance.new("Weld")
Weld.Parent=Sight
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,0.35,-0.7)
Sight=Instance.new("Part")
Sight.Size=Vector3.new(1,1,1)
Sight.Parent=Gun
Sight.BrickColor=Color
Sight.Name="Sight"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Sight
Mesh.Scale=Vector3.new(0.09,0.1,0.09)
Weld=Instance.new("Weld")
Weld.Parent=Sight
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,0.4,-0.8)
Clip=Instance.new("Part")
Clip.Size=Vector3.new(1,1,1)
Clip.Parent=Gun
Clip.BrickColor=Color2
Clip.Name="Clip"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Clip
Mesh.Scale=Vector3.new(0.2,0.75,0.3)
Weld=Instance.new("Weld")
Weld.Parent=Clip
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,-0.45,-0.2)*CFrame.Angles(math.rad(10),0,0)
for i=1,3 do
Clip=Instance.new("Part")
Clip.Size=Vector3.new(1,1,1)
Clip.Parent=Gun
Clip.BrickColor=Color
Clip.Name="Clip"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Clip
Mesh.Scale=Vector3.new(0.21,0.7,0.02)
Weld=Instance.new("Weld")
Weld.Parent=Clip
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,-0.45+i/100,-0.075+(-i/9+0.1))*CFrame.Angles(math.rad(10),0,0)
end
for i=1,3 do
Band=Instance.new("Part")
Band.Size=Vector3.new(1,1,1)
Band.Parent=Gun
Band.BrickColor=Color2
Band.Name="Band"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Band
Mesh.Scale=Vector3.new(0.51,0.2,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Band
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,-0.05,-0.4+(-i/10))
end
Band=Instance.new("Part")
Band.Size=Vector3.new(1,1,1)
Band.Parent=Gun
Band.BrickColor=Color2
Band.Name="Band"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Band
Mesh.Scale=Vector3.new(0.51,0.62,0.3)
Weld=Instance.new("Weld")
Weld.Parent=Band
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,0,1.2)
Band=Instance.new("Part")
Band.Size=Vector3.new(1,1,1)
Band.Parent=Gun
Band.BrickColor=Color2
Band.Name="Band"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Band
Mesh.Scale=Vector3.new(0.05,0.62,0.9)
Weld=Instance.new("Weld")
Weld.Parent=Band
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0.19,0,0.3)
Band=Instance.new("Part")
Band.Size=Vector3.new(1,1,1)
Band.Parent=Gun
Band.BrickColor=Color2
Band.Name="Band"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Band
Mesh.Scale=Vector3.new(0.05,0.62,0.9)
Weld=Instance.new("Weld")
Weld.Parent=Band
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(-0.19,0,0.3)
wait(1)
de=0
end
end

function UnEquip()
wait()
for _,v in pairs(Gun:children()) do
if v.Name~="Handle" and v~=script then
v:remove()
end
end
end


Gun.Equipped:connect(Equip)
Gun.Unequipped:connect(UnEquip)
------------------------------------------------------------
local Tool=Gun
Tool.Enabled=true
local char=game.Players[Name].Character
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = game.Players[Name]
creator_tag.Name = "creator"


	
function onButton1Down(pos)
Tor=Instance.new("Part")
spawnPos = Tool.Barrel.Position + (pos)
Tor.Position=(Tool.Barrel.CFrame.lookVector) + spawnPos
Tor.Size=Vector3.new(1,1,1)
B=Instance.new("BodyVelocity")
B.Parent=Tor
B.velocity = pos*95
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1/2,0.1/2,0.1/2) 
creator_tag:Clone().Parent = Tor
Tor.Parent=workspace
Add(Tor,5)


Shell=Instance.new("Part")
Shell.BrickColor=Color
Shell.Size=Vector3.new(1,1,1)
Shell.Velocity=(char["Left Leg"].Position-char["Right Leg"].Position).unit*-10
Shell.Position=Tool.Handle.Position+Vector3.new(0,-0.5,0)
Shell.Parent=workspace
Shell.CanCollide=false
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(0.3/2,0.25/2,0.25/2)
Mesh.Parent=Shell

Tor.Touched:connect(function(hit)
if hit.Parent.Name~=Name then
pcall(function()
hit.Parent.Humanoid:TakeDamage(25)
Tor.creator:Clone().Parent=hit.Parent.Humanoid
hit.Parent.Humanoid:TakeDamage(75)
Tor:remove() 
end)
end
end)
end

function onActivated() 
local humanoid = char.Humanoid 
local targetPos = humanoid.TargetPoint 
local lookAt = (targetPos - Tool.Barrel.Position).unit 
onButton1Down(lookAt) 
end 

Tool.Activated:connect(onActivated)
------------------------------------------------------------------
function Clear(v)
for _,v in pairs(v:children()) do
if v:IsA("Script") and v.Name=="QuickScript" then 
v:remove()
else
Clear(v)
end
end
end
--Clear(workspace)