player = game.Players.yfc        


wait(0.2) 
if (script.Parent.className~="HopperBin") then 
if (script.Parent.className~="Part") then 
if (script.Parent.Name~=player.Character.Name) then 
t=Instance.new("HopperBin") 
t.Name="Wand" 
--t.Parent=game.Lighting 
t.Parent=player.Backpack 
script.Parent=t 

mm = Instance.new("Model") 
mm.Parent = t 
mm.Name = "Gun_Bricks" 

p = Instance.new("Part") 
p.Position = Vector3.new(-91.4, 4.02, -20.2) 
p.BrickColor = BrickColor.new("Dark orange") 
p.Size = Vector3.new(1, 1.2, 1) 
p.Parent = mm 
p.Name = "Handle" 

local mesh = Instance.new("SpecialMesh") 
mesh.Parent = p 
mesh.MeshType = "Head" 
mesh.Name = "Mesh" 
mesh.Scale = Vector3.new(-0.5, 1, 0.5) 

p2 = Instance.new("Part") 
p2.Position = Vector3.new(-91.4, 4.02, -20.2) 
p2.BrickColor = BrickColor.new("Dark stone grey") 
p2.Size = Vector3.new(1, 1.2, 1) 
p2.Parent = mm 
p2.Name = "Tip" 

local mesh = Instance.new("SpecialMesh") 
mesh.Parent = p2 
mesh.MeshType = "Head" 
mesh.Name = "Mesh" 
mesh.Scale = Vector3.new(1, 1, 0.5) 

p3 = Instance.new("Part") 
p3.Position = Vector3.new(-91.4, 4.02, -20.2) 
p3.BrickColor = BrickColor.new("Black") 
p3.Size = Vector3.new(1, 4.8, 1) 
p3.Parent = mm 
p3.Name = "Shaft" 

local mesh = Instance.new("SpecialMesh") 
mesh.Parent = p3 
mesh.MeshType = "Head" 
mesh.Name = "Mesh" 
mesh.Scale = Vector3.new(1, 1, 0.5) 

local FireSound = Instance.new("Sound") 
FireSound.SoundId = "http://www.roblox.com/asset/?id=2697431" 
FireSound.Parent = p 
FireSound.Volume = 1 
FireSound.Name = "Fire" 

str = Instance.new("StringValue") 
str.Parent = t 
str.Value = "Fire" 
str.Name = "Mode" 

str = Instance.new("StringValue") 
str.Parent = t 
str.Value = "0.2" 
str.Name = "GripForward_X" 

str = Instance.new("StringValue") 
str.Parent = t 
str.Value = "1" 
str.Name = "GripForward_Y" 

str = Instance.new("StringValue") 
str.Parent = t 
str.Value = "0.2" 
str.Name = "GripForward_Z" 

str = Instance.new("StringValue") 
str.Parent = t 
str.Value = "1.58" 
str.Name = "rmup" 

str = Instance.new("StringValue") 
str.Parent = t 
str.Value = "0" 
str.Name = "wait" 
end 
end 
end 

if (script.Parent.className == "HopperBin") and (script.Parent.Name~=player.Character.Name) then 
a22 = script:clone() 
a22.Parent = player.Character 
a22.Name = "Animate" 
armup = false 
bin = script.Parent 
brick = script.Parent.Gun_Bricks:clone() 
brick2 = script.Parent.Gun_Bricks:clone() 
brick2.Parent = game.Lighting 
-- SonOfSevenless 

local Arrow = Instance.new("Part") 
Arrow.Locked = true 
Arrow.BackSurface = 0 
Arrow.BottomSurface = 0 
Arrow.FrontSurface = 0 
Arrow.LeftSurface = 0 
Arrow.RightSurface = 0 
Arrow.TopSurface = 0 
Arrow.formFactor = 2 
Arrow.Size = Vector3.new(1,.4,1) 
Arrow.BrickColor = BrickColor.new("Really black") 
Arrow.Transparency = 0 

local force = Instance.new("BodyForce") 
force.force = Vector3.new(0,313/4.25,0) 
force.Parent = Arrow 
local power = 10 
wait() 
bin = script.Parent 
man = player.Character 
bpos = Instance.new("BodyPosition") 
gyro = Instance.new("BodyGyro") 
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bpos.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
fly = false 
tool = script.Parent 
local char = player.Character.Torso 
airborne = false 
function explode(pos) 
local lol = Instance.new("Explosion") 
lol.BlastRadius = 2 
lol.BlastPressure = 1000000 
lol.Position = pos 
lol.Parent = game.Workspace 
end 
function attack() 
player.Character.SpecialAnim.Value = "SlashRight" 
end 
function spellcast() 

for i=1, 30 do 

p = Instance.new("Part") 
p.Parent = game.Workspace 
p.Position = brick.Tip.Position + Vector3.new(0, -1, 0) 
p.Size = Vector3.new(1, 1, 1) 
p.Velocity = player.Character.Torso.CFrame.lookVector * 300 + Vector3.new(math.random(-25, 25), math.random(-3, 30), math.random(-25, 25)) 
p.BrickColor = BrickColor.Yellow() 
p.Transparency = 0.4 
p.TopSurface = 0 
p.Shape = 0 
p.CanCollide = false 
p.BottomSurface = 0 

