--MADE BY OneLegend (NOT THE SCRIPT) Thanks to CyberFromLU for letting me Publish! REGULAR SCRIPT: Go to line 20 and 2524 and put your name where it says "YOUR NAME HERE"
-------------------------------------------------------------------
Player = game:GetService("Players"):FindFirstChild("ic3w0lf589")
Name = "SCAR-H"
selected = false
canDual = false
dual = false
Button1Down = false
damage = 30
canFire = true
canFire2 = false
readyTime = 0.040
automatic = false
burst = false
burstCount = 0
burstCountMax = 7
canSilence = true
silenced = false
canZoom = false
zoom = false
switchToSingle = true
switchToBurst = false
switchToAutomatic = true


ammoGui = Instance.new("ScreenGui")
ammoGui.Name = Name
local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.Size = UDim2.new(0, 165, 0, 60)
frame.Position = UDim2.new(0, 0, 1, -60)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Parent = ammoGui
local label = Instance.new("TextLabel")
label.Name = "Weapon"
label.Text = "Weapon: " ..Name
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 0)
label.BackgroundColor3 = Color3.new(1, 0, 0)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "MagazinePrefix"
label.Text = " Magazine:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 20)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Magazine"
label.Text = "0/0"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 20)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "AmmoPrefix"
label.Text = " Ammunition:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 40)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Ammo"
label.Text = "0/0"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 40)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame


function updateGui()
if selected == false then return end
if Player:FindFirstChild("PlayerGui") == nil then Instance.new("PlayerGui").Parent = Player end
if Player.PlayerGui:FindFirstChild(Name) == nil then
ammoGui:Clone().Parent = Player.PlayerGui
end
Player.PlayerGui[Name].Frame.Magazine.Text = tostring(magazine.Value).. "/" ..tostring(magazineMax.Value)
Player.PlayerGui[Name].Frame.Ammo.Text = tostring(ammo.Value).. "/" ..tostring(ammoMax.Value)
end


