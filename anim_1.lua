

Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]

pcall(function() char[":P"]:remove() end)

local Model = Instance.new("Model",char)
Model.Name = ":P"

local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()

local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)

local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()

local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)

local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = Rarm
RAW.C1 = CFrame.new(0, 0.5, 0)

local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = Larm
LAW.C1 = CFrame.new(0, 0.5, 0)

for i = 0, 1, 0.01 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-12+12*i), math.rad(12-12*i)) 
LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end


RAW.Part1 = nil
LAW.Part1 = nil




