getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Left Arm
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
settop 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Right Arm
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
settop 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Right Leg
pushnumber 1
setfield -2 Transparency
pcall 1 0 0
settop 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Left Leg
pushnumber 1
setfield -2 Transparency
pcall 1 0 0
settop 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Head
pushnumber 1
setfield -2 Transparency
pcall 1 0 0
settop 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Head
getfield -1 face
pushnumber 1
setfield -2 Transparency
pcall 1 0 0
settop 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Torso
getglobal Instance
getfield -1 new
pushstring SpecialMesh
pushvalue -4
pcall 2 0 0
settop 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Torso
getfield -1 Mesh
pushstring rbxassetid://9419831
setfield -2 MeshId
pcall 1 0 0
settop 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Torso
getfield -1 Mesh
pushstring rbxassetid://9419827
setfield -2 TextureId
pcall 1 0 0
settop 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Torso
getfield -1 Mesh
getglobal Vector3
getfield -1 new
pushnumber 6
pushnumber 6
pushnumber 6
pcall 3 1 0
setfield -3 Scale
settop 0