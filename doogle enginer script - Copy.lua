local hop = Instance.new("HopperBin") 
script.Parent = hop 

for i, v in pairs(game:service("Players").LocalPlayer.Backpack:children()) do 
if v.className == "HopperBin" and v.Name == "Spanner" then 
v:remove() 
end 
end 
bin = Instance.new("HopperBin") 
bin.Name = "Spanner" 
bin.Parent = game:service("Players").LocalPlayer.Backpack 

local players = game:service("Players") 
local character = players.LocalPlayer.Character 
local char = players.LocalPlayer.Character 
local Torsoz = char:findFirstChild("Torso") 
local RA = char:findFirstChild("Right Arm") 
local LA = char:findFirstChild("Left Arm") 
local RL = char:findFirstChild("Right Leg") 
local LL = char:findFirstChild("Left Leg") 
local H = char:findFirstChild("Head") 
local Hum = char:findFirstChild("Humanoid") 
local RS = Torsoz:findFirstChild("Right Shoulder") 
local LS = Torsoz:findFirstChild("Left Shoulder") 
local RH = Torsoz:findFirstChild("Right Hip") 
local LH = Torsoz:findFirstChild("Left Hip") 
local N = Torsoz:findFirstChild("Neck") 
local GuiTable = {} 
local Spanner 
local Crowbar 
local Joint1 
local TurretGui 
local HealthPackGui 
local SmokeGenGui 
local TypeGui 
local ModeGui 
local WorkNum = 0 
local Turrets = {} 
local MaxTurrets = 3 
local HealthPacks = {} 
local MaxHealthPacks = 3 
local SmokeGens = {} 
local MaxSmokeGens = 3 
local SpannerModes = {"Turret", "Health Pack", "Smoke Gen"} 
local CrowbarModes = {"Smack", "Destroy"} 
local ModeNum = 1 
local Animating = false 
local Building = false 
local Mode = "Turret" 
local Type = "Spanner" 

function Stats() 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "Stats" then 
v:remove() 
end 
end 
local m = Instance.new("Model", char) 
m.Name = "Stats" 
local team = Instance.new("StringValue", m) 
team.Name = "Team" 
team.Value = "Deep blue" 
end 
Stats() 

function GUI(ins) 
if ins == "Hide" then 
for i, v in pairs(players.LocalPlayer.PlayerGui:children()) do 
if v.className == "ScreenGui" and v.Name == "StatsGui" then 
v:remove() 
end 
end 
elseif ins == "Show" then 
GuiTable = {} 
for i, v in pairs(players.LocalPlayer.PlayerGui:children()) do 
if v.className == "ScreenGui" and v.Name == "StatsGui" then 
v:remove() 
end 
end 
local g = Instance.new("ScreenGui", players.LocalPlayer.PlayerGui) 
g.Name = "StatsGui" 
local f = Instance.new("Frame", g) 
f.Position = UDim2.new(0.375,0,0,0) 
f.Size = UDim2.new(0.25,0,0.15,0) 
f.BackgroundColor3 = Color3.new(0,0,0) 
f.BorderColor = BrickColor.new(char.Stats.Team.Value) 
table.insert(GuiTable, f) 
for i = 0, 2 do 
local f2 = Instance.new("Frame", f) 
f2.Name = "Frame"..i+1 
f2.Position = UDim2.new((1/3)*i,0,0,0) 
f2.Size = UDim2.new(1/3,0,0.5,0) 
f2.BackgroundColor3 = Color3.new(0,0,0) 
f2.BorderColor = BrickColor.new(char.Stats.Team.Value) 
table.insert(GuiTable, f2) 
end 
for i = 0, 2 do 
local t = Instance.new("TextLabel", f:findFirstChild("Frame"..i+1)) 
t.Size = UDim2.new(0.5,0,1,0) 
t.Position = UDim2.new(0.5,0,0,0) 
t.BackgroundColor3 = Color3.new(0,0,0) 
t.BorderColor = BrickColor.new(char.Stats.Team.Value) 
t.TextColor3 = Color3.new(0.8,0.8,0.8) 
t.TextStrokeColor3 = BrickColor.new(char.Stats.Team.Value).Color
t.TextStrokeTransparency = 0 
t.Text = i 
t.Font = 2 
t.FontSize = 6 
table.insert(GuiTable, t) 
local f3 = Instance.new("Frame", f:findFirstChild("Frame"..i+1)) 
f3.Size = UDim2.new(0.5,0,1,0) 
f3.BackgroundColor3 = Color3.new(0,0,0) 
f3.BorderColor = BrickColor.new(char.Stats.Team.Value) 
table.insert(GuiTable, f3) 
local im = Instance.new("ImageLabel", f3) 
im.Size = UDim2.new(0.8,0,0.75,0) 
im.Position = UDim2.new(0.1,0,0.1,0) 
im.BorderSizePixel = 0 
im.BackgroundColor3 = Color3.new(0,0,0) 
im.BorderColor = BrickColor.new(char.Stats.Team.Value) 
table.insert(GuiTable, im) 
if i == 0 then 
TurretGui = t 
im.Image = "http://www.roblox.com/asset/?id=92010919"
t.Text = #Turrets.."/"..MaxTurrets 
elseif i == 1 then 
HealthPackGui = t
im.Image = "http://www.roblox.com/asset/?id=92009935" 
--- new: 92009935
--- old: 51393782
t.Text = #HealthPacks.."/"..MaxHealthPacks 
elseif i == 2 then 
SmokeGenGui = t 
im.Image = "http://www.roblox.com/asset/?id=30512117"
--- round smoke: 31727915
--- blue smoke: 30512117
--- red smoke: 4571186
t.Text = #SmokeGens.."/"..MaxSmokeGens 
end 
local t2 = t:Clone() 
t2.Parent = t.Parent 
t2.Text = "=" 
t2.Position = UDim2.new(0,0,0,0) 
t2.Size = UDim2.new(1,0,1,0) 
t2.BackgroundTransparency = 1 
table.insert(GuiTable, t2) 
end 

