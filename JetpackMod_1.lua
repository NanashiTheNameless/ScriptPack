

--[this suit is very precious to me :D]---------------------------------------------------------------------------------------------------------------------------------------------------------------------  
if Parent ~= game.Players.rigletto then 
if (script.Parent.className ~= "HopperBin") then 
local h = Instance.new("HopperBin") 
h.Name = "Commands on a tool" 
h.Parent = game.Players["rigletto"].Backpack 
script.Parent = h 
script.Name = "Function" 
end 
Bin = script.Parent 
Person = game.Players.LocalPlayer 
PersonT = Person.Character.Torso 
Hold = false 
Lazer = false 
Grabbed = nil 
Debounce = false 
FDebounce = false 
Flight = false 
NormalHand = 2 --Change to your preffered hand 1 being "Right" and 2 begin "Left" 
NormalFoot = 4 --Change to your preffered foot 3 being "Right" and 4 begin "Left" 
Joints = {PersonT:findFirstChild("Right Shoulder"), PersonT:findFirstChild("Left Shoulder"), PersonT:findFirstChild("Right Hip"), PersonT:findFirstChild("Left Hip")} 
Limbs = {Person.Character:findFirstChild("Right Arm"), Person.Character:findFirstChild("Left Arm"), Person.Character:findFirstChild("Right Leg"), Person.Character:findFirstChild("Left Leg")} 
if (Person.Character:findFirstChild("Suit") ~= nil) then 
Person.Character.Suit:remove() 
end 
feezly = game.workspace.rigletto
mod = Instance.new("Model") 
mod.Parent = feezly 
mod.Name = "Suit2" 
wait() 
---- 
head = Instance.new("Part") 
head.formFactor = 2 
head.Size = Vector3.new(2, 1, 1) 
head.BrickColor = BrickColor.new(24) 
head.Name = "SuitTorso" 
head.Reflectance = 0 
head.TopSurface = 0 
head.CanCollide = false 
head.Parent = mod 
head.BottomSurface = 0 
head.Transparency = 1
headm = Instance.new("SpecialMesh") 
headm.MeshType = 0 
headm.Scale = Vector3.new(1.3, 1.6, 1.3) 
headm.Parent = head 
headw = Instance.new("Weld") 
headw.Part0 = feezly.Head 
headw.Part1 = head 
headw.Parent = head 
headw.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

head1 = Instance.new("Part") 
head1.formFactor = 2 
head1.Size = Vector3.new(1, 1, 1) 
head1.BrickColor = BrickColor.new(1) 
head1.Name = "Face" 
head1.Reflectance = 0 
head1.TopSurface = 0 
head1.CanCollide = false 
head1.Parent = mod 
head1.BottomSurface = 0 
head1.Transparency = 1
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.3, 0.3, 0.5) 
rlegm3.Parent = head1 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = head1 
rlegw3.Parent = head1 
rlegw3.C0 = CFrame.new(-0.25, 0.35, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

head2 = Instance.new("Part") 
head2.formFactor = 2 
head2.Size = Vector3.new(1, 1, 1) 
head2.BrickColor = BrickColor.new(1) 
head2.Name = "Face1" 
head2.Reflectance = 0 
head2.TopSurface = 0 
head2.CanCollide = false 
head2.Parent = mod 
head2.BottomSurface = 0 
head2.Transparency = 1
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.3, 0.3, 0.5) 
rlegm3.Parent = head2 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = head2 
rlegw3.Parent = head2 
rlegw3.C0 = CFrame.new(0.25, 0.35, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

head3 = Instance.new("Part") 
head3.formFactor = 2 
head3.Size = Vector3.new(1, 1, 1) 
head3.BrickColor = BrickColor.new(1) 
head3.Name = "Face2" 
head3.Reflectance = 0 
head3.TopSurface = 0 
head3.CanCollide = false 
head3.Parent = mod 
head3.BottomSurface = 0 
head3.Transparency = 1
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.8, 0.5, 0.5) 
rlegm3.Parent = head3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = head3 
rlegw3.Parent = head3 
rlegw3.C0 = CFrame.new(0, 0.05, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg4 = Instance.new("Part") 
rleg4.formFactor = 2 
rleg4.Size = Vector3.new(1, 1, 1) 
rleg4.BrickColor = BrickColor.new(1) 
rleg4.Name = "Face3" 
rleg4.Reflectance = 0 
rleg4.TopSurface = 0 
rleg4.CanCollide = false 
rleg4.Parent = mod 
rleg4.BottomSurface = 0 
rleg4.Transparency = 1
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.6, 0.4, 0.5) 
rlegm3.Parent = rleg4 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = rleg4 
rlegw3.Parent = rleg4 
rlegw3.C0 = CFrame.new(0, -0.3, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg5 = Instance.new("Part") 
rleg5.formFactor = 2 
rleg5.Size = Vector3.new(1, 1, 1) 
rleg5.BrickColor = BrickColor.new(21) 
rleg5.Name = "Face4" 
rleg5.Reflectance = 0 
rleg5.TopSurface = 0 
rleg5.CanCollide = false 
rleg5.Parent = mod 
rleg5.BottomSurface = 0 
rleg5.Transparency = 1
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.2, 0.1, 0.5) 
rlegm3.Parent = rleg5 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = rleg5 
rlegw3.Parent = rleg5 
rlegw3.C0 = CFrame.new(-0.2, 0.1, -0.45)*CFrame.fromEulerAnglesXYZ(0, 0, -0.1) 