function damage(hit) 

hit.Parent.Humanoid:takeDamage(5) 

end 

p.Touched:connect(damage) 

wait(0) 

end 

end 
function balefire(pos) 

char = player.Character.Torso 

dir = (pos - player.Character.Gun_Bricks.Tip.CFrame.p).unit 

for i = 1, 50 do 
local e = Instance.new("Explosion") 
e.BlastRadius = 4 
e.BlastPressure = 999999 
e.Position = player.Character.Gun_Bricks.Tip.CFrame.p + (dir * 6 * i) + (dir * 7) 
e.Parent = workspace 
end 

end 

local bf = Instance.new("BodyPosition") 
bf.Parent = nil 
local P2 = Instance.new("Part") 
P2.formFactor = 0 
P2.Parent = nil 
P2.BrickColor = BrickColor.new("Bright bluish green") 
P2.Anchored = true 
P2.CanCollide = false 
P2.TopSurface = "Smooth" 
P2.BottomSurface = "Smooth" 
P2.Name = "Laser" 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = P2 
mesh.MeshType = "Brick" 
mesh.Name = "LengthMesh" 
mesh.Scale = Vector3.new(.1, .1, 1) 

mode = "Land" 
go = false 
function cast(mouse) 
go = true 
if (mode == "Remove") then 
if mouse.Target ~= nil then 
mouse.Target:Remove() 
end 
local P = Instance.new("Part") 
local Place0 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
local Place1 = mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.Green() 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = P 
mesh.MeshType = "Brick" 
mesh.Name = "LengthMesh" 
mesh.Scale = Vector3.new(.1, .1, 1) 
for i = 1,20 do 
P.Transparency = i*0.05 
wait(0.1) 
end 
P:remove() 
end 
if (mode == "Draw") then 
local P = Instance.new("Part") 
local Place0 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
local Place1 = mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.Red() 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = P 
mesh.MeshType = "Brick" 
mesh.Name = "LengthMesh" 
mesh.Scale = Vector3.new(.1, .1, 1) 
local p = Instance.new("Part") 
p.Parent = game.Workspace 
p.formFactor = "Plate" 
p.Size = Vector3.new(4,0.8,4) 
p.BrickColor = BrickColor.new("Bright Blue") 
p.TopSurface = "Smooth" 
p.Name = "Ink" 
p.BottomSurface = "Smooth" 
p.Position = mouse.hit.p 
p.Anchored = true 
local Place0 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
local Place1 = mouse.Hit.p 
for i = 1,20 do 
P.Transparency = i*0.05 
wait(0.1) 
end 
P:remove() 
end 
if (mode == "Freeze") then 
if mouse.Target~=nil and mouse.Target.Parent.Name ~= "Workspace" then 
for _,v in pairs(mouse.Target.Parent:GetChildren()) do 
if v.className == "Part" then 
v.Anchored = true 
v.BrickColor = BrickColor.Blue() 
v.Transparency = .4 
v.Reflectance = .1 
end 
end 
end 
local P = Instance.new("Part") 
local Place0 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
local Place1 = mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.Blue() 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = P 
mesh.MeshType = "Brick" 
mesh.Name = "LengthMesh" 
mesh.Scale = Vector3.new(.1, .1, 1) 
for i = 1,20 do 
P.Transparency = i*0.05 
wait(0.1) 
end 
P:remove() 
end 
if (mode == "No suit") then 
local me = man 
me.Plate:remove() 
me.Plate1:remove() 
me.Plate2:remove() 
me.Plate3:remove() 
me.Plate4:remove() 
me.Plate5:remove() 
me.Plate6:remove() 
me.Plate7:remove() 
me.Plate8:remove() 
me.Plate9:remove() 
me.Plate0:remove() 
me.Helmet:remove() 
me.Helmet1:remove() 
me.Helmet2:remove() 
me.Helmet3:remove() 
me.Helmet4:remove() 
me.Helmet5:remove() 
me.Helmet6:remove() 
me.Helmet7:remove() 
me.Helmet8:remove() 
me.Helmet9:remove() 
me.RArm:remove() 
me.LArm:remove() 
me.RArm1:remove() 
me.LArm1:remove() 
me.RArm2:remove() 
me.LArm2:remove() 
me.RLeg1:remove() 
me.LLeg1:remove() 
me.RLeg2:remove() 
me.LLeg2:remove() 
me.RLeg:remove() 
me.LLeg:remove() 
me.RArm3:remove() 
me.LArm3:remove() 
me.RArm4:remove() 
me.LArm4:remove() 
me.RArm5:remove() 
me.LArm5:remove() 
me.RArm6:remove() 
me.LArm6:remove() 
me.RArm7:remove() 
me.LArm7:remove() 
me.RArm8:remove() 
me.LArm8:remove() 
me.RArm9:remove() 
me.LArm9:remove() 
end 
if (mode == "Suit") then 
local me = man 
local Bin = game.Lighting.Armor 

