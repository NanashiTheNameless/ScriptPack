maker = "rigletto"


on = false

fa = game.Workspace[maker]:GetChildren()
for i = 1,#fa do
if fa[i]:IsA("Hat") then
fa[i]:Remove()
end
end
							--Suit--------------------------------------
		--blue power core

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really blue") 
p.Size = Vector3.new(1,1,1)
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1.5,1.5,1.5)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 

		--red line 1

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(1,1,1)
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1.7,0.1,1.7)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,-0.7,0)*CFrame.Angles(0,0,0)

		--red line 2

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(1,1,1)
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1.7,0.1,1.7)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,-0.5,0)*CFrame.Angles(0,0,0)

		--red line 3

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(1,1,1)
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1.7,0.1,1.7)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,-0.3,0)*CFrame.Angles(0,0,0)

		--red line 4

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(1,1,1)
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1.7,0.1,1.7)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,-0.1,0)*CFrame.Angles(0,0,0)

		--red line 5

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(1,1,1)
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1.7,0.1,1.7)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,0.1,0)*CFrame.Angles(0,0,0)

		--red line 6

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(1,1,1)
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1.7,0.1,1.7)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,0.3,0)*CFrame.Angles(0,0,0)

		--red line 7

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(1,1,1)
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1.7,0.1,1.7)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,0.5,0)*CFrame.Angles(0,0,0)

		--red line 8

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(1,1,1)
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1.7,0.1,1.7)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,0.7,0)*CFrame.Angles(0,0,0)

		--Black body parts left arm

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really black") 
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,2,1)
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1.1,1.1,1.1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker]["Left Arm"]
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 

		--Black body parts right arm

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really black") 
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,2,1)
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1.1,1.1,1.1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker]["Right Arm"]
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)

		--Black body parts torso

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really black") 
p.formFactor = "Symmetric"
p.Size = Vector3.new(2,2,1)
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1.1,1.1,1.1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)

		--Black body parts left leg

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really black") 
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,2,1)
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1.1,1.1,1.1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker]["Left Leg"]
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)

		--Black body parts right leg

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really black") 
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,2,1)
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1.1,1.1,1.1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker]["Right Leg"]
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)

		--Black body parts head

p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Camo") 
p.Size = Vector3.new(2,2,1)
p.formFactor = "Symmetric"
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1,1,1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,0,-1)*CFrame.Angles(0,0,0)

--holder2
p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Camo") 
p.Size = Vector3.new(4,1,1)
p.formFactor = "Symmetric"
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1,1.4,1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,-1,-1)*CFrame.Angles(0,0,0)

--Wing1
p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really blue") 
p.Size = Vector3.new(4,1,1)
p.formFactor = "Symmetric"
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1,1.5,1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(2,-1,-1)*CFrame.Angles(0,75,0)
--Wing1pt2
p = Instance.new("Part") 
f = Instance.new("Fire")
f.Parent = p
f.Heat = 25
f.Size = 3
f.Color = Color3.new(0,0,255)
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(2,1,1)
p.formFactor = "Symmetric"
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1.1,1.6,1.1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(-3,0.3,-3.55)*CFrame.Angles(0,75,75)

--Wing2
p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really blue") 
p.Size = Vector3.new(4,1,1)
p.formFactor = "Symmetric"
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1,1.5,1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(-2,-1,-1)*CFrame.Angles(0,-75,0)
--Wing2pt2
p = Instance.new("Part") 
f = Instance.new("Fire")
f.Parent = p
f.Heat = 25
f.Size = 3
f.Color = Color3.new(0,0,255)
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(2,1,1)
p.formFactor = "Symmetric"
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(1.1,1.6,1.1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(3,0.3,-3.55)*CFrame.Angles(0,-75,-75)

--groudshockpart
p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Name = "GroundShock"
p.CanCollide = false
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Really red") 
p.Size = Vector3.new(1,1,1)
p.Transparency = 1
p.formFactor = "Symmetric"
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(1,1,1)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,3,0)*CFrame.Angles(0,0,0)

--beam
p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Name = "Beam"
p.CanCollide = false
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Toothpaste") 
p.Size = Vector3.new(1,1,1)
p.Transparency = 1
p.formFactor = "Symmetric"
b = Instance.new("CylinderMesh")
b.Parent = p
b.Scale = Vector3.new(10,200,10)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)