function makeParts(format)
local model = Instance.new("Model")
model.Name = Name
local pm = Instance.new("Part")
pm.Name = "Handle"
pm.FormFactor = "Custom"
pm.Size = Vector3.new(1, 1, 1)
pm.BrickColor = BrickColor.new("Medium stone gray")
pm.Locked = true
pm.TopSurface = 0
pm.BottomSurface = 0
pm.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.3, 1.25, 0.5)
m.Parent = pm
if format ~= nil then
local w = Instance.new("Weld")
w.Part0 = pm
if format == "RightHand" then
w.Part1 = Player.Character:FindFirstChild("Right Arm")
w.C0 = CFrame.new(0, 1.4, 0.8)
w.C1 = CFrame.new()
elseif format == "RightHolster" then
w.Part1 = Player.Character:FindFirstChild("Torso")
w.C0 = CFrame.new(-0.65, -0.1, 0.85) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(90), 0)
w.C1 = CFrame.new()
model.Name = Name.. " (Holstered)"
end
w.Parent = pm
model.Parent = Player.Character
end
--[[
sniper1 http://www.roblox.com/Asset/?id=1868836
equip http://www.roblox.com/Asset/?id=13510737
fire1 http://www.roblox.com/Asset/?id=2760979
fire2 http://www.roblox.com/Asset/?id=13510352
fire3 http://www.roblox.com/Asset/?id=2692806
fire4 http://www.roblox.com/Asset/?id=2691586
fire5 http://www.roblox.com/Asset/?id=2920959
fire6 http://www.roblox.com/Asset/?id=2697431
fire7 http://www.roblox.com/Asset/?id=2920959
reload1 http://www.roblox.com/Asset/?id=2691591
reload2 http://www.roblox.com/Asset/?id=2697432
reload3 http://www.roblox.com/Asset/?id=2920960
reload4 http://www.roblox.com/Asset/?id=2761842
shotgun1 http://www.roblox.com/Asset/?id=2697294
--]]
local s = Instance.new("Sound")
s.Name = "Fire"
s.SoundId = "http://www.roblox.com/Asset/?id=10209803"
s.Volume = 1
s.Pitch = 1.5
s.Looped = false
s.Parent = pm
local s = Instance.new("Sound")
s.Name = "Reload"
s.SoundId = "http://www.roblox.com/Asset/?id=2697432"
s.Volume = 1
s.Pitch = 1
s.Looped = false
s.Parent = pm
local s = Instance.new("Sound")
s.Name = "Empty"
s.SoundId = "http://www.roblox.com/Asset/?id=2697295"
s.Volume = 1
s.Pitch = 5
s.Looped = false
s.Parent = pm
local s = Instance.new("Sound")
s.Name = "Switch"
s.SoundId = "http://www.roblox.com/Asset/?id=2697295"
s.Volume = 1
s.Pitch = 10
s.Looped = false
s.Parent = pm
local p = Instance.new("Part")
p.Name = "ShellOut"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.Transparency = 1
p.Locked = true
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Grip"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Medium stone gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.29, 0.5, 0.9)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, -0.25, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(15), 0, 0)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Magazine Housing"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Medium stone gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.3, 0.6, 0.3)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 0.525, -0.31) * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, 0)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Magazine"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Dark gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.25, 0.55, 1)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 0.485, -0.9) * CFrame.fromEulerAnglesXYZ(math.rad(-15), 0, 0)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Trigger Housing"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Medium stone gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.1, 0.4, 0.025)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 0.1, -0.4)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Trigger"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Black")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.1, 0.05, 0.15)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 0.03, -0.275)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Barrel 2"
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Medium stone gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.3, 1.1, 0.35)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 1.15, 0.075)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Barrel 1"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Black")
p.CanCollide = false
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("CylinderMesh")
m.Scale = Vector3.new(0.15, 0.6, 0.15)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 2, 0.075)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Muzzle"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Black")
p.CanCollide = false
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("CylinderMesh")
m.Scale = Vector3.new(0.2, 0.2, 0.2)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 2.4, 0.075)
w.C1 = CFrame.new()
w.Parent = p
local s = Instance.new("Smoke")
s.Enabled = false
s.Name = "Smoke"
s.RiseVelocity = -5
s.Opacity = 0.3
s.Color = Color3.new(75 / 225, 75 / 225, 75 / 225)
s.Size = 1
s.Parent = p
local f = Instance.new("Fire")
f.Enabled = false
f.Name = "Fire"
f.Heat = -35
f.Size = 1
f.Parent = p
local p = Instance.new("Part")
p.Name = "Silencer"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Black")
p.CanCollide = false
p.Transparency = 1
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("CylinderMesh")
m.Scale = Vector3.new(0.4, 1, 0.4)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 2.8, 0.075)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Stock 1"
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Medium stone gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.3, 0.9, 0.35)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, -1.05, -0.1)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Stock 1 Angle"
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Dark gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Wedge"
m.Scale = Vector3.new(0.3, 0.9, 0.18)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, -1.05, 0.1625)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Stock 2"
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Medium stone gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.2, 0.5, 0.3)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, -1.7, -0.1)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Stock 2 Angle"
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Dark gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Wedge"
m.Scale = Vector3.new(0.2, 0.5, 0.3)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, -0.5, -1.8) * CFrame.fromEulerAnglesXYZ(math.rad(270), 0, math.rad(180))
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Stock 3"
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Medium stone gray")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.2, 0.05, 0.8)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, -1.975, -0.349)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Stock 4"
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Black")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.25, 0.05, 0.85)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, -2.025, -0.349)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Stock 4 Bottom"
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Black")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Wedge"
m.Scale = Vector3.new(0.25, 0.1, 0.45)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, -2.1, -0.55)
w.C1 = CFrame.new()
w.Parent = p
local p = Instance.new("Part")
p.Name = "Stock 4 Top"
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Black")
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = model
local m = Instance.new("SpecialMesh")
m.MeshType = "Wedge"
m.Scale = Vector3.new(0.25, 0.1, 0.45)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, -2.1, 0.15) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(180))
w.C1 = CFrame.new()
w.Parent = p
return model
end


function removeParts(format)
if format == "RightHand" then
pcall(function() Player.Character[Name]:Remove() end)
elseif format == "LeftHand" then
pcall(function() Player.Character[Name.. " (Left)"]:Remove() end)
elseif format == "RightHolster" then
pcall(function() Player.Character[Name.. " (Holstered)"]:Remove() end)
elseif format == "LeftHolster" then
pcall(function() Player.Character[Name.. " (Holstered, Left)"]:Remove() end)
end
end


function SetAngle(Joint, Angle, Character)
if Character == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
if Joints[Joint] == nil then return false end
if Joint == 1 or Joint == 3 then
Joints[Joint].DesiredAngle = Angle
end
if Joint == 2 or Joint == 4 then
Joints[Joint].DesiredAngle = -Angle
end
end


