Player = game:GetService("Players").LocalPlayer
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
bladecolor = BrickColor.new("New Yeller") 
attack = false 
attackdebounce = false 
attacktype = 1 
combo = 0 
damage = 3 
oridamage = 3 
walkdebounce = false 
sheathed = true 
holdingW = false 
holdingA = false 
holdingS = false 
holdingD = false 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW2, LW2 = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
if Character:findFirstChild("Vajra",true) ~= nil then 
Character:findFirstChild("Vajra",true).Parent = nil 
end 
        
local modelzorz = Instance.new("Model") 
modelzorz.Name = "Vajra" 
modelzorz.Parent = Character 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = Character.Torso.BrickColor
prt1.Name = "Handle1" 
prt1.Size = Vector3.new(1,2,1) 
prt1.CFrame = Torso.CFrame 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Bright blue") 
prt2.Name = "Handle2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.CFrame = Torso.CFrame 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Bright yellow") 
prt3.Name = "Handle3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.CFrame = Torso.CFrame 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("White") 
prt4.Name = "Handle4" 
prt4.Size = Vector3.new(0.5,0.5,0.5) 
prt4.CFrame = Torso.CFrame 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Bright blue") 
prt5.Name = "Handle5" 
prt5.Size = Vector3.new(1,0.5,1) 
prt5.CFrame = Torso.CFrame 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("White") 
prt6.Name = "Blade1" 
prt6.Size = Vector3.new(1,0.5,1) 
prt6.CFrame = Torso.CFrame 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = modelzorz 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("White") 
prt7.Name = "Blade2" 
prt7.Size = Vector3.new(1,0.5,1) 
prt7.CFrame = Torso.CFrame 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = modelzorz 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("White") 
prt8.Name = "Blade3" 
prt8.Size = Vector3.new(1,0.5,1) 
prt8.CFrame = Torso.CFrame 
local prt9 = prt2:Clone() 
prt9.Parent = modelzorz 
prt9.Name = "Handle6" 
prt9.Size = Vector3.new(1,1,1) 
prt9.CFrame = Torso.CFrame 
local prt10 = prt3:Clone() 
prt10.Parent = modelzorz 
prt10.Name = "Handle7" 
prt10.Size = Vector3.new(1,1,1) 
prt10.CFrame = Torso.CFrame 
local prt11 = prt4:Clone() 
prt11.Parent = modelzorz 
prt11.Name = "Handle8" 
prt11.Size = Vector3.new(1,0.5,1) 
prt11.CFrame = Torso.CFrame 
local prt12 = prt5:Clone() 
prt12.Parent = modelzorz 
prt12.Name = "Handle9" 
prt12.Size = Vector3.new(1,0.5,1) 
prt12.CFrame = Torso.CFrame 
local prt13 = prt6:Clone() 
prt13.Parent = modelzorz 
prt13.Name = "Blade4" 
prt13.Size = Vector3.new(1,0.5,1) 
prt13.CFrame = Torso.CFrame 
local prt14 = prt7:Clone() 
prt14.Parent = modelzorz 
prt14.Name = "Blade5" 
prt14.Size = Vector3.new(1,0.5,1) 
prt14.CFrame = Torso.CFrame 
local prt15 = prt8:Clone() 
prt15.Parent = modelzorz 
prt15.Name = "Blade6" 
prt15.Size = Vector3.new(1,0.5,1) 
prt15.CFrame = Torso.CFrame 
local part1 = Instance.new("Part") 
part1.formFactor = 1 
part1.Parent = modelzorz 
part1.CanCollide = false 
part1.BrickColor = Character.Torso.BrickColor
part1.Name = "2Handle1" 
part1.Size = Vector3.new(1,2,1) 
part1.CFrame = Torso.CFrame 
local part2 = Instance.new("Part") 
part2.formFactor = 1 
part2.Parent = modelzorz 
part2.CanCollide = false 
part2.BrickColor = BrickColor.new("Bright blue") 
part2.Name = "2Handle2" 
part2.Size = Vector3.new(1,1,1) 
part2.CFrame = Torso.CFrame 
local part3 = Instance.new("Part") 
part3.formFactor = 1 
part3.Parent = modelzorz 
part3.CanCollide = false 
part3.BrickColor = BrickColor.new("Bright yellow") 
part3.Name = "2Handle3" 
part3.Size = Vector3.new(1,1,1) 
part3.CFrame = Torso.CFrame 
local part4 = Instance.new("Part") 
part4.formFactor = 1 
part4.Parent = modelzorz 
part4.CanCollide = false 
part4.BrickColor = BrickColor.new("White") 
part4.Name = "2Handle4" 
part4.Size = Vector3.new(1,0.5,1) 
part4.CFrame = Torso.CFrame 
local part5 = Instance.new("Part") 
part5.formFactor = 1 
part5.Parent = modelzorz 
part5.CanCollide = false 
part5.BrickColor = BrickColor.new("Bright blue") 
part5.Name = "2Handle5" 
part5.Size = Vector3.new(1,0.5,1) 
part5.CFrame = Torso.CFrame 
local part6 = Instance.new("Part") 
part6.formFactor = 1 
part6.Parent = modelzorz 
part6.CanCollide = false 
part6.BrickColor = BrickColor.new("White") 
part6.Name = "2Blade1" 
part6.Size = Vector3.new(1,0.5,1) 
part6.CFrame = Torso.CFrame 
local part7 = Instance.new("Part") 
part7.formFactor = 1 
part7.Parent = modelzorz 
part7.CanCollide = false 
part7.BrickColor = BrickColor.new("White") 
part7.Name = "2Blade2" 
part7.Size = Vector3.new(1,0.5,1) 
part7.CFrame = Torso.CFrame 
local part8 = Instance.new("Part") 
part8.formFactor = 1 
part8.Parent = modelzorz 
part8.CanCollide = false 
part8.BrickColor = BrickColor.new("White") 
part8.Name = "2Blade3" 
part8.Size = Vector3.new(1,0.5,1) 
part8.CFrame = Torso.CFrame 
local part9 = part2:Clone() 
part9.Parent = modelzorz 
part9.Name = "2Handle6" 
part9.Size = Vector3.new(1,1,1) 
part9.CFrame = Torso.CFrame 
local part10 = part3:Clone() 
part10.Parent = modelzorz 
part10.Name = "2Handle7" 
part10.Size = Vector3.new(1,1,1) 
part10.CFrame = Torso.CFrame 
local part11 = part4:Clone() 
part11.Parent = modelzorz 
part11.Name = "2Handle8" 
part11.Size = Vector3.new(1,0.5,1) 
part11.CFrame = Torso.CFrame 
local part12 = part5:Clone() 
part12.Parent = modelzorz 
part12.Name = "2Handle9" 
part12.Size = Vector3.new(1,0.5,1) 
part12.CFrame = Torso.CFrame 
local part13 = part6:Clone() 
part13.Parent = modelzorz 
part13.Name = "2Blade4" 
part13.Size = Vector3.new(1,0.5,1) 
part13.CFrame = Torso.CFrame 
local part14 = part7:Clone() 
part14.Parent = modelzorz 
part14.Name = "2Blade5" 
part14.Size = Vector3.new(1,0.5,1) 
part14.CFrame = Torso.CFrame 
local part15 = part8:Clone() 
part15.Parent = modelzorz 
part15.Name = "2Blade6" 
part15.Size = Vector3.new(1,0.5,1) 
part15.CFrame = Torso.CFrame 
modelzorz:BreakJoints() 
local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.31,0.7,0.31) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.4,0.3,0.4) 
local msh3 = Instance.new("CylinderMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.41,0.3,0.41) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.47,0.35,0.4) 
local msh5 = Instance.new("BlockMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.37,0.55,0.6) 
local msh6 = Instance.new("SpecialMesh") 
msh6.Parent = prt6 
msh6.MeshId = "http://www.roblox.com/asset/?id=1778999"
msh6.Scale = Vector3.new(0.35,0.4,0.25) 
local msh7 = Instance.new("SpecialMesh") 
msh7.Parent = prt7 
msh7.MeshId = "http://www.roblox.com/asset/?id=1778999"
msh7.Scale = Vector3.new(0.35,0.4,0.25) 
local msh8 = Instance.new("SpecialMesh") 
msh8.Parent = prt8 
msh8.MeshId = "http://www.roblox.com/asset/?id=1778999"
msh8.Scale = Vector3.new(0.35,0.6,0.25) 
local msh9 = msh2:Clone() 
msh9.Parent = prt9 
local msh10 = msh3:Clone() 
msh10.Parent = prt10 
local msh11 = msh4:Clone() 
msh11.Parent = prt11 
local msh12 = msh5:Clone() 
msh12.Parent = prt12 
local msh13 = msh6:Clone() 
msh13.Parent = prt13 
local msh14 = msh7:Clone() 
msh14.Parent = prt14 
local msh15 = msh8:Clone() 
msh15.Parent = prt15 
local mesh1 = Instance.new("CylinderMesh") 
mesh1.Parent = part1 
mesh1.Scale = Vector3.new(0.31,0.7,0.31) 
local mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = part2 
mesh2.Scale = Vector3.new(0.4,0.3,0.4) 
local mesh3 = Instance.new("CylinderMesh") 
mesh3.Parent = part3 
mesh3.Scale = Vector3.new(0.41,0.3,0.41) 
local mesh4 = Instance.new("BlockMesh") 
mesh4.Parent = part4 
mesh4.Scale = Vector3.new(0.47,0.35,0.4) 
local mesh5 = Instance.new("BlockMesh") 
mesh5.Parent = part5 
mesh5.Scale = Vector3.new(0.37,0.55,0.6) 
local mesh6 = Instance.new("SpecialMesh") 
mesh6.Parent = part6 
mesh6.MeshId = "http://www.roblox.com/asset/?id=1778999"
mesh6.Scale = Vector3.new(0.35,0.4,0.25) 
local mesh7 = Instance.new("SpecialMesh") 
mesh7.Parent = part7 
mesh7.MeshId = "http://www.roblox.com/asset/?id=1778999"
mesh7.Scale = Vector3.new(0.35,0.4,0.25) 
local mesh8 = Instance.new("SpecialMesh") 
mesh8.Parent = part8 
mesh8.MeshId = "http://www.roblox.com/asset/?id=1778999"
mesh8.Scale = Vector3.new(0.35,0.6,0.25) 
local mesh9 = mesh2:Clone() 
mesh9.Parent = part9 
local mesh10 = mesh3:Clone() 
mesh10.Parent = part10 
local mesh11 = mesh4:Clone() 
mesh11.Parent = part11 
local mesh12 = mesh5:Clone() 
mesh12.Parent = part12 
local mesh13 = mesh6:Clone() 
mesh13.Parent = part13 
local mesh14 = mesh7:Clone() 
mesh14.Parent = part14 
local mesh15 = mesh8:Clone() 
mesh15.Parent = part15 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.7) * CFrame.new(0,0,-0.75) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt1 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.9,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt1 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0.8,math.rad(90),0) * CFrame.new(0,1.2,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt4 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt1 
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(0.5,1.25,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt1 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(-0.5,1.25,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt1 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(180)) * CFrame.new(0,1.7,0) 
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = prt1 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = prt1 
wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.9,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = prt1 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0.8,math.rad(90),0) * CFrame.new(0,-1.2,0) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt11 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt1 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(0.5,-1.25,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt1 
wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(-0.5,-1.25,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt1 
wld15.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,math.rad(180)) * CFrame.new(0,-1.7,0) 
local weld1 = Instance.new("Weld") 
weld1.Parent = part1 
weld1.Part0 = part1 
weld1.Part1 = Torso 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.7) * CFrame.new(0,0,-0.75) 
local weld2 = Instance.new("Weld") 
weld2.Parent = part2 
weld2.Part0 = part2 
weld2.Part1 = part1 
weld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local weld3 = Instance.new("Weld") 
weld3.Parent = part3 
weld3.Part0 = part3 
weld3.Part1 = part1 
weld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.9,0) 
local weld4 = Instance.new("Weld") 
weld4.Parent = part4 
weld4.Part0 = part4 
weld4.Part1 = part1 
weld4.C0 = CFrame.fromEulerAnglesXYZ(0.8,math.rad(90),0) * CFrame.new(0,1.2,0) 
local weld5 = Instance.new("Weld") 
weld5.Parent = part5 
weld5.Part0 = part5 
weld5.Part1 = part4 
weld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld6 = Instance.new("Weld") 
weld6.Parent = part6 
weld6.Part0 = part6 
weld6.Part1 = part1 
weld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(0.5,1.25,0) 
local weld7 = Instance.new("Weld") 
weld7.Parent = part7 
weld7.Part0 = part7 
weld7.Part1 = part1 
weld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(-0.5,1.25,0) 
local weld8 = Instance.new("Weld") 
weld8.Parent = part8 
weld8.Part0 = part8 
weld8.Part1 = part1 
weld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(180)) * CFrame.new(0,1.7,0) 
local weld9 = Instance.new("Weld") 
weld9.Parent = part9 
weld9.Part0 = part9 
weld9.Part1 = part1 
weld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local weld10 = Instance.new("Weld") 
weld10.Parent = part10 
weld10.Part0 = part10 
weld10.Part1 = part1 
weld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.9,0) 
local weld11 = Instance.new("Weld") 
weld11.Parent = part11 
weld11.Part0 = part11 
weld11.Part1 = part1 
weld11.C0 = CFrame.fromEulerAnglesXYZ(0.8,math.rad(90),0) * CFrame.new(0,-1.2,0) 
local weld12 = Instance.new("Weld") 
weld12.Parent = part12 
weld12.Part0 = part12 
weld12.Part1 = part11 
weld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld13 = Instance.new("Weld") 
weld13.Parent = part13 
weld13.Part0 = part13 
weld13.Part1 = part1 
weld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(0.5,-1.25,0) 
local weld14 = Instance.new("Weld") 
weld14.Parent = part14 
weld14.Part0 = part14 
weld14.Part1 = part1 
weld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(-0.5,-1.25,0) 
local weld15 = Instance.new("Weld") 
weld15.Parent = part15 
weld15.Part0 = part15 
weld15.Part1 = part1 
weld15.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,math.rad(180)) * CFrame.new(0,-1.7,0) 
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Vajra" 
script.Parent = Tool 
end 
Bin = script.Parent 
function unequipweld() 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.7) * CFrame.new(0,0,-0.75) 
weld1.Part1 = Torso 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.7) * CFrame.new(0,0,-0.75) 
end 
function equipweld() 
wld1.Part1 = LeftArm 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
weld1.Part1 = RightArm 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
end 
function hideanim() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
unequipweld() 
wait(0.2) 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function equipanim() 
for i = 0 , 1 , 0.085 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0.3*i,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2*i,0.2*i,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
wait(0.1) 
for i = 0 , 1 , 0.075 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function oneslash() 
attack = true 
combo = 1 
walking = nil 
Walk = nil 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Head.CFrame.lookVector * 20 
ss(workspace,1) 
con1=prt1.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.3*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-2.8*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2,0,-0.5*i) 
end 
vel.Parent = nil 
con1:disconnect() 
wait(0.1) 
attack = false 
end 
function twoslash() 
attack = true 
combo = 2 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Head.CFrame.lookVector * 20 
ss(workspace,1) 
con1=prt1.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.3-0.4*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-2.8,-0.3,1.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2,0,-0.5) 
end 
vel.Parent = nil 
con1:disconnect() 
wait(0.1) 
attack = false 
end 
function threeslash() 
attack = true 
combo = 3 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+1.57*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3+2.8*i,0.3,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3+0.3*i,-0.3+0.3*i,1.3-1.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+2.3*i,0.2-0.5*i,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2-0.2*i,0,-0.5+0.5*i) 
end 
wait(0.2) 
boomeffect() 
bewm(workspace,1) 
ss(workspace,1) 
for i = 0,1,0.25 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.2*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-1.8*i,0.3-0.6*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8*i,-0.3+0.6*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.05) 
attack = false 
end 
function fourslash() 
attack = true 
combo = 4 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
wait() 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1*i,-0.3,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,-1*i) 
end 
wait(0.2) 
boomeffect2(LeftArm,10,20) 
bewm(workspace,1) 
ss(workspace,1) 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1,-0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3+0.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,-1) 
end 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1,-0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3+0.3-0.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,-1) 
end 
wait(0.1) 
gairo.Parent = nil 
attack = false 
end 
function dashslash() 
attack = true 
combo = 4 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
wait() 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1*i,-0.3,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,-1*i) 
end 
wait(0.2) 
boomeffect2(LeftArm,5,10) 
bewm(workspace,1) 
ss(workspace,1) 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1,-0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3+0.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,-1) 
end 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1,-0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3+0.3-0.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,-1) 
end 
wait(0.1) 
gairo.Parent = nil 
attack = false 
end 
function Onslaught() 
attack = true 
Character.Humanoid.WalkSpeed = 0 
walking = false 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,-2*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.37*i,0,0) 
end 
ss(workspace,1) 
wait(0.2) 
con1=prt1.Touched:connect(function(hit) Damagefunc1(hit,20,10) end)
for i = 0,1,0.15 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+3.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8-2*i,0,-2) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,1+0.67*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.37,0,0) 
end 
con1:disconnect() 
wait(0.2) 
boomeffect2(RightArm,30,50) 
bewm(workspace,1) 
ss(workspace,1) 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+3.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8-2,0,-2) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,1+0.67) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.37,0,-0.3*i) 
end 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+3.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8-2,0,-2) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,1+0.67) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.37,0,-0.3+0.3*i) 
end 
wait(0.2) 
gairo.Parent = nil 
attack = false 
end 
function DestroyerOfHeaven() 
attack = true 
Character.Humanoid.WalkSpeed = 0 
walking = false 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0.3*i,-0.2*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2*i,0.2*i,-0.3*i) 
end 
ss(workspace,1) 
wait(0.2) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Head.CFrame.lookVector * 80 
slasheffect() 
con1=Torso.Touched:connect(function(hit) DOH(hit,5,0) end)
con2=part1.Touched:connect(function(hit) DOH(hit,5,0) end)
con3=prt1.Touched:connect(function(hit) DOH(hit,5,0) end)
for i = 0,1,0.2 do 
wait() 
Clone() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+3.14*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3-1.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.2) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,-0.3-0.6*i) 
end 
wait(0.1) 
vel.Parent = nil 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
wait(0.3) 
gairo.Parent = nil 
attack = false 
end 
function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
end 
end 
function OT2(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                local Gyro=Instance.new("BodyGyro")
                                                Gyro.P=1000
                                                Gyro.D=Gyro.D/2
                                                Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
                                                Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
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
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function bewm(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = parent 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function boomeffect() 
local mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(2,2,2) 
mesh.MeshId = "http://www.roblox.com/asset/?id=1323306" 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(3,2,2) 
shell.CFrame = Torso.CFrame * CFrame.new(0,-2,-3)
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright red") 
shell.CanCollide = false 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.Scale = Vector3.new(2,2,2) 
mesh2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
local shell2 = Instance.new("Part") 
mesh2.Parent = shell2 
shell2.Anchored = true 
shell2.formFactor = 1 
shell2.Size = Vector3.new(3,2,2) 
shell2.CFrame = Torso.CFrame * CFrame.new(0,-2,-3)
shell2.Parent = game.workspace 
shell2.Transparency = 0 
shell2.BrickColor = BrickColor.new("Bright yellow") 
shell2.CanCollide = false 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - shell.Position;
                local mag = targ.magnitude;
                if mag <= 6 and c[i].Name ~= Player.Name then 
                DBHit(head,math.random(5,10)) 
                end 
                end 
                end 
        end 
coroutine.resume(coroutine.create(function(part,mash) 
for i = 0 , 1 , 0.1 do 
wait(0.045) 
mash.Scale = mesh.Scale + Vector3.new(1,1.2,1) 
part.CFrame = shell.CFrame * CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1.5,0) 
part.Transparency = shell.Transparency + 0.2
end 
part.Transparency = 1 
part.Parent = nil 
end),shell,mesh) 
coroutine.resume(coroutine.create(function(part,mash) 
for i = 0 , 1 , 0.1 do 
wait(0.035) 
mash.Scale = mesh.Scale + Vector3.new(0.8,0.6,0.8) 
part.CFrame = shell.CFrame * CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1.5,0) 
part.Transparency = shell.Transparency + 0.2
end 
part.Transparency = 1 
part.Parent = nil 
end),shell2,mesh2) 
end 
function boomeffect2(Arm,Numb1,Numb2) 
local mesh = Instance.new("BlockMesh") 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = Arm.CFrame * CFrame.new(0,-1.2,0)
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright red") 
shell.CanCollide = false 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.MeshType = "Sphere" 
local shell2 = Instance.new("Part") 
mesh2.Parent = shell2 
shell2.Anchored = true 
shell2.formFactor = 1 
shell2.Size = Vector3.new(2,2,2) 
shell2.CFrame = Arm.CFrame * CFrame.new(0,-1.2,0)
shell2.Parent = game.workspace 
shell2.Transparency = 0 
shell2.BrickColor = BrickColor.new("Bright yellow") 
shell2.CanCollide = false 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - shell.Position;
                local mag = targ.magnitude;
                if mag <= 6 and c[i].Name ~= Player.Name then 
                DBHit2(head,math.random(Numb1,Numb2)) 
                end 
                end 
                end 
        end 