--Health bubble
p = Instance.new("Part") 
p.Parent = game.Workspace[maker]
p.Name = "Bubble"
p.CanCollide = false
p.Position = game.Workspace[maker].Head.Position
p.BrickColor = BrickColor.new("Toothpaste") 
p.Size = Vector3.new(1,1,1)
p.Transparency = 1
p.formFactor = "Symmetric"
b = Instance.new("SpecialMesh")
b.Parent = p
b.MeshType = "Sphere"
b.Scale = Vector3.new(30,30,30)
w = Instance.new("Weld") 
w.Parent = p 
w.Part0 = p 
w.Part1 = workspace[maker].Torso
w.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)


							
		--End Suit

h = game.Workspace[maker].Head:GetChildren()
for i = 1,#h do
if h[i]:IsA("Decal") then
h[i]:Remove()
end
end

game.Workspace[maker].Humanoid.Changed:connect(function()
if game.Workspace[maker].Humanoid.Sit == true then
game.Workspace[maker].Humanoid.Sit = false
end
end)


game.Workspace[maker].Humanoid.MaxHealth = 50000



--[[Holder = Instance.new("Model")
Say = Instance.new("Part")
Text = Instance.new("Humanoid")
Float = Instance.new("BodyPosition")
Holder.Parent = game.Workspace[maker]
Holder.Name = version
Text.Parent = Holder
Text.Health = 0
Text.MaxHealth = 0
Say.Parent = Holder
Say.Name = "Head"
Say.CanCollide = false
Float.Parent = Say
Float.position = game.Workspace[maker].Head.Position + Vector3.new(0,3,0)
Say.Position = game.Workspace[maker].Head.Position
Say.Transparency = 0.9
Say.Size = Vector3.new(1,1,1)]]
--Tools
Tool = Instance.new("Tool")

Handle = Instance.new("Part")

Tool.Parent = game.Players[maker].Backpack
Tool.Name = "Bomb"

Handle.Parent = Tool
Handle.Name = "Handle"
Handle.Size = Vector3.new(2,2,2)
Handle.Shape = "Ball"
Handle.BrickColor = BrickColor.new("Really red")
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"

Tool3 = Instance.new("Tool")
Tool3.Name = "Staff of Acid"
Handle3 = Instance.new("Part")
B3 = Instance.new("BlockMesh")
B3.Parent = Handle3
B3.Scale = Vector3.new(0.5,1,0.5)
Tool3.Parent = game.Players[maker].Backpack
Handle3.Parent = Tool3
Handle3.BrickColor = BrickColor.new("Brown")
Handle3.Name = "Handle"
Handle3.Size = Vector3.new(1,5,1)

Tool4 = Instance.new("Tool")
Tool4.Parent = game.Players[maker].Backpack
Tool4.Name = "Kill All"
Handle4 = Instance.new("Part")
Handle4.Parent = Tool4
Handle4.Name = "Handle"
Handle4.formFactor = "Symmetric"
Handle4.Size = Vector3.new(2,2,2)
Handle4.BrickColor = BrickColor.new("New Yeller")

Tool5 = Instance.new("Tool")
Tool5.Name = "Staff of Meteor"
Handle5 = Instance.new("Part")
B5 = Instance.new("BlockMesh")
B5.Parent = Handle5
B5.Scale = Vector3.new(0.5,1,0.5)
Tool5.Parent = game.Players[maker].Backpack
Handle5.Parent = Tool5
Handle5.BrickColor = BrickColor.new("Brown")
Handle5.Name = "Handle"
Handle5.Size = Vector3.new(1,5,1)

Tool6 = Instance.new("Tool")
Tool6.Name = "Staff of Nuke"
Handle6 = Instance.new("Part")
B6 = Instance.new("BlockMesh")
B6.Parent = Handle6
B6.Scale = Vector3.new(0.5,1,0.5)
Tool6.Parent = game.Players[maker].Backpack
Handle6.Parent = Tool6
Handle6.BrickColor = BrickColor.new("Brown")
Handle6.Name = "Handle"
Handle6.Size = Vector3.new(1,5,1)

debounce = false

