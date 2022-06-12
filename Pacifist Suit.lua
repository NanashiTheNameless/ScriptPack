
local Name="yfc"
local char=workspace[Name]
color=BrickColor:White()
color2=BrickColor.new("Dark stone grey")

pcall(function() workspace[Name].Suit:remove() end)
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


Ta=Instance.new("ObjectValue")
Ta.Value=player
Ta.Name="creator"

function Tag(v)
pcall(function() Ta:Clone().Parent=v.Parent.Humanoid end)
wait()
pcall(function() v.Parent.Humanoid.Health=0 end)
end

Tors=Instance.new("Part")
Tors.Size=char.Torso.Size
Tors.BrickColor=color
Tors.Reflectance=0.75
Tors.Transparency=0
Tors.CanCollide=false
Tors.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tors
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tors 
w.C0 = CFrame.new(0,0,0)

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0.75
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

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Wing2"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1,3) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.5,0.4,1.1)*CFrame.Angles(math.rad(-40),math.rad(20),0)

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.Name="Wing1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,1,3) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.5,0.4,1.1)*CFrame.Angles(math.rad(-40),math.rad(-20),0)

v=char["Left Leg"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.4,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.6,0)

v=char["Right Leg"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.4,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.6,0)

v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.43,0)

v=char["Right Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,0.3,1.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.43,0)

v=model["Wing2"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.3,1.1,0.2) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,1.3)

v=model["Wing1"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.3,1.1,0.2) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,1.3)

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Shape="Ball"
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
--Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.7,.7,.7) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.2,0.4)

Tor=Instance.new("Part") --From here...
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,0.4,0.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.51)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,.25,.25) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.49)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.27,0,-0.49)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.27,0,-0.49)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.295,-0.49)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,0.5,0.049) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.295,-0.49)*CFrame.Angles(0,0,math.rad(90)) --To here I stole from my Juggernaut suit =P

v=char["Head"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.1,.1,.1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0.3)