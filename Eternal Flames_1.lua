--[[C'mere I'll make it all stop
	My show now, Keyblade master! Who am I? Oh, my name's Axel. Got it memorized?]]--
	
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
attack = false 
attackdebounce = false 
combo = 0 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none"

if Character:findFirstChild("Eternal Flames",true) ~= nil then 
Character:findFirstChild("Eternal Flames",true).Parent = nil 
end 
if Character:findFirstChild("body",true) ~= nil then 
Character:findFirstChild("body",true).Parent = nil 
end
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end  

LColor = BrickColor.new("Fire Yellow")

TColor =  BrickColor.new ("Really black")
LAColor = BrickColor.new ("Really black")
RAColor = BrickColor.new ("Really black")
LLColor = BrickColor.new ("Really black")
RLColor = BrickColor.new ("Really black")

local Body = Instance.new("Model") 
Body.Name = "body" 
Body.Parent = Character

local FTorso = Instance.new("Part") 
FTorso.Material = "SmoothPlastic"
FTorso.formFactor = 3
FTorso.Parent = Body 
FTorso.CanCollide = false 
FTorso.BrickColor = TColor
FTorso.Name = "1" 
FTorso.Transparency = 0 
FTorso.Size = Vector3.new(2,2,1) 
FTorso.CFrame = Torso.CFrame 
local FLeftUArm = Instance.new("Part") 
FLeftUArm.Material = "SmoothPlastic"
FLeftUArm.formFactor = 3
FLeftUArm.Parent = Body 
FLeftUArm.CanCollide = false 
FLeftUArm.BrickColor = TColor
FLeftUArm.Name = "2" 
FLeftUArm.Transparency = 0
FLeftUArm.Size = Vector3.new(1,1,1) 
FLeftUArm.CFrame = Torso.CFrame 
local FLeftElbow = Instance.new("Part") 
FLeftElbow.Material = "SmoothPlastic"
FLeftElbow.formFactor = 3
FLeftElbow.Parent = Body 
FLeftElbow.CanCollide = false 
FLeftElbow.BrickColor = LAColor 
FLeftElbow.Name = "3" 
FLeftElbow.Size = Vector3.new(1,1,1) 
FLeftElbow.CFrame = Torso.CFrame 
local FLeftLArm = Instance.new("Part") 
FLeftLArm.Material = "SmoothPlastic"
FLeftLArm.formFactor = 3
FLeftLArm.Parent = Body 
FLeftLArm.CanCollide = false 
FLeftLArm.BrickColor = LAColor
FLeftLArm.Name = "4" 
FLeftLArm.Size = Vector3.new(1,1,1) 
FLeftLArm.CFrame = Torso.CFrame 
local FRightUArm = Instance.new("Part") 
FRightUArm.Material = "SmoothPlastic"
FRightUArm.formFactor = 3
FRightUArm.Parent = Body 
FRightUArm.CanCollide = false 
FRightUArm.BrickColor = TColor
FRightUArm.Name = "5" 
FRightUArm.Transparency = 0 
FRightUArm.Size = Vector3.new(1,1,1) 
FRightUArm.CFrame = Torso.CFrame 
local FRightElbow = Instance.new("Part") 
FRightElbow.Material = "SmoothPlastic"
FRightElbow.formFactor = 3
FRightElbow.Parent = Body 
FRightElbow.CanCollide = false 
FRightElbow.BrickColor = RAColor
FRightElbow.Name = "6" 
FRightElbow.Reflectance = 0
FRightElbow.Transparency = 0 
FRightElbow.Size = Vector3.new(1,1,1) 
FRightElbow.CFrame = Torso.CFrame 
local FRightLArm = Instance.new("Part") 
FRightLArm.Material = "SmoothPlastic"
FRightLArm.formFactor = 3
FRightLArm.Parent = Body 
FRightLArm.CanCollide = false 
FRightLArm.BrickColor = RAColor 
FRightLArm.Name = "7" 
FRightLArm.Size = Vector3.new(1,1,1) 
FRightLArm.CFrame = Torso.CFrame 
local FLeftULeg = Instance.new("Part") 
FLeftULeg.Material = "SmoothPlastic"
FLeftULeg.formFactor = 3
FLeftULeg.Parent = Body 
FLeftULeg.CanCollide = false 
FLeftULeg.BrickColor = TColor 
FLeftULeg.Name = "8" 
FLeftULeg.Transparency = 0 
FLeftULeg.Size = Vector3.new(1,1,1) 
local FLeftKnee = Instance.new("Part") 
FLeftKnee.Material = "SmoothPlastic"
FLeftKnee.formFactor = 3
FLeftKnee.Parent = Body 
FLeftKnee.CanCollide = false 
FLeftKnee.BrickColor = LLColor
FLeftKnee.Name = "9" 
FLeftKnee.Transparency = 0 
FLeftKnee.Size = Vector3.new(1,1,1) 
FLeftKnee.CFrame = Torso.CFrame 
local FLeftLLeg = Instance.new("Part")
FLeftLLeg.Material = "SmoothPlastic" 
FLeftLLeg.formFactor = 3
FLeftLLeg.Parent = Body 
FLeftLLeg.CanCollide = false 
FLeftLLeg.BrickColor = LLColor
FLeftLLeg.Name = "10" 
FLeftLLeg.Transparency = 0 
FLeftLLeg.Size = Vector3.new(1,1,1) 
FLeftLLeg.CFrame = Torso.CFrame 
local FRightULeg = Instance.new("Part") 
FRightULeg.Material = "SmoothPlastic"
FRightULeg.formFactor = 3
FRightULeg.Parent = Body 
FRightULeg.CanCollide = false 
FRightULeg.BrickColor = TColor 
FRightULeg.Name = "11" 
FRightULeg.Transparency = 0 
FRightULeg.Size = Vector3.new(1,1,1) 
FRightULeg.CFrame = Torso.CFrame 
local FRightKnee = Instance.new("Part") 
FRightKnee.Material = "SmoothPlastic"
FRightKnee.formFactor = 3
FRightKnee.Parent = Body 
FRightKnee.CanCollide = false 
FRightKnee.BrickColor = RLColor
FRightKnee.Name = "12" 
FRightKnee.Transparency = 0 
FRightKnee.Size = Vector3.new(1,1,1) 
FRightKnee.CFrame = Torso.CFrame 
local FRightLLeg = Instance.new("Part") 
FRightLLeg.Material = "SmoothPlastic"
FRightLLeg.formFactor = 3
FRightLLeg.Parent = Body 
FRightLLeg.CanCollide = false 
FRightLLeg.BrickColor = RLColor 
FRightLLeg.Name = "13" 
FRightLLeg.Reflectance = 0 
FRightLLeg.Transparency = 0 
FRightLLeg.Size = Vector3.new(1,1,1) 
FRightLLeg.CFrame = Torso.CFrame 
Body:BreakJoints() 

local FTmsh = Instance.new("BlockMesh") 
FTmsh.Parent = FTorso 
FTmsh.Scale = Vector3.new(1,1,1) 
local FLUAmsh = Instance.new("BlockMesh") 
FLUAmsh.Parent = FLeftUArm 
FLUAmsh.Scale = Vector3.new(1,1,1) 
local FLEmsh = Instance.new("SpecialMesh") 
FLEmsh.Parent = FLeftElbow 
FLEmsh.MeshId = "http://www.roblox.com/asset/?id=1185246"
FLEmsh.Scale = Vector3.new(1.4,1.4,1.4) 
local FLLAmsh = Instance.new("BlockMesh") 
FLLAmsh.Parent = FLeftLArm 
FLLAmsh.Scale = Vector3.new(1,1,1) 
local FRUAmsh = Instance.new("BlockMesh") 
FRUAmsh.Parent = FRightUArm 
FRUAmsh.Scale = Vector3.new(1,1,1) 
local FREmsh = Instance.new("SpecialMesh") 
FREmsh.Parent = FRightElbow 
FREmsh.MeshId = "http://www.roblox.com/asset/?id=1185246"
FREmsh.Scale = Vector3.new(1.4,1.4,1.4) 
local FRLAmsh = Instance.new("BlockMesh") 
FRLAmsh.Parent = FRightLArm
FRLAmsh.Scale = Vector3.new(1,1,1) 
local FLULmsh = Instance.new("BlockMesh") 
FLULmsh.Parent = FLeftULeg 
FLULmsh.Scale = Vector3.new(1,1,1) 
local FLKmsh = Instance.new("SpecialMesh") 
FLKmsh.Parent = FLeftKnee 
FLKmsh.Scale = Vector3.new(1,1,1) 
local FLLLmsh = Instance.new("BlockMesh") 
FLLLmsh.Parent = FLeftLLeg 
FLLLmsh.Scale = Vector3.new(1,1,1) 
local FRULmsh = Instance.new("BlockMesh") 
FRULmsh.Parent = FRightULeg 
FRULmsh.Scale = Vector3.new(1,1,1) 
local FRKmsh = Instance.new("SpecialMesh") 
FRKmsh.Parent = FRightKnee 
FRKmsh.Scale = Vector3.new(1,1,1) 
local FRLLmsh = Instance.new("BlockMesh") 
FRLLmsh.Parent = FRightLLeg 
FRLLmsh.Scale = Vector3.new(1,1,1) 

local FTwld = Instance.new("Weld") 
FTwld.Parent = FTorso 
FTwld.Part0 = FTorso 
FTwld.Part1 = Torso
FTwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
FTwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FLUAwld = Instance.new("Weld") 
FLUAwld.Parent = FLeftUArm
FLUAwld.Part0 = FLeftUArm 
FLUAwld.Part1 = LeftArm 
FLUAwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0) 
FLUAwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FLEwld = Instance.new("Weld") 
FLEwld.Parent = FLeftElbow
FLEwld.Part0 = FLeftElbow 
FLEwld.Part1 = FLeftUArm 
FLEwld.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,0.5,0) 
FLEwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FLLAwld = Instance.new("Weld") 
FLLAwld.Parent = FLeftLArm
FLLAwld.Part0 = FLeftLArm 
FLLAwld.Part1 = FLeftElbow
FLLAwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.5,0,0) 
FLLAwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FRUAwld = Instance.new("Weld") 
FRUAwld.Parent = FRightUArm
FRUAwld.Part0 = FRightUArm 
FRUAwld.Part1 = RightArm
FRUAwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0) 
FRUAwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FREwld = Instance.new("Weld") 
FREwld.Parent = FRightElbow
FREwld.Part0 = FRightElbow 
FREwld.Part1 = FRightUArm
FREwld.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) * CFrame.new(0,0.5,0) 
FREwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FRLAwld = Instance.new("Weld") 
FRLAwld.Parent = FRightLArm
FRLAwld.Part0 = FRightLArm 
FRLAwld.Part1 = FRightElbow
FRLAwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.5,0,0) 
FRLAwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FLULwld = Instance.new("Weld") 
FLULwld.Parent = FLeftULeg
FLULwld.Part0 = FLeftULeg 
FLULwld.Part1 = LeftLeg
FLULwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0) 
FLULwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FLKwld = Instance.new("Weld") 
FLKwld.Parent = FLeftKnee
FLKwld.Part0 = FLeftKnee 
FLKwld.Part1 = FLeftULeg 
FLKwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.57) * CFrame.new(0,0.5,0) 
FLKwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FLLLwld = Instance.new("Weld") 
FLLLwld.Parent = FLeftLLeg
FLLLwld.Part0 = FLeftLLeg 
FLLLwld.Part1 = FLeftKnee
FLLLwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.5,0,0) 
FLLLwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FRULwld = Instance.new("Weld") 
FRULwld.Parent = FRightULeg
FRULwld.Part0 = FRightULeg 
FRULwld.Part1 = RightLeg
FRULwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0) 
FRULwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FRKwld = Instance.new("Weld") 
FRKwld.Parent = FRightKnee
FRKwld.Part0 = FRightKnee 
FRKwld.Part1 = FRightULeg 
FRKwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.57) * CFrame.new(0,0.5,0) 
FRKwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local FRLLwld = Instance.new("Weld") 
FRLLwld.Parent = FRightLLeg
FRLLwld.Part0 = FRightLLeg 
FRLLwld.Part1 = FRightKnee 
FRLLwld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.5,0,0) 
FRLLwld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