Tool.Activated:connect(function()
if debounce == false then
debounce = true
s = Instance.new("Part")
sp = Instance.new("Sparkles")
s.Parent = game.Workspace
sp.Parent = s
s.Size = Vector3.new(2,2,2)
s.Shape = "Ball"
s.BrickColor = BrickColor.new("Really red")
s.CFrame = Tool.Handle.CFrame + Vector3.new(0,-2,0)
s.TopSurface = "Smooth"
s.BottomSurface = "Smooth"
wait(2.5)
e = Instance.new("Explosion")
e.Parent = game.Workspace
e.Position = s.Position
e.BlastPressure = 1000
e.BlastRadius = 10
wait()
s:Remove()
wait(2)
debounce = false
end
end)


Tool3.Activated:connect(function()
B3.Scale = B3.Scale + Vector3.new(.1,.1,.1)
Handle3.BrickColor = BrickColor.new("Camo")
for i = 1,100 do
p = Instance.new("Part")
p.Parent = game.Workspace[maker]
p.Position = game.Workspace[maker].Head.Position + Vector3.new(math.random(-5,5),2,math.random(-5,5))
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Camo")
p.Transparency = 0
p.CanCollide = false
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
b = Instance.new("BlockMesh")
b.Parent = p
b.Scale = Vector3.new(0.5,0.5,0.5)
p.Touched:connect(function(hit)
if hit.Name ~= "Base" and hit.Parent.Name ~= maker and hit.Name ~= "Handle" and hit.Parent.className ~= "Tool" then
hit:Remove()
end
end)
wait(0.15)
end
B3.Scale = B3.Scale - Vector3.new(.1,.1,.1)
Handle3.BrickColor = BrickColor.new("Brown")
end)

Tool4.Activated:connect(function()
tr = game.Players:GetChildren()
for i = 1,#tr do
if tr[i].Name ~= maker then
b = Instance.new("BodyPosition")
b.Parent = tr[i].Character.Torso
b.maxForce = Vector3.new(4e10,4e10,4e10)
b.position = Vector3.new(0,100,0)
end
end
wait(2)
ex = Instance.new("Explosion")
ex.Parent = game.Workspace
ex.Position = Vector3.new(0,100,0)
ex.BlastRadius = 20
ex.BlastPressure = 1000
end)

Tool5.Activated:connect(function()
B5.Scale = B5.Scale + Vector3.new(.1,.1,.1)
Handle5.BrickColor = BrickColor.new("Really red")
h = Instance.new("Hint")
h.Parent = game.Workspace
h.Text = maker.." is calling a Meteor..."
b = Instance.new("Part") 
b.Parent = game.Workspace 
b.Position = Vector3.new(0,5000,0) 
b.Size = Vector3.new(200,500,200)
b.BrickColor = BrickColor.new("Really red") 
b.Transparency = 0 
b.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= maker then
hit.Parent:BreakJoints()
end
end)
wait(10) 
b:remove()
h:Remove()
B5.Scale = B5.Scale - Vector3.new(.1,.1,.1)
Handle5.BrickColor = BrickColor.new("Brown") 
end)

Tool6.Activated:connect(function()
p = Instance.new("Part")
p.Parent = game.Workspace[maker]
p.Position = CFrame.new(0,0,0)
p.Size = Vector3.new(10,10,10)
p.Shape = "Ball"
p.Transparency = 0.5
p.BrickColor = BrickColor.new("New Yeller")
p.Anchored = true
p.CanCollide = false
p.Touched:connect(function()
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
for i = 1,10 do
Torso.Velocity = Vector3.new(1000,150,0)
end
end
end)
for i = 1,100 do
p.Size = p.Size + Vector3.new(5,5,5)
wait()
end
end)
		--GUIs

main = Instance.new("ScreenGui")
main.Parent = game.Players[maker].PlayerGui

reset = Instance.new("TextButton")
reset.Parent = main
reset.Name = "Reset"
reset.Text = "Reset"
reset.Position = UDim2.new(0,10,0,350)
reset.Size = UDim2.new(0,50,0,15)
reset.BackgroundColor3 = BrickColor.new("Really blue").Color
reset.TextColor3 = BrickColor.new("White").Color
reset.BorderColor3 = reset.BackgroundColor3

ff = Instance.new("TextButton")
ff.Parent = main
ff.Name = "ForceField"
ff.Text = "FF"
ff.Position = UDim2.new(0,10,0,365)
ff.Size = UDim2.new(0,50,0,15)
ff.BackgroundColor3 = BrickColor.new("Really blue").Color
ff.TextColor3 = BrickColor.new("White").Color
ff.BorderColor3 = ff.BackgroundColor3

