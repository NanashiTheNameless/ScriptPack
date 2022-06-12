--[[ 
Original Script by DarkShadow6 New version coming not so soon by photonicreno 

Changelog: 
o 1.35 
o Added mode switches x for burst 
o c to switch between normal and automatic 
o 1.3 
o GUI for ammo system. 
o Added automatic and burst functionality for other weapons as a base. 
o 1.2 
o The camera now shakes when you fire. 
o Smoke and fire effects added when you fire. 
o 1.1 
o TOTAL rewrite. No more bullets, raytracing is in the now! 
o Fixed reload so that you don't get a full clip reloading when you only have a few bullets left. 
o 1.0 
o Started changelog. 
o Added a trigger and trigger housing to the model. 
o Added ammo. 
o Added shell casing. 
o Changed sounds. 
o Added animation for reload (finally!). 
o Pistol is welded to your leg when you deselect it. 

To do: 
o 1.4 
o Fix the random deaths from the BodyGyro. 
--]] 


if script == nil then return end 


Player = game.Players:FindFirstChild("yfc") 
Name = "Pistol" 
selected = false 
dropped = false 
Button1Down = false 
damage = 40 
canFire = true 
canFire2 = false 
readyTime = 0.1 
reloadTime = 1.2 
automatic = false 
burst = false 
burstCount = 0 
burstCountMax = 3 



ammoGui = Instance.new("ScreenGui") 
ammoGui.Name = Name 
frame = Instance.new("Frame") 
frame.Name = "Frame" 
frame.Size = UDim2.new(0, 165, 0, 60) 
frame.Position = UDim2.new(0, 0, 1, -60) 
frame.BackgroundColor3 = Color3.new(1, 1, 1) 
frame.BorderColor3 = Color3.new(0, 0, 0) 
frame.Parent = ammoGui 
label = Instance.new("TextLabel") 
label.Name = "Weapon" 
label.Text = "Weapon: " ..Name 
label.Size = UDim2.new(1, 0, 0, 20) 
label.Position = UDim2.new(0, 0, 0, 0) 
label.BackgroundColor3 = Color3.new(1, 0, 0) 
label.BorderColor3 = Color3.new(0, 0, 0) 
label.Parent = frame 
label = Instance.new("TextLabel") 
label.Name = "MagazinePrefix" 
label.Text = " Magazine:" 
label.TextXAlignment = "Left" 
label.Size = UDim2.new(1, 0, 0, 20) 
label.Position = UDim2.new(0, 0, 0, 20) 
label.BackgroundColor3 = Color3.new(1, 1, 1) 
label.BorderColor3 = Color3.new(0, 0, 0) 
label.Parent = frame 
label = Instance.new("TextLabel") 
label.Name = "Magazine" 
label.Text = "0/0" 
label.TextXAlignment = "Right" 
label.Size = UDim2.new(1, 0, 0, 20) 
label.Position = UDim2.new(0, -10, 0, 20) 
label.BackgroundTransparency = 1 
label.BorderSizePixel = 0 
label.Parent = frame 
label = Instance.new("TextLabel") 
label.Name = "AmmoPrefix" 
label.Text = " Ammunition:" 
label.TextXAlignment = "Left" 
label.Size = UDim2.new(1, 0, 0, 20) 
label.Position = UDim2.new(0, 0, 0, 40) 
label.BackgroundColor3 = Color3.new(1, 1, 1) 
label.BorderColor3 = Color3.new(0, 0, 0) 
label.Parent = frame 
label = Instance.new("TextLabel") 
label.Name = "Ammo" 
label.Text = "0/0" 
label.TextXAlignment = "Right" 
label.Size = UDim2.new(1, 0, 0, 20) 
label.Position = UDim2.new(0, -10, 0, 40) 
label.BackgroundTransparency = 1 
label.BorderSizePixel = 0 
label.Parent = frame 


function updateGui(type) 
if selected == false then return end 
if Player:FindFirstChild("PlayerGui") == nil then Instance.new("PlayerGui").Parent = Player end 
if Player.PlayerGui:FindFirstChild(Name) == nil then 
ammoGui:Clone().Parent = Player.PlayerGui 
end 
Player.PlayerGui[Name].Frame.Magazine.Text = tostring(magazine.Value).. "/" ..tostring(magazineMax.Value) 
Player.PlayerGui[Name].Frame.Ammo.Text = tostring(ammo.Value).. "/" ..tostring(ammoMax.Value) 
end 


