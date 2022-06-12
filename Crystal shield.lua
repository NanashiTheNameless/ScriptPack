Player = game:GetService("Players").LocalPlayer 

Cha = Player.Character

workspace.ace28545.Torso.Transparency = 1
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

Tool.Name = "Fan"

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

workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.3)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.9)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.1)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.7)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.6, -0.5)
wa:remove()

vDebounce = false



end

end

Tool.Selected:connect(function(mouse)

end)

mouse.Button1Down:connect(function() onClicked(mouse) end)



Ring = Instance.new("Part",Workspace.ace28545)
Ring.TopSurface = "Smooth"
Ring.BottomSurface = "Smooth"
Ring.CanCollide = True
Ring.BrickColor = BrickColor.new("Really black")
Ring.Reflectance = 0
Ring.Transparency = 0
local RingMesh = Instance.new("SpecialMesh",Ring) 
RingMesh.MeshType = "FileMesh" RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingMesh.Scale = Vector3.new(1, 1.7, 1)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Ring
Weld.C1 = CFrame.new(0, 0, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.6, 0)

Crystal = Instance.new("Part",Workspace.ace28545)
Crystal.TopSurface = "Smooth"
Crystal.BottomSurface = "Smooth"
Crystal.CanCollide = True
Crystal.BrickColor = BrickColor.new("Toothpaste")
Crystal.Reflectance = 0.2
Crystal.Transparency = 0.6
local CrystalMesh = Instance.new("SpecialMesh",Crystal) 
CrystalMesh.MeshType = "FileMesh" 
CrystalMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
CrystalMesh.Scale = Vector3.new(0.2, 1.1, 0.6)
cWeld = Instance.new("Weld",Workspace.ace28545)
cWeld.Part0 = game.Workspace.ace28545["Right Arm"]
cWeld.Part1 = Crystal
cWeld.C1 = CFrame.new(-0.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)



workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.6, -0.5)
workspace.ace28545.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.6, 0.5)

wait()
Tool:Destroy()


mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" then
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-2, 0, 0)
workspace.ace28545.Humanoid.MaxHealth = math.huge
CrystalMesh.Scale = Vector3.new(0.4, 1.3, 0.8)
wait()
CrystalMesh.Scale = Vector3.new(0.6, 1.5, 1)
wait()
CrystalMesh.Scale = Vector3.new(0.8, 1.7, 1.2)
wait()
CrystalMesh.Scale = Vector3.new(1, 1.9, 1.4)
wait()
CrystalMesh.Scale = Vector3.new(1, 2.3, 1.8)
wait()
CrystalMesh.Scale = Vector3.new(1, 2.7, 2.2)
wait()
CrystalMesh.Scale = Vector3.new(1, 3.1, 2.6)
wait()
CrystalMesh.Scale = Vector3.new(1, 3.5, 3)
wait()
CrystalMesh.Scale = Vector3.new(1, 4.1, 3.6)
wait()
CrystalMesh.Scale = Vector3.new(1, 4.7, 4.2)
wait()
CrystalMesh.Scale = Vector3.new(1, 5.3, 4.8)
wait()
CrystalMesh.Scale = Vector3.new(1, 5.9, 5.4)
wait()
CrystalMesh.Scale = Vector3.new(1, 5.9, 5.9)
end
if key == "q" then
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.6, -0.5)
workspace.ace28545.Humanoid.MaxHealth = 100
CrystalMesh.Scale = Vector3.new(1, 5.9, 5.9)
wait()
CrystalMesh.Scale = Vector3.new(1, 5.9, 5.4)
wait()
CrystalMesh.Scale = Vector3.new(1, 5.3, 4.8)
wait()
CrystalMesh.Scale = Vector3.new(1, 4.7, 4.2)
wait()
CrystalMesh.Scale = Vector3.new(1, 4.1, 3.6)
wait()
CrystalMesh.Scale = Vector3.new(1, 3.5, 3)
wait()
CrystalMesh.Scale = Vector3.new(1, 3.1, 2.6)
wait()
CrystalMesh.Scale = Vector3.new(1, 2.7, 2.2)
wait()
CrystalMesh.Scale = Vector3.new(1, 2.3, 1.8)
wait()
CrystalMesh.Scale = Vector3.new(1, 1.9, 1.4)
wait()
CrystalMesh.Scale = Vector3.new(0.8, 1.7, 1.2)
wait()
CrystalMesh.Scale = Vector3.new(0.4, 1.3, 0.8)
wait()
CrystalMesh.Scale = Vector3.new(0.2, 1.1, 0.6)
end
if key == "r" then
p2 = Instance.new("Part",Workspace)
p2.Size = Vector3.new(3,3,3)
p2.CFrame = game.Workspace.ace28545.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
p2.BrickColor = BrickColor.new("Toothpaste")
local p2Mesh = Instance.new("SpecialMesh",p2)
p2Mesh.MeshType = "FileMesh" 
p2Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
p2Mesh.Scale = Vector3.new(1, 1, 1)
wait()
p2Mesh.Scale = Vector3.new(2, 2, 2)
wait()
p2Mesh.Scale = Vector3.new(3, 3, 3)
wait()
p2Mesh.Scale = Vector3.new(4, 4, 4)
wait()
p2Mesh.Scale = Vector3.new(5, 5, 5)
wait(1)
p2:Destroy()
p = Instance.new("Part",Workspace)
p.Size = Vector3.new(3,3,3)
p.CFrame = game.Workspace.ace28545.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
p.BrickColor = BrickColor.new("Toothpaste")
local pMesh = Instance.new("SpecialMesh",p)
pMesh.MeshType = "FileMesh" 
pMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
pMesh.Scale = Vector3.new(5, 5, 5)
r = Instance.new("BodyVelocity",p)
r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r.velocity = game.Workspace.ace28545.Torso.CFrame.lookVector * 200
p.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.huge)
end
end
end)

wait(7)
p:Destroy()
end
end)