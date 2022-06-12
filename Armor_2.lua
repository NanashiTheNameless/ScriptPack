--[[Player Parts]]--

Player = game:GetService("Players").yfc---Name

Character = Player.Character 

PlayerGui = Player.PlayerGui 

Backpack = Player.Backpack 

Torso = Character.Torso 

Head = Character.Head 

LeftArm = Character["Left Arm"] 

LeftLeg = Character["Left Leg"] 

RightArm = Character["Right Arm"] 

RightLeg = Character["Right Leg"] 

--[[MainModel]]

MM = Instance.new("Model")

MM.Parent = Character

MM.Name = ("MainFrame")

--[[ArmLeft]]

AL = Instance.new("Model")

AL.Parent = MM

AL.Name = ("LeftArmModel")

--[[Inside_ArmLeft]]--

AL1 = Instance.new("Part")

AL1.Parent = AL

AL1.Name = ("Main")

AL1.Anchored = false

AL1.CanCollide = true 

AL1.FormFactor = ("Custom")

AL1.Size = Vector3.new(1.1,2.1,1.1)

AL1.Position = Torso.Position+Vector3.new(0,0,0)

AL1.Color = Color3.new(0,0,0)

AL1.TopSurface = ("Smooth")

AL1.BottomSurface = ("Smooth")

AL1M = Instance.new("BlockMesh")

AL1M.Parent = AL1

--[[Weld 1]]

W1 = Instance.new("Weld")

W1.Part1 = AL1

W1.Part0 = LeftArm

W1.Parent = AL

W1.Name = ("Weld1")

--[[Accessory]]--

AL2 = Instance.new("Part")

AL2.Parent = AL

AL2.Name = ("Shoulder")

AL2.Anchored = false

AL2.CanCollide = true

AL2.FormFactor = ("Custom")

AL2.Size = Vector3.new(1.2,1.2,1.2)

AL2.Position = Torso.Position+Vector3.new(0,0,0)

AL2.BrickColor = BrickColor.new("Dark stone grey")

AL2.TopSurface = ("Smooth")

AL2.BottomSurface = ("Smooth")

AL2M = Instance.new("BlockMesh")

AL2M.Parent = AL2

-------------------------

AL3 = Instance.new("Part")

AL3.Parent = AL

AL3.Name = ("Hand")

AL3.Anchored = false

AL3.CanCollide = true

AL3.FormFactor = ("Custom")

AL3.Size = Vector3.new(1.2,1.2,1.2)

AL3.Position = Torso.Position+Vector3.new(0,0,0)

AL3.BrickColor = BrickColor.new("Dark stone grey")

AL3.TopSurface = ("Smooth")

AL3.BottomSurface = ("Smooth")

AL3M = Instance.new("BlockMesh")

AL3M.Parent = AL3

-------------------------

AL4 = Instance.new("Part")

AL4.Parent = AL

AL4.Name = ("Steamer")

AL4.Anchored = false

AL4.CanCollide = true

AL4.FormFactor = ("Custom")

AL4.Size = Vector3.new(0.6,1,0.6)

AL4.Position = Torso.Position+Vector3.new(0,0,0)

AL4.BrickColor = BrickColor.new("Dark stone grey")

AL4.TopSurface = ("Smooth")

AL4.BottomSurface = ("Smooth")

--------------------------------------

AL4M = Instance.new("CylinderMesh")

AL4M.Parent = AL4

--------------------------------------

AL4H = Instance.new("Hole")

AL4H.Parent = AL4

AL4H.FaceId = ("Top")

--------------------------------------

AL4S = Instance.new("Smoke")

AL4S.Parent = AL4

AL4S.Name = ("Steam")

AL4S.Opacity = 0.5

AL4S.RiseVelocity = 5

AL4S.Size = 0.2


--[[WeldZ LEFT]]

W2 = Instance.new("Weld")

W2.Part1 = AL2

W2.Part0 = LeftArm

W2.Parent = AL

W2.Name = ("Weld2")

W2.C0 = CFrame.new(0,0.75,0)*CFrame.Angles(0,0,0)

