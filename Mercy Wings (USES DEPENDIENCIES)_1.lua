
--Weapons is not a valid emember of ReplicatedStorage--
script.Parent = nil
wait(0.016666666666667)
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local RootPart = Character.HumanoidRootPart
local torso = Character:FindFirstChild("Torso")
local Mouse = Player:GetMouse()
local wm = Instance.new("Model", Character)
wm.Name = "rightWing"
local rwm = Instance.new("Model", wm)
rwm.Name = "rightWingMercy"
local lwm = Instance.new("Model", wm)
lwm.Name = "leftWingMercy"
local m = nil
if Character:FindFirstChild("Model") then
  m = Character.Model
else
  m = Instance.new("Model", Character)
end
local sine = 0
local change = 1
local Anim = "Idle"
local it = Instance.new
local v3 = Vector3.new
local cf = CFrame.new
local ca = CFrame.Angles
local bc = BrickColor.new
rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
weld2 = function(name, parent, part0, part1, c0, c1)
  local weld = it("Motor6D")
  weld.Name = name
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
local rightWingMercy = game:GetService("ReplicatedStorage").Weapons.Wings.rightWing.rightWingMercy
local leftWingMercy = game:GetService("ReplicatedStorage").Weapons.Wings.leftWing.leftWingMercy
local rightWingHandle = rightWingMercy.Handle:Clone()
rightWingHandle.Parent = rwm
local rightWingHandleJoint = rightWingHandle.Handle
local rightWingHandleJoint_weld = weld2("Handle_weld", m, Character.Torso, rightWingHandleJoint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(0.685117602, -0.560845375, -0.278271139, 3.18300699e-05, -4.27828345e-05, -1, 0.258788615, 0.965933979, -3.30881339e-05, 0.965934098, -0.258788645, 4.18174641e-05))
local rightWingArm = rightWingMercy.arm:Clone()
rightWingArm.Parent = rwm
local rightWingArmJoint = rightWingArm.Handle
local rightWingArmJoint_weld = weld2("Handle_weld", m, rightWingHandleJoint.Joint, rightWingArmJoint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000503540039, -0.140175581, -0.0884112418, 1.28861029e-05, 8.7726421e-06, -1, -0.500072241, 0.865977228, 1.15310468e-06, 0.865977287, 0.50007236, 1.55468188e-05))
local rightWingMain = rightWingMercy.main:Clone()
rightWingMain.Parent = rwm
local rightWingMainJoint = rightWingMain.Handle
local rightWingMainJoint_weld = weld2("Handle_weld", m, rightWingArmJoint.Joint, rightWingMainJoint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000504255295, 0.00364398956, 0.00402297825, 7.57960879e-06, -6.81364872e-06, -1, -5.65063347e-05, 0.999998748, -6.81379061e-06, 0.999998868, 5.65339069e-05, 7.57952876e-06))
local rightWing0 = rightWingMercy["0"]:Clone()
rightWing0.Parent = rwm
local rightWing0Joint = rightWing0.Handle
local rightWing0Joint_weld = weld2("Handle_weld", m, rightWingArmJoint.Joint, rightWing0Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000489115715, -0.476918697, -0.0121640936, 7.57960879e-06, -6.81364872e-06, -1, -5.65063347e-05, 0.999998748, -6.81379061e-06, 0.999998868, 5.65339069e-05, 7.57952876e-06))
local rightWing1 = rightWingMercy["1"]:Clone()
rightWing1.Parent = rwm
local rightWing1Joint = rightWing1.Handle
local rightWing1Joint_weld = weld2("Handle_weld", m, rightWingMainJoint.Joint, rightWing1Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000496864319, -0.328253269, -0.0820782185, 7.57960879e-06, -6.81364872e-06, -1, -5.65063347e-05, 0.999998748, -6.81379061e-06, 0.999998868, 5.65339069e-05, 7.57952876e-06))
local rightWing2 = rightWingMercy["2"]:Clone()
rightWing2.Parent = rwm
local rightWing2Joint = rightWing2.Handle
local rightWing2Joint_weld = weld2("Handle_weld", m, rightWingMainJoint.Joint, rightWing2Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000496864319, -0.328253269, -0.0820782185, 7.57960879e-06, -6.81364872e-06, -1, -5.65063347e-05, 0.999998748, -6.81379061e-06, 0.999998868, 5.65339069e-05, 7.57952876e-06))
local rightWing3 = rightWingMercy["3"]:Clone()
rightWing3.Parent = rwm
local rightWing3Joint = rightWing3.Handle
local rightWing3Joint_weld = weld2("Handle_weld", m, rightWingMainJoint.Joint, rightWing3Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000506043434, -0.0738253593, -0.0984799862, 7.57960879e-06, -6.81364872e-06, -1, -5.65063347e-05, 0.999998748, -6.81379061e-06, 0.999998868, 5.65339069e-05, 7.57952876e-06))
local rightWing4 = rightWingMercy["4"]:Clone()
rightWing4.Parent = rwm
local rightWing4Joint = rightWing4.Handle
local rightWing4Joint_weld = weld2("Handle_weld", m, rightWingMainJoint.Joint, rightWing4Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000514864922, 0.274091244, -0.0364021957, 7.57960879e-06, -6.81364872e-06, -1, -5.65063347e-05, 0.999998748, -6.81379061e-06, 0.999998868, 5.65339069e-05, 7.57952876e-06))
local rightWing5 = rightWingMercy["5"]:Clone()
rightWing5.Parent = rwm
local rightWing5Joint = rightWing5.Handle
local rightWing5Joint_weld = weld2("Handle_weld", m, rightWingMainJoint.Joint, rightWing5Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000514864922, 0.274091244, -0.0364021957, 7.57960879e-06, -6.81364872e-06, -1, -5.65063347e-05, 0.999998748, -6.81379061e-06, 0.999998868, 5.65339069e-05, 7.57952876e-06))
local leftWingHandle = leftWingMercy.Handle:Clone()
leftWingHandle.Parent = lwm
local leftWingHandleJoint = leftWingHandle.Handle
local leftWingHandleJoint_weld = weld2("Handle_weld", m, Character.Torso, leftWingHandleJoint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.686617136, -0.56112361, -0.279083192, -3.19999999e-05, -4.3e-05, 1, -0.258788973, 0.965933859, 3.32539094e-05, -0.965933859, -0.258788973, -4.20378092e-05))
local leftWingArm = leftWingMercy.arm:Clone()
leftWingArm.Parent = lwm
local leftWingArmJoint = leftWingArm.Handle
local leftWingArmJoint_weld = weld2("Handle_weld", m, leftWingHandleJoint.Joint, leftWingArmJoint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000503063202, -0.140175581, -0.0884125084, 1.3033452e-05, 8.22474613e-06, -1, -0.500074685, 0.865982294, 6.04784873e-07, 0.865982294, 0.500074685, 1.53997262e-05))
local leftWingMain = leftWingMercy.main:Clone()
leftWingMain.Parent = lwm
local leftWingMainJoint = leftWingMain.Handle
local leftWingMainJoint_weld = weld2("Handle_weld", m, leftWingArmJoint.Joint, leftWingMainJoint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000503897667, 0.00364351273, 0.00402440876, 8.03966395e-06, -7.25154496e-06, -1, -5.60145963e-05, 1.00000012, -7.25199425e-06, 0.99999994, 5.59825712e-05, 8.0392565e-06))
local leftWing0 = leftWingMercy["0"]:Clone()
leftWing0.Parent = lwm
local leftWing0Joint = leftWing0.Handle
local leftWing0Joint_weld = weld2("Handle_weld", m, leftWingArmJoint.Joint, leftWing0Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000489711761, -0.476918697, -0.0121631399, 8.03966395e-06, -7.25154496e-06, -1, -5.60145963e-05, 1.00000012, -7.25199425e-06, 0.99999994, 5.59825712e-05, 8.0392565e-06))
local leftWing1 = leftWingMercy["1"]:Clone()
leftWing1.Parent = lwm
local leftWing1Joint = leftWing1.Handle
local leftWing1Joint_weld = weld2("Handle_weld", m, leftWingMainJoint.Joint, leftWing1Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000497460365, -0.328253269, -0.0820777118, 8.03966395e-06, -7.25154496e-06, -1, -5.60145963e-05, 1.00000012, -7.25199425e-06, 0.99999994, 5.59825712e-05, 8.0392565e-06))
local leftWing2 = leftWingMercy["2"]:Clone()
leftWing2.Parent = lwm
local leftWing2Joint = leftWing2.Handle
local leftWing2Joint_weld = weld2("Handle_weld", m, leftWingMainJoint.Joint, leftWing2Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000497460365, -0.328253269, -0.0820777118, 8.03966395e-06, -7.25154496e-06, -1, -5.60145963e-05, 1.00000012, -7.25199425e-06, 0.99999994, 5.59825712e-05, 8.0392565e-06))
local leftWing3 = leftWingMercy["3"]:Clone()
leftWing3.Parent = lwm
local leftWing3Joint = leftWing3.Handle
local leftWing3Joint_weld = weld2("Handle_weld", m, leftWingMainJoint.Joint, leftWing3Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000506639481, -0.0738253593, -0.0984792411, 8.03966395e-06, -7.25154496e-06, -1, -5.60145963e-05, 1.00000012, -7.25199425e-06, 0.99999994, 5.59825712e-05, 8.0392565e-06))
local leftWing4 = leftWingMercy["4"]:Clone()
leftWing4.Parent = lwm
local leftWing4Joint = leftWing4.Handle
local leftWing4Joint_weld = weld2("Handle_weld", m, leftWingMainJoint.Joint, leftWing4Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000515580177, 0.274090767, -0.036401391, 8.03966395e-06, -7.25154496e-06, -1, -5.60145963e-05, 1.00000012, -7.25199425e-06, 0.99999994, 5.59825712e-05, 8.0392565e-06))
local leftWing5 = leftWingMercy["5"]:Clone()
leftWing5.Parent = lwm
local leftWing5Joint = leftWing5.Handle
local leftWing5Joint_weld = weld2("Handle_weld", m, leftWingMainJoint.Joint, leftWing5Joint, cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), cf(-0.000515580177, 0.274090767, -0.036401391, 8.03966395e-06, -7.25154496e-06, -1, -5.60145963e-05, 1.00000012, -7.25199425e-06, 0.99999994, 5.59825712e-05, 8.0392565e-06))
local color = bc("Institutional white")
local color2 = bc("Gold")
local torsoColor = torso.BrickColor
local tab = {}
for i,v in pairs(rightWingHandleJoint:GetChildren()) do
  if (v.ClassName == "Part" or v.ClassName == "WedgePart") and v.BrickColor == color then
    v.BrickColor = torsoColor
  end
