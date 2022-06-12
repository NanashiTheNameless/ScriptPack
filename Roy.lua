Roy = game.Workspace.yfc
Roy.Torso.Transparency = 1
Roy["Right Arm"].Transparency = 1
Roy["Right Leg"].Transparency = 1
Roy["Left Arm"].Transparency = 1
Roy["Left Leg"].Transparency = 1
Roy.Head.Transparency = 1
Roy.Head.Mesh.Scale = Vector3.new(0.1,0.1,0.1)
Running = Roy.Humanoid.Running
for i,v in pairs (Roy:GetChildren()) do
if v.className == "Hat" then
v:Remove()
end
end
--Name Model
nm = Instance.new("Model")
nm.Name = "Roy"
nm.Parent = Roy

nh = Instance.new("Humanoid")
nh.Parent = nm
nh.MaxHealth = 0

np = Instance.new("Part")
np.Parent = nm
np.Position = Vector3.new(0,0,0)
np.BottomSurface = "Smooth"
np.Size = Vector3.new(1,1,1)
np.Name = "Head"
np.Transparency = 0.9
np.formFactor = "Symmetric"
np.BrickColor = BrickColor.new("Cyan")
np.Locked = true
nw = Instance.new("Weld")
nw.Parent = Roy.Head
nw.Part0 = np
nw.Part1 = Roy.Head
nw.C0 = CFrame.new(0,-1.75,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
nhm = Instance.new("BlockMesh")
nhm.Parent = np
nhm.Scale = Vector3.new(0,0,0)
--body Basic
wait()
bp1 = Instance.new("Part")
bp1.Parent = Roy
bp1.BrickColor = BrickColor.new("Cyan")
bp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bp1.CanCollide = false
bp1.Anchored = false
bp1.BottomSurface = "Smooth"
bp1.FormFactor = "Symmetric"
bp1.Size = Vector3.new(1,1,1)
bm1 = Instance.new("BlockMesh") 
bm1.Scale = Roy.Torso.Size+Vector3.new(0,0,0) 
bm1.Parent = bp1 
bw1 = Instance.new("Weld") 
bw1.Part0 = Roy.Torso 
bw1.Part1 = bp1 
bw1.Parent = Roy.Torso 
bw1.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
wait()
bp2 = Instance.new("Part")
bp2.Parent = Roy
bp2.BrickColor = BrickColor.new("Cyan")
bp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bp2.CanCollide = false
bp2.Anchored = false
bp2.BottomSurface = "Smooth"
bp2.FormFactor = "Symmetric"
bp2.Size = Vector3.new(1,1,1)
bm2 = Instance.new("BlockMesh") 
bm2.Scale = Roy["Right Arm"].Size+Vector3.new(-0.2,-0,-0.2) 
bm2.Parent = bp2 
bw2 = Instance.new("Weld") 
bw2.Part0 = Roy["Right Arm"] 
bw2.Part1 = bp2 
bw2.Parent = Roy["Right Arm"] 
bw2.C0 = CFrame.new(0.1,-.1,0)*CFrame.fromEulerAnglesXYZ(0,0,math.rad(25)) 
wait()
sbp2 = Instance.new("Part")
sbp2.Parent = Roy
sbp2.BrickColor = BrickColor.new("Cyan")
sbp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sbp2.CanCollide = false
sbp2.Anchored = false
sbp2.BottomSurface = "Smooth"
sbp2.FormFactor = "Symmetric"
sbp2.Size = Vector3.new(1,1,1)
sbm2 = Instance.new("BlockMesh") 
sbm2.Scale = Roy["Right Arm"].Size+Vector3.new(-0.25,-1.05,-0.25) 
sbm2.Parent = sbp2 
sbw2 = Instance.new("Weld") 
sbw2.Part0 = Roy["Right Arm"]
sbw2.Part1 = sbp2 
sbw2.Parent = Roy["Right Arm"] 
sbw2.C0 = CFrame.new(-0.5,0.6,0)*CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) 
wait()
bp3 = Instance.new("Part")
bp3.Parent = Roy
bp3.BrickColor = BrickColor.new("Cyan")
bp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bp3.CanCollide = false
bp3.Anchored = false
bp3.BottomSurface = "Smooth"
bp3.FormFactor = "Symmetric"
bp3.Size = Vector3.new(1,1,1)
bm3 = Instance.new("BlockMesh") 
bm3.Scale = Roy["Right Leg"].Size+Vector3.new(-0.2,0,-0.2)  
bm3.Parent = bp3 
bw3 = Instance.new("Weld") 
bw3.Part0 = Roy["Right Leg"] 
bw3.Part1 = bp3 
bw3.Parent = Roy["Right Leg"] 
bw3.C0 = CFrame.new(0.15,0,0)*CFrame.fromEulerAnglesXYZ(0,0,math.rad(5))
wait()
sbp3 = Instance.new("Part")
sbp3.Parent = Roy
sbp3.BrickColor = BrickColor.new("Cyan")
sbp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sbp3.CanCollide = false
sbp3.Anchored = false
sbp3.BottomSurface = "Smooth"
sbp3.FormFactor = "Symmetric"
sbp3.Size = Vector3.new(1,1,1)
sbm3 = Instance.new("BlockMesh") 
sbm3.Scale = Roy["Right Arm"].Size+Vector3.new(-0.24,-1.3,-0.4) 
sbm3.Parent = sbp3 
sbw3 = Instance.new("Weld") 
sbw3.Part0 = Roy["Right Leg"]
sbw3.Part1 = sbp3 
sbw3.Parent = Roy["Right Leg"] 
sbw3.C0 = CFrame.new(0.05,1.1,0)*CFrame.fromEulerAnglesXYZ(0,0,0)  
wait()
bp4 = Instance.new("Part")
bp4.Parent = Roy
bp4.BrickColor = BrickColor.new("Cyan")
bp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bp4.CanCollide = false
bp4.Anchored = false
bp4.BottomSurface = "Smooth"
bp4.FormFactor = "Symmetric"
bp4.Size = Vector3.new(1,1,1)
bm4 = Instance.new("BlockMesh") 
bm4.Scale = Roy["Right Leg"].Size+Vector3.new(-0.2,0,-0.2)  
bm4.Parent = bp4 
bw4 = Instance.new("Weld") 
bw4.Part0 = Roy["Left Leg"] 
bw4.Part1 = bp4 
bw4.Parent = Roy["Left Leg"] 
bw4.C0 = CFrame.new(-0.15,0,0)*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-5))
wait()
sbp4 = Instance.new("Part")
sbp4.Parent = Roy
sbp4.BrickColor = BrickColor.new("Cyan")
sbp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sbp4.CanCollide = false
sbp4.Anchored = false
sbp4.BottomSurface = "Smooth"
sbp4.FormFactor = "Symmetric"
sbp4.Size = Vector3.new(1,1,1)
sbm4 = Instance.new("BlockMesh") 
sbm4.Scale = Roy["Right Arm"].Size+Vector3.new(-0.24,-1.3,-0.4) 
sbm4.Parent = sbp4 
sbw4 = Instance.new("Weld") 
sbw4.Part0 = Roy["Left Leg"]
sbw4.Part1 = sbp4 
sbw4.Parent = Roy["Left Leg"] 
sbw4.C0 = CFrame.new(-0.05,1.1,0)*CFrame.fromEulerAnglesXYZ(0,0,0)  
wait()
bp5 = Instance.new("Part")
bp5.Parent = Roy
bp5.BrickColor = BrickColor.new("Cyan")
bp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bp5.CanCollide = false
bp5.Anchored = false
bp5.BottomSurface = "Smooth"
bp5.FormFactor = "Symmetric"
bp5.Size = Vector3.new(1,1,1)
bm5 = Instance.new("BlockMesh") 
bm5.Scale = Roy["Right Leg"].Size+Vector3.new(-0.2,0,-0.2)  
bm5.Parent = bp5 
bw5 = Instance.new("Weld") 
bw5.Part0 = Roy["Left Arm"] 
bw5.Part1 = bp5 
bw5.Parent = Roy["Left Arm"] 
bw5.C0 = CFrame.new(-0.1,-0.1,0)*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-25))
wait()

sbp5 = Instance.new("Part")
sbp5.Parent = Roy
sbp5.BrickColor = BrickColor.new("Cyan")
sbp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sbp5.CanCollide = false
sbp5.Anchored = false
sbp5.BottomSurface = "Smooth"
sbp5.FormFactor = "Symmetric"
sbp5.Size = Vector3.new(1,1,1)
sbm5 = Instance.new("BlockMesh") 
sbm5.Scale = Roy["Right Arm"].Size+Vector3.new(-0.25,-1.05,-0.25) 
sbm5.Parent = sbp5 
sbw5 = Instance.new("Weld") 
sbw5.Part0 = Roy["Left Arm"]
sbw5.Part1 = sbp5 
sbw5.Parent = Roy["Right Arm"] 
sbw5.C0 = CFrame.new(0.5,0.6,0)*CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) 
wait()
--Others
op1 = Instance.new("Part")
op1.Parent = Roy
op1.BrickColor = BrickColor.new("Cyan")
op1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
op1.CanCollide = false
op1.Anchored = false
op1.BottomSurface = "Smooth"
op1.FormFactor = "Symmetric"
op1.Size = Vector3.new(1,1,1)
om1 = Instance.new("BlockMesh") 
om1.Scale = Roy["Left Leg"].Size+Vector3.new(0.1,-1.4,0.75) 
om1.Parent = op1 
ow1 = Instance.new("Weld") 
ow1.Part0 = Roy["Left Leg"] 
ow1.Part1 = op1 
ow1.Parent = Roy["Left Leg"]  
ow1.C0 = CFrame.new(-0.175,-0.65,-0.25)*CFrame.fromEulerAnglesXYZ(0,0,0) 
wait()
op2 = Instance.new("Part")
op2.Parent = Roy
op2.BrickColor = BrickColor.new("Cyan")
op2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
op2.CanCollide = false
op2.Anchored = false
op2.BottomSurface = "Smooth"
op2.FormFactor = "Symmetric"
op2.Size = Vector3.new(1,1,1)
om2 = Instance.new("BlockMesh") 
om2.Scale = Roy["Left Leg"].Size+Vector3.new(0.1,-1.4,0.75) 
om2.Parent = op2 
ow2 = Instance.new("Weld") 
ow2.Part0 = Roy["Right Leg"] 
ow2.Part1 = op2 
ow2.Parent = Roy["Right Leg"]  
ow2.C0 = CFrame.new(0.175,-0.65,-0.25)*CFrame.fromEulerAnglesXYZ(0,0,0) 
wait()
op3 = Instance.new("Part")
op3.Parent = Roy
op3.BrickColor = BrickColor.new("Cyan")
op3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
op3.CanCollide = false
op3.Anchored = false
op3.BottomSurface = "Smooth"
op3.FormFactor = "Symmetric"
op3.Size = Vector3.new(1,1,1)
om3 = Instance.new("BlockMesh") 
om3.Scale = Roy["Left Leg"].Size+Vector3.new(0.05,-0.75,-0.1) 
om3.Parent = op3 
ow3 = Instance.new("Weld") 
ow3.Part0 = Roy["Right Arm"] 
ow3.Part1 = op3 
ow3.Parent = Roy["Right Arm"]  
ow3.C0 = CFrame.new(0.375,-0.65,0)*CFrame.fromEulerAnglesXYZ(0,0,math.rad(5)) 
wait()
op4 = Instance.new("Part")
op4.Parent = Roy
op4.BrickColor = BrickColor.new("Cyan")
op4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
op4.CanCollide = false
op4.Anchored = false
op4.BottomSurface = "Smooth"
op4.FormFactor = "Symmetric"
op4.Size = Vector3.new(1,1,1)
om4 = Instance.new("BlockMesh") 
om4.Scale = Roy["Left Leg"].Size+Vector3.new(0.05,-0.75,-0.1) 
om4.Parent = op4 
ow4 = Instance.new("Weld") 
ow4.Part0 = Roy["Left Arm"] 
ow4.Part1 = op4 
ow4.Parent = Roy["Right Arm"]  
ow4.C0 = CFrame.new(-0.375,-0.65,0)*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-5)) 
-- Leg Claws
wait()
clp1 = Instance.new("Part")
clp1.Parent = Roy
clp1.BrickColor = BrickColor.new("Cyan")
clp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clp1.CanCollide = false
clp1.Anchored = false
clp1.BottomSurface = "Smooth"
clp1.FormFactor = "Symmetric"
clp1.Size = Vector3.new(1,1,1)
clm1 = Instance.new("BlockMesh") 
clm1.Scale = Roy["Left Leg"].Size+Vector3.new(-0.75,-1.5,0.5) 
clm1.Parent = clp1 
clw1 = Instance.new("Weld") 
clw1.Part0 = Roy["Left Leg"] 
clw1.Part1 = clp1 
clw1.Parent = Roy["Left Leg"]  
clw1.C0 = CFrame.new(-0.175,-0.65,-0.75)*CFrame.fromEulerAnglesXYZ(0,0,0) 
wait()
clp2 = Instance.new("Part")
clp2.Parent = Roy
clp2.BrickColor = BrickColor.new("Cyan")
clp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clp2.CanCollide = false
clp2.Anchored = false
clp2.BottomSurface = "Smooth"
clp2.FormFactor = "Symmetric"
clp2.Size = Vector3.new(1,1,1)
clm2 = Instance.new("BlockMesh") 
clm2.Scale = Roy["Left Leg"].Size+Vector3.new(-0.75,-1.5,0.5) 
clm2.Parent = clp2 
clw2 = Instance.new("Weld") 
clw2.Part0 = Roy["Left Leg"] 
clw2.Part1 = clp2 
clw2.Parent = Roy["Left Leg"]  
clw2.C0 = CFrame.new(0.175,-0.7,-0.75)*CFrame.fromEulerAnglesXYZ(0,0,0) 
wait()
clp3 = Instance.new("Part")
clp3.Parent = Roy
clp3.BrickColor = BrickColor.new("Cyan")
clp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clp3.CanCollide = false
clp3.Anchored = false
clp3.BottomSurface = "Smooth"
clp3.FormFactor = "Symmetric"
clp3.Size = Vector3.new(1,1,1)
clm3 = Instance.new("BlockMesh") 
clm3.Scale = Roy["Left Leg"].Size+Vector3.new(-0.75,-1.6,0.5) 
clm3.Parent = clp3 
clw3 = Instance.new("Weld") 
clw3.Part0 = Roy["Left Leg"] 
clw3.Part1 = clp3 
clw3.Parent = Roy["Left Leg"]  
clw3.C0 = CFrame.new(-0.55,-0.7,-0.75)*CFrame.fromEulerAnglesXYZ(0,0,0) 
wait()
clp4 = Instance.new("Part")
clp4.Parent = Roy
clp4.BrickColor = BrickColor.new("Cyan")
clp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clp4.CanCollide = false
clp4.Anchored = false
clp4.BottomSurface = "Smooth"
clp4.FormFactor = "Symmetric"
clp4.Size = Vector3.new(1,1,1)
clm4 = Instance.new("BlockMesh") 
clm4.Scale = Roy["Left Leg"].Size+Vector3.new(-0.75,-1.6,0.5) 
clm4.Parent = clp4 
clw4 = Instance.new("Weld") 
clw4.Part0 = Roy["Right Leg"] 
clw4.Part1 = clp4 
clw4.Parent = Roy["Right Leg"]  
clw4.C0 = CFrame.new(0.175,-0.65,-0.75)*CFrame.fromEulerAnglesXYZ(0,0,0) 
wait()
clp5 = Instance.new("Part")
clp5.Parent = Roy
clp5.BrickColor = BrickColor.new("Cyan")
clp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clp5.CanCollide = false
clp5.Anchored = false
clp5.BottomSurface = "Smooth"
clp5.FormFactor = "Symmetric"
clp5.Size = Vector3.new(1,1,1)
clm5 = Instance.new("BlockMesh") 
clm5.Scale = Roy["Left Leg"].Size+Vector3.new(-0.75,-1.5,0.5) 
clm5.Parent = clp5 
clw5 = Instance.new("Weld") 
clw5.Part0 = Roy["Right Leg"] 
clw5.Part1 = clp5 
clw5.Parent = Roy["Right Leg"]  
clw5.C0 = CFrame.new(-0.175,-0.7,-0.75)*CFrame.fromEulerAnglesXYZ(0,0,0) 
wait()
clp6 = Instance.new("Part")
clp6.Parent = Roy
clp6.BrickColor = BrickColor.new("Cyan")
clp6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clp6.CanCollide = false
clp6.Anchored = false
clp6.BottomSurface = "Smooth"
clp6.FormFactor = "Symmetric"
clp6.Size = Vector3.new(1,1,1)
clm6 = Instance.new("BlockMesh") 
clm6.Scale = Roy["Left Leg"].Size+Vector3.new(-0.75,-1.6,0.5) 
clm6.Parent = clp6 
clw6 = Instance.new("Weld") 
clw6.Part0 = Roy["Right Leg"] 
clw6.Part1 = clp6 
clw6.Parent = Roy["Right Leg"]  
clw6.C0 = CFrame.new(0.55,-0.7,-0.75)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
--Leg Claw Nails
clnp1 = Instance.new("Part")
clnp1.Parent = Roy
clnp1.BrickColor = BrickColor.new("Dark grey")
clnp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clnp1.CanCollide = false
clnp1.Anchored = false
clnp1.BottomSurface = "Smooth"
clnp1.FormFactor = "Symmetric"
clnp1.Size = Vector3.new(1,1,1)
clnm1 = Instance.new("SpecialMesh") 
clnm1.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.6,0.3) 
clnm1.MeshType = "Wedge"
clnm1.Parent = clnp1 
clnw1 = Instance.new("Weld") 
clnw1.Part0 = Roy["Left Leg"] 
clnw1.Part1 = clnp1 
clnw1.Parent = Roy["Left Leg"]  
clnw1.C0 = CFrame.new(-0.175,-0.7,-2.1)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
 wait()