Torso.Transparency = 1
LeftArm.Transparency = 1
RightArm.Transparency = 1
LeftLeg.Transparency = 1
RightLeg.Transparency = 1


local modelzorz = Instance.new("Model") 
modelzorz.Name = "Eternal Flames" 
modelzorz.Parent = Character 
--TOP
local prt1 = Instance.new("Part") 
prt1.Material = "SmoothPlastic"
prt1.formFactor = 3
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Black") 
prt1.Name = "Parta" 
prt1.Reflectance = 0
prt1.Transparency = 0 
prt1.Size = Vector3.new(0.2, 0.7, 0.2) 
prt1.CFrame = Torso.CFrame 
local prt2 = Instance.new("Part") 
prt2.Material = "SmoothPlastic"
prt2.formFactor = 3
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Silver") 
prt2.Name = "Partb" 
prt2.Reflectance = 0.7
prt2.Transparency = 0 
prt2.Size = Vector3.new(0.2, 0.7, 0.2) 
prt2.CFrame = Torso.CFrame 
local prt3 = Instance.new("Part") 
prt3.Material = "SmoothPlastic"
prt3.formFactor = 3
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Black") 
prt3.Name = "Partc" 
prt3.Transparency = 0 
prt3.Reflectance = 0
prt3.Size = Vector3.new(0.2, 0.7, 0.2) 
prt3.CFrame = Torso.CFrame 
local prt4 = Instance.new("Part") 
prt4.Material = "SmoothPlastic"
prt4.formFactor = 3
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Silver") 
prt4.Name = "Partd" 
prt4.Transparency = 0 
prt4.Reflectance = 0.7
prt4.Size = Vector3.new(0.2, 0.7, 0.2) 
prt4.CFrame = Torso.CFrame 

local prt5 = Instance.new("Part") 
prt5.Material = "SmoothPlastic"
prt5.formFactor = 3
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Silver") 
prt5.Name = "Parte" 
prt5.Transparency = 0 
prt5.Reflectance = 0.7
prt5.Size = Vector3.new(0.4, 0.4, 0.2) 
prt5.CFrame = Torso.CFrame 
local prt6 = Instance.new("Part") 
prt6.Material = "SmoothPlastic"
prt6.formFactor = 3
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Dark red") 
prt6.Name = "Partf" 
prt6.Transparency = 0 
prt6.Reflectance = 0.3
prt6.Size = Vector3.new(0.4, 0.4, 0.2) 
prt6.CFrame = Torso.CFrame 
local prt7 = Instance.new("Part") 
prt7.Material = "SmoothPlastic"
prt7.formFactor = 3
prt7.Parent = modelzorz 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("Silver") 
prt7.Name = "Partg" 
prt7.Transparency = 0 
prt7.Reflectance = 0.7
prt7.Size = Vector3.new(0.4, 0.4, 0.2) 
prt7.CFrame = Torso.CFrame 
local prt8 = Instance.new("Part") 
prt8.Material = "SmoothPlastic"
prt8.formFactor = 3
prt8.Parent = modelzorz 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("Silver") 
prt8.Name = "Parth" 
prt8.Transparency = 0 
prt8.Reflectance = 0.7
prt8.Size = Vector3.new(0.4, 0.4, 0.2) 
prt8.CFrame = Torso.CFrame 
local prt9 = Instance.new("Part") 
prt9.Material = "SmoothPlastic"
prt9.formFactor = 3
prt9.Parent = modelzorz 
prt9.CanCollide = false 
prt9.BrickColor = BrickColor.new("Silver") 
prt9.Name = "Parti" 
prt9.Transparency = 0 
prt9.Reflectance = 0.7
prt9.Size = Vector3.new(0.4, 0.4, 0.2) 
prt9.CFrame = Torso.CFrame 
local prt10 = Instance.new("Part") 
prt10.Material = "SmoothPlastic"
prt10.formFactor = 3
prt10.Parent = modelzorz 
prt10.CanCollide = false 
prt10.BrickColor = BrickColor.new("Silver") 
prt10.Name = "Partj" 
prt10.Transparency = 0 
prt10.Reflectance = 0.7
prt10.Size = Vector3.new(0.4, 0.4, 0.2) 
prt10.CFrame = Torso.CFrame 
local prt11 = Instance.new("Part") 
prt11.Material = "SmoothPlastic"
prt11.formFactor = 3
prt11.Parent = modelzorz 
prt11.CanCollide = false 
prt11.BrickColor = BrickColor.new("Dark red") 
prt11.Name = "Partk" 
prt11.Transparency = 0 
prt11.Reflectance = 0.3
prt11.Size = Vector3.new(0.4, 0.4, 0.2) 
prt11.CFrame = Torso.CFrame 
local prt12 = Instance.new("Part") 
prt12.Material = "SmoothPlastic"
prt12.formFactor = 3
prt12.Parent = modelzorz 
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("Dark red") 
prt12.Name = "Partl" 
prt12.Reflectance = 0.3
prt12.Transparency = 0 
prt12.Size = Vector3.new(0.4, 0.4, 0.2) 
prt12.CFrame = Torso.CFrame 
local prt13 = Instance.new("Part") 
prt13.Material = "SmoothPlastic"
prt13.formFactor = 3
prt13.Parent = modelzorz 
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Dark red") 
prt13.Name = "Partm" 
prt13.Transparency = 0 
prt13.Reflectance = 0.3
prt13.Size = Vector3.new(0.4, 0.4, 0.2) 
prt13.CFrame = Torso.CFrame 
local prt14 = Instance.new("Part")
prt14.Material = "SmoothPlastic" 
prt14.formFactor = 3
prt14.Parent = modelzorz 
prt14.CanCollide = false 
prt14.BrickColor = BrickColor.new("Dark red") 
prt14.Name = "Partn" 
prt14.Transparency = 0 
prt14.Reflectance = 0.3
prt14.Size = Vector3.new(0.4, 0.4, 0.2) 
prt14.CFrame = Torso.CFrame 

