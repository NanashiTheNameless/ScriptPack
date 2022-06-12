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
attack = false 
attacktype = 1 
damage = 3 
oridamage = 3 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
unsheathed = false 
tornadoing = false 
if Character:findFirstChild("Main Weapons",true) ~= nil then 
Character:findFirstChild("Main Weapons",true).Parent = nil 
end 
--[[Models and Parts]]--
local modelzorz = Instance.new("Model") 
modelzorz.Name = "Main Weapons" 
modelzorz.Parent = Character 
local model1 = Instance.new("Model") 
model1.Name = "GunSword" --Yes I know. This is from Squall from FF7 right? Well I didn't copied this from him.
model1.Parent = modelzorz 
local model2 = Instance.new("Model") 
model2.Name = "BlastCannon" 
model2.Parent = nil 
local model3 = Instance.new("Model") 
model3.Name = "LaserRifle" 
model3.Parent = nil 
local model4 = Instance.new("Model") 
model4.Name = "Tornado Skates" 
model4.Parent = nil 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = model1
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Dark stone grey") 
prt1.Name = "Handle1" 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = model1
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Medium stone grey") 
prt2.Name = "Handle2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Reflectance = 0.05 
prt3.Parent = model1
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Black") 
prt3.Name = "Blade1" 
prt3.Size = Vector3.new(1,4,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Reflectance = 0.05 
prt4.Parent = model1
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Black") 
prt4.Name = "Blade2" 
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = model1
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Medium stone grey") 
prt5.Name = "Barrel" 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = model1
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Black") 
prt6.Name = "Shell1" --I had a REALLY, hard time CFraming all these shells >.<
prt6.Size = Vector3.new(1,1,1) 
prt6.Position = Torso.Position 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = model1
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("Black") 
prt7.Name = "Shell2" 
prt7.Size = Vector3.new(1,1,1) 
prt7.Position = Torso.Position 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = model1
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("Black") 
prt8.Name = "Shell3" 
prt8.Size = Vector3.new(1,1,1) 
prt8.Position = Torso.Position 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.Parent = model1
prt9.CanCollide = false 
prt9.BrickColor = BrickColor.new("Black") 
prt9.Name = "Shell4" 
prt9.Size = Vector3.new(1,1,1) 
prt9.Position = Torso.Position 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.Parent = model1
prt10.CanCollide = false 
prt10.BrickColor = BrickColor.new("Black") 
prt10.Name = "Shell5" 
prt10.Size = Vector3.new(1,1,1) 
prt10.Position = Torso.Position 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = model1
prt11.CanCollide = false 
prt11.BrickColor = BrickColor.new("Black") 
prt11.Name = "Shell6" 
prt11.Size = Vector3.new(1,1,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = model1
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("Medium stone grey") 
prt12.Name = "Gun1" 
prt12.Size = Vector3.new(1,2,1) 
prt12.Position = Torso.Position 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Parent = model1
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Medium stone grey") 
prt13.Name = "Gun2" 
prt13.Size = Vector3.new(1,1,1) 
prt13.Position = Torso.Position 
local prt13a = Instance.new("Part") 
prt13a.formFactor = 1 
prt13a.Parent = model1
prt13a.CanCollide = false 
prt13a.BrickColor = BrickColor.new("Black") 
prt13a.Name = "Gun3" 
prt13a.Size = Vector3.new(1,1,1) 
prt13a.Position = Torso.Position 
local prt14 = Instance.new("Part") 
prt14.formFactor = 1 
prt14.Parent = model1
prt14.CanCollide = false 
prt14.BrickColor = BrickColor.new("Medium stone grey") 
prt14.Name = "Trigger1" 
prt14.Size = Vector3.new(1,1,1) 
prt14.Position = Torso.Position 
local prt15 = Instance.new("Part") 
prt15.formFactor = 1 
prt15.Parent = model1
prt15.CanCollide = false 
prt15.BrickColor = BrickColor.new("Medium stone grey") 
prt15.Name = "Trigger2" 
prt15.Size = Vector3.new(1,1,1) 
prt15.Position = Torso.Position 
local prt16 = Instance.new("Part") 
prt16.formFactor = 1 
prt16.Parent = model2 
prt16.Reflectance = 0.2 
prt16.CanCollide = false 
prt16.BrickColor = BrickColor.new("Black") 
prt16.Name = "CannonHandle1" 
prt16.Size = Vector3.new(1,2,1) 
prt16.Position = Torso.Position 
local prt17 = Instance.new("Part") 
prt17.formFactor = 1 
prt17.Parent = model2 
prt17.Reflectance = 0.2 
prt17.CanCollide = false 
prt17.BrickColor = BrickColor.new("Black") 
prt17.Name = "CannonHandle2" 
prt17.Size = Vector3.new(1,1,1) 
prt17.Position = Torso.Position 
local prt18 = Instance.new("Part") 
prt18.formFactor = 1 
prt18.Parent = model2 
prt18.Reflectance = 0.2 
prt18.CanCollide = false 
prt18.BrickColor = BrickColor.new("Black") 
prt18.Name = "CannonPart1" 
prt18.Size = Vector3.new(1,2,1) 
prt18.Position = Torso.Position 
local prt19 = Instance.new("Part") 
prt19.formFactor = 1 
prt19.Parent = model2 
prt19.Reflectance = 0.2 
prt19.CanCollide = false 
prt19.BrickColor = BrickColor.new("Black") 
prt19.Name = "CannonPart2" 
prt19.Size = Vector3.new(1,2,1) 
prt19.Position = Torso.Position 
local prt20 = Instance.new("Part") 
prt20.formFactor = 1 
prt20.Parent = model2 
prt20.Reflectance = 0.2 
prt20.CanCollide = false 
prt20.BrickColor = BrickColor.new("White") 
prt20.Name = "CannonHandle3" 
prt20.Size = Vector3.new(1,2,1) 
prt20.Position = Torso.Position 
local prt21 = Instance.new("Part") 
prt21.formFactor = 1 
prt21.Parent = model2 
prt21.Reflectance = 0.2 
prt21.CanCollide = false 
prt21.BrickColor = BrickColor.new("Black") 
prt21.Name = "CannonPart3" 
prt21.Size = Vector3.new(1,2,1) 
prt21.Position = Torso.Position 
local prt22 = Instance.new("Part") 
prt22.formFactor = 1 
prt22.Parent = model2 
prt22.Reflectance = 0.2 
prt22.CanCollide = false 
prt22.BrickColor = BrickColor.new("Black") 
prt22.Name = "CannonPart4" 
prt22.Size = Vector3.new(1,2,1) 
prt22.Position = Torso.Position 
local prt23 = Instance.new("Part") 
prt23.formFactor = 1 
prt23.Parent = model2 
prt23.Reflectance = 0.2 
prt23.CanCollide = false 
prt23.BrickColor = BrickColor.new("Medium stone grey") 
prt23.Name = "CannonPart5" 
prt23.Size = Vector3.new(1,1,1) 
prt23.Position = Torso.Position 
local prt24 = Instance.new("Part") 
prt24.formFactor = 1 
prt24.Parent = model2 
prt24.Reflectance = 0 
prt24.CanCollide = false 
prt24.BrickColor = BrickColor.new("Black") 
prt24.Name = "CannonPart6" 
prt24.Size = Vector3.new(1,1,1) 
prt24.Position = Torso.Position 
local prt25 = Instance.new("Part") 
prt25.formFactor = 1 
prt25.Parent = model2 
prt25.Reflectance = 0.2 
prt25.CanCollide = false 
prt25.BrickColor = BrickColor.new("Medium stone grey") 
prt25.Name = "CannonPart7" 
prt25.Size = Vector3.new(1,2,1) 
prt25.Position = Torso.Position 
local prt26 = Instance.new("Part") 
prt26.formFactor = 1 
prt26.Parent = model2 
prt26.Reflectance = 0.2 
prt26.CanCollide = false 
prt26.BrickColor = BrickColor.new("Medium stone grey") 
prt26.Name = "CannonPart8" 
prt26.Size = Vector3.new(1,1,1) 
prt26.Position = Torso.Position 
local prt27 = Instance.new("Part") 
prt27.formFactor = 1 
prt27.Parent = model2 
prt27.Reflectance = 0 
prt27.CanCollide = false 
prt27.BrickColor = BrickColor.new("Black") 
prt27.Name = "CannonPart9" 
prt27.Size = Vector3.new(1,1,1) 
prt27.Position = Torso.Position 
local prt28 = Instance.new("Part") 
prt28.formFactor = 1 
prt28.Parent = model2 
prt28.Reflectance = 0 
prt28.CanCollide = false 
prt28.BrickColor = BrickColor.new("Black") 
prt28.Name = "CannonPart10" 
prt28.Size = Vector3.new(1,1,1) 
prt28.Position = Torso.Position 
local prt29 = Instance.new("Part") 
prt29.formFactor = 1 
prt29.Parent = model2 
prt29.Reflectance = 0.2 
prt29.CanCollide = false 
prt29.BrickColor = BrickColor.new("Black") 
prt29.Name = "CannonPart11" 
prt29.Size = Vector3.new(1,2,1) 
prt29.Position = Torso.Position 
local prt30 = Instance.new("Part") 
prt30.formFactor = 1 
prt30.Parent = model2 
prt30.Reflectance = 0 
prt30.CanCollide = false 
prt30.BrickColor = BrickColor.new("Bright red") 
prt30.Name = "CannonPart12" 
prt30.Size = Vector3.new(1,2,1) 
prt30.Position = Torso.Position 
local prt31 = Instance.new("Part") 
prt31.formFactor = 1 
prt31.Parent = model2 
prt31.Reflectance = 0 
prt31.CanCollide = false 
prt31.BrickColor = BrickColor.new("Black") 
prt31.Name = "CannonPart13" 
prt31.Size = Vector3.new(1,2,1) 
prt31.Position = Torso.Position 
local prt32 = Instance.new("Part") 
prt32.formFactor = 1 
prt32.Parent = model3 
prt32.Reflectance = 0 
prt32.CanCollide = false 
prt32.BrickColor = BrickColor.new("Bright blue") 
prt32.Name = "LRhandle1" 
prt32.Size = Vector3.new(1,1,1) 
prt32.Position = Torso.Position 
local prt32a = Instance.new("Part") 
prt32a.formFactor = 1 
prt32a.Parent = model3 
prt32a.Reflectance = 0 
prt32a.CanCollide = false 
prt32a.BrickColor = BrickColor.new("Black") 
prt32a.Name = "LRhandle1a" 
prt32a.Size = Vector3.new(1,1,1) 
prt32a.Position = Torso.Position 
local prt33 = Instance.new("Part") 
prt33.formFactor = 1 
prt33.Parent = model3 
prt33.Reflectance = 0 
prt33.CanCollide = false 
prt33.BrickColor = BrickColor.new("Bright blue") 
prt33.Name = "LRhandle2" 
prt33.Size = Vector3.new(1,1,1) 
prt33.Position = Torso.Position 
local prt34 = Instance.new("Part") 
prt34.formFactor = 1 
prt34.Parent = model3 
prt34.Reflectance = 0 
prt34.CanCollide = false 
prt34.BrickColor = BrickColor.new("Bright blue") 
prt34.Name = "LRPart1" 
prt34.Size = Vector3.new(1,2,1) 
prt34.Position = Torso.Position 
local prt35 = Instance.new("Part") 
prt35.formFactor = 1 
prt35.Parent = model3 
prt35.Reflectance = 0 
prt35.CanCollide = false 
prt35.BrickColor = BrickColor.new("Bright blue") 
prt35.Name = "LRPart2" 
prt35.Size = Vector3.new(1,1,1) 
prt35.Position = Torso.Position 
local prt36 = Instance.new("Part") 
prt36.formFactor = 1 
prt36.Parent = model3 
prt36.Reflectance = 0 
prt36.Reflectance = 0.2
prt36.CanCollide = false 
prt36.BrickColor = BrickColor.new("White") 
prt36.Name = "LRPart3" 
prt36.Size = Vector3.new(1,1,1) 
prt36.Position = Torso.Position 
local prt37 = Instance.new("Part") 
prt37.formFactor = 1 
prt37.Parent = model3 
prt37.Reflectance = 0 
prt37.Reflectance = 0.2
prt37.CanCollide = false 
prt37.BrickColor = BrickColor.new("New Yeller") 
prt37.Name = "LRPart4" 
prt37.Size = Vector3.new(1,1,1) 
prt37.Position = Torso.Position 
local prt38 = Instance.new("Part") 
prt38.formFactor = 1 
prt38.Parent = model3 
prt38.Reflectance = 0 
prt38.CanCollide = false 
prt38.BrickColor = BrickColor.new("White") 
prt38.Name = "LRDesign1" 
prt38.Size = Vector3.new(1,1,1) 
prt38.Position = Torso.Position 
local prt39 = Instance.new("Part") 
prt39.formFactor = 1 
prt39.Parent = model3 
prt39.Reflectance = 0 
prt39.CanCollide = false 
prt39.BrickColor = BrickColor.new("Bright blue") 
prt39.Name = "LRDesign2" 
prt39.Size = Vector3.new(1,1,1) 
prt39.Position = Torso.Position 
local prt40 = Instance.new("Part") 
prt40.formFactor = 1 
prt40.Parent = model3 
prt40.Reflectance = 0 
prt40.Transparency = 0.4 
prt40.CanCollide = false 
prt40.BrickColor = BrickColor.new("Medium stone grey") 
prt40.Name = "TSPart1" 
prt40.Size = Vector3.new(1,1,1) 
prt40.Position = Torso.Position 
local msh1 = Instance.new("BlockMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.5,2,0.5) 
local msh2 = Instance.new("BlockMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(1,1,0.7) 
local msh3 = Instance.new("BlockMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.7,0.8,0.12) 
local msh4 = Instance.new("SpecialMesh") 
msh4.Parent = prt4 
msh4.MeshType = "Wedge" 
msh4.Scale = Vector3.new(0.12, 1, 1.1) 
local msh5 = Instance.new("CylinderMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(1,1,1) 
local msh6 = Instance.new("CylinderMesh") 
msh6.Parent = prt6 
msh6.Scale = Vector3.new(1.1,1.1,0.3) 
local msh7 = Instance.new("CylinderMesh") 
msh7.Parent = prt7 
msh7.Scale = Vector3.new(1.1,1.1,0.3) 
local msh8 = Instance.new("CylinderMesh") 
msh8.Parent = prt8 
msh8.Scale = Vector3.new(1.1,1.1,0.3) 
local msh9 = Instance.new("CylinderMesh") 
msh9.Parent = prt9 
msh9.Scale = Vector3.new(1.1,1.1,0.3) 
local msh10 = Instance.new("CylinderMesh") 
msh10.Parent = prt10 
msh10.Scale = Vector3.new(1.1,1.1,0.3) 
local msh11 = Instance.new("CylinderMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(1.1,1.1,0.3) 
local msh12 = Instance.new("CylinderMesh") 
msh12.Parent = prt12 
msh12.Scale = Vector3.new(1.2,1,0.4) 
local msh13 = Instance.new("CylinderMesh") 
msh13.Parent = prt13 
msh13.Scale = Vector3.new(0.5,0.5,0.5) 
local msh13a = Instance.new("CylinderMesh") 
msh13a.Parent = prt13a 
msh13a.Scale = Vector3.new(0.4,0.51,0.4) 
local msh14 = Instance.new("SpecialMesh") 
msh14.Parent = prt14 
msh14.MeshId = "http://www.roblox.com/asset/?id=3270017" 
msh14.Scale = Vector3.new(0.5,0.5,0.5) 
local msh15 = Instance.new("BlockMesh") 
msh15.Parent = prt15 
msh15.Scale = Vector3.new(0.1,0.4,0.1) 
local msh16 = Instance.new("BlockMesh") 
msh16.Parent = prt16 
msh16.Scale = Vector3.new(0.5,0.6,0.5) 
local msh17 = Instance.new("BlockMesh") 
msh17.Parent = prt17 
msh17.Scale = Vector3.new(0.6,0.3,0.6) 
local msh18 = Instance.new("BlockMesh") 
msh18.Parent = prt18 
msh18.Scale = Vector3.new(0.7,0.5,0.7) 
local msh19 = Instance.new("BlockMesh") 
msh19.Parent = prt19 
msh19.Scale = Vector3.new(0.7,0.8,0.8) 
local msh20 = Instance.new("BlockMesh") 
msh20.Parent = prt20 
msh20.Scale = Vector3.new(0.6,0.8,0.7) 
local msh21 = Instance.new("BlockMesh") 
msh21.Parent = prt21 
msh21.Scale = Vector3.new(0.7,0.65,0.7) 
local msh22 = Instance.new("BlockMesh") 
msh22.Parent = prt22 
msh22.Scale = Vector3.new(0.7,1.2,0.7) 
local msh23 = Instance.new("CylinderMesh") 
msh23.Parent = prt23 
msh23.Scale = Vector3.new(0.5,0.5,0.5) 
local msh24 = Instance.new("CylinderMesh") 
msh24.Parent = prt24 
msh24.Scale = Vector3.new(0.4,0.51,0.4) 
local msh25 = Instance.new("CylinderMesh") 
msh25.Parent = prt25 
msh25.Scale = Vector3.new(0.5,0.9,0.5) 
local msh26 = Instance.new("CylinderMesh") 
msh26.Parent = prt26 
msh26.Scale = Vector3.new(0.4,0.5,0.4) 
local msh27 = Instance.new("CylinderMesh") 
msh27.Parent = prt27 
msh27.Scale = Vector3.new(0.3,0.51,0.3) 
local msh28 = Instance.new("CylinderMesh") 
msh28.Parent = prt28 
msh28.Scale = Vector3.new(0.6,0.51,0.6) 
local msh29 = Instance.new("BlockMesh") 
msh29.Parent = prt29 
msh29.Scale = Vector3.new(0.7,0.65,1) 
local msh30 = Instance.new("CylinderMesh") 
msh30.Parent = prt30 
msh30.Scale = Vector3.new(1,0.65,1.2) 
local msh31 = Instance.new("BlockMesh") 
msh31.Parent = prt31 
msh31.Scale = Vector3.new(0.9,0.9,0.5) 
local msh32 = Instance.new("CylinderMesh") 
msh32.Parent = prt32 
msh32.Scale = Vector3.new(1.5,1.5,1.5) 
local msh32a = Instance.new("CylinderMesh") 
msh32a.Parent = prt32a 
msh32a.Scale = Vector3.new(1,1.6,1) 
local msh33 = Instance.new("BlockMesh") 
msh33.Parent = prt33 
msh33.Scale = Vector3.new(1.1,1.1,1.1) 
local msh34 = Instance.new("BlockMesh") 
msh34.Parent = prt34 
msh34.Scale = Vector3.new(1.4,1.1,1.4) 
local msh35 = Instance.new("SpecialMesh") 
msh35.MeshType = "Wedge" 
msh35.Parent = prt35 
msh35.Scale = Vector3.new(1.4,1.3,1.4) 
local msh36 = Instance.new("CylinderMesh") 
msh36.Parent = prt36 
msh36.Scale = Vector3.new(1.3,1.2,1.3) 
local msh37 = Instance.new("SpecialMesh") 
msh37.MeshType = "Sphere" 
msh37.Parent = prt37 
msh37.Scale = Vector3.new(0.8,0.8,0.8) 
local msh38 = Instance.new("BlockMesh") 
msh38.Parent = prt38 
msh38.Scale = Vector3.new(1.5,0.7,1.5) 
local msh39 = Instance.new("CylinderMesh") 
msh39.Parent = prt39 
msh39.Scale = Vector3.new(0.7,1.3,0.7) 
local msh40 = Instance.new("BlockMesh") 
msh40.Parent = prt40 
msh40.Scale = Vector3.new(0.5,0.5,0.5) 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.5) * CFrame.new(0.3,-1.55, -0.75) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.5) * CFrame.new(0,1,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt2 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.7,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt3 
wld4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),math.rad(90),0) * CFrame.new(0.2,2,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt2 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.4,0.5,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt5 
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.4,0,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt5 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.2,0,-0.3) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt5 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.2,0,-0.3) 
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = prt5 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.4,0,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = prt5 
wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.2,0,0.3) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = prt5 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.2,0,0.3) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt3 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt12 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.3,0) 
local wld13a = Instance.new("Weld") 
wld13a.Parent = prt13a 
wld13a.Part0 = prt13a 
wld13a.Part1 = prt13 
wld13a.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt2 
wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.5,-0.4,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt14 
wld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(120)) * CFrame.new(0,0,0) 
local wld16 = Instance.new("Weld") 
wld16.Parent = prt16 
wld16.Part0 = prt16 
wld16.Part1 = Torso 
wld16.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0) * CFrame.new(0,-0.2,-0.2) 
local wld17 = Instance.new("Weld") 
wld17.Parent = prt17 
wld17.Part0 = prt17 
wld17.Part1 = prt16 
wld17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.45,0) 
local wld18 = Instance.new("Weld") 
wld18.Parent = prt18 
wld18.Part0 = prt18 
wld18.Part1 = prt16 
wld18.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1,0) 
local wld19 = Instance.new("Weld") 
wld19.Parent = prt19 
wld19.Part0 = prt19 
wld19.Part1 = prt18 
wld19.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,-0.4,-0.45) 
local wld20 = Instance.new("Weld") 
wld20.Parent = prt20 
wld20.Part0 = prt20 
wld20.Part1 = prt19 
wld20.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
local wld21 = Instance.new("Weld") 
wld21.Parent = prt21 
wld21.Part0 = prt21 
wld21.Part1 = prt19 
wld21.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1.1,0.25) 
local wld22 = Instance.new("Weld") 
wld22.Parent = prt22 
wld22.Part0 = prt22 
wld22.Part1 = prt18 
wld22.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,-0.4,1.1) 
local wld23 = Instance.new("Weld") 
wld23.Parent = prt23 
wld23.Part0 = prt23 
wld23.Part1 = prt22 
wld23.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.3,0) 
local wld24 = Instance.new("Weld") 
wld24.Parent = prt24 
wld24.Part0 = prt24 
wld24.Part1 = prt23 
wld24.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld25 = Instance.new("Weld") 
wld25.Parent = prt25 
wld25.Part0 = prt25 
wld25.Part1 = prt18 
wld25.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,0.3,1.1) 
local wld26 = Instance.new("Weld") 
wld26.Parent = prt26 
wld26.Part0 = prt26 
wld26.Part1 = prt25 
wld26.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1,0) 
local wld27 = Instance.new("Weld") 
wld27.Parent = prt27 
wld27.Part0 = prt27 
wld27.Part1 = prt26 
wld27.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld28 = Instance.new("Weld") 
wld28.Parent = prt28 
wld28.Part0 = prt28 
wld28.Part1 = prt25 
wld28.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld29 = Instance.new("Weld") 
wld29.Parent = prt29 
wld29.Part0 = prt29 
wld29.Part1 = prt21 
wld29.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.8) 
local wld30 = Instance.new("Weld") 
wld30.Parent = prt30 
wld30.Part0 = prt30 
wld30.Part1 = prt29 
wld30.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,0,-0.2) 
local wld31 = Instance.new("Weld") 
wld31.Parent = prt31 
wld31.Part0 = prt31 
wld31.Part1 = prt18 
wld31.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,-0.4,0.5) 
local wld32 = Instance.new("Weld") 
wld32.Parent = prt32 
wld32.Part0 = prt32 
wld32.Part1 = RightArm 
wld32.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,1.2,0) 
local wld32a = Instance.new("Weld") 
wld32a.Parent = prt32a 
wld32a.Part0 = prt32a 
wld32a.Part1 = prt32 
wld32a.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld33 = Instance.new("Weld") 
wld33.Parent = prt33 
wld33.Part0 = prt33 
wld33.Part1 = RightArm 
wld33.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0.6,0) 
local wld34 = Instance.new("Weld") 
wld34.Parent = prt34 
wld34.Part0 = prt34 
wld34.Part1 = prt32 
wld34.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(-1,0,0) 
local wld35 = Instance.new("Weld") 
wld35.Parent = prt35 
wld35.Part0 = prt35 
wld35.Part1 = prt34 
wld35.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-2,0) 
local wld36 = Instance.new("Weld") 
wld36.Parent = prt36 
wld36.Part0 = prt36 
wld36.Part1 = prt35 
wld36.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld37 = Instance.new("Weld") 
wld37.Parent = prt37 
wld37.Part0 = prt37 
wld37.Part1 = prt36 
wld37.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.8,0) 
local wld38 = Instance.new("Weld") 
wld38.Parent = prt38 
wld38.Part0 = prt38 
wld38.Part1 = prt34 
wld38.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.1,0) 
local wld39 = Instance.new("Weld") 
wld39.Parent = prt39 
wld39.Part0 = prt39 
wld39.Part1 = prt38 
wld39.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,-0.4) 
local wld40 = Instance.new("Weld") 
wld40.Parent = prt40 
wld40.Part0 = prt40 
wld40.Part1 = LeftLeg 
wld40.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "AccountMoniter's GunBlade" --Yes. MY, GunBlade.
Tool.TextureId = "" --Haven't made a picture for it yet. I soon will when i'm done with every weapon :3
script.Parent = Tool 
end 
Bin = script.Parent 
--[[Main Functions]]--
function unequipweld() 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.5) * CFrame.new(0.3,-1.55, -0.75) 
end 
function unequipweld2() 
wld16.Part1 = Torso 
wld16.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0) * CFrame.new(0,-0.2,-0.2) 
end 
function equipweld() 
wld1.Part1 = LeftArm 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -0.7, -1.57) * CFrame.new(0, 1, 0) 
end 
function equipweld2() 
wld16.Part1 = LeftArm 
wld16.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld16.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0, 1, 0) 
end 
function hideanim() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), math.rad(720)*i, -1.57) * CFrame.new(0, 1, 0) 
end 
unequipweld() 
wait(0.2) 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-3.5*i+3.5,0,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function equipanim() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
wait(0.1) 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-3.5*i+3.5,0,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3) 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function oneslash() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i+1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0.7*i-0.7, -1.57) * CFrame.new(0, 1, 0) 
end 
ss(prt1,1) 
local con = prt3.Touched:connect(OT) 
local con2 = prt4.Touched:connect(OT) 
for i = 0 , 1 , 0.1 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-3.5*i+3,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -1*i, -1.57) * CFrame.new(0, 1, 0) 
end 
con:disconnect() 
con2:disconnect() 
end 
function twoslash() 
ss(prt1,1) 
local con = prt3.Touched:connect(OT) 
local con2 = prt4.Touched:connect(OT) 
for i = 0 , 1 , 0.1 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i-0.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 2*i-1, -1.57) * CFrame.new(0, 1, 0) 
end 
con:disconnect() 
con2:disconnect() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1.5*i+2.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -1.7*i+1, -1.57) * CFrame.new(0, 1, 0) 
end 
end 
function unload() --Possibly the hardest attack made for the GunBlade >.<
for i = 0 , 1 , 0.15 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.4*i,0.5*i,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local bullet1 = Instance.new("Part") 
bullet1.formFactor = 1 
bullet1.Parent = model1
bullet1.CanCollide = false 
bullet1.BrickColor = BrickColor.new("New Yeller") 
bullet1.Name = "Bullet1" 
bullet1.Size = Vector3.new(1,1,1) 
bullet1.Position = Torso.Position 
local bullet2 = Instance.new("Part") 
bullet2.formFactor = 1 
bullet2.Parent = model1
bullet2.CanCollide = false 
bullet2.BrickColor = BrickColor.new("New Yeller") 
bullet2.Name = "Bullet2" 
bullet2.Size = Vector3.new(1,1,1) 
bullet2.Position = Torso.Position 
local bullet3 = Instance.new("Part") 
bullet3.formFactor = 1 
bullet3.Parent = model1
bullet3.CanCollide = false 
bullet3.BrickColor = BrickColor.new("New Yeller") 
bullet3.Name = "Bullet3" 
bullet3.Size = Vector3.new(1,1,1) 
bullet3.Position = Torso.Position 
local bullet4 = Instance.new("Part") 
bullet4.formFactor = 1 
bullet4.Parent = model1
bullet4.CanCollide = false 
bullet4.BrickColor = BrickColor.new("New Yeller") 
bullet4.Name = "Bullet4" 
bullet4.Size = Vector3.new(1,1,1) 
bullet4.Position = Torso.Position 
local bullet5 = Instance.new("Part") 
bullet5.formFactor = 1 
bullet5.Parent = model1
bullet5.CanCollide = false 
bullet5.BrickColor = BrickColor.new("New Yeller") 
bullet5.Name = "Bullet5" 
bullet5.Size = Vector3.new(1,1,1) 
bullet5.Position = Torso.Position 
local bullet6 = Instance.new("Part") 
bullet6.formFactor = 1 
bullet6.Parent = model1
bullet6.CanCollide = false 
bullet6.BrickColor = BrickColor.new("New Yeller") 
bullet6.Name = "Bullet6" 
bullet6.Size = Vector3.new(1,1,1) 
bullet6.Position = Torso.Position 
local bulmesh1 = Instance.new("CylinderMesh") 
bulmesh1.Parent = bullet1
bulmesh1.Scale = Vector3.new(1.1,1.1,0.3) 
local bulmesh2 = Instance.new("CylinderMesh") 
bulmesh2.Parent = bullet2 
bulmesh2.Scale = Vector3.new(1.1,1.1,0.3) 
local bulmesh3 = Instance.new("CylinderMesh") 
bulmesh3.Parent = bullet3 
bulmesh3.Scale = Vector3.new(1.1,1.1,0.3) 
local bulmesh4 = Instance.new("CylinderMesh") 
bulmesh4.Parent = bullet4 
bulmesh4.Scale = Vector3.new(1.1,1.1,0.3) 
local bulmesh5 = Instance.new("CylinderMesh") 
bulmesh5.Parent = bullet5 
bulmesh5.Scale = Vector3.new(1.1,1.1,0.3) 
local bulmesh6 = Instance.new("CylinderMesh") 
bulmesh6.Parent = bullet6 
bulmesh6.Scale = Vector3.new(1.1,1.1,0.3) 
local bulweld1 = Instance.new("Weld") 
bulweld1.Parent = bullet1 
bulweld1.Part0 = bullet1 
bulweld1.Part1 = RightArm 
bulweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.2,1,0.3) 
local bulweld2 = Instance.new("Weld") 
bulweld2.Parent = bullet2 
bulweld2.Part0 = bullet2 
bulweld2.Part1 = RightArm 
bulweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.2,1,0) 
local bulweld3 = Instance.new("Weld") 
bulweld3.Parent = bullet3 
bulweld3.Part0 = bullet3 
bulweld3.Part1 = RightArm 
bulweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.2,1,-0.3) 
local bulweld4 = Instance.new("Weld") 
bulweld4.Parent = bullet4 
bulweld4.Part0 = bullet4 
bulweld4.Part1 = RightArm 
bulweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.2,1,0.3) 
local bulweld5 = Instance.new("Weld") 
bulweld5.Parent = bullet5 
bulweld5.Part0 = bullet5 
bulweld5.Part1 = RightArm 
bulweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.2,1,0) 
local bulweld6 = Instance.new("Weld") 
bulweld6.Parent = bullet6 
bulweld6.Part0 = bullet6 
bulweld6.Part1 = RightArm 
bulweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.2,1,-0.3) 
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -0.5*i-0.7, -1.57) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.1*i+1,1*i,0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-0.7*i+1.5,0.5,-0.7*i) * CFrame.fromEulerAnglesXYZ(2*i-0.4,-0.5*i+0.5,-0.5*i-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bullet1.Parent = nil 
prt6.BrickColor = BrickColor.new("New Yeller") 
reloadsound(prt1,1) 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(-0.6*i+1.6,0,0.3*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0.6*i-0.6+1.6,0,-0.3*i+0.3-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bullet2.Parent = nil 
prt7.BrickColor = BrickColor.new("New Yeller") 
reloadsound(prt1,1) 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(-0.6*i+1.6,0,0.3*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0.6*i-0.6+1.6,0,-0.3*i+0.3-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bullet3.Parent = nil 
prt8.BrickColor = BrickColor.new("New Yeller") 
reloadsound(prt1,1) 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(-0.6*i+1.6,0,0.3*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0.6*i-0.6+1.6,0,-0.3*i+0.3-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bullet4.Parent = nil 
prt9.BrickColor = BrickColor.new("New Yeller") 
reloadsound(prt1,1) 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(-0.6*i+1.6,0,0.3*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0.6*i-0.6+1.6,0,-0.3*i+0.3-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bullet5.Parent = nil 
prt10.BrickColor = BrickColor.new("New Yeller") 
reloadsound(prt1,1) 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(-0.6*i+1.6,0,0.3*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0.6*i-0.6+1.6,0,-0.3*i+0.3-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bullet6.Parent = nil 
prt11.BrickColor = BrickColor.new("New Yeller") 
reloadsound(prt1,1) 
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0.1*i-0.5-0.7, -1.57) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.47*i+0.1+1,-1*i+1,-0.7*i+0.7) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-0.8*i+0.8,0.5,-0.3*i-0.7) * CFrame.fromEulerAnglesXYZ(0.3*i+1.6,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bulletshoot() 
boomeffect() 
prt9.BrickColor = BrickColor.new("Black") 
shootsound(prt1,1.2) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(0.5*i+1.9,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,1*i,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.07,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.4,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bulletshoot() 
boomeffect() 
prt10.BrickColor = BrickColor.new("Black") 
shootsound(prt1,1.2) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(0.5*i+1.9,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,1*i+1,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.07,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.4,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bulletshoot() 
boomeffect() 
prt11.BrickColor = BrickColor.new("Black") 
shootsound(prt1,1.2) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(0.5*i+1.9,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,1*i+2,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.07,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.4,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bulletshoot() 
boomeffect() 
prt6.BrickColor = BrickColor.new("Black") 
shootsound(prt1,1.2) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(0.5*i+1.9,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,1*i+3,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.07,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.4,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bulletshoot() 
boomeffect() 
prt7.BrickColor = BrickColor.new("Black") 
shootsound(prt1,1.2) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(0.5*i+1.9,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,1*i+4,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.07,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.4,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bulletshoot() 
boomeffect() 
prt8.BrickColor = BrickColor.new("Black") 
shootsound2(prt1,1.2) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(0.5*i+1.9,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,1*i+5,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.07,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.4,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -0.5*i+0.5-0.7, -1.57) * CFrame.new(0, 1, 0) 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.57*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5*i,0.5,1*i-1) * CFrame.fromEulerAnglesXYZ(-1.9*i+1.9,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function sniper() 
for i = 0 , 1 , 0.15 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.4*i,0.5*i,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local bullet1 = Instance.new("Part") 
bullet1.formFactor = 1 
bullet1.Parent = model1 
bullet1.Reflectance = 0.2 
bullet1.CanCollide = false 
bullet1.BrickColor = BrickColor.new("New Yeller") 
bullet1.Name = "Bullet1" 
bullet1.Size = Vector3.new(1,1,1) 
bullet1.Position = Torso.Position 
local bulmesh1 = Instance.new("CylinderMesh") 
bulmesh1.Parent = bullet1
bulmesh1.Scale = Vector3.new(1.1,1.1,0.3) 
local bulweld1 = Instance.new("Weld") 
bulweld1.Parent = bullet1 
bulweld1.Part0 = bullet1 
bulweld1.Part1 = RightArm 
bulweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.2,1,0.3) 
sparkles1 = Instance.new("Sparkles")
sparkles1.Name = "Sparkles1"
sparkles1.Color = Color3.new(1,1,0)
sparkles1.Parent = bullet1 
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -0.5*i-0.7, -1.57) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.1*i+1,1*i,0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-0.7*i+1.5,0.5,-0.7*i) * CFrame.fromEulerAnglesXYZ(2*i-0.4,-0.5*i+0.5,-0.5*i-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bullet1.Parent = nil 
prt9.BrickColor = BrickColor.new("New Yeller") 
prt9.Reflectance = 0.2 
sparkles1.Parent = prt9 
snipersound(prt1,1) 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(-0.6*i+1.6,0,0.3*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0.6*i-0.6+1.6,0,-0.3*i+0.3-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.07 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0.1*i-0.5-0.7, -1.57) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.47*i+0.1+1,-1*i+1,-0.7*i+0.7) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-0.8*i+0.8,0.5,-0.3*i-0.7) * CFrame.fromEulerAnglesXYZ(0.3*i+1.6,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local lazor = Instance.new("Part") 
lazor.formFactor = 1 
lazor.Parent = workspace 
lazor.Transparency = 0.5 
lazor.CanCollide = false 
lazor.BrickColor = BrickColor.new("Bright red") 
lazor.Name = "Lazorz" 
lazor.Size = Vector3.new(1,1,1) 
lazor.Position = Torso.Position 
local lazmsh = Instance.new("CylinderMesh") 
lazmsh.Parent = lazor
lazmsh.Scale = Vector3.new(1.1,1340,0.3) 
coroutine.resume(coroutine.create(function() 
while lazor.Parent ~= nil do 
wait() 
lazor.CFrame = prt13.CFrame * CFrame.new(0,-800,0) 
end 
end)) 
wait(0.5) 
for i = 0 , 1 , 0.07 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0.05*i+0.1-0.5-0.7, -1.57) * CFrame.new(0, 1, 0) 
end 
wait(0.2)
sniperbulletshoot() 
boomeffect() 
prt9.BrickColor = BrickColor.new("Black") 
prt9.Reflectance = 0 
sparkles1.Parent = nil 
lazor.Parent = nil 
snipersound2(prt1,1) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(0.5*i+1.9,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,1*i,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.07,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.4,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -0.5*i+0.5-0.7, -1.57) * CFrame.new(0, 1, 0) 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.57*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5*i,0.5,1*i-1) * CFrame.fromEulerAnglesXYZ(-1.9*i+1.9,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function kerbewmshot() 
for i = 0 , 1 , 0.15 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.4*i,0.5*i,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local bullet1 = Instance.new("Part") 
bullet1.formFactor = 1 
bullet1.Parent = model1 
bullet1.CanCollide = false 
bullet1.BrickColor = BrickColor.new("Bright red") 
bullet1.Name = "Bullet1" 
bullet1.Size = Vector3.new(1,1,1) 
bullet1.Position = Torso.Position 
local bulmesh1 = Instance.new("CylinderMesh") 
bulmesh1.Parent = bullet1
bulmesh1.Scale = Vector3.new(1.1,1.1,0.3) 
local bulweld1 = Instance.new("Weld") 
bulweld1.Parent = bullet1 
bulweld1.Part0 = bullet1 
bulweld1.Part1 = RightArm 
bulweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.2,1,0.3) 
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -0.5*i-0.7, -1.57) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.1*i+1,1*i,0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-0.7*i+1.5,0.5,-0.7*i) * CFrame.fromEulerAnglesXYZ(2*i-0.4,-0.5*i+0.5,-0.5*i-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
bullet1.Parent = nil 
prt9.BrickColor = BrickColor.new("Bright red") 
rocketreload(prt1,1) 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(-0.6*i+1.6,0,0.3*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.3 do 
wait(0)  
RW.C0 = CFrame.new(0.8,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0.6*i-0.6+1.6,0,-0.3*i+0.3-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.07 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0.1*i-0.5-0.7, -1.57) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.47*i+0.1+1,-1*i+1,-0.7*i+0.7) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-0.8*i+0.8,0.5,-0.3*i-0.7) * CFrame.fromEulerAnglesXYZ(0.3*i+1.6,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.5) 
bewmshot() 
boomeffect() 
prt9.BrickColor = BrickColor.new("Black") 
rocketshoot(prt1,1) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(0.5*i+1.9,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,1*i,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.07,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.4,0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.1 do 
wait(0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -0.5*i+0.5-0.7, -1.57) * CFrame.new(0, 1, 0) 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.4,0.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.57*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5*i,0.5,1*i-1) * CFrame.fromEulerAnglesXYZ(-1.9*i+1.9,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function crush() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i+1,0,0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-0.5*i+1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,-0.7*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 1.2*i-0.7, -1.57) * CFrame.new(0, 1, 0) 
end 
for i = 0 , 1 , 0.1 do 
wait(0)  
prt1.Reflectance = prt1.Reflectance + 0.1 
prt2.Reflectance = prt2.Reflectance + 0.1 
prt3.Reflectance = prt3.Reflectance + 0.1 
prt4.Reflectance = prt4.Reflectance + 0.1 
prt5.Reflectance = prt5.Reflectance + 0.1 
prt6.Reflectance = prt6.Reflectance + 0.1 
prt7.Reflectance = prt7.Reflectance + 0.1 
prt8.Reflectance = prt8.Reflectance + 0.1 
prt9.Reflectance = prt9.Reflectance + 0.1 
prt10.Reflectance = prt10.Reflectance + 0.1 
prt11.Reflectance = prt11.Reflectance + 0.1 
prt12.Reflectance = prt12.Reflectance + 0.1 
prt13.Reflectance = prt13.Reflectance + 0.1 
prt13a.Reflectance = prt13a.Reflectance + 0.1 
prt14.Reflectance = prt14.Reflectance + 0.1 
prt15.Reflectance = prt15.Reflectance + 0.1 
end 
wait(0.3) 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(1*i+1.5,0,-0.7*i+0.7) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-0.5*i+1.5,0,0.7*i-0.7) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0.5, -1.57) * CFrame.new(0, 1, 0) 
end 
local con = prt3.Touched:connect(fixOT) 
local con2 = prt4.Touched:connect(fixOT) 
crushsounds(prt1) 
for i = 0 , 1 , 0.2 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1.8*i+2.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2*i+1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), -1.5*i+0.5, -1.57) * CFrame.new(0, 1, 0) 
end 
con:disconnect() 
con2:disconnect() 
wait(0.3) 
for i = 0 , 1 , 0.1 do 
wait(0)  
prt1.Reflectance = prt1.Reflectance - 0.1 
prt2.Reflectance = prt2.Reflectance - 0.1 
prt3.Reflectance = prt3.Reflectance - 0.1 
prt4.Reflectance = prt4.Reflectance - 0.1 
prt5.Reflectance = prt5.Reflectance - 0.1 
prt6.Reflectance = prt6.Reflectance - 0.1 
prt7.Reflectance = prt7.Reflectance - 0.1 
prt8.Reflectance = prt8.Reflectance - 0.1 
prt9.Reflectance = prt9.Reflectance - 0.1 
prt10.Reflectance = prt10.Reflectance - 0.1 
prt11.Reflectance = prt11.Reflectance - 0.1 
prt12.Reflectance = prt12.Reflectance - 0.1 
prt13.Reflectance = prt13.Reflectance - 0.1 
prt13a.Reflectance = prt13a.Reflectance - 0.1 
prt14.Reflectance = prt14.Reflectance - 0.1 
prt15.Reflectance = prt15.Reflectance - 0.1 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.3*i+0.7,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i-1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0.3*i-1, -1.57) * CFrame.new(0, 1, 0) 
end 
end 
function elecshoot() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
unequipweld() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i+3.5,0,0.1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
model2.Parent = modelzorz 
wld16.Parent = prt16 
wld17.Parent = prt17 
wld18.Parent = prt18 
wld19.Parent = prt19 
wld20.Parent = prt20 
wld21.Parent = prt21 
wld22.Parent = prt22 
wld23.Parent = prt23 
wld24.Parent = prt24 
wld25.Parent = prt25 
wld26.Parent = prt26 
wld27.Parent = prt27 
wld28.Parent = prt28 
wld29.Parent = prt29 
wld30.Parent = prt30 
wld31.Parent = prt31 
local c = model2:children() 
for i=1,#c do 
c[i].Transparency = 1 
end 
coroutine.resume(coroutine.create(function() 
local c = model2:children() 
for i = 0,1,0.1 do 
wait() 
prt16.Transparency = prt16.Transparency - 0.1 
prt17.Transparency = prt17.Transparency - 0.1 
prt18.Transparency = prt18.Transparency - 0.1 
prt19.Transparency = prt19.Transparency - 0.1  
prt20.Transparency = prt20.Transparency - 0.1 
prt21.Transparency = prt21.Transparency - 0.1 
prt22.Transparency = prt22.Transparency - 0.1 
prt23.Transparency = prt23.Transparency - 0.1 
prt24.Transparency = prt24.Transparency - 0.1 
prt25.Transparency = prt25.Transparency - 0.1 
prt26.Transparency = prt26.Transparency - 0.1 
prt27.Transparency = prt27.Transparency - 0.1 
prt28.Transparency = prt28.Transparency - 0.1 
prt29.Transparency = prt29.Transparency - 0.1 
prt30.Transparency = prt30.Transparency - 0.1 
prt31.Transparency = prt31.Transparency - 0.1 
end 
end)) 
prt30.BrickColor = BrickColor.new("Bright blue") 
equipweld2() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2.93*i+4.5,0,-1.1*i+1.1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-1.5*i+1.5,0.5,-1*i) * CFrame.fromEulerAnglesXYZ(1*i,0,-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3) 
boomeffect2() 
cannonsound(prt24,0.7) 
elecshot() 
for i = 0 , 1 , 0.15 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i+1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(2*i+1,0,1*i-2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.15 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i+2.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(-2*i+3,0,-1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.5) 
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.1 do 
wait() 
prt16.Transparency = prt16.Transparency + 0.1 
prt17.Transparency = prt17.Transparency + 0.1 
prt18.Transparency = prt18.Transparency + 0.1 
prt19.Transparency = prt19.Transparency + 0.1  
prt20.Transparency = prt20.Transparency + 0.1 
prt21.Transparency = prt21.Transparency + 0.1 
prt22.Transparency = prt22.Transparency + 0.1 
prt23.Transparency = prt23.Transparency + 0.1 
prt24.Transparency = prt24.Transparency + 0.1 
prt25.Transparency = prt25.Transparency + 0.1 
prt26.Transparency = prt26.Transparency + 0.1 
prt27.Transparency = prt27.Transparency + 0.1 
prt28.Transparency = prt28.Transparency + 0.1 
prt29.Transparency = prt29.Transparency + 0.1 
prt30.Transparency = prt30.Transparency + 0.1 
prt31.Transparency = prt31.Transparency + 0.1 
end 
end)) 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.93*i+1.57,0,1.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5*i,0.5,1*i-1) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,2*i-2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
model2.Parent = nil 
unequipweld2() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i+4.5,0,-0.1*i+1.1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2.5*i+3.5,0,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function laz0rshoot() --TROLOLOL 
for i = 0 , 1 , 0.07 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wld32a.Parent = prt32a 
wld33.Parent = prt33 
wld34.Parent = prt34 
wld35.Parent = prt35 
wld36.Parent = prt36 
wld37.Parent = prt37 
wld38.Parent = prt38 
wld39.Parent = prt39 
model3.Parent = modelzorz
local c = model3:children() 
for i=1,#c do 
c[i].Transparency = 1 
end 
for i=1,#c do 
for q = 0,1,0.2 do 
wait() 
c[i].Transparency = c[i].Transparency - 0.2 
end 
end 
for i = 0 , 1 , 0.07 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(180),0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
laz0rshot() 
wait(0.5) 
coroutine.resume(coroutine.create(function() 
local c = model3:children() 
for i=1,#c do 
wait() 
coroutine.resume(coroutine.create(function() 
for q = 0,1,0.2 do 
wait() 
c[i].Transparency = c[i].Transparency + 0.2 
end 
end)) 
end 
model3.Parent = nil 
end)) 
for i = 0 , 1 , 0.07 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function tornadoskates() 
model4.Parent = modelzorz 
wld40.Parent = prt40 
prt40.Transparency = 1 
for i = 0 , 0.4 , 0.1 do 
wait(0)  
prt40.Transparency = prt40.Transparency - 0.1
end 
end 
function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
end 
end 
function fixOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
hum.WalkSpeed = 16 
hum.MaxHealth = 100 
c = hum.Parent:GetChildren() 
for i = 1,#c do 
if c[i].className == "Part" then 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974000" 
SlashSound.Parent = prt1 
SlashSound.Volume = 0.1 
SlashSound.Pitch = 1.1
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
c[i].Transparency = 0 
c[i].Reflectance = 0 
end 
if c[i].className == "ForceField" then 
c[i]:Remove() 
end 
end 
end 
end 
function ss(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function sss(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function uss(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function reloadsound(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209834" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function shootsound(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209803" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(0.3) 
SlashSound:Stop() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function shootsound2(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209803" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function snipersound(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209881" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
end 
function snipersound2(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209875" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
end 
function rocketreload(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209813" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
end 
function rocketshoot(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209821" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
end 
function rocketbewmsound(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209236" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
end 
function crushsounds(parent) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209268" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = 1
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209588" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = 1
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209596" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = 0.7
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
end 
function cannonsound(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209257" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
end 
function elecsound(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2800815" 
SlashSound.Parent = parent 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(3) 
SlashSound.Parent = nil 
end)) 
end 
function effect() 
local clone = prt3:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Transparency = 0.5 
clone.Reflectance = 0 
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
clone.BrickColor = BrickColor.new("White") 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
clone.Parent = nil 
end)) 
local cloneb = prt4:clone() 
cloneb.Parent = workspace 
cloneb.Anchored = true 
cloneb.Transparency = 0.5 
cloneb.Reflectance = 0 
cloneb.Mesh.Scale = cloneb.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
cloneb.BrickColor = BrickColor.new("White") 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
cloneb.Parent = nil 
end)) 
end 
DBHit=function(hit,DB) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                h:TakeDamage(5)
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)
                vl.velocity=velocity*1.05+Vector3.new(0,3,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end
function boomeffect() 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.2,0,0.2)
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = prt13.CFrame * CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.random(-50,50)) 
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function() 
for i = 0 , 1 , 0.2 do 
wait(0.1) 
mesh.Scale = mesh.Scale + Vector3.new(0,0.3,0) 
shell.Transparency = shell.Transparency + 0.2
end 
shell.Transparency = 1 
shell.Parent = nil 
end)) 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.MeshType = "Sphere" 
mesh2.Scale = Vector3.new(0.2,0,0.2)
local shell2 = Instance.new("Part") 
mesh2.Parent = shell2 
shell2.Anchored = true 
shell2.formFactor = 1 
shell2.Size = Vector3.new(2,2,2) 
shell2.CFrame = shell.CFrame * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) 
shell2.Parent = game.workspace 
shell2.Transparency = 0 
shell2.BrickColor = BrickColor.new("Bright yellow") 
shell2.CanCollide = false 
coroutine.resume(coroutine.create(function() 
for i = 0 , 1 , 0.2 do 
wait(0.1) 
mesh2.Scale = mesh2.Scale + Vector3.new(0,0.3,0) 
shell2.Transparency = shell2.Transparency + 0.2
end 
shell2.Transparency = 1 
shell2.Parent = nil 
end)) 
local mesh3 = Instance.new("SpecialMesh") 
mesh3.MeshType = "Sphere" 
mesh3.Scale = Vector3.new(0.2,0,0.2)
local shell3 = Instance.new("Part") 
mesh3.Parent = shell3 
shell3.Anchored = true 
shell3.formFactor = 1 
shell3.Size = Vector3.new(2,2,2) 
shell3.CFrame = prt13.CFrame * CFrame.new(0,-0.5,0)
shell3.Parent = game.workspace 
shell3.Transparency = 0 
shell3.BrickColor = BrickColor.new("Bright yellow") 
shell3.CanCollide = false 
coroutine.resume(coroutine.create(function() 
for i = 0 , 1 , 0.2 do 
wait(0.1) 
mesh3.Scale = mesh3.Scale + Vector3.new(0,0.3,0) 
shell3.Transparency = shell3.Transparency + 0.2
end 
shell3.Transparency = 1 
shell3.Parent = nil 
end)) 
end 
function boomeffect2() 
local mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(0.2,0,0.2) 
mesh.MeshId = "http://www.roblox.com/asset/?id=1323306" 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = prt23.CFrame * CFrame.new(0,0.35,0)
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright blue") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function() 
for i = 0 , 1 , 0.2 do 
wait(0.1) 
mesh.Scale = mesh.Scale + Vector3.new(0.3,0.5,0.3) 
shell.CFrame = shell.CFrame * CFrame.new(0,0.3,0) 
shell.Transparency = shell.Transparency + 0.2
end 
shell.Transparency = 1 
shell.Parent = nil 
end)) 
end 
DBHit1=function(hit,DB) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                h:TakeDamage(5)
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)
                vl.velocity=velocity*1.05+Vector3.new(0,3,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end
function bulletshoot() 
local freakingbullet = prt6:Clone() 
freakingbullet.formFactor = 1 
freakingbullet.Parent = workspace 
freakingbullet.CanCollide = false 
freakingbullet.BrickColor = BrickColor.new("New Yeller") 
freakingbullet.Name = "Bullet6" 
freakingbullet.Size = Vector3.new(1,1,1) 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = prt13.CFrame * CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
freakingbullet.Velocity = Torso.CFrame.lookVector * 100
local freakingbulmsh = Instance.new("CylinderMesh") 
freakingbulmsh.Parent = freakingbullet 
freakingbulmsh.Scale = Vector3.new(1.1,0.8,0.3) 
local force = Instance.new("BodyForce") 
force.Parent = freakingbullet 
force.force = Vector3.new(0,240,0) 
coroutine.resume(coroutine.create(function() 
while freakingbullet.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - freakingbullet.Position;
                local mag = targ.magnitude;
                if mag <= 4 and c[i].Name ~= Player.Name then
                hum:TakeDamage(15)
                v=Instance.new("BodyVelocity")
                v.P=1000
                v.maxForce=Vector3.new(math.huge,0,math.huge)
                v.velocity=Torso.CFrame.lookVector*25+Torso.Velocity/1.05
                v.Parent=hum.Parent.Torso
                coroutine.resume(coroutine.create(function() 
                wait(0.3) 
                v.Parent = nil 
                end)) 
                game:GetService("Debris"):AddItem(v,.1)
                freakingbullet.Parent = nil 
--                hum:TakeDamage(damage.Value + damageboost)
                end
                end
                end
        end
end 
end)) 
--[[freakingbullet.Touched:connect(function(hit) kill(b,hit) end) --Freaking touched function wont work >:U
function kill(brick,hit) 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= "Dr4gOnh4ck3rz2" and hit.Name ~= "Base" and hit.Parent.Name ~= "AccountMoniter" then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 5 
freakingbullet.Parent = nil 
end 
end]] 
coroutine.resume(coroutine.create(function() 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = prt13.CFrame * CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,5,0.1 do 
wait() 
--freakingbullet.Touched:connect(function(hit) kill(b,hit) end) 
freakingbullet.Velocity = Torso.CFrame.lookVector * 100 
end 
freakingbullet.Parent = nil 
end)) 
end 
function sniperbulletshoot() 
local freakingbullet = prt6:Clone() 
freakingbullet.formFactor = 1 
freakingbullet.Reflectance = 0.2 
freakingbullet.Parent = workspace 
freakingbullet.CanCollide = false 
freakingbullet.BrickColor = BrickColor.new("New Yeller") 
freakingbullet.Name = "Bullet6" 
freakingbullet.Size = Vector3.new(1,1,1) 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = prt13.CFrame * CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
freakingbullet.Velocity = Torso.CFrame.lookVector * 100
local freakingbulmsh = Instance.new("CylinderMesh") 
freakingbulmsh.Parent = freakingbullet 
freakingbulmsh.Scale = Vector3.new(1.1,0.8,0.3) 
local force = Instance.new("BodyForce") 
force.Parent = freakingbullet 
force.force = Vector3.new(0,240,0) 
sparkles = Instance.new("Sparkles")
sparkles.Name = "Sparkles"
sparkles.Color = Color3.new(1,1,0)
sparkles.Parent = freakingbullet 
coroutine.resume(coroutine.create(function() 
while freakingbullet.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - freakingbullet.Position;
                local mag = targ.magnitude;
                if mag <= 4 and c[i].Name ~= Player.Name then
                hum:TakeDamage(50)
                freakingbullet.Parent = nil 
--                hum:TakeDamage(damage.Value + damageboost)
                end
                end
                end
        end
end 
end)) 
--[[freakingbullet.Touched:connect(function(hit) kill(b,hit) end) --Freaking touched function wont work >:U
function kill(brick,hit) 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= "Dr4gOnh4ck3rz2" and hit.Name ~= "Base" and hit.Parent.Name ~= "AccountMoniter" then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 5 
freakingbullet.Parent = nil 
end 
end]] 
coroutine.resume(coroutine.create(function() 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = prt13.CFrame * CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,10,0.1 do 
wait() 
--freakingbullet.Touched:connect(function(hit) kill(b,hit) end) 
freakingbullet.Velocity = Torso.CFrame.lookVector * 250 
end 
freakingbullet.Parent = nil 
end)) 
end 
function bewmshot() 
local freakingbullet = prt6:Clone() 
freakingbullet.formFactor = 1 
freakingbullet.Parent = workspace 
freakingbullet.CanCollide = false 
freakingbullet.BrickColor = BrickColor.new("Bright red") 
freakingbullet.Name = "Bullet6" 
freakingbullet.Size = Vector3.new(1,1,1) 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = prt13.CFrame * CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
freakingbullet.Velocity = Torso.CFrame.lookVector * 100
local freakingbulmsh = Instance.new("CylinderMesh") 
freakingbulmsh.Parent = freakingbullet 
freakingbulmsh.Scale = Vector3.new(1.1,0.8,0.3) 
local force = Instance.new("BodyForce") 
force.Parent = freakingbullet 
force.force = Vector3.new(0,240,0) 
coroutine.resume(coroutine.create(function() 
while freakingbullet.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - freakingbullet.Position;
                local mag = targ.magnitude;
                if mag <= 4 and c[i].Name ~= Player.Name then
                hum:TakeDamage(20)
                freakingbullet.Parent = nil 
                DBHit(hum.Parent.Torso,freakingbullet)
                local bewm = Instance.new("Explosion") 
                bewm.Parent = workspace 
                bewm.BlastPressure = 0 
                bewm.Position = hum.Parent.Torso.Position  
                rocketbewmsound(prt1,1.2) 
--                coroutine.resume(coroutine.create(function() 
                wait(0.5) 
                rocketbewmsound(prt1,1.2) 
                hum:TakeDamage(10)
                DBHit(hum.Parent.Torso,freakingbullet)
                local bewm = Instance.new("Explosion") 
                bewm.Parent = workspace 
                bewm.BlastPressure = 0 
                bewm.Position = hum.Parent.Torso.Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
                wait(0.5) 
                rocketbewmsound(prt1,1.2) 
                hum:TakeDamage(10)
                DBHit(hum.Parent.Torso,freakingbullet)
                local bewm = Instance.new("Explosion") 
                bewm.Parent = workspace 
                bewm.BlastPressure = 0 
                bewm.Position = hum.Parent.Torso.Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
                wait(0.5) 
                rocketbewmsound(prt1,1.2) 
                hum:TakeDamage(10)
                DBHit(hum.Parent.Torso,freakingbullet)
                local bewm = Instance.new("Explosion") 
                bewm.Parent = workspace 
                bewm.BlastPressure = 0 
                bewm.Position = hum.Parent.Torso.Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
--                end)) 
--                hum:TakeDamage(damage.Value + damageboost)
                end
                end
                end
        end
end 
end)) 
coroutine.resume(coroutine.create(function() 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = prt13.CFrame * CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,5,0.1 do 
wait() 
--freakingbullet.Touched:connect(function(hit) kill(b,hit) end) 
freakingbullet.Velocity = Torso.CFrame.lookVector * 100 
end 
freakingbullet.Parent = nil 
end)) 
end 
function elecshot() 
local freakingbullet = prt6:Clone() 
freakingbullet.formFactor = 1 
freakingbullet.Parent = workspace 
freakingbullet.CanCollide = false 
freakingbullet.BrickColor = BrickColor.new("Bright blue") 
freakingbullet.Name = "Bullet6" 
freakingbullet.Size = Vector3.new(1,1,1) 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = Torso.CFrame --* CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
freakingbullet.Velocity = Torso.CFrame.lookVector * 100
local freakingbulmsh = Instance.new("CylinderMesh") 
freakingbulmsh.Parent = freakingbullet 
freakingbulmsh.Scale = Vector3.new(1.6,1.3,0.8) 
local force = Instance.new("BodyForce") 
force.Parent = freakingbullet 
force.force = Vector3.new(0,235,0) 
coroutine.resume(coroutine.create(function() 
while freakingbullet.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - freakingbullet.Position;
                local mag = targ.magnitude;
                if mag <= 5 and c[i].Name ~= Player.Name then
                hum:TakeDamage(20) 
                coroutine.resume(coroutine.create(function() 
                for i = 0,6 do 
                wait(0.2) 
                hum:TakeDamage(3) 
                local me = Instance.new("SpecialMesh") 
                me.MeshType = "Sphere" 
                local wave = Instance.new("Part") 
                me.Parent = wave 
                wave.formFactor = 1 
                wave.Parent = workspace 
                wave.CanCollide = false 
                wave.Anchored = true 
                wave.BrickColor = BrickColor.new("Bright blue") 
                wave.Name = "Waveh" 
                wave.Size = Vector3.new(1,1,1) 
                wave.Position = Torso.Position 
                wave.CFrame = hum.Parent.Torso.CFrame * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
                elecsound(wave,1.5) 
                coroutine.resume(coroutine.create(function() 
                for i = 0,1,0.1 do 
                wait() 
                me.Scale = me.Scale + Vector3.new(1,1,1) 
                wave.Transparency = wave.Transparency + 0.1 
                end 
                wave.Parent = nil 
                end)) 
                DBHit(hum.Parent.Torso,freakingbullet) 
                end 
                end)) 
                freakingbullet.Parent = nil 
                end
                end
                end
        end
end 
end)) 
coroutine.resume(coroutine.create(function() 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = prt24.CFrame * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,5,0.1 do 
wait() 
--freakingbullet.Touched:connect(function(hit) kill(b,hit) end) 
freakingbullet.Velocity = Torso.CFrame.lookVector * 100 
end 
freakingbullet.Parent = nil 
end)) 
end 
function laz0rshot() 
local laz0rhed = Instance.new("Part") 
laz0rhed.formFactor = 1 
laz0rhed.Parent = workspace 
laz0rhed.CanCollide = false 
laz0rhed.BrickColor = BrickColor.new("New Yeller") 
laz0rhed.Name = "HeadOfTehLaz0r" 
laz0rhed.Size = Vector3.new(3,1,3) 
laz0rhed.Position = Torso.Position 
laz0rhed.CFrame = prt37.CFrame * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
local lazmsh = Instance.new("SpecialMesh") 
lazmsh.MeshType = "Sphere" 
lazmsh.Parent = laz0rhed 
lazmsh.Scale = Vector3.new(0,0,0) 
local lazwel = Instance.new("Weld") 
lazwel.Parent = laz0rhed 
lazwel.Part0 = laz0rhed 
lazwel.Part1 = prt37 
for i = 0 , 1 , 0.01 do 
wait(0)  
lazmsh.Scale = lazmsh.Scale + Vector3.new(0.01,0.04,0.01)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i+1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),0.5*i,-0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3) 
print(lazmsh.Scale) 
laz0rhed.Parent = nil 
local tehlaz0r = Instance.new("Part") 
tehlaz0r.formFactor = 1 
tehlaz0r.Parent = workspace 
tehlaz0r.CanCollide = false 
tehlaz0r.BrickColor = BrickColor.new("New Yeller") 
tehlaz0r.Name = "LAAAAAAAAAAAAAAAZ0R" 
tehlaz0r.Size = Vector3.new(3,5,3) 
tehlaz0r.Position = Torso.Position 
tehlaz0r.CFrame = prt37.CFrame --* CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
tehlaz0r.Velocity = Torso.CFrame.lookVector * 50 
--[[v=Instance.new("BodyVelocity")
v.P=3000
v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
v.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)
v.Parent=tehlaz0r]]
local TLM = Instance.new("CylinderMesh") 
TLM.Parent = tehlaz0r 
TLM.Scale = lazmsh.Scale - Vector3.new(0,3.5,0) 
lazwel.Part0 = laz0rhed 
lazwel.Part1 = tehlaz0r 
lazwel.C0 = CFrame.new(0, 4, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local force = Instance.new("BodyForce") 
force.Parent = tehlaz0r 
force.force = Vector3.new(0,8480,0) 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - tehlaz0r.Position;
                local mag = targ.magnitude;
                if mag <= 3 and c[i].Name ~= Player.Name then 
                coroutine.resume(coroutine.create(function() 
                for i = 0,1,0.1 do 
                wait() 
                DBHit(head.Parent.Torso,tehlaz0r) 
                end 
                end)) 
                end 
                end 
                end 
        end 
coroutine.resume(coroutine.create(function() 
wait(20) 
tehlaz0r.Parent = nil 
end)) 
coroutine.resume(coroutine.create(function() 
while tehlaz0r.Parent ~= nil do 
wait(0) 
local lazclon = tehlaz0r:Clone() 
lazclon.Anchored = true 
lazclon.Parent = workspace 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - lazclon.Position;
                local mag = targ.magnitude;
                if mag <= 3 and c[i].Name ~= Player.Name then 
                coroutine.resume(coroutine.create(function() 
                for i = 0,1,0.1 do 
                wait() 
                DBHit1(head,lazclon) 
                end 
                end)) 
                end 
                end 
                end 
        end 
coroutine.resume(coroutine.create(function() 
wait(3) 
for i = 0,1,0.1 do 
wait() 
lazclon.Transparency = lazclon.Transparency + 0.1 
end 
lazclon.Parent = nil 
end)) 
end 
end)) 
print(TLM.Scale) 
end 
--[[Tool Functions]]--
hold = false 
function ob1d(mouse) 
hold = true 
oneslash() 
if hold == true then 
twoslash() 
end 
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
function key(key) 
if attack == true then return end 
if key == "q" then 
unload() 
end 
if key == "e" then 
sniper() 
end 
if key == "r" then 
kerbewmshot() 
end 
if key == "f" then 
crush() 
end 
if key == "z" then 
elecshoot() 
end 
if key == "x" then 
laz0rshoot() 
end 
if key == "c" then 
cycloneskates() 
end 
end 
function key2(key) 
charging2 = false 
tornadoing = false 
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
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
unsheathed = false 
hideanim() 
Character.Humanoid.WalkSpeed = 16 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
function onRunning(speed)
if skill == true then return end 
end 
Character.Humanoid.Running:connect(onRunning) 
while true do 
wait(0)  
end 
-- lego 