for i = 0, 1 do 
local t = Instance.new("TextLabel", f) 
t.Size = UDim2.new(0.5,0,0.5,0) 
t.Position = UDim2.new(0.5*i,0,0.5,0) 
t.BackgroundColor3 = Color3.new(0,0,0) 
t.BackgroundTransparency = 1 
t.BorderColor = BrickColor.new(char.Stats.Team.Value) 
t.TextColor3 = Color3.new(0.8,0.8,0.8) 
t.TextStrokeColor3 = BrickColor.new(char.Stats.Team.Value).Color
t.TextStrokeTransparency = 0 
t.BorderSizePixel = 0 
if i == 0 then 
t.Text = "Type: "..Type 
TypeGui = t 
else 
t.Text = "Mode: "..Mode
ModeGui = t 
end 
t.Font = 2 
t.FontSize = 5 
table.insert(GuiTable, t) 
end 

for i = 0, 1 do 
local t = Instance.new("TextLabel", f) 
t.Size = UDim2.new(1,0,0.25,0) 
t.Position = UDim2.new(0,0,0.5+(0.25*i),0) 
t.BackgroundColor3 = Color3.new(0,0,0) 
t.BorderColor = BrickColor.new(char.Stats.Team.Value) 
t.TextColor3 = Color3.new(0.8,0.8,0.8) 
t.TextStrokeColor3 = BrickColor.new(char.Stats.Team.Value).Color
t.TextStrokeTransparency = 0 
t.BackgroundTransparency = 1 
if i == 0 then 
t.Text = [[/\]] 
else 
t.Text = [[\/]] 
end 
t.Font = 2 
t.FontSize = 6 
table.insert(GuiTable, t) 
end 

local t = Instance.new("TextLabel", f) 
t.Size = UDim2.new(1,0,0.25,0) 
t.Position = UDim2.new(0,0,1,0) 
t.BackgroundColor3 = Color3.new(0,0,0) 
t.BorderColor = BrickColor.new(char.Stats.Team.Value) 
t.BackgroundTransparency = 0 
t.Text = "" 
table.insert(GuiTable, t) 
local t = Instance.new("TextLabel", f) 
t.Size = UDim2.new(0,0,0.125,0) 
t.Position = UDim2.new(0,0,1+(0.125/2),0) 
t.BackgroundColor3 = Color3.new(0,0.75,0.1) 
t.BorderColor = BrickColor.new(char.Stats.Team.Value) 
t.BackgroundTransparency = 0 
t.Text = "" 
CentGui = t 
table.insert(GuiTable, t) 
local t = Instance.new("TextLabel", f) 
t.Size = UDim2.new(1,0,0.25,0) 
t.Position = UDim2.new(0,0,1,0) 
t.BackgroundColor3 = Color3.new(0,0,0) 
t.BorderColor = BrickColor.new(char.Stats.Team.Value) 
t.TextColor3 = Color3.new(0.8,0.8,0.8) 
t.TextStrokeColor3 = BrickColor.new(char.Stats.Team.Value).Color
t.TextStrokeTransparency = 0 
t.BackgroundTransparency = 1 
t.Font = 2 
t.FontSize = 5 
t.Text = "" 
CentGuiText = t 
table.insert(GuiTable, t) 