local prt15 = Instance.new("Part") 
prt15.Material = "SmoothPlastic" 
prt15.formFactor = 3
prt15.Parent = modelzorz 
prt15.CanCollide = false 
prt15.BrickColor = BrickColor.new("Silver") 
prt15.Name = "Parto" 
prt15.Transparency = 0 
prt15.Reflectance = 0.7
prt15.Size = Vector3.new(0.4,0.7,0.35) 
prt15.CFrame = Torso.CFrame 
local prt16 = Instance.new("Part") 
prt16.Material = "SmoothPlastic" 
prt16.formFactor = 3
prt16.Parent = modelzorz 
prt16.CanCollide = false 
prt16.BrickColor = BrickColor.new("Silver") 
prt16.Name = "Partp" 
prt16.Transparency = 0 
prt16.Reflectance = 0.7
prt16.Size = Vector3.new(0.4,0.7,0.35) 
prt16.CFrame = Torso.CFrame 
local prt17 = Instance.new("Part") 
prt17.Material = "SmoothPlastic" 
prt17.formFactor = 3
prt17.Parent = modelzorz 
prt17.CanCollide = false 
prt17.BrickColor = BrickColor.new("Silver") 
prt17.Name = "Partq" 
prt17.Transparency = 0 
prt17.Reflectance = 0.7
prt17.Size = Vector3.new(0.4,0.7,0.35) 
prt17.CFrame = Torso.CFrame 
local prt18 = Instance.new("Part") 
prt18.Material = "SmoothPlastic" 
prt18.formFactor = 3
prt18.Parent = modelzorz 
prt18.CanCollide = false 
prt18.BrickColor = BrickColor.new("Silver") 
prt18.Name = "Partr" 
prt18.Transparency = 0 
prt18.Reflectance = 0.7
prt18.Size = Vector3.new(0.4,0.7,0.35) 
prt18.CFrame = Torso.CFrame 
local prt19 = Instance.new("Part") 
prt19.Material = "SmoothPlastic" 
prt19.formFactor = 3
prt19.Parent = modelzorz 
prt19.CanCollide = false 
prt19.BrickColor = BrickColor.new("Silver") 
prt19.Name = "Parts" 
prt19.Transparency = 0
prt19.Reflectance = 0.7
prt19.Size = Vector3.new(0.4,0.7,0.35) 
prt19.CFrame = Torso.CFrame 
local prt20 = Instance.new("Part") 
prt20.Material = "SmoothPlastic" 
prt20.formFactor = 3
prt20.Parent = modelzorz 
prt20.CanCollide = false 
prt20.BrickColor = BrickColor.new("Silver") 
prt20.Name = "Partt" 
prt20.Transparency = 0 
prt20.Reflectance = 0.7
prt20.Size = Vector3.new(0.4,0.7,0.35) 
prt20.CFrame = Torso.CFrame 
local prt21 = Instance.new("Part") 
prt21.Material = "SmoothPlastic" 
prt21.formFactor = 3
prt21.Parent = modelzorz 
prt21.CanCollide = false 
prt21.BrickColor = BrickColor.new("Silver") 
prt21.Name = "Partu" 
prt21.Transparency = 0 
prt21.Reflectance = 0.7
prt21.Size = Vector3.new(0.4, 0.7, 0.35) 
prt21.CFrame = Torso.CFrame 
local prt22 = Instance.new("Part") 
prt22.Material = "SmoothPlastic" 
prt22.formFactor = 3
prt22.Parent = modelzorz 
prt22.CanCollide = false 
prt22.BrickColor = BrickColor.new("Silver") 
prt22.Name = "Partv" 
prt22.Reflectance = 0.7
prt22.Transparency = 0 
prt22.Size = Vector3.new(0.4, 0.7, 0.35) 
prt22.CFrame = Torso.CFrame 

local prtb1 = Instance.new("Part") 
prtb1.Material = "SmoothPlastic"
prtb1.formFactor = 3
prtb1.Parent = modelzorz 
prtb1.CanCollide = false 
prtb1.BrickColor = BrickColor.new("Black") 
prtb1.Name = "Parta" 
prtb1.Reflectance = 0
prtb1.Transparency = 0 
prtb1.Size = Vector3.new(0.2, 0.7, 0.2) 
prtb1.CFrame = Torso.CFrame 
local prtb2 = Instance.new("Part")
prtb2.Material = "SmoothPlastic" 
prtb2.formFactor = 3
prtb2.Parent = modelzorz 
prtb2.CanCollide = false 
prtb2.BrickColor = BrickColor.new("Silver") 
prtb2.Name = "Partb" 
prtb2.Reflectance = 0.7
prtb2.Transparency = 0 
prtb2.Size = Vector3.new(0.2, 0.7, 0.2) 
prtb2.CFrame = Torso.CFrame 
local prtb3 = Instance.new("Part") 
prtb3.Material = "SmoothPlastic"
prtb3.formFactor = 3
prtb3.Parent = modelzorz 
prtb3.CanCollide = false 
prtb3.BrickColor = BrickColor.new("Black") 
prtb3.Name = "Partc" 
prtb3.Transparency = 0 
prtb3.Reflectance = 0
prtb3.Size = Vector3.new(0.2, 0.7, 0.2) 
prtb3.CFrame = Torso.CFrame 
local prtb4 = Instance.new("Part") 
prtb4.Material = "SmoothPlastic"
prtb4.formFactor = 3
prtb4.Parent = modelzorz 
prtb4.CanCollide = false 
prtb4.BrickColor = BrickColor.new("Silver") 
prtb4.Name = "Partd" 
prtb4.Transparency = 0 
prtb4.Reflectance = 0.7
prtb4.Size = Vector3.new(0.2, 0.7, 0.2) 
prtb4.CFrame = Torso.CFrame 

