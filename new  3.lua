-------------------------------------------Made by chc4-----------------------------------------------------
Name="acb227"
color=BrickColor:Black()
color2=BrickColor:White()


pcall(function() workspace[Name].SuitTest:remove() end)
player = game.Players[Name]
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "SuitTest" 


for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.7,0.2,1.7) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.55,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.2,1.1,1.2) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,1.2,0)

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



v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,0.45,0.9) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.3,0.6,-0.1)*CFrame.Angles(0,0,math.rad(45))

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.2,0.45,0.9) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.3,0.6,-0.1)*CFrame.Angles(0,0,math.rad(-45))

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Red()
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,0.225,1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.3,-0.1)*CFrame.Angles(0,0,math.rad(45))

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Red()
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,0.8,1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.25,-0.1)*CFrame.Angles(0,0,math.rad(0))

v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Red()
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.175,0.135,1) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.74,-0.1)*CFrame.Angles(0,0,math.rad(45))

v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,1.05,0.25) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-1.05,0)*CFrame.Angles(0,math.rad(90*3),math.rad(90))

v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,0.5,0.25) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-1.35,0.45)*CFrame.Angles(0,math.rad(90*3),0)

v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,0.5,0.25) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-1.35,-0.45)*CFrame.Angles(0,math.rad(90*3),0)

v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Brown")
Tor.Transparency=0
Tor.Locked=true
Tor.Name="X1"
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
Mesh.Bevel=0.06
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.5,0.9,1.7) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-2,0)