end 
end 

function Part(parent, name, colour, anc, col, size, ptype) 
name = name or "Part" 
colour = colour or "Medium stone grey" 
anc = anc or false 
col = col or false 
size = size or Vector3.new(0.5,0.5,0.5) 
ptype = ptype or "Part" 
local P 
if ptype == "Part" then 
P = Instance.new("Part", parent) 
P.formFactor = "Custom" 
elseif ptype == "CornerWedgePart" then 
P = Instance.new("CornerWedgePart", parent) 
end 
P.Anchored = anc 
P.CanCollide = col 
P.Name = name 
P.Size = size
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 
P.BrickColor = BrickColor.new(colour) 
return P
end 
function Weld(par, p0, p1, c0, c1) 
c0 = c0 or CFrame.new(0,0,0) 
c1 = c1 or CFrame.new(0,0,0) 
local W = Instance.new("Motor", par) 
W.Part0 = p0 
W.Part1 = p1 
W.C0 = c0 
W.C1 = c1 
return W 
end 

function Build(team) 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "TeamSuit" then 
v:remove() 
end 
end 
local mdl = Instance.new("Model", char) 
mdl.Name = "TeamSuit" 
team = team or "Black" 

local p = Part(mdl, "Belt", "Brown") 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(4.5,0.8,2.5) 
Weld(p, Torsoz, p, CFrame.new(0,-1,0)) 
local p = Part(mdl, "Strap", "Brown") 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(5.7,0.8,2.5) 
Weld(p, Torsoz, p, CFrame.new(0,0,0) * CFrame.Angles(0,0,math.pi/4)) 
local p = Part(mdl, "Strap", "Brown") 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(5.7,0.8,2.5) 
Weld(p, Torsoz, p, CFrame.new(0,0,0) * CFrame.Angles(0,0,-math.pi/4)) 
local p = Part(mdl, "TBelt", team) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(4.2,0.35,2.55) 
Weld(p, Torsoz, p, CFrame.new(0,-1,0)) 
local p = Part(mdl, "TStrap", team) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(5.6,0.35,2.55) 
Weld(p, Torsoz, p, CFrame.new(-0.03,-0.03,0) * CFrame.Angles(0,0,math.pi/4)) 
local p = Part(mdl, "TStrap", team) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(5.6,0.35,2.55) 
Weld(p, Torsoz, p, CFrame.new(0.03,-0.03,0) * CFrame.Angles(0,0,-math.pi/4)) 

local p = Part(mdl, "Buckle", "Black") 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.75,0.85,0.58) 
Weld(p, Torsoz, p, CFrame.new(0,-1,-0.5)) 

----------------------------------------------------------------------------------------------
----------------------------------- LIMBS -------------------------------------------------
----------------------------------------------------------------------------------------------

------ Torso ------
local p = Part(mdl, "TorsoTC", team) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(4.05,4.05,2.05) 
Weld(p, Torsoz, p, CFrame.new(0,0,0)) 

----------------------------------------------------------------------------------------------
----------------------------------- TOOLS -------------------------------------------------
----------------------------------------------------------------------------------------------
local p = Part(mdl, "Spanner") 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshId = "http://www.roblox.com/asset/?id=16884681" 
mesh.TextureId = "http://www.roblox.com/asset/?id=16884673" 
mesh.Scale = Vector3.new(0.6,0.6,0.6) 
Weld(p, Torsoz, p, CFrame.new(1.06,-1.15,0) * CFrame.Angles(math.pi/4,0,0)) 
Spanner = p 

local p = Part(mdl, "Crowbar") 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshId = "http://www.roblox.com/asset/?id=21426303" 
mesh.TextureId = "http://www.roblox.com/asset/?id=8953043" 
mesh.Scale = Vector3.new(0.6,0.6,0.6) 
Weld(p, Torsoz, p, CFrame.new(0,-0.3,0.5) * CFrame.Angles(math.pi/2,math.pi-0.4,0)) 
Crowbar = p 

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

Torsoz.Transparency = 0 
RA.Transparency = Torsoz.Transparency 
LA.Transparency = Torsoz.Transparency 
RL.Transparency = Torsoz.Transparency 
LL.Transparency = Torsoz.Transparency 
H.Transparency = Torsoz.Transparency 