clnp2 = Instance.new("Part")
clnp2.Parent = Roy
clnp2.BrickColor = BrickColor.new("Dark grey")
clnp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clnp2.CanCollide = false
clnp2.Anchored = false
clnp2.BottomSurface = "Smooth"
clnp2.FormFactor = "Symmetric"
clnp2.Size = Vector3.new(1,1,1)
clnm2 = Instance.new("SpecialMesh") 
clnm2.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.75,0.2) 
clnm2.MeshType = "Wedge"
clnm2.Parent = clnp2 
clnw2 = Instance.new("Weld") 
clnw2.Part0 = Roy["Left Leg"] 
clnw2.Part1 = clnp2 
clnw2.Parent = Roy["Left Leg"]  
clnw2.C0 = CFrame.new(0.175,-0.69,-2.1)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0) 
wait()
clnp3 = Instance.new("Part")
clnp3.Parent = Roy
clnp3.BrickColor = BrickColor.new("Dark grey")
clnp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clnp3.CanCollide = false
clnp3.Anchored = false
clnp3.BottomSurface = "Smooth"
clnp3.FormFactor = "Symmetric"
clnp3.Size = Vector3.new(1,1,1)
clnm3 = Instance.new("SpecialMesh") 
clnm3.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.75,0.2) 
clnm3.MeshType = "Wedge"
clnm3.Parent = clnp3 
clnw3 = Instance.new("Weld") 
clnw3.Part0 = Roy["Left Leg"] 
clnw3.Part1 = clnp3 
clnw3.Parent = Roy["Left Leg"]  
clnw3.C0 = CFrame.new(-0.55,-0.69,-2.1)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0) 
wait()
clnp4 = Instance.new("Part")
clnp4.Parent = Roy
clnp4.BrickColor = BrickColor.new("Dark grey")
clnp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clnp4.CanCollide = false
clnp4.Anchored = false
clnp4.BottomSurface = "Smooth"
clnp4.FormFactor = "Symmetric"
clnp4.Size = Vector3.new(1,1,1)
clnm4 = Instance.new("SpecialMesh") 
clnm4.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.6,0.3) 
clnm4.MeshType = "Wedge"
clnm4.Parent = clnp4 
clnw4 = Instance.new("Weld") 
clnw4.Part0 = Roy["Right Leg"] 
clnw4.Part1 = clnp4 
clnw4.Parent = Roy["Right Leg"]  
clnw4.C0 = CFrame.new(0.175,-0.7,-2.1)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
 wait()
clnp5 = Instance.new("Part")
clnp5.Parent = Roy
clnp5.BrickColor = BrickColor.new("Dark grey")
clnp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clnp5.CanCollide = false
clnp5.Anchored = false
clnp5.BottomSurface = "Smooth"
clnp5.FormFactor = "Symmetric"
clnp5.Size = Vector3.new(1,1,1)
clnm5 = Instance.new("SpecialMesh") 
clnm5.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.75,0.2) 
clnm5.MeshType = "Wedge"
clnm5.Parent = clnp5 
clnw5 = Instance.new("Weld") 
clnw5.Part0 = Roy["Right Leg"] 
clnw5.Part1 = clnp5 
clnw5.Parent = Roy["Right Leg"]  
clnw5.C0 = CFrame.new(-0.175,-0.69,-2.1)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0) 
wait()
clnp6 = Instance.new("Part")
clnp6.Parent = Roy
clnp6.BrickColor = BrickColor.new("Dark grey")
clnp6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
clnp6.CanCollide = false
clnp6.Anchored = false
clnp6.BottomSurface = "Smooth"
clnp6.FormFactor = "Symmetric"
clnp6.Size = Vector3.new(1,1,1)
clnm6 = Instance.new("SpecialMesh") 
clnm6.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.75,0.2) 
clnm6.MeshType = "Wedge"
clnm6.Parent = clnp6 
clnw6 = Instance.new("Weld") 
clnw6.Part0 = Roy["Right Leg"]  
clnw6.Part1 = clnp6 
clnw6.Parent = Roy["Right Leg"]   
clnw6.C0 = CFrame.new(0.55,-0.69,-2.1)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0) 
wait()
--Arm Claws
cap1 = Instance.new("Part")
cap1.Parent = Roy
cap1.BrickColor = BrickColor.new("Cyan")
cap1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
cap1.CanCollide = false
cap1.Anchored = false
cap1.BottomSurface = "Smooth"
cap1.FormFactor = "Symmetric"
cap1.Size = Vector3.new(1,1,1)
cam1 = Instance.new("BlockMesh") 
cam1.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.8,0.5)  
cam1.Parent = cap1 
caw1 = Instance.new("Weld") 
caw1.Part0 = Roy["Left Arm"] 
caw1.Part1 = cap1 
caw1.Parent = Roy["Left Arm"]  
caw1.C0 = CFrame.new(-0.05,-1.25,-0.26775)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(95)) 
wait()
cap2 = Instance.new("Part")
cap2.Parent = Roy
cap2.BrickColor = BrickColor.new("Cyan")
cap2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
cap2.CanCollide = false
cap2.Anchored = false
cap2.BottomSurface = "Smooth"
cap2.FormFactor = "Symmetric"
cap2.Size = Vector3.new(1,1,1)
cam2 = Instance.new("BlockMesh") 
cam2.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.8,0.5) 
cam2.Parent = cap2 
caw2 = Instance.new("Weld") 
caw2.Part0 = Roy["Left Arm"] 
caw2.Part1 = cap2 
caw2.Parent = Roy["Left Arm"]  
caw2.C0 = CFrame.new(-0.4,-1.25,-0.26775)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(95)) 
wait()
cap3 = Instance.new("Part")
cap3.Parent = Roy
cap3.BrickColor = BrickColor.new("Cyan")
cap3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
cap3.CanCollide = false
cap3.Anchored = false
cap3.BottomSurface = "Smooth"
cap3.FormFactor = "Symmetric"
cap3.Size = Vector3.new(1,1,1)
cam3 = Instance.new("BlockMesh")
cam3.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.8,0.5) 
cam3.Parent = cap3 
caw3 = Instance.new("Weld") 
caw3.Part0 = Roy["Left Arm"] 
caw3.Part1 = cap3 
caw3.Parent = Roy["Left Arm"] 
caw3.C0 = CFrame.new(-0.75,-1.25,-0.26775)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(95)) 
wait()
cap4 = Instance.new("Part")
cap4.Parent = Roy
cap4.BrickColor = BrickColor.new("Cyan")
cap4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
cap4.CanCollide = false
cap4.Anchored = false
cap4.BottomSurface = "Smooth"
cap4.FormFactor = "Symmetric"
cap4.Size = Vector3.new(1,1,1)
cam4 = Instance.new("BlockMesh") 
cam4.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.8,0.5)
cam4.Parent = cap4 
caw4 = Instance.new("Weld") 
caw4.Part0 = Roy["Right Arm"] 
caw4.Part1 = cap4 
caw4.Parent = Roy["Right Arm"]  
caw4.C0 = CFrame.new(0.05,-1.25,-0.26775)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(-95)) 
wait()
cap5 = Instance.new("Part")
cap5.Parent = Roy
cap5.BrickColor = BrickColor.new("Cyan")
cap5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
cap5.CanCollide = false
cap5.Anchored = false
cap5.BottomSurface = "Smooth"
cap5.FormFactor = "Symmetric"
cap5.Size = Vector3.new(1,1,1)
cam5 = Instance.new("BlockMesh") 
cam5.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.8,0.5) 
cam5.Parent = cap5 
caw5 = Instance.new("Weld") 
caw5.Part0 = Roy["Right Arm"] 
caw5.Part1 = cap5 
caw5.Parent = Roy["Right Arm"]  
caw5.C0 = CFrame.new(0.4,-1.25,-0.26775)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(-95)) 
wait()
cap6 = Instance.new("Part")
cap6.Parent = Roy
cap6.BrickColor = BrickColor.new("Cyan")
cap6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
cap6.CanCollide = false
cap6.Anchored = false
cap6.BottomSurface = "Smooth"
cap6.FormFactor = "Symmetric"
cap6.Size = Vector3.new(1,1,1)
cam6 = Instance.new("BlockMesh") 
cam6.Scale = Roy["Left Leg"].Size+Vector3.new(-0.8,-1.8,0.5) 
cam6.Parent = cap6 
caw6 = Instance.new("Weld") 
caw6.Part0 = Roy["Right Arm"] 
caw6.Part1 = cap6 
caw6.Parent = Roy["Right Arm"]  
caw6.C0 = CFrame.new(0.75,-1.25,-0.26775)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(-95))
wait()
--Arm Claw Nails
canp1 = Instance.new("Part")
canp1.Parent = Roy
canp1.BrickColor = BrickColor.new("Dark grey")
canp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
canp1.CanCollide = false
canp1.Anchored = false
canp1.BottomSurface = "Smooth"
canp1.FormFactor = "Symmetric"
canp1.Size = Vector3.new(1,1,1)
canm1 = Instance.new("SpecialMesh") 
canm1.Scale = Roy["Left Leg"].Size+Vector3.new(-0.9,-1.85,-0.25)  
canm1.MeshType = "Wedge"
canm1.Parent = canp1 
canw1 = Instance.new("Weld") 
canw1.Part0 = Roy["Left Arm"] 
canw1.Part1 = canp1 
canw1.Parent = Roy["Left Arm"]  
canw1.C0 = CFrame.new(-0.05,-2.1,-0.23)*CFrame.fromEulerAnglesXYZ(math.rad(-100),0,0)
 wait()
canp2 = Instance.new("Part")
canp2.Parent = Roy
canp2.BrickColor = BrickColor.new("Dark grey")
canp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
canp2.CanCollide = false
canp2.Anchored = false
canp2.BottomSurface = "Smooth"
canp2.FormFactor = "Symmetric"
canp2.Size = Vector3.new(1,1,1)
canm2 = Instance.new("SpecialMesh") 
canm2.Scale = Roy["Left Leg"].Size+Vector3.new(-0.9,-1.85,-0.25)  
canm2.MeshType = "Wedge"
canm2.Parent = canp2 
canw2 = Instance.new("Weld") 
canw2.Part0 = Roy["Left Arm"] 
canw2.Part1 = canp2 
canw2.Parent = Roy["Left Leg"]  
canw2.C0 = CFrame.new(-0.4,-2.1,-0.23)*CFrame.fromEulerAnglesXYZ(math.rad(-100),0,0) 
wait()
canp3 = Instance.new("Part")
canp3.Parent = Roy
canp3.BrickColor = BrickColor.new("Dark grey")
canp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
canp3.CanCollide = false
canp3.Anchored = false
canp3.BottomSurface = "Smooth"
canp3.FormFactor = "Symmetric"
canp3.Size = Vector3.new(1,1,1)
canm3 = Instance.new("SpecialMesh") 
canm3.Scale = Roy["Left Leg"].Size+Vector3.new(-0.9,-1.85,-0.25) 
canm3.MeshType = "Wedge"
canm3.Parent = canp3 
canw3 = Instance.new("Weld") 
canw3.Part0 = Roy["Left Arm"] 
canw3.Part1 = canp3 
canw3.Parent = Roy["Left Leg"]  
canw3.C0 = CFrame.new(-0.75,-2.1,-0.23)*CFrame.fromEulerAnglesXYZ(math.rad(-100),0,0) 
wait()
canp4 = Instance.new("Part")
canp4.Parent = Roy
canp4.BrickColor = BrickColor.new("Dark grey")
canp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
canp4.CanCollide = false
canp4.Anchored = false
canp4.BottomSurface = "Smooth"
canp4.FormFactor = "Symmetric"
canp4.Size = Vector3.new(1,1,1)
canm4 = Instance.new("SpecialMesh") 
canm4.Scale = Roy["Left Leg"].Size+Vector3.new(-0.9,-1.85,-0.25)  
canm4.MeshType = "Wedge"
canm4.Parent = canp4 
canw4 = Instance.new("Weld") 
canw4.Part0 = Roy["Right Arm"] 
canw4.Part1 = canp4 
canw4.Parent = Roy["Right Leg"]  
canw4.C0 = CFrame.new(0.05,-2.1,-0.23)*CFrame.fromEulerAnglesXYZ(math.rad(-100),0,0)
wait()
canp5 = Instance.new("Part")
canp5.Parent = Roy
canp5.BrickColor = BrickColor.new("Dark grey")
canp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
canp5.CanCollide = false
canp5.Anchored = false
canp5.BottomSurface = "Smooth"
canp5.FormFactor = "Symmetric"
canp5.Size = Vector3.new(1,1,1)
canm5 = Instance.new("SpecialMesh") 
canm5.Scale = Roy["Left Leg"].Size+Vector3.new(-0.9,-1.85,-0.25)  
canm5.MeshType = "Wedge"
canm5.Parent = canp5 
canw5 = Instance.new("Weld") 
canw5.Part0 = Roy["Right Arm"]  
canw5.Part1 = canp5 
canw5.Parent = Roy["Right Leg"]  
canw5.C0 = CFrame.new(0.4,-2.1,-0.23)*CFrame.fromEulerAnglesXYZ(math.rad(-100),0,0) 
wait()
canp6 = Instance.new("Part")
canp6.Parent = Roy
canp6.BrickColor = BrickColor.new("Dark grey")
canp6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
canp6.CanCollide = false
canp6.Anchored = false
canp6.BottomSurface = "Smooth"
canp6.FormFactor = "Symmetric"
canp6.Size = Vector3.new(1,1,1)
canm6 = Instance.new("SpecialMesh") 
canm6.Scale = Roy["Left Leg"].Size+Vector3.new(-0.9,-1.85,-0.25) 
canm6.MeshType = "Wedge"
canm6.Parent = canp6 
canw6 = Instance.new("Weld") 
canw6.Part0 = Roy["Right Arm"]   
canw6.Part1 = canp6 
canw6.Parent = Roy["Right Leg"]   
canw6.C0 = CFrame.new(0.75,-2.1,-0.23)*CFrame.fromEulerAnglesXYZ(math.rad(-100),0,0) 