------------------------

W3 = Instance.new("Weld")

W3.Part1 = AL3

W3.Part0 = LeftArm

W3.Parent = AL

W3.Name = ("Weld3")

W3.C0 = CFrame.new(0,-0.75,0)*CFrame.Angles(0,0,0)

-----------------------

W4 = Instance.new("Weld")

W4.Part1 = AL4

W4.Part0 = LeftArm

W4.Parent = AL

W4.Name = ("Weld3")

W4.C0 = CFrame.new(-0.35,1.35,0)*CFrame.Angles(0,0,0.75)



--[[Right Arm]]-- 


--[[MainModel]]

MM1 = Instance.new("Model")

MM1.Parent = Character

MM1.Name = ("MainFrame1")

--[[ArmLeft]]

AL1 = Instance.new("Model")

AL1.Parent = MM1

AL1.Name = ("LeftArmModel1")

--[[Inside_ArmLeft]]

AL2 = Instance.new("Part")

AL2.Parent = AL1

AL2.Name = ("Main2")

AL2.Anchored = false

AL2.CanCollide = true 

AL2.FormFactor = ("Custom")

AL2.Size = Vector3.new(1.1,2.1,1.1)

AL2.Position = Torso.Position+Vector3.new(0,0,0)

AL2.Color = Color3.new(0,0,0)

AL2.TopSurface = ("Smooth")

AL2.BottomSurface = ("Smooth")

AL2M = Instance.new("BlockMesh")

AL2M.Parent = AL2

--[[Weld 1]]

W2 = Instance.new("Weld")

W2.Part1 = AL2 

W2.Part0 = LeftArm

W2.Parent = AL1

W2.Name = ("Weld2")

--[[Accessory]]--

AL3 = Instance.new("Part")

AL3.Parent = AL1

AL3.Name = ("Shoulder3")

AL3.Anchored = false

AL3.CanCollide = true

AL3.FormFactor = ("Custom")

AL3.Size = Vector3.new(1.2,1.2,1.2)

AL3.Position = Torso.Position+Vector3.new(0,0,0)

AL3.BrickColor = BrickColor.new("Dark stone grey")

AL3.TopSurface = ("Smooth")

AL3.BottomSurface = ("Smooth")

AL3M = Instance.new("BlockMesh")

AL3M.Parent = AL3

-------------------------

AL4 = Instance.new("Part")

AL4.Parent = AL1

AL4.Name = ("Hand4")

AL4.Anchored = false

AL4.CanCollide = true

AL4.FormFactor = ("Custom")

AL4.Size = Vector3.new(1.2,1.2,1.2)

AL4.Position = Torso.Position+Vector3.new(0,0,0)

AL4.BrickColor = BrickColor.new("Dark stone grey")

AL4.TopSurface = ("Smooth")

AL4.BottomSurface = ("Smooth")

AL4M = Instance.new("BlockMesh")

AL4M.Parent = AL4

-------------------------

--[[AL5 = Instance.new("Part")

AL5.Parent = AL1

AL5.Name = ("Steamer")

AL5.Anchored = false

AL5.CanCollide = true

AL5.FormFactor = ("Custom")

AL5.Size = Vector3.new(0.6,1,0.6)

AL5.Position = Torso.Position+Vector3.new(0,0,0)

AL5.BrickColor = BrickColor.new("Dark stone grey")

AL5.TopSurface = ("Smooth")

AL5.BottomSurface = ("Smooth")

--------------------------------------

AL5M = Instance.new("CylinderMesh")

AL5M.Parent = AL5

--------------------------------------

AL4H = Instance.new("Hole")

AL4H.Parent = AL4

AL4H.FaceId = ("Top")

--------------------------------------

AL4S = Instance.new("Smoke")

AL4S.Parent = AL4

AL4S.Name = ("Steam")

AL4S.Opacity = 0.5

AL4S.RiseVelocity = 5

AL4S.Size = 0.2]]--


--[[WeldZ LEFT]]

W3 = Instance.new("Weld")

W3.Part1 = AL3

