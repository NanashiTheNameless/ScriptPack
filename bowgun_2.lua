Player = game:GetService("Players").DEADDEVIL1919
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
bladecolor = BrickColor.new("Bright yellow") --Lolol I don't use this :P
part2color = BrickColor.new("Really black") --Neither do I-- oh wait, I think I use these 
attack = false 
attacktype = 1 
damage = 50 --I Don't use this..
oridamage = 50 --Or this...
ammo = 5 
maxammo = 5 
shot = "Normal" 
equipped = false 
normalammo = 5 
normammobase = normalammo 
poisonammo = 4 
poisammobase = poisonammo 
healammo = 4 
healammobase = healammo 
explosionammo = 1 
BOOMammobase = explosionammo 
elecammo = 4 
elecammobase = elecammo 
rapidammo = 20 
rapidammobase = rapidammo 
meleedebounce = false 
smokesize = 1 
aiming = false 
Item = {"Bloxy Cola", "Rhysmon's Red Cola", "Decoy Deploy", "Epicsauce", "Bomb", "Jarate"} 
Number = 1
Blah = Item[Number]
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 

if Character:findFirstChild("LBowgun",true) ~= nil then 
Character:findFirstChild("LBowgun",true).Parent = nil 
end 
if PlayerGui:findFirstChild("Bowgun GUI",true) ~= nil then 
PlayerGui:findFirstChild("Bowgun GUI",true).Parent = nil 
end 




local swordholder = Instance.new("Model") 
swordholder.Name = "LBowgun" 
swordholder.Parent = Character 


local msh1 = Instance.new("BlockMesh") 
msh1.Scale = Vector3.new(0.21,1.6,0.251) 
local msh2 = Instance.new("BlockMesh") 
msh2.Scale = Vector3.new(0.5,1,1.25) 
local msh3 = Instance.new("BlockMesh") 
msh3.Scale = Vector3.new(0.2,1,0.25) 
local msh4 = Instance.new("BlockMesh") 
msh4.Scale = Vector3.new(0.2,1,0.25) 
local msh5 = Instance.new("BlockMesh") 
msh5.Scale = Vector3.new(0.2,1,0.25) 
local msh6 = Instance.new("BlockMesh") 
msh6.Scale = Vector3.new(0.2,1,0.25) 
local msh7 = Instance.new("BlockMesh") 
msh7.Scale = Vector3.new(0.2,1,0.25) 
local msh8 = Instance.new("BlockMesh") 
msh8.Scale = Vector3.new(0.1,1.1,0.1) 
local msh9 = Instance.new("BlockMesh") 
msh9.Scale = Vector3.new(0.35,1,1) 
local msh10 = Instance.new("BlockMesh") 
msh10.Scale = Vector3.new(0.21,1,0.21) 
local msh11 = Instance.new("BlockMesh") 
msh11.Scale = Vector3.new(0.21,0.9,0.21) 
local msh12 = Instance.new("BlockMesh") 
msh12.Scale = Vector3.new(0.21,0.15,1.58) 
local msh13 = Instance.new("BlockMesh") 
msh13.Scale = Vector3.new(0.21,0.45,1.58) 
local msh14 = Instance.new("BlockMesh") 
msh14.Scale = Vector3.new(0.11,0.25,1.38) 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.CanCollide = false 
prt1.Name = "Handle1" 
prt1.Locked = true 
prt1.Size = Vector3.new(1,4,1) 
prt1.Parent = swordholder 
msh1.Parent = prt1 
prt1.BrickColor = part2color 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.CanCollide = false 
prt2.Name = "BasePart" 
prt2.Locked = true 
prt2.Size = Vector3.new(1,2,1) 
prt2.Parent = swordholder 
msh2.Parent = prt2 
prt2.BrickColor = bladecolor 
--[[local f = Instance.new("ForceField") 
f.Parent = prt2 ]]
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.CanCollide = false 
prt3.Name = "BowStick" 
prt3.Locked = true 
prt3.Size = Vector3.new(1,2,1) 
prt3.Parent = swordholder 
msh3.Parent = prt3 
prt3.BrickColor = bladecolor 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.CanCollide = false 
prt4.Name = "BowPart1" 
prt4.Locked = true 
prt4.Size = Vector3.new(1,1,1) 
prt4.Parent = swordholder 
msh4.Parent = prt4 
prt4.BrickColor = part2color 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.CanCollide = false 
prt5.Name = "BowPart2" 
prt5.Locked = true 
prt5.Size = Vector3.new(1,1,1) 
prt5.Parent = swordholder 
msh5.Parent = prt5 
prt5.BrickColor = part2color 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.CanCollide = false 
prt6.Name = "Handle2" 
prt6.Locked = true 
prt6.Size = Vector3.new(1,1,1) 
prt6.Parent = swordholder 
msh6.Parent = prt6 
prt6.BrickColor = part2color 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.CanCollide = false 
prt7.Name = "Handle3" 
prt7.Locked = true 
prt7.Size = Vector3.new(1,1,1) 
prt7.Parent = swordholder 
msh7.Parent = prt7 
prt7.BrickColor = bladecolor 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.CanCollide = false 
prt8.Name = "BowString" 
prt8.Locked = true 
prt8.Size = Vector3.new(1,4,1) 
prt8.Parent = swordholder 
msh8.Parent = prt8 
prt8.BrickColor = bladecolor 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.CanCollide = false 
prt9.Name = "BasePart2" 
prt9.Locked = true 
prt9.Size = Vector3.new(1,1,1) 
prt9.Parent = swordholder 
msh9.Parent = prt9 
prt9.BrickColor = bladecolor 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.CanCollide = false 
prt10.Name = "Part1" 
prt10.Locked = true 
prt10.Size = Vector3.new(1,3,1) 
prt10.Parent = swordholder 
msh10.Parent = prt10 
prt10.BrickColor = part2color 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.CanCollide = false 
prt11.Name = "Part2" 
prt11.Locked = true 
prt11.Size = Vector3.new(1,3,1) 
prt11.Parent = swordholder 
msh11.Parent = prt11 
prt11.BrickColor = part2color 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.CanCollide = false 
prt12.Name = "Part3" 
prt12.Locked = true 
prt12.Size = Vector3.new(1,1,1) 
prt12.Parent = swordholder 
msh12.Parent = prt12 
prt12.BrickColor = part2color 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.CanCollide = false 
prt13.Name = "Part4" 
prt13.Locked = true 
prt13.Size = Vector3.new(1,1,1) 
prt13.Parent = swordholder 
msh13.Parent = prt13 
prt13.BrickColor = part2color 
local prt14 = Instance.new("Part") 
prt14.formFactor = 1 
prt14.CanCollide = false 
prt14.Name = "Part4" 
prt14.Locked = true 
prt14.Size = Vector3.new(1,1,1) 
prt14.Parent = swordholder 
msh14.Parent = prt14 
prt14.BrickColor = BrickColor.new("Bright yellow")  
--[[local leftarm = LeftArm:Clone() 
leftarm.Parent = swordholder 
leftarm.Name = "Left Arm" 
leftarm.CanCollide = false 
local rightarm = RightArm:Clone() 
rightarm.Parent = swordholder 
rightarm.Name = "Right Arm" 
rightarm.CanCollide = false 
local h = Instance.new("Humanoid") 
h.Parent = swordholder 
local shirt = Character.Shirt:Clone() 
shirt.Parent = swordholder 
local pants = Character.Pants:Clone() 
pants.Parent = swordholder 
local wel = Instance.new("Weld") 
wel.Parent = rightarm 
wel.Part0 = rightarm 
wel.Part1 = RightArm
local wel2 = Instance.new("Weld") 
wel2.Parent = leftarm 
wel2.Part0 = leftarm 
wel2.Part1 = LeftArm ]]
--[[ 
local ff = Instance.new("ForceField") 
ff.Parent = prt12]] 

--[[local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = swordholder 
SlashSound.Volume = .7 ]]


local w1 = Instance.new("Weld") 
w1.Parent = prt1 
w1.Part0 = prt1 
local w2 = Instance.new("Weld") 
w2.Parent = prt2 
w2.Part0 = prt2 
w2.Part1 = prt1 
w2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -1-0.75+0.5, 0) 
local w3 = Instance.new("Weld") 
w3.Parent = prt3 
w3.Part0 = prt3 
w3.Part1 = prt1 
w3.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w3.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, -1-0.75, 0) 
local w4 = Instance.new("Weld") 
w4.Parent = prt4 
w4.Part0 = prt4 
w4.Part1 = prt1 
w4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(60), 0, 0) * CFrame.new(0, -1.5, -1.5) 
local w5 = Instance.new("Weld") 
w5.Parent = prt5 
w5.Part0 = prt5 
w5.Part1 = prt1 
w5.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w5.C0 = CFrame.fromEulerAnglesXYZ(math.rad(120), 0, 0) * CFrame.new(0, -1.5, 1.5) 
local w6 = Instance.new("Weld") 
w6.Parent = prt6 
w6.Part0 = prt6 
w6.Part1 = prt1 
w6.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(60), math.rad(45), 0) * CFrame.new(0.5, -0.5, -0.5) 
local w7 = Instance.new("Weld") 
w7.Parent = prt7 
w7.Part0 = prt7 
w7.Part1 = prt6 
w7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(120), math.rad(0), 0) * CFrame.new(0,0.85,0.45) 
local w8 = Instance.new("Weld") 
w8.Parent = prt8 
w8.Part0 = prt8 
w8.Part1 = prt1 
w8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, -1-0.2, 0) 
local w9 = Instance.new("Weld") 
w9.Parent = prt9 
w9.Part0 = prt9 
w9.Part1 = prt1 
w9.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w9.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -0.25, 0) 
local w10 = Instance.new("Weld") 
w10.Parent = prt10 
w10.Part0 = prt10 
w10.Part1 = prt1 
w10.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w10.C0 = CFrame.fromEulerAnglesXYZ(math.rad(25), 0,0) * CFrame.new(0, 1.85, -0.5) 
local w11 = Instance.new("Weld") 
w11.Parent = prt11 
w11.Part0 = prt11 
w11.Part1 = prt1 
w11.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w11.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-10), 0,0) * CFrame.new(0, 1.85, 0.2) 
local w12 = Instance.new("Weld") 
w12.Parent = prt12 
w12.Part0 = prt12 
w12.Part1 = prt1 
w12.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w12.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, 2.95, -0.3) 
local w13 = Instance.new("Weld") 
w13.Parent = prt13 
w13.Part0 = prt13 
w13.Part1 = prt1 
w13.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w13.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -0.8, -0.2) 
local w14 = Instance.new("Weld") 
w14.Parent = prt14 
w14.Part0 = prt14 
w14.Part1 = prt1 
w14.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w14.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -0.4, -0.2) 
function unequipweld() 
w1.Part1 = Torso 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90+90),math.rad(-90+90), 0) * CFrame.new(-0.95, -1, -0.9) 
end 

