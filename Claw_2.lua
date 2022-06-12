Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
workspace.anton20.Torso.Transparency = 1
workspace.anton20.Humanoid.WalkSpeed = 100
local new = Instance.new("Part", Player.Character)
new.Name = "Torso"
new.formFactor = "Symmetric"
new.TopSurface = "Smooth"
new.BottomSurface = "Smooth"
new.FormFactor = "Custom"
new.Size = Player.Character.Torso.Size
new.CFrame = Player.Character.Torso.CFrame
new.BrickColor = Player.Character.Torso.BrickColor
local weldT = Instance.new("Weld", Player.Character.Torso)
weldT.Part0 = Player.Character.Torso
weldT.Part1 = new
weldT.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
mouse = game.Players.LocalPlayer:GetMouse()
Tool = Instance.new("HopperBin",Player.Backpack)
Tool.Name = "Sound Sword"
function onClicked(mouse)
if (not vDebounce) then
vDebounce = true
wa = Instance.new("Part",Char)
wa.Transparency=1
wa.CanCollide = false 
wa.Size = Vector3.new(1, 1, 1) 
wa:BreakJoints() 
Weld3 = Instance.new("Weld",wa) 
Weld3.Part0 = Blade
Weld3.Part1 = wa
Weld3.C0 = CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, 0)
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,-2.1, 2.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wa:remove()
vDebounce = false
end
end
Tool.Selected:connect(function(mouse)
end)
mouse.Button1Down:connect(function() onClicked(mouse) end)
Handle = Instance.new("Part",Workspace.anton20)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.Size = Vector3.new(1, 1, 1)
Handle.CanCollide = True
Handle.BrickColor = BrickColor.new("Mid gray")
HandleMesh = Instance.new("SpecialMesh", Handle)
HandleMesh.MeshType = "Brick"
HandleMesh.Scale = Vector3.new(1.1, 0.8, 1.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Handle
Weld.C1 = CFrame.new(0, 0.75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Sep = Instance.new("Part",Workspace.anton20)
Sep.TopSurface = "Smooth"
Sep.BottomSurface = "Smooth"
Sep.Size = Vector3.new(1, 1, 1)
Sep.CanCollide = True
Sep.BrickColor = BrickColor.new("Dark stone grey")
SepMesh = Instance.new("SpecialMesh", Sep)
SepMesh.MeshType = "Brick"
SepMesh.Scale = Vector3.new(1.2, 0.1, 1.2)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Sep
Weld.C1 = CFrame.new(0, 0.75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Wedge = Instance.new("Part",Workspace.anton20)
Wedge.TopSurface = "Smooth"
Wedge.BottomSurface = "Smooth"
Wedge.Size = Vector3.new(1, 1, 1)
Wedge.CanCollide = True
Wedge.BrickColor = BrickColor.new("Dark stone grey")
WedgeMesh = Instance.new("SpecialMesh", Wedge)
WedgeMesh.MeshType = "Wedge"
WedgeMesh.Scale = Vector3.new(1.2, 0.3, 0.2)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Wedge
Weld.C1 = CFrame.new(0, 0.5, 0.65)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Wedge3 = Instance.new("Part",Workspace.anton20)
Wedge3.TopSurface = "Smooth"
Wedge3.BottomSurface = "Smooth"
Wedge3.Size = Vector3.new(1, 1, 1)
Wedge3.CanCollide = True
Wedge3.BrickColor = BrickColor.new("Dark stone grey")
Wedge3Mesh = Instance.new("SpecialMesh", Wedge3)
Wedge3Mesh.MeshType = "Wedge"
Wedge3Mesh.Scale = Vector3.new(1.1, 0.8, 0.5)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Wedge3
Weld.C1 = CFrame.new(0, 0, 1.45)*CFrame.fromEulerAnglesXYZ(1.6, 0, 0)
Clawz = Instance.new("Part",Workspace.anton20)
Clawz.TopSurface = "Smooth"
Clawz.BottomSurface = "Smooth"
Clawz.Size = Vector3.new(1, 1, 1)
Clawz.CanCollide = True
Clawz.BrickColor = BrickColor.new("Dark stone grey")
ClawzMesh = Instance.new("SpecialMesh", Clawz)
ClawzMesh.MeshType = "Brick"
ClawzMesh.Scale = Vector3.new(0.2, 1.6, 0.2)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Clawz
Weld.C1 = CFrame.new(0.2, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Clawz2 = Instance.new("Part",Workspace.anton20)
Clawz2.TopSurface = "Smooth"
Clawz2.BottomSurface = "Smooth"
Clawz2.Size = Vector3.new(1, 1, 1)
Clawz2.CanCollide = True
Clawz2.BrickColor = BrickColor.new("Dark stone grey")
Clawz2Mesh = Instance.new("SpecialMesh", Clawz2)
Clawz2Mesh.MeshType = "Brick"
Clawz2Mesh.Scale = Vector3.new(0.2, 1.6, 0.2)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Clawz2
Weld.C1 = CFrame.new(-0.2, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Claws = Instance.new("Part",Workspace.anton20)
Claws.TopSurface = "Smooth"
Claws.BottomSurface = "Smooth"
Claws.Size = Vector3.new(1, 1, 1)
Claws.CanCollide = True
Claws.BrickColor = BrickColor.new("Dark stone grey")
ClawsMesh = Instance.new("SpecialMesh", Claws)
ClawsMesh.MeshType = "Brick"
ClawsMesh.Scale = Vector3.new(0.1, 1, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Claws
Weld.C1 = CFrame.new(-0.4, 1.5, 0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Claws2 = Instance.new("Part",Workspace.anton20)
Claws2.TopSurface = "Smooth"
Claws2.BottomSurface = "Smooth"
Claws2.Size = Vector3.new(1, 1, 1)
Claws2.CanCollide = True
Claws2.BrickColor = BrickColor.new("Dark stone grey")
Claws2Mesh = Instance.new("SpecialMesh", Claws2)
Claws2Mesh.MeshType = "Brick"
Claws2Mesh.Scale = Vector3.new(0.1, 1, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Claws2
Weld.C1 = CFrame.new(0.4, 1.5, 0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Claws3 = Instance.new("Part",Workspace.anton20)
Claws3.TopSurface = "Smooth"
Claws3.BottomSurface = "Smooth"
Claws3.Size = Vector3.new(1, 1, 1)
Claws3.CanCollide = True
Claws3.BrickColor = BrickColor.new("Dark stone grey")
Claws3Mesh = Instance.new("SpecialMesh", Claws3)
Claws3Mesh.MeshType = "Brick"
Claws3Mesh.Scale = Vector3.new(0.1, 1, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Claws3
Weld.C1 = CFrame.new(0, 1.5, 0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Sharp = Instance.new("Part",Workspace.anton20)
Sharp.TopSurface = "Smooth"
Sharp.BottomSurface = "Smooth"
Sharp.Size = Vector3.new(1, 1, 1)
Sharp.CanCollide = True
Sharp.BrickColor = BrickColor.new("Really black")
SharpMesh = Instance.new("SpecialMesh", Sharp)
SharpMesh.MeshType = "Wedge"
SharpMesh.Scale = Vector3.new(0.1, 0.5, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Sharp
Weld.C1 = CFrame.new(-0.4, -1.3, -1.8)*CFrame.fromEulerAnglesXYZ(4, 0, 0)
Sharp2 = Instance.new("Part",Workspace.anton20)
Sharp2.TopSurface = "Smooth"
Sharp2.BottomSurface = "Smooth"
Sharp2.Size = Vector3.new(1, 1, 1)
Sharp2.CanCollide = True
Sharp2.BrickColor = BrickColor.new("Really black")
Sharp2Mesh = Instance.new("SpecialMesh", Sharp2)
Sharp2Mesh.MeshType = "Wedge"
Sharp2Mesh.Scale = Vector3.new(0.1, 0.5, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Sharp2
Weld.C1 = CFrame.new(0, -1.3, -1.8)*CFrame.fromEulerAnglesXYZ(4, 0, 0)
Sharp3 = Instance.new("Part",Workspace.anton20)
Sharp3.TopSurface = "Smooth"
Sharp3.BottomSurface = "Smooth"
Sharp3.Size = Vector3.new(1, 1, 1)
Sharp3.CanCollide = True
Sharp3.BrickColor = BrickColor.new("Really black")
Sharp3Mesh = Instance.new("SpecialMesh", Sharp3)
Sharp3Mesh.MeshType = "Wedge"
Sharp3Mesh.Scale = Vector3.new(0.1, 0.5, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Right Arm"]
Weld.Part1 = Sharp3
Weld.C1 = CFrame.new(0.4, -1.3, -1.8)*CFrame.fromEulerAnglesXYZ(4, 0, 0)
Handle2 = Instance.new("Part",Workspace.anton20)
Handle2.TopSurface = "Smooth"
Handle2.BottomSurface = "Smooth"
Handle2.Size = Vector3.new(1, 1, 1)
Handle2.CanCollide = True
Handle2.BrickColor = BrickColor.new("Mid gray")
Handle2Mesh = Instance.new("SpecialMesh", Handle2)
Handle2Mesh.MeshType = "Brick"
Handle2Mesh.Scale = Vector3.new(1.1, 0.8, 1.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Handle2
Weld.C1 = CFrame.new(0, 0.75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Sep2 = Instance.new("Part",Workspace.anton20)
Sep2.TopSurface = "Smooth"
Sep2.BottomSurface = "Smooth"
Sep2.Size = Vector3.new(1, 1, 1)
Sep2.CanCollide = True
Sep2.BrickColor = BrickColor.new("Dark stone grey")
Sep2Mesh = Instance.new("SpecialMesh", Sep2)
Sep2Mesh.MeshType = "Brick"
Sep2Mesh.Scale = Vector3.new(1.2, 0.1, 1.2)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Sep2
Weld.C1 = CFrame.new(0, 0.75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Wedge2 = Instance.new("Part",Workspace.anton20)
Wedge2.TopSurface = "Smooth"
Wedge2.BottomSurface = "Smooth"
Wedge2.Size = Vector3.new(1, 1, 1)
Wedge2.CanCollide = True
Wedge2.BrickColor = BrickColor.new("Dark stone grey")
Wedge2Mesh = Instance.new("SpecialMesh", Wedge2)
Wedge2Mesh.MeshType = "Wedge"
Wedge2Mesh.Scale = Vector3.new(1.2, 0.3, 0.2)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Wedge2
Weld.C1 = CFrame.new(0, 0.5, 0.65)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Wedge4 = Instance.new("Part",Workspace.anton20)
Wedge4.TopSurface = "Smooth"
Wedge4.BottomSurface = "Smooth"
Wedge4.Size = Vector3.new(1, 1, 1)
Wedge4.CanCollide = True
Wedge4.BrickColor = BrickColor.new("Dark stone grey")
Wedge4Mesh = Instance.new("SpecialMesh", Wedge4)
Wedge4Mesh.MeshType = "Wedge"
Wedge4Mesh.Scale = Vector3.new(1.1, 0.8, 0.5)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Wedge4
Weld.C1 = CFrame.new(0, 0, 1.45)*CFrame.fromEulerAnglesXYZ(1.6, 0, 0)
Clawz3 = Instance.new("Part",Workspace.anton20)
Clawz3.TopSurface = "Smooth"
Clawz3.BottomSurface = "Smooth"
Clawz3.Size = Vector3.new(1, 1, 1)
Clawz3.CanCollide = True
Clawz3.BrickColor = BrickColor.new("Dark stone grey")
Clawz3Mesh = Instance.new("SpecialMesh", Clawz3)
Clawz3Mesh.MeshType = "Brick"
Clawz3Mesh.Scale = Vector3.new(0.2, 1.6, 0.2)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Clawz3
Weld.C1 = CFrame.new(0.2, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Clawz4 = Instance.new("Part",Workspace.anton20)
Clawz4.TopSurface = "Smooth"
Clawz4.BottomSurface = "Smooth"
Clawz4.Size = Vector3.new(1, 1, 1)
Clawz4.CanCollide = True
Clawz4.BrickColor = BrickColor.new("Dark stone grey")
Clawz4Mesh = Instance.new("SpecialMesh", Clawz4)
Clawz4Mesh.MeshType = "Brick"
Clawz4Mesh.Scale = Vector3.new(0.2, 1.6, 0.2)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Clawz4
Weld.C1 = CFrame.new(-0.2, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Claws4 = Instance.new("Part",Workspace.anton20)
Claws4.TopSurface = "Smooth"
Claws4.BottomSurface = "Smooth"
Claws4.Size = Vector3.new(1, 1, 1)
Claws4.CanCollide = True
Claws4.BrickColor = BrickColor.new("Dark stone grey")
Claws4Mesh = Instance.new("SpecialMesh", Claws4)
Claws4Mesh.MeshType = "Brick"
Claws4Mesh.Scale = Vector3.new(0.1, 1, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Claws4
Weld.C1 = CFrame.new(-0.4, 1.5, 0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Claws5 = Instance.new("Part",Workspace.anton20)
Claws5.TopSurface = "Smooth"
Claws5.BottomSurface = "Smooth"
Claws5.Size = Vector3.new(1, 1, 1)
Claws5.CanCollide = True
Claws5.BrickColor = BrickColor.new("Dark stone grey")
Claws5Mesh = Instance.new("SpecialMesh", Claws5)
Claws5Mesh.MeshType = "Brick"
Claws5Mesh.Scale = Vector3.new(0.1, 1, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Claws5
Weld.C1 = CFrame.new(0.4, 1.5, 0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Claws6 = Instance.new("Part",Workspace.anton20)
Claws6.TopSurface = "Smooth"
Claws6.BottomSurface = "Smooth"
Claws6.Size = Vector3.new(1, 1, 1)
Claws6.CanCollide = True
Claws6.BrickColor = BrickColor.new("Dark stone grey")
Claws6Mesh = Instance.new("SpecialMesh", Claws6)
Claws6Mesh.MeshType = "Brick"
Claws6Mesh.Scale = Vector3.new(0.1, 1, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Claws6
Weld.C1 = CFrame.new(0, 1.5, 0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Sharp4 = Instance.new("Part",Workspace.anton20)
Sharp4.TopSurface = "Smooth"
Sharp4.BottomSurface = "Smooth"
Sharp4.Size = Vector3.new(1, 1, 1)
Sharp4.CanCollide = True
Sharp4.BrickColor = BrickColor.new("Really black")
Sharp4Mesh = Instance.new("SpecialMesh", Sharp4)
Sharp4Mesh.MeshType = "Wedge"
Sharp4Mesh.Scale = Vector3.new(0.1, 0.5, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Sharp4
Weld.C1 = CFrame.new(0, -1.3, -1.8)*CFrame.fromEulerAnglesXYZ(4, 0, 0)
Sharp5 = Instance.new("Part",Workspace.anton20)
Sharp5.TopSurface = "Smooth"
Sharp5.BottomSurface = "Smooth"
Sharp5.Size = Vector3.new(1, 1, 1)
Sharp5.CanCollide = True
Sharp5.BrickColor = BrickColor.new("Really black")
Sharp5Mesh = Instance.new("SpecialMesh", Sharp5)
Sharp5Mesh.MeshType = "Wedge"
Sharp5Mesh.Scale = Vector3.new(0.1, 0.5, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Sharp5
Weld.C1 = CFrame.new(0.4, -1.3, -1.8)*CFrame.fromEulerAnglesXYZ(4, 0, 0)
Sharp6 = Instance.new("Part",Workspace.anton20)
Sharp6.TopSurface = "Smooth"
Sharp6.BottomSurface = "Smooth"
Sharp6.Size = Vector3.new(1, 1, 1)
Sharp6.CanCollide = True
Sharp6.BrickColor = BrickColor.new("Really black")
Sharp6Mesh = Instance.new("SpecialMesh", Sharp6)
Sharp6Mesh.MeshType = "Wedge"
Sharp6Mesh.Scale = Vector3.new(0.1, 0.5, 0.1)
Weld = Instance.new("Weld",Workspace.anton20)
Weld.Part0 = game.Workspace.anton20["Left Arm"]
Weld.Part1 = Sharp6
Weld.C1 = CFrame.new(-0.4, -1.3, -1.8)*CFrame.fromEulerAnglesXYZ(4, 0, 0)
Claws.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Sharp.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Claws2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Sharp2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Claws3.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Sharp3.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Claws4.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Sharp4.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Claws5.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Sharp5.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Claws6.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Sharp6.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)
Tool.Deselected:connect(function(mouse)
end)
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
Tool:Destroy()
function Chat(Object,Text,Color)
local Color = BrickColor.new(Color)
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Frame = Instance.new("Frame")
Frame.Parent = G
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 2
Game:GetService("Debris"):AddItem(G,3)
end
mouse.KeyDown:connect(function(key)
key:lower()
if key == "f" then
Chat(workspace.anton20.Head,"Fury slash","Really black")
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 2.1)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.7)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,- 2.1, 0.9)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.5)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 0.3)
wait()
workspace.anton20.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
workspace.anton20.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -2.1, 1.3)
end
end)