function ForceAngle(Joint, Angle, Character)
if Character == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
if Joints[Joint] == nil then return false end
if Joint == 1 or Joint == 3 then
Joints[Joint].DesiredAngle = Angle
Joints[Joint].CurrentAngle = Angle
end
if Joint == 2 or Joint == 4 then
Joints[Joint].DesiredAngle = -Angle
Joints[Joint].CurrentAngle = -Angle
end
end


function SetSpeed(Joint, Speed, Character)
if Character == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
if Joints[Joint] == nil then return false end
Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
if Character == nil then return false end
if Character:FindFirstChild("Torso") == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder"),
Character.Torso:FindFirstChild("Left Shoulder"),
Character.Torso:FindFirstChild("Right Hip"),
Character.Torso:FindFirstChild("Left Hip")
}
local Limbs = {
Character:FindFirstChild("Right Arm"),
Character:FindFirstChild("Left Arm"),
Character:FindFirstChild("Right Leg"),
Character:FindFirstChild("Left Leg")
}
if Joints[Limb] == nil then return false end
if Limbs[Limb] == nil then return false end
local Joint = Instance.new("Motor")
Joint.Parent = Character.Torso
Joint.Part0 = Character.Torso
Joint.Part1 = Limbs[Limb]
if Limb == 1 then
Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joint.Name = "Right Shoulder 2"
elseif Limb == 2 then
Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joint.Name = "Left Shoulder 2"
elseif Limb == 3 then
Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joint.Name = "Right Hip 2"
elseif Limb == 4 then
Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joint.Name = "Left Hip 2"
end
Joint.MaxVelocity = Joints[Limb].MaxVelocity
Joint.CurrentAngle = Joints[Limb].CurrentAngle
Joint.DesiredAngle = Joints[Limb].DesiredAngle
Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
if Character == nil then return false end
if Character.Parent == nil then return false end
if Character:FindFirstChild("Torso") == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
local Limbs = {
Character:FindFirstChild("Right Arm"),
Character:FindFirstChild("Left Arm"),
Character:FindFirstChild("Right Leg"),
Character:FindFirstChild("Left Leg")
}
if Joints[Limb] == nil then return false end
if Limbs[Limb] == nil then return false end
if Limb == 1 then
Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
elseif Limb == 2 then
Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
elseif Limb == 3 then
Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
elseif Limb == 4 then
Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
end
end


function EnableLimb(Limb, Character)
if Character == nil then return false end
if Character:FindFirstChild("Torso") == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
local Limbs = {
Character:FindFirstChild("Right Arm"),
Character:FindFirstChild("Left Arm"),
Character:FindFirstChild("Right Leg"),
Character:FindFirstChild("Left Leg")
}
if Joints[Limb] == nil then return false end
if Limbs[Limb] == nil then return false end
if Limb == 1 then
Joints[Limb].Name = "Right Shoulder"
elseif Limb == 2 then
Joints[Limb].Name = "Left Shoulder"
elseif Limb == 3 then
Joints[Limb].Name = "Right Hip"
elseif Limb == 4 then
Joints[Limb].Name = "Left Hip"
end
Animate = Character:FindFirstChild("Animate")
if Animate == nil then return false end
Animate = Animate:Clone()
Character.Animate:Remove()
Animate.Parent = Character
end


