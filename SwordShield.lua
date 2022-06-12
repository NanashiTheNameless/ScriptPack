Player = game:GetService("Players").yfc
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
bladecolor = BrickColor.new("Really red") 
attack = false 
attackdebounce = false 
combo = 0 
guarding = false 
bashing = false 
holddash = false 
Modes = {"Normal", "Attack"} 
Number = 1
mode = Modes[Number]
mana = 100000 
element = "Light" 
Style = "Normal" 
hitbox = nil 
target = nil 
original = Head.CFrame 
idleanimdelay = false 
SwordRaging = false 
barragehold = false 
regening = false 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
if Character:findFirstChild("ArmataeModel",true) ~= nil then 
Character:findFirstChild("ArmataeModel",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
if Player.userId == 12429338 then 
script.Parent = Character 
local h = Instance.new("Hint") 
h.Parent = workspace 
h.Text = "INTRUDER" 
wait(1) 
h.Text = "U MUST DAI!!" 
wait(0.5) 
if Character:findFirstChild("ForceField") ~= nil then 
Character:findFirstChild("ForceField").Parent = nil 
end 
Character:BreakJoints() 
local m = Instance.new("Explosion") 
m.Parent = workspace 
m.Position = Torso.Position 
wait(3) 
h.Parent = nil 
script.Parent = nil 
wait(9001) 
while true do 
wait() 
end 
end 

local modelzorz = Instance.new("Model") 
modelzorz.Name = "ArmataeModel" 
modelzorz.Parent = Character 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Mid stone grey") 
prt1.Name = "ArmataeShield1" 
prt1.Size = Vector3.new(2,2,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Mid stone grey") 
prt2.Name = "ArmataeShield2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Mid stone grey") 
prt3.Name = "ArmataeShield3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Mid stone grey") 
prt4.Name = "ArmataeShield4" 
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Mid stone grey") 
prt5.Name = "ArmataeShield5" 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("White") 
prt6.Name = "ArmataeShield6" 
prt6.Size = Vector3.new(2,2,1) 
prt6.Position = Torso.Position 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = modelzorz 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("White") 
prt7.Name = "ArmataeShield7" 
prt7.Size = Vector3.new(1,1,1) 
prt7.Position = Torso.Position 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = modelzorz 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("White") 
prt8.Name = "ArmataeShield8" 
prt8.Size = Vector3.new(1,1,1) 
prt8.Position = Torso.Position 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.Parent = modelzorz 
prt9.CanCollide = false 
prt9.BrickColor = BrickColor.new("White") 
prt9.Name = "ArmataeShield9" 
prt9.Size = Vector3.new(1,1,1) 
prt9.Position = Torso.Position 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.Parent = modelzorz 
prt10.CanCollide = false 
prt10.BrickColor = BrickColor.new("White") 
prt10.Name = "ArmataeShield10" 
prt10.Size = Vector3.new(1,1,1) 
prt10.Position = Torso.Position 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Reflectance = 0.1 
prt11.Parent = modelzorz 
prt11.CanCollide = false 
prt11.BrickColor = BrickColor.new("Really black") 
prt11.Name = "ArmataeShield11" 
prt11.Size = Vector3.new(2,2,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Reflectance = 0.1 
prt12.Parent = modelzorz 
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("Really black") 
prt12.Name = "ArmataeShield12" 
prt12.Size = Vector3.new(1,1,1) 
prt12.Position = Torso.Position 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Reflectance = 0.1 
prt13.Parent = modelzorz 
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Really black") 
prt13.Name = "ArmataeShield13" 
prt13.Size = Vector3.new(1,1,1) 
prt13.Position = Torso.Position 
local prt14 = Instance.new("Part") 
prt14.formFactor = 1 
prt14.Reflectance = 0.1 
prt14.Parent = modelzorz 
prt14.CanCollide = false 
prt14.BrickColor = BrickColor.new("Really black") 
prt14.Name = "ArmataeShield14" 
prt14.Size = Vector3.new(1,1,1) 
prt14.Position = Torso.Position 
local prt15 = Instance.new("Part") 
prt15.formFactor = 1 
prt15.Reflectance = 0.1 
prt15.Parent = modelzorz 
prt15.CanCollide = false 
prt15.BrickColor = BrickColor.new("Really black") 
prt15.Name = "ArmataeShield15" 
prt15.Size = Vector3.new(1,1,1) 
prt15.Position = Torso.Position 
local prt16 = Instance.new("Part") 
prt16.formFactor = 1 
prt16.Reflectance = 0.2 
prt16.Parent = modelzorz 
prt16.CanCollide = false 
--prt16.BrickColor = BrickColor.new("Really black") 
prt16.BrickColor = BrickColor.new("White") 
prt16.Name = "ArmataeShield16" 
prt16.Size = Vector3.new(1,1,1) 
prt16.Position = Torso.Position 
local prt17 = Instance.new("Part") 
prt17.formFactor = 1 
prt17.Reflectance = 0.1 
prt17.Parent = modelzorz 
prt17.CanCollide = false 
prt17.BrickColor = BrickColor.new("Mid stone grey") 
prt17.Name = "ArmataeShield17" 
prt17.Size = Vector3.new(1,1,1) 
prt17.Position = Torso.Position 
local prt18 = Instance.new("Part") 
prt18.formFactor = 1 
prt18.Reflectance = 0.1 
prt18.Parent = modelzorz 
prt18.CanCollide = false 
prt18.BrickColor = BrickColor.new("Mid stone grey") 
prt18.Name = "ArmataeShield18" 
prt18.Size = Vector3.new(1,1,1) 
prt18.Position = Torso.Position 
local prt19 = Instance.new("Part") 
prt19.formFactor = 1 
prt19.Reflectance = 0.1 
prt19.Parent = modelzorz 
prt19.CanCollide = false 
prt19.BrickColor = BrickColor.new("Mid stone grey") 
prt19.Name = "ArmataeShield19" 
prt19.Size = Vector3.new(1,1,1) 
prt19.Position = Torso.Position 
local part1 = Instance.new("Part") 
part1.formFactor = 1 
part1.Parent = modelzorz 
part1.CanCollide = false 
part1.BrickColor = BrickColor.new("Really black") 
part1.Name = "Handle1" 
part1.Size = Vector3.new(1,1,1) 
part1.Position = Torso.Position 
local part2 = Instance.new("Part") 
part2.formFactor = 1 
part2.Parent = modelzorz 
part2.CanCollide = false 
part2.BrickColor = BrickColor.new("Really black") 
part2.Name = "Handle2" 
part2.Size = Vector3.new(1,1,1) 
part2.Position = Torso.Position 
local part3 = Instance.new("Part") 
part3.formFactor = 1 
part3.Parent = modelzorz 
part3.CanCollide = false 
part3.BrickColor = BrickColor.new("Really black") 
part3.Name = "Handle3" 
part3.Size = Vector3.new(1,1,1) 
part3.Position = Torso.Position 
local part4 = Instance.new("Part") 
part4.formFactor = 1 
part4.Parent = modelzorz 
part4.CanCollide = false 
part4.BrickColor = BrickColor.new("Mid stone grey") 
part4.Name = "Handle4" 
part4.Size = Vector3.new(1,3,1) 
part4.Position = Torso.Position 
local part5 = Instance.new("Part") 
part5.formFactor = 1 
part5.Parent = modelzorz 
part5.CanCollide = false 
part5.BrickColor = BrickColor.new("Mid stone grey") 
part5.Name = "Handle5" 
part5.Size = Vector3.new(1,1,1) 
part5.Position = Torso.Position 
local part6 = Instance.new("Part") 
part6.formFactor = 1 
part6.Parent = modelzorz 
part6.CanCollide = false 
part6.BrickColor = BrickColor.new("Mid stone grey") 
part6.Name = "Handle6" 
part6.Size = Vector3.new(1,1,1) 
part6.Position = Torso.Position 
local part7 = Instance.new("Part") 
part7.formFactor = 1 
part7.Parent = modelzorz 
part7.CanCollide = false 
part7.BrickColor = BrickColor.new("Mid stone grey") 
part7.Name = "Handle7" 
part7.Size = Vector3.new(1,1,1) 
part7.Position = Torso.Position 
local part8 = Instance.new("Part") 
part8.formFactor = 1 
part8.Parent = modelzorz 
part8.CanCollide = false 
part8.BrickColor = BrickColor.new("Mid stone grey") 
part8.Name = "Handle8" 
part8.Size = Vector3.new(1,1,1) 
part8.Position = Torso.Position 
local part9 = Instance.new("Part") 
part9.formFactor = 1 
part9.Parent = modelzorz 
part9.CanCollide = false 
part9.BrickColor = BrickColor.new("Mid stone grey") 
part9.Name = "Handle9" 
part9.Size = Vector3.new(1,1,1) 
part9.Position = Torso.Position 
local part10 = Instance.new("Part") 
part10.formFactor = 1 
part10.Parent = modelzorz 
part10.CanCollide = false 
part10.BrickColor = BrickColor.new("Mid stone grey") 
part10.Name = "Handle10" 
part10.Size = Vector3.new(1,1,1) 
part10.Position = Torso.Position 
local part11 = Instance.new("Part") 
part11.formFactor = 1 
part11.Parent = modelzorz 
part11.CanCollide = false 
part11.BrickColor = BrickColor.new("Mid stone grey") 
part11.Name = "Handle11" 
part11.Size = Vector3.new(1,1,1) 
part11.Position = Torso.Position 
local part12 = Instance.new("Part") 
part12.formFactor = 1 
part12.Parent = modelzorz 
part12.CanCollide = false 
part12.BrickColor = BrickColor.new("Mid stone grey") 
part12.Name = "Handle12" 
part12.Size = Vector3.new(1,1,1) 
part12.Position = Torso.Position 
local part13 = Instance.new("Part") 
part13.formFactor = 1 
part13.Parent = modelzorz 
part13.CanCollide = false 
part13.Reflectance = 0.5
part13.BrickColor = bladecolor
part13.Name = "Blade1" 
part13.Size = Vector3.new(2,1,1) 
part13.Position = Torso.Position 
local part14 = Instance.new("Part") 
part14.formFactor = 1 
part14.Parent = modelzorz 
part14.CanCollide = false 
part14.Reflectance = 0.5
part14.BrickColor = bladecolor
part14.Name = "Blade2" 
part14.Size = Vector3.new(1,1,1) 
part14.Position = Torso.Position 
local part15 = Instance.new("Part") 
part15.formFactor = 1 
part15.Parent = modelzorz 
part15.CanCollide = false 
part15.Reflectance = 0
part15.BrickColor = BrickColor.new("Mid stone grey")
part15.Name = "Blade3" 
part15.Size = Vector3.new(1,2,1) 
part15.Position = Torso.Position 
local msh1 = Instance.new("BlockMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(1,1,0.5) 
local msh2 = Instance.new("SpecialMesh") 
msh2.Parent = prt2 
msh2.MeshType = "Wedge" 
msh2.Scale = Vector3.new(0.5,0.7,1) 
local msh3 = Instance.new("SpecialMesh") 
msh3.Parent = prt3 
msh3.MeshType = "Wedge" 
msh3.Scale = Vector3.new(0.5,0.7,1) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.9,0.9,0.5) 
local msh5 = Instance.new("BlockMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.9,0.9,0.5) 
local msh6 = Instance.new("BlockMesh") 
msh6.Parent = prt6 
msh6.Scale = Vector3.new(0.8,0.8,0.5) 
local msh7 = Instance.new("SpecialMesh") 
msh7.Parent = prt7 
msh7.MeshType = "Wedge" 
msh7.Scale = Vector3.new(0.5,0.5,0.8) 
local msh8 = Instance.new("SpecialMesh") 
msh8.Parent = prt8 
msh8.MeshType = "Wedge" 
msh8.Scale = Vector3.new(0.5,0.5,0.8) 
local msh9 = Instance.new("BlockMesh") 
msh9.Parent = prt9 
msh9.Scale = Vector3.new(0.7,0.7,0.5) 
local msh10 = Instance.new("BlockMesh") 
msh10.Parent = prt10 
msh10.Scale = Vector3.new(0.7,0.7,0.5) 
local msh11 = Instance.new("BlockMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(0.7,0.7,0.5) 
local msh12 = Instance.new("SpecialMesh") 
msh12.Parent = prt12 
msh12.MeshType = "Wedge" 
msh12.Scale = Vector3.new(0.4,0.5,0.7) 
local msh13 = Instance.new("SpecialMesh") 
msh13.Parent = prt13 
msh13.MeshType = "Wedge" 
msh13.Scale = Vector3.new(0.4,0.5,0.7) 
local msh14 = Instance.new("BlockMesh") 
msh14.Parent = prt14 
msh14.Scale = Vector3.new(0.5,0.5,0.5) 
local msh15 = Instance.new("BlockMesh") 
msh15.Parent = prt15 
msh15.Scale = Vector3.new(0.5,0.5,0.5) 
local msh16 = Instance.new("SpecialMesh") 
msh16.Parent = prt16 
msh16.MeshId = "http://www.roblox.com/Asset/?id=9756362" 
msh16.Scale = Vector3.new(0.6,0.6,0.6) 
local msh17 = Instance.new("SpecialMesh") 
msh17.Parent = prt17 
msh17.MeshId = "http://www.roblox.com/Asset/?id=9756362" 
msh17.Scale = Vector3.new(0.8,0.8,0.3) 
local msh18 = Instance.new("CylinderMesh") 
msh18.Parent = prt18 
msh18.Scale = Vector3.new(0.3,0.2,0.5) 
local msh19 = Instance.new("CylinderMesh") 
msh19.Parent = prt19 
msh19.Scale = Vector3.new(0.3,0.2,0.5) 
local mesh1 = Instance.new("CylinderMesh") 
mesh1.Parent = part1 
mesh1.Scale = Vector3.new(0.31,0.1,0.31) 
local mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = part2 
mesh2.Scale = Vector3.new(0.31,0.1,0.31) 
local mesh3 = Instance.new("CylinderMesh") 
mesh3.Parent = part3 
mesh3.Scale = Vector3.new(0.31,0.1,0.31) 
local mesh4 = Instance.new("CylinderMesh") 
mesh4.Parent = part4 
mesh4.Scale = Vector3.new(0.3,0.4,0.3) 
local mesh5 = Instance.new("SpecialMesh") 
mesh5.Parent = part5 
mesh5.MeshId = "http://www.roblox.com/asset/?id=3270017" 
mesh5.Scale = Vector3.new(0.6,0.6,0.6) 
local mesh6 = Instance.new("BlockMesh") 
mesh6.Parent = part6 
mesh6.Scale = Vector3.new(0.2,0.4,0.2) 
local mesh7 = Instance.new("BlockMesh") 
mesh7.Parent = part7 
mesh7.Scale = Vector3.new(0.2,0.4,0.2) 
local mesh8 = Instance.new("BlockMesh") 
mesh8.Parent = part8 
mesh8.Scale = Vector3.new(0.3,0.9,0.3) 
local mesh9 = Instance.new("BlockMesh") 
mesh9.Parent = part9 
mesh9.Scale = Vector3.new(0.2, 0.5, 0.2) 
local mesh10 = Instance.new("BlockMesh") 
mesh10.Parent = part10 
mesh10.Scale = Vector3.new(0.2, 0.5, 0.2) 
local mesh11 = Instance.new("BlockMesh") 
mesh11.Parent = part11 
mesh11.Scale = Vector3.new(0.2, 0.5, 0.2) 
local mesh12 = Instance.new("BlockMesh") 
mesh12.Parent = part12 
mesh12.Scale = Vector3.new(0.2, 0.5, 0.2) 
local mesh13 = Instance.new("BlockMesh") 
mesh13.Parent = part13 
mesh13.Scale = Vector3.new(1.3, 0.6, 0.2) 
local mesh14 = Instance.new("SpecialMesh") 
mesh14.Parent = part14 
mesh14.MeshType = "Wedge" 
mesh14.Scale = Vector3.new(0.2,0.4,0.5) 
local mesh15 = Instance.new("CylinderMesh") 
mesh15.Parent = part15 
mesh15.Scale = Vector3.new(2.3,0.8,0.3) 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.7) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(180)) * CFrame.new(0.5,1.6,0) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt1 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),math.rad(180)) * CFrame.new(-0.5,1.6,0) 
wld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt1 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.2) * CFrame.new(0.6,-0.9,0) 
wld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt1 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-1.2) * CFrame.new(-0.6,-0.9,0) 
wld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt1 
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.15,-0.05) 
wld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt2 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.05,0.2,-0.1) 
wld7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt3 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.05,0.2,-0.1) 
wld8.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = prt4 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.1,-0.05,-0.05) 
wld9.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = prt5 
wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.1,-0.05,-0.05) 
wld10.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = prt6 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.01) 
wld11.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt7 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.06,0.11,-0.06) 
wld12.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt8 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.06,0.11,-0.06) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt9 
wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.01) 
wld14.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt10 
wld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.01) 
wld15.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld16 = Instance.new("Weld") 
wld16.Parent = prt16 
wld16.Part0 = prt16 
wld16.Part1 = prt11 
wld16.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.1,-0.2) 
wld16.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld17 = Instance.new("Weld") 
wld17.Parent = prt17 
wld17.Part0 = prt17 
wld17.Part1 = prt11 
wld17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.1,-0.2) 
wld17.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld18 = Instance.new("Weld") 
wld18.Parent = prt18 
wld18.Part0 = prt18 
wld18.Part1 = prt14 
wld18.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(-0.1,0,-0.2) 
wld18.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld19 = Instance.new("Weld") 
wld19.Parent = prt19 
wld19.Part0 = prt19 
wld19.Part1 = prt15 
wld19.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0.1,0,-0.2) 
wld19.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld1 = Instance.new("Weld") 
weld1.Parent = part1 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld2 = Instance.new("Weld") 
weld2.Parent = part2 
weld2.Part0 = part2 
weld2.Part1 = part1 
weld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0) 
weld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld3 = Instance.new("Weld") 
weld3.Parent = part3 
weld3.Part0 = part3 
weld3.Part1 = part1 
weld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3,0) 
weld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld4 = Instance.new("Weld") 
weld4.Parent = part4 
weld4.Part0 = part4 
weld4.Part1 = part1 
weld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
weld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld5 = Instance.new("Weld") 
weld5.Parent = part5 
weld5.Part0 = part5 
weld5.Part1 = part1 
weld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.8,0) 
weld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld6 = Instance.new("Weld") 
weld6.Parent = part6 
weld6.Part0 = part6 
weld6.Part1 = part5 
weld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
weld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld7 = Instance.new("Weld") 
weld7.Parent = part7 
weld7.Part0 = part7 
weld7.Part1 = part5 
weld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
weld7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld8 = Instance.new("Weld") 
weld8.Parent = part8 
weld8.Part0 = part8 
weld8.Part1 = part1 
weld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0.6,0) 
local weld9 = Instance.new("Weld") 
weld9.Parent = part9 
weld9.Part0 = part9 
weld9.Part1 = part8 
weld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local weld10 = Instance.new("Weld") 
weld10.Parent = part10 
weld10.Part0 = part10 
weld10.Part1 = part9 
weld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local weld11 = Instance.new("Weld") 
weld11.Parent = part11 
weld11.Part0 = part11 
weld11.Part1 = part8 
weld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local weld12 = Instance.new("Weld") 
weld12.Parent = part12 
weld12.Part0 = part12 
weld12.Part1 = part11 
weld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local weld13 = Instance.new("Weld") 
weld13.Parent = part13 
weld13.Part0 = part13 
weld13.Part1 = part8 
weld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1.4,0,0) 
local weld14 = Instance.new("Weld") 
weld14.Parent = part14 
weld14.Part0 = part14 
weld14.Part1 = part13 
weld14.C0 = CFrame.fromEulerAnglesXYZ(3.95,math.rad(90),0) * CFrame.new(-1.3,0,0) 
local weld15 = Instance.new("Weld") 
weld15.Parent = part15 
weld15.Part0 = part15 
weld15.Part1 = part13 
weld15.C0 = CFrame.fromEulerAnglesXYZ(4.7,math.rad(90),0) * CFrame.new(0,0,0) 
local wingblade1 = Instance.new("Part") 
wingblade1.formFactor = 1 
wingblade1.Parent = nil 
wingblade1.Transparency = 0.4 
wingblade1.CanCollide = false 
wingblade1.Reflectance = 0
wingblade1.BrickColor = BrickColor.new("Really black")
wingblade1.Name = "Wingblade1" 
wingblade1.Size = Vector3.new(1,1,3) 
wingblade1.Position = Torso.Position 
local wingblade2 = Instance.new("Part") 
wingblade2.formFactor = 1 
wingblade2.Parent = nil 
wingblade2.Transparency = 0.4 
wingblade2.CanCollide = false 
wingblade2.Reflectance = 0
wingblade2.BrickColor = BrickColor.new("Really black")
wingblade2.Name = "Wingblade2" 
wingblade2.Size = Vector3.new(1,1,3) 
wingblade2.Position = Torso.Position 
local wingblade3 = Instance.new("Part") 
wingblade3.formFactor = 1 
wingblade3.Parent = nil 
wingblade3.Transparency = 0.4 
wingblade3.CanCollide = false 
wingblade3.Reflectance = 0
wingblade3.BrickColor = BrickColor.new("Really black")
wingblade3.Name = "Wingblade3" 
wingblade3.Size = Vector3.new(1,1,3) 
wingblade3.Position = Torso.Position 
local wingblade4 = Instance.new("Part") 
wingblade4.formFactor = 1 
wingblade4.Parent = nil 
wingblade4.Transparency = 0.4 
wingblade4.CanCollide = false 
wingblade4.Reflectance = 0
wingblade4.BrickColor = BrickColor.new("Really black")
wingblade4.Name = "Wingblade4" 
wingblade4.Size = Vector3.new(1,1,3) 
wingblade4.Position = Torso.Position 
local wingblade5 = Instance.new("Part") 
wingblade5.formFactor = 1 
wingblade5.Parent = nil 
wingblade5.Transparency = 0.4 
wingblade5.CanCollide = false 
wingblade5.Reflectance = 0
wingblade5.BrickColor = BrickColor.new("Really black")
wingblade5.Name = "Wingblade5" 
wingblade5.Size = Vector3.new(1,1,3) 
wingblade5.Position = Torso.Position 
local wingblade6 = Instance.new("Part") 
wingblade6.formFactor = 1 
wingblade6.Parent = nil 
wingblade6.Transparency = 0.4 
wingblade6.CanCollide = false 
wingblade6.Reflectance = 0
wingblade6.BrickColor = BrickColor.new("Really black")
wingblade6.Name = "Wingblade6" 
wingblade6.Size = Vector3.new(1,1,3) 
wingblade6.Position = Torso.Position 
local wingmesh1 = Instance.new("SpecialMesh") 
wingmesh1.Parent = wingblade1 
wingmesh1.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh1.Scale = Vector3.new(1,1,1) 
local wingmesh2 = Instance.new("SpecialMesh") 
wingmesh2.Parent = wingblade2 
wingmesh2.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh2.Scale = Vector3.new(1,1,1) 
local wingmesh3 = Instance.new("SpecialMesh") 
wingmesh3.Parent = wingblade3 
wingmesh3.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh3.Scale = Vector3.new(1,1,1) 
local wingmesh4 = Instance.new("SpecialMesh") 
wingmesh4.Parent = wingblade4 
wingmesh4.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh4.Scale = Vector3.new(1,1,1) 
local wingmesh5 = Instance.new("SpecialMesh") 
wingmesh5.Parent = wingblade5 
wingmesh5.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh5.Scale = Vector3.new(1,1,1) 
local wingmesh6 = Instance.new("SpecialMesh") 
wingmesh6.Parent = wingblade6 
wingmesh6.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh6.Scale = Vector3.new(1,1,1) 
local wingweld1 = Instance.new("Weld") 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(1,0,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld2 = Instance.new("Weld") 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld3 = Instance.new("Weld") 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld4 = Instance.new("Weld") 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld5 = Instance.new("Weld") 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld6 = Instance.new("Weld") 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local SlashSound = Instance.new("Sound") -- PRELOADING SOUNDS TROLOLOL 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = Character 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209850" 
SlashSound.Parent = Character 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209583" 
SlashSound.Parent = Character 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = Character 
SlashSound.Volume = .5 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=13775494" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.2 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.7 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974000" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.5 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.3 
local fengui = Instance.new("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = Instance.new("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 1 
fentext2.BackgroundColor3 = Color3.new(0,0,1) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = Instance.new("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 1 
fentext3.BackgroundColor3 = Color3.new(1,1,0) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
--2.9000001, 0}, {0.450000018, 0}
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Armatae" 
script.Parent = Tool 
end 
Bin = script.Parent 
function unequipweld() 
wait() 
wld1.Parent = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.7) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
if mode == "Attack" then 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
end 
end 
function equipweld() 
wld1.Part1 = RightArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,0,0) 
if mode == "Attack" then 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = LeftArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0,1,0) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
end 
end 
function hideanim() 
if Style ~= "WingBlade" then 
for i = 0 , 1 , 0.085 do 
wait(0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(90)-math.rad(180)+math.rad(180)*i,0,0) * CFrame.new(0,0,0) 
if mode == "Normal" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
elseif mode == "Attack" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,-0.5*i,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,0.5*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
unequipweld() 
for i = 0 , 1 , 0.085 do 
wait(0) 
if mode == "Normal" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
elseif mode == "Attack" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,-0.5+0.5*i,0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(-1.57+2.57*i,0,-1.2+1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
function equipanim() 
if Style ~= "WingBlade" then 
for i = 0 , 1 , 0.085 do 
wait(0) 
if mode == "Normal" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
elseif mode == "Attack" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,-0.5*i,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,0.5*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
for i = 0 , 1 , 0.085 do 
wait(0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(90)-math.rad(180)*i,0,0) * CFrame.new(0,0,0) 
if mode == "Normal" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
elseif mode == "Attack" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,-0.5+0.5*i,0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(-1.57+2.57*i,0,-1.2+1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
function changeequipleft() 
if Number > 1 then 
Number = Number - 1 
mode = Modes[Number] 
print(mode) 
if Number == 1 then 
NormalMode() 
end 
end 
end 
function changeequipright() 
if Number < #Modes then 
Number = Number + 1 
mode = Modes[Number] 
print(mode) 
if Number == 2 then 
AttackMode() 
end 
end 
end 
function findNearestTorso(pos)
local list = game.Workspace:children()
local torso = nil
local dist = 150
local temp = nil
local human = nil
local temp2 = nil
for x = 1, #list do
temp2 = list[x]
if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "outcast12345") then
temp = temp2:findFirstChild("Torso")
human = temp2:findFirstChild("Humanoid")
if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
if (temp.Position - pos).magnitude < dist then
torso = temp
dist = (temp.Position - pos).magnitude
end
end
end
end
return torso
end
function ChangeElement() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
magicsound(1) 
if element == "Light" then 
element = "Dark" 
WaveEffect(Torso,3,3,3,0,-2,0,0,0,0,BrickColor.new("Mid stone grey")) 
elseif element == "Dark" then 
element = "Light" 
WaveEffect(Torso,3,3,3,0,-2,0,0,0,0,BrickColor.new("Really black")) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3+0.6*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 
function NormalMode() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5+0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3+0.3*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 
function AttackMode() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = LeftArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0,1,0) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5+0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3+0.3*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 
function onehit() 
attack = true 
combo = 1 
ss(0.8) 
con1=LeftArm.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,-1*i) * CFrame.fromEulerAnglesXYZ(1.3*i,1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
if mana >= 1 then 
magicsound(2) 
if element == "Light" then 
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new("Really black")) 
else 
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new("Mid stone grey")) 
end 
mana = mana - 1 
end 
wait(0.3) 
con1:disconnect() 
attack = false 
end 
function twohit() 
attack = true 
combo = 2 
--con1=RightLeg.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,-1) * CFrame.fromEulerAnglesXYZ(1.3+1.7*i,1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
con1=RightArm.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(3-2.5*i,1.57-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
if mana >= 5 then 
magicsound(2) 
if element == "Light" then 
EVENMOARMAGIX(Torso,1,4,1,-1.5,-2,-1.3,0,0,0,BrickColor.new("Really black")) 
WaveEffect(Torso,0.5,2,0.5,-1.5,-2,-1.3,0,0,0,BrickColor.new("Really black")) 
else 
EVENMOARMAGIX(Torso,1,4,1,-1.5,-2,-1.3,0,0,0,BrickColor.new("Mid stone grey")) 
WaveEffect(Torso,0.5,2,0.5,-1.5,-2,-1.3,0,0,0,BrickColor.new("Mid stone grey")) 
end 
mana = mana - 5 
end 
wait(0.2) 
con1:disconnect() 
attack = false 
end 
function threehit() 
attack = true 
combo = 3 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+0.2*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = LeftArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0,1,0) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.2) 
ss(1) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5+0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+2.2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.7-0.5*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
wait(0.1) 
attack = false 
end 
function fourhit() 
attack = true 
combo = 4 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5+2*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
ss(1.2) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
wait(0.05) 
attack = false 
end 
function fivehit() 
attack = true 
combo = 5 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.7*i,0.5,-0.7*i) * CFrame.fromEulerAnglesXYZ(0.2+1.37*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(0.7) 
--shieldbash(1) 
con1=prt1.Touched:connect(function(hit) Bash(hit,40) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.7+0.7*i,0.5,-0.7+0.7*i) * CFrame.fromEulerAnglesXYZ(0.2+1.37,0,-1+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
wait(0.3) 
attack = false 
end 
function oneslash() 
attack = true 
combo = 1 
ss(1) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
attack = false 
end 
function twoslash() 
attack = true 
combo = 2 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+1.1*i,0.5+0.5*i,-0.8*i) * CFrame.fromEulerAnglesXYZ(3-1.43*i,0,1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1.2) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+1.1-1.1*i,0.5+0.5-0.5*i,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(3-1.43,0,1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
attack = false 
end 
function threeslash() 
attack = true 
combo = 3 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,1.57+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3,1.57+2*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait(0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)*i,0,math.rad(90)-math.rad(90)*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5,0,1.57+2) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3+1*i,1.57+2,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
attack = false 
end 
function fourslash() 
attack = true 
combo = 4 
for i = 0,1,0.1 do 
wait(0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)-math.rad(90)*i,0,math.rad(90)-math.rad(90)+math.rad(90)) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5+0.6*i,0.5+0.5*i,-0.5-0.3*i) * CFrame.fromEulerAnglesXYZ(1.57+0.5-0.5*i,0,1.57+2-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3+1-4*i,1.57+2-2*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Player.Character.Head.CFrame.lookVector * 30 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
ss(0.7) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0 , 1 , 0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+1.1-0.55*i,0.5+0.5-0.25*i,-0.5-0.3+0.15*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
end 
ss(0.7) 
for i = 0 , 1 , 0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.55-0.55*i,0.5+0.25-0.25*i,-0.5-0.15+0.15*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5+1.5*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
end 
vel.Parent = nil 
vel2.Parent = nil 
wait(0.2) 
con1:disconnect() 
attack = false 
end 
function castone() 
if mana >= 10 then 
attack = true 
combo = 1 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
local testbrick = Instance.new("Part") 
testbrick.Parent = Character 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(0,0,-3) 
coroutine.resume(coroutine.create(function() 
for i = 0,5 do 
wait(0.1) 
mana = mana - 2 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - testbrick.Position;
local mag = targ.magnitude;
if mag <= 3 and c.Name ~= Player.Name then 
Damagefunc1(head,5,1) 
end 
end 
end 
end 
magicsound(1.5) 
derp = math.random(1,2) 
if derp == 1 then 
MMMAGIC(Head,2,2,2,math.random()+math.random(),math.random()+math.random(),-3,BrickColor.new("Really black")) 
else 
MMMAGIC(Head,2,2,2,-math.random()-math.random(),-math.random()-math.random(),-3,BrickColor.new("Really black")) 
end 
end 
testbrick.Parent = nil 
end)) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-1*i,0,1-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1,0,1-1.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3) 
attack = false 
end 
end 
function casttwo() 
if mana >= 5 then 
attack = true 
combo = 2 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1+2*i,0,-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
mana = mana - 5 
local testbrick = Instance.new("Part") 
testbrick.Parent = Character 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(1.5,0,-3.6) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - testbrick.Position;
local mag = targ.magnitude;
if mag <= 3 and c.Name ~= Player.Name then 
-- Damagefunc1(head,5,1) 
UpBlast(head,math.random(10,20))
end 
end 
end 
end 
magicsound(1.3) 
EVENMOARMAGIX(Torso,1,6,1,1.5,-3,-3.6,0,0,0,BrickColor.new("Mid stone grey")) 
WaveEffect(Torso,1.5,3,1.5,1.5,-2,-3.6,0,0,0,BrickColor.new("Mid stone grey")) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-4.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
testbrick.Parent = nil 
attack = false 
end 
end 
function castthree() 
if mana >= 20 then 
attack = true 
combo = 3 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,0,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1.5+3.07*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local bawlofdewm1 = Instance.new("Part") 
bawlofdewm1.formFactor = 1 
bawlofdewm1.Parent = Character 
bawlofdewm1.CanCollide = false 
bawlofdewm1.BrickColor = BrickColor.new("Really black") 
bawlofdewm1.Name = "Light Sphere" 
bawlofdewm1.Size = Vector3.new(1,1,1) 
bawlofdewm1.Position = Torso.Position 
local bawlofdewm2 = Instance.new("Part") 
bawlofdewm2.formFactor = 1 
bawlofdewm2.Parent = Character 
bawlofdewm2.CanCollide = false 
bawlofdewm2.BrickColor = BrickColor.new("Mid stone grey") 
bawlofdewm2.Name = "Dark Sphere" 
bawlofdewm2.Size = Vector3.new(1,1,1) 
bawlofdewm2.Position = Torso.Position 
local bawlmesh1 = Instance.new("SpecialMesh") 
bawlmesh1.Parent = bawlofdewm1 
bawlmesh1.MeshType = "Sphere" 
bawlmesh1.Scale = Vector3.new(0.2,0,0.2) 
local bawlmesh2 = Instance.new("SpecialMesh") 
bawlmesh2.Parent = bawlofdewm2 
bawlmesh2.MeshType = "Sphere" 
bawlmesh2.Scale = Vector3.new(0.2,0,0.2) 
local bawlweld1 = Instance.new("Weld") 
bawlweld1.Parent = bawlofdewm1 
bawlweld1.Part0 = bawlofdewm1 
bawlweld1.Part1 = LeftArm 
bawlweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.9) * CFrame.new(0,1,0) 
bawlweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local bawlweld2 = Instance.new("Weld") 
bawlweld2.Parent = bawlofdewm2 
bawlweld2.Part0 = bawlofdewm2 
bawlweld2.Part1 = bawlofdewm1 
bawlweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.2,0) 
bawlweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.5) 
for i = 0,1,0.1 do 
wait(0) 
mana = mana - 2 
bawlmesh1.Scale = bawlmesh1.Scale + Vector3.new(0.2,0.2,0.2) 
bawlmesh2.Scale = bawlmesh2.Scale + Vector3.new(0.2,0.2,0.2) 
end 
abscond(0.8) 
bawlweld1.Parent = nil 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = bawlofdewm1 
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Player.Character.Head.CFrame.lookVector * 10 
coroutine.resume(coroutine.create(function() 
for i = 0,3,0.1 do 
wait() 
MMMAGIC(bawlofdewm1,2,2,2,0,0,0,BrickColor.new("Really black")) 
MMMAGIC(bawlofdewm2,2,2,2,0,0,0,BrickColor.new("Mid stone grey")) 
end 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - bawlofdewm1.Position;
local mag = targ.magnitude;
if mag <= 5 and c.Name ~= Player.Name then 
-- Damagefunc1(head,5,1) 
UpBlast(head,math.random(30,60))
end 
end 
end 
end 
magicsound(1) 
EVENMOARMAGIX(bawlofdewm1,3,9,3,0,0,0,math.rad(90),0,0,BrickColor.new("Mid stone grey")) 
WaveEffect(bawlofdewm1,5,6,5,0,0,0,-math.rad(90),0,0,BrickColor.new("Mid stone grey")) 
BlastEffect(bawlofdewm1,5,9,5,0,0,0,-math.rad(90),0,0,BrickColor.new("Really black")) 
bawlofdewm1.Parent = nil 
bawlofdewm2.Parent = nil 
end)) 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,0.5-1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.5+1.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(1) 
--[[bawlofdewm1.Parent = nil 
bawlofdewm2.Parent = nil ]]
attack = false 
end 
end 
function castfour() 
if mana >= 5 then 
attack = true 
combo = "castfour" 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+2.5*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = mana - 5 
local testbrick = Instance.new("Part") 
testbrick.Parent = Character 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(-1.5,0,-3.6) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - testbrick.Position;
local mag = targ.magnitude;
if mag <= 3 and c.Name ~= Player.Name then 
-- Damagefunc1(head,5,1) 
UpBlast(head,math.random(10,20))
end 
end 
end 
end 
magicsound(1.3) 
EVENMOARMAGIX(Torso,1,6,1,-1.5,-3,-3.6,0,0,0,BrickColor.new("Really black")) 
WaveEffect(Torso,1.5,3,1.5,-1.5,-2,-3.6,0,0,0,BrickColor.new("Really black")) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
testbrick.Parent = nil 
attack = false 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
end 
end 
function castfive() 
attack = true 
combo = "castfive" 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,-1-0.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,0.5+1.07*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--[[local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Player.Character.Head.CFrame.lookVector * 15 ]] 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
for i = 0,1,0.1 do 
wait(0.05) 
magicsound(2) 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(720)*i,0) 
--[[MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Really black")) 
MMMAGIC(RightArm,3,3,3,0,-1,0,BrickColor.new("Mid stone grey")) ]]
EVENMOARMAGIX(LeftArm,3,3,3,0,-1,0,0,0,0,BrickColor.new("Really black")) 
EVENMOARMAGIX(RightArm,3,3,3,0,-1,0,0,0,0,BrickColor.new("Mid stone grey")) 
end 
vel.Parent = nil 
--vel2.Parent = nil 
wait(1) 
combo = 0 
attack = false 
end 
function wingbladeslashone() 
attack = true 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = LeftArm 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = RightArm 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
con1=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
ss(1) 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,-3+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.33*i,-1*i,3-5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
con1=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
ss(1.2) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1.57*i,-1+3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-1*i,-1+1*i,-2+3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+2*i,1.57-1.57*i,2-1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+2*i,0,1-1.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,40,10) end) 
con2=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,40,10) end) 
wait(0.1) 
ss(0.8) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-4*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-4*i,0,-0.5+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
con2:disconnect() 
WingBladeEffect(0,1,0,1,0,0) 
wingblade2.Transparency = 1 
wingblade5.Transparency = 1 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0,-3) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,-0.2,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0,-3) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0.2,0) * CFrame.new(0,0,0) 
attack = false 
end 
function wingbladeslashtwo() 
attack = true 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+0.5*i,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+0.5*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = LeftArm 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = RightArm 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.1) 
ss(1) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld3.Parent = nil 
coroutine.resume(coroutine.create(function() 
local wingvel = Instance.new("BodyGyro") 
wingvel.Parent = wingblade3 
wingvel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
wingvel.P = 20e+003 
wingCF = wingblade3.CFrame 
local wingvel2 = Instance.new("BodyVelocity")
wingvel2.Parent = wingblade3 
wingvel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
wingvel2.velocity = Player.Character.Head.CFrame.lookVector * 70 
con1=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,40,10) end) 
for i = 0,1,0.05 do 
wait() 
wingvel.cframe = wingCF * CFrame.fromEulerAnglesXYZ(math.rad(360)*i,0,0) 
end 
con1:disconnect() 
WingBladeEffect(0,0,1,0,0,0) 
wingvel2.Parent = nil 
wingblade3.Parent = nil 
wingvel.Parent = nil 
wingvel2.Parent = nil 
wait(0.5) 
wingblade3.Parent = modelzorz 
wingblade3.Transparency = 1 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0.5,-3.3) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
end)) 
wait(0.1) 
ss(1) 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5-2.5*i,0,1-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld6.Parent = nil 
coroutine.resume(coroutine.create(function() 
local wingvel = Instance.new("BodyGyro") 
wingvel.Parent = wingblade6 
wingvel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
wingvel.P = 20e+003 
wingCF = wingblade6.CFrame 
local wingvel2 = Instance.new("BodyVelocity")
wingvel2.Parent = wingblade6 
wingvel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
wingvel2.velocity = Player.Character.Head.CFrame.lookVector * 70 
con2=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,40,10) end) 
for i = 0,1,0.05 do 
wait() 
wingvel.cframe = wingCF * CFrame.fromEulerAnglesXYZ(math.rad(360)*i,0,0) 
end 
con2:disconnect() 
WingBladeEffect(0,0,0,0,0,1) 
wingvel2.Parent = nil 
wingblade6.Parent = nil 
wingvel.Parent = nil 
wingvel2.Parent = nil 
wait(0.5) 
wingblade6.Parent = modelzorz 
wingblade6.Transparency = 1 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0.5,-3.3) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
end)) 
wait(0.1) 
attack = false 
end 
function wingbladeslashthree() 
attack = true 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-1.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5-4*i,0,-1+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = LeftArm 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = RightArm 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-3+4.57*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-3+4.57*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
con2=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
ss(1.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-3+4.57,0,1-3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-3+4.57,0,-1+3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(600)*i,0) * CFrame.new(0,1,0) 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(600)*i,0) * CFrame.new(0,1,0) 
end 
con1:disconnect() 
con2:disconnect() 
wingblade1.Transparency = 1 
wingblade4.Transparency = 1 
WingBladeEffect(1,0,0,1,0,0) 
wait(0.1) 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,-0.5,-3.3) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,-0.5,-3.3) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5,0.2,0) * CFrame.new(0,0,0) 
attack = false 
end 
function wingbladeslashfour() 
attack = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-2+3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,2-0.43*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingblade1.Transparency = 0.4 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) * CFrame.new(0,0,0) 
wingblade2.Transparency = 0.4 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),1,0) * CFrame.new(0,0,0) 
wingblade3.Transparency = 0.4 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),2,0) * CFrame.new(0,0,0) 
wingblade4.Transparency = 0.4 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),3,0) * CFrame.new(0,0,0) 
wingblade5.Transparency = 0.4 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),4,0) * CFrame.new(0,0,0) 
wingblade6.Transparency = 0.4 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),5,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
wait(0.2) 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
for i = 0,1,0.1 do 
wait() 
ss(1.2) 
wingweld1.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld2.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld3.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld4.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld5.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld6.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-2+3-3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-2.43*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
con5:disconnect() 
con6:disconnect() 
wait(0.3) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
WingBladeEffect(1,1,1,1,1,1) 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,-0.5,-3.3) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0,-3) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0.5,-3.3) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,-0.5,-3.3) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5,0.2,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0,-3) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0.2,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0.5,-3.3) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
attack = false 
end 
function ArsSolum() 
attack = true 
ss(1) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5+0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+2.2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.7-0.5*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5+3*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.9) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4.5-5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(180)*i,0,math.rad(90)) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4.5-5,0,-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1.1) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(180),0,math.rad(90)) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3.5*i,-1*i,-1+2.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(180)-math.rad(180)*i,0,math.rad(90)) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(3+1*i,-1+1*i,1.5-1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
wait(0.5) 
attack = false 
end 
function ShieldDash() 
if mana >= 20 then 
attack = true 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.9*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = mana - 20 
ss(0.5) 
con1=prt1.Touched:connect(function(hit) Bash(hit,40) end) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Head.CFrame.lookVector * 100 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Really black")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Really black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Really black")) 
else 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Mid stone grey")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Mid stone grey")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Mid stone grey")) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7,0.5,-0.5-0.3*i) * CFrame.fromEulerAnglesXYZ(1.9,0,1-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5-0.3*i) * CFrame.fromEulerAnglesXYZ(1+0.57,0,-1.2+0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Really black")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Really black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Really black")) 
else 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Mid stone grey")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Mid stone grey")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Mid stone grey")) 
end 
end 
vel.Parent = nil 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Really black")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Really black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Really black")) 
else 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Mid stone grey")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Mid stone grey")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Mid stone grey")) 
end 
end 
if mode == "Normal" then 
wait(0.3) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7-0.7*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1.9-1.9*i,0,1-0.3-0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1+0.57-0.57*i,0,-1.2+0.3+0.9*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = nil 
wait(0.2) 
con1:disconnect() 
elseif mode == "Attack" then 
if holddash == true and mana >= 20 then 
con1:disconnect() 
gairo.Parent = nil 
wait(0.5) 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7-0.7*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(1.9,0,0.7-1.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.9+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
con1=part13.Touched:connect(function(hit) Damagefunc2(hit,40,25) end) 
mana = mana - 20 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Head.CFrame.lookVector * 100 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("Really black")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("Really black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Really black")) 
else 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("Mid stone grey")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("Mid stone grey")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Mid stone grey")) 
end 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)*i,0,math.rad(90)-math.rad(90)*i) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-1) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.9-0.33*i,0,0.7-1.5+0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.9+2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("Really black")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("Really black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Really black")) 
else 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("Mid stone grey")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("Mid stone grey")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Mid stone grey")) 
end 
end 
vel.Parent = nil 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("Really black")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("Really black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Really black")) 
else 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("Mid stone grey")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("Mid stone grey")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Mid stone grey")) 
end 
end 
wait(0.3) 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)-math.rad(90)*i,0,math.rad(90)-math.rad(90)+math.rad(90)*i) * CFrame.new(0,1,0)
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-0.5+0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.9-0.33-1.57*i,0,1.2-1.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,1.1-1.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = nil 
else 
wait(0.3) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.9-0.33-1.57*i,0,1.2-1.2*i) 
--LW.C0 = CFrame.new(-1.5+0.7-0.7*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1.9-1.9*i,0,1-0.3-0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1+0.57-0.57*i,0,-1.2+0.3+0.9*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = nil 
wait(0.2) 
con1:disconnect() 
end 
end 
attack = false 
end 
end 
function guard() 
attack = true 
guarding = true 
Character.Humanoid.WalkSpeed = 20 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8*i,0.5+0.2*i,-0.8*i) * CFrame.fromEulerAnglesXYZ(2.07*i,0,1.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8*i,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(0.7+0.87*i,0,-1.4*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
humanoid = Character.Humanoid 
lhh = humanoid.Health
while guarding == true do 
wait() 
if humanoid.Health < lhh then
print(lhh - humanoid.Health) 
test = lhh - humanoid.Health 
if mana < 400 then 
mana = mana + math.random(test, test*50) 
end 
if mana > 400 then 
mana = 400 
end 
if mode == "Normal" then 
humanoid.Health = lhh - (test * 50) 
elseif mode == "Attack" then 
humanoid.Health = lhh - (test * 50) 
end 
lhh = humanoid.Health
shieldbash(1) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1000
vel.velocity = Player.Character.Torso.CFrame.lookVector * -20 
velo = -20 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.8,0.5+0.2,-0.8) * CFrame.fromEulerAnglesXYZ(2.07,0,1.4+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(0.7+0.87,0,-1.4-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
end 
for i = 0,1,0.05 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.8,0.5+0.2,-0.8) * CFrame.fromEulerAnglesXYZ(2.07,0,1.4+0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(0.7+0.87,0,-1.4-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
velo = velo + 0.5 
vel.velocity = Player.Character.Torso.CFrame.lookVector * velo 
end 
vel.Parent = nil 
end
wait(0.1)
end 
Character.Humanoid.WalkSpeed = 16 
if bashing == false then 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8-0.8*i,0.5+0.2-0.2*i,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(2.07-2.07*i,0,1.4-1.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8+0.8*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(0.7+0.87-0.87*i,0,-1.4+1.4*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.7,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attack = false 
end 
end 
function Bashem() 
attack = true 
bashing = true 
guarding = false 
if mode == "Normal" then 
ss(0.7) 
con1=prt1.Touched:connect(function(hit) Bash(hit,40) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8-0.8*i,0.5+0.2-0.2*i,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(2.07,0,1.4-3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8+0.8*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(0.7+0.87,0,-1.4+3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.15) 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.07-2.07*i,0,-1.6+1.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.87*i,0,1.6-1.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif mode == "Attack" then 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8+0.3*i,0.5+0.2+0.3*i,-0.8) * CFrame.fromEulerAnglesXYZ(2.07-0.5*i,0,1.4+0.17*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,0) 
RW.C0 = CFrame.new(1.5-0.8+0.8*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.4+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=part13.Touched:connect(function(hit) Damagefunc2(hit,40,25) end) 
ss(1.1) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+1.1-1.1*i,0.5+0.5-0.5*i,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(2.07-0.5,0,1.4+0.17) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(4*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.4+2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.15) 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,1.57-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(4-4*i,1.57-1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,-1.4+2-0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
bashing = false 
attack = false 
end 
function WingBladeStance(seeing) 
wingblade1.Parent = modelzorz 
wingblade2.Parent = modelzorz 
wingblade3.Parent = modelzorz 
wingblade4.Parent = modelzorz 
wingblade5.Parent = modelzorz 
wingblade6.Parent = modelzorz 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,-0.5,-3.3) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0,-3) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0.5,-3.3) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,-0.5,-3.3) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5,0.2,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0,-3) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0.2,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0.5,-3.3) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
if seeing == true then 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
else 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
end 
end 
function StyleChange() 
attack = true 
if mode == "Normal" then 
Character.Humanoid.WalkSpeed = 0 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
Style = "MagicMayhem" 
coroutine.resume(coroutine.create(function() 
while Style == "MagicMayhem" do 
wait(0.1) 
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new("Really black")) 
MMMAGIC(RightArm,2,2,2,0,-1,0,BrickColor.new("Mid stone grey")) 
end 
end)) 
magicsound(1) 
BlastEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("Really black")) 
WaveEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("Mid stone grey")) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3+0.6*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-3.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-3.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
Character.Humanoid.WalkSpeed = 16 
elseif mode == "Attack" then 
Character.Humanoid.WalkSpeed = 0 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
WingBladeStance(true) 
magicsound(1) 
if element == "Light" then 
BlastEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("Really black")) 
WaveEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("Really black")) 
else 
BlastEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("Mid stone grey")) 
WaveEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("Mid stone grey")) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3+0.6*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-3.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-3.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--[[for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
wait(0.05) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end ]]
hideanim() 
Style = "WingBlade" 
Character.Humanoid.WalkSpeed = 20 
end 
attack = false 
end 
function idleanim() 
if attack == false then 
--print("MOARDERP") 
for i = 0,1,0.05 do 
wait() 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5+0.3*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0.2*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5+0.1*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5+0.3*i,0.2,0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0.2*i,0.2,0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5+0.1*i,0.2,0) * CFrame.new(0,0,0) 
end 
wait(0.5) 
for i = 0,1,0.05 do 
wait() 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5+0.3-0.5*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0.2-0.3*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5+0.1-0.1*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5+0.3-0.5*i,0.2,0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0.2-0.3*i,0.2,0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5+0.1-0.1*i,0.2,0) * CFrame.new(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.05 do 
wait() 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5-0.2+0.2*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(-0.1+0.1*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5-0.2+0.2*i,0.2,0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(-0.1+0.1*i,0.2,0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
end 
end 
end 
function MegaHit() 
if mana >= 5 then 
attack = true 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
Charge(2) 
for i = 0,1,0.1 do 
wait() 
if element == "Light" then 
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Really black")) 
elseif element == "Dark" then 
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Mid stone grey")) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Really black")) 
elseif element == "Dark" then 
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Mid stone grey")) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-0.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = mana - 5 
local testbrick = Instance.new("Part") 
testbrick.Parent = modelzorz 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(-3,0,-2) 
coroutine.resume(coroutine.create(function() 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - testbrick.Position;
local mag = targ.magnitude;
if mag <= 3 and c.Name ~= Player.Name then 
UpBlast(head,math.random(20,30))
end 
end 
end 
end 
end)) 
magicsound(2) 
if element == "Light" then 
EVENMOARMAGIX(Torso,1,6,1,-3,-2,-2,0,0,0,BrickColor.new("Really black")) 
WaveEffect(Torso,2.5,3,2.5,-3,-2,-2,0,0,0,BrickColor.new("Really black")) 
else 
EVENMOARMAGIX(Torso,2,5,2,-3,-2,-2,0,0,0,BrickColor.new("Mid stone grey")) 
WaveEffect(Torso,1.5,4,1.5,-3,-2,-2,0,0,0,BrickColor.new("Mid stone grey")) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-0.5+0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
testbrick.Parent = nil 
gairo.Parent = nil 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
attack = false 
end 
end 
function SwordRaid() 
if mana >= 20 then 
attack = true 
local UltimaPart = Instance.new("Part") 
UltimaPart.Parent = modelzorz 
UltimaPart.CanCollide = false 
UltimaPart.Position = Torso.Position 
UltimaPart.Transparency = 1 
local UltimaWeld = Instance.new("Weld") 
UltimaWeld.Parent = UltimaPart 
UltimaWeld.Part0 = UltimaPart 
UltimaWeld.Part1 = Torso 
UltimaWeld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local wingvel2 = Instance.new("BodyVelocity")
wingvel2.Parent = UltimaPart
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
wait(0.4) 
wingblade1.Transparency = 0.4 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = UltimaPart 
wingweld1.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade2.Transparency = 0.4 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = UltimaPart 
wingweld2.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade3.Transparency = 0.4 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = UltimaPart 
wingweld3.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade4.Transparency = 0.4 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = UltimaPart 
wingweld4.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade5.Transparency = 0.4 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = UltimaPart 
wingweld5.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade6.Transparency = 0.4 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = UltimaPart 
wingweld6.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5,math.rad(90),0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
ss(1.2) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.57+0.43*i,0,-1+1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.2*i,0.5,-0.5+0.2*i) * CFrame.fromEulerAnglesXYZ(1.57+0.43*i,0,-1+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = mana - 20 
UltimaWeld.Parent = nil 
wingvel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1 
wingvel2.velocity = Player.Character.Head.CFrame.lookVector * 70 
coroutine.resume(coroutine.create(function() 
for i = 0,3,0.1 do 
wait() 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
ss(1.2) 
end 
wingvel2.Parent = nil 
UltimaPart.Parent = nil 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
wait(0.4) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
con5:disconnect() 
con6:disconnect() 
WingBladeStance(true) 
WingBladeEffect(1,1,1,1,1,1) 
end)) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.3-0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.3+0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(2-3*i,0,-0.5+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.5) 
attack = false 
end 
end 
function SwordRage() 
attack = true 
SwordRaging = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = LeftArm 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = RightArm 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-2+4*i,0,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2+3*i,0,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(1.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-2+4-1*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-2+3+1*i,0,0.5-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.05) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,-0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-1*i,0,-0.5+1.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,1-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
WingBladeEffect(1,0,0,1,0,0) 
wingblade1.Transparency = 1 
wingblade4.Transparency = 1 
con1:disconnect() 
con4:disconnect() 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-2.57*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-2.57*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = LeftArm 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = RightArm 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1+4*i,0,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1+4*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(3-2.5*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(3-2.5*i,0,-0.5+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con2:disconnect() 
con5:disconnect() 
WingBladeEffect(0,1,0,0,1,0) 
wingblade2.Transparency = 1 
wingblade5.Transparency = 1 
wait(0.05) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5-1*i,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5-1*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = LeftArm 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,2,-0.5) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = RightArm 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,2,-0.5) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
end 
wait(0.1) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1.5*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1.5*i,0,0) 
end 
con3:disconnect() 
con6:disconnect() 
WingBladeEffect(0,0,1,0,0,1) 
wingblade3.Transparency = 1 
wingblade6.Transparency = 1 
wait(0.1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,-1.57+1.57*i,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,1.57-1.57*i,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
end 
attack = false 
end 
function SwordRageZ() 
attack = true 
WingBladeEffect(1,1,0,1,1,0) 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = LeftArm 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0.5) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = RightArm 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0.5) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = LeftArm 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,-0.5) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = RightArm 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,-0.5) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-0.43*i,0,-0.5+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-0.43*i,0,0.5-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.5+1-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,0.5-1+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
con2:disconnect() 
con4:disconnect() 
con5:disconnect() 
WingBladeEffect(1,1,0,1,1,0) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,-0.5+1-0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0.5-1+0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 
function SwordRageX() 
attack = true 
WingBladeEffect(0,1,1,0,1,1) 
wingblade3.Transparency = 0.4 
wingblade6.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = LeftArm 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = LeftArm 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,2,-0.5) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,-1.57*i,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
WingBladeEffect(0,1,1,0,0,0) 
wingblade3.Transparency = 1 
wingblade2.Transparency = 1 
con3:disconnect() 
con2:disconnect() 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,-1.57+1.57*i,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
end 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
end 
wait(0.1) 
WingBladeEffect(0,0,0,0,1,1) 
wingblade6.Transparency = 1 
wingblade5.Transparency = 1 
con6:disconnect() 
con5:disconnect() 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,1.57-1.57*i,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
end 
attack = false 
end 
function EndSwordRage() 
attack = true 
wait(0.1) 
WingBladeStance(true) 
WingBladeEffect(1,1,1,1,1,1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 
function MagicBarrage() 
attack = true 
if element == "Light" then 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
while barragehold == true and mana >= 0 do 
wait(0.1) 
mana = mana - math.random(0,10) 
ss(1+math.random()) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1+math.random(),0,math.random(-1,0)+math.random()) 
coroutine.resume(coroutine.create(function() 
slasheffect(LeftArm.CFrame*CFrame.new(0,-3,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0,10,nil)
end)) 
end 
if mana <= 0 then 
mana = 0 
end 
else 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local p = Instance.new("Part") 
p.Parent = Character 
p.Name = "TestBrick" 
p.CFrame = RightArm.CFrame*CFrame.new(0,1,0) 
p.CanCollide = false 
p.Transparency = 1 
local pweld = Instance.new("Weld") 
pweld.Parent = p 
pweld.Part0 = p 
pweld.Part1 = RightArm 
pweld.C0 = CFrame.new(0,1,0) 
coroutine.resume(coroutine.create(function() 
while p.Parent ~= nil do 
wait(0.05) 
MMMAGIC(p,4,4,4,0,0,0,BrickColor.new("Mid stone grey")) 
EVENMOARMAGIX(p,3,3,3,0,0,0,math.random(-50,50),math.random(-50,50),math.random(-50,50),BrickColor.new("Mid stone grey")) 
MOREMAGIX(p,0,2,2,2,BrickColor.new("Mid stone grey")) 
end 
end)) 
DarkRiftF(p) 
p.Parent = nil 
end 
attack = false 
end 
function Regening() 
attack = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
while regening == true do 
wait(0.1) 
DifferentEffect() 
if mana >= 400 then 
mana = 400 
else 
Character.Humanoid.Health = Character.Humanoid.Health + 0.01 
mana = mana + 100 
end 
end 
attack = false 
end 
function Ultima() 
attack = true 
if mana == 400 then 
if Style == "MagicMayhem" then 
print("LOLOL ECLIPSE TIEM") 
for i = 0,1,0.05 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.5*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,2 do 
wait(0.8) 
magicsound(1) 
MMMAGIC(LeftArm,5,5,5,0,-1,0,BrickColor.new("Really black")) 
MMMAGIC(RightArm,5,5,5,0,-1,0,BrickColor.new("Mid stone grey")) 
end 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+2.17*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-2.17*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
Charge(0.4) 
for i = 0,10,0.5 do 
wait(0.1) 
UltimaMMMAGIC(LeftArm,i,i,i,0,-1,0,BrickColor.new("Really black")) 
UltimaMMMAGIC(RightArm,i,i,i,0,-1,0,BrickColor.new("Mid stone grey")) 
end 
coroutine.resume(coroutine.create(function() 
while Style == "MagicMayhem" do 
wait(0.1) 
UltimaMMMAGIC(LeftArm,10,10,10,0,-1,0,BrickColor.new("Really black")) 
UltimaMMMAGIC(RightArm,10,10,10,0,-1,0,BrickColor.new("Mid stone grey")) 
end 
end)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,-1.57+2.17) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,1.57-2.17) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5-1*i,0,-1.57+2.17) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5-1*i,0,1.57-2.17) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = 400 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - Torso.Position;
local mag = targ.magnitude;
if mag <= 600 and c.Name ~= Player.Name then 
UltimaMagicMayhemDamage(head,math.random(1000,2000))
end 
end 
end 
end 
Style = "Normal" 
MagicMayhemUltimaSounds() 
for i = 0,9,0.2 do 
wait() 
MMMAGIC(Torso,90,90,90,0,0,0,BrickColor.new("Really black")) 
MMMAGIC(Torso,90,90,90,0,0,0,BrickColor.new("Mid stone grey")) 
EVENMOARMAGIX(Torso,80,80,80,0,0,0,0,0,0,BrickColor.new("Really black")) 
EVENMOARMAGIX(Torso,80,80,80,0,0,0,0,0,0,BrickColor.new("Mid stone grey")) 
WaveEffect(Torso,70,70,70,0,0,0,0,math.random(-50,50),0,BrickColor.new("Really black")) 
WaveEffect(Torso,70,70,70,0,0,0,0,math.random(-50,50),0,BrickColor.new("Mid stone grey")) 
MMMAGIC(Torso,5,5,5,math.random(-35,35),0,math.random(-35,35),BrickColor.new("Really black")) 
MMMAGIC(Torso,5,5,5,math.random(-35,35),0,math.random(-35,35),BrickColor.new("Mid stone grey")) 
end 
coroutine.resume(coroutine.create(function() 
local clone = Instance.new("Part") 
clone.Parent = workspace 
clone.CFrame = Torso.CFrame 
clone.CanCollide = false 
clone.Transparency = 1 
clone.Anchored = true 
for i = 0,10,0.2 do 
wait(0.1) 
MMMAGIC(clone,1,1,1,math.random(-30,30),0,math.random(-30,30),BrickColor.new("Really black")) 
MMMAGIC(clone,1,1,1,math.random(-30,30),0,math.random(-30,30),BrickColor.new("Mid stone grey")) 
end 
clone.Parent = nil 
end)) 
elseif Style == "WingBlade" then 
print("LOLOL MULTIVORTEX TIEM") 
mana = 0 
coroutine.resume(coroutine.create(function() 
while attack == true do 
wait() 
mana = 400 
end 
end)) 
Character.Humanoid.PlatformStand = true 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
original = Head.CFrame 
bod = Instance.new("BodyPosition")
bod.position = Torso.Position 
bod.Parent = Torso
bod.maxForce = Vector3.new(4e+080, 4e+080, 4e+080) 
target = meh 
--bod.position = target.Position 
local b = Instance.new("BodyGyro") 
b.P=18000
b.D=600
b.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000 
b.Parent = Head 
if target ~= nil then 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos, pos + dir) 
end 
local UltimaPart = Instance.new("Part") 
UltimaPart.Parent = modelzorz 
UltimaPart.CanCollide = false 
UltimaPart.Position = Torso.Position 
UltimaPart.Transparency = 1 
local UltimaWeld = Instance.new("Weld") 
UltimaWeld.Parent = UltimaPart 
UltimaWeld.Part0 = UltimaPart 
UltimaWeld.Part1 = Torso 
UltimaWeld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
wait(0.4) 
wingblade1.Transparency = 0.4 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = UltimaPart 
wingweld1.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade2.Transparency = 0.4 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = UltimaPart 
wingweld2.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade3.Transparency = 0.4 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = UltimaPart 
wingweld3.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade4.Transparency = 0.4 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = UltimaPart 
wingweld4.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade5.Transparency = 0.4 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = UltimaPart 
wingweld5.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade6.Transparency = 0.4 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = UltimaPart 
wingweld6.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5,math.rad(90),0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
for i = 0,1,0.1 do 
wait() 
bod.position = Torso.Position + Vector3.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
target = meh 
if target ~= nil then 
bod.position = target.Position 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos, pos + dir) 
end 
for i = 0,1,0.1 do 
wait() 
ss(1.2) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i,0,-0.5+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.5+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,2 do 
wait() 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(0.5+1.5*i,0,0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.5*i,0,1.5-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
UltimaWeld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.7) * CFrame.new(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
target = meh 
if target ~= nil then 
bod.position = target.Position 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos, pos + dir) 
end 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
ss(1.4) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2-1.5*i,0,0.5-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(0.5+1.07*i,0,-0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
UltimaWeld.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.57) * CFrame.new(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
target = meh 
if target ~= nil then 
bod.position = target.Position 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos, pos + dir) 
end 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
ss(1) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.5+1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-1+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
UltimaWeld.C0 = CFrame.fromEulerAnglesXYZ(0,0,2) * CFrame.new(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
target = meh 
if target ~= nil then 
bod.position = target.Position 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos, pos + dir) 
end 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
ss(0.9) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1+1*i,0,1-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1+1*i,0,1-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
b.cframe = original 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1-2.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1+0.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
UltimaWeld.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
wait() 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
bod.position = Torso.Position + Vector3.new(0,10,0) 
local msh1 = Instance.new("SpecialMesh") 
msh1.Scale = Vector3.new(5,5,5) 
msh1.MeshId = "http://www.roblox.com/asset/?id=1051557" 
S=Instance.new("Part")
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(15,15,15)
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=1
S.Anchored=true
S.CanCollide=false
S.CFrame=Torso.CFrame
S.Parent=Character
msh1.Parent = S
if element == "Light" then 
S.BrickColor=BrickColor.new("Really black") 
elseif element == "Dark" then 
S.BrickColor=BrickColor.new("Mid stone grey")
end
bod.maxForce = Vector3.new(100000,100000,100000) 
for i = 0,1,0.01 do 
wait() 
target = meh 
if target ~= nil then 
bod.position = target.Position 
end 
ss(0.9) 
S.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(580)*i,0)
S.Transparency = S.Transparency - 0.005 
b.cframe = b.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(600)*i,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
end 
for i = 0,1,0.005 do 
wait() 
target = meh 
if target ~= nil then 
bod.position = target.Position 
end 
ss(0.9) 
S.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(580)*i,0)
S.Transparency = S.Transparency 
b.cframe = b.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(600)*i,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
end 
wait(0.5) 
Character.Humanoid.PlatformStand = false 
S.Parent = nil 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
con5:disconnect() 
con6:disconnect() 
bod.Parent = nil 
b.Parent = nil 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Parent = nil 
wingblade2.Parent = nil 
wingblade3.Parent = nil 
wingblade4.Parent = nil 
wingblade5.Parent = nil 
wingblade6.Parent = nil 
wait(0.2) 
Style = "Normal" 
equipanim() 
--[[wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,-0.5,-3.3) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0,-3) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0.5,-3.3) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,-0.5,-3.3) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5,0.2,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0,-3) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0.2,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0.5,-3.3) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
UltimaWeld.Parent = nil 
WingBladeEffect(1,1,1,1,1,1) 
wait() 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 ]]
end 
attack = false 
end 
end 
function ULTRAUltima() 
attack = true 
--if Style == "MagicMayhem" and mana >= 400 then 
if Style == "MagicMayhem" then 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - Torso.Position;
local mag = targ.magnitude;
if mag <= 60 and c.Name ~= Player.Name then 
UltimaMagicMayhemDamage(head,math.random(200,500))
end 
end 
end 
end 
Style = "Normal" 
MagicMayhemUltimaSounds() 
for i = 0,9,0.2 do 
wait() 
MMMAGIC(Torso,90,90,90,0,0,0,BrickColor.new("Really black")) 
MMMAGIC(Torso,90,90,90,0,0,0,BrickColor.new("Mid stone grey")) 
EVENMOARMAGIX(Torso,80,80,80,0,0,0,0,0,0,BrickColor.new("Really black")) 
EVENMOARMAGIX(Torso,80,80,80,0,0,0,0,0,0,BrickColor.new("Mid stone grey")) 
WaveEffect(Torso,70,70,70,0,0,0,0,math.random(-50,50),0,BrickColor.new("Really black")) 
WaveEffect(Torso,70,70,70,0,0,0,0,math.random(-50,50),0,BrickColor.new("Mid stone grey")) 
MMMAGIC(Torso,5,5,5,math.random(-35,35),0,math.random(-35,35),BrickColor.new("Really black")) 
MMMAGIC(Torso,5,5,5,math.random(-35,35),0,math.random(-35,35),BrickColor.new("Mid stone grey")) 
end 
coroutine.resume(coroutine.create(function() 
local clone = Instance.new("Part") 
clone.Parent = workspace 
clone.CFrame = Torso.CFrame 
clone.CanCollide = false 
clone.Transparency = 1 
clone.Anchored = true 
for i = 0,10,0.2 do 
wait(0.1) 
MMMAGIC(clone,1,1,1,math.random(-30,30),0,math.random(-30,30),BrickColor.new("Really black")) 
MMMAGIC(clone,1,1,1,math.random(-30,30),0,math.random(-30,30),BrickColor.new("Mid stone grey")) 
end 
clone.Parent = nil 
end)) 
end 
attack = false 
end 
function WingBladeEffect(one,two,three,four,five,six) 
if one == 1 then 
EVENMOARMAGIX(wingblade1,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("Really black")) 
end 
if two == 1 then 
EVENMOARMAGIX(wingblade2,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("Really black")) 
end 
if three == 1 then 
EVENMOARMAGIX(wingblade3,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("Really black")) 
end 
if four == 1 then 
EVENMOARMAGIX(wingblade4,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("Really black")) 
end 
if five == 1 then 
EVENMOARMAGIX(wingblade5,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("Really black")) 
end 
if six == 1 then 
EVENMOARMAGIX(wingblade6,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("Really black")) 
end 
end 
function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
local msh1 = Instance.new("BlockMesh") 
msh1.Scale = Vector3.new(0.5,0.5,0.5) 
S=Instance.new("Part")
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(x1,y1,z1)
S.BrickColor=color
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0
S.Anchored=true
S.CanCollide=false
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Parent=Character
msh1.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
local msh1 = Instance.new("BlockMesh") 
msh1.Scale = Vector3.new(x1,y1,z1) 
S=Instance.new("Part")
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(1,1,1)
S.BrickColor=color
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0
S.Anchored=true
S.CanCollide=false
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Parent=Character
msh1.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MOREMAGIX(part,cframe,x,y,z,color) 
p2=Instance.new("Part")
p2.Name="Blast"
p2.TopSurface=0
p2.BottomSurface=0
p2.CanCollide=false
p2.Anchored=true
p2.BrickColor=color
p2.Size=Vector3.new(x,y,z)
p2.formFactor="Symmetric"
p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
p2.Parent=workspace
m=Instance.new("BlockMesh")
m.Parent=p2
m.Name="BlastMesh"
coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 
function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
local msh1 = Instance.new("SpecialMesh") 
msh1.Scale = Vector3.new(0.5,0.5,0.5) 
msh1.MeshType = "Sphere" 
S=Instance.new("Part")
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(x1,y1,z1)
S.BrickColor=color
if Style == "WingBlade" and element == "Dark" then 
S.BrickColor=BrickColor.new("Mid stone grey") 
end 
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0
S.Anchored=true
S.CanCollide=false
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
S.Parent=Character
msh1.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
local msh1 = Instance.new("SpecialMesh") 
msh1.Scale = Vector3.new(x1,y1,z1) 
msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
S=Instance.new("Part")
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(1,1,1)
S.BrickColor=color
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0
S.Anchored=true
S.CanCollide=false
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
S.Parent=Character
msh1.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
local msh1 = Instance.new("SpecialMesh") 
msh1.Scale = Vector3.new(x1,y1,z1) 
msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
S=Instance.new("Part")
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(1,1,1)
S.BrickColor=color
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0
S.Anchored=true
S.CanCollide=false
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
S.Parent=Character
msh1.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function DifferentEffect() 
p=Instance.new("Part")
p.Name="FlameEm"
p.Shape=0
p.TopSurface=0
p.BottomSurface=0
derp = math.random(1,2) 
if derp == 1 then 
p.BrickColor=BrickColor.new("Really black") 
else 
p.BrickColor=BrickColor.new("Mid stone grey") 
end 
p.Anchored=true
p.CanCollide=false
p.Size=Vector3.new(1,1,1)
p.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-3,0))+Vector3.new(math.random(-10,10)/3,0,math.random(-10,10)/3)
p.Parent=workspace
m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Parent=p
m.Scale=Vector3.new(1,1,1)
coroutine.resume(coroutine.create(function(p) for i=1, 9 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(0,1.5,0) p.Transparency=p.Transparency+1/9 wait(0) end p.Parent=nil end),p)
end 
function DashEf(P,color) 
local m = Instance.new("Part") 
m.Parent = workspace 
m.BrickColor = color 
m.Transparency = 0 
m.Anchored = true 
m.CFrame = P
m.CanCollide = false 
local me = Instance.new("SpecialMesh") 
me.Parent = m 
me.MeshType = "FileMesh" 
me.MeshId = "http://www.roblox.com/asset/?id=20329976" 
me.Scale = Vector3.new(2.5,2.5,2.5) 
coroutine.resume(coroutine.create(function(part,mesh) 
for i = 0,5 do 
wait(0.1) 
part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(0, math.random(0,2), 0) 
mesh.Scale = mesh.Scale + Vector3.new(0.5,0.4,0.5) 
part.Transparency = part.Transparency + 0.20
end 
m:Remove() 
end),m,me) 
end 
function slasheffect(cframe,waitin,size,efdam) 
wait(waitin) 
for l=1, 2 do
wait() 
e=Instance.new("Part")
e.Name="SlashEffect"
e.TopSurface=0
e.BottomSurface=0
e.formFactor="Symmetric"
e.Size=Vector3.new(2,2,size)
e.Anchored=true
e.BrickColor=BrickColor.new("Really black") 
e.Reflectance=0
e.CanCollide=false
m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Scale=Vector3.new(.25,.25,1)
m.Parent=e
e.CFrame = cframe
e.Parent=workspace
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - e.Position;
local mag = targ.magnitude;
if mag <= 5 and c.Name ~= Player.Name then 
Damagefunc1(head,5,1) 
end 
end 
end 
end 
coroutine.resume(coroutine.create(function(m) for i=1, 9 do m.Transparency=i*.1 m.Mesh.Scale=m.Mesh.Scale-Vector3.new(.01,.01,.05)*2 wait() end m.Parent=nil coneffect:disconnect() end),e)
end
end 
DarkRiftF=function(par) --Thank you ? for this :D
while barragehold == true and mana >= 0 do 
mana = mana - math.random(0,10) 
PWN={}
for _,v in pairs(workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
if v~=Character and (v.Torso.Position-par.Position).magnitude<=25 then
table.insert(PWN,v.Torso)
end
end
end
end
for _,t in pairs(PWN) do
Mag=(par.Position-t.Position).magnitude/2
t.Parent.Humanoid:TakeDamage(.6)
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*5000
rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
if Mag<=2 then
if mana <= 400 then 
mana = mana + math.random(0,10) 
else 
mana = 400 
end 
t.Parent.Humanoid:TakeDamage(.3)
else
if mana <= 400 then 
mana = mana + 1
else 
mana = 400 
end 
vl=Instance.new("BodyVelocity")
vl.P=3000
vl.maxForce=Vector3.new(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
wait(.08)
end
end
function ss(pitch) 
local SlashSound = Instance.new("Sound") 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function sheath(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209850" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function shieldbash(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209583" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function magicsound(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function abscond(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function Charge(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function MagicMayhemUltimaSounds() 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=13775494" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.1 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.2 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.7 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974000" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.5 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.3 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
--[[function ss(pitch) -- No sound mode (for all those noobs who can't handle the earraep. Umad, noobs?) 
end 
function critsound(pitch) 
end 
function sheath(pitch) 
end 
function shieldbash(pitch) 
end 
function magicsound(pitch) 
end 
function abscond(pitch) 
end 
function Charge(pitch) 
end 
function MagicMayhemUltimaSounds() 
end ]]
Damagefunc1=function(hit,Damage,Knockback)
if attackdebounce == false then 
attackdebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
attackdebounce = false 
end)) 
if hit.Parent==nil then
return
end
CPlayer=Bin 
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
if mana < 400 then 
mana = mana + math.random(5,15) 
end 
if mana > 400 then 
mana = 400 
end 
Damage=Damage
--[[ if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
return
end]]
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
-- print(c.Value)
if math.random(0,99)+math.random()<=7.8 then
CRIT=true
Damage=Damage*3
--[[ Knockback=Knockback*2
r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
critsound(2) 

end
Damage=Damage+math.random(0,10)
-- Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
h:TakeDamage(Damage)
showDamage(hit.Parent,Damage,.5)
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
-- vp.velocity=Character.Torso.CFrame.lookVector*Knockback
vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
if Knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,.25)
--[[ r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
game:GetService("Debris"):AddItem(r,.5)
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=Player
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
CRIT=false
hitDeb=true
AttackPos=6
end
end 
end
Damagefunc2=function(hit,Damage,Knockback)
if attackdebounce == false then 
attackdebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
attackdebounce = false 
end)) 
if hit.Parent==nil then
return
end
CPlayer=Bin 
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
if mana < 400 then 
mana = mana + math.random(5,15) 
end 
if mana > 400 then 
mana = 400 
end 
Damage=Damage
--[[ if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
return
end]]
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
-- print(c.Value)
if math.random(0,99)+math.random()<=7.8 then
CRIT=true
Damage=Damage*3
--[[ Knockback=Knockback*2
r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
critsound(2) 

end
Damage=Damage+math.random(0,10)
-- Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
h:TakeDamage(Damage)
showDamage(hit.Parent,Damage,.5)
vl=Instance.new("BodyVelocity")
vl.P=4500
vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
-- vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,30,0)
vl.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
if Knockback>0 then
vl.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vl,.2)
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
if Knockback>0 then
rl.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(rl,.2)
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=Player
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
CRIT=false
hitDeb=true
AttackPos=6
end
end 
end

Bash=function(hit,Damage) --credits to turdulator for making this function :D
if attackdebounce == false then 
attackdebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
attackdebounce = false 
end)) 
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
t=hit.Parent:FindFirstChild("Torso")
if h~=nil and t~=nil then
if h.Parent==Character then
return
end
if mana < 400 then 
mana = mana + math.random(5,15) 
end 
if mana > 400 then 
mana = 400 
end 
shieldbash(1) 
if math.random(0,99)+math.random()<=7.8 then
CRIT=true
Damage=Damage*3
--[[ Knockback=Knockback*2
r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
critsound(2) 

end
h:TakeDamage(Damage) 
showDamage(hit.Parent,Damage,.5) 
vl=Instance.new("BodyVelocity")
vl.P=4500
vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
-- vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,30,0)
vl.velocity=Head.CFrame.lookVector*35+Head.Velocity/1.05
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.2)
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.2)
else
if hit.CanCollide==false then
return
end
MagicCom:disconnect()
-- DBExplode(DB)
end
end 
end
UpBlast=function(hit,Damage) --credits to ? for making this function :D
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
t=hit.Parent:FindFirstChild("Torso")
if h~=nil and t~=nil then
if h.Parent==Character then
return
end
if mana < 400 then 
mana = mana + math.random(10,20) 
end 
if mana > 400 then 
mana = 400 
end 
if math.random(0,99)+math.random()<=7.8 then
CRIT=true
Damage=Damage*3
--[[ Knockback=Knockback*2
r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
critsound(2) 

end
h:TakeDamage(Damage) 
showDamage(hit.Parent,Damage,.5) 
vl=Instance.new("BodyVelocity")
vl.P=4500
vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
-- vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,45,0)
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.2)
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
-- rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
local tes = math.random(1,2) 
if tes == 1 then 
rl.angularvelocity=Vector3.new(0,0,math.random(-40,40)) 
elseif tes == 2 then 
rl.angularvelocity=Vector3.new(math.random(-40,40),0,0) 
end 
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.2)
else
if hit.CanCollide==false then
return
end
MagicCom:disconnect()
-- DBExplode(DB)
end
end
UltimaMagicMayhemDamage=function(hit,Damage) --credits to ? for making this function :D
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
t=hit.Parent:FindFirstChild("Torso")
if h~=nil and t~=nil then
if h.Parent==Character then
return
end
if math.random(0,99)+math.random()<=7.8 then
CRIT=true
Damage=Damage*10
--[[ Knockback=Knockback*2
r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
critsound(2) 

end
h:TakeDamage(Damage) 
showDamage(hit.Parent,Damage,.5) 
vl=Instance.new("BodyVelocity")
vl.P=4500
vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
-- vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,600,0)
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.2)
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
-- rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
local tes = math.random(1,2) 
if tes == 1 then 
rl.angularvelocity=Vector3.new(0,0,math.random(-40,40)) 
elseif tes == 2 then 
rl.angularvelocity=Vector3.new(math.random(-40,40),0,0) 
end 
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.2)
else
if hit.CanCollide==false then
return
end
MagicCom:disconnect()
-- DBExplode(DB)
end
end
showDamage=function(Char,Dealt,du)
m=Instance.new("Model")
m.Name=tostring(Dealt)
h=Instance.new("Humanoid")
h.Health=0
h.MaxHealth=0
h.Parent=m
c=Instance.new("Part")
c.Transparency=0
c.BrickColor=BrickColor:Red()
if CRIT==true then
c.BrickColor=BrickColor.new("Really red")
end
c.Name="Head"
c.TopSurface=0
c.BottomSurface=0
c.formFactor="Plate"
c.Size=Vector3.new(1,.4,1)
ms=Instance.new("CylinderMesh")
ms.Bevel=.1
ms.Scale=Vector3.new(.8,.8,.8)
if CRIT==true then
ms.Scale=Vector3.new(1.25,1.5,1.25)
ms.Bevel=.2
end
ms.Parent=c
c.Reflectance=0
Instance.new("BodyGyro").Parent=c
c.Parent=m
c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
f=Instance.new("BodyPosition")
f.P=2000
f.D=100
f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
f.position=c.Position+Vector3.new(0,3,0)
f.Parent=c
game:GetService("Debris"):AddItem(m,.5+du)
c.CanCollide=false
m.Parent=workspace
c.CanCollide=false
end
hold = false 
function ob1d(mouse) 
if guarding == true then 
if bashing == true then return end 
Bashem() 
return 
end 
if attack == true then return end 
hold = true 
if Style == "Normal" then 
if mode == "Normal" then 
if combo == 0 then 
onehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(1.3-1.3*i,1.57-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 1 then 
twohit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 2 then 
threehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5-2.2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
wait(0.05) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 3 then 
fourhit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
wait(0.05) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 4 then 
fivehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
attack = true 
gairo.Parent = nil 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,-0.5+0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+1.37-0.87*i,1*i,1-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--[[LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) ]]
sheath(2.25) 
wait(0.05) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 
end)) 
end 
elseif mode == "Attack" then 
if combo == 0 then 
oneslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 1 then 
twoslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-1.43-1.57*i,0,1.57-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3-3*i,1.57-1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 2 then 
threeslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait(0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)-math.rad(90)*i,0,math.rad(90)-math.rad(90)+math.rad(90)*i) * CFrame.new(0,1,0)
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2.07-2.07*i,0,3.57-3.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(4-4*i,3.57-3.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 3 then 
fourslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,1.57-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3-3*i,1.57-1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
end 
end 
elseif Style == "MagicMayhem" then 
if combo == 0 then 
castone() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 1 then 
casttwo() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 2 then 
castthree() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
end 
--[[castone() 
casttwo() 
castthree() ]]
elseif Style == "WingBlade" then 
if combo == 0 then 
combo = 1 
wingbladeslashone() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
WingBladeEffect(0,1,0,0,1,0) 
WingBladeEffect(0,0,0,0,0,0) 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 1 then 
combo = 2 
wingbladeslashtwo() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
wait(0.3) 
WingBladeEffect(0,1,1,0,1,1) 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade6.Transparency = 0.4 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-2*i,0,-1+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 2 then 
combo = 3 
wingbladeslashthree() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
WingBladeEffect(1,1,1,1,1,1) 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade6.Transparency = 0.4 
wingblade1.Transparency = 0.4 
wingblade4.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,-2+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,2-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 3 then 
combo = 4 
wingbladeslashfour() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
WingBladeEffect(1,1,1,1,1,1) 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade6.Transparency = 0.4 
wingblade1.Transparency = 0.4 
wingblade4.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,-2+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,-0.86+0.86*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
end 
wait(1.5) 
--[[wingblade1.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade6.Transparency = 0.4 ]]
end 
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
function key(key) 
if attack == true then return end 
if Style == "Normal" then 
if key == "q" then 
changeequipleft() 
end 
if key == "e" then 
changeequipright() 
end 
if key == "h" then 
if mana >= 200 then 
mana = 400 
StyleChange() 
end 
end 
if key == "z" then 
holddash = true 
ShieldDash() 
end 
if mode == "Normal" then 
if key == "x" then 
MegaHit() 
end 
elseif mode == "Attack" then 
if key == "x" then 
ArsSolum() 
end 
end 
end 
if Style == "WingBlade" then 
if key == "z" and SwordRaging == true then 
SwordRageZ() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
SwordRaging = false 
EndSwordRage() 
end 
end)) 
end 
if key == "x" and SwordRaging == true then 
SwordRageX() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
SwordRaging = false 
EndSwordRage() 
end 
end)) 
end 
if key == "c" and SwordRaging == true then 
SwordRageC() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
SwordRaging = false 
EndSwordRage() 
end 
end)) 
end 
if SwordRaging == false then 
if key == "z" then 
SwordRaid() 
end 
if key == "x" then 
SwordRage() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
SwordRaging = false 
EndSwordRage() 
end 
end)) 
end 
end 
end 
if Style == "MagicMayhem" then 
if combo == 0 then 
if key == "z" then 
barragehold = true 
MagicBarrage() 
end 
if key == "x" then 
regening = true 
Regening() 
end 
end 
if key == "z" then 
if combo == 1 then 
castfour() 
end 
end 
if key == "x" then 
if combo == 1 then 
casttwo() 
end 
end 
if key == "c" then 
if combo == 1 then 
castfive() 
end 
end 
end 
if key == "f" then 
if Style ~= "WingBlade" then 
guard() 
end 
end 
if key == "g" then 
ChangeElement() 
end 
if key == "j" and Style ~= "Normal" then 
Ultima() 
--ULTRAUltima() 
end 
if key == "k" then 
if Style == "WingBlade" then 
wingblade1.Parent = nil 
wingblade2.Parent = nil 
wingblade3.Parent = nil 
wingblade4.Parent = nil 
wingblade5.Parent = nil 
wingblade6.Parent = nil 
equipweld() 
end 
Style = "Normal" 
end 
end 
function key2(key) 
if key == "f" then 
guarding = false 
end 
if key == "z" then 
holddash = false 
barragehold = false 
end 
if key == "x" then 
regening = false 
end 
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
equipanim() 
end 
function ds(mouse) 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
function onRunning(speed)
if attack == true then return end 
if speed>0 then 
walking = true 
for i = 0,1,0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.8*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
else 
walking = false 
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.8+0.8*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.8+0.8*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
Character.Humanoid.Running:connect(onRunning) 
while true do 
wait(0) 
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Mana("..mana..")" 
if element == "Light" then 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
elseif element == "Dark" then 
fentext3.BackgroundColor3 = Color3.new(0,0,0) 
end 
if Style == "WingBlade" then 
wait(0.1) 
coroutine.resume(coroutine.create(function() 
if idleanimdelay == false and SwordRaging == false then 
idleanimdelay = true 
for i = 0,math.random(10,25),0.1 do 
wait() 
if attack == false and SwordRaging == false then 
willidleanim = true 
else 
willidleanim = false 
end 
end 
if willidleanim == true then 
idleanim() 
end 
idleanimdelay = false 
end 
end)) 
meh = findNearestTorso(Character.Torso.Position) 
local target = findNearestTorso(Character.Torso.Position)
if element == "Light" then 
wingblade1.BrickColor = BrickColor.new("Really black") 
wingblade2.BrickColor = BrickColor.new("Mid stone grey") 
wingblade3.BrickColor = BrickColor.new("Really black") 
wingblade4.BrickColor = BrickColor.new("Mid stone grey") 
wingblade5.BrickColor = BrickColor.new("Really black") 
wingblade6.BrickColor = BrickColor.new("Mid stone grey") 
elseif element == "Dark" then 
wingblade1.BrickColor = BrickColor.new("Mid stone grey") 
wingblade2.BrickColor = BrickColor.new("Mid stone grey") 
wingblade3.BrickColor = BrickColor.new("Mid stone grey") 
wingblade4.BrickColor = BrickColor.new("Mid stone grey") 
wingblade5.BrickColor = BrickColor.new("Mid stone grey") 
wingblade6.BrickColor = BrickColor.new("Mid stone grey") 
end 
end 
end
