Player = game.Players.ace28545
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
bladecolor = BrickColor.new("black") 
attack = false 
attacktype = 1 
damage = 10000 
oridamage = 10000
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
demondance = false 
demonmode = false 
mana = 400 
skill = false 
mode = 0 
guardy = false 
unsheathed = false 
walking = false 
fly = false 
cutscene = false 
cutscene2 = 0 
 
if Character:findFirstChild("Deci",true) ~= nil then 
Character:findFirstChild("Deci",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
 
 
    
local modelzorz = Instance.new("Model") 
modelzorz.Name = "Deci" 
modelzorz.Parent = Character 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("black") 
prt1.Name = "Handle1" 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt1a = Instance.new("Part") 
prt1a.formFactor = 1 
prt1a.Parent = modelzorz 
prt1a.CanCollide = false 
prt1a.BrickColor = BrickColor.new("black") 
prt1a.Name = "Handle1a" 
prt1a.Size = Vector3.new(1,1,1) 
prt1a.Position = Torso.Position 
local prt1b = Instance.new("Part") 
prt1b.formFactor = 1 
prt1b.Parent = modelzorz 
prt1b.CanCollide = false 
prt1b.BrickColor = BrickColor.new("black") 
prt1b.Name = "Handle1b" 
prt1b.Size = Vector3.new(1,1,1) 
prt1b.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Really black") 
prt2.Name = "Handle2" 
prt2.Size = Vector3.new(1,3,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Really black") 
prt3.Name = "Handle3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("black") 
prt4.Name = "Handle4" 
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("black") 
prt5.Name = "Handle5" 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Really black") 
prt6.Name = "Handle6" 
prt6.Size = Vector3.new(1,1,1) 
prt6.Position = Torso.Position 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = modelzorz 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("black") 
prt7.Name = "Handle7" 
prt7.Size = Vector3.new(1,1,1) 
prt7.Position = Torso.Position 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = modelzorz 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("black") 
prt8.Name = "Handle8" 
prt8.Size = Vector3.new(1,1,1) 
prt8.Position = Torso.Position 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.Parent = modelzorz 
prt9.CanCollide = false 
prt9.BrickColor = BrickColor.new("black") 
prt9.Name = "Handle9" 
prt9.Size = Vector3.new(1,1,1) 
prt9.Position = Torso.Position 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.Parent = modelzorz 
prt10.CanCollide = false 
prt10.BrickColor = BrickColor.new("black") 
prt10.Name = "Handle10" 
prt10.Size = Vector3.new(1,1,1) 
prt10.Position = Torso.Position 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = modelzorz 
prt11.CanCollide = false 
prt11.Reflectance = 0.5
prt11.BrickColor = bladecolor
prt11.Name = "Blade1" 
prt11.Size = Vector3.new(2,1,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = modelzorz 
prt12.CanCollide = false 
prt12.Reflectance = 0.5
prt12.BrickColor = bladecolor
prt12.Name = "Blade2" 
prt12.Size = Vector3.new(1,1,1) 
prt12.Position = Torso.Position 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Parent = modelzorz 
prt13.CanCollide = false 
prt13.Reflectance = 0
prt13.BrickColor = BrickColor.new("Black")
prt13.Name = "Blade3" 
prt13.Size = Vector3.new(1,2,1) 
prt13.Position = Torso.Position 
 
local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.31,0.1,0.31) 
local msh1a = Instance.new("CylinderMesh") 
msh1a.Parent = prt1a 
msh1a.Scale = Vector3.new(0.31,0.1,0.31) 
local msh1b = Instance.new("CylinderMesh") 
msh1b.Parent = prt1b 
msh1b.Scale = Vector3.new(0.31,0.1,0.31) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.3,0.4,0.3) 
local msh3 = Instance.new("SpecialMesh") 
msh3.Parent = prt3 
msh3.MeshId = "http://www.roblox.com/asset/?id=3270017" 
msh3.Scale = Vector3.new(0.6,0.6,0.6) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.2, 0.4, 0.2) 
local msh5 = Instance.new("BlockMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.2, 0.4, 0.2) 
local msh6 = Instance.new("BlockMesh") 
msh6.Parent = prt6 
msh6.Scale = Vector3.new(0.3,0.9,0.3) 
local msh7 = Instance.new("BlockMesh") 
msh7.Parent = prt7 
msh7.Scale = Vector3.new(0.2, 0.5, 0.2) 
local msh8 = Instance.new("BlockMesh") 
msh8.Parent = prt8 
msh8.Scale = Vector3.new(0.2, 0.5, 0.2) 
local msh9 = Instance.new("BlockMesh") 
msh9.Parent = prt9 
msh9.Scale = Vector3.new(0.2, 0.5, 0.2) 
local msh10 = Instance.new("BlockMesh") 
msh10.Parent = prt10 
msh10.Scale = Vector3.new(0.2, 0.5, 0.2) 
local msh11 = Instance.new("BlockMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(1, 0.6, 0.2) 
local msh12 = Instance.new("SpecialMesh") 
msh12.Parent = prt12 
msh12.MeshType = "Wedge" 
msh12.Scale = Vector3.new(0.2,0.4,0.5) 
local msh13 = Instance.new("CylinderMesh") 
msh13.Parent = prt13 
msh13.Scale = Vector3.new(2,0.8,0.3) 
 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.55, -0.75) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld1a = Instance.new("Weld") 
wld1a.Parent = prt1a 
wld1a.Part0 = prt1a 
wld1a.Part1 = prt2 
wld1a.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3, 0) 
local wld1b = Instance.new("Weld") 
wld1b.Parent = prt1b 
wld1b.Part0 = prt1b 
wld1b.Part1 = prt2 
wld1b.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3, 0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt2 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.9,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt3 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt3 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt2 
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0.7,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt6 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt7 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = prt6 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = prt9 
wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = prt6 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1.1,0,0) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt11 
wld12.C0 = CFrame.fromEulerAnglesXYZ(3.95,math.rad(90),0) * CFrame.new(-1,0,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt11 
wld13.C0 = CFrame.fromEulerAnglesXYZ(4.7,math.rad(90),0) * CFrame.new(0,0,0) 
 
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
fentext.Position = UDim2.new(0,50,1,150) 
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(1,1,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Deci" 
Tool.TextureId = "http://www.roblox.com/asset/?id=32382461" 
Player.Backpack["Deci"].TextureId = "http://www.roblox.com/asset/?id=32382461"
script.Parent = Tool 
end 
Bin = script.Parent 
 
function unequipweld() 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.55, -0.75) 
end 
 
function equipweld() 
wld1.Part1 = LeftArm 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
end 
 
function hideanim() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), math.rad(720)*i, -1.57) * CFrame.new(0, 1, 0) 
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
end 
 
 
function efect() 
local lol = Instance.new("Part") 
lol.Parent = Character 
lol.Shape = "Ball" 
lol.Position = Torso.Position 
lol.Anchored = true 
lol.CanCollide = false 
lol.Size = Vector3.new(1,1,1) 
lol.BrickColor = BrickColor.new("black") 
lol.Reflectance = 1 
lol.CFrame = Torso.CFrame 
local lolmesh = Instance.new("SpecialMesh") 
lolmesh.Parent = lol 
lolmesh.Scale = Vector3.new(0.5,0.5,0.5) 
lolmesh.MeshType = "Sphere"
wait(0)  
local lolweld = Instance.new("Weld") 
lolweld.Parent = lol 
lolweld.Part0 = lol 
lolweld.Part1 = Torso 
lolweld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
lolweld.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
for i = 0, 1, 0.05 do 
wait(0)  
lolmesh.Scale = lolmesh.Scale + Vector3.new(9,9,9) 
lol.Transparency = lol.Transparency + 0.20 
lol.Reflectance = lol.Reflectance - 0.25 
lol.CFrame = Torso.CFrame 
end 
lol:Remove() 
end 
 