function makeParts(format) 
model = Instance.new("Model") 
model.Name = Name 
model.Parent = Player.Character 
local pm = Instance.new("Part") 
pm.Name = "Handle" 
pm.formFactor = "Symmetric" 
pm.Size = Vector3.new(1, 1, 1) 
pm.BrickColor = BrickColor.new("Medium stone grey") 
pm.CanCollide = true 
pm.Locked = true 
pm.TopSurface = 0 
pm.BottomSurface = 0 
pm.Parent = model 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.3, 0.9, 0.4) 
m.Parent = pm 
if format ~= nil then 
local w = Instance.new("Weld") 
w.Part0 = pm 
if format == "hand" then 
w.Part1 = Player.Character:FindFirstChild("Right Arm") 
w.C0 = CFrame.new(0, 1.2, 0.7) 
w.C1 = CFrame.new() 
w.Parent = pm 
elseif format == "holster" then 
w.Part1 = Player.Character:FindFirstChild("Right Leg") 
w.C0 = CFrame.new(-0.65, -0.25, 0) * CFrame.fromEulerAnglesXYZ(math.rad(25), 0, 0) 
w.C1 = CFrame.new() 
w.Parent = pm 
model.Name = Name.. " (Holstered)" 
else 
print("Error: Incorrect format string!") 
end 
end 
--[[ 
sniper1 http://www.roblox.com/asset/?id=1868836 
equip http://www.roblox.com/asset/?id=13510737 
fire1 http://www.roblox.com/asset/?id=2760979 
fire2 http://www.roblox.com/asset/?id=13510352 
fire3 http://www.roblox.com/asset/?id=2692806 
fire4 http://www.roblox.com/asset/?id=2691586 
fire5 http://www.roblox.com/asset/?id=2920959 
fire6 http://www.roblox.com/asset/?id=2697431 
fire7 http://www.roblox.com/asset/?id=2920959 
reload1 http://www.roblox.com/asset/?id=2691591 
reload2 http://www.roblox.com/asset/?id=2697432 
reload3 http://www.roblox.com/asset/?id=2920960 
reload4 http://www.roblox.com/asset/?id=2761842 
shotgun1 http://www.roblox.com/asset/?id=2697294 
--]] 
local s = Instance.new("Sound") 
s.Name = "Fire" 
s.SoundId = "http://www.roblox.com/asset/?id=2920959" 
s.Volume = 1 
s.Pitch = 1 
s.Looped = false 
s.Parent = pm 
local s = Instance.new("Sound") 
s.Name = "Reload" 
s.SoundId = "http://www.roblox.com/asset/?version=1&id=2691591" 
s.Volume = 1 
s.Pitch = 3 
s.Looped = false 
s.Parent = pm 
local s = Instance.new("Sound") 
s.Name = "Empty" 
s.SoundId = "http://www.roblox.com/asset/?id=2697295" 
s.Volume = 1 
s.Pitch = 5 
s.Looped = false 
s.Parent = pm 
local p = Instance.new("Part") 
p.Name = "ShellOut" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.Transparency = 1 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = model 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0.5, 0, 0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(45), 0) 
w.C1 = CFrame.new() 
w.Parent = p 
local p = Instance.new("Part") 
p.Name = "Grip" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.BrickColor = BrickColor.new("Brown") 
p.Transparency = 0 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = model 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.3, 0.5, 0.9) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, -0.05, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(15), 0, 0) 
w.C1 = CFrame.new() 
w.Parent = p 
local p = Instance.new("Part") 
p.Name = "Magazine" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.BrickColor = BrickColor.new("Medium stone grey") 
p.Transparency = 0 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = model 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.275, 0.475, 1) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, -0.05, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(15), 0, 0) 
w.C1 = CFrame.new() 
w.Parent = p 
local p = Instance.new("Part") 
p.Name = "Trigger Housing" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.BrickColor = BrickColor.new("Medium stone grey") 
p.Transparency = 0 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = model 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.1, 0.2, 0.025) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, 0.2, -0.4) 
w.C1 = CFrame.new() 
w.Parent = p 
local p = Instance.new("Part") 
p.Name = "Trigger Housing" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.BrickColor = BrickColor.new("Medium stone grey") 
p.Transparency = 0 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = model 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.1, 0.2, 0.025) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, 0.02, -0.49) * CFrame.fromEulerAnglesXYZ(math.rad(-45), 0, 0) 
w.C1 = CFrame.new() 
w.Parent = p 
local p = Instance.new("Part") 
p.Name = "Trigger Housing" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.BrickColor = BrickColor.new("Medium stone grey") 
p.Transparency = 0 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = model 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.1, 0.025, 0.1) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, 0.426, -0.22) 
w.C1 = CFrame.new() 
w.Parent = p 
local p = Instance.new("Part") 
p.Name = "Trigger" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.BrickColor = BrickColor.new("Medium stone grey") 
p.Transparency = 0 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = model 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.1, 0.025, 0.15) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, 0.175, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, 0) 
w.C1 = CFrame.new() 
w.Parent = p 
local p = Instance.new("Part") 
p.Name = "Barrel" 
p.CanCollide = false 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.BrickColor = BrickColor.new("Medium stone grey") 
p.Transparency = 0 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = model 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.3, 0.8, 0.35) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, 0.7, 0.025) 
w.C1 = CFrame.new() 
w.Parent = p 
local p = Instance.new("Part") 
p.Name = "Muzzle" 
p.CanCollide = false 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.BrickColor = BrickColor.new("Medium stone grey") 
p.Transparency = 0 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = model 
local m = Instance.new("CylinderMesh") 
m.Scale = Vector3.new(0.2, 0.05, 0.2) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, 0.95, 0.075) 
w.C1 = CFrame.new() 
w.Parent = p 
s = Instance.new("Smoke") 
s.Enabled = false 
s.Name = "Smoke" 
s.RiseVelocity = -5 
s.Opacity = 0.3 
s.Color = Color3.new(75 / 225, 75 / 225, 75 / 225) 
s.Size = 1 
s.Parent = p 
f = Instance.new("Fire") 
f.Enabled = false 
f.Name = "Fire" 
f.Heat = -35 
f.Size = 1 
f.Parent = p 
end 


