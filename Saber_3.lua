Name="yfc"
player=game.Players[Name]
char=player.Character
Color=BrickColor.new("Grey")
Color2=BrickColor:Black()
Debounce=1
Make_Suit=false

--NOTE TO SELF:Use Add([Object],[Delay]) instead of Debris:AddItem
function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end))
end

if script.Parent.className~="Tool" then
Sword = Instance.new("Tool")
Sword.Parent = game.Players[Name].Backpack
Sword.GripPos=Vector3.new(0, -0.2, 0)
Sword.Name="Saber"
script.Parent=Sword
script.Name="Not A QuickScript"
end

Sword=script.Parent
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,1)
Handle.Parent=Sword
Handle.BrickColor=Color2
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.4,0.75,0.4)

function Equip()
wait(0.1)
GripTop=Instance.new("Part")
GripTop.BrickColor=BrickColor.new(27)
GripTop.Size=Vector3.new(1,1,1)
GripTop.Parent=Sword
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
Blade1.Reflectance=0.11
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

function UnEquip()
wait(0.1)
for _,v in pairs(Sword:children()) do
if v.Name~="Handle" and v~=script then
v:remove()
end
end
Pi:disconnect()
end

Sword.Equipped:connect(function() wait() Delay(0,Equip) end)
Sword.Unequipped:connect(function() wait() Delay(0,UnEquip) end)
----------------------------------------------------------------
grip=Sword.GripUp
De=1

function Hit(h)
if h.Parent~=nil and h.Parent.Name~=Name then
pcall(function() h.Parent.Humanoid:TakeDamage(51) end)
end
end

function swordOut()
if De==1 then
De=0
for i=1,12 do
Sword.GripUp=Sword.GripUp+Vector3.new(0,0,1/5)
wait()
end
wait(0.2)
for i=1,11 do
Sword.GripUp=Sword.GripUp+Vector3.new(0,0,-1/5)
wait()
end
Sword.GripUp=grip
wait()
De=1
end
end

Sword.Activated:connect(swordOut)
---------------------------------------------------------------------
if Make_Suit==true then
-------------------------------------------Made by chc4-----------------------------------------------------
Name="TheEndOfDays"
color=BrickColor.new(27)
color2=Color

pcall(function() workspace[Name].Pokemon:remove() end)
pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 20
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Pokemon" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end

----Torso----

Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
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


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.07,0.65,0.07) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.5)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.07,0.45,0.07) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.5)*CFrame.Angles(0,0,math.pi/2)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.07,0.45,0.07) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.5,-0.5)*CFrame.Angles(0,0,math.pi/2)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.07,0.45,0.07) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.5,-0.5)*CFrame.Angles(0,0,math.pi/2)

----Left Arm----
la=char["Left Arm"]

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.02,1.05) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.3,0)



----Right Arm----
la=char["Right Arm"]

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.02,1.05) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.3,0)


----Left Leg----
la=char["Left Leg"]

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.02,1.05) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.3,0)


----Right Leg----
la=char["Right Leg"]

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.02,1.05) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.3,0)

----Helmet----
char.Head.BrickColor=BrickColor:Black()
pcall(function() char.Head.face:Remove() end)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Shape="Ball"
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.25) --NO idea what to put in for a helmet =(

----Extra----
for _,v in pairs(model:children()) do
v.Locked=true
v.TopSurface="Smooth"
v.BottomSurface="Smooth"
end
end

collectgarbage("collect")