function oneslash() 
attack = true 
wait(0)
ss(prt13,0.8) 
local con = prt11.Touched:connect(OT) 
local con2 = prt12.Touched:connect(OT) 
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
end 
 
function twoslash() 
attack = true 
wait(0.1)
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3,0.5*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0.5*i) 
end 
ss(prt13,0.8) 
local con = prt11.Touched:connect(OT) 
local con2 = prt12.Touched:connect(OT) 
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-4*i+3,1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1*i,0) 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
end 
 
function threeslash() 
attack = true 
wait(0.2)
ss(prt13,0.8) 
local con = prt11.Touched:connect(OT) 
local con2 = prt12.Touched:connect(OT) 
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+1,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), math.rad(180)*i, -1.57) * CFrame.new(0, 1, 0) 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
end 
 
function fourslash() 
attack = true 
wait(0.2) 
ss(prt13,0.8) 
local con = prt11.Touched:connect(OT) 
local con2 = prt12.Touched:connect(OT) 
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-4.5*i+2,0,0) 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
end 
 
function fiveslash() 
attack = true 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
wait(0.2) 
ss(prt13,0.8) 
local con = prt11.Touched:connect(OT2) 
local con2 = prt12.Touched:connect(OT2) 
uberweaklightningattack() 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-4*i+3,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
end 
 