coroutine.resume(coroutine.create(function(part,mash) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part.Transparency = part.Transparency + 0.2 
mash.Scale = mash.Scale + Vector3.new(0.1,0.1,0.1) 
end 
part.Transparency = 1 
part.Parent = nil 
end),shell,mesh) 
coroutine.resume(coroutine.create(function(part2,mash2) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
part2.CFrame = part2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part2.Transparency = part2.Transparency + 0.3 
mash2.Scale = mash2.Scale + Vector3.new(0.6,0.4,0.6) 
end 
part2.Transparency = 1 
part2.Parent = nil 
end),shell2,mesh2) 
end 
function DOHeffect(Arm,Numb1,Numb2,x,y,z) 
local mesh = Instance.new("BlockMesh") 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = Arm.CFrame * CFrame.new(x,y,z)
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright red") 
shell.CanCollide = false 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.MeshType = "Sphere" 
local shell2 = Instance.new("Part") 
mesh2.Parent = shell2 
shell2.Anchored = true 
shell2.formFactor = 1 
shell2.Size = Vector3.new(2,2,2) 
shell2.CFrame = Arm.CFrame * CFrame.new(x,y,z)
shell2.Parent = game.workspace 
shell2.Transparency = 0 
shell2.BrickColor = BrickColor.new("Bright yellow") 
shell2.CanCollide = false 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - shell.Position;
                local mag = targ.magnitude;
                if mag <= 6 and c[i].Name ~= Player.Name then 
                DOHHit(head,math.random(Numb1,Numb2),10) 
                end 
                end 
                end 
        end 