local GUIMain = Instance.new("GuiMain") 
GUIMain.Parent = PlayerGui 
GUIMain.Name = "Bowgun GUI" 
local MainTray = Instance.new("Frame") 
MainTray.Parent = GUIMain 
MainTray.Name = "Bowgun Tray" 
MainTray.BackgroundTransparency = 1 
MainTray.Position = UDim2.new(0, 0, 0.180000022, 0) 
MainTray.Size = UDim2.new(0.0450000018, 0, 0.340000004, 0) 
local NormFrame = Instance.new("Frame") 
NormFrame.Parent = MainTray 
NormFrame.Name = "Normal Ammo Frame" 
NormFrame.BackgroundColor = BrickColor.new("Bright yellow") 
NormFrame.Position = UDim2.new(0.420000017, 0, 0, 0) 
NormFrame.Size = UDim2.new(0, 180, 0.300000012, 0) 
NormFrame.BorderColor3 = Color3.new(1,1,1) 
local NormText1 = Instance.new("TextBox") 
NormText1.Parent = NormFrame 
NormText1.Name = "Normal Ammo Text" 
NormText1.FontSize = "Size10" 
NormText1.Position = UDim2.new(0.699999988, 0, 0.300000012, 0) 
NormText1.Text = "Normal Ammo" 
local NormText2 = Instance.new("TextBox") 
NormText2.Parent = NormFrame 
NormText2.Name = "Normal Ammo Text" 
NormText2.FontSize = "Size10" 
NormText2.Position = UDim2.new(0.699999988, 0, 0.699999988, 0) 
NormText2.Text = "Ammo(5)" 
local PoisFrame = Instance.new("Frame") 
PoisFrame.Parent = MainTray 
PoisFrame.Name = "Poison Ammo Frame" 
PoisFrame.BackgroundColor = BrickColor.new("Royal purple") 
PoisFrame.Position = UDim2.new(0.420000017, 0, 0.300000012, 0) 
PoisFrame.Size = UDim2.new(0, 180, 0.300000012, 0) 
PoisFrame.BorderColor3 = Color3.new(0,0,0) 
local PoisText1 = Instance.new("TextBox") 
PoisText1.Parent = PoisFrame 
PoisText1.Name = "Poison Ammo Text" 
PoisText1.FontSize = "Size10" 
PoisText1.Position = UDim2.new(0.699999988, 0, 0.300000012, 0) 
PoisText1.Text = "Poison Ammo" 
local PoisText2 = Instance.new("TextBox") 
PoisText2.Parent = PoisFrame 
PoisText2.Name = "Poison Ammo Text" 
PoisText2.FontSize = "Size10" 
PoisText2.Position = UDim2.new(0.699999988, 0, 0.699999988, 0) 
PoisText2.Text = "Ammo(4)" 
local HealFrame = Instance.new("Frame") 
HealFrame.Parent = MainTray 
HealFrame.Name = "Heal Ammo Frame" 
HealFrame.BackgroundColor = BrickColor.new("Medium green") 
HealFrame.Position = UDim2.new(0.420000017, 0, 0.600000024, 0) 
HealFrame.Size = UDim2.new(0, 180, 0.300000012, 0) 
HealFrame.BorderColor3 = Color3.new(0,0,0) 
local HealText1 = Instance.new("TextBox") 
HealText1.Parent = HealFrame 
HealText1.Name = "Heal Ammo Text" 
HealText1.FontSize = "Size10" 
HealText1.Position = UDim2.new(0.699999988, 0, 0.300000012, 0) 
HealText1.Text = "Heal Ammo" 
local HealText2 = Instance.new("TextBox") 
HealText2.Parent = HealFrame 
HealText2.Name = "Heal Ammo Text" 
HealText2.FontSize = "Size10" 
HealText2.Position = UDim2.new(0.699999988, 0, 0.699999988, 0) 
HealText2.Text = "Ammo(2)" 
local BoomFrame = Instance.new("Frame") 
BoomFrame.Parent = MainTray 
BoomFrame.Name = "Explosion Ammo Frame" 
BoomFrame.BackgroundColor = BrickColor.new("Really red") 
BoomFrame.Position = UDim2.new(0.420000017, 0, 0.900000036, 0) 
BoomFrame.Size = UDim2.new(0, 180, 0.300000012, 0) 
BoomFrame.BorderColor3 = Color3.new(0,0,0) 
local BoomText1 = Instance.new("TextBox") 
BoomText1.Parent = BoomFrame 
BoomText1.Name = "Explosion Ammo Text" 
BoomText1.FontSize = "Size10" 
BoomText1.Position = UDim2.new(0.699999988, 0, 0.300000012, 0) 
BoomText1.Text = "Explosion Ammo" 
local BoomText2 = Instance.new("TextBox") 
BoomText2.Parent = BoomFrame 
BoomText2.Name = "Explosion Ammo Text" 
BoomText2.FontSize = "Size10" 
BoomText2.Position = UDim2.new(0.699999988, 0, 0.699999988, 0) 
BoomText2.Text = "Ammo(1)" 
local ElecFrame = Instance.new("Frame") 
ElecFrame.Parent = MainTray 
ElecFrame.Name = "Electric Ammo Frame" 
ElecFrame.BackgroundColor = BrickColor.new("New Yeller") 
ElecFrame.Position = UDim2.new(0.420000017, 0, 1.2, 0) 
ElecFrame.Size = UDim2.new(0, 180, 0.300000012, 0) 
ElecFrame.BorderColor3 = Color3.new(0,0,0) 
local ElecText1 = Instance.new("TextBox") 
ElecText1.Parent = ElecFrame 
ElecText1.Name = "Electric Ammo Text" 
ElecText1.FontSize = "Size10" 
ElecText1.Position = UDim2.new(0.699999988, 0, 0.300000012, 0) 
ElecText1.Text = "Electric Ammo" 
local ElecText2 = Instance.new("TextBox") 
ElecText2.Parent = ElecFrame 
ElecText2.Name = "Rapid Ammo Text" 
ElecText2.FontSize = "Size10" 
ElecText2.Position = UDim2.new(0.699999988, 0, 0.699999988, 0) 
ElecText2.Text = "Ammo(4)" 
local RapidFrame = Instance.new("Frame") 
RapidFrame.Parent = MainTray 
RapidFrame.Name = "Rapid Ammo Frame" 
RapidFrame.BackgroundColor = BrickColor.new("Dark stone grey") 
RapidFrame.Position = UDim2.new(0.420000017, 0, 1.5, 0) 
RapidFrame.Size = UDim2.new(0, 180, 0.300000012, 0) 
RapidFrame.BorderColor3 = Color3.new(0,0,0) 
local RapidText1 = Instance.new("TextBox") 
RapidText1.Parent = RapidFrame 
RapidText1.Name = "Rapid Ammo Text" 
RapidText1.FontSize = "Size10" 
RapidText1.Position = UDim2.new(0.699999988, 0, 0.300000012, 0) 
RapidText1.Text = "Rapid Ammo" 
local RapidText2 = Instance.new("TextBox") 
RapidText2.Parent = RapidFrame 
RapidText2.Name = "Rapid Ammo Text" 
RapidText2.FontSize = "Size10" 
RapidText2.Position = UDim2.new(0.699999988, 0, 0.699999988, 0) 
RapidText2.Text = "Ammo(10)" 
local ItemFrame = Instance.new("Frame") 
ItemFrame.Parent = MainTray 
ItemFrame.Name = "Item Ammo Frame" 
ItemFrame.Position = UDim2.new(0.420000017, 800, 0, 0) 
ItemFrame.Size = UDim2.new(0, 180, 0.300000012, 0) 
ItemFrame.BorderColor3 = Color3.new(0,0,0) 
local ItemText1 = Instance.new("TextBox") 
ItemText1.Parent = ItemFrame 
ItemText1.Name = "Item Equipped" 
ItemText1.FontSize = "Size10" 
ItemText1.Position = UDim2.new(0.499999988, 0, 0.300000012, 0) 
ItemText1.Text = "Item Equipped:" 
local ItemText2 = Instance.new("TextBox") 
ItemText2.Parent = ItemFrame 
ItemText2.Name = "Dah Item" 
ItemText2.FontSize = "Size10" 
ItemText2.Position = UDim2.new(0.499999988, 0, 0.700000012, 0) 
ItemText2.Text = "Bloxy Cola" 


function SlashSound(parent) --linerider64 was here :D
Parent = workspace 
local slashsound = Instance.new("Sound") 
slashsound.Parent = Parent 
slashsound.SoundId = "rbxasset://sounds\\swordslash.wav" 
slashsound.Pitch = 0.5 
slashsound.Volume = 1 
--slashsound:play() 
slashsound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
slashsound.Parent = nil 
end)) 
end 
function BashedSound(parent) --linerider64 was here :D
Parent = workspace 
BAMhitsound=Instance.new("Sound")
BAMhitsound.SoundId="http://www.roblox.com/asset/?id=2801263"
BAMhitsound.Pitch=1.8
BAMhitsound.Parent=Parent 
BAMhitsound.Volume = 1 
--BAMhitsound:play() 
BAMhitsound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
BAMhitsound.Parent = nil 
end)) 
end 
function ShootingSound(parent) --linerider64 was here :D
Parent = workspace 
local firesound = Instance.new("Sound") 
firesound.Parent = Parent 
firesound.SoundId = "http://www.roblox.com/asset/?id=16211041" 
firesound.Pitch=1
firesound.Parent=parent 
firesound.Volume = 1 
--firesound:play() 
firesound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
firesound.Parent = nil 
end)) 
end 
function HittedSound(parent) --linerider64 was here :D
Parent = workspace 
local hitsound = Instance.new("Sound") 
hitsound.Parent = Parent 
hitsound.SoundId = "http://www.roblox.com/asset/?id=16211030" 
hitsound.Pitch=1
hitsound.Parent=parent 
hitsound.Volume = 1 
--hitsound:play() 
hitsound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
hitsound.Parent = nil 
end)) 
end 
function KaBEWMSound(parent) 
Parent = workspace 
local bewmsound = Instance.new("Sound") 
bewmsound.Parent = Parent 
bewmsound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
bewmsound.Pitch=0.5
bewmsound.Parent=parent 
bewmsound.Volume = 1 
--bewmsound:play() 
bewmsound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
bewmsound.Parent = nil 
end)) 
end 
function ReloadingSound(parent) 
Parent = workspace 
local reloadsound = Instance.new("Sound") 
reloadsound.Parent = Parent 
reloadsound.SoundId = "http://roblox.com/asset/?id=10209834"
reloadsound.Pitch = 0.8 
reloadsound.Volume = 0.8 
--reloadsound:play() 
reloadsound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
reloadsound.Parent = nil 
end)) 
end 
function ChangingSound(parent) 
Parent = workspace 
local changingsound = Instance.new("Sound") 
changingsound.Parent = Parent 
changingsound.SoundId = "http://roblox.com/asset/?id=10209881"
changingsound.Pitch = 1 
changingsound.Volume = 0.8 
--changingsound:play() 
changingsound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
changingsound.Parent = nil 
end)) 
end 
function BloxyColaSound(parent) 
Parent = workspace 
local colasound = Instance.new("Sound") 
colasound.Parent = Parent 
colasound.SoundId = "http://www.roblox.com/asset/?id=10721950"
colasound.Pitch = 1 
colasound.Volume = 0.8 
colasound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
colasound.Parent = nil 
end)) 
end 
function BloxyColaDrinkSound(parent) 
Parent = workspace 
local coladrinksound = Instance.new("Sound") 
coladrinksound.Parent = Parent 
coladrinksound.SoundId = "http://www.roblox.com/asset/?id=10722059"
coladrinksound.Pitch = 1 
coladrinksound.Volume = 0.8 
coladrinksound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
coladrinksound.Parent = nil 
end)) 
end 
function EXPLOSIONSound(parent) 
Parent = workspace 
local boomsound = Instance.new("Sound") 
boomsound.Parent = Parent 
boomsound.SoundId = "http://www.roblox.com/asset?id=2101148"
boomsound.Pitch = 0.8 
boomsound.Volume = 0.8 
boomsound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
boomsound.Parent = nil 
end)) 
end 
function SwingSound(parent) 
Parent = workspace 
local swingsound = Instance.new("Sound") 
swingsound.Parent = Parent 
swingsound.SoundId = "http://roblox.com/asset/?id=10209640"
swingsound.Pitch = 0.8 
swingsound.Volume = 0.8 
swingsound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
swingsound.Parent = nil 
end)) 
end 
function GlassBreakSound(parent) 
Parent = workspace 
local breaksound = Instance.new("Sound") 
breaksound.Parent = Parent 
breaksound.SoundId = "rbxasset://Sounds/glassbreak.wav"
breaksound.Pitch = 1.1 
breaksound.Volume = 0.8 
breaksound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
breaksound.Parent = nil 
end)) 
end 

local reloadsound = Instance.new("Sound") 
reloadsound.Parent = prt1 
reloadsound.SoundId = "http://roblox.com/asset/?id=10209834"
reloadsound.Pitch = 0.8 
reloadsound.Volume = 0.7 

unequipweld() 

function equipweld() 
w1.Part1 = RightArm 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-2, 0.9, 0.) 
end 


function hideanim() 
for i = 1, 0 , -0.2 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, (1-1*i)+math.rad(90)*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i,0,0) 
LW.C0 = CFrame.new(-1.5+0.45*i, 0.5, -0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-2, 0.9-0.65*i, 0.25*i) 
end 
for i = 0 , 1 , 0.05 do 
wait() 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(275)*i, 1,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90-90*i), math.rad(90), 0) * CFrame.new(-2+2*i, 0.9, 0) 
end 
end 


function equipanim() 

for i = 0 , 1 , 0.05 do 

wait() 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(275)-math.rad(275)*i, 1,-1+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90*i), math.rad(90), 0) * CFrame.new(-2*i, 0.9, 0) 
end 
for i = 0 , 1 , 0.1 do 

wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, (1-1*i)+math.rad(90)*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i,0,0) 
LW.C0 = CFrame.new(-1.5+0.45*i, 0.5, -0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1*i,0,1+.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-2, 0.9-0.65*i, 0.25*i) 
end 


end 

--[[ 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1, 1,0) 
RW.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1, 1, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,0.25) 
LW.C1 = CFrame.new(0, 0.5, 0) 

]] 

function blast(n) 
local colors = {BrickColor.new("Bright red")} 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(1,1,1) 
CF = prt1.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
shell.CFrame = CF + CF.lookVector * 3 
shell.Parent = workspace 
shell.Transparency = 0 
shell.BrickColor = colors[math.random(1,#colors)] 
if shot == "Poison" then 
shell.BrickColor = BrickColor.new("Royal purple") 
elseif shot == "Heal" then 
shell.BrickColor = BrickColor.new("Medium green") 
elseif shot == "Explosion" then 
shell.BrickColor = BrickColor.new("Really red") 
elseif shot == "Rapid" then 
shell.BrickColor = BrickColor.new("Dark stone grey") 
elseif shot == "Electric" then 
shell.BrickColor = BrickColor.new("New Yeller") 
end 
randomv = Vector3.new(n*10,n*10,n*10) 
for i = 0 , 1 , 0.15 do 
wait() 
mesh.Scale = randomv * Vector3.new(i,i,i) 
shell.Transparency = 1*i 
end 
shell.Parent = nil 
end 



if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Light Bowgun" 
Tool.TextureId = "http://www.roblox.com/asset/?id=39539873" 
script.Parent = Tool 
Player.Backpack["Light Bowgun"].TextureId = "http://www.roblox.com/asset/?id=39539873"
end 
Bin = script.Parent 


function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
if meleedebounce == false then 
BashedSound(prt2) 
--BAMhitsound:Play() 
meleedebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.5) 
meleedebounce = false 
end)) 
                v=Instance.new("BodyVelocity")
                v.P=1000
                v.maxForce=Vector3.new(math.huge,0,math.huge)
                v.velocity=prt2.CFrame.lookVector*25+Torso.Velocity/1.05
                v.Parent=hum.Parent.Torso
                coroutine.resume(coroutine.create(function() 
                wait(0.3) 
                v.Parent = nil 
                end)) 
DBHit(hum.Parent.Head,prt2) 
local damam = math.random(5,20)
hum:TakeDamage(damam) 
showDamage(hum.Parent,damam,1)
end 
end 

end 





function walkspeed(value) 
Character.Humanoid.WalkSpeed = value 
end 

function printz(m) --Don't use this XP
msg = Instance.new("Message") 
msg.Parent = Player 
msg.Text = m 
coroutine.resume(coroutine.create(function() 
wait(2) 
msg.Parent = nil 
end)) 
end 

function NormalS(lvl) --Wow. linerider64's bowgun functions are really complicated o.o

--Oh wait, this function has nothing on XD
--[[ 

coroutine.resume(coroutine.create(function() 

for ii = 1 , 20 do 
local a = arrow 
wait(0.1) 
local c = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = c[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = c[i]:findFirstChild("Head"); 
if head ~= nil then 
local targ = head.Position - a.Position; 
local mag = targ.magnitude; 
if mag <= 3 and c[i].Name ~= Character.Name then 
hum:TakeDamage(damage) 
--arrow.Parent = nil 
end 
end 
end 
end 


end 
end))]] 

end 

function bulletshoot() 
local freakingbullet = Instance.new("Part") --trololol X3 
freakingbullet.formFactor = 1 
freakingbullet.Parent = workspace 
freakingbullet.CanCollide = false 
freakingbullet.BrickColor = BrickColor.new("New Yeller") 
freakingbullet.Name = "Bullet6" 
freakingbullet.Size = Vector3.new(1,1,1) 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = CF * CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
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
                end
                end
                end
        end
end 
end)) 
coroutine.resume(coroutine.create(function() 
freakingbullet.Position = Torso.Position 
freakingbullet.CFrame = prt13.CFrame * CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
freakingbullet.Parent = nil 
end)) 
end 