W3.Part0 = RightArm

W3.Parent = AL1

W3.Name = ("Weld3")

W3.C0 = CFrame.new(0,-0.75,0)*CFrame.Angles(0,0,0)

------------------------

W4 = Instance.new("Weld")

W4.Part1 = AL4

W4.Part0 = RightArm

W4.Parent = AL

W4.Name = ("Weld4")

W4.C0 = CFrame.new(0,0.75,0)*CFrame.Angles(0,0,0)

-----------------------

W5 = Instance.new("Weld")

W5.Part1 = AL5

W5.Part0 = RightArm

W5.Parent = AL1

W5.Name = ("Weld5")

W5.C0 = CFrame.new(0.35,-1.35,0)*CFrame.Angles(0,0,0.75)

 




 ------------------------------------------------



 cool = game:service'Players'.yfc


--BrickPart

 

block = Instance.new("Part")

block.Parent = cool.Character --This will be welded to your character

block.Name = "brick"

block.formFactor = "Custom"

block.Size = Vector3.new(2.2, 1,1.46 ) -- Size of Brick

block.CFrame = cool.Character.Torso.CFrame --This will be CFramed to your head

block:BreakJoints()

block.CanCollide = false

block.TopSurface = "Smooth"

block.BottomSurface = "Smooth"

block.BrickColor = BrickColor.new("Dark stone grey")

--Weld Part

Weld = Instance.new("Weld") 

Weld.Part0 = cool.Character.Torso --This will be welded to your head

Weld.Part1 = block

Weld.Parent = cool.Character.Torso --This will be welded to your head

Weld.C0 = CFrame.new(0, 0.6, -0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0) --The CFrame that controls the Studs of were the brick will be positioned

--Mesh Part

M = Instance.new("BlockMesh")

M.Parent = block

M.Scale = Vector3.new(1,1,1)

--Something else  


--BrickPart

block2 = Instance.new("Part")

block2.Parent = cool.Character --This will be welded to your character

block2.Name = "brick2"

block2.formFactor = "Custom"

block2.Size = Vector3.new(2.1, 2.1, 1.2) -- Size of Brick

block2.CFrame = cool.Character.Torso.CFrame --This will be CFramed to your head

block2:BreakJoints()

block2.CanCollide = true

block2.TopSurface = "Smooth"

block2.BottomSurface = "Smooth"

block2.Color = Color3.new(0,0,0)

--Weld Part

Weld2 = Instance.new("Weld") 

Weld2.Part0 = cool.Character.Torso --This will be welded to your head

Weld2.Part1 = block2

Weld2.Parent = cool.Character.Torso --This will be welded to your head

Weld2.C0 = CFrame.new(0, 0, -0.08)*CFrame.fromEulerAnglesXYZ(0, 0, 0) --The CFrame that controls the Studs of were the brick will be positioned

--Mesh Part

M2 = Instance.new("BlockMesh")

M2.Parent = block2

M2.Scale = Vector3.new(1,1,1)

--Something else  



--BrickPart

 

block3 = Instance.new("Part")

block3.Parent = cool.Character --This will be welded to your character

block3.Name = "brick3"

block3.formFactor = "Custom"

block3.Size = Vector3.new(2.2, 1,1.46 ) -- Size of Brick

block3.CFrame = cool.Character.Torso.CFrame --CFramed to you

block3:BreakJoints()

block3.CanCollide = false

block3.TopSurface = "Smooth"

block3.BottomSurface = "Smooth"

block3.BrickColor = BrickColor.new("Dark stone grey")

--Weld Part

Weld3 = Instance.new("Weld") 

Weld3.Part0 = cool.Character.Torso --This will be welded to your head

Weld3.Part1 = block3

Weld3.Parent = cool.Character.Torso --This will be welded to your head

Weld3.C0 = CFrame.new(0, -0.6, -0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0) --The CFrame that controls the Studs of were the brick will be positioned

--Mesh Part

M3 = Instance.new("BlockMesh")

M3.Parent = block3

M3.Scale = Vector3.new(1,1,1)

--Something else  

 