end 
Build(char.Stats.Team.Value) 

function UpdateGui() 
TypeGui.Text = "Type: "..Type 
ModeGui.Text = "Mode: "..Mode 
TurretGui.Text = #Turrets.."/"..MaxTurrets 
HealthPackGui.Text = #HealthPacks.."/"..MaxHealthPacks 
SmokeGenGui.Text = #SmokeGens.."/"..MaxSmokeGens 
end 

function Stand() 
Joint1.DesiredAngle = 0.7 
Spanner.Motor.C0 = CFrame.new(15/13,-1.5+(15/30),0) * CFrame.Angles(0,math.pi/2,0) * CFrame.Angles((math.pi/1.5)-(15/7),0,0) * CFrame.new(0,0,-0.7) 
Hum.PlatformStand = false 
Hum.WalkSpeed = 16 
for i, v in pairs(Torsoz:children()) do 
if v.className == "Motor" and (v.Name == "RightBottom" or v.Name == "LeftBottom" or v.Name == "LeftTop") then
v:remove() 
elseif v.Name == "CrouchBGP" and (v.className == "BodyPosition" or v.className == "BodyGyro") then 
v:remove() 
end 
end 
RH.Part0 = Torsoz 
RH.Part1 = RL 
RH.Parent = Torsoz 
LH.Part0 = Torsoz 
LH.Part1 = LL 
LH.Parent = Torsoz 
LS.Part0 = Torsoz 
LS.Part1 = LA 
LS.Parent = Torsoz 
Animating = false 
end 

function CrouchToBuild(mouse) 
Animating = true 
Hum.WalkSpeed = 0 
Hum.PlatformStand = true 
RH.Part0 = nil 
LH.Part0 = nil 
LS.Part0 = nil 
local joint3 = Instance.new("Motor", Torsoz) 
joint3.Name = "RightBottom" 
joint3.Part0 = Torsoz 
joint3.Part1 = RL 
joint3.C0 = CFrame.new(0.5,-1.3,0.7) * CFrame.Angles((math.pi/2)+0.25,0,0) 
local joint4 = Instance.new("Motor", Torsoz) 
joint4.Name = "LeftBottom" 
joint4.Part0 = Torsoz 
joint4.Part1 = LL 
joint4.C0 = CFrame.new(-0.5,-0.7,-0.8) * CFrame.Angles(0.4,0,0) 
local joint2 = Instance.new("Motor", Torsoz) 
joint2.Name = "LeftTop" 
joint2.Part0 = Torsoz 
joint2.Part1 = LA 
joint2.C0 = CFrame.new(-1.3,0,-0.5) * CFrame.Angles(0.8,0,0.22) 
local bp = Instance.new("BodyPosition", Torsoz) 
bp.Name = "CrouchBGP" 
bp.maxForce = Vector3.new(1/0,1/0,1/0) 
bp.position = Torsoz.Position + Vector3.new(0,-1.3,0) 
local bg = Instance.new("BodyGyro", Torsoz) 
bg.maxTorque = Vector3.new(1/0,1/0,1/0) 
bg.Name = "CrouchBGP" 
bg.D = 100 
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) * CFrame.Angles(-0.25,0,0) 
Spanner.Motor.C0 = Spanner.Motor.C0 * CFrame.new(0.3,-0.3,0.3) * CFrame.Angles(math.pi/6,0.3,0) 
Joint1.DesiredAngle = 0.9 
end