function WeakShot(SpeedModifier) 
Character.Humanoid.WalkSpeed = 14 
if shot == "Normal" then 
        if normalammo == 0 then  
                attack = true 
                reload(normammobase) 
                normalammo = normammobase 
                attack = false 
                return 
        else 
        normalammo = normalammo - 1 
        end 
elseif shot == "Poison" then 
        if poisonammo == 0 then 
                attack = true 
                reload(poisammobase) 
                poisonammo = poisammobase 
                attack = false 
                return 
        else 
        poisonammo = poisonammo - 1 
        end 
elseif shot == "Heal" then 
        if healammo == 0 then 
                attack = true 
                reload(healammobase) 
                healammo = healammobase 
                attack = false 
                return 
        else 
        healammo = healammo - 1 
        end 
elseif shot == "Explosion" then 
        if explosionammo == 0 then 
                attack = true 
                reload(BOOMammobase) 
                explosionammo = BOOMammobase 
                attack = false 
                return 
        else 
        explosionammo = explosionammo - 1 
        end 
elseif shot == "Electric" then 
        if elecammo == 0 then 
                attack = true 
                reload(1) 
                elecammo = elecammobase 
                attack = false 
                return 
        else 
        elecammo = elecammo - 1 
        end 
elseif shot == "Rapid" then 
        if rapidammo == 0 then 
                attack = true 
                reload(10) 
                rapidammo = rapidammobase 
                attack = false 
                return 
        else 
--        rapidammo = rapidammo - 1 
        end 
end 
if shot == "Rapid" then return end 
attack = true 
coroutine.resume(coroutine.create( 
function() 
blast(1) 
end 
)) 
local colors = {BrickColor.new("Institutional white")} 
local mesh = Instance.new("BlockMesh") 
mesh.Scale = Vector3.new(0.25,0.25,1) 
local case1m = Instance.new("BlockMesh") 
case1m.Scale = Vector3.new(0.25,0.5,1.2) 
local case2m = Instance.new("BlockMesh") 
case2m.Scale = Vector3.new(0.25,0.5,1.2) 
if shot == "Explosion" then 
mesh.Scale = Vector3.new(0.75,0.75,1.5) 
case1m.Scale = Vector3.new(0.75,1,1.7) 
case2m.Scale = Vector3.new(0.75,1,1.7) 
end 
local arrow = Instance.new("Part") 
mesh.Parent = arrow 
arrow.formFactor = 1 
arrow.Size = Vector3.new(1,1,1) 
CF = prt1.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
arrow.CFrame = CF + CF.lookVector * 3 
arrow.Parent = workspace 
arrow.Transparency = 0 
arrow.BrickColor = BrickColor.new("Bright yellow") 
if shot == "Poison" then 
arrow.BrickColor = BrickColor.new("Royal purple") 
elseif shot == "Heal" then 
arrow.BrickColor = BrickColor.new("Medium green") 
elseif shot == "Explosion" then 
arrow.BrickColor = BrickColor.new("Really red") 
elseif shot == "Rapid" then 
arrow.BrickColor = BrickColor.new("Dark stone grey") 
elseif shot == "Electric" then 
arrow.BrickColor = BrickColor.new("New Yeller") 
--arrow.Transparency = 1 
coroutine.resume(coroutine.create(function() 
Stun2=function(part)
--[[                if part.Parent:FindFirstChild("Torso")==nil then
                        return
                end]]
                Torsoh2=part
                End2=Torsoh2.CFrame+Vector3.new(math.random(-20,20)/10,math.random(-30,30)/10,math.random(-20,20)/10)
                ST2=Torsoh2.Position
--[[                p=Instance.new("BodyPosition")
                p.P=3000
                p.D=100
                p.maxForce=Vector3.new(math.huge,0,math.huge)
                p.position=Torsoh2.Position
                p.Parent=Torsoh2]]
                while part.Parent ~= nil and part.BrickColor == BrickColor.new("New Yeller") do 
--                        f1:Play()
--                        p.position=ST2+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
                        Start2=End2
                        End2=Torsoh2.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
                        e=Instance.new("Part")
                        e.TopSurface=0
                        e.BottomSurface=0
                        e.CanCollide=false
                        e.Anchored=true
                        e.formFactor="Symmetric"
                        e.Size=Vector3.new(1,1,1)
                        Look2=(End2.p-Start2.p).unit
                        m=Instance.new("BlockMesh")
                        m.Scale=Vector3.new(.2,.2,(Start2.p-End2.p).magnitude)
                        m.Parent=e
                        e.CFrame=CFrame.new(Start2.p+Look2*(m.Scale.z/2),Start2.p+Look2*99)
                        e.Reflectance=.3
                        e.Name="Zap"
                        e.BrickColor=BrickColor.new("New Yeller")
                        e.Parent=part.Parent
                        coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
                        wait(.1)
                end
                wait(.25)
--                p.Parent=nil
end
Stun2(arrow) 
end)) 
end 
ShootingSound(prt1) 
--firesound:Play() 
--[[local hitsond = hitsound:Clone() 
hitsond.Parent = arrow ]]
--hitsond.Looped = false 
coroutine.resume(coroutine.create(function() 
while arrow.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                local torso = c[i]:findFirstChild("Torso"); 
                local leftarm = c[i]:findFirstChild("Left Arm");
                local leftleg = c[i]:findFirstChild("Left Leg");
                local rightarm = c[i]:findFirstChild("Right Arm");
                local rightleg = c[i]:findFirstChild("Right Leg");
                if head ~= nil and torso ~= nil then 
                local targ = head.Position - arrow.Position; 
                local targ2 = torso.Position - arrow.Position; 
                if leftarm ~= nil then 
                local targ3 = leftarm.Position - arrow.Position; 
                local mag3 = targ3.magnitude;
                end 
                if leftleg ~= nil then 
                local targ4 = leftleg.Position - arrow.Position; 
                local mag4 = targ4.magnitude;
                end 
                if rightarm ~= nil then 
                local targ5 = rightarm.Position - arrow.Position; 
                local mag5 = targ5.magnitude;
                end 
                if rightleg ~= nil then 
                local targ6 = rightleg.Position - arrow.Position; 
                local mag6 = targ6.magnitude;
                end 
                local mag = targ.magnitude;
                local mag2 = targ2.magnitude;
                if mag3 == nil then 
                mag3 = 9001 
                end 
                if mag4 == nil then 
                mag4 = 9001 
                end 
                if mag5 == nil then 
                mag5 = 9001 
                end 
                if mag6 == nil then 
                mag6 = 9001 
                end 
                if mag <= 4 or mag2 <= 4 or mag3 <= 4 or mag4 <= 4 or mag5 <= 4 or mag6 <= 4 and c[i].Name ~= Player.Name then
                local damageh = math.random(15,25) 
                if shot == "Poison" then 
                CeEff = head 
                damageh = math.random(10,20) 
                local poisonchance = math.random(1,10) 
                if poisonchance <= 5 then 
                damageh = damageh + 1 
                local s = Instance.new("Smoke") 
                s.Parent = head
                s.Opacity = 0.8 
                s.Size = 0.3 
                s.Color = Color3.new(1,0,1) 
                coroutine.resume(coroutine.create(function() 
                wait(1) 
                s.Enabled = false 
                wait(5) 
                s.Parent = nil 
                end)) 
                end 
                if poisonchance == 1 then 
                coroutine.resume(coroutine.create(function() 
                for i = 0,40 do 
                wait(0.2) 
                head.Parent.Humanoid.Health = head.Parent.Humanoid.Health - 2 
                showDamage(head.Parent,2,1)
                poisoneffect() 
                end 
                end)) 
                end 
                elseif shot == "Heal" then 
                CeEff = head 
                damageh = math.random(-20,5) 
                local b = Instance.new("Part") 
                b.Parent = workspace 
                b.CFrame = head.CFrame * CFrame.new(0,2,0) 
                b.Size = Vector3.new(1,1,1) 
                b.Transparency = 0.2 
                b.Anchored = true 
                b.BrickColor = BrickColor.new("Medium green") 
                local meh = Instance.new("SpecialMesh") 
                meh.Parent = b 
                meh.MeshType = "Sphere" 
                meh.Scale = Vector3.new(1,1,1) 
                coroutine.resume(coroutine.create(function() 
                for i = 0,1,0.2 do 
                wait() 
                meh.Scale = meh.Scale + Vector3.new(2,2,2) 
                b.Transparency = b.Transparency + 0.2 
                end 
                b.Parent = nil 
                end)) 
                elseif shot == "Explosion" then 
                local KABEWM = Instance.new("Explosion") 
                KABEWM.Position = head.Position 
                KABEWM.Parent = workspace 
                KABEWM.BlastPressure = -10 
                DBHit(head,arrow) 
--[[                local kabewmsound = bewmsound:Clone() 
                kabewmsound.Parent = arrow 
                kabewmsound.Pitch = 0.5 ]]
                KaBEWMSound(arrow) 
--                kabewmsound:Play() 
                damageh = math.random(20,50) 
                local c = game.Workspace:GetChildren();
                for i = 1, #c do
                local humm = c[i]:findFirstChild("Humanoid")
                if humm ~= nil and humm.Health ~= 0 then
                local headd = c[i]:findFirstChild("Head");
                if headd ~= nil then
                local targg = headd.Position - KABEWM.Position;
                local magg = targg.magnitude;
                if magg <= 10 and c[i].Name ~= Player.Name then
                local damagehh = math.random(20,50) 
                DBHit(headd,arrow) 
                showDamage(headd.Parent,damagehh,1)
                end 
                end 
                end 
                end 
                elseif shot == "Electric" then 
                coroutine.resume(coroutine.create(function() 
                Stun3(head.Parent.Torso,math.random(0,10)) 
                damageh = math.random(1,30) 
                end)) 
                elseif shot == "Rapid" then 
                local damageh = math.random(5,10) 
                end 
                HittedSound(arrow) 
--                hitsound:Play() 
--                hum:TakeDamage(damageh)
                hum.Health = hum.Health - damageh 
                showDamage(head.Parent,damageh,1)
                v=Instance.new("BodyVelocity")
                v.P=1000
                v.maxForce=Vector3.new(math.huge,0,math.huge)
                v.velocity=arrow.CFrame.lookVector*25+Torso.Velocity/1.05
                v.Parent=hum.Parent.Torso
                coroutine.resume(coroutine.create(function() 
                wait(0.3) 
                v.Parent = nil 
                end)) 
                game:GetService("Debris"):AddItem(v,.1)
                if shot ~= "Electric" then 
                arrow.Parent = nil 
                else 
                wait(0.2) 
                end 
                end
                end
                end
        end
end 
end)) 
local case1 = Instance.new("Part") 
case1m.Parent = case1 
case1.formFactor = 1 
case1.Size = Vector3.new(1,1,1) 
case1.CFrame = CF + CF.lookVector * 3 
case1.Parent = workspace 
case1.Transparency = 0 
case1.BrickColor = colors[math.random(1,#colors)] 
case1.CanCollide = false 
if shot == "Electric" then 
case1.Parent = nil 
end 
local case2 = Instance.new("Part") 
case2m.Parent = case2 
case2.formFactor = 1 
case2.Size = Vector3.new(1,1,1) 
case2.CFrame = CF + CF.lookVector * 3 
case2.Parent = workspace 
case2.Transparency = 0 
case2.BrickColor = colors[math.random(1,#colors)] 
case2.CanCollide = false 
if shot == "Electric" then 
case2.Parent = nil 
end 
local w = Instance.new("Weld") 
w.Parent = case1 
w.Part0 = case1 
w.Part1 = arrow 
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0.125, 0, 0) 
local wc2 = Instance.new("Weld") 
wc2.Parent = case2 
wc2.Part0 = case2 
wc2.Part1 = arrow 
wc2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
wc2.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(-0.125, 0, 0) 
local g = Instance.new("BodyGyro") 
g.Parent = arrow 
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
g.cframe = CF 
local v = Instance.new("BodyVelocity") 
v.Parent = arrow 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = CF.lookVector * 100 
arrow.CanCollide = false 
caseremoval = 0.1 
coroutine.resume(coroutine.create(function() 
wait(caseremoval) 
w.Parent = nil 
wc2.Parent = nil 
wait(2-caseremoval) 
arrow.Parent = nil 
damage = odamage 
end)) 


--[[arrow.Touched:connect(function(hit) 
--if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil then 
hum:TakeDamage(damage) 
wait() 
arrow.Parent = nil 
end 

end)]] 
if shot ~= "Explosion" then 
for i = 0 , 1 , 0.2 * SpeedModifier do 
wait() 
if aiming ~= true then
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i, 0,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i, 0,0) 
end 
end 

for i = 0 , 1 , 0.1 * SpeedModifier do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0,0) 
end 
end 
elseif shot == "Rapid" then  
for i = 0 , 1 , 0.2 * (SpeedModifier + 5) do 
wait() 
if aiming ~= true then
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i, 0,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i, 0,0) 
end 
end 