--neck
wait()
np1 = Instance.new("Part")
np1.Parent = Roy
np1.BrickColor = BrickColor.new("Cyan")
np1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
np1.CanCollide = false
np1.Anchored = false
np1.BottomSurface = "Smooth"
np1.FormFactor = "Symmetric"
np1.Size = Vector3.new(1,1,1)
nm1 = Instance.new("BlockMesh") 
nm1.Scale = Roy.Head.Size+Vector3.new(-1,1,-.3) 
nm1.Parent = np1 
nw1 = Instance.new("Weld") 
nw1.Part0 = Roy.Torso
nw1.Part1 = np1 
nw1.Parent = Roy.Torso 
nw1.C0 = CFrame.new(0,1.75,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
--Head
hp1 = Instance.new("Part")
hp1.Parent = Roy
hp1.BrickColor = BrickColor.new("Cyan")
hp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
hp1.CanCollide = false
hp1.Anchored = false
hp1.BottomSurface = "Smooth"
hp1.FormFactor = "Symmetric"
hp1.Size = Vector3.new(1,1,1)
hm1 = Instance.new("BlockMesh") 
hm1.Scale = Roy.Head.Size+Vector3.new(0,1,1) 
hm1.Parent = hp1 
hw1 = Instance.new("Weld") 
hw1.Part0 = Roy.Head
hw1.Part1 = hp1 
hw1.Parent = Roy.Torso 
hw1.C0 = CFrame.new(0,0.95,-0.35)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
hp2 = Instance.new("Part")
hp2.Parent = Roy
hp2.BrickColor = BrickColor.new("White")
hp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
hp2.CanCollide = false
hp2.Anchored = false
hp2.BottomSurface = "Smooth"
hp2.FormFactor = "Symmetric"
hp2.Size = Vector3.new(1,1,1)
hm2 = Instance.new("BlockMesh") 
hm2.Scale = Roy.Head.Size+Vector3.new(-1.5,-0.5,-0.9) 
hm2.Parent = hp2 
hw2 = Instance.new("Weld") 
hw2.Part0 = Roy.Head
hw2.Part1 = hp2 
hw2.Parent = Roy.Torso 
hw2.C0 = CFrame.new(-0.45,1.25,-1.35)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
hp3 = Instance.new("Part")
hp3.Parent = Roy
hp3.BrickColor = BrickColor.new("White")
hp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
hp3.CanCollide = false
hp3.Anchored = false
hp3.BottomSurface = "Smooth"
hp3.FormFactor = "Symmetric"
hp3.Size = Vector3.new(1,1,1)
hm3 = Instance.new("BlockMesh") 
hm3.Scale = Roy.Head.Size+Vector3.new(-1.5,-0.5,-0.9) 
hm3.Parent = hp3 
hw3 = Instance.new("Weld") 
hw3.Part0 = Roy.Head
hw3.Part1 = hp3
hw3.Parent = Roy.Torso 
hw3.C0 = CFrame.new(0.45,1.25,-1.35)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
hp4 = Instance.new("Part")
hp4.Parent = Roy
hp4.BrickColor = BrickColor.new("Royal purple")
hp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
hp4.CanCollide = false
hp4.Anchored = false
hp4.BottomSurface = "Smooth"
hp4.FormFactor = "Symmetric"
hp4.Size = Vector3.new(1,1,1)
hm4 = Instance.new("BlockMesh") 
hm4.Scale = Roy.Head.Size+Vector3.new(-1.7,-0.7,-0.9) 
hm4.Parent = hp4 
hw4 = Instance.new("Weld") 
hw4.Part0 = hp2
hw4.Part1 = hp4
hw4.Parent = Roy.Torso 
hw4.C0 = CFrame.new(0,0,-0.01)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
hp5 = Instance.new("Part")
hp5.Parent = Roy
hp5.BrickColor = BrickColor.new("Royal purple")
hp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
hp5.CanCollide = false
hp5.Anchored = false
hp5.BottomSurface = "Smooth"
hp5.FormFactor = "Symmetric"
hp5.Size = Vector3.new(1,1,1)
hm5 = Instance.new("BlockMesh") 
hm5.Scale = Roy.Head.Size+Vector3.new(-1.7,-0.7,-0.9) 
hm5.Parent = hp5 
hw5 = Instance.new("Weld") 
hw5.Part0 = hp3
hw5.Part1 = hp5
hw5.Parent = Roy.Torso 
hw5.C0 = CFrame.new(0,0,-0.01)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
hp6 = Instance.new("Part")
hp6.Parent = Roy
hp6.BrickColor = BrickColor.new("Really black")
hp6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
hp6.CanCollide = false
hp6.Anchored = false
hp6.BottomSurface = "Smooth"
hp6.FormFactor = "Symmetric"
hp6.Size = Vector3.new(1,1,1)
hm6 = Instance.new("BlockMesh") 
hm6.Scale = Roy.Head.Size+Vector3.new(-1.8,-0.8,-0.9) 
hm6.Parent = hp6 
hw6 = Instance.new("Weld") 
hw6.Part0 = hp4
hw6.Part1 = hp6
hw6.Parent = Roy.Torso 
hw6.C0 = CFrame.new(0,0,-0.01)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
hp7 = Instance.new("Part")
hp7.Parent = Roy
hp7.BrickColor = BrickColor.new("Really black")
hp7.Position = Roy.Torso.Position+Vector3.new(0,0,0)
hp7.CanCollide = false
hp7.Anchored = false
hp7.BottomSurface = "Smooth"
hp7.FormFactor = "Symmetric"
hp7.Size = Vector3.new(1,1,1)
hm7 = Instance.new("BlockMesh") 
hm7.Scale = Roy.Head.Size+Vector3.new(-1.8,-0.8,-0.9) 
hm7.Parent = hp7 
hw7 = Instance.new("Weld") 
hw7.Part0 = hp5
hw7.Part1 = hp7
hw7.Parent = Roy.Torso 
hw7.C0 = CFrame.new(0,0,-0.01)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
hp8 = Instance.new("Part")
hp8.Parent = Roy
hp8.BrickColor = BrickColor.new("Cyan")
hp8.Position = Roy.Torso.Position+Vector3.new(0,0,0)
hp8.CanCollide = false
hp8.Anchored = false
hp8.BottomSurface = "Smooth"
hp8.FormFactor = "Symmetric"
hp8.Size = Vector3.new(1,1,1)
hm8 = Instance.new("BlockMesh") 
hm8.Scale = Roy.Head.Size+Vector3.new(-.45,-0.5,0.5) 
hm8.Parent = hp8 
hw8 = Instance.new("Weld") 
hw8.Part0 = Roy.Head
hw8.Part1 = hp8
hw8.Parent = Roy.Torso 
hw8.C0 = CFrame.new(0,0.6,-1.9)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
hp9 = Instance.new("Part")
hp9.Parent = Roy
hp9.BrickColor = BrickColor.new("Cyan")
hp9.Position = Roy.Torso.Position+Vector3.new(0,0,0)
hp9.CanCollide = false
hp9.Anchored = false
hp9.BottomSurface = "Smooth"
hp9.FormFactor = "Symmetric"
hp9.Size = Vector3.new(1,1,1)
hm9 = Instance.new("BlockMesh") 
hm9.Scale = Roy.Head.Size+Vector3.new(-.55,-0.8,0.4) 
hm9.Parent = hp9 
hw9 = Instance.new("Weld") 
hw9.Part0 = Roy.Head
hw9.Part1 = hp9
hw9.Parent = Roy.Torso 
hw9.C0 = CFrame.new(0,0.25,-1.75)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
--Snout
sp1 = Instance.new("Part")
sp1.Parent = Roy
sp1.BrickColor = BrickColor.new("Cyan")
sp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp1.CanCollide = false
sp1.Anchored = false
sp1.BottomSurface = "Smooth"
sp1.FormFactor = "Symmetric"
sp1.Size = Vector3.new(1,1,1)
sm1 = Instance.new("CylinderMesh") 
sm1.Scale = Roy.Head.Size+Vector3.new(-1.6,-0.825,-0.6) 
sm1.Parent = sp1 
sw1 = Instance.new("Weld") 
sw1.Part0 = hp8
sw1.Part1 = sp1 
sw1.Parent = Roy.Torso 
sw1.C0 = CFrame.new(-0.325,0.35,-.6)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp2 = Instance.new("Part")
sp2.Parent = Roy
sp2.BrickColor = BrickColor.new("Cyan")
sp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp2.CanCollide = false
sp2.Anchored = false
sp2.BottomSurface = "Smooth"
sp2.FormFactor = "Symmetric"
sp2.Size = Vector3.new(1,1,1)
sm2 = Instance.new("CylinderMesh") 
sm2.Scale = Roy.Head.Size+Vector3.new(-1.6,-0.825,-0.6) 
sm2.Parent = sp2 
sw2 = Instance.new("Weld") 
sw2.Part0 = hp8
sw2.Part1 = sp2 
sw2.Parent = Roy.Torso 
sw2.C0 = CFrame.new(0.325,0.35,-.6)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
--temples
tep1 = Instance.new("Part")
tep1.Parent = Roy
tep1.BrickColor = BrickColor.new("Really black")
tep1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tep1.CanCollide = false
tep1.Anchored = false
tep1.BottomSurface = "Smooth"
tep1.FormFactor = "Symmetric"
tep1.Size = Vector3.new(1,1,1)
tem1 = Instance.new("CylinderMesh") 
tem1.Scale = Roy.Head.Size+Vector3.new(-1.7,-0.825,-0.7)  
tem1.Parent = tep1 
tew1 = Instance.new("Weld") 
tew1.Part0 = sp1
tew1.Part1 = tep1 
tew1.Parent = Roy.Torso 
tew1.C0 = CFrame.new(0,-0.01,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
tep2 = Instance.new("Part")
tep2.Parent = Roy
tep2.BrickColor = BrickColor.new("Really black")
tep2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tep2.CanCollide = false
tep2.Anchored = false
tep2.BottomSurface = "Smooth"
tep2.FormFactor = "Symmetric"
tep2.Size = Vector3.new(1,1,1)
tem2 = Instance.new("CylinderMesh") 
tem2.Scale = Roy.Head.Size+Vector3.new(-1.7,-0.825,-0.7) 
tem2.Parent = tep2 
tew2 = Instance.new("Weld") 
tew2.Part0 = sp2
tew2.Part1 = tep2 
tew2.Parent = Roy.Torso 
tew2.C0 = CFrame.new(-0,-0.01,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
--Fangs
fp1 = Instance.new("Part")
fp1.Parent = Roy
fp1.BrickColor = BrickColor.new("White")
fp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
fp1.CanCollide = false
fp1.Anchored = false
fp1.BottomSurface = "Smooth"
fp1.FormFactor = "Symmetric"
fp1.Size = Vector3.new(1,1,1)
fm1 = Instance.new("SpecialMesh") 
fm1.Scale = Roy.Head.Size+Vector3.new(-1.85,-0.8,-0.4)  
fm1.MeshType = "Wedge"
fm1.Parent = fp1 
fw1 = Instance.new("Weld") 
fw1.Part0 = hp8 
fw1.Part1 = fp1 
fw1.Parent = Roy["Left Arm"]  
fw1.C0 = CFrame.new(-0.3,-.5,-.65)*CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
wait()
fp2 = Instance.new("Part")
fp2.Parent = Roy
fp2.BrickColor = BrickColor.new("White")
fp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
fp2.CanCollide = false
fp2.Anchored = false
fp2.BottomSurface = "Smooth"
fp2.FormFactor = "Symmetric"
fp2.Size = Vector3.new(1,1,1)
fm2 = Instance.new("SpecialMesh") 
fm2.Scale = Roy.Head.Size+Vector3.new(-1.85,-0.8,-0.4)  
fm2.MeshType = "Wedge"
fm2.Parent = fp2 
fw2 = Instance.new("Weld") 
fw2.Part0 = hp8 
fw2.Part1 = fp2 
fw2.Parent = Roy["Left Arm"]  
fw2.C0 = CFrame.new(0.3,-.5,-.65)*CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
wait()
--Tail
tp0 = Instance.new("Part")
tp0.Parent = Roy
tp0.Transparency = 1
tp0.BrickColor = BrickColor.new("Cyan")
tp0.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp0.CanCollide = false
tp0.Anchored = false
tp0.Size = Vector3.new(1,1,1)
tp0.BottomSurface = "Smooth"
tp0.FormFactor = "Symmetric"
tm0 = Instance.new("CylinderMesh") 
tm0.Scale = Vector3.new(0.8,1.2,0.8) 
tm0.Parent = tp0 
tw0 = Instance.new("Weld") 
tw0.Part0 = Roy.Torso 
tw0.Part1 = tp0 
tw0.Parent = Roy.Torso 
tw0.C0 = CFrame.new(0,-0.55,0.6)*CFrame.fromEulerAnglesXYZ(0,0,0) 
wait()
tp1 = Instance.new("Part")
tp1.Parent = Roy
tp1.BrickColor = BrickColor.new("Cyan")
tp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp1.CanCollide = false
tp1.Anchored = false
tp1.Size = Vector3.new(1,1,1)
tp1.BottomSurface = "Smooth"
tp1.FormFactor = "Symmetric"
tm1 = Instance.new("CylinderMesh") 
tm1.Scale = Vector3.new(0.8,1.2,0.8) 
tm1.Parent = tp1 
tw1 = Instance.new("Weld") 
tw1.Part0 = tp0 
tw1.Part1 = tp1 
tw1.Parent = Roy.Torso 
tw1.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.rad(315),0,0) 
wait()
tp2 = Instance.new("Part")
tp2.Parent = Roy
tp2.BrickColor = BrickColor.new("Cyan")
tp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp2.CanCollide = false
tp2.Anchored = false
tp2.Size = Vector3.new(1,1,1)
tp2.BottomSurface = "Smooth"
tp2.FormFactor = "Symmetric"
tm2 = Instance.new("CylinderMesh") 
tm2.Scale = Vector3.new(0.75,1,0.75) 
tm2.Parent = tp2 
tw2 = Instance.new("Weld") 
tw2.Part0 = tp1
tw2.Part1 = tp2
tw2.Parent = Roy.Torso 
tw2.C0 = CFrame.new(0,-0.6,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
tp3 = Instance.new("Part")
tp3.Parent = Roy
tp3.BrickColor = BrickColor.new("Cyan")
tp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp3.CanCollide = false
tp3.Anchored = false
tp3.Size = Vector3.new(1,1,1)
tp3.BottomSurface = "Smooth"
tp3.FormFactor = "Symmetric"
tm3 = Instance.new("CylinderMesh") 
tm3.Scale = Vector3.new(0.7,1,0.7) 
tm3.Parent = tp3 
tw3 = Instance.new("Weld") 
tw3.Part0 = tp2 
tw3.Part1 = tp3
tw3.Parent = Roy.Torso 
tw3.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
tp4 = Instance.new("Part")
tp4.Parent = Roy
tp4.BrickColor = BrickColor.new("Cyan")
tp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp4.CanCollide = false
tp4.Anchored = false
tp4.Size = Vector3.new(1,1,1)
tp4.BottomSurface = "Smooth"
tp4.FormFactor = "Symmetric"
tm4 = Instance.new("CylinderMesh") 
tm4.Scale = Vector3.new(0.65,1,0.65) 
tm4.Parent = tp4 
tw4 = Instance.new("Weld") 
tw4.Part0 = tp3 
tw4.Part1 = tp4
tw4.Parent = Roy.Torso 
tw4.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)--300 mark
wait()
tp5 = Instance.new("Part")
tp5.Parent = Roy
tp5.BrickColor = BrickColor.new("Cyan")
tp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp5.CanCollide = false
tp5.Anchored = false
tp5.Size = Vector3.new(1,1,1)
tp5.BottomSurface = "Smooth"
tp5.FormFactor = "Symmetric"
tm5 = Instance.new("CylinderMesh") 
tm5.Scale = Vector3.new(0.6,1,0.6) 
tm5.Parent = tp5 
tw5 = Instance.new("Weld") 
tw5.Part0 = tp4 
tw5.Part1 = tp5
tw5.Parent = Roy.Torso 
tw5.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
tp6 = Instance.new("Part")
tp6.Parent = Roy
tp6.BrickColor = BrickColor.new("Cyan")
tp6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp6.CanCollide = false
tp6.Anchored = false
tp6.Size = Vector3.new(1,1,1)
tp6.BottomSurface = "Smooth"
tp6.FormFactor = "Symmetric"
tm6 = Instance.new("CylinderMesh") 
tm6.Scale = Vector3.new(0.55,1,0.55) 
tm6.Parent = tp6 
tw6 = Instance.new("Weld") 
tw6.Part0 = tp5 
tw6.Part1 = tp6
tw6.Parent = Roy.Torso 
tw6.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
tp7 = Instance.new("Part")
tp7.Parent = Roy
tp7.BrickColor = BrickColor.new("Cyan")
tp7.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp7.CanCollide = false
tp7.Anchored = false
tp7.Size = Vector3.new(1,1,1)
tp7.BottomSurface = "Smooth"
tp7.FormFactor = "Symmetric"
tm7 = Instance.new("CylinderMesh") 
tm7.Scale = Vector3.new(0.5,1,0.5) 
tm7.Parent = tp7 
tw7 = Instance.new("Weld") 
tw7.Part0 = tp6 
tw7.Part1 = tp7
tw7.Parent = Roy.Torso 
tw7.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
tp8 = Instance.new("Part")
tp8.Parent = Roy
tp8.BrickColor = BrickColor.new("Cyan")
tp8.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp8.CanCollide = false
tp8.Anchored = false
tp8.Size = Vector3.new(1,1,1)
tp8.BottomSurface = "Smooth"
tp8.FormFactor = "Symmetric"
tm8 = Instance.new("CylinderMesh") 
tm8.Scale = Vector3.new(0.45,1,0.45) 
tm8.Parent = tp8 
tw8 = Instance.new("Weld") 
tw8.Part0 = tp7 
tw8.Part1 = tp8
tw8.Parent = Roy.Torso 
tw8.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)--280 mark
wait()
tp9 = Instance.new("Part")
tp9.Parent = Roy
tp9.BrickColor = BrickColor.new("Cyan")
tp9.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp9.CanCollide = false
tp9.Anchored = false
tp9.Size = Vector3.new(1,1,1)
tp9.BottomSurface = "Smooth"
tp9.FormFactor = "Symmetric"
tm9 = Instance.new("CylinderMesh") 
tm9.Scale = Vector3.new(0.4,1,0.4) 
tm9.Parent = tp9 
tw9 = Instance.new("Weld") 
tw9.Part0 = tp8 
tw9.Part1 = tp9
tw9.Parent = Roy.Torso 
tw9.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-2.5),0,0)
wait()
tp10 = Instance.new("Part")
tp10.Parent = Roy
tp10.BrickColor = BrickColor.new("Cyan")
tp10.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp10.CanCollide = false
tp10.Anchored = false
tp10.Size = Vector3.new(1,1,1)
tp10.BottomSurface = "Smooth"
tp10.FormFactor = "Symmetric"
tm10 = Instance.new("CylinderMesh") 
tm10.Scale = Vector3.new(0.35,1,0.35) 
tm10.Parent = tp10 
tw10 = Instance.new("Weld") 
tw10.Part0 = tp9 
tw10.Part1 = tp10
tw10.Parent = Roy.Torso 
tw10.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-2.5),0,0)
wait()

