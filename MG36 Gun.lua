--MG36 by DMS it's da best and has aim
--press q to aim mkoay
local MLG36 = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
EXE = Instance.new("Model",game:GetService("Lighting")) 
EXE.Name = "MLG36MODEL"
MG2 = Instance.new("Tool")
MG2.Name = "MG36"
MG2.Parent = EXE
MG2.GripForward = Vector3.new(-0.308719009, -0, -0.951153278)
MG2.GripPos = Vector3.new(0, -0.200000003, 0.200000003)
MG2.GripRight = Vector3.new(0.951153278, 0, -0.308719009)
o2 = Instance.new("NumberValue")
o2.Name = "MaxAmmo"
o2.Parent = MG2
o2.Value = 100
o3 = Instance.new("NumberValue")
o3.Name = "StoredAmmo"
o3.Parent = MG2
o3.Value = 500
o4 = Instance.new("NumberValue")
o4.Name = "Left"
o4.Parent = MG2
o4.Value = 30
o5 = Instance.new("NumberValue")
o5.Name = "Recoil"
o5.Parent = MG2
o5.Value = 2
o6 = Instance.new("Script")
o6.Parent = o5
table.insert(cors,coroutine.create(function()
wait()
MLG36(function()
while true do
wait(.2)
if script.Parent.Value > 3 then
script.Parent.Value = script.Parent.Value - 1
end
end

end,o6)
end))
o7 = Instance.new("BoolValue")
o7.Name = "ZoomedIn"
o7.Parent = MG2
o8 = Instance.new("LocalScript")
o8.Name = "Shooter"
o8.Parent = MG2
table.insert(cors,coroutine.create(function()
wait()
MLG36(function()
Tool = script.Parent
--G36C
local arms = nil
local torso = nil
local weld33 = nil -- right arm
local weld55 = nil -- left arm
local welds = {}
local reloading = false
local firing = false
local canreload = true
local canshoot = true
local running = false
local damage = 200
local ceasefire = false

function ReloadSequence()
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-93), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1.1, math.rad(-0))
wait(.05)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.15, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1.2, math.rad(-0))
wait(.05)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-99), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.25, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1.3, math.rad(-0))
wait(.08)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-99), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1.4, math.rad(-0))
Tool.Handle.M1:play()
Tool.Mag.Transparency = 1
local mag = Tool.Mag:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag1.Transparency = 1
local mag = Tool.Mag1:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag2.Transparency = 1
local mag = Tool.Mag2:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag3.Transparency = 1
local mag = Tool.Mag3:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag4.Transparency = 1
local mag = Tool.Mag4:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag5.Transparency = 1
local mag = Tool.Mag5:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1.5, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, 0) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.5, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.3, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.4, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.25, 0) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.3, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.2, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.2, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.15, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.1, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1, math.rad(-0))
Tool.Mag.Transparency = 0
Tool.Mag1.Transparency = 0
Tool.Mag2.Transparency = 0
Tool.Mag3.Transparency = 0
Tool.Mag4.Transparency = 0
Tool.Mag5.Transparency = 0
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.9, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.9, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.918, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.918, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.918, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.918, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.8, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.8, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.816, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.816, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.816, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.816, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.7, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.7, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.714, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.714, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.714, -0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.714, -0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.6, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.6, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.612, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.612, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.612, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.612, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.03, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.5, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.5, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.51, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.51, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.51, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.51, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.01, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.4, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.4, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.408, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.408, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.408, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.408, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.03, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.3, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.3, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.306, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.306, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.306, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.306, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.2, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.2, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.204, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.204, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.204, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.204, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.1, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.1, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.102, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.102, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.102, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.102, 0, 0)
Tool.Handle.M2:play()
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-99), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(0, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-94), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
end

function ReloadSequence2()
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-93), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1.1, math.rad(-0))
wait(.05)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.15, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1.2, math.rad(-0))
wait(.05)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-99), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.25, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1.3, math.rad(-0))
wait(.08)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-99), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1.4, math.rad(-0))
Tool.Handle.M1:play()
Tool.Mag.Transparency = 1
local mag = Tool.Mag:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag1.Transparency = 1
local mag = Tool.Mag1:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag2.Transparency = 1
local mag = Tool.Mag2:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag3.Transparency = 1
local mag = Tool.Mag3:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag4.Transparency = 1
local mag = Tool.Mag4:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag5.Transparency = 1
local mag = Tool.Mag5:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1.5, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, 0) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.35, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.5, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.3, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.4, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.25, 0) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.3, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.2, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.2, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.15, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.1, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1, math.rad(-0))
Tool.Mag.Transparency = 0
Tool.Mag1.Transparency = 0
Tool.Mag2.Transparency = 0
Tool.Mag3.Transparency = 0
Tool.Mag4.Transparency = 0
Tool.Mag5.Transparency = 0
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.9, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.9, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.918, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.918, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.918, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.918, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.8, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.8, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.816, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.816, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.816, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.816, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.7, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.7, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.714, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.714, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.714, -0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.714, -0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.6, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.6, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.612, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.612, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.612, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.612, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.03, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.5, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.5, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.51, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.51, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.51, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.51, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.01, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.4, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.4, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.408, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.408, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.408, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.408, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.03, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.3, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.3, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.306, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.306, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.306, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.306, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.2, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.2, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.204, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.204, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.204, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.204, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-97), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, -0.1, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, -0.1, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.102, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.102, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(-0.102, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(-0.102, 0, 0)
Tool.Handle.M2:play()
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-99), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag5.Mesh.Offset = Vector3.new(0, 0, 0)
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(270), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(265), 1.1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-85), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(260), 1.1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-85), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(260), 1, math.rad(-0))
Tool.B1.Mesh.Offset = Vector3.new(0.6, 0, 0)
Tool.A4.Transparency = 1
Tool.B1.Transparency = 0
wait(.1)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-85), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(260), 1, math.rad(-0))
Tool.B1.Mesh.Offset = Vector3.new(0.62, 0, 0)
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0.62)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0.58)
Tool.A3.Mesh.Offset = Vector3.new(0, 0, 0.62)
Tool.A4.Mesh.Offset = Vector3.new(0, 0, 0.62)
Tool.Handle.M3:play()
wait(.2)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-87), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), 1, math.rad(-0))
Tool.B1.Mesh.Offset = Vector3.new(0.3, 0, 0)
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0.3)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0.3)
Tool.A3.Mesh.Offset = Vector3.new(0, 0, 0.3)
Tool.A4.Mesh.Offset = Vector3.new(0, 0, 0.3)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-89), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(273), 1, math.rad(-0))
Tool.B1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A4.Mesh.Offset = Vector3.new(0, 0, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A4.Transparency = 0
Tool.B1.Transparency = 1
end

function Reload()
Tool.Left.Value = Tool.Ammo.Value
	if script.Parent.Ammo.Value < script.Parent.MaxAmmo.Value and reloading == false and script.Parent.StoredAmmo.Value >= 1 then
		reloading = true
		script.Parent.Ammo.Value = 0
		ReloadChoose()
      script.Parent.StoredAmmo.Value = script.Parent.StoredAmmo.Value + script.Parent.Left.Value
		if script.Parent.StoredAmmo.Value >= script.Parent.MaxAmmo.Value then
			script.Parent.StoredAmmo.Value = script.Parent.StoredAmmo.Value - script.Parent.MaxAmmo.Value
			script.Parent.Ammo.Value = script.Parent.MaxAmmo.Value
         script.Parent.Recoil.Value = 5
		elseif script.Parent.StoredAmmo.Value < script.Parent.MaxAmmo.Value and script.Parent.StoredAmmo.Value >= 1 then
         script.Parent.Ammo.Value = script.Parent.StoredAmmo.Value 
			script.Parent.StoredAmmo.Value = 0
			script.Parent.Recoil.Value = 5
		end
		reloading = false
	end
end

function On()
Tool.Light.Transparency = 0.25
end

function Off()
Tool.Light.Transparency = 1
end

function ScopeOn()
Tool.ScopeOn1.Transparency = 0.75
Tool.ScopeOn2.Transparency = 0.75
Tool.ScopeOn3.Transparency = 0
Tool.ScopeOn4.Transparency = 0
Tool.ScopeOn5.Transparency = 0
Tool.ScopeOn6.Transparency = 0
Tool.ScopeOn7.Transparency = 0
Tool.ScopeOn8.Transparency = 0
Tool.ScopeOn9.Transparency = 0
Tool.ScopeOff1.Transparency = 1
Tool.ScopeOff2.Transparency = 1
Tool.ScopeOff3.Transparency = 1
Tool.ScopeOff4.Transparency = 1
Tool.ScopeOff5.Transparency = 1
Tool.ScopeOff6.Transparency = 1
Tool.ScopeOff7.Transparency = 1
Tool.ScopeOff8.Transparency = 1
Tool.ScopeOff9.Transparency = 1
end

function ScopeOff()
Tool.ScopeOn1.Transparency = 1
Tool.ScopeOn2.Transparency = 1
Tool.ScopeOn3.Transparency = 1
Tool.ScopeOn4.Transparency = 1
Tool.ScopeOn5.Transparency = 1
Tool.ScopeOn6.Transparency = 1
Tool.ScopeOn7.Transparency = 1
Tool.ScopeOn8.Transparency = 1
Tool.ScopeOn9.Transparency = 1
Tool.ScopeOff1.Transparency = 0.75
Tool.ScopeOff2.Transparency = 0.75
Tool.ScopeOff3.Transparency = 0
Tool.ScopeOff4.Transparency = 0
Tool.ScopeOff5.Transparency = 0
Tool.ScopeOff6.Transparency = 0
Tool.ScopeOff7.Transparency = 0
Tool.ScopeOff8.Transparency = 0
Tool.ScopeOff9.Transparency = 0
end

function ReloadChoose()
   if script.Parent.Left.Value == 0 then
      ReloadSequence2()
   elseif script.Parent.Left.Value >= 1 then
      ReloadSequence()
   end
end

function Choosy()
   if script.Parent.Ammo.Value == 0 then
      Thing1()
   elseif script.Parent.Ammo.Value >= 1 then
      Thing2()
   end
end

function Thing2()
cam = game.Workspace.CurrentCamera
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.01, 0.01, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.65, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.85, 0.025, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Flash.Mesh.Scale = Vector3.new(1.7, 1.5, 1.7)
Tool.Flash.Transparency = .8
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0.3)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0.3)
Tool.A3.Mesh.Offset = Vector3.new(0, 0, 0.3)
Tool.A4.Mesh.Offset = Vector3.new(0, 0, 0.3)
wait(0.02)
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.01, -0.01, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Flash.Transparency = 1
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A4.Mesh.Offset = Vector3.new(0, 0, 0)
end

function Thing1()
cam = game.Workspace.CurrentCamera
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.01, 0.01, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.65, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.85, 0.025, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Flash.Mesh.Scale = Vector3.new(1.7, 1.5, 1.7)
Tool.Flash.Transparency = .8
wait(0.02)
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.01, -0.01, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Flash.Transparency = 1
Tool.Handle.Empty:play()
end

function takeout()
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-70), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-75), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-80), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-85), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
end

function Equip(mouse)
wait(0.01)
arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
torso = Tool.Parent:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
falsearm1 = arms[1]:clone()
local mesh1 = Tool.Larm:clone()
mesh1.Parent = falsearm1
local armweld1 = Instance.new("Weld")
falsearm1.BrickColor = BrickColor.new("Light orange") -- this is the arm colour incase u want to change it
falsearm1.Parent = Tool
armweld1.Parent = falsearm1
armweld1.Part0 = falsearm1
armweld1.Part1 = arms[1]
falsearm2 = arms[2]:clone()
local mesh2 = Tool.Rarm:clone()
mesh2.Parent = falsearm2
local armweld2 = Instance.new("Weld")
falsearm2.BrickColor = BrickColor.new("Light orange") -- this is the 2nd arm colour incase u want to change it
falsearm2.Parent = Tool
armweld2.Parent = falsearm2
armweld2.Part0 = falsearm2
armweld2.Part1 = arms[2]
local weld1 = Instance.new("Weld") -- left arm
weld55 = weld1
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
welds[1] = weld1
local weld2 = Instance.new("Weld") -- right arm
weld33 = weld2
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0) --95
welds[2] = weld2
takeout()
end
else
print("sh")
end
else
print("arms")
end
end

local legs = nil
local torso2 = nil
local welds2 = {}
local bodyforce = nil

function Unequip(mouse)
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
welds[1].Parent = nil
welds[2].Parent = nil
falsearm1:remove()
falsearm2:remove()
end
else
print("sh")
end
else
print("arms")
end
end

function fire(v)

	Tool.Handle.Fire:play()
Tool.Handle.Fire2:play()
Tool.Handle.Fire3:play()
	

	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)

	local missile = Instance.new("Part")

        

	local spawnPos = vCharacter.PrimaryPart.Position
	


	spawnPos  = spawnPos + (v * 8)

	missile.Position = spawnPos
	missile.Size = Vector3.new(1,1,1)
	missile.Velocity = v * 500 
	missile.BrickColor = BrickColor.new(26)
	missile.Shape = 0
	missile.BottomSurface = 0
	missile.TopSurface = 0
	missile.Name = "Bullet"
	missile.Elasticity = 0
	missile.Reflectance = 0
	missile.Friction = .9
   missile.CanCollide = false

	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:getMass() * 196,0)
	force.Parent = missile

	local mesh = Instance.new("SpecialMesh")
	mesh.Scale = Vector3.new(.06,.06,.06)
	mesh.MeshType = "Sphere"
	mesh.Parent = missile

function onTouched(part)
     local h = part.Parent:findFirstChild("Humanoid")
     if h~=nil then
               h.Health = h.Health -100
               wait(.1)
               h.Health = h.Health -100
               wait(.1)

       end
end

missile.Touched:connect(onTouched)

	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = vPlayer
	creator_tag.Name = "creator"
	creator_tag.Parent = missile
	
   missile.Parent = game.Workspace

   cam = game.Workspace.CurrentCamera
   local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
	local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
	local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.01, -0.01, 0)
	cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
	weld33.C1 = CFrame.new(-0.75, -0.7, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
	weld55.C1 = CFrame.new(0.8, 0, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
	Tool.Flash.Mesh.Scale = Vector3.new(1.875, 1.7, 1.875)
	Tool.Flash.Transparency = .5
   Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0.6)
   Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0.58)
   Tool.A3.Mesh.Offset = Vector3.new(0, 0, 0.6)
   Tool.A4.Mesh.Offset = Vector3.new(0, 0, 0.6)
	wait(0.02)
   Choosy()
end

function ceasefireOn()
if reloading == true then return
end
reloading = true
Tool.Parent.Humanoid.WalkSpeed = 18
weld55.C1 = CFrame.new(-0.3, 0.8, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0, math.rad(-90))
weld33.C1 = CFrame.new(-1, 0.2, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-85), math.rad(-10), -0)
wait()
weld55.C1 = CFrame.new(-0.34, 0.82, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), 0, math.rad(-95))
weld33.C1 = CFrame.new(-0.95, 0.15, 0.28) * CFrame.fromEulerAnglesXYZ(math.rad(-82.5), math.rad(-15), -0)
wait()
weld55.C1 = CFrame.new(-0.38, 0.84, 0.76) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-100))
weld33.C1 = CFrame.new(-0.9, 0.1, 0.26) * CFrame.fromEulerAnglesXYZ(math.rad(-80), math.rad(-20), -0)
wait()
weld55.C1 = CFrame.new(-0.42, 0.86, 0.72) * CFrame.fromEulerAnglesXYZ(math.rad(280), 0, math.rad(-105))
weld33.C1 = CFrame.new(-0.85, 0.05, 0.24) * CFrame.fromEulerAnglesXYZ(math.rad(-77.5), math.rad(-25), -0)
wait()
weld55.C1 = CFrame.new(-0.46, 0.88, 0.68) * CFrame.fromEulerAnglesXYZ(math.rad(270), 0, math.rad(-110))
weld33.C1 = CFrame.new(-0.8, -0, 0.22) * CFrame.fromEulerAnglesXYZ(math.rad(-75), math.rad(-30), -0)
wait()
weld55.C1 = CFrame.new(-0.5, 0.9, 0.64) * CFrame.fromEulerAnglesXYZ(math.rad(260), 0, math.rad(-115))
weld33.C1 = CFrame.new(-0.75, -0.05, 0.20) * CFrame.fromEulerAnglesXYZ(math.rad(-72.5), math.rad(-35), -0)
wait()
weld55.C1 = CFrame.new(1.25, 0.2, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(295), math.rad(20), math.rad(-20))
weld33.C1 = CFrame.new(-0.7, -0.1, 0.18) * CFrame.fromEulerAnglesXYZ(math.rad(-70), math.rad(-40), -0)
wait()
weld33.C1 = CFrame.new(-0.7, -0.1, 0.16) * CFrame.fromEulerAnglesXYZ(math.rad(-67.5), math.rad(-45), -0)
wait() --(x,y,z) x: + , - ; y: + , - ; z: + , - 
running = false
ceasefire = true
wait(999999999999)
end