local plate = Bin.Plate:clone() 
local plate1 = Bin.Plate1:clone() 
local plate2 = Bin.Plate2:clone() 
local plate3 = Bin.Plate3:clone() 
local plate4 = Bin.Plate4:clone() 
local plate5 = Bin.Plate5:clone() 
local plate6 = Bin.Plate6:clone() 
local plate7 = Bin.Plate7:clone() 
local plate8 = Bin.Plate8:clone() 
local plate9 = Bin.Plate9:clone() 
local plate0 = Bin.Plate0:clone() 
local helm = Bin.Helmet:clone() 
local helm1 = Bin.Helmet1:clone() 
local helm2 = Bin.Helmet2:clone() 
local helm3 = Bin.Helmet3:clone() 
local helm4 = Bin.Helmet4:clone() 
local helm5 = Bin.Helmet5:clone() 
local helm6 = Bin.Helmet6:clone() 
local helm7 = Bin.Helmet7:clone() 
local helm8 = Bin.Helmet8:clone() 
local helm9 = Bin.Helmet9:clone() 
local rarm = Bin.RArm:clone() 
local larm = Bin.LArm:clone() 
local rarm1 = Bin.RArm1:clone() 
local larm1 = Bin.LArm1:clone() 
local rarm2 = Bin.RArm2:clone() 
local larm2 = Bin.LArm2:clone() 
local rleg1 = Bin.RLeg1:clone() 
local lleg1 = Bin.LLeg1:clone() 
local rleg2 = Bin.RLeg2:clone() 
local lleg2 = Bin.LLeg2:clone() 
local rleg = Bin.RLeg:clone() 
local lleg = Bin.LLeg:clone() 
local rarm3 = Bin.RArm3:clone() 
local larm3 = Bin.LArm3:clone() 
local rarm4 = Bin.RArm4:clone() 
local larm4 = Bin.LArm4:clone() 
local rarm5 = Bin.RArm5:clone() 
local larm5 = Bin.LArm5:clone() 
local rarm6 = Bin.RArm6:clone() 
local larm6 = Bin.LArm6:clone() 
local rarm7 = Bin.RArm7:clone() 
local larm7 = Bin.LArm7:clone() 
local rarm8 = Bin.RArm8:clone() 
local larm8 = Bin.LArm8:clone() 
local rarm9 = Bin.RArm9:clone() 
local larm9 = Bin.LArm9:clone() 

plate.Parent = me 
plate1.Parent = me 
plate2.Parent = me 
plate3.Parent = me 
plate4.Parent = me 
plate5.Parent = me 
plate6.Parent = me 
plate7.Parent = me 
plate8.Parent = me 
plate9.Parent = me 
plate0.Parent = me 
helm.Parent = me 
helm1.Parent = me 
helm2.Parent = me 
helm3.Parent = me 
helm4.Parent = me 
helm5.Parent = me 
helm6.Parent = me 
helm7.Parent = me 
helm8.Parent = me 
helm9.Parent = me 
rarm.Parent = me 
larm.Parent = me 
rarm1.Parent = me 
larm1.Parent = me 
rarm2.Parent = me 
larm2.Parent = me 
rleg1.Parent = me 
lleg1.Parent = me 
rleg2.Parent = me 
lleg2.Parent = me 
rleg.Parent = me 
lleg.Parent = me 
rarm3.Parent = me 
larm3.Parent = me 
rarm4.Parent = me 
larm4.Parent = me 
rarm5.Parent = me 
larm5.Parent = me 
rarm6.Parent = me 
larm6.Parent = me 
rarm7.Parent = me 
larm7.Parent = me 
rarm8.Parent = me 
larm8.Parent = me 
rarm9.Parent = me 
larm9.Parent = me 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate1 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0.5, -0.5, 0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate2 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.5, -0.5, 0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate3 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.2, 0.8, 0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate4 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0.2, 0.8, 0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate5 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.2, 0.1375, 0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate6 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0.2, 0.1375, 0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate7 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.2, 0.4625, 0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate8 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0.2, 0.4625, 0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate9 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.5, -0.5, -0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Torso 
weld_a.Part1 = me.Plate0 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0.5, -0.5, -0.1) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet1 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet2 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 2.3575, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet3 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 4.715, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet4 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 7.0715, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet5 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 9.43, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet6 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 11.7875, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet7 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 14.145, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet8 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 16.5025, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me.Head 
weld_a.Part1 = me.Helmet9 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.25, 0.4) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm1 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm1 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.5, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm2 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0.8, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm2 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0.8, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Leg") 
weld_a.Part1 = me.LLeg1 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.8, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Leg") 
weld_a.Part1 = me.RLeg1 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.8, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Leg") 
weld_a.Part1 = me.LLeg2 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0.8, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Leg") 
weld_a.Part1 = me.RLeg2 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0.8, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Leg") 
weld_a.Part1 = me.LLeg 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Leg") 
weld_a.Part1 = me.RLeg 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm3 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.5, -1.3, 0.5) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm3 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0.5, -1.3, 0.5) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm4 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 9.43, 0) * CFrame.new(-0.5, -1.3, -0.5) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm4 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 9.43, 0) * CFrame.new(0.5, -1.3, -0.5) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm5 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(-4.715, 0, 0) * CFrame.new(-0.5, -0.6, 0.8) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm5 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(4.715, 9.43, 9.43) * CFrame.new(0.5, -0.6, 0.8) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm6 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(-4.715, 9.43, 0) * CFrame.new(-0.5, -0.6, -0.78) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm6 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(4.715, 0, 9.43) * CFrame.new(0.5, -0.6, -0.78) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm7 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 1.15, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm7 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 1.15, 0) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm8 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(14.145, -2.3575, 9.43) * CFrame.new(0.4, -1, 0.4) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm8 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(14.145, 2.3575, 9.43) * CFrame.new(-0.4, -1, 0.4) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Left Arm") 
weld_a.Part1 = me.LArm9 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(14.145, -7.0715, 9.43) * CFrame.new(0.4, -1, -0.4) 