coroutine.resume(coroutine.create(function(part) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part.Transparency = part.Transparency + 0.2 
mesh.Scale = mesh.Scale + Vector3.new(0.1,0.1,0.1) 
end 
part.Transparency = 1 
part.Parent = nil 
end),shell) 
coroutine.resume(coroutine.create(function(part) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part.Transparency = part.Transparency + 0.3 
mesh2.Scale = mesh2.Scale + Vector3.new(0.6,0.4,0.6) 
end 
part.Transparency = 1 
part.Parent = nil 
end),shell2) 
end 
function slasheffect() 
local mesh = Instance.new("BlockMesh") 
mesh.Scale = Vector3.new(0.2,0.2,10) 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = Head.CFrame * CFrame.new(0,-2,-10)
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function(part) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
--part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part.Transparency = part.Transparency + 0.15 
--mesh.Scale = mesh.Scale + Vector3.new(0.1,0.1,0.1) 
end 
part.Transparency = 1 
part.Parent = nil 
end),shell) 
end 
function effect() 
local clone = blade1:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Transparency = 0.6 
clone.Reflectance = 0 
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
clone.Parent = nil 
end)) 
end 
DBHit=function(hit,Damage) --credits to turdulator for making this function :D
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
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=Instance.new("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,45,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
--                rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
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
--                DBExplode(DB)
        end
end
DBHit2=function(hit,Damage) --credits to turdulator for making this function :D
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
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=Instance.new("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,30,0)
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
--                DBExplode(DB)
        end
end
DOHHit=function(hit,Damage,Pos) --credits to turdulator for making this function :D
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
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=Instance.new("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=Instance.new("BodyVelocity")
                vl.P=4500
                vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,60,0)
                vl.velocity=Head.CFrame.lookVector+Head.Velocity/1.05
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
--                DBExplode(DB)
        end
end
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
        if h~=nil and hit.Parent.Name~=Player.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=Instance.new("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=Instance.new("BodyAngularVelocity")
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
DOH=function(hit,Damage,Knockback)
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Player.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=Instance.new("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=Instance.new("BodyAngularVelocity")
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
                wait(1) 
                DOHeffect(hit,5,15,2,0,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,5,15,-2,0.5,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,5,15,2,1,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,5,15,-2,1.5,0) 
                bewm(workspace,1) 
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
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
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1.25,1.5,1.25)
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
function Clone() 
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" then
                        n=v:clone()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=v.BrickColor
                        n.Parent=workspace
                        coroutine.resume(coroutine.create(function(ne) for i=1, 40 do ne.Transparency=i/40 wait() end ne.Parent=nil end),n)
                elseif v.className=="Hat" then
                        n=v.Handle:clone()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=v.Handle.BrickColor
                        n.Parent=workspace
                        coroutine.resume(coroutine.create(function(ne) for i=1, 40 do ne.Transparency=i/40 wait() end ne.Parent=nil end),n)
                end
        end
--[[        for _,v in pairs(modelzorz:children()) do
                if v.className=="Part" then
                        n=v:clone()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=v.BrickColor
                        n.Parent=workspace
                        coroutine.resume(coroutine.create(function(ne) for i=1, 12 do ne.Transparency=i/12 wait() end ne.Parent=nil end),n)
                end
        end]]
end 
function Stance() 
while walking == false do 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1*i,-0.3+0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1*i,0.5-0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1-0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1+0.1*i,-0.3+0.1-0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1+0.1*i,0.5-0.1+0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
end 
GetWalk=function()--tell whenever the Humanoid is walking.
        if (Torso.Velocity-Vector3.new(0,Torso.Velocity.y,0)).magnitude>=1 then
                Walk = true 
                else 
                Walk = false 
        end
print(Walk) 
end
hold = false 
function ob1d(mouse) 
if attack == true then return end 
hold = true 
if walking == true and combo == 0 then 
attack = true 
Character.Humanoid.WalkSpeed = 0 
wait(0.1) 
walking = false 
fourslash() 
combo = 0 
Stance() 
wait(0.2) 
Character.Humanoid.WalkSpeed = 16 
Stance() 
elseif walking == false then 
if combo == 0 then 
oneslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
elseif combo == 1 then 
twoslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
elseif combo == 2 then 
threeslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.6) 
gairo.Parent = nil 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
elseif combo == 3 then 
fourslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.2) 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
end 
end 
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
function key(key) 
if key == "w" or key == "a" or key == "s" or key == "d" then 
if key == "w" then 
holdingW = true 
elseif key == "a" then 
holdingA = true 
elseif key == "s" then 
holdingS = true 
elseif key == "d" then 
holdingD = true 
end 
walking = true 
gairo.Parent = nil 
Character.Humanoid.WalkSpeed = 16 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,1,0.1 do 
wait() 
if walking == true then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
wait(0.1) 
while walking == true do 
wait() 
for i = 0,1,0.1 do 
wait() 
if walking == true and attack == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
for i = 0,1,0.1 do 
wait() 
if walking == true and attack == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2-2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
--Character.Humanoid.WalkSpeed = 16 
end 
if attack == true then return end 
if key == "z" then 
Onslaught() 
end 
if key == "x" then 
DestroyerOfHeaven() 
end 
end 
function key2(key) 
if attack == true then return end 
if key == "w" then 
holdingW = false 
elseif key == "a" then 
holdingA = false 
elseif key == "s" then 
holdingS = false 
elseif key == "d" then 
holdingD = false 
end 
if key == "w" or key == "a" or key == "s" or key == "d" then 
if walkdebounce == false then 
if holdingW == false and holdingA == false and holdingS == false and holdingD == false then 
coroutine.resume(coroutine.create(function() 
for i = 0,50 do 
wait(0) 
walkdebounce = true 
end 
walkdebounce = false 
end)) 
walking = false 
Character.Humanoid.WalkSpeed = 0 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.1*i,3.14,-1.57*i) * CFrame.new(0,0,-0.5) 
end 
gairo.Parent = nil 
wait(0.1) 
while walking == false do 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1*i,-0.3+0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1*i,0.5-0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1-0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1+0.1*i,-0.3+0.1-0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1+0.1*i,0.5-0.1+0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
end 
end 
end 
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
sheathed = false 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
RHP = ch.Torso["Right Hip"] 
LHP = ch.Torso["Left Hip"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--[[RHP.C0 = CFrame.new(-0.5, -1.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RHP.C1 = CFrame.new(0, 0.5, 0) 
LHP.C0 = CFrame.new(0.5, -1.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LHP.C1 = CFrame.new(0, 0.5, 0) ]]
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
--[[RW2.Part0 = ch.Torso 
RW2.C0 = CFrame.new(0.5, -1.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
RW2.C1 = CFrame.new(0, 0.5, 0) 
RW2.Part1 = ch["Right Leg"] 
RW2.Parent = ch.Torso 
--_G.L = LW 
-- 
LW2.Part0 = ch.Torso 
LW2.C0 = CFrame.new(-0.5, -1.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW2.C1 = CFrame.new(0, 0.5, 0) 
LW2.Part1 = ch["Left Leg"] 
LW2.Parent = ch.Torso 
--_G.L = LW 
-- ]]
equipanim() 
end 
function ds(mouse) 
sheathed = true 
guardy = false 
walking = nil 
Character.Humanoid.WalkSpeed = 16 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
--[[RHP.C0 = CFrame.new(0.5, -1.5, 0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) 
RHP.C1 = CFrame.new(0, 0, 0) 
LHP.C0 = CFrame.new(-0.5, -1.5, 0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) 
LHP.C1 = CFrame.new(0, 0, 0) ]]
gairo.Parent = nil 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
--[[function onRunning(speed)
if sheathed == false and attack == false then 
        if speed>0 then
walking = true 
gairo.Parent = nil 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,1,0.1 do 
wait() 
if walking == true then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
wait(0.1) 
while walking == true do 
wait() 
for i = 0,1,0.1 do 
wait() 
if walking == true and attack == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
for i = 0,1,0.1 do 
wait() 
if walking == true and attack == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2-2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
Character.Humanoid.WalkSpeed = 16 
        else
if walkdebounce == false then 
coroutine.resume(coroutine.create(function() 
for i = 0,50 do 
wait(0) 
walkdebounce = true 
end 
walkdebounce = false 
end)) 
walking = false 
Character.Humanoid.WalkSpeed = 0 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.1*i,3.14,-1.57*i) * CFrame.new(0,0,-0.5) 
end 
gairo.Parent = nil 
wait(0.1) 
while walking == false do 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1*i,-0.3+0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1*i,0.5-0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1-0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1+0.1*i,-0.3+0.1-0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1+0.1*i,0.5-0.1+0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
end 
        end
end 
end
Character.Humanoid.Running:connect(onRunning)]]
wait(1) 
-- lego blockland This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2011 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 