end
for i,v in pairs(rightWingArmJoint:GetChildren()) do
  if (v.ClassName == "Part" or v.ClassName == "WedgePart") and v.BrickColor == color then
    v.BrickColor = torsoColor
  end
end
for i,v in pairs(rightWingMainJoint:GetChildren()) do
  if (v.ClassName == "Part" or v.ClassName == "WedgePart") and v.BrickColor == color then
    v.BrickColor = torsoColor
  end
end
for i,v in pairs(rightWing0Joint:GetChildren()) do
  if (v.ClassName == "Part" or v.ClassName == "WedgePart") and v.BrickColor == color then
    v.BrickColor = torsoColor
  end
end
for i,v in pairs(rightWing1Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
for i,v in pairs(rightWing2Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
for i,v in pairs(rightWing3Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
for i,v in pairs(rightWing4Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
for i,v in pairs(rightWing5Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
for i,v in pairs(leftWingHandleJoint:GetChildren()) do
  if (v.ClassName == "Part" or v.ClassName == "WedgePart") and v.BrickColor == color then
    v.BrickColor = torsoColor
  end
end
for i,v in pairs(leftWingArmJoint:GetChildren()) do
  if (v.ClassName == "Part" or v.ClassName == "WedgePart") and v.BrickColor == color then
    v.BrickColor = torsoColor
  end
end
for i,v in pairs(leftWingMainJoint:GetChildren()) do
  if (v.ClassName == "Part" or v.ClassName == "WedgePart") and v.BrickColor == color then
    v.BrickColor = torsoColor
  end
end
for i,v in pairs(leftWing0Joint:GetChildren()) do
  if (v.ClassName == "Part" or v.ClassName == "WedgePart") and v.BrickColor == color then
    v.BrickColor = torsoColor
  end
end
for i,v in pairs(leftWing1Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
for i,v in pairs(leftWing2Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
for i,v in pairs(leftWing3Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
for i,v in pairs(leftWing4Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
for i,v in pairs(leftWing5Joint:GetChildren()) do
  if v.ClassName == "Part" or v.ClassName == "WedgePart" then
    if v.BrickColor == color then
      v.BrickColor = torsoColor
    else
      if v.BrickColor == color2 then
        table.insert(tab, v)
      end
    end
  end
end
local clerp = CFrame.new().lerp
local dly = time()
game:GetService("RunService").Stepped:connect(function()
  local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  local velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if RootPart.Velocity.y > 1 and hit == nil then
    Anim = "Jump"
    for i,v in pairs(tab) do
      v.Transparency = 0.2
    end
    dly = time()
    rightWingHandleJoint_weld.C0 = clerp(rightWingHandleJoint_weld.C0, cf(0.8, -0.03, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-50 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    rightWingArmJoint_weld.C0 = clerp(rightWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    rightWingMainJoint_weld.C0 = clerp(rightWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    rightWing0Joint_weld.C0 = clerp(rightWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    rightWing1Joint_weld.C0 = clerp(rightWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    rightWing2Joint_weld.C0 = clerp(rightWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    rightWing3Joint_weld.C0 = clerp(rightWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    rightWing4Joint_weld.C0 = clerp(rightWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    rightWing5Joint_weld.C0 = clerp(rightWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    leftWingHandleJoint_weld.C0 = clerp(leftWingHandleJoint_weld.C0, cf(-0.8, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(50 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    leftWingArmJoint_weld.C0 = clerp(leftWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    leftWingMainJoint_weld.C0 = clerp(leftWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    leftWing0Joint_weld.C0 = clerp(leftWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    leftWing1Joint_weld.C0 = clerp(leftWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    leftWing2Joint_weld.C0 = clerp(leftWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    leftWing3Joint_weld.C0 = clerp(leftWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    leftWing4Joint_weld.C0 = clerp(leftWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    leftWing5Joint_weld.C0 = clerp(leftWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
  else
    if RootPart.Velocity.y < 1 and hit == nil then
      Anim = "Fall"
      for i,v in pairs(tab) do
        v.Transparency = 0.2
      end
      dly = time()
      rightWingHandleJoint_weld.C0 = clerp(rightWingHandleJoint_weld.C0, cf(0.8, -0.03, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-50 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      rightWingArmJoint_weld.C0 = clerp(rightWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      rightWingMainJoint_weld.C0 = clerp(rightWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      rightWing0Joint_weld.C0 = clerp(rightWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      rightWing1Joint_weld.C0 = clerp(rightWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      rightWing2Joint_weld.C0 = clerp(rightWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      rightWing3Joint_weld.C0 = clerp(rightWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      rightWing4Joint_weld.C0 = clerp(rightWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      rightWing5Joint_weld.C0 = clerp(rightWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      leftWingHandleJoint_weld.C0 = clerp(leftWingHandleJoint_weld.C0, cf(-0.8, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(50 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      leftWingArmJoint_weld.C0 = clerp(leftWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      leftWingMainJoint_weld.C0 = clerp(leftWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      leftWing0Joint_weld.C0 = clerp(leftWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      leftWing1Joint_weld.C0 = clerp(leftWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      leftWing2Joint_weld.C0 = clerp(leftWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      leftWing3Joint_weld.C0 = clerp(leftWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      leftWing4Joint_weld.C0 = clerp(leftWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
      leftWing5Joint_weld.C0 = clerp(leftWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.3)
    else
      if Torsovelocity < 2 and hit ~= nil then
        Anim = "Idle"
        if dly + 3 < time() then
          for i,v in pairs(tab) do
            v.Transparency = 1
          end
          rightWingHandleJoint_weld.C0 = clerp(rightWingHandleJoint_weld.C0, cf(1, -0.03, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-80 + 0 * math.cos(sine / 25)), math.rad(10 + 0 * math.cos(sine / 25))), 0.1)
          rightWingArmJoint_weld.C0 = clerp(rightWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(10 + 0 * math.cos(sine / 25))), 0.1)
          rightWingMainJoint_weld.C0 = clerp(rightWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-20 + 0 * math.cos(sine / 25))), 0.1)
          rightWing0Joint_weld.C0 = clerp(rightWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-109 + 0 * math.cos(sine / 25))), 0.1)
          rightWing1Joint_weld.C0 = clerp(rightWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-89 + 0 * math.cos(sine / 25))), 0.1)
          rightWing2Joint_weld.C0 = clerp(rightWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-85 + 0 * math.cos(sine / 25))), 0.1)
          rightWing3Joint_weld.C0 = clerp(rightWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          rightWing4Joint_weld.C0 = clerp(rightWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-40 + 0 * math.cos(sine / 25))), 0.1)
          rightWing5Joint_weld.C0 = clerp(rightWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-19 + 0 * math.cos(sine / 25))), 0.1)
          leftWingHandleJoint_weld.C0 = clerp(leftWingHandleJoint_weld.C0, cf(-1, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(80 + 0 * math.cos(sine / 25)), math.rad(-10 + 0 * math.cos(sine / 25))), 0.1)
          leftWingArmJoint_weld.C0 = clerp(leftWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(10 + 0 * math.cos(sine / 25))), 0.1)
          leftWingMainJoint_weld.C0 = clerp(leftWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-20 + 0 * math.cos(sine / 25))), 0.1)
          leftWing0Joint_weld.C0 = clerp(leftWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-109 + 0 * math.cos(sine / 25))), 0.1)
          leftWing1Joint_weld.C0 = clerp(leftWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-89 + 0 * math.cos(sine / 25))), 0.1)
          leftWing2Joint_weld.C0 = clerp(leftWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-85 + 0 * math.cos(sine / 25))), 0.1)
          leftWing3Joint_weld.C0 = clerp(leftWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          leftWing4Joint_weld.C0 = clerp(leftWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-40 + 0 * math.cos(sine / 25))), 0.1)
          leftWing5Joint_weld.C0 = clerp(leftWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-19 + 0 * math.cos(sine / 25))), 0.1)
        else
          rightWingHandleJoint_weld.C0 = clerp(rightWingHandleJoint_weld.C0, cf(0.5, -0.03, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-35 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          rightWingArmJoint_weld.C0 = clerp(rightWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          rightWingMainJoint_weld.C0 = clerp(rightWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          rightWing0Joint_weld.C0 = clerp(rightWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          rightWing1Joint_weld.C0 = clerp(rightWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          rightWing2Joint_weld.C0 = clerp(rightWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          rightWing3Joint_weld.C0 = clerp(rightWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          rightWing4Joint_weld.C0 = clerp(rightWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          rightWing5Joint_weld.C0 = clerp(rightWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          leftWingHandleJoint_weld.C0 = clerp(leftWingHandleJoint_weld.C0, cf(-0.5, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(35 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          leftWingArmJoint_weld.C0 = clerp(leftWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          leftWingMainJoint_weld.C0 = clerp(leftWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          leftWing0Joint_weld.C0 = clerp(leftWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          leftWing1Joint_weld.C0 = clerp(leftWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          leftWing2Joint_weld.C0 = clerp(leftWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          leftWing3Joint_weld.C0 = clerp(leftWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          leftWing4Joint_weld.C0 = clerp(leftWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          leftWing5Joint_weld.C0 = clerp(leftWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
        end
      else
        if Torsovelocity > 2 and hit ~= nil then
          Anim = "Walk"
          if dly + 3 < time() then
            for i,v in pairs(tab) do
              v.Transparency = 1
            end
          end
          do
            rightWingHandleJoint_weld.C0 = clerp(rightWingHandleJoint_weld.C0, cf(0.9, -0.03, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(-65 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            rightWingArmJoint_weld.C0 = clerp(rightWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            rightWingMainJoint_weld.C0 = clerp(rightWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            rightWing0Joint_weld.C0 = clerp(rightWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            rightWing1Joint_weld.C0 = clerp(rightWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            rightWing2Joint_weld.C0 = clerp(rightWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            rightWing3Joint_weld.C0 = clerp(rightWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            rightWing4Joint_weld.C0 = clerp(rightWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            rightWing5Joint_weld.C0 = clerp(rightWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            leftWingHandleJoint_weld.C0 = clerp(leftWingHandleJoint_weld.C0, cf(-0.9, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(65 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            leftWingArmJoint_weld.C0 = clerp(leftWingArmJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            leftWingMainJoint_weld.C0 = clerp(leftWingMainJoint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            leftWing0Joint_weld.C0 = clerp(leftWing0Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            leftWing1Joint_weld.C0 = clerp(leftWing1Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            leftWing2Joint_weld.C0 = clerp(leftWing2Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            leftWing3Joint_weld.C0 = clerp(leftWing3Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            leftWing4Joint_weld.C0 = clerp(leftWing4Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            leftWing5Joint_weld.C0 = clerp(leftWing5Joint_weld.C0, cf(0, 0, 0) * ca(math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
          end
        end
      end
    end
  end
end)