tp11 = Instance.new("Part")
tp11.Parent = Roy
tp11.BrickColor = BrickColor.new("Cyan")
tp11.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp11.CanCollide = false
tp11.Anchored = false
tp11.Size = Vector3.new(1,1,1)
tp11.BottomSurface = "Smooth"
tp11.FormFactor = "Symmetric"
tm11 = Instance.new("CylinderMesh") 
tm11.Scale = Vector3.new(0.3,1,0.3) 
tm11.Parent = tp11 
tw11 = Instance.new("Weld") 
tw11.Part0 = tp10 
tw11.Part1 = tp11
tw11.Parent = Roy.Torso 
tw11.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-2.5),0,0)
wait()

tp12 = Instance.new("Part")
tp12.Parent = Roy
tp12.BrickColor = BrickColor.new("Cyan")
tp12.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp12.CanCollide = false
tp12.Anchored = false
tp12.Size = Vector3.new(1,1,1)
tp12.BottomSurface = "Smooth"
tp12.FormFactor = "Symmetric"
tm12 = Instance.new("CylinderMesh") 
tm12.Scale = Vector3.new(0.25,1,0.25) 
tm12.Parent = tp12 
tw12 = Instance.new("Weld") 
tw12.Part0 = tp11 
tw12.Part1 = tp12
tw12.Parent = Roy.Torso 
tw12.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-2.5),0,0)
wait()
tp13 = Instance.new("Part")
tp13.Parent = Roy
tp13.BrickColor = BrickColor.new("Cyan")
tp13.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp13.CanCollide = false
tp13.Anchored = false
tp13.Size = Vector3.new(1,1,1)
tp13.BottomSurface = "Smooth"
tp13.FormFactor = "Symmetric"
tm13 = Instance.new("CylinderMesh") 
tm13.Scale = Vector3.new(0.2,1,0.2) 
tm13.Parent = tp13 
tw13 = Instance.new("Weld") 
tw13.Part0 = tp12 
tw13.Part1 = tp13
tw13.Parent = Roy.Torso 
tw13.C0 = CFrame.new(0,-0.5,-0.025)*CFrame.fromEulerAnglesXYZ(math.rad(0),0,0)
wait()
tp14 = Instance.new("Part")
tp14.Parent = Roy
tp14.BrickColor = BrickColor.new("Cyan")
tp14.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp14.CanCollide = false
tp14.Anchored = false
tp14.Size = Vector3.new(1,1,1)
tp14.BottomSurface = "Smooth"
tp14.FormFactor = "Symmetric"
tm14 = Instance.new("CylinderMesh") 
tm14.Scale = Vector3.new(0.15,1,0.15) 
tm14.Parent = tp14 
tw14 = Instance.new("Weld") 
tw14.Part0 = tp13 
tw14.Part1 = tp14
tw14.Parent = Roy.Torso 
tw14.C0 = CFrame.new(0,-0.5,-0.025)*CFrame.fromEulerAnglesXYZ(math.rad(0),0,0)
wait()
tp15 = Instance.new("Part")
tp15.Parent = Roy
tp15.BrickColor = BrickColor.new("Cyan")
tp15.Position = Roy.Torso.Position+Vector3.new(0,0,0)
tp15.CanCollide = false
tp15.Anchored = false
tp15.Size = Vector3.new(1,1,1)
tp15.BottomSurface = "Smooth"
tp15.FormFactor = "Symmetric"
tm15 = Instance.new("CylinderMesh") 
tm15.Scale = Vector3.new(0.1,1,0.1) 
tm15.Parent = tp15 
tw15 = Instance.new("Weld") 
tw15.Part0 = tp14 
tw15.Part1 = tp15
tw15.Parent = Roy.Torso 
tw15.C0 = CFrame.new(0,-0.5,-0.025)*CFrame.fromEulerAnglesXYZ(math.rad(0),0,0)
--Belly Plate
wait()
bpp1 = Instance.new("Part")
bpp1.Parent = Roy
bpp1.BrickColor = BrickColor.new("Olive")
bpp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp1.CanCollide = false
bpp1.Anchored = false
bpp1.Size = Vector3.new(1,1,1)
bpp1.BottomSurface = "Smooth"
bpp1.FormFactor = "Symmetric"
bpm1 = Instance.new("BlockMesh") 
bpm1.Scale = Vector3.new(0.8,0.55,0.8) 
bpm1.Parent = bpp1 
bpw1 = Instance.new("Weld") 
bpw1.Part0 = Roy.Torso 
bpw1.Part1 = bpp1 
bpw1.Parent = Roy.Torso 
bpw1.C0 = CFrame.new(0,0.5,-0.15)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp2 = Instance.new("Part")
bpp2.Parent = Roy
bpp2.BrickColor = BrickColor.new("Olive")
bpp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp2.CanCollide = false
bpp2.Anchored = false
bpp2.Size = Vector3.new(1,1,1)
bpp2.BottomSurface = "Smooth"
bpp2.FormFactor = "Symmetric"
bpm2 = Instance.new("BlockMesh") 
bpm2.Scale = Vector3.new(1.6,1.2,0.8) 
bpm2.Parent = bpp2 
bpw2 = Instance.new("Weld") 
bpw2.Part0 = Roy.Torso 
bpw2.Part1 = bpp2 
bpw2.Parent = Roy.Torso 
bpw2.C0 = CFrame.new(0,-0.35,-0.25)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp3 = Instance.new("Part")
bpp3.Parent = Roy
bpp3.BrickColor = BrickColor.new("Olive")
bpp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp3.CanCollide = false
bpp3.Anchored = false
bpp3.Size = Vector3.new(1,1,1)
bpp3.BottomSurface = "Smooth"
bpp3.FormFactor = "Symmetric"
bpm3 = Instance.new("BlockMesh") 
bpm3.Scale = Vector3.new(0.2,0.2,0.8) 
bpm3.Parent = bpp3 
bpw3 = Instance.new("Weld") 
bpw3.Part0 = Roy.Torso 
bpw3.Part1 = bpp3 
bpw3.Parent = Roy.Torso 
bpw3.C0 = CFrame.new(0,-0.975,-0.175)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp4 = Instance.new("Part")
bpp4.Parent = Roy
bpp4.BrickColor = BrickColor.new("Olive")
bpp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp4.CanCollide = false
bpp4.Anchored = false
bpp4.Size = Vector3.new(1,1,1)
bpp4.BottomSurface = "Smooth"
bpp4.FormFactor = "Symmetric"
bpm4 = Instance.new("CylinderMesh") 
bpm4.Scale = tm1.Scale+Vector3.new(0,0,0)
bpm4.Parent = bpp4 
bpw4 = Instance.new("Weld") 
bpw4.Part0 = tp1 
bpw4.Part1 = bpp4 
bpw4.Parent = Roy.Torso 
bpw4.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp5 = Instance.new("Part")
bpp5.Parent = Roy
bpp5.BrickColor = BrickColor.new("Olive")
bpp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp5.CanCollide = false
bpp5.Anchored = false
bpp5.Size = Vector3.new(1,1,1)
bpp5.BottomSurface = "Smooth"
bpp5.FormFactor = "Symmetric"
bpm5 = Instance.new("CylinderMesh") 
bpm5.Scale = tm2.Scale+Vector3.new(0,0,0)
bpm5.Parent = bpp5 
bpw5 = Instance.new("Weld") 
bpw5.Part0 = tp2 
bpw5.Part1 = bpp5 
bpw5.Parent = Roy.Torso 
bpw5.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp6 = Instance.new("Part")
bpp6.Parent = Roy
bpp6.BrickColor = BrickColor.new("Olive")
bpp6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp6.CanCollide = false
bpp6.Anchored = false
bpp6.Size = Vector3.new(1,1,1)
bpp6.BottomSurface = "Smooth"
bpp6.FormFactor = "Symmetric"
bpm6 = Instance.new("CylinderMesh") 
bpm6.Scale = tm3.Scale+Vector3.new(0,0,0)
bpm6.Parent = bpp6 
bpw6 = Instance.new("Weld") 
bpw6.Part0 = tp3 
bpw6.Part1 = bpp6 
bpw6.Parent = Roy.Torso 
bpw6.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp7 = Instance.new("Part")
bpp7.Parent = Roy
bpp7.BrickColor = BrickColor.new("Olive")
bpp7.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp7.CanCollide = false
bpp7.Anchored = false
bpp7.Size = Vector3.new(1,1,1)
bpp7.BottomSurface = "Smooth"
bpp7.FormFactor = "Symmetric"
bpm7 = Instance.new("CylinderMesh") 
bpm7.Scale = tm4.Scale+Vector3.new(0,0,0)
bpm7.Parent = bpp7 
bpw7 = Instance.new("Weld") 
bpw7.Part0 = tp4 
bpw7.Part1 = bpp7 
bpw7.Parent = Roy.Torso 
bpw7.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp8 = Instance.new("Part")
bpp8.Parent = Roy
bpp8.BrickColor = BrickColor.new("Olive")
bpp8.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp8.CanCollide = false
bpp8.Anchored = false
bpp8.Size = Vector3.new(1,1,1)
bpp8.BottomSurface = "Smooth"
bpp8.FormFactor = "Symmetric"
bpm8 = Instance.new("CylinderMesh") 
bpm8.Scale = tm5.Scale+Vector3.new(0,0,0)
bpm8.Parent = bpp8 
bpw8 = Instance.new("Weld") 
bpw8.Part0 = tp5 
bpw8.Part1 = bpp8 
bpw8.Parent = Roy.Torso 
bpw8.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp9 = Instance.new("Part")
bpp9.Parent = Roy
bpp9.BrickColor = BrickColor.new("Olive")
bpp9.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp9.CanCollide = false
bpp9.Anchored = false
bpp9.Size = Vector3.new(1,1,1)
bpp9.BottomSurface = "Smooth"
bpp9.FormFactor = "Symmetric"
bpm9 = Instance.new("CylinderMesh") 
bpm9.Scale = tm6.Scale+Vector3.new(0,0,0)
bpm9.Parent = bpp9 
bpw9 = Instance.new("Weld") 
bpw9.Part0 = tp6 
bpw9.Part1 = bpp9 
bpw9.Parent = Roy.Torso 
bpw9.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp10 = Instance.new("Part")
bpp10.Parent = Roy
bpp10.BrickColor = BrickColor.new("Olive")
bpp10.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp10.CanCollide = false
bpp10.Anchored = false
bpp10.Size = Vector3.new(1,1,1)
bpp10.BottomSurface = "Smooth"
bpp10.FormFactor = "Symmetric"
bpm10 = Instance.new("CylinderMesh") 
bpm10.Scale = tm7.Scale+Vector3.new(0,0,0)
bpm10.Parent = bpp10 
bpw10 = Instance.new("Weld") 
bpw10.Part0 = tp7 
bpw10.Part1 = bpp10 
bpw10.Parent = Roy.Torso 
bpw10.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp11 = Instance.new("Part")
bpp11.Parent = Roy
bpp11.BrickColor = BrickColor.new("Olive")
bpp11.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp11.CanCollide = false
bpp11.Anchored = false
bpp11.Size = Vector3.new(1,1,1)
bpp11.BottomSurface = "Smooth"
bpp11.FormFactor = "Symmetric"
bpm11 = Instance.new("CylinderMesh") 
bpm11.Scale = tm8.Scale+Vector3.new(0,0,0)
bpm11.Parent = bpp11 
bpw11 = Instance.new("Weld") 
bpw11.Part0 = tp8 
bpw11.Part1 = bpp11 
bpw11.Parent = Roy.Torso 
bpw11.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp12 = Instance.new("Part")
bpp12.Parent = Roy
bpp12.BrickColor = BrickColor.new("Olive")
bpp12.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp12.CanCollide = false
bpp12.Anchored = false
bpp12.Size = Vector3.new(1,1,1)
bpp12.BottomSurface = "Smooth"
bpp12.FormFactor = "Symmetric"
bpm12 = Instance.new("CylinderMesh") 
bpm12.Scale = tm9.Scale+Vector3.new(0,0,0)
bpm12.Parent = bpp12 
bpw12 = Instance.new("Weld") 
bpw12.Part0 = tp9 
bpw12.Part1 = bpp12 
bpw12.Parent = Roy.Torso 
bpw12.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp13 = Instance.new("Part")
bpp13.Parent = Roy
bpp13.BrickColor = BrickColor.new("Olive")
bpp13.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp13.CanCollide = false
bpp13.Anchored = false
bpp13.Size = Vector3.new(1,1,1)
bpp13.BottomSurface = "Smooth"
bpp13.FormFactor = "Symmetric"
bpm13 = Instance.new("CylinderMesh") 
bpm13.Scale = tm10.Scale+Vector3.new(0,0,0)
bpm13.Parent = bpp13 
bpw13 = Instance.new("Weld") 
bpw13.Part0 = tp10 
bpw13.Part1 = bpp13 
bpw13.Parent = Roy.Torso 
bpw13.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp14 = Instance.new("Part")
bpp14.Parent = Roy
bpp14.BrickColor = BrickColor.new("Olive")
bpp14.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp14.CanCollide = false
bpp14.Anchored = false
bpp14.Size = Vector3.new(1,1,1)
bpp14.BottomSurface = "Smooth"
bpp14.FormFactor = "Symmetric"
bpm14 = Instance.new("CylinderMesh") 
bpm14.Scale = tm11.Scale+Vector3.new(0,0,0)
bpm14.Parent = bpp14 
bpw14 = Instance.new("Weld") 
bpw14.Part0 = tp11 
bpw14.Part1 = bpp14 
bpw14.Parent = Roy.Torso 
bpw14.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpp15 = Instance.new("Part")
bpp15.Parent = Roy
bpp15.BrickColor = BrickColor.new("Olive")
bpp15.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpp15.CanCollide = false
bpp15.Anchored = false
bpp15.Size = Vector3.new(1,1,1)
bpp15.BottomSurface = "Smooth"
bpp15.FormFactor = "Symmetric"
bpm15 = Instance.new("CylinderMesh") 
bpm15.Scale = tm12.Scale+Vector3.new(0,0,0)
bpm15.Parent = bpp15 
bpw15 = Instance.new("Weld") 
bpw15.Part0 = tp12 
bpw15.Part1 = bpp15 
bpw15.Parent = Roy.Torso 
bpw15.C0 = CFrame.new(0,0,-0.05)*CFrame.fromEulerAnglesXYZ(0,0,0)
--Belly Plate Scales
wait()
bpsp1 = Instance.new("Part")
bpsp1.Parent = Roy
bpsp1.BrickColor = BrickColor.new("Really black")
bpsp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp1.CanCollide = false
bpsp1.Anchored = false
bpsp1.Size = Vector3.new(1,1,1)
bpsp1.BottomSurface = "Smooth"
bpsp1.FormFactor = "Symmetric"
bpsm1 = Instance.new("BlockMesh") 
bpsm1.Scale = Vector3.new(0.85,0.1,0.8) 
bpsm1.Parent = bpsp1 
bpsw1 = Instance.new("Weld") 
bpsw1.Part0 = Roy.Torso 
bpsw1.Part1 = bpsp1 
bpsw1.Parent = Roy.Torso 
bpsw1.C0 = CFrame.new(0,0.75,-0.16)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()