function run()
Tool.Parent.Humanoid.WalkSpeed = 16
reloading = false
weld33.C1 = CFrame.new(-0.65, -0.15, 0.16) * CFrame.fromEulerAnglesXYZ(math.rad(-67.5), math.rad(-45), -0)
wait()
weld55.C1 = CFrame.new(-0.54, 0.92, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(250), 0, math.rad(-120))
weld33.C1 = CFrame.new(-0.7, -0.1, 0.18) * CFrame.fromEulerAnglesXYZ(math.rad(-70), math.rad(-40), -0)
wait()
weld55.C1 = CFrame.new(-0.5, 0.9, 0.64) * CFrame.fromEulerAnglesXYZ(math.rad(260), 0, math.rad(-115))
weld33.C1 = CFrame.new(-0.75, -0.05, 0.20) * CFrame.fromEulerAnglesXYZ(math.rad(-72.5), math.rad(-35), -0)
wait()
weld55.C1 = CFrame.new(-0.46, 0.88, 0.68) * CFrame.fromEulerAnglesXYZ(math.rad(270), 0, math.rad(-110))
weld33.C1 = CFrame.new(-0.8, -0, 0.22) * CFrame.fromEulerAnglesXYZ(math.rad(-75), math.rad(-30), -0)
wait()
weld55.C1 = CFrame.new(-0.42, 0.86, 0.72) * CFrame.fromEulerAnglesXYZ(math.rad(280), 0, math.rad(-105))
weld33.C1 = CFrame.new(-0.85, 0.05, 0.24) * CFrame.fromEulerAnglesXYZ(math.rad(-77.5), math.rad(-25), -0)
wait()
weld55.C1 = CFrame.new(-0.38, 0.84, 0.76) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-100))
weld33.C1 = CFrame.new(-0.9, 0.1, 0.26) * CFrame.fromEulerAnglesXYZ(math.rad(-80), math.rad(-20), -0)
wait()
weld55.C1 = CFrame.new(-0.34, 0.82, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), 0, math.rad(-95))
weld33.C1 = CFrame.new(-0.95, 0.15, 0.28) * CFrame.fromEulerAnglesXYZ(math.rad(-82.5), math.rad(-15), -0)
wait()
weld55.C1 = CFrame.new(-0.3, 0.8, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0, math.rad(-90))
weld33.C1 = CFrame.new(-1, 0.2, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-85), math.rad(-10), -0)
wait()
weld55.C1 = CFrame.new(-0.3, 0.8, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(320), 0, math.rad(-90))
weld33.C1 = CFrame.new(-1, 0.2, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-0), -0)
wait()
weld33.C1 = CFrame.new(-0.75, -0.6, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
running = false
ceasefire = false
end

function KeyDownFunctions(key)
	if key == "r" then
		Reload()
	end
   if key == "z" then
		On()
	end
   if key == "x" then
		Off()
	end
   if key == "k" then
		ScopeOn()
	end
   if key == "l" then
		ScopeOff()
	end
	if key == "e" then
		if ceasefire == false then
			ceasefireOn()
		end
		if ceasefire == true then
			run()
		end
	end
end

Tool.Enabled = true
function onActivated()

	if not Tool.Enabled then
		return
	end

	Tool.Enabled = false

	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end
	local ammo = script.Parent.Ammo
	local maxammo = script.Parent.MaxAmmo
	firing = true
	while firing == true do
		wait()
		if reloading == false and humanoid.Health >= 1 then
			if ammo.Value >= 1 then
				ammo.Value = ammo.Value - 1
				local targetPos = humanoid.TargetPoint
				local lookAt = (targetPos - character.Head.Position).unit
				if script.Parent.Recoil.Value < 10 then
					script.Parent.Recoil.Value = script.Parent.Recoil.Value + 1
				end
				fire(lookAt)
			else
				Reload()
				break
			end
		elseif reloading == false and humanoid.Health < 1 then
			Tool:remove()
		end
	end
	Tool.Enabled = true
end

function nofiar(mouse)
firing = false
end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "http://www.roblox.com/asset/?id=2966012"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() nofiar(mouse) end)
	mouse.KeyDown:connect(KeyDownFunctions)
	while true do
		wait()
	end
end


Tool.Equipped:connect(onEquippedLocal)


script.Parent.Activated:connect(onActivated)
Tool.Equipped:connect(Equip)
Tool.Unequipped:connect(Unequip)


-- Naiuhz was here