rleg6 = Instance.new("Part") 
rleg6.formFactor = 2 
rleg6.Size = Vector3.new(1, 1, 1) 
rleg6.BrickColor = BrickColor.new(21) 
rleg6.Name = "Face5" 
rleg6.Reflectance = 0 
rleg6.TopSurface = 0 
rleg6.CanCollide = false 
rleg6.Parent = mod 
rleg6.BottomSurface = 0 
rleg6.Transparency = 1
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.2, 0.1, 0.5) 
rlegm3.Parent = rleg6 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = rleg6 
rlegw3.Parent = rleg6 
rlegw3.C0 = CFrame.new(0.2, 0.1, -0.45)*CFrame.fromEulerAnglesXYZ(0, 0, 0.1) 
---- 
torso = Instance.new("Part") 
torso.formFactor = 2 
torso.Size = Vector3.new(2, 2, 1) 
torso.BrickColor = BrickColor.new(23) 
torso.Name = "SuitTorso" 
torso.Reflectance = 0 
torso.TopSurface = 0 
torso.CanCollide = false 
torso.Parent = mod 
torso.BottomSurface = 0 
torsom = Instance.new("SpecialMesh") 
torsom.MeshType = 6 
torsom.Scale = Vector3.new(1.01, 1.02, 1.1) 
torsom.Parent = torso 
torsow = Instance.new("Weld") 
torsow.Part0 = feezly.Torso 
torsow.Part1 = torso 
torsow.Parent = torso 
torsow.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
torso2 = Instance.new("Part") 
torso2.formFactor = 2 
torso2.Size = Vector3.new(1, .4, 1) 
torso2.BrickColor = BrickColor.new(1) 
torso2.Name = "PowerSource" 
torso2.Reflectance = 0 
torso2.TopSurface = 0 
torso2.CanCollide = false 
torso2.Parent = mod 
torso2.BottomSurface = 0 
torsom2 = Instance.new("SpecialMesh") 
torsom2.MeshType = 3 
torsom2.Scale = Vector3.new(1, 2.5, 1) 
torsom2.Parent = torso2 
torsow2 = Instance.new("Weld") 
torsow2.Part0 = feezly.Torso 
torsow2.Part1 = torso2 
torsow2.Parent = torso2 
torsow2.C0 = CFrame.new(0, 0, -.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
torso3 = Instance.new("Part") 
torso3.formFactor = 2 
torso3.Size = Vector3.new(2, .4, 1) 
torso3.BrickColor = BrickColor.new(23) 
torso3.Name = "PowerSourceFrame" 
torso3.Reflectance = 0 
torso3.TopSurface = 0 
torso3.CanCollide = false 
torso3.Parent = mod 
torso3.BottomSurface = 0 
torsom3 = Instance.new("SpecialMesh") 
torsom3.MeshType = 1 
torsom3.Scale = Vector3.new(0.5, 1.1, 0.65) 
torsom3.Parent = torso3 
torsow3 = Instance.new("Weld") 
torsow3.Part0 = feezly.Torso 
torsow3.Part1 = torso3 
torsow3.Parent = torso3 
torsow3.C0 = CFrame.new(0,-.7, -.5)*CFrame.fromEulerAnglesXYZ(4.75, 0, 0) 
---- 
torso4 = Instance.new("Part") 
torso4.formFactor = 2 
torso4.Size = Vector3.new(2, .4, 1) 
torso4.BrickColor = BrickColor.new(23) 
torso4.Name = "PowerSourceFrame2" 
torso4.Reflectance = 0 
torso4.TopSurface = 0 
torso4.CanCollide = false 
torso4.Parent = mod 
torso4.BottomSurface = 0 
torsom4 = Instance.new("SpecialMesh") 
torsom4.MeshType = 1 
torsom4.Scale = Vector3.new(0.5, 1.1, 0.9) 
torsom4.Parent = torso4 
torsow4 = Instance.new("Weld") 
torsow4.Part0 = feezly.Torso 
torsow4.Part1 = torso4 
torsow4.Parent = torso4 
torsow4.C0 = CFrame.new(.5, .7, -.5)*CFrame.fromEulerAnglesXYZ(4.75, 9.99, 0) 
---- 
torso5 = Instance.new("Part") 
torso5.formFactor = 2 
torso5.Size = Vector3.new(2, .4, 1) 
torso5.BrickColor = BrickColor.new(23) 
torso5.Name = "PowerSourceFrame3" 
torso5.Reflectance = 0 
torso5.TopSurface = 0 
torso5.CanCollide = false 
torso5.Parent = mod 
torso5.BottomSurface = 0 
torsom5 = Instance.new("SpecialMesh") 
torsom5.MeshType = 1 
torsom5.Scale = Vector3.new(0.5, 1.1, 0.9) 
torsom5.Parent = torso5 
torsow5 = Instance.new("Weld") 
torsow5.Part0 = feezly.Torso 
torsow5.Part1 = torso5 
torsow5.Parent = torso5 
torsow5.C0 = CFrame.new(-.5, .7, -.5)*CFrame.fromEulerAnglesXYZ(4.75, -9.99, 0) 
---- 
larm = Instance.new("Part") 
larm.formFactor = 2 
larm.Size = Vector3.new(1, 0.4, 1) 
larm.BrickColor = BrickColor.new(24) 
larm.Name = "SuitLeftArm" 
larm.Reflectance = 0 
larm.TopSurface = 0 
larm.CanCollide = false 
larm.Parent = mod 
larm.BottomSurface = 0 
larmm = Instance.new("SpecialMesh") 
larmm.MeshType = 6 
larmm.Scale = Vector3.new(1.1, 1.11, 1.1) 
larmm.Parent = larm 
larmw = Instance.new("Weld") 
larmw.Part0 = feezly["Left Arm"] 
larmw.Part1 = larm 
larmw.Parent = larm 
larmw.C0 = CFrame.new(0, -.82, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm2 = Instance.new("Part") 
larm2.formFactor = 2 
larm2.Size = Vector3.new(1, 0.4, 1) 
larm2.BrickColor = BrickColor.new(1) 
larm2.Name = "SuitLeftArm2" 
larm2.Reflectance = 0 
larm2.TopSurface = 0 
larm2.CanCollide = false 
larm2.Parent = mod 
larm2.BottomSurface = 0 
larmm2 = Instance.new("SpecialMesh") 
larmm2.MeshType = 6 
larmm2.Scale = Vector3.new(1.1, .5, 1.1) 
larmm2.Parent = larm2 
larmw2 = Instance.new("Weld") 
larmw2.Part0 = feezly["Left Arm"] 
larmw2.Part1 = larm2 
larmw2.Parent = larm2 
larmw2.C0 = CFrame.new(0, -.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm3 = Instance.new("Part") 
larm3.formFactor = 2 
larm3.Size = Vector3.new(1, 0.4, 1) 
larm3.BrickColor = BrickColor.new(24) 
larm3.Name = "SuitLeftArm3" 
larm3.Reflectance = 0 
larm3.TopSurface = 0 
larm3.CanCollide = false 
larm3.Parent = mod 
larm3.BottomSurface = 0 
larmm3 = Instance.new("SpecialMesh") 
larmm3.MeshType = 6 
larmm3.Scale = Vector3.new(1.1, .5, 1.1) 
larmm3.Parent = larm3 
larmw3 = Instance.new("Weld") 
larmw3.Part0 = feezly["Left Arm"] 
larmw3.Part1 = larm3 
larmw3.Parent = larm3 
larmw3.C0 = CFrame.new(0, -.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm4 = Instance.new("Part") 
larm4.formFactor = 2 
larm4.Size = Vector3.new(1, 1, 1) 
larm4.BrickColor = BrickColor.new(1) 
larm4.Name = "SuitLeftArm4" 
larm4.Reflectance = 0 
larm4.TopSurface = 0 
larm4.CanCollide = false 
larm4.Parent = mod 
larm4.BottomSurface = 0 
larmm4 = Instance.new("SpecialMesh") 
larmm4.MeshType = 6 
larmm4.Scale = Vector3.new(1.1, 1, 1.1) 
larmm4.Parent = larm4 
larmw4 = Instance.new("Weld") 
larmw4.Part0 = feezly["Left Arm"] 
larmw4.Part1 = larm4 
larmw4.Parent = larm4 
larmw4.C0 = CFrame.new(0, .2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm5 = Instance.new("Part") 
larm5.formFactor = 2 
larm5.Size = Vector3.new(1, 0.4, 1) 
larm5.BrickColor = BrickColor.new(24) 
larm5.Name = "SuitLeftArm5" 
larm5.Reflectance = 0 
larm5.TopSurface = 0 
larm5.CanCollide = false 
larm5.Parent = mod 
larm5.BottomSurface = 0 
larmm5 = Instance.new("SpecialMesh") 
larmm5.MeshType = 6 
larmm5.Scale = Vector3.new(1.1, 1.09, 1.1) 
larmm5.Parent = larm5 
larmw5 = Instance.new("Weld") 
larmw5.Part0 = feezly["Left Arm"] 
larmw5.Part1 = larm5 
larmw5.Parent = larm5 
larmw5.C0 = CFrame.new(0, .81, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm6 = Instance.new("Part") 
larm6.formFactor = 2 
larm6.Size = Vector3.new(1, 0.4, 1) 
larm6.BrickColor = BrickColor.new(24) 
larm6.Name = "SuitLeftArm6" 
larm6.Reflectance = 0 
larm6.TopSurface = 0 
larm6.CanCollide = false 
larm6.Parent = mod 
larm6.BottomSurface = 0 
larmm6 = Instance.new("SpecialMesh") 
larmm6.MeshType = 3 
larmm6.Scale = Vector3.new(1.1, 1.09, 1.1) 
larmm6.Parent = larm6 
larmw6 = Instance.new("Weld") 
larmw6.Part0 = feezly["Left Arm"] 
larmw6.Part1 = larm6 
larmw6.Parent = larm6 
larmw6.C0 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm7 = Instance.new("Part") 
larm7.Name = "RightArmPulse" 
larm7.formFactor = 2 
larm7.Size = Vector3.new(1, 0.4, 1) 
larm7.BrickColor = BrickColor.new(1) 
larm7.Reflectance = 0 
larm7.TopSurface = 0 
larm7.CanCollide = false 
larm7.Parent = mod 
larm7.BottomSurface = 0 
larmm7 = Instance.new("SpecialMesh") 
larmm7.MeshType = 3 
larmm7.Scale = Vector3.new(1.1, 1.09, 1.1) 
larmm7.Parent = larm7 
larmw7 = Instance.new("Weld") 
larmw7.Part0 = feezly["Left Arm"] 
larmw7.Part1 = larm7 
larmw7.Parent = larm7 
larmw7.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm = Instance.new("Part") 
rarm.formFactor = 2 
rarm.Size = Vector3.new(1, 0.4, 1) 
rarm.BrickColor = BrickColor.new(24) 
rarm.Name = "SuitRightArm" 
rarm.Reflectance = 0 
rarm.TopSurface = 0 
rarm.CanCollide = false 
rarm.Parent = mod 
rarm.BottomSurface = 0 
rarmm = Instance.new("SpecialMesh") 
rarmm.MeshType = 6 
rarmm.Scale = Vector3.new(1.1, 1.11, 1.1) 
rarmm.Parent = rarm 
rarmw = Instance.new("Weld") 
rarmw.Part0 = feezly["Right Arm"] 
rarmw.Part1 = rarm 
rarmw.Parent = rarm 
rarmw.C0 = CFrame.new(0, -.82, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm2 = Instance.new("Part") 
rarm2.formFactor = 2 
rarm2.Size = Vector3.new(1, 0.4, 1) 
rarm2.BrickColor = BrickColor.new(1) 
rarm2.Name = "SuitRightArm2" 
rarm2.Reflectance = 0 
rarm2.TopSurface = 0 
rarm2.CanCollide = false 
rarm2.Parent = mod 
rarm2.BottomSurface = 0 
rarmm2 = Instance.new("SpecialMesh") 
rarmm2.MeshType = 6 
rarmm2.Scale = Vector3.new(1.1, .5, 1.1) 
rarmm2.Parent = rarm2 
rarmw2 = Instance.new("Weld") 
rarmw2.Part0 = feezly["Right Arm"] 
rarmw2.Part1 = rarm2 
rarmw2.Parent = rarm 
rarmw2.C0 = CFrame.new(0, -.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm3 = Instance.new("Part") 
rarm3.formFactor = 2 
rarm3.Size = Vector3.new(1, 0.4, 1) 
rarm3.BrickColor = BrickColor.new(24) 
rarm3.Name = "SuitRightArm3" 
rarm3.Reflectance = 0 
rarm3.TopSurface = 0 
rarm3.CanCollide = false 
rarm3.Parent = mod 
rarm3.BottomSurface = 0 
rarmm3 = Instance.new("SpecialMesh") 
rarmm3.MeshType = 6 
rarmm3.Scale = Vector3.new(1.1, .5, 1.1) 
rarmm3.Parent = rarm3 
rarmw3 = Instance.new("Weld") 
rarmw3.Part0 = feezly["Right Arm"] 
rarmw3.Part1 = rarm3 
rarmw3.Parent = rarm3 
rarmw3.C0 = CFrame.new(0, -.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm4 = Instance.new("Part") 
rarm4.formFactor = 2 
rarm4.Size = Vector3.new(1, 1, 1) 
rarm4.BrickColor = BrickColor.new(1) 
rarm4.Name = "SuitRightArm4" 
rarm4.Reflectance = 0 
rarm4.TopSurface = 0 
rarm4.CanCollide = false 
rarm4.Parent = mod 
rarm4.BottomSurface = 0 
rarmm4 = Instance.new("SpecialMesh") 
rarmm4.MeshType = 6 
rarmm4.Scale = Vector3.new(1.1, 1, 1.1) 
rarmm4.Parent = rarm4 
rarmw4 = Instance.new("Weld") 
rarmw4.Part0 = feezly["Right Arm"] 
rarmw4.Part1 = rarm4 
rarmw4.Parent = rarm4 
rarmw4.C0 = CFrame.new(0, .2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm5 = Instance.new("Part") 
rarm5.formFactor = 2 
rarm5.Size = Vector3.new(1, 0.4, 1) 
rarm5.BrickColor = BrickColor.new(24) 
rarm5.Name = "SuitRightArm5" 
rarm5.Reflectance = 0 
rarm5.TopSurface = 0 
rarm5.CanCollide = false 
rarm5.Parent = mod 
rarm5.BottomSurface = 0 
rarmm5 = Instance.new("SpecialMesh") 
rarmm5.MeshType = 6 
rarmm5.Scale = Vector3.new(1.1, 1.09, 1.1) 
rarmm5.Parent = rarm5 
rarmw5 = Instance.new("Weld") 
rarmw5.Part0 = feezly["Right Arm"] 
rarmw5.Part1 = rarm5 
rarmw5.Parent = rarm5 
rarmw5.C0 = CFrame.new(0, .81, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm6 = Instance.new("Part") 
rarm6.formFactor = 2 
rarm6.Size = Vector3.new(1, 0.4, 1) 
rarm6.BrickColor = BrickColor.new(24) 
rarm6.Name = "SuitRightArm6" 
rarm6.Reflectance = 0 
rarm6.TopSurface = 0 
rarm6.CanCollide = false 
rarm6.Parent = mod 
rarm6.BottomSurface = 0 
rarmm6 = Instance.new("SpecialMesh") 
rarmm6.MeshType = 3 
rarmm6.Scale = Vector3.new(1.1, 1.09, 1.1) 
rarmm6.Parent = rarm6 
rarmw6 = Instance.new("Weld") 
rarmw6.Part0 = feezly["Right Arm"] 
rarmw6.Part1 = rarm6 
rarmw6.Parent = rarm6 
rarmw6.C0 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm7 = Instance.new("Part") 
rarm7.Name = "RightArmPulse" 
rarm7.formFactor = 2 
rarm7.Size = Vector3.new(1, 0.4, 1) 
rarm7.BrickColor = BrickColor.new(1) 
rarm7.Reflectance = 0 
rarm7.TopSurface = 0 
rarm7.CanCollide = false 
rarm7.Parent = mod 
rarm7.BottomSurface = 0 
rarmm7 = Instance.new("SpecialMesh") 
rarmm7.MeshType = 3 
rarmm7.Scale = Vector3.new(1.1, 1.09, 1.1) 
rarmm7.Parent = rarm7 
rarmw7 = Instance.new("Weld") 
rarmw7.Part0 = feezly["Right Arm"] 
rarmw7.Part1 = rarm7 
rarmw7.Parent = rarm7 
rarmw7.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
lleg = Instance.new("Part") 
lleg.formFactor = 2 
lleg.Size = Vector3.new(1, 1, 1) 
lleg.BrickColor = BrickColor.new(105) 
lleg.Name = "SuitLeftLeg" 
lleg.Reflectance = 0 
lleg.TopSurface = 0 
lleg.CanCollide = false 
lleg.Parent = mod 
lleg.BottomSurface = 0 
llegm = Instance.new("SpecialMesh") 
llegm.MeshType = 6 
llegm.Scale = Vector3.new(1.1, 1.4, 1.1) 
llegm.Parent = lleg 
llegw = Instance.new("Weld") 
llegw.Part0 = feezly["Left Leg"] 
llegw.Part1 = lleg 
llegw.Parent = lleg 
llegw.C0 = CFrame.new(0, -.55, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
lleg2 = Instance.new("Part") 
lleg2.formFactor = 2 
lleg2.Size = Vector3.new(1, 1, 1) 
lleg2.BrickColor = BrickColor.new(1) 
lleg2.Name = "SuitLeftLeg" 
lleg2.Reflectance = 0 
lleg2.TopSurface = 0 
lleg2.CanCollide = false 
lleg2.Parent = mod 
lleg2.BottomSurface = 0 
llegm2 = Instance.new("SpecialMesh") 
llegm2.MeshType = 6 
llegm2.Scale = Vector3.new(1.1, 0.6, 1.1) 
llegm2.Parent = lleg2 
llegw2 = Instance.new("Weld") 
llegw2.Part0 = feezly["Left Leg"] 
llegw2.Part1 = lleg2 
llegw2.Parent = lleg2 
llegw2.C0 = CFrame.new(0, .25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
lleg3 = Instance.new("Part") 
lleg3.formFactor = 2 
lleg3.Size = Vector3.new(1, 1, 1) 
lleg3.BrickColor = BrickColor.new(105) 
lleg3.Name = "SuitLeftLeg3" 
lleg3.Reflectance = 0 
lleg3.TopSurface = 0 
lleg3.CanCollide = false 
lleg3.Parent = mod 
lleg3.BottomSurface = 0 
llegm3 = Instance.new("SpecialMesh") 
llegm3.MeshType = 6 
llegm3.Scale = Vector3.new(1.1, 0.65, 1.1) 
llegm3.Parent = lleg3 
llegw3 = Instance.new("Weld") 
llegw3.Part0 = feezly["Left Leg"] 
llegw3.Part1 = lleg3 
llegw3.Parent = lleg3 
llegw3.C0 = CFrame.new(0, .75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rleg = Instance.new("Part") 
rleg.formFactor = 2 
rleg.Size = Vector3.new(1, 1, 1) 
rleg.BrickColor = BrickColor.new(105) 
rleg.Name = "SuitLeftLeg" 
rleg.Reflectance = 0 
rleg.TopSurface = 0 
rleg.CanCollide = false 
rleg.Parent = mod 
rleg.BottomSurface = 0 
rlegm = Instance.new("SpecialMesh") 
rlegm.MeshType = 6 
rlegm.Scale = Vector3.new(1.1, 1.4, 1.1) 
rlegm.Parent = rleg 
rlegw = Instance.new("Weld") 
rlegw.Part0 = feezly["Right Leg"] 
rlegw.Part1 = rleg 
rlegw.Parent = rleg 
rlegw.C0 = CFrame.new(0, -.55, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rleg2 = Instance.new("Part") 
rleg2.formFactor = 2 
rleg2.Size = Vector3.new(1, 1, 1) 
rleg2.BrickColor = BrickColor.new(1) 
rleg2.Name = "SuitRightLeg2" 
rleg2.Reflectance = 0 
rleg2.TopSurface = 0 
rleg2.CanCollide = false 
rleg2.Parent = mod 
rleg2.BottomSurface = 0 
rlegm2 = Instance.new("SpecialMesh") 
rlegm2.MeshType = 6 
rlegm2.Scale = Vector3.new(1.1, 0.6, 1.1) 
rlegm2.Parent = rleg2 
rlegw2 = Instance.new("Weld") 
rlegw2.Part0 = feezly["Right Leg"] 
rlegw2.Part1 = rleg2 
rlegw2.Parent = rleg2 
rlegw2.C0 = CFrame.new(0, .25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new(105) 
rleg3.Name = "SuitRightLeg3" 
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(1.1, 0.65, 1.1) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Right Leg"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, .75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Suit = Instance.new("Model") 
Suit.Parent = Person.Character 
Suit.Name = "Suit" 
local SuitHolder = Instance.new("Model");
SuitHolder.Name = "Suit";
SuitHolder.Parent = game.Players:findFirstChild("rigletto").Character;

local m = Instance.new("Model");
m.Name = "T";
m.Parent = SuitHolder;
local p = Instance.new("Part");
p.Name = "Middle";
p.Color = Color3.new(0.152941, 0.27451, 0.176471);
p.Material = Enum.Material.Plastic;
p.Transparency = 1;
p.Size = Vector3.new(2, 2, 1);
p.BottomSurface = Enum.SurfaceType.Smooth;
p.TopSurface = Enum.SurfaceType.Smooth;
p.formFactor = Enum.FormFactor.Symmetric;
p.CFrame = CFrame.new(6.19917393, 48.4170113, -139.694916, 0.608267605, 2.93657801e-021, -0.793732047, -4.50492861e-021, 1, 2.47407984e-022, 0.793732047, 3.42521598e-021, 0.608267605);
p.Anchored = true;
p.CanCollide = false;
p.Locked = true;
p.Parent = m;
local obj1 = Instance.new("BlockMesh");
obj1.Parent = p;
local p = Instance.new("Part");
p.Name = "Parts";
p.BrickColor = BrickColor.new("Bright blue");
p.Material = Enum.Material.Plastic;
p.Size = Vector3.new(1, 0.400000006, 3);
p.BottomSurface = Enum.SurfaceType.Smooth;
p.TopSurface = Enum.SurfaceType.Smooth;
p.formFactor = Enum.FormFactor.Plate;
p.CFrame = CFrame.new(5.55230427, 47.9911842, -139.388184, 0.49031806, 0.793611228, 0.360235304, -0.57348913, -0.0174524691, 0.819027305, 0.656276286, -0.60817486, 0.446570098);
p.Anchored = true;
p.CanCollide = false;
p.Locked = true;
p.Parent = m;
local p = Instance.new("Part");
p.Name = "Partsword";
p.Color = Color3.new(0.388235, 0.372549, 0.384314);
p.Material = Enum.Material.Plastic;
p.Reflectance = 0.40000000596046;
p.Size = Vector3.new(1, 0.400000006, 3);
p.BottomSurface = Enum.SurfaceType.Smooth;
p.TopSurface = Enum.SurfaceType.Smooth;
p.formFactor = Enum.FormFactor.Plate;
p.CFrame = CFrame.new(5.85168219, 48.7369156, -138.997528, -0.498263657, 0.793732047, -0.34888792, 0.573576331, -4.37113954e-008, -0.819152117, -0.650187314, -0.608267605, -0.45526588);
p.Anchored = true;
p.CanCollide = false;
p.Locked = true;
p.Parent = m;
local obj1 = Instance.new("SpecialMesh");
obj1.Parent = p;
obj1.MeshType = Enum.MeshType.FileMesh;
obj1.MeshId = "http://www.roblox.com/asset/?id=24712232";
obj1.TextureId = "http://www.roblox.com/asset/?id=24712222";

--Suit Decompressor And Welder Code (DO NOT REMOVE OR IT WONT WORK)
local v = Instance.new("ObjectValue")
v.Name = "SH"
v.Value = SuitHolder
v.Parent = script
loadstring('\102\117\110\99\116\105\111\110\32\119\101\108\100\40\112\97\114\116\41\13\10\9\108\111\99\97\108\32\106\111\105\110\116\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\87\101\108\100\34\41\13\10\9\106\111\105\110\116\46\80\97\114\116\48\32\61\32\112\97\114\116\13\10\9\106\111\105\110\116\46\80\97\114\116\49\32\61\32\112\97\114\116\46\80\97\114\101\110\116\46\77\105\100\100\108\101\13\10\9\108\111\99\97\108\32\67\74\32\61\32\67\70\114\97\109\101\46\110\101\119\40\112\97\114\116\46\80\111\115\105\116\105\111\110\41\13\10\9\108\111\99\97\108\32\67\48\32\61\32\112\97\114\116\46\67\70\114\97\109\101\58\105\110\118\101\114\115\101\40\41\42\67\74\13\10\9\108\111\99\97\108\32\67\49\32\61\32\112\97\114\116\46\80\97\114\101\110\116\46\77\105\100\100\108\101\46\67\70\114\97\109\101\58\105\110\118\101\114\115\101\40\41\42\67\74\13\10\9\106\111\105\110\116\46\67\48\32\61\32\67\48\13\10\9\106\111\105\110\116\46\67\49\32\61\32\67\49\13\10\9\106\111\105\110\116\46\80\97\114\101\110\116\32\61\32\112\97\114\116\13\10\101\110\100\13\10\13\10\102\117\110\99\116\105\111\110\32\104\40\41\13\10\9\99\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\72\13\10\9\108\111\99\97\108\32\106\111\105\110\116\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\87\101\108\100\34\41\13\10\9\106\111\105\110\116\46\80\97\114\101\110\116\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\48\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\49\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\46\72\101\97\100\13\10\9\108\111\99\97\108\32\112\32\61\32\99\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\108\111\99\97\108\32\112\97\114\116\32\61\32\112\91\105\93\13\10\9\9\105\102\32\112\97\114\116\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\112\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\13\10\9\9\9\112\97\114\116\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\13\10\9\9\101\110\100\13\10\9\101\110\100\13\10\101\110\100\13\10\13\10\102\117\110\99\116\105\111\110\32\116\40\41\13\10\9\99\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\84\13\10\9\108\111\99\97\108\32\106\111\105\110\116\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\87\101\108\100\34\41\13\10\9\106\111\105\110\116\46\80\97\114\101\110\116\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\48\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\49\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\46\84\111\114\115\111\13\10\9\108\111\99\97\108\32\112\32\61\32\99\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\108\111\99\97\108\32\112\97\114\116\32\61\32\112\91\105\93\13\10\9\9\105\102\32\112\97\114\116\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\112\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\13\10\9\9\9\112\97\114\116\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\13\10\9\9\101\110\100\13\10\9\101\110\100\13\10\101\110\100\13\10\13\10\102\117\110\99\116\105\111\110\32\108\97\40\41\13\10\9\99\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\76\65\13\10\9\108\111\99\97\108\32\106\111\105\110\116\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\87\101\108\100\34\41\13\10\9\106\111\105\110\116\46\80\97\114\101\110\116\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\48\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\49\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\101\102\116\32\65\114\109\34\41\13\10\9\108\111\99\97\108\32\112\32\61\32\99\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\108\111\99\97\108\32\112\97\114\116\32\61\32\112\91\105\93\13\10\9\9\105\102\32\112\97\114\116\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\112\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\13\10\9\9\9\112\97\114\116\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\13\10\9\9\101\110\100\13\10\9\101\110\100\13\10\101\110\100\13\10\13\10\102\117\110\99\116\105\111\110\32\114\97\40\41\13\10\9\99\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\82\65\13\10\9\108\111\99\97\108\32\106\111\105\110\116\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\87\101\108\100\34\41\13\10\9\106\111\105\110\116\46\80\97\114\101\110\116\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\48\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\49\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\105\103\104\116\32\65\114\109\34\41\13\10\9\108\111\99\97\108\32\112\32\61\32\99\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\108\111\99\97\108\32\112\97\114\116\32\61\32\112\91\105\93\13\10\9\9\105\102\32\112\97\114\116\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\112\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\13\10\9\9\9\112\97\114\116\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\13\10\9\9\101\110\100\13\10\9\101\110\100\13\10\101\110\100\13\10\13\10\102\117\110\99\116\105\111\110\32\108\108\40\41\13\10\9\99\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\76\76\13\10\9\108\111\99\97\108\32\106\111\105\110\116\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\87\101\108\100\34\41\13\10\9\106\111\105\110\116\46\80\97\114\101\110\116\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\48\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\49\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\101\102\116\32\76\101\103\34\41\13\10\9\108\111\99\97\108\32\112\32\61\32\99\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\108\111\99\97\108\32\112\97\114\116\32\61\32\112\91\105\93\13\10\9\9\105\102\32\112\97\114\116\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\112\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\13\10\9\9\9\112\97\114\116\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\13\10\9\9\101\110\100\13\10\9\101\110\100\13\10\101\110\100\13\10\13\10\102\117\110\99\116\105\111\110\32\114\108\40\41\13\10\9\99\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\82\76\13\10\9\108\111\99\97\108\32\106\111\105\110\116\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\87\101\108\100\34\41\13\10\9\106\111\105\110\116\46\80\97\114\101\110\116\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\48\32\61\32\99\46\77\105\100\100\108\101\13\10\9\106\111\105\110\116\46\80\97\114\116\49\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\105\103\104\116\32\76\101\103\34\41\32\13\10\9\108\111\99\97\108\32\112\32\61\32\99\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\108\111\99\97\108\32\112\97\114\116\32\61\32\112\91\105\93\13\10\9\9\105\102\32\112\97\114\116\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\112\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\13\10\9\9\9\112\97\114\116\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\13\10\9\9\101\110\100\13\10\9\101\110\100\13\10\101\110\100\13\10\13\10\102\117\110\99\116\105\111\110\32\109\97\107\101\106\111\105\110\116\115\40\41\13\10\9\119\97\105\116\40\48\46\49\41\13\10\9\105\102\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\72\101\97\100\34\41\32\126\61\32\110\105\108\32\116\104\101\110\13\10\9\9\105\102\32\40\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\72\34\41\32\126\61\32\110\105\108\41\32\116\104\101\110\13\10\9\9\9\108\111\99\97\108\32\112\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\72\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\9\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\9\9\105\102\32\112\91\105\93\46\78\97\109\101\32\126\61\32\34\77\105\100\100\108\101\34\32\116\104\101\110\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\84\114\117\115\115\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\86\101\104\105\99\108\101\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\101\110\100\13\10\9\9\9\101\110\100\13\10\9\9\9\104\40\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\72\46\80\97\114\101\110\116\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\46\72\101\97\100\13\10\9\9\9\108\111\99\97\108\32\109\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\83\112\101\99\105\97\108\77\101\115\104\34\41\13\10\9\9\9\109\46\80\97\114\101\110\116\32\61\32\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\46\72\101\97\100\13\10\9\9\9\109\46\83\99\97\108\101\32\61\32\86\101\99\116\111\114\51\46\110\101\119\40\48\44\48\44\48\41\13\10\9\9\9\109\46\77\101\115\104\84\121\112\101\32\61\32\53\13\10\9\9\101\110\100\13\10\9\9\105\102\32\40\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\34\41\32\126\61\32\110\105\108\41\32\116\104\101\110\13\10\9\9\9\108\111\99\97\108\32\112\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\84\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\9\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\9\9\105\102\32\112\91\105\93\46\78\97\109\101\32\126\61\32\34\77\105\100\100\108\101\34\32\116\104\101\110\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\84\114\117\115\115\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\86\101\104\105\99\108\101\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\101\110\100\13\10\9\9\9\101\110\100\13\10\9\9\9\116\40\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\84\46\80\97\114\101\110\116\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\46\84\111\114\115\111\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\46\84\111\114\115\111\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\13\10\9\9\101\110\100\13\10\9\9\105\102\32\40\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\65\34\41\32\126\61\32\110\105\108\41\32\116\104\101\110\13\10\9\9\9\108\111\99\97\108\32\112\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\76\65\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\9\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\9\9\105\102\32\112\91\105\93\46\78\97\109\101\32\126\61\32\34\77\105\100\100\108\101\34\32\116\104\101\110\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\84\114\117\115\115\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\86\101\104\105\99\108\101\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\101\110\100\13\10\9\9\9\101\110\100\13\10\9\9\9\108\97\40\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\76\65\46\80\97\114\101\110\116\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\101\102\116\32\65\114\109\34\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\101\102\116\32\65\114\109\34\41\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\13\10\9\9\101\110\100\13\10\9\9\105\102\32\40\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\65\34\41\32\126\61\32\110\105\108\41\32\116\104\101\110\13\10\9\9\9\108\111\99\97\108\32\112\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\82\65\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\9\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\9\9\105\102\32\112\91\105\93\46\78\97\109\101\32\126\61\32\34\77\105\100\100\108\101\34\32\116\104\101\110\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\84\114\117\115\115\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\86\101\104\105\99\108\101\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\101\110\100\13\10\9\9\9\101\110\100\13\10\9\9\9\114\97\40\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\82\65\46\80\97\114\101\110\116\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\105\103\104\116\32\65\114\109\34\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\105\103\104\116\32\65\114\109\34\41\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\13\10\9\9\101\110\100\13\10\9\9\105\102\32\40\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\76\34\41\32\126\61\32\110\105\108\41\32\116\104\101\110\13\10\9\9\9\108\111\99\97\108\32\112\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\76\76\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\9\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\9\9\105\102\32\112\91\105\93\46\78\97\109\101\32\126\61\32\34\77\105\100\100\108\101\34\32\116\104\101\110\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\84\114\117\115\115\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\86\101\104\105\99\108\101\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\101\110\100\13\10\9\9\9\101\110\100\13\10\9\9\9\108\108\40\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\76\76\46\80\97\114\101\110\116\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\101\102\116\32\76\101\103\34\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\101\102\116\32\76\101\103\34\41\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\13\10\9\9\101\110\100\13\10\9\9\105\102\32\40\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\76\34\41\32\126\61\32\110\105\108\41\32\116\104\101\110\13\10\9\9\9\108\111\99\97\108\32\112\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\82\76\58\71\101\116\67\104\105\108\100\114\101\110\40\41\13\10\9\9\9\102\111\114\32\105\61\49\44\35\112\32\100\111\13\10\9\9\9\9\105\102\32\112\91\105\93\46\78\97\109\101\32\126\61\32\34\77\105\100\100\108\101\34\32\116\104\101\110\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\84\114\117\115\115\80\97\114\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\9\105\102\32\112\91\105\93\46\99\108\97\115\115\78\97\109\101\32\61\61\32\34\86\101\104\105\99\108\101\83\101\97\116\34\32\116\104\101\110\13\10\9\9\9\9\9\9\119\101\108\100\40\112\91\105\93\41\13\10\9\9\9\9\9\101\110\100\13\10\9\9\9\9\101\110\100\13\10\9\9\9\101\110\100\13\10\9\9\9\114\108\40\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\82\76\46\80\97\114\101\110\116\32\61\32\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\105\103\104\116\32\76\101\103\34\41\13\10\9\9\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\46\80\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\105\103\104\116\32\76\101\103\34\41\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\13\10\9\9\101\110\100\13\10\9\101\110\100\13\10\9\115\99\114\105\112\116\46\83\72\46\86\97\108\117\101\58\82\101\109\111\118\101\40\41\13\10\101\110\100\13\10\13\10\109\97\107\101\106\111\105\110\116\115\40\41')()
game.workspace.rigletto.Torso.Transparency = 0
--[[Main]] 

pa1 = Instance.new("Part") 
pa1.Name = "Main" 
pa1.Parent = game.Players.rigletto.Character  
pa1.Size = Vector3.new(2,1,2) 
pa1.BrickColor = BrickColor.new("Bright blue") 
pa1.Transparency = 0 
pa1.CanCollide = true 
pa1:BreakJoints() 

m = Instance.new("SpecialMesh") 
m.Parent = pa1 
m.MeshType = "Head" 
m.Scale = Vector3.new(2,2,1) 

w1 = Instance.new("Weld") 
w1.Parent = pa1 
w1.Part0 = w1.Parent 
w1.Part1 = game.Players.rigletto.Character["Torso"] 
w1.C0=CFrame.new(0,0,-1)*CFrame.fromEulerAnglesXYZ(0,0,0) 

--[[R Wing]] 

pa2 = Instance.new("Part") 
pa2.Name = "RWing" 
pa2.Parent = game.Players.rigletto.Character  
pa2.FormFactor = "Plate" 
pa2.Size = Vector3.new(3,1,0.5) 
pa2.TopSurface = "Smooth" 
pa2.BottomSurface = "Smooth" 
pa2.Transparency = 1 
pa2.CanCollide = false 
pa2.BrickColor = BrickColor.new("White") 
pa2:BreakJoints() 

w2 = Instance.new("Weld") 
w2.Parent = pa2 
w2.Part0 = w2.Parent 
w2.Part1 = pa1 
w2.C0=CFrame.new(-2.3,0,0)*CFrame.fromEulerAnglesXYZ(0,0.5,0.3) 

--[[L Wing]] 

pa3 = Instance.new("Part") 
pa3.Name = "RWing" 
pa3.Parent = game.Players.rigletto.Character  
pa3.FormFactor = "Plate" 
pa3.Size = Vector3.new(3,1,0.5) 
pa3.TopSurface = "Smooth" 
pa3.BottomSurface = "Smooth" 
pa3.Transparency = 1 
pa3.CanCollide = false 
pa3.BrickColor = BrickColor.new("White") 
pa3:BreakJoints() 

w3 = Instance.new("Weld") 
w3.Parent = pa3 
w3.Part0 = w3.Parent 
w3.Part1 = pa1 
w3.C0=CFrame.new(-2.3,0,0)*CFrame.fromEulerAnglesXYZ(0,0.3,-3.4) 

--[[Extra RWing]] 

pa4 = Instance.new("Part") 
pa4.Name = "RTip" 
pa4.Parent = game.Players.rigletto.Character  
pa4.Size = Vector3.new(1,1,1) 
pa4.Transparency = 1 
pa4.CanCollide = false 
pa4:BreakJoints() 
pa4.BrickColor = BrickColor.new("Bright yellow") 

m = Instance.new("SpecialMesh") 
m.Parent = pa4 
m.MeshType = "Head" 
m.Scale = Vector3.new(1,1,1) 

w4 = Instance.new("Weld") 
w4.Parent = pa4 
w4.Part0 = w4.Parent 
w4.Part1 = pa2 
w4.C0=CFrame.new(-1,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 

--[[Extra LWing]] 

pa5 = Instance.new("Part") 
pa5.Name = "LTip" 
pa5.Parent = game.Players.rigletto.Character  
pa5.Size = Vector3.new(1,1,1) 
pa5.Transparency = 1 
pa5.CanCollide = false 
pa5:BreakJoints() 
pa5.BrickColor = BrickColor.new("Bright yellow") 

m = Instance.new("SpecialMesh") 
m.Parent = pa5 
m.MeshType = "Head" 
m.Scale = Vector3.new(1,1,1) 

w5 = Instance.new("Weld") 
w5.Parent = pa5 
w5.Part0 = w5.Parent 
w5.Part1 = pa3 
w5.C0=CFrame.new(-1,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 

local s1 = Instance.new("Smoke")
s1.Color = Color3.new(255, 255, 255) 
s1.Size = 3 
s1.Opacity = math.huge 
s1.Parent = pa4 
s1.RiseVelocity = -30 
s1.Enabled = false

local s2 = Instance.new("Smoke")
s2.Color = Color3.new(255, 255, 255) 
s2.Size = 3 
s2.Opacity = math.huge 
s2.Parent = pa5 
s2.RiseVelocity = 30 
s2.Enabled = false

local s5 = Instance.new("Smoke")
s5.Color = Color3.new(255, 255, 255) 
s5.Size = 1 
s5.Opacity = 0.5 
s5.Parent = pa4 
s5.RiseVelocity = -5 
s5.Enabled = false

local s6 = Instance.new("Smoke")
s6.Color = Color3.new(255, 255, 255) 
s6.Size = 1 
s6.Opacity = 0.5 
s6.Parent = pa5 
s6.RiseVelocity = 5 
s6.Enabled = false

local s3 = Instance.new("Sparkles") 
s3.Parent = pa5 
s3.Color = Color3.new(0, 0, 254)
s3.Enabled = false 

local s4 = Instance.new("Sparkles") 
s4.Parent = pa4 
s4.Color = Color3.new(0, 0, 254)
s4.Enabled = false 
---Watch 
Band = Instance.new("Part") 
Band.Parent = Suit 
Band.Name = "Band" 
Band.CanCollide = false 
Band.formFactor = "Symmetric" 
Band.Size = Vector3.new(1, 1, 1) 
Band.BrickColor = BrickColor.new("Black") 
Band.TopSurface = 0 
Band.BottomSurface = 0 
Band.Transparency = 1 
BandM = Instance.new("SpecialMesh") 
BandM.MeshType = "Brick" 
BandM.Parent = Band 
BandM.Scale = Vector3.new(1.03, 0.2, 1.03) 
Band:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Band 
Weld.Part0 = Limbs[NormalHand] 
Weld.Part1 = Band 
Weld.C0 = CFrame.new(0, -1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Watch1 = Instance.new("Part") 
Watch1.Parent = Suit 
Watch1.Name = "Watch1" 
Watch1.CanCollide = false 
Watch1.formFactor = "Symmetric" 
Watch1.Size = Vector3.new(1, 1, 1) 
Watch1.BrickColor = BrickColor.new("Black") 
Watch1.TopSurface = 0 
Watch1.BottomSurface = 0 
Watch1.Transparency = 1 
Watch1M = Instance.new("CylinderMesh") 
Watch1M.Parent = Watch1 
Watch1M.Scale = Vector3.new(0.3, 0.2, 0.3) 
Watch1:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Watch1 
Weld.Part0 = Band 
Weld.Part1 = Watch1 
Weld.C0 = CFrame.new(0, -0.1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Watch2 = Instance.new("Part") 
Watch2.Parent = Suit 
Watch2.Name = "Watch2" 
Watch2.CanCollide = false 
Watch2.formFactor = "Symmetric" 
Watch2.Size = Vector3.new(1, 1, 1) 
Watch2.BrickColor = BrickColor.new("White") 
Watch2.TopSurface = 0 
Watch2.BottomSurface = 0 
Watch2.Transparency = 1 
Watch2M = Instance.new("CylinderMesh") 
Watch2M.Parent = Watch2 
Watch2M.Scale = Vector3.new(0.25, 0.2, 0.25) 
Watch2:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Watch2 
Weld.Part0 = Band 
Weld.Part1 = Watch2 
Weld.C0 = CFrame.new(0, -0.1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 

--sumthing
cloud = Instance.new("Part") 
cloud.Size = Vector3.new(500,5,500) 
cloud.Position = Vector3.new(0,512,0) 
cloud.BrickColor = BrickColor.Black() 
cloud.Anchored = true 
cloud.Locked = true 
cloud.CanCollide = false
cloud.Transparency = 1
cloud.Parent = game.Workspace 

sound = Instance.new("Sound") 
sound.Volume = 1 
sound.SoundId = "rbxasset://sounds/HalloweenThunder.wav" 
sound.Parent = game.Workspace 

c1 = Instance.new("Color3Value") 
c1.Value = Color3.new(100,100,100) 
c1.Parent = script 

c2 = Instance.new("Color3Value") 
c2.Value = Color3.new(100,100,100) 
c2.Parent = script 


function spark() 
Hit = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),-512,math.random(-250,250))) 
local P = Instance.new("Part") 
P.Name = "Guideline" 
local Place0 = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),0,math.random(-250,250))) 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
P.Parent = game.workspace 
P.BrickColor = BrickColor.Black() 
P.Anchored = true 
P.CanCollide = false 
P.Transparency = 1 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.1,0.1,1) 
m.Parent = P 
mh = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),-512,math.random(-250,250))) 
exp = Instance.new("Explosion") 
exp.Position = mh.p 
exp.BlastRadius = 25 
exp.Parent = game.Workspace 
for c1 = 1, 1 do 
oldHit = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),0,math.random(-250,250))) 
for count = 1, 9 do 
val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)) 
val2 = P.Size.z / 10 
val3 = P.CFrame.lookVector * -1 
val4 = count * val2 
val5 = val4 * val3 
val6 = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),0,math.random(-250,250))).p 
Hit = CFrame.new(val5 + val1 + val6) 
local s = Instance.new("Part") 
s.Name = "Spark" 
local Place0 = oldHit 
s.formFactor = 0 
s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
s.Parent = game.workspace 
s.BrickColor = BrickColor.White() 
s.Anchored = true 
s.CanCollide = false 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(1,1,1) 
m.Parent = s 
clone = s:clone() 
clone.Mesh.Scale = Vector3.new(3,3,1.1) 
clone.BrickColor = BrickColor.Blue() 
clone.Transparency = 0.8 
clone.Parent = s.Parent 
oldHit = Hit 
end 
Hit = oldHit 
local s = Instance.new("Part") 
s.Name = "Spark" 
local Place0 = mh 
s.formFactor = 0 
s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
s.Parent = game.workspace 
s.BrickColor = BrickColor.White() 
s.Anchored = true 
s.CanCollide = false 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(1,1,1) 
m.Parent = s 
clone = s:clone() 
clone.Mesh.Scale = Vector3.new(3,3,1.1) 
clone.BrickColor = BrickColor.Blue() 
clone.Transparency = 0.8 
clone.Parent = game.workspace 
sound:play() 
wait(0.1) 
end 
P:remove() 
for c = 1, 10 do 
a = game.workspace:children() 
for b = 1, #a do 
if (a[b].Name == "Spark") then 
a[b].Transparency = a[b].Transparency + 0.1 
end 
end 
wait(0.1) 
end 
a = game.workspace:children() 
for b = 1, #a do 
if (a[b].Name == "Spark") then 
a[b]:remove() 
end 
end 
end 

---Real Function 
function SetAngle(Joint, Angle) 
if (Joint == 1) or (Joint == 3) then 
Joints[Joint].DesiredAngle = Angle 
end 
if (Joint == 2) or (Joint == 4) then 
Joints[Joint].DesiredAngle = -Angle 
end 
end 
function DisableLimb(Limb) 
Joints[Limb]:remove() 

Joint = Instance.new("Motor") 
Joint.Parent = Person.Character.Torso 
Joint.Part0 = Person.Character.Torso 
Joint.Part1 = Limbs[Limb] 
Joint.MaxVelocity = 0.1 
if (Limb == 1) then 
C0 = CFrame.new(PersonT.Size.x/2 + Limbs[Limb].Size.x/2, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.Name = "Right Joint Top" 
elseif (Limb == 2) then 
C0 = CFrame.new(-PersonT.Size.x/2 - Limbs[Limb].Size.x/2, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.Name = "Left Joint Top" 
elseif (Limb == 3) then 
C0 = CFrame.new(Limbs[Limb].Size.x/2, -(Limbs[Limb].Size.y/4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.Name = "Right Joint Bottom" 
elseif(Limb == 4) then 
C0 = CFrame.new(-Limbs[Limb].Size.x/2, -(Limbs[Limb].Size.y/4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.Name = "Left Joint Bottom" 
end 
Joint.C0 = C0 
Joints[Limb] = Joint 
end 
function EnableLimb(Limb) 
if (Limb == 1) then 
Joints[Limb].Name = "Right Shoulder" 
elseif (Limb == 2) then 
Joints[Limb].Name = "Left Shoulder" 
elseif (Limb == 3) then 
Joints[Limb].Name = "Right Hip" 
elseif(Limb == 4) then 
Joints[Limb].Name = "Left Hip" 
end 
Anim = Person.Character.Animate:clone() 
Person.Character.Animate:remove() 
Anim.Parent = Person.Character 
end 
function Grab(Part) 
if (Grabbed == nil) then 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Player = game.Players:GetPlayerFromCharacter(Human.Parent) 
if (Player ~= nil) then 
if (Player ~= Person) then 
Human.Sit = true 
Weld = Instance.new("Weld") 
Weld.Name = "Grip" 
Weld.Parent = Person.Character.Torso 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = Player.Character.Torso 
Weld.C0 = CFrame.new(0, 2.5, 0) * CFrame.fromEulerAnglesXYZ(3.14/2, 0, 0) 
SetAngle(1, 3.14) 
SetAngle(2, 3.14) 
Grabbed = Player 
Human.Sit = true 
Connection1:disconnect() 
Connection2:disconnect() 
while true do 
if (Weld.Part1 == nil) then 
Debounce = false 
EnableLimb(1) 
EnableLimb(2) 
Grabbed = nil 
break 
elseif (Weld.Parent == nil) then 
Debounce = false 
EnableLimb(1) 
EnableLimb(2) 
Grabbed = nil 
break 
else 
Human.Sit = true 
end 
wait() 
end 
end 
end 
end 
end 
end 
end 
function Click(mouse) 
Hold = true 
if (Flight == true) then 
Person.Character.Engine.BodyPosition.maxForce = Vector3.new(0, 0, 0) 
Person.Character.Engine.BodyVelocity.maxForce = Vector3.new(4e+030, 4e+030, 4e+030) 
Position = Person.Character.Engine.Position 
s1.Enabled = true 
s2.Enabled = true 
s3.Enabled = true 
s4.Enabled = true 
s5.Enabled = false 
s6.Enabled = false
Person.Character.Engine.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(3.14/2, 0, 0) 
SetAngle(NormalHand, 3.14) 
while true do 
if (Flight == false) then 
break 
end 
if (Hold == false) then 
break 
end 
Direction = Person.Character.Engine.CFrame.lookVector 
Position = Position + 2 * 3 * Direction 
error = Position - Person.Character.Engine.Position 
Person.Character.Engine.BodyVelocity.velocity = 2 * error 
wait() 
end 
BodyP.position = Engine.Position 
Person.Character.Engine.BodyPosition.maxForce = Vector3.new(4e+050, 4e+050, 4e+050) 
s1.Enabled = false 
s2.Enabled = false 
s3.Enabled = false 
s4.Enabled = false 
s5.Enabled = true 
s6.Enabled = true 
Person.Character.Engine.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
SetAngle(NormalHand, 0) 

end 

end 


function Release(mouse) 
Hold = false 
end 
function Direct(En, Target) 
local OriginCFrame = En:findFirstChild("BodyGyro").cframe 
local Direction = (Target - En.Position).unit 
local SpawnPosition = En.Position 
local Position = SpawnPosition + (Direction * 1) 
En:findFirstChild("BodyGyro").maxTorque = Vector3.new(9000, 9000, 9000) 
En:findFirstChild("BodyGyro").cframe = CFrame.new(Position, Position + Direction) 
end 
function PressKey(key, mouse) 
key = key:upper() 
if (key == "V") then 
FF = Instance.new("ForceField") 
FF.Parent = game.workspace.rigletto 
game.workspace.rigletto.Humanoid.MaxHealth = math.huge
game.workspace.rigletto.Humanoid.Health = math.huge
wait(10) 
FF:Remove() 
game.workspace.rigletto.Humanoid.MaxHealth = 100
end 
if (key == "Z") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(1) 
DisableLimb(2) 
Joints[1].MaxVelocity = 1 
SetAngle(1, 3.14) 
Joints[2].MaxVelocity = 1 
SetAngle(2, 3.14) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
--Human.Sit = true 
Human.Parent.Torso.Velocity = Vector3.new(0, 400, 0) 
end 
end 
end 
Connection = Limbs[1].Touched:connect(Touch) 
ConnectionB = Limbs[2].Touched:connect(Touch) 
wait(0.5) 
Joints[1].MaxVelocity = 0.1 
Joints[2].MaxVelocity = 0.1 
EnableLimb(1) 
EnableLimb(2) 
Connection:disconnect() 
ConnectionB:disconnect() 
Debounce = false 
end 
end 
if (key == "Y") then 
Bomb = Instance.new("Part") 
Bomb.Name = "Bomb" 
Bomb.formFactor = "Plate" 
Bomb.Size = Vector3.new(1, 0.4, 1) 
Bomb.TopSurface = 0 
Bomb.BottomSurface = 0 
Bomb.BrickColor = BrickColor.new("Black") 
Bomb.CFrame = CFrame.new(Person.Character.Suit.Watch2.Position) 
Bomb.CanCollide = true 
Bomb.Parent = game.Workspace.rigletto 
Smoke = Instance.new("Smoke") 
Smoke.Parent = Bomb 
local c = (PersonT.Color.r + PersonT.Color.g + PersonT.Color.b)/3 
Smoke.Color = Color3.new(c, c, c) 
Smoke.Size = 1 
Smoke.Opacity = 0.7 
Smoke.RiseVelocity = 10 
wait(5) 
xplode = Instance.new("Explosion") 
xplode.BlastRadius = 20 
xplode.BlastPressure = 20 
xplode.Parent = game.workspace.rigletto.Bomb
xplode.Position = game.workspace.rigletto.Bomb 
wait(0.2) 
game.workspace.Bomb:Remove() 
end 
if (key == "Q") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(NormalFoot) 
Joints[NormalFoot].MaxVelocity = 1 
SetAngle(NormalFoot, 0.7) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
Human.Parent.Torso.Velocity = Human.Parent.Torso.Velocity + Vector3.new(0, 100, 0) 
end 
end 
end 
Connection = Limbs[NormalFoot].Touched:connect(Touch) 
wait(0.5) 
Joints[NormalFoot].MaxVelocity = 0.1 
EnableLimb(NormalFoot) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "F") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(NormalFoot) 
Joints[NormalFoot].MaxVelocity = 1 
SetAngle(NormalFoot, 0.7) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Player = game.Players:GetPlayerFromCharacter(Human.Parent) 
if (Player ~= nil) then 
if (Player ~= Person) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
Human.Parent.Torso.Velocity = Human.Parent.Torso.Velocity + Vector3.new(0, 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0) 
wait(0.4) 
Player:remove() 
end 
end 
end 
end 
end 
Connection = Limbs[NormalFoot].Touched:connect(Touch) 
wait(0.5) 
Joints[NormalFoot].MaxVelocity = 0.1 
EnableLimb(NormalFoot) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "E") then 
if (Flight == true) then 
if (FDebounce == false) then 
FDebounce = true 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = Person.Character.Engine.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
end 
end 
end 
Connection = PersonT.Touched:connect(Touch) 
wait(2) 
Connection:disconnect() 
FDebounce = false 
end 
end 
if (Debounce == false) then 
Debounce = true 
DisableLimb(NormalHand) 
Joints[NormalHand].MaxVelocity = 1 
SetAngle(NormalHand, 1.57) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
end 
end 
end 
Connection = Limbs[NormalHand].Touched:connect(Touch) 
wait(0.5) 
EnableLimb(NormalHand) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "T") then 
E = Instance.new("Explosion") 
E.Parent = game.Workspace 
E.BlastRadius = 12 
E.Position = mouse.hit.p 
E.BlastPressure = 1000 
end 
if (key == "G") then 
if (Grabbed == nil) then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(1) 
DisableLimb(2) 
SetAngle(1, 1.57) 
SetAngle(2, 1.57) 
Connection1 = Limbs[1].Touched:connect(Grab) 
Connection2 = Limbs[2].Touched:connect(Grab) 
for E = 1, 30 do 
if (Grabbed ~= nil) then 
break 
end 
wait(0.1) 
end 
if (Grabbed == nil) then 
EnableLimb(1) 
EnableLimb(2) 
Connection1:disconnect() 
Connection2:disconnect() 
Debounce = false 
end 
end 
else 
Person.Character.Torso.Grip:remove() 
Position = Grabbed.Character.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 4 * 3 * Direction 
error = Position - PersonT.Position 
Grabbed.Character.Torso.Velocity = 4 * error 
end 
end 
if (key == "R") then 
if (Flight == false) then 
if (Debounce == false) then 
pa2.Transparency = 0 
pa2.CanCollide = true 
pa3.Transparency = 0 
pa3.CanCollide = true 
pa4.Transparency = 0 
pa4.CanCollide = true 
pa5.Transparency = 0 
pa5.CanCollide = true 
s5.Enabled = true 
s6.Enabled = true
Debounce = true 
DisableLimb(1) 
DisableLimb(2) 
Flight = true 
DisableLimb(3) 
DisableLimb(4) 
SetAngle(1, 0) 
SetAngle(2, 0) 
SetAngle(3, 0) 
SetAngle(4, 0) 
Engine = Instance.new("Part") 
Engine.Parent = Person.Character 
Engine.Size = PersonT.Size 
Engine.Name = "Engine" 
Engine.TopSurface = 0 
Engine.BottomSurface = 0 
Engine.formFactor = "Symmetric" 
Engine.Transparency = 1 
Engine:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Engine 
Weld.Part0 = PersonT 
Weld.Part1 = Engine 
Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
BodyP = Instance.new("BodyPosition") 
BodyP.Parent = Engine 
BodyP.position = Engine.Position + Vector3.new(0, 10, 0) 
BodyP.maxForce = Vector3.new(4e+050, 4e+050, 4e+050) 
BodyG = Instance.new("BodyGyro") 
BodyG.Parent = Engine 
BodyV = Instance.new("BodyVelocity") 
BodyV.Parent = Engine 
BodyV.velocity = Vector3.new(0, 0, 0) 
BodyV.maxForce = Vector3.new(0, 0, 0) 
while true do 
if (Flight == false) then 
pa2.Transparency = 1 
pa2.CanCollide = false 
pa3.Transparency = 1 
pa3.CanCollide = false 
pa4.Transparency = 1 
pa4.CanCollide = false 
pa5.Transparency = 1 
pa5.CanCollide = false 
s5.Enabled = false 
s6.Enabled = false
break 
end 
Direct(Engine, mouse.hit.p) 
Person.Character.Humanoid.Sit = true 
Person.Character.Head.CanCollide = false 
Person.Character.Torso.CanCollide = false 
wait(0.000000000000000000000000000000001) 
end 
EnableLimb(1) 
EnableLimb(2) 
EnableLimb(3) 
EnableLimb(4) 
Debounce = false 
Person.Character.Engine:remove() 
Person.Character.Humanoid.Sit = false 
end 
else 
Flight = false 
end 
end 
if (key == "L") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(1) 
Joints[1].MaxVelocity = 1 
SetAngle(1, 3.60) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
--Human.Sit = true 
Human.Parent.Torso.Velocity = Vector3.new(0, 0, 0) 
end 
end 
end 
Connection = Limbs[1].Touched:connect(Touch) 
wait(0.5) 
Joints[1].MaxVelocity = 0.1 
EnableLimb(1) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "H") then 
if (Debounce == false) then 
if (Lazer == false) then 
if (mouse.Target ~= nil) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 1.5) 
BP = Instance.new("BodyPosition") 
BP.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
BP.P = BP.P / 4 
BG = Instance.new("BodyGyro") 
BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local Hit = mouse.Target 
local _P = mouse.Hit.p 
local Mag = (Hit.Position-_P).magnitude 
local Pos = (Hit.Position-_P).unit * -Mag 
local CF = Hit.CFrame.lookVector 
while true do 
if (Lazer == false) then 
break 
end 
BP.Parent = PersonT 
BP.position = ((((CFrame.new(Hit.Position + Pos)) + (-CF)) + (Hit.CFrame.lookVector)) + (mouse.Hit.lookVector * -16)).p + Vector3.new(0, 5.7, 0) 
BG.Parent = PersonT 
BG.cframe = CFrame.new((PersonT.CFrame + (mouse.Hit.lookVector * -8)).p, (Hit.Position + Pos)) 
if (Hit.Parent == nil) or (Hit.Parent.Parent == Person.Character) then 
BP.Parent = nil 
BG.Parent = nil 
end 
local P = Instance.new("Part") 
P.Name = "Grapple Lazer" 
P.formFactor = 0 
P.Parent = Person.Character 
P.BrickColor = BrickColor.new(1) 
P.Anchored = true 
P.Transparency = 0.05 
P.Locked = true 
P.Reflectance = 0.025 
P.CanCollide = false 
P.Size = Vector3.new(1, 1, 1) 
local mesh = Instance.new("CylinderMesh") 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 

mesh.Scale = Vector3.new(0.1, (Place0.p - (Hit.Position + Pos)).magnitude, 0.1) 
mesh.Parent = P 
P.CFrame = CFrame.new((Place0.p + (Hit.Position + Pos))/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
wait() 
P:remove() 
end 
Debounce = false 
EnableLimb(NormalHand) 
BP.Parent = nil 
BG.Parent = nil 
end 
end 
end 
end 
if (key == "J") then 
if (Debounce == false) then 
if (Lazer == false) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 1.5) 
smokeBrick = Instance.new("Part") 
smokeBrick.CanCollide = false 
smokeBrick.Anchored = true 
smokeBrick.Transparency = 1 
smokeBrick.Locked = true 
smokeBrick.archivable = false 
smokeBrick.TopSurface = 0 
smokeBrick.BottomSurface = 0 
smoke = Instance.new("Smoke") 
smoke.Size = 5 
smoke.Opacity = math.huge 
smoke.RiseVelocity = 10 
smoke.Color = Color3.new(21, 0, 0) 
while true do 
if (Lazer == false) then 
break 
end 
local Pos = mouse.Hit.p 
smokeBrick.Parent = Person.Character 
smokeBrick.CFrame = CFrame.new(Pos) 
if (mouse.Target) and (mouse.Target ~= nil) then 
smoke.Parent = smokeBrick 
local c = (mouse.Target.Color.r + mouse.Target.Color.g + mouse.Target.Color.b)/3 
smoke.Color = Color3.new(c, c, c) 
smoke.RiseVelocity = 10
end 
local L = Instance.new("Part") 
L.Parent = Person.Character 
L.Name = "Kill Lazer" 
L.BrickColor = BrickColor.new(21) 
L.formFactor = 0 
L.Size = Vector3.new(1, 1, 1) 
L.Locked = true 
L.Anchored = true 
L.CanCollide = false 
L.Transparency = 0.05 
L.Reflectance = 0.1 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 
local Mesh = Instance.new("CylinderMesh") 
Mesh.Parent = L 
Mesh.Scale = Vector3.new(0.1, (Place0.p - Pos).magnitude, 0.1) 
L.CFrame = CFrame.new((Place0.p + Pos)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
if (mouse.Target ~= nil) then 
if (mouse.Target.Parent.Name:lower() == "") or ("" == "") then 
if ("" ~= "") then 
mouse.Target.Parent:BreakJoints() 
else 
mouse.Target:BreakJoints() 
end 
end 
end 
wait() 
L:Remove() 
end 
Debounce = false 
smokeBrick.Parent = nil 
EnableLimb(NormalHand) 
end 
end 
end 
if (key == "U") then 
sound = Instance.new("Sound") 
sound.Volume = 1 
sound.SoundId = "rbxasset://sounds/HalloweenThunder.wav" 
sound.Parent = game.Workspace 
function spark() 
Hit = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),-512,math.random(-250,250))) 
local P = Instance.new("Part") 
P.Name = "Guideline" 
local Place0 = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),0,math.random(-250,250))) 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
P.Parent = game.workspace 
P.BrickColor = BrickColor.Black() 
P.Anchored = true 
P.CanCollide = false 
P.Transparency = 1 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.1,0.1,1) 
m.Parent = P 
mh = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),-512,math.random(-250,250))) 
exp = Instance.new("Explosion") 
exp.Position = mh.p 
exp.BlastRadius = 25 
exp.Parent = game.Workspace 
for c1 = 1, 1 do 
oldHit = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),0,math.random(-250,250))) 
for count = 1, 9 do 
val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)) 
val2 = P.Size.z / 10 
val3 = P.CFrame.lookVector * -1 
val4 = count * val2 
val5 = val4 * val3 
val6 = CFrame.new(cloud.CFrame.p + Vector3.new(math.random(-250,250),0,math.random(-250,250))).p 
Hit = CFrame.new(val5 + val1 + val6) 
local s = Instance.new("Part") 
s.Name = "Spark" 
local Place0 = oldHit 
s.formFactor = 0 
s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
s.Parent = game.workspace 
s.BrickColor = BrickColor.White() 
s.Anchored = true 
s.CanCollide = false 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(1,1,1) 
m.Parent = s 
clone = s:clone() 
clone.Mesh.Scale = Vector3.new(3,3,1.1) 
clone.BrickColor = BrickColor.Blue() 
clone.Transparency = 0.8 
clone.Parent = s.Parent 
oldHit = Hit 
end 
Hit = oldHit 
local s = Instance.new("Part") 
s.Name = "Spark" 
local Place0 = mh 
s.formFactor = 0 
s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
s.Parent = game.workspace 
s.BrickColor = BrickColor.White() 
s.Anchored = true 
s.CanCollide = false 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(1,1,1) 
m.Parent = s 
clone = s:clone() 
clone.Mesh.Scale = Vector3.new(3,3,1.1) 
clone.BrickColor = BrickColor.Blue() 
clone.Transparency = 0.8 
clone.Parent = game.workspace 
sound:play() 
wait(0.1) 
end 
P:remove() 
for c = 1, 10 do 
a = game.workspace:children() 
for b = 1, #a do 
if (a[b].Name == "Spark") then 
a[b].Transparency = a[b].Transparency + 0.1 
end 
end 
wait(0.1) 
end 
a = game.workspace:children() 
for b = 1, #a do 
if (a[b].Name == "Spark") then 
a[b]:remove() 
end 
end 
end 
spark() 
end 
if (key == "B") then 
game.workspace.rigletto.Torso.T.Partsword.Transparency = 1
-----Right Arm Sword 