function playAnimation(format, mouse)
if format == "equip" then
Player.Character[Name.. " (Holstered)"].Handle.Weld:Remove()
local w = Instance.new("Weld")
w.Part0 = Player.Character[Name.. " (Holstered)"].Handle
w.Part1 = Player.Character:FindFirstChild("Right Arm")
w.C0 = CFrame.new(0, 1.2, 0.7)
w.C1 = CFrame.new()
w.Parent = Player.Character[Name.. " (Holstered)"].Handle
for i = 0.01, 1, 0.1 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.5 * i) + (1.5 * (1 - i)), 1.2 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(300 + ((1 - i) * 50)), math.rad(10), math.rad(-90) * i)
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new((-0.9 * i) + (-1.5 * (1 - i)), -0.35 * i, 0.51 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
wait()
else return false end
else return false end
end
return playAnimation("hold")
end
if format == "unequip" then
for i = 1, 0.01, -0.1 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.5 * i) + (1.5 * (1 - i)), 1.2 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(300 + ((1 - i) * 50)), math.rad(10), math.rad(-90) * i)
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new((-0.9 * i) + (-1.5 * (1 - i)), -0.35 * i, 0.51 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
wait()
else return false end
else return false end
end
return true
end
if format == "hold" then
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
else return false end
else return false end
end
if format == "reload" then
Player.Character[Name].Handle.Reload:Play()
for i = 0, 25, 5 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 + (i / 60), 1.2 - (i / 20), 0.8 + (i / 35)) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 + -i * 3.5), math.rad(-90))
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
wait()
else return false end
else return false end
end
Player.Character[Name].Magazine.Transparency = 1
magazineDrop = Player.Character[Name].Magazine:Clone()
magazineDrop.Transparency = 0
magazineDrop.Parent = game.Workspace
coroutine.resume(coroutine.create(function(part) wait(4.5) for i = 0, 1, 0.1 do part.Transparency = i wait() end part:Remove() end), magazineDrop)
delay(0.1, function() magazineDrop.CanCollide = true end)
magazineNew = Player.Character[Name].Magazine:Clone()
magazineNew.Name = "New Magazine"
magazineNew.Transparency = 0
magazineNew.Parent = Player.Character[Name]
local w = Instance.new("Weld")
w.Part0 = magazineNew
w.Part1 = Player.Character:FindFirstChild("Left Arm")
w.C0 = CFrame.new(0, 1.1, 0)
w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
w.Parent = magazineNew
for i = 25, 0, -5 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 + ((i + 10) / 60), 1.2 - ((i + 10) / 20), 0.8 + (i / 35)) * CFrame.fromEulerAnglesXYZ(math.rad(300 - (i - 10)), math.rad(10 + -i * 3.5), math.rad(-90))
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
wait()
else return false end
else return false end
end
Player.Character[Name].Magazine.Transparency = 0
Player.Character[Name]["New Magazine"]:Remove()
wait(0.4)
for i = 0, 10, 5 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 - (i / 25), 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 - i), math.rad(-90))
wait()
else return false end
else return false end
end
wait(0.1)
for i = 0, 10, 1.5 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.9, 1.2 - (i / 25), 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
wait()
else return false end
else return false end
end
for i = 10, 0, -1.5 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.9, 1.2 - (i / 25), 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
wait()
else return false end
else return false end
end
for i = 10, 0, -5 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 - (i / 25), 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 - i), math.rad(-90))
wait()
else return false end
else return false end
end
end
if format == "fire" then
makeShell(Player.Character[Name]:FindFirstChild("ShellOut"))
if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
if silenced then
Player.Character[Name].Handle.Fire.Volume = math.random(3, 8) / 10
Player.Character[Name].Handle.Fire.Pitch = math.random(20, 25) / 10
Player.Character[Name].Handle.Fire:Play()
CamShake(5, 50000)
else
Player.Character[Name].Handle.Fire.Volume = math.random(9, 10) / 10
Player.Character[Name].Handle.Fire.Pitch = 1.5
Player.Character[Name].Handle.Fire:Play()
CamShake(10, 25000)
end
else return false end
if Player.Character[Name]:FindFirstChild("Muzzle") ~= nil then
coroutine.resume(coroutine.create(function() Player.Character[Name].Muzzle.Smoke.Enabled = true Player.Character[Name].Muzzle.Fire.Enabled = true wait(0.1) Player.Character[Name].Muzzle.Smoke.Enabled = false Player.Character[Name].Muzzle.Fire.Enabled = false end))
else return false end
for i = 0, 10, 5 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
wait()
else return false end
else return false end
end
for i = 10, 0, -5 do
if Player.Character:FindFirstChild("Torso") ~= nil then
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
wait()
else return false end
else return false end
end
end
return true
end


