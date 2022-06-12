
script.Parent = nil
Player = Game:GetService("Players").LocalPlayer
Character = Player.Character
RightArm = Character["Right Arm"]
RightShoulder = Character.Torso["Right Shoulder"] 
LeftArm = Character["Left Arm"]
Torso = Character["Torso"]
LeftLeg = Character["Left Leg"]
RightLeg = Character["Right Leg"]
Head = Character["Head"]
Head.Transparency = 0
Character["Humanoid"].MaxHealth = math.huge

Part = Instance.new("Part", Character)
Part.TopSurface = 0
Part.BottomSurface = 0
Part.Transparency = 0
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.35, 5, 3)
Part.BrickColor = BrickColor.new("Institutional white")
Weld = Instance.new("Weld", Part)
Weld.Part0 = Part
Weld.Part1 = RightArm
Weld.C0 = CFrame.new(-0.5, 0, 0)



TheTool = Instance.new("HopperBin",Player.Backpack)
TheTool.Name = "Shield"

TheTool.Selected:connect(function()
game:GetService("Lighting").GlobalShadows = true
game:GetService("Lighting").TimeOfDay = 12
game:GetService("Lighting").Brightness = 2
game:GetService("Lighting").Ambient = Color3.new()
RightShoulder.Part0 = nil -- disconnects the shoulder
local joint = Instance.new("Motor", Character.Torso) 
joint.Name = "JuggernautJoint" 
joint.Part0 = Character.Torso 
joint.Part1 = RightArm 
joint.C0 = CFrame.new(1.5,0.5,0) 
joint.C1 = CFrame.new(0,0.5,0) -- this is the pivot point, 0.5 higher than the center of arm is the shoulder, so when you change angle of C0 it will move from the shoulder
for i = 1, 10 do 
joint.C0 = CFrame.new(1.5 - (1/10*i),0.5,-(1/10*i)) * CFrame.Angles((math.pi/2)/10*i,0,(-math.pi/2)/10*i) -- this will animate the arm to the angle math.pi/2,math.pi/2,0
Weld.C0 = CFrame.new(-0.5,0,0) * CFrame.Angles((math.pi/2)/10*i,0,0) 
wait(0.02) 
end 
end)
TheTool.Deselected:connect(function()
for i, v in pairs(Character.Torso:children()) do 
if v.className == "Motor" and v.Name == "JuggernautJoint" then 
v:remove() 
end 
end 
RightShoulder.Parent = Character.Torso 
RightShoulder.Part0 = Character.Torso 
RightShoulder.Part1 = RightArm 
-- RightShoulder.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,-0,-0)
end)