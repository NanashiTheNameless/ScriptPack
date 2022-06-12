Player = game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

--[[ * Fire StickA * ]]--

pcall(function() Character.Model:Remove() end)

Model = Instance.new("Model")
Model.Name = "Model"
Model.Parent = Character

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Arm Weld * ]]--

ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = Character["Torso"]
ArmWeldR.Part0 = ArmWeldR.Parent
ArmWeldR.Part1 = Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Neck Weld * ]]--

Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * StickA * ]]--

StickA = Instance.new("Part")
StickA.formFactor = "Custom"
StickA.Locked = true
StickA.CanCollide = false
StickA.BrickColor = BrickColor.new("Reddish brown")
StickA.Material = "Wood"
StickA.Anchored = false
StickA.Size = Vector3.new(0.6,4,0.6)
StickA.TopSurface = 0
StickA.BottomSurface = 0
StickA.Parent = Model
WeldA = Instance.new("Weld")
WeldA.Parent = StickA
WeldA.Part0 = Character["Right Arm"]
WeldA.Part1 = StickA
WeldA.C0 = CFrame.new(0,-1,-1) * CFrame.Angles(-math.pi/2,0,0)

--[[ * StickB * ]]--

StickB = Instance.new("Part")
StickB.formFactor = "Custom"
StickB.Locked = true
StickB.CanCollide = false
StickB.BrickColor = BrickColor.new("Reddish brown")
StickB.Material = "Wood"
StickB.Anchored = false
StickB.Size = Vector3.new(3,0.6,0.6)
StickB.TopSurface = 0
StickB.BottomSurface = 0
StickB.Parent = Model
WeldB = Instance.new("Weld")
WeldB.Parent = StickB
WeldB.Part0 = StickA
WeldB.Part1 = StickB
WeldB.C0 = CFrame.new(0,0.5,-0.05) * CFrame.Angles(0,0,0)


for i = 1,13 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
end

while true do
for i = 1,6 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05,0.05)
for i,v in pairs(StickA:GetChildren()) do if v.className ~= "Weld" then v:Remove() end end
for i,v in pairs(StickB:GetChildren()) do if v.className ~= "Weld" then v:Remove() end end
StickA.BrickColor = BrickColor.new("Reddish brown")
StickB.BrickColor = BrickColor.new("Reddish brown")
end
wait()
for i = 1,6 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
for i,v in pairs(StickA:GetChildren()) do if v.className ~= "Weld" then v:Remove() end end
for i,v in pairs(StickB:GetChildren()) do if v.className ~= "Weld" then v:Remove() end end
StickA.BrickColor = BrickColor.new("Reddish brown")
StickB.BrickColor = BrickColor.new("Reddish brown")
end
pcall(function() Character.Humanoid.MaxHealth = math.huge end)
wait()
end