function CamShake(time, freq)
coroutine.resume(coroutine.create(function()
local cam = Workspace.CurrentCamera
local time = 10
local seed = Vector3.new(math.random(100, 200) / freq, math.random(100, 200) / freq, 0)
if math.random(1, 2) == 1 then seed = Vector3.new(-seed.x, seed.y, 0) end
if math.random(1, 2) == 1 then seed = Vector3.new(seed.x, -seed.y, 0) end
cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(seed.x * time, seed.y * time, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
for i = 1, time do
cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(-seed.x, -seed.y, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
wait()
end
end))
end


function makeShell(part)
if part == nil then return false end
local casing = Instance.new("Part")
casing.Name = "Shell"
casing.FormFactor = "Custom"
casing.Size = Vector3.new(1, 1, 1)
casing.CFrame = CFrame.new(part.Position) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
casing.BrickColor = BrickColor.new("New Yeller")
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.1, 0.3, 0.1)
mesh.Parent = casing
casing.Parent = Workspace
casing:BreakJoints()
casing.Velocity = (part.CFrame.lookVector * 50) + Vector3.new(0, 10, 0)
coroutine.resume(coroutine.create(function() wait(4.5) for i = 0, 1, 0.1 do casing.Transparency = i wait() end casing:Remove() end))
end


function Weld(x, y)
local weld = Instance.new("Weld")
weld.Part0 = x
weld.Part1 = y
CJ = CFrame.new(x.Position)
C0 = x.CFrame:inverse() * CJ
C1 = y.CFrame:inverse() * CJ
weld.C0 = C0
weld.C1 = C1
weld.Parent = x
end


function tagHumanoid(humanoid)
local tag = Instance.new("ObjectValue")
tag.Name = "creator"
tag.Value = Player
tag.Parent = humanoid
local tag = Instance.new("StringValue")
tag.Name = "creatorType1"
tag.Value = Name
tag.Parent = humanoid
local tag = Instance.new("StringValue")
tag.Name = "creatorType2"
tag.Value = "shot"
tag.Parent = humanoid
end


function untagHumanoid(humanoid)
if humanoid ~= nil then
local tag = humanoid:FindFirstChild("creator")
if tag ~= nil then
tag:Remove()
end
local tag = humanoid:FindFirstChild("creatorType1")
if tag ~= nil then
tag:Remove()
end
local tag = humanoid:FindFirstChild("creatorType2")
if tag ~= nil then
tag:Remove()
end
end
end


function fire(startPoint, endPoint, hit)
local trail = Instance.new("Part")
trail.Name = "Bullet Trail"
trail.BrickColor = BrickColor.new("New Yeller")
trail.TopSurface = 0
trail.BottomSurface = 0
trail.FormFactor = 0
trail.Size = Vector3.new(1, 1, 1)
trail.Transparency = 0.3
trail.Anchored = true
trail.CanCollide = false
trail.CFrame = CFrame.new((startPoint + endPoint) / 2, endPoint)
trail.Parent = Workspace
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.1, 0.1, (startPoint - endPoint).magnitude)
mesh.Parent = trail
coroutine.resume(coroutine.create(function(part) for i = 1, 10 do part.Mesh.Scale = Vector3.new(part.Mesh.Scale.x - 0.01, part.Mesh.Scale.y - 0.01, part.Mesh.Scale.z) wait() end part:Remove() end), trail)
if hit ~= nil then
if hit.Parent == nil then return end
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
tagHumanoid(hit.Parent.Humanoid)
if hit.Name == "Head" then
hit.Parent.Humanoid:TakeDamage(damage * 10)
elseif hit.Name == "Torso" then
hit.Parent.Humanoid:TakeDamage(damage * 2)
else
hit.Parent.Humanoid:TakeDamage(damage)
end
if math.random(1, 10) == 1 then
hit.Parent.Humanoid.Sit = true
end
delay(0.1, function() untagHumanoid(hit.Parent.Humanoid) end)
end
if hit.Anchored == false then
hit.Velocity = hit.Velocity + ((endPoint - startPoint).unit * (damage * 2))
end
end
end


function onButton1Down(mouse)
if selected == false then return end
if Player.Character:FindFirstChild(Name) ~= nil and Button1Down == false and canFire == true and (function() if dual == true then if Player.Character:FindFirstChild(Name.. " (Left)") ~= nil then return true else return false end else return true end end)() == true then
if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
if dual == true then if Player.Character[Name.. " (Left)"]:FindFirstChild("Handle") == nil then return end end
if dual == true then if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end end
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
Button1Down = true
canFire = false
canFire2 = true
while canFire2 == true do
local humanoid = Player.Character:FindFirstChild("Humanoid")
if humanoid == nil then
canFire2 = false
break
end
if humanoid.Health <= 0 then
canFire2 = false
break
end
local fireLeft = false
if automatic == false and burst == false then
canFire2 = false
elseif automatic == false and burst == true then
if burstCount >= burstCountMax then
canFire2 = false
burstCount = 0
break
end
burstCount = burstCount + 1
elseif automatic == true and burst == false then
fireLeft = true
end
if magazine.Value > 0 then
magazine.Value = magazine.Value - 1
updateGui()
fire(Player.Character[Name].Muzzle.Position, mouse.Hit.p, mouse.Target)
coroutine.resume(coroutine.create(function()
if dual == true then
playAnimation("rightFire")
elseif dual == false then
playAnimation("fire")
end
end))
else
Player.Character[Name].Handle.Empty:Play()
end
if fireLeft == true and dual == true and automatic == true then
if magazine.Value > 0 then
coroutine.resume(coroutine.create(function()
wait(readyTime / 2)
magazine.Value = magazine.Value - 1
updateGui()
fire(Player.Character[Name.. " (Left)"].Muzzle.Position, mouse.Hit.p, mouse.Target)
playAnimation("leftFire")
end))
else
coroutine.resume(coroutine.create(function()
wait(readyTime / 2)
Player.Character[Name].Handle.Empty:Play()
end))
end
end
wait(readyTime)
end
mouse.Icon = "rbxasset://textures\\GunCursor.png"
canFire = true
end
end


