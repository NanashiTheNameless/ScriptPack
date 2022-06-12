admin = "ic3w0lf589"
if script.Parent:IsA("HopperBin") == false then
a = Instance.new("HopperBin")
a.Parent = game:GetService("Players")[admin].Backpack
script.Parent = a
else
local debris = game:service("Debris")

Go = false
Kick = false
script.Parent.Selected:connect(function(m) 
m.Button1Down:connect(function() 
if Go == true then return end
Go = true
if script.Parent.Parent.Parent.Character == nil then return end
if script.Parent.Parent.Parent.Character:findFirstChild("Torso") == nil then return end
if script.Parent.Parent.Parent.Character:findFirstChild("Right Arm") == nil then return end
Torso = script.Parent.Parent.Parent.Character.Torso
RL = script.Parent.Parent.Parent.Character["Right Arm"]
Hip = Torso["Right Shoulder"]
Hip.Part1 = nil
W = Instance.new("Weld")
W.Parent = RL
W.Part0 = Torso
W.Part1 = RL
Kick = true
W.C0 = CFrame.new(1.5,0.5,-0.5) *  CFrame.fromEulerAnglesXYZ(-math.pi/3,0,0)
RL.Touched:connect(function(hit)
if Kick == false then return end
F = Instance.new("BodyVelocity")
F.Parent = hit
F.velocity = RL.CFrame.lookVector * 40000
F.maxForce = Vector3.new(40000,0,40000)
debris:AddItem(F,0.5)
end)
wait(0.5)
Kick = false
W:Remove()
Hip.Part1 = RL
Go = false
end) 
end)
end