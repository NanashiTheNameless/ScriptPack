Name="yfc"
color=BrickColor.new("Bright red")

pcall(function() workspace[Name].SuitTest:remove() end)
--pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 20
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "SuitTest" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 

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
pcall(function() char.Head.face:remove() end)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,2,2)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.5,1.5,1.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.75,0)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,0.9,1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-1,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,0.9,1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-1,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.3,1.175,1.3) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.5,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.3,1.175,1.3) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.5,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,2,2)
Tor.Shape="Ball"
Tor.BrickColor=BrickColor:Yellow()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.25,1.25,1.15) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.725,-0.35)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.5,0.5,0.5) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.3,-0.25,-1.3)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.5,0.5,0.5) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.3,-0.25,-1.3)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,0.2,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.32,-0.215,-1.5)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=BrickColor:White()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Body"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,0.2,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.32,-0.215,-1.5)




















-------------------------------------------Made by chc4-----------------------------------------------------
player=game.Players[Name]
char=player.Character
d=0

--NOTE TO SELF:Use Add([Object],[Delay]) instead of Debris:AddItem
function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end))
end

if script.Parent.className~="HopperBin" then
Sword = Instance.new("HopperBin")
Sword.Parent = game.Players[Name].Backpack
Sword.Name="Umbrella"
script.Parent=Sword
end

Sword=script.Parent

Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}

function hint(msg,de)
local h=Instance.new("Hint")
h.Text=tostring(msg)
h.Parent=player
Delay(tonumber(de),function() h:remove() end)
end

function makeSword()
local Sword=Instance.new("Model")
Sword.Name="Umbrella"
Sword.Parent=char
wait(0.1)
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,1)
Handle.Parent=Sword
Handle.BrickColor=BrickColor.new("Brown")
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.4,1.95,0.4)
HenWeld=Instance.new("Weld")
HenWeld.Parent=char["Right Arm"]
HenWeld.Part1=HenWeld.Parent
HenWeld.Part0=Handle
HenWeld.C0=CFrame.new(0,0,0.7)*CFrame.Angles(math.rad(20),0,0)
Hy=HenWeld.C0

Blade2=Instance.new("Part")
Blade2.BrickColor=BrickColor:Yellow()
Blade2.Size=Vector3.new(1,1,1)
Blade2.Parent=Sword
Blade2.Name="Blade2"
Blade2.Reflectance=0.11
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Blade2
Mesh.Scale=Vector3.new(0.4,0.4,0.4)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Blade2
Weld.C0=CFrame.new(0,-1.95/2-.25,0)

Nu=0
for i=1,13,.5 do 
Nu=Nu+1
x = (0.75) * math.sin(i)
y = -2.1/2
z = (0.75)* math.cos (i)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
if Nu==3 then
Tor.BrickColor=BrickColor:White()
Nu=0
else
Tor.BrickColor=BrickColor:Red()
end
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Anchored=false
Tor.Name="Wall"..tostring(i)
Tor.CanCollide=true
Tor.Parent=Sword
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1,0.3+i/36,1) 
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Tor
Weld.C0=CFrame.new(x,y,z)*CFrame.Angles(0,math.rad(-1*120),0)
end
end

f=Sword.Selected:connect(function(mouse)
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here.
if d==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then
d=1
De=0
f:disconnect()
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
Debou=true
Arms[2].Parent=nil
w2 = Instance.new("Weld") 
w2.Name="Right Shouldr"
w2.Parent = char.Torso
w2.Part0 = char["Right Arm"]
w2.Part1 = w2.Parent
makeSword()
---Animation Start---
for i=0,1,0.05 do
wait()
w2.C0 = CFrame.new(-1.5,0,0)
end
----Animation End----
Wr=w2.C0
end
end)

--lego