function onButton1Up(mouse)
if selected == false then return end
Button1Down = false
canFire2 = false
burstCount = 0
while canFire == false do wait() end
if dual == true and automatic == false then
if Player.Character[Name.. " (Left)"]:FindFirstChild("Handle") == nil then return end
if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
canFire = false
canFire2 = true
while canFire2 == true do
local humanoid = Player.Character:FindFirstChild("Humanoid")
if humanoid == nil then
canFire2 = false
break
end
if humanoid.Health <= 0 then
canFire2 = false
break
end
if burst == false then
canFire2 = false
elseif burst == true then
if burstCount >= burstCountMax then
canFire2 = false
burstCount = 0
break
end
burstCount = burstCount + 1
end
if magazine.Value <= 0 then
Player.Character[Name].Handle.Empty:Play()
else
coroutine.resume(coroutine.create(function()
playAnimation("leftFire")
end))
magazine.Value = magazine.Value - 1
updateGui()
fire(Player.Character[Name.. " (Left)"].Muzzle.Position, mouse.Hit.p, mouse.Target)
end
wait(readyTime)
end
mouse.Icon = "rbxasset://textures\\GunCursor.png"
canFire = true
end
end


function onKeyDown(key, mouse)
if selected == false then return end
key = key:lower()
if key == "q" and Button1Down == false and canFire == true then
if mouse.Target == nil then return end
if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
if dual == true then onKeyDown("t", mouse) end
onDeselected(mouse)
removeParts("RightHolster")
script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
end
end
if key == "e" and Button1Down == false and canFire == true and canSilence == true then
if silenced then
silenced = false
if Player.Character:FindFirstChild(Name) == nil then return end
if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
if Player.Character[Name]:FindFirstChild("Muzzle 2") == nil then return end
Player.Character[Name].Muzzle.Transparency = 1
Player.Character[Name].Muzzle.Name = "Silencer"
Player.Character[Name]["Muzzle 2"].Name = "Muzzle"
if dual == true then
if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle 2") == nil then return end
Player.Character[Name.. " (Left)"].Muzzle.Transparency = 1
Player.Character[Name.. " (Left)"].Muzzle.Name = "Silencer"
Player.Character[Name.. " (Left)"]["Muzzle 2"].Name = "Muzzle"
end
else
silenced = true
if Player.Character:FindFirstChild(Name) == nil then return end
if Player.Character[Name]:FindFirstChild("Silencer") == nil then return end
if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
Player.Character[Name].Silencer.Transparency = 0
Player.Character[Name].Muzzle.Name = "Muzzle 2"
Player.Character[Name].Silencer.Name = "Muzzle"
if dual == true then
if Player.Character[Name.. " (Left)"]:FindFirstChild("Silencer") == nil then return end
if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
Player.Character[Name.. " (Left)"].Silencer.Transparency = 0
Player.Character[Name.. " (Left)"].Muzzle.Name = "Muzzle 2"
Player.Character[Name.. " (Left)"].Silencer.Name = "Muzzle"
end
end
end
if key == "r" and Button1Down == false and canFire == true then
if ammo.Value > 0 and magazine.Value ~= magazineMax.Value then
canFire = false
burstCount = 0
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
if magazine.Value > 0 then ammo.Value = ammo.Value + magazine.Value magazine.Value = 0 end
updateGui()
if dual == true then
playAnimation("reloadDual")
elseif dual == false then
playAnimation("reload")
end
if ammo.Value - magazineMax.Value < 0 then
magazine.Value = ammo.Value
ammo.Value = 0
elseif ammo.Value - magazineMax.Value >= 0 then
ammo.Value = ammo.Value - magazineMax.Value
magazine.Value = magazineMax.Value
end
updateGui()
mouse.Icon = "rbxasset://textures\\GunCursor.png"
canFire = true
end
end
if key == "t" and Button1Down == false and canFire == true and canDual == true then
canFire = false
if dual == false then
local weapon = nil
for _, p in pairs(Player.Backpack:GetChildren()) do
if p.Name == Name and p ~= script.Parent then weapon = p break end
end
if weapon ~= nil then
dual = true
weapon.Name = "Dual"
weapon.Parent = script
silenced = false
removeParts("RightHand")
makeParts("RightHand")
removeParts("RightHolster")
makeParts("LeftHolster")
playAnimation("leftEquip")
removeParts("LeftHolster")
makeParts("LeftHand")
magazineMax.Value = math.ceil(magazineMax.Value * 2)
ammoMax.Value = math.ceil(ammoMax.Value * 2)
magazine.Value = magazine.Value + weapon.Magazine.Value
ammo.Value = ammo.Value + weapon.Ammo.Value
updateGui()
end
elseif dual == true then
local weapon = script:FindFirstChild("Dual")
if weapon ~= nil then
dual = false
weapon.Name = Name
weapon.Parent = Player.Backpack
silenced = false
removeParts("RightHand")
makeParts("RightHand")
playAnimation("leftUnequip")
removeParts("LeftHand")
makeParts("RightHolster")
playAnimation("hold")
weapon.Magazine.Value = math.floor(magazine.Value / 2)
weapon.Ammo.Value = math.floor(ammo.Value / 2)
magazineMax.Value = math.ceil(magazineMax.Value / 2)
ammoMax.Value = math.ceil(ammoMax.Value / 2)
magazine.Value = math.ceil(magazine.Value / 2)
ammo.Value = math.ceil(ammo.Value / 2)
updateGui()
end
end
canFire = true
end
if key == "y" and canZoom == true then
if zoom == false then
zoom = true
local pos = mouse.Hit.p
local target = mouse.Target
local cam = Workspace.CurrentCamera
focus = Instance.new("Part", Workspace)
focus.Anchored = true
focus.CanCollide = false
focus.Transparency = 1
focus.TopSurface = 0
focus.BottomSurface = 0
focus.FormFactor = "Plate"
focus.Size = Vector3.new(0, 0, 0)
focus.CFrame = CFrame.new(pos) * (CFrame.new(Player.Character.Torso.Position, pos) - CFrame.new(Player.Character.Torso.Position, pos).p)
cam.CameraSubject = focus
cam.CameraType = "Attach"
while zoom == true and selected == true do
local set = false
if target ~= nil then
if target.Parent ~= nil then
if target.Anchored == false then
focus.CFrame = CFrame.new(target.Position) * (CFrame.new(Player.Character.Torso.Position, target.Position) - CFrame.new(Player.Character.Torso.Position, target.Position).p)
set = true
end
end
end
if set == false then
focus.CFrame = CFrame.new(pos) * (CFrame.new(Player.Character.Torso.Position, pos) - CFrame.new(Player.Character.Torso.Position, pos).p)
end
wait()
end
if focus ~= nil then focus:Remove() focus = nil end
local cam = Workspace.CurrentCamera
cam.CameraSubject = Player.Character:FindFirstChild("Humanoid")
cam.CameraType = "Custom"
else
zoom = false
end
end
if key == "u" and Button1Down == false and canFire == true then
if automatic == false and burst == false then
if switchToBurst == true then
burst = true
local m = Instance.new("Message", Player)
m.Text = "Burst"
pcall(function() Player.Character[Name].Handle.Switch:Play() end)
delay(2.5, function() m:Remove() end)
elseif switchToAutomatic == true then
automatic = true
local m = Instance.new("Message", Player)
m.Text = "Automatic"
pcall(function() Player.Character[Name].Handle.Switch:Play() end)
delay(2.5, function() m:Remove() end)
end
elseif automatic == false and burst == true then
if switchToAutomatic == true then
automatic = true
burst = false
local m = Instance.new("Message", Player)
m.Text = "Automatic"
pcall(function() Player.Character[Name].Handle.Switch:Play() end)
delay(2.5, function() m:Remove() end)
elseif switchToSingle == true then
burst = false
local m = Instance.new("Message", Player)
m.Text = "Single"
pcall(function() Player.Character[Name].Handle.Switch:Play() end)
delay(2.5, function() m:Remove() end)
end
elseif automatic == true and burst == false then
if switchToSingle == true then
automatic = false
local m = Instance.new("Message", Player)
m.Text = "Single"
pcall(function() Player.Character[Name].Handle.Switch:Play() end)
delay(2.5, function() m:Remove() end)
elseif switchToBurst == true then
automatic = false
burst = true
local m = Instance.new("Message", Player)
m.Text = "Burst"
pcall(function() Player.Character[Name].Handle.Switch:Play() end)
delay(2.5, function() m:Remove() end)
end
end
end
end