function ubersmash() 
if mana >= 10 then 
attack = true 
skill = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.12 do 
wait(0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, 0) * CFrame.new(0, 1, 0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(360)*i, 0) 
end 
wait(0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) 
ss(prt13,0.8) 
local con = prt11.Touched:connect(overOT) 
local con2 = prt12.Touched:connect(overOT) 
mana = mana - 10 
--[[coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,6,0.1 do 
wait() 
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
        local targ = head.Position - p.Position;
        local mag = targ.magnitude;
        if mag <= 6 and hum.Parent.Name ~= "Fenrier" then
        coroutine.resume(coroutine.create(function() 
        for i = 0,3 do 
        wait() 
            hum.Health = hum.Health - 0.2 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(0.2,0.8,0.2) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor="Symmetric"
        S.Size=Vector3.new(1,2,1)
        S.BrickColor=BrickColor.new("New Yeller")
        S.Reflectance = 0.5
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace 
        msh1.Parent = S 
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
        end 
        end)) 
        end
                end
    end
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.2,0.8,0.2) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor="Symmetric"
    S.Size=Vector3.new(1,2,1)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0.5
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S 
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end))]] 
lightningattack() 
for i = 0,1,0.25 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-4.5*i+math.rad(180),0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con:disconnect() 
con2:disconnect() 
skill = false 
attack = false 
end 
end 
 
function spin() 
if mana >= 10 then 
attack = true 
skill = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,-math.rad(90)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local con = prt11.Touched:connect(skillOT) 
local con2 = prt12.Touched:connect(skillOT) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Player.Character.Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
mana = mana - 5 
ss(prt13,0.7) 
weaklightningattack() 
for i = 0 , 1 , 0.075 do 
wait(0)  
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,-math.rad(-360)*i,0) 
effect() 
end 
mana = mana - 5 
ss(prt13,0.7) 
weaklightningattack() 
for i = 1 , 0 , -0.075 do 
wait(0)  
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,-math.rad(-360)+math.rad(-360)*i*i,0) 
effect() 
end 
con:disconnect() 
con2:disconnect() 
for i = 0 , 1 , 0.20 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
vel:Remove() 
attack = false 
skill = false 
end 
end 
 
function attacklol() 
if mana >= 20 then 
attack = true 
skill = true 
wait(0)
ss(prt13,0.8) 
local con = prt11.Touched:connect(weakOT) 
local con2 = prt12.Touched:connect(weakOT) 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
ss(prt13,0.8) 
for i = 0,1,0.1 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-4.5*i+3,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.12 do 
wait(0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, 0) * CFrame.new(0, 1, 0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(360)*i, 0) 
end 
wait(0.4) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) 
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.2 do 
wait(0.4) 
uberweaklightningattack() 
end 
end))
for i = 0 , 5 , 0.07 do 
wait(0)  
effect() 
ss(prt13,0.8) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), math.rad(720)*i, -1.57) * CFrame.new(0, 1, 0) 
end 
con:disconnect() 
con2:disconnect() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
wait(0.5) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
skill = false 
end 
end 
 
function slashy() 
if mana >= 30 then 
attack = true 
skill = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i,math.rad(90)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i,0,0) 
end 
ss(prt13,0.8) 
uberlightningattack() 
local con = prt11.Touched:connect(megatouch) 
local con2 = prt12.Touched:connect(megatouch) 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-3,0,0) 
end 
con:disconnect() 
con2:disconnect() 
wait(0.5) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i-math.rad(90),-math.rad(90)*i+math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.01*i+3-3,0,0) 
end 
attack = false 
skill = false 
end 
end 
 