unff = Instance.new("TextButton")
unff.Parent = main
unff.Name = "UnForceField"
unff.Text = "UnFF"
unff.Position = UDim2.new(0,60,0,365)
unff.Size = UDim2.new(0,50,0,15)
unff.BackgroundColor3 = BrickColor.new("Really blue").Color
unff.TextColor3 = BrickColor.new("White").Color
unff.BorderColor3 = unff.BackgroundColor3

wb = Instance.new("TextBox")
wb.Parent = main
wb.Name = "WB"
wb.Text = "Walkspeed"
wb.Position = UDim2.new(0,10,0,380)
wb.Size = UDim2.new(0,100,0,15)
wb.BackgroundColor3 = BrickColor.new("Really blue").Color
wb.TextColor3 = BrickColor.new("White").Color
wb.BorderColor3 = ff.BackgroundColor3

ww = Instance.new("TextButton")
ww.Parent = main
ww.Name = "WW"
ww.Text = "W"
ww.Position = UDim2.new(0,110,0,380)
ww.Size = UDim2.new(0,25,0,15)
ww.BackgroundColor3 = BrickColor.new("Really blue").Color
ww.TextColor3 = BrickColor.new("White").Color
ww.BorderColor3 = ff.BackgroundColor3
ki = Instance.new("TextButton")
ki.Parent = main
ki.Name = "GS"
ki.Text = "GroundShock"
ki.Position = UDim2.new(0,10,0,395)
ki.Size = UDim2.new(0,50,0,15)
ki.BackgroundColor3 = BrickColor.new("Really blue").Color
ki.TextColor3 = BrickColor.new("White").Color
ki.BorderColor3 = ff.BackgroundColor3
bu = Instance.new("TextButton")
bu.Parent = main
bu.Name = "healthbubble"
bu.Text = "Heal"
bu.Position = UDim2.new(0,10,0,410)
bu.Size = UDim2.new(0,50,0,15)
bu.BackgroundColor3 = BrickColor.new("Really blue").Color
bu.TextColor3 = BrickColor.new("White").Color
bu.BorderColor3 = ff.BackgroundColor3

bu.MouseButton1Click:connect(function()
game.Workspace[maker].Bubble.Transparency = 0.5
for i = 1,20 do
game.Workspace[maker].Bubble.Mesh.Scale = game.Workspace[maker].Bubble.Mesh.Scale - Vector3.new(1,1,1)
wait()
end
wait()
game.Workspace[maker].Bubble.Transparency = 1
wait()
game.Workspace[maker].Bubble.Transparency = 0.5
wait()
game.Workspace[maker].Bubble.Transparency = 1
wait()
game.Workspace[maker].Bubble.Transparency = 0.5
wait()
game.Workspace[maker].Bubble.Transparency = 1
wait()
game.Workspace[maker].Bubble.Transparency = 0.5
wait()
game.Workspace[maker].Bubble.Transparency = 1
wait()
game.Workspace[maker].Bubble.Transparency = 0.5
wait()
game.Workspace[maker].Bubble.Transparency = 1
wait()
game.Workspace[maker].Bubble.Transparency = 0.5
wait()
game.Workspace[maker].Bubble.Transparency = 1
wait()
game.Workspace[maker].Bubble.Transparency = 0.5
wait()
game.Workspace[maker].Bubble.Transparency = 1
wait()
game.Workspace[maker].Bubble.Transparency = 0.5
wait()
game.Workspace[maker].Bubble.Transparency = 1
wait()
game.Workspace[maker].Bubble.Transparency = 0.5
wait()
game.Workspace[maker].Bubble.Transparency = 1
game.Workspace[maker].Humanoid.Health = game.Workspace[maker].Humanoid.MaxHealth
game.Workspace[maker].Bubble.Mesh.Scale = Vector3.new(30,30,30)
end)


reset.MouseButton1Click:connect(function()
game.Workspace[maker]:BreakJoints()
end)

