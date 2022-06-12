
 

User = game.Players.LocalPlayer

Char = User.Character

 

 

cen = Instance.new("Part", User.Character)

cen.BottomSurface = "Smooth"

cen.TopSurface = "Smooth"

cen.CanCollide = false

cen.formFactor = "Symmetric"

cen.Size = Vector3.new(1,1,1)

cen.BrickColor = BrickColor.new("Really black")

cen.Transparency = 1

cen2 = Instance.new("Part", User.Character)

cen2.BottomSurface = "Smooth"

cen2.TopSurface = "Smooth"

cen2.CanCollide = false

cen2.formFactor = "Symmetric"

cen2.Size = Vector3.new(1,1,1)

cen2.BrickColor = BrickColor.new("Really black")

cen2.Transparency = 1

 

cenw = Instance.new("Weld", cen)

cenw.Part0 = Char["Torso"]

cenw.Part1 = cen

cenw.C1 = CFrame.new(-1.5,-0.5,0)

 

cenw2 = Instance.new("Weld", cen2)

cenw2.Part0 = Char["Torso"]

cenw2.Part1 = cen2

cenw2.C1 = CFrame.new(1.5,-0.5,0)

 

 

 

haw = Instance.new("Weld", cen)

haw.Part0 = cen

haw.Part1 = Char["Right Arm"]

haw.C1 = CFrame.new(0,0.5,0)

 

haw2 = Instance.new("Weld", cen2)

haw2.Part0 = cen2

haw2.Part1 = Char["Left Arm"]

haw2.C1 = CFrame.new(0,0.5,0)

 

haw.Part1 = nil

haw2.Part1 = nil

 

--------------------------------------------

function MoveOne()

haw.Part1 = Char["Right Arm"]

haw2.Part1 = Char["Left Arm"]

for i = 1,50,5 do

haw.C0 = CFrame.Angles(math.rad(-i),0,0)

haw2.C0 = CFrame.Angles(math.rad(-i),0,0)

wait()

end

for i = 1,100,10 do

haw.C0 = CFrame.Angles(math.rad(-45+i),0,0)

haw2.C0 = CFrame.Angles(math.rad(-45+i),0,0)

wait()

end

delay(0, function()

for i = 1,50,5 do

haw.C0 = CFrame.Angles(math.rad(45-i),0,0)

haw2.C0 = CFrame.Angles(math.rad(45-i),0,0)

wait()

end

haw.Part1 = nil

haw2.Part1 = nil

end)

local ps = Char.Torso.CFrame

local flakef = Instance.new("Part", Char)

flakef.Size = Vector3.new(5,5,5)

flakef.CanCollide = false

flakef.BrickColor = BrickColor.new("White")

flakef.TopSurface = "Smooth"

flakef.Transparency = 0.5

flakef.Anchored = true

flakef.BottomSurface = "Smooth"

local flakeMf = Instance.new("SpecialMesh", flakef)

flakeMf.MeshType = "FileMesh"

flakeMf.Scale = Vector3.new(5,5,5)

flakeMf.MeshId = "http://www.roblox.com/asset/?id=20329976"

flakef:BreakJoints()

flakef.CFrame = (ps - Vector3.new(0,3,0)) + ps.lookVector*2

 

for i = 1,50 do

 

flakef.CFrame = (ps - Vector3.new(0,3,0)) + ps.lookVector*(i*2)

 

local gho = flakef:clone()

gho.Parent = Char

gho.Anchored = true

gho.CFrame = flakef.CFrame

 

delay(0,function()

for i = 1,10 do

gho.Mesh.Scale = gho.Mesh.Scale + Vector3.new(0.1,0.1,0.1)

gho.Transparency = gho.Transparency + 0.05

wait()

end

gho:Remove()

end)

wait()

end

local ring = flakef:clone()

ring.Parent = Char

ring.Anchored = true

ring.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"

ring.CFrame = flakef.CFrame

ring.CFrame = ring.CFrame*CFrame.Angles(math.rad(90),0,0)

for i = 1,10 do

ring.Mesh.Scale = ring.Mesh.Scale + Vector3.new(5,5,5)

ring.Transparency = ring.Transparency + 0.05

flakef.Transparency = flakef.Transparency + 0.05

flakef.Mesh.Scale = flakef.Mesh.Scale + Vector3.new(2,2,2)

wait()

end

ring:Remove()

flakef:Remove()

end

 

 

function HandCharge()

 

end

--------------------------------------------

local _ = false

if not script.Parent:IsA("HopperBin") then

h = Instance.new("HopperBin", User.Backpack)

h.Name = "watah"

script.Parent = h

end

 

 

script.Parent.Selected:connect(function(mouse)

 

mouse.Button1Down:connect(function()

 

end)

 

mouse.KeyDown:connect(function(key)

if key == "q" and _ == false then

_ = true

MoveOne()

_ = false

end

end)

end)

 

script.Parent.Deselected:connect(function()

 

end)

 

--crown http://www.roblox.com/asset/?id=20329976

-- ring http://www.roblox.com/asset/?id=3270017