function cutsceneattack() 
print("lol")
cutscene2 = 0 
attack = true 
skill = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i,math.rad(90)*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i,0,0) 
end 
efect() 
ss(prt13,0.8) 
weaklightningattack() 
function cutsceneOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
if cutscene2 == 0 then 
cutscene2 = 1 
cutscene = true 
print("hai") 
local target = hum.Parent.Torso 
local bodeh = Instance.new("BodyPosition") 
bodeh.Parent = target
bodeh.position = target.Position + Vector3.new(0,15,0) 
bodeh.maxForce = Vector3.new(10000000000000000000,10000000000000000000,10000000000000000000) 
hum.PlatformStand = true 
target = hum.Parent.Torso 
wld1.Parent = nil 
wld1.Part1 = nil 
Character.Humanoid.WalkSpeed = 0 
local bodeh2 = Instance.new("BodyPosition") 
bodeh2.Parent = prt1 
bodeh2.position = target.Position + Vector3.new(0,-5,0) 
--bodeh2.position = target.Position + target.CFrame.lookVector * 5 
bodeh2.maxForce = Vector3.new(10000000000000000000,10000000000000000000,10000000000000000000) 
local bodeh3 = Instance.new("BodyPosition") 
bodeh3.Parent = prt1a 
bodeh3.position = target.Position + Vector3.new(0,-5,0) 
--bodeh3.position = target.Position + target.CFrame.lookVector * 5 
bodeh3.maxForce = Vector3.new(10000000000000000000,10000000000000000000,10000000000000000000) 
local bodeh4 = Instance.new("BodyPosition") 
bodeh4.Parent = prt1b 
bodeh4.position = target.Position + Vector3.new(0,-5,0) 
--bodeh4.position = target.Position + target.CFrame.lookVector * 5 
bodeh4.maxForce = Vector3.new(10000000000000000000,10000000000000000000,10000000000000000000) 
local bodeh5 = Instance.new("BodyPosition") 
bodeh5.Parent = prt2 
bodeh5.position = target.Position + Vector3.new(0,-5,0) 
--bodeh5.position = target.Position + target.CFrame.lookVector * 5 
bodeh5.maxForce = Vector3.new(10000000000000000000,10000000000000000000,10000000000000000000) 
local bodyy = Instance.new("BodyGyro") 
bodyy.Parent = prt11 
bodyy.maxTorque = Vector3.new(0,500,0) 
wait(1) 
bodeh2.position = target.Position + Vector3.new(0,10,0) 
bodeh3.position = target.Position + Vector3.new(0,10,0) 
bodeh4.position = target.Position + Vector3.new(0,10,0) 
bodeh5.position = target.Position + Vector3.new(0,10,0) 
wait(1) 
local clon = prt11:Clone() 
clon.Parent = modelzorz 
clon.Transparency = 0.5 
clon.Mesh.Scale = Vector3.new(1.4, 0.6, 0.2) 
clon.CanCollide = false 
--clon.BodyGyro:Remove() 
local clonbod = Instance.new("BodyPosition") 
clonbod.Parent = clon 
clonbod.position = target.Position + Vector3.new(14,0,0) 
local clon2 = prt11:Clone() 
clon2.Parent = modelzorz 
clon2.Transparency = 0.5 
clon2.Mesh.Scale = Vector3.new(1.4, 0.6, 0.2) 
clon2.CanCollide = false 
--clon2.BodyGyro:Remove() 
local clonbod2 = Instance.new("BodyPosition") 
clonbod2.Parent = clon2 
clonbod2.position = target.Position + Vector3.new(-14,0,0) 
local clon3 = prt11:Clone() 
clon3.Parent = modelzorz 
clon3.Transparency = 0.5 
clon3.Mesh.Scale = Vector3.new(1.4, 0.6, 0.2) 
clon3.CanCollide = false 
--clon3.BodyGyro:Remove() 
local clonbod3 = Instance.new("BodyPosition") 
clonbod3.Parent = clon3 
clonbod3.position = target.Position + Vector3.new(0,0,14) 
local clon4 = prt11:Clone() 
clon4.Parent = modelzorz 
clon4.Transparency = 0.5 
clon4.Mesh.Scale = Vector3.new(1.4, 0.6, 0.2) 
clon4.CanCollide = false 
--clon4.BodyGyro:Remove() 
local clonbod4 = Instance.new("BodyPosition") 
clonbod4.Parent = clon4 
clonbod4.position = target.Position + Vector3.new(0,0,-14) 
cl = true 
cl2 = true 
cl3 = true 
cl4 = true 
wait(0.5) 
local c = clon:Clone() 
c.Parent = modelzorz 
c.Anchored = true 
c.Transparency = 1 
local c2 = clon2:Clone() 
c2.Parent = modelzorz 
c2.Anchored = true 
c2.Transparency = 1 
local c3 = clon3:Clone() 
c3.Parent = modelzorz 
c3.Anchored = true 
c3.Transparency = 1 
local c4 = clon4:Clone() 
c4.Parent = modelzorz 
c4.Anchored = true 
c4.Transparency = 1 
coroutine.resume(coroutine.create(function() 
while true do 
wait(0) 
if cl == true then 
clon.CFrame = clon.CFrame * CFrame.fromEulerAnglesXYZ(0.5,0.5,0) 
end 
if cl2 == true then 
clon2.CFrame = clon2.CFrame * CFrame.fromEulerAnglesXYZ(0.5,0.5,0) 
end 
if cl3 == true then 
clon3.CFrame = clon3.CFrame * CFrame.fromEulerAnglesXYZ(0.5,0.5,0) 
end 
if cl4 == true then 
clon4.CFrame = clon4.CFrame * CFrame.fromEulerAnglesXYZ(0.5,0.5,0) 
end 
end 
end)) 
wait(1) 
Torso.CFrame = Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(180),0) 
wait(1) 
local bod = Instance.new("BodyPosition") 
bod.Parent = Torso 
bod.position = clon.Position 
bod.maxForce = Vector3.new(10000000000000000000,10000000000000000000,10000000000000000000) 
wait(0.3) 
local w = Instance.new("Weld") 
w.Parent = clon 
w.Part0 = LeftArm 
w.Part1 = clon 
w.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) * CFrame.new(0.4,-1, 0) 
wait(0.3) 
bod.position = c2.Position 
wait(0.1) 
target.Anchored = true 
cl = false 
w.Part1 = clon2 
clonbod.position = target.Position 
target.Parent.Humanoid.Health = 80 
wait(1) 
bod.position = c.Position 
wait(0.1) 
target.Anchored = true 
cl2 = false 
w.Part1 = clon3 
clonbod2.position = target.Position 
target.Parent.Humanoid.Health = 60 
bod.position = c3.Position 
wait(0.1) 
target.Anchored = true 
cl3 = false 
w.Part1 = clon3 
clonbod3.position = target.Position 
target.Parent.Humanoid.Health = 40 
wait(0.3) 
bod.position = c4.Position 
wait(0.1) 
target.Anchored = true 
cl4 = false 
w.Part1 = clon4 
clonbod3.position = target.Position 
target.Parent.Humanoid.Health = 20 
wait(0.3) 
bod.position = c3.Position 
wait(0.1) 
target.Anchored = true 
cl4 = false 
w.Part1 = nil
clonbod4.position = target.Position 
target.Parent.Humanoid.Health = 10 
wait(0.3) 
bod.position = prt1.Position 
wait(0.5) 
wld1.Parent = prt1 
wld1.Part1 = LeftArm 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
wait(0.5) 
bod.position = target.Position + Vector3.new(0,-15,0) 
bodeh2:Remove() 
bodeh3:Remove() 
bodeh4:Remove() 
bodeh5:Remove() 
wait(0.1) 
clonbod:Remove() 
clon.Anchored = true 
clonbod2:Remove() 
clon2.Anchored = true 
clonbod3:Remove() 
clon3.Anchored = true 
clonbod4:Remove() 
clon4.Anchored = true 
coroutine.resume(coroutine.create(function() 
for i = 0,1.5,0.05 do 
wait() 
clon.CFrame = clon.CFrame + Vector3.new(0.2,0,0) 
clon2.CFrame = clon2.CFrame + Vector3.new(-0.2,0,0) 
clon3.CFrame = clon3.CFrame + Vector3.new(0,0,0.2) 
clon4.CFrame = clon4.CFrame + Vector3.new(0,0,-0.2) 
clon.Transparency = clon.Transparency + 0.016 
clon2.Transparency = clon2.Transparency + 0.016 
clon3.Transparency = clon3.Transparency + 0.016 
clon4.Transparency = clon4.Transparency + 0.016 
clon.Reflectance = clon.Reflectance - 0.016 
clon2.Reflectance = clon2.Reflectance - 0.016 
clon3.Reflectance = clon3.Reflectance - 0.016 
clon4.Reflectance = clon4.Reflectance - 0.016 
end 
end)) 
target.Parent.Humanoid.Health = 0 
wait(2) 
Character.Humanoid.WalkSpeed = 16 
clon:Remove() 
c:Remove() 
clon2:Remove() 
c2:Remove() 
clon3:Remove() 
c3:Remove() 
clon4:Remove() 
c4:Remove() 
bod:Remove() 
bodeh:Remove() 
bodyy:Remove() 
target.Parent.Humanoid.PlatformStand = false 
target.Anchored = false 
end 
end 
end 
 