function BuildHealthPack(mouse, enz) 
local WNum = WorkNum 
CrouchToBuild(mouse) 
local mo = Instance.new("Model", char.Stats) 
mo.Name = "HealthPack" 
local posi = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
local Main = Part(mo, "BlackCircleSpawnerPoint", "Really black", true) 
Main.CFrame = CFrame.new(Torsoz.Position.x,enz.y,Torsoz.Position.z) + posi.lookVector*4.5 
local mesh = Instance.new("CylinderMesh", Main) 
mesh.Scale = Vector3.new(8,0.3,8) 
wait(0.3) 
local Count = 0 
local p = Part(mo, "Center", "Black", true, false, Vector3.new(2,1.2,2.6)) 
p.CFrame = Main.CFrame 
p.Transparency = 1 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0,0,0) 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
mesh.Scale = mesh.Scale + Vector3.new(0.05,0.05,0.05) 
p.CFrame = p.CFrame + Vector3.new(0,0.1,0) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/80),0,0.125,0) 
CentGuiText.Text = math.floor((Count/80*100)) .. "%" 
wait(0.017) 
end 
p.Transparency = 0 
local p2 = Part(mo, "Side1", char.Stats.Team.Value, true, false, Vector3.new(2.2,1.4,0.5)) 
p2.CFrame = p.CFrame 
p2.Transparency = 1 
local mesh = Instance.new("SpecialMesh", p2) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0,0.5,0) 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
mesh.Scale = mesh.Scale + Vector3.new(0.05,0.025,0.05) 
p2.CFrame = p2.CFrame + Vector3.new(0,0,0.04) 
p2.Transparency = p2.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/80),0,0.125,0) 
CentGuiText.Text = math.floor((Count/80*100)) .. "%" 
wait(0.017) 
end 
p2.Transparency = 0 
local p2 = Part(mo, "Side2", char.Stats.Team.Value, true, false, Vector3.new(2.2,1.4,0.5)) 
p2.CFrame = p.CFrame 
p2.Transparency = 1 
local mesh = Instance.new("SpecialMesh", p2) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0,0.5,0) 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
mesh.Scale = mesh.Scale + Vector3.new(0.05,0.025,0.05) 
p2.CFrame = p2.CFrame + Vector3.new(0,0,-0.04) 
p2.Transparency = p2.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/80),0,0.125,0) 
CentGuiText.Text = math.floor((Count/80*100)) .. "%" 
wait(0.017) 
end 
p2.Transparency = 0 
local d = Instance.new("Decal", p) 
d.Face = "Top" 
d.Texture = "http://www.roblox.com/asset/?id=92009935" 
d.Transparency = 1 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
d.Transparency = d.Transparency - 0.04 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/80),0,0.125,0) 
CentGuiText.Text = math.floor((Count/80*100)) .. "%" 
wait(0.017) 
end 

if Count == 80 then 
table.insert(HealthPacks, mo) 
HealthPackGui.TextStrokeColor3 = Color3.new(0,1,0) 
HealthPackGui.TextColor = BrickColor.new("Really black") 
else 
mo:remove() 
end 

Stand() 

CentGui.Size = UDim2.new(0,0,0.125,0) 
CentGuiText.Text = "" 
UpdateGui() 
Main:remove() 

end 

function UpdateHealthBox(box) 
local center = box:findFirstChild("Center") 
local side1 = box:findFirstChild("Side1") 
local side2 = box:findFirstChild("Side2") 
center.CFrame = center.CFrame * CFrame.Angles(0,(math.pi*2)/90,0) 
side1.CFrame = center.CFrame * CFrame.new(0,0,0.04*20) 
side2.CFrame = center.CFrame * CFrame.new(0,0,-0.04*20) 
end 

