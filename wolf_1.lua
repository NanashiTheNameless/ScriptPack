player = "urname"

a = game.Workspace[player]

b = a["Head"].Mesh
b.Scale = Vector3.new(1,1,1)
b.Offset = Vector3.new(0,0,0)
b.MeshType = "FileMesh"
b.MeshId = "rbxassetid://15158284"
wait(0.1)

Instance.new("SpecialMesh", a["Torso"])
b = a["Torso"].Mesh
b.Scale = Vector3.new(2, 3, 10)
b.Offset = Vector3.new(0,0,5)
b.MeshType = "Sphere"
wait(0.1)
a["Right Leg"].Transparency = 1
a["Left Leg"].Transparency = 1
a["Right Arm"].Transparency = 1
a["Left Arm"].Transparency = 1