ki.MouseButton1Click:connect(function()

game.Workspace[maker].GroundShock.Transparency = .5
for i = 1,20 do
game.Workspace[maker].GroundShock.Mesh.Scale = game.Workspace[maker].GroundShock.Mesh.Scale + Vector3.new(1,0,1)
wait()
end
for i = 1,20 do
game.Workspace[maker].GroundShock.Mesh.Scale = game.Workspace[maker].GroundShock.Mesh.Scale - Vector3.new(1,0,1)
wait()
end
game.Workspace[maker].GroundShock.Mesh.Scale = Vector3.new(1,1,1)
game.Workspace[maker].GroundShock.Transparency = 1
game.Workspace[maker].Beam.Transparency = 0.5
f = Instance.new("ForceField")
f.Parent = game.Workspace[maker]
wait()
e = Instance.new("Explosion")
e.Parent = game.Workspace
e.Position = game.Workspace[maker].Torso.Position
e.BlastRadius = 12
e.BlastPressure = 10000
wait(1)
f:Remove()
game.Workspace[maker].Beam.Transparency = 1
end)

ww.MouseButton1Click:connect(function()
game.Workspace[maker].Humanoid.WalkSpeed = wb.Text
end)

ff.MouseButton1Click:connect(function()
Instance.new("ForceField").Parent = game.Workspace[maker]
end)
unff.MouseButton1Click:connect(function()
findf = game.Workspace[maker]:GetChildren()
for i = 1,#findf do
if findf[i].Name == "ForceField" then
findf[i]:Remove()
end
end
end)

--[[model = Instance.new("Model")
part = Instance.new("Part")
mesh = Instance.new("BlockMesh")
weld = Instance.new("Weld")
hum = Instance.new("Humanoid")
model.Parent = game.Workspace[maker]
model.Name = ""
part.Parent = model
part.Name = "Head"
part.Transparency = 0.9
part.Size = Vector3.new(1,1,1)
hum.Parent = model
hum.MaxHealth = 0
hum.Health = 0
weld.Parent = p 
weld.Part0 = part 
weld.Part1 = workspace[maker].Head
weld.C0 = CFrame.new(0,-1,0)*CFrame.Angles(0,0,0)
mesh.Parent = part
mesh.Scale = Vector3.new(0,0,0)
guia = Instance.new("ScreenGui")
guia.Parent = game.Players[maker].PlayerGui
mgb = Instance.new("TextBox")
mgb.Parent = guia
mgb.Size = UDim2.new(0,300,0,25)
mgb.Position = UDim2.new(0,0,0,300)
while true do
model.Name = mgb.Text
wait()
end]]

dia = Instance.new("Dialog")
dia.Parent = game.Workspace[maker].Head
dia.Tone = "Friendly"
dia.InitialPrompt = "Hey there. My name is "..maker.."."
dia.Purpose = "Shop"
ch = Instance.new("DialogChoice")
ch.Parent = dia
ch.Name = "Die"
ch.UserDialog = "I want your suit."
ch.ResponseDialog = "You can't have my suit. Now DIE!"
ch2 = Instance.new("DialogChoice")
ch2.Parent = dia
ch2.Name = "BigHead"
ch2.UserDialog = "I want to have a big head."
ch2.ResponseDialog = "There you go!"

ch3 = Instance.new("DialogChoice")
ch3.Parent = dia
ch3.Name = "Invisible"
ch3.UserDialog = "I want to be invisible."
ch3.ResponseDialog = "Now I can't see you D:"

ch4 = Instance.new("DialogChoice")
ch4.Parent = dia
ch4.Name = "Visible"
ch4.UserDialog = "I want to be visible."
ch4.ResponseDialog = "I can see you!"

dia.DialogChoiceSelected:connect(function(player, choice)
if choice.Name == "Die" then
player.Character:BreakJoints()
elseif choice.Name == "BigHead" then
player.Character.Head.Mesh.Scale = player.Character.Head.Mesh.Scale*4
elseif choice.Name == "Invisible" then
dig = player.Character:GetChildren()
for i = 1,#dig do
if dig[i]:IsA("Part") then
dig[i].Transparency = 1
end
end
elseif choice.Name == "Visible" then
dig = player.Character:GetChildren()
for i = 1,#dig do
if dig[i]:IsA("Part") then
dig[i].Transparency = 0
end
end
end
end)

user = "rigletto"
Tool = Instance.new("Tool")
Tool.Parent = game.Players[user].Backpack
Tool.Name = "Make People Fly"
Handle = Instance.new("Part")
Handle.Parent = Tool
Handle.Size = Vector3.new(1,1,1)
Handle.Name = "Handle"

Handle.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= user then
hit.Parent.Humanoid.Sit = true
while true do
hit.Parent.Torso.Velocity = Vector3.new(0,100,0)
wait(0.1)
end
end
end)

--mediafire gtfo password