local prtb5 = Instance.new("Part")
prtb5.Material = "SmoothPlastic" 
prtb5.formFactor = 3
prtb5.Parent = modelzorz 
prtb5.CanCollide = false 
prtb5.BrickColor = BrickColor.new("Silver") 
prtb5.Name = "Parte" 
prtb5.Transparency = 0 
prtb5.Reflectance = 0.7
prtb5.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb5.CFrame = Torso.CFrame 
local prtb6 = Instance.new("Part")
prtb6.Material = "SmoothPlastic" 
prtb6.formFactor = 3
prtb6.Parent = modelzorz 
prtb6.CanCollide = false 
prtb6.BrickColor = BrickColor.new("Dark red") 
prtb6.Name = "Partf" 
prtb6.Transparency = 0 
prtb6.Reflectance = 0.3
prtb6.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb6.CFrame = Torso.CFrame 
local prtb7 = Instance.new("Part") 
prtb7.Material = "SmoothPlastic"
prtb7.formFactor = 3
prtb7.Parent = modelzorz 
prtb7.CanCollide = false 
prtb7.BrickColor = BrickColor.new("Silver") 
prtb7.Name = "Partg" 
prtb7.Transparency = 0 
prtb7.Reflectance = 0.7
prtb7.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb7.CFrame = Torso.CFrame 
local prtb8 = Instance.new("Part") 
prtb8.Material = "SmoothPlastic"
prtb8.formFactor = 3
prtb8.Parent = modelzorz 
prtb8.CanCollide = false 
prtb8.BrickColor = BrickColor.new("Silver") 
prtb8.Name = "Parth" 
prtb8.Transparency = 0 
prtb8.Reflectance = 0.7
prtb8.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb8.CFrame = Torso.CFrame 
local prtb9 = Instance.new("Part")
prtb9.Material = "SmoothPlastic" 
prtb9.formFactor = 3
prtb9.Parent = modelzorz 
prtb9.CanCollide = false 
prtb9.BrickColor = BrickColor.new("Silver") 
prtb9.Name = "Parti" 
prtb9.Transparency = 0 
prtb9.Reflectance = 0.7
prtb9.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb9.CFrame = Torso.CFrame 
local prtb10 = Instance.new("Part") 
prtb10.Material = "SmoothPlastic"
prtb10.formFactor = 3
prtb10.Parent = modelzorz 
prtb10.CanCollide = false 
prtb10.BrickColor = BrickColor.new("Silver") 
prtb10.Name = "Partj" 
prtb10.Transparency = 0 
prtb10.Reflectance = 0.7
prtb10.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb10.CFrame = Torso.CFrame 
local prtb11 = Instance.new("Part") 
prtb11.Material = "SmoothPlastic"
prtb11.formFactor = 3
prtb11.Parent = modelzorz 
prtb11.CanCollide = false 
prtb11.BrickColor = BrickColor.new("Dark red") 
prtb11.Name = "Partk" 
prtb11.Transparency = 0 
prtb11.Reflectance = 0.3
prtb11.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb11.CFrame = Torso.CFrame 
local prtb12 = Instance.new("Part") 
prtb12.Material = "SmoothPlastic"
prtb12.formFactor = 3
prtb12.Parent = modelzorz 
prtb12.CanCollide = false 
prtb12.BrickColor = BrickColor.new("Dark red") 
prtb12.Name = "Partl" 
prtb12.Reflectance = 0.3
prtb12.Transparency = 0 
prtb12.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb12.CFrame = Torso.CFrame 
local prtb13 = Instance.new("Part") 
prtb13.Material = "SmoothPlastic"
prtb13.formFactor = 3
prtb13.Parent = modelzorz 
prtb13.CanCollide = false 
prtb13.BrickColor = BrickColor.new("Dark red") 
prtb13.Name = "Partm" 
prtb13.Transparency = 0 
prtb13.Reflectance = 0.3
prtb13.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb13.CFrame = Torso.CFrame 
local prtb14 = Instance.new("Part")
prtb14.Material = "SmoothPlastic" 
prtb14.formFactor = 3
prtb14.Parent = modelzorz 
prtb14.CanCollide = false 
prtb14.BrickColor = BrickColor.new("Dark red") 
prtb14.Name = "Partn" 
prtb14.Transparency = 0 
prtb14.Reflectance = 0.3
prtb14.Size = Vector3.new(0.4, 0.4, 0.2) 
prtb14.CFrame = Torso.CFrame 

local prtb15 = Instance.new("Part") 
prtb15.Material = "SmoothPlastic"
prtb15.formFactor = 3
prtb15.Parent = modelzorz 
prtb15.CanCollide = false 
prtb15.BrickColor = BrickColor.new("Silver") 
prtb15.Name = "Parto" 
prtb15.Transparency = 0 
prtb15.Reflectance = 0.7
prtb15.Size = Vector3.new(0.4,0.7,0.35) 
prtb15.CFrame = Torso.CFrame 
local prtb16 = Instance.new("Part") 
prtb16.Material = "SmoothPlastic"
prtb16.formFactor = 3
prtb16.Parent = modelzorz 
prtb16.CanCollide = false 
prtb16.BrickColor = BrickColor.new("Silver") 
prtb16.Name = "Partp" 
prtb16.Transparency = 0 
prtb16.Reflectance = 0.7
prtb16.Size = Vector3.new(0.4,0.7,0.35) 
prtb16.CFrame = Torso.CFrame 
local prtb17 = Instance.new("Part") 
prtb17.Material = "SmoothPlastic"
prtb17.formFactor = 3
prtb17.Parent = modelzorz 
prtb17.CanCollide = false 
prtb17.BrickColor = BrickColor.new("Silver") 
prtb17.Name = "Partq" 
prtb17.Transparency = 0 
prtb17.Reflectance = 0.7
prtb17.Size = Vector3.new(0.4,0.7,0.35) 
prtb17.CFrame = Torso.CFrame 
local prtb18 = Instance.new("Part") 
prtb18.Material = "SmoothPlastic"
prtb18.formFactor = 3
prtb18.Parent = modelzorz 
prtb18.CanCollide = false 
prtb18.BrickColor = BrickColor.new("Silver") 
prtb18.Name = "Partr" 
prtb18.Transparency = 0 
prtb18.Reflectance = 0.7
prtb18.Size = Vector3.new(0.4,0.7,0.35) 
prtb18.CFrame = Torso.CFrame 
local prtb19 = Instance.new("Part") 
prtb19.Material = "SmoothPlastic"
prtb19.formFactor = 3
prtb19.Parent = modelzorz 
prtb19.CanCollide = false 
prtb19.BrickColor = BrickColor.new("Silver") 
prtb19.Name = "Parts" 
prtb19.Transparency = 0
prtb19.Reflectance = 0.7
prtb19.Size = Vector3.new(0.4,0.7,0.35) 
prtb19.CFrame = Torso.CFrame 
local prtb20 = Instance.new("Part") 
prtb20.Material = "SmoothPlastic"
prtb20.formFactor = 3
prtb20.Parent = modelzorz 
prtb20.CanCollide = false 
prtb20.BrickColor = BrickColor.new("Silver") 
prtb20.Name = "Partt" 
prtb20.Transparency = 0 
prtb20.Reflectance = 0.7
prtb20.Size = Vector3.new(0.4,0.7,0.35) 
prtb20.CFrame = Torso.CFrame 
local prtb21 = Instance.new("Part") 
prtb21.Material = "SmoothPlastic"
prtb21.formFactor = 3
prtb21.Parent = modelzorz 
prtb21.CanCollide = false 
prtb21.BrickColor = BrickColor.new("Silver") 
prtb21.Name = "Partu" 
prtb21.Transparency = 0 
prtb21.Reflectance = 0.7
prtb21.Size = Vector3.new(0.4, 0.7, 0.35) 
prtb21.CFrame = Torso.CFrame 
local prtb22 = Instance.new("Part")
prtb22.Material = "SmoothPlastic" 
prtb22.formFactor = 3
prtb22.Parent = modelzorz 
prtb22.CanCollide = false 
prtb22.BrickColor = BrickColor.new("Silver") 
prtb22.Name = "Partv" 
prtb22.Reflectance = 0.7
prtb22.Transparency = 0 
prtb22.Size = Vector3.new(0.4, 0.7, 0.35) 
prtb22.CFrame = Torso.CFrame 
modelzorz:BreakJoints() 

msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(1,1,1) 