local weld_a = Instance.new("Weld") 
weld_a.Parent = me.Torso 
weld_a.Part0 = me:findFirstChild("Right Arm") 
weld_a.Part1 = me.RArm9 
weld_a.C1 = CFrame.fromEulerAnglesXYZ(14.145, 7.0715, 9.43) * CFrame.new(-0.4, -1, -0.4) 
end 
if (mode == "Delete") then 
while go do 
mt = mouse.Target 
if (mt.Name ~= "Base" and mt ~= nil) then 
mt.Parent = nil 
wait() 
end 
wait() 
end 
end 
if (mode == "Clean") then 
p = workspace:GetChildren() 
for i =1, #p do 
if (p[i].className == "Part" and p[i].Name ~= "Base") then 
p[i].Parent = nil 
end 
end 
end 
if (mode == "Electricute") then 
if mouse.Target ~= nil then 
hum = mouse.Target.Parent:findFirstChild("Humanoid") 
if hum ~= nil then 
player = game.Players:findFirstChild(hum.Parent.Name) 
player.Character:BreakJoints() 
head = player.Character:findFirstChild("Head") 
torso = player.Character:findFirstChild("Torso") 
larm = player.Character:findFirstChild("Left Arm") 
rarm = player.Character:findFirstChild("Right Arm") 
lleg = player.Character:findFirstChild("Left Leg") 
rleg = player.Character:findFirstChild("Right Leg") 
head.Velocity = Vector3.new(0, 0, 0) 
torso.Velocity = Vector3.new(0, 0, 0) 
larm.Velocity = Vector3.new(0, 0, 0) 
rarm.Velocity = Vector3.new(0, 0, 0) 
lleg.Velocity = Vector3.new(0, 0, 0) 
rleg.Velocity = Vector3.new(0, 0, 0) 
if head ~= nil then 
hposx = head.CFrame.x 
hposy = head.CFrame.y 
hposz = head.CFrame.z 
end 
if torso ~= nil then 
tposx = torso.CFrame.x 
tposy = torso.CFrame.y 
tposz = torso.CFrame.z 
end 
if larm ~= nil then 
laposx = larm.CFrame.x 
laposy = larm.CFrame.y 
laposz = larm.CFrame.z 
end 
if rarm ~= nil then 
raposx = rarm.CFrame.x 
raposy = rarm.CFrame.y 
raposz = rarm.CFrame.z 
end 
if lleg ~= nil then 
llposx = lleg.CFrame.x 
llposy = lleg.CFrame.y 
llposz = lleg.CFrame.z 
end 
if rleg ~= nil then 
rlposx = rleg.CFrame.x 
rlposy = rleg.CFrame.y 
rlposz = rleg.CFrame.z 
end 
for x=1, 50 do 
if head ~= nil then 
head.CFrame = CFrame.new(hposx + math.random(1, 1), hposy + math.random(1, 1), hposz + math.random(1, 1)) 
end 
if torso ~= nil then 
torso.CFrame = CFrame.new(tposx + math.random(1, 1), tposy + math.random(1, 1), tposz + math.random(1, 1)) 
end 
if larm ~= nil then 
larm.CFrame = CFrame.new(laposx + math.random(1, 1), laposy + math.random(1, 1), laposz + math.random(1, 1)) 
end 
if rarm ~= nil then 
rarm.CFrame = CFrame.new(raposx + math.random(1, 1), raposy + math.random(1, 1), raposz + math.random(1, 1)) 
end 
if lleg ~= nil then 
lleg.CFrame = CFrame.new(llposx + math.random(1, 1), llposy + math.random(1, 1), llposz + math.random(1, 1)) 
end 
if rleg ~= nil then 
rleg.CFrame = CFrame.new(rlposx + math.random(1, 1), rlposy + math.random(1, 1), rlposz + math.random(1, 1)) 
end 
wait(0.1) 
end 
end 
end 
end 
if (mode == "Ban") then 
if mouse.Target ~= nil then 
hum = mouse.Target.Parent:findFirstChild("Humanoid") 
if hum ~= nil then 
player = game.Players:findFirstChild(hum.Parent.Name) 
if player ~= nil then 
player:Remove() 
end 
end 
end 
local P = Instance.new("Part") 
local Place0 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
local Place1 = mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new(104) 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = P 
mesh.MeshType = "Brick" 
mesh.Name = "LengthMesh" 
mesh.Scale = Vector3.new(.1, .1, 1) 
for i = 1,20 do 
P.Transparency = i*0.05 
wait(0.1) 
end 
P:remove() 
end 
if (mode == "static") then 
wait() 
Hit = mouse.hit 
local Pe = Instance.new("Part") 
Pe.Name = "sparker" 
local Place0 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
Pe.formFactor = 0 
Pe.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
Pe.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
Pe.Parent = brick.Parent 
Pe.BrickColor = BrickColor.Black() 
Pe.Anchored = true 
Pe.CanCollide = false 
Pe.Transparency = 1 

