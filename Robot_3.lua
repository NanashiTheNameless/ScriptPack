local player = game.Players.LocalPlayer
local character = player.Character
Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
mouse = game.Players.LocalPlayer:GetMouse()

local humanoidRootPart = character.HumanoidRootPart:Clone()

local leftArm = character["Left Arm"]
local rightArm = character["Right Arm"]
local leftLeg = character["Left Leg"]
local rightLeg = character["Right Leg"]
local torso = character["Torso"]

local leftShoulder = character.Torso["Left Shoulder"]:Clone()
local rightShoulder = character.Torso["Right Shoulder"]:Clone()
local leftHip = character.Torso["Left Hip"]:Clone()
local rightHip = character.Torso["Right Hip"]:Clone()
local neck = character.Torso["Neck"]:Clone()

leftArm.Size = Vector3.new(1,2,1)
leftShoulder.Parent = character.Torso
leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,0)

rightArm.Size = Vector3.new(1,2,1)
rightShoulder.Parent = character.Torso
rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,0)

leftLeg.Size = Vector3.new(1,2,1)
leftHip.Parent = character.Torso
leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,0,0)

rightLeg.Size = Vector3.new(1,2,1)
rightHip.Parent = character.Torso
rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,0,0)

for _, v in ipairs(character:children()) do
if v:IsA("Clothing") then
v:Remove()
end
end