bpsp2 = Instance.new("Part")
bpsp2.Parent = Roy
bpsp2.BrickColor = BrickColor.new("Really black")
bpsp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp2.CanCollide = false
bpsp2.Anchored = false
bpsp2.Size = Vector3.new(1,1,1)
bpsp2.BottomSurface = "Smooth"
bpsp2.FormFactor = "Symmetric"
bpsm2 = Instance.new("BlockMesh") 
bpsm2.Scale = Vector3.new(0.85,0.1,0.8) 
bpsm2.Parent = bpsp2 
bpsw2 = Instance.new("Weld") 
bpsw2.Part0 = Roy.Torso 
bpsw2.Part1 = bpsp2 
bpsw2.Parent = Roy.Torso 
bpsw2.C0 = CFrame.new(0,0.35,-0.16)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpsp3 = Instance.new("Part")
bpsp3.Parent = Roy
bpsp3.BrickColor = BrickColor.new("Really black")
bpsp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp3.CanCollide = false
bpsp3.Anchored = false
bpsp3.Size = Vector3.new(1,1,1)
bpsp3.BottomSurface = "Smooth"
bpsp3.FormFactor = "Symmetric"
bpsm3 = Instance.new("BlockMesh") 
bpsm3.Scale = Vector3.new(1.65,0.1,0.8) 
bpsm3.Parent = bpsp3 
bpsw3 = Instance.new("Weld") 
bpsw3.Part0 = Roy.Torso 
bpsw3.Part1 = bpsp3 
bpsw3.Parent = Roy.Torso 
bpsw3.C0 = CFrame.new(0,0.-0.15,-0.255)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpsp4 = Instance.new("Part")
bpsp4.Parent = Roy
bpsp4.BrickColor = BrickColor.new("Really black")
bpsp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp4.CanCollide = false
bpsp4.Anchored = false
bpsp4.Size = Vector3.new(1,1,1)
bpsp4.BottomSurface = "Smooth"
bpsp4.FormFactor = "Symmetric"
bpsm4 = Instance.new("BlockMesh") 
bpsm4.Scale = Vector3.new(1.65,0.1,0.8) 
bpsm4.Parent = bpsp4 
bpsw4 = Instance.new("Weld") 
bpsw4.Part0 = Roy.Torso 
bpsw4.Part1 = bpsp4 
bpsw4.Parent = Roy.Torso 
bpsw4.C0 = CFrame.new(0,0.-0.55,-0.255)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpsp5 = Instance.new("Part")
bpsp5.Parent = Roy
bpsp5.BrickColor = BrickColor.new("Really black")
bpsp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp5.CanCollide = false
bpsp5.Anchored = false
bpsp5.Size = Vector3.new(1,1,1)
bpsp5.BottomSurface = "Smooth"
bpsp5.FormFactor = "Symmetric"
bpsm5 = Instance.new("BlockMesh") 
bpsm5.Scale = Vector3.new(0.25,0.1,0.8) 
bpsm5.Parent = bpsp5 
bpsw5 = Instance.new("Weld") 
bpsw5.Part0 = Roy.Torso 
bpsw5.Part1 = bpsp5 
bpsw5.Parent = Roy.Torso 
bpsw5.C0 = CFrame.new(0,0.-0.95,-0.255)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpsp6 = Instance.new("Part")
bpsp6.Parent = Roy
bpsp6.BrickColor = BrickColor.new("Really black")
bpsp6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp6.CanCollide = false
bpsp6.Anchored = false
bpsp6.Size = Vector3.new(1,1,1)
bpsp6.BottomSurface = "Smooth"
bpsp6.FormFactor = "Symmetric"
bpsm6 = Instance.new("BlockMesh") 
bpsm6.Scale = Vector3.new(1.65,0.05,0.8) 
bpsm6.Parent = bpsp6 
bpsw6 = Instance.new("Weld") 
bpsw6.Part0 = Roy.Torso 
bpsw6.Part1 = bpsp6 
bpsw6.Parent = Roy.Torso 
bpsw6.C0 = CFrame.new(0,0.-0.9,-0.255)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpsp7 = Instance.new("Part")
bpsp7.Parent = Roy
bpsp7.BrickColor = BrickColor.new("Really black")
bpsp7.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp7.CanCollide = false
bpsp7.Anchored = false
bpsp7.Size = Vector3.new(1,1,1)
bpsp7.BottomSurface = "Smooth"
bpsp7.FormFactor = "Symmetric"
bpsm7 = Instance.new("BlockMesh") 
bpsm7.Scale = Vector3.new(0.25,0.1,0.25) 
bpsm7.Parent = bpsp7 
bpsw7 = Instance.new("Weld") 
bpsw7.Part0 = Roy.Torso 
bpsw7.Part1 = bpsp7 
bpsw7.Parent = Roy.Torso 
bpsw7.C0 = CFrame.new(0,0.-1.05,-0.25)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpsp8 = Instance.new("Part")
bpsp8.Parent = Roy
bpsp8.BrickColor = BrickColor.new("Really black")
bpsp8.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp8.CanCollide = false
bpsp8.Anchored = false
bpsp8.Size = Vector3.new(1,1,1)
bpsp8.BottomSurface = "Smooth"
bpsp8.FormFactor = "Symmetric"
bpsm8 = Instance.new("BlockMesh") 
bpsm8.Scale = Vector3.new(0.25,0.25,0.25) 
bpsm8.Parent = bpsp8 
bpsw8 = Instance.new("Weld") 
bpsw8.Part0 = Roy.Torso 
bpsw8.Part1 = bpsp8 
bpsw8.Parent = Roy.Torso 
bpsw8.C0 = CFrame.new(0,0,0.15)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpsp9 = Instance.new("Part")
bpsp9.Parent = Roy
bpsp9.BrickColor = BrickColor.new("Really black")
bpsp9.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp9.CanCollide = false
bpsp9.Anchored = false
bpsp9.Size = Vector3.new(1,1,1)
bpsp9.BottomSurface = "Smooth"
bpsp9.FormFactor = "Symmetric"
bpsm9 = Instance.new("CylinderMesh") 
bpsm9.Scale = Vector3.new(0.8,0.1,0.8) 
bpsm9.Parent = bpsp9 
bpsw9 = Instance.new("Weld") 
bpsw9.Part0 = bpp5
bpsw9.Part1 = bpsp9 
bpsw9.Parent = Roy.Torso 
bpsw9.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
bpsp10 = Instance.new("Part")
bpsp10.Parent = Roy
bpsp10.BrickColor = BrickColor.new("Really black")
bpsp10.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp10.CanCollide = false
bpsp10.Anchored = false
bpsp10.Size = Vector3.new(1,1,1)
bpsp10.BottomSurface = "Smooth"
bpsp10.FormFactor = "Symmetric"
bpsm10 = Instance.new("CylinderMesh") 
bpsm10.Scale = Vector3.new(0.75,0.1,0.75) 
bpsm10.Parent = bpsp10 
bpsw10 = Instance.new("Weld") 
bpsw10.Part0 = bpp6
bpsw10.Part1 = bpsp10 
bpsw10.Parent = Roy.Torso 
bpsw10.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()

bpsp11 = Instance.new("Part")
bpsp11.Parent = Roy
bpsp11.BrickColor = BrickColor.new("Really black")
bpsp11.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp11.CanCollide = false
bpsp11.Anchored = false
bpsp11.Size = Vector3.new(1,1,1)
bpsp11.BottomSurface = "Smooth"
bpsp11.FormFactor = "Symmetric"
bpsm11 = Instance.new("CylinderMesh") 
bpsm11.Scale = Vector3.new(0.7,0.1,0.7) 
bpsm11.Parent = bpsp11 
bpsw11 = Instance.new("Weld") 
bpsw11.Part0 = bpp7
bpsw11.Part1 = bpsp11 
bpsw11.Parent = Roy.Torso 
bpsw11.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
bpsp12 = Instance.new("Part")
bpsp12.Parent = Roy
bpsp12.BrickColor = BrickColor.new("Really black")
bpsp12.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp12.CanCollide = false
bpsp12.Anchored = false
bpsp12.Size = Vector3.new(1,1,1)
bpsp12.BottomSurface = "Smooth"
bpsp12.FormFactor = "Symmetric"
bpsm12 = Instance.new("CylinderMesh") 
bpsm12.Scale = Vector3.new(0.65,0.1,0.65) 
bpsm12.Parent = bpsp12 
bpsw12 = Instance.new("Weld") 
bpsw12.Part0 = bpp8
bpsw12.Part1 = bpsp12 
bpsw12.Parent = Roy.Torso 
bpsw12.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
bpsp13 = Instance.new("Part")
bpsp13.Parent = Roy
bpsp13.BrickColor = BrickColor.new("Really black")
bpsp13.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp13.CanCollide = false
bpsp13.Anchored = false
bpsp13.Size = Vector3.new(1,1,1)
bpsp13.BottomSurface = "Smooth"
bpsp13.FormFactor = "Symmetric"
bpsm13 = Instance.new("CylinderMesh") 
bpsm13.Scale = Vector3.new(0.6,0.1,0.6) 
bpsm13.Parent = bpsp13 
bpsw13 = Instance.new("Weld") 
bpsw13.Part0 = bpp9
bpsw13.Part1 = bpsp13 
bpsw13.Parent = Roy.Torso 
bpsw13.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
bpsp14 = Instance.new("Part")
bpsp14.Parent = Roy
bpsp14.BrickColor = BrickColor.new("Really black")
bpsp14.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp14.CanCollide = false
bpsp14.Anchored = false
bpsp14.Size = Vector3.new(1,1,1)
bpsp14.BottomSurface = "Smooth"
bpsp14.FormFactor = "Symmetric"
bpsm14 = Instance.new("CylinderMesh") 
bpsm14.Scale = Vector3.new(0.55,0.1,0.55) 
bpsm14.Parent = bpsp14 
bpsw14 = Instance.new("Weld") 
bpsw14.Part0 = bpp10
bpsw14.Part1 = bpsp14 
bpsw14.Parent = Roy.Torso 
bpsw14.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
bpsp15 = Instance.new("Part")
bpsp15.Parent = Roy
bpsp15.BrickColor = BrickColor.new("Really black")
bpsp15.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp15.CanCollide = false
bpsp15.Anchored = false
bpsp15.Size = Vector3.new(1,1,1)
bpsp15.BottomSurface = "Smooth"
bpsp15.FormFactor = "Symmetric"
bpsm15 = Instance.new("CylinderMesh") 
bpsm15.Scale = Vector3.new(0.5,0.1,0.5) 
bpsm15.Parent = bpsp15 
bpsw15 = Instance.new("Weld") 
bpsw15.Part0 = bpp11
bpsw15.Part1 = bpsp15 
bpsw15.Parent = Roy.Torso 
bpsw15.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)

