me = Game.Players.yfc 
char = me.Character 

mo = Instance.new("Model") 
mo.Parent = workspace 
mo.Name = "Replicators" 

base = Instance.new("Part")
base.Parent = mo 
base.Size = Vector3.new(50, 1, 100) 
base.BrickColor = BrickColor.new("Black") 
base.CFrame = workspace.Base.CFrame + Vector3.new(0, 5, -75) 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = base 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(15, 1, 20) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(35, 0, -25) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(4, 1, 15) 
partw.BrickColor = BrickColor.new("White") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(0.99, 0.99, 0.99) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(26, 0, -27.5) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(15, 1, 20) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-35, 0, -25) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(4, 1, 15) 
partw.BrickColor = BrickColor.new("White") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(0.99, 0.99, 0.99) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-26, 0, -27.5) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(50, 20, 1) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(0, -10, -49.5) 
--
partw = Instance.new("WedgePart")
partw.Parent = mo 
partw.Size = Vector3.new(50, 20, 14) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Wedge" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(0, -10.7, 43) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 56) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(24.5, -10, 8) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 56) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-24.5, -10, 8) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 14) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-24.5, -10, -42) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 14) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(24.5, -10, -42) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(18, 20, 1) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-33.5, -10, -34.5) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(4, 20, 1) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-26, -10, -20) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 5) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-28, -10, -18) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 20) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-42, -10, -25) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(18, 20, 1) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(33.5, -10, -34.5) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(4, 20, 1) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(26, -10, -20) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 5) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(28, -10, -18) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 20) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(42, -10, -25) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Transparency = 0.5 
partw.CanCollide = false 
partw.Size = Vector3.new(15, 20, 1) 
partw.BrickColor = BrickColor.new("Bright violet") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(0.99, 0.99, 0.99) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(35, -10, -15.5) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Transparency = 0.5 
partw.CanCollide = false 
partw.Size = Vector3.new(15, 20, 1) 
partw.BrickColor = BrickColor.new("Bright violet") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(0.99, 0.99, 0.99) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-35, -10, -15.5) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(15, 1, 20) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(35, -20, -25) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(4, 1, 15) 
partw.BrickColor = BrickColor.new("White") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(0.99, 0.99, 0.99) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(26, -20, -27.5) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(15, 1, 20) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-35, -20, -25) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(4, 1, 15) 
partw.BrickColor = BrickColor.new("White") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(0.99, 0.99, 0.99) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-26, -20, -27.5) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(50, 1, 86) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(0, -20, -7) 
--
partw = Instance.new("WedgePart")
partw.Parent = mo 
partw.Transparency = 0.5 
partw.Size = Vector3.new(50, 20, 14) 
partw.BrickColor = BrickColor.new("Bright blue") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Wedge" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(0, -30.7, 29) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 72) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(24.5, -30.7, -14) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(1, 20, 72) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(-24.5, -30.7, -14) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(50, 20, 1) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(0, -30.7, -49.5) 
--
partw = Instance.new("Part")
partw.Parent = mo 
partw.Size = Vector3.new(50, 1, 72) 
partw.BrickColor = BrickColor.new("Black") 
partw:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partw 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = partw 
weld.Part0 =  partw 
weld.Part1 = base 
weld.C0 = CFrame.new(0, -40.7, -14) 
--
telea = Instance.new("Part")
telea.Parent = mo 
telea.Size = Vector3.new(5, 1, 5) 
telea.BrickColor = BrickColor.new("White") 
telea:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = telea 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = telea 
weld.Part0 =  telea 
weld.Part1 = base 
weld.C0 = CFrame.new(0, -1, -45) 
--
teleb = Instance.new("Part")
teleb.Parent = mo 
teleb.Size = Vector3.new(5, 1, 5) 
teleb.BrickColor = BrickColor.new("White") 
teleb:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = teleb 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = teleb 
weld.Part0 =  teleb 
weld.Part1 = base 
weld.C0 = CFrame.new(0, -21, -45)
--
seata = Instance.new("VehicleSeat")
seata.Parent = mo 
seata.Size = Vector3.new(2, 1, 2) 
seata.BrickColor = BrickColor.new("White") 
seata:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = seata 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Brick" 
weld = Instance.new("Weld") 
weld.Parent = seata 
weld.Part0 =  seata 
weld.Part1 = base 
weld.C0 = CFrame.new(0, -21, 15)  

telea.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
hit.Parent.Torso.CFrame = base.CFrame * CFrame.new(0, 30, 0)
end 
end) 

teleb.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
hit.Parent.Torso.CFrame = base.CFrame * CFrame.new(0, 10, 0)
end 
end) 

gyro = Instance.new("BodyGyro") 
gyro.Parent = base 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
positio = Instance.new("BodyPosition") 
positio.maxForce = Vector3.new(0, math.huge, 0) 
positio.Parent = base 
positio.position = Vector3.new(0.1, 5.5, 0) 

while true do 
wait() 
if seata.Throttle == 1 then 
seata.Velocity = base.CFrame.lookVector * 50 
end 
if seata.Throttle == 0 then 
seata.Velocity = base.CFrame.lookVector * 0 
end 
if seata.Throttle == -1 then 
seata.Velocity = base.CFrame.lookVector * -50 
end 
if seata.Steer == 1 then 
gyro.cframe = base.CFrame * CFrame.fromEulerAnglesXYZ(0, -0.314, 0) 
base.CFrame = base.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seata.Steer == 0 then 
gyro.cframe = base.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
base.CFrame = base.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seata.Steer == -1 then 
gyro.cframe = base.CFrame * CFrame.fromEulerAnglesXYZ(0, 0.314, 0) 
base.CFrame = base.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
end  