Top = Instance.new("Part",workspace)
Top.TopSurface = "Smooth"
Top.BottomSurface = "Smooth"
Top.CanCollide = True
Top.BrickColor = BrickColor.new("Really black")
TopMesh = Instance.new("SpecialMesh",Top) 
TopMesh.MeshType = "Cylinder"
TopMesh.Scale = Vector3.new(1.02, 0.5, 0.5)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha.Torso
Weld.Part1 = Top
Weld.C1 = CFrame.new(0, -0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Leg = Instance.new("Part",workspace)
Leg.TopSurface = "Smooth"
Leg.BottomSurface = "Smooth"
Leg.CanCollide = True
Leg.BrickColor = BrickColor.new("Really black")
LegMesh = Instance.new("SpecialMesh",Leg) 
LegMesh.MeshType = "Cylinder"
LegMesh.Scale = Vector3.new(0.5, 0.45, 0.5)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha.Torso
Weld.Part1 = Leg
Weld.C1 = CFrame.new(-1, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)

Leg2 = Instance.new("Part",workspace)
Leg2.TopSurface = "Smooth"
Leg2.BottomSurface = "Smooth"
Leg2.CanCollide = True
Leg2.BrickColor = BrickColor.new("Really black")
Leg2Mesh = Instance.new("SpecialMesh",Leg2) 
Leg2Mesh.MeshType = "Cylinder"
Leg2Mesh.Scale = Vector3.new(0.5, 0.45, 0.5)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha.Torso
Weld.Part1 = Leg2
Weld.C1 = CFrame.new(-1, -0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)

Arm = Instance.new("Part",workspace)
Arm.TopSurface = "Smooth"
Arm.BottomSurface = "Smooth"
Arm.CanCollide = True
Arm.BrickColor = BrickColor.new("Bright red")
Armmesh = Instance.new("SpecialMesh",Arm) 
Armmesh.MeshType = "Cylinder"
Armmesh.Scale = Vector3.new(0.2, 1, 1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Right Arm"]
Weld.Part1 = Arm
Weld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)


Arm2 = Instance.new("Part",workspace)
Arm2.TopSurface = "Smooth"
Arm2.BottomSurface = "Smooth"
Arm2.CanCollide = True
Arm2.BrickColor = BrickColor.new("Bright red")
Arm2mesh = Instance.new("SpecialMesh",Arm2) 
Arm2mesh.MeshType = "Cylinder"
Arm2mesh.Scale = Vector3.new(0.2, 1, 1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Left Arm"]
Weld.Part1 = Arm2
Weld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)


Hand = Instance.new("Part",workspace)
Hand.TopSurface = "Smooth"
Hand.BottomSurface = "Smooth"
Hand.CanCollide = True
Hand.Transparency = 0.6
Hand.BrickColor = BrickColor.new("Bright red")
Handmesh = Instance.new("SpecialMesh",Hand) 
Handmesh.MeshType = "Cylinder"
Handmesh.Scale = Vector3.new(0.05, 1, 1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Left Arm"]
Weld.Part1 = Hand
Weld.C1 = CFrame.new(-1, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)


Hand2 = Instance.new("Part",workspace)
Hand2.TopSurface = "Smooth"
Hand2.BottomSurface = "Smooth"
Hand2.CanCollide = True
Hand2.Transparency = 0.6
Hand2.BrickColor = BrickColor.new("Bright red")
Hand2mesh = Instance.new("SpecialMesh",Hand2) 
Hand2mesh.MeshType = "Cylinder"
Hand2mesh.Scale = Vector3.new(0.05, 1, 1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Right Arm"]
Weld.Part1 = Hand2
Weld.C1 = CFrame.new(-1, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)

Lg = Instance.new("Part",workspace)
Lg.TopSurface = "Smooth"
Lg.BottomSurface = "Smooth"
Lg.CanCollide = True
Lg.BrickColor = BrickColor.new("Bright red")
Lgmesh = Instance.new("SpecialMesh",Lg) 
Lgmesh.MeshType = "Cylinder"
Lgmesh.Scale = Vector3.new(0.2, 1, 1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Right Leg"]
Weld.Part1 = Lg
Weld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)


Lg2 = Instance.new("Part",workspace)
Lg2.TopSurface = "Smooth"
Lg2.BottomSurface = "Smooth"
Lg2.CanCollide = True
Lg2.BrickColor = BrickColor.new("Bright red")
Lg2mesh = Instance.new("SpecialMesh",Lg2) 
Lg2mesh.MeshType = "Cylinder"
Lg2mesh.Scale = Vector3.new(0.2, 1, 1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Left Leg"]
Weld.Part1 = Lg2
Weld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)


Foot = Instance.new("Part",workspace)
Foot.TopSurface = "Smooth"
Foot.BottomSurface = "Smooth"
Foot.CanCollide = True
Foot.Transparency = 0.6
Foot.BrickColor = BrickColor.new("Bright red")
Footmesh = Instance.new("SpecialMesh",Foot) 
Footmesh.MeshType = "Cylinder"
Footmesh.Scale = Vector3.new(0.05, 1, 1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Left Leg"]
Weld.Part1 = Foot
Weld.C1 = CFrame.new(-1, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)


Foot2 = Instance.new("Part",workspace)
Foot2.TopSurface = "Smooth"
Foot2.BottomSurface = "Smooth"
Foot2.CanCollide = True
Foot2.Transparency = 0.6
Foot2.BrickColor = BrickColor.new("Bright red")
Foot2mesh = Instance.new("SpecialMesh",Foot2) 
Foot2mesh.MeshType = "Cylinder"
Foot2mesh.Scale = Vector3.new(0.05, 1, 1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Right Leg"]
Weld.Part1 = Foot2
Weld.C1 = CFrame.new(-1, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)

Cannon = Instance.new("Part",workspace)
Cannon.TopSurface = "Smooth"
Cannon.BottomSurface = "Smooth"
Cannon.CanCollide = True
Cannon.Transparency = 0.6
Cannon.BrickColor = BrickColor.new("Bright red")
Cannonmesh = Instance.new("SpecialMesh",Cannon) 
Cannonmesh.MeshType = "Cylinder"
Cannonmesh.Scale = Vector3.new(0.2, 1, 1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha.Torso
Weld.Part1 = Cannon
Weld.C1 = CFrame.new(0.12, 0.05, -0.05)*CFrame.fromEulerAnglesXYZ(0, 1.58, 0)

Weapon = Instance.new("Part",workspace)
Weapon.TopSurface = "Smooth"
Weapon.BottomSurface = "Smooth"
Weapon.CanCollide = True
Weapon.Transparency = 0
Weapon.BrickColor = BrickColor.new("Really black")
Weaponmesh = Instance.new("SpecialMesh",Weapon) 
Weaponmesh.MeshType = "Cylinder"
Weaponmesh.Scale = Vector3.new(0.3, 0.3, 0.3)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Right Arm"]
Weld.Part1 = Weapon
Weld.C1 = CFrame.new(0.12, 0.5, -0.05)*CFrame.fromEulerAnglesXYZ(0, 1.58, 0)

Weapon2 = Instance.new("Part",workspace)
Weapon2.TopSurface = "Smooth"
Weapon2.BottomSurface = "Smooth"
Weapon2.CanCollide = True
Weapon2.Transparency = 0
Weapon2.BrickColor = BrickColor.new("Really black")
Weapon2mesh = Instance.new("SpecialMesh",Weapon2) 
Weapon2mesh.MeshType = "Cylinder"
Weapon2mesh.Scale = Vector3.new(0.3, 0.3, 0.3)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Cha["Left Arm"]
Weld.Part1 = Weapon2
Weld.C1 = CFrame.new(0.12, 0.5, -0.05)*CFrame.fromEulerAnglesXYZ(0, 1.58, 0)

Hand.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
e = Instance.new('Explosion',Workspace)
e.Position = hit.Parent.Torso.Position
e.BlastPressure = 0
e.BlastRadius = 3
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)


Hand2.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
e2 = Instance.new('Explosion',Workspace)
e2.Position = hit.Parent.Torso.Position
e2.BlastPressure = 0
e2.BlastRadius = 3
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)

Cannon.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
e3 = Instance.new('Explosion',Workspace)
e3.Position = hit.Parent.Torso.Position
e3.BlastPressure = 0
e3.BlastRadius = 5
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)

Foot.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
e4 = Instance.new('Explosion',Workspace)
e4.Position = hit.Parent.Torso.Position
e4.BlastPressure = 0
e4.BlastRadius = 3
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)

Foot2.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
e5 = Instance.new('Explosion',Workspace)
e5.Position = hit.Parent.Torso.Position
e5.BlastPressure = 0
e5.BlastRadius = 3
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)

Weapon.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(15)
end
end)

