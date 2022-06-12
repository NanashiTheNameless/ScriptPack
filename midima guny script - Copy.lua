------------------------------------.9 Millimeters Of Hot Lead. Fear It.------------------------------------
-------------------------------------------Made by chc4-----------------------------------------------------
Name="luxulux"
player=game.Players[Name]
char=player.Character
Color=BrickColor:Black()
Color2=BrickColor:White()
Make_Suit=false
Debounce=1

--NOTE TO SELF:Use Add([Object],[Delay]) instead of Debris:AddItem

function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) object:remove() end))
end



if script.Parent.className~="Tool" then
Gun = Instance.new("Tool")
Gun.Parent = game.Players[Name].Backpack
Gun.GripPos=Vector3.new(0, -0.2, -0.02)
Gun.Name="CH400 .9mm"
script.Parent=Gun
script.Name="Not A QuickScript"
end

Gun=script.Parent
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,1)
Handle.Parent=Gun
Handle.BrickColor=Color
Handle.Name="Handle"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.4,0.6,0.4)

function Equip()
if Debounce==1 and Gun:findFirstChild("Trigger")==nil then
Debouce=0
Barrel=Instance.new("Part")
Barrel.BrickColor=Color2
Barrel.Size=Vector3.new(1,1,1)
Barrel.Parent=Gun
Barrel.Name="Barrel"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Barrel
Mesh.Scale=Vector3.new(0.35,0.3,1.2)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-0.4,0.35)
Barrel2=Instance.new("Part")
Barrel2.BrickColor=Color
Barrel2.Name="Safety"
Barrel2.Size=Vector3.new(1,1,1)
Barrel2.Parent=Gun
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Barrel2
Mesh.Scale=Vector3.new(0.15,0.15,0.12)
Weld=Instance.new("Weld")
Weld.Parent=Barrel
Weld.Part1=Weld.Parent
Weld.Part0=Barrel2
Weld.C0=CFrame.new(0,-0.25,-0.53)*CFrame.Angles(math.rad(-15),0,0)
Trig=Instance.new("Part")
Trig.BrickColor=Color
Trig.Size=Vector3.new(1,1,1)
Trig.Name="Trigger"
Trig.Parent=Gun
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Trig
Mesh.Scale=Vector3.new(0.06,0.12,0.07)
Weld=Instance.new("Weld")
Weld.Parent=Trig
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,0.2,-0.28)*CFrame.Angles(math.rad(-30),0,0)
Grip=Instance.new("Part")
Grip.BrickColor=Color2
Grip.Size=Vector3.new(1,1,1)
Grip.Parent=Gun
Grip.Name="Grip"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Grip
Mesh.Scale=Vector3.new(0.42,0.3,0.2)
Weld=Instance.new("Weld")
Weld.Parent=Grip
Weld.Part1=Weld.Parent
Weld.Part0=Handle
Weld.C0=CFrame.new(0,-0.1,0)
Point=Instance.new("Part")
Point.BrickColor=Color
Point.Name="Point"
Point.Size=Vector3.new(1,1,1)
Point.Parent=Gun
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Point
Mesh.Scale=Vector3.new(0.19,0.19,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Point
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,0,-0.58)
CrossHair=Instance.new("Part")
CrossHair.BrickColor=Color
CrossHair.Name="CrossHair"
CrossHair.Size=Vector3.new(1,1,1)
CrossHair.Parent=Gun
Mesh=Instance.new("BlockMesh")
Mesh.Parent=CrossHair
Mesh.Scale=Vector3.new(0.02,0.08,0.04)
Weld=Instance.new("Weld")
Weld.Parent=CrossHair
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,0.2,-0.57)
Strip1=Instance.new("Part")
Strip1.BrickColor=Color
Strip1.Size=Vector3.new(1,1,1)
Strip1.Parent=Gun
Strip1.Name="Strip1"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Strip1
Mesh.Scale=Vector3.new(0.38,0.1,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Strip1
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-0.15,-0.05)
Strip2=Instance.new("Part")
Strip2.BrickColor=Color
Strip2.Size=Vector3.new(1,1,1)
Strip2.Parent=Gun
Strip2.Name="Strip2"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Strip2
Mesh.Scale=Vector3.new(0.38,0.1,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Strip2
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-0.15,-0.15)
Strip3=Instance.new("Part")
Strip3.BrickColor=Color
Strip3.Size=Vector3.new(1,1,1)
Strip3.Parent=Gun
Strip3.Name="Strip3"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Strip3
Mesh.Scale=Vector3.new(0.38,0.1,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Strip3
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-0.15,-0.25)
Strip4=Instance.new("Part")
Strip4.BrickColor=Color
Strip4.Size=Vector3.new(1,1,1)
Strip4.Parent=Gun
Strip4.Name="Strip4"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Strip4
Mesh.Scale=Vector3.new(0.38,0.1,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Strip4
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-0.15,-0.35)
Strip5=Instance.new("Part")
Strip5.BrickColor=Color
Strip5.Size=Vector3.new(1,1,1)
Strip5.Parent=Gun
Strip5.Name="Strip5"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Strip5
Mesh.Scale=Vector3.new(0.38,0.1,0.05)
Weld=Instance.new("Weld")
Weld.Parent=Strip5
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0,-0.15,-0.45)
Side1=Instance.new("Part")
Side1.BrickColor=Color
Side1.Size=Vector3.new(1,1,1)
Side1.Parent=Gun
Side1.Name="Side1"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Side1
Mesh.Scale=Vector3.new(0.05,0.1,0.5)
Weld=Instance.new("Weld")
Weld.Parent=Side1
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(0.13,0.15,-0.06)
Side2=Instance.new("Part")
Side2.BrickColor=Color
Side2.Size=Vector3.new(1,1,1)
Side2.Parent=Gun
Side2.Name="Side2"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Side2
Mesh.Scale=Vector3.new(0.05,0.1,0.5)
Weld=Instance.new("Weld")
Weld.Parent=Side2
Weld.Part1=Weld.Parent
Weld.Part0=Barrel
Weld.C0=CFrame.new(-0.13,0.15,-0.06)
wait(1)
Debounce=1
end
end