msh2 = Instance.new("BlockMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.5,1.3,0.5) 

msh3 = Instance.new("CylinderMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(1,1,1) 

msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.5, 1.3, 0.5) 

msh5 = Instance.new("SpecialMesh") 
msh5.Parent = prt5 
msh5.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh5.Scale = Vector3.new(2, 2, 0.5) 

msh6 = Instance.new("SpecialMesh") 
msh6.Parent = prt6
msh6.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh6.Scale = Vector3.new(1.95, 1.95, 0.45) 
 
msh7 = Instance.new("SpecialMesh") 
msh7.Parent = prt7
msh7.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh7.Scale = Vector3.new(1, 1, 0.5)

msh8 = Instance.new("SpecialMesh") 
msh8.Parent = prt8
msh8.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh8.Scale = Vector3.new(1, 1, 0.5)

msh9 = Instance.new("SpecialMesh") 
msh9.Parent = prt9
msh9.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh9.Scale = Vector3.new(1, 1, 0.5)

msh10 = Instance.new("SpecialMesh") 
msh10.Parent = prt10
msh10.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh10.Scale = Vector3.new(1, 1, 0.5)

msh11 = Instance.new("SpecialMesh") 
msh11.Parent = prt11
msh11.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh11.Scale = Vector3.new(0.95, 0.95, 0.45)

msh12 = Instance.new("SpecialMesh") 
msh12.Parent = prt12 
msh12.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh12.Scale = Vector3.new(0.95, 0.95, 0.45) 

msh13 = Instance.new("SpecialMesh") 
msh13.Parent = prt13 
msh13.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh13.Scale = Vector3.new(0.95, 0.95, 0.45) 

msh14 = Instance.new("SpecialMesh") 
msh14.Parent = prt14 
msh14.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh14.Scale = Vector3.new(0.95, 0.95, 0.45) 

msh15 = Instance.new("SpecialMesh") 
msh15.Parent = prt15 
msh15.MeshType = "FileMesh"
msh15.MeshId = "http://www.roblox.com/Asset/?id=9756362"
msh15.Scale = Vector3.new(0.1, 0.7, 0.2) 

msh16 = Instance.new("SpecialMesh") 
msh16.Parent = prt16 
msh16.MeshType = "FileMesh"
msh16.MeshId = "http://www.roblox.com/Asset/?id=9756362"
msh16.Scale = Vector3.new(0.1, 0.7, 0.2) 
  
msh17 = Instance.new("SpecialMesh") 
msh17.Parent = prt17
msh17.MeshType = "FileMesh"
msh17.MeshId = "http://www.roblox.com/Asset/?id=9756362"
msh17.Scale = Vector3.new(0.1, 0.7, 0.2) 
 
msh18 = Instance.new("SpecialMesh") 
msh18.Parent = prt18 
msh18.MeshType = "FileMesh"
msh18.MeshId = "http://www.roblox.com/Asset/?id=9756362"
msh18.Scale = Vector3.new(0.1, 0.7, 0.2)
  
msh19 = Instance.new("SpecialMesh") 
msh19.Parent = prt19 
msh19.MeshType = "FileMesh"
msh19.MeshId = "http://www.roblox.com/Asset/?id=9756362"
msh19.Scale = Vector3.new(0.1, 0.7, 0.2) 

msh20 = Instance.new("SpecialMesh") 
msh20.Parent = prt20 
msh20.MeshType = "FileMesh"
msh20.MeshId = "http://www.roblox.com/Asset/?id=9756362"
msh20.Scale = Vector3.new(0.1, 0.7, 0.2) 

msh21 = Instance.new("SpecialMesh") 
msh21.Parent = prt21 
msh21.MeshType = "FileMesh"
msh21.MeshId = "http://www.roblox.com/Asset/?id=9756362"
msh21.Scale = Vector3.new(0.1, 0.7, 0.2) 

msh22 = Instance.new("SpecialMesh") 
msh22.Parent = prt22 
msh22.MeshId = "http://www.roblox.com/Asset/?id=9756362"
msh22.Scale = Vector3.new(0.1, 0.7, 0.2) 

mshb1 = Instance.new("CylinderMesh") 
mshb1.Parent = prtb1 
mshb1.Scale = Vector3.new(1,1,1) 

mshb2 = Instance.new("BlockMesh") 
mshb2.Parent = prtb2 
mshb2.Scale = Vector3.new(0.5,1.3,0.5) 

mshb3 = Instance.new("CylinderMesh") 
mshb3.Parent = prtb3 
mshb3.Scale = Vector3.new(1,1,1) 

mshb4 = Instance.new("BlockMesh") 
mshb4.Parent = prtb4 
mshb4.Scale = Vector3.new(0.5, 1.3, 0.5) 

mshb5 = Instance.new("SpecialMesh") 
mshb5.Parent = prtb5 
mshb5.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb5.Scale = Vector3.new(2, 2, 0.5) 

mshb6 = Instance.new("SpecialMesh") 
mshb6.Parent = prtb6
mshb6.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb6.Scale = Vector3.new(1.95, 1.95, 0.45) 
 
mshb7 = Instance.new("SpecialMesh") 
mshb7.Parent = prtb7
mshb7.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb7.Scale = Vector3.new(1, 1, 0.5)

mshb8 = Instance.new("SpecialMesh") 
mshb8.Parent = prtb8
mshb8.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb8.Scale = Vector3.new(1, 1, 0.5)

mshb9 = Instance.new("SpecialMesh") 
mshb9.Parent = prtb9
mshb9.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb9.Scale = Vector3.new(1, 1, 0.5)

mshb10 = Instance.new("SpecialMesh") 
mshb10.Parent = prtb10
mshb10.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb10.Scale = Vector3.new(1, 1, 0.5)

mshb11 = Instance.new("SpecialMesh") 
mshb11.Parent = prtb11
mshb11.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb11.Scale = Vector3.new(0.95, 0.95, 0.45)

mshb12 = Instance.new("SpecialMesh") 
mshb12.Parent = prtb12 
mshb12.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb12.Scale = Vector3.new(0.95, 0.95, 0.45) 

mshb13 = Instance.new("SpecialMesh") 
mshb13.Parent = prtb13 
mshb13.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb13.Scale = Vector3.new(0.95, 0.95, 0.45) 

mshb14 = Instance.new("SpecialMesh") 
mshb14.Parent = prtb14 
mshb14.MeshId = "http://www.roblox.com/asset/?id=3270017"
mshb14.Scale = Vector3.new(0.95, 0.95, 0.45) 

mshb15 = Instance.new("SpecialMesh") 
mshb15.Parent = prtb15 
mshb15.MeshType = "FileMesh"
mshb15.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mshb15.Scale = Vector3.new(0.1, 0.7, 0.2) 

mshb16 = Instance.new("SpecialMesh") 
mshb16.Parent = prtb16 
mshb16.MeshType = "FileMesh"
mshb16.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mshb16.Scale = Vector3.new(0.1, 0.7, 0.2) 
  
mshb17 = Instance.new("SpecialMesh") 
mshb17.Parent = prtb17
mshb17.MeshType = "FileMesh"
mshb17.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mshb17.Scale = Vector3.new(0.1, 0.7, 0.2) 
 
mshb18 = Instance.new("SpecialMesh") 
mshb18.Parent = prtb18 
mshb18.MeshType = "FileMesh"
mshb18.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mshb18.Scale = Vector3.new(0.1, 0.7, 0.2)
  
mshb19 = Instance.new("SpecialMesh") 
mshb19.Parent = prtb19 
mshb19.MeshType = "FileMesh"
mshb19.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mshb19.Scale = Vector3.new(0.1, 0.7, 0.2) 

mshb20 = Instance.new("SpecialMesh") 
mshb20.Parent = prtb20 
mshb20.MeshType = "FileMesh"
mshb20.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mshb20.Scale = Vector3.new(0.1, 0.7, 0.2) 

mshb21 = Instance.new("SpecialMesh") 
mshb21.Parent = prtb21 
mshb21.MeshType = "FileMesh"
mshb21.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mshb21.Scale = Vector3.new(0.1, 0.7, 0.2) 

mshb22 = Instance.new("SpecialMesh") 
mshb22.Parent = prtb22 
mshb22.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mshb22.Scale = Vector3.new(0.1, 0.7, 0.2) 

--TOP
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = FRightLArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(45),0) * CFrame.new(0,0,0) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3
wld3.Part0 = prt3 
wld3.Part1 = prt1
wld3.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(90)) * CFrame.new(0,0,0) 
wld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4
wld4.Part0 = prt4 
wld4.Part1 = prt1
wld4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(45),math.rad(90)) * CFrame.new(0,0,0) 
wld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld5 = Instance.new("Weld") 
wld5.Parent = prt5
wld5.Part0 = prt5 
wld5.Part1 = prt1 
wld5.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,0,0) 
wld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6
wld6.Part0 = prt6
wld6.Part1 = prt1 
wld6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,0,0) 
wld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7
wld7.Part0 = prt7
wld7.Part1 = prt1 
wld7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,-1,0) 
wld7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8
wld8.Part0 = prt8
wld8.Part1 = prt1 
wld8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(-1,0,0) 
wld8.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9
wld9.Part0 = prt9
wld9.Part1 = prt1 
wld9.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(1,0,0) 
wld9.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10
wld10.Part0 = prt10
wld10.Part1 = prt1 
wld10.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,1,0) 
wld10.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11
wld11.Part0 = prt11
wld11.Part1 = prt1 
wld11.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,-1,0) 
wld11.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12
wld12.Part0 = prt12 
wld12.Part1 = prt1 
wld12.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(-1,0,0) 
wld12.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13
wld13.Part0 = prt13 
wld13.Part1 = prt1
wld13.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(1,0,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14
wld14.Part0 = prt14 
wld14.Part1 = prt1
wld14.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,1,0) 
wld14.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wld15 = Instance.new("Weld") 
wld15.Parent = prt15
wld15.Part0 = prt15 
wld15.Part1 = prt1 
wld15.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),0) * CFrame.new(0,-1.75,0) 
wld15.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local wld16 = Instance.new("Weld") 
wld16.Parent = prt16
wld16.Part0 = prt16
wld16.Part1 = prt1 
wld16.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(45)) * CFrame.new(1,-1,0) 
wld16.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local wld17 = Instance.new("Weld") 
wld17.Parent = prt17
wld17.Part0 = prt17
wld17.Part1 = prt1 
wld17.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(0)) * CFrame.new(1.75,0,0) 
wld17.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld18 = Instance.new("Weld") 
wld18.Parent = prt18
wld18.Part0 = prt18
wld18.Part1 = prt1 
wld18.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(-45)) * CFrame.new(1,1,0) 
wld18.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld19 = Instance.new("Weld") 
wld19.Parent = prt19
wld19.Part0 = prt19
wld19.Part1 = prt1 
wld19.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),0) * CFrame.new(0,1.75,0) 
wld19.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld20 = Instance.new("Weld") 
wld20.Parent = prt20
wld20.Part0 = prt20
wld20.Part1 = prt1 
wld20.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(45)) * CFrame.new(-1,1,0) 
wld20.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld21 = Instance.new("Weld") 
wld21.Parent = prt21
wld21.Part0 = prt21
wld21.Part1 = prt1 
wld21.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(0)) * CFrame.new(-1.75,0,0) 
wld21.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wld22 = Instance.new("Weld") 
wld22.Parent = prt22
wld22.Part0 = prt22 
wld22.Part1 = prt1 
wld22.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(-45)) * CFrame.new(-1,-1,0) 
wld22.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wldb1 = Instance.new("Weld") 
wldb1.Parent = prtb1 
wldb1.Part0 = prtb1 
wldb1.Part1 = FLeftLArm
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5) 
wldb1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wldb2 = Instance.new("Weld") 
wldb2.Parent = prtb2
wldb2.Part0 = prtb2 
wldb2.Part1 = prtb1 
wldb2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(45),0) * CFrame.new(0,0,0) 
wldb2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wldb3 = Instance.new("Weld") 
wldb3.Parent = prtb3
wldb3.Part0 = prtb3 
wldb3.Part1 = prtb1
wldb3.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(90)) * CFrame.new(0,0,0) 
wldb3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wldb4 = Instance.new("Weld") 
wldb4.Parent = prtb4
wldb4.Part0 = prtb4 
wldb4.Part1 = prtb1
wldb4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(45),math.rad(90)) * CFrame.new(0,0,0) 
wldb4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wldb5 = Instance.new("Weld") 
wldb5.Parent = prtb5
wldb5.Part0 = prtb5 
wldb5.Part1 = prtb1 
wldb5.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,0,0) 
wldb5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local wldb6 = Instance.new("Weld") 
wldb6.Parent = prtb6
wldb6.Part0 = prtb6
wldb6.Part1 = prtb1 
wldb6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,0,0) 
wldb6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local wldb7 = Instance.new("Weld") 
wldb7.Parent = prtb7
wldb7.Part0 = prtb7
wldb7.Part1 = prtb1 
wldb7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,-1,0) 
wldb7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb8 = Instance.new("Weld") 
wldb8.Parent = prtb8
wldb8.Part0 = prtb8
wldb8.Part1 = prtb1 
wldb8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(-1,0,0) 
wldb8.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb9 = Instance.new("Weld") 
wldb9.Parent = prtb9
wldb9.Part0 = prtb9
wldb9.Part1 = prtb1 
wldb9.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(1,0,0) 
wldb9.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb10 = Instance.new("Weld") 
wldb10.Parent = prtb10
wldb10.Part0 = prtb10
wldb10.Part1 = prtb1 
wldb10.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,1,0) 
wldb10.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb11 = Instance.new("Weld") 
wldb11.Parent = prtb11
wldb11.Part0 = prtb11
wldb11.Part1 = prtb1 
wldb11.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,-1,0) 
wldb11.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb12 = Instance.new("Weld") 
wldb12.Parent = prtb12
wldb12.Part0 = prtb12 
wldb12.Part1 = prtb1 
wldb12.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(-1,0,0) 
wldb12.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wldb13 = Instance.new("Weld") 
wldb13.Parent = prtb13
wldb13.Part0 = prtb13 
wldb13.Part1 = prtb1
wldb13.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(1,0,0) 
wldb13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wldb14 = Instance.new("Weld") 
wldb14.Parent = prtb14
wldb14.Part0 = prtb14 
wldb14.Part1 = prtb1
wldb14.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(0,1,0) 
wldb14.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local wldb15 = Instance.new("Weld") 
wldb15.Parent = prtb15
wldb15.Part0 = prtb15 
wldb15.Part1 = prtb1 
wldb15.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),0) * CFrame.new(0,-1.75,0) 
wldb15.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local wldb16 = Instance.new("Weld") 
wldb16.Parent = prtb16
wldb16.Part0 = prtb16
wldb16.Part1 = prtb1 
wldb16.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(45)) * CFrame.new(1,-1,0) 
wldb16.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local wldb17 = Instance.new("Weld") 
wldb17.Parent = prtb17
wldb17.Part0 = prtb17
wldb17.Part1 = prtb1 
wldb17.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(0)) * CFrame.new(1.75,0,0) 
wldb17.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb18 = Instance.new("Weld") 
wldb18.Parent = prtb18
wldb18.Part0 = prtb18
wldb18.Part1 = prtb1 
wldb18.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(-45)) * CFrame.new(1,1,0) 
wldb18.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb19 = Instance.new("Weld") 
wldb19.Parent = prtb19
wldb19.Part0 = prtb19
wldb19.Part1 = prtb1 
wldb19.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),0) * CFrame.new(0,1.75,0) 
wldb19.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb20 = Instance.new("Weld") 
wldb20.Parent = prtb20
wldb20.Part0 = prtb20
wldb20.Part1 = prtb1 
wldb20.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(45)) * CFrame.new(-1,1,0) 
wldb20.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb21 = Instance.new("Weld") 
wldb21.Parent = prtb21
wldb21.Part0 = prtb21
wldb21.Part1 = prtb1 
wldb21.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(0)) * CFrame.new(-1.75,0,0) 
wldb21.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
local wldb22 = Instance.new("Weld") 
wldb22.Parent = prtb22
wldb22.Part0 = prtb22 
wldb22.Part1 = prtb1 
wldb22.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(90),math.rad(-45)) * CFrame.new(-1,-1,0) 
wldb22.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

