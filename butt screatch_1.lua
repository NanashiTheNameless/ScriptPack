Player = game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

pcall(function() Character.Staff:Remove() end)

Staff = Instance.new("Model")
Staff.Name = "Tazer"
Staff.Parent = Character

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

for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/10,-math.pi/10/10,-math.pi/10/10)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.05,0,0.05/2)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/10,math.pi/10/10,math.pi/10/10)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.05,0,0.05/2)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0.1,0)
end

while true do
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,0.1,0)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0.1,0)
end
end