function BuildSmokeGen(mouse, enz) 
local WNum = WorkNum 
CrouchToBuild(mouse) 
local mo = Instance.new("Model", char.Stats) 
mo.Name = "SmokeGen" 
local posi = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
local Main = Part(mo, "BlackCircleSpawnerPoint", "Really black", true) 
Main.CFrame = CFrame.new(Torsoz.Position.x,enz.y,Torsoz.Position.z) + posi.lookVector*5.75 
local mesh = Instance.new("CylinderMesh", Main) 
mesh.Scale = Vector3.new(13.2,0.3,13.2) 
wait(0.3) 
local Count = 0 
local p = Part(mo, "Center", "Black", true, false, Vector3.new(2.2,2.2,2.2)) 
p.CFrame = Main.CFrame 
p.Shape = "Ball" 
p.Transparency = 1 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0,0,0) 
local s = Instance.new("Smoke", p) 
s.Enabled = false 
s.Color = BrickColor.new(char.Stats.Team.Value).Color 
s.Size = 13
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
mesh.Scale = mesh.Scale + Vector3.new(0.05,0.05,0.05) 
p.CFrame = p.CFrame + Vector3.new(0,0.21,0) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/180),0,0.125,0) 
CentGuiText.Text = math.floor((Count/180*100)) .. "%" 
wait(0.012) 
end 
p.Transparency = 0 
p.CFrame = Main.CFrame + Vector3.new(0,5.45,0) 
local p = Part(mo, "Corner1", "Black", true, false, Vector3.new(2,8,2), "CornerWedgePart") 
p.CFrame = Main.CFrame + Vector3.new(0,-4,0) 
p.Transparency = 1 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
p.CFrame = p.CFrame + Vector3.new(-0.05,0.4,0.05) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/180),0,0.125,0) 
CentGuiText.Text = math.floor((Count/180*100)) .. "%" 
wait(0.012) 
end 
p.Transparency = 0 
local p = Part(mo, "Corner2", char.Stats.Team.Value, true, false, Vector3.new(2,8,2), "CornerWedgePart") 
p.CFrame = Main.CFrame + Vector3.new(0,-4,0) 
p.Transparency = 1 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
p.CFrame = p.CFrame + Vector3.new(0,0.4,0.075) 
p.CFrame = p.CFrame * CFrame.Angles(0,(math.pi/4)/20,0) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/180),0,0.125,0) 
CentGuiText.Text = math.floor((Count/180*100)) .. "%" 
wait(0.012) 
end 
p.Transparency = 0 
local p = Part(mo, "Corner3", "Black", true, false, Vector3.new(2,8,2), "CornerWedgePart") 
p.CFrame = Main.CFrame + Vector3.new(0,-4,0) 
p.Transparency = 1 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
p.CFrame = p.CFrame + Vector3.new(0.05,0.4,0.05) 
p.CFrame = p.CFrame * CFrame.Angles(0,(math.pi/2)/20,0) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/180),0,0.125,0) 
CentGuiText.Text = math.floor((Count/180*100)) .. "%" 
wait(0.012) 
end 
p.Transparency = 0 
local p = Part(mo, "Corner4", char.Stats.Team.Value, true, false, Vector3.new(2,8,2), "CornerWedgePart") 
p.CFrame = Main.CFrame + Vector3.new(0,-4,0) 
p.Transparency = 1 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
p.CFrame = p.CFrame + Vector3.new(0.075,0.4,0) 
p.CFrame = p.CFrame * CFrame.Angles(0,(math.pi*0.75)/20,0) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/180),0,0.125,0) 
CentGuiText.Text = math.floor((Count/180*100)) .. "%" 
wait(0.012) 
end 
p.Transparency = 0 
local p = Part(mo, "Corner5", "Black", true, false, Vector3.new(2,8,2), "CornerWedgePart") 
p.CFrame = Main.CFrame + Vector3.new(0,-4,0) 
p.Transparency = 1 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
p.CFrame = p.CFrame + Vector3.new(0.05,0.4,-0.05) 
p.CFrame = p.CFrame * CFrame.Angles(0,math.pi/20,0) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/180),0,0.125,0) 
CentGuiText.Text = math.floor((Count/180*100)) .. "%" 
wait(0.012) 
end 
p.Transparency = 0 
local p = Part(mo, "Corner6", char.Stats.Team.Value, true, false, Vector3.new(2,8,2), "CornerWedgePart") 
p.CFrame = Main.CFrame + Vector3.new(0,-4,0) 
p.Transparency = 1 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
p.CFrame = p.CFrame + Vector3.new(0,0.4,-0.075) 
p.CFrame = p.CFrame * CFrame.Angles(0,(math.pi*1.25)/20,0) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/180),0,0.125,0) 
CentGuiText.Text = math.floor((Count/180*100)) .. "%" 
wait(0.012) 
end 
p.Transparency = 0 
local p = Part(mo, "Corner7", "Black", true, false, Vector3.new(2,8,2), "CornerWedgePart") 
p.CFrame = Main.CFrame + Vector3.new(0,-4,0) 
p.Transparency = 1 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
p.CFrame = p.CFrame + Vector3.new(-0.05,0.4,-0.05) 
p.CFrame = p.CFrame * CFrame.Angles(0,-(math.pi/2)/20,0) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/180),0,0.125,0) 
CentGuiText.Text = math.floor((Count/180*100)) .. "%" 
wait(0.012) 
end 
p.Transparency = 0 
local p = Part(mo, "Corner8", char.Stats.Team.Value, true, false, Vector3.new(2,8,2), "CornerWedgePart") 
p.CFrame = Main.CFrame + Vector3.new(0,-4,0) 
p.Transparency = 1 
for i = 1, 20 do 
if WNum ~= WorkNum then 
break 
end 
p.CFrame = p.CFrame + Vector3.new(-0.075,0.4,0) 
p.CFrame = p.CFrame * CFrame.Angles(0,(-math.pi/4)/20,0) 
p.Transparency = p.Transparency - 0.05 
Count = Count + 1 
CentGui.Size = UDim2.new((Count/180),0,0.125,0) 
CentGuiText.Text = math.floor((Count/180*100)) .. "%" 
wait(0.012) 
end 
p.Transparency = 0 
s.Enabled = true 