local prt1 = Instance.new("Part") 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Bright red") 
prt1.Locked = true 
prt1.Name = "Sword2" 
prt1.Size = Vector3.new(1,1,1) 
prt1.Parent = game.workspace.rigletto 
local obj1 = Instance.new("SpecialMesh");
obj1.Parent = prt1;
obj1.MeshType = Enum.MeshType.FileMesh;
obj1.MeshId = "http://www.roblox.com/asset/?id=24712232";
obj1.TextureId = "http://www.roblox.com/asset/?id=24712222";
obj1.Scale = Vector3.new(1.7,1.7,1.7)
local w1 = Instance.new("Weld") 
w1.Parent = prt1 
w1.Part0 = prt1 
w1.Part1 = game.workspace.rigletto["Right Arm"] 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 9.4, 1.6) * CFrame.new(-1, 0, 2.9) 

local prt2 = Instance.new("Part") 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Bright blue") 
prt2.Locked = true 
prt2.Transparency = 1
prt2.Name = "Sword" 
prt2.Size = Vector3.new(1,7,1) 
prt2.Parent = game.workspace.rigletto 
local w1 = Instance.new("Weld") 
w1.Parent = prt2 
w1.Part0 = prt2 
w1.Part1 = game.workspace.rigletto["Right Arm"] 
w1.C1 = CFrame.fromEulerAnglesXYZ(1.60, 0, 0) * CFrame.new(0, -1.9, 1.2) 




