:ls User = script.Parent.Parent.Character
if User.Name == "luxulux" then
-------------------------------
--Part Making and Positioning--
-------------------------------
TailParts = {User.Torso}
Welds = {}
for i = 2, 13 do
TailParts[i] = Instance.new("Part", User)
TailParts[i].Name = "TailPart"
TailParts[i].CanCollide = false
TailParts[i].Locked = true
TailParts[i].formFactor = "Symmetric"
TailParts[i].Size = Vector3.new(1, 1, 1)
TailMesh = Instance.new("BlockMesh", TailParts[i])
TailMesh.Name = "TailMesh"
TailMesh.Scale = Vector3.new(0.3 - (i - 1) / 80, 0.3 - (i - 1) / 80, 0.25)
Welds[i - 1] = Instance.new("Weld", TailParts[i])
Welds[i - 1].Part0 = TailParts[i - 1]
Welds[i - 1].Part1 = TailParts[i]
Welds[i - 1].C0 = CFrame.new(0, 0, 0.125)
Welds[i - 1].C1 = CFrame.new(0, 0, -0.125)
if i ~= 13 then
TailDecoration = Instance.new("Part", User)
TailDecoration.Name = "TailPart"
TailDecoration.CanCollide = false
TailDecoration.Locked = true
TailDecoration.formFactor = "Symmetric"
TailDecoration.Size = Vector3.new(1, 1, 1)
TailDecoration.BrickColor = BrickColor.new("darkblack")
TailMesh = Instance.new("BlockMesh", TailDecoration)
TailMesh.Name = "TailMesh"
TailMesh.Scale = Vector3.new(0.305 - (i - 1) / 80, 0.1, 0.255)
Weld = Instance.new("Weld", TailDecoration)
Weld.Part0 = TailParts[i]
Weld.Part1 = TailDecoration
Weld.C0 = CFrame.new(0, -0.1, 0)
Weld.C1 = CFrame.new(0, 0, 0)
for e = 1, math.random(0, 1) do
TailStrype = Instance.new("Part", User)
TailStrype.Name = "TailPart"
TailStrype.CanCollide = false
TailStrype.Locked = true
TailStrype.formFactor = "Symmetric"
TailStrype.Size = Vector3.new(1, 1, 1)
TailStrype.BrickColor = BrickColor.new("Really black")
TailMesh = Instance.new("BlockMesh", TailStrype)
TailMesh.Name = "TailMesh"
TailMesh.Scale = Vector3.new(0.33 - (i - 1) / 80, 0.33 - (i - 1) / 80, 0.05)
Weld = Instance.new("Weld", TailStrype)
Weld.Part0 = TailParts[i]
Weld.Part1 = TailStrype
Weld.C0 = CFrame.new(0, 0, math.random(-10, 10) / 80)
Weld.C1 = CFrame.new(0, 0, 0)
end
end
end
Welds[1].C0 = CFrame.new(0, -1, 0.5)
--------------------
--Part Colloration--
--------------------
for i = 2, 12 do
TailParts[i].BrickColor = BrickColor.new("Really black")
end
TailParts[13].BrickColor = BrickColor.new("Gray")
-----------------------
--Animation Smoothing--
-----------------------
function TailSmooth(WhereTo0, WhereTo1)
CR0 = CFrame.new(Welds[1].C1:toEulerAnglesXYZ()).p
CR1 = CFrame.new(WhereTo0).p
AddTo0 = (CR1 - CR0) / 20
CR2 = CFrame.new(Welds[7].C1:toEulerAnglesXYZ()).p
CR3 = CFrame.new(WhereTo1).p
AddTo1 = (CR3 - CR2) / 20
for a = 1, 10 do
wait(0.025)
for b = 1, 6 do
Welds[b].C1 = Welds[b].C1 * CFrame.fromEulerAnglesXYZ(AddTo0.x, AddTo0.y + User.Torso.RotVelocity.y / 128, AddTo0.z)
end
for c = 7, 12 do
Welds[c].C1 = Welds[c].C1 * CFrame.fromEulerAnglesXYZ(AddTo1.x, AddTo1.y + User.Torso.RotVelocity.y / 128, AddTo1.z)
end
end
end
---------------------
--Animation Players--
---------------------
Variation = math.random(-5, 5) / 80
while true do
wait()
Variation = (Variation + math.random(-5, 5) / 80) / 2
if User.Torso.Velocity.magnitude > 8 then
TailSmooth(Vector3.new(-math.pi / 12 + Variation, math.pi / 9, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 6, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, math.pi / 6, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, math.pi / 9, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, -math.pi / 9, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 6, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, -math.pi / 6, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, -math.pi / 9, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 12, 0))
else
TailSmooth(Vector3.new(-math.pi / 24 + Variation, math.pi / 18, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, math.pi / 12, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 24, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, math.pi / 18, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 24, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, -math.pi / 18, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, -math.pi / 12, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 24, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, -math.pi / 18, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 24, 0))
end
end
end