wait()
bpsp16 = Instance.new("Part")
bpsp16.Parent = Roy
bpsp16.BrickColor = BrickColor.new("Really black")
bpsp16.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp16.CanCollide = false
bpsp16.Anchored = false
bpsp16.Size = Vector3.new(1,1,1)
bpsp16.BottomSurface = "Smooth"
bpsp16.FormFactor = "Symmetric"
bpsm16 = Instance.new("CylinderMesh") 
bpsm16.Scale = Vector3.new(0.45,0.1,0.45) 
bpsm16.Parent = bpsp16 
bpsw16 = Instance.new("Weld") 
bpsw16.Part0 = bpp12
bpsw16.Part1 = bpsp16 
bpsw16.Parent = Roy.Torso 
bpsw16.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
bpsp17 = Instance.new("Part")
bpsp17.Parent = Roy
bpsp17.BrickColor = BrickColor.new("Really black")
bpsp17.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp17.CanCollide = false
bpsp17.Anchored = false
bpsp17.Size = Vector3.new(1,1,1)
bpsp17.BottomSurface = "Smooth"
bpsp17.FormFactor = "Symmetric"
bpsm17 = Instance.new("CylinderMesh") 
bpsm17.Scale = Vector3.new(0.4,0.1,0.4) 
bpsm17.Parent = bpsp17 
bpsw17 = Instance.new("Weld") 
bpsw17.Part0 = bpp13
bpsw17.Part1 = bpsp17 
bpsw17.Parent = Roy.Torso 
bpsw17.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
bpsp18 = Instance.new("Part")
bpsp18.Parent = Roy
bpsp18.BrickColor = BrickColor.new("Really black")
bpsp18.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp18.CanCollide = false
bpsp18.Anchored = false
bpsp18.Size = Vector3.new(1,1,1)
bpsp18.BottomSurface = "Smooth"
bpsp18.FormFactor = "Symmetric"
bpsm18 = Instance.new("CylinderMesh") 
bpsm18.Scale = Vector3.new(0.35,0.1,0.35) 
bpsm18.Parent = bpsp18 
bpsw18 = Instance.new("Weld") 
bpsw18.Part0 = bpp14
bpsw18.Part1 = bpsp18 
bpsw18.Parent = Roy.Torso 
bpsw18.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
bpsp19 = Instance.new("Part")
bpsp19.Parent = Roy
bpsp19.BrickColor = BrickColor.new("Really black")
bpsp19.Position = Roy.Torso.Position+Vector3.new(0,0,0)
bpsp19.CanCollide = false
bpsp19.Anchored = false
bpsp19.Size = Vector3.new(1,1,1)
bpsp19.BottomSurface = "Smooth"
bpsp19.FormFactor = "Symmetric"
bpsm19 = Instance.new("CylinderMesh") 
bpsm19.Scale = Vector3.new(0.3,0.1,0.3) 
bpsm19.Parent = bpsp19 
bpsw19 = Instance.new("Weld") 
bpsw19.Part0 = bpp15
bpsw19.Part1 = bpsp19 
bpsw19.Parent = Roy.Torso 
bpsw19.C0 = CFrame.new(0,-0,-0.001)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
wait()
--Spikes
sp1 = Instance.new("Part")
sp1.Parent = Roy
sp1.BrickColor = BrickColor.new("Cyan")
sp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp1.CanCollide = false
sp1.Anchored = false
sp1.Size = Vector3.new(1,1,1)
sp1.BottomSurface = "Smooth"
sp1.FormFactor = "Symmetric"
sm1 = Instance.new("SpecialMesh") 
sm1.Scale = Vector3.new(0.3,1.5,0.5) 
sm1.Parent = sp1 
sm1.MeshType = "Wedge"
sw1 = Instance.new("Weld") 
sw1.Part0 = Roy.Head
sw1.Part1 = sp1 
sw1.Parent = Roy.Torso 
sw1.C0 = CFrame.new(0,2.15,-0.5)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
sp2 = Instance.new("Part")
sp2.Parent = Roy
sp2.BrickColor = BrickColor.new("Cyan")
sp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp2.CanCollide = false
sp2.Anchored = false
sp2.Size = Vector3.new(1,1,1)
sp2.BottomSurface = "Smooth"
sp2.FormFactor = "Symmetric"
sm2 = Instance.new("SpecialMesh") 
sm2.Scale = Vector3.new(0.3,1.25,0.5) 
sm2.Parent = sp2 
sm2.MeshType = "Wedge"
sw2 = Instance.new("Weld") 
sw2.Part0 = Roy.Head
sw2.Part1 = sp2 
sw2.Parent = Roy.Torso 
sw2.C0 = CFrame.new(0,2,0.25)*CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
sp3 = Instance.new("Part")
sp3.Parent = Roy
sp3.BrickColor = BrickColor.new("Cyan")
sp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp3.CanCollide = false
sp3.Anchored = false
sp3.Size = Vector3.new(1,1,1)
sp3.BottomSurface = "Smooth"
sp3.FormFactor = "Symmetric"
sm3 = Instance.new("SpecialMesh") 
sm3.Scale = Vector3.new(0.3,1,0.5) 
sm3.Parent = sp3 
sm3.MeshType = "Wedge"
sw3 = Instance.new("Weld") 
sw3.Part0 = Roy.Head
sw3.Part1 = sp3 
sw3.Parent = Roy.Torso 
sw3.C0 = CFrame.new(0,1.2,1.15)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()

sp4 = Instance.new("Part")
sp4.Parent = Roy
sp4.BrickColor = BrickColor.new("Cyan")
sp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp4.CanCollide = false
sp4.Anchored = false
sp4.Size = Vector3.new(1,1,1)
sp4.BottomSurface = "Smooth"
sp4.FormFactor = "Symmetric"
sm4 = Instance.new("SpecialMesh") 
sm4.Scale = Vector3.new(0.3,0.9,0.5) 
sm4.Parent = sp4 
sm4.MeshType = "Wedge"
sw4 = Instance.new("Weld") 
sw4.Part0 = Roy.Head
sw4.Part1 = sp4 
sw4.Parent = Roy.Torso 
sw4.C0 = CFrame.new(0,0.4,0.8)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp5 = Instance.new("Part")
sp5.Parent = Roy
sp5.BrickColor = BrickColor.new("Cyan")
sp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp5.CanCollide = false
sp5.Anchored = false
sp5.Size = Vector3.new(1,1,1)
sp5.BottomSurface = "Smooth"
sp5.FormFactor = "Symmetric"
sm5 = Instance.new("SpecialMesh") 
sm5.Scale = Vector3.new(0.3,0.85,0.5) 
sm5.Parent = sp5 
sm5.MeshType = "Wedge"
sw5 = Instance.new("Weld") 
sw5.Part0 = Roy.Torso
sw5.Part1 = sp5 
sw5.Parent = Roy.Torso 
sw5.C0 = CFrame.new(0,1.25,0.75)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp6 = Instance.new("Part")
sp6.Parent = Roy
sp6.BrickColor = BrickColor.new("Cyan")
sp6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp6.CanCollide = false
sp6.Anchored = false
sp6.Size = Vector3.new(1,1,1)
sp6.BottomSurface = "Smooth"
sp6.FormFactor = "Symmetric"
sm6 = Instance.new("SpecialMesh") 
sm6.Scale = Vector3.new(0.3,0.7,0.5) 
sm6.Parent = sp6 
sm6.MeshType = "Wedge"
sw6 = Instance.new("Weld") 
sw6.Part0 = Roy.Torso
sw6.Part1 = sp6 
sw6.Parent = Roy.Torso 
sw6.C0 = CFrame.new(0,0.4,0.75)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp7 = Instance.new("Part")
sp7.Parent = Roy
sp7.BrickColor = BrickColor.new("Cyan")
sp7.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp7.CanCollide = false
sp7.Anchored = false
sp7.Size = Vector3.new(1,1,1)
sp7.BottomSurface = "Smooth"
sp7.FormFactor = "Symmetric"
sm7 = Instance.new("SpecialMesh") 
sm7.Scale = Vector3.new(0.3,0.675,0.5) 
sm7.Parent = sp7 
sm7.MeshType = "Wedge"
sw7 = Instance.new("Weld") 
sw7.Part0 = tp1
sw7.Part1 = sp7 
sw7.Parent = Roy.Torso 
sw7.C0 = CFrame.new(0,0,.65)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp8 = Instance.new("Part")
sp8.Parent = Roy
sp8.BrickColor = BrickColor.new("Cyan")
sp8.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp8.CanCollide = false
sp8.Anchored = false
sp8.Size = Vector3.new(1,1,1)
sp8.BottomSurface = "Smooth"
sp8.FormFactor = "Symmetric"
sm8 = Instance.new("SpecialMesh") 
sm8.Scale = Vector3.new(0.3,0.65,0.25) 
sm8.Parent = sp8 
sm8.MeshType = "Wedge"
sw8 = Instance.new("Weld") 
sw8.Part0 = tp2
sw8.Part1 = sp8 
sw8.Parent = Roy.Torso 
sw8.C0 = CFrame.new(0,0,.625)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp9 = Instance.new("Part")
sp9.Parent = Roy
sp9.BrickColor = BrickColor.new("Cyan")
sp9.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp9.CanCollide = false
sp9.Anchored = false
sp9.Size = Vector3.new(1,1,1)
sp9.BottomSurface = "Smooth"
sp9.FormFactor = "Symmetric"
sm9 = Instance.new("SpecialMesh") 
sm9.Scale = Vector3.new(0.24,0.57,0.25) 
sm9.Parent = sp9 
sm9.MeshType = "Wedge"
sw9 = Instance.new("Weld") 
sw9.Part0 = tp3
sw9.Part1 = sp9
sw9.Parent = Roy.Torso 
sw9.C0 = CFrame.new(0,0,.6)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp10 = Instance.new("Part")
sp10.Parent = Roy
sp10.BrickColor = BrickColor.new("Cyan")
sp10.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp10.CanCollide = false
sp10.Anchored = false
sp10.Size = Vector3.new(1,1,1)
sp10.BottomSurface = "Smooth"
sp10.FormFactor = "Symmetric"
sm10 = Instance.new("SpecialMesh") 
sm10.Scale = Vector3.new(0.24,0.57,0.25) 
sm10.Parent = sp10 
sm10.MeshType = "Wedge"
sw10 = Instance.new("Weld") 
sw10.Part0 = tp4
sw10.Part1 = sp10
sw10.Parent = Roy.Torso 
sw10.C0 = CFrame.new(0,0,.56)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()

sp11 = Instance.new("Part")
sp11.Parent = Roy
sp11.BrickColor = BrickColor.new("Cyan")
sp11.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp11.CanCollide = false
sp11.Anchored = false
sp11.Size = Vector3.new(1,1,1)
sp11.BottomSurface = "Smooth"
sp11.FormFactor = "Symmetric"
sm11 = Instance.new("SpecialMesh") 
sm11.Scale = Vector3.new(0.19,0.54,0.25) 
sm11.Parent = sp11 
sm11.MeshType = "Wedge"
sw11 = Instance.new("Weld") 
sw11.Part0 = tp5
sw11.Part1 = sp11
sw11.Parent = Roy.Torso 
sw11.C0 = CFrame.new(0,0,.52)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()

sp12 = Instance.new("Part")
sp12.Parent = Roy
sp12.BrickColor = BrickColor.new("Cyan")
sp12.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp12.CanCollide = false
sp12.Anchored = false
sp12.Size = Vector3.new(1,1,1)
sp12.BottomSurface = "Smooth"
sp12.FormFactor = "Symmetric"
sm12 = Instance.new("SpecialMesh") 
sm12.Scale = Vector3.new(0.19,0.46,0.25) 
sm12.Parent = sp12 
sm12.MeshType = "Wedge"
sw12 = Instance.new("Weld") 
sw12.Part0 = tp6
sw12.Part1 = sp12
sw12.Parent = Roy.Torso 
sw12.C0 = CFrame.new(0,0,.44)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp13 = Instance.new("Part")
sp13.Parent = Roy
sp13.BrickColor = BrickColor.new("Cyan")
sp13.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp13.CanCollide = false
sp13.Anchored = false
sp13.Size = Vector3.new(1,1,1)
sp13.BottomSurface = "Smooth"
sp13.FormFactor = "Symmetric"
sm13 = Instance.new("SpecialMesh") 
sm13.Scale = Vector3.new(0.15,0.46,0.25) 
sm13.Parent = sp13 
sm13.MeshType = "Wedge"
sw13 = Instance.new("Weld") 
sw13.Part0 = tp7
sw13.Part1 = sp13
sw13.Parent = Roy.Torso 
sw13.C0 = CFrame.new(0,0,.44)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp14 = Instance.new("Part")
sp14.Parent = Roy
sp14.BrickColor = BrickColor.new("Cyan")
sp14.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp14.CanCollide = false
sp14.Anchored = false
sp14.Size = Vector3.new(1,1,1)
sp14.BottomSurface = "Smooth"
sp14.FormFactor = "Symmetric"
sm14 = Instance.new("SpecialMesh") 
sm14.Scale = Vector3.new(0.15,0.42,0.25) 
sm14.Parent = sp14 
sm14.MeshType = "Wedge"
sw14 = Instance.new("Weld") 
sw14.Part0 = tp8
sw14.Part1 = sp14
sw14.Parent = Roy.Torso 
sw14.C0 = CFrame.new(0,0,.4)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp15 = Instance.new("Part")
sp15.Parent = Roy
sp15.BrickColor = BrickColor.new("Cyan")
sp15.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp15.CanCollide = false
sp15.Anchored = false
sp15.Size = Vector3.new(1,1,1)
sp15.BottomSurface = "Smooth"
sp15.FormFactor = "Symmetric"
sm15 = Instance.new("SpecialMesh") 
sm15.Scale = Vector3.new(0.13,0.35,0.25) 
sm15.Parent = sp15 
sm15.MeshType = "Wedge"
sw15 = Instance.new("Weld") 
sw15.Part0 = tp9
sw15.Part1 = sp15
sw15.Parent = Roy.Torso 
sw15.C0 = CFrame.new(0,0,.33)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)

