-------------------------------------------Made by chc4-----------------------------------------------------
Name="acb227"
color=BrickColor:White()
color2=BrickColor:Black()


pcall(function() workspace[Name].SuitTest:remove() end)
pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)
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
if v:IsA("Hat") then
v:remove()
end
end


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
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
Tor.BrickColor=color
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
Tor.BrickColor=color2
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
Tor.BrickColor=color2
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
Tor.BrickColor=color2
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
Tor.BrickColor=color2
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
Tor.BrickColor=color2
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
Tor.BrickColor=color2
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
Tor.BrickColor=color
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
Tor.BrickColor=color2
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
Tor.BrickColor=color2
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



Jet1=Instance.new("Part")
Jet1.Size=Vector3.new(1,2,1)
Jet1.BrickColor=color2
Jet1.Reflectance=0.2
Jet1.Transparency=0
Jet1.CanCollide=false
Jet1.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Jet1
Mesh.Scale=Vector3.new(1.1,0.8,1.1) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Jet1 
w.C0 = CFrame.new(-0.5,0,0.5)

Jet2=Instance.new("Part")
Jet2.Size=Vector3.new(1,2,1)
Jet2.BrickColor=color2
Jet2.Reflectance=0.2
Jet2.Transparency=0
Jet2.CanCollide=false
Jet2.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Jet2
Mesh.Scale=Vector3.new(1.1,0.8,1.1) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Jet2 
w.C0 = CFrame.new(0.5,0,0.5)


Flame1=Instance.new("Part")
Flame1.Size=Vector3.new(1,1,1)
Flame1.BrickColor=BrickColor:Red()
Flame1.Reflectance=0
Flame1.Transparency=1
Flame1.CanCollide=false
Flame1.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.Parent=Flame1
Mesh.Scale=Vector3.new(1,1,1) 
w = Instance.new("Weld") 
w.Parent = Jet1
w.Part0 = w.Parent 
w.Part1 = Flame1 
w.C0 = CFrame.new(0,-0.81,0)

Flame2=Instance.new("Part")
Flame2.Size=Vector3.new(1,1,1)
Flame2.BrickColor=BrickColor:Red()
Flame2.Reflectance=0
Flame2.Transparency=1
Flame2.CanCollide=false
Flame2.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.Parent=Flame2
Mesh.Scale=Vector3.new(1,1,1) 
w = Instance.new("Weld") 
w.Parent = Jet2 
w.Part0 = w.Parent 
w.Part1 = Flame2
w.C0 = CFrame.new(0,-0.81,0)

for _,v in pairs(model:children()) do
v.TopSurface="Smooth"
v.BottomSurface="Smooth"
v.Locked=true
end

----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------
-------------------TOOL-----------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------

if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="JetPack"
Hopper.Parent=player.Backpack
script.Parent=Hopper
end
Hopper=script.Parent
Animate=char.Animate


function Button1own(mouse)
if char.Torso:findFirstChild("BodyV")==nil then
Flame1.Transparency=0.2
Flame2.Transparency=0.2
BodyV=Instance.new("BodyVelocity")
BodyV.Name="BodyV"
BodyV.Parent=char.Torso
BodyV.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=char.Torso
end

char.Animate:remove()
char.Torso["Right Shoulder"].DesiredAngle=-5
char.Torso["Left Shoulder"].DesiredAngle=5
char.Torso["Right Shoulder"].CurrentAngle=-5
char.Torso["Left Shoulder"].CurrentAngle=5

char.Torso["Right Hip"].DesiredAngle=-0.6
char.Torso["Left Hip"].DesiredAngle=0.6
char.Torso["Right Hip"].CurrentAngle=-0.6
char.Torso["Left Hip"].CurrentAngle=0.6
Up=0
BodyVel=char.Torso.BodyV
BodyG=char.Torso.BodyGyro
local spd = 30
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
Flame1.Transparency=1
Flame2.Transparency=1
Animate:clone().Parent=char
end

function Mg(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1own(mouse) end)
	mouse.Button1Up:connect(function() Button1up(mouse) end)
end


Hopper.Selected:connect(Mg)


--lego 