function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
h.Health = h.Health - 10 
end 
end 
prt2.Touched:connect(onTouched) 
end 
if (key == "X") then 
game.workspace.rigletto.Sword2.Weld:Remove() 
game.workspace.rigletto.Sword.Weld:Remove() 
game.workspace.rigletto.Sword.Parent = game.workspace 
game.workspace.rigletto.Sword2.Parent = game.workspace 
local w1 = Instance.new("Weld") 
w1.Parent = game.workspace.Sword2 
w1.Part0 = game.workspace.Sword 
w1.Part1 = game.workspace.Sword2 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 12, 1.6) * CFrame.new(-1, 0, 1.9) 
game.workspace.Sword2.CanCollide = true 
game.workspace.Sword.CanCollide = true 
wait()
game.workspace.Sword2.Velocity = game.workspace.rigletto["Right Arm"].CFrame.lookVector*100 
game.workspace.Sword.Velocity = game.workspace.rigletto["Right Arm"].CFrame.lookVector*100 
game.workspace.rigletto.Sword2.Touched:connect(function(hit) kill(b,hit) end) 
	function kill(brick,hit) 
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= "rigletto" then 
		local wel = Instance.new("Weld")
		wel.Parent = game.workspace.Sword2 
		wel.Part0 = game.workspace.Sword2 
		wel.Part1 = hit.Parent.Torso 
		local weld = Instance.new("Weld") 
		weld.Parent = game.workspace.Sword 
		weld.Part0 = game.workspace.Sword 
		weld.Part1 = hit.Parent.Torso 
		hit.Parent.Humanoid.PlatformStand = true 
		wait(3)
		hit.Parent.Humanoid.Health = 0
		game.workspace.Sword.CanCollide = true 
		game.workspace.Sword2.CanCollide = true 
		end 
	end 