function onSelected(mouse)
if selected == true then return end
selected = true
canFire = false
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
if Player.Character.WeaponActivated.Value == nil then break end
if Player.Character.WeaponActivated.Value.Parent == nil then break end
wait()
end
updateGui()
local weapon = Instance.new("ObjectValue")
weapon.Name = "WeaponActivated"
weapon.Value = script.Parent
weapon.Parent = Player.Character
DisableLimb(1, Player.Character)
DisableLimb(2, Player.Character)
ForceAngle(1, 0, Player.Character)
ForceAngle(2, 0, Player.Character)
if dual == true then
coroutine.resume(coroutine.create(function() playAnimation("leftEquip") end))
playAnimation("rightEquip")
removeParts("LeftHolster")
makeParts("LeftHand")
else
playAnimation("equip")
end
removeParts("RightHolster")
makeParts("RightHand")
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.Button1Up:connect(function() onButton1Up(mouse) end)
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
canFire = true
end


function onDeselected(mouse)
if selected == false then return end
Button1Down = false
while canFire == false do
wait()
end
selected = false
if dual == true then
if math.random(1, 2) == 1 then
coroutine.resume(coroutine.create(function() playAnimation("leftUnequip") end))
wait(math.random(1, 10) / 10)
playAnimation("rightUnequip")
else
coroutine.resume(coroutine.create(function() playAnimation("rightUnequip") end))
wait(math.random(1, 10) / 10)
playAnimation("leftUnequip")
end
removeParts("LeftHand")
makeParts("LeftHolster")
else
playAnimation("unequip")
end
removeParts("RightHand")
makeParts("RightHolster")
ForceAngle(1, 0, Player.Character)
ForceAngle(2, 0, Player.Character)
ResetLimbCFrame(1, Player.Character)
ResetLimbCFrame(2, Player.Character)
EnableLimb(1, Player.Character)
EnableLimb(2, Player.Character)
silenced = false
if Player.PlayerGui:FindFirstChild(Name) ~= nil then Player.PlayerGui[Name]:Remove() end
if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
if Player.Character.WeaponActivated.Value == script.Parent then
Player.Character.WeaponActivated:Remove()
end
end
while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
if Player.Character.WeaponActivated.Value == nil then break end
if Player.Character.WeaponActivated.Value.Parent == nil then break end
wait()
end
end