wait()
sp16 = Instance.new("Part")
sp16.Parent = Roy
sp16.BrickColor = BrickColor.new("Cyan")
sp16.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp16.CanCollide = false
sp16.Anchored = false
sp16.Size = Vector3.new(1,1,1)
sp16.BottomSurface = "Smooth"
sp16.FormFactor = "Symmetric"
sm16 = Instance.new("SpecialMesh") 
sm16.Scale = Vector3.new(0.13,0.28,0.25) 
sm16.Parent = sp16 
sm16.MeshType = "Wedge"
sw16 = Instance.new("Weld") 
sw16.Part0 = tp10
sw16.Part1 = sp16
sw16.Parent = Roy.Torso 
sw16.C0 = CFrame.new(0,0,.26)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp17 = Instance.new("Part")
sp17.Parent = Roy
sp17.BrickColor = BrickColor.new("Cyan")
sp17.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp17.CanCollide = false
sp17.Anchored = false
sp17.Size = Vector3.new(1,1,1)
sp17.BottomSurface = "Smooth"
sp17.FormFactor = "Symmetric"
sm17 = Instance.new("SpecialMesh") 
sm17.Scale = Vector3.new(0.09,0.28,0.25) 
sm17.Parent = sp17 
sm17.MeshType = "Wedge"
sw17 = Instance.new("Weld") 
sw17.Part0 = tp11
sw17.Part1 = sp17
sw17.Parent = Roy.Torso 
sw17.C0 = CFrame.new(0,0,.26)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp18 = Instance.new("Part")
sp18.Parent = Roy
sp18.BrickColor = BrickColor.new("Cyan")
sp18.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp18.CanCollide = false
sp18.Anchored = false
sp18.Size = Vector3.new(1,1,1)
sp18.BottomSurface = "Smooth"
sp18.FormFactor = "Symmetric"
sm18 = Instance.new("SpecialMesh") 
sm18.Scale = Vector3.new(0.09,0.22,0.25) 
sm18.Parent = sp18 
sm18.MeshType = "Wedge"
sw18 = Instance.new("Weld") 
sw18.Part0 = tp12
sw18.Part1 = sp18
sw18.Parent = Roy.Torso 
sw18.C0 = CFrame.new(0,0,.2)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
sp19 = Instance.new("Part")
sp19.Parent = Roy
sp19.BrickColor = BrickColor.new("Cyan")
sp19.Position = Roy.Torso.Position+Vector3.new(0,0,0)
sp19.CanCollide = false
sp19.Anchored = false
sp19.Size = Vector3.new(1,1,1)
sp19.BottomSurface = "Smooth"
sp19.FormFactor = "Symmetric"
sm19 = Instance.new("SpecialMesh") 
sm19.Scale = Vector3.new(0.07,0.21,0.25) 
sm19.Parent = sp19 
sm19.MeshType = "Wedge"
sw19 = Instance.new("Weld") 
sw19.Part0 = tp13
sw19.Part1 = sp19
sw19.Parent = Roy.Torso 
sw19.C0 = CFrame.new(0,0,.19)*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait()
--Facial Horns
lhp1 = Instance.new("Part")
lhp1.Parent = Roy
lhp1.BrickColor = BrickColor.new("Dark grey")
lhp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
lhp1.CanCollide = false
lhp1.Anchored = false
lhp1.Size = Vector3.new(1,1,1)
lhp1.BottomSurface = "Smooth"
lhp1.FormFactor = "Symmetric"
lhm1 = Instance.new("CylinderMesh") 
lhm1.Scale = Vector3.new(0.9,0.5,0.9) 
lhm1.Parent = lhp1 
lhw1 = Instance.new("Weld") 
lhw1.Part0 = Roy.Head
lhw1.Part1 = lhp1 
lhw1.Parent = Roy.Torso 
lhw1.C0 = CFrame.new(0.575,1.45,0.7)*CFrame.fromEulerAnglesXYZ(math.rad(245),0,math.rad(10))
wait()
lhp2 = Instance.new("Part")
lhp2.Parent = Roy
lhp2.BrickColor = BrickColor.new("Dark grey")
lhp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
lhp2.CanCollide = false
lhp2.Anchored = false
lhp2.Size = Vector3.new(1,1,1)
lhp2.BottomSurface = "Smooth"
lhp2.FormFactor = "Symmetric"
lhm2 = Instance.new("CylinderMesh") 
lhm2.Scale = Vector3.new(0.75,0.5,0.75) 
lhm2.Parent = lhp2 
lhw2 = Instance.new("Weld") 
lhw2.Part0 = lhp1
lhw2.Part1 = lhp2 
lhw2.Parent = Roy.Torso 
lhw2.C0 = CFrame.new(0,-0.475,0)*CFrame.fromEulerAnglesXYZ(math.rad(5),0,0)
wait()
lhp3 = Instance.new("Part")
lhp3.Parent = Roy
lhp3.BrickColor = BrickColor.new("Dark grey")
lhp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
lhp3.CanCollide = false
lhp3.Anchored = false
lhp3.Size = Vector3.new(1,1,1)
lhp3.BottomSurface = "Smooth"
lhp3.FormFactor = "Symmetric"
lhm3 = Instance.new("CylinderMesh") 
lhm3.Scale = Vector3.new(0.6,0.5,0.6) 
lhm3.Parent = lhp3 
lhw3 = Instance.new("Weld") 
lhw3.Part0 = lhp2
lhw3.Part1 = lhp3 
lhw3.Parent = Roy.Torso 
lhw3.C0 = CFrame.new(0,-0.475,0)*CFrame.fromEulerAnglesXYZ(math.rad(5),0,0)
wait()

lhp4 = Instance.new("Part")
lhp4.Parent = Roy
lhp4.BrickColor = BrickColor.new("Dark grey")
lhp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
lhp4.CanCollide = false
lhp4.Anchored = false
lhp4.Size = Vector3.new(1,1,1)
lhp4.BottomSurface = "Smooth"
lhp4.FormFactor = "Symmetric"
lhm4 = Instance.new("CylinderMesh") 
lhm4.Scale = Vector3.new(0.45,0.5,0.45) 
lhm4.Parent = lhp4 
lhw4 = Instance.new("Weld") 
lhw4.Part0 = lhp3
lhw4.Part1 = lhp4 
lhw4.Parent = Roy.Torso 
lhw4.C0 = CFrame.new(0,-0.475,0)*CFrame.fromEulerAnglesXYZ(math.rad(5),0,0)
wait()
lhp5 = Instance.new("Part")
lhp5.Parent = Roy
lhp5.BrickColor = BrickColor.new("Dark grey")
lhp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
lhp5.CanCollide = false
lhp5.Anchored = false
lhp5.Size = Vector3.new(1,1,1)
lhp5.BottomSurface = "Smooth"
lhp5.FormFactor = "Symmetric"
lhm5 = Instance.new("CylinderMesh") 
lhm5.Scale = Vector3.new(0.2,0.5,0.2) 
lhm5.Parent = lhp5 
lhw5 = Instance.new("Weld") 
lhw5.Part0 = lhp4
lhw5.Part1 = lhp5 
lhw5.Parent = Roy.Torso 
lhw5.C0 = CFrame.new(0,-0.475,0)*CFrame.fromEulerAnglesXYZ(math.rad(5),0,0)
wait()
jlhp1 = Instance.new("Part")
jlhp1.Parent = Roy
jlhp1.BrickColor = BrickColor.new("Cyan")
jlhp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
jlhp1.CanCollide = false
jlhp1.Anchored = false
jlhp1.Size = Vector3.new(1,1,1)
jlhp1.BottomSurface = "Smooth"
jlhp1.FormFactor = "Symmetric"
jlhm1 = Instance.new("CylinderMesh") 
jlhm1.Scale = Vector3.new(0.95,0.5,0.95) 
jlhm1.Parent = jlhp1 
jlhw1 = Instance.new("Weld") 
jlhw1.Part0 = Roy.Head
jlhw1.Part1 = jlhp1 
jlhw1.Parent = Roy.Torso 
jlhw1.C0 = CFrame.new(0.525,1.35,0.5)*CFrame.fromEulerAnglesXYZ(math.rad(245),0,math.rad(10))
wait()
rhp1 = Instance.new("Part")
rhp1.Parent = Roy
rhp1.BrickColor = BrickColor.new("Dark grey")
rhp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
rhp1.CanCollide = false
rhp1.Anchored = false
rhp1.Size = Vector3.new(1,1,1)
rhp1.BottomSurface = "Smooth"
rhp1.FormFactor = "Symmetric"
rhm1 = Instance.new("CylinderMesh") 
rhm1.Scale = Vector3.new(0.9,0.5,0.9) 
rhm1.Parent = rhp1 
rhw1 = Instance.new("Weld") 
rhw1.Part0 = Roy.Head
rhw1.Part1 = rhp1 
rhw1.Parent = Roy.Torso 
rhw1.C0 = CFrame.new(-0.575,1.45,0.7)*CFrame.fromEulerAnglesXYZ(math.rad(245),0,math.rad(-10))
wait()
rhp2 = Instance.new("Part")
rhp2.Parent = Roy
rhp2.BrickColor = BrickColor.new("Dark grey")
rhp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
rhp2.CanCollide = false
rhp2.Anchored = false
rhp2.Size = Vector3.new(1,1,1)
rhp2.BottomSurface = "Smooth"
rhp2.FormFactor = "Symmetric"
rhm2 = Instance.new("CylinderMesh") 
rhm2.Scale = Vector3.new(0.75,0.5,0.75) 
rhm2.Parent = rhp2 
rhw2 = Instance.new("Weld") 
rhw2.Part0 = rhp1
rhw2.Part1 = rhp2 
rhw2.Parent = Roy.Torso 
rhw2.C0 = CFrame.new(0,-0.475,0)*CFrame.fromEulerAnglesXYZ(math.rad(5),0,0)
wait()
rhp3 = Instance.new("Part")
rhp3.Parent = Roy
rhp3.BrickColor = BrickColor.new("Dark grey")
rhp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
rhp3.CanCollide = false
rhp3.Anchored = false
rhp3.Size = Vector3.new(1,1,1)
rhp3.BottomSurface = "Smooth"
rhp3.FormFactor = "Symmetric"
rhm3 = Instance.new("CylinderMesh") 
rhm3.Scale = Vector3.new(0.6,0.5,0.6) 
rhm3.Parent = rhp3 
rhw3 = Instance.new("Weld") 
rhw3.Part0 = rhp2
rhw3.Part1 = rhp3 
rhw3.Parent = Roy.Torso 
rhw3.C0 = CFrame.new(0,-0.475,0)*CFrame.fromEulerAnglesXYZ(math.rad(5),0,0)
wait()
rhp4 = Instance.new("Part")
rhp4.Parent = Roy
rhp4.BrickColor = BrickColor.new("Dark grey")
rhp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
rhp4.CanCollide = false
rhp4.Anchored = false
rhp4.Size = Vector3.new(1,1,1)
rhp4.BottomSurface = "Smooth"
rhp4.FormFactor = "Symmetric"
rhm4 = Instance.new("CylinderMesh") 
rhm4.Scale = Vector3.new(0.45,0.5,0.45) 
rhm4.Parent = rhp4 
rhw4 = Instance.new("Weld") 
rhw4.Part0 = rhp3
rhw4.Part1 = rhp4 
rhw4.Parent = Roy.Torso 
rhw4.C0 = CFrame.new(0,-0.475,0)*CFrame.fromEulerAnglesXYZ(math.rad(5),0,0)
wait()
rhp5 = Instance.new("Part")
rhp5.Parent = Roy
rhp5.BrickColor = BrickColor.new("Dark grey")
rhp5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
rhp5.CanCollide = false
rhp5.Anchored = false
rhp5.Size = Vector3.new(1,1,1)
rhp5.BottomSurface = "Smooth"
rhp5.FormFactor = "Symmetric"
rhm5 = Instance.new("CylinderMesh") 
rhm5.Scale = Vector3.new(0.2,0.5,0.2) 
rhm5.Parent = rhp5 
rhw5 = Instance.new("Weld") 
rhw5.Part0 = rhp4
rhw5.Part1 = rhp5 
rhw5.Parent = Roy.Torso 
rhw5.C0 = CFrame.new(0,-0.475,0)*CFrame.fromEulerAnglesXYZ(math.rad(5),0,0)
wait()
jrhp1 = Instance.new("Part")
jrhp1.Parent = Roy
jrhp1.BrickColor = BrickColor.new("Cyan")
jrhp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
jrhp1.CanCollide = false
jrhp1.Anchored = false
jrhp1.Size = Vector3.new(1,1,1)
jrhp1.BottomSurface = "Smooth"
jrhp1.FormFactor = "Symmetric"
jrhm1 = Instance.new("CylinderMesh") 
jrhm1.Scale = Vector3.new(0.95,0.5,0.95) 
jrhm1.Parent = jrhp1 
jrhw1 = Instance.new("Weld") 
jrhw1.Part0 = Roy.Head
jrhw1.Part1 = jrhp1 
jrhw1.Parent = Roy.Torso 
jrhw1.C0 = CFrame.new(-0.525,1.35,0.5)*CFrame.fromEulerAnglesXYZ(math.rad(245),0,math.rad(-10))
wait()
--Wings
wp1 = Instance.new("Part")
wp1.Parent = Roy
wp1.BrickColor = BrickColor.new("Cyan")
wp1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
wp1.CanCollide = false
wp1.Anchored = false
wp1.Size = Vector3.new(1,1,1)
wp1.BottomSurface = "Smooth"
wp1.FormFactor = "Symmetric"
wm1 = Instance.new("CylinderMesh") 
wm1.Scale = Vector3.new(0.95,0.5,0.95) 
wm1.Parent = wp1 
ww1 = Instance.new("Weld") 
ww1.Part0 = Roy.Torso
ww1.Part1 = wp1 
ww1.Parent = Roy.Torso 
ww1.C0 = CFrame.new(-0.6,0.3,0.25)*CFrame.fromEulerAnglesXYZ(math.rad(-25),0,math.rad(-110))
wait()
wp2 = Instance.new("Part")
wp2.Parent = Roy
wp2.BrickColor = BrickColor.new("Cyan")
wp2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
wp2.CanCollide = false
wp2.Anchored = false
wp2.Size = Vector3.new(1,1,1)
wp2.BottomSurface = "Smooth"
wp2.FormFactor = "Symmetric"
wm2 = Instance.new("CylinderMesh") 
wm2.Scale = Vector3.new(0.95,0.5,0.95) 
wm2.Parent = wp2 
ww2 = Instance.new("Weld") 
ww2.Part0 = Roy.Torso
ww2.Part1 = wp2 
ww2.Parent = Roy.Torso 
ww2.C0 = CFrame.new(0.6,0.3,0.25)*CFrame.fromEulerAnglesXYZ(math.rad(-25),0,math.rad(110))
wait()
wp3 = Instance.new("Part")
wp3.Parent = Roy
wp3.BrickColor = BrickColor.new("Cyan")
wp3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
wp3.CanCollide = false
wp3.Anchored = false
wp3.Size = Vector3.new(1,1,1)
wp3.BottomSurface = "Smooth"
wp3.FormFactor = "Symmetric"
wp3.Transparency = 0.99
wm3 = Instance.new("BlockMesh") 
wm3.Scale = Vector3.new(0.1,3,3) 
wm3.Parent = wp3 
ww3 = Instance.new("Weld") 
ww3.Part0 = Roy.Torso
ww3.Part1 = wp3 
ww3.Parent = Roy.Torso 
ww3.C0 = CFrame.new(-1.1,1,2.05)*CFrame.fromEulerAnglesXYZ(math.rad(15),math.rad(-15),0)
wp3s1 = Instance.new("Decal") 
wp3s1.Face = "Left"
wp3s1.Texture = "http://www.roblox.com/asset/?id=77039505" 
wp3s1.Parent = wp3
wp3s1.Specular = 0
wp3s2 = Instance.new("Decal") 
wp3s2.Face = "Right"
wp3s2.Texture = "http://www.roblox.com/asset/?id=77039480" 
wp3s2.Parent = wp3
wp3s2.Specular = 0
wait()
wp4 = Instance.new("Part")
wp4.Parent = Roy
wp4.Transparency = 0.99
wp4.BrickColor = BrickColor.new("Cyan")
wp4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
wp4.CanCollide = false
wp4.Anchored = false
wp4.Size = Vector3.new(1,1,1)
wp4.BottomSurface = "Smooth"
wp4.FormFactor = "Symmetric"
wm4 = Instance.new("BlockMesh") 
wm4.Scale = Vector3.new(0.1,3,3) 
wm4.Parent = wp4 
ww4 = Instance.new("Weld") 
ww4.Part0 = Roy.Torso
ww4.Part1 = wp4 
ww4.Parent = Roy.Torso 
ww4.C0 = CFrame.new(1.1,1,2.05)*CFrame.fromEulerAnglesXYZ(math.rad(15),math.rad(15),0)
wp4s1 = Instance.new("Decal") 
wp4s1.Face = "Left"
wp4s1.Texture = "http://www.roblox.com/asset/?id=77039505" 
wp4s1.Parent = wp4
wp4s1.Specular = 0
wp4s2 = Instance.new("Decal") 
wp4s2.Face = "Right"
wp4s2.Texture = "http://www.roblox.com/asset/?id=77039480" 
wp4s2.Parent = wp4
wp4s2.Specular = 0
wait()
GuiHolder = "yfc" 
PlayerGui = game.Players:findFirstChild(GuiHolder).PlayerGui 
Character = game.Players:findFirstChild(GuiHolder).Character 
BGGui = Instance.new("ScreenGui") 
BGGui.Parent = PlayerGui 
BGGui.Name = "BGGui" 
BG = Instance.new("ImageLabel") 
BG.Parent = BGGui
BG.Size = UDim2.new(0, 215, 0, 215) 
BG.Position = UDim2.new(0, 0, 0, 150) -- To get one right under this do (0, 0, 0, 200) 
BG.BackgroundColor3 = Color3.new(157,51,255)
BG.BackgroundTransparency = 0.5
Ta = Instance.new("TextButton") 
Ta.Parent = BG
Ta.Size = UDim2.new(0, 50, 0, 50) 
Ta.Position = UDim2.new(0, 5, 0, 5) -- To get one right under this do (0, 0, 0, 200) 
Ta.Text = "look" 