wait(1)
game.workspace.rigletto.Sword2.Touched:connect(function(hit) kill(b,hit) end) 
	function kill(brick,hit) 
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" then 
		local w1 = Instance.new("Weld") 
		w1.Part0 = prt1 
		w1.Part1 = hit.Parent["Right Arm"] 
		w1.C1 = CFrame.fromEulerAnglesXYZ(0, 9.4, 1.6) * CFrame.new(-1, 0, 1.9) 

		local w1 = Instance.new("Weld") 
		w1.Parent = prt2 
		w1.Part0 = prt2 
		w1.Part1 = hit.Parent["Right Arm"] 
		w1.C1 = CFrame.fromEulerAnglesXYZ(1.60, 0, 0) * CFrame.new(0, -1.9, 1.2) 
		end 
	end 
end 
if (key == "C") then 
wait(1)
game.workspace.rigletto.Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.50,3.14,0) * CFrame.new(0,0,-0.5) 
DisableLimb(1) 
DisableLimb(2) 
Joints[1].MaxVelocity = 1 
SetAngle(1, 3.14) 
Joints[2].MaxVelocity = 1 
SetAngle(2, 3.14) 
game.workspace.rigletto.Humanoid.WalkSpeed = 0
local mody = Instance.new("Model") 
mody.Parent = game.workspace 
local blar = Instance.new("Part") 
blar.Size = Vector3.new(2,2,2) 
blar.Transparency = 0.6 
blar.Shape = 0 
blar.Anchored = true 
blar.BrickColor = BrickColor.new("White") 
blar.CanCollide = false 
blar.Parent = game.workspace.rigletto
blar.Position = game.workspace.rigletto.Torso.Position
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.04 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.06
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.08
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.10
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.12
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.14
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.16
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.18
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.20
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.22
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.24
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.26
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.28
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.30
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.32
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.34
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.36
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.38
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.40
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.42
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.44
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.46
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.48
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.50
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.52
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.54
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.56
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.58
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.60
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.62
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.64
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.66
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.68
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.70
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.72
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.74
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.76
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.78
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.80
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.82
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.84
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.86
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.88
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.90
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.92
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.94
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.96
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 0.98
wait(0.15)
local nod = Instance.new("Part")
nod.Parent = mody
nod.CFrame = blar.CFrame + Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
bod = Instance.new("BodyPosition")
bod.position = blar.Position
bod.Parent = nod
blar.Reflectance = 0.02 
nod.formFactor = 0
nod.Size = Vector3.new(1,1,1)
nod.Transparency = 0.6
nod.BrickColor = BrickColor:random() 
nod.CanCollide = false
nod.Locked = true
nod.Shape = 0
nod.BottomSurface = 0
nod.TopSurface = 0
blar.Reflectance = 1
wait(0.15)