for i = 0 , 1 , 0.1 * (SpeedModifier + 5) do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0,0) 
end 
end 
else 
local p = Instance.new("Part") 
p.Position = Torso.Position 
p.Parent = Character 
p.Transparency = 1
local welel = Instance.new("Weld") 
welel.Parent = p 
welel.Part0 = p 
welel.Part1 = Torso 
welel.C0 = CFrame.new(0,1,2) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
local lolsmoke = Instance.new("Smoke") 
lolsmoke.Enabled = true 
lolsmoke.Parent = p 
lolsmoke.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke.RiseVelocity = 10 
local lolsmoke2 = Instance.new("Smoke") 
lolsmoke2.Enabled = true 
lolsmoke2.Parent = p 
lolsmoke2.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke2.RiseVelocity = 10 
--[[local lolsmoke3 = Instance.new("Smoke") 
lolsmoke3.Enabled = true 
lolsmoke3.Parent = p 
lolsmoke3.Size = 2
lolsmoke.Opacity = 1 
lolsmoke3.RiseVelocity = 10 ]]
Character.Humanoid.WalkSpeed = 0 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * -40
coroutine.resume(coroutine.create(function()  
weh = 40 
for i = 0,40 do 
wait(0) 
weh = weh - 1 
vel.velocity = Player.Character.Torso.CFrame.lookVector * -weh 
end 
lolsmoke.Enabled = false 
lolsmoke2.Enabled = false 
--lolsmoke3.Enabled = false 
vel.Parent = nil 
wait(5) 
p.Parent = nil 
end)) 
for i = 0 , 1 , 0.3 * SpeedModifier do 
wait() 
if aiming ~= true then
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.5*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.50*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.50*i, 0,0) 
elseif aiming == true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.5*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.50*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.50*i, 0,0) 
end 
end 
wait(0.3) 
coroutine.resume(coroutine.create(function() 
for i = 0,16 do 
wait() 
Character.Humanoid.WalkSpeed = i 
end 
--print(Character.Humanoid.WalkSpeed) 
end)) 
for i = 0 , 1 , 0.1 * SpeedModifier do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.25*i+2.07,3.14,0) * CFrame.new(0,-0.15*i+0.3,-0.5) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.50*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.50*i, 0,0) 
elseif aiming == true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.25*i+2.07,3.14,0) * CFrame.new(0,-0.15*i+0.3,-0.5) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.50*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.50*i, 0,0) 
end 
end 
for i = 0 , 1 , 0.05 * SpeedModifier do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.25*i+1.82,3.14,0) * CFrame.new(0,-0.15*i+0.15,-0.5) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, 0,0) 
elseif aiming == true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.25*i+1.82,3.14,0) * CFrame.new(0,-0.15*i+0.15,-0.5) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, 0,0) 
end 
end 
end 
attack = false 
Character.Humanoid.WalkSpeed = 16 
end 

function RapidShot(SpeedModifier) 
Character.Humanoid.WalkSpeed = 14 
if shot == "Normal" then 
        if normalammo == 0 then  
                attack = true 
                reload(normammobase) 
                normalammo = normammobase 
                attack = false 
                return 
        else 
        normalammo = normalammo - 1 
        end 
elseif shot == "Poison" then 
        if poisonammo == 0 then 
                attack = true 
                reload(poisammobase) 
                poisonammo = poisammobase 
                attack = false 
                return 
        else 
        poisonammo = poisonammo - 1 
        end 
elseif shot == "Heal" then 
        if healammo == 0 then 
                attack = true 
                reload(healammobase) 
                healammo = healammobase 
                attack = false 
                return 
        else 
        healammo = healammo - 1 
        end 
elseif shot == "Explosion" then 
        if explosionammo == 0 then 
                attack = true 
                reload(BOOMammobase) 
                explosionammo = BOOMammobase 
                attack = false 
                return 
        else 
        explosionammo = explosionammo - 1 
        end 
elseif shot == "Rapid" then 
        if rapidammo == 0 then 
                attack = true 
                reload(10) 
                rapidammo = rapidammobase 
                attack = false 
                return 
        else 
        rapidammo = rapidammo - 1 
        end 
end 
if shot == "Explosion" then return end 
if shot == "Electric" then return end 
attack = true 
coroutine.resume(coroutine.create( 
function() 
blast(1) 
end 
)) 
local colors = {BrickColor.new("Institutional white")} 
local mesh = Instance.new("BlockMesh") 
mesh.Scale = Vector3.new(0.25,0.25,1) 
local case1m = Instance.new("BlockMesh") 
case1m.Scale = Vector3.new(0.25,0.5,1.2) 
local case2m = Instance.new("BlockMesh") 
case2m.Scale = Vector3.new(0.25,0.5,1.2) 
local arrow = Instance.new("Part") 
mesh.Parent = arrow 
arrow.formFactor = 1 
arrow.Size = Vector3.new(1,1,1) 
CF = prt1.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
arrow.CFrame = CF + CF.lookVector * 3 
arrow.Parent = workspace 
arrow.Transparency = 0 
arrow.BrickColor = BrickColor.new("Bright yellow") 
if shot == "Poison" then 
arrow.BrickColor = BrickColor.new("Royal purple") 
elseif shot == "Heal" then 
arrow.BrickColor = BrickColor.new("Medium green") 
elseif shot == "Rapid" then 
arrow.BrickColor = BrickColor.new("Dark stone grey") 
end 
ShootingSound(prt1) 
--[[firesound:Play() 
local hitsond = hitsound:Clone() 
hitsond.Parent = arrow 
hitsond.Looped = false ]]
coroutine.resume(coroutine.create(function() 
while arrow.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - arrow.Position;
                local mag = targ.magnitude;
                if mag <= 4 and c[i].Name ~= Player.Name then
                local damageh = math.random(1,10) 
                if shot == "Poison" then 
                CeEff = head 
                damageh = math.random(1,5) 
                local poisonchance = math.random(1,10) 
                if poisonchance <= 5 then 
                damageh = damageh + 1 
                local s = Instance.new("Smoke") 
                s.Parent = head
                s.Opacity = 0.8 
                s.Size = 0.3 
                s.Color = Color3.new(1,0,1) 
                coroutine.resume(coroutine.create(function() 
                wait(1) 
                s.Enabled = false 
                wait(5) 
                s.Parent = nil 
                end)) 
                end 
                if poisonchance == 1 then 
                coroutine.resume(coroutine.create(function() 
                for i = 0,40 do 
                wait(0.2) 
                head.Parent.Humanoid.Health = head.Parent.Humanoid.Health - 2 
                showDamage(head.Parent,2,1)
                poisoneffect() 
                end 
                end)) 
                end 
                elseif shot == "Heal" then 
                damageh = math.random(-10,0) 
                elseif shot == "Rapid" then 
                local damageh = math.random(1,5) 
                end 
                HittedSound(arrow) 
--                hitsound:Play() 
--                hum:TakeDamage(damageh)
                hum.Health = hum.Health - damageh 
                showDamage(head.Parent,damageh,1)
                v=Instance.new("BodyVelocity")
                v.P=1000
                v.maxForce=Vector3.new(math.huge,0,math.huge)
                v.velocity=arrow.CFrame.lookVector*25+Torso.Velocity/1.05
                v.Parent=hum.Parent.Torso
                coroutine.resume(coroutine.create(function() 
                wait(0.3) 
                v.Parent = nil 
                end)) 
                game:GetService("Debris"):AddItem(v,.1)
                arrow.Parent = nil 
                end
                end
                end
        end
end 
end)) 
local case1 = Instance.new("Part") 
case1m.Parent = case1 
case1.formFactor = 1 
case1.Size = Vector3.new(1,1,1) 
case1.CFrame = CF + CF.lookVector * 3 
case1.Parent = workspace 
case1.Transparency = 0 
case1.BrickColor = colors[math.random(1,#colors)] 
case1.CanCollide = false 
local case2 = Instance.new("Part") 
case2m.Parent = case2 
case2.formFactor = 1 
case2.Size = Vector3.new(1,1,1) 
case2.CFrame = CF + CF.lookVector * 3 
case2.Parent = workspace 
case2.Transparency = 0 
case2.BrickColor = colors[math.random(1,#colors)] 
case2.CanCollide = false 
local w = Instance.new("Weld") 
w.Parent = case1 
w.Part0 = case1 
w.Part1 = arrow 
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
w.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0.125, 0, 0) 
local wc2 = Instance.new("Weld") 
wc2.Parent = case2 
wc2.Part0 = case2 
wc2.Part1 = arrow 
wc2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
wc2.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(-0.125, 0, 0) 
local g = Instance.new("BodyGyro") 
g.Parent = arrow 
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
g.cframe = CF 
local v = Instance.new("BodyVelocity") 
v.Parent = arrow 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = CF.lookVector * 100 
arrow.CanCollide = false 
caseremoval = 0.1 
coroutine.resume(coroutine.create(function() 
wait(caseremoval) 
w.Parent = nil 
wc2.Parent = nil 
wait(2-caseremoval) 
arrow.Parent = nil 
damage = odamage 
end)) 


--[[arrow.Touched:connect(function(hit) 
--if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil then 
hum:TakeDamage(damage) 
wait() 
arrow.Parent = nil 
end 

end)]] 
if shot ~= "Rapid" then 
for i = 0 , 1 , 0.2 * SpeedModifier do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i, 0,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i, 0,0) 
end 
end 

for i = 0 , 1 , 0.1 * SpeedModifier do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0,0) 
end 
end 
else 
for i = 0 , 1 , 0.2 * (SpeedModifier+1.5) do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i, 0,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25*i, 0,0) 
end 
end 

for i = 0 , 1 , 0.1 * (SpeedModifier+1.5) do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25-0.25*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0,0) 
end 
end 
end 
attack = false 
Character.Humanoid.WalkSpeed = 16 
end 

function meleeattack() --trololol this is for those losers who go too close to me >:3 
attack = true 
SlashSound(prt2) 
--slashsound:Play() 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.5*i,0,0) 
else 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.5*i,0,0) 
end 
end 
local conneh = prt2.Touched:connect(OT) 
for i = 0 , 1 , 0.15 do 
wait() 
if aiming ~= true then 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i-1, 0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(-0.5*i+1.5, 0.5, -0.7*i) * CFrame.fromEulerAnglesXYZ(1.5*i-0.5, 1*i+math.rad(90),0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.5*i-1.05, 0.5, 1*i-1) * CFrame.fromEulerAnglesXYZ(1.5,0,0.22*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.07*i+0.5,-1*i,1.5*i) 
else 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i-1, 0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(-0.5*i+1.5, 0.5, -0.7*i) * CFrame.fromEulerAnglesXYZ(1.5*i-0.5, 1*i+math.rad(90),0.5*i-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.5*i-1.05, 0.5, 1*i-1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,0.22*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.07*i+0.5,-1*i,1.5*i) 
end 
end 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1-1, 0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1, 0.5, -0.7) * CFrame.fromEulerAnglesXYZ(1.5-0.5, 1+math.rad(90),0.3*i+0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.55, 0.5, 1-1) * CFrame.fromEulerAnglesXYZ(1.5,0,0.22+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.3*i-2.07+0.5,-1,1*i+1.5) 
else 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1-1, 0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1, 0.5, -0.7) * CFrame.fromEulerAnglesXYZ(1.5-0.5, 1+math.rad(90),0.3*i+0.5-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.55, 0.5, 1-1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,0.22+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.3*i-2.07+0.5,-1,1*i+1.5) 
end 
end 
wait(0.1) 
conneh:disconnect() 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(0.5*i+1, 0.5, 0.7*i-0.7) * CFrame.fromEulerAnglesXYZ(-1*i+1, -1*i+1+math.rad(90),-0.8*i+0.3+0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.5*i-1.55, 0.5, -1*i) * CFrame.fromEulerAnglesXYZ(1.5,0,-0.22*i+0.22+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.27*i-1.27,1*i-1,-2.5*i+2.5) 
else 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(0.5*i+1, 0.5, 0.7*i-0.7) * CFrame.fromEulerAnglesXYZ(-1*i+1, -1*i+1+math.rad(90),-0.8*i+0.3+0.5-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.5*i-1.55, 0.5, -1*i) * CFrame.fromEulerAnglesXYZ(1.5,-offset,-0.22*i+0.22+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.27*i-1.27,1*i-1,-2.5*i+2.5) 
end 
end 
--[[for i = 0 , 1 , 0.1 do 
wait() 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-2,0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end]] 
attack = false 
end 

function changeitemleft() 
if Number > 1 then 
Number = Number - 1 
Blah = Item[Number] 
ItemText2.Text = Blah 
end 
end 

function changeitemright() 
if Number < #Item then 
Number = Number + 1 
Blah = Item[Number] 
ItemText2.Text = Blah 
end 
end 