function removeParts(format) 
if format == "hand" then 
if Player.Character:FindFirstChild(Name) ~= nil then 
Player.Character[Name]:Remove() 
end 
elseif format == "holster" then 
if Player.Character:FindFirstChild(Name.. " (Holstered)") ~= nil then 
Player.Character[Name.. " (Holstered)"]:Remove() 
end 
end 
end 


function SetAngle(Joint, Angle, Character) 
if Character == nil then return false end 
Joints = { 
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
Joints = { 
Character.Torso:FindFirstChild("Right Shoulder 2"), 
Character.Torso:FindFirstChild("Left Shoulder 2"), 
Character.Torso:FindFirstChild("Right Hip 2"), 
Character.Torso:FindFirstChild("Left Hip 2") 
} 
if Joints[Joint] == nil then return false end 
if Joint == 1 or Joint == 3 then 
Joints[Joint].CurrentAngle = Angle 
end 
if Joint == 2 or Joint == 4 then 
Joints[Joint].CurrentAngle = -Angle 
end 
end 


function SetSpeed(Joint, Speed, Character) 
if Character == nil then return false end 
Joints = { 
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
Joints = { 
Character.Torso:FindFirstChild("Right Shoulder"), 
Character.Torso:FindFirstChild("Left Shoulder"), 
Character.Torso:FindFirstChild("Right Hip"), 
Character.Torso:FindFirstChild("Left Hip") 
} 
Limbs = { 
Character:FindFirstChild("Right Arm"), 
Character:FindFirstChild("Left Arm"), 
Character:FindFirstChild("Right Leg"), 
Character:FindFirstChild("Left Leg") 
} 
if Joints[Limb] == nil then return false end 
if Limbs[Limb] == nil then return false end 
Joint = Instance.new("Motor") 
Joint.Parent = Character.Torso 
Joint.Part0 = Character.Torso 
Joint.Part1 = Limbs[Limb] 
Joint.MaxVelocity = 0.1 
if Limb == 1 then 
C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) 
C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) 
Joint.Name = "Right Shoulder 2" 
elseif Limb == 2 then 
C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
Joint.Name = "Left Shoulder 2" 
elseif Limb == 3 then 
C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) 
C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) 
Joint.Name = "Right Hip 2" 
elseif(Limb == 4) then 
C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
Joint.Name = "Left Hip 2" 
end 
Joint.C0 = C0 
Joint.C1 = C1 
Joint.CurrentAngle = Joints[Limb].CurrentAngle 
Joints[Limb]:Remove() 
end 