-- Last updated on 2/13/12
end,o8)
end))
o9 = Instance.new("NumberValue")
o9.Name = "Ammo"
o9.Parent = MG2
o9.Value = 100
MG20 = Instance.new("LocalScript")
MG20.Name = "GuiScript"
MG20.Parent = MG2
table.insert(cors,coroutine.create(function()
wait()
MLG36(function()
-- Thanks for SonicUnleashedXY & Manofthelol for this script.
-- To remove the orginial script just go into shooter & right at the bottem you will see something like this:
-- script.Parent.Tool.Name = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
-- Remove only that & add this to the tool.
-- Remember this was designed for Manofthelol weapons so any other weapons might not work.
-- You have no permission to repubish this in you model even if it edited.
-- If your found then you will be ban from my place.

local Tool = script.Parent
local Ammo = Tool.Ammo
local MaxAmmo = Ammo.Value

local vPlayer
local Gui
local Text

function onChanged(value)
	if value == "Value" or value == Ammo.Value then
		if Gui ~= nil and Text ~= nil then
			if Ammo.Value >= 1 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif math.floor(Ammo.Value) == 0 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif Ammo.Value < 0 then
				for i = 0, 1, 0.03 / 2 do
					local Num = math.floor(i * MaxAmmo + 0.5)

					Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
					wait()
				end
			end
		end
	end
end

function on2Changed()
	if Gui ~= nil and Text ~= nil then

		Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
		wait()
	end
end

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.15, 0, 0.825, 0)
	Text.Size = UDim2.new(0, -60, 0, 64)
   Text.FontSize = "Size18"
	Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
	Text.TextColor3 = BrickColor.White().Color
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

Ammo.Changed:connect(onChanged)
Tool.StoredAmmo.Changed:connect(on2Changed)
end,MG20)
end))
MG21 = Instance.new("LocalScript")
MG21.Name = "Crouch"
MG21.Parent = MG2
table.insert(cors,coroutine.create(function()
wait()
MLG36(function()
on = 0
Tool = script.Parent
welds = {}
sh = {}
arms = nil
torso = nil
f = nil
function Crouch(ison)
if arms == nil and torso == nil then
arms = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso = Tool.Parent:FindFirstChild("Torso")
end
if arms ~= nil and torso ~= nil then
sh = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if sh ~= nil then
local yes = true
if yes then
yes = false
script.Parent.Parent.Humanoid.WalkSpeed = 6
if ison == 1 then
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(0.5,0.495,1.25) * CFrame.fromEulerAnglesXYZ(math.rad(70),0,0)
arms[1].Name = "LDave"
arms[1].CanCollide = true
welds[1] = weld1
-------------------------------------------
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-0.5, 1.05, 1)
arms[2].Name = "RDave"
arms[2].CanCollide = true
welds[2] = weld2
---------------------------------
local force = Instance.new("BodyForce")
force.Parent = torso
f = force
wait(0.01)
elseif ison == 0 then
if arms then
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
f.Parent = nil
arms[2].Name = "Right Leg"
arms[1].Name = "Left Leg"
welds[1].Parent = nil
welds[2].Parent = nil
script.Parent.Parent.Humanoid.WalkSpeed = 16
end
end
--
end
else
print("sh")
end
else
print("arms")
end
end
function Key(key)
if key then
key = string.lower(key)
if (key=="c") then
if on == 1 then
on = 0
elseif on == 0 then
on = 1
end
Crouch(on)
end
end
end
function Equip(mouse)
mouse.KeyDown:connect(Key)
end
script.Parent.Equipped:connect(Equip)

-- Naiuhz was here

-- Last updated on 12/19/11
end,MG21)
end))
MG22 = Instance.new("LocalScript")
MG22.Name = "BackupWeld"
MG22.Parent = MG2
table.insert(cors,coroutine.create(function()
wait()
MLG36(function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end,MG22)
end))
MG23 = Instance.new("LocalScript")
MG23.Name = "Zoom Script"
MG23.Parent = MG2
table.insert(cors,coroutine.create(function()
wait()
MLG36(function()
local Tool = script.Parent
a=false
cam=nil
wut = Tool.Parent



function onEquipped(mouse2)
	mouse2.KeyDown:connect(onkeyDown)
	mouse = mouse2
end
function onkeyDown(key) 
	if key == "q" then
	if not a then 
		cam=game.Workspace.CurrentCamera:clone()
		cam.Parent=game.Workspace
		game.Workspace.CurrentCamera.CameraSubject = Tool.Zoom
		game.Workspace.CurrentCamera.CameraType=1
		Tool.Recoil.Value = 5
		Tool.ZoomedInXD.Value = true
		Tool.Parent.Humanoid.WalkSpeed = 10
		a=true
	else
		game.Workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character
		game.Workspace.CurrentCamera:Remove()
		game.Workspace.CurrentCamera=cam
		Tool.ZoomedInXD.Value = false
		Tool.Recoil.Value = 10
		Tool.Parent.Humanoid.WalkSpeed = 16
		a=false
	end
end 
end




script.Parent.Equipped:connect(onEquipped)

-- Naiuhz was here

-- Last updated on 1/3/12
end,MG23)
end))
MG24 = Instance.new("BoolValue")
MG24.Name = "ZoomedInXD"
MG24.Parent = MG2
MG25 = Instance.new("LocalScript")
MG25.Name = "GuiScript(backup)"
MG25.Parent = MG2
table.insert(cors,coroutine.create(function()
wait()
MLG36(function()
-- Thanks for SonicUnleashedXY & Manofthelol for this script.
-- To remove the orginial script just go into shooter & right at the bottem you will see something like this:
-- script.Parent.Tool.Name = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
-- Remove only that & add this to the tool.
-- Remember this was designed for Manofthelol weapons so any other weapons might not work.
-- You have no permission to repubish this in you model even if it edited.
-- If your found then you will be ban from my place.

local Tool = script.Parent
local Ammo = Tool.Ammo
local MaxAmmo = Ammo.Value

local vPlayer
local Gui
local Text

function onChanged(value)
	if value == "Value" or value == Ammo.Value then
		if Gui ~= nil and Text ~= nil then
			if Ammo.Value >= 1 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif math.floor(Ammo.Value) == 0 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif Ammo.Value < 0 then
				for i = 0, 1, 0.03 / 2 do
					local Num = math.floor(i * MaxAmmo + 0.5)

					Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
					wait()
				end
			end
		end
	end
end

function on2Changed()
	if Gui ~= nil and Text ~= nil then

		Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
		wait()
	end
end

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.15, 0, 0.825, 0)
	Text.Size = UDim2.new(0, -60, 0, 64)
   Text.FontSize = "Size18"
	Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
	Text.TextColor3 = BrickColor.White().Color
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

Ammo.Changed:connect(onChanged)
Tool.StoredAmmo.Changed:connect(on2Changed)
end,MG25)
end))
MG26 = Instance.new("LocalScript")
MG26.Name = "IFF"
MG26.Parent = MG2
table.insert(cors,coroutine.create(function()
wait()
MLG36(function()
--hey. it's me alextomcool. just change the normel, friendly and enemy crosshair's or just use the starter crosshair's.
--this was modifed from a KeyDoor script. credit's to whomever made the KeyDoors
--Yo, it's me Naiuhz. I just modfied this script so the recticle would be different, that's all
--Credits to alextomcool and soapmactavish

bin = script.Parent
normal = "http://www.roblox.com/asset/?id=2966012"
friendly = "http://www.roblox.com/asset/?id=23235673"
enemy = "http://www.roblox.com/asset/?id=23235646"
function Run(mouse)
	mouse.Icon = normal
	local hit = mouse.Target
	if (hit == nil) then return end
        h = hit.Parent:FindFirstChild("Humanoid")
        if h ~= nil then
        torso = hit.Parent.Torso
        if torso ~= nil then
        if h.Health > 0 then
	if (torso.BrickColor == bin.Parent.Torso.BrickColor) then
        mouse.Icon = friendly
        elseif torso.BrickColor ~= bin.Parent.Torso.BrickColor then
        mouse.Icon = enemy
        end
        end
        end
        
	end
end







function on(mouse)
        while true do
        wait()
	Run(mouse)
        end
end



script.Parent.Equipped:connect(on)

-- Naiuhz was here

-- Last updated on 1/15/12

end,MG26)
end))
MG27 = Instance.new("LocalScript")
MG27.Name = "Prone"
MG27.Parent = MG2
table.insert(cors,coroutine.create(function()
wait()
MLG36(function()
on = 0
Tool = script.Parent
welds = {}
sh = {}
arms = nil
torso = nil
f = nil

function Crouch(ison)
if arms == nil and torso == nil then
arms = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso = Tool.Parent:FindFirstChild("Torso")
end
if arms ~= nil and torso ~= nil then
sh = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if sh ~= nil then
local yes = true
if yes then
yes = false
if ison == 1 then
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(0.5,1,0.6) * CFrame.fromEulerAnglesXYZ(math.rad(90),0.1,0.1)
arms[1].Name = "LDave"
arms[1].CanCollide = true
welds[1] = weld1
-------------------------------------------
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(90),-0.1,-0.1)
arms[2].Name = "RDave"
arms[2].CanCollide = true
welds[2] = weld2
---------------------------------
local force = Instance.new("BodyForce")
force.Parent = torso
f = force
wait(0.01)
elseif ison == 0 then
if arms then
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
f.Parent = nil
arms[2].Name = "Right Leg"
arms[1].Name = "Left Leg"
welds[1].Parent = nil
welds[2].Parent = nil
end
end
--
end
else
print("sh")
end
else
print("arms")
end
end

------------------------

--WalkSpeedsHere!

local WalkSpeedWhileCrouching = 5
local CurrentWalkSpeed = 16

--WalkSpeedsHere!

------------------------

function Key(key)
if key then
key = string.lower(key)
if (key=="v") then
if on == 1 then
Tool.Parent.Humanoid.WalkSpeed = CurrentWalkSpeed
on = 0
elseif on == 0 then
Tool.Parent.Humanoid.WalkSpeed = WalkSpeedWhileCrouching
on = 1
end
Crouch(on)
end
end
end
function Equip(mouse)
mouse.KeyDown:connect(Key)
end
script.Parent.Equipped:connect(Equip)

-- Naiuhz was here

-- Last updated on 1/15/12
end,MG27)
end))
MG28 = Instance.new("SpecialMesh")
MG28.Name = "Rarm"
MG28.Parent = MG2
MG28.Scale = Vector3.new(0.99000001, 0.99000001, 0.99000001)
MG28.MeshType = Enum.MeshType.FileMesh
MG29 = Instance.new("SpecialMesh")
MG29.Name = "Larm"
MG29.Parent = MG2
MG29.Scale = Vector3.new(0.99000001, 0.99000001, 0.99000001)
MG29.MeshType = Enum.MeshType.FileMesh
o20 = Instance.new("Part")
o20.Parent = MG2
o20.Material = Enum.Material.SmoothPlastic
o20.BrickColor = BrickColor.new("Black")
o20.Position = Vector3.new(-13.105238, 0.665300012, 3.07375503)
o20.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o20.Anchored = true
o20.CFrame = CFrame.new(-13.105238, 0.665300012, 3.07375503, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o20.FormFactor = Enum.FormFactor.Custom
o20.Size = Vector3.new(0.212500006, 0.200000003, 0.237499997)
o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o20.Color = Color3.new(0.105882, 0.164706, 0.207843)
o21 = Instance.new("BlockMesh")
o21.Parent = o20
o21.Scale = Vector3.new(1, 0.9375, 1)
o22 = Instance.new("Part")
o22.Parent = MG2
o22.Material = Enum.Material.SmoothPlastic
o22.BrickColor = BrickColor.new("Black")
o22.Position = Vector3.new(-13.105092, 0.877802014, 2.59875607)
o22.Rotation = Vector3.new(90, -0.0342645533, -90)
o22.Anchored = true
o22.CFrame = CFrame.new(-13.105092, 0.877802014, 2.59875607, -4.36590994e-008, 0.999999821, -0.000598029234, 4.37374439e-008, -0.000598029234, -0.999999821, -1, -4.36852474e-008, -4.37114664e-008)
o22.FormFactor = Enum.FormFactor.Custom
o22.Size = Vector3.new(0.200000003, 0.224999994, 0.200000003)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.105882, 0.164706, 0.207843)
o23 = Instance.new("CylinderMesh")
o23.Parent = o22
o23.Scale = Vector3.new(0.4375, 1, 0.4375)
o24 = Instance.new("Part")
o24.Parent = MG2
o24.Material = Enum.Material.SmoothPlastic
o24.BrickColor = BrickColor.new("Dark stone grey")
o24.Position = Vector3.new(-13.10536, 0.42780301, 3.68499899)
o24.Rotation = Vector3.new(180, 1.49777912e-009, 0.0342645533)
o24.Anchored = true
o24.CFrame = CFrame.new(-13.10536, 0.42780301, 3.68499899, 0.999999821, -0.000598029234, 2.6141176e-011, -0.000598029234, -0.999999821, -8.52651283e-014, 2.61406903e-011, -8.17124146e-014, -1)
o24.FormFactor = Enum.FormFactor.Custom
o24.Size = Vector3.new(0.212500006, 0.200000003, 0.50999999)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.388235, 0.372549, 0.384314)
o25 = Instance.new("SpecialMesh")
o25.Parent = o24
o25.Scale = Vector3.new(1, 0.5625, 1)
o25.MeshType = Enum.MeshType.Wedge
o26 = Instance.new("Part")
o26.Parent = MG2
o26.Material = Enum.Material.SmoothPlastic
o26.BrickColor = BrickColor.new("Dark stone grey")
o26.Position = Vector3.new(-13.1050463, 0.984049022, 2.74874997)
o26.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o26.Anchored = true
o26.CFrame = CFrame.new(-13.1050463, 0.984049022, 2.74874997, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o26.FormFactor = Enum.FormFactor.Custom
o26.Size = Vector3.new(0.212500006, 0.25, 0.200000003)
o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o26.Color = Color3.new(0.388235, 0.372549, 0.384314)
o27 = Instance.new("BlockMesh")
o27.Parent = o26
o27.Scale = Vector3.new(1, 1, 0.6875)
o28 = Instance.new("Part")
o28.Parent = MG2
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Dark stone grey")
o28.Position = Vector3.new(-13.1053982, 0.366526991, 3.07567692)
o28.Rotation = Vector3.new(-155.000015, 0.0144824926, -179.968964)
o28.Anchored = true
o28.CFrame = CFrame.new(-13.1053982, 0.366526991, 3.07567692, -0.999999821, 0.000541847548, 0.000252767175, 0.000597904669, 0.906307578, 0.422618181, -9.01937796e-008, 0.4226183, -0.906307817)
o28.FormFactor = Enum.FormFactor.Custom
o28.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o28.Color = Color3.new(0.388235, 0.372549, 0.384314)
o29 = Instance.new("BlockMesh")
o29.Parent = o28
o29.Scale = Vector3.new(0.9375, 0.125, 0.875)
o30 = Instance.new("Part")
o30.Parent = MG2
o30.Material = Enum.Material.SmoothPlastic
o30.BrickColor = BrickColor.new("Really black")
o30.Position = Vector3.new(-13.1050396, 1.00305402, 3.77375102)
o30.Rotation = Vector3.new(-180, 4.49328086e-009, -179.965744)
o30.Anchored = true
o30.CFrame = CFrame.new(-13.1050396, 1.00305402, 3.77375102, -0.999999821, 0.000597941806, 7.84225462e-011, 0.000597941806, 0.999999821, 8.74226771e-008, -2.61480646e-011, 8.74228547e-008, -1)
o30.FormFactor = Enum.FormFactor.Custom
o30.Size = Vector3.new(0.200000003, 0.200000003, 0.712499976)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o31 = Instance.new("BlockMesh")
o31.Parent = o30
o31.Scale = Vector3.new(0.5625, 0.0625, 1)
o32 = Instance.new("Part")
o32.Parent = MG2
o32.Material = Enum.Material.SmoothPlastic
o32.BrickColor = BrickColor.new("Dark stone grey")
o32.Position = Vector3.new(-13.1052599, 0.602801025, 4.02250004)
o32.Rotation = Vector3.new(180, 1.49777912e-009, 0.0342645533)
o32.Anchored = true
o32.CFrame = CFrame.new(-13.1052599, 0.602801025, 4.02250004, 0.999999821, -0.000598029234, 2.6141176e-011, -0.000598029234, -0.999999821, -8.52651283e-014, 2.61406903e-011, -8.17124146e-014, -1)
o32.FormFactor = Enum.FormFactor.Custom
o32.Size = Vector3.new(0.212500006, 0.237499997, 0.200000003)
o32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o32.Color = Color3.new(0.388235, 0.372549, 0.384314)
o33 = Instance.new("SpecialMesh")
o33.Parent = o32
o33.Scale = Vector3.new(1, 1, 0.799999952)
o33.MeshType = Enum.MeshType.Wedge
o34 = Instance.new("Part")
o34.Parent = MG2
o34.Material = Enum.Material.SmoothPlastic
o34.BrickColor = BrickColor.new("Black")
o34.Position = Vector3.new(-13.1051922, 0.720569015, 2.71412802)
o34.Rotation = Vector3.new(-152, 0.016083654, -179.969757)
o34.Anchored = true
o34.CFrame = CFrame.new(-13.1051922, 0.720569015, 2.71412802, -0.999999821, 0.000527877419, 0.000280712731, 0.000597874809, 0.882947385, 0.469471455, -3.12268433e-008, 0.469471544, -0.882947624)
o34.FormFactor = Enum.FormFactor.Custom
o34.Size = Vector3.new(0.200000003, 0.200000003, 0.512499988)
o34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o34.Color = Color3.new(0.105882, 0.164706, 0.207843)
o35 = Instance.new("BlockMesh")
o35.Parent = o34
o35.Scale = Vector3.new(1, 0.75, 1)
o36 = Instance.new("Part")
o36.Parent = MG2
o36.Material = Enum.Material.SmoothPlastic
o36.BrickColor = BrickColor.new("Really black")
o36.Position = Vector3.new(-13.1613598, 0.865339994, 3.68624902)
o36.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o36.Anchored = true
o36.CFrame = CFrame.new(-13.1613598, 0.865339994, 3.68624902, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o36.FormFactor = Enum.FormFactor.Custom
o36.Size = Vector3.new(0.200000003, 0.200000003, 0.512499988)
o36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o36.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o37 = Instance.new("BlockMesh")
o37.Parent = o36
o37.Scale = Vector3.new(0.25, 0.4375, 1)
o38 = Instance.new("Part")
o38.Parent = MG2
o38.Material = Enum.Material.SmoothPlastic
o38.BrickColor = BrickColor.new("Dark stone grey")
o38.Position = Vector3.new(-13.1052303, 0.652803004, 3.68624902)
o38.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o38.Anchored = true
o38.CFrame = CFrame.new(-13.1052303, 0.652803004, 3.68624902, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o38.FormFactor = Enum.FormFactor.Custom
o38.Size = Vector3.new(0.212500006, 0.337500006, 0.512499988)
o38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o38.Color = Color3.new(0.388235, 0.372549, 0.384314)
o39 = Instance.new("BlockMesh")
o39.Parent = o38
o40 = Instance.new("Part")
o40.Parent = MG2
o40.Material = Enum.Material.SmoothPlastic
o40.BrickColor = BrickColor.new("Dark stone grey")
o40.Position = Vector3.new(-13.1115322, 0.571554005, 3.43000102)
o40.Rotation = Vector3.new(90, -0.0342645533, -90)
o40.Anchored = true
o40.CFrame = CFrame.new(-13.1115322, 0.571554005, 3.43000102, -4.36590994e-008, 0.999999821, -0.000598029234, 4.37374439e-008, -0.000598029234, -0.999999821, -1, -4.36852474e-008, -4.37114736e-008)
o40.FormFactor = Enum.FormFactor.Custom
o40.Size = Vector3.new(0.200000003, 0.212500006, 0.200000003)
o40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o40.Color = Color3.new(0.388235, 0.372549, 0.384314)
o41 = Instance.new("CylinderMesh")
o41.Parent = o40
o41.Scale = Vector3.new(0.25, 1, 0.25)
o42 = Instance.new("Part")
o42.Parent = MG2
o42.Material = Enum.Material.SmoothPlastic
o42.BrickColor = BrickColor.new("Dark stone grey")
o42.Position = Vector3.new(-13.1050539, 0.971552014, 2.58750296)
o42.Rotation = Vector3.new(-4.88533216e-012, -1.49777912e-009, -0.0342645533)
o42.Anchored = true
o42.CFrame = CFrame.new(-13.1050539, 0.971552014, 2.58750296, 0.999999821, 0.000598029234, -2.6141176e-011, -0.000598029234, 0.999999821, 8.52651283e-014, 2.61406903e-011, 8.17124146e-014, 1)
o42.FormFactor = Enum.FormFactor.Custom
o42.Size = Vector3.new(0.212500006, 0.224999994, 0.200000003)
o42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o42.Color = Color3.new(0.388235, 0.372549, 0.384314)
o43 = Instance.new("SpecialMesh")
o43.Parent = o42
o43.Scale = Vector3.new(1, 1, 0.924999952)
o43.MeshType = Enum.MeshType.Wedge
o44 = Instance.new("Part")
o44.Parent = MG2
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Black")
o44.Transparency = 1
o44.Position = Vector3.new(-13.1052456, 0.621554017, 3.00500607)
o44.Rotation = Vector3.new(-180, 6.6715824e-009, -179.965744)
o44.Anchored = true
o44.CFrame = CFrame.new(-13.1052456, 0.621554017, 3.00500607, -0.999999821, 0.000597878243, 1.16441079e-010, 0.000597878243, 0.999999821, 1.50995675e-007, -2.61650545e-011, 1.50995902e-007, -1)
o44.FormFactor = Enum.FormFactor.Custom
o44.Size = Vector3.new(0.212500006, 0.200000003, 0.200000003)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.105882, 0.164706, 0.207843)
o45 = Instance.new("Decal")
o45.Parent = o44
o45.Texture = "http://www.roblox.com/asset/?id=61939183"
o45.Face = Enum.NormalId.Right
o46 = Instance.new("Decal")
o46.Parent = o44
o46.Texture = "http://www.roblox.com/asset/?id=61939183"
o46.Face = Enum.NormalId.Left
o47 = Instance.new("BlockMesh")
o47.Parent = o44
o47.Scale = Vector3.new(1, 0.25, 0.375)
o48 = Instance.new("Part")
o48.Parent = MG2
o48.Material = Enum.Material.SmoothPlastic
o48.BrickColor = BrickColor.new("Dark stone grey")
o48.Position = Vector3.new(-13.1053743, 0.404051989, 3.18624902)
o48.Rotation = Vector3.new(-29.9999981, 0.0171322748, 179.970322)
o48.Anchored = true
o48.CFrame = CFrame.new(-13.1053743, 0.404051989, 3.18624902, -0.999999821, -0.000518059416, 0.000299014588, 0.000598160026, -0.86602509, 0.499999911, -7.5524035e-008, 0.5, 0.866025329)
o48.FormFactor = Enum.FormFactor.Custom
o48.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o48.Color = Color3.new(0.388235, 0.372549, 0.384314)
o49 = Instance.new("SpecialMesh")
o49.Parent = o48
o49.Scale = Vector3.new(0.125, 0.4375, 0.125)
o49.MeshType = Enum.MeshType.Wedge
o50 = Instance.new("Part")
o50.Parent = MG2
o50.Material = Enum.Material.SmoothPlastic
o50.BrickColor = BrickColor.new("Dark stone grey")
o50.Position = Vector3.new(-13.1052217, 0.690302014, 3.07375503)
o50.Rotation = Vector3.new(45, -0.0242306199, -90.024231)
o50.Anchored = true
o50.CFrame = CFrame.new(-13.1052217, 0.690302014, 3.07375503, -0.000422914163, 0.999999821, -0.000422904093, -0.70710659, -0.000598083832, -0.707106769, -0.707106829, -7.19010851e-009, 0.707106709)
o50.FormFactor = Enum.FormFactor.Custom
o50.Size = Vector3.new(0.200000003, 0.224999994, 0.200000003)
o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.388235, 0.372549, 0.384314)
o51 = Instance.new("CylinderMesh")
o51.Parent = o50
o51.Scale = Vector3.new(0.4375, 1, 0.4375)
o52 = Instance.new("Part")
o52.Parent = MG2
o52.Material = Enum.Material.SmoothPlastic
o52.BrickColor = BrickColor.new("Dark stone grey")
o52.Position = Vector3.new(-13.10536, 0.440304011, 3.46499801)
o52.Rotation = Vector3.new(-84.0000076, 0.0340752006, 179.996414)
o52.Anchored = true
o52.CFrame = CFrame.new(-13.10536, 0.440304011, 3.46499801, -0.999999821, -6.26619876e-005, 0.000594724377, 0.00059801637, -0.104528271, 0.994521737, -1.53206258e-007, 0.994521916, 0.1045283)
o52.FormFactor = Enum.FormFactor.Custom
o52.Size = Vector3.new(0.200000003, 0.200000003, 0.3125)
o52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o52.Color = Color3.new(0.388235, 0.372549, 0.384314)
o53 = Instance.new("BlockMesh")
o53.Parent = o52
o53.Scale = Vector3.new(0.9375, 0.125, 1)
o54 = Instance.new("Part")
o54.Parent = MG2
o54.Material = Enum.Material.SmoothPlastic
o54.BrickColor = BrickColor.new("Black")
o54.Position = Vector3.new(-12.9725924, 0.915232003, 4.15499878)
o54.Rotation = Vector3.new(180, -1.02489585e-005, -179.965744)
o54.Anchored = true
o54.CFrame = CFrame.new(-12.9725924, 0.915232003, 4.15499878, -0.999999821, 0.000597878243, -1.78878068e-007, 0.000597878243, 0.999999821, -1.50888894e-007, 1.78787815e-007, -1.50995703e-007, -1)
o54.FormFactor = Enum.FormFactor.Custom
o54.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o54.Color = Color3.new(0.105882, 0.164706, 0.207843)
o55 = Instance.new("SpecialMesh")
o55.Parent = o54
o55.MeshId = "http://www.roblox.com/Asset/?id=11294911"
o55.Scale = Vector3.new(0.0949999988, 0.375, 0.200000003)
o55.MeshType = Enum.MeshType.FileMesh
o56 = Instance.new("Part")
o56.Parent = MG2
o56.Material = Enum.Material.SmoothPlastic
o56.BrickColor = BrickColor.new("Black")
o56.Position = Vector3.new(-13.2363262, 0.915381014, 4.15499878)
o56.Rotation = Vector3.new(-90, -89.9657364, -90)
o56.Anchored = true
o56.CFrame = CFrame.new(-13.2363262, 0.915381014, 4.15499878, -2.6141176e-011, 0.000598029234, -0.999999821, 8.52651283e-014, 0.999999821, 0.000598029234, 1, 8.17124146e-014, -2.61406903e-011)
o56.FormFactor = Enum.FormFactor.Custom
o56.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o56.Color = Color3.new(0.105882, 0.164706, 0.207843)
o57 = Instance.new("SpecialMesh")
o57.Parent = o56
o57.MeshId = "http://www.roblox.com/Asset/?id=11294911"
o57.Scale = Vector3.new(0.200000003, 0.375, 0.0949999988)
o57.MeshType = Enum.MeshType.FileMesh
o58 = Instance.new("Part")
o58.Parent = MG2
o58.Material = Enum.Material.SmoothPlastic
o58.BrickColor = BrickColor.new("Dark stone grey")
o58.Position = Vector3.new(-13.1053143, 0.527804017, 3.19249797)
o58.Rotation = Vector3.new(180, -5.44547352e-010, 0.0342559032)
o58.Anchored = true
o58.CFrame = CFrame.new(-13.1053143, 0.527804017, 3.19249797, 0.999999821, -0.000597878243, -9.504144e-012, -0.000597878243, -0.999999821, -5.96047158e-008, 2.61259746e-011, 5.96045631e-008, -1)
o58.FormFactor = Enum.FormFactor.Custom
o58.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o58.Color = Color3.new(0.388235, 0.372549, 0.384314)
o59 = Instance.new("SpecialMesh")
o59.Parent = o58
o59.Scale = Vector3.new(0.125, 0.4375, 0.125)
o59.MeshType = Enum.MeshType.Wedge
o60 = Instance.new("Part")
o60.Parent = MG2
o60.Material = Enum.Material.SmoothPlastic
o60.BrickColor = BrickColor.new("Black")
o60.Transparency = 1
o60.Position = Vector3.new(-13.1052523, 0.606549978, 3.10500503)
o60.Rotation = Vector3.new(-180, 6.6715824e-009, -179.965744)
o60.Anchored = true
o60.CFrame = CFrame.new(-13.1052523, 0.606549978, 3.10500503, -0.999999821, 0.000597878243, 1.16441079e-010, 0.000597878243, 0.999999821, 1.50995675e-007, -2.61650545e-011, 1.50995902e-007, -1)
o60.FormFactor = Enum.FormFactor.Custom
o60.Size = Vector3.new(0.212500006, 0.200000003, 0.200000003)
o60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o60.Color = Color3.new(0.105882, 0.164706, 0.207843)
o61 = Instance.new("Decal")
o61.Parent = o60
o61.Texture = "http://www.roblox.com/asset/?id=61939134"
o61.Face = Enum.NormalId.Right
o62 = Instance.new("Decal")
o62.Parent = o60
o62.Texture = "http://www.roblox.com/asset/?id=61939134"
o62.Face = Enum.NormalId.Left
o63 = Instance.new("BlockMesh")
o63.Parent = o60
o63.Scale = Vector3.new(1, 0.25, 0.375)
o64 = Instance.new("Part")
o64.Parent = MG2
o64.Material = Enum.Material.SmoothPlastic
o64.BrickColor = BrickColor.new("Black")
o64.Position = Vector3.new(-13.2375755, 0.915381014, 4.52999878)
o64.Rotation = Vector3.new(90.0041809, 89.9657364, -90.0041809)
o64.Anchored = true
o64.CFrame = CFrame.new(-13.2375755, 0.915381014, 4.52999878, -4.36852403e-008, 0.000598029234, 0.999999821, 2.60591548e-011, 0.999999821, -0.000598029234, -1, 8.17124146e-014, -4.36852474e-008)
o64.FormFactor = Enum.FormFactor.Custom
o64.Size = Vector3.new(0.649999976, 0.200000003, 0.200000003)
o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o64.Color = Color3.new(0.105882, 0.164706, 0.207843)
o65 = Instance.new("SpecialMesh")
o65.Parent = o64
o65.Scale = Vector3.new(1, 0.9375, 0.237499997)
o65.MeshType = Enum.MeshType.Wedge
o66 = Instance.new("Part")
o66.Parent = MG2
o66.Material = Enum.Material.SmoothPlastic
o66.BrickColor = BrickColor.new("Black")
o66.Position = Vector3.new(-13.105238, 0.665300012, 2.80000401)
o66.Rotation = Vector3.new(-4.88533216e-012, -1.49777912e-009, 179.965729)
o66.Anchored = true
o66.CFrame = CFrame.new(-13.105238, 0.665300012, 2.80000401, -0.999999821, -0.000598029234, -2.6141176e-011, 0.000598029234, -0.999999821, 8.52651283e-014, -2.61406903e-011, -8.17124146e-014, 1)
o66.FormFactor = Enum.FormFactor.Custom
o66.Size = Vector3.new(0.212500006, 0.200000003, 0.310000002)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o66.Color = Color3.new(0.105882, 0.164706, 0.207843)
o67 = Instance.new("SpecialMesh")
o67.Parent = o66
o67.Scale = Vector3.new(1, 0.9375, 1)
o67.MeshType = Enum.MeshType.Wedge
o68 = Instance.new("Part")
o68.Parent = MG2
o68.Material = Enum.Material.SmoothPlastic
o68.BrickColor = BrickColor.new("Black")
o68.Position = Vector3.new(-12.972578, 0.915224016, 4.52999878)
o68.Rotation = Vector3.new(-89.9958191, -89.9657364, -89.9958191)
o68.Anchored = true
o68.CFrame = CFrame.new(-12.972578, 0.915224016, 4.52999878, 4.36852403e-008, 0.000598029234, -0.999999821, -2.60591548e-011, 0.999999821, 0.000598029234, 1, 8.17124146e-014, 4.36852474e-008)
o68.FormFactor = Enum.FormFactor.Custom
o68.Size = Vector3.new(0.649999976, 0.200000003, 0.200000003)
o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Color = Color3.new(0.105882, 0.164706, 0.207843)
o69 = Instance.new("SpecialMesh")
o69.Parent = o68
o69.Scale = Vector3.new(1, 0.9375, 0.237499997)
o69.MeshType = Enum.MeshType.Wedge
o70 = Instance.new("Part")
o70.Parent = MG2
o70.Material = Enum.Material.SmoothPlastic
o70.BrickColor = BrickColor.new("Black")
o70.Position = Vector3.new(-13.105298, 0.535302997, 2.84875607)
o70.Rotation = Vector3.new(-180, 6.6715824e-009, -179.965744)
o70.Anchored = true
o70.CFrame = CFrame.new(-13.105298, 0.535302997, 2.84875607, -0.999999821, 0.000597878243, 1.16441079e-010, 0.000597878243, 0.999999821, 1.50995675e-007, -2.61650545e-011, 1.50995902e-007, -1)
o70.FormFactor = Enum.FormFactor.Custom
o70.Size = Vector3.new(0.200000003, 0.212500006, 0.200000003)
o70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o70.Color = Color3.new(0.105882, 0.164706, 0.207843)
o71 = Instance.new("BlockMesh")
o71.Parent = o70
o71.Scale = Vector3.new(1, 1, 0.4375)
o72 = Instance.new("Part")
o72.Parent = MG2
o72.Material = Enum.Material.SmoothPlastic
o72.BrickColor = BrickColor.new("Dark stone grey")
o72.Position = Vector3.new(-13.1050615, 0.934053004, 3.12374902)
o72.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o72.Anchored = true
o72.CFrame = CFrame.new(-13.1050615, 0.934053004, 3.12374902, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o72.FormFactor = Enum.FormFactor.Custom
o72.Size = Vector3.new(0.212500006, 0.200000003, 0.612500012)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.388235, 0.372549, 0.384314)
o73 = Instance.new("BlockMesh")
o73.Parent = o72
o73.Scale = Vector3.new(1, 0.75, 1)
o74 = Instance.new("Part")
o74.Parent = MG2
o74.Material = Enum.Material.SmoothPlastic
o74.BrickColor = BrickColor.new("Dark stone grey")
o74.Position = Vector3.new(-13.2488537, 0.859133005, 3.37875509)
o74.Rotation = Vector3.new(-180, 4.49328086e-009, -179.965744)
o74.Anchored = true
o74.CFrame = CFrame.new(-13.2488537, 0.859133005, 3.37875509, -0.999999821, 0.000597941806, 7.84225462e-011, 0.000597941806, 0.999999821, 8.74226771e-008, -2.61480646e-011, 8.74228547e-008, -1)
o74.FormFactor = Enum.FormFactor.Custom
o74.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.388235, 0.372549, 0.384314)
o75 = Instance.new("BlockMesh")
o75.Parent = o74
o75.Scale = Vector3.new(0.375, 0.75, 0.4375)
o76 = Instance.new("Part")
o76.Parent = MG2
o76.Material = Enum.Material.SmoothPlastic
o76.BrickColor = BrickColor.new("Dark stone grey")
o76.Position = Vector3.new(-13.1051302, 0.809053004, 3.03624797)
o76.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o76.Anchored = true
o76.CFrame = CFrame.new(-13.1051302, 0.809053004, 3.03624797, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o76.FormFactor = Enum.FormFactor.Custom
o76.Size = Vector3.new(0.212500006, 0.200000003, 0.787500024)
o76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o76.Color = Color3.new(0.388235, 0.372549, 0.384314)
o77 = Instance.new("BlockMesh")
o77.Parent = o76
o77.Scale = Vector3.new(1, 0.5, 1)
o78 = Instance.new("Part")
o78.Parent = MG2
o78.Material = Enum.Material.SmoothPlastic
o78.BrickColor = BrickColor.new("Mid gray")
o78.Position = Vector3.new(-13.1052217, 0.663785994, 3.10026693)
o78.Rotation = Vector3.new(-44.9999962, 0.0242194254, -90.024231)
o78.Anchored = true
o78.CFrame = CFrame.new(-13.1052217, 0.663785994, 3.10026693, -0.000422914251, 0.999999821, 0.000422708719, -0.707106709, -0.000597945764, 0.70710665, 0.707106769, 1.45326311e-007, 0.707106769)
o78.FormFactor = Enum.FormFactor.Custom
o78.Size = Vector3.new(0.200000003, 0.237499997, 0.200000003)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Color = Color3.new(0.803922, 0.803922, 0.803922)
o79 = Instance.new("BlockMesh")
o79.Parent = o78
o79.Scale = Vector3.new(0.1875, 1, 0.0625)
o80 = Instance.new("Part")
o80.Parent = MG2
o80.Material = Enum.Material.SmoothPlastic
o80.BrickColor = BrickColor.new("Dark stone grey")
o80.Position = Vector3.new(-13.0676098, 0.865283012, 3.68624902)
o80.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o80.Anchored = true
o80.CFrame = CFrame.new(-13.0676098, 0.865283012, 3.68624902, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o80.FormFactor = Enum.FormFactor.Custom
o80.Size = Vector3.new(0.200000003, 0.200000003, 0.512499988)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.388235, 0.372549, 0.384314)
o81 = Instance.new("BlockMesh")
o81.Parent = o80
o81.Scale = Vector3.new(0.6875, 0.4375, 1)
o82 = Instance.new("Part")
o82.Parent = MG2
o82.Material = Enum.Material.SmoothPlastic
o82.BrickColor = BrickColor.new("Dark stone grey")
o82.Position = Vector3.new(-13.1054058, 0.36096701, 3.30114889)
o82.Rotation = Vector3.new(169, -0.00653798366, -179.96637)
o82.Anchored = true
o82.CFrame = CFrame.new(-13.1054058, 0.36096701, 3.30114889, -0.999999821, 0.000586890732, -0.000114109338, 0.000597881037, 0.981626987, -0.190808982, 2.87852213e-008, -0.190809011, -0.981627166)
o82.FormFactor = Enum.FormFactor.Custom
o82.Size = Vector3.new(0.200000003, 0.200000003, 0.3125)
o82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o82.Color = Color3.new(0.388235, 0.372549, 0.384314)
o83 = Instance.new("BlockMesh")
o83.Parent = o82
o83.Scale = Vector3.new(0.9375, 0.125, 1)
o84 = Instance.new("Part")
o84.Parent = MG2
o84.Material = Enum.Material.SmoothPlastic
o84.BrickColor = BrickColor.new("Black")
o84.Position = Vector3.new(-12.9800539, 0.946474016, 5.38000584)
o84.Rotation = Vector3.new(-90, -89.9657364, -90)
o84.Anchored = true
o84.CFrame = CFrame.new(-12.9800539, 0.946474016, 5.38000584, -2.6141176e-011, 0.000598029234, -0.999999821, 8.52651283e-014, 0.999999821, 0.000598029234, 1, 8.17124146e-014, -2.61406903e-011)
o84.FormFactor = Enum.FormFactor.Custom
o84.Size = Vector3.new(1.04999995, 0.25, 0.200000003)
o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Color = Color3.new(0.105882, 0.164706, 0.207843)
o85 = Instance.new("SpecialMesh")
o85.Parent = o84
o85.Scale = Vector3.new(1, 1, 0.3125)
o85.MeshType = Enum.MeshType.Wedge
o86 = Instance.new("Part")
o86.Parent = MG2
o86.Material = Enum.Material.SmoothPlastic
o86.BrickColor = BrickColor.new("Dark stone grey")
o86.Position = Vector3.new(-13.1050701, 0.915300012, 4.39875078)
o86.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o86.Anchored = true
o86.CFrame = CFrame.new(-13.1050701, 0.915300012, 4.39875078, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o86.FormFactor = Enum.FormFactor.Custom
o86.Size = Vector3.new(0.212500006, 0.200000003, 0.912500024)
o86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o86.Color = Color3.new(0.388235, 0.372549, 0.384314)
o87 = Instance.new("BlockMesh")
o87.Parent = o86
o87.Scale = Vector3.new(1, 0.9375, 1)
o88 = Instance.new("Part")
o88.Parent = MG2
o88.Material = Enum.Material.SmoothPlastic
o88.BrickColor = BrickColor.new("Dark stone grey")
o88.Position = Vector3.new(-13.1052217, 0.657800019, 4.08249807)
o88.Rotation = Vector3.new(180, -3.67602304e-009, 0.0342645533)
o88.Anchored = true
o88.CFrame = CFrame.new(-13.1052217, 0.657800019, 4.08249807, 0.999999821, -0.000598029234, -6.41587061e-011, -0.000598029234, -0.999999821, -1.50995831e-007, 2.61406903e-011, 1.50995731e-007, -1)
o88.FormFactor = Enum.FormFactor.Custom
o88.Size = Vector3.new(0.212500006, 0.200000003, 0.209999993)
o88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o88.Color = Color3.new(0.388235, 0.372549, 0.384314)
o89 = Instance.new("SpecialMesh")
o89.Parent = o88
o89.Scale = Vector3.new(1, 0.6875, 1)
o89.MeshType = Enum.MeshType.Wedge
o90 = Instance.new("Part")
o90.Parent = MG2
o90.Material = Enum.Material.SmoothPlastic
o90.BrickColor = BrickColor.new("Dark stone grey")
o90.Position = Vector3.new(-13.105238, 0.665300012, 3.31124902)
o90.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o90.Anchored = true
o90.CFrame = CFrame.new(-13.105238, 0.665300012, 3.31124902, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o90.FormFactor = Enum.FormFactor.Custom
o90.Size = Vector3.new(0.212500006, 0.200000003, 0.237499997)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.388235, 0.372549, 0.384314)
o91 = Instance.new("BlockMesh")
o91.Parent = o90
o91.Scale = Vector3.new(1, 0.9375, 1)
o92 = Instance.new("Part")
o92.Parent = MG2
o92.Material = Enum.Material.SmoothPlastic
o92.BrickColor = BrickColor.new("Black")
o92.Position = Vector3.new(-13.1050243, 1.01530004, 2.55625296)
o92.Rotation = Vector3.new(2.73208389e-005, 1.04277525e-007, -0.0342653692)
o92.Anchored = true
o92.CFrame = CFrame.new(-13.1050243, 1.01530004, 2.55625296, 0.999999821, 0.000598043436, 1.81998616e-009, -0.000598043436, 0.999999821, -4.76838579e-007, -2.10515783e-009, 4.7683767e-007, 1)
o92.FormFactor = Enum.FormFactor.Custom
o92.Size = Vector3.new(0.200000003, 0.200000003, 0.272499979)
o92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o92.Color = Color3.new(0.105882, 0.164706, 0.207843)
o93 = Instance.new("SpecialMesh")
o93.Parent = o92
o93.Scale = Vector3.new(1, 0.9375, 1)
o93.MeshType = Enum.MeshType.Wedge
o94 = Instance.new("Part")
o94.Parent = MG2
o94.Material = Enum.Material.SmoothPlastic
o94.BrickColor = BrickColor.new("Dark stone grey")
o94.Position = Vector3.new(-13.1051302, 0.809053004, 2.5687499)
o94.Rotation = Vector3.new(-4.88533216e-012, -1.49777912e-009, 179.965729)
o94.Anchored = true
o94.CFrame = CFrame.new(-13.1051302, 0.809053004, 2.5687499, -0.999999821, -0.000598029234, -2.6141176e-011, 0.000598029234, -0.999999821, 8.52651283e-014, -2.61406903e-011, -8.17124146e-014, 1)
o94.FormFactor = Enum.FormFactor.Custom
o94.Size = Vector3.new(0.212500006, 0.200000003, 0.200000003)
o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0.388235, 0.372549, 0.384314)
o95 = Instance.new("SpecialMesh")
o95.Parent = o94
o95.Scale = Vector3.new(1, 0.5, 0.737499952)
o95.MeshType = Enum.MeshType.Wedge
o96 = Instance.new("Part")
o96.Parent = MG2
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Dark stone grey")
o96.Position = Vector3.new(-13.1051617, 0.771555007, 4.02375078)
o96.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o96.Anchored = true
o96.CFrame = CFrame.new(-13.1051617, 0.771555007, 4.02375078, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o96.FormFactor = Enum.FormFactor.Custom
o96.Size = Vector3.new(0.212500006, 0.200000003, 0.200000003)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0.388235, 0.372549, 0.384314)
o97 = Instance.new("BlockMesh")
o97.Parent = o96
o97.Scale = Vector3.new(1, 0.5, 0.81249994)
o98 = Instance.new("Part")
o98.Parent = MG2
o98.Material = Enum.Material.SmoothPlastic
o98.BrickColor = BrickColor.new("Black")
o98.Position = Vector3.new(-13.1051617, 0.771555007, 5.02375078)
o98.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o98.Anchored = true
o98.CFrame = CFrame.new(-13.1051617, 0.771555007, 5.02375078, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o98.FormFactor = Enum.FormFactor.Custom
o98.Size = Vector3.new(0.200000003, 0.200000003, 1.83749998)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0.105882, 0.164706, 0.207843)
o99 = Instance.new("BlockMesh")
o99.Parent = o98
o99.Scale = Vector3.new(0.9375, 0.5, 1)
MG200 = Instance.new("Part")
MG200.Parent = MG2
MG200.Material = Enum.Material.SmoothPlastic
MG200.BrickColor = BrickColor.new("Black")
MG200.Position = Vector3.new(-13.2301617, 0.771631002, 5.02375078)
MG200.Rotation = Vector3.new(90, 89.9657364, 90)
MG200.Anchored = true
MG200.CFrame = CFrame.new(-13.2301617, 0.771631002, 5.02375078, -2.6141176e-011, -0.000598029234, 0.999999821, 8.52651283e-014, -0.999999821, -0.000598029234, 1, -8.17124146e-014, 2.61406903e-011)
MG200.FormFactor = Enum.FormFactor.Custom
MG200.Size = Vector3.new(1.83749998, 0.200000003, 0.200000003)
MG200.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG200.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG200.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG200.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG200.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG200.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG200.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG201 = Instance.new("SpecialMesh")
MG201.Parent = MG200
MG201.Scale = Vector3.new(1, 0.5, 0.3125)
MG201.MeshType = Enum.MeshType.Wedge
MG202 = Instance.new("Part")
MG202.Parent = MG2
MG202.Material = Enum.Material.SmoothPlastic
MG202.BrickColor = BrickColor.new("Black")
MG202.Position = Vector3.new(-13.1051464, 0.784052014, 2.58000302)
MG202.Rotation = Vector3.new(-180, 6.6715824e-009, 0.0342645533)
MG202.Anchored = true
MG202.CFrame = CFrame.new(-13.1051464, 0.784052014, 2.58000302, 0.999999821, -0.000598029234, 1.16441079e-010, -0.000598029234, -0.999999821, 1.50995675e-007, 2.61406903e-011, -1.50995902e-007, -1)
MG202.FormFactor = Enum.FormFactor.Custom
MG202.Size = Vector3.new(0.200000003, 0.275000006, 0.349999994)
MG202.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG202.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG202.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG202.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG202.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG202.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG202.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG203 = Instance.new("BlockMesh")
MG203.Parent = MG202
MG203.Scale = Vector3.new(1, 1.5, 1)
MG204 = Instance.new("Part")
MG204.Parent = MG2
MG204.Material = Enum.Material.SmoothPlastic
MG204.BrickColor = BrickColor.new("Black")
MG204.Position = Vector3.new(-13.1054363, 0.339848012, 2.84438396)
MG204.Rotation = Vector3.new(-152, 0.0160862319, -179.969757)
MG204.Anchored = true
MG204.CFrame = CFrame.new(-13.1054363, 0.339848012, 2.84438396, -0.999999821, 0.000527877419, 0.000280757697, 0.000597895938, 0.882947385, 0.469471455, -7.09143677e-008, 0.469471544, -0.882947624)
MG204.FormFactor = Enum.FormFactor.Custom
MG204.Size = Vector3.new(0.200000003, 0.649999976, 0.224999994)
MG204.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG204.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG204.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG204.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG204.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG204.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG204.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG205 = Instance.new("BlockMesh")
MG205.Parent = MG204
MG206 = Instance.new("Part")
MG206.Parent = MG2
MG206.Material = Enum.Material.SmoothPlastic
MG206.BrickColor = BrickColor.new("Really black")
MG206.Position = Vector3.new(-13.1050081, 1.01655102, 5.29250383)
MG206.Rotation = Vector3.new(180, 3.37225974e-005, -179.967255)
MG206.Anchored = true
MG206.CFrame = CFrame.new(-13.1050081, 1.01655102, 5.29250383, -0.999999821, 0.000571652199, 5.88570344e-007, 0.000571652199, 0.999999821, -1.51347891e-007, -5.88656803e-007, -1.51011221e-007, -1)
MG206.FormFactor = Enum.FormFactor.Custom
MG206.Size = Vector3.new(0.224999994, 0.200000003, 0.200000003)
MG206.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG206.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG206.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG206.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG206.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG206.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG206.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MG207 = Instance.new("BlockMesh")
MG207.Parent = MG206
MG207.Scale = Vector3.new(1, 0.25, 0.625)
MG208 = Instance.new("Part")
MG208.Parent = MG2
MG208.Material = Enum.Material.SmoothPlastic
MG208.BrickColor = BrickColor.new("Black")
MG208.Position = Vector3.new(-13.1050539, 0.946550012, 5.96750021)
MG208.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
MG208.Anchored = true
MG208.CFrame = CFrame.new(-13.1050539, 0.946550012, 5.96750021, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
MG208.FormFactor = Enum.FormFactor.Custom
MG208.Size = Vector3.new(0.200000003, 0.25, 0.200000003)
MG208.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG208.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG208.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG208.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG208.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG208.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG208.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG209 = Instance.new("SpecialMesh")
MG209.Parent = MG208
MG209.Scale = Vector3.new(0.9375, 1, 0.625)
MG209.MeshType = Enum.MeshType.Wedge
MG210 = Instance.new("Part")
MG210.Parent = MG2
MG210.Material = Enum.Material.SmoothPlastic
MG210.BrickColor = BrickColor.new("Really black")
MG210.Position = Vector3.new(-13.1050243, 1.01654303, 5.46750021)
MG210.Rotation = Vector3.new(180, 3.37225974e-005, -179.967255)
MG210.Anchored = true
MG210.CFrame = CFrame.new(-13.1050243, 1.01654303, 5.46750021, -0.999999821, 0.000571652199, 5.88570344e-007, 0.000571652199, 0.999999821, -1.51347891e-007, -5.88656803e-007, -1.51011221e-007, -1)
MG210.FormFactor = Enum.FormFactor.Custom
MG210.Size = Vector3.new(0.224999994, 0.200000003, 0.200000003)
MG210.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG210.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG210.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG210.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG210.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG210.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG210.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MG211 = Instance.new("BlockMesh")
MG211.Parent = MG210
MG211.Scale = Vector3.new(1, 0.25, 0.625)
MG212 = Instance.new("Part")
MG212.Name = "Mag3"
MG212.Parent = MG2
MG212.Material = Enum.Material.SmoothPlastic
MG212.BrickColor = BrickColor.new("Black")
MG212.Position = Vector3.new(-12.8283663, 0.271905988, 3.75000095)
MG212.Rotation = Vector3.new(-89.9998779, -89.9476624, -90.0001221)
MG212.Anchored = true
MG212.CFrame = CFrame.new(-12.8283663, 0.271905988, 3.75000095, -1.26281396e-009, 0.000598036626, -0.999999583, 1.36095437e-007, 0.999999762, 0.000598021667, 0.99999994, -1.36094584e-007, 1.29192035e-009)
MG212.FormFactor = Enum.FormFactor.Custom
MG212.Size = Vector3.new(0.40476191, 0.357142866, 0.357142866)
MG212.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG212.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG212.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG212.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG212.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG212.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG212.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG213 = Instance.new("BlockMesh")
MG213.Parent = MG212
MG214 = Instance.new("Part")
MG214.Name = "Mag1"
MG214.Parent = MG2
MG214.Material = Enum.Material.SmoothPlastic
MG214.BrickColor = BrickColor.new("Black")
MG214.Position = Vector3.new(-13.116106, 0.153043002, 3.75483799)
MG214.Rotation = Vector3.new(-90, -89.9657364, -90)
MG214.Anchored = true
MG214.CFrame = CFrame.new(-13.116106, 0.153043002, 3.75483799, -2.61406886e-011, 0.000598029234, -0.999999821, 7.10542736e-015, 0.999999821, 0.000598029234, 1, 7.10542736e-015, -2.61406886e-011)
MG214.FormFactor = Enum.FormFactor.Custom
MG214.Size = Vector3.new(0.40476191, 0.200000003, 0.261904776)
MG214.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG214.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG214.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG214.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG214.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG214.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG214.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG215 = Instance.new("BlockMesh")
MG215.Parent = MG214
MG215.Scale = Vector3.new(1, 0.59523809, 1)
MG216 = Instance.new("Part")
MG216.Name = "Mag5"
MG216.Parent = MG2
MG216.Material = Enum.Material.SmoothPlastic
MG216.BrickColor = BrickColor.new("Black")
MG216.Position = Vector3.new(-12.6496716, 0.450215012, 3.749856)
MG216.Rotation = Vector3.new(89.9950943, 89.9476624, 0.00869047735)
MG216.Anchored = true
MG216.CFrame = CFrame.new(-12.6496716, 0.450215012, 3.749856, 0.000598073879, -9.07143161e-008, 0.999999583, 0.999999762, 6.16431208e-008, -0.000598066952, -6.15887785e-008, 0.99999994, 5.12501686e-008)
MG216.FormFactor = Enum.FormFactor.Custom
MG216.Size = Vector3.new(0.738095224, 0.40476191, 0.714285731)
MG216.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG216.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG216.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG216.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG216.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG216.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG216.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG217 = Instance.new("CylinderMesh")
MG217.Parent = MG216
MG218 = Instance.new("Part")
MG218.Name = "Mag2"
MG218.Parent = MG2
MG218.Material = Enum.Material.SmoothPlastic
MG218.BrickColor = BrickColor.new("Black")
MG218.Position = Vector3.new(-13.3997784, 0.27225101, 3.75000095)
MG218.Rotation = Vector3.new(-89.9998779, -89.9476624, -90.0001297)
MG218.Anchored = true
MG218.CFrame = CFrame.new(-13.3997784, 0.27225101, 3.75000095, -1.32519251e-009, 0.000598036626, -0.999999583, 3.17873337e-008, 0.999999762, 0.000598021667, 0.99999994, -3.17864597e-008, 1.29192035e-009)
MG218.FormFactor = Enum.FormFactor.Custom
MG218.Size = Vector3.new(0.40476191, 0.357142866, 0.357142866)
MG218.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG218.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG218.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG218.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG218.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG218.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG218.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG219 = Instance.new("BlockMesh")
MG219.Parent = MG218
MG220 = Instance.new("Part")
MG220.Name = "Mag4"
MG220.Parent = MG2
MG220.Material = Enum.Material.SmoothPlastic
MG220.BrickColor = BrickColor.new("Black")
MG220.Position = Vector3.new(-13.5782518, 0.450926989, 3.75000095)
MG220.Rotation = Vector3.new(89.9950943, 89.9476624, 0.00869047828)
MG220.Anchored = true
MG220.CFrame = CFrame.new(-13.5782518, 0.450926989, 3.75000095, 0.000913456955, -1.38550817e-007, 0.999999583, 0.999999583, -6.60096266e-005, -0.000913456955, 6.60097212e-005, 1, 7.82538194e-008)
MG220.FormFactor = Enum.FormFactor.Custom
MG220.Size = Vector3.new(0.714285731, 0.40476191, 0.714285731)
MG220.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG220.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG220.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG220.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG220.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG220.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG220.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG221 = Instance.new("CylinderMesh")
MG221.Parent = MG220
MG222 = Instance.new("Part")
MG222.Name = "Mag"
MG222.Parent = MG2
MG222.Material = Enum.Material.SmoothPlastic
MG222.BrickColor = BrickColor.new("Black")
MG222.Position = Vector3.new(-13.1140261, 0.438744009, 3.75001597)
MG222.Rotation = Vector3.new(-89.9998779, -89.9476624, -90.0001297)
MG222.Anchored = true
MG222.CFrame = CFrame.new(-13.1140261, 0.438744009, 3.75001597, -1.32519251e-009, 0.000598036626, -0.999999583, 3.17873337e-008, 0.999999762, 0.000598021667, 0.99999994, -3.17864597e-008, 1.29192035e-009)
MG222.FormFactor = Enum.FormFactor.Custom
MG222.Size = Vector3.new(0.40476191, 0.452380955, 0.200000003)
MG222.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG222.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG222.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG222.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG222.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG222.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG222.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG223 = Instance.new("BlockMesh")
MG223.Parent = MG222
MG223.Scale = Vector3.new(1, 1, 0.59523809)
MG224 = Instance.new("Part")
MG224.Name = "B1"
MG224.Parent = MG2
MG224.Material = Enum.Material.SmoothPlastic
MG224.BrickColor = BrickColor.new("Mid gray")
MG224.Transparency = 1
MG224.Position = Vector3.new(-13.0299959, 1.041448, 4.12999821)
MG224.Rotation = Vector3.new(-0, 90, 0)
MG224.Anchored = true
MG224.CFrame = CFrame.new(-13.0299959, 1.041448, 4.12999821, -0, 0, 1, -0, 1, 0, -1, 0, 0)
MG224.FormFactor = Enum.FormFactor.Custom
MG224.Size = Vector3.new(0.200000003, 0.200000003, 0.337500006)
MG224.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG224.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG224.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG224.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG224.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG224.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG224.Color = Color3.new(0.803922, 0.803922, 0.803922)
MG225 = Instance.new("BlockMesh")
MG225.Parent = MG224
MG225.Scale = Vector3.new(0.4375, 0.25, 1)
MG226 = Instance.new("Part")
MG226.Name = "A4"
MG226.Parent = MG2
MG226.Material = Enum.Material.SmoothPlastic
MG226.BrickColor = BrickColor.new("Mid gray")
MG226.Position = Vector3.new(-13.1050081, 1.04155099, 4.29875183)
MG226.Rotation = Vector3.new(-180, 4.49328086e-009, -179.965744)
MG226.Anchored = true
MG226.CFrame = CFrame.new(-13.1050081, 1.04155099, 4.29875183, -0.999999821, 0.000597941806, 7.84225462e-011, 0.000597941806, 0.999999821, 8.74226771e-008, -2.61480646e-011, 8.74228547e-008, -1)
MG226.FormFactor = Enum.FormFactor.Custom
MG226.Size = Vector3.new(0.200000003, 0.200000003, 0.337500006)
MG226.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG226.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG226.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG226.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG226.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG226.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG226.Color = Color3.new(0.803922, 0.803922, 0.803922)
MG227 = Instance.new("BlockMesh")
MG227.Parent = MG226
MG227.Scale = Vector3.new(0.4375, 0.25, 1)
MG228 = Instance.new("Part")
MG228.Name = "Flash"
MG228.Parent = MG2
MG228.Material = Enum.Material.SmoothPlastic
MG228.BrickColor = BrickColor.new("Bright orange")
MG228.Transparency = 1
MG228.Position = Vector3.new(-13.1051235, 0.852800012, 7.37376499)
MG228.Rotation = Vector3.new(90, -0.0342645533, 1.49777934e-009)
MG228.Anchored = true
MG228.CFrame = CFrame.new(-13.1051235, 0.852800012, 7.37376499, 0.999999821, -2.6141176e-011, -0.000598029234, -0.000598029234, 8.52651283e-014, -0.999999821, 2.61406903e-011, 1, -8.17124146e-014)
MG228.FormFactor = Enum.FormFactor.Custom
MG228.Size = Vector3.new(0.200000003, 0.462500006, 0.200000003)
MG228.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG228.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG228.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG228.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG228.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG228.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG228.Color = Color3.new(0.854902, 0.521569, 0.254902)
MG229 = Instance.new("SpecialMesh")
MG229.Parent = MG228
MG229.Scale = Vector3.new(1.875, 1.69999993, 1.875)
MG229.MeshType = Enum.MeshType.Sphere
MG230 = Instance.new("Part")
MG230.Name = "Handle"
MG230.Parent = MG2
MG230.Material = Enum.Material.SmoothPlastic
MG230.BrickColor = BrickColor.new("Dark stone grey")
MG230.Position = Vector3.new(-13.1053143, 0.50405401, 3.16750503)
MG230.Rotation = Vector3.new(-180, 4.49328086e-009, -179.965744)
MG230.Anchored = true
MG230.CFrame = CFrame.new(-13.1053143, 0.50405401, 3.16750503, -0.999999821, 0.000597941806, 7.84225462e-011, 0.000597941806, 0.999999821, 8.74226771e-008, -2.61480646e-011, 8.74228547e-008, -1)
MG230.FormFactor = Enum.FormFactor.Custom
MG230.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
MG230.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG230.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG230.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG230.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG230.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG230.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG230.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG231 = Instance.new("BlockMesh")
MG231.Parent = MG230
MG231.Scale = Vector3.new(0.125, 0.675000012, 0.125)
MG232 = Instance.new("Sound")
MG232.Name = "Empty"
MG232.Parent = MG230
MG232.SoundId = "rbxasset://sounds//clickfast.wav"
MG232.Volume = 1
MG233 = Instance.new("Sound")
MG233.Name = "M1"
MG233.Parent = MG230
MG233.Pitch = 0.75
MG233.SoundId = "http://roblox.com/asset/?id=10209834"
MG233.Volume = 1
MG234 = Instance.new("Sound")
MG234.Name = "M2"
MG234.Parent = MG230
MG234.SoundId = "http://roblox.com/asset/?id=10209636"
MG234.Volume = 1
MG235 = Instance.new("Sound")
MG235.Name = "M3"
MG235.Parent = MG230
MG235.SoundId = "http://roblox.com/asset/?id=10209881"
MG235.Volume = 1
MG235.PlayOnRemove = true
MG236 = Instance.new("Sound")
MG236.Name = "Fire2"
MG236.Parent = MG230
MG236.Pitch = 1.6000000238419
MG236.SoundId = "http://roblox.com/asset/?id=10209859"
MG236.Volume = 1
MG237 = Instance.new("Sound")
MG237.Name = "Fire3"
MG237.Parent = MG230
MG237.SoundId = "http://roblox.com/asset/?id=10209859"
MG237.Volume = 1
MG238 = Instance.new("Sound")
MG238.Name = "Fire"
MG238.Parent = MG230
MG238.Pitch = 3
MG238.SoundId = "http://roblox.com/asset/?id=10209859"
MG238.Volume = 1
MG240 = Instance.new("Part")
MG240.Name = "A1"
MG240.Parent = MG2
MG240.Material = Enum.Material.SmoothPlastic
MG240.Position = Vector3.new(-13.1926098, 0.865357995, 3.68624902)
MG240.Rotation = Vector3.new(-180, 4.49328086e-009, -179.965744)
MG240.Anchored = true
MG240.CFrame = CFrame.new(-13.1926098, 0.865357995, 3.68624902, -0.999999821, 0.000597941806, 7.84225462e-011, 0.000597941806, 0.999999821, 8.74226771e-008, -2.61480646e-011, 8.74228547e-008, -1)
MG240.FormFactor = Enum.FormFactor.Custom
MG240.Size = Vector3.new(0.200000003, 0.200000003, 0.512499988)
MG240.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG240.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG240.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG240.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG240.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG240.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG241 = Instance.new("BlockMesh")
MG241.Parent = MG240
MG241.Scale = Vector3.new(0.125, 0.4375, 1)
MG242 = Instance.new("Part")
MG242.Name = "A2"
MG242.Parent = MG2
MG242.Material = Enum.Material.SmoothPlastic
MG242.BrickColor = BrickColor.new("Really black")
MG242.Position = Vector3.new(-13.1049938, 1.04030001, 3.77375102)
MG242.Rotation = Vector3.new(-180, 6.6715824e-009, -179.965744)
MG242.Anchored = true
MG242.CFrame = CFrame.new(-13.1049938, 1.04030001, 3.77375102, -0.999999821, 0.000597878243, 1.16441079e-010, 0.000597878243, 0.999999821, 1.50995675e-007, -2.61650545e-011, 1.50995902e-007, -1)
MG242.FormFactor = Enum.FormFactor.Custom
MG242.Size = Vector3.new(0.200000003, 0.200000003, 0.712499976)
MG242.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG242.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG242.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG242.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG242.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG242.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG242.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MG243 = Instance.new("BlockMesh")
MG243.Parent = MG242
MG243.Scale = Vector3.new(0.625, 0.3125, 1)
MG244 = Instance.new("Part")
MG244.Name = "A3"
MG244.Parent = MG2
MG244.Material = Enum.Material.SmoothPlastic
MG244.BrickColor = BrickColor.new("Really black")
MG244.Position = Vector3.new(-13.1049938, 1.04030001, 4.12999821)
MG244.Rotation = Vector3.new(-180, 4.49328086e-009, -179.965744)
MG244.Anchored = true
MG244.CFrame = CFrame.new(-13.1049938, 1.04030001, 4.12999821, -0.999999821, 0.000597941806, 7.84225462e-011, 0.000597941806, 0.999999821, 8.74226771e-008, -2.61480646e-011, 8.74228547e-008, -1)
MG244.FormFactor = Enum.FormFactor.Custom
MG244.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
MG244.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG244.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG244.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG244.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG244.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG244.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG244.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MG245 = Instance.new("CylinderMesh")
MG245.Parent = MG244
MG245.Scale = Vector3.new(0.625, 0.3125, 0.625)
MG246 = Instance.new("Part")
MG246.Parent = MG2
MG246.Material = Enum.Material.SmoothPlastic
MG246.BrickColor = BrickColor.new("Dark stone grey")
MG246.Position = Vector3.new(-13.1684084, 1.02303898, 3.54055095)
MG246.Rotation = Vector3.new(90, 89.9657364, -90)
MG246.Anchored = true
MG246.CFrame = CFrame.new(-13.1684084, 1.02303898, 3.54055095, 7.13189273e-012, 0.000598029234, 0.999999821, -3.17866231e-008, 0.999999821, -0.000598029234, -1, -3.17863886e-008, 2.61406903e-011)
MG246.FormFactor = Enum.FormFactor.Custom
MG246.Size = Vector3.new(1.85714281, 0.200000003, 0.200000003)
MG246.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG246.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG246.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG246.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG246.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG246.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG246.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG247 = Instance.new("SpecialMesh")
MG247.Parent = MG246
MG247.Scale = Vector3.new(1, 0.357142866, 0.119047619)
MG247.MeshType = Enum.MeshType.Wedge
MG248 = Instance.new("Part")
MG248.Parent = MG2
MG248.Material = Enum.Material.SmoothPlastic
MG248.BrickColor = BrickColor.new("Dark stone grey")
MG248.Position = Vector3.new(-13.1026583, 0.986799002, 1.52994704)
MG248.Rotation = Vector3.new(-89.9958191, -89.9476624, -89.9958267)
MG248.Anchored = true
MG248.CFrame = CFrame.new(-13.1026583, 0.986799002, 1.52994704, 4.36068177e-008, 0.000598072831, -0.999999583, -1.31160107e-007, 0.999999762, 0.000598072831, 0.99999994, 1.31134328e-007, 4.36852439e-008)
MG248.FormFactor = Enum.FormFactor.Custom
MG248.Size = Vector3.new(0.833333313, 0.200000003, 0.200000003)
MG248.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG248.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG248.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG248.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG248.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG248.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG248.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG249 = Instance.new("BlockMesh")
MG249.Parent = MG248
MG249.Scale = Vector3.new(1, 0.238095239, 0.59523809)
MG250 = Instance.new("Part")
MG250.Parent = MG2
MG250.Material = Enum.Material.SmoothPlastic
MG250.BrickColor = BrickColor.new("Dark stone grey")
MG250.Position = Vector3.new(-13.1052523, 0.632848978, 3.0604949)
MG250.Rotation = Vector3.new(45, -0.0242306199, -90.024231)
MG250.Anchored = true
MG250.CFrame = CFrame.new(-13.1052523, 0.632848978, 3.0604949, -0.000422914163, 0.999999821, -0.000422904093, -0.70710659, -0.000598083832, -0.707106769, -0.707106829, -7.19010851e-009, 0.707106709)
MG250.FormFactor = Enum.FormFactor.Custom
MG250.Size = Vector3.new(0.200000003, 0.224999994, 0.200000003)
MG250.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG250.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG250.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG250.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG250.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG250.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG250.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG251 = Instance.new("BlockMesh")
MG251.Parent = MG250
MG251.Scale = Vector3.new(0.5625, 1, 0.125)
MG252 = Instance.new("Part")
MG252.Parent = MG2
MG252.Material = Enum.Material.SmoothPlastic
MG252.BrickColor = BrickColor.new("Black")
MG252.Position = Vector3.new(-13.1052675, 0.584051013, 3.44249797)
MG252.Rotation = Vector3.new(90, -0.0342645533, -90)
MG252.Anchored = true
MG252.CFrame = CFrame.new(-13.1052675, 0.584051013, 3.44249797, -4.36590994e-008, 0.999999821, -0.000598029234, 4.37374439e-008, -0.000598029234, -0.999999821, -1, -4.36852474e-008, -4.37114664e-008)
MG252.FormFactor = Enum.FormFactor.Custom
MG252.Size = Vector3.new(0.200000003, 0.224999994, 0.200000003)
MG252.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG252.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG252.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG252.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG252.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG252.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG252.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG253 = Instance.new("CylinderMesh")
MG253.Parent = MG252
MG253.Scale = Vector3.new(0.3125, 1, 0.3125)
MG254 = Instance.new("Part")
MG254.Parent = MG2
MG254.Material = Enum.Material.SmoothPlastic
MG254.BrickColor = BrickColor.new("Dark stone grey")
MG254.Position = Vector3.new(-13.0969982, 1.02299702, 3.56911588)
MG254.Rotation = Vector3.new(-90, -89.9657364, -90)
MG254.Anchored = true
MG254.CFrame = CFrame.new(-13.0969982, 1.02299702, 3.56911588, -7.13189273e-012, 0.000598029234, -0.999999821, 3.17866231e-008, 0.999999821, 0.000598029234, 1, -3.17863886e-008, -2.61406903e-011)
MG254.FormFactor = Enum.FormFactor.Custom
MG254.Size = Vector3.new(1.85714281, 0.200000003, 0.200000003)
MG254.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG254.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG254.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG254.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG254.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG254.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG254.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG255 = Instance.new("BlockMesh")
MG255.Parent = MG254
MG255.Scale = Vector3.new(1, 0.357142866, 0.59523809)
MG256 = Instance.new("Part")
MG256.Parent = MG2
MG256.Material = Enum.Material.SmoothPlastic
MG256.BrickColor = BrickColor.new("Dark stone grey")
MG256.Position = Vector3.new(-13.1030779, 0.296310008, 1.339517)
MG256.Rotation = Vector3.new(-90, 0.034267053, -180)
MG256.Anchored = true
MG256.CFrame = CFrame.new(-13.1030779, 0.296310008, 1.339517, -0.999999583, 4.36068177e-008, 0.000598072831, 0.000598072831, -1.31160107e-007, 0.999999762, 4.36852439e-008, 0.99999994, 1.31134328e-007)
MG256.FormFactor = Enum.FormFactor.Custom
MG256.Size = Vector3.new(0.200000003, 0.261904776, 0.428571433)
MG256.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG256.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG256.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG256.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG256.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG256.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG256.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG257 = Instance.new("SpecialMesh")
MG257.Parent = MG256
MG257.Scale = Vector3.new(0.59523809, 1, 1)
MG257.MeshType = Enum.MeshType.Wedge
MG258 = Instance.new("Part")
MG258.Parent = MG2
MG258.Material = Enum.Material.SmoothPlastic
MG258.BrickColor = BrickColor.new("Dark stone grey")
MG258.Position = Vector3.new(-13.1028261, 0.712983012, 1.14908695)
MG258.Rotation = Vector3.new(-89.9958191, -89.9476624, -89.9958267)
MG258.Anchored = true
MG258.CFrame = CFrame.new(-13.1028261, 0.712983012, 1.14908695, 4.36068177e-008, 0.000598072831, -0.999999583, -1.31160107e-007, 0.999999762, 0.000598072831, 0.99999994, 1.31134328e-007, 4.36852439e-008)
MG258.FormFactor = Enum.FormFactor.Custom
MG258.Size = Vector3.new(0.200000003, 0.547619045, 0.200000003)
MG258.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG258.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG258.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG258.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG258.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG258.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG258.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG259 = Instance.new("BlockMesh")
MG259.Parent = MG258
MG259.Scale = Vector3.new(0.357142866, 1, 0.357142866)
MG260 = Instance.new("Part")
MG260.Parent = MG2
MG260.Material = Enum.Material.SmoothPlastic
MG260.BrickColor = BrickColor.new("Dark stone grey")
MG260.Position = Vector3.new(-13.1050463, 0.959055007, 3.68624902)
MG260.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
MG260.Anchored = true
MG260.CFrame = CFrame.new(-13.1050463, 0.959055007, 3.68624902, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
MG260.FormFactor = Enum.FormFactor.Custom
MG260.Size = Vector3.new(0.212500006, 0.200000003, 0.512499988)
MG260.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG260.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG260.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG260.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG260.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG260.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG260.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG261 = Instance.new("BlockMesh")
MG261.Parent = MG260
MG261.Scale = Vector3.new(1, 0.5, 1)
MG262 = Instance.new("Part")
MG262.Parent = MG2
MG262.Material = Enum.Material.SmoothPlastic
MG262.BrickColor = BrickColor.new("Dark stone grey")
MG262.Position = Vector3.new(-13.1030779, 0.296310008, 1.16092801)
MG262.Rotation = Vector3.new(-89.9958191, -89.9476624, -89.9958267)
MG262.Anchored = true
MG262.CFrame = CFrame.new(-13.1030779, 0.296310008, 1.16092801, 4.36068177e-008, 0.000598072831, -0.999999583, -1.31160107e-007, 0.999999762, 0.000598072831, 0.99999994, 1.31134328e-007, 4.36852439e-008)
MG262.FormFactor = Enum.FormFactor.Custom
MG262.Size = Vector3.new(0.200000003, 0.428571433, 0.200000003)
MG262.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG262.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG262.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG262.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG262.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG262.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG262.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG263 = Instance.new("BlockMesh")
MG263.Parent = MG262
MG263.Scale = Vector3.new(0.476190478, 1, 0.59523809)
MG264 = Instance.new("Part")
MG264.Parent = MG2
MG264.Material = Enum.Material.SmoothPlastic
MG264.BrickColor = BrickColor.new("Dark stone grey")
MG264.Position = Vector3.new(-13.102766, 0.820123017, 1.99430203)
MG264.Rotation = Vector3.new(-89.9958191, -89.9476624, -89.9958267)
MG264.Anchored = true
MG264.CFrame = CFrame.new(-13.102766, 0.820123017, 1.99430203, 4.36068177e-008, 0.000598072831, -0.999999583, -1.31160107e-007, 0.999999762, 0.000598072831, 0.99999994, 1.31134328e-007, 4.36852439e-008)
MG264.FormFactor = Enum.FormFactor.Custom
MG264.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
MG264.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG264.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG264.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG264.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG264.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG264.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG264.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG265 = Instance.new("BlockMesh")
MG265.Parent = MG264
MG265.Scale = Vector3.new(0.476190478, 0.952380955, 0.59523809)
MG266 = Instance.new("Part")
MG266.Parent = MG2
MG266.Material = Enum.Material.SmoothPlastic
MG266.BrickColor = BrickColor.new("Dark stone grey")
MG266.Position = Vector3.new(-13.102766, 0.820123017, 2.44669509)
MG266.Rotation = Vector3.new(-89.9958191, -89.9476624, -89.9958267)
MG266.Anchored = true
MG266.CFrame = CFrame.new(-13.102766, 0.820123017, 2.44669509, 4.36068177e-008, 0.000598072831, -0.999999583, -1.31160107e-007, 0.999999762, 0.000598072831, 0.99999994, 1.31134328e-007, 4.36852439e-008)
MG266.FormFactor = Enum.FormFactor.Custom
MG266.Size = Vector3.new(0.285714298, 0.200000003, 0.200000003)
MG266.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG266.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG266.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG266.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG266.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG266.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG266.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG267 = Instance.new("BlockMesh")
MG267.Parent = MG266
MG267.Scale = Vector3.new(1, 0.952380955, 0.59523809)
MG268 = Instance.new("Part")
MG268.Parent = MG2
MG268.Material = Enum.Material.SmoothPlastic
MG268.BrickColor = BrickColor.new("Dark stone grey")
MG268.Position = Vector3.new(-13.1028423, 0.68917197, 2.26810598)
MG268.Rotation = Vector3.new(90.0041809, 89.9476624, -90.0041733)
MG268.Anchored = true
MG268.CFrame = CFrame.new(-13.1028423, 0.68917197, 2.26810598, -4.36068177e-008, 0.000598072831, 0.999999583, 1.31160107e-007, 0.999999762, -0.000598072831, -0.99999994, 1.31134328e-007, -4.36852439e-008)
MG268.FormFactor = Enum.FormFactor.Custom
MG268.Size = Vector3.new(0.642857134, 0.200000003, 0.200000003)
MG268.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG268.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG268.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG268.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG268.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG268.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG268.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG269 = Instance.new("BlockMesh")
MG269.Parent = MG268
MG269.Scale = Vector3.new(1, 0.357142866, 0.59523809)
MG270 = Instance.new("Part")
MG270.Parent = MG2
MG270.Material = Enum.Material.SmoothPlastic
MG270.BrickColor = BrickColor.new("Dark stone grey")
MG270.Position = Vector3.new(-13.1029024, 0.578954995, 1.55423903)
MG270.Rotation = Vector3.new(-89.9958191, -89.9476624, -164.995819)
MG270.Anchored = true
MG270.CFrame = CFrame.new(-13.1029024, 0.578954995, 1.55423903, -0.000577682804, 0.000154834808, -0.999999583, -0.965925634, 0.258818865, 0.000598072831, 0.258818954, 0.965925813, 4.36852439e-008)
MG270.FormFactor = Enum.FormFactor.Custom
MG270.Size = Vector3.new(0.200000003, 0.880952358, 0.200000003)
MG270.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG270.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG270.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG270.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG270.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG270.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG270.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG271 = Instance.new("BlockMesh")
MG271.Parent = MG270
MG271.Scale = Vector3.new(0.476190478, 1, 0.59523809)
MG272 = Instance.new("Part")
MG272.Parent = MG2
MG272.Material = Enum.Material.SmoothPlastic
MG272.BrickColor = BrickColor.new("Dark stone grey")
MG272.Position = Vector3.new(-13.1026735, 0.962984025, 2.26810598)
MG272.Rotation = Vector3.new(-89.9958191, -89.9476624, -89.9958267)
MG272.Anchored = true
MG272.CFrame = CFrame.new(-13.1026735, 0.962984025, 2.26810598, 4.36068177e-008, 0.000598072831, -0.999999583, -1.31160107e-007, 0.999999762, 0.000598072831, 0.99999994, 1.31134328e-007, 4.36852439e-008)
MG272.FormFactor = Enum.FormFactor.Custom
MG272.Size = Vector3.new(0.642857134, 0.200000003, 0.200000003)
MG272.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG272.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG272.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG272.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG272.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG272.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG272.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG273 = Instance.new("BlockMesh")
MG273.Parent = MG272
MG273.Scale = Vector3.new(1, 0.476190478, 0.59523809)
MG274 = Instance.new("Part")
MG274.Parent = MG2
MG274.Material = Enum.Material.SmoothPlastic
MG274.Position = Vector3.new(-13.1029263, 0.546316028, 1.05387199)
MG274.Rotation = Vector3.new(-89.9958191, -89.9476624, -89.9958267)
MG274.Anchored = true
MG274.CFrame = CFrame.new(-13.1029263, 0.546316028, 1.05387199, 4.36068177e-008, 0.000598072831, -0.999999583, -1.31160107e-007, 0.999999762, 0.000598072831, 0.99999994, 1.31134328e-007, 4.36852439e-008)
MG274.FormFactor = Enum.FormFactor.Custom
MG274.Size = Vector3.new(0.200000003, 0.928571403, 0.200000003)
MG274.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG274.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG274.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG274.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG274.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG274.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG275 = Instance.new("BlockMesh")
MG275.Parent = MG274
MG275.Scale = Vector3.new(0.357142866, 1, 0.59523809)
MG276 = Instance.new("Part")
MG276.Parent = MG2
MG276.Material = Enum.Material.SmoothPlastic
MG276.BrickColor = BrickColor.new("Dark stone grey")
MG276.Position = Vector3.new(-13.1029263, 0.546316028, 1.10148001)
MG276.Rotation = Vector3.new(-89.9958191, -89.9476624, -89.9958267)
MG276.Anchored = true
MG276.CFrame = CFrame.new(-13.1029263, 0.546316028, 1.10148001, 4.36068177e-008, 0.000598072831, -0.999999583, -1.31160107e-007, 0.999999762, 0.000598072831, 0.99999994, 1.31134328e-007, 4.36852439e-008)
MG276.FormFactor = Enum.FormFactor.Custom
MG276.Size = Vector3.new(0.200000003, 0.928571403, 0.200000003)
MG276.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG276.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG276.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG276.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG276.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG276.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG276.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG277 = Instance.new("BlockMesh")
MG277.Parent = MG276
MG277.Scale = Vector3.new(0.119047619, 1, 0.59523809)
MG278 = Instance.new("Part")
MG278.Parent = MG2
MG278.Material = Enum.Material.SmoothPlastic
MG278.BrickColor = BrickColor.new("Dark stone grey")
MG278.Position = Vector3.new(-13.1026278, 1.046332, 2.42288995)
MG278.Rotation = Vector3.new(90.0000076, -0.034267053, 180)
MG278.Anchored = true
MG278.CFrame = CFrame.new(-13.1026278, 1.046332, 2.42288995, -0.999999583, -4.36068177e-008, -0.000598072831, 0.000598072831, 1.31160107e-007, -0.999999762, 4.36852439e-008, -0.99999994, -1.31134328e-007)
MG278.FormFactor = Enum.FormFactor.Custom
MG278.Size = Vector3.new(0.200000003, 0.333333343, 0.200000003)
MG278.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG278.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG278.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG278.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG278.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG278.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG278.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG279 = Instance.new("SpecialMesh")
MG279.Parent = MG278
MG279.Scale = Vector3.new(0.59523809, 1, 0.357142866)
MG279.MeshType = Enum.MeshType.Wedge
MG280 = Instance.new("Part")
MG280.Parent = MG2
MG280.Material = Enum.Material.SmoothPlastic
MG280.BrickColor = BrickColor.new("Dark stone grey")
MG280.Position = Vector3.new(-13.1028881, 0.617747009, 2.45853496)
MG280.Rotation = Vector3.new(-90, 0.034267053, 2.49848767e-006)
MG280.Anchored = true
MG280.CFrame = CFrame.new(-13.1028881, 0.617747009, 2.45853496, 0.999999583, -4.36068177e-008, 0.000598072831, -0.000598072831, 1.31160107e-007, 0.999999762, -4.36852439e-008, -0.99999994, 1.31134328e-007)
MG280.FormFactor = Enum.FormFactor.Custom
MG280.Size = Vector3.new(0.200000003, 0.261904776, 0.200000003)
MG280.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG280.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG280.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG280.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG280.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG280.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG280.Color = Color3.new(0.388235, 0.372549, 0.384314)
MG281 = Instance.new("SpecialMesh")
MG281.Parent = MG280
MG281.Scale = Vector3.new(0.59523809, 1, 0.357142866)
MG281.MeshType = Enum.MeshType.Wedge
MG282 = Instance.new("Part")
MG282.Parent = MG2
MG282.Material = Enum.Material.SmoothPlastic
MG282.BrickColor = BrickColor.new("Really black")
MG282.Position = Vector3.new(-13.1050081, 1.01655102, 5.11750078)
MG282.Rotation = Vector3.new(-180, 6.6715824e-009, -179.965744)
MG282.Anchored = true
MG282.CFrame = CFrame.new(-13.1050081, 1.01655102, 5.11750078, -0.999999821, 0.000597878243, 1.16441079e-010, 0.000597878243, 0.999999821, 1.50995675e-007, -2.61650545e-011, 1.50995902e-007, -1)
MG282.FormFactor = Enum.FormFactor.Custom
MG282.Size = Vector3.new(0.224999994, 0.200000003, 0.200000003)
MG282.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG282.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG282.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG282.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG282.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG282.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG282.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MG283 = Instance.new("BlockMesh")
MG283.Parent = MG282
MG283.Scale = Vector3.new(1, 0.25, 0.625)
MG284 = Instance.new("Part")
MG284.Parent = MG2
MG284.Material = Enum.Material.SmoothPlastic
MG284.BrickColor = BrickColor.new("Black")
MG284.Position = Vector3.new(-13.2300539, 0.946626008, 5.96750021)
MG284.Rotation = Vector3.new(-5.97554754e-006, 1.45965475e-006, -0.0342645533)
MG284.Anchored = true
MG284.CFrame = CFrame.new(-13.2300539, 0.946626008, 5.96750021, 0.999999821, 0.000598029234, 2.54757815e-008, -0.000598029234, 0.999999821, 1.0429298e-007, -2.541341e-008, -1.04308057e-007, 1)
MG284.FormFactor = Enum.FormFactor.Custom
MG284.Size = Vector3.new(0.200000003, 0.25, 0.200000003)
MG284.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG284.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG284.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG284.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG284.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG284.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG284.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG285 = Instance.new("SpecialMesh")
MG285.Parent = MG284
MG285.MeshId = "http://www.roblox.com/Asset/?id=11294911"
MG285.Scale = Vector3.new(0.125, 0.5, 0.25)
MG285.MeshType = Enum.MeshType.FileMesh
MG286 = Instance.new("Part")
MG286.Parent = MG2
MG286.Material = Enum.Material.SmoothPlastic
MG286.BrickColor = BrickColor.new("Black")
MG286.Position = Vector3.new(-12.9801617, 0.771479011, 5.00499678)
MG286.Rotation = Vector3.new(-90, -89.9657364, 90)
MG286.Anchored = true
MG286.CFrame = CFrame.new(-12.9801617, 0.771479011, 5.00499678, 2.6141176e-011, -0.000598029234, -0.999999821, -8.52651283e-014, -0.999999821, 0.000598029234, -1, -8.17124146e-014, -2.61406903e-011)
MG286.FormFactor = Enum.FormFactor.Custom
MG286.Size = Vector3.new(1.83749998, 0.200000003, 0.200000003)
MG286.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG286.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG286.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG286.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG286.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG286.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG286.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG287 = Instance.new("SpecialMesh")
MG287.Parent = MG286
MG287.Scale = Vector3.new(1, 0.5, 0.3125)
MG287.MeshType = Enum.MeshType.Wedge
MG288 = Instance.new("Part")
MG288.Parent = MG2
MG288.Material = Enum.Material.SmoothPlastic
MG288.BrickColor = BrickColor.new("Black")
MG288.Position = Vector3.new(-13.2300539, 0.946626008, 5.38000584)
MG288.Rotation = Vector3.new(90, 89.9657364, -90)
MG288.Anchored = true
MG288.CFrame = CFrame.new(-13.2300539, 0.946626008, 5.38000584, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, 0.999999821, -0.000598029234, -1, 8.17124146e-014, 2.61406903e-011)
MG288.FormFactor = Enum.FormFactor.Custom
MG288.Size = Vector3.new(1.04999995, 0.25, 0.200000003)
MG288.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG288.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG288.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG288.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG288.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG288.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG288.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG289 = Instance.new("SpecialMesh")
MG289.Parent = MG288
MG289.Scale = Vector3.new(1, 1, 0.3125)
MG289.MeshType = Enum.MeshType.Wedge
MG290 = Instance.new("Part")
MG290.Parent = MG2
MG290.Material = Enum.Material.SmoothPlastic
MG290.BrickColor = BrickColor.new("Black")
MG290.Position = Vector3.new(-12.9801617, 0.771479011, 5.98625183)
MG290.Rotation = Vector3.new(-4.88533216e-012, -1.49777912e-009, 179.965729)
MG290.Anchored = true
MG290.CFrame = CFrame.new(-12.9801617, 0.771479011, 5.98625183, -0.999999821, -0.000598029234, -2.6141176e-011, 0.000598029234, -0.999999821, 8.52651283e-014, -2.61406903e-011, -8.17124146e-014, 1)
MG290.FormFactor = Enum.FormFactor.Custom
MG290.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
MG290.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG290.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG290.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG290.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG290.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG290.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG290.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG291 = Instance.new("SpecialMesh")
MG291.Parent = MG290
MG291.MeshId = "http://www.roblox.com/Asset/?id=11294911"
MG291.Scale = Vector3.new(0.125, 0.200000003, 0.174999997)
MG291.MeshType = Enum.MeshType.FileMesh
MG292 = Instance.new("Part")
MG292.Parent = MG2
MG292.Material = Enum.Material.SmoothPlastic
MG292.BrickColor = BrickColor.new("Really black")
MG292.Position = Vector3.new(-13.1050243, 1.01652801, 5.81750584)
MG292.Rotation = Vector3.new(180, 3.37225974e-005, -179.967255)
MG292.Anchored = true
MG292.CFrame = CFrame.new(-13.1050243, 1.01652801, 5.81750584, -0.999999821, 0.000571652199, 5.88570344e-007, 0.000571652199, 0.999999821, -1.51347891e-007, -5.88656803e-007, -1.51011221e-007, -1)
MG292.FormFactor = Enum.FormFactor.Custom
MG292.Size = Vector3.new(0.224999994, 0.200000003, 0.200000003)
MG292.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG292.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG292.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG292.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG292.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG292.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG292.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MG293 = Instance.new("BlockMesh")
MG293.Parent = MG292
MG293.Scale = Vector3.new(1, 0.25, 0.625)
MG294 = Instance.new("Part")
MG294.Parent = MG2
MG294.Material = Enum.Material.SmoothPlastic
MG294.BrickColor = BrickColor.new("Black")
MG294.Position = Vector3.new(-12.9800539, 0.946474016, 5.96750021)
MG294.Rotation = Vector3.new(90.0041809, 89.9657364, -90.0041809)
MG294.Anchored = true
MG294.CFrame = CFrame.new(-12.9800539, 0.946474016, 5.96750021, -4.36852403e-008, 0.000598029234, 0.999999821, 2.60591548e-011, 0.999999821, -0.000598029234, -1, 8.17124146e-014, -4.36852474e-008)
MG294.FormFactor = Enum.FormFactor.Custom
MG294.Size = Vector3.new(0.200000003, 0.25, 0.200000003)
MG294.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG294.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG294.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG294.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG294.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG294.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG294.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG295 = Instance.new("SpecialMesh")
MG295.Parent = MG294
MG295.MeshId = "http://www.roblox.com/Asset/?id=11294911"
MG295.Scale = Vector3.new(0.25, 0.5, 0.125)
MG295.MeshType = Enum.MeshType.FileMesh
MG296 = Instance.new("Part")
MG296.Parent = MG2
MG296.Material = Enum.Material.SmoothPlastic
MG296.BrickColor = BrickColor.new("Black")
MG296.Position = Vector3.new(-13.2301617, 0.771631002, 5.98625183)
MG296.Rotation = Vector3.new(-90, -89.9657364, 90)
MG296.Anchored = true
MG296.CFrame = CFrame.new(-13.2301617, 0.771631002, 5.98625183, 2.6141176e-011, -0.000598029234, -0.999999821, -8.52651283e-014, -0.999999821, 0.000598029234, -1, -8.17124146e-014, -2.61406903e-011)
MG296.FormFactor = Enum.FormFactor.Custom
MG296.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
MG296.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG296.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG296.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG296.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG296.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG296.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG296.Color = Color3.new(0.105882, 0.164706, 0.207843)
MG297 = Instance.new("SpecialMesh")
MG297.Parent = MG296
MG297.MeshId = "http://www.roblox.com/Asset/?id=11294911"
MG297.Scale = Vector3.new(0.174999997, 0.200000003, 0.125)
MG297.MeshType = Enum.MeshType.FileMesh
MG298 = Instance.new("Part")
MG298.Parent = MG2
MG298.Material = Enum.Material.SmoothPlastic
MG298.BrickColor = BrickColor.new("Really black")
MG298.Position = Vector3.new(-13.1050243, 1.016536, 5.64250183)
MG298.Rotation = Vector3.new(180, 3.37225974e-005, -179.967255)
MG298.Anchored = true
MG298.CFrame = CFrame.new(-13.1050243, 1.016536, 5.64250183, -0.999999821, 0.000571652199, 5.88570344e-007, 0.000571652199, 0.999999821, -1.51347891e-007, -5.88656803e-007, -1.51011221e-007, -1)
MG298.FormFactor = Enum.FormFactor.Custom
MG298.Size = Vector3.new(0.224999994, 0.200000003, 0.200000003)
MG298.BackSurface = Enum.SurfaceType.SmoothNoOutlines
MG298.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
MG298.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
MG298.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
MG298.RightSurface = Enum.SurfaceType.SmoothNoOutlines
MG298.TopSurface = Enum.SurfaceType.SmoothNoOutlines
MG298.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MG299 = Instance.new("BlockMesh")
MG299.Parent = MG298
MG299.Scale = Vector3.new(1, 0.25, 0.625)
o200 = Instance.new("Part")
o200.Parent = MG2
o200.Material = Enum.Material.SmoothPlastic
o200.BrickColor = BrickColor.new("Dark stone grey")
o200.Position = Vector3.new(-13.1051235, 0.852800012, 6.49249411)
o200.Rotation = Vector3.new(-90, -89.9657364, -2.5045249e-006)
o200.Anchored = true
o200.CFrame = CFrame.new(-13.1051235, 0.852800012, 6.49249411, 0.000598029234, 2.6141176e-011, -0.999999821, 0.999999821, -8.52651283e-014, 0.000598029234, 8.17124146e-014, -1, -2.61406903e-011)
o200.FormFactor = Enum.FormFactor.Custom
o200.Size = Vector3.new(0.200000003, 1.04999995, 0.200000003)
o200.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o200.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o200.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o200.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o200.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o200.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o200.Color = Color3.new(0.388235, 0.372549, 0.384314)
o201 = Instance.new("Decal")
o201.Parent = o200
o201.Texture = "http://www.roblox.com/asset/?id=47760372"
o201.Face = Enum.NormalId.Bottom
o202 = Instance.new("CylinderMesh")
o202.Parent = o200
o202.Scale = Vector3.new(0.4375, 1, 0.4375)
o203 = Instance.new("Part")
o203.Parent = MG2
o203.Material = Enum.Material.SmoothPlastic
o203.BrickColor = BrickColor.new("Really black")
o203.Position = Vector3.new(-13.1050081, 1.01655102, 4.94250584)
o203.Rotation = Vector3.new(-180, 6.6715824e-009, -179.965744)
o203.Anchored = true
o203.CFrame = CFrame.new(-13.1050081, 1.01655102, 4.94250584, -0.999999821, 0.000597878243, 1.16441079e-010, 0.000597878243, 0.999999821, 1.50995675e-007, -2.61650545e-011, 1.50995902e-007, -1)
o203.FormFactor = Enum.FormFactor.Custom
o203.Size = Vector3.new(0.224999994, 0.200000003, 0.200000003)
o203.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o203.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o203.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o203.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o203.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o203.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o203.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o204 = Instance.new("BlockMesh")
o204.Parent = o203
o204.Scale = Vector3.new(1, 0.25, 0.625)
o205 = Instance.new("Part")
o205.Parent = MG2
o205.Material = Enum.Material.SmoothPlastic
o205.BrickColor = BrickColor.new("Dark stone grey")
o205.Position = Vector3.new(-13.1051083, 0.857805014, 5.91125584)
o205.Rotation = Vector3.new(-4.88533216e-012, -1.49777912e-009, -90.0342712)
o205.Anchored = true
o205.CFrame = CFrame.new(-13.1051083, 0.857805014, 5.91125584, -0.000598072947, 0.999999821, -2.6141176e-011, -0.999999821, -0.000598072947, 8.52651283e-014, -7.81597009e-014, 2.61387804e-011, 1)
o205.FormFactor = Enum.FormFactor.Custom
o205.Size = Vector3.new(0.200000003, 0.3125, 0.200000003)
o205.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o205.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o205.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o205.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o205.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o205.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o205.Color = Color3.new(0.388235, 0.372549, 0.384314)
o206 = Instance.new("CylinderMesh")
o206.Parent = o205
o206.Scale = Vector3.new(0.3125, 1, 0.3125)
o207 = Instance.new("Part")
o207.Parent = MG2
o207.Material = Enum.Material.SmoothPlastic
o207.BrickColor = BrickColor.new("Dark stone grey")
o207.Position = Vector3.new(-13.1051083, 0.857805014, 5.27375078)
o207.Rotation = Vector3.new(-4.88533216e-012, -1.49777912e-009, -90.0342712)
o207.Anchored = true
o207.CFrame = CFrame.new(-13.1051083, 0.857805014, 5.27375078, -0.000598072947, 0.999999821, -2.6141176e-011, -0.999999821, -0.000598072947, 8.52651283e-014, -7.81597009e-014, 2.61387804e-011, 1)
o207.FormFactor = Enum.FormFactor.Custom
o207.Size = Vector3.new(0.200000003, 0.3125, 0.200000003)
o207.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o207.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o207.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o207.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o207.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o207.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o207.Color = Color3.new(0.388235, 0.372549, 0.384314)
o208 = Instance.new("CylinderMesh")
o208.Parent = o207
o208.Scale = Vector3.new(0.3125, 1, 0.3125)
o209 = Instance.new("Part")
o209.Parent = MG2
o209.Material = Enum.Material.SmoothPlastic
o209.BrickColor = BrickColor.new("Black")
o209.Position = Vector3.new(-13.1051617, 0.771555007, 5.98625183)
o209.Rotation = Vector3.new(180, 1.49777912e-009, 0.0342645533)
o209.Anchored = true
o209.CFrame = CFrame.new(-13.1051617, 0.771555007, 5.98625183, 0.999999821, -0.000598029234, 2.6141176e-011, -0.000598029234, -0.999999821, -8.52651283e-014, 2.61406903e-011, -8.17124146e-014, -1)
o209.FormFactor = Enum.FormFactor.Custom
o209.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o209.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o209.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o209.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o209.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o209.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o209.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o209.Color = Color3.new(0.105882, 0.164706, 0.207843)
o210 = Instance.new("SpecialMesh")
o210.Parent = o209
o210.Scale = Vector3.new(0.9375, 0.5, 0.4375)
o210.MeshType = Enum.MeshType.Wedge
o211 = Instance.new("Part")
o211.Parent = MG2
o211.Material = Enum.Material.SmoothPlastic
o211.BrickColor = BrickColor.new("Black")
o211.Position = Vector3.new(-13.1050539, 0.946550012, 5.38000584)
o211.Rotation = Vector3.new(180, 1.49777912e-009, -179.965729)
o211.Anchored = true
o211.CFrame = CFrame.new(-13.1050539, 0.946550012, 5.38000584, -0.999999821, 0.000598029234, 2.6141176e-011, 0.000598029234, 0.999999821, -8.52651283e-014, -2.61406903e-011, 8.17124146e-014, -1)
o211.FormFactor = Enum.FormFactor.Custom
o211.Size = Vector3.new(0.200000003, 0.25, 1.04999995)
o211.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o211.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o211.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o211.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o211.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o211.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o211.Color = Color3.new(0.105882, 0.164706, 0.207843)
o212 = Instance.new("BlockMesh")
o212.Parent = o211
o212.Scale = Vector3.new(0.9375, 1, 1)
o213 = Instance.new("Part")
o213.Parent = MG2
o213.Material = Enum.Material.SmoothPlastic
o213.BrickColor = BrickColor.new("Black")
o213.Position = Vector3.new(-13.1054478, 1.23358619, 3.18481803)
o213.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, -0.0342645533)
o213.Anchored = true
o213.CFrame = CFrame.new(-13.1054478, 1.23358619, 3.18481803, 0.999999821, 0.000598029234, -7.10689146e-012, -0.000598029234, 0.999999821, 3.17865485e-008, 2.61657362e-011, -3.17864632e-008, 1)
o213.FormFactor = Enum.FormFactor.Custom
o213.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o213.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o213.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o213.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o213.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o213.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o213.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o213.Color = Color3.new(0.105882, 0.164706, 0.207843)
o214 = Instance.new("SpecialMesh")
o214.Parent = o213
o214.MeshId = "http://www.roblox.com/asset/?id=3270017"
o214.Scale = Vector3.new(0.0799999982, 0.0799999982, 0.0799999982)
o214.MeshType = Enum.MeshType.FileMesh
o215 = Instance.new("Part")
o215.Parent = MG2
o215.Material = Enum.Material.SmoothPlastic
o215.BrickColor = BrickColor.new("Black")
o215.Position = Vector3.new(-13.1053696, 1.19866312, 3.91283011)
o215.Rotation = Vector3.new(-89.997406, -89.9657364, -89.9973984)
o215.Anchored = true
o215.CFrame = CFrame.new(-13.1053696, 1.19866312, 3.91283011, 2.71379559e-008, 0.00059803779, -0.999999821, 1.06276133e-007, 0.999999821, 0.00059803779, 1, -1.06292269e-007, 2.70743428e-008)
o215.FormFactor = Enum.FormFactor.Custom
o215.Size = Vector3.new(1.16999996, 0.200000003, 0.200000003)
o215.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o215.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o215.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o215.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o215.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o215.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o215.Color = Color3.new(0.105882, 0.164706, 0.207843)
o216 = Instance.new("Decal")
o216.Parent = o215
o216.Texture = "http://www.roblox.com/asset/?id=29684337"
o216.Face = Enum.NormalId.Top
o217 = Instance.new("Decal")
o217.Parent = o215
o217.Texture = "http://www.roblox.com/asset/?id=29684337"
o217.Face = Enum.NormalId.Bottom
o218 = Instance.new("BlockMesh")
o218.Parent = o215
o218.Offset = Vector3.new(0, -0.0149999997, 0)
o218.Scale = Vector3.new(1.20000005, 0.180000022, 0.450000018)
o219 = Instance.new("Part")
o219.Parent = MG2
o219.Material = Enum.Material.SmoothPlastic
o219.BrickColor = BrickColor.new("Black")
o219.Position = Vector3.new(-13.1774616, 1.20562911, 3.13281608)
o219.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, -0.0342645533)
o219.Anchored = true
o219.CFrame = CFrame.new(-13.1774616, 1.20562911, 3.13281608, 0.999999821, 0.000598029234, -7.10689146e-012, -0.000598029234, 0.999999821, 3.17865485e-008, 2.61657362e-011, -3.17864632e-008, 1)
o219.FormFactor = Enum.FormFactor.Custom
o219.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o219.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o219.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o219.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o219.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o219.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o219.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o219.Color = Color3.new(0.105882, 0.164706, 0.207843)
o220 = Instance.new("BlockMesh")
o220.Parent = o219
o220.Scale = Vector3.new(0.0800000057, 0.399999976, 0.599999964)
o221 = Instance.new("Part")
o221.Parent = MG2
o221.Material = Enum.Material.SmoothPlastic
o221.BrickColor = BrickColor.new("Black")
o221.Position = Vector3.new(-13.1534519, 1.2256192, 3.18481803)
o221.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, -0.0342645533)
o221.Anchored = true
o221.CFrame = CFrame.new(-13.1534519, 1.2256192, 3.18481803, 0.999999821, 0.000598029234, -7.10689146e-012, -0.000598029234, 0.999999821, 3.17865485e-008, 2.61657362e-011, -3.17864632e-008, 1)
o221.FormFactor = Enum.FormFactor.Custom
o221.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o221.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o221.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o221.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o221.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o221.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o221.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o221.Color = Color3.new(0.105882, 0.164706, 0.207843)
o222 = Instance.new("BlockMesh")
o222.Parent = o221
o222.Scale = Vector3.new(0.160000011, 0.199999988, 0.0800000057)
o223 = Instance.new("Part")
o223.Parent = MG2
o223.Material = Enum.Material.SmoothPlastic
o223.BrickColor = BrickColor.new("Black")
o223.Position = Vector3.new(-13.1055317, 1.0975672, 4.81684589)
o223.Rotation = Vector3.new(89.9999924, -0.0342645533, -5.20930543e-009)
o223.Anchored = true
o223.CFrame = CFrame.new(-13.1055317, 1.0975672, 4.81684589, 0.999999821, 9.0919515e-011, -0.000598029234, -0.000598029234, 1.956993e-007, -0.999999821, 2.61657362e-011, 1, 1.95699243e-007)
o223.FormFactor = Enum.FormFactor.Custom
o223.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o223.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o223.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o223.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o223.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o223.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o223.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o223.Color = Color3.new(0.105882, 0.164706, 0.207843)
o224 = Instance.new("SpecialMesh")
o224.Parent = o223
o224.Scale = Vector3.new(0.800000131, 0.640000045, 0.680000007)
o224.MeshType = Enum.MeshType.Wedge
o225 = Instance.new("Part")
o225.Parent = MG2
o225.Material = Enum.Material.SmoothPlastic
o225.BrickColor = BrickColor.new("Black")
o225.Position = Vector3.new(-13.0574503, 1.22555912, 3.18481803)
o225.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, -0.0342645533)
o225.Anchored = true
o225.CFrame = CFrame.new(-13.0574503, 1.22555912, 3.18481803, 0.999999821, 0.000598029234, -7.10689146e-012, -0.000598029234, 0.999999821, 3.17865485e-008, 2.61657362e-011, -3.17864632e-008, 1)
o225.FormFactor = Enum.FormFactor.Custom
o225.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o225.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o225.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o225.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o225.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o225.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o225.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o225.Color = Color3.new(0.105882, 0.164706, 0.207843)
o226 = Instance.new("BlockMesh")
o226.Parent = o225
o226.Scale = Vector3.new(0.160000041, 0.199999988, 0.0800000057)
o227 = Instance.new("Part")
o227.Parent = MG2
o227.Material = Enum.Material.SmoothPlastic
o227.BrickColor = BrickColor.new("Black")
o227.Position = Vector3.new(-13.1055317, 1.08958411, 3.35682297)
o227.Rotation = Vector3.new(-89.994812, -89.9657364, -89.9947968)
o227.Anchored = true
o227.CFrame = CFrame.new(-13.1055317, 1.08958411, 3.35682297, 5.4291732e-008, 0.000598046347, -0.999999821, 1.95666871e-007, 0.999999821, 0.000598046347, 1, -1.95699243e-007, 5.41746559e-008)
o227.FormFactor = Enum.FormFactor.Custom
o227.Size = Vector3.new(0.808000088, 0.200000003, 0.200000003)
o227.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o227.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o227.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o227.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o227.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o227.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o227.Color = Color3.new(0.105882, 0.164706, 0.207843)
o228 = Instance.new("BlockMesh")
o228.Parent = o227
o228.Scale = Vector3.new(1, 0.440000057, 0.800000131)
o229 = Instance.new("Part")
o229.Parent = MG2
o229.Material = Enum.Material.SmoothPlastic
o229.BrickColor = BrickColor.new("Black")
o229.Position = Vector3.new(-13.0334616, 1.20552611, 3.0128119)
o229.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, -0.0342645533)
o229.Anchored = true
o229.CFrame = CFrame.new(-13.0334616, 1.20552611, 3.0128119, 0.999999821, 0.000598029234, -7.10689146e-012, -0.000598029234, 0.999999821, 3.17865485e-008, 2.61657362e-011, -3.17864632e-008, 1)
o229.FormFactor = Enum.FormFactor.Custom
o229.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o229.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o229.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o229.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o229.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o229.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o229.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o229.Color = Color3.new(0.105882, 0.164706, 0.207843)
o230 = Instance.new("SpecialMesh")
o230.Parent = o229
o230.Scale = Vector3.new(0.0800000057, 0.399999976, 0.599999964)
o230.MeshType = Enum.MeshType.Wedge
o231 = Instance.new("Part")
o231.Name = "Zoom"
o231.Parent = MG2
o231.Material = Enum.Material.SmoothPlastic
o231.Transparency = 1
o231.Position = Vector3.new(-13.1099358, 1.20989811, 2.88000464)
o231.Rotation = Vector3.new(-179.999741, 2.35468792e-006, -179.999603)
o231.Anchored = true
o231.CFrame = CFrame.new(-13.1099358, 1.20989811, 2.88000464, -0.999995828, 7.17247622e-006, 4.10970564e-008, 7.48429193e-006, 1.00000012, 4.40166332e-006, -4.1063835e-008, 4.17768024e-006, -0.999992728)
o231.CanCollide = false
o231.FormFactor = Enum.FormFactor.Custom
o231.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o231.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o231.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o231.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o231.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o231.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o231.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o232 = Instance.new("BlockMesh")
o232.Parent = o231
o232.Scale = Vector3.new(0.0528571419, 0.0634285733, 0.105714284)
o233 = Instance.new("Part")
o233.Parent = MG2
o233.Material = Enum.Material.SmoothPlastic
o233.BrickColor = BrickColor.new("Black")
o233.Position = Vector3.new(-13.1055384, 1.08156312, 4.66482973)
o233.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, 179.965729)
o233.Anchored = true
o233.CFrame = CFrame.new(-13.1055384, 1.08156312, 4.66482973, -0.999999821, -0.000598029234, -7.10689146e-012, 0.000598029234, -0.999999821, 3.17865485e-008, -2.61657362e-011, 3.17864632e-008, 1)
o233.FormFactor = Enum.FormFactor.Custom
o233.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o233.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o233.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o233.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o233.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o233.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o233.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o233.Color = Color3.new(0.105882, 0.164706, 0.207843)
o234 = Instance.new("SpecialMesh")
o234.Parent = o233
o234.Scale = Vector3.new(0.800000131, 0.519999921, 0.479999959)
o234.MeshType = Enum.MeshType.Wedge
o235 = Instance.new("Part")
o235.Parent = MG2
o235.Material = Enum.Material.SmoothPlastic
o235.BrickColor = BrickColor.new("Black")
o235.Position = Vector3.new(-13.1053982, 1.14855111, 4.00282478)
o235.Rotation = Vector3.new(-89.994812, -89.9657364, -89.9947968)
o235.Anchored = true
o235.CFrame = CFrame.new(-13.1053982, 1.14855111, 4.00282478, 5.4291732e-008, 0.000598046347, -0.999999821, 1.95666871e-007, 0.999999821, 0.000598046347, 1, -1.95699243e-007, 5.41746559e-008)
o235.FormFactor = Enum.FormFactor.Custom
o235.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o235.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o235.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o235.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o235.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o235.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o235.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o235.Color = Color3.new(0.105882, 0.164706, 0.207843)
o236 = Instance.new("BlockMesh")
o236.Parent = o235
o236.Offset = Vector3.new(-0.150000006, 0.00059999997, 0)
o236.Scale = Vector3.new(9, 0.164999992, 0.800100029)
o237 = Instance.new("Part")
o237.Parent = MG2
o237.Material = Enum.Material.SmoothPlastic
o237.BrickColor = BrickColor.new("Black")
o237.Position = Vector3.new(-13.1055384, 1.08156312, 4.73283052)
o237.Rotation = Vector3.new(-89.994812, -89.9657364, -89.9947968)
o237.Anchored = true
o237.CFrame = CFrame.new(-13.1055384, 1.08156312, 4.73283052, 5.4291732e-008, 0.000598046347, -0.999999821, 1.95666871e-007, 0.999999821, 0.000598046347, 1, -1.95699243e-007, 5.41746559e-008)
o237.FormFactor = Enum.FormFactor.Custom
o237.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o237.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o237.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o237.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o237.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o237.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o237.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o237.Color = Color3.new(0.105882, 0.164706, 0.207843)
o238 = Instance.new("BlockMesh")
o238.Parent = o237
o238.Scale = Vector3.new(0.199999988, 0.519999921, 0.800000131)
o239 = Instance.new("Part")
o239.Parent = MG2
o239.Material = Enum.Material.SmoothPlastic
o239.BrickColor = BrickColor.new("Black")
o239.Position = Vector3.new(-13.0334616, 1.20552611, 3.13281608)
o239.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, -0.0342645533)
o239.Anchored = true
o239.CFrame = CFrame.new(-13.0334616, 1.20552611, 3.13281608, 0.999999821, 0.000598029234, -7.10689146e-012, -0.000598029234, 0.999999821, 3.17865485e-008, 2.61657362e-011, -3.17864632e-008, 1)
o239.FormFactor = Enum.FormFactor.Custom
o239.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o239.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o239.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o239.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o239.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o239.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o239.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o239.Color = Color3.new(0.105882, 0.164706, 0.207843)
o240 = Instance.new("BlockMesh")
o240.Parent = o239
o240.Scale = Vector3.new(0.0800000057, 0.399999976, 0.599999964)
o241 = Instance.new("Part")
o241.Parent = MG2
o241.Material = Enum.Material.SmoothPlastic
o241.BrickColor = BrickColor.new("Black")
o241.Position = Vector3.new(-13.1054764, 1.18558311, 3.18481803)
o241.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, -0.0342645533)
o241.Anchored = true
o241.CFrame = CFrame.new(-13.1054764, 1.18558311, 3.18481803, 0.999999821, 0.000598029234, -7.10689146e-012, -0.000598029234, 0.999999821, 3.17865485e-008, 2.61657362e-011, -3.17864632e-008, 1)
o241.FormFactor = Enum.FormFactor.Custom
o241.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o241.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o241.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o241.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o241.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o241.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o241.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o241.Color = Color3.new(0.105882, 0.164706, 0.207843)
o242 = Instance.new("BlockMesh")
o242.Parent = o241
o242.Scale = Vector3.new(0.640000045, 0.199999988, 0.0800000057)
o243 = Instance.new("Part")
o243.Parent = MG2
o243.Material = Enum.Material.SmoothPlastic
o243.BrickColor = BrickColor.new("Black")
o243.Position = Vector3.new(-13.1055317, 1.09356511, 4.17682981)
o243.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, 179.965729)
o243.Anchored = true
o243.CFrame = CFrame.new(-13.1055317, 1.09356511, 4.17682981, -0.999999821, -0.000598029234, -7.10689146e-012, 0.000598029234, -0.999999821, 3.17865485e-008, -2.61657362e-011, 3.17864632e-008, 1)
o243.FormFactor = Enum.FormFactor.Custom
o243.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o243.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o243.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o243.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o243.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o243.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o243.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o243.Color = Color3.new(0.105882, 0.164706, 0.207843)
o244 = Instance.new("SpecialMesh")
o244.Parent = o243
o244.Scale = Vector3.new(0.800000072, 0.400000036, 0.560000062)
o244.MeshType = Enum.MeshType.Wedge
o245 = Instance.new("Part")
o245.Parent = MG2
o245.Material = Enum.Material.SmoothPlastic
o245.BrickColor = BrickColor.new("Black")
o245.Position = Vector3.new(-13.1774616, 1.2056272, 3.01282096)
o245.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, -0.0342645533)
o245.Anchored = true
o245.CFrame = CFrame.new(-13.1774616, 1.2056272, 3.01282096, 0.999999821, 0.000598029234, -7.10689146e-012, -0.000598029234, 0.999999821, 3.17865485e-008, 2.61657362e-011, -3.17864632e-008, 1)
o245.FormFactor = Enum.FormFactor.Custom
o245.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o245.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o245.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o245.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o245.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o245.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o245.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o245.Color = Color3.new(0.105882, 0.164706, 0.207843)
o246 = Instance.new("SpecialMesh")
o246.Parent = o245
o246.Scale = Vector3.new(0.0800000057, 0.399999976, 0.599999964)
o246.MeshType = Enum.MeshType.Wedge
o247 = Instance.new("Part")
o247.Parent = MG2
o247.Material = Enum.Material.SmoothPlastic
o247.BrickColor = BrickColor.new("Black")
o247.Position = Vector3.new(-13.1053638, 1.21365511, 4.69673586)
o247.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, -0.0342645533)
o247.Anchored = true
o247.CFrame = CFrame.new(-13.1053638, 1.21365511, 4.69673586, 0.999999821, 0.000598029234, -7.10689146e-012, -0.000598029234, 0.999999821, 3.17865485e-008, 2.61657362e-011, -3.17864632e-008, 1)
o247.FormFactor = Enum.FormFactor.Custom
o247.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o247.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o247.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o247.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o247.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o247.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o247.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o247.Color = Color3.new(0.105882, 0.164706, 0.207843)
o248 = Instance.new("SpecialMesh")
o248.Parent = o247
o248.MeshId = "http://www.roblox.com/asset/?id=3270017"
o248.Scale = Vector3.new(0.119999997, 0.119999997, 0.600000024)
o248.MeshType = Enum.MeshType.FileMesh
o249 = Instance.new("Part")
o249.Parent = MG2
o249.Material = Enum.Material.SmoothPlastic
o249.BrickColor = BrickColor.new("Black")
o249.Position = Vector3.new(-13.2227039, 1.1414212, 3.92782974)
o249.Rotation = Vector3.new(-90.0000153, 45.0343437, 90)
o249.Anchored = true
o249.CFrame = CFrame.new(-13.2227039, 1.1414212, 3.92782974, -5.4291732e-008, -0.706682861, 0.707530499, -1.95666871e-007, 0.707530439, 0.706682801, -1, -1.19352478e-007, -1.78920089e-007)
o249.FormFactor = Enum.FormFactor.Custom
o249.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o249.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o249.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o249.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o249.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o249.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o249.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o249.Color = Color3.new(0.105882, 0.164706, 0.207843)
o250 = Instance.new("BlockMesh")
o250.Parent = o249
o250.Offset = Vector3.new(0, -0.0265500005, 0.0687000006)
o250.Scale = Vector3.new(7.0199995, 0.180000007, 0.250499994)
o251 = Instance.new("Part")
o251.Parent = MG2
o251.Material = Enum.Material.SmoothPlastic
o251.BrickColor = BrickColor.new("Black")
o251.Position = Vector3.new(-13.1053324, 1.25864911, 4.69322681)
o251.Rotation = Vector3.new(-90.0000076, 0.0342645533, -90)
o251.Anchored = true
o251.CFrame = CFrame.new(-13.1053324, 1.25864911, 4.69322681, 5.4291732e-008, 0.999999821, 0.000598029234, 1.95666871e-007, -0.000598029234, 0.999999821, 1, -5.41746772e-008, -1.95699243e-007)
o251.FormFactor = Enum.FormFactor.Custom
o251.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o251.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o251.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o251.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o251.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o251.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o251.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o251.Color = Color3.new(0.105882, 0.164706, 0.207843)
o252 = Instance.new("BlockMesh")
o252.Parent = o251
o252.Offset = Vector3.new(0, 0, -0.0659999996)
o252.Scale = Vector3.new(0.200010002, 0.0800399929, 0.280013978)
o253 = Instance.new("Part")
o253.Parent = MG2
o253.Material = Enum.Material.SmoothPlastic
o253.BrickColor = BrickColor.new("Black")
o253.Position = Vector3.new(-13.1055317, 1.09358811, 4.30083179)
o253.Rotation = Vector3.new(180, 4.07194889e-010, 0.0342645533)
o253.Anchored = true
o253.CFrame = CFrame.new(-13.1055317, 1.09358811, 4.30083179, 0.999999821, -0.000598029234, 7.10689146e-012, -0.000598029234, -0.999999821, -3.17865485e-008, 2.61657362e-011, 3.17864632e-008, -1)
o253.FormFactor = Enum.FormFactor.Custom
o253.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o253.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o253.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o253.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o253.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o253.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o253.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o253.Color = Color3.new(0.105882, 0.164706, 0.207843)
o254 = Instance.new("SpecialMesh")
o254.Parent = o253
o254.Scale = Vector3.new(0.800000131, 0.399999976, 0.599999964)
o254.MeshType = Enum.MeshType.Wedge
o255 = Instance.new("Part")
o255.Parent = MG2
o255.Material = Enum.Material.SmoothPlastic
o255.BrickColor = BrickColor.new("Black")
o255.Position = Vector3.new(-13.1055317, 1.08958411, 3.82883143)
o255.Rotation = Vector3.new(180, 4.07194889e-010, 0.0342645533)
o255.Anchored = true
o255.CFrame = CFrame.new(-13.1055317, 1.08958411, 3.82883143, 0.999999821, -0.000598029234, 7.10689146e-012, -0.000598029234, -0.999999821, -3.17865485e-008, 2.61657362e-011, 3.17864632e-008, -1)
o255.FormFactor = Enum.FormFactor.Custom
o255.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o255.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o255.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o255.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o255.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o255.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o255.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o255.Color = Color3.new(0.105882, 0.164706, 0.207843)
o256 = Instance.new("SpecialMesh")
o256.Parent = o255
o256.Scale = Vector3.new(0.800000131, 0.439999998, 0.680000007)
o256.MeshType = Enum.MeshType.Wedge
o257 = Instance.new("Part")
o257.Parent = MG2
o257.Material = Enum.Material.SmoothPlastic
o257.BrickColor = BrickColor.new("Black")
o257.Position = Vector3.new(-12.9881916, 1.1413672, 3.92782068)
o257.Rotation = Vector3.new(-90.0000076, -44.9658089, -90)
o257.Anchored = true
o257.CFrame = CFrame.new(-12.9881916, 1.1413672, 3.92782068, 5.4291732e-008, 0.707528651, -0.706684709, 1.95666871e-007, 0.706684768, 0.707528591, 1, -2.16173063e-007, -8.95500989e-008)
o257.FormFactor = Enum.FormFactor.Custom
o257.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o257.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o257.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o257.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o257.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o257.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o257.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o257.Color = Color3.new(0.105882, 0.164706, 0.207843)
o258 = Instance.new("BlockMesh")
o258.Parent = o257
o258.Offset = Vector3.new(0, -0.0265500005, 0.0687000006)
o258.Scale = Vector3.new(7.0199995, 0.180000007, 0.250499994)
o259 = Instance.new("Part")
o259.Parent = MG2
o259.Material = Enum.Material.SmoothPlastic
o259.BrickColor = BrickColor.new("Black")
o259.Position = Vector3.new(-13.1055317, 1.09358811, 4.236835)
o259.Rotation = Vector3.new(-1.82123506e-006, -4.07194889e-010, 89.9657364)
o259.Anchored = true
o259.CFrame = CFrame.new(-13.1055317, 1.09358811, 4.236835, 0.000598046347, -0.999999821, -7.10689146e-012, 0.999999821, 0.000598046347, 3.17865485e-008, -3.17864632e-008, -2.61676132e-011, 1)
o259.FormFactor = Enum.FormFactor.Custom
o259.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o259.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o259.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o259.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o259.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o259.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o259.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o259.Color = Color3.new(0.105882, 0.164706, 0.207843)
o260 = Instance.new("BlockMesh")
o260.Parent = o259
o260.Scale = Vector3.new(0.400000066, 0.800000191, 0.0400000028)
EXE.Parent = workspace
EXE:MakeJoints()
local EXE1 = EXE:GetChildren()
for i=1,#EXE1 do
	EXE1[i].Parent = workspace 
	ypcall(function() EXE1[i]:MakeJoints() end)
end
EXE:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
MG2.Parent = game.Players.LocalPlayer.Backpack