function UseItem() 
attack = true 
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05-0.3*i, 0.5, -1+1.4*i) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.3*i,0,2.3*i) 
end 
if Blah == "Bloxy Cola" then 
local bloxycola = Instance.new("Part") 
bloxycola.formFactor = 1 
bloxycola.CanCollide = false 
bloxycola.Name = "Bloxy Cola" 
bloxycola.Locked = true 
bloxycola.Size = Vector3.new(1,1,1) 
bloxycola.Parent = swordholder 
local colamesh = Instance.new("SpecialMesh") 
colamesh.Parent = bloxycola 
colamesh.MeshId = "http://www.roblox.com/asset/?id=10470609" 
colamesh.TextureId = "http://www.roblox.com/asset/?id=10470600" 
colamesh.Scale = Vector3.new(1.2, 1.2, 1.2) 
local colaweld = Instance.new("Weld") 
colaweld.Parent = bloxycola 
colaweld.Part0 = bloxycola 
colaweld.Part1 = LeftArm 
colaweld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(180)) * CFrame.new(0, 1, 0) 
BloxyColaSound(bloxycola) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5, -1+1.4) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.3-0.6*i,0,2.3-0.3*i) 
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5+0.3*i, -1+1.4-1.4*i) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7-1.9*i,1*i,2-2*i) 
end 
BloxyColaDrinkSound(bloxycola) 
for i = 0,1,0.1 do 
wait(0.1) 
Character.Humanoid.Health = Character.Humanoid.Health + 2 
end 
wait(2) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.35-0.15*i, 0.5+0.3-0.3*i, -1+1*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,0,1.35-1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.1-1.47*i,1-1*i,0) 
end 
wait() 
bloxycola:BreakJoints() 
bloxycola.CanCollide = true 
wait(0.5) 
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.35-0.15+0.45*i , 0.5+0.3-0.3, -1*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,0) 
end 
coroutine.resume(coroutine.create(function(part) 
wait(4) 
part.CanCollide = false 
for i = 0,1,0.1 do 
wait() 
part.Transparency = i 
end 
part.Parent = nil 
end),bloxycola) 
elseif Blah == "Rhysmon's Red Cola" then 
local rhysmoncola = Instance.new("Part") 
rhysmoncola.formFactor = 1 
rhysmoncola.CanCollide = false 
rhysmoncola.Name = "Rhysmon's Red Cola" 
rhysmoncola.Locked = true 
rhysmoncola.Size = Vector3.new(1,1,1) 
rhysmoncola.Parent = swordholder 
local colamesh = Instance.new("SpecialMesh") 
colamesh.Parent = rhysmoncola 
colamesh.MeshId = "http://www.roblox.com/asset/?id=10470609" 
colamesh.TextureId = "http://www.roblox.com/asset/?id=25987732" 
colamesh.Scale = Vector3.new(1.2, 1.2, 1.2) 
local colaweld = Instance.new("Weld") 
colaweld.Parent = rhysmoncola 
colaweld.Part0 = rhysmoncola 
colaweld.Part1 = LeftArm 
colaweld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(180)) * CFrame.new(0, 1, 0) 
BloxyColaSound(rhysmoncola) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5, -1+1.4) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.3-0.6*i,0,2.3-0.3*i) 
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5+0.3*i, -1+1.4-1.4*i) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7-1.9*i,1*i,2-2*i) 
end 
BloxyColaDrinkSound(rhysmoncola) 
local rhysmonrandom = math.random(1,7) 
if rhysmonrandom == 1 then 
for i = 0,1,0.1 do 
wait(0.1) 
Character.Humanoid.Health = Character.Humanoid.Health + 10 
end 
elseif rhysmonrandom == 2 then 
for i = 0,1,0.1 do 
wait(0.1) 
Character.Humanoid.Health = Character.Humanoid.Health - 2 
end 
elseif rhysmonrandom == 3 then 
for i = 0,1,0.1 do 
wait(0.1) 
Character.Humanoid.Health = Character.Humanoid.Health - 5 
end 
elseif rhysmonrandom == 4 then 
for i = 0,1,0.1 do 
wait(0.1) 
Character.Humanoid.Health = Character.Humanoid.Health + 3 
end 
elseif rhysmonrandom == 5 then 
for i = 0,1,0.1 do 
wait(0.1) 
Character.Humanoid.MaxHealth = Character.Humanoid.MaxHealth + 5 
end 
elseif rhysmonrandom == 5 then 
for i = 0,1,0.1 do 
wait(0.1) 
Character.Humanoid.MaxHealth = Character.Humanoid.MaxHealth - 3 
end 
elseif rhysmonrandom == 7 then 
for i = 0,1,0.1 do 
wait(0.1) 
Character.Humanoid.Health = Character.Humanoid.Health + 100 
end 
EXPLOSIONSound(torso) 
local POWHAHA = Instance.new("Explosion") 
POWHAHA.Parent = workspace 
POWHAHA.Position = Torso.Position 
end 
wait(2) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.35-0.15*i, 0.5+0.3-0.3*i, -1+1*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,0,1.35-1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.1-1.47*i,1-1*i,0) 
end 
wait() 
rhysmoncola:BreakJoints() 
rhysmoncola.CanCollide = true 
wait(0.5) 
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.35-0.15+0.45*i , 0.5+0.3-0.3, -1*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,0) 
end 
coroutine.resume(coroutine.create(function(part) 
part.Parent = workspace 
end),rhysmoncola) 
elseif Blah == "Decoy Deploy" then 
local decoyj00ce = Instance.new("Part") 
decoyj00ce.formFactor = 1 
decoyj00ce.CanCollide = false 
decoyj00ce.Name = "Decoy Deploy" 
decoyj00ce.Locked = true 
decoyj00ce.Size = Vector3.new(1,1,1) 
decoyj00ce.Parent = swordholder 
local decoymesh = Instance.new("SpecialMesh") 
decoymesh.Parent = decoyj00ce 
decoymesh.MeshId = "http://www.roblox.com/asset/?id=29515710" 
decoymesh.TextureId = "http://www.roblox.com/asset/?id=29515756" 
decoymesh.Scale = Vector3.new(1.9, 1.9, 1.9) 
local decoyweld = Instance.new("Weld") 
decoyweld.Parent = decoyj00ce 
decoyweld.Part0 = decoyj00ce 
decoyweld.Part1 = LeftArm 
decoyweld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(180)) * CFrame.new(0, 1, 0) 
BloxyColaSound(decoyj00ce) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5, -1+1.4) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.3-0.6*i,0,2.3-0.3*i) 
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5+0.3*i, -1+1.4-1.4*i) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7-1.9*i,1*i,2-2*i) 
end 
BloxyColaDrinkSound(decoyj00ce) 
wait(2) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.35-0.15*i, 0.5+0.3-0.3*i, -1+1*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,0,1.35-1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.1-1.47*i,1-1*i,0) 
end 
wait() 
decoyj00ce:BreakJoints() 
decoyj00ce.CanCollide = true 
wait(0.5) 
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.35-0.15+0.45*i , 0.5+0.3-0.3, -1*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,0) 
end 
coroutine.resume(coroutine.create(function(part) 
wait(1) 
local smog = Instance.new("Smoke") 
smog.Parent = part 
wait(3) 
local decoy = Instance.new("Model") 
decoy.Parent = workspace 
decoy.Name = Player.Name 

local decoyhead = Head:Clone() 
decoyhead.Parent = decoy 

local decoytorso = Torso:Clone() 
decoytorso.Parent = decoy 

local decoyleftarm = LeftArm:Clone() 
decoyleftarm.Parent = decoy 

local decoyrightarm = RightArm:Clone() 
decoyrightarm.Parent = decoy 

local decoyleftleg = LeftLeg:Clone() 
decoyleftleg.Parent = decoy 

local decoyrightleg = RightLeg:Clone() 
decoyrightleg.Parent = decoy 

local decoyhumanoid = Instance.new("Humanoid") 
decoyhumanoid.Parent = decoy 

decoytorso.Position = decoyj00ce.Position 
LeftShoulder = Instance.new("Motor") 
LeftShoulder.Parent = decoytorso 
LeftShoulder.Part0 = decoytorso 
LeftShoulder.Part1 = decoyleftarm 
LeftShoulder.MaxVelocity = 0.1 
LeftShoulder.C0 = CFrame.new(-decoytorso.Size.x / 2 - decoyleftarm.Size.x / 2, decoyleftarm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftShoulder.C1 = CFrame.new(0, decoyleftarm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftShoulder.Name = "Left Shoulder" 
RightShoulder = Instance.new("Motor") 
RightShoulder.Parent = decoytorso 
RightShoulder.Part0 = decoytorso 
RightShoulder.Part1 = decoyrightarm 
RightShoulder.MaxVelocity = 0.1 
RightShoulder.C0 = CFrame.new(decoytorso.Size.x / 2 + decoyrightarm.Size.x / 2, decoyrightarm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightShoulder.C1 = CFrame.new(0, decoyrightarm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightShoulder.Name = "Right Shoulder" 
LeftHip = Instance.new("Motor") 
LeftHip.Parent = decoytorso 
LeftHip.Part0 = decoytorso 
LeftHip.Part1 = decoyleftleg 
LeftHip.MaxVelocity = 0.1 
LeftHip.C0 = CFrame.new(-decoyleftleg.Size.x / 2, -(decoyleftleg.Size.y / 4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftHip.C1 = CFrame.new(0, decoyleftleg.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftHip.Name = "Left Hip" 
RightHip = Instance.new("Motor") 
RightHip.Parent = decoytorso 
RightHip.Part0 = decoytorso 
RightHip.Part1 = decoyrightleg 
RightHip.MaxVelocity = 0.1 
RightHip.C0 = CFrame.new(decoyrightleg.Size.x / 2, -(decoyrightleg.Size.y / 4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightHip.C1 = CFrame.new(0, decoyrightleg.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0) 
RightHip.Name = "Right Hip" 
Neck = Instance.new("Weld") 
Neck.Name = "Neck" 
Neck.Part0 = decoytorso 
Neck.Part1 = decoyhead 
Neck.C0 = CFrame.new(0, 1.5 * 1, 0) 
Neck.C1 = CFrame.new() 
Neck.Parent = decoytorso 

if Character:FindFirstChild("Animate") ~= nil then 
local decoyanimate = Character.Animate:Clone() 
decoyanimate.Parent = decoy 
end 

Children = Character:GetChildren() 
for i = 1, #Children do 
if Children[i].className == "Shirt" or Children[i].className == "Pants" then 
local decoystuff = Children[i]:Clone() 
decoystuff.Parent = decoy 
end 
if Children[i].className == "Hat" then 
Hat = Instance.new("Hat") 
Children[i].Handle:Clone().Parent = Hat 
Hat.Handle.Size = Hat.Handle.Size * 1 
Hat.Handle.Mesh.Scale = Hat.Handle.Mesh.scale * 1 
Hat.AttachmentPos = Children[i].AttachmentPos * 1 
Hat.AttachmentUp = Children[i].AttachmentUp 
Hat.AttachmentForward = Children[i].AttachmentForward 
Hat.AttachmentRight = Children[i].AttachmentRight 
Hat.Parent = decoy 
end 
end 

function decoydeath()
local e = Instance.new("Explosion")
e.Parent = workspace 
e.Position = decoytorso.Position 
e.BlastRadius = 10 
EXPLOSIONSound(decoytorso) 
wait(1) 
decoy.Parent = nil 
end
decoyhumanoid.Died:connect(decoydeath)

function mydeath() 
local decoyz = workspace:children() 
for i = 1, #decoyz do 
if decoyz[i].Name == "yfc" then 
decoyz[i]:BreakJoints() 
end 
end 
end 
Character.Humanoid.Died:connect(mydeath)

decoyj00ce.Parent = nil 
end),decoyj00ce) 
elseif Blah == "Epicsauce" then 
local epicj00ce = Instance.new("Part") 
epicj00ce.formFactor = 1 
epicj00ce.CanCollide = false 
epicj00ce.Name = "Epicsauce" 
epicj00ce.Locked = true 
epicj00ce.Size = Vector3.new(1,1,1) 
epicj00ce.Parent = swordholder 
local decoymesh = Instance.new("SpecialMesh") 
decoymesh.Parent = epicj00ce 
decoymesh.MeshId = "http://www.roblox.com/asset/?id=29690481" 
decoymesh.TextureId = "http://www.roblox.com/asset/?id=29690498" 
decoymesh.Scale = Vector3.new(1, 1, 1)  
local decoyweld = Instance.new("Weld") 
decoyweld.Parent = epicj00ce 
decoyweld.Part0 = epicj00ce 
decoyweld.Part1 = LeftArm 
decoyweld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,-math.rad(90)) * CFrame.new(0, 1, 0.3) 
BloxyColaSound(epicj00ce) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5, -1+1.4) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.3-0.6*i,0,2.3-0.3*i) 
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5+0.3*i, -1+1.4-1.4*i) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7-1.9*i,1*i,2-2*i) 
end 
BloxyColaDrinkSound(epicj00ce) 
local FIAH = Instance.new("Fire") 
FIAH.Parent = Head 
FIAH.Heat = 25 
FIAH.Size = 3 
coroutine.resume(coroutine.create(function(fire) 
WalkSpeed = Character.Humanoid.WalkSpeed 
oldWalkSpeed = WalkSpeed 
MaxHealth = Character.Humanoid.MaxHealth 
Health = Character.Humanoid.Health 
WalkSpeed = oldWalkSpeed * 4
MaxHealth = MaxHealth * 1.5
Health = Health * 1.5
for i = 0,500 do 
wait() 
WalkSpeed = oldWalkSpeed * 1.6 
Character.Humanoid.WalkSpeed = WalkSpeed 
end 
WalkSpeed = 16 
MaxHealth = 100 
fire.Parent = nil 
end), FIAH) 
wait(2) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.35-0.15*i, 0.5+0.3-0.3*i, -1+1*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,0,1.35-1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.1-1.47*i,1-1*i,0) 
end 
wait() 
epicj00ce:BreakJoints() 
epicj00ce.CanCollide = true 
wait(0.5) 
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.35-0.15+0.45*i , 0.5+0.3-0.3, -1*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57+1.57*i,0,0) 
end 
coroutine.resume(coroutine.create(function(part) 
wait(4) 
local MOARFIAH = Instance.new("Fire") 
MOARFIAH.Parent = part 
MOARFIAH.Size = 5 
MOARFIAH.Heat = 25 
EVENMOARFIAH = MOARFIAH:Clone() 
EVENMOARFIAH.Parent = part 
wait(1) 
for i = 0,1,0.1 do 
wait() 
part.Transparency = i 
end 
MOARFIAH.Enabled = false 
part.Transparency = 1 
wait(2) 
part.Parent = nil 
end),epicj00ce) 
elseif Blah == "Bomb" then 
local UMGEZABOMB = Instance.new("Part") --LAMP OIL, ROPE, BOMB. YOU WANT IT, IT'S YOURS MY FRIEND. AS LONG AS YOU HAVE ENOUGH RUPEES.
UMGEZABOMB.Shape = "Ball" 
UMGEZABOMB.formFactor = 1 
UMGEZABOMB.CanCollide = false 
UMGEZABOMB.Name = "Bomb" 
UMGEZABOMB.Locked = true 
UMGEZABOMB.Size = Vector3.new(2,2,2) 
UMGEZABOMB.Parent = swordholder 
local bombmesh = Instance.new("SpecialMesh") 
bombmesh.Parent = UMGEZABOMB 
bombmesh.MeshId = "rbxasset://fonts/timebomb.mesh" 
bombmesh.TextureId = "rbxasset://textures/bombtex.png" 
bombmesh.Scale = Vector3.new(1, 1, 1)  
local bombweld = Instance.new("Weld") 
bombweld.Parent = UMGEZABOMB 
bombweld.Part0 = UMGEZABOMB 
bombweld.Part1 = LeftArm 
bombweld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,math.rad(180)) * CFrame.new(0, 1, 0) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5, -1+1.4) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.3-0.6*i,0,2.3-0.3*i) 
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.35-0.15*i, 0.5, 0.4-0.4*i) * CFrame.fromEulerAnglesXYZ(1.5+2*i,0,1.35-1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7-1.7*i,0,2-2*i) 
end 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3.5-1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
UMGEZABOMB:BreakJoints() 
UMGEZABOMB.CanCollide = true 
--UMGEZABOMB.Velocity = UMGEZABOMB.CFrame.lookVector * 50 + Vector3.new(0,5,0)
local v = Instance.new("BodyVelocity") 
v.Parent = UMGEZABOMB 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = UMGEZABOMB.CFrame.lookVector * 50 + Vector3.new(0,70,0) 
coroutine.resume(coroutine.create(function(part) 
wait(4) 
EXPLOSIONSound(UMGEZABOMB) 
local PAOHAHA = Instance.new("Explosion") 
PAOHAHA.Parent = workspace 
PAOHAHA.Position = part.Position 
PAOHAHA.BlastRadius = 20 
part.Parent = nil 
end),UMGEZABOMB) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.5) 
v.Parent = nil 
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.5+0.45*i, 0.5, -1*i) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif Blah == "Jarate" then 
local JarAte = Instance.new("Model") 
JarAte.Parent = swordholder 
JarAte.Name = "Jar of piss" 
local Jarate1 = Instance.new("Part") 
Jarate1.formFactor = 1 
Jarate1.CanCollide = false 
Jarate1.Name = "Holder of the jar of piss" 
Jarate1.Locked = true 
Jarate1.Size = Vector3.new(1,1,1) 
Jarate1.Transparency = 0.4 
Jarate1.BrickColor = BrickColor.new("White") 
Jarate1.Parent = JarAte 
local Jarate2 = Instance.new("Part") 
Jarate2.formFactor = 1 
Jarate2.CanCollide = false 
Jarate2.Name = "The cap of the jar of piss" 
Jarate2.Locked = true 
Jarate2.Size = Vector3.new(1,1,1) 
Jarate2.BrickColor = BrickColor.new("Brown") 
Jarate2.Parent = JarAte 
local Jarate3 = Instance.new("Part") 
Jarate3.formFactor = 1 
Jarate3.CanCollide = false 
Jarate3.Name = "The piss. Fear it." 
Jarate3.Locked = true 
Jarate3.Size = Vector3.new(1,1,1) 
Jarate3.BrickColor = BrickColor.new("Bright yellow") 
Jarate3.Parent = JarAte 
local JarateMesh1 = Instance.new("SpecialMesh") 
JarateMesh1.Parent = Jarate1 
JarateMesh1.MeshType = "Head" 
JarateMesh1.Scale = Vector3.new(1,1.2,1) 
local JarateMesh2 = Instance.new("SpecialMesh") 
JarateMesh2.Parent = Jarate2 
JarateMesh2.MeshType = "Head" 
JarateMesh2.Scale = Vector3.new(0.6,0.3,0.6) 
local JarateMesh3 = Instance.new("SpecialMesh") 
JarateMesh3.Parent = Jarate3 
JarateMesh3.MeshType = "Head" 
JarateMesh3.Scale = Vector3.new(0.8,1,0.8) 
local JarateWeld1 = Instance.new("Weld") 
JarateWeld1.Parent = Jarate1 
JarateWeld1.Part0 = Jarate1 
JarateWeld1.Part1 = LeftArm 
JarateWeld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(180)) * CFrame.new(0, 1, 0) 
local JarateWeld2 = Instance.new("Weld") 
JarateWeld2.Parent = Jarate2 
JarateWeld2.Part0 = Jarate2 
JarateWeld2.Part1 = Jarate1 
JarateWeld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0, -0.7, 0) 
local JarateWeld3 = Instance.new("Weld") 
JarateWeld3.Parent = Jarate3 
JarateWeld3.Part0 = Jarate3 
JarateWeld3.Part1 = Jarate1 
JarateWeld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0, 0, 0) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.05-0.3, 0.5, -1+1.4) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.3-0.6*i,0,2.3-0.3*i) 
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.35-0.15*i, 0.5, 0.4-0.4*i) * CFrame.fromEulerAnglesXYZ(1.5+2*i,0,1.35-1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7-1.7*i,0,2-2*i) 
end 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3.5-1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
SwingSound(Jarate1) 
Jarate1:BreakJoints() 
JarateWeld2.Parent = Jarate2 
JarateWeld3.Parent = Jarate3 
Jarate1.CanCollide = true 
local v = Instance.new("BodyVelocity") 
v.Parent = Jarate1 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = Jarate1.CFrame.lookVector * -50 + Vector3.new(0,20,0) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.5) 
v.Parent = nil 
coroutine.resume(coroutine.create(function(part) 
wait(1) 
        local c = game.Workspace:children();
        for i = 1, #c do
                if c[i].className == "Part" then 
                local targ = c[i].Position - Jarate1.Position;
                local mag = targ.magnitude;
                if mag <= 10 then
                c[i].Transparency = 0 
                end 
                end 
                if c[i].className == "Model" then 
                local b = c[i]:children() 
                for i = 1, #b do 
                if b[i].className == "Part" then 
                local targ = b[i].Position - Jarate1.Position;
                local mag = targ.magnitude;
                if mag <= 10 then
                b[i].Transparency = 0 
                end 
                end 
                end
                end 
        end
GlassBreakSound(Jarate1) 
Jarate2.Parent = workspace 
Jarate2.CanCollide = true 
Jarate2:BreakJoints() 
local jarremainsmesh = Instance.new("BlockMesh") 
jarremainsmesh.Scale = Vector3.new(0.8,0.2,0.8) 
local jarremains1 = Instance.new("Part") 
jarremainsmesh.Parent = jarremains1 
jarremains1.formFactor = 1 
jarremains1.CanCollide = true 
jarremains1.Name = "Remains of the jar of piss" 
jarremains1.Locked = true 
jarremains1.Size = Vector3.new(1,1,1) 
jarremains1.BrickColor = BrickColor.new("White") 
jarremains1.Transparency = 0.4 
jarremains1.Parent = workspace 
jarremains1.CFrame = Jarate1.CFrame * CFrame.new(math.random()-math.random(),math.random()-math.random(),math.random()-math.random()) 
local jarremains2 = jarremains1:Clone() 
jarremains2.Parent = workspace 
jarremains2.CFrame = Jarate1.CFrame * CFrame.new(math.random()-math.random(),math.random()-math.random(),math.random()-math.random()) 
local jarremains3 = jarremains1:Clone() 
jarremains3.Parent = workspace 
jarremains3.CFrame = Jarate1.CFrame * CFrame.new(math.random()-math.random(),math.random()-math.random(),math.random()-math.random()) 
local jarremains4 = jarremains1:Clone() 
jarremains4.Parent = workspace 
jarremains4.CFrame = Jarate1.CFrame * CFrame.new(math.random()-math.random(),math.random()-math.random(),math.random()-math.random()) 
local jarremains5 = jarremains1:Clone() 
jarremains5.Parent = workspace 
jarremains5.CFrame = Jarate1.CFrame * CFrame.new(math.random()-math.random(),math.random()-math.random(),math.random()-math.random()) 
local jarremains6 = jarremains1:Clone() 
jarremains6.Parent = workspace 
jarremains6.CFrame = Jarate1.CFrame * CFrame.new(math.random()-math.random(),math.random()-math.random(),math.random()-math.random()) 
local pissmesh = Instance.new("SpecialMesh") 
pissmesh.Scale = Vector3.new(1,1,1) 
pissmesh.MeshType = "Sphere" 
local piss = Instance.new("Part") 
pissmesh.Parent = piss 
piss.formFactor = 1 
piss.CanCollide = true 
piss.Anchored = true 
piss.Name = "It's piss which you die from" 
piss.Locked = true 
piss.Size = Vector3.new(1,1,1) 
piss.BrickColor = BrickColor.new("Bright yellow") 
piss.Transparency = 0.4 
piss.Parent = workspace 
piss.CFrame = Jarate1.CFrame 
coroutine.resume(coroutine.create(function(tehpiss) 
for i = 0,1,0.2 do 
wait() 
tehpiss.Transparency = i 
pissmesh.Scale = pissmesh.Scale + Vector3.new(2,2,2) 
end 
piss.Parent = nil 
end), piss) 
for i=1, 20 do
        p=Instance.new("Part")
        m=Instance.new("SpecialMesh")
        m.MeshType="Sphere"
        m.Scale=(Vector3.new(.25,.5,.25)+Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))/9)/2
        m.Parent=p
        p.TopSurface=0
        p.BottomSurface=0
        p.BrickColor=BrickColor.new("Bright yellow")
        p.Transparency=.25
        p.Reflectance=.05
        p.CanCollide=false
        p.formFactor="Plate"
        p.Size=Vector3.new(1,.4,1)
        p.CFrame=Jarate1.CFrame 
        p.Parent=workspace
        p.Velocity=Jarate1.Velocity/3+Vector3.new(math.random(-20,20)*1.25,math.random(50,80),math.random(-20,20)*1.25)
        p.RotVelocity=p.Velocity
        coroutine.resume(coroutine.create(function(pissthing) 
        wait(5) 
        pissthing.Parent = nil 
        end), p) 
