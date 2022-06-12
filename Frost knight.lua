 player = game.Players.LocalPlayer
char = player.Character 
local model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suittest" 
char.Humanoid.MaxHealth = math.huge 
wait(0)
char.Humanoid.Health = char.Humanoid.MaxHealth 

------------------------------------------------------------------------------------------------------------------

suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,2,1) 
suitpart.BrickColor = BrickColor.new(194) 
suitpart.Parent = model 
suitpart.Name = "R-Claw1" 
suitpart.Locked = true 
suitpart.CanCollide = false 
suitpart.BrickColor = BrickColor.Black() 
suitpart.Material = "Ice"
suitpart.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = suitpart 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = suitpart 
w.C0 = CFrame.new(.3,-.3,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0)
wait(0.3)  

hd = Instance.new("Part") 
hd.Parent = model
hd.Anchored = false 
hd.Size = Vector3.new(1,1,1) 
hd.formFactor = "Symmetric" 
hd.CFrame = CFrame.new(3,3,0) 
hd.BrickColor = BrickColor.new("Navy blue") 
hd.Reflectance = 0.2 
m = Instance.new("SpecialMesh") 
m.Parent = hd 
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=19367744" 
m.Scale = Vector3.new(1.05, 1.05, 1.05)
local Weld = Instance.new("Weld") 
Weld.Parent = hd 
Weld.Part0 = hd 
Weld.Part1 = player.Character.Head
Weld.C0 = CFrame.new(0,1,-1.1)*CFrame.Angles(0,0,0) 
wait(0.3)


suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,2,1) 
suitpart.BrickColor = BrickColor.new(194) 
suitpart.Parent = model 
suitpart.Name = "R-Claw2" 
suitpart.Locked = true 
suitpart.CanCollide = false 
suitpart.BrickColor = BrickColor.Black() 
suitpart.Transparency = 0
suitpart.Material = "Ice"
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = suitpart 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = suitpart 
w.C0 = CFrame.new(.3,-.1,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0)  
wait(0.3)

suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,2,1) 
suitpart.BrickColor = BrickColor.new(194) 
suitpart.Parent = model 
suitpart.Name = "R-Claw3" 
suitpart.Locked = true 
suitpart.CanCollide = false 
suitpart.BrickColor = BrickColor.Black() 
suitpart.Transparency = 0
suitpart.Material = "Ice"
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = suitpart 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = suitpart 
w.C0 = CFrame.new(.3,.1,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0)  
wait(0.3)

suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,2,1) 
suitpart.BrickColor = BrickColor.new(194) 
suitpart.Parent = model 
suitpart.Name = "L-Claw1" 
suitpart.Locked = true
suitpart.Material = "Ice" 
suitpart.CanCollide = false 
suitpart.BrickColor = BrickColor.Black() 
suitpart.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = suitpart 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = suitpart 
w.C0 = CFrame.new(-.3,.1,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0) 
wait(0.3)

suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,2,1) 
suitpart.BrickColor = BrickColor.new(194) 
suitpart.Parent = model 
suitpart.Name = "L-Claw2" 
suitpart.Locked = true 
suitpart.Material = "Ice"
suitpart.CanCollide = false 
suitpart.BrickColor = BrickColor.Black() 
suitpart.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = suitpart 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = suitpart 
w.C0 = CFrame.new(-.3,-.3,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0)  
wait(0.3)

suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,2,1) 
suitpart.BrickColor = BrickColor.new(194) 
suitpart.Parent = model 
suitpart.Name = "L-Claw3" 
suitpart.Locked = true 
suitpart.Material = "Ice"
suitpart.CanCollide = false 
suitpart.BrickColor = BrickColor.Black() 
suitpart.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = suitpart 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = suitpart 
w.C0 = CFrame.new(-.3,-.1,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0)  
wait(0.3)

suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,1,1) 
suitpart.BrickColor = BrickColor.Blue() 
suitpart.Parent = model
suitpart.Name = "Torso" 
suitpart.Locked = true 
suitpart.CanCollide = false 
suitpart.Transparency = 0.2
suitpart.Material = "Ice"
Mesh1=Instance.new("SpecialMesh")
Mesh1.MeshType="FileMesh"
Mesh1.MeshId = "http://www.roblox.com/asset/?id=9756362"
Mesh1.Parent = suitpart 
Mesh1.Scale = Vector3.new(1,1,1) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = suitpart 
w.C0 = CFrame.new(0,4,0) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0)  
wait(0.3)

suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,1,1) 
suitpart.BrickColor = BrickColor.Black() 
suitpart.Parent = model
suitpart.Name = "Torso" 
suitpart.Locked = true 
suitpart.CanCollide = false 
suitpart.Transparency = 1 
suitpart.Material = "Ice"
m = Instance.new("BlockMesh") 
m.Parent = suitpart 
m.Scale = Vector3.new(1.9,1.9,1.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = suitpart 
wait(0.3)

suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,1,1) 
suitpart.BrickColor = BrickColor.Blue() 
suitpart.Parent = model 
suitpart.Name = "Shoulder1" 
suitpart.Locked = true 
suitpart.Material = "Ice" 
suitpart.CanCollide = false 
suitpart.Transparency = .4 
suitpart.Reflectance=0.3
Me=Instance.new("SpecialMesh")
Me.MeshType="Wedge"
Me.Parent=suitpart
Me.Scale=Vector3.new(1.1,1,1,1)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = suitpart 
w.C0 = CFrame.new(-0.13,0.51,0) * CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2) 
wait(0.3)

suitpart = Instance.new("Part") 
suitpart.Size = Vector3.new(1,1,1) 
suitpart.BrickColor = BrickColor.Blue() 
suitpart.Parent = model 
suitpart.Material = "Ice"
suitpart.Name = "Shoulder2" 
suitpart.Locked = true 
suitpart.CanCollide = false 
suitpart.Transparency = .4 
suitpart.Reflectance=0.3
Me=Instance.new("SpecialMesh")
Me.MeshType="Wedge"
Me.Parent=suitpart
Me.Scale=Vector3.new(1.1,1,1,1)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent
w.Part1 = suitpart 
w.C0 = CFrame.new(0.13,0.51,0) * CFrame.fromEulerAnglesXYZ(math.pi/-2,0, math.pi/-2) 

p = Instance.new("Part") 
p.Name = "energy" 
p.Size = Vector3.new(1,1,1) 
p.BrickColor = BrickColor.Blue() 
p.Transparency = .3 
p.Anchored = false 
p.CanCollide = false 
p.Parent = model 
m = Instance.new("SpecialMesh") 
m.Parent = p 
m.Scale = Vector3.new(1,1,1) 
m.MeshType = "Sphere" 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent
w.Part1 = p

function Grow()
for i = 1,50 do
Mesh1.Scale = Mesh1.Scale - Vector3.new(0.05,0.05,0.05)
wait()
end 
for i = 1,50 do
Mesh1.Scale = Mesh1.Scale + Vector3.new(0.05,0.05,0.05)
wait()
end 
end 

print("Suit Functioning Properly.")

while true do 
Grow() 
wait() 
end 