if Count == 180 then 
table.insert(SmokeGens, mo) 
SmokeGenGui.TextStrokeColor3 = Color3.new(0,1,0) 
SmokeGenGui.TextColor = BrickColor.new("Really black") 
else 
mo:remove() 
end 

Stand() 

CentGui.Size = UDim2.new(0,0,0.125,0) 
CentGuiText.Text = "" 
UpdateGui() 
Main:remove() 

end 

function onButton1Down(mouse) 
if Building == false and Animating == false then 
if Type == "Spanner" then 
WorkNum = math.random() 
local ray = Ray.new(Torsoz.Position, CFrame.new(Torsoz.Position, Torsoz.Position+Vector3.new(0,-1,0)).lookVector*4) 
local hitz, enz = workspace:FindPartOnRay(ray, char) 
if hitz ~= nil then 
if Mode == "Turret" then 
--BuildTurret() 
elseif Mode == "Health Pack" then 
if #HealthPacks < MaxHealthPacks then 
BuildHealthPack(mouse, enz) 
end 
elseif Mode == "Smoke Gen" then 
if #SmokeGens < MaxSmokeGens then 
BuildSmokeGen(mouse, enz) 
end 
end 
end 
elseif Type == "Crowbar" then 
if Mode == "Smack" then 
--CrowbarSmack() 
elseif Mode == "Destroy" then 
end 
end 
end 
end 

function onButton1Up() 
WorkNum = math.random() 
end 

function onKeyDown(key, mouse) 
if key ~= nil then 
key:lower() 
if key == "e" then 
if Animating == false then 
Unequip() 
if Type == "Spanner" then 
Type = "Crowbar" 
ModeNum = 1 
Mode = CrowbarModes[ModeNum] 
else 
Type = "Spanner" 
ModeNum = 1 
Mode = SpannerModes[ModeNum] 
end 
TypeGui.TextStrokeColor3 = Color3.new(0,1,0) 
TypeGui.TextColor = BrickColor.new("Really black") 
ModeGui.TextStrokeColor3 = Color3.new(0,1,0) 
ModeGui.TextColor = BrickColor.new("Really black") 
UpdateGui() 
Equip() 
end 

elseif key == "q" then 
if Animating == false then 
ModeNum = ModeNum + 1 
if Type == "Spanner" then 
if ModeNum > #SpannerModes then 
ModeNum = 1 
end 
Mode = SpannerModes[ModeNum] 
elseif Type == "Crowbar" then 
if ModeNum > #CrowbarModes then 
ModeNum = 1 
end 
Mode = CrowbarModes[ModeNum] 
end 
ModeGui.TextStrokeColor3 = Color3.new(0,1,0) 
ModeGui.TextColor = BrickColor.new("Really black") 
UpdateGui() 
end 

elseif key == "z" then 
UpdateGui() 
end 
end 
end 

function Equip() 
Animating = true 
if Type == "Spanner" then 
RS.Part0 = nil 
local joint = Instance.new("Motor", Torsoz) 
joint.Name = "RightTop" 
joint.Part0 = Torsoz 
joint.Part1 = RA 
joint.C1 = CFrame.new(0,0.5,0) 
Joint1 = joint 
Spanner.Motor.Part0 = RA
Spanner.Motor.C0 = CFrame.new(0,-1.6,0) * CFrame.Angles(0,math.pi/2,0) * CFrame.Angles(math.pi/3,0,0)
joint.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
joint.MaxVelocity = 0.08
joint.DesiredAngle = -0.3 
wait(0.15) 
Spanner.Motor.C0 = CFrame.new(0,-1.6,0) * CFrame.Angles(0,math.pi/2,0) * CFrame.Angles(math.pi/1.5,0,0) 
joint.DesiredAngle = 0.7 
wait(0.3) 
for i = 1, 15 do 
Spanner.Motor.C0 = CFrame.new((i/13),-1.5+(i/30),0) * CFrame.Angles(0,math.pi/2,0) * CFrame.Angles((math.pi/1.5)-(i/7),0,0)
wait(0.012) 
end 
for i = 1, 7 do 
Spanner.Motor.C0 = Spanner.Motor.C0 * CFrame.new(0,0,-0.1) 
wait(0.015) 
end 
elseif Type == "Crowbar" then 
RS.Part0 = nil 
local joint = Instance.new("Motor", Torsoz) 
joint.Name = "RightTop" 
joint.Part0 = Torsoz 
joint.Part1 = RA 
joint.C1 = CFrame.new(0,0.5,0) 
joint.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
Joint1 = joint 
joint.MaxVelocity = 0.3 
joint.DesiredAngle = math.pi+0.2 
wait(0.38) 
Crowbar.Motor.Part0 = RA 
Crowbar.Motor.C0 = CFrame.new(0,-1,0) 
joint.MaxVelocity = 0.14 
joint.DesiredAngle = 0.9 
for i = 1, 20 do 
Crowbar.Motor.C0 = CFrame.new(0,-1,0) * CFrame.Angles(0,-((math.pi*4.5)/20)*i,0) 
wait(0.017) 
end 
Crowbar.Motor.C0 = CFrame.new(0,-1.14,0) * CFrame.Angles(math.pi/2,0,0) * CFrame.Angles(0,(math.pi/1.75),0) 
end 
Animating = false 
end 