function looking1() 

for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(-0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(-0.0249,0,0)


Roy.Torso.Neck.DesiredAngle = 0.3
wait()
end
wait(2)
for i = 1, 8 do
hw4.C0 = hw4.C0*CFrame.new(0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = -0.3
wait()
end
wait(2)
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(-0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(-0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = 0
wait()
end
end 
Ta.MouseButton1Down:connect(looking1)  


Ta2 = Instance.new("TextButton") 
Ta2.Parent = BG
Ta2.Size = UDim2.new(0, 50, 0, 50) 
Ta2.Position = UDim2.new(0, 60, 0, 5) -- To get one right under this do (0, 0, 0, 200) 
Ta2.Text = "cross-eye"
function looking2() 

for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(0.025,0,0)
hw5.C0 = hw5.C0*CFrame.new(-0.025,0,0)

wait()
end
wait(2)
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(-0.025,0,0)
hw5.C0 = hw5.C0*CFrame.new(0.025,0,0)
wait()
end

end 
Ta2.MouseButton1Down:connect(looking2)

Ta3 = Instance.new("TextButton") 
Ta3.Parent = BG
Ta3.Size = UDim2.new(0, 50, 0, 50) 
Ta3.Position = UDim2.new(0, 115, 0, 5) -- To get one right under this do (0, 0, 0, 200) 
Ta3.Text = "WingStretch"
function wingstretch() 

for i = 1, 4 do
ww4.C0 = ww4.C0*CFrame.new(-0.025,0,0.1)
ww3.C0 = ww3.C0*CFrame.new(0.025,0,0.1)
wm4.Scale = wm4.Scale+Vector3.new(0,-0.05,0.1)
wm3.Scale = wm3.Scale+Vector3.new(0,-0.05,0.1)
wait()
end
wait(2)
for i = 1, 4 do
ww4.C0 = ww4.C0*CFrame.new(0.025,0,-0.1)
ww3.C0 = ww3.C0*CFrame.new(-0.025,0,-0.1)
wm4.Scale = wm4.Scale+Vector3.new(0,0.05,-0.1)
wm3.Scale = wm3.Scale+Vector3.new(0,0.05,-0.1)
wait()
end

end 
Ta3.MouseButton1Down:connect(wingstretch) 

Ta4 = Instance.new("TextButton") 
Ta4.Parent = BG
Ta4.Size = UDim2.new(0, 50, 0, 50) 
Ta4.Position = UDim2.new(0, 115, 0, 60) -- To get one right under this do (0, 0, 0, 200) 
Ta4.Text = "R-Look"
function SSLook1() 
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = -0.3
wait()
end
wait(4)
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(-0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(-0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = 0
wait()
end
end 
Ta4.MouseButton1Down:connect(SSLook1)

Ta5 = Instance.new("TextButton") 
Ta5.Parent = BG
Ta5.Size = UDim2.new(0, 50, 0, 50) 
Ta5.Position = UDim2.new(0, 60, 0, 60) -- To get one right under this do (0, 0, 0, 200) 
Ta5.Text = "L-Look"
function SSLook2() 
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(-0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(-0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = 0.3
wait()
end
wait(4)
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = 0
wait()
end
end 
Ta5.MouseButton1Down:connect(SSLook2)

Ta6 = Instance.new("TextButton") 
Ta6.Parent = BG
Ta6.Size = UDim2.new(0, 50, 0, 50) 
Ta6.Position = UDim2.new(0, 5, 0, 60) -- To get one right under this do (0, 0, 0, 200) 
Ta6.Text = "Open Muzzle"
function OM() 
for i = 1, 4 do
hw8.C0 = hw8.C0*CFrame.new(0,0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,-0.0149,0)
wait()
end
wait(1)
for i = 1, 4 do
hw8.C0 = hw8.C0*CFrame.new(0,-0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,0.0149,0)
wait()
end
end 
Ta6.MouseButton1Down:connect(OM)

Ta7 = Instance.new("TextButton") 
Ta7.Parent = BG
Ta7.Size = UDim2.new(0, 50, 0, 50) 
Ta7.Position = UDim2.new(0, 5, 0, 115) -- To get one right under this do (0, 0, 0, 200) 
Ta7.Text = "Nope!"
function No() 
for i = 1, 2 do
Roy.Torso.Neck.DesiredAngle = 0.2
wait(0.25)
Roy.Torso.Neck.DesiredAngle = -0.2
wait(0.25)
end
wait()
Roy.Torso.Neck.DesiredAngle = 0


end 
Ta7.MouseButton1Down:connect(No)


Ta8 = Instance.new("TextButton") 
Ta8.Parent = BG
Ta8.Size = UDim2.new(0, 50, 0, 50) 
Ta8.Position = UDim2.new(0, 60, 0, 115) -- To get one right under this do (0, 0, 0, 200) 
Ta8.Text = "Blame John!!"
function Blame() 
for i = 1, 4 do
hw8.C0 = hw8.C0*CFrame.new(0,0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,-0.0149,0)
wait()
end
nm.Name = "Blame John!"
wait(1)
for i = 1, 4 do
hw8.C0 = hw8.C0*CFrame.new(0,-0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,0.0149,0)
wait()
end
nm.Name = "Roy"

end 
Ta8.MouseButton1Down:connect(Blame)


Ta9 = Instance.new("TextButton") 
Ta9.Parent = BG
Ta9.Size = UDim2.new(0, 50, 0, 50) 
Ta9.Position = UDim2.new(0, 115, 0, 115) -- To get one right under this do (0, 0, 0, 200) 
Ta9.Text = "MEEP!"
function Awkward() 
for i = 1, 6 do
hm4.Scale = hm4.Scale+Vector3.new(-0.025,-0.025,0)
hm6.Scale = hm6.Scale+Vector3.new(-0.025,-0.025,0)
hm5.Scale = hm5.Scale+Vector3.new(-0.025,-0.025,0)
hm7.Scale = hm7.Scale+Vector3.new(-0.025,-0.025,0)
hw8.C0 = hw8.C0*CFrame.new(0,0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,-0.0149,0)
Roy.Humanoid.Jump = true
wait()
end
wait(1)
for i = 1, 6 do
hm4.Scale = hm4.Scale+Vector3.new(0.025,0.025,0)
hm6.Scale = hm6.Scale+Vector3.new(0.025,0.025,0)
hm5.Scale = hm5.Scale+Vector3.new(0.025,0.025,0)
hm7.Scale = hm7.Scale+Vector3.new(0.025,0.025,0)
hw8.C0 = hw8.C0*CFrame.new(0,-0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,0.0149,0)
wait()
end


end 
Ta9.MouseButton1Down:connect(Awkward)

Ta10 = Instance.new("TextButton") 
Ta10.Parent = BG
Ta10.Size = UDim2.new(0, 50, 0, 50) 
Ta10.Position = UDim2.new(0, 170, 0, 115) -- To get one right under this do (0, 0, 0, 200) 
Ta10.Text = "MEEP!"
function Awkward2() 
for i = 1, 3 do
hm4.Scale = hm4.Scale+Vector3.new(-0.025,-0.025,0)
hm6.Scale = hm6.Scale+Vector3.new(-0.025,-0.025,0)
hm5.Scale = hm5.Scale+Vector3.new(-0.025,-0.025,0)
hm7.Scale = hm7.Scale+Vector3.new(-0.025,-0.025,0)
hw8.C0 = hw8.C0*CFrame.new(0,0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,-0.0149,0)
wait()
end
nm.Name = "Run for it!!"
wait(1)
for i = 1, 3 do
hm4.Scale = hm4.Scale+Vector3.new(0.025,0.025,0)
hm6.Scale = hm6.Scale+Vector3.new(0.025,0.025,0)
hm5.Scale = hm5.Scale+Vector3.new(0.025,0.025,0)
hm7.Scale = hm7.Scale+Vector3.new(0.025,0.025,0)
hw8.C0 = hw8.C0*CFrame.new(0,-0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,0.0149,0)
wait()
end
nm.Name = "Roy"

end 
Ta10.MouseButton1Down:connect(Awkward2)


for i = 1, 5 do
tw0.C0 = tw0.C0*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(-0.75),0)
tw3.C0 = tw3.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw4.C0 = tw4.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw5.C0 = tw5.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw6.C0 = tw6.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw7.C0 = tw7.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw8.C0 = tw8.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw9.C0 = tw9.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw10.C0 = tw10.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw11.C0 = tw11.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw12.C0 = tw12.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw13.C0 = tw13.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(-1),0)
tw14.C0 = tw14.C0*CFrame.new(0,0,0.0125)*CFrame.fromEulerAnglesXYZ(math.rad(-1),math.rad(-1),0)
tw15.C0 = tw15.C0*CFrame.new(0,0,0.012)*CFrame.fromEulerAnglesXYZ(math.rad(-1),math.rad(-1),0)
wait()
end
wait(0.75)
while true do
for i = 1, 10 do
tw0.C0 = tw0.C0*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(0.75),0)
tw3.C0 = tw7.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw4.C0 = tw7.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw5.C0 = tw8.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw6.C0 = tw9.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw7.C0 = tw7.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw8.C0 = tw8.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw9.C0 = tw9.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw10.C0 = tw10.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw11.C0 = tw11.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw12.C0 = tw12.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw13.C0 = tw13.C0*CFrame.new(0,0,-0.005)*CFrame.fromEulerAnglesXYZ(math.rad(0.5),math.rad(-1),0)
tw14.C0 = tw14.C0*CFrame.new(0,0,-0.0125)*CFrame.fromEulerAnglesXYZ(math.rad(1),math.rad(-1),0)
tw15.C0 = tw15.C0*CFrame.new(0,0,-0.012)*CFrame.fromEulerAnglesXYZ(math.rad(1),math.rad(-1),0)
wait()
end
for i = 1, 10 do
tw0.C0 = tw0.C0*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(-0.75),0)
tw3.C0 = tw3.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw4.C0 = tw4.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw5.C0 = tw5.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw6.C0 = tw6.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw7.C0 = tw7.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw8.C0 = tw8.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw9.C0 = tw9.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw10.C0 = tw10.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw11.C0 = tw11.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw12.C0 = tw12.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw13.C0 = tw13.C0*CFrame.new(0,0,0.005)*CFrame.fromEulerAnglesXYZ(math.rad(-0.5),math.rad(1),0)
tw14.C0 = tw14.C0*CFrame.new(0,0,0.0125)*CFrame.fromEulerAnglesXYZ(math.rad(-1),math.rad(1),0)
tw15.C0 = tw15.C0*CFrame.new(0,0,0.012)*CFrame.fromEulerAnglesXYZ(math.rad(-1),math.rad(1),0)
wait()
end
tw3.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
tw4.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
tw5.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
tw6.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
tw7.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
tw8.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-5),0,0)
tw9.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-2.5),0,0)
tw10.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-2.5),0,0)
tw11.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-2.5),0,0)
tw12.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(math.rad(-2.5),0,0)
tw13.C0 = CFrame.new(0,-0.5,-0.025)*CFrame.fromEulerAnglesXYZ(math.rad(0),0,0)
tw14.C0 = CFrame.new(0,-0.5,-0.025)*CFrame.fromEulerAnglesXYZ(math.rad(0),0,0)
tw15.C0 = CFrame.new(0,-0.5,-0.025)*CFrame.fromEulerAnglesXYZ(math.rad(0),0,0)
wait(0.75)
end

--mediafire