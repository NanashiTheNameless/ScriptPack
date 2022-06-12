x = Instance.new("HopperBin")
x.Parent = game.Players.rigletto.Backpack
script.Parent = x

char = script.Parent.Parent.Parent.Character
torso = char:findFirstChild("Torso")
limbs = {char:findFirstChild("Right Arm"), char:findFirstChild("Left Arm"), char:findFirstChild("Right Leg"), char:findFirstChild("Left Leg")}
joints = {torso:findFirstChild("Right Shoulder"), torso:findFirstChild("Left Shoulder"), char:findFirstChild("Right Hip"), torso:findFirstChild("Left Hip")}

int = Instance.new
tr = Transparency
col = BrickColor.new
v3 = Vector3.new

script.Parent.Selected:connect(function()
p1 = int("Part")
p1.BrickColor = col("Brown") 
p1.FormFactor = "Custom"
p1.Size = v3(0.4, 2.5, 0.4)
p1.Name = "Handle"
p1.Anchored = false
p1.CanCollide = false
p1.Parent = game.Workspace

p2 = int("Part")
p2.FormFactor = "Custom"
p2.Size = v3(0.4, 4.5, 0.4)
p2.CanCollide = false
p2.Anchored = false
p2.Parent = game.Workspace

w2 = Instance.new("Weld")
w2.Part0 = p1
w2.Part1 = p2
w2.C0 = CFrame.new(0,-2,0)
w2.Parent = p1
p2.Parent = game.Workspace
p2.Parent = char
p2.Name = "Blade"

w3 = Instance.new("Weld")
w3.Part0 = limbs[2]
w3.Part1 = torso
w3.C0 = CFrame.new(-0.2, 0.2, 1.2)*CFrame.Angles(2.7, math.pi, 20.5)
w3.Parent = limbs[2]

w4 = Instance.new("Weld")
w4.Part0 = limbs[1]
w4.Part1 = torso
w4.C0 = CFrame.new(1.5, 0, 0)*CFrame.Angles(0, math.pi, 0)
w4.Parent = limbs[1]

w1 = Instance.new("Weld")
w1.Part0 = limbs[1]
w1.Part1 = p1 
w1.C0 = CFrame.new(0, -1, 0)*CFrame.Angles(4.5, math.pi, -3.5)
w1.Parent = limbs[1]
p1.Parent = game.Workspace
p1.Parent = char
w1.Name = "w1"
goody = torso:Clone()
goody.Parent = game.Workspace
goody.Anchored = true

w5 = Instance.new("Weld")
w5.Part0 = goody
w5.Part1 = torso
torso.Transparency = 9
w5.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(-0.5, math.pi, 0)
w5.Parent = goody
goody.Anchored = false
goody.Name = "FT"

w6 = Instance.new("Weld")
w6.Part0 = char.Head
w6.Part1 = workspace.FT
w6.C0 = CFrame.new(0, -1.5, 0)*CFrame.Angles(0.2, math.pi, 0)
w6.Parent = char.Head
char.Head.Anchored = false

a = char:GetChildren()

for i=1, #a do
if a[i]:IsA("Shirt") or a[i]:IsA("Hat") or a[i]:IsA("Graphic") then
a[i]:Destroy()
char.Humanoid.WalkSpeed = 90

end
end
end)


function onKeyDown(key)
key:lower()
if key == "j" then
char.Blade.Touched:connect(function(hit)
if hit.Parent.Humanoid ~= nil then
hit.Parent.Humanoid:TakeDammage(50)
end
end)
limbs[2].Weld.C0 = CFrame.new(-0.2, 0.2, 1.2)*CFrame.Angles(3.7, math.pi, 21)
local wel1 = Instance.new("Weld")
wel1.Parent = char.Handle
wel1.Name = "wel1"
wel1.Part0 = char.Handle
wel1.Part1 = limbs[2]
wait(3)
wel1.C0 = CFrame.new(1,1,-.6)*CFrame.Angles(2, math.pi, 2)
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(-4,math.pi, 10)
limbs[1].w1:Destroy()
wait(0.2)
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(-3,math.pi, 10)
wait(0.2)
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(-4,math.pi, 10)
wait(0.2)
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(-5,math.pi, 10)
wait(0.2)
char.Humanoid.Jump = true
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(-4,math.pi, 12)
wait(0.2)
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(-4,math.pi, 15)
wait(0.2)
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(-4,math.pi, 10)
wait(0.2)
limbs[2].Weld.C0 = CFrame.new(-0.2, 0.2, 1.2)*CFrame.Angles(3.7, math.pi, 21)
w1 = Instance.new("Weld")
w1.Part0 = limbs[1]
w1.Part1 = char.Handle
w1.C0 = CFrame.new(0, -1, 0)*CFrame.Angles(4.5, math.pi, -3.5)
w1.Parent = limbs[1]
w1.Name = "w1"
char.Handle.wel1:Destroy()
wait(0.2)
limbs[2].Weld.C0 = CFrame.new(-0.2, 0.2, 1.2)*CFrame.Angles(2.7, math.pi, 20.5)
end
end