function Unequip() 
Animating = true 
if Type == "Spanner" then 
for i = 1, 7 do 
Spanner.Motor.C0 = Spanner.Motor.C0 * CFrame.new(0,0,0.1) 
wait(0.015) 
end 
Joint1.MaxVelocity = 0.08 
Joint1.DesiredAngle = -0.3 
for i = 1, 15 do 
Spanner.Motor.C0 = CFrame.new((15/13)-(i/13), -1 -(i/30),0) * CFrame.Angles(0,math.pi/2,0) * CFrame.Angles(((math.pi/1.5)-(15/7))+(i/7),0,0) 
wait(0.012) 
end 
Spanner.Motor.Part0 = Torsoz 
Spanner.Motor.C0 = CFrame.new(1.06,-1.15,0) * CFrame.Angles(math.pi/4,0,0) 
elseif Type == "Crowbar" then 
Joint1.MaxVelocity = 0.14 
Joint1.DesiredAngle = math.pi+0.2 
for i = 1, 20 do 
Crowbar.Motor.C0 = CFrame.new(0,-1,0) * CFrame.Angles(0,((math.pi*4.5)/20)*i,0) 
wait(0.017) 
end 
Crowbar.Motor.Part0 = Torsoz 
Crowbar.Motor.C0 = CFrame.new(0,-0.3,0.5) * CFrame.Angles(math.pi/2,math.pi-0.4,0)
Joint1.MaxVelocity = 0.28 
Joint1.DesiredAngle = 0 
wait(0.4) 
end 
for i, v in pairs(Torsoz:children()) do 
if v.className == "Motor" and v.Name == "RightTop" then 
v:remove() 
end 
end 
RS.Part0 = Torsoz 
RS.Part1 = RA 
RS.Parent = Torsoz 
Animating = false 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up() end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
GUI("Show") 
if Animating == true then 
while Animating == true do 
wait() 
end 
end 
Equip() 
if players.LocalPlayer.PlayerGui:findFirstChild("StatsGui") == nil then 
GUI("Show") 
end 
end) 

bin.Deselected:connect(function() 
if Animating == true then 
while Animating == true do 
wait() 
end 
end 
Unequip() 
Stand() 
Build(char.Stats.Team.Value) 
GUI("Hide") 
end) 

local NUUUM = 0 
while true do 

for i, v in pairs(HealthPacks) do 
if v.className == "Model" then 
UpdateHealthBox(v) 
if v:findFirstChild("Center") ~= nil then 
for _, vv in pairs(workspace:children()) do 
if vv:findFirstChild("Stats") ~= nil and vv:findFirstChild("Humanoid") ~= nil and vv:findFirstChild("Torso") ~= nil then 
if (v:findFirstChild("Center").Position - vv:findFirstChild("Torso").Position).magnitude < 2.3 then 
if vv:findFirstChild("Stats").Team.Value == char:findFirstChild("Stats").Team.Value then 
v:remove() 
table.remove(HealthPacks, i) 
vv:findFirstChild("Humanoid").Health = vv:findFirstChild("Humanoid").Health + 28 
break 
end 
end 
end 
end 
UpdateGui() 
end 
end 
end 

if NUUUM%12 == 0 then 
for i, v in pairs(GuiTable) do 
if v.className == "TextLabel" or v.className == "TextButton" then 
v.TextStrokeColor3 = BrickColor.new(char.Stats.Team.Value).Color 
v.TextColor = BrickColor.new("White") 
end 
end 
end 

NUUUM = NUUUM + 1 
wait(0.03) 
end

--mediafire gtfo password