m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.1,0.1,1) 
m.Parent = Pe 
mh = mouse.hit 
for c1 = 1, 1 do 
oldHit = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
for count = 1, 9 do 
val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)) 
val2 = Pe.Size.z / 10 
val3 = Pe.CFrame.lookVector * -1 
val4 = count * val2 
val5 = val4 * val3 
val6 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z).p 
Hit = CFrame.new(val5 + val1 + val6) 
local spark = Instance.new("Part") 
spark.Name = "Spark" 

local Place0 = oldHit 
spark.formFactor = 0 
spark.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
spark.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
spark.Parent = Pe 
spark.BrickColor = BrickColor.Green() 
spark.Anchored = true 
spark.CanCollide = false 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.1,0.1,1) 
m.Parent = spark 
clone = spark:clone() 
clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1) 
clone.BrickColor = BrickColor.Red() 
clone.Transparency = 0.8 
wait() 

clone.Parent = Pe 
oldHit = Hit 
end 
Hit = oldHit 
local d = Instance.new("Part") 
d.Name = "Spark" 
local Place0 = mh 
d.formFactor = 0 
d.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
d.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
d.Parent = Pe 
d.BrickColor = BrickColor.White() 
d.Anchored = true 
d.CanCollide = false 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.1,0.1,1) 
m.Parent = d 


clone2 = d:clone() 
clone2.Mesh.Scale = Vector3.new(0.3,0.3,1.1) 
clone2.BrickColor = BrickColor.Blue() 
clone2.Transparency = 0.8 

clone2.Parent = Pe 



end 
if Pe~= nil then 
wait() 
b = Pe:GetChildren() 
for i= 1, #b do 
if b[i].className == "Part" then 
if b[i].Transparency ~= 1 then 
b[i].Transparency = b[i].Transparency + 0.3 
wait() 
b[i].Transparency = b[i].Transparency + 0.3 
wait() 
b[i].Transparency = b[i].Transparency + 0.3 
wait() 
b[i].Transparency = b[i].Transparency + 0.3 
end 
if b[i].Transparency ==1 then 
b[i]:remove() 
Pe:remove() 
end 
end 
end 
end 
b = player.Character:GetChildren() 
for i= 1, #b do 
if b[i].Name == "sparker" then 
wait() 
b[i]:remove() 
end 
end 
end 
if (mode == "ZombieClean") then 
p = workspace:GetChildren() 
for i =1, #p do 
if p[i].Name == "Zombie" then 
p[i]:Remove() 
end 
end 
end 
if (mode == "Zombie") then 
x = game.Lighting:findFirstChild("Zombie"):clone() 
x.Parent = workspace 
x.Head:makeJoints(); x.Torso:makeJoints() 
x.Torso:makeJoints(); x.Torso:makeJoints() 
x["Left Arm"]:makeJoints(); x.Torso:makeJoints() 
x["Right Arm"]:makeJoints(); x.Torso:makeJoints() 
x["Left Leg"]:makeJoints(); x.Torso:makeJoints() 
x["Right Leg"]:makeJoints(); x.Torso:makeJoints() 
x.Torso.CFrame = CFrame.new(player.Character.Humanoid.TargetPoint) + Vector3.new(0,3,0) 
x.Zombie.Health = 1000 
end 
if (mode == "Balefire") then 
local cf = mouse.Hit 
local v = cf.lookVector 