end
--[[for i=-2, 2 do
        p=Instance.new("Part")
        p.TopSurface=0
        p.BottomSurface=0
        p.BrickColor=BrickColor.new("Bright yellow") 
        p.Transparency=.5
        p.Reflectance=.1
        p.Friction=.6
        p.Elasticity=0
        p.formFactor="Plate"
        p.Size=Vector3.new(1,.4,1)
        p.CFrame=Jarate1.CFrame*CFrame.new(0,.4*i,0)
        p.Parent=workspace
        p.Velocity=Jarate1.Velocity/2+Vector3.new(math.random(-20,20),math.random(0,10),math.random(-20,20))
        p.RotVelocity=p.Velocity
        game:GetService("Debris"):AddItem(p,5)
end]]
part.Parent = nil 
wait(5) 
Jarate2.Parent = nil 
jarremains1.Parent = nil 
jarremains2.Parent = nil 
jarremains3.Parent = nil 
jarremains4.Parent = nil 
jarremains5.Parent = nil 
jarremains6.Parent = nil 
end), JarAte)
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.5+0.45*i, 0.5, -1*i) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
attack = false 
end 

function reload(numoftimes) 
attack = true 
Character.Humanoid.WalkSpeed = 12 
st00f = 0.1 
st00f2 = 0.05 
st00f3 = 0.2 
if shot ~= "Explosion" and shot ~= "Rapid" then 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.4*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15*i, 0,0) 
else 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.4*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15*i, 0,0) 
end 
end 
elseif shot == "Explosion" then 
for i = 0 , 1 , 0.05 do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.4*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15*i, 0,0) 
else 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.4*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15*i, 0,0) 
end 
end 
elseif shot == "Rapid" then 
for i = 0 , 1 , 0.2 do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.4*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15*i, 0,0) 
else 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.4*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15*i, 0,0) 
end 
end 
end 
if shot ~= "Explosion" and shot ~= "Rapid" then 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.5*i-1.05, -0.5*i+0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.9*i+1.5,0,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1*i,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.5*i-1.05, -0.5*i+0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.9*i+1.5,-offset,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1*i,0) 
end 
end 
elseif shot == "Explosion" then 
for i = 0 , 1 , 0.05 do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.5*i-1.05, -0.5*i+0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.9*i+1.5,0,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1*i,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.5*i-1.05, -0.5*i+0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.9*i+1.5,-offset,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1*i,0) 
end 
end 
elseif shot == "Rapid" then 
for i = 0 , 1 , 0.2 do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.5*i-1.05, -0.5*i+0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.9*i+1.5,0,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1*i,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.5*i-1.05, -0.5*i+0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.9*i+1.5,-offset,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1*i,0) 
end 
end 
end 
for i = 1,numoftimes do 
wait() 
local mesh = Instance.new("BlockMesh") 
mesh.Scale = Vector3.new(0.25,0.25,1) 
if shot == "Explosion" then 
mesh.Scale = Vector3.new(0.75,0.75,1.5) 
end 
local arrow = Instance.new("Part") 
mesh.Parent = arrow 
arrow.formFactor = 1 
arrow.Size = Vector3.new(1,1,1) 
arrow.Parent = workspace 
arrow.Transparency = 0 
arrow.BrickColor = BrickColor.new("Bright yellow") 
if shot == "Poison" then 
arrow.BrickColor = BrickColor.new("Royal purple") 
elseif shot == "Heal" then 
arrow.BrickColor = BrickColor.new("Medium green") 
elseif shot == "Explosion" then 
arrow.BrickColor = BrickColor.new("Really red") 
elseif shot == "Rapid" then 
arrow.BrickColor = BrickColor.new("Dark stone grey") 
elseif shot == "Electric" then 
arrow.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() 
Stun4=function(part)
--[[                if part.Parent:FindFirstChild("Torso")==nil then
                        return
                end]]
                Torsoh4=part
                End4=Torsoh4.CFrame+Vector3.new(math.random(-20,20)/10,math.random(-30,30)/10,math.random(-20,20)/10)
                ST4=Torsoh4.Position
--[[                p=Instance.new("BodyPosition")
                p.P=3000
                p.D=100
                p.maxForce=Vector3.new(math.huge,0,math.huge)
                p.position=Torsoh4.Position
                p.Parent=Torsoh4]]
                while part.Parent ~= nil and part.BrickColor == BrickColor.new("New Yeller") do 
--                        f1:Play()
--                        p.position=ST4+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
                        Start4=End4
                        End4=Torsoh4.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
                        e=Instance.new("Part")
                        e.TopSurface=0
                        e.BottomSurface=0
                        e.CanCollide=false
                        e.Anchored=true
                        e.formFactor="Symmetric"
                        e.Size=Vector3.new(1,1,1)
                        Look4=(End4.p-Start4.p).unit
                        m=Instance.new("BlockMesh")
                        m.Scale=Vector3.new(.2,.2,(Start4.p-End4.p).magnitude)
                        m.Parent=e
                        e.CFrame=CFrame.new(Start4.p+Look4*(m.Scale.z/2),Start4.p+Look4*99)
                        e.Reflectance=.3
                        e.Name="Zap"
                        e.BrickColor=BrickColor.new("New Yeller")
                        e.Parent=part.Parent
                        coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
                        wait(.1)
                end
                wait(.25)