fire1 = Instance.new("Fire")
fire1.Size = 2
fire1.Heat = 0

fire2 = Instance.new("Fire")
fire2.Size = 2
fire2.Heat = 0

fire3 = Instance.new("Fire")
fire3.Size = 2
fire3.Heat = 0

fire4 = Instance.new("Fire")
fire4.Size = 2
fire4.Heat = 0

fireb1 = Instance.new("Fire")
fireb1.Size = 2
fireb1.Heat = 0

fireb2 = Instance.new("Fire")
fireb2.Size = 2
fireb2.Heat = 0

fireb3 = Instance.new("Fire")
fireb3.Size = 2
fireb3.Heat = 0

fireb4 = Instance.new("Fire")
fireb4.Size = 2
fireb4.Heat = 0

light = Instance.new("PointLight")
light.Color = LColor.Color
light.Range = 4
light.Brightness = 5

lightb = Instance.new("PointLight")
lightb.Color = LColor.Color
lightb.Range = 4
lightb.Brightness = 5

local ChakramSlash = Instance.new("Sound") -- PRELOADING SOUNDS TROLOLOL 
ChakramSlash.SoundId = "http://roblox.com/asset/?id=10209645" 
ChakramSlash.Parent = modelzorz 
ChakramSlash.Volume = .7 
ChakramSlash.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .5 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 