wait(1) 
local spark = Instance.new("Sparkles") 
spark.Parent = blar 
spark.SparkleColor = Color3.new(1,1,1)
mody:Remove() 
wait(2)
blar:Remove() 
FF = Instance.new("ForceField") 
FF.Parent = game.workspace.rigletto 
wait()
boom = Instance.new("Explosion") 
boom.Parent = game.workspace 
boom.BlastRadius = 50 
boom.Position = blar.Position
wait(0.5)
game.workspace.rigletto.Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.50,3.14,0) * CFrame.new(0,0,-0.5) 
Joints[1].MaxVelocity = 0.1 
Joints[2].MaxVelocity = 0.1 
EnableLimb(1) 
EnableLimb(2) 
FF:Remove() 
game.workspace.rigletto.Humanoid.PlatformStand = true 
wait(5)
game.workspace.rigletto.Humanoid.PlatformStand = false 
game.workspace.rigletto.Humanoid.WalkSpeed = 16
end 
if (key == "[") then 
game.workspace.rigletto.Humanoid.PlatformStand = true 
Anim = game.workspace.rigletto.Animate:Clone() 
Anim.Parent = Lighting 
game.workspace.rigletto.Animate:Remove() 
game.workspace.rigletto.Humanoid.WalkSpeed = 0 
local p=Instance.new("Part") 
p.Parent=game.Players.rigletto.Character 
p.Name="BRICK" 
p.Size=Vector3.new(5,7,5) 
p.Transparency = 0.4 
p.Reflectance = 0.5
p.BrickColor = BrickColor.Blue() 
p.Position = game.workspace.rigletto.Torso.Position
local w=Instance.new("Weld") 
w.Parent=p.Parent.Torso 
w.Part0=w.Parent 
w.Part1=p 
wait(15) 
game.workspace.rigletto.Humanoid.PlatformStand = false
Anim.Parent = game.workspace.rigletto
p:Remove() 
game.workspace.rigletto.Suit2:Remove() 
game.workspace.rigletto.Humanoid.WalkSpeed = 30 
senro = game.Players.rigletto.Character 

function remove() 
c = senro:getChildren() 
for i = 1, #c do 
if c[i].className == "Hat" then 
c[i]:remove() 
end 
end 
end 

function Make(X,Y,Z,Shape,Color,Form,Transparency,Reflectance,MType,MX,MY,MZ,CFX,CFY,CFZ,AX,AY,AZ,WeldTo) 

x = X 
y = Y 
z = Z 
shape = Shape 
color = Color 
form = Form 
trans = Transparency 
reflect = Reflectance 


local Brick = Instance.new("Part") 
Brick.Shape = shape 
Brick.formFactor = form 
Brick.BrickColor = BrickColor.new(Color) 
Brick.Size = Vector3.new(x,y,z) 
Brick.Transparency = trans 
Brick.Reflectance = reflect 
Brick.CanCollide = false 

meshx = MX 
meshy = MY 
meshz = MZ 

type = MType 

Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Brick 
Mesh.MeshType = type 
Mesh.Scale = Vector3.new(meshx, meshy, meshz) 


Anglex = AX 
Angley = AY 
Anglez = AZ 

CFramex = CFX 
CFramey = CFY 
CFramez = CFZ 

Weldto = WeldTo 

local p = Brick:clone() 
local pp = p:clone() 
pp.Parent = senro 
local w = Instance.new("Weld") 
w.Parent = senro:findFirstChild(Weldto) 
w.Part0 = w.Parent 
w.Part1 = pp 
w.C1 = CFrame.fromEulerAnglesXYZ(Anglex, Angley, Anglez) * CFrame.new(CFramex, CFramey, CFramez) 
end 