--                p.Parent=nil
end
Stun4(arrow) 
end)) 
end 
local cfrf = prt1.CFrame * CFrame.fromEulerAnglesXYZ(0,1.57,0)
local cfr = cfrf + cfrf.lookVector * -0.5
arrow.CFrame = cfr
arrow.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
arrow.Velocity = cfr.lookVector * -5 
coroutine.resume(coroutine.create(function() 
wait(5) 
arrow.CanCollide = false 
wait(5) 
arrow.Parent = nil 
end)) 
ReloadingSound(prt2) 
--reloadsound:Play() 
if shot ~= "Explosion" and shot ~= "Rapid" then 
for i = 0 , 1 , 0.2 do 
wait() 
if aiming ~= true then 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,0,0.7*i+0.65) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
else 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,-offset,0.7*i+0.65) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
end 
end 
elseif shot == "Explosion" then 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,0,0.7*i+0.65) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
else 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,-offset,0.7*i+0.65) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
end 
end 
elseif shot == "Rapid" then 
for i = 0 , 1 , 0.5 do 
wait() 
if aiming ~= true then 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,0,0.7*i+0.65) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
else 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,-offset,0.7*i+0.65) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
end 
end 
end 
if shot ~= "Explosion" and shot ~= "Rapid" then 
for i = 0 , 1 , 0.2 do 
wait() 
if aiming ~= true then 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,0,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
else 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,-offset,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
end 
end 
elseif shot == "Explosion" then 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,0,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
else 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,-offset,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
end 
end 
elseif shot == "Rapid" then 
for i = 0 , 1 , 0.5 do 
wait() 
if aiming ~= true then 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,0,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
else 
LW.C0 = CFrame.new(-0.55, 0, -1) * CFrame.fromEulerAnglesXYZ(0.6,-offset,-0.7*i+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15, 1,0) 
end 
end 
end 
end 
if shot ~= "Explosion" and shot ~= "Rapid" then 
for i = 0 , 1 , 0.2 do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.4*i+0.4+1.57,3.14,0) * CFrame.new(0,-0.3*i+0.3,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i+1-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.55*i-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.5+0.5-1.05, 0.5*i, -1) * CFrame.fromEulerAnglesXYZ(1.3*i-0.9+1.5,0,0.7*i-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i+0.15, -1*i+1,0) 
else 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.4*i+0.4+1.57,3.14,0) * CFrame.new(0,-0.3*i+0.3,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i+1-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.55*i-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.5+0.5-1.05, 0.5*i, -1) * CFrame.fromEulerAnglesXYZ(1.3*i-0.9+1.5,-offset,0.7*i-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i+0.15, -1*i+1,0) 
end 
end 
elseif shot == "Explosion" then 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.4*i+0.4+1.57,3.14,0) * CFrame.new(0,-0.3*i+0.3,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i+1-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.55*i-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.5+0.5-1.05, 0.5*i, -1) * CFrame.fromEulerAnglesXYZ(1.3*i-0.9+1.5,0,0.7*i-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i+0.15, -1*i+1,0) 
else 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.4*i+0.4+1.57,3.14,0) * CFrame.new(0,-0.3*i+0.3,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i+1-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.55*i-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.5+0.5-1.05, 0.5*i, -1) * CFrame.fromEulerAnglesXYZ(1.3*i-0.9+1.5,-offset,0.7*i-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i+0.15, -1*i+1,0) 
end 
end 
elseif shot == "Rapid" then 
for i = 0 , 1 , 0.5 do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.4*i+0.4+1.57,3.14,0) * CFrame.new(0,-0.3*i+0.3,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i+1-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.55*i-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.5+0.5-1.05, 0.5*i, -1) * CFrame.fromEulerAnglesXYZ(1.3*i-0.9+1.5,0,0.7*i-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i+0.15, -1*i+1,0) 
else 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.4*i+0.4+1.57,3.14,0) * CFrame.new(0,-0.3*i+0.3,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i+1-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.55*i-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.5+0.5-1.05, 0.5*i, -1) * CFrame.fromEulerAnglesXYZ(1.3*i-0.9+1.5,-offset,0.7*i-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i+0.15, -1*i+1,0) 
end 
end 
end 
wait(0.1) 
if shot ~= "Explosion" and shot ~= "Rapid" then 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.4*i+0.55-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.3*i+1.3-0.9+1.5,0,0.7-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15+0.15, -1+1,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.4*i+0.55-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.3*i+1.3-0.9+1.5,-offset,0.7-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15+0.15, -1+1,0) 
end 
end 
elseif shot == "Explosion" then 
for i = 0 , 1 , 0.05 do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.4*i+0.55-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.3*i+1.3-0.9+1.5,0,0.7-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15+0.15, -1+1,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.4*i+0.55-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.3*i+1.3-0.9+1.5,-offset,0.7-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15+0.15, -1+1,0) 
end 
end 
elseif shot == "Rapid" then 
for i = 0 , 1 , 0.2 do 
wait() 
if aiming ~= true then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.4*i+0.55-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.3*i+1.3-0.9+1.5,0,0.7-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15+0.15, -1+1,0) 
else 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.4*i+0.55-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(-0.3*i+1.3-0.9+1.5,-offset,0.7-0.7+1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15+0.15, -1+1,0) 
end 
end 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
Character.Humanoid.WalkSpeed = 16 
attack = false 
end 

function changeammo() 
attack = true 
Character.Humanoid.WalkSpeed = 12 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.4*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.7*i-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.6*i, 0,0.3*i) 
else 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.4*i+1.57,3.14,0) * CFrame.new(0,0.3*i,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(1*i-2, 0.65*i+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.15*i, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(0.7*i-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.6*i, 0,0.3*i) 
end 
end 
ChangingSound(workspace) 
for i = 0 , 1 , 0.2 do 
wait() 
if aiming ~= true then 
LW.C0 = CFrame.new(0.7-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.6, 0,-0.3*i+0.3) 
w13.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, 0.5*i-0.8, -0.2) 
else 
LW.C0 = CFrame.new(0.7-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.6, 0,-0.3*i+0.3) 
w13.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, 0.5*i-0.8, -0.2) 
end 
end 
if shot == "Normal" then 
prt14.BrickColor = BrickColor.new("Bright yellow") 
elseif shot == "Poison" then 
prt14.BrickColor = BrickColor.new("Royal purple") 
elseif shot == "Heal" then 
prt14.BrickColor = BrickColor.new("Medium green") 
elseif shot == "Explosion" then 
prt14.BrickColor = BrickColor.new("Really red") 
elseif shot == "Rapid" then 
prt14.BrickColor = BrickColor.new("Dark stone grey") 
elseif shot == "Electric" then 
prt14.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() 
Stun1(prt14)
end)) 
end 
for i = 0 , 1 , 0.2 do 
wait() 
if aiming ~= true then 
LW.C0 = CFrame.new(0.7-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.6, 0,0.3*i) 
w13.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -0.5*i-0.3, -0.2) 
else 
LW.C0 = CFrame.new(0.7-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.6, 0,0.3*i) 
w13.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(0, -0.5*i-0.3, -0.2) 
end 
end 
wait(0.2) 
for i = 0 , 1 , 0.1 do 
wait() 
if aiming ~= true then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.4*i+0.4+1.57,3.14,0) * CFrame.new(0,-0.3*i+0.3,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i+1-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15*i-0.15, math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.7*i+0.7-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,0,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.6*i+0.6, 0,-0.3*i+0.3) 
else 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.4*i+0.4+1.57,3.14,0) * CFrame.new(0,-0.3*i+0.3,-0.5) 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0) * CFrame.new(-1*i+1-2, -0.65*i+0.65+0.9-0.65, 0.25) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.15*i-0.15, math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-0.7*i+0.7-1.05, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5,-offset,1.35) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.6*i+0.6, 0,-0.3*i+0.3) 
end 
end 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
Character.Humanoid.WalkSpeed = 16 
attack = false 
end 

function forwarddodge() 
local p = Instance.new("Part") 
p.Position = Torso.Position 
p.Parent = Character 
p.Transparency = 1
local welel = Instance.new("Weld") 
welel.Parent = p 
welel.Part0 = p 
welel.Part1 = Torso 
welel.C0 = CFrame.new(0,1,-2) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0) 
local lolsmoke = Instance.new("Smoke") 
lolsmoke.Enabled = true 
lolsmoke.Parent = p 
lolsmoke.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke.RiseVelocity = 10 
local lolsmoke2 = Instance.new("Smoke") 
lolsmoke2.Enabled = true 
lolsmoke2.Parent = p 
lolsmoke2.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke2.RiseVelocity = 10 
--[[local lolsmoke3 = Instance.new("Smoke") 
lolsmoke3.Enabled = true 
lolsmoke3.Parent = p 
lolsmoke3.Size = 2
lolsmoke.Opacity = 1 
lolsmoke3.RiseVelocity = 10 ]]
Character.Humanoid.WalkSpeed = 0 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 40
coroutine.resume(coroutine.create(function()  
weh = 40 
for i = 0,20 do 
wait(0) 
weh = weh - 2 
vel.velocity = Player.Character.Torso.CFrame.lookVector * weh 
end 
lolsmoke.Enabled = false 
lolsmoke2.Enabled = false 
--lolsmoke3.Enabled = false 
vel.Parent = nil 
wait(5) 
p.Parent = nil 
end)) 
wait(1) 
coroutine.resume(coroutine.create(function() 
for i = 0,16 do 
wait() 
Character.Humanoid.WalkSpeed = i 
end 
--print(Character.Humanoid.WalkSpeed) 
end)) 
end 

function leftsidedodge() 
local p = Instance.new("Part") 
p.Position = Torso.Position 
p.Parent = Character 
p.Transparency = 1
local welel = Instance.new("Weld") 
welel.Parent = p 
welel.Part0 = p 
welel.Part1 = Torso 
welel.C0 = CFrame.new(0,1,2) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(90)) 
local velpart = Instance.new("Part") 
velpart.Position = Torso.Position 
velpart.Parent = swordholder 
velpart.Transparency = 1 
local velweld = Instance.new("Weld") 
velweld.Parent = velpart 
velweld.Part0 = velpart 
velweld.Part1 = Torso 
velweld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) 
local lolsmoke = Instance.new("Smoke") 
lolsmoke.Enabled = true 
lolsmoke.Parent = p 
lolsmoke.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke.RiseVelocity = 10 
local lolsmoke2 = Instance.new("Smoke") 
lolsmoke2.Enabled = true 
lolsmoke2.Parent = p 
lolsmoke2.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke2.RiseVelocity = 10 
--[[local lolsmoke3 = Instance.new("Smoke") 
lolsmoke3.Enabled = true 
lolsmoke3.Parent = p 
lolsmoke3.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke3.RiseVelocity = 10 ]]
Character.Humanoid.WalkSpeed = 0 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = velpart.CFrame.lookVector * 40
coroutine.resume(coroutine.create(function()  
weh = 40 
for i = 0,20 do 
wait(0) 
weh = weh - 2 
vel.velocity = velpart.CFrame.lookVector * weh 
end 
lolsmoke.Enabled = false 
lolsmoke2.Enabled = false 
--lolsmoke3.Enabled = false 
vel.Parent = nil 
velpart.Parent = nil 
wait(5) 
p.Parent = nil 
--velpart.Parent = nil 
end)) 
wait(1) 
coroutine.resume(coroutine.create(function() 
for i = 0,16 do 
wait() 
Character.Humanoid.WalkSpeed = i 
end 
--print(Character.Humanoid.WalkSpeed) 
end)) 
end 

function rightsidedodge() 
local p = Instance.new("Part") 
p.Position = Torso.Position 
p.Parent = Character 
p.Transparency = 1
local welel = Instance.new("Weld") 
welel.Parent = p 
welel.Part0 = p 
welel.Part1 = Torso 
welel.C0 = CFrame.new(0,1,-2) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),-math.rad(90)) 
local velpart = Instance.new("Part") 
velpart.Position = Torso.Position 
velpart.Parent = swordholder 
velpart.Transparency = 1 
local velweld = Instance.new("Weld") 
velweld.Parent = velpart 
velweld.Part0 = velpart 
velweld.Part1 = Torso 
velweld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) 
local lolsmoke = Instance.new("Smoke") 
lolsmoke.Enabled = true 
lolsmoke.Parent = p 
lolsmoke.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke.RiseVelocity = 10 
local lolsmoke2 = Instance.new("Smoke") 
lolsmoke2.Enabled = true 
lolsmoke2.Parent = p 
lolsmoke2.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke2.RiseVelocity = 10 
--[[local lolsmoke3 = Instance.new("Smoke") 
lolsmoke3.Enabled = true 
lolsmoke3.Parent = p 
lolsmoke3.Size = 2
lolsmoke.Opacity = 1 
lolsmoke3.RiseVelocity = 10 ]]
Character.Humanoid.WalkSpeed = 0 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = velpart.CFrame.lookVector * 40
coroutine.resume(coroutine.create(function()  
weh = 40 
for i = 0,20 do 
wait(0) 
weh = weh - 2 
vel.velocity = velpart.CFrame.lookVector * weh 
end 
lolsmoke.Enabled = false 
lolsmoke2.Enabled = false 
--lolsmoke3.Enabled = false 
vel.Parent = nil 
velpart.Parent = nil 
wait(5) 
p.Parent = nil 
--velpart.Parent = nil 
end)) 
wait(1) 
coroutine.resume(coroutine.create(function() 
for i = 0,16 do 
wait() 
Character.Humanoid.WalkSpeed = i 
end 
--print(Character.Humanoid.WalkSpeed) 
end)) 
end 