--2.9000001, 0}, {0.450000018, 0}
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Eternal Flames" 
script.Parent = workspace.CurrentCamera
end 
Bin = Tool 

function getback()
spins = 0
attack = true
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)) * CFrame.new(0,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)) * CFrame.new(0,0,-0.5) 
fire1.Parent = prt7
fire2.Parent = prt8
fire3.Parent = prt9
fire4.Parent = prt10
fireb1.Parent = prtb7
fireb2.Parent = prtb8
fireb3.Parent = prtb9
fireb4.Parent = prtb10
light.Parent = prt5
lightb.Parent = prtb5
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)*i,math.rad(-15)*i,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)*i,math.rad(15)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
FLLAwld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(-0.5,0,0)	
end
game:GetService("Chat"):Chat(Character,"Get Back!",2)
for i = 0,1,0.1 do 
wait()
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)*i,math.rad(-15)+math.rad(15)*i,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)*i,math.rad(15)-math.rad(15)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
FLLAwld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),0,0) * CFrame.new(-0.5,0,0)	
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)-math.rad(180)*i) * CFrame.new(-1*i,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)-math.rad(180)*i) * CFrame.new(-1*i,0,-0.5)  
end
coroutine.resume(coroutine.create(function() 
		local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prt5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
local torso = Part.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prt5.Position).magnitude<=5 then
local angle = (torso.Position-(prt5.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end)) 
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end))
wait()
end),head,fb)
end 
end 
end 
end
end))
coroutine.resume(coroutine.create(function() 
		local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prtb5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
local torso = Part.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prtb5.Position).magnitude<=5 then
local angle = (torso.Position-(prt5.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end)) 
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end))
wait()
end),head,fb)
end 
end 
end 
end
end))
for i = 0,1,0.1 do 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-270)+math.rad(180)*i) * CFrame.new(-1-9*i,0,0.5+1*i) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-270)-math.rad(180)*i) * CFrame.new(-1-9*i,0,-0.5-1*i) 
wait() 
end
coroutine.resume(coroutine.create(function() 
		local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prt5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
local torso = Part.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prt5.Position).magnitude<=5 then
local angle = (torso.Position-(prt5.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end)) 
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end))
wait()
end),head,fb)
end 
end 
end 
end
end))
coroutine.resume(coroutine.create(function() 
		local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prtb5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
local torso = Part.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prtb5.Position).magnitude<=5 then
local angle = (torso.Position-(prt5.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end)) 
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end))
wait()
end),head,fb)
end 
end 
end 
end
end))
		coroutine.resume(coroutine.create(function() 
	repeat
	spins = spins + 1
	for i = 0,1,0.1 do 
		wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-270)-math.rad(180)+math.rad(180)*i) * CFrame.new(-10,0,1.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-270)-math.rad(180)-math.rad(180)*i) * CFrame.new(-10,0,-1.5) 
	end
	coroutine.resume(coroutine.create(function() 
		local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prt5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
local torso = Part.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prt5.Position).magnitude<=5 then
local angle = (torso.Position-(prt5.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end)) 
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end))
wait()
end),head,fb)
end 
end 
end 
end
end))
coroutine.resume(coroutine.create(function() 
		local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prtb5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
local torso = Part.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prtb5.Position).magnitude<=5 then
local angle = (torso.Position-(prt5.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end)) 
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end))
wait()
end),head,fb)
end 
end 
end 
end
end))
	until spins == 5
fire1.Parent = nil
fire2.Parent = nil
fire3.Parent = nil
fire4.Parent = nil
fireb1.Parent = nil
fireb2.Parent = nil
fireb3.Parent = nil
fireb4.Parent = nil
light.Parent = nil
lightb.Parent = nil
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-270)-math.rad(180)-math.rad(180)+math.rad(360)+math.rad(180)*i) * CFrame.new(-10+10*i,0,1.5-1*i) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(-270)-math.rad(180)-math.rad(180)+math.rad(360)+math.rad(180)*i) * CFrame.new(-10+10*i,0,-1.5+1*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)*i,math.rad(-15)*i,0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)*i,math.rad(15)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
end
for i = 0,1,0.1 do 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)-math.rad(15)*i,math.rad(-15)+math.rad(15)*i,math.rad(15)*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)-math.rad(15)*i,math.rad(15)-math.rad(15)*i,math.rad(-15)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)+math.rad(-15)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)+math.rad(-15)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
wait() 
end
attack = false
		end))

	end



function Slash1()
	attack = true
	local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prt5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end)) 
end),head,fb)
end 
end 
end 
end
for i = 0,1,0.2 do 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(115)*i,math.rad(90))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15)-math.rad(30)*i,0,math.rad(-15)-math.rad(30)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15)+math.rad(-30)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15),math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1*i,0,0.5) 
wait() 
end
	end

function Slash2()
	attack = true
wait()
	local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prtb5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
--Gyro:remove() 
end)) 
end),head,fb)
end 
end 
end 
end
for i = 0,1,0.2 do 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(115)+math.rad(-115)*i,math.rad(90)+math.rad(-75)*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45)+math.rad(115)*i,math.rad(-75)*i,math.rad(-75)+math.rad(75)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-45)+math.rad(30)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15)-math.rad(15)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1+1*i,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1*i,0,-0.5) 
wait() 
end
end

function Slash3()	
	attack = true
	wait()
for i = 0,1,0.1 do 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,math.rad(0),math.rad(15)-math.rad(45)*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(70)+math.rad(110)*i,math.rad(-75)+math.rad(75)*i,math.rad(30)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15)+math.rad(-45)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-30)+math.rad(-30)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1*i,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1*i,0,-0.5) 
wait() 
end
wait(0.1)
	local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prt5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
coroutine.resume(coroutine.create(function() 
wait(0.5) 
--Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
--Gyro:remove() 
end)) 
end),head,fb)
end 
end 
end 
end
	local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prtb5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-10
coroutine.resume(coroutine.create(function() 
wait(0.5) 
--Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
--Gyro:remove() 
end)) 
end),head,fb)
end 
end 
end 
end
for i = 0,1,0.2 do 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(180)+math.rad(-165)*i,math.rad(0),math.rad(15)-math.rad(45)+math.rad(45)*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(180)+math.rad(-165)*i,0,math.rad(30)-math.rad(45)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15)+math.rad(-45)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-30)+math.rad(-30)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1*i,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1*i,0,-0.5) 
wait() 
end
end

function Slash4()
	attack = true
	wait()
fire1.Parent = prt7
fire2.Parent = prt8
fire3.Parent = prt9
fire4.Parent = prt10
fireb1.Parent = prtb7
fireb2.Parent = prtb8
fireb3.Parent = prtb9
fireb4.Parent = prtb10
light.Parent = prt5
lightb.Parent = prtb5
for i = 0,1,0.1 do 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(15),math.rad(0),math.rad(15)+math.rad(75)*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(15),0,math.rad(-15)+math.rad(-75)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-60)+math.rad(60)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-60)+math.rad(60)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1,0,-0.5) 
wait() 
end
wld1.Part1 = Torso
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(-3.5,0,0) 
wldb1.Part1 = Torso
wldb1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(3.5,0,0) 
wait()

for i = 0,1,0.025 do 
		local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prt5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-2
local torso = Part.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prt5.Position).magnitude<=5 then
local angle = (torso.Position-(prt5.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
--Gyro:remove() 
end)) 
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
--Gyro:remove() 
end))
wait()
end),head,fb)
end 
end 
end 
end
		local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prtb5.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-2
local torso = Part.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prtb5.Position).magnitude<=5 then
local angle = (torso.Position-(prt5.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
--Gyro:remove() 
end)) 
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
--Gyro:remove() 
end))
wait()
end),head,fb)
end 
end 
end 
end
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(15),math.rad(0),math.rad(90))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(15),0,math.rad(-90)) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(720)*i,0) * CFrame.new(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(-3.5-2*i,0,0) 
wldb1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(-720)*i,0) * CFrame.new(0,0,0) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(3.5+2*i,0,0) 
wait() 
end
fire1.Parent = nil
fire2.Parent = nil
fire3.Parent = nil
fire4.Parent = nil
fireb1.Parent = nil
fireb2.Parent = nil
fireb3.Parent = nil
fireb4.Parent = nil
light.Parent = nil
lightb.Parent = nil
wld1.Part1 = FRightLArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(0),0) * CFrame.new(0,0,0) 
wldb1.Part1 = FLeftLArm
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5)
wldb1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(0),0) * CFrame.new(0,0,0) 
end