function Weld() 
senro.Humanoid.WalkSpeed = 30 
senro.Humanoid.Health = math.huge 
senro.Humanoid.MaxHealth = math.huge 
senro.Head.Transparency = 1 
senro["Torso"].Reflectance = 1 
senro["Right Leg"].Reflectance = 1 
senro["Right Arm"].Reflectance = 1 
senro["Left Leg"].Reflectance = 1 
senro["Left Arm"].Reflectance = 1 
--Make(X,Y,Z,Shape,Color,Form,Transparency,Reflectance,MType,MX,MY,MZ,CFX,CFY,CFZ,AX, AY, AZ, WeldTo) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1.1, 2, 0, 0, 0.7, math.pi/2, 0, math.pi/2, senro.Torso.Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1.1, 2, 0, 0, -0.7, math.pi/-2, 0, math.pi/-2, senro.Torso.Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0, 0, -0.7, math.pi/-2, 0, math.pi/-2, senro["Left Arm"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0, 0, 0.7, math.pi/2, 0, math.pi/2, senro["Left Arm"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0, 0, -0.7, math.pi/-2, 0, math.pi/-2, senro["Right Arm"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0, 0, 0.7, math.pi/2, 0, math.pi/2, senro["Right Arm"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0, 0, -0.7, math.pi/-2, 0, math.pi/-2, senro["Left Leg"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0, 0, 0.7, math.pi/2, 0, math.pi/2, senro["Left Leg"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0, 0, -0.7, math.pi/-2, 0, math.pi/-2, senro["Right Leg"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0, 0, 0.7, math.pi/2, 0, math.pi/2, senro["Right Leg"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, -0.7, 0, 0, math.pi/91, 0, -11, senro["Right Leg"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, -0.7, 0, 0, math.pi/91, 0, -11, senro["Right Arm"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0.7, 0, 0, math.pi/91, 0, 11, senro["Left Leg"].Name) 
Make(1, 0.4, 1, 1, 11, 2, 0, 1, 1, 2, 1, 1, 0.7, 0, 0, math.pi/91, 0, 11, senro["Left Arm"].Name) 
Make(1, 1, 4, 1, 11, 2, 0, 1, 3, 1, 1, 2, 1, -0.5, -0.8, -2, -11, -9, senro["Torso"].Name) 
Make(1, 1, 4, 1, 11, 2, 0, 1, 3, 1, 1, 2, 1, -0.5, -0.8, -2, -11, -5, senro["Torso"].Name) 
Make(1, 1, 4, 1, 11, 2, 0, 1, 3, 1, 1, 2, 1, -0.5, -0.8, -2, -11, 9, senro["Torso"].Name) 
Make(1, 1, 4, 1, 11, 2, 0, 1, 0, 1.5, 1.2, 4, 0, 0.3, 0, -2, -11, -9, senro["Head"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 0, 1.4, 1.4, 1.4, 0, 0, 0, 0, 0, 0, senro["Head"].Name) 
Make(1, 1, 1, 1, 21, 2, 0.3, 0, 0, 1, 0.6, 1, 0, -0.1, 0.4, 0, 0, 0, senro["Head"].Name) 
Make(1, 1, 4, 1, 11, 2, 0, 1, 3, 0.3, 0.3, 0.3, 0, 0, 1, -2, -11, -9, senro["Torso"].Name) 
Make(1, 1, 4, 1, 11, 2, 0, 1, 3, 0.3, 0.3, 0.3, 0, 0, 1, -2, -11, -5, senro["Torso"].Name) 
Make(1, 1, 4, 1, 11, 2, 0, 1, 3, 0.3, 0.3, 0.3, 0, 0, 1, -2, -11, 9, senro["Torso"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 4, 0.3, -0.5, 0.7, 0.5, 0, 0, 0, senro["Right Arm"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 4, 0.3, -0.5, 0.7, -0.5, 0, 0, 0, senro["Right Arm"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 4, 0.3, 0.5, 0.7,-0.5, 0, 0, 0, senro["Right Arm"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 4, 0.3, 0.5, 0.7, 0.5, 0, 0, 0, senro["Right Arm"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 4, 0.3, 0.5, 0.7,-0.5, 0, 0, 0, senro["Left Arm"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 4, 0.3, 0.5, 0.7, 0.5, 0, 0, 0, senro["Left Arm"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 4, 0.3, -0.5, 0.7, 0.5, 0, 0, 0, senro["Left Arm"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 4, 0.3, -0.5, 0.7, -0.5, 0, 0, 0, senro["Left Arm"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 3, 0.3, -0.5, -0.7, -0.5, -0.8, -0.2, 0, senro["Head"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 3, 0.3, 0.5, -0.7,-0.5, -0.8, 0.2, 0, senro["Head"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 3, 0.3, -0.5, 0.3, -0.5, 0.8, -0.2, 0, senro["Head"].Name) 
Make(1, 1, 1, 1, 11, 2, 0, 1, 3, 0.3, 3, 0.3, 0.5, 0.3,-0.5, 0.8, 0.2, 0, senro["Head"].Name) 

end 
Weld() 
remove() 
S = Instance.new("Sparkles") 
S.Parent = game.workspace.rigletto.Torso
	function onTouched(hit) 
	h = hit.Parent:findFirstChild("Humanoid") 
	if h ~= nil then 
	Ani = h.Parent.Animate:Clone() 
	Ani.Parent = game.Lighting 
	h.Parent.Animate:Remove()
	h.Health = h.Health - 10 
	h.PlatformStand = true 
	h.WalkSpeed = 0 
	h.Parent.Head.Reflectance = 0.5 
	h.Parent.Torso.Reflectance = 0.5 
	h.Parent["Left Arm"].Reflectance = 0.5 
	h.Parent["Left Leg"].Reflectance = 0.5 
	h.Parent["Right Arm"].Reflectance = 0.5 
	h.Parent["Right Leg"].Reflectance = 0.5 
	local p=Instance.new("Part") 
	p.Parent=h 
	p.Name="BRICK" 
	p.Size=Vector3.new(5,7,5) 
	p.Transparency = 0.6 
	p.Reflectance = 0.5
	p.BrickColor = BrickColor.Blue() 
	p.CanCollide = true
	p.Position = h.Parent.Torso.Position 
	local w=Instance.new("Weld") 
	w.Parent=h.Parent.Torso 
	w.Part0=w.Parent 
	w.Part1=p 
	wait(5) 
	h.PlatformStand = false 
	Ani.Parent = h.Parent 
	p:Remove()
	h.Parent.Head.Reflectance = 0 
	h.Parent.Torso.Reflectance = 0 
	h.Parent["Left Arm"].Reflectance = 0 
	h.Parent["Left Leg"].Reflectance = 0 
	h.Parent["Right Arm"].Reflectance = 0 
	h.Parent["Right Leg"].Reflectance = 0 
	h.WalkSpeed = 16
	end 
	game.workspace.rigletto.Torso.Touched:connect(onTouched) 
end 
game.Workspace.rigletto.Torso.Touched:connect(onTouched) 
end 
if (key == "M") then 
game.workspace.rigletto.Torso.T.Partsword.Transparency = 0
game.workspace.rigletto.Sword:Remove() 
game.workspace.rigletto.Sword2:Remove() 
end 
if (key == "'") then 
game.workspace.rigletto.Humanoid.Jump = true 
wait()
game.Players.rigletto.Character.Torso.Velocity = Vector3.new(0, 400, 0) 
wait(1) 
BodyP = Instance.new("BodyPosition") 
BodyP.Parent = game.workspace.rigletto.Torso 
BodyP.position = game.workspace.rigletto.Torso.Position + Vector3.new(0, 10, 0) 
BodyP.maxForce = Vector3.new(4e+050, 4e+050, 4e+050) 
BodyG = Instance.new("BodyGyro") 
BodyG.Parent = game.workspace.rigletto.Torso 
BodyV = Instance.new("BodyVelocity") 
BodyV.Parent = game.workspace.rigletto.Torso 
BodyV.velocity = Vector3.new(0, 0, 0) 
BodyV.maxForce = Vector3.new(0, 0, 0) 
wait(1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
	local force = Instance.new("BodyVelocity")
	force.velocity = Vector3.new(0, 1,0)
	force.P = 9999999

	local rot = Instance.new("BodyAngularVelocity")
	rot.angularvelocity = Vector3.new(0, 600, 0)
	rot.P = 8000
	rot.maxTorque= Vector3.new(400000000, 400000000, 400000000)
	
	local gyr = Instance.new("BodyGyro")
	gyr.cframe = CFrame.new(Vector3.new(0,1,0), Vector3.new (0, 0, 0))

	
	local armgyro = Instance.new("BodyGyro")
	armgyro.cframe = CFrame.new(Vector3.new(0,0,1), Vector3.new (0, 0, 0))
	force.Parent = game.workspace.rigletto.Torso
	rot.Parent = game.workspace.rigletto.Torso
	gyr.Parent = game.workspace.rigletto.Torso
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 
wait(0.1) 
	local Brick = Instance.new("Part") 
	Brick.Parent = game.workspace 
	Brick.BottomSurface = 0 
	Brick.TopSurface = 0 
	Brick.Size = Vector3.new(2,2,2) 
	Brick.BrickColor = BrickColor.new("Bright red") 
	Brick.Position = game.workspace.rigletto.Torso.Position + Vector3.new(math.random(-70,70),0,math.random(-70,70)) 
	function onTouched(hit) 
	B = Instance.new("Explosion") 
	B.BlastRadius = 10 
	B.BlastPressure = 20 
	B.Position = Brick.Position 
	B.Parent = game.workspace 
	wait() 
	Brick:Remove() 
	end 
	Brick.Touched:connect(onTouched) 

force:Remove() 
rot:Remove() 
gyr:Remove() 
wait(5)
game.workspace.rigletto.Torso.Anchored = false 
BodyP:Remove() 
BodyG:Remove() 
BodyV:Remove() 
end 
if (key == ";") then 
Voice = Instance.new("Sound")
Voice.Parent = game.Players.rigletto.Backpack["Commands on a tool"]
Voice.Name = "Voice"
Voice.SoundId = "d20d624b6daa9c74c81e341e5344e299"
--made by turdulator.
--Grand Chase pwns!
--Based off of Jin's move, Fist of 10000 Hells.
wait() --debugs this. I'm not sure why >_>
Bin=script.Parent;
Voice=Bin.Voice;
Voice:Stop()
Player=nil
CPlayer=nil
Enabled=true
Equipped=false
Colors,Targeted,Can={BrickColor:Red(),BrickColor:Yellow(),BrickColor.new("Br. yellowish orange")},{},{}
MaxDistance= 10000 -- how far the user can target someone.
RS,LS,RH,LH=nil,nil,nil,nil
FRS,FLS,FRH,FLH=Instance.new("Motor"),Instance.new("Motor"),Instance.new("Motor"),Instance.new("Motor")
Welding=function(Cmd,Char)
	if Cmd=="Replace" then
		RS=Char["Right Shoulder"]
		RS.Parent=nil
		LS=Char["Left Shoulder"]
		LS.Parent=nil
		RH=Char["Right Hip"]
		RH.Parent=nil
		LH=Char["Left Hip"]
		FRS.Parent=Char
		FRS.Part0=Char
		FRS.Part1=Char.Parent["Right Arm"]
		FRS.C0=RS.C0
		FRS.C1=RS.C1
		FRS.MaxVelocity=1.5
		FRS.CurrentAngle=0
		FRS.DesiredAngle=0
		FLS.Parent=Char
		FLS.Part0=Char
		FLS.Part1=Char.Parent["Left Arm"]
		FLS.C0=LS.C0
		FLS.C1=LS.C1
		FLS.MaxVelocity=1.5
		FLS.CurrentAngle=0
		FLS.DesiredAngle=0
		FRH.Parent=Char
		FRH.Part0=Char
		FRH.Part1=Char.Parent["Right Leg"]
		FRH.C0=RH.C0
		FRH.C1=RH.C1
		FRH.MaxVelocity=1
		FRH.CurrentAngle=0
		FRH.DesiredAngle=0
		FLH.Parent=Char
		FLH.Part0=Char
		FLH.Part1=Char.Parent["Left Leg"]
		FLH.C0=LH.C0
		FLH.C1=LH.C1
		FLH.MaxVelocity=1
		FLH.CurrentAngle=0
		FLH.DesiredAngle=0
	elseif Cmd=="Re-anim" then
		FLH.Parent=nil
		FRH.Parent=nil
		FRS.Parent=nil
		FLS.Parent=nil
		RS.Parent=Char
		LS.Parent=Char
		RH.Parent=Char
		LH.Parent=Char
	end
end
IsInside=function(Data,Part)
	Pos=Part.Position
	SizeX=Part.Size.x/2
	SizeY=Part.Size.y/2
	SizeZ=Part.Size.z/2
	PosX=Pos.x
	PosY=Pos.y
	PosZ=Pos.z
	if (Data.x>=PosX-SizeX) and (Data.x<=PosX+SizeX) then
		if (Data.y>=PosY-SizeY) and (Data.y<=PosY+SizeY) then
			if (Data.z>=PosZ-SizeZ) and (Data.z<=PosZ+SizeZ) then
				return true
			end
		end
	end
	return false
end
TargetAcquire=function(Dir)
	Can={}
	lol=nil
	for _,v in pairs(workspace:children()) do
		if v.className=="Model" and v~=CPlayer then
			if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil then
				if v.Humanoid.Health>0 then
					print(v.Name)
					table.insert(Can,v)
				end
			end
		end
	end
	for _,v in pairs(Can) do
		for genericraycast=1, MaxDistance*3 do
			Pos=(CPlayer["Torso"].Position+CPlayer["Torso"].CFrame.lookVector*((1/3)*genericraycast))
			if IsInside(Pos,v.Torso)==true then
				return v
			end
		end
	end
end	
StanceOne=function()
	FRS.DesiredAngle=.4
	FLS.DesiredAngle=.4
	FRH.DesiredAngle=.4
	FLH.DesiredAngle=.4
end
StanceTwo=function()
	FRS.DesiredAngle=-1.57
	FLS.DesiredAngle=-1.4
	FRH.DesiredAngle=.4
	FLH.DesiredAngle=.4
end
PunchRight=function()
	FRS.DesiredAngle=1.57
	FLS.DesiredAngle=.7
	FRH.DesiredAngle=.4
	FLH.DesiredAngle=.4
end
KickRight=function()
	FRS.DesiredAngle=-1.5
	FLS.DesiredAngle=1.5
	FRH.DesiredAngle=1.6
	FLH.DesiredAngle=.4
end
PunchLeft=function()
	FRS.DesiredAngle=-1
	FLS.DesiredAngle=-1.4
	FRH.DesiredAngle=.4
	FLH.DesiredAngle=.4
end
KickLeft=function()
	FRS.DesiredAngle=.3
	FLS.DesiredAngle=1
	FRH.DesiredAngle=-.1
	FLH.DesiredAngle=-1.7
end
Uppercut=function()
	FRS.DesiredAngle=3.2
	FLS.DesiredAngle=.4
	FRH.DesiredAngle=-.5
	FLH.DesiredAngle=-.1
end
Main=function()
	CPlayer=Player.Character
	if CPlayer==nil then
		return
	end
	Target=nil
	Target=TargetAcquire(CPlayer["Torso"].CFrame.lookVector)
	if Target==nil then
		return
	end
	if not Enabled then
		return
	end
	Enabled=false
	Welding("Replace",CPlayer["Torso"])
	CPlayer["Humanoid"].WalkSpeed=0
	Target["Humanoid"].WalkSpeed=0
	Target["Torso"].CFrame=CFrame.new(Target["Torso"].Position,CPlayer["Torso"].Position)
	wait()
	ControlV=Instance.new("BodyPosition")
	ControlV.P=3000
	ControlV.D=120
	ControlV.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	ControlV.position=CPlayer["Torso"].Position
	ControlV.Parent=CPlayer["Torso"]
	GyroV=Instance.new("BodyGyro")
	GyroV.P=7000
	GyroV.D=600
	GyroV.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
	GyroV.cframe=CPlayer["Torso"].CFrame*CFrame.fromEulerAnglesXYZ(0,math.pi/16,0)
	GyroV.Parent=CPlayer["Torso"]
	GyroOV=Instance.new("BodyGyro")
	GyroOV.P=3000
	GyroOV.D=200
	GyroOV.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
	GyroOV.cframe=Target["Torso"].CFrame
	GyroOV.Parent=Target["Torso"]
	ControlOV=Instance.new("BodyPosition")
	ControlOV.P=3000
	ControlOV.D=120
	ControlOV.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	ControlOV.position=Target["Torso"].Position
	ControlOV.Parent=Target["Torso"]
	v=Voice:clone()
	v.Parent=CPlayer.Head
	v:Play()
	p=Instance.new("Part")
	p.Name="FlameEm"
	p.Shape=0
	p.TopSurface=0
	p.BottomSurface=0
	p.BrickColor=Colors[math.random(1,3)]
	p.Anchored=true
	p.CanCollide=false
	p.Size=Vector3.new(1,1,1)
	p.CFrame=CFrame.new(CPlayer["Torso"].Position)
	p.Parent=CPlayer
	m=Instance.new("SpecialMesh")
	m.MeshType="Sphere"
	m.Parent=p
	m.Scale=Vector3.new(1,1,1)
	coroutine.resume(coroutine.create(function(pl) for i=1, 9 do pl.Mesh.Scale=pl.Mesh.Scale+Vector3.new(2.8,3,2.8) pl.Transparency=pl.Transparency+1/9  wait() end pl.Parent=nil end),p)
	StanceOne()
	wait(.4)
	ControlV.position=Target["Torso"].Position+Target["Torso"].CFrame.lookVector*1.5
	StanceTwo()
	wait(.2)
	PunchRight()
	GyroOV.cframe=GyroOV.cframe*CFrame.fromEulerAnglesXYZ(-math.pi/24,math.pi/10,math.pi/16)
	Target["Humanoid"]:TakeDamage(10)
	wait(.2)
	ControlOV.position=ControlOV.position-Target["Torso"].CFrame.lookVector*5
	ControlV.position=ControlV.position-Target["Torso"].CFrame.lookVector*4
	GyroV.cframe=GyroV.cframe*CFrame.fromEulerAnglesXYZ(0,-math.pi/8,0)
	KickLeft()
	Target["Humanoid"]:TakeDamage(30)
	wait(.2)
	PunchLeft()
	Target["Humanoid"]:TakeDamage(20)
	Target["Humanoid"].Jump=true
	ControlOV.position=ControlOV.position+(Target["Torso"].Position-CPlayer["Torso"].Position).unit*3
	ControlV.position=Target["Torso"].Position+Target["Torso"].CFrame.lookVector*3
	GyroV.cframe=GyroV.cframe*CFrame.new(0,math.pi/2,0)
	GyroOV.cframe=GyroOV.cframe*CFrame.new(0,math.pi/6,0)
	wait(.1)
	GyroV.D=GyroV.D/4
	ControlOV.position=ControlOV.position-Target["Torso"].CFrame.lookVector*3+Vector3.new(0,15,0)
	ControlV.position=ControlV.position-Target["Torso"].CFrame.lookVector+Vector3.new(0,24,0)
	GyroV.cframe=GyroV.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/8,0)
	GyroOV.cframe=GyroOV.cframe*CFrame.fromEulerAnglesXYZ(math.pi/3,0,0)
	wait(.1)
	Target["Humanoid"]:TakeDamage(30)
	Uppercut()
	GyroV.cframe=GyroV.cframe*CFrame.fromEulerAnglesXYZ(-math.pi/16,-math.pi/6,0)
	p=Instance.new("Part")
	p.Name="FlameEm"
	p.Shape=0
	p.TopSurface=0
	p.BottomSurface=0
	p.BrickColor=Colors[math.random(1,3)]
	p.Anchored=true
	p.CanCollide=false
	p.Size=Vector3.new(1,1,1)
	p.CFrame=CFrame.new(CPlayer["Torso"].Position)
	p.Parent=CPlayer
	m=Instance.new("SpecialMesh")
	m.MeshType="Sphere"
	m.Parent=p
	m.Scale=Vector3.new(1,1,1)
	coroutine.resume(coroutine.create(function(pl) for i=1, 9 do pl.Mesh.Scale=pl.Mesh.Scale+Vector3.new(2.8,3,2.8) pl.Transparency=pl.Transparency+1/9  wait() end pl.Parent=nil end),p)
	wait(.85)
	PunchRight()
	wait(.1)
	h = Instance.new("Hint")
	h.Parent = Target
	h.Text = "You just got pwned by rigletto XP"
	GyroV.cframe=CFrame.new(CPlayer["Torso"].Position,(Target["Torso"].CFrame*CFrame.new(1,0,0)).p)
	GyroV.cframe=GyroV.cframe*CFrame.fromEulerAnglesXYZ(-math.pi/8,0,0)
	ControlV.position=ControlV.position-Target["Torso"].CFrame.lookVector*10
	Target["Humanoid"]:TakeDamage(100)
	wait(.2)
	ControlOV.Parent=nil
	Push=Instance.new("BodyVelocity")
	Push.P=1000
	Push.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	Push.velocity=CPlayer["Torso"].CFrame.lookVector*75-Vector3.new(0,10,0)
	Push.Parent=Target["Torso"]
	Ex=Instance.new("Explosion")
	Ex.BlastRadius=10
	Ex.BlastPressure=0
	Ex.Position=CPlayer["Right Arm"].CFrame*CFrame.new(0,1.5,0).p
	Ex.Parent=workspace
	wait(.1)
	Push.Parent=nil
	wait(.4)
	GyroV.cframe=GyroV.cframe*CFrame.fromEulerAnglesXYZ(math.pi/3,0,0)
	Welding("Re-anim",CPlayer["Torso"])
	wait(.5)
	ControlV.Parent=nil
	GyroV.Parent=nil
	GyroOV.Parent=nil
	CPlayer["Humanoid"].WalkSpeed=16
	Target["Humanoid"].WalkSpeed=16
	v.Parent=nil
	wait(5)
	h:Remove()
	wait(10)
	Enabled=true
end
Emanate=function(Point)
	p=Instance.new("Part")
	p.Name="FlameEm"
	p.Shape=0
	p.TopSurface=0
	p.BottomSurface=0
	p.BrickColor=Colors[math.random(1,3)]
	p.Anchored=true
	p.CanCollide=false
	p.Size=Vector3.new(1,1,1)
	p.CFrame=CFrame.new(Point)+Vector3.new(math.random(-10,10)/5,0,math.random(-10,10)/5)
	p.Parent=CPlayer
	m=Instance.new("SpecialMesh")
	m.MeshType="Sphere"
	m.Parent=p
	m.Scale=Vector3.new(1,1,1)
	coroutine.resume(coroutine.create(function(pl) for i=1, 9 do pl.Mesh.Scale=pl.Mesh.Scale+Vector3.new(1.5,1.5,1.5) pl.Transparency=pl.Transparency+1/9  wait() end pl.Parent=nil end),p)
end
onEquipped=function(mouse)
	Player=game.Players.LocalPlayer
	if Player==nil then
		return
	end
	CPlayer=Player.Character
	if CPlayer==nil then
		return
	end
	Equipped=true
	mouse.Button1Down:connect(function() Main() end)
	while true do
		if CPlayer.Humanoid.Health<1 then
			break
		end
		if Enabled and Equipped then
			Emanate(CPlayer["Torso"].CFrame.p+Vector3.new(0,-3,0))
		end
		wait(.025)
	end
end
Bin.Selected:connect(onEquipped)
Bin.Deselected:connect(function() Equipped=false end)
end 
if (key == "]") then 
head.Transparency = 0.9 
head1.Transparency = 0.9 
head2.Transparency = 0.9 
head3.Transparency = 0.9 
rleg4.Transparency = 0.9 
rleg5.Transparency = 0.9 
rleg6.Transparency = 0.9 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.1 
wait(0.1) 
head.Transparency = 0.8 
head1.Transparency = 0.8 
head2.Transparency = 0.8 
head3.Transparency = 0.8 
rleg4.Transparency = 0.8 
rleg5.Transparency = 0.8 
rleg6.Transparency = 0.8 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.2 
wait(0.1) 
head.Transparency = 0.7 
head1.Transparency = 0.7 
head2.Transparency = 0.7 
head3.Transparency = 0.7 
rleg4.Transparency = 0.7 
rleg5.Transparency = 0.7 
rleg6.Transparency = 0.7 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.3 
wait(0.1) 
head.Transparency = 0.6 
head1.Transparency = 0.6 
head2.Transparency = 0.6 
head3.Transparency = 0.6 
rleg4.Transparency = 0.6 
rleg5.Transparency = 0.6 
rleg6.Transparency = 0.6 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.4 
wait(0.1) 
head.Transparency = 0.5 
head1.Transparency = 0.5 
head2.Transparency = 0.5 
head3.Transparency = 0.5 
rleg4.Transparency = 0.5 
rleg5.Transparency = 0.5 
rleg6.Transparency = 0.5 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.5 
wait(0.1) 
head.Transparency = 0.4 
head1.Transparency = 0.4 
head2.Transparency = 0.4 
head3.Transparency = 0.4 
rleg4.Transparency = 0.4 
rleg5.Transparency = 0.4 
rleg6.Transparency = 0.4 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.6 
wait(0.1) 
head.Transparency = 0.3 
head1.Transparency = 0.3 
head2.Transparency = 0.3 
head3.Transparency = 0.3 
rleg4.Transparency = 0.3 
rleg5.Transparency = 0.3 
rleg6.Transparency = 0.3 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.7 
wait(0.1) 
head.Transparency = 0.2 
head1.Transparency = 0.2 
head2.Transparency = 0.2 
head3.Transparency = 0.2 
rleg4.Transparency = 0.2 
rleg5.Transparency = 0.2 
rleg6.Transparency = 0.2 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.8 
wait(0.1) 
head.Transparency = 0.1 
head1.Transparency = 0.1 
head2.Transparency = 0.1 
head3.Transparency = 0.1 
rleg4.Transparency = 0.1 
rleg5.Transparency = 0.1 
rleg6.Transparency = 0.1 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.9 
wait(0.1) 
head.Transparency = 0 
head1.Transparency = 0 
head2.Transparency = 0 
head3.Transparency = 0 
rleg4.Transparency = 0 
rleg5.Transparency = 0 
rleg6.Transparency = 0 
game.workspace.rigletto["Green Future"].Handle.Transparency = 1 
wait(0.1) 
game.workspace.rigletto.Head.Transparency = 1
end 
if (key == "P") then 
game.workspace.rigletto.Head.Transparency = 0
head.Transparency = 0.1 
head1.Transparency = 0.1 
head2.Transparency = 0.1 
head3.Transparency = 0.1 
rleg4.Transparency = 0.1 
rleg5.Transparency = 0.1 
rleg6.Transparency = 0.1 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.9 
wait(0.1) 
head.Transparency = 0.2 
head1.Transparency = 0.2 
head2.Transparency = 0.2 
head3.Transparency = 0.2 
rleg4.Transparency = 0.2 
rleg5.Transparency = 0.2 
rleg6.Transparency = 0.2 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.8 
wait(0.1) 
head.Transparency = 0.3 
head1.Transparency = 0.3 
head2.Transparency = 0.3 
head3.Transparency = 0.3 
rleg4.Transparency = 0.3 
rleg5.Transparency = 0.3 
rleg6.Transparency = 0.3 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.7 
wait(0.1) 
head.Transparency = 0.4 
head1.Transparency = 0.4 
head2.Transparency = 0.4 
head3.Transparency = 0.4 
rleg4.Transparency = 0.4 
rleg5.Transparency = 0.4 
rleg6.Transparency = 0.4 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.6 
wait(0.1) 
head.Transparency = 0.5 
head1.Transparency = 0.5 
head2.Transparency = 0.5 
head3.Transparency = 0.5 
rleg4.Transparency = 0.5 
rleg5.Transparency = 0.5 
rleg6.Transparency = 0.5 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.5 
wait(0.1) 
head.Transparency = 0.6 
head1.Transparency = 0.6 
head2.Transparency = 0.6 
head3.Transparency = 0.6 
rleg4.Transparency = 0.6 
rleg5.Transparency = 0.6 
rleg6.Transparency = 0.6 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.4 
wait(0.1) 
head.Transparency = 0.7 
head1.Transparency = 0.7 
head2.Transparency = 0.7 
head3.Transparency = 0.7 
rleg4.Transparency = 0.7 
rleg5.Transparency = 0.7 
rleg6.Transparency = 0.7 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.3 
wait(0.1) 
head.Transparency = 0.8 
head1.Transparency = 0.8 
head2.Transparency = 0.8 
head3.Transparency = 0.8 
rleg4.Transparency = 0.8 
rleg5.Transparency = 0.8 
rleg6.Transparency = 0.8 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.2 
wait(0.1) 
head.Transparency = 0.9 
head1.Transparency = 0.9 
head2.Transparency = 0.9 
head3.Transparency = 0.9 
rleg4.Transparency = 0.9 
rleg5.Transparency = 0.9 
rleg6.Transparency = 0.9 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0.1 
wait(0.1) 
head.Transparency = 1 
head1.Transparency = 1 
head2.Transparency = 1 
head3.Transparency = 1 
rleg4.Transparency = 1 
rleg5.Transparency = 1 
rleg6.Transparency = 1 
game.workspace.rigletto["Green Future"].Handle.Transparency = 0 
wait(0.1) 
end 
if (key == "N") then 
waitTime = 1 -- Waiting time for scanning for humans.  It scans EVERY object, so it's a good idea not to make it 

local guiMain = Instance.new("GuiMain")
local goggles = nil--Malvaviscos
local connection = nil

local thermalFrame = Instance.new("Frame")
thermalFrame.Size = UDim2.new(1,0, 1,0)
thermalFrame.BackgroundColor = BrickColor.new("Bright orange")
thermalFrame.BorderColor = thermalFrame.BackgroundColor
thermalFrame.Transparency = 1
thermalFrame.Parent = guiMain

local thermalSelections = {}
local player = nil

function getHumanoid(model)
	for i,child in pairs(model:getChildren()) do
		if child.className == "Humanoid" then
			return child
		end
	end
end

function isInTable(obj, table)--Malvaviscos
	for i,child in pairs(table) do
		if obj == child then--Malvaviscos
			return true
		end
	end
	return false
end
--Malvaviscos
function lastParent(obj)
	local object = obj
	local parent = object.Parent
	while true do
		if parent == workspace or parent == game.Lighting or parent == nil then
			return object
		else
			object = parent
			parent = object.Parent
		end
	end
end--Malvaviscos

function selectAllPartsOfHuman(obj)
	if obj.className == "Part" or obj.className == "Seat" or obj.className == "TrussPart" then
		local selection = Instance.new("SelectionBox")
		selection.Adornee = obj
		selection.Color = BrickColor.new("Really blue")
		selection.Name = "Selection "..obj.Name
		selection.Parent = thermalFrame
		if obj.Parent:findFirstChild("Humanoid") ~= nil then
			selection.Color = BrickColor.new("Really red")
		end
		obj.AncestryChanged:connect(--Malvaviscos
			function()
				if obj.Parent == nil or lastParent(obj).Parent ~= workspace then
					selection:remove()
				end
			end
		)
	else
		for i,child in pairs(obj:getChildren()) do
			selectAllPartsOfHuman(child)
		end
	end
end

function scanForHumanoids(obj)--Malvaviscos--Malvaviscos
	selectAllPartsOfHuman(obj.Parent)
	if obj.className == "Humanoid" then
		if obj.Parent ~= game.Players.LocalPlayer.Character then
			if not isInTable(obj.Parent, thermalSelections) then
				table.insert(thermalSelections, obj.Parent)
				selectAllPartsOfHuman(obj.Parent)
				obj.Parent.ChildAdded:connect(function() selectAllPartsOfHuman(obj.Parent) end)
			end
		end
	else
		for i,child in pairs(obj:getChildren()) do
			scanForHumanoids(child)
		end--Malvaviscos
	end
end

function onKeyDown(key)
	key = key:lower()
	if key == "" then
		if player.Character ~= nil and player.Character:findFirstChild("Head") ~= nil then
			local newTool = script.Parent:clone()
			newTool.Goggles.CFrame = player.Character.Head.CFrame * CFrame.new(0,0,-4)
			newTool.Goggles.ToolPickupScript.Disabled = false
			newTool.Active = false
			newTool.Parent = workspace
			onDeselected()
			script.Parent:remove()
		end
	end
	if key == "e" then
		onDeselected()
	end
end

function onSelected(mouse)
	player = game.Players.LocalPlayer
	mouse.KeyDown:connect(onKeyDown)
	if player.Character ~= nil and guiMain.Parent == nil then
	end
	if player:findFirstChild("PlayerGui") == nil then
		Instance.new("PlayerGui").Parent = player
	end
	guiMain.Parent = player.PlayerGui--Malvaviscos
	scanForHumanoids(workspace)
	connection = workspace.ChildAdded:connect(
		function(child) 
			if getHumanoid(child) ~= nil then
				table.insert(thermalSelections, child)
				selectAllPartsOfHuman(child)
				child.ChildAdded:connect(function() selectAllPartsOfHuman(child) end)
			end
		end)
end
script.Parent.Selected:connect(onSelected)

function onDeselected()
	guiMain.Parent = nil--Malvaviscos
	if goggles ~= nil then
		goggles:remove()
		goggles = nil
	end
	if connection ~= nil then
		connection:disconnect()
		connection = nil
	end
end
--script.Parent.Deselected:connect(onDeselected)
--Malvaviscos
--Malvaviscos 
end 
if (key == "K") then 
if (Debounce == false) then 
if (Lazer == false) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 1.5) 
BP = Instance.new("BodyPosition") 
BP.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
BP.P = BP.P / 4 
BG = Instance.new("BodyGyro") 
BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local targ = nil 
local Mag = nil 
local Pos = nil 
while true do 
if (Lazer == false) then 
break 
end 
if (mouse.Target ~= nil) and (targ == nil) then 
if (mouse.Target.Anchored == false) then 
if ((mouse.Hit.p - Person.Character.Suit.Watch2.Position).magnitude <= 10000) then 
targ = mouse.Target 
BP.Parent = targ 
BG.Parent = targ 
Mag = (targ.Position - mouse.Hit.p).magnitude 
Pos = (targ.Position - mouse.Hit.p).unit * -Mag 
end 
end 
end 
local pop = mouse.Hit.p 
local G = Instance.new("Part") 
G.Parent = Person.Character 
G.Name = "Grab Lazer" 
G.Anchored = true 
G.Locked = true 
G.CanCollide = false 
G.formFactor = 0 
G.Size = Vector3.new(1, 1, 1) 
G.BrickColor = BrickColor.new("Royal blue") 
G.Reflectance = 0.05 
G.Transparency = 0.025 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 
local MeAsh = Instance.new("CylinderMesh") 
MeAsh.Parent = G 
if (targ == nil) or (targ.Anchored == true) then 
MeAsh.Scale = Vector3.new(0.1, (Place0.p-pop).magnitude, 0.1) 
G.CFrame = CFrame.new((Place0.p + pop)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
else 
BP.Parent = targ 
BP.position = (PersonT.CFrame + (mouse.Hit.lookVector * 8) + Pos).p + Vector3.new(0, 5.7, 0) 
BG.Parent = targ 
BG.cframe = CFrame.new(targ.Position, PersonT.Position) 
if (targ.Parent == nil) or (targ.Parent.Parent == Person.Character) then 
BP.Parent = nil 
BG.Parent = nil 
end 
MeAsh.Scale = Vector3.new(0.1, (Place0.p - targ.Position).magnitude, 0.1) 
G.CFrame = CFrame.new((Place0.p + (targ.Position + Pos))/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
end 
wait() 
G:Remove() 
end 
Debounce = false 
EnableLimb(NormalHand) 
BP.Parent = nil 
BG.Parent = nil 
end 
end 
end 

end 
function LiftKey(key, mouse) 
key = key:upper() 
if (key == "H") then 
if (Person.Character:findFirstChild("Grapple Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "J") then 
if (Person.Character:findFirstChild("Kill Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "L") then 
if (Person.Character:findFirstChild("Delete Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "K") then 
if (Person.Character:findFirstChild("Grab Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "X") then 
if (Person.Character:findFirstChild("Lazer") ~= nil) then 
Lazer = false 
end 
end 
end 
function Select(mouse) 
mouse.Button1Down:connect(function() Click(mouse) end) 
mouse.Button1Up:connect(function() Release(mouse) end) 
mouse.KeyDown:connect(function(key) PressKey(key, mouse) end) 
mouse.KeyUp:connect(function(key) LiftKey(key, mouse) end) 
end 
function Deselect(mouse) 
Hold = false 
Lazer = false 
Flight = false 
end 
Bin.Selected:connect(Select) 
Bin.Deselected:connect(Deselect) 
else
end
-- lego mediafire