Weapon2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(15)
end
end)

--Key
mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" then

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,-0.2)

wait()

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,-0.2)

wait()

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,-0.2)

wait()

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,-0.2)

wait()

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,-0.2)

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,-0.2)

wait()

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,-0.2)

wait()

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,-0.2)

wait()

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,-0.2)

wait()

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,-0.2)

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,0.2,0)

wait()

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,0.2,0)

wait()

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,0.2,0)

wait()

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,0.2,0)

wait()

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,0.2,0)

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,0.2,0)

wait()

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,0.2,0)

wait()

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,0.2,0)

wait()

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,0.2,0)

wait()

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,0.2,0)

end

if key == "q" then

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,0.2)

wait()

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,0.2)

wait()

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,0.2)

wait()

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,0.2)

wait()

rightShoulder.C0 = rightShoulder.C0 * CFrame.new(0,0,0)
rightShoulder.C1 = rightShoulder.C1 * CFrame.new(0,0,0.2)

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,0.2)

wait()

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,0.2)

wait()

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,0.2)

wait()

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,0.2)

wait()

leftShoulder.C0 = leftShoulder.C0 * CFrame.new(0,0,0)
leftShoulder.C1 = leftShoulder.C1 * CFrame.new(0,0,0.2)

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,-0.2,0)

wait()

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,-0.2,0)

wait()

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,-0.2,0)

wait()

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,-0.2,0)

wait()

leftHip.C0 = leftHip.C0 * CFrame.new(0,0,0)
leftHip.C1 = leftHip.C1 * CFrame.new(0,-0.2,0)

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,-0.2,0)

wait()

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,-0.2,0)

wait()

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,-0.2,0)

wait()

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,-0.2,0)

wait()

rightHip.C0 = rightHip.C0 * CFrame.new(0,0,0)
rightHip.C1 = rightHip.C1 * CFrame.new(0,-0.2,0)

end

if key == "f" then
sound = Cha.Torso
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-0.2,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(0.2,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-0.4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(0.4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(-0.6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(0.6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-0.8,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(0.8,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-1,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(1,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-1.2,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(1.2,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-1.4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(1.4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-1.6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(1.6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-1.8,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(1.8,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-2,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(2,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-2.2,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(2.2,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-2.4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(2.4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(-2.6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(2.6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-2.8,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(2.8,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-3,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(3,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-3.2,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(3.2,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-3.4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(3.4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-3.6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(3.6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-3.8,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(3.8,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-4.2,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(4.2,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-4.4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(4.4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(-4.6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(4.6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-4.8,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(4.8,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-5,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(5,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-5.2,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(5.2,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-5.4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(5.4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-5.6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(5.6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-5.4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(5.4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-5.6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(5.6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-5.8,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(5.8,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-6.2,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(6.2,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-6.4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(6.4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(-6.6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(6.6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-6.8,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(6.8,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-7,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(7,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-7.2,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(7.2,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-7.4,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(7.4,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-7.6,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(7.6,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-7.8,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(7.8,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,300) * CFrame.new(-8,0,0)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,0,-300) * CFrame.new(8,0,0)
wait()
sound["Right Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,900,0) * CFrame.new(0,0.5,-0.5)
sound["Left Shoulder"].C1 = CFrame.fromEulerAnglesXYZ(0,300,0) * CFrame.new(0,0.5,-0.5)
end

if key == "r" then
p = Instance.new("Part",Workspace)
p.BrickColor = BrickColor.new("Bright red")
p.Size = Vector3.new(1,1,8)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Transparency = 0.6
p.CanCollide = True
p.CFrame = Cha.Torso.CFrame *CFrame.new(0,0,-10) --this is what i did
r = Instance.new("BodyVelocity",p)
r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r.velocity = Cha.Torso.CFrame.lookVector * 200
p:BreakJoints()

p.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
cannon = Instance.new('Explosion',Workspace)
cannon.Position = hit.Parent.Torso.Position
cannon.BlastPressure = 20
cannon.BlastRadius = 5
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(15)
end
end
end)
wait(5)
p:Destroy()

end

if key == "z" then
Weaponmesh.Scale = Vector3.new(0.5, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(0.7, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(0.9, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.1, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.3, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.5, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.7, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.9, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(0.5, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(0.7, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(0.9, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(1.1, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(1.3, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(1.5, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(1.7, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.9, 0.3, 0.3)
end

if key == "x" then
Weaponmesh.Scale = Vector3.new(1.9, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.7, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.5, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.3, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(1.1, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(0.9, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(0.7, 0.3, 0.3)
wait()
Weaponmesh.Scale = Vector3.new(0.5, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(1.9, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(1.7, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(1.5, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(1.3, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(1.1, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(0.9, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(0.7, 0.3, 0.3)
wait()
Weapon2mesh.Scale = Vector3.new(0.5, 0.3, 0.3)
end
end)