function ResetLimbCFrame(Limb, Character) 
if Character == nil then return false end 
if Character.Parent == nil then return false end 
if Character:FindFirstChild("Torso") == nil then return false end 
Joints = { 
Character.Torso:FindFirstChild("Right Shoulder 2"), 
Character.Torso:FindFirstChild("Left Shoulder 2"), 
Character.Torso:FindFirstChild("Right Hip 2"), 
Character.Torso:FindFirstChild("Left Hip 2") 
} 
Limbs = { 
Character:FindFirstChild("Right Arm"), 
Character:FindFirstChild("Left Arm"), 
Character:FindFirstChild("Right Leg"), 
Character:FindFirstChild("Left Leg") 
} 
if Joints[Limb] == nil then return false end 
if Limbs[Limb] == nil then return false end 
if Limb == 1 then 
Joints[Limb].C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) 
Joints[Limb].C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) 
elseif Limb == 2 then 
Joints[Limb].C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
Joints[Limb].C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
elseif Limb == 3 then 
Joints[Limb].C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) 
Joints[Limb].C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) 
elseif(Limb == 4) then 
Joints[Limb].C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
Joints[Limb].C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
end 
end 


function EnableLimb(Limb, Character) 
if Character == nil then return false end 
if Character:FindFirstChild("Torso") == nil then return false end 
Joints = { 
Character.Torso:FindFirstChild("Right Shoulder 2"), 
Character.Torso:FindFirstChild("Left Shoulder 2"), 
Character.Torso:FindFirstChild("Right Hip 2"), 
Character.Torso:FindFirstChild("Left Hip 2") 
} 
Limbs = { 
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
if format == "normal" then 
if Player.Character:FindFirstChild("Torso") ~= nil then 
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then 
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), 0, math.rad(-90)) 
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0) 
end 
end 
end 
if format == "fire" then 
if Player.Character:FindFirstChild("Torso") ~= nil then 
coroutine.resume(coroutine.create(function() 
for i, cam in ipairs(game.Workspace:GetChildren()) do 
if cam.className == "Camera" then 
if cam.CameraSubject == Player.Character:FindFirstChild("Humanoid") then 
local time = 7 
local seed = Vector3.new(math.random(1, 2) / 100, math.random(1, 2) / 100, 0) 
if math.random(1, 2) == 1 then seed = Vector3.new(-seed.x, seed.y, 0) end 
if math.random(1, 2) == 1 then seed = Vector3.new(seed.x, -seed.y, 0) end 
cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(seed.x * time, seed.y * time, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude) 
for i = 1, time do 
cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(-seed.x, -seed.y, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude) 
wait() 
end 
end 
end 
end 
end)) 
end 
if Player.Character[Name]:FindFirstChild("Handle") ~= nil then 
Player.Character[Name].Handle.Fire.Volume = math.random(8, 12) / 10 
Player.Character[Name].Handle.Fire.Pitch = math.random(8, 12) / 10 
Player.Character[Name].Handle.Fire:Play() 
end 
if Player.Character[Name]:FindFirstChild("ShellOut") ~= nil then 
local casing = Instance.new("Part") 
casing.Name = "Shell" 
casing.formFactor = "Symmetric" 
casing.Size = Vector3.new(1, 1, 1) 
casing.CFrame = CFrame.new(Player.Character[Name].ShellOut.Position) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360))) 
casing.BrickColor = BrickColor.new(1005) 
local mesh = Instance.new("CylinderMesh") 
mesh.Scale = Vector3.new(0.1, 0.3, 0.1) 
mesh.Parent = casing 
casing.Parent = game.Workspace 
casing:BreakJoints() 
casing.Velocity = (Player.Character[Name].ShellOut.CFrame.lookVector * 50) + Vector3.new(0, 10, 0) 
coroutine.resume(coroutine.create(function(part) wait(4.5) for i = 0, 1, 0.1 do part.Transparency = i wait() end part:Remove() end), casing) 
end 
if Player.Character[Name]:FindFirstChild("Muzzle") ~= nil then 
coroutine.resume(coroutine.create(function() Player.Character[Name].Muzzle.Smoke.Enabled = true Player.Character[Name].Muzzle.Fire.Enabled = true wait(0.1) Player.Character[Name].Muzzle.Smoke.Enabled = false Player.Character[Name].Muzzle.Fire.Enabled = false end)) 
end 
for i = 0, 10, 5 do 
if Player.Character:FindFirstChild("Torso") ~= nil then 
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then 
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), math.rad(i), math.rad(-90)) 
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0) 
wait() 
end 
end 
end 
for i = 10, 0, -5 do 
if Player.Character:FindFirstChild("Torso") ~= nil then 
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then 
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315), math.rad(i), math.rad(-90)) 
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0) 
wait() 
end 
end 
end 
end 
if format == "reload" then 
Player.Character[Name].Handle.Reload:Play() 
for i = 0, 25, 5 do 
if Player.Character:FindFirstChild("Torso") ~= nil then 
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then 
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55 + (i / 50), 0.75 - (i / 50), 0.35 + (i / 22.5)) * CFrame.fromEulerAnglesXYZ(math.rad(315 - (i * 2)), math.rad(-i * 3.5), math.rad(-90)) 
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0) 
wait() 
end 
end 
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
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55 + (i / 50), 0.75 - (i / 50), 0.35 + (i / 22.5)) * CFrame.fromEulerAnglesXYZ(math.rad(315 - (i * 2)), math.rad(-i * 3.5), math.rad(-90)) 
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1 + ((25 - i) / 30), 0.5, 0.6 + ((25 - i) / 25)) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), math.rad((25 * 2) - (i * 2))) 
wait() 
end 
end 
end 
Player.Character[Name].Magazine.Transparency = 0 
Player.Character[Name]["New Magazine"]:Remove() 
for i = 25, 0, -5 do 
if Player.Character:FindFirstChild("Torso") ~= nil then 
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then 
Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-1 + (i / 30), 0.5, 0.6 + (i / 25)) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), math.rad((25 * 2) - ((25 - i) * 2))) 
wait() 
end 
end 
end 
wait(0.04) 
for i = 0, 5, 1 do 
if Player.Character:FindFirstChild("Torso") ~= nil then 
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then 
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315 + (i * 1.5)), math.rad(i * 4), math.rad(-90)) 
wait() 
end 
end 
end 
for i = 5, 0, -1 do 
if Player.Character:FindFirstChild("Torso") ~= nil then 
if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then 
Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new() 
Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 0.75, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(315 + (i * 1.5)), math.rad(i * 4), math.rad(-90)) 
wait() 
end 
end 
end 
end 
end 