local con = prt11.Touched:connect(cutsceneOT) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 200 
for i = 0,1,0.2 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-3,0,0) 
end 
con:disconnect() 
wait(0.2) 
vel:Remove() 
wait(0.5) 
if cutscene == false then
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i-math.rad(90),-math.rad(90)*i+math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.01*i+3-3,0,0) 
end 
end 
attack = false 
skill = false 
end 
 
function pose() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0.28, -1.57) * CFrame.new(0, 1.3, -0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.30,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
 
function ubercharge() 
if mana >= 50 then 
attack = true 
skill = true 
efect() 
ss(prt13,0.8) 
local con = prt11.Touched:connect(megatouch) 
local con2 = prt12.Touched:connect(megatouch) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 250
ss(prt13,0.8) 
lightningattack() 
for i = 0,1,0.1 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i,0,0) 
end 
vel:Remove() 
lightningattack() 
wait(0.5) 
Character.Torso.CFrame = Character.Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(180),0) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 250
ss(prt13,0.8) 
lightningattack() 
for i = 0,1,0.1 do 
wait() 
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-3,0,0) 
end 
vel:Remove() 
lightningattack() 
wait(0.3) 
con:disconnect() 
con2:disconnect() 
skill = false 
attack = false 
end 
end 
 
function throw() 
if mana >= 20 then 
attack = true 
skill = true 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
efect() 
ss(prt13,0.8) 
for i = 0,1,0.3 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1.9*i+math.rad(180),0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local con = prt11.Touched:connect(OT2) 
local con2 = prt12.Touched:connect(OT2) 
Character.Humanoid.WalkSpeed = 0 
for i = 0,1,0.2 do 
wait() 
effect() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 1*i-math.rad(90), 1.57) * CFrame.new(0, 9*i+1, 0) 
end 
wait(0.4) 
wld1.Parent = nil 
prt13.Anchored = true 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 16
con:disconnect() 
con2:disconnect() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), -math.rad(90)+1, 1.57) * CFrame.new(0, 9+1, 0) 
coroutine.resume(coroutine.create(function() 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.7*i+1.9,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
wait(0.7) 
vel:Remove() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
prt13.Anchored = false 
wld1.Parent = prt1 
Character.Humanoid.WalkSpeed = 16 
attack = false 
skill = false 
end 
end 
 
function lightningmode() 
if lightning == true then 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,0) 
end 
lightning = false 
wait(0.7) 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,0) 
end 
else
attack = true 
skill = true 
damage = 10000
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.43*i+math.rad(90),3.14,0) * CFrame.new(0,0,-0.5) 
end 
coroutine.resume(coroutine.create(function() 
lightning = true 
while unsheathed == true and lightning == true do 
wait() 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.2,0.8,0.2) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor="Symmetric"
    S.Size=Vector3.new(1,2,1)
    S.BrickColor=BrickColor.new("black")
    S.Reflectance = 0.5
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=prt13.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1),math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
lightning = false 
end)) 
wait(1) 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,-1*i+1) 
RW.C0 = CFrame.new(1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.50*i+0.43+math.rad(90),3.14,0) * CFrame.new(0,0,-0.5) 
end 
attack = false 
skill = false 
end 
end 
 