function backdodge() 
local p = Instance.new("Part") 
p.Position = Torso.Position 
p.Parent = Character 
p.Transparency = 1
local welel = Instance.new("Weld") 
welel.Parent = p 
welel.Part0 = p 
welel.Part1 = Torso 
welel.C0 = CFrame.new(0,1,2) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
local velpart = Instance.new("Part") 
velpart.Position = Torso.Position 
velpart.Parent = swordholder 
velpart.Transparency = 1 
local velweld = Instance.new("Weld") 
velweld.Parent = velpart 
velweld.Part0 = velpart 
velweld.Part1 = Torso 
velweld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local lolsmoke = Instance.new("Smoke") 
lolsmoke.Enabled = true 
lolsmoke.Parent = p 
lolsmoke.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke.RiseVelocity = 10 
local lolsmoke2 = Instance.new("Smoke") 
lolsmoke2.Enabled = true 
lolsmoke2.Parent = p 
lolsmoke2.Size = smokesize 
lolsmoke.Opacity = 1 
lolsmoke2.RiseVelocity = 10 
--[[local lolsmoke3 = Instance.new("Smoke") 
lolsmoke3.Enabled = true 
lolsmoke3.Parent = p 
lolsmoke3.Size = 2
lolsmoke.Opacity = 1 
lolsmoke3.RiseVelocity = 10 ]]
Character.Humanoid.WalkSpeed = 0 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = velpart.CFrame.lookVector * -40
coroutine.resume(coroutine.create(function()  
weh = -40 
for i = 0,20 do 
wait(0) 
weh = weh + 2 
vel.velocity = velpart.CFrame.lookVector * weh 
end 
lolsmoke.Enabled = false 
lolsmoke2.Enabled = false 
--lolsmoke3.Enabled = false 
vel.Parent = nil 
velpart.Parent = nil 
wait(5) 
p.Parent = nil 
--velpart.Parent = nil 
end)) 
wait(1) 
coroutine.resume(coroutine.create(function() 
for i = 0,16 do 
wait() 
Character.Humanoid.WalkSpeed = i 
end 
--print(Character.Humanoid.WalkSpeed) 
end)) 
end 

Stun1=function(part)
--[[                if part.Parent:FindFirstChild("Torso")==nil then
                        return
                end]]
                Torsoh=part
                End=Torsoh.CFrame+Vector3.new(math.random(-20,20)/10,math.random(-30,30)/10,math.random(-20,20)/10)
                ST=Torsoh.Position
--[[                p=Instance.new("BodyPosition")
                p.P=3000
                p.D=100
                p.maxForce=Vector3.new(math.huge,0,math.huge)
                p.position=Torsoh.Position
                p.Parent=Torso]]
                while part.Parent ~= nil and part.BrickColor == BrickColor.new("New Yeller") do 
--                        f1:Play()
--                        p.position=ST+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
                        Start=End
                        End=Torsoh.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
                        e=Instance.new("Part")
                        e.TopSurface=0
                        e.BottomSurface=0
                        e.CanCollide=false
                        e.Anchored=true
                        e.formFactor="Symmetric"
                        e.Size=Vector3.new(1,1,1)
                        Look=(End.p-Start.p).unit
                        m=Instance.new("BlockMesh")
                        m.Scale=Vector3.new(.2,.2,(Start.p-End.p).magnitude)
                        m.Parent=e
                        e.CFrame=CFrame.new(Start.p+Look*(m.Scale.z/2),Start.p+Look*99)
                        e.Reflectance=.3
                        e.Name="Zap"
                        e.BrickColor=BrickColor.new("New Yeller")
                        e.Parent=part.Parent
                        coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
                        wait(.1)
                end
                wait(.25)
--                p.Parent=nil
end

Stun3=function(part,numboftimes)
--[[                if part.Parent:FindFirstChild("Torso")==nil then
                        return
                end]]
                Torsoh3=part
                End3=Torsoh3.CFrame+Vector3.new(math.random(-20,20)/10,math.random(-30,30)/10,math.random(-20,20)/10)
                ST3=Torsoh3.Position
--[[                p=Instance.new("BodyPosition")
                p.P=3000
                p.D=100
                p.maxForce=Vector3.new(math.huge,0,math.huge)
                p.position=Torsoh3.Position
                p.Parent=Torsoh3]]
                for i = 0,numboftimes do 
                        local feh = math.random(1,5) 
                        showDamage(part.Parent,feh,1) 
                        part.Parent.Humanoid:TakeDamage(feh) 
--                        f1:Play()
--                        p.position=ST3+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
                        Start3=End3
                        End3=Torsoh3.CFrame*CFrame.new(math.random(-30,30)/10,math.random(-34,29)/10,math.random(-30,30)/10)
                        e=Instance.new("Part")
                        e.TopSurface=0
                        e.BottomSurface=0
                        e.CanCollide=false
                        e.Anchored=true
                        e.formFactor="Symmetric"
                        e.Size=Vector3.new(1,1,1)
                        Look3=(End3.p-Start3.p).unit
                        m=Instance.new("BlockMesh")
                        m.Scale=Vector3.new(.2,.2,(Start3.p-End3.p).magnitude)
                        m.Parent=e
                        e.CFrame=CFrame.new(Start3.p+Look3*(m.Scale.z/2),Start3.p+Look3*99)
                        e.Reflectance=.3
                        e.Name="Zap"
                        e.BrickColor=BrickColor.new("New Yeller")
                        e.Parent=part.Parent
                        coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
                        wait(.1)
                end
                wait(.25)
--                p.Parent=nil
end

function poisoneffect() 
                local b = Instance.new("Part") 
                b.Parent = workspace 
                b.CFrame = CeEff.CFrame * CFrame.new(math.random(-2,0)+math.random(),-0.5,math.random(-2,0)+math.random()) 
                b.Size = Vector3.new(1,1,1) 
                b.Transparency = 0.2 
                b.Anchored = true 
                b.BrickColor = BrickColor.new("Royal purple") 
                local m = Instance.new("SpecialMesh") 
                m.Parent = b 
                m.MeshType = "Sphere" 
                m.Scale = Vector3.new(0.8,0.8,0.8) 
                coroutine.resume(coroutine.create(function() 
                for i = 0,1,0.1 do 
                wait() 
                b.CFrame = b.CFrame + Vector3.new(0,0.2,0) 
                end 
                b.Parent = nil 
                end))  
end 

showDamage=function(Char,Dealt,du)
        m=Instance.new("Model")
        if shot == "Heal" then 
        m.Name=tostring(-Dealt)
        else
        m.Name=tostring(Dealt)
        end
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        if shot == "Heal" then 
        c.BrickColor=BrickColor.new("Medium green")
        else 
        c.BrickColor=BrickColor:Red()
        end
        c.CanCollide=false 
        if CRIT==true then
                c.BrickColor=BrickColor.new("New Yeller")
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
                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
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

hold = false 

function ob1d(mouse) 
hold = true 
aiming = true 
getPos=function(Pos,TorsoPos)
        return Vector3.new(Pos.x,TorsoPos.y,Pos.z)
end
while hold == true do 
wait() 
g.cframe=CFrame.new(Torso.Position,getPos(mouse.Hit.p,Torso.Position))
offset=(Torso.Position.y-mouse.Hit.p.y)/60
mag=(Torso.Position-mouse.Hit.p).magnitude/80
offset=offset/mag 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(offset,0,0)
--Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57*offset,3.14,0) * CFrame.new(0,0,-0.5) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, (1-1)+math.rad(90),-offset) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.5+0.45, 0.5, -0.5-0.5) * CFrame.fromEulerAnglesXYZ(0.5+1,-offset,1+.35) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
end 

function ob1u(mouse) 
hold = false 
aiming = false 
wait() 
Torso.Neck.C0=necko
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, (1-1)+math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
LW.C0 = CFrame.new(-1.5+0.45, 0.5, -0.5-0.5) * CFrame.fromEulerAnglesXYZ(0.5+1,0,1+.35) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 

buttonhold = false 

function key(key) 
if attack == true then return end 

if key == "q" then 
Character.Humanoid.WalkSpeed = 14 
if shot ~= "Rapid" then 
WeakShot(1) 
else 
for i = 1,5 do 
wait() 
WeakShot(1) 
--if normalammo == 0 or poisonammo == 0 or healammo == 0 or explosionammo == 0 then return end 
if shot == "Normal" then 
        if normalammo == 0 then 
                return 
        end 
elseif shot == "Poison" then 
        if poisonammo == 0 then 
                return 
        end 
elseif shot == "Heal" then 
        if healammo == 0 then 
                return 
        end 
elseif shot == "Explosion" then 
        if explosionammo == 0 then 
                return 
        end 
end 
end 
end 
end 
for i = 1,5 do 
Character.Humanoid.WalkSpeed = 16 
end 

if key == "e" then 
Character.Humanoid.WalkSpeed = 14 
if shot ~= "Rapid" then 
for i = 1,4 do 
wait() 
RapidShot(2.5) 
--if normalammo == 0 or poisonammo == 0 or healammo == 0 or explosionammo == 0 then return end 
if shot == "Normal" then 
        if normalammo == 0 then 
                return 
        end 
elseif shot == "Poison" then 
        if poisonammo == 0 then 
                return 
        end 
elseif shot == "Heal" then 
        if healammo == 0 then 
                return 
        end 
elseif shot == "Explosion" then 
        if explosionammo == 0 then 
                return 
        end 
end 
end 
else 
for i = 1,10 do 
wait() 
RapidShot(2.5) 
--if normalammo == 0 or poisonammo == 0 or healammo == 0 or explosionammo == 0 or rapidammo == 0 then return end 
if shot == "Normal" then 
        if normalammo == 0 then 
                return 
        end 
elseif shot == "Poison" then 
        if poisonammo == 0 then 
                return 
        end 
elseif shot == "Heal" then 
        if healammo == 0 then 
                return 
        end 
elseif shot == "Explosion" then 
        if explosionammo == 0 then 
                return 
        end 
end 
end 
end 
wait(0.5) 
Character.Humanoid.WalkSpeed = 16 
end 


if key == "f" then 
meleeattack() 
end 


if key == "r" then 
changeitemleft() 
end 

if key == "t" then 
changeitemright() 
end 

if key == "y" then 
UseItem() 
end 

if key == "z" then 
shot = "Normal" 
local C = MainTray:children()
for i = 1, #C do 
if C[i].className == "Frame" then 
C[i].BorderColor3 = Color3.new(0,0,0) 
end 
end 
NormFrame.BorderColor3 = Color3.new(1,1,1) 
changeammo() 
end 

if key == "x" then 
shot = "Poison" 
local C = MainTray:children()
for i = 1, #C do 
if C[i].className == "Frame" then 
C[i].BorderColor3 = Color3.new(0,0,0) 
end 
end 
PoisFrame.BorderColor3 = Color3.new(1,1,1) 
changeammo() 
end 

if key == "c" then 
shot = "Heal" 
local C = MainTray:children()
for i = 1, #C do 
if C[i].className == "Frame" then 
C[i].BorderColor3 = Color3.new(0,0,0) 
end 
end 
HealFrame.BorderColor3 = Color3.new(1,1,1) 
changeammo() 
end 

if key == "v" then 
shot = "Explosion" 
local C = MainTray:children()
for i = 1, #C do 
if C[i].className == "Frame" then 
C[i].BorderColor3 = Color3.new(0,0,0) 
end 
end 
BoomFrame.BorderColor3 = Color3.new(1,1,1) 
changeammo() 
end 

if key == "b" then 
shot = "Electric" 
local C = MainTray:children()
for i = 1, #C do 
if C[i].className == "Frame" then 
C[i].BorderColor3 = Color3.new(0,0,0) 
end 
end 
ElecFrame.BorderColor3 = Color3.new(1,1,1) 
changeammo() 
end 

if key == "n" then 
shot = "Rapid" 
local C = MainTray:children()
for i = 1, #C do 
if C[i].className == "Frame" then 
C[i].BorderColor3 = Color3.new(0,0,0) 
end 
end 
RapidFrame.BorderColor3 = Color3.new(1,1,1) 
changeammo() 
end 


if key == "u" then 
forwarddodge() 
end 

if key == "h" then 
leftsidedodge() 
end 

if key == "k" then 
rightsidedodge() 
end 

if key == "j" then 
backdodge() 
end 

end 

function key2(key) 
if key == "q" then 

end 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
        g=Instance.new("BodyGyro")
        g.P=18000
        g.D=600
        g.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000
        g.cframe=Torso.CFrame
equipweld() 
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
_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
_G.L = LW 
attack = true 
equipped = true 
equipanim() 
attack = false 
end 

function ds(mouse) 
equipped = false 
hideanim() 
unequipweld() 
wait(0.1) 


RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

--swordholder.Parent = workspace 
--workspace:findFirstChild("LBowgun",true):Remove() 
coroutine.resume(coroutine.create(function() 
while true do 
--for i = 0,900000001 do 
wait() 
--[[if workspace:findFirstChild("LBowgun",true) ~= nil then 
workspace:findFirstChild("LBowgun",true).Parent = nil 
end ]]
--[[w1.Parent = prt1
w2.Parent = prt2
w3.Parent = prt3
w4.Parent = prt4
w5.Parent = prt5
w6.Parent = prt6
w7.Parent = prt7
w8.Parent = prt8
w9.Parent = prt9
w10.Parent = prt10
w11.Parent = prt11
w12.Parent = prt12
w13.Parent = prt13
w14.Parent = prt14]]
Player.Backpack["Light Bowgun"].TextureId = "http://www.roblox.com/asset/?id=39539873"
--swordholder.Parent = workspace 
NormText1.Text = "Normal Ammo" 
NormText2.Text = "Ammo("..normalammo..")" 
PoisText1.Text = "Poison Ammo" 
PoisText2.Text = "Ammo("..poisonammo..")" 
HealText1.Text = "Heal Ammo" 
HealText2.Text = "Ammo("..healammo..")" 
BoomText1.Text = "Explosion Ammo" 
BoomText2.Text = "Ammo("..explosionammo..")" 
ElecText1.Text = "Electric Ammo" 
ElecText2.Text = "Ammo("..elecammo..")" 
RapidText1.Text = "Rapid Ammo" 
RapidText2.Text = "Ammo("..rapidammo..")" 
ItemText1.Text = "Item Equipped:" 
ItemText2.Text = Blah 
end 
end)) 
game.workspace.DEADDEVIL1919.Humanoid.MaxHealth = math.huge
-- mediafire