function Weld(x, y) 
weld = Instance.new("Weld") 
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
end 


function untagHumanoid(humanoid) 
if humanoid ~= nil then 
local tag = humanoid:FindFirstChild("creator") 
if tag ~= nil then 
tag:Remove() 
end 
end 
end 


function fire(pos2, hit) 
if Player.Character:FindFirstChild(Name) == nil then return end 
if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end 
local pos1 = Player.Character[Name].Muzzle.Position 
local trail = Instance.new("Part") 
trail.Name = "Trail" 
trail.BrickColor = BrickColor.new(1005) 
trail.TopSurface = 0 
trail.BottomSurface = 0 
trail.formFactor = 0 
trail.Size = Vector3.new(1, 1, 1) 
trail.Transparency = 0.3 
trail.Anchored = true 
trail.CanCollide = false 
trail.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
trail.Parent = game.Workspace 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0.1, 0.1, (pos1 - pos2).magnitude) 
mesh.Parent = trail 
coroutine.resume(coroutine.create(function(part) for i = 1, 10 do part.Mesh.Scale = Vector3.new(part.Mesh.Scale.x - 0.01, part.Mesh.Scale.y - 0.01, part.Mesh.Scale.z) wait() end part:Remove() end), trail) 
if hit ~= nil then 
if hit.Parent == nil then return end 
if hit.Parent:FindFirstChild("Humanoid") ~= nil then 
tagHumanoid(hit.Parent.Humanoid) 
hit.Parent.Humanoid:TakeDamage(damage) 
if math.random(1, 10) == 1 then 
hit.Parent.Humanoid.Sit = true 
end 
untagHumanoid(humanoid) 
end 
if hit.Anchored == false then 
hit.Velocity = ((pos2 - pos1) * 3) / hit:GetMass() 
hit.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) / hit:GetMass() 
end 
end 
end 


function onButton1Down(mouse) 
if selected == false then return end 
if Player.Character:FindFirstChild(Name) ~= nil and Button1Down == false and canFire == true then 
if Player.Character[Name]:FindFirstChild("Handle") == nil then return end 
if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end 
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
if automatic == false and burst ~= true then 
canFire2 = false 
end 
if burst == true then 
if burstCount >= burstCountMax then 
canFire2 = false 
burstCount = 0 
break 
end 
burstCount = burstCount + 1 
end 
if magazine.Value <= 0 then 
Player.Character[Name].Handle.Empty:Play() 
canFire2 = false 
break 
end 
magazine.Value = magazine.Value - 1 
updateGui() 
fire(mouse.Hit.p, mouse.Target) 
coroutine.resume(coroutine.create(function() playAnimation("fire", mouse) end)) 
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
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
end 