function charging() 
charging2 = true 
attack = true 
skill = true 
Character.Humanoid.WalkSpeed = 0 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(3.4*i-math.rad(90), 0, -math.rad(90)) * CFrame.new(0, 0.4*i+1, -0.8*i) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.43*i+math.rad(90),3.14,0) * CFrame.new(0,0,-0.5) 
end 
--[[coroutine.resume(coroutine.create(function() 
wait(4) 
local p = Instance.new("Part") 
p.Parent = game.workspace 
    p.CFrame=Character["Torso"].CFrame* CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
p.Size = Vector3.new(1,1,1) 
p.BrickColor = BrickColor.new("black") 
p.Anchored = true 
p.CanCollide = false 
local me = Instance.new("SpecialMesh") 
me.Parent = p 
me.MeshId = "http://www.roblox.com/asset/?id=3270017" 
me.Scale = Vector3.new(1,1,3) 
p.CFrame = Character.Torso.CFrame*CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
for i=1, 19 do 
p.Mesh.Scale=p.Mesh.Scale+Vector3.new(0.35,0.35,0) 
p.Transparency=p.Transparency+0.05 
wait(0.05)  
end 
p:Remove() 
end 
end))]] 
while charging2 == true do 
wait(0.15) 
    Character.Humanoid.Health = Character.Humanoid.Health + 1
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
        local targ = head.Position - Torso.Position;
        local mag = targ.magnitude;
        if mag <= 6 and c[i].Name ~= Player.Name then
            hum.Health = hum.Health + 1 
        end
                end
    end
    p=Instance.new("Part")
    p.Name="FlameEm"
    p.Shape=0
    p.TopSurface=0
    p.BottomSurface=0
    p.BrickColor=BrickColor.new("black") 
    p.Anchored=true
    p.CanCollide=false
    p.Size=Vector3.new(1,1,1)
    p.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-3,0))+Vector3.new(math.random(-10,10)/5,0,math.random(-10,10)/5)
    p.Parent=workspace 
    m=Instance.new("SpecialMesh")
    m.MeshType="Sphere"
    m.Parent=p
    m.Scale=Vector3.new(1,1,1) 
    coroutine.resume(coroutine.create(function(p) for i=1, 9 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(0,1.5,0) p.Transparency=p.Transparency+1/9  wait(0)  end p.Parent=nil end),p)
end 
if charging2 == false then 
attack = false 
skill = false 
Character.Humanoid.WalkSpeed = 16 
--[[for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(1.57*i-1.57,0,1*i-1) 
RW.C0 = CFrame.new(1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.50*i+0.43+1.57,3.14,0) * CFrame.new(0,0,-0.5) 
end]] 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,-1*i+1) 
RW.C0 = CFrame.new(1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-math.rad(90)*i+math.rad(90),0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-3.4*i+3.4-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.50*i+0.43+math.rad(90),3.14,0) * CFrame.new(0,0,-0.5) 
end 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
end 
end 
 
function flying() 
fly = true 
coroutine.resume(coroutine.create(function() 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(3.4*i-math.rad(90), 0, -math.rad(90)) * CFrame.new(0, 0.4*i+1, 0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.43*i+math.rad(90),3.14,0) * CFrame.new(0,0,-0.5) 
end 
end)) 
p = Instance.new("Part") 
 
p.Parent = Character 
 
p.Locked = true 
 
p.TopSurface = 0 
 
p.BottomSurface = 0 
 
p.CanCollide = false 
 
p.Name = "FlyPart" 
 
p.Transparency = 1 
 
p.formFactor = 0 
 
p.Size = Vector3.new(3,1,3) 
 
coroutine.resume(coroutine.create(function() 
lightning = false
while fly == true do 
wait() 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.2,0.8,0.2) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor="Symmetric"
    S.Size=Vector3.new(1,2,1)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0.5
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=prt13.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1),math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
lightning = false 
end)) 
coroutine.resume(coroutine.create(function() 
lightning = false
while fly == true do 
wait() 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.2,0.8,0.2) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor="Symmetric"
    S.Size=Vector3.new(1,2,1)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0.5
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=prt13.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1),math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
lightning = false 
end)) 
 
