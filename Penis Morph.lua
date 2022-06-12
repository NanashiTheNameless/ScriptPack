player = "PLAYERNAME"
a = game.Workspace[player]
Instance.new("SpecialMesh", a["Left Arm"])
b = a["Left Arm"].Mesh
b.Scale = Vector3.new(5,3,4)
b.Offset = Vector3.new(0,1,0)
b.MeshType = "Sphere"
wait(0.1)
Instance.new("SpecialMesh", a["Right Arm"])
b = a["Right Arm"].Mesh
b.Scale = Vector3.new(5,3,4)
b.Offset = Vector3.new(0,1,0)
b.MeshType = "Sphere"
wait(0.1)
Instance.new("SpecialMesh", a["Torso"])
b = a["Torso"].Mesh
b.Scale = Vector3.new(1,10,25)
b.Offset = Vector3.new(0,10,0)
b.MeshType = "Head"
wait(0.1)
a["Right Leg"].Transparency = 1
a["Left Leg"].Transparency = 1
a["Head"].Transparency = 1
  