function UnEquip()
wait()
for _,v in pairs(Gun:children()) do
if v.Name~="Handle" and v.className~="Script" then
v:remove()
end
end
end

Gun.Equipped:connect(Equip)
Gun.Unequipped:connect(UnEquip)
------------------------------------------------------------------------------------
local Tool=Gun
Tool.Enabled=true
local char=game.Players[Name].Character
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = game.Players[Name]
creator_tag.Name = "creator"


        
function onButton1Down(pos)
Tor=Instance.new("Part")
spawnPos = Tool.Point.Position + (pos)
Tor.Position=(Tool.Point.CFrame.lookVector) + spawnPos
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
Mesh.Scale=Vector3.new(0.1,0.1,0.1) 
creator_tag:Clone().Parent = Tor
Tor.Parent=workspace
Delay(5,function() pcall(function() Tor:remove() end) end)


Shell=Instance.new("Part")
Shell.BrickColor=Color
Shell.Size=Vector3.new(1,1,1)
Shell.Velocity=(char["Left Leg"].Position-char["Right Leg"].Position).unit*-10
Shell.Position=Tool.Handle.Position+Vector3.new(0,-0.5,0)
Shell.Parent=workspace
Shell.CanCollide=false
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(0.3,0.25,0.25)
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
local lookAt = (targetPos - Tool.Point.Position).unit 
onButton1Down(lookAt) 
end 

Tool.Activated:connect(onActivated) --What's that sanvich? Kill them all? Good idea!

---------------------------------------------------------------------------------
if Make_Suit==true then
pcall(function() workspace[Name].SuitTest:remove() end)
pcall(function() player.PlayerGui:children()[1]:remove() end)
player.Character.Humanoid.WalkSpeed = 40 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "SuitTest" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 
color2=Color2
color=Color

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.3
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.8,1.6,1.8) 
Mesh.Offset=Vector3.new(0,0.6,0)
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.2,0)

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Righ" or string.sub(v.Name,1,4)=="Left" then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color2
Tor.Reflectance=0.3
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,1.01,1.01) 
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.15,0.38,1.15)
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-1.1,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.15,0.38,1.15)
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,1,0)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.15,1.5,0.15)
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0,-0.45)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.15,1.5,0.15)
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0,0.45)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.15,1.5,0.15)
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0,-0.45)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.15,1.5,0.15)
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0,0.45)
end
end

Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=color2
Tor.Reflectance=0.3
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,1.01,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

for i=1,3 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=1
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,0.15,0.2) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new((i/-4),0.4,-0.5)
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.7,0.2,0.2) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.5,0.19,-0.5)


for _,v in pairs(model:children()) do
v.TopSurface="Smooth"
v.BottomSurface="Smooth"
v.Locked=true
end

Gun.GripPos=Vector3.new(0, -0.2, 0.35)
end
