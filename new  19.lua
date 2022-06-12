--Sniper Rifle--
-------------------------------------------Made by chc4-----------------------------------------------------
Name="acb227"
player=game.Players[Name]
char=player.Character
Color=BrickColor:Black()
Color2=BrickColor.new(2)
Debounce=1

if script.Parent.className~="Tool" then
Gun = Instance.new("Tool")
Gun.Parent = game.Players[Name].Backpack
Gun.GripPos=Vector3.new(0, -0.5, 0)
Gun.Name="Sniper"
script.Parent=Gun
script.Name="Not A QuickScript"
end

function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end))
end

Gun=script.Parent
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,4)
Handle.Parent=Gun
Handle.BrickColor=Color
Handle.Name="Handle"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.5,0.5,0.9)

function Equip()
if Debounce==1 and Gun:findFirstChild("Trigger")==nil then
Debouce=0
Sight=Instance.new("Part")
Sight.BrickColor=Color2
Sight.Size=Vector3.new(1,1,1)
Sight.Parent=Gun
Sight.Name="Sight"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Sight
Mesh.Scale=Vector3.new(0.31,0.9,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Sight
Weld.C0=CFrame.new(0,-0.5,-0.37)*CFrame.Angles(math.rad(90),0,0)
Grip1=Instance.new("Part")
Grip1.BrickColor=Color
Grip1.Size=Vector3.new(1,1,1)
Grip1.Parent=Gun
Grip1.Name="Grip1"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Grip1
Mesh.Scale=Vector3.new(0.31,0.95,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Grip1
Weld.C0=CFrame.new(0,0.38,0)
Grip2=Instance.new("Part")
Grip2.BrickColor=Color
Grip2.Size=Vector3.new(1,1,1)
Grip2.Parent=Gun
Grip2.Name="Grip2"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Grip2
Mesh.Scale=Vector3.new(0.25,0.45,0.35)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Grip2
Weld.C1=CFrame.new(0,-0.45,-0.95)*CFrame.Angles(math.rad(30),0,0)
Lock1=Instance.new("Part")
Lock1.BrickColor=Color2
Lock1.Size=Vector3.new(1,1,1)
Lock1.Parent=Gun
Lock1.Name="Lock1"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Lock1
Mesh.Scale=Vector3.new(0.26,0.4,0.07)
Weld=Instance.new("Weld")
Weld.Parent=Grip2
Weld.Part1=Weld.Parent
Weld.Part0=Lock1
Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
SightCap1=Instance.new("Part")
SightCap1.BrickColor=Color
SightCap1.Size=Vector3.new(1,1,1)
SightCap1.Parent=Gun
SightCap1.Name="SightCap1"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=SightCap1
Mesh.Scale=Vector3.new(1,0.1,0.35)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=SightCap1
Weld.C0=CFrame.new(0,-1,-0.37)*CFrame.Angles(math.rad(90),0,0)
SightCap2=Instance.new("Part")
SightCap2.BrickColor=Color
SightCap2.Size=Vector3.new(1,1,1)
SightCap2.Parent=Gun
SightCap2.Name="SightCap2"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=SightCap2
Mesh.Scale=Vector3.new(1,0.1,0.35)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=SightCap2
Weld.C0=CFrame.new(0,0,-0.37)*CFrame.Angles(math.rad(90),0,0)
Barrel=Instance.new("Part")
Barrel.BrickColor=Color
Barrel.Size=Vector3.new(1,1,1)
Barrel.Parent=Gun
Barrel.Name="Barrel"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Barrel
Mesh.Scale=Vector3.new(0.31,1.4,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-2.3,0)*CFrame.Angles(math.rad(90),0,0)
CrossHair=Instance.new("Part")
CrossHair.BrickColor=Color2
CrossHair.Size=Vector3.new(1,1,1)
CrossHair.Parent=Gun
CrossHair.Name="CrossHair"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=CrossHair
Mesh.Scale=Vector3.new(0.03,0.17,0.1)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=CrossHair
Weld.C0=CFrame.new(0,-0.2,3)*CFrame.Angles(0,0,0)
Trigger=Instance.new("Part")
Trigger.BrickColor=Color
Trigger.Size=Vector3.new(1,1,1)
Trigger.Parent=Gun
Trigger.Name="Trigger"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Trigger
Mesh.Scale=Vector3.new(0.05,0.15,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Trigger
Weld.C0=CFrame.new(0,0.17,0.47)*CFrame.Angles(math.rad(25),0,0)
GripRing=Instance.new("Part")
GripRing.BrickColor=Color2
GripRing.Size=Vector3.new(1,1,1)
GripRing.Parent=Gun
GripRing.Name="GripRing"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=GripRing
Mesh.Scale=Vector3.new(0.4,0.1,1.5)
Weld=Instance.new("Weld")
Weld.Parent=Grip1
Weld.Part1=Weld.Parent
Weld.Part0=GripRing
Weld.C0=CFrame.new(0,0,0)
wait(1)
Debounce=1
end
end --wow. looks really good for only 11 parts >.>

function Unequip()
for _,v in pairs(Gun:children()) do
if v~=script and v.Name~="Handle" then 
v:remove()
end
end
end

Gun.Equipped:connect(Equip)
Gun.Unequipped:connect(Unequiped)
-------------------------------------------------------------
local Tool=Gun
Tool.Enabled=true
local char=game.Players[Name].Character
char.Humanoid.WalkSpeed=30
char.Humanoid.MaxHealth=math.huge
pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = game.Players[Name]
creator_tag.Name = "creator"

function onButton1Down(pos)
if Debounce==1 then
Debounce=0
Tor=Instance.new("Part")
spawnPos = Tool.CrossHair.Position + (pos)
Tor.Position=(Tool.CrossHair.CFrame.lookVector) + spawnPos
Tor.Size=Vector3.new(1,1,1)
B=Instance.new("BodyVelocity")
B.Parent=Tor
B.velocity = pos*170
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.05,0.05,0.05) 
creator_tag:Clone().Parent = Tor
Tor.Parent=workspace
Delay(8,function() pcall(function() Tor:remove() end) end)
Shell=Instance.new("Part")
Shell.BrickColor=Color
Shell.Size=Vector3.new(1,1,1)
Shell.Velocity=(char["Left Leg"].Position-char["Right Leg"].Position).unit*-10
Shell.Position=Tool.Grip1.Position+Vector3.new(0,-0.5,0)
Shell.Parent=workspace
Shell.CanCollide=false
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(0.07,0.07,0.07) 
Mesh.Parent=Shell
Tor.Touched:connect(function(hit)
if hit.Parent~=char and hit.Name~="Head" then
pcall(function()
hit.Parent.Humanoid:TakeDamage(35)
Tor.creator:Clone().Parent=hit.Parent.Humanoid
hit.Parent.Humanoid:TakeDamage(75)
end)
elseif hit.Name=="Head" and hit.Parent.Name~=Name and hit.Parent.className=="Model" then
Tor:remove()
local Hint=Instance.new("Hint")
Hint.Text="Boom. Headshot. "
pcall(function() Hint.Parent=game.Players[hit.Parent.Name] Add(Hint,2) Tor.creator:Clone().Parent=hit.Parent.Humanoid end)
local Hint2=Hint:Clone()
Hint2.Parent=game.Players[Name]
Add(Hint2,2)
for _,v in pairs(hit.Parent:children()) do
if v:IsA("Part") then
v.BrickColor=BrickColor:Black()
v.Reflectance=0.3
end
end
pcall(function() hit.Parent.Torso.Name="Boom. Headshot." end)
end
end)
wait(0.3)
Debounce=1
end
end
function onActivated() 
local humanoid = char.Humanoid 
local targetPos = humanoid.TargetPoint 
local lookAt = (targetPos - Tool.CrossHair.Position).unit 
onButton1Down(lookAt) 
end 

Tool.Activated:connect(onActivated) --What's that sanvich? Kill them all? Good idea!

function Clear(v)
for _,v in pairs(v:children()) do
if v:IsA("Script") then v:remove()
else
Clear(v)
end
end
end
--Clear(workspace)