if script.Parent.ClassName ~= "HopperBin" then
if Player == nil then print("Error: Player not found!") return end
Tool = Instance.new("HopperBin")
Tool.Name = Name
Tool.Parent = Player.Backpack
script.Name = "Main"
script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" then
while script.Parent.Parent.ClassName ~= "Backpack" do
wait()
end
if script.Parent:FindFirstChild("MagazineMax") == nil then
magazineMax = Instance.new("NumberValue")
magazineMax.Name = "MagazineMax"
magazineMax.Value = 30
magazineMax.Parent = script.Parent
else
magazineMax = script.Parent.MagazineMax
end
if script.Parent:FindFirstChild("Magazine") == nil then
magazine = Instance.new("NumberValue")
magazine.Name = "Magazine"
magazine.Value = 0
magazine.Parent = script.Parent
else
magazine = script.Parent.Magazine
end
if script.Parent:FindFirstChild("AmmoMax") == nil then
ammoMax = Instance.new("NumberValue")
ammoMax.Name = "AmmoMax"
ammoMax.Value = 180
ammoMax.Parent = script.Parent
else
ammoMax = script.Parent.AmmoMax
end
if script.Parent:FindFirstChild("Ammo") == nil then
ammo = Instance.new("NumberValue")
ammo.Name = "Ammo"
ammo.Value = script.Parent.AmmoMax.Value
ammo.Parent = script.Parent
else
ammo = script.Parent.Ammo
end
Player = script.Parent.Parent.Parent
makeParts("RightHolster")
script.Parent.Selected:connect(onSelected)
script.Parent.Deselected:connect(onDeselected)
end