function onKeyDown(key, mouse) 
if selected == false then return end 
key = key:lower() 
if key == "q" and Button1Down == false and canFire == true then 
if mouse.Target == nil then return end 
if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then 
onDeselected(mouse) 
removeParts("holster") 
script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack 
end 
end 
if key == "x" then 
if burst == false then 
burst = true 
else 
burst = false 
end 
end 
if key == "c" then 
if automatic or burst == true then 
automatic = false 
burst = false 
else 
automatic = true 
burst = false 
end 
end 
if key == "r" and Button1Down == false and canFire == true then 
if ammo.Value > 0 and magazine.Value ~= magazineMax.Value then 
canFire = false 
burstCount = 0 
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png" 
if magazine.Value > 0 then ammo.Value = ammo.Value + magazine.Value magazine.Value = 0 end 
updateGui() 
coroutine.resume(coroutine.create(function() playAnimation("reload") end)) 
wait(reloadTime) 
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
end 


function onSelected(mouse) 
if selected == true or dropped == true then return end 
selected = true 
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png" 
while Player.Character:FindFirstChild("WeaponActivated") ~= nil do 
if Player.Character.WeaponActivated.Value == nil then break end 
if Player.Character.WeaponActivated.Value.Parent == nil then break end 
wait() 
end 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
updateGui() 
removeParts("holster") 
makeParts("hand") 
weapon = Instance.new("ObjectValue") 
weapon.Name = "WeaponActivated" 
weapon.Value = script.Parent 
weapon.Parent = Player.Character 
DisableLimb(1, Player.Character) 
DisableLimb(2, Player.Character) 
ForceAngle(1, 0, Player.Character) 
ForceAngle(2, 0, Player.Character) 
playAnimation("normal") 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
if gyro ~= nil then gyro:Remove() end 
gyro = Instance.new("BodyGyro") 
gyro.maxTorque = Vector3.new(0, math.huge, 0) 
gyro.D = 500 
gyro.P = 10000000 
gyro.Parent = Player.Character.Torso 
coroutine.resume(coroutine.create(function() while gyro ~= nil and mouse ~= nil and selected == true and Player.Character:FindFirstChild("Torso") ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil do if Player.Character.Humanoid.Health <= 0 then break end 
gyro.cframe = CFrame.new(Player.Character.Torso.Position, mouse.Hit.p) Player.Character.Torso.RotVelocity = Vector3.new(0, 0, 0) wait() end end)) 
end 


function onDeselected(mouse) 
if selected == false then return end 
selected = false 
while Button1Down == true do 
wait() 
end 
if Player.Character:FindFirstChild("WeaponActivated") ~= nil then 
if Player.Character.WeaponActivated.Value == script.Parent then 
Player.Character.WeaponActivated:Remove() 
end 
end 
while Player.Character:FindFirstChild("WeaponActivated") ~= nil do 
if Player.Character.WeaponActivated.Value == nil then break end 
if pcall(function() if Player.Character.WeaponActivated.Value.Parent == nil then return true end end) then break end 
wait() 
end 
if Player.PlayerGui:FindFirstChild(Name) ~= nil then Player.PlayerGui[Name]:Remove() end 
removeParts("hand") 
makeParts("holster") 
ForceAngle(1, 0, Player.Character) 
ForceAngle(2, 0, Player.Character) 
ResetLimbCFrame(1, Player.Character) 
ResetLimbCFrame(2, Player.Character) 
EnableLimb(1, Player.Character) 
EnableLimb(2, Player.Character) 
if gyro ~= nil then gyro:Remove() end 
end 


if script.Parent.className ~= "HopperBin" then 
if Player == nil then print("Error: Player not found!") return end 
Tool = Instance.new("HopperBin") 
Tool.Name = Name 
Tool.Parent = Player.Backpack 
script.Name = "Main" 
script.Parent = Tool 
elseif script.Parent.className == "HopperBin" then 
while script.Parent.Parent.className ~= "Backpack" do 
wait() 
end 
if script.Parent:FindFirstChild("MagazineMax") == nil then 
magazineMax = Instance.new("NumberValue") 
magazineMax.Name = "MagazineMax" 
magazineMax.Value = 24 
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
ammoMax.Value = 260 
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
makeParts("holster") 
script.Parent.Selected:connect(onSelected) 
script.Parent.Deselected:connect(onDeselected) 
end 



