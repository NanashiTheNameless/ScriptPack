script/me = game.Players.acb227.Backpack 
h = Instance.new("HopperBin") 
s = Instance.new("Script") 
d = Instance.new("Script") 
h.Name = "Iron-Man" 
d.Name = "SuperSuitScript" 
d.Disabled = true 
h.Parent = me 
s.Parent = h 
d.Parent = h 
s.Source = [[bin = script.Parent 
use = false 
script = script.Parent.SuperSuitScript:clone() 

function onKeyDown(key) 
local key = key:lower() 
local bp = game.Players.LocalPlayer.Backpack 
local char = game.Players.LocalPlayer.Character 
if (key=="q") then 
if (use==false) then 
use = true 
script.Parent = char 
script.Disabled = false 
else 
use = false 
char.SuperSuitScript.Parent = nil 
char.Suit.Parent = nil 
wait() 
end 
end 
end 

function onSelected(mouse) 
keymouse = mouse 
if (game.Players.LocalPlayer.Character==nil) then return end 
local char = game.Players.LocalPlayer.Character 
if (char:FindFirstChild("Humanoid")==nil) then return end 
human = char.Humanoid 
human.Died:connect(function() bin:remove() end) 
human.Changed:connect(onChanged) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() 
mousedown = false 
end) 
mouse.KeyDown:connect(onKeyDown) 
end 

bin.Selected:connect(onSelected)]] 
d.Source = [[feez = script.Parent.Name 
feezly = game.Workspace[feez] 
backpack = game.Players[feez].Backpack 
---- 
mod = Instance.new("Model") 
mod.Parent = feezly 
mod.Name = "Suit" 
wait() 
---- 
head = Instance.new("Part") 
head.formFactor = 2 
head.Size = Vector3.new(2, 1, 1) 
head.BrickColor = BrickColor.new(21) 
head.Name = "SuitTorso" 
head.Reflectance = .3 
head.TopSurface = 0 
head.CanCollide = false 
head.Parent = mod 
head.BottomSurface = 0 
headm = Instance.new("SpecialMesh") 
headm.MeshType = 0 
headm.Scale = Vector3.new(1.3, 1.6, 1.3) 
headm.Parent = head 
headw = Instance.new("Weld") 
headw.Part0 = feezly.Head 
headw.Part1 = head 
headw.Parent = head 
headw.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
torso = Instance.new("Part") 
torso.formFactor = 2 
torso.Size = Vector3.new(2, 2, 1) 
torso.BrickColor = BrickColor.new(21) 
torso.Name = "SuitTorso" 
torso.Reflectance = .3 
torso.TopSurface = 0 
torso.CanCollide = false 
torso.Parent = mod 
torso.BottomSurface = 0 
torsom = Instance.new("SpecialMesh") 
torsom.MeshType = 6 
torsom.Scale = Vector3.new(1.01, 1.02, 1.1) 
torsom.Parent = torso 
torsow = Instance.new("Weld") 
torsow.Part0 = feezly.Torso 
torsow.Part1 = torso 
torsow.Parent = torso 
torsow.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
torso2 = Instance.new("Part") 
torso2.formFactor = 2 
torso2.Size = Vector3.new(1, .4, 1) 
torso2.BrickColor = BrickColor.new(1) 
torso2.Name = "PowerSource" 
torso2.Reflectance = 1 
torso2.TopSurface = 0 
torso2.CanCollide = false 
torso2.Parent = mod 
torso2.BottomSurface = 0 
torsom2 = Instance.new("SpecialMesh") 
torsom2.MeshType = 3 
torsom2.Scale = Vector3.new(1, 2.5, 1) 
torsom2.Parent = torso2 
torsow2 = Instance.new("Weld") 
torsow2.Part0 = feezly.Torso 
torsow2.Part1 = torso2 
torsow2.Parent = torso2 
torsow2.C0 = CFrame.new(0, 0, -.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
torso3 = Instance.new("Part") 
torso3.formFactor = 2 
torso3.Size = Vector3.new(2, .4, 1) 
torso3.BrickColor = BrickColor.new(21) 
torso3.Name = "PowerSourceFrame" 
torso3.Reflectance = .3 
torso3.TopSurface = 0 
torso3.CanCollide = false 
torso3.Parent = mod 
torso3.BottomSurface = 0 
torsom3 = Instance.new("SpecialMesh") 
torsom3.MeshType = 1 
torsom3.Scale = Vector3.new(0.5, 1.1, 0.65) 
torsom3.Parent = torso3 
torsow3 = Instance.new("Weld") 
torsow3.Part0 = feezly.Torso 
torsow3.Part1 = torso3 
torsow3.Parent = torso3 
torsow3.C0 = CFrame.new(0,-.7, -.5)*CFrame.fromEulerAnglesXYZ(4.75, 0, 0) 
---- 
torso4 = Instance.new("Part") 
torso4.formFactor = 2 
torso4.Size = Vector3.new(2, .4, 1) 
torso4.BrickColor = BrickColor.new(21) 
torso4.Name = "PowerSourceFrame2" 
torso4.Reflectance = .3 
torso4.TopSurface = 0 
torso4.CanCollide = false 
torso4.Parent = mod 
torso4.BottomSurface = 0 
torsom4 = Instance.new("SpecialMesh") 
torsom4.MeshType = 1 
torsom4.Scale = Vector3.new(0.5, 1.1, 0.9) 
torsom4.Parent = torso4 
torsow4 = Instance.new("Weld") 
torsow4.Part0 = feezly.Torso 
torsow4.Part1 = torso4 
torsow4.Parent = torso4 
torsow4.C0 = CFrame.new(.5, .7, -.5)*CFrame.fromEulerAnglesXYZ(4.75, 9.99, 0) 
---- 
torso5 = Instance.new("Part") 
torso5.formFactor = 2 
torso5.Size = Vector3.new(2, .4, 1) 
torso5.BrickColor = BrickColor.new(21) 
torso5.Name = "PowerSourceFrame3" 
torso5.Reflectance = .3 
torso5.TopSurface = 0 
torso5.CanCollide = false 
torso5.Parent = mod 
torso5.BottomSurface = 0 
torsom5 = Instance.new("SpecialMesh") 
torsom5.MeshType = 1 
torsom5.Scale = Vector3.new(0.5, 1.1, 0.9) 
torsom5.Parent = torso5 
torsow5 = Instance.new("Weld") 
torsow5.Part0 = feezly.Torso 
torsow5.Part1 = torso5 
torsow5.Parent = torso5 
torsow5.C0 = CFrame.new(-.5, .7, -.5)*CFrame.fromEulerAnglesXYZ(4.75, -9.99, 0) 
---- 
larm = Instance.new("Part") 
larm.formFactor = 2 
larm.Size = Vector3.new(1, 0.4, 1) 
larm.BrickColor = BrickColor.new(21) 
larm.Name = "SuitLeftArm" 
larm.Reflectance = .3 
larm.TopSurface = 0 
larm.CanCollide = false 
larm.Parent = mod 
larm.BottomSurface = 0 
larmm = Instance.new("SpecialMesh") 
larmm.MeshType = 6 
larmm.Scale = Vector3.new(1.1, 1.11, 1.1) 
larmm.Parent = larm 
larmw = Instance.new("Weld") 
larmw.Part0 = feezly["Left Arm"] 
larmw.Part1 = larm 
larmw.Parent = larm 
larmw.C0 = CFrame.new(0, -.82, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm2 = Instance.new("Part") 
larm2.formFactor = 2 
larm2.Size = Vector3.new(1, 0.4, 1) 
larm2.BrickColor = BrickColor.new(24) 
larm2.Name = "SuitLeftArm2" 
larm2.Reflectance = .3 
larm2.TopSurface = 0 
larm2.CanCollide = false 
larm2.Parent = mod 
larm2.BottomSurface = 0 
larmm2 = Instance.new("SpecialMesh") 
larmm2.MeshType = 6 
larmm2.Scale = Vector3.new(1.1, .5, 1.1) 
larmm2.Parent = larm2 
larmw2 = Instance.new("Weld") 
larmw2.Part0 = feezly["Left Arm"] 
larmw2.Part1 = larm2 
larmw2.Parent = larm2 
larmw2.C0 = CFrame.new(0, -.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm3 = Instance.new("Part") 
larm3.formFactor = 2 
larm3.Size = Vector3.new(1, 0.4, 1) 
larm3.BrickColor = BrickColor.new(21) 
larm3.Name = "SuitLeftArm3" 
larm3.Reflectance = .3 
larm3.TopSurface = 0 
larm3.CanCollide = false 
larm3.Parent = mod 
larm3.BottomSurface = 0 
larmm3 = Instance.new("SpecialMesh") 
larmm3.MeshType = 6 
larmm3.Scale = Vector3.new(1.1, .5, 1.1) 
larmm3.Parent = larm3 
larmw3 = Instance.new("Weld") 
larmw3.Part0 = feezly["Left Arm"] 
larmw3.Part1 = larm3 
larmw3.Parent = larm3 
larmw3.C0 = CFrame.new(0, -.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm4 = Instance.new("Part") 
larm4.formFactor = 2 
larm4.Size = Vector3.new(1, 1, 1) 
larm4.BrickColor = BrickColor.new(24) 
larm4.Name = "SuitLeftArm4" 
larm4.Reflectance = .3 
larm4.TopSurface = 0 
larm4.CanCollide = false 
larm4.Parent = mod 
larm4.BottomSurface = 0 
larmm4 = Instance.new("SpecialMesh") 
larmm4.MeshType = 6 
larmm4.Scale = Vector3.new(1.1, 1, 1.1) 
larmm4.Parent = larm4 
larmw4 = Instance.new("Weld") 
larmw4.Part0 = feezly["Left Arm"] 
larmw4.Part1 = larm4 
larmw4.Parent = larm4 
larmw4.C0 = CFrame.new(0, .2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm5 = Instance.new("Part") 
larm5.formFactor = 2 
larm5.Size = Vector3.new(1, 0.4, 1) 
larm5.BrickColor = BrickColor.new(21) 
larm5.Name = "SuitLeftArm5" 
larm5.Reflectance = .3 
larm5.TopSurface = 0 
larm5.CanCollide = false 
larm5.Parent = mod 
larm5.BottomSurface = 0 
larmm5 = Instance.new("SpecialMesh") 
larmm5.MeshType = 6 
larmm5.Scale = Vector3.new(1.1, 1.09, 1.1) 
larmm5.Parent = larm5 
larmw5 = Instance.new("Weld") 
larmw5.Part0 = feezly["Left Arm"] 
larmw5.Part1 = larm5 
larmw5.Parent = larm5 
larmw5.C0 = CFrame.new(0, .81, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm6 = Instance.new("Part") 
larm6.formFactor = 2 
larm6.Size = Vector3.new(1, 0.4, 1) 
larm6.BrickColor = BrickColor.new(21) 
larm6.Name = "SuitLeftArm6" 
larm6.Reflectance = .3 
larm6.TopSurface = 0 
larm6.CanCollide = false 
larm6.Parent = mod 
larm6.BottomSurface = 0 
larmm6 = Instance.new("SpecialMesh") 
larmm6.MeshType = 3 
larmm6.Scale = Vector3.new(1.1, 1.09, 1.1) 
larmm6.Parent = larm6 
larmw6 = Instance.new("Weld") 
larmw6.Part0 = feezly["Left Arm"] 
larmw6.Part1 = larm6 
larmw6.Parent = larm6 
larmw6.C0 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
larm7 = Instance.new("Part") 
larm7.Name = "RightArmPulse" 
larm7.formFactor = 2 
larm7.Size = Vector3.new(1, 0.4, 1) 
larm7.BrickColor = BrickColor.new(1) 
larm7.Reflectance = 1 
larm7.TopSurface = 0 
larm7.CanCollide = false 
larm7.Parent = mod 
larm7.BottomSurface = 0 
larmm7 = Instance.new("SpecialMesh") 
larmm7.MeshType = 3 
larmm7.Scale = Vector3.new(1.1, 1.09, 1.1) 
larmm7.Parent = larm7 
larmw7 = Instance.new("Weld") 
larmw7.Part0 = feezly["Left Arm"] 
larmw7.Part1 = larm7 
larmw7.Parent = larm7 
larmw7.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm = Instance.new("Part") 
rarm.formFactor = 2 
rarm.Size = Vector3.new(1, 0.4, 1) 
rarm.BrickColor = BrickColor.new(21) 
rarm.Name = "SuitRightArm" 
rarm.Reflectance = .3 
rarm.TopSurface = 0 
rarm.CanCollide = false 
rarm.Parent = mod 
rarm.BottomSurface = 0 
rarmm = Instance.new("SpecialMesh") 
rarmm.MeshType = 6 
rarmm.Scale = Vector3.new(1.1, 1.11, 1.1) 
rarmm.Parent = rarm 
rarmw = Instance.new("Weld") 
rarmw.Part0 = feezly["Right Arm"] 
rarmw.Part1 = rarm 
rarmw.Parent = rarm 
rarmw.C0 = CFrame.new(0, -.82, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm2 = Instance.new("Part") 
rarm2.formFactor = 2 
rarm2.Size = Vector3.new(1, 0.4, 1) 
rarm2.BrickColor = BrickColor.new(24) 
rarm2.Name = "SuitRightArm2" 
rarm2.Reflectance = .3 
rarm2.TopSurface = 0 
rarm2.CanCollide = false 
rarm2.Parent = mod 
rarm2.BottomSurface = 0 
rarmm2 = Instance.new("SpecialMesh") 
rarmm2.MeshType = 6 
rarmm2.Scale = Vector3.new(1.1, .5, 1.1) 
rarmm2.Parent = rarm2 
rarmw2 = Instance.new("Weld") 
rarmw2.Part0 = feezly["Right Arm"] 
rarmw2.Part1 = rarm2 
rarmw2.Parent = rarm 
rarmw2.C0 = CFrame.new(0, -.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm3 = Instance.new("Part") 
rarm3.formFactor = 2 
rarm3.Size = Vector3.new(1, 0.4, 1) 
rarm3.BrickColor = BrickColor.new(21) 
rarm3.Name = "SuitRightArm3" 
rarm3.Reflectance = .3 
rarm3.TopSurface = 0 
rarm3.CanCollide = false 
rarm3.Parent = mod 
rarm3.BottomSurface = 0 
rarmm3 = Instance.new("SpecialMesh") 
rarmm3.MeshType = 6 
rarmm3.Scale = Vector3.new(1.1, .5, 1.1) 
rarmm3.Parent = rarm3 
rarmw3 = Instance.new("Weld") 
rarmw3.Part0 = feezly["Right Arm"] 
rarmw3.Part1 = rarm3 
rarmw3.Parent = rarm3 
rarmw3.C0 = CFrame.new(0, -.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm4 = Instance.new("Part") 
rarm4.formFactor = 2 
rarm4.Size = Vector3.new(1, 1, 1) 
rarm4.BrickColor = BrickColor.new(24) 
rarm4.Name = "SuitRightArm4" 
rarm4.Reflectance = .3 
rarm4.TopSurface = 0 
rarm4.CanCollide = false 
rarm4.Parent = mod 
rarm4.BottomSurface = 0 
rarmm4 = Instance.new("SpecialMesh") 
rarmm4.MeshType = 6 
rarmm4.Scale = Vector3.new(1.1, 1, 1.1) 
rarmm4.Parent = rarm4 
rarmw4 = Instance.new("Weld") 
rarmw4.Part0 = feezly["Right Arm"] 
rarmw4.Part1 = rarm4 
rarmw4.Parent = rarm4 
rarmw4.C0 = CFrame.new(0, .2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm5 = Instance.new("Part") 
rarm5.formFactor = 2 
rarm5.Size = Vector3.new(1, 0.4, 1) 
rarm5.BrickColor = BrickColor.new(21) 
rarm5.Name = "SuitRightArm5" 
rarm5.Reflectance = .3 
rarm5.TopSurface = 0 
rarm5.CanCollide = false 
rarm5.Parent = mod 
rarm5.BottomSurface = 0 
rarmm5 = Instance.new("SpecialMesh") 
rarmm5.MeshType = 6 
rarmm5.Scale = Vector3.new(1.1, 1.09, 1.1) 
rarmm5.Parent = rarm5 
rarmw5 = Instance.new("Weld") 
rarmw5.Part0 = feezly["Right Arm"] 
rarmw5.Part1 = rarm5 
rarmw5.Parent = rarm5 
rarmw5.C0 = CFrame.new(0, .81, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm6 = Instance.new("Part") 
rarm6.formFactor = 2 
rarm6.Size = Vector3.new(1, 0.4, 1) 
rarm6.BrickColor = BrickColor.new(21) 
rarm6.Name = "SuitRightArm6" 
rarm6.Reflectance = .3 
rarm6.TopSurface = 0 
rarm6.CanCollide = false 
rarm6.Parent = mod 
rarm6.BottomSurface = 0 
rarmm6 = Instance.new("SpecialMesh") 
rarmm6.MeshType = 3 
rarmm6.Scale = Vector3.new(1.1, 1.09, 1.1) 
rarmm6.Parent = rarm6 
rarmw6 = Instance.new("Weld") 
rarmw6.Part0 = feezly["Right Arm"] 
rarmw6.Part1 = rarm6 
rarmw6.Parent = rarm6 
rarmw6.C0 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rarm7 = Instance.new("Part") 
rarm7.Name = "RightArmPulse" 
rarm7.formFactor = 2 
rarm7.Size = Vector3.new(1, 0.4, 1) 
rarm7.BrickColor = BrickColor.new(1) 
rarm7.Reflectance = 1 
rarm7.TopSurface = 0 
rarm7.CanCollide = false 
rarm7.Parent = mod 
rarm7.BottomSurface = 0 
rarmm7 = Instance.new("SpecialMesh") 
rarmm7.MeshType = 3 
rarmm7.Scale = Vector3.new(1.1, 1.09, 1.1) 
rarmm7.Parent = rarm7 
rarmw7 = Instance.new("Weld") 
rarmw7.Part0 = feezly["Right Arm"] 
rarmw7.Part1 = rarm7 
rarmw7.Parent = rarm7 
rarmw7.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
lleg = Instance.new("Part") 
lleg.formFactor = 2 
lleg.Size = Vector3.new(1, 1, 1) 
lleg.BrickColor = BrickColor.new(21) 
lleg.Name = "SuitLeftLeg" 
lleg.Reflectance = .3 
lleg.TopSurface = 0 
lleg.CanCollide = false 
lleg.Parent = mod 
lleg.BottomSurface = 0 
llegm = Instance.new("SpecialMesh") 
llegm.MeshType = 6 
llegm.Scale = Vector3.new(1.1, 1.4, 1.1) 
llegm.Parent = lleg 
llegw = Instance.new("Weld") 
llegw.Part0 = feezly["Left Leg"] 
llegw.Part1 = lleg 
llegw.Parent = lleg 
llegw.C0 = CFrame.new(0, -.55, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
lleg2 = Instance.new("Part") 
lleg2.formFactor = 2 
lleg2.Size = Vector3.new(1, 1, 1) 
lleg2.BrickColor = BrickColor.new(24) 
lleg2.Name = "SuitLeftLeg" 
lleg2.Reflectance = .3 
lleg2.TopSurface = 0 
lleg2.CanCollide = false 
lleg2.Parent = mod 
lleg2.BottomSurface = 0 
llegm2 = Instance.new("SpecialMesh") 
llegm2.MeshType = 6 
llegm2.Scale = Vector3.new(1.1, 0.6, 1.1) 
llegm2.Parent = lleg2 
llegw2 = Instance.new("Weld") 
llegw2.Part0 = feezly["Left Leg"] 
llegw2.Part1 = lleg2 
llegw2.Parent = lleg2 
llegw2.C0 = CFrame.new(0, .25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
lleg3 = Instance.new("Part") 
lleg3.formFactor = 2 
lleg3.Size = Vector3.new(1, 1, 1) 
lleg3.BrickColor = BrickColor.new(21) 
lleg3.Name = "SuitLeftLeg3" 
lleg3.Reflectance = .3 
lleg3.TopSurface = 0 
lleg3.CanCollide = false 
lleg3.Parent = mod 
lleg3.BottomSurface = 0 
llegm3 = Instance.new("SpecialMesh") 
llegm3.MeshType = 6 
llegm3.Scale = Vector3.new(1.1, 0.65, 1.1) 
llegm3.Parent = lleg3 
llegw3 = Instance.new("Weld") 
llegw3.Part0 = feezly["Left Leg"] 
llegw3.Part1 = lleg3 
llegw3.Parent = lleg3 
llegw3.C0 = CFrame.new(0, .75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rleg = Instance.new("Part") 
rleg.formFactor = 2 
rleg.Size = Vector3.new(1, 1, 1) 
rleg.BrickColor = BrickColor.new(21) 
rleg.Name = "SuitLeftLeg" 
rleg.Reflectance = .3 
rleg.TopSurface = 0 
rleg.CanCollide = false 
rleg.Parent = mod 
rleg.BottomSurface = 0 
rlegm = Instance.new("SpecialMesh") 
rlegm.MeshType = 6 
rlegm.Scale = Vector3.new(1.1, 1.4, 1.1) 
rlegm.Parent = rleg 
rlegw = Instance.new("Weld") 
rlegw.Part0 = feezly["Right Leg"] 
rlegw.Part1 = rleg 
rlegw.Parent = rleg 
rlegw.C0 = CFrame.new(0, -.55, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rleg2 = Instance.new("Part") 
rleg2.formFactor = 2 
rleg2.Size = Vector3.new(1, 1, 1) 
rleg2.BrickColor = BrickColor.new(24) 
rleg2.Name = "SuitRightLeg2" 
rleg2.Reflectance = .3 
rleg2.TopSurface = 0 
rleg2.CanCollide = false 
rleg2.Parent = mod 
rleg2.BottomSurface = 0 
rlegm2 = Instance.new("SpecialMesh") 
rlegm2.MeshType = 6 
rlegm2.Scale = Vector3.new(1.1, 0.6, 1.1) 
rlegm2.Parent = rleg2 
rlegw2 = Instance.new("Weld") 
rlegw2.Part0 = feezly["Right Leg"] 
rlegw2.Part1 = rleg2 
rlegw2.Parent = rleg2 
rlegw2.C0 = CFrame.new(0, .25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---- 
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new(21) 
rleg3.Name = "SuitRightLeg3" 
rleg3.Reflectance = .3 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(1.1, 0.65, 1.1) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Right Leg"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, .75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)]] 
x = s:clone() 
c = d:clone() 
x.Parent = h 
c.Parent = h 
wait(1) 
s:remove() 
d:remove() 

u = Instance.new("HopperBin") 
u.Parent = game.Players.acb227.Backpack 
u.Name = "ArmShoot" 
i = Instance.new("Script") 
i.Parent = u 
i.Source = [[local Selected = false 
local Shoot = true 
function Click(Target) 
if(Target.Target.Parent:findFirstChild("Humanoid")~=nil)then 
Target.Target.Parent.Humanoid.Health = 0 
end 
local P = Instance.new("Part") 
P.Name = "Laser" 
local Place0 = script.Parent.Parent.Parent.Character["Left Arm"].CFrame 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Target.Hit.p).magnitude) 
P.CFrame = CFrame.new((Place0.p + Target.Hit.p)/2,Place0.p) 
P.Parent = game.Workspace 
P.Color = Color3.new(0,0,1) 
P.Transparency = 0.5 
P.Reflectance = 0.5 
P.Anchored = true 
P.CanCollide = false 
local E = Instance.new("Explosion") 
E.Position = Target.Hit.p 
E.Parent = game.Workspace 
for i = 1,10 do 
P.Transparency = 0.5+(i*0.05) 
P.Reflectance = i*0.05 
wait(0.1) 
end 
P:Remove() 
end 
function Select(Mouse) 
local Arm = script.Parent.Parent.Parent.Character:findFirstChild("Left Arm") 
if(Arm==nil)then 
script.Parent:Remove() 
script:Remove() 
end 
Selected = true 
local Torso = script.Parent.Parent.Parent.Character:findFirstChild("Torso") 
if(Torso==nil)then 
script.Parent:Remove() 
script:Remove() 
end 
local ArmWeld = Torso:findFirstChild("Left Shoulder") 
if(ArmWeld~=nil)then 
ArmWeld.Parent = nil 
end 
Mouse.Button1Down:connect(function()Click(Mouse)end) 
Arm.Anchored = true 
while Selected do 
local Place0 = script.Parent.Parent.Parent.Character.Torso.CFrame 
Place0 = Place0 + ((Place0 * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)).lookVector * 0.5) + (Place0 * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).lookVector 
local Place1 = Place0 + ((Place0.p-Mouse.Hit.p).unit * -2) 
Arm.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0) 
wait() 
end 
Arm.Anchored = false 
if(ArmWeld~=nil)then 
ArmWeld.Parent = Torso 
end 
end 
function Deselect() 
Selected = false 
end 
script.Parent.Selected:connect(Select) 
script.Parent.Deselected:connect(Deselect)]] 

hop = Instance.new("HopperBin") 
hop.Name = "Fly" 

scr = Instance.new("Script") 
scr.Parent = hop 
scr.Name = "FlyScript" 
scr.Source = [[ 
local hold = false 
local u = 40 
local add = 5 
local mode = "Off" 

function onSelected(mouse) 
hint = Instance.new("Hint") 
hint.Parent = script.Parent.Parent.Parent 
hint.Name = "Modes" 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
end 
script.Parent.Selected:connect(onSelected) 

function onDeselected(mouse) 
wait() 
script.Parent.Parent.Parent:findFirstChild("Modes"):remove() 
end 
script.Parent.Deselected:connect(onDeselected) 

function onButton1Down(mouse) 
hold = true 

p = Instance.new("Part") 
p.Parent = script.Parent.Parent.Parent.Character 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.CanCollide = false 
p.Transparency = 1 
p.formFactor = 0 
p.Size = Vector3.new(3,1,3) 

w = Instance.new("Weld") 
w.Parent = script.Parent.Parent.Parent.Character.Torso 
w.Name = "Board" 
w.Part0 = w.Parent 
w.Part1 = p 
w.C0 = CFrame.new(0,0,-1) * CFrame.fromEulerAnglesXYZ(math.pi / 2,0,0) 

bg = Instance.new("BodyGyro") 
bg.Parent = p 
bg.maxTorque = Vector3.new(999999999999,99999999999999999,0) 

bv = Instance.new("BodyVelocity") 
bv.Parent = p 
bv.maxForce = Vector3.new(4e+020, 4e+020, 4e+020) 

bf = Instance.new("BodyForce") 
bf.Parent = p 
bf.force = Vector3.new(0, 196 * p:GetMass(), 0) 

script.Parent.Parent.Parent.Character.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(math.pi,math.pi,0) 

while hold == true do 
wait() 
script.Parent.Parent.Parent.Character.Humanoid.Sit = true 
bv.velocity = mouse.Hit.lookVector * u 
bg.cframe = CFrame.new(bg.Parent.Position, mouse.Hit.p) 
a = script.Parent.Parent.Parent.Character.Torso 
a["Left Hip"].DesiredAngle = 0 
a["Right Hip"].DesiredAngle = 0 
a["Right Shoulder"].DesiredAngle = 3.1 
a["Left Shoulder"].DesiredAngle = 3.1 
end 
end 

function onKeyDown(key) 

if (key:lower() == "v") then 
wait() 
u = u + 1 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "x") then 
wait() 
u = u - 1 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "z") then 
wait() 
u = u - add 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "b") then 
wait() 
u = u + add 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "[") then 
wait() 
add = add - 1 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "]") then 
wait() 
add = add + 1 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "p") then 
wait() 
add = 5 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "c") then 
wait() 
u = 40 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "n") then 
wait() 
script.Parent.Parent.Parent.Character.Torso.Anchored = true 
mode = "On" 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "m") then 
wait() 
script.Parent.Parent.Parent.Character.Torso.Anchored = false 
mode = "Off" 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
end 

function onButton1Up(mouse) 
hold = false 

script.Parent.Parent.Parent.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.fromEulerAnglesXYZ(math.pi / 2,math.pi,0) 

for i = 1, 2 do 
script.Parent.Parent.Parent.Character.Humanoid.Jump = true 
script.Parent.Parent.Parent.Character.Humanoid.Sit = false 
wait() 
end 

a = script.Parent.Parent.Parent.Character.Part:findFirstChild("BodyVelocity") 
if a ~= nil then 
a:remove() 
end 

b = script.Parent.Parent.Parent.Character.Part:findFirstChild("BodyGyro") 
if b ~= nil then 
b:remove() 
end 

wait(3) 

c = script.Parent.Parent.Parent.Character.Part:findFirstChild("BodyForce") 
if c ~= nil then 
c:remove() 
end 
script.Parent.Parent.Parent.Character.Part:remove() 
end 
]] 
hop.Parent = game.Players.acb227.Backpack