function slicer(key)
key:lower()
if key == "t" then
slices = {Instance.new("Part"), Instance.new("Part"), Instance.new("Part")}
limbs[2].Weld.C0 = CFrame.new(-0.2, 0.2, 1.2)*CFrame.Angles(3.7, math.pi, 21)
local wel1 = Instance.new("Weld")
wel1.Parent = char.Handle
wel1.Name = "wel1"
wel1.Part0 = char.Handle
wel1.Part1 = limbs[2]
wait(3)
wel1.C0 = CFrame.new(1,1,-.6)*CFrame.Angles(2, math.pi, 2)
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(-4,math.pi, 10)
limbs[1].w1:Destroy()
slices[1].BrickColor = BrickColor.new("Really black")
slices[1].Anchored = true
slices[1].Size = Vector3.new(5,0.1,5)
slices[1].CanCollide = false

slices[2].BrickColor = BrickColor.new("Really black")
slices[2].Anchored = true
slices[2].Size = Vector3.new(5,0.1,5)
slices[2].CanCollide = false

slices[3].BrickColor = BrickColor.new("Really black")
slices[3].Anchored = true
slices[3].Size = Vector3.new(5,0.1,5)
slices[3].CanCollide = false

slices[1].Touched:connect(function(hit)
hit:Destroy()
end)

slices[2].Touched:connect(function(hit)
hit:Destroy()
end)

slices[3].Touched:connect(function(hit)
hit:Destroy()
end)

a = Instance.new("CylinderMesh")
b = Instance.new("CylinderMesh")
c = Instance.new("CylinderMesh")
a.Parent = slices[1]
b.Parent = slices[2]
c.Parent = slices[3]
a.Scale = Vector3.new(1,0.1,1)
b.Scale = Vector3.new(1,0.1,1)
c.Scale = Vector3.new(1,0.1,1)
slices[1].Velocity = char.Torso.CFrame.lookVector
slices[2].Velocity = char.Torso.CFrame.lookVector
slices[3].Velocity = char.Torso.CFrame.lookVector

slices[1].Parent = game.Workspace
slices[1].CFrame = CFrame.new(char.Torso.Position + char.Torso.CFrame.lookVector*10)

local floatForce = Instance.new("BodyForce")
floatForce.force = Vector3.new(900, slices[2]:GetMass() * 196.1, 0.0)
floatForce.Parent = slices[1]

wait(0.5)
slices[1].Anchored = false
wait(0.9)
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(2,math.pi, 7)
slices[2].Parent = game.Workspace
slices[2].CFrame = CFrame.new(char.Torso.Position + char.Torso.CFrame.lookVector*10)

local FloatForce = Instance.new("BodyForce")
FloatForce.force = Vector3.new(900, slices[2]:GetMass() * 196.1, 0.0)
FloatForce.Parent = slices[2]

wait(1.5)
slices[2].Anchored = false
wait(0.5)
limbs[2].Weld.C0 = CFrame.new(1,1,0)*CFrame.Angles(-4,math.pi, 10)
slices[3].Parent = game.Workspace
slices[3].CFrame = CFrame.new(char.Torso.Position + char.Torso.CFrame.lookVector*10)

local foatForce = Instance.new("BodyForce")
foatForce.force = Vector3.new(900, slices[1]:GetMass() * 196.1, 0.0)
foatForce.Parent = slices[3]

wait(0.5)
slices[3].Anchored = false

w1 = Instance.new("Weld")
w1.Part0 = limbs[1]
w1.Part1 = char.Handle
w1.C0 = CFrame.new(0, -1, 0)*CFrame.Angles(4.5, math.pi, -3.5)
w1.Parent = limbs[1]
w1.Name = "w1"
char.Handle.wel1:Destroy()
wait(0.2)
limbs[2].Weld.C0 = CFrame.new(-0.2, 0.2, 1.2)*CFrame.Angles(2.7, math.pi, 20.5)

wait(30)
slices[1]:Destroy()
slices[2]:Destroy()
slices[3]:Destroy()

end
end

function onSelected(mouse) 
mouse.KeyDown:connect(slicer)
mouse.KeyDown:connect(onKeyDown) 
mouse.KeyUp:connect(onKeyUp)
end 

script.Parent.Selected:connect(onSelected)