function firewall()
attack = true
charging = true
for i = 0,1,0.1 do 
wait()
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15)+math.rad(15)*i,0,math.rad(15)+math.rad(75)*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15)+math.rad(15)*i,0,math.rad(-15)+math.rad(-75)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15)+math.rad(15)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15)+math.rad(15)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5-1*i) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(90)*i,0) * CFrame.new(0,0,0) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5+1*i) 	
wldb1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(-90)*i,0) * CFrame.new(0,0,0) 
end
m = math.random(1,2)
if m == 1 then
game:GetService("Chat"):Chat(Character,"Burn!",2)
elseif m == 2 then
game:GetService("Chat"):Chat(Character,"Let the flames burn you!",2)
end
fire1.Parent = prt7
fire2.Parent = prt8
fire3.Parent = prt9
fire4.Parent = prt10
fireb1.Parent = prtb7
fireb2.Parent = prtb8
fireb3.Parent = prtb9
fireb4.Parent = prtb10
light.Parent = prt5
lightb.Parent = prtb5
	amb=game.Lighting.Ambient
	ambr=amb.r
	ambg=amb.g
	ambb=amb.b
	print(ambr)
	desr=5/255
	desg=5/255
	desb=5/255
	print(desr)
	difr=ambr-desr
	difg=ambg-desg
	difb=ambb-desb
	difr=difr/255/.1
	difg=difg/255/.1
	difb=difb/255/.1
	bri=game.Lighting.Brightness
	for i=1, 10 do
		game.Lighting.Brightness=game.Lighting.Brightness-(bri)*i
		game.Lighting.Ambient=Color3.new(amb.r-difr*i,amb.g-difg*i,amb.b-difb*i)
		wait()
	end
	Head.Anchored = true
	local p1 = Instance.new("Part")
	p1.Material = "SmoothPlastic"
	p1.formFactor = 3
	p1.Parent = workspace
	p1.BrickColor = BrickColor.new("Flame yellowish orange")
	p1.CanCollide = false
	p1.Position = Torso.Position
	p1.Size = Vector3.new(5,40,5)
	p1.Transparency = 0.75
	pm1 = Instance.new("CylinderMesh")
	pm1.Parent = p1
	pf1 = Instance.new("Fire")
	pf1.Parent = p1
	pf1.Heat = 25
	pf1.Size = 15
	pl1 = Instance.new("PointLight")
	pl1.Parent = p1
	pl1.Color = LColor.Color
	pl1.Brightness = 25
	pl1.Range = 25
	local wldp1 = Instance.new("Weld") 
	wldp1.Parent = p1
	wldp1.Part0 = p1 
	wldp1.Part1 = Torso
	wldp1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(10,0,0) 
	wldp1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
	
	local p2 = Instance.new("Part")
	p2.Material = "SmoothPlastic"
	p2.formFactor = 3
	p2.Parent = workspace
	p2.BrickColor = BrickColor.new("Flame yellowish orange")
	p2.CanCollide = false
	p2.Position = Torso.Position
	p2.Size = Vector3.new(5,40,5)
	p2.Transparency = 0.75
	pm2 = Instance.new("CylinderMesh")
	pm2.Parent = p2
	pf2 = Instance.new("Fire")
	pf2.Parent = p2
	pf2.Heat = 25
	pf2.Size = 15
	pl2 = Instance.new("PointLight")
	pl2.Parent = p2
	pl2.Color = LColor.Color
	pl2.Brightness = 25
	pl2.Range = 25
	local wldp2 = Instance.new("Weld") 
	wldp2.Parent = p2
	wldp2.Part0 = p2 
	wldp2.Part1 = Torso
	wldp2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-10,0,0) 
	wldp2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
	wait(1)
		coroutine.resume(coroutine.create(function() 
for i = 0,1,0.1 do 
blast = 100*i
wait(0.1) 
		local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prtb5.Position
local mag = targ.magnitude
if mag <= blast and c[i].Name ~= Player.Name then 
coroutine.resume(coroutine.create(function(Part,BodPos) 
Part.Parent.Humanoid.Health=Part.Parent.Humanoid.Health-5
local torso = Part.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-Torso.Position).magnitude<=blast then
local angle = (torso.Position-(Torso.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end)) 
end
end
coroutine.resume(coroutine.create(function() 
wait(0.5) 
Bodyvelocity:remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:remove() 
end))
wait()
end),head,fb)
end 
end 
end 
end
UltimaMMMAGIC(Torso,0+100*i,0+100*i,0+100*i,0,0,0,BrickColor.new("Flame yellowish orange"),0.1) 
UltimaMMMAGIC(Torso,0+100*i,0+100*i,0+100*i,0,0,0,BrickColor.new("Flame reddish orange"),0.1) 
end
		end))
		wait(1)
	for i=1, 20 do
		wait(.05)
		game.Lighting.Brightness=game.Lighting.Brightness+(bri)*i
		game.Lighting.Ambient=Color3.new((amb.r-difr*10)+difr*(i*.5),(amb.g-difg*10)+difg*(i*.5),(amb.b-difb*10)+difb*(i*.5))
	end 
	game.Lighting.Ambient=Color3.new(amb.r,amb.g,amb.b)
	game.Lighting.Brightness=bri
Head.Anchored = false
fire1.Parent = nil
fire2.Parent = nil
fire3.Parent = nil
fire4.Parent = nil
fireb1.Parent = nil
fireb2.Parent = nil
fireb3.Parent = nil
fireb4.Parent = nil
light.Parent = nil
lightb.Parent = nil
p1:Destroy()
p2:Destroy()
for i = 0,1,0.1 do 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)-math.rad(15)*i,math.rad(-15)+math.rad(15)*i,math.rad(15)*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)-math.rad(15)*i,math.rad(15)-math.rad(15)*i,math.rad(-15)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)+math.rad(-15)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)+math.rad(-15)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5)
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wldb1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait() 
end 
attack = false
charging = false
end

function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color,trans) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	S=Instance.new("Part")
	S.Material = "SmoothPlastic"
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=trans
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function ob1d(mouse) 
if attack == true then return end 
hold = true 
if combo == 0 then 
combo = 1 
Slash1()
attack = false
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false and combo == 1 then 
combo = 0 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15),0,math.rad(15))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15),0,math.rad(-15)) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15),math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15),math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5) 
end 
end)) 
elseif combo == 1 then 
combo = 2 
Slash2()
attack = false
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false and combo == 2 then 
combo = 0 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15),0,math.rad(15))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15),0,math.rad(-15)) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15),math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15),math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5) 
end 
end)) 
elseif combo == 2 then 
combo = 3 
Slash3()
attack = false
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false and combo == 3 then 
combo = 0 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15),0,math.rad(15))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15),0,math.rad(-15)) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15),math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15),math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5) 
end 
end)) 
elseif combo == 3 then 
combo = 4
Slash4()
attack = false
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false and combo == 4 then 
combo = 0 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15),0,math.rad(15))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-15),0,math.rad(-15)) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15),math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-15),math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5) 
end 
end))
end 
end 

function ob1u(mouse) 
hold = false 
end 
function key(key)
if attack == true then return end
if key == "q" then
getback()
elseif key == "e" then
firewall()
end
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
end 

function ds(mouse)  
Character.Humanoid.WalkSpeed = 16 
wait(0.1) 
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
for i = 0,1,0.1 do
if attack == false then  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)-math.rad(15)*i,math.rad(-15)+math.rad(15)*i,math.rad(15)*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)-math.rad(15)*i,math.rad(15)-math.rad(15)*i,math.rad(-15)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)+math.rad(-15)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)+math.rad(-15)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wldb1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait() 
end 
end
	else 
walking = false 
for i = 0,1,0.1 do
if attack == false then  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)-math.rad(15)*i,math.rad(-15)+math.rad(15)*i,math.rad(15)*i)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 	
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90)+math.rad(180)-math.rad(90)-math.rad(15)*i,math.rad(15)-math.rad(15)*i,math.rad(-15)*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
FREwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)+math.rad(-15)*i,math.rad(90)) * CFrame.new(0,0.5,0)
FLEwld.C0 =CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-90)+math.rad(90)+math.rad(-15)*i,math.rad(90)) * CFrame.new(0,0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.5) 
wldb1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.5)
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wldb1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait() 
end 
end
	end 
end 