w = Instance.new("Weld") 
 
w.Parent = Torso 
 
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
end 
 
function nofly() 
print("lol") 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-3.4+3.4-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
fly = false 
attack = false 
skill = false 
Character.FlyPart:Remove() 
Character.Humanoid.PlatformStand = false 
local c = Character:children() 
for i=1,#c do 
coroutine.resume(coroutine.create(function() 
wait() 
c[i].Transparency = 0
end)) 
end 
local c = Character.Deci:children() 
for i=1,#c do 
coroutine.resume(coroutine.create(function() 
wait() 
c[i].Transparency = 0
end)) 
end 
local c = Character["Green Future"]:children() 
for i=1,#c do 
coroutine.resume(coroutine.create(function() 
wait() 
c[i].Transparency = 0
end)) 
end 
end 
 
function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
if mana < 400 then 
mana = mana + math.random(10000,10000)  
end 
if mana > 400 then 
mana = 400 
end 
end 
 
end 
function skillOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 10000) 
end 
 
end 
 
function weakOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(10000) 
end 
 
end 
 
function guardOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
Character.Humanoid.WalkSpeed = 16 
guardy = false 
 
end 
 
end 
 
function spinOT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 10000) 
if mana < 400 then 
mana = mana + math.random(1,5)  
end 
if mana > 400 then 
mana = 400 
end 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prt1.Position).magnitude<=25 then
local angle = (torso.Position-(prt1.Position+Vector3.new(0,-3,0))).unit
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
 
function overOT(hit) 
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
                        Gyro.P=4000
                        Gyro.D=Gyro.D/2
                        Gyro.maxTorque=Vector3.new(60000,60000,60000)*600000
                        Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                        Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*70+Vector3.new(0,210,0)
bodyVelocity.P=700
bodyVelocity.maxForce=Vector3.new(7e+003, 7e+003, 7e+003)
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
 
function megatouch(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 10000) 
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
 
function boomtouch(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 10000) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
local bewm = Instance.new("Explosion") 
bewm.Parent = workspace
bewm.BlastPressure = 0 
bewm.BlastRadius = 5 
bewm.Position = torso.Position 
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
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:Remove() 
end)) 
end
end
end 
end 
 
function uberweaklightningattack() 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,1,0.1 do 
wait() 
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
        local targ = head.Position - p.Position;
        local mag = targ.magnitude;
        if mag <= 6 and hum.Parent.Name ~= Player.Name then
        coroutine.resume(coroutine.create(function() 
        for i = 0,2 do 
        wait() 
            hum.Health = hum.Health - 0.05 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(0.2,0.8,0.2) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor="Symmetric"
        S.Size=Vector3.new(1,2,1)
        S.BrickColor=BrickColor.new("New Yeller")
        S.Reflectance = 0.5
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace 
        msh1.Parent = S 
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
        end 
        end)) 
        end
                end
    end
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.2,0.8,0.2) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor="Symmetric"
    S.Size=Vector3.new(1,2,1)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0.5
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S 
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end)) 
end 
 
function weaklightningattack() 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,3,0.1 do 
wait() 
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
        local targ = head.Position - p.Position;
        local mag = targ.magnitude;
        if mag <= 6 and hum.Parent.Name ~= Player.Name then
        coroutine.resume(coroutine.create(function() 
        for i = 0,3 do 
        wait() 
            hum.Health = hum.Health - 0.05 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(0.2,0.8,0.2) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor="Symmetric"
        S.Size=Vector3.new(1,2,1)
        S.BrickColor=BrickColor.new("New Yeller")
        S.Reflectance = 0.5
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace 
        msh1.Parent = S 
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
        end 
        end)) 
        end
                end
    end
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.2,0.8,0.2) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor="Symmetric"
    S.Size=Vector3.new(1,2,1)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0.5
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S 
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end)) 
end 
 
function lightningattack() 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,6,0.1 do 
wait() 
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
        local targ = head.Position - p.Position;
        local mag = targ.magnitude;
        if mag <= 6 and hum.Parent.Name ~= Player.Name then
        coroutine.resume(coroutine.create(function() 
        for i = 0,3 do 
        wait() 
            hum.Health = hum.Health - 0.1 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(0.2,0.8,0.2) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor="Symmetric"
        S.Size=Vector3.new(1,2,1)
        S.BrickColor=BrickColor.new("New Yeller")
        S.Reflectance = 0.5
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace 
        msh1.Parent = S 
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
        end 
        end)) 
        end
                end
    end
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.2,0.8,0.2) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor="Symmetric"
    S.Size=Vector3.new(1,2,1)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0.5
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S 
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end)) 
end 
 
