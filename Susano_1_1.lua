mouse = game.Players.Builderman3464:GetMouse()
 
game:GetService("Chat"):Chat(Workspace.Builderman3464.Head,"It's time Death ended your life...")
wait()
game:GetService("Chat"):Chat(Workspace.Builderman3464.Head,"SUSANOO!")
wait(1)
 
Workspace.Builderman3464.Humanoid.MaxHealth = math.huge
Workspace.Builderman3464.Humanoid.WalkSpeed = 30
Workspace.Builderman3464["Left Arm"].BrickColor = BrickColor.new("Cool yellow")
Workspace.Builderman3464.Torso.BrickColor = BrickColor.new("Cool yellow")
Workspace.Builderman3464.Head.BrickColor = BrickColor.new("Cool yellow")
Workspace.Builderman3464["Right Arm"].BrickColor = BrickColor.new("Cool yellow")
Workspace.Builderman3464["Left Leg"].BrickColor = BrickColor.new("Cool yellow")
Workspace.Builderman3464["Right Leg"].BrickColor = BrickColor.new("Cool yellow")
 
 
-- Main
Handle = Instance.new("Part",Workspace.Builderman3464)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.CanCollide = True
Handle.BrickColor = BrickColor.new("Really Black")
Handle.Reflectance = 0.3
Handle.Transparency = 0.3
local HandleMesh = Instance.new("SpecialMesh",Handle) HandleMesh.MeshType = "FileMesh" HandleMesh.MeshId = "http://www.roblox.com/asset/?id=36780113"
HandleMesh.Scale = Vector3.new(10, 15, 10)
Weld = Instance.new("Weld",Workspace.Builderman3464)
Weld.Part0 = game.Workspace.Builderman3464["Torso"]
Weld.Part1 = Handle
Weld.C1 = CFrame.new(0, -3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
RA = Instance.new("Part",Workspace.Builderman3464)
RA.TopSurface = "Smooth"
RA.BottomSurface = "Smooth"
RA.CanCollide = True
RA.BrickColor = BrickColor.new("Really Black")
RA.Reflectance = 0.3
RA.Transparency = 0.3
local RAMesh = Instance.new("SpecialMesh",RA) RAMesh.MeshType = "FileMesh" RAMesh.MeshId = "http://www.roblox.com/asset/?id=36780156"
RAMesh.Scale = Vector3.new(5, 8, 10)
Weld = Instance.new("Weld",Workspace.Builderman3464)
Weld.Part0 = game.Workspace.Builderman3464["Torso"]
Weld.Part1 = RA
Weld.C1 = CFrame.new(-13, -3, -2)*CFrame.fromEulerAnglesXYZ(0, 0, -.4)
 
LA = Instance.new("Part",Workspace.Builderman3464)
LA.TopSurface = "Smooth"
LA.BottomSurface = "Smooth"
LA.CanCollide = True
LA.BrickColor = BrickColor.new("Really Black")
LA.Reflectance = 0.3
LA.Transparency = 0.3
local LAMesh = Instance.new("SpecialMesh",LA) LAMesh.MeshType = "FileMesh" LAMesh.MeshId = "http://www.roblox.com/asset/?id=36780032"
LAMesh.Scale = Vector3.new(5, 8, 10)
Weld = Instance.new("Weld",Workspace.Builderman3464)
Weld.Part0 = game.Workspace.Builderman3464["Torso"]
Weld.Part1 = LA
Weld.C1 = CFrame.new(13, -3, -2)*CFrame.fromEulerAnglesXYZ(0, 0, .4)
 
Head = Instance.new("Part",Workspace.Builderman3464)
Head.TopSurface = "Smooth"
Head.BottomSurface = "Smooth"
Head.CanCollide = True
Head.BrickColor = BrickColor.new("Really Black")
Head.Reflectance = 0.3
Head.Transparency = 0.3
local HeadMesh = Instance.new("SpecialMesh",Head) HeadMesh.MeshType = "FileMesh" HeadMesh.MeshId = "http://www.roblox.com/asset/?id=62719736"
HeadMesh.Scale = Vector3.new(5, 5, 5)
Weld = Instance.new("Weld",Workspace.Builderman3464)
Weld.Part0 = game.Workspace.Builderman3464["Torso"]
Weld.Part1 = Head
Weld.C1 = CFrame.new(0, -23, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Katana = Instance.new("Part",Workspace.Builderman3464)
Katana.TopSurface = "Smooth"
Katana.BottomSurface = "Smooth"
Katana.CanCollide = True
Katana.BrickColor = BrickColor.new("Really red")
Katana.Reflectance = 0.3
Katana.Transparency = 0.3
local KatanaMesh = Instance.new("SpecialMesh",Katana) KatanaMesh.MeshType = "FileMesh" KatanaMesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
KatanaMesh.Scale = Vector3.new(10, 10, 10)
Weld = Instance.new("Weld",Workspace.Builderman3464)
Weld.Part0 = game.Workspace.Builderman3464["Torso"]
Weld.Part1 = Katana
Weld.C1 = CFrame.new(-14, 0, -10)*CFrame.fromEulerAnglesXYZ(-10, 0, 0)
 
Sphere = Instance.new("Part",Workspace.Builderman3464)
Sphere.TopSurface = "Smooth"
Sphere.BottomSurface = "Smooth"
Sphere.CanCollide = True
Sphere.BrickColor = BrickColor.new("Really Black")
Sphere.Reflectance = 0.3
Sphere.Transparency = 0.3
local SphereMesh = Instance.new("SpecialMesh",Sphere)
SphereMeshType = "Sphere"
SphereMesh.Scale = Vector3.new(4, 6, 4)
Weld = Instance.new("Weld",Workspace.Builderman3464)
Weld.Part0 = game.Workspace.Builderman3464["Torso"]
Weld.Part1 = Sphere
Weld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
H = Instance.new("Part",Workspace.Builderman3464)
H.TopSurface = "Smooth"
H.BottomSurface = "Smooth"
H.CanCollide = True
H.BrickColor = BrickColor.new("Really black")
local HMesh = Instance.new("SpecialMesh",H) HMesh.MeshType = "FileMesh" HMesh.MeshId = "http://www.roblox.com/asset/?id=62246019"
HMesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld",Workspace.Builderman3464)
Weld.Part0 = game.Workspace.Builderman3464["Torso"]
Weld.Part1 = H
Weld.C1 = CFrame.new(0, -1.7, -.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
 
Shield = Instance.new("ForceField",Workspace.Builderman3464)
 
Shirt = Instance.new("Shirt",Character)
 
Shirt.Parent = game.Workspace.Builderman3464
 
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=77026846"
 
 
Pant = Instance.new("Pants",Character)
 
Pant.Parent = game.Workspace.Builderman3464
 
Pant.PantsTemplate = "http://www.roblox.com/asset/?id=89662457"
 
 
 
--kill
Sphere.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(25)
end
end)
