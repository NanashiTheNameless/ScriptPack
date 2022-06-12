-------------------------------------------Made by chc4-----------------------------------------------------
local Name="acb227"
local char=workspace[Name]
color=BrickColor:Black()
color2=BrickColor:White()

pcall(function() workspace[Name].Suit:remove() end)
pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 30
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 
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

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
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

char.Head.BrickColor=color
pcall(function() char.Head.face:remove() end)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.075,0.075,0.075) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.59,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.076,0.076,0.076) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.59,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.0275,0.09,0.0275) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.6,-0.04,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.0276,0.075/6,0.0276) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.6,-0.109,0)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.0275,0.09,0.0275) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.6,-0.04,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.0276,0.075/6,0.0276) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.6,-0.109,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.2,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.6,-0.22,-0.0215)*CFrame.Angles(0.3,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.2,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.6,-0.37,-0.12)*CFrame.Angles(3.14/3.5,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick" --here
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.275,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.58,-0.429,-0.351)*CFrame.Angles(3.14/2,0,math.rad(10))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.2,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.6,-0.22,-0.0215)*CFrame.Angles(0.3,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.2,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.6,-0.37,-0.12)*CFrame.Angles(3.14/3.5,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.275,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.58,-0.429,-0.351)*CFrame.Angles(3.14/2,0,math.rad(-10))


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.2,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.6,-0.22,-0.0215)*CFrame.Angles(0.3,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.2,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.6,-0.37,-0.12)*CFrame.Angles(3.14/3.5,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.275,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.58,-0.429,-0.351)*CFrame.Angles(3.14/2,0,math.rad(-10))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,1.2,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.2,0.45,-0.5)*CFrame.Angles(0,0,math.rad(30))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,1,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.35,0.5,-0.5)*CFrame.Angles(0,0,math.rad(-20))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.17,0.15,0.07) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.125,-0.1,-0.5)*CFrame.Angles(0,0,3.2)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.6,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.31,-0.5,-0.5)*CFrame.Angles(0,0,math.rad(30))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.025,0.45,0.025) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.75,-0.88,-0.5)*CFrame.Angles(0,0,math.rad(75))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Name="0"
Tor.Reflectance=0.05
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.05,0.6,0.5) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.51,0.7,-0.155)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.09
Tor.Transparency=0 
Tor.Name="1"
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.06,0.2,0.27) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.51,0.8,-0.155)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.09
Tor.Name="2"
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,0.05,0.25) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.51,0.5,-0.155)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Name="3"
Tor.Reflectance=0.09
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.06,0.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.51,0.5,-0.155)*CFrame.Angles(0,0,math.rad(90))

for _,v in pairs(model:children()) do 
v.Locked=true
end

if script.Parent.className~="Tool" then
Gun = Instance.new("Tool")
Gun.Parent = game.Players[Name].Backpack
Gun.GripPos=Vector3.new(0, 0, 0.1)
Gun.Name="iPod"
script.Parent=Gun
script.Name="Not A QuickScript"
end
de=1

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Name="Handle"
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=Gun
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.5,0.6,0.05) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.51,0.7,-0.155)

function tras(...)
for _,v in pairs(...) do
v.Transparency=1
end
end

function nontras(...)
for _,v in pairs(...) do
v.Transparency=0
end
end

function Equip()
if de==1 then
de=0
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0 
Tor.Name="1"
Tor.CanCollide=false
Tor.Parent=Gun
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.27,0.2,0.06) 
w = Instance.new("Weld") 
w.Parent = Gun["Handle"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.15,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.09
Tor.Name="2"
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,0.05,0.25) 
w = Instance.new("Weld") 
w.Parent = Gun["Handle"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-.15,0)*CFrame.Angles(math.rad(90),0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Name="3"
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.06,0.1) 
w = Instance.new("Weld") 
w.Parent = Gun["Handle"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.15,0)*CFrame.Angles(math.rad(90),0,0)

tras({model["0"],
model["1"],
model["2"],
model["3"]})
wait(0.7)
de=1
end
end

Gun.Equipped:connect(Equip)
Gun.Unequipped:connect(function() for _,v in pairs(Gun:children()) do if v.Name~="Handle" and v.className~="Script" then v:remove() end end nontras({model["0"],model["1"],model["2"],model["3"]})end)
-----------------------------------------
-----------------------------------------
-----------------------------------------
-----------------------------------------
-----------------------------------------
local Music = Instance.new("Sound") 
Music.Name = "Music" 
Music.SoundId = "1ba0d64efc2c86b56c4d002b528a8f7e" 
Music.Volume = 1 
Music.Looped = true 
Music.Parent = model

function Hint(text)
Hint=Instance.new("Hint")
Hint.Text=text
Hint.Parent=game.Players[Name]
Delay(3,function() pcall(function() Hint:remove() end) end)
end

Mode="off"
Gun.Activated:connect(function() if Mode=="off" then 
Mode="on" 
Music:play() 
Hint("Music:On")
elseif Mode=="on" then 
Mode="off" 
Hint("Music:Off")
Music:stop() 
end 
end)