function uberlightningattack() 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
local p = prt12:Clone() 
p.Anchored = true 
p.Parent = game.workspace 
p.Transparency = 1 
if lightning == true then 
for i = 0,12,0.1 do 
wait() 
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
        local targ = head.Position - p.Position;
        local mag = targ.magnitude;
        if mag <= 7 and hum.Parent.Name ~= Player.Name then
        coroutine.resume(coroutine.create(function() 
        for i = 0,3 do 
        wait() 
            hum.Health = hum.Health - 0.1 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(0.2,0.8,0.2) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor="Symmetric"
        S.Size=Vector3.new(1,2,1)
        S.BrickColor=BrickColor.new("New Yeller")
        S.Reflectance = 0.5
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=hum.Parent.Torso.CFrame*CFrame.new(math.random(-1,1),math.random(-2,2)*i,math.random(-1,1))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace 
        msh1.Parent = S 
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
        end 
        end)) 
        end
                end
    end
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.2,0.8,0.2) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor="Symmetric"
    S.Size=Vector3.new(1,2,1)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0.5
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=p.CFrame*CFrame.new(math.random(-0.7,0.7),math.random(-1,1)*i,math.random(-0.7,0.7))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=modelzorz
    msh1.Parent = S 
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end 
p:Remove() 
end)) 
end 
 
function ss(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=45885030" 
SlashSound.Parent = parent 
SlashSound.Volume = 1 
SlashSound.Pitch = 1
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
function fss(parent,pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209908" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
 
 
function effect() 
local clone = prt11:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Transparency = 0.5 
clone.Reflectance = 0 
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
if demondance == true then 
clone.BrickColor = BrickColor.new("Bright red") 
else 
clone.BrickColor = BrickColor.new("New Yeller") 
end 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
clone.Parent = nil 
end)) 
local cloneb = prt12:clone() 
cloneb.Parent = workspace 
cloneb.Anchored = true 
cloneb.Transparency = 0.5 
cloneb.Reflectance = 0 
cloneb.Mesh.Scale = cloneb.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
if demondance == true then 
cloneb.BrickColor = BrickColor.new("Bright red") 
else 
cloneb.BrickColor = BrickColor.new("New Yeller") 
end 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
cloneb.Parent = nil 
end)) 
end 
 
hold = false 
 
function ob1d(mouse) 
hold = true 
if fly == false then 
if hold == true then 
oneslash() 
end 
if hold == true then 
twoslash() 
end 
if hold == true then 
threeslash() 
end 
if hold == true then 
fourslash() 
end 
if hold == true then 
fiveslash() 
end 
wait(1) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
else 
while hold == true do 
wait() 
coroutine.resume(coroutine.create(function() 
for i = 0 ,1 , 0.05 do 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90)*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 ,1 , 0.05 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0,3.14,0) * CFrame.new(0,0,-0.5) 
end 
end)) 
Character.Humanoid.PlatformStand = true 
 
bv.velocity = mouse.Hit.lookVector * 40 
 
bg.cframe = CFrame.new(bg.Parent.Position, mouse.Hit.p) 
end 
coroutine.resume(coroutine.create(function() 
for i = 0 ,1 , 0.05 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(math.rad(90),3.14,0) * CFrame.new(0,0,-0.5) 
end 
end)) 
bv.velocity = mouse.Hit.lookVector * 0 
end 
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function key(key) 
if attack == true then return end 
if key == "q" then 
ubersmash() 
end 
if key == "e" then 
spin() 
end 
if key == "r" then 
attacklol() 
end 
if key == "t" then 
slashy() 
end 
if key == "f" then 
lightningmode() 
end 
if key == "g" then 
charging() 
end 
if key == "z" then 
ubercharge() 
end 
if key == "x" then 
throw() 
end 
if key == "h" then 
if fly == false then 
flying() 
else 
nofly() 
end 
end 
if key == "j" then  
cutsceneattack()  
end 
if key == "k" then 
pose() 
end 
end 
 
function key2(key) 
charging2 = false 
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
guardy = false 
hideanim() 
chargy = mana 
guardy = false 
Character.Humanoid.WalkSpeed = 16 
wait(0.1) 
prt11.BrickColor = bladecolor 
prt12.BrickColor = bladecolor 
if demonmode == true then
demondance = false 
demonmode = false 
mana = 0 
wait(0)  
mana = chargy 
end 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
function onRunning(speed)
if skill == true then return end 
if mode == 0 then 
    if speed>0 then 
walking = true 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
if attack == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
    else 
walking = false 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.8*i-0.8,0,0) 
if attack == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.8*i-0.8,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
    end 
end 
end 
Character.Humanoid.Running:connect(onRunning) 
wait(1) 
Player.Backpack["Deci"].TextureId = "http://www.roblox.com/asset/?id=32382461"
while true do 
wait(0)  
fentext2.Size = UDim2.new(mana*0.007,0,0.400000006,0)
fentext.Text = "Mana("..mana..")" 
end 
-- lego blockland This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2011 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]]
 