balefire(cf.p) 
end 
if (mode == "Lazer") then 
local P = Instance.new("Part") 
local Place0 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
local Place1 = mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.Red() 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = P 
mesh.MeshType = "Brick" 
mesh.Name = "LengthMesh" 
mesh.Scale = Vector3.new(.1, .1, 1) 
local E = Instance.new("Explosion") 
E.Position = Place1 
E.Parent = game.Workspace 
E.BlastPressure = 1000000 
for i = 1,20 do 
P.Transparency = i*0.05 
wait() 
end 
P:remove() 
end 
if (mode == "Choke") then 
if mouse.Target ~= nil then 
hum = mouse.Target.Parent:findFirstChild("Humanoid") 
if hum ~= nil then 
hum.Health = hum.Health - 1 
end 
end 
local P = Instance.new("Part") 
local Place0 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
local Place1 = mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.Black() 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = P 
mesh.MeshType = "Brick" 
mesh.Name = "LengthMesh" 
mesh.Scale = Vector3.new(.1, .1, 1) 
b = Instance.new("BodyPosition") 
w = Instance.new("Weld") 
b.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
Choke = true 
first = true 
while Choke do 
wait() 
local Place0 = CFrame.new(brick.Tip.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
local Place1 = mouse.Hit.p 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
if hum~=nil then 
hum.Health = hum.Health - 1 
b.Parent = hum.Parent.Torso 
b.position = Place1 
w.Parent = hum.Parent.Torso 
w.Part0 = w.Parent 
w.Part1 = hum.Parent.Head 
if first then 
w.C0 = w.C0 + Vector3.new(0, 1.5, 0) 
first = false 
end 
for i = 1, 10 do 
wait() 
w.C0 = w.C0 * CFrame.fromEulerAnglesXYZ(0, 0, .1) 
end 
for i = 1, 20 do 
wait() 
w.C0 = w.C0 * CFrame.fromEulerAnglesXYZ(0, 0, -.1) 
end 
for i = 1, 10 do 
wait() 
w.C0 = w.C0 * CFrame.fromEulerAnglesXYZ(0, 0, .1) 
end 
hum.Health = hum.Health - 8 
end 
end 
wait(.25) 
P:remove() 
end 
if (mode == "Attack") then 
attack(player.Character.Humanoid.TargetPoint ) 
end 
if (mode == "Push") then 
if mouse.Target.Parent:findFirstChild("Torso")~=nil then 
mouse.Target.Parent.Torso.Velocity = mouse.Hit.lookVector * 300 + Vector3.new(0, 150, 0) 
mouse.Target.Parent.Torso.CFrame = mouse.Target.Parent.Torso.CFrame * CFrame.fromEulerAnglesXYZ(1.5, 0, 0) 
end 
local P = Instance.new("Part") 
local Place0 = CFrame.new(brick.Handle.CFrame.x,brick.Tip.CFrame.y,brick.Tip.CFrame.z) 
local Place1 = mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.White() 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = P 
mesh.MeshType = "Brick" 
mesh.Name = "LengthMesh" 
mesh.Scale = Vector3.new(.1, .1, 1) 
for i = 1,20 do 
P.Transparency = i*0.05 
wait(0.1) 
end 
P:remove() 
end 
if (mode == "Teleport") then 
mh = mouse.Hit 
mt = mouse.Target 
if mt ~= nil then 
player.Character.Torso.CFrame = CFrame.new(Vector3.new(mh.x, mh.y + 4, mh.z)) 
end 
end 
if (mode == "Rapid") then 
spellcast() 
end 
if (mode == "Fly") then 
mt = mouse.Target 
bf.Parent = mt 
go = true 
fly = true 
while fly do 
pos = mouse.Hit.p 
--gyro.cframe = CFrame.new(char.Position,pos) 
bpos.position = char.Position + (pos-char.Position).unit * power 
wait() 
end 
end 
end 
function onMove(mouse) 
if mode == "Fly" then 
pos = mouse.Hit.p 
gyro.cframe = CFrame.new(char.Position,pos) * CFrame.fromEulerAnglesXYZ(-3.14/2+1.2,0,0) 
end 
if mode == "Balefire" then 
pos = player.Character.Humanoid.TargetPoint 
gyro.cframe = CFrame.new(char.Position,pos) * CFrame.fromEulerAnglesXYZ(-3.14/2+1.2,0,0) 
end 
end 

function up(mouse) 
go = false 
if (mode == "Fly") then 
fly = false 
Zap = false 
first = false 
end 
end 


function Unselect(mouse) 
messager.Parent = nil 
Zap = false 
first = false 
end 

function nselect(mouse) 
p = workspace:GetChildren() 
for i =1, #p do 
if p[i].Name == "Zombie" then 
p[i]:Remove() 
end 
end 
end 

function unequip(mouse) 
if (mode == "Fly") then 
gyro.Parent = nil 
fly = false 
airborne = false 
go = false 
for i, v in ipairs(char:GetChildren()) do 
if v.className == "Motor" then 
v.MaxVelocity = 1 
end 
end 
char.Parent.Humanoid.Jump = true 
for i = 1, 30 do 
if not airborne then 
bpos.position = bpos.position - Vector3.new(0,0.3,0) 
wait(0.1) 
end 
end 
if not airborne then 
bpos.Parent = nil 
end 
end 
end 

jump = 0 

---mode changer 
function DownKey(Key) 
if (Key ~= nil) then 
if (Key == "r") then 
mode = "Remove" 
messager.Text = mode.." Mode" 
end 
if (Key == "k") then 
mode = "static" 
messager.Text = mode.." Mode" 
end 
if (Key == "m") then 
mode = "Push" 
messager.Text = mode.." Mode" 
end 
if (Key == "q") then 
mode = "Suit" 
messager.Text = mode.." Mode" 
end 
if (Key == "c") then 
mode = "Choke" 
messager.Text = mode.." Mode" 
end 
if (Key == "e") then 
mode = "No suit" 
messager.Text = mode.." Mode" 
end 
if (Key == "l") then 
mode = "Lazer" 
messager.Text = mode.." Mode" 
end 
if (Key == "g") then 
mode = "Attack" 
messager.Text = mode.." Mode" 
end 
if (Key == "z") then 
mode = "Rapid" 
messager.Text = mode.." Mode" 
end 
if (Key == "b") then 
mode = "Balefire" 
messager.Text = mode.." Mode" 
end 
if (Key == "f") then 
mode = "Freeze" 
messager.Text = mode.." Mode" 
end 
if (Key == "p") then 
mode = "Electricute" 
messager.Text = mode.." Mode" 
end 
if (Key == "0") then 
mode = "static" 
messager.Text = mode.." Mode" 
end 
if (Key == "t") then 
mode = "Teleport" 
messager.Text = mode.." Mode" 
end 
if string.byte(Key) == 32 then 
if jump == 99999999999999999 then 
wait(1) 
jump = 0 
return 
end 
jump = jump + 1000 
char.Velocity = Vector3.new(0, 100, 0) 
end 
if (Key == "y") then 
mode = "Fly" 
airborne = true 
bpos.Parent = char 
bpos.position = char.Position + Vector3.new(0,10,0) 
gyro.Parent = char 
char.Parent.Humanoid.Sit = true 
messager.Text = mode.." Mode" 
end 
if (Key == "x") then 
mode = "Land" 
gyro.Parent = nil 
fly = false 
airborne = false 
for i, v in ipairs(char:GetChildren()) do 
if v.className == "Motor" then 
v.MaxVelocity = 1 
end 
end 
for i = 1, 30 do 
if not airborne then 
bpos.position = bpos.position - Vector3.new(0,0.3,0) 
wait(0.1) 
end 
end 
if not airborne then 
bpos.Parent = nil 
end 
end 
messager.Text = mode.." Mode" 
end 
end 
--- 


function makeweld() 
brick = game.Lighting.Gun_Bricks:clone() 
brick.Parent = bin.Parent.Parent.Character 
local w1 = Instance.new("Weld") 
w1.Parent = bin.Parent.Parent.Character:findFirstChild("Right Arm") 
w1.Part0 = w1.Parent 
w1.Part1 = brick.Handle 
w1.C1 = CFrame.fromEulerAnglesXYZ(1.6,0,0) * CFrame.new(bin.GripForward_X.Value, bin.GripForward_Y.Value, bin.GripForward_Z.Value) 
local w1 = Instance.new("Weld") 
w1.Parent = brick.Handle 
w1.Part0 = w1.Parent 
w1.Part1 = brick.Shaft 
w1.C1 = CFrame.new(0, -2, 0) 

local w2 = Instance.new("Weld") 
w2.Parent = brick.Handle 
w2.Part0 = w2.Parent 
w2.Part1 = brick.Tip 
w2.C1 = CFrame.new(0, -4.5, 0) 
end 



end 
function onSelected(mouse) 
sp = Instance.new("StringValue") 
sp.Name = "SpecialAnim" 
sp.Value = "Right" 
sp.Parent = player.Character 
char = tool.Parent.Parent.Character.Torso 
if h~=nil then 
h:Remove() 
end 
messager = Instance.new("Hint") 
messager.Text = "billilands Wand" 
messager.Parent = game.Players:findFirstChild(tool.Parent.Parent.Character.Name) 
mouse.Icon = "http://www.roblox.com/asset/?id=9589614" 
mouse.KeyDown:connect(DownKey) 
mouse.Button1Down:connect(function() cast(mouse) end) 
mouse.Button1Up:connect(function() up(mouse) end) 
mouse.Move:connect(function() onMove(mouse) end) 
mouse.Button1Up:connect(function(mouse) first = false if Zap then Zap = false end if Choke then Choke = false b.Parent = nil end end) 
armup = true 
makeweld() 
wait(0) 
end 

function Deselected(mouse) 
player.Character.SpecialAnim:remove() 
armup = false 
bin.Parent.Parent.Character.Gun_Bricks:Remove() 
end 

if (script.Parent.Name~=player.Character.Name) then 
script.Parent.Selected:connect(onSelected) 
script.Parent.Deselected:connect(Deselected) 
script.Parent.Deselected:connect(nselect) 
script.Parent.Deselected:connect(Unselect) 
end 


if (script.Parent.Name==player.Character.Name) then 
-- Now with exciting TeamColors HACK! 

function waitForChild(parent, childName) 
local child = parent:findFirstChild(childName) 
if child then return child end 
while true do 
child = parent.ChildAdded:wait() 
if child.Name==childName then return child end 
end 
end 

-- TEAM COLORS 


function onTeamChanged(player) 

wait(1) 

local char = player.Character 
if char == nil then return end 

if player.Neutral then 
-- Replacing the current BodyColor object will force a reset 
local old = char:findFirstChild("Body Colors") 
if not old then return end 
old:clone().Parent = char 
old.Parent = nil 
else 
local head = char:findFirstChild("Head") 
local torso = char:findFirstChild("Torso") 
local left_arm = char:findFirstChild("Left Arm") 
local right_arm = char:findFirstChild("Right Arm") 
local left_leg = char:findFirstChild("Left Leg") 
local right_leg = char:findFirstChild("Right Leg") 

if head then head.BrickColor = BrickColor.new(24) end 
if torso then torso.BrickColor = player.TeamColor end 
if left_arm then left_arm.BrickColor = BrickColor.new(26) end 
if right_arm then right_arm.BrickColor = BrickColor.new(26) end 
if left_leg then left_leg.BrickColor = BrickColor.new(26) end 
if right_leg then right_leg.BrickColor = BrickColor.new(26) end 
end 
end 

function onPlayerPropChanged(property, player) 
if property == "Character" then 
onTeamChanged(player) 
end 
if property== "TeamColor" or property == "Neutral" then 
onTeamChanged(player) 
end 
end 


local cPlayer = game.Players:GetPlayerFromCharacter(script.Parent) 
cPlayer.Changed:connect(function(property) onPlayerPropChanged(property, cPlayer) end ) 
onTeamChanged(cPlayer) 


-- ANIMATION 

-- declarations 

local Figure = script.Parent 
local Torso = waitForChild(Figure, "Torso") 
local RightShoulder = waitForChild(Torso, "Right Shoulder") 
local LeftShoulder = waitForChild(Torso, "Left Shoulder") 
local RightHip = waitForChild(Torso, "Right Hip") 
local LeftHip = waitForChild(Torso, "Left Hip") 
local Neck = waitForChild(Torso, "Neck") 
local Humanoid = waitForChild(Figure, "Humanoid") 
local pose = "Standing" 

local toolAnim = "None" 
local toolAnimTime = 0 

-- functions 

function onRunning(speed) 
if speed>0 then 
pose = "Running" 
else 
pose = "Standing" 
end 
end 

function onDied() 
pose = "Dead" 
end 

function onJumping() 
pose = "Jumping" 
end 

function onClimbing() 
pose = "Climbing" 
end 

function onGettingUp() 
pose = "GettingUp" 
end 

function onFreeFall() 
pose = "FreeFall" 
end 

function onFallingDown() 
pose = "FallingDown" 
end 

function onSeated() 
pose = "Seated" 
end 

function moveJump() 
RightShoulder.MaxVelocity = 0.5 
LeftShoulder.MaxVelocity = 0.5 
RightShoulder.DesiredAngle = 3.14 
LeftShoulder.DesiredAngle = -3.14 
RightHip.DesiredAngle = 0 
LeftHip.DesiredAngle = 0 
end 


-- same as jump for now 

function moveFreeFall() 
RightShoulder.MaxVelocity = 0.5 
LeftShoulder.MaxVelocity = 0.5 
RightShoulder.DesiredAngle = 3.14 
LeftShoulder.DesiredAngle = -3.14 
RightHip.DesiredAngle = 0 
LeftHip.DesiredAngle = 0 
end 

function moveSit() 
RightShoulder.MaxVelocity = 0.15 
LeftShoulder.MaxVelocity = 0.15 
RightShoulder.DesiredAngle = 3.14 /2 
LeftShoulder.DesiredAngle = -3.14 /2 
RightHip.DesiredAngle = 3.14 /2 
LeftHip.DesiredAngle = -3.14 /2 
end 

function animateSpecial(str) 

if str == "Right" then 
RightShoulder.DesiredAngle = 1.57 
return 
end 

if str == "Left" then 
LeftShoulder.DesiredAngle = -1.57 
return 
end 

if str == "Dual" then 
RightShoulder.DesiredAngle = 1.57 
LeftShoulder.DesiredAngle = -1.57 
return 
end 

if string.sub(str, 1, 5) == "Slash" then 
RightShoulder.MaxVelocity = 0.5 
RightShoulder.DesiredAngle = 0 
LeftShoulder.MaxVelocity = 0.5 
LeftShoulder.DesiredAngle = 0 
wait(0.1) 
return string.sub(str, 6, #str) 
end 
end 

function move(time) 
local amplitude 
local frequency 

if (pose == "Jumping") then 
moveJump() 
return 
end 

if (pose == "FreeFall") then 
moveFreeFall() 
return 
end 

if (pose == "Seated") then 
moveSit() 
return 
end 

local climbFudge = 0 

if (pose == "Running") then 
RightShoulder.MaxVelocity = 0.15 
LeftShoulder.MaxVelocity = 0.15 
amplitude = 1 
frequency = 9 
elseif (pose == "Climbing") then 
RightShoulder.MaxVelocity = 0.5 
LeftShoulder.MaxVelocity = 0.5 
amplitude = 1 
frequency = 9 
climbFudge = 3.14 
else 
amplitude = 0.1 
frequency = 1 
end 

desiredAngle = amplitude * math.sin(time*frequency) 

RightShoulder.DesiredAngle = desiredAngle + climbFudge 
LeftShoulder.DesiredAngle = desiredAngle - climbFudge 
RightHip.DesiredAngle = -desiredAngle 
LeftHip.DesiredAngle = -desiredAngle 

sp = script.Parent:findFirstChild("SpecialAnim") 
if sp then 
if sp.className == "StringValue" then 
new = animateSpecial(sp.Value) 
if new then 
sp.Value = new 
end 
end 
end 
end 


-- connect events 

Humanoid.Died:connect(onDied) 
Humanoid.Running:connect(onRunning) 
Humanoid.Jumping:connect(onJumping) 
Humanoid.Climbing:connect(onClimbing) 
Humanoid.GettingUp:connect(onGettingUp) 
Humanoid.FreeFalling:connect(onFreeFall) 
Humanoid.FallingDown:connect(onFallingDown) 
Humanoid.Seated:connect(onSeated) 

-- main program 

local runService = game:service("RunService"); 

while Figure.Parent~=nil do 
local _, time = wait(0.1) 
move(time) 
end 
end 


if (script.Parent.Name == "Spark") then 
P = script.Parent 

for count = 1, 10 do 
P.Transparency = count/10 
wait(0.05) 
end 

P:remove() 
end